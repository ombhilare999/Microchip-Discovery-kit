# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1721919913 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {mydesign|REF_CLK_0} [get_ports {REF_CLK_0}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {PF_CCC_C0_PF_CCC_C0_0_PF_CCC|pll_inst_0_clkint_0_inferred_clock} [get_pins {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list mydesign|REF_CLK_0]
set Inferred_clkgroup_1 [list PF_CCC_C0_PF_CCC_C0_0_PF_CCC|pll_inst_0_clkint_0_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1

set_clock_groups -asynchronous -group [get_clocks {mydesign|REF_CLK_0}]
set_clock_groups -asynchronous -group [get_clocks {PF_CCC_C0_PF_CCC_C0_0_PF_CCC|pll_inst_0_clkint_0_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 
