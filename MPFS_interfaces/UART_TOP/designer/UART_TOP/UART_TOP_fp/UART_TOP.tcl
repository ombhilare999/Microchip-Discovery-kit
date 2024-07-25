open_project -project {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/UART_TOP_fp/UART_TOP.pro}
enable_device -name {MPFS095T} -enable 1
set_programming_file -name {MPFS095T} -file {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/UART_TOP.ppd}
set_programming_action -action {PROGRAM} -name {MPFS095T} 
run_selected_actions
save_project
close_project
