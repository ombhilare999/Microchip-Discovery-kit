# Microchip Technology Inc.
# Date: 2024-Jul-22 23:11:10
# This file was generated based on the following SDC source files:
#   /home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/constraint/user.sdc
#

create_clock -name {CLK100MHZ} -period 10 -waveform {0 5 } { CLK100MHZ }
set_clock_uncertainty 7.62223e-05 [ get_clocks { CLK100MHZ } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLK100MHZ } ] -rise_to [ get_clocks { CLK100MHZ } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLK100MHZ } ] -fall_to [ get_clocks { CLK100MHZ } ]
