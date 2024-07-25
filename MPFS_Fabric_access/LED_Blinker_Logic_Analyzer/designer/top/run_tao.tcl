set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\component\work\PF_CCC_C0\PF_CCC_C0_0\PF_CCC_C0_PF_CCC_C0_0_PF_CCC.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\component\work\PF_CCC_C0\PF_CCC_C0.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\hdl\clockDivider.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\hdl\masterAXI.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\hdl\slaveAXI.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\hdl\top.v}
set_top_level {top}
map_netlist
read_sdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\constraint\user.sdc}
check_constraints {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker_Logic_Analyzer\designer\top\synthesis.fdc}
