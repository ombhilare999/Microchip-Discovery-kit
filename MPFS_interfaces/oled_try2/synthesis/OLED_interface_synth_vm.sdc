# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1721931840 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLK100MHZ} [get_ports {CLK100MHZ}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {clock_divider_20s|N_2_inferred_clock} [get_pins {g_OLED_interface/SCLK_clock_divider/o_CLK_DIV/Q}] 

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
set_clock_groups -asynchronous -group [get_clocks {clock_divider_20s|N_2_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

