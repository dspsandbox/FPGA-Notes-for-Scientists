library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity offset_ctrl is
    Generic (data_width : integer := 16);
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           offset : in STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_i_tdata : in STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_i_tvalid : in STD_LOGIC;
           data_o_tdata : out STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_o_tvalid : out STD_LOGIC);
end offset_ctrl;

architecture Behavioral of offset_ctrl is
    signal sum_reg : signed(data_width - 1 downto 0) := (others => '0');
    signal sign_data_reg : std_logic := '0';
    signal sign_offset_reg : std_logic := '0';
    signal valid_reg : std_logic := '0';
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if resetn = '0' then
                sum_reg <= (others => '0');
                sign_data_reg <= '0';
                sign_offset_reg <= '0';
                valid_reg <= '0';
            else
                sum_reg <= signed(data_i_tdata) + signed(offset);
                sign_data_reg <= data_i_tdata(data_width - 1);
                sign_offset_reg <= offset(data_width - 1);
                valid_reg <= data_i_tvalid;
            end if;
        end if;
    end process;
    
    data_o_tvalid <= valid_reg;

    -- Overflow protection:
    data_o_tdata <= (data_width - 1 => sign_data_reg, others => not(sign_data_reg) ) when (sign_data_reg = sign_offset_reg) and (sign_data_reg /= sum_reg(data_width - 1)) else
                      std_logic_vector(sum_reg);

                      
end Behavioral;
