.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'nmos.spi'

xnoms VDS VGS VSS IV_curves_N

VSS VSS GND 0
VGS VGS GND 1.8
VDS VDS GND 0.2

.op
.dc VGS 0 1.8 0.1

.end
