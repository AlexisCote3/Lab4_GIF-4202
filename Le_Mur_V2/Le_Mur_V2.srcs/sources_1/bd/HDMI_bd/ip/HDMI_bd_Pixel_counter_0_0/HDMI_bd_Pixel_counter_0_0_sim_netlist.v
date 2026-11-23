// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Nov 23 16:36:48 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Pixel_counter_0_0/HDMI_bd_Pixel_counter_0_0_sim_netlist.v
// Design      : HDMI_bd_Pixel_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_Pixel_counter_0_0,Pixel_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pixel_counter,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_Pixel_counter_0_0
   (clk_pixel,
    vsync,
    vde,
    pixel_x,
    pixel_y);
  input clk_pixel;
  input vsync;
  input vde;
  output [10:0]pixel_x;
  output [10:0]pixel_y;

  wire clk_pixel;
  wire [10:0]pixel_x;
  wire [10:0]pixel_y;
  wire vde;
  wire vsync;

  HDMI_bd_Pixel_counter_0_0_Pixel_counter U0
       (.clk_pixel(clk_pixel),
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .vde(vde),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "Pixel_counter" *) 
module HDMI_bd_Pixel_counter_0_0_Pixel_counter
   (pixel_x,
    pixel_y,
    vde,
    clk_pixel,
    vsync);
  output [10:0]pixel_x;
  output [10:0]pixel_y;
  input vde;
  input clk_pixel;
  input vsync;

  wire clear;
  wire clk_pixel;
  wire [10:0]pixel_x;
  wire [10:0]pixel_y;
  wire [10:0]plusOp;
  wire [10:0]plusOp__0;
  wire vde;
  wire vde_prev;
  wire vsync;
  wire \x_cnt[10]_i_3_n_0 ;
  wire \y_cnt[10]_i_1_n_0 ;
  wire \y_cnt[10]_i_3_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    vde_prev_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(vde),
        .Q(vde_prev),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[0]_i_1 
       (.I0(pixel_x[0]),
        .O(plusOp[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[10]_i_1 
       (.I0(vde),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_cnt[10]_i_2 
       (.I0(pixel_x[8]),
        .I1(pixel_x[6]),
        .I2(\x_cnt[10]_i_3_n_0 ),
        .I3(pixel_x[7]),
        .I4(pixel_x[9]),
        .I5(pixel_x[10]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \x_cnt[10]_i_3 
       (.I0(pixel_x[5]),
        .I1(pixel_x[3]),
        .I2(pixel_x[1]),
        .I3(pixel_x[0]),
        .I4(pixel_x[2]),
        .I5(pixel_x[4]),
        .O(\x_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_cnt[1]_i_1 
       (.I0(pixel_x[0]),
        .I1(pixel_x[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_cnt[2]_i_1 
       (.I0(pixel_x[0]),
        .I1(pixel_x[1]),
        .I2(pixel_x[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_cnt[3]_i_1 
       (.I0(pixel_x[1]),
        .I1(pixel_x[0]),
        .I2(pixel_x[2]),
        .I3(pixel_x[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_cnt[4]_i_1 
       (.I0(pixel_x[2]),
        .I1(pixel_x[0]),
        .I2(pixel_x[1]),
        .I3(pixel_x[3]),
        .I4(pixel_x[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_cnt[5]_i_1 
       (.I0(pixel_x[3]),
        .I1(pixel_x[1]),
        .I2(pixel_x[0]),
        .I3(pixel_x[2]),
        .I4(pixel_x[4]),
        .I5(pixel_x[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_cnt[6]_i_1 
       (.I0(\x_cnt[10]_i_3_n_0 ),
        .I1(pixel_x[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_cnt[7]_i_1 
       (.I0(\x_cnt[10]_i_3_n_0 ),
        .I1(pixel_x[6]),
        .I2(pixel_x[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_cnt[8]_i_1 
       (.I0(pixel_x[6]),
        .I1(\x_cnt[10]_i_3_n_0 ),
        .I2(pixel_x[7]),
        .I3(pixel_x[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_cnt[9]_i_1 
       (.I0(pixel_x[7]),
        .I1(\x_cnt[10]_i_3_n_0 ),
        .I2(pixel_x[6]),
        .I3(pixel_x[8]),
        .I4(pixel_x[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(pixel_x[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[10] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(pixel_x[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(pixel_x[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(pixel_x[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(pixel_x[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(pixel_x[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(pixel_x[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(pixel_x[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(pixel_x[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(pixel_x[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_cnt_reg[9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(pixel_x[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \y_cnt[0]_i_1 
       (.I0(pixel_y[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_cnt[10]_i_1 
       (.I0(vde_prev),
        .I1(vde),
        .O(\y_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_cnt[10]_i_2 
       (.I0(pixel_y[8]),
        .I1(pixel_y[6]),
        .I2(\y_cnt[10]_i_3_n_0 ),
        .I3(pixel_y[7]),
        .I4(pixel_y[9]),
        .I5(pixel_y[10]),
        .O(plusOp__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \y_cnt[10]_i_3 
       (.I0(pixel_y[5]),
        .I1(pixel_y[3]),
        .I2(pixel_y[1]),
        .I3(pixel_y[0]),
        .I4(pixel_y[2]),
        .I5(pixel_y[4]),
        .O(\y_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_cnt[1]_i_1 
       (.I0(pixel_y[0]),
        .I1(pixel_y[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_cnt[2]_i_1 
       (.I0(pixel_y[0]),
        .I1(pixel_y[1]),
        .I2(pixel_y[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_cnt[3]_i_1 
       (.I0(pixel_y[1]),
        .I1(pixel_y[0]),
        .I2(pixel_y[2]),
        .I3(pixel_y[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_cnt[4]_i_1 
       (.I0(pixel_y[2]),
        .I1(pixel_y[0]),
        .I2(pixel_y[1]),
        .I3(pixel_y[3]),
        .I4(pixel_y[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_cnt[5]_i_1 
       (.I0(pixel_y[3]),
        .I1(pixel_y[1]),
        .I2(pixel_y[0]),
        .I3(pixel_y[2]),
        .I4(pixel_y[4]),
        .I5(pixel_y[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_cnt[6]_i_1 
       (.I0(\y_cnt[10]_i_3_n_0 ),
        .I1(pixel_y[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_cnt[7]_i_1 
       (.I0(\y_cnt[10]_i_3_n_0 ),
        .I1(pixel_y[6]),
        .I2(pixel_y[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_cnt[8]_i_1 
       (.I0(pixel_y[6]),
        .I1(\y_cnt[10]_i_3_n_0 ),
        .I2(pixel_y[7]),
        .I3(pixel_y[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_cnt[9]_i_1 
       (.I0(pixel_y[7]),
        .I1(\y_cnt[10]_i_3_n_0 ),
        .I2(pixel_y[6]),
        .I3(pixel_y[8]),
        .I4(pixel_y[9]),
        .O(plusOp__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[0] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[0]),
        .Q(pixel_y[0]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[10] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[10]),
        .Q(pixel_y[10]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[1] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[1]),
        .Q(pixel_y[1]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[2] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[2]),
        .Q(pixel_y[2]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[3] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[3]),
        .Q(pixel_y[3]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[4] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[4]),
        .Q(pixel_y[4]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[5] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[5]),
        .Q(pixel_y[5]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[6] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[6]),
        .Q(pixel_y[6]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[7] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[7]),
        .Q(pixel_y[7]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[8] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[8]),
        .Q(pixel_y[8]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \y_cnt_reg[9] 
       (.C(clk_pixel),
        .CE(\y_cnt[10]_i_1_n_0 ),
        .D(plusOp__0[9]),
        .Q(pixel_y[9]),
        .R(vsync));
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
