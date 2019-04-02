// Scalar Network Analyser for Raspberry Pi
// by Steven J. Merrifield

// Interfaces to AD9850 DDS and ADS1115 ADC
// Output is a CSV file consisting of Frequency in Hz and Amplitude in dB


#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <inttypes.h>
#include <linux/i2c-dev.h>
 
#define PAGE_SIZE (4*1024)
#define BLOCK_SIZE (4*1024)

#define BCM2708_PERI_BASE	0x3F000000
#define GPIO_BASE             	(BCM2708_PERI_BASE + 0x200000) /* GPIO controller */
 
#define XTAL_FREQ	100000000	// 100MHz

// ADS1115 configuration
// We require a FSD of > 2V, which means we need to set the PGA to be 001, FSD = +/-4.096V
// and since VDD=3.3V it is not possible to reach a full scale output code. 
// We can't use PGA=2 as the input is likely to exceed 2.048V
const float VPS = 4.096 / 32768.0;	// using PGA = 001

int  mem_fd;
void *gpio_map;
volatile unsigned *gpio;
 
 
// GPIO setup macros. Always use INP_GPIO(x) before using OUT_GPIO(x) or SET_GPIO_ALT(x,y)
#define INP_GPIO(g) *(gpio+((g)/10)) &= ~(7<<(((g)%10)*3))
#define OUT_GPIO(g) *(gpio+((g)/10)) |=  (1<<(((g)%10)*3))
#define SET_GPIO_ALT(g,a) *(gpio+(((g)/10))) |= (((a)<=3?(a)+4:(a)==4?3:2)<<(((g)%10)*3))
 
#define GPIO_SET *(gpio+7)  // sets   bits which are 1 ignores bits which are 0
#define GPIO_CLR *(gpio+10) // clears bits which are 1 ignores bits which are 0
 
#define GET_GPIO(g) (*(gpio+13)&(1<<g)) // 0 if LOW, (1<<g) if HIGH
 
#define GPIO_PULL *(gpio+37) // Pull up/pull down
#define GPIO_PULLCLK0 *(gpio+38) // Pull up/pull down clock
 
int fd;
int adc_address = 0x48;	// ADC I2C ADDR pin grounded
int16_t val;

uint8_t writeBuf[3];
uint8_t readBuf[2];

// Setup memory regions to access GPIO
void setup_io()
{
	if ((mem_fd = open("/dev/mem", O_RDWR|O_SYNC) ) < 0) 
	{
		fprintf(stderr,"Can't open /dev/mem\n");
		exit(-1);
	}
 
	gpio_map = mmap(NULL, BLOCK_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, mem_fd, GPIO_BASE);
	close(mem_fd); //No need to keep mem_fd open after mmap
 
	if (gpio_map == MAP_FAILED) 
	{
		fprintf(stderr,"mmap error %d\n", (int)gpio_map);
		exit(-1);
	}
 
	gpio = (volatile unsigned *)gpio_map;
}

 
// Initiate ADS1115 ADC conversion
void start_conversion(int ch)
{
	writeBuf[0] = 0x01;	// set pointer address to config register
	writeBuf[1] = 0xC3;	// MSB, 1100 0011 - Ch0 single ended, 4.096V FSD , single shot
	writeBuf[2] = 0x83;	// LSB, 1000 0011 - 128sps, disable comparator

	if (ch == 1)
		writeBuf[1] = 0xD3; // MSB, 1101 0011 - Ch1 single ended, 4.096V FSD, single shot


	// write to configuration register, and start conversion
	if (write(fd,writeBuf,3) != 3)
	{
		perror("Write config register");
		exit(-1);
	}
	
	// wait until conversion has finished, pointer still points to config register
	do
	{
		if (read(fd,readBuf,2) != 2)
		{
			perror("Read conversion wait");
			exit(-1);
		}
	} while ((readBuf[0] & 0x80) == 0);
}


