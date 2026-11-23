// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Nov 23 13:35:11 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_DSP_0_0/HDMI_bd_DSP_0_0_sim_netlist.v
// Design      : HDMI_bd_DSP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_DSP_0_0,DSP,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DSP,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_DSP_0_0
   (clk_pixel,
    reset,
    vde,
    vsync,
    hsync,
    is_pixel_joueur,
    is_pixel_mur,
    q_pass,
    player_present,
    result_valid,
    player_pixels,
    collision_pixels);
  input clk_pixel;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) input reset;
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

  wire clk_pixel;
  wire [20:0]collision_pixels;
  wire is_pixel_joueur;
  wire is_pixel_mur;
  wire [20:0]player_pixels;
  wire player_present;
  wire q_pass;
  wire reset;
  wire result_valid;
  wire vde;
  wire vsync;

  HDMI_bd_DSP_0_0_DSP U0
       (.clk_pixel(clk_pixel),
        .collision_pixels(collision_pixels),
        .is_pixel_joueur(is_pixel_joueur),
        .is_pixel_mur(is_pixel_mur),
        .player_pixels(player_pixels),
        .player_present(player_present),
        .q_pass(q_pass),
        .reset(reset),
        .result_valid(result_valid),
        .vde(vde),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "DSP" *) 
