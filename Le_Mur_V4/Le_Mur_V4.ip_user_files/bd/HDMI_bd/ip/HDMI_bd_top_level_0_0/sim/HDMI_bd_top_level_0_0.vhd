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

-- IP VLNV: xilinx.com:module_ref:top_level:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY HDMI_bd_top_level_0_0 IS
  PORT (
    pixel_clk : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    rgb_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    vsync : IN STD_LOGIC;
    vde : IN STD_LOGIC;
    hsync : IN STD_LOGIC;
    rgb_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    run : IN STD_LOGIC;
    quit : IN STD_LOGIC;
    diff : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END HDMI_bd_top_level_0_0;

ARCHITECTURE HDMI_bd_top_level_0_0_arch OF HDMI_bd_top_level_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF HDMI_bd_top_level_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT top_level IS
    GENERIC (
      SCREEN_WIDTH : INTEGER;
      SCREEN_HEIGHT : INTEGER;
      wall_height : INTEGER;
      wall_width : INTEGER;
      WALL_ONE_IS_OPENING : BOOLEAN;
      DEBUG_JOUEUR : BOOLEAN;
      MIN_PLAYER_PIXELS : INTEGER;
      MAX_COLLISION_PIXELS : INTEGER;
      COUNT_BITS : INTEGER;
      DARK_THRESH : INTEGER
    );
    PORT (
      pixel_clk : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      rgb_in : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      vsync : IN STD_LOGIC;
      vde : IN STD_LOGIC;
      hsync : IN STD_LOGIC;
      rgb_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      run : IN STD_LOGIC;
      quit : IN STD_LOGIC;
      diff : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT top_level;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF HDMI_bd_top_level_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pixel_clk: SIGNAL IS "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN HDMI_bd_dvi2rgb_1_0_PixelClk";
  ATTRIBUTE X_INTERFACE_INFO OF pixel_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 pixel_clk CLK";
BEGIN
  U0 : top_level
    GENERIC MAP (
      SCREEN_WIDTH => 1600,
      SCREEN_HEIGHT => 900,
      wall_height => 4,
      wall_width => 8,
      WALL_ONE_IS_OPENING => true,
      DEBUG_JOUEUR => false,
      MIN_PLAYER_PIXELS => 1000,
      MAX_COLLISION_PIXELS => 500,
      COUNT_BITS => 21,
      DARK_THRESH => 50
    )
    PORT MAP (
      pixel_clk => pixel_clk,
      clk => clk,
      reset => reset,
      rgb_in => rgb_in,
      vsync => vsync,
      vde => vde,
      hsync => hsync,
      rgb_out => rgb_out,
      run => run,
      quit => quit,
      diff => diff
    );
END HDMI_bd_top_level_0_0_arch;
