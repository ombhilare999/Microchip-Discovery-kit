# Netlist Viewer TCL File
set_family -name PolarFireSoC
top_module -name top
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/Logic_Analyzer/AXI_Handshaking_Tut/hdl/masterAXI.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/Logic_Analyzer/AXI_Handshaking_Tut/hdl/slaveAXI.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/Logic_Analyzer/AXI_Handshaking_Tut/hdl/top.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/Logic_Analyzer/AXI_Handshaking_Tut/synthesis/top.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/Logic_Analyzer/AXI_Handshaking_Tut/designer/top/top.afl}