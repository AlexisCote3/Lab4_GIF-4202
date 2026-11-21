// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Fri Nov 20 19:26:58 2026
// Host        : pcetu-149 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/juroy185/Documents/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_FSM_0_0/HDMI_bd_FSM_0_0_stub.v
// Design      : HDMI_bd_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FSM,Vivado 2018.2.1" *)
module HDMI_bd_FSM_0_0(clk, reset, run, quit, difficulty, q_pass, new_round, 
  diff_out, mode_ui, sec, score_courant, record_perso)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,run,quit,difficulty[1:0],q_pass,new_round,diff_out[1:0],mode_ui[2:0],sec[3:0],score_courant[5:0],record_perso[5:0]" */;
  input clk;
  input reset;
  input run;
  input quit;
  input [1:0]difficulty;
  input q_pass;
  output new_round;
  output [1:0]diff_out;
  output [2:0]mode_ui;
  output [3:0]sec;
  output [5:0]score_courant;
  output [5:0]record_perso;
endmodule
