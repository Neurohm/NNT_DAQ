onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+data_clk_gen -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.data_clk_gen xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {data_clk_gen.udo}

run -all

endsim

quit -force
