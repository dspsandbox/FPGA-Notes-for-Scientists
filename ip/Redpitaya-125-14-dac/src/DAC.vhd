----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 08:39:37
-- Design Name: 
-- Module Name: DAC - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity DAC is
    Port ( clk_125 : in STD_LOGIC;
           clk_250 : in STD_LOGIC;
           clk_250_m45 : in STD_LOGIC;
           resetn : in STD_LOGIC;
           dac_data_1_tdata : in STD_LOGIC_VECTOR (15 downto 0);
           dac_data_1_tvalid : in STD_LOGIC;
           dac_data_2_tdata : in STD_LOGIC_VECTOR (15 downto 0);
           dac_data_2_tvalid : in STD_LOGIC;
           dac_data_o : out STD_LOGIC_VECTOR (13 downto 0);
           dac_clk_o: out STD_LOGIC;
           dac_wrt_o: out STD_LOGIC;
           dac_sel_o: out STD_LOGIC;
           dac_rst_o: out STD_LOGIC);
end DAC;

architecture Behavioral of DAC is
    signal  dac_rst : STD_LOGIC :='0';
	signal  dac_data_1 :  STD_LOGIC_VECTOR (13 downto 0):= (13 => '0', others=>'1');
    signal  dac_data_2 :  STD_LOGIC_VECTOR (13 downto 0):= (13 => '0', others=>'1');
    begin

        process(clk_125)
        begin
            if rising_edge(clk_125) then
                if resetn='0' then
                    dac_rst <= '1';
                    dac_data_1 <= (13 => '0', others=>'1');
                    dac_data_2 <= (13 => '0', others=>'1');
                else
                    dac_rst <= '0';
                    
                    if dac_data_1_tvalid='1' then
                        dac_data_1(13) <= dac_data_1_tdata(15);
                        dac_data_1(12 downto 0) <= not dac_data_1_tdata(14 downto 2);
                    end if;
                    
                    if dac_data_2_tvalid='1' then
                        dac_data_2(13) <=  dac_data_2_tdata(15);
                        dac_data_2(12 downto 0) <= not dac_data_2_tdata(14 downto 2);
                    end if;
                    
                end if;
            end if;
        
        end process;


        ODDR_dac_clk : ODDR
            generic map(
            DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"
            INIT => '0', -- Initial value for Q port ('1' or '0')
            SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
            port map (
            Q => dac_clk_o, -- 1-bit DDR output
            C => clk_250_m45, -- 1-bit clock input
            CE => '1', -- 1-bit clock enable input
            D1 => '0', -- 1-bit data input (positive edge)
            D2 => '1', -- 1-bit data input (negative edge)
            R => '0', -- 1-bit reset input
            S => '0' -- 1-bit set input
            );
        
        ODDR_dac_wrt : ODDR
            generic map(
            DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"
            INIT => '0', -- Initial value for Q port ('1' or '0')
            SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
            port map (
            Q => dac_wrt_o, -- 1-bit DDR output
            C => clk_250, -- 1-bit clock input
            CE => '1', -- 1-bit clock enable input
            D1 => '0', -- 1-bit data input (positive edge)
            D2 => '1', -- 1-bit data input (negative edge)
            R => '0', -- 1-bit reset input
            S => '0' -- 1-bit set input
            );
                
        ODDR_dac_sel : ODDR
            generic map(
            DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"
            INIT => '0', -- Initial value for Q port ('1' or '0')
            SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
            port map (
            Q => dac_sel_o, -- 1-bit DDR output
            C => clk_125, -- 1-bit clock input
            CE => '1', -- 1-bit clock enable input
            D1 => '1', -- 1-bit data input (positive edge)
            D2 => '0', -- 1-bit data input (negative edge)
            R => '0', -- 1-bit reset input
            S => '0' -- 1-bit set input
            );	
        ODDR_dac_rst : ODDR
            generic map(
            DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"
            INIT => '0', -- Initial value for Q port ('1' or '0')
            SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
            port map (
            Q => dac_rst_o, -- 1-bit DDR output
            C => clk_125, -- 1-bit clock input
            CE => '1', -- 1-bit clock enable input
            D1 => dac_rst, -- 1-bit data input (positive edge)
            D2 => dac_rst, -- 1-bit data input (negative edge)
            R => '0', -- 1-bit reset input
            S => '0' -- 1-bit set input
            );	
    
        GEN_ODDR_dac_data: for i in 0 to 13 generate
            ODDR_dac_data : ODDR
                generic map(
                DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"
                INIT => '0', -- Initial value for Q port ('1' or '0')
                SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
                port map (
                Q => dac_data_o(i), -- 1-bit DDR output
                C => clk_125, -- 1-bit clock input
                CE => '1', -- 1-bit clock enable input
                D1 => dac_data_2(i), -- 1-bit data input (positive edge)
                D2 => dac_data_1(i), -- 1-bit data input (negative edge)
                R => '0', -- 1-bit reset input
                S => '0' -- 1-bit set input
                );	
        end generate GEN_ODDR_dac_data;

end Behavioral;
