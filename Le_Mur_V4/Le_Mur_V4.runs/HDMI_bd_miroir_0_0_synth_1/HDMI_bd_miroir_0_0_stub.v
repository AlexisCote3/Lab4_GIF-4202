// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Fri Nov 27 14:14:48 2026
// Host        : pcetu-197 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMI_bd_miroir_0_0_stub.v
// Design      : HDMI_bd_miroir_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "miroir,Vivado 2018.2.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(PixelClk, VSync_in, VDE_in, HSync_in, VSync_out, 
  VDE_out, HSync_out, address, wea)
/* synthesis syn_black_box black_box_pad_pin="PixelClk,VSync_in,VDE_in,HSync_in,VSync_out,VDE_out,HSync_out,address[10:0],wea[0:0]" */;
  input PixelClk;
  input VSync_in;
  input VDE_in;
  input HSync_in;
  output VSync_out;
  output VDE_out;
  output HSync_out;
  output [10:0]address;
  output [0:0]wea;
endmodule
