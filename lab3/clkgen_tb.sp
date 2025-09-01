.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'clkgen.spi'

xclkgen A VDD VSS Vout clkgen

VA A GND pulse 0 1.8 3n 0.1n 0.1n 5n 20n
VDD VDD GND 1.8
VSS VSS GND 0
Cout Vout GND 0.01p

.tran 0.11n 10u
.probe V(Vout)

.end
