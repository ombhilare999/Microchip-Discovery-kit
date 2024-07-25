set_device \
    -family  PolarFireSoC \
    -die     PA5SOC095T \
    -package fcsg325 \
    -speed   -1 \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_operating_conditions -name {slow_lv_lt}
set_operating_conditions -name {slow_lv_ht}
set_operating_conditions -name {fast_hv_lt}
set_name UART_TOP
set_workdir {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP}
set_filename    {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/uart_loopback/libero_project/UART_TOP/designer/UART_TOP/UART_TOP_ba}
set_design_state post_layout
set_language verilog
