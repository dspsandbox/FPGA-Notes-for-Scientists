-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:ADC:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY adc_bd_ADC_0_1 IS
  PORT (
    clk_125 : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    adc_data_1_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_data_2_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_data_1_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    adc_data_2_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    adc_data_1_tvalid : OUT STD_LOGIC;
    adc_data_2_tvalid : OUT STD_LOGIC
  );
END adc_bd_ADC_0_1;

ARCHITECTURE adc_bd_ADC_0_1_arch OF adc_bd_ADC_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF adc_bd_ADC_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT ADC IS
    PORT (
      clk_125 : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      adc_data_1_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_data_2_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_data_1_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      adc_data_2_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      adc_data_1_tvalid : OUT STD_LOGIC;
      adc_data_2_tvalid : OUT STD_LOGIC
    );
  END COMPONENT ADC;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF adc_bd_ADC_0_1_arch: ARCHITECTURE IS "ADC,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF adc_bd_ADC_0_1_arch : ARCHITECTURE IS "adc_bd_ADC_0_1,ADC,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF adc_bd_ADC_0_1_arch: ARCHITECTURE IS "adc_bd_ADC_0_1,ADC,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ADC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF adc_bd_ADC_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF adc_data_2_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 adc_data_2 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF adc_data_1_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 adc_data_1 TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF adc_data_2_tdata: SIGNAL IS "XIL_INTERFACENAME adc_data_2, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF adc_data_2_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 adc_data_2 TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF adc_data_1_tdata: SIGNAL IS "XIL_INTERFACENAME adc_data_1, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF adc_data_1_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 adc_data_1 TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn RST";
BEGIN
  U0 : ADC
    PORT MAP (
      clk_125 => clk_125,
      resetn => resetn,
      adc_data_1_i => adc_data_1_i,
      adc_data_2_i => adc_data_2_i,
      adc_data_1_tdata => adc_data_1_tdata,
      adc_data_2_tdata => adc_data_2_tdata,
      adc_data_1_tvalid => adc_data_1_tvalid,
      adc_data_2_tvalid => adc_data_2_tvalid
    );
END adc_bd_ADC_0_1_arch;
