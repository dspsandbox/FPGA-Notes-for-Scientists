library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity pwm is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           incr_i : in STD_LOGIC_VECTOR (31 downto 0);
           duty_cycle_i : in STD_LOGIC_VECTOR (31 downto 0);
           pwm_o : out STD_LOGIC);
end pwm;


architecture Behavioral of pwm is
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

        pwm_o <=  '1' when counter_reg < UNSIGNED(duty_cycle_i) else
                  '0';
end Behavioral;
