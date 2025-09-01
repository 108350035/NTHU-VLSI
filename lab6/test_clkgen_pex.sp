.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'clkgen.pex.spi'

x1 A Out VSS VDD clkgen

VA A GND pulse 0 1.8 3n 0.1n 0.1n 20n 200n
VSS VSS GND 0
VDD VDD GND 1.8
CA Out GND 0.3p


.tran 1n 10u
.end











