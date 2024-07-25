set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1} -range {EXT}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/button_tick_latch.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/Nbit_MOSI_SPI_Buffer.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/Nbit_MOSI_SPI.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/Nbit_MOSI_SPI_Buffer_Combined.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/ascii_font_8x8.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/clock_divider.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/OLED_interface.v}
read_verilog -mode system_verilog {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/hdl/OLED_interface_synth.v}
set_top_level {OLED_interface_synth}
derive_constraints
write_sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/constraint/OLED_interface_synth_derived_constraints.sdc}
write_ndc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/constraint/OLED_interface_synth_derived_constraints.ndc}
write_pdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/constraint/fp/OLED_interface_synth_derived_constraints.pdc}
