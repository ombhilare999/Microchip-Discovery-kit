# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1721920140 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {axi_lite_tut|aclk} [get_ports {aclk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {master_AXI_32s_32s|M_MASK_N_OUT6_inferred_clock} [get_pins {master_AXI_0/M_MASK_N_OUT6_0_a2/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {master_AXI_32s_32s|N_1_inferred_clock} [get_pins {master_AXI_0/M_MASK_N_OUT5_0_a2/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {master_AXI_32s_32s|N_2_inferred_clock} [get_pins {master_AXI_0/M_MASK_N_OUT4_0_a2_2_a2/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {master_AXI_32s_32s|N_3_inferred_clock} [get_pins {master_AXI_0/M_MASK_N_OUT3_0_a2_0_a2/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {mask_axi532_32s_32s|n_value6_inferred_clock} [get_pins {COREAXI4INTERCONNECT_C0_0/COREAXI4INTERCONNECT_C0_0/SlvConvertor_loop[0].slvcnv_SLAVE_AWADDR_RNICUC6J1[2]/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {mask_axi532_32s_32s|N_2_inferred_clock} [get_pins {mask_axi532_0/slave_axi_data13/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {mask_axi532_32s_32s|N_3_inferred_clock} [get_pins {COREAXI4INTERCONNECT_C0_0/COREAXI4INTERCONNECT_C0_0/SlvConvertor_loop[0].slvcnv_SLAVE_AWADDR_RNICUC6J1_0[2]/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {mask_axi532_32s_32s|N_4_inferred_clock} [get_pins {COREAXI4INTERCONNECT_C0_0/COREAXI4INTERCONNECT_C0_0/SlvConvertor_loop[0].slvcnv_SLAVE_AWADDR_RNICUC6J1_1[2]/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {mask_axi532_32s_32s|N_5_inferred_clock} [get_pins {COREAXI4INTERCONNECT_C0_0/COREAXI4INTERCONNECT_C0_0/SlvConvertor_loop[0].slvcnv_SLAVE_AWADDR_RNICUC6J1_2[2]/Y}] 

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
set Inferred_clkgroup_0 [list axi_lite_tut|aclk]
set Inferred_clkgroup_1 [list master_AXI_32s_32s|M_MASK_N_OUT6_inferred_clock]
set Inferred_clkgroup_2 [list master_AXI_32s_32s|N_1_inferred_clock]
set Inferred_clkgroup_3 [list master_AXI_32s_32s|N_2_inferred_clock]
set Inferred_clkgroup_4 [list master_AXI_32s_32s|N_3_inferred_clock]
set Inferred_clkgroup_5 [list mask_axi532_32s_32s|n_value6_inferred_clock]
set Inferred_clkgroup_6 [list mask_axi532_32s_32s|N_2_inferred_clock]
set Inferred_clkgroup_7 [list mask_axi532_32s_32s|N_3_inferred_clock]
set Inferred_clkgroup_8 [list mask_axi532_32s_32s|N_4_inferred_clock]
set Inferred_clkgroup_9 [list mask_axi532_32s_32s|N_5_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2
set_clock_groups -asynchronous -group $Inferred_clkgroup_3
set_clock_groups -asynchronous -group $Inferred_clkgroup_4
set_clock_groups -asynchronous -group $Inferred_clkgroup_5
set_clock_groups -asynchronous -group $Inferred_clkgroup_6
set_clock_groups -asynchronous -group $Inferred_clkgroup_7
set_clock_groups -asynchronous -group $Inferred_clkgroup_8
set_clock_groups -asynchronous -group $Inferred_clkgroup_9

set_clock_groups -asynchronous -group [get_clocks {axi_lite_tut|aclk}]
set_clock_groups -asynchronous -group [get_clocks {master_AXI_32s_32s|M_MASK_N_OUT6_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {master_AXI_32s_32s|N_1_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {master_AXI_32s_32s|N_2_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {master_AXI_32s_32s|N_3_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {mask_axi532_32s_32s|n_value6_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {mask_axi532_32s_32s|N_2_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {mask_axi532_32s_32s|N_3_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {mask_axi532_32s_32s|N_4_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {mask_axi532_32s_32s|N_5_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

