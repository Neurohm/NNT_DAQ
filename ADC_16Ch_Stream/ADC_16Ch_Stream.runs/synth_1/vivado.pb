
|
Command: %s
53*	vivadotcl2K
7synth_design -top adc_stream_clk -part xc7a200tfbg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a200tfbg484-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
185802default:defaultZ8-7075h px? 
?
,overwriting previous definition of module %s2490*oasys2%
xpm_cdc_async_rst2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okCoreHarness.v2default:default2
153612default:default8@Z8-2490h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1413.258 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2"
adc_stream_clk2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
252default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
data_clk_gen2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.runs/synth_1/.Xil/Vivado-17400-LAPTOP-4PT5HRKL/realtime/data_clk_gen_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
data_clk_gen2default:default2
 2default:default2
12default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.runs/synth_1/.Xil/Vivado-17400-LAPTOP-4PT5HRKL/realtime/data_clk_gen_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
freq_divider2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/freq_divider.v2default:default2
42default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DIVISOR bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
freq_divider2default:default2
 2default:default2
22default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/freq_divider.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
ADC_SPI_Control2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_SPI_Control.v2default:default2
262default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter N_CYCLES_WAIT_ADC bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter ADC_RESOLUTION bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_SPI_Control.v2default:default2
842default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
ADC_SPI_Control2default:default2
 2default:default2
32default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_SPI_Control.v2default:default2
262default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_gen2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/clk_gen.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
clk_gen_CCIA2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/clk_gen_CCIA.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
clk_gen_CCIA2default:default2
 2default:default2
42default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/clk_gen_CCIA.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_gen_TIA2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/clk_gen_TIA.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_gen_TIA2default:default2
 2default:default2
52default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/clk_gen_TIA.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_gen2default:default2
 2default:default2
62default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/clk_gen.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
mig_7series_02default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.runs/synth_1/.Xil/Vivado-17400-LAPTOP-4PT5HRKL/realtime/mig_7series_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
mig_7series_02default:default2
 2default:default2
72default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.runs/synth_1/.Xil/Vivado-17400-LAPTOP-4PT5HRKL/realtime/mig_7series_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
302default:default2
app_addr2default:default2
292default:default2!
mig_7series_02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
2532default:default8@Z8-689h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
device_temp2default:default2!
mig_7series_02default:default2!
u_ddr3_256_322default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
2312default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
u_ddr3_256_322default:default2!
mig_7series_02default:default2
392default:default2
382default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
2312default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2
ddr3_FSM2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ddr3_FSM.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ddr3_FSM.v2default:default2
1072default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ddr3_FSM2default:default2
 2default:default2
82default:default2
12default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ddr3_FSM.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
302default:default2
app_addr2default:default2
292default:default2
ddr3_FSM2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
3042default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2
okHost2default:default2
 2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
IOBUF2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
597352default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IOBUF2default:default2
 2default:default2
92default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
597352default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
FDRE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
278372default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE2default:default2
 2default:default2
102default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
278372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
IBUFG2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
556882default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFG2default:default2
 2default:default2
112default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
556882default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MMCME2_BASE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
636302default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKIN1_PERIOD bound to: 9.920000 - type: double 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKOUT0_PHASE bound to: 54.000000 - type: double 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MMCME2_BASE2default:default2
 2default:default2
122default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
636302default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	CLKFBOUTB2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT0B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT12default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT1B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT22default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT2B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT32default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT3B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT42default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT52default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT62default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
PWRDWN2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mmcm02default:default2
MMCME2_BASE2default:default2
182default:default2
62default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/imports/XEM7310-A200/okLibrary.v2default:default2
532default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
132default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
GND2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
288162default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GND2default:default2
 2default:default2
142default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
288162default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
VCC2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1096902default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VCC2default:default2
 2default:default2
152default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1096902default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT52default:default2
 2default:default2
162default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT62default:default2
 2default:default2
172default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized02default:default2
 2default:default2
172default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT32default:default2
 2default:default2
182default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT22default:default2
 2default:default2
