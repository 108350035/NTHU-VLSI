.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'nand2.spi'

xnand2 A B VDD VSS Vout NAND2

VA A GND pulse 0 1.8 5n 0.1n 0.1n 16n 53n
VB B GND pulse 0 1.8 5n 0.1n 0.1n 8n 25n
VDD VDD GND 1.8
VSS VSS GND 0
Cout Vout GND 0.3p

.tran 1n 10u
.end
