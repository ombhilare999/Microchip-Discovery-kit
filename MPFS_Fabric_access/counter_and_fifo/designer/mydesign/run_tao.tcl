set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\corefifo_fwft.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\corefifo_sync_scntr.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\corefifo_sync.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\corefifo_NstagesSync.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\corefifo_grayToBinConv.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\corefifo_async.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0_0\rtl\vlog\core\COREFIFO.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\COREFIFO_C0\COREFIFO_C0.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\PF_CCC_C0\PF_CCC_C0_0\PF_CCC_C0_PF_CCC_C0_0_PF_CCC.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\PF_CCC_C0\PF_CCC_C0.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\PF_TPSRAM_C0\PF_TPSRAM_C0_0\PF_TPSRAM_C0_PF_TPSRAM_C0_0_PF_TPSRAM.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\PF_TPSRAM_C0\PF_TPSRAM_C0.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\hdl\counter.v}
read_verilog -mode system_verilog {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\component\work\mydesign\mydesign.v}
set_top_level {mydesign}
map_netlist
check_constraints {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\User\OneDrive\Desktop\Microship_ECE552\Introduction_Tut\SmartDesign_Intro\counter_and_fifo\designer\mydesign\synthesis.fdc}
