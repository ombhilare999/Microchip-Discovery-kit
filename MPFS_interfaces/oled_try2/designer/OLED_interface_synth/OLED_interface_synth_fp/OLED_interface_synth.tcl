open_project -project {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/designer/OLED_interface_synth/OLED_interface_synth_fp/OLED_interface_synth.pro}
enable_device -name {MPFS095T} -enable 1
set_programming_file -name {MPFS095T} -file {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/designer/OLED_interface_synth/OLED_interface_synth.ppd}
set_programming_action -action {PROGRAM} -name {MPFS095T} 
run_selected_actions
save_project
close_project