192default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized12default:default2
 2default:default2
192default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized02default:default2
 2default:default2
192default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized12default:default2
 2default:default2
192default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT42default:default2
 2default:default2
202default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized02default:default2
 2default:default2
202default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized22default:default2
 2default:default2
202default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized32default:default2
 2default:default2
202default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626492default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT12default:default2
 2default:default2
212default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
FDSE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
279732default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDSE2default:default2
 2default:default2
222default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
279732default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
CARRY42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
14872default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CARRY42default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
14872default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized22default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT2__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT2__parameterized02default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT2__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT2__parameterized12default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized12default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized02default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized32default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized42default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT1__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626492default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT1__parameterized02default:default2
 2default:default2
232default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
626492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
FDPE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
277772default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDPE2default:default2
 2default:default2
242default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
277772default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
FDCE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
276212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDCE2default:default2
 2default:default2
252default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
276212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RAMB18E12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1028532default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAMB18E12default:default2
 2default:default2
262default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1028532default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
FDRE__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
278372default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDRE__parameterized02default:default2
 2default:default2
262default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
278372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
FDPE__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
277772default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDPE__parameterized02default:default2
 2default:default2
262default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
277772default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized42default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized52default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized62default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized12default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized22default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
627632default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized72default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized72default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized82default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized82default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized92default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized92default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized102default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized102default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized112default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized112default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized52default:default2
 2default:default2
272default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
DNA_PORT2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
260962default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DNA_PORT2default:default2
 2default:default2
302default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
260962default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
FDCE__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
276212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDCE__parameterized02default:default2
 2default:default2
302default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
276212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
FDPE__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
277772default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDPE__parameterized12default:default2
 2default:default2
302default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
277772default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LUT6_22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT6_22default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized122default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized122default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized02default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized132default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized132default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized142default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized142default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized12default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized22default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized32default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized152default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized152default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized42default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized162default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized162default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized52default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized172default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized172default:default2
 2default:default2
312default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	RAM128X1S2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
978192default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	RAM128X1S2default:default2
 2default:default2
322default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
978192default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized62default:default2
 2default:default2
322default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized182default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized182default:default2
 2default:default2
322default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized72default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized72default:default2
 2default:default2
322default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RAM32M2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
980662default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAM32M2default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
980662default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized82default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized82default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
LUT6_2__parameterized92default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
LUT6_2__parameterized92default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized102default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized102default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized112default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized112default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized192default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized192default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized202default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized202default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized122default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized122default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized132default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized132default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized212default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized212default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized142default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized142default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized152default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized152default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized162default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized162default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized222default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized222default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized172default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized172default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized182default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized182default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized192default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized192default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized202default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized202default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized232default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized232default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized242default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized242default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
LUT6_2__parameterized212default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
LUT6_2__parameterized212default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
629052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
RAMB18E1__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1028532default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
RAMB18E1__parameterized02default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1028532default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized252default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized252default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized262default:default2
 2default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6157h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61572default:default2
1002default:defaultZ17-14h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized262default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized272default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized282default:default2
 2default:default2
