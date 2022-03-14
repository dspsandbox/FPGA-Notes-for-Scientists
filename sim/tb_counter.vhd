library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity counter_tb is
end counter_tb;

architecture tb of counter_tb is
    signal clk, resetn : std_logic;
    signal incr_i : std_logic_vector (31 downto 0); 
    signal counter_o : std_logic_vector (31 downto 0); 
begin
    -- connecting testbench signals with counter.vhd
    counter_instance : entity work.counter port map (clk => clk, resetn => resetn, incr_i => incr_i, counter_o => counter_o);

    -- clock (100MHz)
    process 
    begin
        clk <= '0';
        wait for 5ns;
        clk <= '1';
        wait for 5ns;
    end process;
    
    -- main simulation
    process 
    begin
        -- Set counter increment = 2
        incr_i <= std_logic_vector(to_unsigned(2, incr_i'length));
        
        -- enable core
        resetn <= '1'; 
        
        -- run 50ns
        wait for 50ns;
        
        -- Set counter increment = 4
        incr_i <= std_logic_vector(to_unsigned(4, incr_i'length));
        
        -- run 50ns
        wait for 50ns;
        
        --finish 
        wait;
    end process;
end tb ;
