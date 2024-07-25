new_project \
         -name {top} \
         -location {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\designer\top\top_fp} \
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