332default:default2
12default:default2K
5C:/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
628592default:default8@Z8-6155h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61552default:default2
1002default:defaultZ17-14h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dna2default:default2
okHost2default:default2
okHI2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
3412default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	dna_valid2default:default2
okHost2default:default2
okHI2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
3412default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
okHI2default:default2
okHost2default:default2
92default:default2
72default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
3412default:default8@Z8-7023h px? 
V
%s
*synth2>
*	Parameter N bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
102default:default2!
wr_data_count2default:default2
72default:default2*
fifo_w256_128_r256_1282default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
3772default:default8@Z8-689h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
pipe_in_ready_reg2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.srcs/sources_1/new/ADC_main.v2default:default2
3232default:default8@Z8-6014h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[112]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[111]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[110]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[109]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[108]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[107]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[106]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[105]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[104]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[103]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[102]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[101]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[100]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[99]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[98]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[97]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[96]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[95]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[94]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[93]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[92]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[91]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[90]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[89]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[88]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[87]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[86]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[85]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[84]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[83]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[82]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[81]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[80]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[79]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[78]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[77]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[76]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[75]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[74]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[73]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[72]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[71]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[70]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[69]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[68]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[67]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[66]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[65]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[64]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[63]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[62]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[61]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[60]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[59]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[58]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[57]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[56]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[55]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[54]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[53]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[52]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[51]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[50]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[49]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[48]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[47]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[45]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[44]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[43]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[41]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[40]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[31]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[30]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[29]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[28]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[27]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[26]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[25]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[24]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[23]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[22]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[21]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[20]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[19]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[18]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[17]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[16]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[15]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[14]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[13]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[12]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[11]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[10]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[9]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[8]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[7]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[6]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[5]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[4]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[3]2default:default2
okBTPipeOut2default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1413.258 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1413.258 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1413.258 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1072default:default2
1413.2582default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1462default:defaultZ29-17h px? 
?
?The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist2$
okHI/hi_clk_bufg2default:defaultZ29-432h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/mig_7series_0/mig_7series_0/mig_7series_0_in_context.xdc2default:default2#
u_ddr3_256_32	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/mig_7series_0/mig_7series_0/mig_7series_0_in_context.xdc2default:default2#
u_ddr3_256_32	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128/fifo_w256_128_r256_128_in_context.xdc2default:default2
inFIFO	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128/fifo_w256_128_r256_128_in_context.xdc2default:default2
inFIFO	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024_in_context.xdc2default:default2$
okPipeOut_fifo	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024_in_context.xdc2default:default2$
okPipeOut_fifo	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen/data_clk_gen_in_context.xdc2default:default2
uclkgen	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen/data_clk_gen_in_context.xdc2default:default2
uclkgen	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default8Z20-179h px? 
?
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
722default:default8@Z18-6211h px?
?
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
732default:default8@Z18-6211h px?
?
Deriving generated clocks
2*timing2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
2142default:default8@Z38-2h px?
?
No clocks matched '%s'.
627*	planAhead2
	clk_pll_i2default:default2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
2142default:default8@Z12-627h px?
?
Finished Parsing XDC File [%s]
178*designutils2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2|
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default24
 .Xil/adc_stream_clk_propImpl.xdc2default:defaultZ1-236h px? 
l
2%s XPM XDC files have been applied to the design.
665*project2
12default:defaultZ1-1714h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1512.8672default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 97 instances were transformed.
  IBUFG => IBUF: 1 instance 
  IOBUF => IOBUF (IBUF, OBUFT): 33 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 50 instances
  MMCME2_BASE => MMCME2_ADV: 1 instance 
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 8 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 4 instances
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0412default:default2
1512.8672default:default2
0.0002default:defaultZ17-268h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2"
okPipeOut_fifo2default:default2
rd_clk2default:default2
9.9202default:defaultZ38-316h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a200tfbg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
ADC_SPI_Control2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
ddr3_FSM2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   sIDLE |                            00000 | 00000000000000000000000000000000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  sSTART |                            00001 | 00000000000000000000000000001010
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE1 |                            00010 | 00000000000000000000000000001011
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE2 |                            00011 | 00000000000000000000000000001100
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE3 |                            00100 | 00000000000000000000000000001101
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE4 |                            00101 | 00000000000000000000000000001110
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE5 |                            00110 | 00000000000000000000000000001111
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE6 |                            00111 | 00000000000000000000000000010000
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE7 |                            01000 | 00000000000000000000000000010001
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE8 |                            01001 | 00000000000000000000000000010010
2default:defaulth p
x
? 
?
%s
*synth2s
_               sACQUIRE9 |                            01010 | 00000000000000000000000000010011
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE10 |                            01011 | 00000000000000000000000000010100
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE11 |                            01100 | 00000000000000000000000000010101
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE12 |                            01101 | 00000000000000000000000000010110
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE13 |                            01110 | 00000000000000000000000000010111
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE14 |                            01111 | 00000000000000000000000000011000
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE15 |                            10000 | 00000000000000000000000000011001
2default:defaulth p
x
? 
?
%s
*synth2s
_              sACQUIRE16 |                            10001 | 00000000000000000000000000011010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 sFINISH |                            10010 | 00000000000000000000000000011110
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2#
ADC_SPI_Control2default:defaultZ8-3354h px? 
?
QFound Keep on FSM register '%s' in module '%s', re-encoding will not be performed4499*oasys2
	state_reg2default:default2
