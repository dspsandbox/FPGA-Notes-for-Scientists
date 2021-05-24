--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Mon May 24 12:58:03 2021
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
    adc_cdcs_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc_clk_n_i : in STD_LOGIC;
    adc_clk_p_i : in STD_LOGIC;
    clk_125 : out STD_LOGIC;
    clk_250_m120 : out STD_LOGIC;
    clk_250_m150 : out STD_LOGIC;
    resetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clk_bd : entity is "clk_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clk_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clk_bd : entity is "clk_bd.hwdef";
end clk_bd;

architecture STRUCTURE of clk_bd is
  component clk_bd_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_125 : out STD_LOGIC;
    clk_250_m150 : out STD_LOGIC;
    clk_250_m120 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component clk_bd_clk_wiz_0_0;
  component clk_bd_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component clk_bd_proc_sys_reset_0_0;
  component clk_bd_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component clk_bd_xlconstant_0_0;
  component clk_bd_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component clk_bd_xlconstant_1_0;
  signal adc_clk_n_i_1 : STD_LOGIC;
  signal adc_clk_p_i_1 : STD_LOGIC;
  signal clk_wiz_0_clk_125 : STD_LOGIC;
  signal clk_wiz_0_clk_250_m120 : STD_LOGIC;
  signal clk_wiz_0_clk_250_m150 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_125 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_125 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_125 : signal is "XIL_INTERFACENAME CLK.CLK_125, CLK_DOMAIN clk_bd_clk_wiz_0_0_clk_125, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_250_m120 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250_M120 CLK";
  attribute X_INTERFACE_PARAMETER of clk_250_m120 : signal is "XIL_INTERFACENAME CLK.CLK_250_M120, CLK_DOMAIN clk_bd_clk_wiz_0_0_clk_125, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE -120.0";
  attribute X_INTERFACE_INFO of clk_250_m150 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250_M150 CLK";
  attribute X_INTERFACE_PARAMETER of clk_250_m150 : signal is "XIL_INTERFACENAME CLK.CLK_250_M150, CLK_DOMAIN clk_bd_clk_wiz_0_0_clk_125, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE -150.0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  adc_cdcs_o(0) <= xlconstant_1_dout(0);
  adc_clk_n_i_1 <= adc_clk_n_i;
  adc_clk_p_i_1 <= adc_clk_p_i;
  clk_125 <= clk_wiz_0_clk_125;
  clk_250_m120 <= clk_wiz_0_clk_250_m120;
  clk_250_m150 <= clk_wiz_0_clk_250_m150;
  resetn(0) <= proc_sys_reset_0_peripheral_aresetn(0);
clk_wiz_0: component clk_bd_clk_wiz_0_0
     port map (
      clk_125 => clk_wiz_0_clk_125,
      clk_250_m120 => clk_wiz_0_clk_250_m120,
      clk_250_m150 => clk_wiz_0_clk_250_m150,
      clk_in1_n => adc_clk_n_i_1,
      clk_in1_p => adc_clk_p_i_1,
      locked => clk_wiz_0_locked
    );
proc_sys_reset_0: component clk_bd_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => xlconstant_0_dout(0),
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_125
    );
xlconstant_0: component clk_bd_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component clk_bd_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
