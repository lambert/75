v 20110115 2
C 0 200 0 0 0 A3-sheet.sym
{
T 9500 300 5 10 1 1 0 0 1
page=01
T 11000 300 5 10 1 1 0 0 1
pages=01
T 9500 600 5 10 1 1 0 0 1
file=75.003.00.02.01.sch
T 9500 900 5 10 1 1 0 0 1
device=SCALAR_NETWORK_ANALYSER
T 9500 1100 5 10 1 1 0 0 1
comment=schematic
T 9500 1300 5 10 1 1 0 0 1
description=Scalar Network Analyser - Output stage (for simulation)
T 13400 600 5 10 1 1 0 0 1
revision=20190407
T 13400 300 5 10 1 1 0 0 1
author=Bert Timmerman
}
N 12500 6900 14000 6900 4
C 12900 5800 1 90 0 EMBEDDEDcapacitor-1.sym
[
P 12700 5800 12700 6000 1 0 0
{
T 12650 5950 5 8 0 1 90 6 1
pinnumber=1
T 12750 5950 5 8 0 1 90 8 1
pinseq=1
T 12700 6000 9 8 0 1 90 0 1
pinlabel=1
T 12700 6000 5 8 0 1 90 2 1
pintype=pas
}
P 12700 6700 12700 6500 1 0 0
{
T 12650 6550 5 8 0 1 90 0 1
pinnumber=2
T 12750 6550 5 8 0 1 90 2 1
pinseq=2
T 12700 6500 9 8 0 1 90 6 1
pinlabel=2
T 12700 6500 5 8 0 1 90 8 1
pintype=pas
}
L 12500 6200 12900 6200 3 0 0 0 -1 -1
L 12500 6300 12900 6300 3 0 0 0 -1 -1
L 12700 6500 12700 6300 3 0 0 0 -1 -1
L 12700 6200 12700 6000 3 0 0 0 -1 -1
T 12200 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 12400 6000 8 10 0 1 90 0 1
refdes=C?
T 11600 6000 5 10 0 0 90 0 1
description=capacitor
T 11800 6000 5 10 0 0 90 0 1
numslots=0
T 12000 6000 5 10 0 0 90 0 1
symversion=0.1
]
{
T 12200 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 12400 6000 5 10 1 1 90 0 1
refdes=C6
T 12000 6000 5 10 0 0 90 0 1
symversion=0.1
T 13100 6100 5 10 1 1 90 0 1
value=68pF
}
N 12700 5500 12700 5800 4
C 11800 7500 1 0 0 EMBEDDEDcapacitor-1.sym
[
P 11800 7700 12000 7700 1 0 0
{
T 11950 7750 5 8 0 1 0 6 1
pinnumber=1
T 11950 7650 5 8 0 1 0 8 1
pinseq=1
T 12000 7700 9 8 0 1 0 0 1
pinlabel=1
T 12000 7700 5 8 0 1 0 2 1
pintype=pas
}
P 12700 7700 12500 7700 1 0 0
{
T 12550 7750 5 8 0 1 0 0 1
pinnumber=2
T 12550 7650 5 8 0 1 0 2 1
pinseq=2
T 12500 7700 9 8 0 1 0 6 1
pinlabel=2
T 12500 7700 5 8 0 1 0 8 1
pintype=pas
}
L 12200 7900 12200 7500 3 0 0 0 -1 -1
L 12300 7900 12300 7500 3 0 0 0 -1 -1
L 12500 7700 12300 7700 3 0 0 0 -1 -1
L 12200 7700 12000 7700 3 0 0 0 -1 -1
T 12000 8200 5 10 0 0 0 0 1
device=CAPACITOR
T 12000 8000 8 10 0 1 0 0 1
refdes=C?
T 12000 8800 5 10 0 0 0 0 1
description=capacitor
T 12000 8600 5 10 0 0 0 0 1
numslots=0
T 12000 8400 5 10 0 0 0 0 1
symversion=0.1
]
{
T 12000 8200 5 10 0 0 0 0 1
device=CAPACITOR
T 12000 8000 5 10 1 1 0 0 1
refdes=C9
T 12000 8400 5 10 0 0 0 0 1
symversion=0.1
T 12100 7300 5 10 1 1 0 0 1
value=5.6pF
}
C 11500 6900 1 0 0 EMBEDDEDcoil-1.sym
[
P 11700 6900 11500 6900 1 0 1
{
T 11650 6950 5 8 0 1 0 6 1
pinnumber=1
T 11650 6850 5 8 0 1 0 8 1
pinseq=1
T 11750 6900 9 8 0 1 0 0 1
pinlabel=1
T 11750 6900 5 8 0 1 0 2 1
pintype=pas
}
P 12300 6900 12500 6900 1 0 1
{
T 12350 6950 5 8 0 1 0 0 1
pinnumber=2
T 12350 6850 5 8 0 1 0 2 1
pinseq=2
T 12250 6900 9 8 0 1 0 6 1
pinlabel=2
T 12250 6900 5 8 0 1 0 8 1
pintype=pas
}
A 11800 6900 100 0 180 3 0 0 0 -1 -1
A 12000 6900 100 0 180 3 0 0 0 -1 -1
A 12200 6900 100 0 180 3 0 0 0 -1 -1
T 11700 7300 5 10 0 0 0 0 1
device=COIL
T 11700 7100 8 10 0 1 0 0 1
refdes=L?
T 11700 7900 5 10 0 0 0 0 1
description=incuctor
T 11700 7700 5 10 0 0 0 0 1
numslots=0
T 11700 7500 5 10 0 0 0 0 1
symversion=0.1
]
{
T 11700 7300 5 10 0 0 0 0 1
device=COIL
T 11700 7100 5 10 1 1 0 0 1
refdes=L3
T 11700 7500 5 10 0 0 0 0 1
symversion=0.1
T 11700 6700 5 10 1 1 0 0 1
value=390nH
}
N 12700 7700 12900 7700 4
N 12900 7700 12900 6900 4
N 12700 6700 12700 6900 4
C 11300 5800 1 90 0 EMBEDDEDcapacitor-1.sym
[
P 11100 5800 11100 6000 1 0 0
{
T 11050 5950 5 8 0 1 90 6 1
pinnumber=1
T 11150 5950 5 8 0 1 90 8 1
pinseq=1
T 11100 6000 9 8 0 1 90 0 1
pinlabel=1
T 11100 6000 5 8 0 1 90 2 1
pintype=pas
}
P 11100 6700 11100 6500 1 0 0
{
T 11050 6550 5 8 0 1 90 0 1
pinnumber=2
T 11150 6550 5 8 0 1 90 2 1
pinseq=2
T 11100 6500 9 8 0 1 90 6 1
pinlabel=2
T 11100 6500 5 8 0 1 90 8 1
pintype=pas
}
L 10900 6200 11300 6200 3 0 0 0 -1 -1
L 10900 6300 11300 6300 3 0 0 0 -1 -1
L 11100 6500 11100 6300 3 0 0 0 -1 -1
L 11100 6200 11100 6000 3 0 0 0 -1 -1
T 10600 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 10800 6000 8 10 0 1 90 0 1
refdes=C?
T 10000 6000 5 10 0 0 90 0 1
description=capacitor
T 10200 6000 5 10 0 0 90 0 1
numslots=0
T 10400 6000 5 10 0 0 90 0 1
symversion=0.1
]
{
T 10600 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 10800 6000 5 10 1 1 90 0 1
refdes=C5
T 10400 6000 5 10 0 0 90 0 1
symversion=0.1
T 11500 6100 5 10 1 1 90 0 1
value=100pF
}
N 11100 5500 11100 5800 4
N 11500 6900 9900 6900 4
N 11100 6900 11100 6700 4
N 11800 7700 11300 7700 4
N 11300 7700 11300 6900 4
C 10300 5800 1 90 0 EMBEDDEDcapacitor-1.sym
[
P 10100 5800 10100 6000 1 0 0
{
T 10050 5950 5 8 0 1 90 6 1
pinnumber=1
T 10150 5950 5 8 0 1 90 8 1
pinseq=1
T 10100 6000 9 8 0 1 90 0 1
pinlabel=1
T 10100 6000 5 8 0 1 90 2 1
pintype=pas
}
P 10100 6700 10100 6500 1 0 0
{
T 10050 6550 5 8 0 1 90 0 1
pinnumber=2
T 10150 6550 5 8 0 1 90 2 1
pinseq=2
T 10100 6500 9 8 0 1 90 6 1
pinlabel=2
T 10100 6500 5 8 0 1 90 8 1
pintype=pas
}
L 9900 6200 10300 6200 3 0 0 0 -1 -1
L 9900 6300 10300 6300 3 0 0 0 -1 -1
L 10100 6500 10100 6300 3 0 0 0 -1 -1
L 10100 6200 10100 6000 3 0 0 0 -1 -1
T 9600 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 9800 6000 8 10 0 1 90 0 1
refdes=C?
T 9000 6000 5 10 0 0 90 0 1
description=capacitor
T 9200 6000 5 10 0 0 90 0 1
numslots=0
T 9400 6000 5 10 0 0 90 0 1
symversion=0.1
]
{
T 9600 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 9800 6000 5 10 1 1 90 0 1
refdes=C4
T 9400 6000 5 10 0 0 90 0 1
symversion=0.1
T 10500 6100 5 10 1 1 90 0 1
value=82pF
}
N 10100 5500 10100 5800 4
C 9200 7500 1 0 0 EMBEDDEDcapacitor-1.sym
[
P 9200 7700 9400 7700 1 0 0
{
T 9350 7750 5 8 0 1 0 6 1
pinnumber=1
T 9350 7650 5 8 0 1 0 8 1
pinseq=1
T 9400 7700 9 8 0 1 0 0 1
pinlabel=1
T 9400 7700 5 8 0 1 0 2 1
pintype=pas
}
P 10100 7700 9900 7700 1 0 0
{
T 9950 7750 5 8 0 1 0 0 1
pinnumber=2
T 9950 7650 5 8 0 1 0 2 1
pinseq=2
T 9900 7700 9 8 0 1 0 6 1
pinlabel=2
T 9900 7700 5 8 0 1 0 8 1
pintype=pas
}
L 9600 7900 9600 7500 3 0 0 0 -1 -1
L 9700 7900 9700 7500 3 0 0 0 -1 -1
L 9900 7700 9700 7700 3 0 0 0 -1 -1
L 9600 7700 9400 7700 3 0 0 0 -1 -1
T 9400 8200 5 10 0 0 0 0 1
device=CAPACITOR
T 9400 8000 8 10 0 1 0 0 1
refdes=C?
T 9400 8800 5 10 0 0 0 0 1
description=capacitor
T 9400 8600 5 10 0 0 0 0 1
numslots=0
T 9400 8400 5 10 0 0 0 0 1
symversion=0.1
]
{
T 9400 8200 5 10 0 0 0 0 1
device=CAPACITOR
T 9400 8000 5 10 1 1 0 0 1
refdes=C8
T 9400 8400 5 10 0 0 0 0 1
symversion=0.1
T 9500 7300 5 10 1 1 0 0 1
value=4.7pF
}
C 8900 6900 1 0 0 EMBEDDEDcoil-1.sym
[
P 9100 6900 8900 6900 1 0 1
{
T 9050 6950 5 8 0 1 0 6 1
pinnumber=1
T 9050 6850 5 8 0 1 0 8 1
pinseq=1
T 9150 6900 9 8 0 1 0 0 1
pinlabel=1
T 9150 6900 5 8 0 1 0 2 1
pintype=pas
}
P 9700 6900 9900 6900 1 0 1
{
T 9750 6950 5 8 0 1 0 0 1
pinnumber=2
T 9750 6850 5 8 0 1 0 2 1
pinseq=2
T 9650 6900 9 8 0 1 0 6 1
pinlabel=2
T 9650 6900 5 8 0 1 0 8 1
pintype=pas
}
A 9200 6900 100 0 180 3 0 0 0 -1 -1
A 9400 6900 100 0 180 3 0 0 0 -1 -1
A 9600 6900 100 0 180 3 0 0 0 -1 -1
T 9100 7300 5 10 0 0 0 0 1
device=COIL
T 9100 7100 8 10 0 1 0 0 1
refdes=L?
T 9100 7900 5 10 0 0 0 0 1
description=incuctor
T 9100 7700 5 10 0 0 0 0 1
numslots=0
T 9100 7500 5 10 0 0 0 0 1
symversion=0.1
]
{
T 9100 7300 5 10 0 0 0 0 1
device=COIL
T 9100 7100 5 10 1 1 0 0 1
refdes=L2
T 9100 7500 5 10 0 0 0 0 1
symversion=0.1
T 9100 6700 5 10 1 1 0 0 1
value=470nH
}
N 10100 7700 10300 7700 4
N 10300 7700 10300 6900 4
N 10100 6700 10100 6900 4
C 8700 5800 1 90 0 EMBEDDEDcapacitor-1.sym
[
P 8500 5800 8500 6000 1 0 0
{
T 8450 5950 5 8 0 1 90 6 1
pinnumber=1
T 8550 5950 5 8 0 1 90 8 1
pinseq=1
T 8500 6000 9 8 0 1 90 0 1
pinlabel=1
T 8500 6000 5 8 0 1 90 2 1
pintype=pas
}
P 8500 6700 8500 6500 1 0 0
{
T 8450 6550 5 8 0 1 90 0 1
pinnumber=2
T 8550 6550 5 8 0 1 90 2 1
pinseq=2
T 8500 6500 9 8 0 1 90 6 1
pinlabel=2
T 8500 6500 5 8 0 1 90 8 1
pintype=pas
}
L 8300 6200 8700 6200 3 0 0 0 -1 -1
L 8300 6300 8700 6300 3 0 0 0 -1 -1
L 8500 6500 8500 6300 3 0 0 0 -1 -1
L 8500 6200 8500 6000 3 0 0 0 -1 -1
T 8000 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 8200 6000 8 10 0 1 90 0 1
refdes=C?
T 7400 6000 5 10 0 0 90 0 1
description=capacitor
T 7600 6000 5 10 0 0 90 0 1
numslots=0
T 7800 6000 5 10 0 0 90 0 1
symversion=0.1
]
{
T 8000 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 8200 6000 5 10 1 1 90 0 1
refdes=C3
T 7800 6000 5 10 0 0 90 0 1
symversion=0.1
T 8900 6100 5 10 1 1 90 0 1
value=100pF
}
N 8500 5500 8500 5800 4
N 8900 6900 7400 6900 4
N 8500 6900 8500 6700 4
N 9200 7700 8700 7700 4
N 8700 7700 8700 6900 4
C 7800 5800 1 90 0 EMBEDDEDcapacitor-1.sym
[
P 7600 5800 7600 6000 1 0 0
{
T 7550 5950 5 8 0 1 90 6 1
pinnumber=1
T 7650 5950 5 8 0 1 90 8 1
pinseq=1
T 7600 6000 9 8 0 1 90 0 1
pinlabel=1
T 7600 6000 5 8 0 1 90 2 1
pintype=pas
}
P 7600 6700 7600 6500 1 0 0
{
T 7550 6550 5 8 0 1 90 0 1
pinnumber=2
T 7650 6550 5 8 0 1 90 2 1
pinseq=2
T 7600 6500 9 8 0 1 90 6 1
pinlabel=2
T 7600 6500 5 8 0 1 90 8 1
pintype=pas
}
L 7400 6200 7800 6200 3 0 0 0 -1 -1
L 7400 6300 7800 6300 3 0 0 0 -1 -1
L 7600 6500 7600 6300 3 0 0 0 -1 -1
L 7600 6200 7600 6000 3 0 0 0 -1 -1
T 7100 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 7300 6000 8 10 0 1 90 0 1
refdes=C?
T 6500 6000 5 10 0 0 90 0 1
description=capacitor
T 6700 6000 5 10 0 0 90 0 1
numslots=0
T 6900 6000 5 10 0 0 90 0 1
symversion=0.1
]
{
T 7100 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 7300 6000 5 10 1 1 90 0 1
refdes=C2
T 6900 6000 5 10 0 0 90 0 1
symversion=0.1
T 8000 6100 5 10 1 1 90 0 1
value=82pF
}
N 7600 5500 7600 5800 4
C 6700 7500 1 0 0 EMBEDDEDcapacitor-1.sym
[
P 6700 7700 6900 7700 1 0 0
{
T 6850 7750 5 8 0 1 0 6 1
pinnumber=1
T 6850 7650 5 8 0 1 0 8 1
pinseq=1
T 6900 7700 9 8 0 1 0 0 1
pinlabel=1
T 6900 7700 5 8 0 1 0 2 1
pintype=pas
}
P 7600 7700 7400 7700 1 0 0
{
T 7450 7750 5 8 0 1 0 0 1
pinnumber=2
T 7450 7650 5 8 0 1 0 2 1
pinseq=2
T 7400 7700 9 8 0 1 0 6 1
pinlabel=2
T 7400 7700 5 8 0 1 0 8 1
pintype=pas
}
L 7100 7900 7100 7500 3 0 0 0 -1 -1
L 7200 7900 7200 7500 3 0 0 0 -1 -1
L 7400 7700 7200 7700 3 0 0 0 -1 -1
L 7100 7700 6900 7700 3 0 0 0 -1 -1
T 6900 8200 5 10 0 0 0 0 1
device=CAPACITOR
T 6900 8000 8 10 0 1 0 0 1
refdes=C?
T 6900 8800 5 10 0 0 0 0 1
description=capacitor
T 6900 8600 5 10 0 0 0 0 1
numslots=0
T 6900 8400 5 10 0 0 0 0 1
symversion=0.1
]
{
T 6900 8200 5 10 0 0 0 0 1
device=CAPACITOR
T 6900 8000 5 10 1 1 0 0 1
refdes=C7
T 6900 8400 5 10 0 0 0 0 1
symversion=0.1
T 7000 7300 5 10 1 1 0 0 1
value=5.6pF
}
C 6400 6900 1 0 0 EMBEDDEDcoil-1.sym
[
P 6600 6900 6400 6900 1 0 1
{
T 6550 6950 5 8 0 1 0 6 1
pinnumber=1
T 6550 6850 5 8 0 1 0 8 1
pinseq=1
T 6650 6900 9 8 0 1 0 0 1
pinlabel=1
T 6650 6900 5 8 0 1 0 2 1
pintype=pas
}
P 7200 6900 7400 6900 1 0 1
{
T 7250 6950 5 8 0 1 0 0 1
pinnumber=2
T 7250 6850 5 8 0 1 0 2 1
pinseq=2
T 7150 6900 9 8 0 1 0 6 1
pinlabel=2
T 7150 6900 5 8 0 1 0 8 1
pintype=pas
}
A 6700 6900 100 0 180 3 0 0 0 -1 -1
A 6900 6900 100 0 180 3 0 0 0 -1 -1
A 7100 6900 100 0 180 3 0 0 0 -1 -1
T 6600 7300 5 10 0 0 0 0 1
device=COIL
T 6600 7100 8 10 0 1 0 0 1
refdes=L?
T 6600 7900 5 10 0 0 0 0 1
description=incuctor
T 6600 7700 5 10 0 0 0 0 1
numslots=0
T 6600 7500 5 10 0 0 0 0 1
symversion=0.1
]
{
T 6600 7300 5 10 0 0 0 0 1
device=COIL
T 6600 7100 5 10 1 1 0 0 1
refdes=L1
T 6600 7500 5 10 0 0 0 0 1
symversion=0.1
T 6600 6700 5 10 1 1 0 0 1
value=390nH
}
N 7600 7700 7800 7700 4
N 7800 7700 7800 6900 4
N 7600 6700 7600 6900 4
C 6200 5800 1 90 0 EMBEDDEDcapacitor-1.sym
[
P 6000 5800 6000 6000 1 0 0
{
T 5950 5950 5 8 0 1 90 6 1
pinnumber=1
T 6050 5950 5 8 0 1 90 8 1
pinseq=1
T 6000 6000 9 8 0 1 90 0 1
pinlabel=1
T 6000 6000 5 8 0 1 90 2 1
pintype=pas
}
P 6000 6700 6000 6500 1 0 0
{
T 5950 6550 5 8 0 1 90 0 1
pinnumber=2
T 6050 6550 5 8 0 1 90 2 1
pinseq=2
T 6000 6500 9 8 0 1 90 6 1
pinlabel=2
T 6000 6500 5 8 0 1 90 8 1
pintype=pas
}
L 5800 6200 6200 6200 3 0 0 0 -1 -1
L 5800 6300 6200 6300 3 0 0 0 -1 -1
L 6000 6500 6000 6300 3 0 0 0 -1 -1
L 6000 6200 6000 6000 3 0 0 0 -1 -1
T 5500 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 5700 6000 8 10 0 1 90 0 1
refdes=C?
T 4900 6000 5 10 0 0 90 0 1
description=capacitor
T 5100 6000 5 10 0 0 90 0 1
numslots=0
T 5300 6000 5 10 0 0 90 0 1
symversion=0.1
]
{
T 5500 6000 5 10 0 0 90 0 1
device=CAPACITOR
T 5700 6000 5 10 1 1 90 0 1
refdes=C1
T 5300 6000 5 10 0 0 90 0 1
symversion=0.1
T 6400 6100 5 10 1 1 90 0 1
value=68pF
}
N 6000 5500 6000 5800 4
N 6000 6900 6000 6700 4
N 6700 7700 6200 7700 4
N 6200 7700 6200 6900 4
C 5200 5800 1 90 0 EMBEDDEDresistor-2.sym
[
P 5100 6700 5100 6550 1 0 0
{
T 5050 6600 5 8 0 1 90 0 1
pinnumber=2
T 5050 6600 5 8 0 0 90 0 1
pinseq=2
T 5050 6600 5 8 0 1 90 0 1
pinlabel=2
T 5050 6600 5 8 0 1 90 0 1
pintype=pas
}
P 5100 5800 5100 5950 1 0 0
{
T 5050 5900 5 8 0 1 90 0 1
pinnumber=1
T 5050 5900 5 8 0 0 90 0 1
pinseq=1
T 5050 5900 5 8 0 1 90 0 1
pinlabel=1
T 5050 5900 5 8 0 1 90 0 1
pintype=pas
}
B 5000 5950 200 600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 4850 6200 5 10 0 0 90 0 1
device=RESISTOR
T 4900 6000 8 10 0 1 90 0 1
refdes=R?
]
{
T 4850 6200 5 10 0 0 90 0 1
device=RESISTOR
T 4900 6000 5 10 1 1 90 0 1
refdes=R2
T 5400 6000 5 10 1 1 90 0 1
value=200
}
N 5100 6900 5100 6700 4
N 5100 5500 5100 5800 4
N 6400 6900 3900 6900 4
N 2700 5500 14000 5500 4
C 14100 5800 1 90 0 EMBEDDEDresistor-2.sym
[
P 14000 6700 14000 6550 1 0 0
{
T 13950 6600 5 8 0 1 90 0 1
pinnumber=2
T 13950 6600 5 8 0 0 90 0 1
pinseq=2
T 13950 6600 5 8 0 1 90 0 1
pinlabel=2
T 13950 6600 5 8 0 1 90 0 1
pintype=pas
}
P 14000 5800 14000 5950 1 0 0
{
T 13950 5900 5 8 0 1 90 0 1
pinnumber=1
T 13950 5900 5 8 0 0 90 0 1
pinseq=1
T 13950 5900 5 8 0 1 90 0 1
pinlabel=1
T 13950 5900 5 8 0 1 90 0 1
pintype=pas
}
B 13900 5950 200 600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 13750 6200 5 10 0 0 90 0 1
device=RESISTOR
T 13800 6000 8 10 0 1 90 0 1
refdes=R?
]
{
T 13750 6200 5 10 0 0 90 0 1
device=RESISTOR
T 13800 6000 5 10 1 1 90 0 1
refdes=R1
T 14300 6000 5 10 1 1 90 0 1
value=50
}
N 14000 6900 14000 6700 4
N 14000 5800 14000 5500 4
L 3100 5500 3000 5600 3 0 0 0 -1 -1
L 3000 5600 3100 5700 3 0 0 0 -1 -1
L 3100 5700 3200 5600 3 0 0 0 -1 -1
L 3200 5600 3100 5500 3 0 0 0 -1 -1
T 3100 5600 9 6 1 0 0 4 1
0
C 2400 5600 1 0 0 EMBEDDEDvac-1.sym
[
T 3100 6250 8 10 0 1 0 0 1
refdes=V?
T 3100 6450 5 10 0 0 0 0 1
device=vac
T 3100 6650 5 10 0 0 0 0 1
footprint=none
T 3100 6850 5 10 0 0 0 0 1
numslots=0
T 3100 7050 5 10 0 0 0 0 1
description=ac power source
P 2700 6800 2700 6500 1 0 0
{
T 2750 6600 5 8 1 1 0 0 1
pinnumber=1
T 2750 6600 5 8 0 1 0 2 1
pinseq=1
T 2700 6450 9 8 1 1 0 5 1
pinlabel=+
T 2700 6300 5 8 0 1 0 5 1
pintype=pwr
}
P 2700 5600 2700 5900 1 0 0
{
T 2750 5700 5 8 1 1 0 0 1
pinnumber=2
T 2750 5700 5 8 0 1 0 2 1
pinseq=2
T 2700 5950 9 8 1 1 0 3 1
pinlabel=-
T 2700 6100 5 8 0 1 0 3 1
pintype=pwr
}
V 2700 6200 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 3100 6050 5 10 0 1 0 0 1
value=dc 0 ac 1
A 2630 6175 75 19 141 3 0 0 0 -1 -1
A 2770 6225 75 199 141 3 0 0 0 -1 -1
]
{
T 400 6650 5 10 1 1 0 0 1
refdes=VS
T 3100 6450 5 10 0 0 0 0 1
device=vac
T 3100 6650 5 10 0 0 0 0 1
footprint=none
}
N 2700 6900 2700 6800 4
L 14000 6900 14100 7100 3 0 0 0 -1 -1
B 14100 7100 600 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 14200 7200 9 10 1 0 0 0 1
Vout
L 4200 6900 4100 7000 3 0 0 0 -1 -1
L 4100 7000 4200 7100 3 0 0 0 -1 -1
L 4200 7100 4300 7000 3 0 0 0 -1 -1
L 4300 7000 4200 6900 3 0 0 0 -1 -1
T 4200 7000 5 6 1 1 0 4 1
netname=2
L 2800 6900 2700 7000 3 0 0 0 -1 -1
L 2700 7000 2800 7100 3 0 0 0 -1 -1
L 2800 7100 2900 7000 3 0 0 0 -1 -1
L 2900 7000 2800 6900 3 0 0 0 -1 -1
T 2800 7000 5 6 1 1 0 4 1
netname=1
L 8000 7000 8100 6900 3 0 0 0 -1 -1
L 8100 6900 8200 7000 3 0 0 0 -1 -1
L 8200 7000 8100 7100 3 0 0 0 -1 -1
L 8100 7100 8000 7000 3 0 0 0 -1 -1
T 8100 7000 5 6 1 1 0 4 1
netname=3
L 10600 7000 10700 7100 3 0 0 0 -1 -1
L 10700 7100 10800 7000 3 0 0 0 -1 -1
L 10800 7000 10700 6900 3 0 0 0 -1 -1
L 10700 6900 10600 7000 3 0 0 0 -1 -1
T 10700 7000 5 6 1 1 0 4 1
netname=4
C 2600 5100 1 0 0 EMBEDDEDgnd-1.sym
[
P 2700 5200 2700 5400 1 0 1
{
T 2758 5261 5 4 0 1 0 0 1
pinnumber=1
T 2758 5261 5 4 0 0 0 0 1
pinseq=1
T 2758 5261 5 4 0 1 0 0 1
pinlabel=1
T 2758 5261 5 4 0 1 0 0 1
pintype=pwr
}
L 2600 5200 2800 5200 3 0 0 0 -1 -1
L 2655 5150 2745 5150 3 0 0 0 -1 -1
L 2680 5110 2720 5110 3 0 0 0 -1 -1
T 2900 5150 8 10 0 0 0 0 1
net=GND:1
]
N 2700 5400 2700 5600 4
T 400 6500 9 10 1 0 0 2 4
SINE(0 1 100)
AC 1 0
Rser=200
.ac dec 100 100 1e9
C 3000 6800 1 0 0 EMBEDDEDresistor-2.sym
[
P 3900 6900 3750 6900 1 0 0
{
T 3800 6950 5 8 0 1 0 0 1
pinnumber=2
T 3800 6950 5 8 0 0 0 0 1
pinseq=2
T 3800 6950 5 8 0 1 0 0 1
pinlabel=2
T 3800 6950 5 8 0 1 0 0 1
pintype=pas
}
P 3000 6900 3150 6900 1 0 0
{
T 3100 6950 5 8 0 1 0 0 1
pinnumber=1
T 3100 6950 5 8 0 0 0 0 1
pinseq=1
T 3100 6950 5 8 0 1 0 0 1
pinlabel=1
T 3100 6950 5 8 0 1 0 0 1
pintype=pas
}
B 3150 6800 600 200 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 3400 7150 5 10 0 0 0 0 1
device=RESISTOR
T 3200 7100 8 10 0 1 0 0 1
refdes=R?
]
{
T 3400 7150 5 10 0 0 0 0 1
device=RESISTOR
T 3200 7100 5 10 1 1 0 0 1
refdes=Rser
T 3200 6600 5 10 1 1 0 0 1
value=200
}
N 3000 6900 2700 6900 4
L 13300 7000 13400 7100 3 0 0 0 -1 -1
L 13400 7100 13500 7000 3 0 0 0 -1 -1
L 13500 7000 13400 6900 3 0 0 0 -1 -1
L 13400 6900 13300 7000 3 0 0 0 -1 -1
T 13400 7000 5 6 1 1 0 4 1
netname=5
L 4500 6900 4600 7100 3 0 0 0 -1 -1
B 4600 7100 600 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 4700 7200 9 10 1 0 0 0 1
Vin
B 2200 5000 1800 2500 3 0 0 4 100 100 0 -1 -1 -1 -1 -1
B 13600 5300 1600 2400 3 0 0 4 100 100 0 -1 -1 -1 -1 -1
T 13700 5000 9 10 1 0 0 0 1
Filter output Z=50
T 2200 4900 9 10 1 0 0 2 4
DDS clock = 100 MHz
DDS output Z=200
Cut off frequency = 30 MHz
Null at DDS clk freq (100 MHz)
