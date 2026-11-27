// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Fri Nov 27 14:14:49 2026
// Host        : pcetu-197 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/Documents/FPGA/lab4/Lab4_GIF-4202/Le_Mur_V4/Le_Mur_V4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_miroir_0_0/HDMI_bd_miroir_0_0_sim_netlist.v
// Design      : HDMI_bd_miroir_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_miroir_0_0,miroir,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "miroir,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_miroir_0_0
   (PixelClk,
    VSync_in,
    VDE_in,
    HSync_in,
    VSync_out,
    VDE_out,
    HSync_out,
    address,
    wea);
  input PixelClk;
  input VSync_in;
  input VDE_in;
  input HSync_in;
  output VSync_out;
  output VDE_out;
  output HSync_out;
  output [10:0]address;
  output [0:0]wea;

  wire HSync_in;
  wire HSync_out;
  wire PixelClk;
  wire VDE_in;
  wire VDE_out;
  wire VSync_in;
  wire VSync_out;
  wire [10:0]address;

  assign wea[0] = VDE_in;
  HDMI_bd_miroir_0_0_miroir U0
       (.HSync_in(HSync_in),
        .HSync_out(HSync_out),
        .PixelClk(PixelClk),
        .VDE_in(VDE_in),
        .VDE_out(VDE_out),
        .VSync_in(VSync_in),
        .VSync_out(VSync_out),
        .address(address));
endmodule

