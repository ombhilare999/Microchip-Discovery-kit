# Netlist Viewer TCL File
set_family -name PolarFireSoC
top_module -name UART_TOP
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/hdl/UART_RX.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/hdl/UART_TX.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/hdl/UART_TOP.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/synthesis/UART_TOP.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/COMPILE/UART_TOP.afl}