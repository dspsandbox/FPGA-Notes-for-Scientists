library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_wave is
    Port ( 
        clk : in STD_LOGIC;
        resetn : in STD_LOGIC;
        waveform_tdata : out STD_LOGIC_VECTOR(15 downto 0);
        waveform_tvalid : out STD_LOGIC
    );
end test_wave;

architecture Behavioral of test_wave is
    signal counter_reg : unsigned (15 downto 0) := (others => '0');
    begin
        process(clk)
            begin
            if rising_edge(clk) then
                if resetn='0' then
                    counter_reg <= (others => '0');
                else 
                    counter_reg <= counter_reg + 1;
                end if;
            end if;
            
        end process;


    waveform_tdata <= std_logic_vector(counter_reg);
    waveform_tvalid <= '1';

end Behavioral;
