set_property SRC_FILE_INFO {cfile:{c:/Users/okolhe/OneDrive - purdue.edu/Academics/Purdue/Testing System/NNT_DAQ/ADC_16Ch_Stream/ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.xdc} rfile:../../../ADC_16Ch_Stream.gen/sources_1/ip/data_clk_gen/data_clk_gen.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.050
