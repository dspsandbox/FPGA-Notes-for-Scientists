----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2021 19:40:32
-- Design Name: 
-- Module Name: ADC - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADC is
    Port ( clk_125 : in std_logic;
           resetn : in  std_logic;
           adc_data_1_i : in std_logic_vector (13 downto 0);
           adc_data_2_i : in std_logic_vector (13 downto 0);
           adc_data_1_tdata : out std_logic_vector (15 downto 0);
           adc_data_2_tdata : out std_logic_vector (15 downto 0);
           adc_data_1_tvalid : out std_logic;
           adc_data_2_tvalid : out std_logic
           );
end ADC;

architecture Behavioral of ADC is
    signal data_1 : std_logic_vector (13 downto 0) := (others => '0');
    signal data_2 : std_logic_vector (13 downto 0) := (others => '0');
    signal valid : std_logic := '0';
    
    begin
        process(clk_125)
            begin
                if rising_edge(clk_125) then
                    if resetn = '0' then
                        data_1 <= (others => '0');   
                        data_2 <= (others => '0');   
                        valid <= '0';
                    else  
                        data_1 <= adc_data_1_i;
                        data_2 <= adc_data_2_i;
                        valid <= '1';
                    end if;
                end if;
        end process;

        adc_data_1_tdata(15) <= data_1(13);
        adc_data_1_tdata(14 downto 2) <= not data_1(12 downto 0);
        adc_data_1_tdata(1 downto 0) <=  (others => '0');
        
        adc_data_2_tdata(15) <= data_2(13);
        adc_data_2_tdata(14 downto 2) <= not data_2(12 downto 0);
        adc_data_2_tdata(1 downto 0) <= (others => '0');
        
        adc_data_1_tvalid <= valid;
        adc_data_2_tvalid <= valid;
        
       
end Behavioral;
