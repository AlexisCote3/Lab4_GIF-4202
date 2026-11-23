// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sun Nov 22 20:27:53 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_detection_joueur_0_0/HDMI_bd_detection_joueur_0_0_sim_netlist.v
// Design      : HDMI_bd_detection_joueur_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_detection_joueur_0_0,detection_joueur,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "detection_joueur,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_detection_joueur_0_0
   (rgb_in,
    is_pixel_joueur);
  input [23:0]rgb_in;
  output is_pixel_joueur;

  wire is_pixel_joueur;
  wire [23:0]rgb_in;

  HDMI_bd_detection_joueur_0_0_detection_joueur U0
       (.is_pixel_joueur(is_pixel_joueur),
        .rgb_in(rgb_in));
endmodule

(* ORIG_REF_NAME = "detection_joueur" *) 
module HDMI_bd_detection_joueur_0_0_detection_joueur
   (is_pixel_joueur,
    rgb_in);
  output is_pixel_joueur;
  input [23:0]rgb_in;

  wire is_pixel_joueur;
  wire is_pixel_joueur_INST_0_i_1_n_0;
  wire [9:1]luminosity;
  wire luminosity__0_carry__0_i_1_n_0;
  wire luminosity__0_carry__0_i_2_n_0;
  wire luminosity__0_carry__0_i_3_n_0;
  wire luminosity__0_carry__0_i_4_n_0;
  wire luminosity__0_carry__0_i_5_n_0;
  wire luminosity__0_carry__0_i_6_n_0;
  wire luminosity__0_carry__0_i_7_n_0;
  wire luminosity__0_carry__0_i_8_n_0;
  wire luminosity__0_carry__0_n_0;
  wire luminosity__0_carry__0_n_1;
  wire luminosity__0_carry__0_n_2;
  wire luminosity__0_carry__0_n_3;
  wire luminosity__0_carry__1_i_1_n_0;
  wire luminosity__0_carry_i_1_n_0;
  wire luminosity__0_carry_i_2_n_0;
  wire luminosity__0_carry_i_3_n_0;
  wire luminosity__0_carry_i_4_n_0;
  wire luminosity__0_carry_i_5_n_0;
  wire luminosity__0_carry_i_6_n_0;
  wire luminosity__0_carry_i_7_n_0;
  wire luminosity__0_carry_n_0;
  wire luminosity__0_carry_n_1;
  wire luminosity__0_carry_n_2;
  wire luminosity__0_carry_n_3;
  wire [23:0]rgb_in;
  wire [0:0]NLW_luminosity__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_luminosity__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_luminosity__0_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h000000000F0F0F7F)) 
    is_pixel_joueur_INST_0
       (.I0(luminosity[3]),
        .I1(luminosity[4]),
        .I2(luminosity[7]),
        .I3(luminosity[5]),
        .I4(luminosity[6]),
        .I5(is_pixel_joueur_INST_0_i_1_n_0),
        .O(is_pixel_joueur));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    is_pixel_joueur_INST_0_i_1
       (.I0(luminosity[8]),
        .I1(luminosity[9]),
        .I2(luminosity[7]),
        .I3(luminosity[4]),
        .I4(luminosity[1]),
        .I5(luminosity[2]),
        .O(is_pixel_joueur_INST_0_i_1_n_0));
  CARRY4 luminosity__0_carry
       (.CI(1'b0),
        .CO({luminosity__0_carry_n_0,luminosity__0_carry_n_1,luminosity__0_carry_n_2,luminosity__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({luminosity__0_carry_i_1_n_0,luminosity__0_carry_i_2_n_0,luminosity__0_carry_i_3_n_0,1'b0}),
        .O({luminosity[3:1],NLW_luminosity__0_carry_O_UNCONNECTED[0]}),
        .S({luminosity__0_carry_i_4_n_0,luminosity__0_carry_i_5_n_0,luminosity__0_carry_i_6_n_0,luminosity__0_carry_i_7_n_0}));
  CARRY4 luminosity__0_carry__0
       (.CI(luminosity__0_carry_n_0),
        .CO({luminosity__0_carry__0_n_0,luminosity__0_carry__0_n_1,luminosity__0_carry__0_n_2,luminosity__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({luminosity__0_carry__0_i_1_n_0,luminosity__0_carry__0_i_2_n_0,luminosity__0_carry__0_i_3_n_0,luminosity__0_carry__0_i_4_n_0}),
        .O(luminosity[7:4]),
        .S({luminosity__0_carry__0_i_5_n_0,luminosity__0_carry__0_i_6_n_0,luminosity__0_carry__0_i_7_n_0,luminosity__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry__0_i_1
       (.I0(rgb_in[14]),
        .I1(rgb_in[6]),
        .I2(rgb_in[22]),
        .O(luminosity__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry__0_i_2
       (.I0(rgb_in[13]),
        .I1(rgb_in[5]),
        .I2(rgb_in[21]),
        .O(luminosity__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry__0_i_3
       (.I0(rgb_in[12]),
        .I1(rgb_in[4]),
        .I2(rgb_in[20]),
        .O(luminosity__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry__0_i_4
       (.I0(rgb_in[11]),
        .I1(rgb_in[3]),
        .I2(rgb_in[19]),
        .O(luminosity__0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry__0_i_5
       (.I0(luminosity__0_carry__0_i_1_n_0),
        .I1(rgb_in[7]),
        .I2(rgb_in[15]),
        .I3(rgb_in[23]),
        .O(luminosity__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry__0_i_6
       (.I0(rgb_in[14]),
        .I1(rgb_in[6]),
        .I2(rgb_in[22]),
        .I3(luminosity__0_carry__0_i_2_n_0),
        .O(luminosity__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry__0_i_7
       (.I0(rgb_in[13]),
        .I1(rgb_in[5]),
        .I2(rgb_in[21]),
        .I3(luminosity__0_carry__0_i_3_n_0),
        .O(luminosity__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry__0_i_8
       (.I0(rgb_in[12]),
        .I1(rgb_in[4]),
        .I2(rgb_in[20]),
        .I3(luminosity__0_carry__0_i_4_n_0),
        .O(luminosity__0_carry__0_i_8_n_0));
  CARRY4 luminosity__0_carry__1
       (.CI(luminosity__0_carry__0_n_0),
        .CO({NLW_luminosity__0_carry__1_CO_UNCONNECTED[3:2],luminosity[9],NLW_luminosity__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_luminosity__0_carry__1_O_UNCONNECTED[3:1],luminosity[8]}),
        .S({1'b0,1'b0,1'b1,luminosity__0_carry__1_i_1_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry__1_i_1
       (.I0(rgb_in[15]),
        .I1(rgb_in[7]),
        .I2(rgb_in[23]),
        .O(luminosity__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry_i_1
       (.I0(rgb_in[10]),
        .I1(rgb_in[2]),
        .I2(rgb_in[18]),
        .O(luminosity__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry_i_2
       (.I0(rgb_in[9]),
        .I1(rgb_in[1]),
        .I2(rgb_in[17]),
        .O(luminosity__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    luminosity__0_carry_i_3
       (.I0(rgb_in[8]),
        .I1(rgb_in[0]),
        .I2(rgb_in[16]),
        .O(luminosity__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry_i_4
       (.I0(rgb_in[11]),
        .I1(rgb_in[3]),
        .I2(rgb_in[19]),
        .I3(luminosity__0_carry_i_1_n_0),
        .O(luminosity__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry_i_5
       (.I0(rgb_in[10]),
        .I1(rgb_in[2]),
        .I2(rgb_in[18]),
        .I3(luminosity__0_carry_i_2_n_0),
        .O(luminosity__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    luminosity__0_carry_i_6
       (.I0(rgb_in[9]),
        .I1(rgb_in[1]),
        .I2(rgb_in[17]),
        .I3(luminosity__0_carry_i_3_n_0),
        .O(luminosity__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    luminosity__0_carry_i_7
       (.I0(rgb_in[8]),
        .I1(rgb_in[0]),
        .I2(rgb_in[16]),
        .O(luminosity__0_carry_i_7_n_0));
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
