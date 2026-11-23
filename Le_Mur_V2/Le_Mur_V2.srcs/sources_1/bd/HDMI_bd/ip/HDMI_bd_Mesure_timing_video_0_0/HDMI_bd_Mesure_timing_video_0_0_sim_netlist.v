// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Nov 23 17:39:38 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Mesure_timing_video_0_0/HDMI_bd_Mesure_timing_video_0_0_sim_netlist.v
// Design      : HDMI_bd_Mesure_timing_video_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_Mesure_timing_video_0_0,Mesure_timing_video,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Mesure_timing_video,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_Mesure_timing_video_0_0
   (clk_pixel,
    reset,
    vde,
    hsync,
    vsync,
    h_total,
    h_active,
    h_blank,
    mesure_valid,
    v_total,
    v_active,
    v_blank,
    frame_valid);
  input clk_pixel;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) input reset;
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

  wire clk_pixel;
  wire frame_valid;
  wire [11:0]h_active;
  wire [11:0]h_blank;
  wire [11:0]h_total;
  wire hsync;
  wire mesure_valid;
  wire reset;
  wire [11:0]v_active;
  wire [11:0]v_blank;
  wire [11:0]v_total;
  wire vde;
  wire vsync;

  HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video U0
       (.clk_pixel(clk_pixel),
        .frame_valid(frame_valid),
        .h_active(h_active),
        .h_blank(h_blank),
        .h_total(h_total),
        .hsync(hsync),
        .mesure_valid(mesure_valid),
        .reset(reset),
        .v_active(v_active),
        .v_blank(v_blank),
        .v_total(v_total),
        .vde(vde),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "Mesure_timing_video" *) 
module HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video
   (h_total,
    h_active,
    h_blank,
    v_total,
    v_active,
    v_blank,
    mesure_valid,
    frame_valid,
    vde,
    vsync,
    reset,
    clk_pixel,
    hsync);
  output [11:0]h_total;
  output [11:0]h_active;
  output [11:0]h_blank;
  output [11:0]v_total;
  output [11:0]v_active;
  output [11:0]v_blank;
  output mesure_valid;
  output frame_valid;
  input vde;
  input vsync;
  input reset;
  input clk_pixel;
  input hsync;

  wire clk_pixel;
  wire first_frame_seen;
  wire first_frame_seen_i_1_n_0;
  wire first_line_seen;
  wire first_line_seen_i_1_n_0;
  wire frame_valid;
  wire [11:0]h_active;
  wire [11:11]h_active_count;
  wire \h_active_count[0]_i_1_n_0 ;
  wire \h_active_count_reg[11]_i_1_n_2 ;
  wire \h_active_count_reg[11]_i_1_n_3 ;
  wire \h_active_count_reg[11]_i_1_n_5 ;
  wire \h_active_count_reg[11]_i_1_n_6 ;
  wire \h_active_count_reg[11]_i_1_n_7 ;
  wire \h_active_count_reg[4]_i_1_n_0 ;
  wire \h_active_count_reg[4]_i_1_n_1 ;
  wire \h_active_count_reg[4]_i_1_n_2 ;
  wire \h_active_count_reg[4]_i_1_n_3 ;
  wire \h_active_count_reg[4]_i_1_n_4 ;
  wire \h_active_count_reg[4]_i_1_n_5 ;
  wire \h_active_count_reg[4]_i_1_n_6 ;
  wire \h_active_count_reg[4]_i_1_n_7 ;
  wire \h_active_count_reg[8]_i_1_n_0 ;
  wire \h_active_count_reg[8]_i_1_n_1 ;
  wire \h_active_count_reg[8]_i_1_n_2 ;
  wire \h_active_count_reg[8]_i_1_n_3 ;
  wire \h_active_count_reg[8]_i_1_n_4 ;
  wire \h_active_count_reg[8]_i_1_n_5 ;
  wire \h_active_count_reg[8]_i_1_n_6 ;
  wire \h_active_count_reg[8]_i_1_n_7 ;
  wire \h_active_count_reg_n_0_[0] ;
  wire \h_active_count_reg_n_0_[10] ;
  wire \h_active_count_reg_n_0_[11] ;
  wire \h_active_count_reg_n_0_[1] ;
  wire \h_active_count_reg_n_0_[2] ;
  wire \h_active_count_reg_n_0_[3] ;
  wire \h_active_count_reg_n_0_[4] ;
  wire \h_active_count_reg_n_0_[5] ;
  wire \h_active_count_reg_n_0_[6] ;
  wire \h_active_count_reg_n_0_[7] ;
  wire \h_active_count_reg_n_0_[8] ;
  wire \h_active_count_reg_n_0_[9] ;
  wire [11:0]h_blank;
  wire [11:0]h_blank_reg01_out;
  wire h_blank_reg0_carry__0_i_1_n_0;
  wire h_blank_reg0_carry__0_i_2_n_0;
  wire h_blank_reg0_carry__0_i_3_n_0;
  wire h_blank_reg0_carry__0_i_4_n_0;
  wire h_blank_reg0_carry__0_i_5_n_0;
  wire h_blank_reg0_carry__0_i_6_n_0;
  wire h_blank_reg0_carry__0_i_7_n_0;
  wire h_blank_reg0_carry__0_i_8_n_0;
  wire h_blank_reg0_carry__0_n_0;
  wire h_blank_reg0_carry__0_n_1;
  wire h_blank_reg0_carry__0_n_2;
  wire h_blank_reg0_carry__0_n_3;
  wire h_blank_reg0_carry__1_i_1_n_0;
  wire h_blank_reg0_carry__1_i_2_n_0;
  wire h_blank_reg0_carry__1_i_3_n_0;
  wire h_blank_reg0_carry__1_i_4_n_0;
  wire h_blank_reg0_carry__1_i_5_n_0;
  wire h_blank_reg0_carry__1_i_6_n_0;
  wire h_blank_reg0_carry__1_i_7_n_0;
  wire h_blank_reg0_carry__1_n_1;
  wire h_blank_reg0_carry__1_n_2;
  wire h_blank_reg0_carry__1_n_3;
  wire h_blank_reg0_carry_i_1_n_0;
  wire h_blank_reg0_carry_i_3_n_0;
  wire h_blank_reg0_carry_i_4_n_0;
  wire h_blank_reg0_carry_i_5_n_0;
  wire h_blank_reg0_carry_i_6_n_0;
  wire h_blank_reg0_carry_n_0;
  wire h_blank_reg0_carry_n_1;
  wire h_blank_reg0_carry_n_2;
  wire h_blank_reg0_carry_n_3;
  wire \h_cycle_count[0]_i_1_n_0 ;
  wire \h_cycle_count[0]_i_3_n_0 ;
  wire [11:0]h_cycle_count_reg;
  wire \h_cycle_count_reg[0]_i_2_n_0 ;
  wire \h_cycle_count_reg[0]_i_2_n_1 ;
  wire \h_cycle_count_reg[0]_i_2_n_2 ;
  wire \h_cycle_count_reg[0]_i_2_n_3 ;
  wire \h_cycle_count_reg[0]_i_2_n_4 ;
  wire \h_cycle_count_reg[0]_i_2_n_5 ;
  wire \h_cycle_count_reg[0]_i_2_n_6 ;
  wire \h_cycle_count_reg[0]_i_2_n_7 ;
  wire \h_cycle_count_reg[4]_i_1_n_0 ;
  wire \h_cycle_count_reg[4]_i_1_n_1 ;
  wire \h_cycle_count_reg[4]_i_1_n_2 ;
  wire \h_cycle_count_reg[4]_i_1_n_3 ;
  wire \h_cycle_count_reg[4]_i_1_n_4 ;
  wire \h_cycle_count_reg[4]_i_1_n_5 ;
  wire \h_cycle_count_reg[4]_i_1_n_6 ;
  wire \h_cycle_count_reg[4]_i_1_n_7 ;
  wire \h_cycle_count_reg[8]_i_1_n_1 ;
  wire \h_cycle_count_reg[8]_i_1_n_2 ;
  wire \h_cycle_count_reg[8]_i_1_n_3 ;
  wire \h_cycle_count_reg[8]_i_1_n_4 ;
  wire \h_cycle_count_reg[8]_i_1_n_5 ;
  wire \h_cycle_count_reg[8]_i_1_n_6 ;
  wire \h_cycle_count_reg[8]_i_1_n_7 ;
  wire [11:0]h_total;
  wire \h_total_reg[11]_i_1_n_0 ;
  wire \h_total_reg_reg[11]_i_2_n_2 ;
  wire \h_total_reg_reg[11]_i_2_n_3 ;
  wire \h_total_reg_reg[4]_i_1_n_0 ;
  wire \h_total_reg_reg[4]_i_1_n_1 ;
  wire \h_total_reg_reg[4]_i_1_n_2 ;
  wire \h_total_reg_reg[4]_i_1_n_3 ;
  wire \h_total_reg_reg[8]_i_1_n_0 ;
  wire \h_total_reg_reg[8]_i_1_n_1 ;
  wire \h_total_reg_reg[8]_i_1_n_2 ;
  wire \h_total_reg_reg[8]_i_1_n_3 ;
  wire h_valid_reg_i_1_n_0;
  wire hsync;
  wire hsync_prev;
  wire mesure_valid;
  wire [1:1]p_0_in;
  wire [11:1]p_1_in;
  wire [11:0]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire reset;
  wire [11:0]v_active;
  wire [11:0]v_active_count;
  wire \v_active_count[0]_i_1_n_0 ;
  wire \v_active_count[10]_i_1_n_0 ;
  wire \v_active_count[11]_i_2_n_0 ;
  wire \v_active_count[1]_i_1_n_0 ;
  wire \v_active_count[2]_i_1_n_0 ;
  wire \v_active_count[3]_i_1_n_0 ;
  wire \v_active_count[4]_i_1_n_0 ;
  wire \v_active_count[5]_i_1_n_0 ;
  wire \v_active_count[6]_i_1_n_0 ;
  wire \v_active_count[7]_i_1_n_0 ;
  wire \v_active_count[8]_i_1_n_0 ;
  wire \v_active_count[9]_i_1_n_0 ;
  wire v_active_count_0;
  wire \v_active_count_reg[11]_i_3_n_2 ;
  wire \v_active_count_reg[11]_i_3_n_3 ;
  wire \v_active_count_reg[11]_i_3_n_5 ;
  wire \v_active_count_reg[11]_i_3_n_6 ;
  wire \v_active_count_reg[11]_i_3_n_7 ;
  wire \v_active_count_reg[4]_i_2_n_0 ;
  wire \v_active_count_reg[4]_i_2_n_1 ;
  wire \v_active_count_reg[4]_i_2_n_2 ;
  wire \v_active_count_reg[4]_i_2_n_3 ;
  wire \v_active_count_reg[4]_i_2_n_4 ;
  wire \v_active_count_reg[4]_i_2_n_5 ;
  wire \v_active_count_reg[4]_i_2_n_6 ;
  wire \v_active_count_reg[4]_i_2_n_7 ;
  wire \v_active_count_reg[8]_i_2_n_0 ;
  wire \v_active_count_reg[8]_i_2_n_1 ;
  wire \v_active_count_reg[8]_i_2_n_2 ;
  wire \v_active_count_reg[8]_i_2_n_3 ;
  wire \v_active_count_reg[8]_i_2_n_4 ;
  wire \v_active_count_reg[8]_i_2_n_5 ;
  wire \v_active_count_reg[8]_i_2_n_6 ;
  wire \v_active_count_reg[8]_i_2_n_7 ;
  wire [11:0]v_blank;
  wire [11:0]v_blank_reg00_out;
  wire v_blank_reg0_carry__0_i_1_n_0;
  wire v_blank_reg0_carry__0_i_2_n_0;
  wire v_blank_reg0_carry__0_i_3_n_0;
  wire v_blank_reg0_carry__0_i_4_n_0;
  wire v_blank_reg0_carry__0_n_0;
  wire v_blank_reg0_carry__0_n_1;
  wire v_blank_reg0_carry__0_n_2;
  wire v_blank_reg0_carry__0_n_3;
  wire v_blank_reg0_carry__1_i_1_n_0;
  wire v_blank_reg0_carry__1_i_2_n_0;
  wire v_blank_reg0_carry__1_i_3_n_0;
  wire v_blank_reg0_carry__1_i_4_n_0;
  wire v_blank_reg0_carry__1_n_1;
  wire v_blank_reg0_carry__1_n_2;
  wire v_blank_reg0_carry__1_n_3;
  wire v_blank_reg0_carry_i_1_n_0;
  wire v_blank_reg0_carry_i_2_n_0;
  wire v_blank_reg0_carry_i_3_n_0;
  wire v_blank_reg0_carry_i_4_n_0;
  wire v_blank_reg0_carry_n_0;
  wire v_blank_reg0_carry_n_1;
  wire v_blank_reg0_carry_n_2;
  wire v_blank_reg0_carry_n_3;
  wire v_blank_reg1_carry__0_i_1_n_0;
  wire v_blank_reg1_carry__0_i_2_n_0;
  wire v_blank_reg1_carry__0_i_3_n_0;
  wire v_blank_reg1_carry__0_i_4_n_0;
  wire v_blank_reg1_carry__0_n_2;
  wire v_blank_reg1_carry__0_n_3;
  wire v_blank_reg1_carry_i_1_n_0;
  wire v_blank_reg1_carry_i_2_n_0;
  wire v_blank_reg1_carry_i_3_n_0;
  wire v_blank_reg1_carry_i_4_n_0;
  wire v_blank_reg1_carry_i_5_n_0;
  wire v_blank_reg1_carry_i_6_n_0;
  wire v_blank_reg1_carry_i_7_n_0;
  wire v_blank_reg1_carry_i_8_n_0;
  wire v_blank_reg1_carry_n_0;
  wire v_blank_reg1_carry_n_1;
  wire v_blank_reg1_carry_n_2;
  wire v_blank_reg1_carry_n_3;
  wire \v_blank_reg[11]_i_1_n_0 ;
  wire [11:11]v_line_count;
  wire \v_line_count[0]_i_1_n_0 ;
  wire \v_line_count[11]_i_2_n_0 ;
  wire \v_line_count_reg_n_0_[0] ;
  wire \v_line_count_reg_n_0_[10] ;
  wire \v_line_count_reg_n_0_[11] ;
  wire \v_line_count_reg_n_0_[1] ;
  wire \v_line_count_reg_n_0_[2] ;
  wire \v_line_count_reg_n_0_[3] ;
  wire \v_line_count_reg_n_0_[4] ;
  wire \v_line_count_reg_n_0_[5] ;
  wire \v_line_count_reg_n_0_[6] ;
  wire \v_line_count_reg_n_0_[7] ;
  wire \v_line_count_reg_n_0_[8] ;
  wire \v_line_count_reg_n_0_[9] ;
  wire [11:0]v_total;
  wire v_total_reg;
  wire v_valid_reg_i_1_n_0;
  wire vde;
  wire vde_prev;
  wire vsync;
  wire vsync_prev;
  wire [3:2]\NLW_h_active_count_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_active_count_reg[11]_i_1_O_UNCONNECTED ;
  wire [3:3]NLW_h_blank_reg0_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_h_cycle_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_h_total_reg_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_total_reg_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_v_active_count_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_v_active_count_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:3]NLW_v_blank_reg0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_v_blank_reg1_carry_O_UNCONNECTED;
  wire [3:2]NLW_v_blank_reg1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_v_blank_reg1_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \U0/ 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(vde),
        .I3(vde_prev),
        .I4(reset),
        .O(h_active_count));
  LUT3 #(
    .INIT(8'hF4)) 
    first_frame_seen_i_1
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(first_frame_seen),
        .O(first_frame_seen_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_frame_seen_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(first_frame_seen_i_1_n_0),
        .Q(first_frame_seen),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    first_line_seen_i_1
       (.I0(first_line_seen),
        .I1(vde),
        .I2(vde_prev),
        .I3(vsync),
        .I4(vsync_prev),
        .I5(reset),
        .O(first_line_seen_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_line_seen_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(first_line_seen_i_1_n_0),
        .Q(first_line_seen),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h006E006E0000006E)) 
    \h_active_count[0]_i_1 
       (.I0(\h_active_count_reg_n_0_[0] ),
        .I1(vde),
        .I2(vde_prev),
        .I3(reset),
        .I4(vsync),
        .I5(vsync_prev),
        .O(\h_active_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_active_count[0]_i_1_n_0 ),
        .Q(\h_active_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[10] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[11]_i_1_n_6 ),
        .Q(\h_active_count_reg_n_0_[10] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[11] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[11]_i_1_n_5 ),
        .Q(\h_active_count_reg_n_0_[11] ),
        .R(h_active_count));
  CARRY4 \h_active_count_reg[11]_i_1 
       (.CI(\h_active_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_h_active_count_reg[11]_i_1_CO_UNCONNECTED [3:2],\h_active_count_reg[11]_i_1_n_2 ,\h_active_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_active_count_reg[11]_i_1_O_UNCONNECTED [3],\h_active_count_reg[11]_i_1_n_5 ,\h_active_count_reg[11]_i_1_n_6 ,\h_active_count_reg[11]_i_1_n_7 }),
        .S({1'b0,\h_active_count_reg_n_0_[11] ,\h_active_count_reg_n_0_[10] ,\h_active_count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[1] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[4]_i_1_n_7 ),
        .Q(\h_active_count_reg_n_0_[1] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[2] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[4]_i_1_n_6 ),
        .Q(\h_active_count_reg_n_0_[2] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[3] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[4]_i_1_n_5 ),
        .Q(\h_active_count_reg_n_0_[3] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[4] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[4]_i_1_n_4 ),
        .Q(\h_active_count_reg_n_0_[4] ),
        .R(h_active_count));
  CARRY4 \h_active_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\h_active_count_reg[4]_i_1_n_0 ,\h_active_count_reg[4]_i_1_n_1 ,\h_active_count_reg[4]_i_1_n_2 ,\h_active_count_reg[4]_i_1_n_3 }),
        .CYINIT(\h_active_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_active_count_reg[4]_i_1_n_4 ,\h_active_count_reg[4]_i_1_n_5 ,\h_active_count_reg[4]_i_1_n_6 ,\h_active_count_reg[4]_i_1_n_7 }),
        .S({\h_active_count_reg_n_0_[4] ,\h_active_count_reg_n_0_[3] ,\h_active_count_reg_n_0_[2] ,\h_active_count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[5] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[8]_i_1_n_7 ),
        .Q(\h_active_count_reg_n_0_[5] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[6] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[8]_i_1_n_6 ),
        .Q(\h_active_count_reg_n_0_[6] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[7] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[8]_i_1_n_5 ),
        .Q(\h_active_count_reg_n_0_[7] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[8] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[8]_i_1_n_4 ),
        .Q(\h_active_count_reg_n_0_[8] ),
        .R(h_active_count));
  CARRY4 \h_active_count_reg[8]_i_1 
       (.CI(\h_active_count_reg[4]_i_1_n_0 ),
        .CO({\h_active_count_reg[8]_i_1_n_0 ,\h_active_count_reg[8]_i_1_n_1 ,\h_active_count_reg[8]_i_1_n_2 ,\h_active_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_active_count_reg[8]_i_1_n_4 ,\h_active_count_reg[8]_i_1_n_5 ,\h_active_count_reg[8]_i_1_n_6 ,\h_active_count_reg[8]_i_1_n_7 }),
        .S({\h_active_count_reg_n_0_[8] ,\h_active_count_reg_n_0_[7] ,\h_active_count_reg_n_0_[6] ,\h_active_count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_count_reg[9] 
       (.C(clk_pixel),
        .CE(vde),
        .D(\h_active_count_reg[11]_i_1_n_7 ),
        .Q(\h_active_count_reg_n_0_[9] ),
        .R(h_active_count));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[0] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[0] ),
        .Q(h_active[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[10] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[10] ),
        .Q(h_active[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[11] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[11] ),
        .Q(h_active[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[1] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[1] ),
        .Q(h_active[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[2] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[2] ),
        .Q(h_active[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[3] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[3] ),
        .Q(h_active[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[4] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[4] ),
        .Q(h_active[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[5] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[5] ),
        .Q(h_active[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[6] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[6] ),
        .Q(h_active[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[7] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[7] ),
        .Q(h_active[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[8] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[8] ),
        .Q(h_active[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_active_reg_reg[9] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(\h_active_count_reg_n_0_[9] ),
        .Q(h_active[9]),
        .R(reset));
  CARRY4 h_blank_reg0_carry
       (.CI(1'b0),
        .CO({h_blank_reg0_carry_n_0,h_blank_reg0_carry_n_1,h_blank_reg0_carry_n_2,h_blank_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({h_blank_reg0_carry_i_1_n_0,p_0_in,\h_active_count_reg_n_0_[1] ,h_cycle_count_reg[0]}),
        .O(h_blank_reg01_out[3:0]),
        .S({h_blank_reg0_carry_i_3_n_0,h_blank_reg0_carry_i_4_n_0,h_blank_reg0_carry_i_5_n_0,h_blank_reg0_carry_i_6_n_0}));
  CARRY4 h_blank_reg0_carry__0
       (.CI(h_blank_reg0_carry_n_0),
        .CO({h_blank_reg0_carry__0_n_0,h_blank_reg0_carry__0_n_1,h_blank_reg0_carry__0_n_2,h_blank_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({h_blank_reg0_carry__0_i_1_n_0,h_blank_reg0_carry__0_i_2_n_0,h_blank_reg0_carry__0_i_3_n_0,h_blank_reg0_carry__0_i_4_n_0}),
        .O(h_blank_reg01_out[7:4]),
        .S({h_blank_reg0_carry__0_i_5_n_0,h_blank_reg0_carry__0_i_6_n_0,h_blank_reg0_carry__0_i_7_n_0,h_blank_reg0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__0_i_1
       (.I0(h_cycle_count_reg[6]),
        .I1(\h_active_count_reg_n_0_[6] ),
        .O(h_blank_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__0_i_2
       (.I0(h_cycle_count_reg[5]),
        .I1(\h_active_count_reg_n_0_[5] ),
        .O(h_blank_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__0_i_3
       (.I0(h_cycle_count_reg[4]),
        .I1(\h_active_count_reg_n_0_[4] ),
        .O(h_blank_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__0_i_4
       (.I0(h_cycle_count_reg[3]),
        .I1(\h_active_count_reg_n_0_[3] ),
        .O(h_blank_reg0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__0_i_5
       (.I0(\h_active_count_reg_n_0_[6] ),
        .I1(h_cycle_count_reg[6]),
        .I2(\h_active_count_reg_n_0_[7] ),
        .I3(h_cycle_count_reg[7]),
        .O(h_blank_reg0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__0_i_6
       (.I0(\h_active_count_reg_n_0_[5] ),
        .I1(h_cycle_count_reg[5]),
        .I2(\h_active_count_reg_n_0_[6] ),
        .I3(h_cycle_count_reg[6]),
        .O(h_blank_reg0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__0_i_7
       (.I0(\h_active_count_reg_n_0_[4] ),
        .I1(h_cycle_count_reg[4]),
        .I2(\h_active_count_reg_n_0_[5] ),
        .I3(h_cycle_count_reg[5]),
        .O(h_blank_reg0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__0_i_8
       (.I0(\h_active_count_reg_n_0_[3] ),
        .I1(h_cycle_count_reg[3]),
        .I2(\h_active_count_reg_n_0_[4] ),
        .I3(h_cycle_count_reg[4]),
        .O(h_blank_reg0_carry__0_i_8_n_0));
  CARRY4 h_blank_reg0_carry__1
       (.CI(h_blank_reg0_carry__0_n_0),
        .CO({NLW_h_blank_reg0_carry__1_CO_UNCONNECTED[3],h_blank_reg0_carry__1_n_1,h_blank_reg0_carry__1_n_2,h_blank_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h_blank_reg0_carry__1_i_1_n_0,h_blank_reg0_carry__1_i_2_n_0,h_blank_reg0_carry__1_i_3_n_0}),
        .O(h_blank_reg01_out[11:8]),
        .S({h_blank_reg0_carry__1_i_4_n_0,h_blank_reg0_carry__1_i_5_n_0,h_blank_reg0_carry__1_i_6_n_0,h_blank_reg0_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__1_i_1
       (.I0(h_cycle_count_reg[9]),
        .I1(\h_active_count_reg_n_0_[9] ),
        .O(h_blank_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__1_i_2
       (.I0(h_cycle_count_reg[8]),
        .I1(\h_active_count_reg_n_0_[8] ),
        .O(h_blank_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry__1_i_3
       (.I0(h_cycle_count_reg[7]),
        .I1(\h_active_count_reg_n_0_[7] ),
        .O(h_blank_reg0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__1_i_4
       (.I0(\h_active_count_reg_n_0_[10] ),
        .I1(h_cycle_count_reg[10]),
        .I2(\h_active_count_reg_n_0_[11] ),
        .I3(h_cycle_count_reg[11]),
        .O(h_blank_reg0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__1_i_5
       (.I0(\h_active_count_reg_n_0_[9] ),
        .I1(h_cycle_count_reg[9]),
        .I2(\h_active_count_reg_n_0_[10] ),
        .I3(h_cycle_count_reg[10]),
        .O(h_blank_reg0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__1_i_6
       (.I0(\h_active_count_reg_n_0_[8] ),
        .I1(h_cycle_count_reg[8]),
        .I2(\h_active_count_reg_n_0_[9] ),
        .I3(h_cycle_count_reg[9]),
        .O(h_blank_reg0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry__1_i_7
       (.I0(\h_active_count_reg_n_0_[7] ),
        .I1(h_cycle_count_reg[7]),
        .I2(\h_active_count_reg_n_0_[8] ),
        .I3(h_cycle_count_reg[8]),
        .O(h_blank_reg0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    h_blank_reg0_carry_i_1
       (.I0(h_cycle_count_reg[2]),
        .I1(\h_active_count_reg_n_0_[2] ),
        .O(h_blank_reg0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    h_blank_reg0_carry_i_2
       (.I0(\h_active_count_reg_n_0_[1] ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hB44B)) 
    h_blank_reg0_carry_i_3
       (.I0(\h_active_count_reg_n_0_[2] ),
        .I1(h_cycle_count_reg[2]),
        .I2(\h_active_count_reg_n_0_[3] ),
        .I3(h_cycle_count_reg[3]),
        .O(h_blank_reg0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    h_blank_reg0_carry_i_4
       (.I0(\h_active_count_reg_n_0_[1] ),
        .I1(\h_active_count_reg_n_0_[2] ),
        .I2(h_cycle_count_reg[2]),
        .O(h_blank_reg0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    h_blank_reg0_carry_i_5
       (.I0(\h_active_count_reg_n_0_[1] ),
        .I1(h_cycle_count_reg[1]),
        .O(h_blank_reg0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    h_blank_reg0_carry_i_6
       (.I0(h_cycle_count_reg[0]),
        .I1(\h_active_count_reg_n_0_[0] ),
        .O(h_blank_reg0_carry_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[0] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[0]),
        .Q(h_blank[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[10] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[10]),
        .Q(h_blank[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[11] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[11]),
        .Q(h_blank[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[1] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[1]),
        .Q(h_blank[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[2] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[2]),
        .Q(h_blank[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[3] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[3]),
        .Q(h_blank[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[4] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[4]),
        .Q(h_blank[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[5] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[5]),
        .Q(h_blank[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[6] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[6]),
        .Q(h_blank[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[7] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[7]),
        .Q(h_blank[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[8] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[8]),
        .Q(h_blank[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_blank_reg_reg[9] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(h_blank_reg01_out[9]),
        .Q(h_blank[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \h_cycle_count[0]_i_1 
       (.I0(reset),
        .I1(vde),
        .I2(vde_prev),
        .I3(vsync),
        .I4(vsync_prev),
        .O(\h_cycle_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cycle_count[0]_i_3 
       (.I0(h_cycle_count_reg[0]),
        .O(\h_cycle_count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[0]_i_2_n_7 ),
        .Q(h_cycle_count_reg[0]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  CARRY4 \h_cycle_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\h_cycle_count_reg[0]_i_2_n_0 ,\h_cycle_count_reg[0]_i_2_n_1 ,\h_cycle_count_reg[0]_i_2_n_2 ,\h_cycle_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\h_cycle_count_reg[0]_i_2_n_4 ,\h_cycle_count_reg[0]_i_2_n_5 ,\h_cycle_count_reg[0]_i_2_n_6 ,\h_cycle_count_reg[0]_i_2_n_7 }),
        .S({h_cycle_count_reg[3:1],\h_cycle_count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[10] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[8]_i_1_n_5 ),
        .Q(h_cycle_count_reg[10]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[11] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[8]_i_1_n_4 ),
        .Q(h_cycle_count_reg[11]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[0]_i_2_n_6 ),
        .Q(h_cycle_count_reg[1]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[0]_i_2_n_5 ),
        .Q(h_cycle_count_reg[2]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[0]_i_2_n_4 ),
        .Q(h_cycle_count_reg[3]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[4]_i_1_n_7 ),
        .Q(h_cycle_count_reg[4]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  CARRY4 \h_cycle_count_reg[4]_i_1 
       (.CI(\h_cycle_count_reg[0]_i_2_n_0 ),
        .CO({\h_cycle_count_reg[4]_i_1_n_0 ,\h_cycle_count_reg[4]_i_1_n_1 ,\h_cycle_count_reg[4]_i_1_n_2 ,\h_cycle_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cycle_count_reg[4]_i_1_n_4 ,\h_cycle_count_reg[4]_i_1_n_5 ,\h_cycle_count_reg[4]_i_1_n_6 ,\h_cycle_count_reg[4]_i_1_n_7 }),
        .S(h_cycle_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[4]_i_1_n_6 ),
        .Q(h_cycle_count_reg[5]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[4]_i_1_n_5 ),
        .Q(h_cycle_count_reg[6]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[4]_i_1_n_4 ),
        .Q(h_cycle_count_reg[7]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[8]_i_1_n_7 ),
        .Q(h_cycle_count_reg[8]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  CARRY4 \h_cycle_count_reg[8]_i_1 
       (.CI(\h_cycle_count_reg[4]_i_1_n_0 ),
        .CO({\NLW_h_cycle_count_reg[8]_i_1_CO_UNCONNECTED [3],\h_cycle_count_reg[8]_i_1_n_1 ,\h_cycle_count_reg[8]_i_1_n_2 ,\h_cycle_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_cycle_count_reg[8]_i_1_n_4 ,\h_cycle_count_reg[8]_i_1_n_5 ,\h_cycle_count_reg[8]_i_1_n_6 ,\h_cycle_count_reg[8]_i_1_n_7 }),
        .S(h_cycle_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \h_cycle_count_reg[9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\h_cycle_count_reg[8]_i_1_n_6 ),
        .Q(h_cycle_count_reg[9]),
        .R(\h_cycle_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_total_reg[0]_i_1 
       (.I0(h_cycle_count_reg[0]),
        .O(plusOp[0]));
  LUT5 #(
    .INIT(32'h08000808)) 
    \h_total_reg[11]_i_1 
       (.I0(first_line_seen),
        .I1(vde),
        .I2(vde_prev),
        .I3(vsync_prev),
        .I4(vsync),
        .O(\h_total_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[0] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(h_total[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[10] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[10]),
        .Q(h_total[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[11] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[11]),
        .Q(h_total[11]),
        .R(reset));
  CARRY4 \h_total_reg_reg[11]_i_2 
       (.CI(\h_total_reg_reg[8]_i_1_n_0 ),
        .CO({\NLW_h_total_reg_reg[11]_i_2_CO_UNCONNECTED [3:2],\h_total_reg_reg[11]_i_2_n_2 ,\h_total_reg_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_total_reg_reg[11]_i_2_O_UNCONNECTED [3],plusOp[11:9]}),
        .S({1'b0,h_cycle_count_reg[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[1] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(h_total[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[2] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(h_total[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[3] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(h_total[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[4] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(h_total[4]),
        .R(reset));
  CARRY4 \h_total_reg_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\h_total_reg_reg[4]_i_1_n_0 ,\h_total_reg_reg[4]_i_1_n_1 ,\h_total_reg_reg[4]_i_1_n_2 ,\h_total_reg_reg[4]_i_1_n_3 }),
        .CYINIT(h_cycle_count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(h_cycle_count_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[5] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[5]),
        .Q(h_total[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[6] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[6]),
        .Q(h_total[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[7] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[7]),
        .Q(h_total[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[8] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[8]),
        .Q(h_total[8]),
        .R(reset));
  CARRY4 \h_total_reg_reg[8]_i_1 
       (.CI(\h_total_reg_reg[4]_i_1_n_0 ),
        .CO({\h_total_reg_reg[8]_i_1_n_0 ,\h_total_reg_reg[8]_i_1_n_1 ,\h_total_reg_reg[8]_i_1_n_2 ,\h_total_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(h_cycle_count_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \h_total_reg_reg[9] 
       (.C(clk_pixel),
        .CE(\h_total_reg[11]_i_1_n_0 ),
        .D(plusOp[9]),
        .Q(h_total[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000008A0000)) 
    h_valid_reg_i_1
       (.I0(first_line_seen),
        .I1(vsync_prev),
        .I2(vsync),
        .I3(vde_prev),
        .I4(vde),
        .I5(reset),
        .O(h_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    h_valid_reg_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(h_valid_reg_i_1_n_0),
        .Q(mesure_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hsync_prev_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hsync),
        .Q(hsync_prev),
        .R(reset));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\v_line_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\v_line_count_reg_n_0_[4] ,\v_line_count_reg_n_0_[3] ,\v_line_count_reg_n_0_[2] ,\v_line_count_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\v_line_count_reg_n_0_[8] ,\v_line_count_reg_n_0_[7] ,\v_line_count_reg_n_0_[6] ,\v_line_count_reg_n_0_[5] }));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({1'b0,\v_line_count_reg_n_0_[11] ,\v_line_count_reg_n_0_[10] ,\v_line_count_reg_n_0_[9] }));
  LUT5 #(
    .INIT(32'hB4BB0F00)) 
    \v_active_count[0]_i_1 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(vde_prev),
        .I3(vde),
        .I4(v_active_count[0]),
        .O(\v_active_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[10]_i_1 
       (.I0(\v_active_count_reg[11]_i_3_n_6 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \v_active_count[11]_i_1 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(vde_prev),
        .I3(vde),
        .O(v_active_count_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[11]_i_2 
       (.I0(\v_active_count_reg[11]_i_3_n_5 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[1]_i_1 
       (.I0(\v_active_count_reg[4]_i_2_n_7 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[2]_i_1 
       (.I0(\v_active_count_reg[4]_i_2_n_6 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[3]_i_1 
       (.I0(\v_active_count_reg[4]_i_2_n_5 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[4]_i_1 
       (.I0(\v_active_count_reg[4]_i_2_n_4 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[5]_i_1 
       (.I0(\v_active_count_reg[8]_i_2_n_7 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[6]_i_1 
       (.I0(\v_active_count_reg[8]_i_2_n_6 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[7]_i_1 
       (.I0(\v_active_count_reg[8]_i_2_n_5 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[8]_i_1 
       (.I0(\v_active_count_reg[8]_i_2_n_4 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_active_count[9]_i_1 
       (.I0(\v_active_count_reg[11]_i_3_n_7 ),
        .I1(vsync_prev),
        .I2(vsync),
        .O(\v_active_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\v_active_count[0]_i_1_n_0 ),
        .Q(v_active_count[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[10] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[10]_i_1_n_0 ),
        .Q(v_active_count[10]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[11] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[11]_i_2_n_0 ),
        .Q(v_active_count[11]),
        .R(v_line_count));
  CARRY4 \v_active_count_reg[11]_i_3 
       (.CI(\v_active_count_reg[8]_i_2_n_0 ),
        .CO({\NLW_v_active_count_reg[11]_i_3_CO_UNCONNECTED [3:2],\v_active_count_reg[11]_i_3_n_2 ,\v_active_count_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_v_active_count_reg[11]_i_3_O_UNCONNECTED [3],\v_active_count_reg[11]_i_3_n_5 ,\v_active_count_reg[11]_i_3_n_6 ,\v_active_count_reg[11]_i_3_n_7 }),
        .S({1'b0,v_active_count[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[1] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[1]_i_1_n_0 ),
        .Q(v_active_count[1]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[2] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[2]_i_1_n_0 ),
        .Q(v_active_count[2]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[3] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[3]_i_1_n_0 ),
        .Q(v_active_count[3]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[4] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[4]_i_1_n_0 ),
        .Q(v_active_count[4]),
        .R(v_line_count));
  CARRY4 \v_active_count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\v_active_count_reg[4]_i_2_n_0 ,\v_active_count_reg[4]_i_2_n_1 ,\v_active_count_reg[4]_i_2_n_2 ,\v_active_count_reg[4]_i_2_n_3 }),
        .CYINIT(v_active_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_active_count_reg[4]_i_2_n_4 ,\v_active_count_reg[4]_i_2_n_5 ,\v_active_count_reg[4]_i_2_n_6 ,\v_active_count_reg[4]_i_2_n_7 }),
        .S(v_active_count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[5] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[5]_i_1_n_0 ),
        .Q(v_active_count[5]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[6] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[6]_i_1_n_0 ),
        .Q(v_active_count[6]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[7] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[7]_i_1_n_0 ),
        .Q(v_active_count[7]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[8] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[8]_i_1_n_0 ),
        .Q(v_active_count[8]),
        .R(v_line_count));
  CARRY4 \v_active_count_reg[8]_i_2 
       (.CI(\v_active_count_reg[4]_i_2_n_0 ),
        .CO({\v_active_count_reg[8]_i_2_n_0 ,\v_active_count_reg[8]_i_2_n_1 ,\v_active_count_reg[8]_i_2_n_2 ,\v_active_count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_active_count_reg[8]_i_2_n_4 ,\v_active_count_reg[8]_i_2_n_5 ,\v_active_count_reg[8]_i_2_n_6 ,\v_active_count_reg[8]_i_2_n_7 }),
        .S(v_active_count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_count_reg[9] 
       (.C(clk_pixel),
        .CE(v_active_count_0),
        .D(\v_active_count[9]_i_1_n_0 ),
        .Q(v_active_count[9]),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[0] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[0]),
        .Q(v_active[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[10] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[10]),
        .Q(v_active[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[11] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[11]),
        .Q(v_active[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[1] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[1]),
        .Q(v_active[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[2] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[2]),
        .Q(v_active[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[3] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[3]),
        .Q(v_active[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[4] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[4]),
        .Q(v_active[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[5] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[5]),
        .Q(v_active[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[6] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[6]),
        .Q(v_active[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[7] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[7]),
        .Q(v_active[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[8] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[8]),
        .Q(v_active[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_active_reg_reg[9] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_active_count[9]),
        .Q(v_active[9]),
        .R(reset));
  CARRY4 v_blank_reg0_carry
       (.CI(1'b0),
        .CO({v_blank_reg0_carry_n_0,v_blank_reg0_carry_n_1,v_blank_reg0_carry_n_2,v_blank_reg0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\v_line_count_reg_n_0_[3] ,\v_line_count_reg_n_0_[2] ,\v_line_count_reg_n_0_[1] ,\v_line_count_reg_n_0_[0] }),
        .O(v_blank_reg00_out[3:0]),
        .S({v_blank_reg0_carry_i_1_n_0,v_blank_reg0_carry_i_2_n_0,v_blank_reg0_carry_i_3_n_0,v_blank_reg0_carry_i_4_n_0}));
  CARRY4 v_blank_reg0_carry__0
       (.CI(v_blank_reg0_carry_n_0),
        .CO({v_blank_reg0_carry__0_n_0,v_blank_reg0_carry__0_n_1,v_blank_reg0_carry__0_n_2,v_blank_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\v_line_count_reg_n_0_[7] ,\v_line_count_reg_n_0_[6] ,\v_line_count_reg_n_0_[5] ,\v_line_count_reg_n_0_[4] }),
        .O(v_blank_reg00_out[7:4]),
        .S({v_blank_reg0_carry__0_i_1_n_0,v_blank_reg0_carry__0_i_2_n_0,v_blank_reg0_carry__0_i_3_n_0,v_blank_reg0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__0_i_1
       (.I0(\v_line_count_reg_n_0_[7] ),
        .I1(v_active_count[7]),
        .O(v_blank_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__0_i_2
       (.I0(\v_line_count_reg_n_0_[6] ),
        .I1(v_active_count[6]),
        .O(v_blank_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__0_i_3
       (.I0(\v_line_count_reg_n_0_[5] ),
        .I1(v_active_count[5]),
        .O(v_blank_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__0_i_4
       (.I0(\v_line_count_reg_n_0_[4] ),
        .I1(v_active_count[4]),
        .O(v_blank_reg0_carry__0_i_4_n_0));
  CARRY4 v_blank_reg0_carry__1
       (.CI(v_blank_reg0_carry__0_n_0),
        .CO({NLW_v_blank_reg0_carry__1_CO_UNCONNECTED[3],v_blank_reg0_carry__1_n_1,v_blank_reg0_carry__1_n_2,v_blank_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\v_line_count_reg_n_0_[10] ,\v_line_count_reg_n_0_[9] ,\v_line_count_reg_n_0_[8] }),
        .O(v_blank_reg00_out[11:8]),
        .S({v_blank_reg0_carry__1_i_1_n_0,v_blank_reg0_carry__1_i_2_n_0,v_blank_reg0_carry__1_i_3_n_0,v_blank_reg0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__1_i_1
       (.I0(\v_line_count_reg_n_0_[11] ),
        .I1(v_active_count[11]),
        .O(v_blank_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__1_i_2
       (.I0(\v_line_count_reg_n_0_[10] ),
        .I1(v_active_count[10]),
        .O(v_blank_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__1_i_3
       (.I0(\v_line_count_reg_n_0_[9] ),
        .I1(v_active_count[9]),
        .O(v_blank_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry__1_i_4
       (.I0(\v_line_count_reg_n_0_[8] ),
        .I1(v_active_count[8]),
        .O(v_blank_reg0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry_i_1
       (.I0(\v_line_count_reg_n_0_[3] ),
        .I1(v_active_count[3]),
        .O(v_blank_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry_i_2
       (.I0(\v_line_count_reg_n_0_[2] ),
        .I1(v_active_count[2]),
        .O(v_blank_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry_i_3
       (.I0(\v_line_count_reg_n_0_[1] ),
        .I1(v_active_count[1]),
        .O(v_blank_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_blank_reg0_carry_i_4
       (.I0(\v_line_count_reg_n_0_[0] ),
        .I1(v_active_count[0]),
        .O(v_blank_reg0_carry_i_4_n_0));
  CARRY4 v_blank_reg1_carry
       (.CI(1'b0),
        .CO({v_blank_reg1_carry_n_0,v_blank_reg1_carry_n_1,v_blank_reg1_carry_n_2,v_blank_reg1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({v_blank_reg1_carry_i_1_n_0,v_blank_reg1_carry_i_2_n_0,v_blank_reg1_carry_i_3_n_0,v_blank_reg1_carry_i_4_n_0}),
        .O(NLW_v_blank_reg1_carry_O_UNCONNECTED[3:0]),
        .S({v_blank_reg1_carry_i_5_n_0,v_blank_reg1_carry_i_6_n_0,v_blank_reg1_carry_i_7_n_0,v_blank_reg1_carry_i_8_n_0}));
  CARRY4 v_blank_reg1_carry__0
       (.CI(v_blank_reg1_carry_n_0),
        .CO({NLW_v_blank_reg1_carry__0_CO_UNCONNECTED[3:2],v_blank_reg1_carry__0_n_2,v_blank_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,v_blank_reg1_carry__0_i_1_n_0,v_blank_reg1_carry__0_i_2_n_0}),
        .O(NLW_v_blank_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,v_blank_reg1_carry__0_i_3_n_0,v_blank_reg1_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    v_blank_reg1_carry__0_i_1
       (.I0(\v_line_count_reg_n_0_[10] ),
        .I1(v_active_count[10]),
        .I2(v_active_count[11]),
        .I3(\v_line_count_reg_n_0_[11] ),
        .O(v_blank_reg1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    v_blank_reg1_carry__0_i_2
       (.I0(\v_line_count_reg_n_0_[8] ),
        .I1(v_active_count[8]),
        .I2(v_active_count[9]),
        .I3(\v_line_count_reg_n_0_[9] ),
        .O(v_blank_reg1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_blank_reg1_carry__0_i_3
       (.I0(\v_line_count_reg_n_0_[10] ),
        .I1(v_active_count[10]),
        .I2(\v_line_count_reg_n_0_[11] ),
        .I3(v_active_count[11]),
        .O(v_blank_reg1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_blank_reg1_carry__0_i_4
       (.I0(\v_line_count_reg_n_0_[8] ),
        .I1(v_active_count[8]),
        .I2(\v_line_count_reg_n_0_[9] ),
        .I3(v_active_count[9]),
        .O(v_blank_reg1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    v_blank_reg1_carry_i_1
       (.I0(\v_line_count_reg_n_0_[6] ),
        .I1(v_active_count[6]),
        .I2(v_active_count[7]),
        .I3(\v_line_count_reg_n_0_[7] ),
        .O(v_blank_reg1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    v_blank_reg1_carry_i_2
       (.I0(\v_line_count_reg_n_0_[4] ),
        .I1(v_active_count[4]),
        .I2(v_active_count[5]),
        .I3(\v_line_count_reg_n_0_[5] ),
        .O(v_blank_reg1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    v_blank_reg1_carry_i_3
       (.I0(\v_line_count_reg_n_0_[2] ),
        .I1(v_active_count[2]),
        .I2(v_active_count[3]),
        .I3(\v_line_count_reg_n_0_[3] ),
        .O(v_blank_reg1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    v_blank_reg1_carry_i_4
       (.I0(\v_line_count_reg_n_0_[0] ),
        .I1(v_active_count[0]),
        .I2(v_active_count[1]),
        .I3(\v_line_count_reg_n_0_[1] ),
        .O(v_blank_reg1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_blank_reg1_carry_i_5
       (.I0(\v_line_count_reg_n_0_[6] ),
        .I1(v_active_count[6]),
        .I2(\v_line_count_reg_n_0_[7] ),
        .I3(v_active_count[7]),
        .O(v_blank_reg1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_blank_reg1_carry_i_6
       (.I0(\v_line_count_reg_n_0_[4] ),
        .I1(v_active_count[4]),
        .I2(\v_line_count_reg_n_0_[5] ),
        .I3(v_active_count[5]),
        .O(v_blank_reg1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_blank_reg1_carry_i_7
       (.I0(\v_line_count_reg_n_0_[2] ),
        .I1(v_active_count[2]),
        .I2(\v_line_count_reg_n_0_[3] ),
        .I3(v_active_count[3]),
        .O(v_blank_reg1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_blank_reg1_carry_i_8
       (.I0(\v_line_count_reg_n_0_[0] ),
        .I1(v_active_count[0]),
        .I2(\v_line_count_reg_n_0_[1] ),
        .I3(v_active_count[1]),
        .O(v_blank_reg1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \v_blank_reg[11]_i_1 
       (.I0(reset),
        .I1(first_frame_seen),
        .I2(v_blank_reg1_carry__0_n_2),
        .I3(vsync),
        .I4(vsync_prev),
        .O(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[0] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[0]),
        .Q(v_blank[0]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[10] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[10]),
        .Q(v_blank[10]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[11] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[11]),
        .Q(v_blank[11]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[1] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[1]),
        .Q(v_blank[1]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[2] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[2]),
        .Q(v_blank[2]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[3] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[3]),
        .Q(v_blank[3]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[4] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[4]),
        .Q(v_blank[4]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[5] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[5]),
        .Q(v_blank[5]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[6] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[6]),
        .Q(v_blank[6]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[7] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[7]),
        .Q(v_blank[7]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[8] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[8]),
        .Q(v_blank[8]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_blank_reg_reg[9] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(v_blank_reg00_out[9]),
        .Q(v_blank[9]),
        .R(\v_blank_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB4BB0F00)) 
    \v_line_count[0]_i_1 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(hsync_prev),
        .I3(hsync),
        .I4(\v_line_count_reg_n_0_[0] ),
        .O(\v_line_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[10]_i_1 
       (.I0(plusOp_carry__1_n_6),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'hF4)) 
    \v_line_count[11]_i_1 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(reset),
        .O(v_line_count));
  LUT4 #(
    .INIT(16'h4F44)) 
    \v_line_count[11]_i_2 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(hsync_prev),
        .I3(hsync),
        .O(\v_line_count[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[11]_i_3 
       (.I0(plusOp_carry__1_n_5),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[1]_i_1 
       (.I0(plusOp_carry_n_7),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[2]_i_1 
       (.I0(plusOp_carry_n_6),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[3]_i_1 
       (.I0(plusOp_carry_n_5),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[4]_i_1 
       (.I0(plusOp_carry_n_4),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[5]_i_1 
       (.I0(plusOp_carry__0_n_7),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[6]_i_1 
       (.I0(plusOp_carry__0_n_6),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[7]_i_1 
       (.I0(plusOp_carry__0_n_5),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[8]_i_1 
       (.I0(plusOp_carry__0_n_4),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \v_line_count[9]_i_1 
       (.I0(plusOp_carry__1_n_7),
        .I1(vsync_prev),
        .I2(vsync),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\v_line_count[0]_i_1_n_0 ),
        .Q(\v_line_count_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[10] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(\v_line_count_reg_n_0_[10] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[11] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(\v_line_count_reg_n_0_[11] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[1] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(\v_line_count_reg_n_0_[1] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[2] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(\v_line_count_reg_n_0_[2] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[3] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(\v_line_count_reg_n_0_[3] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[4] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(\v_line_count_reg_n_0_[4] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[5] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(\v_line_count_reg_n_0_[5] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[6] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(\v_line_count_reg_n_0_[6] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[7] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(\v_line_count_reg_n_0_[7] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[8] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(\v_line_count_reg_n_0_[8] ),
        .R(v_line_count));
  FDRE #(
    .INIT(1'b0)) 
    \v_line_count_reg[9] 
       (.C(clk_pixel),
        .CE(\v_line_count[11]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(\v_line_count_reg_n_0_[9] ),
        .R(v_line_count));
  LUT3 #(
    .INIT(8'h40)) 
    \v_total_reg[11]_i_1 
       (.I0(vsync_prev),
        .I1(vsync),
        .I2(first_frame_seen),
        .O(v_total_reg));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[0] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[0] ),
        .Q(v_total[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[10] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[10] ),
        .Q(v_total[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[11] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[11] ),
        .Q(v_total[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[1] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[1] ),
        .Q(v_total[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[2] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[2] ),
        .Q(v_total[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[3] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[3] ),
        .Q(v_total[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[4] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[4] ),
        .Q(v_total[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[5] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[5] ),
        .Q(v_total[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[6] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[6] ),
        .Q(v_total[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[7] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[7] ),
        .Q(v_total[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[8] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[8] ),
        .Q(v_total[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \v_total_reg_reg[9] 
       (.C(clk_pixel),
        .CE(v_total_reg),
        .D(\v_line_count_reg_n_0_[9] ),
        .Q(v_total[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h0008)) 
    v_valid_reg_i_1
       (.I0(first_frame_seen),
        .I1(vsync),
        .I2(vsync_prev),
        .I3(reset),
        .O(v_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v_valid_reg_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(v_valid_reg_i_1_n_0),
        .Q(frame_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vde_prev_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(vde),
        .Q(vde_prev),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    vsync_prev_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(vsync),
        .Q(vsync_prev),
        .R(reset));
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
