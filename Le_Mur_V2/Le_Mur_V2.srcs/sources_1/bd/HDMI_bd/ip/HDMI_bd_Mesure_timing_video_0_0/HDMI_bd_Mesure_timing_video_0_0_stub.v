// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Nov 23 17:39:38 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Mesure_timing_video_0_0/HDMI_bd_Mesure_timing_video_0_0_stub.v
// Design      : HDMI_bd_Mesure_timing_video_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Mesure_timing_video,Vivado 2018.2.1" *)
module HDMI_bd_Mesure_timing_video_0_0(clk_pixel, reset, vde, hsync, vsync, h_total, 
  h_active, h_blank, mesure_valid, v_total, v_active, v_blank, frame_valid)
/* synthesis syn_black_box black_box_pad_pin="clk_pixel,reset,vde,hsync,vsync,h_total[11:0],h_active[11:0],h_blank[11:0],mesure_valid,v_total[11:0],v_active[11:0],v_blank[11:0],frame_valid" */;
  input clk_pixel;
  input reset;
  input vde;
  input hsync;
  input vsync;
  output [11:0]h_total;
  output [11:0]h_active;
  output [11:0]h_blank;
  output mesure_valid;
  output [11:0]v_total;
  output [11:0]v_active;
  output [11:0]v_blank;
  output frame_valid;
endmodule
