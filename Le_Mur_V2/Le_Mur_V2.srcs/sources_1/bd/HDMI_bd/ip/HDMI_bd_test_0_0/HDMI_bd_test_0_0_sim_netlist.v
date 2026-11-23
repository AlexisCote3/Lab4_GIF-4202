// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sun Nov 22 20:27:53 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_test_0_0/HDMI_bd_test_0_0_sim_netlist.v
// Design      : HDMI_bd_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_test_0_0,test,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "test,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_test_0_0
   (is_mur,
    is_pixel_joueur,
    rbg_in,
    rbg_out);
  input is_mur;
  input is_pixel_joueur;
  input [23:0]rbg_in;
  output [23:0]rbg_out;

  wire is_mur;
  wire is_pixel_joueur;
  wire [23:0]rbg_in;
  wire [23:0]rbg_out;

  HDMI_bd_test_0_0_test U0
       (.is_mur(is_mur),
        .is_pixel_joueur(is_pixel_joueur),
        .rbg_in(rbg_in),
        .rbg_out(rbg_out));
endmodule

(* ORIG_REF_NAME = "test" *) 
module HDMI_bd_test_0_0_test
   (rbg_out,
    rbg_in,
    is_pixel_joueur,
    is_mur);
  output [23:0]rbg_out;
  input [23:0]rbg_in;
  input is_pixel_joueur;
  input is_mur;

  wire is_mur;
  wire is_pixel_joueur;
  wire [23:0]rbg_in;
  wire [23:0]rbg_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[0]_INST_0 
       (.I0(rbg_in[0]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[10]_INST_0 
       (.I0(rbg_in[10]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[11]_INST_0 
       (.I0(rbg_in[11]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[12]_INST_0 
       (.I0(rbg_in[12]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[13]_INST_0 
       (.I0(rbg_in[13]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[14]_INST_0 
       (.I0(rbg_in[14]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[15]_INST_0 
       (.I0(rbg_in[15]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[16]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[16]),
        .O(rbg_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[17]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[17]),
        .O(rbg_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[18]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[18]),
        .O(rbg_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[19]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[19]),
        .O(rbg_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[1]_INST_0 
       (.I0(rbg_in[1]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[20]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[20]),
        .O(rbg_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[21]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[21]),
        .O(rbg_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[22]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[22]),
        .O(rbg_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \rbg_out[23]_INST_0 
       (.I0(is_mur),
        .I1(is_pixel_joueur),
        .I2(rbg_in[23]),
        .O(rbg_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[2]_INST_0 
       (.I0(rbg_in[2]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[3]_INST_0 
       (.I0(rbg_in[3]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[4]_INST_0 
       (.I0(rbg_in[4]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[5]_INST_0 
       (.I0(rbg_in[5]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[6]_INST_0 
       (.I0(rbg_in[6]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \rbg_out[7]_INST_0 
       (.I0(rbg_in[7]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[8]_INST_0 
       (.I0(rbg_in[8]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \rbg_out[9]_INST_0 
       (.I0(rbg_in[9]),
        .I1(is_pixel_joueur),
        .I2(is_mur),
        .O(rbg_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
