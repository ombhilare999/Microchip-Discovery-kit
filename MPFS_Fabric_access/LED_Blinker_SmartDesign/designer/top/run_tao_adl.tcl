set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_adl {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.adl}
read_afl {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\top.afl}
map_netlist
read_sdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\constraint\user.sdc}
check_constraints {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\constraint\placer_sdc_errors.log}
estimate_jitter -report {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\place_and_route_jitter_report.txt}
write_sdc -mode layout {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_SmartDesign\designer\top\place_route.sdc}