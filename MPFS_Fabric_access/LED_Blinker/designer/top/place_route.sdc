# Microchip Technology Inc.
# Date: 2024-Jul-25 02:13:51
# This file was generated based on the following SDC source files:
#   C:/Users/User/OneDrive/Desktop/Microship_ECE552/GIT_Microchip/LED_Blinker/constraint/user.sdc
#

create_clock -name {clk} -period 10 -waveform {0 5 } [ get_ports { clk } ]
set_clock_uncertainty 9.23906e-06 [ get_clocks { clk } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk } ] -rise_to [ get_clocks { clk } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk } ] -fall_to [ get_clocks { clk } ]
