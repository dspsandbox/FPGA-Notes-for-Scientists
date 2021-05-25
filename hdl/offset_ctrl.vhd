library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity offset_ctrl is
    Generic (data_width : integer := 16);
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           offset_1 : in STD_LOGIC_VECTOR (data_width - 1 downto 0);
           offset_2 : in STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_1_i_tdata : in STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_1_i_tvalid : in STD_LOGIC;
           data_2_i_tdata : in STD_LOGIC_VECTOR(data_width - 1 downto 0);
           data_2_i_tvalid : in STD_LOGIC;
           data_1_o_tdata : out STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_1_o_tvalid : out STD_LOGIC;
           data_2_o_tdata : out STD_LOGIC_VECTOR (data_width - 1 downto 0);
           data_2_o_tvalid : out STD_LOGIC);
end offset_ctrl;

architecture Behavioral of offset_ctrl is
    signal data_1_reg : signed(data_width - 1 downto 0) := (others => '0');
    signal data_2_reg : signed(data_width - 1 downto 0) := (others => '0');
    signal valid_1_reg : std_logic := '0';
    signal valid_2_reg : std_logic := '0';
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if resetn = '0' then
                data_1_reg <= (others => '0');
                data_2_reg <= (others => '0');
                valid_1_reg <= '0';
                valid_2_reg <= '0';
            else
                data_1_reg <= signed(data_1_i_tdata) + signed(offset_1);
                data_2_reg <= signed(data_2_i_tdata) + signed(offset_2);
                valid_1_reg <= data_1_i_tvalid;
                valid_2_reg <= data_2_i_tvalid;
            end if;
        end if;
    end process;

    data_1_o_tdata <= std_logic_vector(data_1_reg);
    data_2_o_tdata <= std_logic_vector(data_2_reg);
    data_1_o_tvalid <= valid_1_reg;
    data_2_o_tvalid <= valid_2_reg;
end Behavioral;
