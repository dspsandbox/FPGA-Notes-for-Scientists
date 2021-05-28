--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Fri May 28 08:15:09 2021
--Host        : 5CD010B25T running 64-bit major release  (build 9200)
--Command     : generate_target adc_bd.bd
--Design      : adc_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_bd is
  port (
    adc_data_1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_1_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_1_tvalid : out STD_LOGIC;
    adc_data_2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_2_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_2_tvalid : out STD_LOGIC;
    clk_125 : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of adc_bd : entity is "adc_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=adc_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of adc_bd : entity is "adc_bd.hwdef";
end adc_bd;

architecture STRUCTURE of adc_bd is
  component adc_bd_ADC_0_1 is
  port (
    clk_125 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    adc_data_1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_1_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_2_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_1_tvalid : out STD_LOGIC;
    adc_data_2_tvalid : out STD_LOGIC
  );
  end component adc_bd_ADC_0_1;
  signal ADC_0_adc_data_1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ADC_0_adc_data_1_TVALID : STD_LOGIC;
  signal ADC_0_adc_data_2_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ADC_0_adc_data_2_TVALID : STD_LOGIC;
  signal adc_data_1_i_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal adc_data_2_i_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal clk_125_1 : STD_LOGIC;
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_data_1_tvalid : signal is "xilinx.com:interface:axis:1.0 adc_data_1 TVALID";
  attribute X_INTERFACE_INFO of adc_data_2_tvalid : signal is "xilinx.com:interface:axis:1.0 adc_data_2 TVALID";
  attribute X_INTERFACE_INFO of clk_125 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_125 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_125 : signal is "XIL_INTERFACENAME CLK.CLK_125, CLK_DOMAIN adc_bd_clk_125, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of adc_data_1_tdata : signal is "xilinx.com:interface:axis:1.0 adc_data_1 TDATA";
  attribute X_INTERFACE_PARAMETER of adc_data_1_tdata : signal is "XIL_INTERFACENAME adc_data_1, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of adc_data_2_tdata : signal is "xilinx.com:interface:axis:1.0 adc_data_2 TDATA";
  attribute X_INTERFACE_PARAMETER of adc_data_2_tdata : signal is "XIL_INTERFACENAME adc_data_2, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  adc_data_1_i_1(13 downto 0) <= adc_data_1_i(13 downto 0);
  adc_data_1_tdata(15 downto 0) <= ADC_0_adc_data_1_TDATA(15 downto 0);
  adc_data_1_tvalid <= ADC_0_adc_data_1_TVALID;
  adc_data_2_i_1(13 downto 0) <= adc_data_2_i(13 downto 0);
  adc_data_2_tdata(15 downto 0) <= ADC_0_adc_data_2_TDATA(15 downto 0);
  adc_data_2_tvalid <= ADC_0_adc_data_2_TVALID;
  clk_125_1 <= clk_125;
  resetn_1 <= resetn;
ADC_0: component adc_bd_ADC_0_1
     port map (
      adc_data_1_i(13 downto 0) => adc_data_1_i_1(13 downto 0),
      adc_data_1_tdata(15 downto 0) => ADC_0_adc_data_1_TDATA(15 downto 0),
      adc_data_1_tvalid => ADC_0_adc_data_1_TVALID,
      adc_data_2_i(13 downto 0) => adc_data_2_i_1(13 downto 0),
      adc_data_2_tdata(15 downto 0) => ADC_0_adc_data_2_TDATA(15 downto 0),
      adc_data_2_tvalid => ADC_0_adc_data_2_TVALID,
      clk_125 => clk_125_1,
      resetn => resetn_1
    );
end STRUCTURE;