module HDMI_bd_DSP_0_0_DSP
   (q_pass,
    player_present,
    player_pixels,
    collision_pixels,
    result_valid,
    reset,
    clk_pixel,
    vsync,
    is_pixel_joueur,
    vde,
    is_pixel_mur);
  output q_pass;
  output player_present;
  output [20:0]player_pixels;
  output [20:0]collision_pixels;
  output result_valid;
  input reset;
  input clk_pixel;
  input vsync;
  input is_pixel_joueur;
  input vde;
  input is_pixel_mur;

  wire clk_pixel;
  wire collision_count;
  wire \collision_count[0]_i_2_n_0 ;
  wire \collision_count[0]_i_4_n_0 ;
  wire \collision_count[0]_i_5_n_0 ;
  wire \collision_count[0]_i_6_n_0 ;
  wire \collision_count[0]_i_7_n_0 ;
  wire \collision_count[0]_i_8_n_0 ;
  wire [20:0]collision_count_reg;
  wire \collision_count_reg[0]_i_3_n_0 ;
  wire \collision_count_reg[0]_i_3_n_1 ;
  wire \collision_count_reg[0]_i_3_n_2 ;
  wire \collision_count_reg[0]_i_3_n_3 ;
  wire \collision_count_reg[0]_i_3_n_4 ;
  wire \collision_count_reg[0]_i_3_n_5 ;
  wire \collision_count_reg[0]_i_3_n_6 ;
  wire \collision_count_reg[0]_i_3_n_7 ;
  wire \collision_count_reg[12]_i_1_n_0 ;
  wire \collision_count_reg[12]_i_1_n_1 ;
  wire \collision_count_reg[12]_i_1_n_2 ;
  wire \collision_count_reg[12]_i_1_n_3 ;
  wire \collision_count_reg[12]_i_1_n_4 ;
  wire \collision_count_reg[12]_i_1_n_5 ;
  wire \collision_count_reg[12]_i_1_n_6 ;
  wire \collision_count_reg[12]_i_1_n_7 ;
  wire \collision_count_reg[16]_i_1_n_0 ;
  wire \collision_count_reg[16]_i_1_n_1 ;
  wire \collision_count_reg[16]_i_1_n_2 ;
  wire \collision_count_reg[16]_i_1_n_3 ;
  wire \collision_count_reg[16]_i_1_n_4 ;
  wire \collision_count_reg[16]_i_1_n_5 ;
  wire \collision_count_reg[16]_i_1_n_6 ;
  wire \collision_count_reg[16]_i_1_n_7 ;
  wire \collision_count_reg[20]_i_1_n_7 ;
  wire \collision_count_reg[4]_i_1_n_0 ;
  wire \collision_count_reg[4]_i_1_n_1 ;
  wire \collision_count_reg[4]_i_1_n_2 ;
  wire \collision_count_reg[4]_i_1_n_3 ;
  wire \collision_count_reg[4]_i_1_n_4 ;
  wire \collision_count_reg[4]_i_1_n_5 ;
  wire \collision_count_reg[4]_i_1_n_6 ;
  wire \collision_count_reg[4]_i_1_n_7 ;
  wire \collision_count_reg[8]_i_1_n_0 ;
  wire \collision_count_reg[8]_i_1_n_1 ;
  wire \collision_count_reg[8]_i_1_n_2 ;
  wire \collision_count_reg[8]_i_1_n_3 ;
  wire \collision_count_reg[8]_i_1_n_4 ;
  wire \collision_count_reg[8]_i_1_n_5 ;
  wire \collision_count_reg[8]_i_1_n_6 ;
  wire \collision_count_reg[8]_i_1_n_7 ;
  wire [20:0]collision_pixels;
  wire frame_seen;
  wire frame_seen_i_1_n_0;
  wire is_pixel_joueur;
  wire is_pixel_mur;
  wire pass_reg;
  wire pass_reg0;
  wire pass_reg_i_3_n_0;
  wire pass_reg_i_4_n_0;
  wire pass_reg_i_5_n_0;
  wire pass_reg_i_6_n_0;
  wire pass_reg_i_7_n_0;
  wire player_count;
  wire \player_count[0]_i_3_n_0 ;
  wire \player_count[0]_i_4_n_0 ;
  wire \player_count[0]_i_5_n_0 ;
  wire \player_count[0]_i_6_n_0 ;
  wire \player_count[0]_i_7_n_0 ;
  wire [20:0]player_count_reg;
  wire \player_count_reg[0]_i_2_n_0 ;
  wire \player_count_reg[0]_i_2_n_1 ;
  wire \player_count_reg[0]_i_2_n_2 ;
  wire \player_count_reg[0]_i_2_n_3 ;
  wire \player_count_reg[0]_i_2_n_4 ;
  wire \player_count_reg[0]_i_2_n_5 ;
  wire \player_count_reg[0]_i_2_n_6 ;
  wire \player_count_reg[0]_i_2_n_7 ;
  wire \player_count_reg[12]_i_1_n_0 ;
  wire \player_count_reg[12]_i_1_n_1 ;
  wire \player_count_reg[12]_i_1_n_2 ;
  wire \player_count_reg[12]_i_1_n_3 ;
  wire \player_count_reg[12]_i_1_n_4 ;
  wire \player_count_reg[12]_i_1_n_5 ;
  wire \player_count_reg[12]_i_1_n_6 ;
  wire \player_count_reg[12]_i_1_n_7 ;
  wire \player_count_reg[16]_i_1_n_0 ;
  wire \player_count_reg[16]_i_1_n_1 ;
  wire \player_count_reg[16]_i_1_n_2 ;
  wire \player_count_reg[16]_i_1_n_3 ;
  wire \player_count_reg[16]_i_1_n_4 ;
  wire \player_count_reg[16]_i_1_n_5 ;
  wire \player_count_reg[16]_i_1_n_6 ;
  wire \player_count_reg[16]_i_1_n_7 ;
  wire \player_count_reg[20]_i_1_n_7 ;
  wire \player_count_reg[4]_i_1_n_0 ;
  wire \player_count_reg[4]_i_1_n_1 ;
  wire \player_count_reg[4]_i_1_n_2 ;
  wire \player_count_reg[4]_i_1_n_3 ;
  wire \player_count_reg[4]_i_1_n_4 ;
  wire \player_count_reg[4]_i_1_n_5 ;
  wire \player_count_reg[4]_i_1_n_6 ;
  wire \player_count_reg[4]_i_1_n_7 ;
  wire \player_count_reg[8]_i_1_n_0 ;
  wire \player_count_reg[8]_i_1_n_1 ;
  wire \player_count_reg[8]_i_1_n_2 ;
  wire \player_count_reg[8]_i_1_n_3 ;
  wire \player_count_reg[8]_i_1_n_4 ;
  wire \player_count_reg[8]_i_1_n_5 ;
  wire \player_count_reg[8]_i_1_n_6 ;
  wire \player_count_reg[8]_i_1_n_7 ;
  wire [20:0]player_pixels;
  wire player_present;
  wire presence_ok;
  wire present_reg_i_2_n_0;
  wire present_reg_i_3_n_0;
  wire present_reg_i_4_n_0;
  wire present_reg_i_5_n_0;
  wire present_reg_i_6_n_0;
  wire q_pass;
  wire reset;
  wire result_valid;
  wire valid_reg_i_1_n_0;
  wire vde;
  wire vsync;
  wire vsync_prev;
  wire vsync_prev_i_1_n_0;
  wire [3:0]\NLW_collision_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_collision_count_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_player_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_player_count_reg[20]_i_1_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \collision_count[0]_i_1 
       (.I0(reset),
        .I1(vsync_prev),
        .I2(vsync),
        .O(collision_count));
  LUT6 #(
    .INIT(64'h8000000080008000)) 
    \collision_count[0]_i_2 
       (.I0(is_pixel_joueur),
        .I1(vde),
        .I2(frame_seen),
        .I3(is_pixel_mur),
        .I4(\collision_count[0]_i_4_n_0 ),
        .I5(\collision_count[0]_i_5_n_0 ),
        .O(\collision_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \collision_count[0]_i_4 
       (.I0(\collision_count[0]_i_7_n_0 ),
        .I1(\collision_count[0]_i_8_n_0 ),
        .I2(collision_count_reg[17]),
        .I3(collision_count_reg[18]),
        .I4(collision_count_reg[13]),
        .I5(pass_reg_i_7_n_0),
        .O(\collision_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \collision_count[0]_i_5 
       (.I0(collision_count_reg[2]),
        .I1(collision_count_reg[0]),
        .I2(collision_count_reg[1]),
        .I3(collision_count_reg[8]),
        .I4(collision_count_reg[10]),
        .I5(collision_count_reg[14]),
        .O(\collision_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \collision_count[0]_i_6 
       (.I0(collision_count_reg[0]),
        .O(\collision_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \collision_count[0]_i_7 
       (.I0(collision_count_reg[11]),
        .I1(collision_count_reg[3]),
        .I2(collision_count_reg[15]),
        .I3(collision_count_reg[9]),
        .O(\collision_count[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \collision_count[0]_i_8 
       (.I0(collision_count_reg[20]),
        .I1(collision_count_reg[12]),
        .I2(collision_count_reg[19]),
        .I3(collision_count_reg[16]),
        .O(\collision_count[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[0] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[0]_i_3_n_7 ),
        .Q(collision_count_reg[0]),
        .R(collision_count));
  CARRY4 \collision_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\collision_count_reg[0]_i_3_n_0 ,\collision_count_reg[0]_i_3_n_1 ,\collision_count_reg[0]_i_3_n_2 ,\collision_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\collision_count_reg[0]_i_3_n_4 ,\collision_count_reg[0]_i_3_n_5 ,\collision_count_reg[0]_i_3_n_6 ,\collision_count_reg[0]_i_3_n_7 }),
        .S({collision_count_reg[3:1],\collision_count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[10] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[8]_i_1_n_5 ),
        .Q(collision_count_reg[10]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[11] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[8]_i_1_n_4 ),
        .Q(collision_count_reg[11]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[12] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[12]_i_1_n_7 ),
        .Q(collision_count_reg[12]),
        .R(collision_count));
  CARRY4 \collision_count_reg[12]_i_1 
       (.CI(\collision_count_reg[8]_i_1_n_0 ),
        .CO({\collision_count_reg[12]_i_1_n_0 ,\collision_count_reg[12]_i_1_n_1 ,\collision_count_reg[12]_i_1_n_2 ,\collision_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\collision_count_reg[12]_i_1_n_4 ,\collision_count_reg[12]_i_1_n_5 ,\collision_count_reg[12]_i_1_n_6 ,\collision_count_reg[12]_i_1_n_7 }),
        .S(collision_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[13] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[12]_i_1_n_6 ),
        .Q(collision_count_reg[13]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[14] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[12]_i_1_n_5 ),
        .Q(collision_count_reg[14]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[15] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[12]_i_1_n_4 ),
        .Q(collision_count_reg[15]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[16] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[16]_i_1_n_7 ),
        .Q(collision_count_reg[16]),
        .R(collision_count));
  CARRY4 \collision_count_reg[16]_i_1 
       (.CI(\collision_count_reg[12]_i_1_n_0 ),
        .CO({\collision_count_reg[16]_i_1_n_0 ,\collision_count_reg[16]_i_1_n_1 ,\collision_count_reg[16]_i_1_n_2 ,\collision_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\collision_count_reg[16]_i_1_n_4 ,\collision_count_reg[16]_i_1_n_5 ,\collision_count_reg[16]_i_1_n_6 ,\collision_count_reg[16]_i_1_n_7 }),
        .S(collision_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[17] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[16]_i_1_n_6 ),
        .Q(collision_count_reg[17]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[18] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[16]_i_1_n_5 ),
        .Q(collision_count_reg[18]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[19] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[16]_i_1_n_4 ),
        .Q(collision_count_reg[19]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[1] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[0]_i_3_n_6 ),
        .Q(collision_count_reg[1]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[20] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[20]_i_1_n_7 ),
        .Q(collision_count_reg[20]),
        .R(collision_count));
  CARRY4 \collision_count_reg[20]_i_1 
       (.CI(\collision_count_reg[16]_i_1_n_0 ),
        .CO(\NLW_collision_count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_collision_count_reg[20]_i_1_O_UNCONNECTED [3:1],\collision_count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,collision_count_reg[20]}));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[2] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[0]_i_3_n_5 ),
        .Q(collision_count_reg[2]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[3] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[0]_i_3_n_4 ),
        .Q(collision_count_reg[3]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[4] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[4]_i_1_n_7 ),
        .Q(collision_count_reg[4]),
        .R(collision_count));
  CARRY4 \collision_count_reg[4]_i_1 
       (.CI(\collision_count_reg[0]_i_3_n_0 ),
        .CO({\collision_count_reg[4]_i_1_n_0 ,\collision_count_reg[4]_i_1_n_1 ,\collision_count_reg[4]_i_1_n_2 ,\collision_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\collision_count_reg[4]_i_1_n_4 ,\collision_count_reg[4]_i_1_n_5 ,\collision_count_reg[4]_i_1_n_6 ,\collision_count_reg[4]_i_1_n_7 }),
        .S(collision_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[5] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[4]_i_1_n_6 ),
        .Q(collision_count_reg[5]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[6] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[4]_i_1_n_5 ),
        .Q(collision_count_reg[6]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[7] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[4]_i_1_n_4 ),
        .Q(collision_count_reg[7]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[8] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[8]_i_1_n_7 ),
        .Q(collision_count_reg[8]),
        .R(collision_count));
  CARRY4 \collision_count_reg[8]_i_1 
       (.CI(\collision_count_reg[4]_i_1_n_0 ),
        .CO({\collision_count_reg[8]_i_1_n_0 ,\collision_count_reg[8]_i_1_n_1 ,\collision_count_reg[8]_i_1_n_2 ,\collision_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\collision_count_reg[8]_i_1_n_4 ,\collision_count_reg[8]_i_1_n_5 ,\collision_count_reg[8]_i_1_n_6 ,\collision_count_reg[8]_i_1_n_7 }),
        .S(collision_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \collision_count_reg[9] 
       (.C(clk_pixel),
        .CE(\collision_count[0]_i_2_n_0 ),
        .D(\collision_count_reg[8]_i_1_n_6 ),
        .Q(collision_count_reg[9]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[0] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[0]),
        .Q(collision_pixels[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[10] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[10]),
        .Q(collision_pixels[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[11] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[11]),
        .Q(collision_pixels[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[12] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[12]),
        .Q(collision_pixels[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[13] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[13]),
        .Q(collision_pixels[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[14] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[14]),
        .Q(collision_pixels[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[15] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[15]),
        .Q(collision_pixels[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[16] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[16]),
        .Q(collision_pixels[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[17] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[17]),
        .Q(collision_pixels[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[18] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[18]),
        .Q(collision_pixels[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[19] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[19]),
        .Q(collision_pixels[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[1] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[1]),
        .Q(collision_pixels[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[20] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[20]),
        .Q(collision_pixels[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[2] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[2]),
        .Q(collision_pixels[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[3] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[3]),
        .Q(collision_pixels[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[4] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[4]),
        .Q(collision_pixels[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[5] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[5]),
        .Q(collision_pixels[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[6] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[6]),
        .Q(collision_pixels[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[7] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[7]),
        .Q(collision_pixels[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[8] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[8]),
        .Q(collision_pixels[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \collision_pixels_reg_reg[9] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(collision_count_reg[9]),
        .Q(collision_pixels[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    frame_seen_i_1
       (.I0(frame_seen),
        .I1(vsync),
        .I2(vsync_prev),
        .I3(reset),
        .O(frame_seen_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    frame_seen_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(frame_seen_i_1_n_0),
        .Q(frame_seen),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    pass_reg_i_1
       (.I0(frame_seen),
        .I1(vsync_prev),
        .I2(vsync),
        .O(pass_reg));
  LUT3 #(
    .INIT(8'h02)) 
    pass_reg_i_2
       (.I0(presence_ok),
        .I1(pass_reg_i_3_n_0),
        .I2(pass_reg_i_4_n_0),
        .O(pass_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pass_reg_i_3
       (.I0(collision_count_reg[10]),
        .I1(collision_count_reg[11]),
        .I2(collision_count_reg[12]),
        .I3(collision_count_reg[13]),
        .I4(pass_reg_i_5_n_0),
        .I5(pass_reg_i_6_n_0),
        .O(pass_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFA80000)) 
    pass_reg_i_4
       (.I0(collision_count_reg[2]),
        .I1(collision_count_reg[1]),
        .I2(collision_count_reg[0]),
        .I3(collision_count_reg[3]),
        .I4(collision_count_reg[8]),
        .I5(pass_reg_i_7_n_0),
        .O(pass_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pass_reg_i_5
       (.I0(collision_count_reg[19]),
        .I1(collision_count_reg[20]),
        .I2(collision_count_reg[17]),
        .I3(collision_count_reg[16]),
        .O(pass_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pass_reg_i_6
       (.I0(collision_count_reg[18]),
        .I1(collision_count_reg[9]),
        .I2(collision_count_reg[15]),
        .I3(collision_count_reg[14]),
        .O(pass_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    pass_reg_i_7
       (.I0(collision_count_reg[5]),
        .I1(collision_count_reg[4]),
        .I2(collision_count_reg[7]),
        .I3(collision_count_reg[6]),
        .O(pass_reg_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pass_reg_reg
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(pass_reg0),
        .Q(q_pass),
        .R(reset));
  LUT5 #(
    .INIT(32'h80008080)) 
    \player_count[0]_i_1 
       (.I0(frame_seen),
        .I1(vde),
        .I2(is_pixel_joueur),
        .I3(\player_count[0]_i_3_n_0 ),
        .I4(\player_count[0]_i_4_n_0 ),
        .O(player_count));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \player_count[0]_i_3 
       (.I0(\player_count[0]_i_6_n_0 ),
        .I1(\player_count[0]_i_7_n_0 ),
        .I2(player_count_reg[15]),
        .I3(player_count_reg[13]),
        .I4(player_count_reg[10]),
        .I5(present_reg_i_6_n_0),
        .O(\player_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \player_count[0]_i_4 
       (.I0(player_count_reg[14]),
        .I1(player_count_reg[2]),
        .I2(player_count_reg[4]),
        .I3(player_count_reg[18]),
        .I4(player_count_reg[0]),
        .I5(player_count_reg[7]),
        .O(\player_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \player_count[0]_i_5 
       (.I0(player_count_reg[0]),
        .O(\player_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \player_count[0]_i_6 
       (.I0(player_count_reg[19]),
        .I1(player_count_reg[17]),
        .I2(player_count_reg[12]),
        .I3(player_count_reg[1]),
        .O(\player_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \player_count[0]_i_7 
       (.I0(player_count_reg[11]),
        .I1(player_count_reg[3]),
        .I2(player_count_reg[20]),
        .I3(player_count_reg[16]),
        .O(\player_count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[0] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[0]_i_2_n_7 ),
        .Q(player_count_reg[0]),
        .R(collision_count));
  CARRY4 \player_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\player_count_reg[0]_i_2_n_0 ,\player_count_reg[0]_i_2_n_1 ,\player_count_reg[0]_i_2_n_2 ,\player_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\player_count_reg[0]_i_2_n_4 ,\player_count_reg[0]_i_2_n_5 ,\player_count_reg[0]_i_2_n_6 ,\player_count_reg[0]_i_2_n_7 }),
        .S({player_count_reg[3:1],\player_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[10] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[8]_i_1_n_5 ),
        .Q(player_count_reg[10]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[11] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[8]_i_1_n_4 ),
        .Q(player_count_reg[11]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[12] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[12]_i_1_n_7 ),
        .Q(player_count_reg[12]),
        .R(collision_count));
  CARRY4 \player_count_reg[12]_i_1 
       (.CI(\player_count_reg[8]_i_1_n_0 ),
        .CO({\player_count_reg[12]_i_1_n_0 ,\player_count_reg[12]_i_1_n_1 ,\player_count_reg[12]_i_1_n_2 ,\player_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\player_count_reg[12]_i_1_n_4 ,\player_count_reg[12]_i_1_n_5 ,\player_count_reg[12]_i_1_n_6 ,\player_count_reg[12]_i_1_n_7 }),
        .S(player_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[13] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[12]_i_1_n_6 ),
        .Q(player_count_reg[13]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[14] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[12]_i_1_n_5 ),
        .Q(player_count_reg[14]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[15] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[12]_i_1_n_4 ),
        .Q(player_count_reg[15]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[16] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[16]_i_1_n_7 ),
        .Q(player_count_reg[16]),
        .R(collision_count));
  CARRY4 \player_count_reg[16]_i_1 
       (.CI(\player_count_reg[12]_i_1_n_0 ),
        .CO({\player_count_reg[16]_i_1_n_0 ,\player_count_reg[16]_i_1_n_1 ,\player_count_reg[16]_i_1_n_2 ,\player_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\player_count_reg[16]_i_1_n_4 ,\player_count_reg[16]_i_1_n_5 ,\player_count_reg[16]_i_1_n_6 ,\player_count_reg[16]_i_1_n_7 }),
        .S(player_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[17] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[16]_i_1_n_6 ),
        .Q(player_count_reg[17]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[18] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[16]_i_1_n_5 ),
        .Q(player_count_reg[18]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[19] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[16]_i_1_n_4 ),
        .Q(player_count_reg[19]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[1] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[0]_i_2_n_6 ),
        .Q(player_count_reg[1]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[20] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[20]_i_1_n_7 ),
        .Q(player_count_reg[20]),
        .R(collision_count));
  CARRY4 \player_count_reg[20]_i_1 
       (.CI(\player_count_reg[16]_i_1_n_0 ),
        .CO(\NLW_player_count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_player_count_reg[20]_i_1_O_UNCONNECTED [3:1],\player_count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,player_count_reg[20]}));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[2] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[0]_i_2_n_5 ),
        .Q(player_count_reg[2]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[3] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[0]_i_2_n_4 ),
        .Q(player_count_reg[3]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[4] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[4]_i_1_n_7 ),
        .Q(player_count_reg[4]),
        .R(collision_count));
  CARRY4 \player_count_reg[4]_i_1 
       (.CI(\player_count_reg[0]_i_2_n_0 ),
        .CO({\player_count_reg[4]_i_1_n_0 ,\player_count_reg[4]_i_1_n_1 ,\player_count_reg[4]_i_1_n_2 ,\player_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\player_count_reg[4]_i_1_n_4 ,\player_count_reg[4]_i_1_n_5 ,\player_count_reg[4]_i_1_n_6 ,\player_count_reg[4]_i_1_n_7 }),
        .S(player_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[5] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[4]_i_1_n_6 ),
        .Q(player_count_reg[5]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[6] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[4]_i_1_n_5 ),
        .Q(player_count_reg[6]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[7] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[4]_i_1_n_4 ),
        .Q(player_count_reg[7]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[8] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[8]_i_1_n_7 ),
        .Q(player_count_reg[8]),
        .R(collision_count));
  CARRY4 \player_count_reg[8]_i_1 
       (.CI(\player_count_reg[4]_i_1_n_0 ),
        .CO({\player_count_reg[8]_i_1_n_0 ,\player_count_reg[8]_i_1_n_1 ,\player_count_reg[8]_i_1_n_2 ,\player_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\player_count_reg[8]_i_1_n_4 ,\player_count_reg[8]_i_1_n_5 ,\player_count_reg[8]_i_1_n_6 ,\player_count_reg[8]_i_1_n_7 }),
        .S(player_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \player_count_reg[9] 
       (.C(clk_pixel),
        .CE(player_count),
        .D(\player_count_reg[8]_i_1_n_6 ),
        .Q(player_count_reg[9]),
        .R(collision_count));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[0] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[0]),
        .Q(player_pixels[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[10] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[10]),
        .Q(player_pixels[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[11] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[11]),
        .Q(player_pixels[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[12] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[12]),
        .Q(player_pixels[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[13] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[13]),
        .Q(player_pixels[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[14] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[14]),
        .Q(player_pixels[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[15] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[15]),
        .Q(player_pixels[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[16] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[16]),
        .Q(player_pixels[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[17] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[17]),
        .Q(player_pixels[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[18] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[18]),
        .Q(player_pixels[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[19] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[19]),
        .Q(player_pixels[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[1] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[1]),
        .Q(player_pixels[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[20] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[20]),
        .Q(player_pixels[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[2] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[2]),
        .Q(player_pixels[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[3] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[3]),
        .Q(player_pixels[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[4] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[4]),
        .Q(player_pixels[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[5] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[5]),
        .Q(player_pixels[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[6] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[6]),
        .Q(player_pixels[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[7] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[7]),
        .Q(player_pixels[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[8] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[8]),
        .Q(player_pixels[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \player_pixels_reg_reg[9] 
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(player_count_reg[9]),
        .Q(player_pixels[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    present_reg_i_1
       (.I0(present_reg_i_2_n_0),
        .I1(present_reg_i_3_n_0),
        .I2(present_reg_i_4_n_0),
        .I3(present_reg_i_5_n_0),
        .I4(present_reg_i_6_n_0),
        .O(presence_ok));
  LUT4 #(
    .INIT(16'hFFFE)) 
    present_reg_i_2
       (.I0(player_count_reg[14]),
        .I1(player_count_reg[11]),
        .I2(player_count_reg[20]),
        .I3(player_count_reg[17]),
        .O(present_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    present_reg_i_3
       (.I0(player_count_reg[19]),
        .I1(player_count_reg[16]),
        .I2(player_count_reg[18]),
        .I3(player_count_reg[15]),
        .O(present_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    present_reg_i_4
       (.I0(player_count_reg[12]),
        .I1(player_count_reg[13]),
        .I2(player_count_reg[10]),
        .O(present_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    present_reg_i_5
       (.I0(player_count_reg[7]),
        .I1(player_count_reg[4]),
        .I2(player_count_reg[3]),
        .O(present_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    present_reg_i_6
       (.I0(player_count_reg[6]),
        .I1(player_count_reg[8]),
        .I2(player_count_reg[5]),
        .I3(player_count_reg[9]),
        .O(present_reg_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    present_reg_reg
       (.C(clk_pixel),
        .CE(pass_reg),
        .D(presence_ok),
        .Q(player_present),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    valid_reg_i_1
       (.I0(vsync),
        .I1(vsync_prev),
        .I2(frame_seen),
        .I3(reset),
        .O(valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(valid_reg_i_1_n_0),
        .Q(result_valid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    vsync_prev_i_1
       (.I0(vsync),
        .I1(reset),
        .O(vsync_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_prev_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(vsync_prev_i_1_n_0),
        .Q(vsync_prev),
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
