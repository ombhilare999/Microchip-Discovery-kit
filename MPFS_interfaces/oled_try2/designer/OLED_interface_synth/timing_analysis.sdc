# Microchip Technology Inc.
# Date: 2024-Jul-25 14:26:47
# This file was generated based on the following SDC source files:
#   /home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/constraint/user.sdc
#

create_clock -name {CLK100MHZ} -period 10 -waveform {0 5 } { CLK100MHZ }
set_clock_jitter 7.62223e-05 [ get_clocks { CLK100MHZ } ]
