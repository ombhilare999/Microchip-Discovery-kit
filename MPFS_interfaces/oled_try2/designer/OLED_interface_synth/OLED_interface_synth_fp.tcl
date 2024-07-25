new_project \
         -name {OLED_interface_synth} \
         -location {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/designer/OLED_interface_synth/OLED_interface_synth_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS095T} \
         -name {MPFS095T}
enable_device \
         -name {MPFS095T} \
         -enable {TRUE}
save_project
close_project
