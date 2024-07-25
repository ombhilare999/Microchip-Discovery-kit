open_project -project {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\designer\top\top_fp\top.pro}
enable_device -name {MPFS095T} -enable 1
set_programming_file -name {MPFS095T} -file {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\designer\top\top.ppd}
set_programming_action -action {PROGRAM} -name {MPFS095T} 
run_selected_actions
save_project
close_project
