library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity stream_dec is
    Generic( data_width : integer := 16);
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           dec : in STD_LOGIC_VECTOR(31 downto 0);
           stream_i_tdata : in STD_LOGIC_VECTOR(data_width - 1 downto 0);
           stream_i_tvalid : in STD_LOGIC;
           stream_i_tready : out STD_LOGIC;           
           stream_o_tdata: out STD_LOGIC_VECTOR(data_width - 1 downto 0);
           stream_o_tvalid : out STD_LOGIC;
           stream_o_tready : in STD_LOGIC           

           );
end stream_dec;

architecture Behavioral of stream_dec is
    signal counter : UNSIGNED(31 downto 0) := (others => '0');
    
    begin
        process(clk)
            begin
                if rising_edge(clk) then
                    if resetn='0' then
                        counter <= to_unsigned(1, counter'length); 
                    else
                        if counter < unsigned(dec) then
                            counter <= counter + 1;
                        else 
                            counter <= to_unsigned(1, counter'length);
                        end if;
                    end if;
                end if;
        end process;

stream_o_tdata <= stream_i_tdata;

stream_o_tvalid <= stream_i_tvalid when (counter = 1) else
                   '0';
                   
stream_i_tready <= stream_o_tready when (counter = 1) else
                   '0';

end Behavioral;