(* ORIG_REF_NAME = "miroir" *) 
module HDMI_bd_miroir_0_0_miroir
   (VSync_out,
    VDE_out,
    HSync_out,
    address,
    VDE_in,
    PixelClk,
    VSync_in,
    HSync_in);
  output VSync_out;
  output VDE_out;
  output HSync_out;
  output [10:0]address;
  input VDE_in;
  input PixelClk;
  input VSync_in;
  input HSync_in;

  wire HSync_in;
  wire HSync_out;
  wire PixelClk;
  wire VDE_in;
  wire VDE_out;
  wire VSync_in;
  wire VSync_out;
  wire [10:0]address;
  wire clear;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[6]_i_3_n_0 ;
  wire [10:0]cnt_reg__0;
  wire \line_delay_reg[1023][1]_srl32_n_0 ;
  wire \line_delay_reg[1024][0]_srl32_n_0 ;
  wire \line_delay_reg[1055][1]_srl32_n_1 ;
  wire \line_delay_reg[1056][0]_srl32_n_1 ;
  wire \line_delay_reg[1087][1]_srl32_n_1 ;
  wire \line_delay_reg[1088][0]_srl32_n_1 ;
  wire \line_delay_reg[1119][1]_srl32_n_1 ;
  wire \line_delay_reg[1120][0]_srl32_n_1 ;
  wire \line_delay_reg[1151][1]_srl32_n_0 ;
  wire \line_delay_reg[1152][0]_srl32_n_0 ;
  wire \line_delay_reg[1183][1]_srl32_n_1 ;
  wire \line_delay_reg[1184][0]_srl32_n_1 ;
  wire \line_delay_reg[1215][1]_srl32_n_1 ;
  wire \line_delay_reg[1216][0]_srl32_n_1 ;
  wire \line_delay_reg[1247][1]_srl32_n_1 ;
  wire \line_delay_reg[1248][0]_srl32_n_1 ;
  wire \line_delay_reg[1279][1]_srl32_n_0 ;
  wire \line_delay_reg[127][1]_srl32_n_0 ;
  wire \line_delay_reg[1280][0]_srl32_n_0 ;
  wire \line_delay_reg[128][0]_srl32_n_0 ;
  wire \line_delay_reg[1311][1]_srl32_n_1 ;
  wire \line_delay_reg[1312][0]_srl32_n_1 ;
  wire \line_delay_reg[1343][1]_srl32_n_1 ;
  wire \line_delay_reg[1344][0]_srl32_n_1 ;
  wire \line_delay_reg[1375][1]_srl32_n_1 ;
  wire \line_delay_reg[1376][0]_srl32_n_1 ;
  wire \line_delay_reg[1407][1]_srl32_n_0 ;
  wire \line_delay_reg[1408][0]_srl32_n_0 ;
  wire \line_delay_reg[1439][1]_srl32_n_1 ;
  wire \line_delay_reg[1440][0]_srl32_n_1 ;
  wire \line_delay_reg[1471][1]_srl32_n_1 ;
  wire \line_delay_reg[1472][0]_srl32_n_1 ;
  wire \line_delay_reg[1503][1]_srl32_n_1 ;
  wire \line_delay_reg[1504][0]_srl32_n_1 ;
  wire \line_delay_reg[1535][1]_srl32_n_0 ;
  wire \line_delay_reg[1536][0]_srl32_n_0 ;
  wire \line_delay_reg[1567][1]_srl32_n_1 ;
  wire \line_delay_reg[1568][0]_srl32_n_1 ;
  wire \line_delay_reg[1599][1]_srl32_n_1 ;
  wire \line_delay_reg[159][1]_srl32_n_1 ;
  wire \line_delay_reg[1600][0]_srl32_n_1 ;
  wire \line_delay_reg[160][0]_srl32_n_1 ;
  wire \line_delay_reg[1631][1]_srl32_n_1 ;
  wire \line_delay_reg[1632][0]_srl32_n_1 ;
  wire \line_delay_reg[1663][1]_srl32_n_0 ;
  wire \line_delay_reg[1664][0]_srl32_n_0 ;
  wire \line_delay_reg[1695][1]_srl32_n_1 ;
  wire \line_delay_reg[1696][0]_srl32_n_1 ;
  wire \line_delay_reg[1727][1]_srl32_n_1 ;
  wire \line_delay_reg[1728][0]_srl32_n_1 ;
  wire \line_delay_reg[1759][1]_srl32_n_1 ;
  wire \line_delay_reg[1760][0]_srl32_n_1 ;
  wire \line_delay_reg[1791][1]_srl32_n_0 ;
  wire \line_delay_reg[1792][0]_srl32_n_0 ;
  wire \line_delay_reg[1798][1]_srl7_n_0 ;
  wire \line_delay_reg[1799][0]_srl7_n_0 ;
  wire \line_delay_reg[191][1]_srl32_n_1 ;
  wire \line_delay_reg[192][0]_srl32_n_1 ;
  wire \line_delay_reg[223][1]_srl32_n_1 ;
  wire \line_delay_reg[224][0]_srl32_n_1 ;
  wire \line_delay_reg[255][1]_srl32_n_0 ;
  wire \line_delay_reg[256][0]_srl32_n_0 ;
  wire \line_delay_reg[287][1]_srl32_n_1 ;
  wire \line_delay_reg[288][0]_srl32_n_1 ;
  wire \line_delay_reg[319][1]_srl32_n_1 ;
  wire \line_delay_reg[31][1]_srl32_n_1 ;
  wire \line_delay_reg[320][0]_srl32_n_1 ;
  wire \line_delay_reg[32][0]_srl32_n_1 ;
  wire \line_delay_reg[351][1]_srl32_n_1 ;
  wire \line_delay_reg[352][0]_srl32_n_1 ;
  wire \line_delay_reg[383][1]_srl32_n_0 ;
  wire \line_delay_reg[384][0]_srl32_n_0 ;
  wire \line_delay_reg[415][1]_srl32_n_1 ;
  wire \line_delay_reg[416][0]_srl32_n_1 ;
  wire \line_delay_reg[447][1]_srl32_n_1 ;
  wire \line_delay_reg[448][0]_srl32_n_1 ;
  wire \line_delay_reg[479][1]_srl32_n_1 ;
  wire \line_delay_reg[480][0]_srl32_n_1 ;
  wire \line_delay_reg[511][1]_srl32_n_0 ;
  wire \line_delay_reg[512][0]_srl32_n_0 ;
  wire \line_delay_reg[543][1]_srl32_n_1 ;
  wire \line_delay_reg[544][0]_srl32_n_1 ;
  wire \line_delay_reg[575][1]_srl32_n_1 ;
  wire \line_delay_reg[576][0]_srl32_n_1 ;
  wire \line_delay_reg[607][1]_srl32_n_1 ;
  wire \line_delay_reg[608][0]_srl32_n_1 ;
  wire \line_delay_reg[639][1]_srl32_n_0 ;
  wire \line_delay_reg[63][1]_srl32_n_1 ;
  wire \line_delay_reg[640][0]_srl32_n_0 ;
  wire \line_delay_reg[64][0]_srl32_n_1 ;
  wire \line_delay_reg[671][1]_srl32_n_1 ;
  wire \line_delay_reg[672][0]_srl32_n_1 ;
  wire \line_delay_reg[703][1]_srl32_n_1 ;
  wire \line_delay_reg[704][0]_srl32_n_1 ;
  wire \line_delay_reg[735][1]_srl32_n_1 ;
  wire \line_delay_reg[736][0]_srl32_n_1 ;
  wire \line_delay_reg[767][1]_srl32_n_0 ;
  wire \line_delay_reg[768][0]_srl32_n_0 ;
  wire \line_delay_reg[799][1]_srl32_n_1 ;
  wire \line_delay_reg[800][0]_srl32_n_1 ;
  wire \line_delay_reg[831][1]_srl32_n_1 ;
  wire \line_delay_reg[832][0]_srl32_n_1 ;
  wire \line_delay_reg[863][1]_srl32_n_1 ;
  wire \line_delay_reg[864][0]_srl32_n_1 ;
  wire \line_delay_reg[895][1]_srl32_n_0 ;
  wire \line_delay_reg[896][0]_srl32_n_0 ;
  wire \line_delay_reg[927][1]_srl32_n_1 ;
  wire \line_delay_reg[928][0]_srl32_n_1 ;
  wire \line_delay_reg[959][1]_srl32_n_1 ;
  wire \line_delay_reg[95][1]_srl32_n_1 ;
  wire \line_delay_reg[960][0]_srl32_n_1 ;
  wire \line_delay_reg[96][0]_srl32_n_1 ;
  wire \line_delay_reg[991][1]_srl32_n_1 ;
  wire \line_delay_reg[992][0]_srl32_n_1 ;
  wire \line_delay_reg_n_0_[0][0] ;
  wire [10:1]plusOp;
  wire reversed;
  wire reversed_i_1_n_0;
  wire vde_line;
  wire win;
  wire win_d;
  wire \NLW_line_delay_reg[1023][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1024][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1055][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1056][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1087][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1088][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1119][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1120][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1151][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1152][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1183][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1184][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1215][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1216][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1247][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1248][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1279][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[127][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1280][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[128][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1311][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1312][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1343][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1344][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1375][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1376][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1407][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1408][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1439][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1440][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1471][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1472][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1503][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1504][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1535][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1536][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1567][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1568][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1599][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[159][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1600][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[160][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1631][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1632][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1663][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1664][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1695][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1696][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1727][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1728][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1759][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1760][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[1791][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1792][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1798][1]_srl7_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[1799][0]_srl7_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[191][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[192][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[223][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[224][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[255][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[256][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[287][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[288][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[319][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[31][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[320][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[32][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[351][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[352][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[383][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[384][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[415][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[416][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[447][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[448][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[479][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[480][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[511][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[512][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[543][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[544][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[575][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[576][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[607][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[608][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[639][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[63][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[640][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[64][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[671][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[672][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[703][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[704][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[735][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[736][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[767][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[768][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[799][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[800][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[831][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[832][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[863][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[864][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[895][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[896][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_line_delay_reg[927][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[928][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[959][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[95][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[960][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[96][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[991][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_line_delay_reg[992][0]_srl32_Q_UNCONNECTED ;

  FDRE HSync_out_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(HSync_in),
        .Q(HSync_out),
        .R(1'b0));
  FDRE VDE_out_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vde_line),
        .Q(VDE_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    VSync_out_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(\line_delay_reg[1799][0]_srl7_n_0 ),
        .Q(VSync_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[0]_INST_0 
       (.I0(cnt_reg__0[0]),
        .I1(reversed),
        .O(address[0]));
  LUT6 #(
    .INIT(64'hAAA85557FFFF0000)) 
    \address[10]_INST_0 
       (.I0(cnt_reg__0[9]),
        .I1(address[6]),
        .I2(cnt_reg__0[7]),
        .I3(cnt_reg__0[8]),
        .I4(cnt_reg__0[10]),
        .I5(reversed),
        .O(address[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[1]_INST_0 
       (.I0(cnt_reg__0[1]),
        .I1(reversed),
        .O(address[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[2]_INST_0 
       (.I0(cnt_reg__0[2]),
        .I1(reversed),
        .O(address[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[3]_INST_0 
       (.I0(cnt_reg__0[3]),
        .I1(reversed),
        .O(address[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[4]_INST_0 
       (.I0(cnt_reg__0[4]),
        .I1(reversed),
        .O(address[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \address[5]_INST_0 
       (.I0(cnt_reg__0[5]),
        .I1(reversed),
        .O(address[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \address[7]_INST_0 
       (.I0(address[6]),
        .I1(cnt_reg__0[7]),
        .I2(reversed),
        .O(address[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1EF0)) 
    \address[8]_INST_0 
       (.I0(address[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[8]),
        .I3(reversed),
        .O(address[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE01FF00)) 
    \address[9]_INST_0 
       (.I0(cnt_reg__0[8]),
        .I1(cnt_reg__0[7]),
        .I2(address[6]),
        .I3(cnt_reg__0[9]),
        .I4(reversed),
        .O(address[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[10]_i_1 
       (.I0(cnt_reg__0[8]),
        .I1(address[6]),
        .I2(\cnt[6]_i_3_n_0 ),
        .I3(cnt_reg__0[7]),
        .I4(cnt_reg__0[9]),
        .I5(cnt_reg__0[10]),
        .O(plusOp[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .I4(cnt_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[4]),
        .I5(cnt_reg__0[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[6]_i_1 
       (.I0(vde_line),
        .I1(VDE_in),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_2 
       (.I0(\cnt[6]_i_3_n_0 ),
        .I1(address[6]),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[6]_i_3 
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[2]),
        .I5(cnt_reg__0[4]),
        .O(\cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_1 
       (.I0(\cnt[6]_i_3_n_0 ),
        .I1(address[6]),
        .I2(cnt_reg__0[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[8]_i_1 
       (.I0(address[6]),
        .I1(\cnt[6]_i_3_n_0 ),
        .I2(cnt_reg__0[7]),
        .I3(cnt_reg__0[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[9]_i_1 
       (.I0(cnt_reg__0[7]),
        .I1(\cnt[6]_i_3_n_0 ),
        .I2(address[6]),
        .I3(cnt_reg__0[8]),
        .I4(cnt_reg__0[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(cnt_reg__0[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(cnt_reg__0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(cnt_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(cnt_reg__0[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(cnt_reg__0[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(cnt_reg__0[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(address[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(cnt_reg__0[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(cnt_reg__0[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(cnt_reg__0[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \line_delay_reg[0][0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(VSync_in),
        .Q(\line_delay_reg_n_0_[0][0] ),
        .R(1'b0));
  (* srl_bus_name = "\U0/line_delay_reg[1023] " *) 
  (* srl_name = "\U0/line_delay_reg[1023][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1023][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[991][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1023][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1023][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1024] " *) 
  (* srl_name = "\U0/line_delay_reg[1024][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1024][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[992][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1024][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1024][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1055] " *) 
  (* srl_name = "\U0/line_delay_reg[1055][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1055][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1023][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1055][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1055][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1056] " *) 
  (* srl_name = "\U0/line_delay_reg[1056][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1056][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1024][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1056][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1056][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1087] " *) 
  (* srl_name = "\U0/line_delay_reg[1087][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1087][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1055][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1087][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1087][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1088] " *) 
  (* srl_name = "\U0/line_delay_reg[1088][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1088][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1056][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1088][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1088][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1119] " *) 
  (* srl_name = "\U0/line_delay_reg[1119][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1119][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1087][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1119][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1119][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1120] " *) 
  (* srl_name = "\U0/line_delay_reg[1120][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1120][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1088][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1120][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1120][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1151] " *) 
  (* srl_name = "\U0/line_delay_reg[1151][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1151][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1119][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1151][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1151][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1152] " *) 
  (* srl_name = "\U0/line_delay_reg[1152][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1152][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1120][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1152][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1152][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1183] " *) 
  (* srl_name = "\U0/line_delay_reg[1183][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1183][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1151][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1183][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1183][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1184] " *) 
  (* srl_name = "\U0/line_delay_reg[1184][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1184][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1152][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1184][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1184][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1215] " *) 
  (* srl_name = "\U0/line_delay_reg[1215][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1215][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1183][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1215][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1215][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1216] " *) 
  (* srl_name = "\U0/line_delay_reg[1216][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1216][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1184][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1216][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1216][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1247] " *) 
  (* srl_name = "\U0/line_delay_reg[1247][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1247][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1215][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1247][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1247][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1248] " *) 
  (* srl_name = "\U0/line_delay_reg[1248][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1248][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1216][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1248][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1248][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1279] " *) 
  (* srl_name = "\U0/line_delay_reg[1279][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1279][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1247][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1279][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1279][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[127] " *) 
  (* srl_name = "\U0/line_delay_reg[127][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[127][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[95][1]_srl32_n_1 ),
        .Q(\line_delay_reg[127][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[127][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1280] " *) 
  (* srl_name = "\U0/line_delay_reg[1280][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1280][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1248][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1280][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1280][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[128] " *) 
  (* srl_name = "\U0/line_delay_reg[128][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[128][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[96][0]_srl32_n_1 ),
        .Q(\line_delay_reg[128][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[128][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1311] " *) 
  (* srl_name = "\U0/line_delay_reg[1311][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1311][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1279][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1311][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1311][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1312] " *) 
  (* srl_name = "\U0/line_delay_reg[1312][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1312][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1280][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1312][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1312][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1343] " *) 
  (* srl_name = "\U0/line_delay_reg[1343][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1343][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1311][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1343][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1343][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1344] " *) 
  (* srl_name = "\U0/line_delay_reg[1344][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1344][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1312][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1344][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1344][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1375] " *) 
  (* srl_name = "\U0/line_delay_reg[1375][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1375][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1343][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1375][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1375][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1376] " *) 
  (* srl_name = "\U0/line_delay_reg[1376][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1376][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1344][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1376][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1376][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1407] " *) 
  (* srl_name = "\U0/line_delay_reg[1407][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1407][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1375][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1407][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1407][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1408] " *) 
  (* srl_name = "\U0/line_delay_reg[1408][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1408][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1376][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1408][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1408][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1439] " *) 
  (* srl_name = "\U0/line_delay_reg[1439][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1439][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1407][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1439][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1439][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1440] " *) 
  (* srl_name = "\U0/line_delay_reg[1440][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1440][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1408][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1440][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1440][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1471] " *) 
  (* srl_name = "\U0/line_delay_reg[1471][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1471][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1439][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1471][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1471][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1472] " *) 
  (* srl_name = "\U0/line_delay_reg[1472][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1472][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1440][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1472][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1472][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1503] " *) 
  (* srl_name = "\U0/line_delay_reg[1503][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1503][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1471][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1503][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1503][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1504] " *) 
  (* srl_name = "\U0/line_delay_reg[1504][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1504][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1472][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1504][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1504][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1535] " *) 
  (* srl_name = "\U0/line_delay_reg[1535][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1535][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1503][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1535][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1535][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1536] " *) 
  (* srl_name = "\U0/line_delay_reg[1536][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1536][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1504][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1536][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1536][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1567] " *) 
  (* srl_name = "\U0/line_delay_reg[1567][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1567][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1535][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1567][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1567][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1568] " *) 
  (* srl_name = "\U0/line_delay_reg[1568][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1568][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1536][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1568][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1568][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1599] " *) 
  (* srl_name = "\U0/line_delay_reg[1599][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1599][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1567][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1599][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1599][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[159] " *) 
  (* srl_name = "\U0/line_delay_reg[159][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[159][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[127][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[159][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[159][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1600] " *) 
  (* srl_name = "\U0/line_delay_reg[1600][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1600][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1568][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1600][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1600][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[160] " *) 
  (* srl_name = "\U0/line_delay_reg[160][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[160][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[128][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[160][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[160][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1631] " *) 
  (* srl_name = "\U0/line_delay_reg[1631][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1631][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1599][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1631][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1631][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1632] " *) 
  (* srl_name = "\U0/line_delay_reg[1632][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1632][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1600][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1632][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1632][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1663] " *) 
  (* srl_name = "\U0/line_delay_reg[1663][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1663][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1631][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1663][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1663][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1664] " *) 
  (* srl_name = "\U0/line_delay_reg[1664][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1664][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1632][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1664][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1664][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1695] " *) 
  (* srl_name = "\U0/line_delay_reg[1695][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1695][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1663][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1695][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1695][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1696] " *) 
  (* srl_name = "\U0/line_delay_reg[1696][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1696][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1664][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[1696][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1696][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1727] " *) 
  (* srl_name = "\U0/line_delay_reg[1727][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1727][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1695][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1727][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1727][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1728] " *) 
  (* srl_name = "\U0/line_delay_reg[1728][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1728][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1696][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1728][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1728][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1759] " *) 
  (* srl_name = "\U0/line_delay_reg[1759][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1759][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1727][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1759][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1759][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1760] " *) 
  (* srl_name = "\U0/line_delay_reg[1760][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1760][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1728][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[1760][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[1760][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[1791] " *) 
  (* srl_name = "\U0/line_delay_reg[1791][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1791][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1759][1]_srl32_n_1 ),
        .Q(\line_delay_reg[1791][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1791][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1792] " *) 
  (* srl_name = "\U0/line_delay_reg[1792][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1792][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1760][0]_srl32_n_1 ),
        .Q(\line_delay_reg[1792][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[1792][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1798] " *) 
  (* srl_name = "\U0/line_delay_reg[1798][1]_srl7 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1798][1]_srl7 
       (.A({1'b0,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1791][1]_srl32_n_0 ),
        .Q(\line_delay_reg[1798][1]_srl7_n_0 ),
        .Q31(\NLW_line_delay_reg[1798][1]_srl7_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[1799] " *) 
  (* srl_name = "\U0/line_delay_reg[1799][0]_srl7 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[1799][0]_srl7 
       (.A({1'b0,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[1792][0]_srl32_n_0 ),
        .Q(\line_delay_reg[1799][0]_srl7_n_0 ),
        .Q31(\NLW_line_delay_reg[1799][0]_srl7_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \line_delay_reg[1799][1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\line_delay_reg[1798][1]_srl7_n_0 ),
        .Q(vde_line),
        .R(1'b0));
  (* srl_bus_name = "\U0/line_delay_reg[191] " *) 
  (* srl_name = "\U0/line_delay_reg[191][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[191][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[159][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[191][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[191][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[192] " *) 
  (* srl_name = "\U0/line_delay_reg[192][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[192][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[160][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[192][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[192][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[223] " *) 
  (* srl_name = "\U0/line_delay_reg[223][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[223][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[191][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[223][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[223][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[224] " *) 
  (* srl_name = "\U0/line_delay_reg[224][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[224][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[192][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[224][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[224][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[255] " *) 
  (* srl_name = "\U0/line_delay_reg[255][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[255][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[223][1]_srl32_n_1 ),
        .Q(\line_delay_reg[255][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[255][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[256] " *) 
  (* srl_name = "\U0/line_delay_reg[256][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[256][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[224][0]_srl32_n_1 ),
        .Q(\line_delay_reg[256][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[256][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[287] " *) 
  (* srl_name = "\U0/line_delay_reg[287][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[287][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[255][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[287][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[287][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[288] " *) 
  (* srl_name = "\U0/line_delay_reg[288][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[288][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[256][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[288][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[288][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[319] " *) 
  (* srl_name = "\U0/line_delay_reg[319][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[319][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[287][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[319][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[319][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[31] " *) 
  (* srl_name = "\U0/line_delay_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[31][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(VDE_in),
        .Q(\NLW_line_delay_reg[31][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[31][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[320] " *) 
  (* srl_name = "\U0/line_delay_reg[320][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[320][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[288][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[320][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[320][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[32] " *) 
  (* srl_name = "\U0/line_delay_reg[32][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[32][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg_n_0_[0][0] ),
        .Q(\NLW_line_delay_reg[32][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[32][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[351] " *) 
  (* srl_name = "\U0/line_delay_reg[351][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[351][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[319][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[351][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[351][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[352] " *) 
  (* srl_name = "\U0/line_delay_reg[352][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[352][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[320][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[352][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[352][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[383] " *) 
  (* srl_name = "\U0/line_delay_reg[383][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[383][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[351][1]_srl32_n_1 ),
        .Q(\line_delay_reg[383][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[383][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[384] " *) 
  (* srl_name = "\U0/line_delay_reg[384][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[384][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[352][0]_srl32_n_1 ),
        .Q(\line_delay_reg[384][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[384][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[415] " *) 
  (* srl_name = "\U0/line_delay_reg[415][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[415][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[383][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[415][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[415][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[416] " *) 
  (* srl_name = "\U0/line_delay_reg[416][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[416][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[384][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[416][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[416][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[447] " *) 
  (* srl_name = "\U0/line_delay_reg[447][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[447][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[415][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[447][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[447][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[448] " *) 
  (* srl_name = "\U0/line_delay_reg[448][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[448][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[416][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[448][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[448][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[479] " *) 
  (* srl_name = "\U0/line_delay_reg[479][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[479][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[447][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[479][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[479][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[480] " *) 
  (* srl_name = "\U0/line_delay_reg[480][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[480][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[448][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[480][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[480][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[511] " *) 
  (* srl_name = "\U0/line_delay_reg[511][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[511][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[479][1]_srl32_n_1 ),
        .Q(\line_delay_reg[511][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[511][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[512] " *) 
  (* srl_name = "\U0/line_delay_reg[512][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[512][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[480][0]_srl32_n_1 ),
        .Q(\line_delay_reg[512][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[512][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[543] " *) 
  (* srl_name = "\U0/line_delay_reg[543][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[543][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[511][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[543][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[543][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[544] " *) 
  (* srl_name = "\U0/line_delay_reg[544][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[544][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[512][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[544][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[544][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[575] " *) 
  (* srl_name = "\U0/line_delay_reg[575][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[575][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[543][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[575][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[575][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[576] " *) 
  (* srl_name = "\U0/line_delay_reg[576][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[576][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[544][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[576][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[576][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[607] " *) 
  (* srl_name = "\U0/line_delay_reg[607][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[607][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[575][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[607][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[607][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[608] " *) 
  (* srl_name = "\U0/line_delay_reg[608][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[608][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[576][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[608][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[608][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[639] " *) 
  (* srl_name = "\U0/line_delay_reg[639][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[639][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[607][1]_srl32_n_1 ),
        .Q(\line_delay_reg[639][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[639][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[63] " *) 
  (* srl_name = "\U0/line_delay_reg[63][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[63][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[31][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[63][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[63][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[640] " *) 
  (* srl_name = "\U0/line_delay_reg[640][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[640][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[608][0]_srl32_n_1 ),
        .Q(\line_delay_reg[640][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[640][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[64] " *) 
  (* srl_name = "\U0/line_delay_reg[64][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[64][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[32][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[64][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[64][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[671] " *) 
  (* srl_name = "\U0/line_delay_reg[671][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[671][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[639][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[671][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[671][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[672] " *) 
  (* srl_name = "\U0/line_delay_reg[672][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[672][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[640][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[672][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[672][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[703] " *) 
  (* srl_name = "\U0/line_delay_reg[703][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[703][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[671][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[703][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[703][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[704] " *) 
  (* srl_name = "\U0/line_delay_reg[704][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[704][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[672][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[704][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[704][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[735] " *) 
  (* srl_name = "\U0/line_delay_reg[735][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[735][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[703][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[735][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[735][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[736] " *) 
  (* srl_name = "\U0/line_delay_reg[736][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[736][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[704][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[736][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[736][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[767] " *) 
  (* srl_name = "\U0/line_delay_reg[767][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[767][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[735][1]_srl32_n_1 ),
        .Q(\line_delay_reg[767][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[767][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[768] " *) 
  (* srl_name = "\U0/line_delay_reg[768][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[768][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[736][0]_srl32_n_1 ),
        .Q(\line_delay_reg[768][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[768][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[799] " *) 
  (* srl_name = "\U0/line_delay_reg[799][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[799][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[767][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[799][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[799][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[800] " *) 
  (* srl_name = "\U0/line_delay_reg[800][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[800][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[768][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[800][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[800][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[831] " *) 
  (* srl_name = "\U0/line_delay_reg[831][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[831][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[799][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[831][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[831][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[832] " *) 
  (* srl_name = "\U0/line_delay_reg[832][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[832][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[800][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[832][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[832][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[863] " *) 
  (* srl_name = "\U0/line_delay_reg[863][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[863][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[831][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[863][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[863][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[864] " *) 
  (* srl_name = "\U0/line_delay_reg[864][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[864][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[832][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[864][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[864][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[895] " *) 
  (* srl_name = "\U0/line_delay_reg[895][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[895][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[863][1]_srl32_n_1 ),
        .Q(\line_delay_reg[895][1]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[895][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[896] " *) 
  (* srl_name = "\U0/line_delay_reg[896][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[896][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[864][0]_srl32_n_1 ),
        .Q(\line_delay_reg[896][0]_srl32_n_0 ),
        .Q31(\NLW_line_delay_reg[896][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/line_delay_reg[927] " *) 
  (* srl_name = "\U0/line_delay_reg[927][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[927][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[895][1]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[927][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[927][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[928] " *) 
  (* srl_name = "\U0/line_delay_reg[928][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[928][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[896][0]_srl32_n_0 ),
        .Q(\NLW_line_delay_reg[928][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[928][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[959] " *) 
  (* srl_name = "\U0/line_delay_reg[959][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[959][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[927][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[959][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[959][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[95] " *) 
  (* srl_name = "\U0/line_delay_reg[95][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[95][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[63][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[95][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[95][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[960] " *) 
  (* srl_name = "\U0/line_delay_reg[960][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[960][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[928][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[960][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[960][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[96] " *) 
  (* srl_name = "\U0/line_delay_reg[96][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[96][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[64][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[96][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[96][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[991] " *) 
  (* srl_name = "\U0/line_delay_reg[991][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[991][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[959][1]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[991][1]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[991][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/line_delay_reg[992] " *) 
  (* srl_name = "\U0/line_delay_reg[992][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \line_delay_reg[992][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(PixelClk),
        .D(\line_delay_reg[960][0]_srl32_n_1 ),
        .Q(\NLW_line_delay_reg[992][0]_srl32_Q_UNCONNECTED ),
        .Q31(\line_delay_reg[992][0]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    reversed_i_1
       (.I0(VDE_in),
        .I1(vde_line),
        .I2(win_d),
        .I3(reversed),
        .O(reversed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reversed_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(reversed_i_1_n_0),
        .Q(reversed),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    win_d_i_1
       (.I0(VDE_in),
        .I1(vde_line),
        .O(win));
  FDRE #(
    .INIT(1'b0)) 
    win_d_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(win),
        .Q(win_d),
        .R(1'b0));
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
