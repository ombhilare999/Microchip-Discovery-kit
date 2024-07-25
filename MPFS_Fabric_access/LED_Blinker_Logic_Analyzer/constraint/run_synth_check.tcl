set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
set_editor_type {SYNTHESIS}
set_proj_path {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\AXI_Handshaking_Tut.prjx}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\hdl\masterAXI.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\hdl\slaveAXI.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\hdl\top.v}
set_top_level {top}
map_netlist
read_sdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\constraint\user.sdc}
set_output_sdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\AXI_Example\AXI_Handshaking_Tut\constraint\user.sdc}
