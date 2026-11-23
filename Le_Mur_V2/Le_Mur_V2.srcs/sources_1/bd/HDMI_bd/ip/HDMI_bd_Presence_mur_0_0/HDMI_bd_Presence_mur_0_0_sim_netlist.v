// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Nov 23 16:36:48 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Presence_mur_0_0/HDMI_bd_Presence_mur_0_0_sim_netlist.v
// Design      : HDMI_bd_Presence_mur_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_Presence_mur_0_0,Presence_mur,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Presence_mur,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_Presence_mur_0_0
   (pixel_x,
    pixel_y,
    wall_mask,
    is_mur);
  input [10:0]pixel_x;
  input [10:0]pixel_y;
  input [31:0]wall_mask;
  output is_mur;

  wire is_mur;
  wire is_mur_INST_0_i_11_n_0;
  wire is_mur_INST_0_i_31_n_0;
  wire is_mur_INST_0_i_5_n_0;
  wire [10:0]pixel_x;
  wire [10:0]pixel_y;
  wire [31:0]wall_mask;

  HDMI_bd_Presence_mur_0_0_Presence_mur U0
       (.is_mur(is_mur),
        .pixel_x(pixel_x),
        .pixel_x_10_sp_1(is_mur_INST_0_i_31_n_0),
        .pixel_y(pixel_y),
        .pixel_y_7_sp_1(is_mur_INST_0_i_5_n_0),
        .wall_mask(wall_mask));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    is_mur_INST_0_i_11
       (.I0(pixel_y[5]),
        .I1(pixel_y[3]),
        .I2(pixel_y[2]),
        .I3(pixel_y[4]),
        .I4(pixel_y[6]),
        .I5(pixel_y[7]),
        .O(is_mur_INST_0_i_11_n_0));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    is_mur_INST_0_i_31
       (.I0(pixel_x[7]),
        .I1(pixel_x[6]),
        .I2(pixel_x[8]),
        .I3(pixel_x[9]),
        .I4(pixel_x[10]),
        .O(is_mur_INST_0_i_31_n_0));
  LUT4 #(
    .INIT(16'h00F7)) 
    is_mur_INST_0_i_5
       (.I0(pixel_y[9]),
        .I1(pixel_y[8]),
        .I2(is_mur_INST_0_i_11_n_0),
        .I3(pixel_y[10]),
        .O(is_mur_INST_0_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "Presence_mur" *) 
module HDMI_bd_Presence_mur_0_0_Presence_mur
   (is_mur,
    pixel_x,
    pixel_x_10_sp_1,
    pixel_y,
    pixel_y_7_sp_1,
    wall_mask);
  output is_mur;
  input [10:0]pixel_x;
  input pixel_x_10_sp_1;
  input [10:0]pixel_y;
  input pixel_y_7_sp_1;
  input [31:0]wall_mask;

  wire col0__24_carry__0_i_1_n_0;
  wire col0__24_carry__0_i_2_n_0;
  wire col0__24_carry__0_i_3_n_0;
  wire col0__24_carry__0_i_4_n_0;
  wire col0__24_carry__0_i_5_n_0;
  wire col0__24_carry__0_i_6_n_0;
  wire col0__24_carry__0_i_7_n_0;
  wire col0__24_carry__0_i_8_n_0;
  wire col0__24_carry__0_n_0;
  wire col0__24_carry__0_n_1;
  wire col0__24_carry__0_n_2;
  wire col0__24_carry__0_n_3;
  wire col0__24_carry_i_1_n_0;
  wire col0__24_carry_i_2_n_0;
  wire col0__24_carry_i_3_n_0;
  wire col0__24_carry_i_4_n_0;
  wire col0__24_carry_i_5_n_0;
  wire col0__24_carry_i_6_n_0;
  wire col0__24_carry_i_7_n_0;
  wire col0__24_carry_i_8_n_3;
  wire col0__24_carry_n_0;
  wire col0__24_carry_n_1;
  wire col0__24_carry_n_2;
  wire col0__24_carry_n_3;
  wire col0_carry__0_i_1_n_0;
  wire col0_carry__0_i_2_n_0;
  wire col0_carry__0_i_3_n_0;
  wire col0_carry__0_i_4_n_0;
  wire col0_carry__0_n_0;
  wire col0_carry__0_n_1;
  wire col0_carry__0_n_2;
  wire col0_carry__0_n_3;
  wire col0_carry__1_i_1_n_0;
  wire col0_carry__1_i_2_n_0;
  wire col0_carry__1_n_0;
  wire col0_carry__1_n_1;
  wire col0_carry__1_n_2;
  wire col0_carry__1_n_3;
  wire col0_carry__1_n_4;
  wire col0_carry__1_n_5;
  wire col0_carry__1_n_6;
  wire col0_carry_i_1_n_0;
  wire col0_carry_i_2_n_0;
  wire col0_carry_i_3_n_0;
  wire col0_carry_n_0;
  wire col0_carry_n_1;
  wire col0_carry_n_2;
  wire col0_carry_n_3;
  wire is_mur;
  wire is_mur_INST_0_i_10_n_0;
  wire is_mur_INST_0_i_12_n_0;
  wire is_mur_INST_0_i_13_n_0;
  wire is_mur_INST_0_i_14_n_0;
  wire is_mur_INST_0_i_15_n_0;
  wire is_mur_INST_0_i_16_n_0;
  wire is_mur_INST_0_i_17_n_0;
  wire is_mur_INST_0_i_18_n_0;
  wire is_mur_INST_0_i_19_n_0;
  wire is_mur_INST_0_i_1_n_0;
  wire is_mur_INST_0_i_20_n_0;
  wire is_mur_INST_0_i_21_n_0;
  wire is_mur_INST_0_i_22_n_0;
  wire is_mur_INST_0_i_23_n_0;
  wire is_mur_INST_0_i_24_n_0;
  wire is_mur_INST_0_i_25_n_0;
  wire is_mur_INST_0_i_26_n_0;
  wire is_mur_INST_0_i_27_n_0;
  wire is_mur_INST_0_i_28_n_0;
  wire is_mur_INST_0_i_29_n_0;
  wire is_mur_INST_0_i_2_n_0;
  wire is_mur_INST_0_i_30_n_0;
  wire is_mur_INST_0_i_3_n_0;
  wire is_mur_INST_0_i_4_n_0;
  wire is_mur_INST_0_i_6_n_0;
  wire is_mur_INST_0_i_7_n_0;
  wire is_mur_INST_0_i_8_n_0;
  wire is_mur_INST_0_i_9_n_0;
  wire [10:0]pixel_x;
  wire pixel_x_10_sn_1;
  wire [10:0]pixel_y;
  wire pixel_y_7_sn_1;
  wire row0__24_carry__0_i_1_n_0;
  wire row0__24_carry__0_i_2_n_0;
  wire row0__24_carry__0_i_3_n_0;
  wire row0__24_carry__0_i_4_n_0;
  wire row0__24_carry__0_i_5_n_0;
  wire row0__24_carry__0_i_6_n_0;
  wire row0__24_carry__0_i_7_n_0;
  wire row0__24_carry__0_n_0;
  wire row0__24_carry__0_n_1;
  wire row0__24_carry__0_n_2;
  wire row0__24_carry__0_n_3;
  wire row0__24_carry__1_i_1_n_0;
  wire row0__24_carry__1_i_2_n_0;
  wire row0__24_carry__1_i_3_n_0;
  wire row0__24_carry__1_i_4_n_0;
  wire row0__24_carry__1_i_5_n_0;
  wire row0__24_carry__1_i_6_n_0;
  wire row0__24_carry__1_n_1;
  wire row0__24_carry__1_n_2;
  wire row0__24_carry__1_n_3;
  wire row0__24_carry_i_1_n_0;
  wire row0__24_carry_i_2_n_0;
  wire row0__24_carry_i_3_n_0;
  wire row0__24_carry_i_4_n_0;
  wire row0__24_carry_i_5_n_0;
  wire row0__24_carry_i_6_n_0;
  wire row0__24_carry_i_7_n_0;
  wire row0__24_carry_i_8_n_3;
  wire row0__24_carry_n_0;
  wire row0__24_carry_n_1;
  wire row0__24_carry_n_2;
  wire row0__24_carry_n_3;
  wire row0_carry__0_i_1_n_0;
  wire row0_carry__0_i_2_n_0;
  wire row0_carry__0_i_3_n_0;
  wire row0_carry__0_i_4_n_0;
  wire row0_carry__0_n_0;
  wire row0_carry__0_n_1;
  wire row0_carry__0_n_2;
  wire row0_carry__0_n_3;
  wire row0_carry__1_i_1_n_0;
  wire row0_carry__1_n_0;
  wire row0_carry__1_n_1;
  wire row0_carry__1_n_2;
  wire row0_carry__1_n_3;
  wire row0_carry__1_n_4;
  wire row0_carry__1_n_5;
  wire row0_carry__1_n_6;
  wire row0_carry_i_1_n_0;
  wire row0_carry_i_2_n_0;
  wire row0_carry_i_3_n_0;
  wire row0_carry_n_0;
  wire row0_carry_n_1;
  wire row0_carry_n_2;
  wire row0_carry_n_3;
  wire [31:0]wall_mask;
  wire [3:0]NLW_col0__24_carry_O_UNCONNECTED;
  wire [3:0]NLW_col0__24_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_col0__24_carry_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_col0__24_carry_i_8_O_UNCONNECTED;
  wire [3:0]NLW_col0_carry_O_UNCONNECTED;
  wire [3:0]NLW_col0_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_col0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_row0__24_carry_O_UNCONNECTED;
  wire [3:0]NLW_row0__24_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_row0__24_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_row0__24_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_row0__24_carry_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_row0__24_carry_i_8_O_UNCONNECTED;
  wire [3:0]NLW_row0_carry_O_UNCONNECTED;
  wire [3:0]NLW_row0_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_row0_carry__1_O_UNCONNECTED;

  assign pixel_x_10_sn_1 = pixel_x_10_sp_1;
  assign pixel_y_7_sn_1 = pixel_y_7_sp_1;
  CARRY4 col0__24_carry
       (.CI(1'b0),
        .CO({col0__24_carry_n_0,col0__24_carry_n_1,col0__24_carry_n_2,col0__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({col0__24_carry_i_1_n_0,col0__24_carry_i_2_n_0,col0__24_carry_i_3_n_0,1'b0}),
        .O(NLW_col0__24_carry_O_UNCONNECTED[3:0]),
        .S({col0__24_carry_i_4_n_0,col0__24_carry_i_5_n_0,col0__24_carry_i_6_n_0,col0__24_carry_i_7_n_0}));
  CARRY4 col0__24_carry__0
       (.CI(col0__24_carry_n_0),
        .CO({col0__24_carry__0_n_0,col0__24_carry__0_n_1,col0__24_carry__0_n_2,col0__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({col0__24_carry__0_i_1_n_0,col0__24_carry__0_i_2_n_0,col0__24_carry__0_i_3_n_0,col0__24_carry__0_i_4_n_0}),
        .O(NLW_col0__24_carry__0_O_UNCONNECTED[3:0]),
        .S({col0__24_carry__0_i_5_n_0,col0__24_carry__0_i_6_n_0,col0__24_carry__0_i_7_n_0,col0__24_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h0000D69C)) 
    col0__24_carry__0_i_1
       (.I0(col0_carry__1_n_5),
        .I1(col0__24_carry_i_8_n_3),
        .I2(col0_carry__1_n_4),
        .I3(col0_carry__1_n_6),
        .I4(pixel_x[9]),
        .O(col0__24_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000996C)) 
    col0__24_carry__0_i_2
       (.I0(col0_carry__1_n_6),
        .I1(col0_carry__1_n_4),
        .I2(col0__24_carry_i_8_n_3),
        .I3(col0_carry__1_n_5),
        .I4(pixel_x[8]),
        .O(col0__24_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9AFF)) 
    col0__24_carry__0_i_3
       (.I0(col0_carry__1_n_5),
        .I1(col0__24_carry_i_8_n_3),
        .I2(col0_carry__1_n_6),
        .I3(pixel_x[7]),
        .O(col0__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h6F)) 
    col0__24_carry__0_i_4
       (.I0(col0_carry__1_n_6),
        .I1(col0__24_carry_i_8_n_3),
        .I2(pixel_x[6]),
        .O(col0__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h54F52A40AB0AD5BF)) 
    col0__24_carry__0_i_5
       (.I0(pixel_x[9]),
        .I1(col0_carry__1_n_6),
        .I2(col0_carry__1_n_5),
        .I3(col0__24_carry_i_8_n_3),
        .I4(col0_carry__1_n_4),
        .I5(pixel_x[10]),
        .O(col0__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24DDBA04DB2245F)) 
    col0__24_carry__0_i_6
       (.I0(pixel_x[8]),
        .I1(col0_carry__1_n_6),
        .I2(col0_carry__1_n_4),
        .I3(col0__24_carry_i_8_n_3),
        .I4(col0_carry__1_n_5),
        .I5(pixel_x[9]),
        .O(col0__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h18E7EE11E71811EE)) 
    col0__24_carry__0_i_7
       (.I0(pixel_x[7]),
        .I1(col0_carry__1_n_5),
        .I2(col0__24_carry_i_8_n_3),
        .I3(col0_carry__1_n_4),
        .I4(col0_carry__1_n_6),
        .I5(pixel_x[8]),
        .O(col0__24_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    col0__24_carry__0_i_8
       (.I0(pixel_x[6]),
        .I1(col0_carry__1_n_6),
        .I2(col0__24_carry_i_8_n_3),
        .I3(col0_carry__1_n_5),
        .I4(pixel_x[7]),
        .O(col0__24_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    col0__24_carry_i_1
       (.I0(col0_carry__1_n_4),
        .I1(pixel_x[5]),
        .O(col0__24_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    col0__24_carry_i_2
       (.I0(col0_carry__1_n_5),
        .I1(pixel_x[4]),
        .O(col0__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    col0__24_carry_i_3
       (.I0(col0_carry__1_n_6),
        .I1(pixel_x[3]),
        .O(col0__24_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    col0__24_carry_i_4
       (.I0(col0__24_carry_i_1_n_0),
        .I1(col0__24_carry_i_8_n_3),
        .I2(col0_carry__1_n_6),
        .I3(pixel_x[6]),
        .O(col0__24_carry_i_4_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9699)) 
    col0__24_carry_i_5
       (.I0(col0_carry__1_n_4),
        .I1(pixel_x[5]),
        .I2(pixel_x[4]),
        .I3(col0_carry__1_n_5),
        .O(col0__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    col0__24_carry_i_6
       (.I0(pixel_x[3]),
        .I1(col0_carry__1_n_6),
        .I2(col0_carry__1_n_5),
        .I3(pixel_x[4]),
        .O(col0__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0__24_carry_i_7
       (.I0(pixel_x[3]),
        .I1(col0_carry__1_n_6),
        .O(col0__24_carry_i_7_n_0));
  CARRY4 col0__24_carry_i_8
       (.CI(col0_carry__1_n_0),
        .CO({NLW_col0__24_carry_i_8_CO_UNCONNECTED[3:1],col0__24_carry_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_col0__24_carry_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 col0_carry
       (.CI(1'b0),
        .CO({col0_carry_n_0,col0_carry_n_1,col0_carry_n_2,col0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_x[4:2],1'b0}),
        .O(NLW_col0_carry_O_UNCONNECTED[3:0]),
        .S({col0_carry_i_1_n_0,col0_carry_i_2_n_0,col0_carry_i_3_n_0,pixel_x[1]}));
  CARRY4 col0_carry__0
       (.CI(col0_carry_n_0),
        .CO({col0_carry__0_n_0,col0_carry__0_n_1,col0_carry__0_n_2,col0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pixel_x[8:5]),
        .O(NLW_col0_carry__0_O_UNCONNECTED[3:0]),
        .S({col0_carry__0_i_1_n_0,col0_carry__0_i_2_n_0,col0_carry__0_i_3_n_0,col0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry__0_i_1
       (.I0(pixel_x[8]),
        .I1(pixel_x[6]),
        .O(col0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry__0_i_2
       (.I0(pixel_x[7]),
        .I1(pixel_x[5]),
        .O(col0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry__0_i_3
       (.I0(pixel_x[6]),
        .I1(pixel_x[4]),
        .O(col0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry__0_i_4
       (.I0(pixel_x[5]),
        .I1(pixel_x[3]),
        .O(col0_carry__0_i_4_n_0));
  CARRY4 col0_carry__1
       (.CI(col0_carry__0_n_0),
        .CO({col0_carry__1_n_0,col0_carry__1_n_1,col0_carry__1_n_2,col0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pixel_x[10:9]}),
        .O({col0_carry__1_n_4,col0_carry__1_n_5,col0_carry__1_n_6,NLW_col0_carry__1_O_UNCONNECTED[0]}),
        .S({pixel_x[10:9],col0_carry__1_i_1_n_0,col0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry__1_i_1
       (.I0(pixel_x[10]),
        .I1(pixel_x[8]),
        .O(col0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry__1_i_2
       (.I0(pixel_x[9]),
        .I1(pixel_x[7]),
        .O(col0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry_i_1
       (.I0(pixel_x[4]),
        .I1(pixel_x[2]),
        .O(col0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry_i_2
       (.I0(pixel_x[3]),
        .I1(pixel_x[1]),
        .O(col0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    col0_carry_i_3
       (.I0(pixel_x[2]),
        .I1(pixel_x[0]),
        .O(col0_carry_i_3_n_0));
  MUXF8 is_mur_INST_0
       (.I0(is_mur_INST_0_i_2_n_0),
        .I1(is_mur_INST_0_i_3_n_0),
        .O(is_mur),
        .S(is_mur_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hA6FF)) 
    is_mur_INST_0_i_1
       (.I0(row0_carry__1_n_5),
        .I1(row0_carry__1_n_6),
        .I2(is_mur_INST_0_i_4_n_0),
        .I3(pixel_y_7_sn_1),
        .O(is_mur_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    is_mur_INST_0_i_10
       (.I0(is_mur_INST_0_i_26_n_0),
        .I1(is_mur_INST_0_i_27_n_0),
        .I2(is_mur_INST_0_i_14_n_0),
        .I3(is_mur_INST_0_i_28_n_0),
        .I4(is_mur_INST_0_i_16_n_0),
        .I5(is_mur_INST_0_i_29_n_0),
        .O(is_mur_INST_0_i_10_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_12
       (.I0(wall_mask[24]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[25]),
        .O(is_mur_INST_0_i_12_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_13
       (.I0(wall_mask[26]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[27]),
        .O(is_mur_INST_0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA6AFFFF)) 
    is_mur_INST_0_i_14
       (.I0(col0_carry__1_n_4),
        .I1(col0_carry__1_n_5),
        .I2(col0_carry__1_n_6),
        .I3(is_mur_INST_0_i_30_n_0),
        .I4(pixel_x_10_sn_1),
        .O(is_mur_INST_0_i_14_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_15
       (.I0(wall_mask[28]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[29]),
        .O(is_mur_INST_0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA6FF)) 
    is_mur_INST_0_i_16
       (.I0(col0_carry__1_n_5),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .O(is_mur_INST_0_i_16_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_17
       (.I0(wall_mask[30]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[31]),
        .O(is_mur_INST_0_i_17_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_18
       (.I0(wall_mask[16]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[17]),
        .O(is_mur_INST_0_i_18_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_19
       (.I0(wall_mask[18]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[19]),
        .O(is_mur_INST_0_i_19_n_0));
  MUXF7 is_mur_INST_0_i_2
       (.I0(is_mur_INST_0_i_7_n_0),
        .I1(is_mur_INST_0_i_8_n_0),
        .O(is_mur_INST_0_i_2_n_0),
        .S(is_mur_INST_0_i_6_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_20
       (.I0(wall_mask[20]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[21]),
        .O(is_mur_INST_0_i_20_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_21
       (.I0(wall_mask[22]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[23]),
        .O(is_mur_INST_0_i_21_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_22
       (.I0(wall_mask[8]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[9]),
        .O(is_mur_INST_0_i_22_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_23
       (.I0(wall_mask[10]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[11]),
        .O(is_mur_INST_0_i_23_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_24
       (.I0(wall_mask[12]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[13]),
        .O(is_mur_INST_0_i_24_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_25
       (.I0(wall_mask[14]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[15]),
        .O(is_mur_INST_0_i_25_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_26
       (.I0(wall_mask[0]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[1]),
        .O(is_mur_INST_0_i_26_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_27
       (.I0(wall_mask[2]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[3]),
        .O(is_mur_INST_0_i_27_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_28
       (.I0(wall_mask[4]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[5]),
        .O(is_mur_INST_0_i_28_n_0));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    is_mur_INST_0_i_29
       (.I0(wall_mask[6]),
        .I1(col0_carry__1_n_6),
        .I2(is_mur_INST_0_i_30_n_0),
        .I3(pixel_x_10_sn_1),
        .I4(wall_mask[7]),
        .O(is_mur_INST_0_i_29_n_0));
  MUXF7 is_mur_INST_0_i_3
       (.I0(is_mur_INST_0_i_9_n_0),
        .I1(is_mur_INST_0_i_10_n_0),
        .O(is_mur_INST_0_i_3_n_0),
        .S(is_mur_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAABBAAABBBAAAA)) 
    is_mur_INST_0_i_30
       (.I0(col0__24_carry__0_n_0),
        .I1(pixel_x[10]),
        .I2(col0_carry__1_n_6),
        .I3(col0_carry__1_n_5),
        .I4(col0__24_carry_i_8_n_3),
        .I5(col0_carry__1_n_4),
        .O(is_mur_INST_0_i_30_n_0));
  LUT6 #(
    .INIT(64'hBABBBABAABAAABAA)) 
    is_mur_INST_0_i_4
       (.I0(row0__24_carry__1_n_1),
        .I1(pixel_y[10]),
        .I2(row0_carry__1_n_5),
        .I3(row0__24_carry_i_8_n_3),
        .I4(row0_carry__1_n_6),
        .I5(row0_carry__1_n_4),
        .O(is_mur_INST_0_i_4_n_0));
  LUT3 #(
    .INIT(8'h9F)) 
    is_mur_INST_0_i_6
       (.I0(row0_carry__1_n_6),
        .I1(is_mur_INST_0_i_4_n_0),
        .I2(pixel_y_7_sn_1),
        .O(is_mur_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    is_mur_INST_0_i_7
       (.I0(is_mur_INST_0_i_12_n_0),
        .I1(is_mur_INST_0_i_13_n_0),
        .I2(is_mur_INST_0_i_14_n_0),
        .I3(is_mur_INST_0_i_15_n_0),
        .I4(is_mur_INST_0_i_16_n_0),
        .I5(is_mur_INST_0_i_17_n_0),
        .O(is_mur_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    is_mur_INST_0_i_8
       (.I0(is_mur_INST_0_i_18_n_0),
        .I1(is_mur_INST_0_i_19_n_0),
        .I2(is_mur_INST_0_i_14_n_0),
        .I3(is_mur_INST_0_i_20_n_0),
        .I4(is_mur_INST_0_i_16_n_0),
        .I5(is_mur_INST_0_i_21_n_0),
        .O(is_mur_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    is_mur_INST_0_i_9
       (.I0(is_mur_INST_0_i_22_n_0),
        .I1(is_mur_INST_0_i_23_n_0),
        .I2(is_mur_INST_0_i_14_n_0),
        .I3(is_mur_INST_0_i_24_n_0),
        .I4(is_mur_INST_0_i_16_n_0),
        .I5(is_mur_INST_0_i_25_n_0),
        .O(is_mur_INST_0_i_9_n_0));
  CARRY4 row0__24_carry
       (.CI(1'b0),
        .CO({row0__24_carry_n_0,row0__24_carry_n_1,row0__24_carry_n_2,row0__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({row0__24_carry_i_1_n_0,row0__24_carry_i_2_n_0,row0__24_carry_i_3_n_0,1'b0}),
        .O(NLW_row0__24_carry_O_UNCONNECTED[3:0]),
        .S({row0__24_carry_i_4_n_0,row0__24_carry_i_5_n_0,row0__24_carry_i_6_n_0,row0__24_carry_i_7_n_0}));
  CARRY4 row0__24_carry__0
       (.CI(row0__24_carry_n_0),
        .CO({row0__24_carry__0_n_0,row0__24_carry__0_n_1,row0__24_carry__0_n_2,row0__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({row0__24_carry__0_i_1_n_0,row0__24_carry__0_i_2_n_0,1'b0,row0__24_carry__0_i_3_n_0}),
        .O(NLW_row0__24_carry__0_O_UNCONNECTED[3:0]),
        .S({row0__24_carry__0_i_4_n_0,row0__24_carry__0_i_5_n_0,row0__24_carry__0_i_6_n_0,row0__24_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'h6F)) 
    row0__24_carry__0_i_1
       (.I0(row0_carry__1_n_6),
        .I1(row0_carry__1_n_5),
        .I2(pixel_y[6]),
        .O(row0__24_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    row0__24_carry__0_i_2
       (.I0(row0_carry__1_n_6),
        .I1(pixel_y[5]),
        .O(row0__24_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    row0__24_carry__0_i_3
       (.I0(row0__24_carry_i_8_n_3),
        .I1(pixel_y[3]),
        .O(row0__24_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h817E7E81)) 
    row0__24_carry__0_i_4
       (.I0(pixel_y[6]),
        .I1(row0_carry__1_n_5),
        .I2(row0_carry__1_n_6),
        .I3(row0_carry__1_n_4),
        .I4(pixel_y[7]),
        .O(row0__24_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h36C9)) 
    row0__24_carry__0_i_5
       (.I0(pixel_y[5]),
        .I1(row0_carry__1_n_5),
        .I2(row0_carry__1_n_6),
        .I3(pixel_y[6]),
        .O(row0__24_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0__24_carry__0_i_6
       (.I0(pixel_y[5]),
        .I1(row0_carry__1_n_6),
        .O(row0__24_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    row0__24_carry__0_i_7
       (.I0(pixel_y[3]),
        .I1(row0__24_carry_i_8_n_3),
        .I2(pixel_y[4]),
        .O(row0__24_carry__0_i_7_n_0));
  CARRY4 row0__24_carry__1
       (.CI(row0__24_carry__0_n_0),
        .CO({NLW_row0__24_carry__1_CO_UNCONNECTED[3],row0__24_carry__1_n_1,row0__24_carry__1_n_2,row0__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,row0__24_carry__1_i_1_n_0,row0__24_carry__1_i_2_n_0,row0__24_carry__1_i_3_n_0}),
        .O(NLW_row0__24_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,row0__24_carry__1_i_4_n_0,row0__24_carry__1_i_5_n_0,row0__24_carry__1_i_6_n_0}));
  LUT5 #(
    .INIT(32'h00006564)) 
    row0__24_carry__1_i_1
       (.I0(row0_carry__1_n_5),
        .I1(row0__24_carry_i_8_n_3),
        .I2(row0_carry__1_n_6),
        .I3(row0_carry__1_n_4),
        .I4(pixel_y[9]),
        .O(row0__24_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000999A)) 
    row0__24_carry__1_i_2
       (.I0(row0__24_carry_i_8_n_3),
        .I1(row0_carry__1_n_6),
        .I2(row0_carry__1_n_5),
        .I3(row0_carry__1_n_4),
        .I4(pixel_y[8]),
        .O(row0__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h56FF)) 
    row0__24_carry__1_i_3
       (.I0(row0_carry__1_n_4),
        .I1(row0_carry__1_n_6),
        .I2(row0_carry__1_n_5),
        .I3(pixel_y[7]),
        .O(row0__24_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hDBDD24202422DBDF)) 
    row0__24_carry__1_i_4
       (.I0(pixel_y[9]),
        .I1(row0_carry__1_n_5),
        .I2(row0__24_carry_i_8_n_3),
        .I3(row0_carry__1_n_6),
        .I4(row0_carry__1_n_4),
        .I5(pixel_y[10]),
        .O(row0__24_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h50F5AE08AF0A51F7)) 
    row0__24_carry__1_i_5
       (.I0(pixel_y[8]),
        .I1(row0_carry__1_n_4),
        .I2(row0_carry__1_n_6),
        .I3(row0__24_carry_i_8_n_3),
        .I4(row0_carry__1_n_5),
        .I5(pixel_y[9]),
        .O(row0__24_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h887E77817781887E)) 
    row0__24_carry__1_i_6
       (.I0(pixel_y[7]),
        .I1(row0_carry__1_n_4),
        .I2(row0_carry__1_n_5),
        .I3(row0_carry__1_n_6),
        .I4(row0__24_carry_i_8_n_3),
        .I5(pixel_y[8]),
        .O(row0__24_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    row0__24_carry_i_1
       (.I0(row0_carry__1_n_4),
        .I1(pixel_y[2]),
        .O(row0__24_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    row0__24_carry_i_2
       (.I0(row0_carry__1_n_5),
        .I1(pixel_y[1]),
        .O(row0__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    row0__24_carry_i_3
       (.I0(row0_carry__1_n_6),
        .I1(pixel_y[0]),
        .O(row0__24_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    row0__24_carry_i_4
       (.I0(pixel_y[2]),
        .I1(row0_carry__1_n_4),
        .I2(row0__24_carry_i_8_n_3),
        .I3(pixel_y[3]),
        .O(row0__24_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    row0__24_carry_i_5
       (.I0(pixel_y[1]),
        .I1(row0_carry__1_n_5),
        .I2(row0_carry__1_n_4),
        .I3(pixel_y[2]),
        .O(row0__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    row0__24_carry_i_6
       (.I0(pixel_y[0]),
        .I1(row0_carry__1_n_6),
        .I2(row0_carry__1_n_5),
        .I3(pixel_y[1]),
        .O(row0__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0__24_carry_i_7
       (.I0(pixel_y[0]),
        .I1(row0_carry__1_n_6),
        .O(row0__24_carry_i_7_n_0));
  CARRY4 row0__24_carry_i_8
       (.CI(row0_carry__1_n_0),
        .CO({NLW_row0__24_carry_i_8_CO_UNCONNECTED[3:1],row0__24_carry_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_row0__24_carry_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 row0_carry
       (.CI(1'b0),
        .CO({row0_carry_n_0,row0_carry_n_1,row0_carry_n_2,row0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_y[5:3],1'b0}),
        .O(NLW_row0_carry_O_UNCONNECTED[3:0]),
        .S({row0_carry_i_1_n_0,row0_carry_i_2_n_0,row0_carry_i_3_n_0,pixel_y[2]}));
  CARRY4 row0_carry__0
       (.CI(row0_carry_n_0),
        .CO({row0_carry__0_n_0,row0_carry__0_n_1,row0_carry__0_n_2,row0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pixel_y[9:6]),
        .O(NLW_row0_carry__0_O_UNCONNECTED[3:0]),
        .S({row0_carry__0_i_1_n_0,row0_carry__0_i_2_n_0,row0_carry__0_i_3_n_0,row0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry__0_i_1
       (.I0(pixel_y[9]),
        .I1(pixel_y[6]),
        .O(row0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry__0_i_2
       (.I0(pixel_y[8]),
        .I1(pixel_y[5]),
        .O(row0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry__0_i_3
       (.I0(pixel_y[7]),
        .I1(pixel_y[4]),
        .O(row0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry__0_i_4
       (.I0(pixel_y[6]),
        .I1(pixel_y[3]),
        .O(row0_carry__0_i_4_n_0));
  CARRY4 row0_carry__1
       (.CI(row0_carry__0_n_0),
        .CO({row0_carry__1_n_0,row0_carry__1_n_1,row0_carry__1_n_2,row0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pixel_y[10]}),
        .O({row0_carry__1_n_4,row0_carry__1_n_5,row0_carry__1_n_6,NLW_row0_carry__1_O_UNCONNECTED[0]}),
        .S({pixel_y[10:8],row0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry__1_i_1
       (.I0(pixel_y[10]),
        .I1(pixel_y[7]),
        .O(row0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry_i_1
       (.I0(pixel_y[5]),
        .I1(pixel_y[2]),
        .O(row0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry_i_2
       (.I0(pixel_y[4]),
        .I1(pixel_y[1]),
        .O(row0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row0_carry_i_3
       (.I0(pixel_y[3]),
        .I1(pixel_y[0]),
        .O(row0_carry_i_3_n_0));
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
