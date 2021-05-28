--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu May 27 17:07:36 2021
--Host        : 5CD010B25T running 64-bit major release  (build 9200)
--Command     : generate_target clk_bd.bd
--Design      : clk_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_bd is
  port (
    adc_cdcs_o : out STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_clk_p_i : in STD_LOGIC;
    clk_125 : out STD_LOGIC;
    clk_250 : out STD_LOGIC;
    clk_250_m45 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clk_bd : entity is "clk_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clk_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clk_bd : entity is "clk_bd.hwdef";
end clk_bd;

architecture STRUCTURE of clk_bd is
  component clk_bd_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_125 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_250 : out STD_LOGIC;
    clk_250_m45 : out STD_LOGIC
  );
  end component clk_bd_clk_wiz_0_0;
  component clk_bd_clockStabilization_0_0 is
  port (
    adc_cdcs_o : out STD_LOGIC
  );
  end component clk_bd_clockStabilization_0_0;
  signal adc_clk_n_i_1 : STD_LOGIC;
  signal adc_clk_p_i_1 : STD_LOGIC;
  signal clk_wiz_0_clk_125 : STD_LOGIC;
  signal clk_wiz_0_clk_250 : STD_LOGIC;
  signal clk_wiz_0_clk_250_m45 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clockStabilization_0_adc_cdcs_o : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_125 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_125 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_125 : signal is "XIL_INTERFACENAME CLK.CLK_125, CLK_DOMAIN clk_bd_clk_wiz_0_0_clk_125, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_250 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250 CLK";
  attribute X_INTERFACE_PARAMETER of clk_250 : signal is "XIL_INTERFACENAME CLK.CLK_250, CLK_DOMAIN clk_bd_clk_wiz_0_0_clk_125, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_250_m45 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250_M45 CLK";
  attribute X_INTERFACE_PARAMETER of clk_250_m45 : signal is "XIL_INTERFACENAME CLK.CLK_250_M45, CLK_DOMAIN clk_bd_clk_wiz_0_0_clk_125, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE -45.0";
begin
  adc_cdcs_o <= clockStabilization_0_adc_cdcs_o;
  adc_clk_n_i_1 <= adc_clk_n_i;
  adc_clk_p_i_1 <= adc_clk_p_i;
  clk_125 <= clk_wiz_0_clk_125;
  clk_250 <= clk_wiz_0_clk_250;
  clk_250_m45 <= clk_wiz_0_clk_250_m45;
  locked <= clk_wiz_0_locked;
clk_wiz_0: component clk_bd_clk_wiz_0_0
     port map (
      clk_125 => clk_wiz_0_clk_125,
      clk_250 => clk_wiz_0_clk_250,
      clk_250_m45 => clk_wiz_0_clk_250_m45,
      clk_in1_n => adc_clk_n_i_1,
      clk_in1_p => adc_clk_p_i_1,
      locked => clk_wiz_0_locked
    );
clockStabilization_0: component clk_bd_clockStabilization_0_0
     port map (
      adc_cdcs_o => clockStabilization_0_adc_cdcs_o
    );
end STRUCTURE;
