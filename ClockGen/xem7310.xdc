############################################################################
# XEM7310 - Xilinx constraints file
#
# Pin mappings for the XEM7310.  Use this as a template and comment out 
# the pins that are not used in your design.  (By default, map will fail
# if this file contains constraints for signals not in your design).
#
# Copyright (c) 2004-2016 Opal Kelly Incorporated
############################################################################

set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS True [current_design]


############################################################################
## System Clock
############################################################################
set_property IOSTANDARD LVDS_25 [get_ports {sys_clkp}]
set_property PACKAGE_PIN W11 [get_ports {sys_clkp}]

set_property IOSTANDARD LVDS_25 [get_ports {sys_clkn}]
set_property PACKAGE_PIN W12 [get_ports {sys_clkn}]

create_clock -name sys_clk -period 5 [get_ports sys_clkp]
set_clock_groups -asynchronous -group [get_clocks {sys_clk}] 

# OUTPUT CLOCKS CCIA #######################################################
set_property PACKAGE_PIN W9 [get_ports {chop_clk_ccia}]
set_property IOSTANDARD LVCMOS33 [get_ports {chop_clk_ccia}]
set_property PACKAGE_PIN V9 [get_ports {clk_aux_p1}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_aux_p1}]
set_property PACKAGE_PIN Y9 [get_ports {clk_aux_p2}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_aux_p2}]
set_property PACKAGE_PIN V8 [get_ports {chop_clk_aux}]
set_property IOSTANDARD LVCMOS33 [get_ports {chop_clk_aux}]
set_property PACKAGE_PIN R6 [get_ports {auxbuf_ctrl}]
set_property IOSTANDARD LVCMOS33 [get_ports {auxbuf_ctrl}]

# OUTPUT CLOCKS TIA #######################################################
set_property PACKAGE_PIN V7 [get_ports {chop_clk_tia}]
set_property IOSTANDARD LVCMOS33 [get_ports {chop_clk_tia}]
set_property PACKAGE_PIN T6 [get_ports {rst_tia}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_tia}]

