// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Wed Nov 25 16:57:11 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/juroy185/Downloads/basic/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_top_level_0_0/HDMI_bd_top_level_0_0_stub.v
// Design      : HDMI_bd_top_level_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_level,Vivado 2018.2.1" *)
module HDMI_bd_top_level_0_0(pixel_clk, clk, reset, rgb_in, vsync, vde, hsync, 
  rgb_out, run, quit, diff)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,clk,reset,rgb_in[23:0],vsync,vde,hsync,rgb_out[23:0],run,quit,diff[1:0]" */;
  input pixel_clk;
  input clk;
  input reset;
  input [23:0]rgb_in;
  input vsync;
  input vde;
  input hsync;
  output [23:0]rgb_out;
  input run;
  input quit;
  input [1:0]diff;
endmodule
