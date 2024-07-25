set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\Logic_Analyzer\AXI_Handshaking_Tut\hdl\masterAXI.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\Logic_Analyzer\AXI_Handshaking_Tut\hdl\slaveAXI.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\Logic_Analyzer\AXI_Handshaking_Tut\hdl\top.v}
set_top_level {top}
map_netlist
read_sdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\Logic_Analyzer\AXI_Handshaking_Tut\constraint\user.sdc}
check_constraints {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\Logic_Analyzer\AXI_Handshaking_Tut\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\Logic_Analyzer\AXI_Handshaking_Tut\designer\top\synthesis.fdc}