ddr3_FSM2default:defaultZ8-6159h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                  s_idle | 00000000000000000000000000000000 | 00000000000000000000000000000000
2default:defaulth p
x
? 
?
%s
*synth2s
_               s_write_0 | 00000000000000000000000000001010 | 00000000000000000000000000001010
2default:defaulth p
x
? 
?
%s
*synth2s
_               s_write_1 | 00000000000000000000000000001011 | 00000000000000000000000000001011
2default:defaulth p
x
? 
?
%s
*synth2s
_               s_write_2 | 00000000000000000000000000001100 | 00000000000000000000000000001100
2default:defaulth p
x
? 
?
%s
*synth2s
_               s_write_3 | 00000000000000000000000000001101 | 00000000000000000000000000001101
2default:defaulth p
x
? 
?
%s
*synth2s
_               s_write_4 | 00000000000000000000000000001110 | 00000000000000000000000000001110
2default:defaulth p
x
? 
?
%s
*synth2s
_                s_read_0 | 00000000000000000000000000010100 | 00000000000000000000000000010100
2default:defaulth p
x
? 
?
%s
*synth2s
_                s_read_1 | 00000000000000000000000000010101 | 00000000000000000000000000010101
2default:defaulth p
x
? 
?
%s
*synth2s
_                s_read_2 | 00000000000000000000000000010110 | 00000000000000000000000000010110
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%l008c72ad3b3ec61be52cde84a395c4fa_reg2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%la85eaf42c58af45585f858cdefb86492_reg2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[0]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[10]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[11]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[12]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[13]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[14]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[15]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[16]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[17]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[18]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[19]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[1]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[20]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[21]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[22]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[23]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[24]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[25]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[26]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[27]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[28]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[29]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[2]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[30]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[31]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[3]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[4]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[5]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[6]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[7]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[8]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[9]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[0]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[10]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[11]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[12]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[13]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[14]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[15]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[16]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[17]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[18]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[19]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[1]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[20]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[21]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[22]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[23]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[24]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[25]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[26]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[27]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[28]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[29]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[2]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[30]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[31]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[3]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[4]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[5]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[6]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[7]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[8]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[9]2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%lf38b0951701b1c1d5bc7a746e996b3c6_reg2default:default2
okCore2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[10]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[11]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[12]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[13]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[14]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[15]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[16]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[17]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[18]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[19]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[20]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[21]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[22]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[23]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[24]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[25]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[26]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[27]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[28]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[29]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[30]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[31]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[5]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[6]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[7]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[8]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[9]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[10]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[11]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[12]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[13]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[14]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[15]2default:default2
okWireIn__12default:defaultZ8-3332h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2?
?okHI/core0/core0/a0/cb0/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst/src_arst2default:default2O
;okHI/core0/core0/a0/l62a5479e7989ce7f4d5507c695cc69cf_reg/Q2default:defaultZ8-5578h px? 
?
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
12default:defaultZ8-5819h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+-----------------------+----------+
2default:defaulth p
x
? 
X
%s
*synth2@
,|      |BlackBox name          |Instances |
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+-----------------------+----------+
2default:defaulth p
x
? 
X
%s
*synth2@
,|1     |data_clk_gen           |         1|
2default:defaulth p
x
? 
X
%s
*synth2@
,|2     |mig_7series_0          |         1|
2default:defaulth p
x
? 
X
%s
*synth2@
,|3     |fifo_w256_128_r256_128 |         1|
2default:defaulth p
x
? 
X
%s
*synth2@
,|4     |fifo_w256_128_r32_1024 |         1|
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+-----------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
P
%s*synth28
$+------+-------------------+------+
2default:defaulth px? 
P
%s*synth28
$|      |Cell               |Count |
2default:defaulth px? 
P
%s*synth28
$+------+-------------------+------+
2default:defaulth px? 
P
%s*synth28
$|1     |data_clk_gen       |     1|
2default:defaulth px? 
P
%s*synth28
$|2     |fifo_w256_128_r256 |     1|
2default:defaulth px? 
P
%s*synth28
$|3     |fifo_w256_128_r32  |     1|
2default:defaulth px? 
P
%s*synth28
$|4     |mig_7series        |     1|
2default:defaulth px? 
P
%s*synth28
$|5     |BUFG               |     3|
2default:defaulth px? 
P
%s*synth28
$|6     |CARRY4             |    94|
2default:defaulth px? 
P
%s*synth28
$|7     |DNA_PORT           |     1|
2default:defaulth px? 
P
%s*synth28
$|8     |LUT1               |    99|
2default:defaulth px? 
P
%s*synth28
$|9     |LUT2               |    98|
2default:defaulth px? 
P
%s*synth28
$|10    |LUT3               |   115|
2default:defaulth px? 
P
%s*synth28
$|11    |LUT4               |   822|
2default:defaulth px? 
P
%s*synth28
$|12    |LUT5               |   146|
2default:defaulth px? 
P
%s*synth28
$|13    |LUT6               |   582|
2default:defaulth px? 
P
%s*synth28
$|15    |MMCME2_BASE        |     1|
2default:defaulth px? 
P
%s*synth28
$|16    |RAM128X1S          |     8|
2default:defaulth px? 
P
%s*synth28
$|17    |RAM32M             |     4|
2default:defaulth px? 
P
%s*synth28
$|18    |RAMB18E1           |     2|
2default:defaulth px? 
P
%s*synth28
$|20    |RAMB36E1           |     1|
2default:defaulth px? 
P
%s*synth28
$|21    |FDCE               |   202|
2default:defaulth px? 
P
%s*synth28
$|22    |FDPE               |    38|
2default:defaulth px? 
P
%s*synth28
$|23    |FDRE               |  1658|
2default:defaulth px? 
P
%s*synth28
$|24    |FDSE               |    23|
2default:defaulth px? 
P
%s*synth28
$|25    |IBUF               |    20|
2default:defaulth px? 
P
%s*synth28
$|26    |IBUFG              |     1|
2default:defaulth px? 
P
%s*synth28
$|27    |IOBUF              |    33|
2default:defaulth px? 
P
%s*synth28
$|28    |OBUF               |    15|
2default:defaulth px? 
P
%s*synth28
$|29    |OBUFT              |     5|
2default:defaulth px? 
P
%s*synth28
$+------+-------------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
u
%s
*synth2]
ISynthesis finished with 0 errors, 0 critical warnings and 1178 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:29 . Memory (MB): peak = 1512.867 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1512.867 ; gain = 99.609
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0652default:default2
1512.8672default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1942default:defaultZ29-17h px? 
?
?The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist2$
okHI/hi_clk_bufg2default:defaultZ29-432h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1516.3012default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 97 instances were transformed.
  IBUFG => IBUF: 1 instance 
  IOBUF => IOBUF (IBUF, OBUFT): 33 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 50 instances
  MMCME2_BASE => MMCME2_ADV: 1 instance 
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 8 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 4 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
52d1a0772default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2312default:default2
2292default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:372default:default2
00:00:382default:default2
1516.3012default:default2
103.0432default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.runs/synth_1/adc_stream_clk.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file adc_stream_clk_utilization_synth.rpt -pb adc_stream_clk_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Jun 25 16:05:01 20222default:defaultZ17-206h px? 


End Record