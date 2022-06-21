vlib work
vlib activehdl

vlib activehdl/fifo_generator_v13_2_6
vlib activehdl/xil_defaultlib

vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work fifo_generator_v13_2_6  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../ADC_16Ch_Stream.gen/sources_1/ip/fifo_w256_128_r256_128/sim/fifo_w256_128_r256_128.v" \


vlog -work xil_defaultlib \
"glbl.v"

