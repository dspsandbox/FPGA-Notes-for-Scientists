library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity amplitude_ctrl is
    Generic (DATA_WIDTH : integer := 16);
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           amplitude : in STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_i_tdata : in STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_i_tvalid : in STD_LOGIC;
           data_o_tdata : out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_o_tvalid : out STD_LOGIC);
end amplitude_ctrl;

architecture Behavioral of amplitude_ctrl is
    signal mult_reg : signed(2*DATA_WIDTH - 1 downto 0) := (others => '0');
    signal valid_reg : std_logic := '0';
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if resetn = '0' then
                mult_reg <= (others => '0');
                valid_reg <= '0';
            else
                mult_reg <= signed(data_i_tdata) * signed(amplitude);
                valid_reg <= data_i_tvalid;
            end if;
        end if;
    end process;
    
    data_o_tvalid <= valid_reg;
    data_o_tdata <= std_logic_vector(mult_reg(2 * DATA_WIDTH - 2 downto DATA_WIDTH - 1));

                      
end Behavioral;
