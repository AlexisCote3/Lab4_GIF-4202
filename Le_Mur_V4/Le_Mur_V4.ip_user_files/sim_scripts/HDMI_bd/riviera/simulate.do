onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+HDMI_bd -L xil_defaultlib -L xpm -L xlconstant_v1_1_5 -L blk_mem_gen_v8_4_1 -L xlconcat_v2_1_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.HDMI_bd xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {HDMI_bd.udo}

run -all

endsim

quit -force
