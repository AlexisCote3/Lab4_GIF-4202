vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/xlconcat_v2_1_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"C:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Programs/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../bd/HDMI_bd/ip/HDMI_bd_xlconstant_0_0/sim/HDMI_bd_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/ClockGen.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/SyncAsync.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/SyncAsyncReset.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/DVI_Constants.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/OutputSERDES.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/TMDS_Encoder.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/20df/src/rgb2dvi.vhd" \
"../../../bd/HDMI_bd/ip/HDMI_bd_rgb2dvi_1_0/sim/HDMI_bd_rgb2dvi_1_0.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/SyncBase.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/EEPROM_8b.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/TWI_SlaveCtl.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/GlitchFilter.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/PhaseAlign.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/InputSERDES.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/ChannelBond.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/ResyncToBUFG.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/TMDS_Decoder.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/TMDS_Clocking.vhd" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/0387/src/dvi2rgb.vhd" \
"../../../bd/HDMI_bd/ip/HDMI_bd_dvi2rgb_1_0/sim/HDMI_bd_dvi2rgb_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../bd/HDMI_bd/ip/HDMI_bd_clk_wiz_0_1/HDMI_bd_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/HDMI_bd/ip/HDMI_bd_clk_wiz_0_1/HDMI_bd_clk_wiz_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/HDMI_bd/ip/HDMI_bd_miroir_0_0/sim/HDMI_bd_miroir_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../bd/HDMI_bd/ip/HDMI_bd_blk_mem_gen_0_0/sim/HDMI_bd_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/HDMI_bd/ip/HDMI_bd_top_level_0_0/sim/HDMI_bd_top_level_0_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" "+incdir+../../../../Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ipshared/b65a" \
"../../../bd/HDMI_bd/ip/HDMI_bd_xlconcat_0_1/sim/HDMI_bd_xlconcat_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/HDMI_bd/sim/HDMI_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

