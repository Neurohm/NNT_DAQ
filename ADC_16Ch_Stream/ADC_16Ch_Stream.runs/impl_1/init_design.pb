
{
Command: %s
53*	vivadotcl2J
6link_design -top adc_stream_clk -part xc7a200tfbg484-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
W
Loading part %s157*device2$
xc7a200tfbg484-12default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128.dcp2default:default2
inFIFO2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024.dcp2default:default2"
okPipeOut_fifo2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/mig_7series_0/mig_7series_0.dcp2default:default2!
u_ddr3_256_322default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.dcp2default:default2
uclkgen2default:defaultZ1-454h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.4972default:default2
1412.0232default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
6962default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2021.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2-
uclkgen/inst/clkin1_ibufg2default:defaultZ31-32h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2%
uclkgen/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc2default:default2#
u_ddr3_256_32	2default:default8Z20-848h px? 
?
?Setting CLOCK_DEDICATED_ROUTE constraint on the PARENT net instead of the specified net segment (net name: %s). Placer only honors CLOCK_DEDICATED_ROUTE when set on the PARENT net, e.g. net segment directly connected to the driver. To eliminate this message, please update your constraint to specify the PARENT net instead.2810*	planAhead2+
u_ddr3_256_32/sys_clk_p2default:default2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc2default:default2
392default:default8@Z12-4777h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc2default:default2#
u_ddr3_256_32	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128.xdc2default:default2
	inFIFO/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128.xdc2default:default2
	inFIFO/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024.xdc2default:default2'
okPipeOut_fifo/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024.xdc2default:default2'
okPipeOut_fifo/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen_board.xdc2default:default2"
uclkgen/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen_board.xdc2default:default2"
uclkgen/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.xdc2default:default2"
uclkgen/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:082default:default2
00:00:082default:default2
1798.7032default:default2
386.6802default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.xdc2default:default2"
uclkgen/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default8Z20-179h px? 
?
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
722default:default8@Z18-6211h px? 
?
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
732default:default8@Z18-6211h px? 
?
Deriving generated clocks
2*timing2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default2
2142default:default8@Z38-2h px? 
?
Finished Parsing XDC File [%s]
178*designutils2~
hC:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/xem7310.xdc2default:default8Z20-178h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128_clocks.xdc2default:default2
	inFIFO/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/fifo_w256_128_r256_128_clocks.xdc2default:default2
	inFIFO/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024_clocks.xdc2default:default2'
okPipeOut_fifo/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/omkol/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r32_1024/fifo_w256_128_r32_1024_clocks.xdc2default:default2'
okPipeOut_fifo/U0	2default:default8Z20-847h px? 
m
2%s XPM XDC files have been applied to the design.
665*project2
132default:defaultZ1-1714h px? 
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
00:00:00.0062default:default2
1798.7032default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 357 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 33 instances
  IOBUFDS_DIFF_OUT_INTERMDISABLE => IOBUFDS_DIFF_OUT_INTERMDISABLE (IBUFDS_INTERMDISABLE_INT(x2), INV, OBUFTDS(x2)): 4 instances
  IOBUF_INTERMDISABLE => IOBUF_INTERMDISABLE (IBUF_INTERMDISABLE, OBUFT): 32 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 50 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 8 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 215 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 14 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:192default:default2
00:00:202default:default2
1798.7032default:default2
386.6802default:defaultZ17-268h px? 


End Record