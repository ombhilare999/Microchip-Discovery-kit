# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1721918280 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {clk} [get_ports {clk}] 
create_clock -period 1000.000 -waveform {0.000 500.000} -name {ident_coreinst.comm_block_INST.dr2_tck} [get_pins {ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {clockDivider|N_1_inferred_clock} [get_pins {clkDiv/clk_out/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {PF_CCC_C0_PF_CCC_C0_0_PF_CCC|pll_inst_0_clkint_0_inferred_clock} [get_pins {clk_ccc/PF_CCC_C0_0/pll_inst_0/OUT0}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {jtag_interface_x|identify_clk_int_inferred_clock} [get_pins {ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw/UDRCK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {jtag_interface_x|b10_8Kz_rKlrtX} [get_pins {ident_coreinst/comm_block_INST/jtagi/b10_8Kz_rKlrtX_3/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {jtag_interface_x|b9_nv_oQwfYF} [get_pins {ident_coreinst/comm_block_INST/jtagi/b9_nv_oQwfYF_3/Y}] 

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
set_clock_groups -asynchronous -group [get_clocks {ident_coreinst.comm_block_INST.dr2_tck}]
set_clock_groups -asynchronous -group [get_clocks {clockDivider|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {PF_CCC_C0_PF_CCC_C0_0_PF_CCC|pll_inst_0_clkint_0_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {jtag_interface_x|identify_clk_int_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {jtag_interface_x|b10_8Kz_rKlrtX}]
set_clock_groups -asynchronous -group [get_clocks {jtag_interface_x|b9_nv_oQwfYF}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

