--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Fri May 28 08:20:46 2021
--Host        : 5CD010B25T running 64-bit major release  (build 9200)
--Command     : generate_target dac_bd.bd
--Design      : dac_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd is
  port (
    clk_125 : in STD_LOGIC;
    clk_250 : in STD_LOGIC;
    clk_250_m45 : in STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_data_1_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_data_1_tvalid : in STD_LOGIC;
    dac_data_2_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_data_2_tvalid : in STD_LOGIC;
    dac_data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_rst_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_wrt_o : out STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of dac_bd : entity is "dac_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dac_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of dac_bd : entity is "dac_bd.hwdef";
end dac_bd;

architecture STRUCTURE of dac_bd is
  component dac_bd_DAC_0_0 is
  port (
    clk_125 : in STD_LOGIC;
    clk_250 : in STD_LOGIC;
    clk_250_m45 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    dac_data_1_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_data_1_tvalid : in STD_LOGIC;
    dac_data_2_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_data_2_tvalid : in STD_LOGIC;
    dac_data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_clk_o : out STD_LOGIC;
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC
  );
  end component dac_bd_DAC_0_0;
  signal DAC_0_dac_clk_o : STD_LOGIC;
  signal DAC_0_dac_data_o : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal DAC_0_dac_rst_o : STD_LOGIC;
  signal DAC_0_dac_sel_o : STD_LOGIC;
  signal DAC_0_dac_wrt_o : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clk_dac_250_1 : STD_LOGIC;
  signal clk_dac_250_m45_1 : STD_LOGIC;
  signal dac_data_1_1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dac_data_1_1_TVALID : STD_LOGIC;
  signal dac_data_2_1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dac_data_2_1_TVALID : STD_LOGIC;
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_125 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_125 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_125 : signal is "XIL_INTERFACENAME CLK.CLK_125, ASSOCIATED_BUSIF dac_data_1:dac_data_2, ASSOCIATED_RESET resetn, CLK_DOMAIN dac_bd_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_250 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250 CLK";
  attribute X_INTERFACE_PARAMETER of clk_250 : signal is "XIL_INTERFACENAME CLK.CLK_250, CLK_DOMAIN dac_bd_clk_dac_250, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_250_m45 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250_M45 CLK";
  attribute X_INTERFACE_PARAMETER of clk_250_m45 : signal is "XIL_INTERFACENAME CLK.CLK_250_M45, CLK_DOMAIN dac_bd_clk_dac_250_m45, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE -45";
  attribute X_INTERFACE_INFO of dac_data_1_tvalid : signal is "xilinx.com:interface:axis:1.0 dac_data_1 TVALID";
  attribute X_INTERFACE_INFO of dac_data_2_tvalid : signal is "xilinx.com:interface:axis:1.0 dac_data_2 TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of dac_data_1_tdata : signal is "xilinx.com:interface:axis:1.0 dac_data_1 TDATA";
  attribute X_INTERFACE_PARAMETER of dac_data_1_tdata : signal is "XIL_INTERFACENAME dac_data_1, CLK_DOMAIN dac_bd_clk, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of dac_data_2_tdata : signal is "xilinx.com:interface:axis:1.0 dac_data_2 TDATA";
  attribute X_INTERFACE_PARAMETER of dac_data_2_tdata : signal is "XIL_INTERFACENAME dac_data_2, CLK_DOMAIN dac_bd_clk, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  clk_1 <= clk_125;
  clk_dac_250_1 <= clk_250;
  clk_dac_250_m45_1 <= clk_250_m45;
  dac_clk_o <= DAC_0_dac_clk_o;
  dac_data_1_1_TDATA(15 downto 0) <= dac_data_1_tdata(15 downto 0);
  dac_data_1_1_TVALID <= dac_data_1_tvalid;
  dac_data_2_1_TDATA(15 downto 0) <= dac_data_2_tdata(15 downto 0);
  dac_data_2_1_TVALID <= dac_data_2_tvalid;
  dac_data_o(13 downto 0) <= DAC_0_dac_data_o(13 downto 0);
  dac_rst_o <= DAC_0_dac_rst_o;
  dac_sel_o <= DAC_0_dac_sel_o;
  dac_wrt_o <= DAC_0_dac_wrt_o;
  resetn_1 <= resetn;
DAC_0: component dac_bd_DAC_0_0
     port map (
      clk_125 => clk_1,
      clk_250 => clk_dac_250_1,
      clk_250_m45 => clk_dac_250_m45_1,
      dac_clk_o => DAC_0_dac_clk_o,
      dac_data_1_tdata(15 downto 0) => dac_data_1_1_TDATA(15 downto 0),
      dac_data_1_tvalid => dac_data_1_1_TVALID,
      dac_data_2_tdata(15 downto 0) => dac_data_2_1_TDATA(15 downto 0),
      dac_data_2_tvalid => dac_data_2_1_TVALID,
      dac_data_o(13 downto 0) => DAC_0_dac_data_o(13 downto 0),
      dac_rst_o => DAC_0_dac_rst_o,
      dac_sel_o => DAC_0_dac_sel_o,
      dac_wrt_o => DAC_0_dac_wrt_o,
      resetn => resetn_1
    );
end STRUCTURE;
