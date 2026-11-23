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

-- IP VLNV: xilinx.com:module_ref:FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY HDMI_bd_FSM_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    run : IN STD_LOGIC;
    quit : IN STD_LOGIC;
    difficulty : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    q_pass : IN STD_LOGIC;
    new_round : OUT STD_LOGIC;
    diff_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    mode_ui : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    sec : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    score_courant : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    record_perso : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END HDMI_bd_FSM_0_0;

ARCHITECTURE HDMI_bd_FSM_0_0_arch OF HDMI_bd_FSM_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF HDMI_bd_FSM_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT FSM IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      run : IN STD_LOGIC;
      quit : IN STD_LOGIC;
      difficulty : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      q_pass : IN STD_LOGIC;
      new_round : OUT STD_LOGIC;
      diff_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      mode_ui : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      sec : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      score_courant : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      record_perso : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
    );
  END COMPONENT FSM;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF HDMI_bd_FSM_0_0_arch: ARCHITECTURE IS "FSM,Vivado 2018.2.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF HDMI_bd_FSM_0_0_arch : ARCHITECTURE IS "HDMI_bd_FSM_0_0,FSM,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF HDMI_bd_FSM_0_0_arch: ARCHITECTURE IS "HDMI_bd_FSM_0_0,FSM,{x_ipProduct=Vivado 2018.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF HDMI_bd_FSM_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : FSM
    PORT MAP (
      clk => clk,
      reset => reset,
      run => run,
      quit => quit,
      difficulty => difficulty,
      q_pass => q_pass,
      new_round => new_round,
      diff_out => diff_out,
      mode_ui => mode_ui,
      sec => sec,
      score_courant => score_courant,
      record_perso => record_perso
    );
END HDMI_bd_FSM_0_0_arch;
