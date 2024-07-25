quietly set ACTELLIBNAME PolarFireSoC
quietly set PROJECT_DIR "C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/AXI_Example/AXI_Handshaking_Tut"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap polarfire "C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/precompiled/vlog/polarfire"

vlog -sv -work presynth "${PROJECT_DIR}/hdl/masterAXI.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/slaveAXI.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/top.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/top_tb.v"

vsim -L polarfire -L presynth  -t 1ps -pli C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/pli/pf_crypto_win_me_pli.dll presynth.top_tb
add wave /top_tb/*
run 1000ns
