// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Fri Nov 27 12:20:14 2026
// Host        : pcetu-183 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top HDMI_bd_xlconcat_0_1 -prefix
//               HDMI_bd_xlconcat_0_1_ HDMI_bd_xlconcat_0_1_stub.v
// Design      : HDMI_bd_xlconcat_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2018.2.1" *)
module HDMI_bd_xlconcat_0_1(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[0:0],In1[0:0],dout[1:0]" */;
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;
endmodule
