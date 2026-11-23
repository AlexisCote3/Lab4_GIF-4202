// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Nov 23 13:35:11 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_DSP_0_0/HDMI_bd_DSP_0_0_stub.v
// Design      : HDMI_bd_DSP_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DSP,Vivado 2018.2.1" *)
module HDMI_bd_DSP_0_0(clk_pixel, reset, vde, vsync, hsync, 
  is_pixel_joueur, is_pixel_mur, q_pass, player_present, result_valid, player_pixels, 
  collision_pixels)
/* synthesis syn_black_box black_box_pad_pin="clk_pixel,reset,vde,vsync,hsync,is_pixel_joueur,is_pixel_mur,q_pass,player_present,result_valid,player_pixels[20:0],collision_pixels[20:0]" */;
  input clk_pixel;
  input reset;
  input vde;
  input vsync;
  input hsync;
  input is_pixel_joueur;
  input is_pixel_mur;
  output q_pass;
  output player_present;
  output result_valid;
  output [20:0]player_pixels;
  output [20:0]collision_pixels;
endmodule
