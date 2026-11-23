--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
--Date        : Sun Nov 22 20:04:48 2026
--Host        : pcetu-129 running 64-bit major release  (build 9200)
--Command     : generate_target HDMI_bd.bd
--Design      : HDMI_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd is
  port (
    CLK : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    sw0 : in STD_LOGIC;
    sw1 : in STD_LOGIC;
    sw2 : in STD_LOGIC;
    sw3 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of HDMI_bd : entity is "HDMI_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=HDMI_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of HDMI_bd : entity is "HDMI_bd.hwdef";
end HDMI_bd;

architecture STRUCTURE of HDMI_bd is
  component HDMI_bd_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component HDMI_bd_xlconstant_0_0;
  component HDMI_bd_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component HDMI_bd_clk_wiz_0_0;
  component HDMI_bd_dvi2rgb_0_0 is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SDA_O : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    SCL_I : in STD_LOGIC;
    SCL_O : out STD_LOGIC;
    SCL_T : out STD_LOGIC;
    pRst : in STD_LOGIC
  );
  end component HDMI_bd_dvi2rgb_0_0;
  component HDMI_bd_rgb2dvi_0_0 is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC
  );
  end component HDMI_bd_rgb2dvi_0_0;
  component HDMI_bd_Generateur_mur_0_1 is
  port (
    NewRandom : in STD_LOGIC;
    Mur_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk : in STD_LOGIC
  );
  end component HDMI_bd_Generateur_mur_0_1;
  component HDMI_bd_Pixel_counter_0_0 is
  port (
    clk_pixel : in STD_LOGIC;
    vsync : in STD_LOGIC;
    vde : in STD_LOGIC;
    pixel_x : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component HDMI_bd_Pixel_counter_0_0;
  component HDMI_bd_Presence_mur_0_0 is
  port (
    pixel_x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wall_mask : in STD_LOGIC_VECTOR ( 31 downto 0 );
    is_mur : out STD_LOGIC
  );
  end component HDMI_bd_Presence_mur_0_0;
  component HDMI_bd_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    quit : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q_pass : in STD_LOGIC;
    new_round : out STD_LOGIC;
    diff_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mode_ui : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    score_courant : out STD_LOGIC_VECTOR ( 5 downto 0 );
    record_perso : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component HDMI_bd_FSM_0_0;
  component HDMI_bd_detection_joueur_0_0 is
  port (
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    is_pixel_joueur : out STD_LOGIC
  );
  end component HDMI_bd_detection_joueur_0_0;
  component HDMI_bd_test_0_0 is
  port (
    is_mur : in STD_LOGIC;
    is_pixel_joueur : in STD_LOGIC;
    rbg_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rbg_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component HDMI_bd_test_0_0;
  signal CLK_1 : STD_LOGIC;
  signal FSM_0_new_round : STD_LOGIC;
  signal Generateur_mur_0_Mur_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Pixel_counter_0_pixel_x : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Pixel_counter_0_pixel_y : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Presence_mur_0_is_mur : STD_LOGIC;
  signal btn0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal detection_joueur_0_is_pixel_joueur : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_T : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_T : STD_LOGIC;
  signal dvi2rgb_0_PixelClk : STD_LOGIC;
  signal dvi2rgb_0_vid_pData : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dvi2rgb_0_vid_pHSync : STD_LOGIC;
  signal dvi2rgb_0_vid_pVDE : STD_LOGIC;
  signal dvi2rgb_0_vid_pVSync : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal sw0_1 : STD_LOGIC;
  signal sw1_1 : STD_LOGIC;
  signal sw2_1 : STD_LOGIC;
  signal test_0_rbg_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_FSM_0_diff_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_FSM_0_mode_ui_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_FSM_0_record_perso_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_FSM_0_score_courant_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_FSM_0_sec_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_dvi2rgb_0_aPixelClkLckd_UNCONNECTED : STD_LOGIC;
  signal NLW_rgb2dvi_0_TMDS_Clk_n_UNCONNECTED : STD_LOGIC;
  signal NLW_rgb2dvi_0_TMDS_Clk_p_UNCONNECTED : STD_LOGIC;
  signal NLW_rgb2dvi_0_TMDS_Data_n_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_rgb2dvi_0_TMDS_Data_p_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN HDMI_bd_CLK, FREQ_HZ 125000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_T";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_T";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH";
begin
  CLK_1 <= CLK;
  btn0_1 <= btn0;
  dvi2rgb_0_DDC_SCL_I <= hdmi_in_ddc_scl_i;
  dvi2rgb_0_DDC_SDA_I <= hdmi_in_ddc_sda_i;
  hdmi_in_ddc_scl_o <= dvi2rgb_0_DDC_SCL_O;
  hdmi_in_ddc_scl_t <= dvi2rgb_0_DDC_SCL_T;
  hdmi_in_ddc_sda_o <= dvi2rgb_0_DDC_SDA_O;
  hdmi_in_ddc_sda_t <= dvi2rgb_0_DDC_SDA_T;
  hdmi_in_hpd(0) <= xlconstant_0_dout(0);
  reset_1 <= reset;
  sw0_1 <= sw0;
  sw1_1 <= sw1;
  sw2_1 <= sw2;
FSM_0: component HDMI_bd_FSM_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      diff_out(1 downto 0) => NLW_FSM_0_diff_out_UNCONNECTED(1 downto 0),
      difficulty(1) => sw2_1,
      difficulty(0) => sw2_1,
      mode_ui(2 downto 0) => NLW_FSM_0_mode_ui_UNCONNECTED(2 downto 0),
      new_round => FSM_0_new_round,
      q_pass => sw1_1,
      quit => btn0_1,
      record_perso(5 downto 0) => NLW_FSM_0_record_perso_UNCONNECTED(5 downto 0),
      reset => reset_1,
      run => sw0_1,
      score_courant(5 downto 0) => NLW_FSM_0_score_courant_UNCONNECTED(5 downto 0),
      sec(3 downto 0) => NLW_FSM_0_sec_UNCONNECTED(3 downto 0)
    );
Generateur_mur_0: component HDMI_bd_Generateur_mur_0_1
     port map (
      Clk => clk_wiz_0_clk_out1,
      Mur_out(31 downto 0) => Generateur_mur_0_Mur_out(31 downto 0),
      NewRandom => FSM_0_new_round
    );
Pixel_counter_0: component HDMI_bd_Pixel_counter_0_0
     port map (
      clk_pixel => dvi2rgb_0_PixelClk,
      pixel_x(11 downto 0) => Pixel_counter_0_pixel_x(11 downto 0),
      pixel_y(11 downto 0) => Pixel_counter_0_pixel_y(11 downto 0),
      vde => dvi2rgb_0_vid_pVDE,
      vsync => dvi2rgb_0_vid_pVSync
    );
Presence_mur_0: component HDMI_bd_Presence_mur_0_0
     port map (
      is_mur => Presence_mur_0_is_mur,
      pixel_x(11 downto 0) => Pixel_counter_0_pixel_x(11 downto 0),
      pixel_y(11 downto 0) => Pixel_counter_0_pixel_y(11 downto 0),
      wall_mask(31 downto 0) => Generateur_mur_0_Mur_out(31 downto 0)
    );
clk_wiz_0: component HDMI_bd_clk_wiz_0_0
     port map (
      clk_in1 => CLK_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => reset_1
    );
detection_joueur_0: component HDMI_bd_detection_joueur_0_0
     port map (
      is_pixel_joueur => detection_joueur_0_is_pixel_joueur,
      rgb_in(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0)
    );
dvi2rgb_0: component HDMI_bd_dvi2rgb_0_0
     port map (
      PixelClk => dvi2rgb_0_PixelClk,
      RefClk => clk_wiz_0_clk_out1,
      SCL_I => dvi2rgb_0_DDC_SCL_I,
      SCL_O => dvi2rgb_0_DDC_SCL_O,
      SCL_T => dvi2rgb_0_DDC_SCL_T,
      SDA_I => dvi2rgb_0_DDC_SDA_I,
      SDA_O => dvi2rgb_0_DDC_SDA_O,
      SDA_T => dvi2rgb_0_DDC_SDA_T,
      TMDS_Clk_n => '0',
      TMDS_Clk_p => '0',
      TMDS_Data_n(2 downto 0) => B"000",
      TMDS_Data_p(2 downto 0) => B"000",
      aPixelClkLckd => NLW_dvi2rgb_0_aPixelClkLckd_UNCONNECTED,
      aRst => reset_1,
      pRst => reset_1,
      vid_pData(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      vid_pHSync => dvi2rgb_0_vid_pHSync,
      vid_pVDE => dvi2rgb_0_vid_pVDE,
      vid_pVSync => dvi2rgb_0_vid_pVSync
    );
rgb2dvi_0: component HDMI_bd_rgb2dvi_0_0
     port map (
      PixelClk => dvi2rgb_0_PixelClk,
      TMDS_Clk_n => NLW_rgb2dvi_0_TMDS_Clk_n_UNCONNECTED,
      TMDS_Clk_p => NLW_rgb2dvi_0_TMDS_Clk_p_UNCONNECTED,
      TMDS_Data_n(2 downto 0) => NLW_rgb2dvi_0_TMDS_Data_n_UNCONNECTED(2 downto 0),
      TMDS_Data_p(2 downto 0) => NLW_rgb2dvi_0_TMDS_Data_p_UNCONNECTED(2 downto 0),
      aRst => reset_1,
      vid_pData(23 downto 0) => test_0_rbg_out(23 downto 0),
      vid_pHSync => dvi2rgb_0_vid_pHSync,
      vid_pVDE => dvi2rgb_0_vid_pVDE,
      vid_pVSync => dvi2rgb_0_vid_pVSync
    );
test_0: component HDMI_bd_test_0_0
     port map (
      is_mur => Presence_mur_0_is_mur,
      is_pixel_joueur => detection_joueur_0_is_pixel_joueur,
      rbg_in(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      rbg_out(23 downto 0) => test_0_rbg_out(23 downto 0)
    );
xlconstant_0: component HDMI_bd_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
