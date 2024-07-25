# Microchip Technology Inc.
# Date: 2024-Jul-25 10:39:03
# This file was generated based on the following SDC source files:
#   C:/Users/User/OneDrive/Desktop/Microship_ECE552/GIT_Microchip/LED_Blinker_Logic_Analyzer/constraint/user.sdc
#

create_clock -name {clk} -period 10 -waveform {0 5 } [ get_ports { clk } ]
set_clock_uncertainty 0.000385731 [ get_clocks { clk } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk } ] -rise_to [ get_clocks { clk } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk } ] -fall_to [ get_clocks { clk } ]
