.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'nmos.spi'

xnmos VDS VGS VSS IV_curves_N

VDS VDS 0 1
VGS VGS 0 1
VSS VSS GND 0

.op
.dc VDS 0 1.8 0.2 sweep VGS 0 1.8 0.2
.end