// Read the result after the ADC conversion has completed
unsigned int display_conversion(void)
{
	// set register address pointer to conversion register
	writeBuf[0] = 0;
	if (write(fd,writeBuf,1) != 1)
	{
		perror("Write conversion register");
		exit(-1);
	}
	
	// read from conversion register
	if (read(fd,readBuf,2) != 2)
	{
		perror("Read conversion data");
		exit(-1);
	}

	val = readBuf[0] << 8 | readBuf[1];
	if (val < 0) val = 0;
//	printf("0x%02x(h)  %d(d)  %4.4f(V)\n",val, val, val*VPS);
	return(val);
}


// AD9850 DDS control lines - Raspberry Pi mapping
// FQUD = GPIO17
// WCLK = GPIO18
// DATA = GPIO27

void set_data(int i)
{
	if (i)
		GPIO_SET = 1<<27;
	else
		GPIO_CLR = 1<<27;
}

void set_clock(int i)
{
	if (i)
       		GPIO_SET = 1<<18;
	else
		GPIO_CLR = 1<<18;
}

void set_fq(int i)
{
	if (i)
		GPIO_SET = 1<<17;
	else
		GPIO_CLR = 1<<17;
}

void dds_one(void)
{
	set_data(1);
	// wait 3.5ns
	set_clock(1);
	// wait 3.5ns
	set_clock(0); 
	// wait 3.5ns
	set_data(0);
}

void dds_zero(void)
{
	set_data(0);
	// wait 3.5ns
	set_clock(1);
	// wait 3.5ns
	set_clock(0);
	// wait 3.5ns
}

void dds_latch(void)
{
	set_fq(1);
	//wait 7ns
	set_fq(0);
}

void send_serial(unsigned int tuning_word)
{
        int i;

        for (i = 0; i < 32; i++)
        {
                if ((tuning_word & 1) == 1)
	                dds_one();
                else
                        dds_zero();
                tuning_word >>= 1;
        }
        for (i = 0; i < 8; i++)
		dds_zero();
	dds_latch();
}

int main(void)
{
	int i,num;
	unsigned int start_freq;
	unsigned int stop_freq;
	unsigned int freq;
	unsigned int step;
	unsigned int tuning_word;
	unsigned int Vin, Vout;
	float Vin_float, Vout_float;


	if ((fd = open("/dev/i2c-1",O_RDWR)) < 0)
	{
		fprintf(stderr,"Error: couldn't open device %d\n",fd);
		exit(-1);
	}
	
	if (ioctl(fd,I2C_SLAVE,adc_address) < 0)
	{
		fprintf(stderr,"Error: couldn't find device\n");
		exit(-1);
	}

	// Set up gpi pointer for direct register access
	setup_io();

	INP_GPIO(17); // must use INP_GPIO before we can use OUT_GPIO
	OUT_GPIO(17);

	INP_GPIO(27); // must use INP_GPIO before we can use OUT_GPIO
	OUT_GPIO(27);

	INP_GPIO(18); // must use INP_GPIO before we can use OUT_GPIO
	OUT_GPIO(18);


        /* set FQUD, CLK and D0 low */       
	set_clock(0);
	set_data(0);
	set_fq(0);
	
	printf("Enter start freq: ");
	scanf("%d",&start_freq);

	tuning_word = (start_freq * 4294967296) / XTAL_FREQ;
	send_serial(tuning_word);

	printf("Enter stop freq: ");
	scanf("%d",&stop_freq);

	printf("Enter step freq: ");
	scanf("%d",&step);

	printf("Enter number of sweeps: ");
	scanf("%d",&num);

	i = 0;
	while (i < num)
	{	
		freq = start_freq;
		while (freq <= stop_freq)
		{
			printf("%d,",freq);
			tuning_word = (freq * 4294967296) / XTAL_FREQ;
			send_serial(tuning_word);
			// wait
			usleep(100);
			// measure received signal strength
			start_conversion(0);	// Output voltage of the filter, sent to the EUT
			Vin = display_conversion();

			start_conversion(1);	// Voltage read back from the EUT
			Vout = display_conversion();

			// AD8307 output voltage is 25mV/dB
			// Convert from VDC back to dB
			Vin_float = (float)(Vin*VPS)/0.025;
			Vout_float = (float)(Vout*VPS)/0.025;
			// We're dealing with logs, so subtract instead of divide
			printf("%4.4f\n",Vout_float - Vin_float);

			freq = freq + step;
		}
		i++;
	}

	close(fd);
	return(0);
}


