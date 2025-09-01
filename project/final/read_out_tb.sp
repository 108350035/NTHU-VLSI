.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' fs

.temp 25
.option post acout=0 runlvl=6 captable

.include 'read_out.spi'

x1 BL0 BL1 BL2 BL3 BL4 BL5 BL6 BL7 clk EN rst VDD VSS WL0 WL1 
+ WL2 WL3 WL4 WL5 WL6 WL7 read_out

CB0 BL0 GND 0.1pf
CB1 BL1 GND 0.1pf
CB2 BL2 GND 0.1pf
CB3 BL3 GND 0.1pf
CB4 BL4 GND 0.1pf
CB5 BL5 GND 0.1pf
CB6 BL6 GND 0.1pf
CB7 BL7 GND 0.1pf

CW0 WL0 GND 0.1pf
CW1 WL1 GND 0.1pf
CW2 WL2 GND 0.1pf
CW3 WL3 GND 0.1pf
CW4 WL4 GND 0.1pf
CW5 WL5 GND 0.1pf
CW6 WL6 GND 0.1pf
CW7 WL7 GND 0.1pf



VRST RST GND pwl 0 1.8 20ns 1.8 20.1ns 0 40ns 0 40.1n 1.8
Vclk clk GND pulse 0 1.8 10n 0.1n 0.1n 1n 2n
VEN EN GND pwl 0 1.8 20ns 1.8 20.1ns 0 105ns 0 105.1n 1.8
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.end
