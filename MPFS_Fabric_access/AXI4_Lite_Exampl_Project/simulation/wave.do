onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /axi_lite_tut_tb/SYSCLK
add wave -noupdate /axi_lite_tut_tb/NSYSRESET
add wave -noupdate /axi_lite_tut_tb/M_MASK_READ_WRITE_TRANSACTION
add wave -noupdate /axi_lite_tut_tb/M_MASK_START_TRANSACTION
add wave -noupdate /axi_lite_tut_tb/M_MASK_VALID
add wave -noupdate /axi_lite_tut_tb/M_MASK_OUTPUT_ADDR
add wave -noupdate /axi_lite_tut_tb/M_MASK_ADDR
add wave -noupdate /axi_lite_tut_tb/M_MASK_DATA
add wave -noupdate /axi_lite_tut_tb/M_MASK_N
add wave -noupdate /axi_lite_tut_tb/M_READY_RESPONSE_ERROR
add wave -noupdate /axi_lite_tut_tb/M_MASK_VALID_OUT
add wave -noupdate /axi_lite_tut_tb/M_WRITE_RESPONSE_ERROR
add wave -noupdate /axi_lite_tut_tb/S_MASK_VALID
add wave -noupdate /axi_lite_tut_tb/M_MASK_N_OUT
add wave -noupdate /axi_lite_tut_tb/M_MASK_OUTPUT_ADDR_OUT
add wave -noupdate /axi_lite_tut_tb/M_MASK_DATA_OUT
add wave -noupdate /axi_lite_tut_tb/S_MASK_DATA
add wave -noupdate /axi_lite_tut_tb/S_MASK_ADDR
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_AWADDR
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_AWVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_AWREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_WDATA
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_WSTRB
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_WVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_WREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_BRESP
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_BVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_BREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_ARADDR
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_ARVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_ARREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_RDATA
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_RRESP
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_RVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/master_AXI_0/M_AXI_RREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_AWADDR
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_AWVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_AWREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_WDATA
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_WSTRB
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_WVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_WREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_BRESP
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_BVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_BREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_ARADDR
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_ARVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_ARREADY
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_RDATA
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_RRESP
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_RVALID
add wave -noupdate /axi_lite_tut_tb/axi_lite_tut_0/mask_axi532_0/S_AXI_RREADY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10747184 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 365
configure wave -valuecolwidth 176
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {9056250 ps} {15093750 ps}
