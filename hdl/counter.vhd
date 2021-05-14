library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity counter is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           incr_i : in STD_LOGIC_VECTOR (31 downto 0);
           counter_o : out STD_LOGIC_VECTOR (31 downto 0));
end counter;


architecture Behavioral of counter is
    signal counter_reg : UNSIGNED (31 downto 0) := (others => '0');
    begin
        process(clk)
            begin
                if rising_edge(clk) then
                    if resetn = '0' then
                        counter_reg <= (others => '0');
                    else
                        counter_reg <= counter_reg + UNSIGNED(incr_i);
                    end if;
                end if;
        end process;

        counter_o <= STD_LOGIC_VECTOR(counter_reg);
end Behavioral;
