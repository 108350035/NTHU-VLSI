.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.param y=4.15u
.include 'inv.spi'

x1 A Out VDD VSS INV

VA A GND pulse 0 1.8 3n 0.1n 0.1n 50n 100n
VSS VSS GND 0
VDD VDD GND 1.8
CA Vout GND 1p

.tran 1n 10u
.end








