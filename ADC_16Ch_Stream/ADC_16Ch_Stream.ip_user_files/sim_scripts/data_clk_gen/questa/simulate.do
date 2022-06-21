onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib data_clk_gen_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {data_clk_gen.udo}

run -all

quit -force
