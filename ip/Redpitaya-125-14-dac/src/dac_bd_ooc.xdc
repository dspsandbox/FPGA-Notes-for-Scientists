################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_125 -period 8 [get_ports clk_125]
create_clock -name clk_250 -period 4 [get_ports clk_250]
create_clock -name clk_250_m45 -period 4 [get_ports clk_250_m45]

################################################################################