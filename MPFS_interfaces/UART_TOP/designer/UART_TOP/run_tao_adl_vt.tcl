set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_adl {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/UART_TOP.adl}
read_afl {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/UART_TOP.afl}
map_netlist
read_sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/constraint/user.sdc}
check_constraints {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/constraint/timing_sdc_errors.log}
estimate_jitter -report {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/timing_analysis_jitter_report.txt}
write_sdc -mode smarttime {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/timing_analysis.sdc}
