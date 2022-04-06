library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dds_wrapper is
    Port ( 
        clk : in STD_LOGIC;
        phase_off : in STD_LOGIC_VECTOR(31 downto 0); -- phase offset
        phase_inc : in STD_LOGIC_VECTOR(31 downto 0); -- phase increment
        phase_clr : in STD_LOGIC;                     -- clear phase
        sin_tdata : out STD_LOGIC_VECTOR(15 downto 0);
        sin_tvalid : out STD_LOGIC;
        cos_tdata : out STD_LOGIC_VECTOR(15 downto 0);
        cos_tvalid : out STD_LOGIC
    );
end dds_wrapper;


architecture Behavioral of dds_wrapper is

    signal dds_i : STD_LOGIC_VECTOR(71 DOWNTO 0);
    signal dds_o : STD_LOGIC_VECTOR(31 DOWNTO 0);

    COMPONENT dds_compiler_0
      PORT (
        aclk : IN STD_LOGIC;
        s_axis_phase_tvalid : IN STD_LOGIC;
        s_axis_phase_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
    END COMPONENT;

    begin
        dds_instance : dds_compiler_0
          PORT MAP (
            aclk => clk,
            s_axis_phase_tvalid => '1',
            s_axis_phase_tdata => dds_i,
            m_axis_data_tdata => dds_o
          );
          
          dds_i(31 downto 0) <= phase_inc;
          dds_i(63 downto 32) <= phase_off;
          dds_i(64) <= phase_clr;
          dds_i(71 downto 65) <= (others => '0');
          
          cos_tdata <= dds_o(15 downto 0);
          cos_tvalid <= '1';
          sin_tdata <= dds_o(31 downto 16);
          sin_tvalid <= '1';
end Behavioral;
