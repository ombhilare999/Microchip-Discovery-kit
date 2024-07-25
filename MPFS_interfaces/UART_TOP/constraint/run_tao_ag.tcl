set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1} -range {EXT}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/hdl/UART_RX.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/hdl/UART_TX.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/hdl/UART_TOP.v}
set_top_level {UART_TOP}
derive_constraints
write_sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/constraint/UART_TOP_derived_constraints.sdc}
write_ndc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/constraint/UART_TOP_derived_constraints.ndc}
write_pdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/constraint/fp/UART_TOP_derived_constraints.pdc}
