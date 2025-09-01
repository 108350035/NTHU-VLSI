.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'pmos.spi'

xpmos VDS VGS VSS IV_curves_P

VDS VDS GND -1.8
VGS VGS GND -1.8
VSS VSS GND 0

.dc VDS -1.8 0 0.2 sweep VGS -1.8 0 0.2
.end
