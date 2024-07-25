set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
set_editor_type {SYNTHESIS}
set_proj_path {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2\oled_try2.prjx}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/button_tick_latch.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/Nbit_MOSI_SPI_Buffer.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/Nbit_MOSI_SPI.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/Nbit_MOSI_SPI_Buffer_Combined.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/ascii_font_8x8.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/clock_divider.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/OLED_interface.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/OLED_interface_synth.v}
set_top_level {OLED_interface_synth}
map_netlist
read_sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/constraint/OLED_interface_synth_derived_constraints.sdc}
set_output_sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/constraint/user.sdc}
