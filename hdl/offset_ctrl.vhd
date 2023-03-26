library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity offset_ctrl is
    Generic (DATA_WIDTH : integer := 16);
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           offset : in STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_i_tdata : in STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_i_tvalid : in STD_LOGIC;
           data_o_tdata : out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_o_tvalid : out STD_LOGIC);
end offset_ctrl;

architecture Behavioral of offset_ctrl is
    signal sum_reg : signed(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal valid_reg : std_logic := '0';
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if resetn = '0' then
                sum_reg <= (others => '0');
                valid_reg <= '0';
            else
                sum_reg <= signed(data_i_tdata) + signed(offset);
                valid_reg <= data_i_tvalid;
            end if;
        end if;
    end process;
    
    data_o_tvalid <= valid_reg;
    data_o_tdata <= std_logic_vector(sum_reg);

                      
end Behavioral;
