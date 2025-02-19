set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_adl {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/designer/UART_TOP/UART_TOP.adl}
read_afl {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/designer/UART_TOP/UART_TOP.afl}
map_netlist
read_sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/constraint/user.sdc}
check_constraints {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/constraint/placer_sdc_errors.log}
estimate_jitter -report {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/designer/UART_TOP/place_and_route_jitter_report.txt}
write_sdc -mode layout {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/UART_TOP/designer/UART_TOP/place_route.sdc}
