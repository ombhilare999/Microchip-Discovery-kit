quietly set ACTELLIBNAME PolarFireSoC
quietly set PROJECT_DIR "C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/SmartDesign_Intro/counter_and_fifo"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap polarfire "C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/precompiled/vlog/polarfire"
vmap PolarFire "C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/precompiled/vlog/polarfire"

vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/corefifo_fwft.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/corefifo_sync_scntr.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/corefifo_sync.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/corefifo_NstagesSync.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/corefifo_grayToBinConv.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/corefifo_async.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0_0/rtl/vlog/core/COREFIFO.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/COREFIFO_C0/COREFIFO_C0.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/PF_CCC_C0/PF_CCC_C0.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/PF_TPSRAM_C0/PF_TPSRAM_C0_0/PF_TPSRAM_C0_PF_TPSRAM_C0_0_PF_TPSRAM.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/PF_TPSRAM_C0/PF_TPSRAM_C0.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/counter.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/mydesign/mydesign.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/work/CLK_GEN_C0/CLK_GEN_C0.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1/PULSE_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/work/PULSE_GEN_C1/PULSE_GEN_C1.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/work/RESET_GEN_C0/RESET_GEN_C0.v"
vlog "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/CLK_GEN_C0" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/PULSE_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/PULSE_GEN_C1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/RESET_GEN_C0" "+incdir+${PROJECT_DIR}/component/work/testbench" -sv -work presynth "${PROJECT_DIR}/component/work/testbench/testbench.v"

vsim -L polarfire -L presynth  -t 1ps -pli C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/pli/pf_crypto_win_me_pli.dll presynth.testbench
add wave /testbench/*
run 10000ns
