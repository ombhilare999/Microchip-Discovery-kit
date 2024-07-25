# Microchip Technology Inc.
# Date: 2024-Jul-25 13:32:14
# This file was generated based on the following SDC source files:
#   /home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/constraint/user.sdc
#

create_clock -name {i_Clk} -period 40 -waveform {0 20 } { i_Clk }
set_clock_uncertainty 0.000103939 [ get_clocks { i_Clk } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { i_Clk } ] -rise_to [ get_clocks { i_Clk } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { i_Clk } ] -fall_to [ get_clocks { i_Clk } ]
