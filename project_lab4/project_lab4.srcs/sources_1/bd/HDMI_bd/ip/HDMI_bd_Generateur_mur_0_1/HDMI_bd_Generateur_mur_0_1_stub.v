// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sun Nov 22 20:06:07 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               U:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Generateur_mur_0_1/HDMI_bd_Generateur_mur_0_1_stub.v
// Design      : HDMI_bd_Generateur_mur_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Generateur_mur,Vivado 2018.2.1" *)
module HDMI_bd_Generateur_mur_0_1(NewRandom, Mur_out, Clk)
/* synthesis syn_black_box black_box_pad_pin="NewRandom,Mur_out[31:0],Clk" */;
  input NewRandom;
  output [31:0]Mur_out;
  input Clk;
endmodule
