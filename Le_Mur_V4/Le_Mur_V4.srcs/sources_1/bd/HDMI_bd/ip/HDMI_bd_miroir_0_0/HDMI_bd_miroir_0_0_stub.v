// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Wed Nov 25 16:02:18 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/juroy185/Downloads/basic/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_miroir_0_0/HDMI_bd_miroir_0_0_stub.v
// Design      : HDMI_bd_miroir_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "miroir,Vivado 2018.2.1" *)
module HDMI_bd_miroir_0_0(PixelClk, VSync_in, VDE_in, HSync_in, VSync_out, 
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
