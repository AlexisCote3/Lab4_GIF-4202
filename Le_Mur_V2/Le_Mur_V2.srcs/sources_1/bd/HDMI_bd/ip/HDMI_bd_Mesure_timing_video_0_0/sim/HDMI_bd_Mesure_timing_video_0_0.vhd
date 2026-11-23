-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:Mesure_timing_video:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY HDMI_bd_Mesure_timing_video_0_0 IS
  PORT (
    clk_pixel : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    vde : IN STD_LOGIC;
    hsync : IN STD_LOGIC;
    vsync : IN STD_LOGIC;
    h_total : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    h_active : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    h_blank : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    mesure_valid : OUT STD_LOGIC;
    v_total : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    v_active : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    v_blank : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    frame_valid : OUT STD_LOGIC
  );
END HDMI_bd_Mesure_timing_video_0_0;

ARCHITECTURE HDMI_bd_Mesure_timing_video_0_0_arch OF HDMI_bd_Mesure_timing_video_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF HDMI_bd_Mesure_timing_video_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Mesure_timing_video IS
    PORT (
      clk_pixel : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      vde : IN STD_LOGIC;
      hsync : IN STD_LOGIC;
      vsync : IN STD_LOGIC;
      h_total : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      h_active : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      h_blank : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      mesure_valid : OUT STD_LOGIC;
      v_total : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      v_active : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      v_blank : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      frame_valid : OUT STD_LOGIC
    );
  END COMPONENT Mesure_timing_video;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF HDMI_bd_Mesure_timing_video_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : Mesure_timing_video
    PORT MAP (
      clk_pixel => clk_pixel,
      reset => reset,
      vde => vde,
      hsync => hsync,
      vsync => vsync,
      h_total => h_total,
      h_active => h_active,
      h_blank => h_blank,
      mesure_valid => mesure_valid,
      v_total => v_total,
      v_active => v_active,
      v_blank => v_blank,
      frame_valid => frame_valid
    );
END HDMI_bd_Mesure_timing_video_0_0_arch;
