# Microchip Technology Inc.
# Date: 2024-Jul-18 02:21:16
# This file was generated based on the following SDC source files:
#   /home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/constraint/user.sdc
#

create_clock -name {i_Clk} -period 40 -waveform {0 20 } { i_Clk }
set_clock_jitter 0.000103939 [ get_clocks { i_Clk } ]
