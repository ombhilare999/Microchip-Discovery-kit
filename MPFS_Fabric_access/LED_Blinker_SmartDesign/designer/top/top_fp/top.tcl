open_project -project {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top_fp\top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS095T} \
    -fpga {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.map} \
    -header {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.hdr} \
    -snvm {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top_snvm.efc} \
    -spm {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.spm} \
    -dca {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.dca}
export_single_ppd \
    -name {MPFS095T} \
    -file {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.ppd}

save_project
close_project
