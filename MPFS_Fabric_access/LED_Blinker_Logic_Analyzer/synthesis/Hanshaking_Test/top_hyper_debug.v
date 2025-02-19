// available hyper connections - for debug and ip models
// timestamp: 1721918280


`ifndef SYN_HYPER_CONNECT
`define SYN_HYPER_CONNECT 1
module syn_hyper_connect(out) /* synthesis syn_black_box=1 syn_noprune=1 */;
parameter w = 1;
parameter tag = "xxx";
parameter dflt = 0;
parameter mustconnect = 1'b1;
output [w-1:0] out;
endmodule
`endif

module top_hyper_debug(dummy);
input dummy; /* avoid compiler error for no ports */

wire ident_ihs_clk_0;
syn_hyper_connect ident_ihs_clk_connect_0(ident_ihs_clk_0);
defparam ident_ihs_clk_connect_0.tag = "ident_ihs_clk";


wire ident_ihs_valid_0;
syn_hyper_connect ident_ihs_valid_connect_0(ident_ihs_valid_0);
defparam ident_ihs_valid_connect_0.tag = "ident_ihs_valid";


wire ident_ihs_outBit1_0;
syn_hyper_connect ident_ihs_outBit1_connect_0(ident_ihs_outBit1_0);
defparam ident_ihs_outBit1_connect_0.tag = "ident_ihs_outBit1";


wire ident_ihs_outBit2_0;
syn_hyper_connect ident_ihs_outBit2_connect_0(ident_ihs_outBit2_0);
defparam ident_ihs_outBit2_connect_0.tag = "ident_ihs_outBit2";


wire ident_ihs_outBit3_0;
syn_hyper_connect ident_ihs_outBit3_connect_0(ident_ihs_outBit3_0);
defparam ident_ihs_outBit3_connect_0.tag = "ident_ihs_outBit3";


wire ident_ihs_outBit4_0;
syn_hyper_connect ident_ihs_outBit4_connect_0(ident_ihs_outBit4_0);
defparam ident_ihs_outBit4_connect_0.tag = "ident_ihs_outBit4";


wire [1:0] ident_ihs_dataAXI_0;
syn_hyper_connect ident_ihs_dataAXI_connect_0(ident_ihs_dataAXI_0);
defparam ident_ihs_dataAXI_connect_0.w = 2;
defparam ident_ihs_dataAXI_connect_0.tag = "ident_ihs_dataAXI";


wire ident_ihs_validAXI_0;
syn_hyper_connect ident_ihs_validAXI_connect_0(ident_ihs_validAXI_0);
defparam ident_ihs_validAXI_connect_0.tag = "ident_ihs_validAXI";


wire ident_ihs_readyAXI_0;
syn_hyper_connect ident_ihs_readyAXI_connect_0(ident_ihs_readyAXI_0);
defparam ident_ihs_readyAXI_connect_0.tag = "ident_ihs_readyAXI";


wire ident_ihs_IICE_master_clock_0;
syn_hyper_connect ident_ihs_IICE_master_clock_connect_0(ident_ihs_IICE_master_clock_0);
defparam ident_ihs_IICE_master_clock_connect_0.tag = "ident_coreinst.IICE_INST.ident_ihs_IICE_master_clock";


wire Identify_IICE_trigger_ext_0;
syn_hyper_connect Identify_IICE_trigger_ext_connect_0(Identify_IICE_trigger_ext_0);
defparam Identify_IICE_trigger_ext_connect_0.tag = "ident_coreinst.IICE_INST.Identify_IICE_trigger_ext";


wire [7:0] ujtag_wrapper_uireg_0;
syn_hyper_connect ujtag_wrapper_uireg_connect_0(ujtag_wrapper_uireg_0);
defparam ujtag_wrapper_uireg_connect_0.w = 8;
defparam ujtag_wrapper_uireg_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_uireg";


wire ujtag_wrapper_urstb_0;
syn_hyper_connect ujtag_wrapper_urstb_connect_0(ujtag_wrapper_urstb_0);
defparam ujtag_wrapper_urstb_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_urstb";


wire ujtag_wrapper_udrupd_0;
syn_hyper_connect ujtag_wrapper_udrupd_connect_0(ujtag_wrapper_udrupd_0);
defparam ujtag_wrapper_udrupd_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrupd";


wire ujtag_wrapper_udrck_0;
syn_hyper_connect ujtag_wrapper_udrck_connect_0(ujtag_wrapper_udrck_0);
defparam ujtag_wrapper_udrck_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrck";


wire ujtag_wrapper_udrcap_0;
syn_hyper_connect ujtag_wrapper_udrcap_connect_0(ujtag_wrapper_udrcap_0);
defparam ujtag_wrapper_udrcap_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrcap";


wire ujtag_wrapper_udrsh_0;
syn_hyper_connect ujtag_wrapper_udrsh_connect_0(ujtag_wrapper_udrsh_0);
defparam ujtag_wrapper_udrsh_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrsh";


wire ujtag_wrapper_utdi_0;
syn_hyper_connect ujtag_wrapper_utdi_connect_0(ujtag_wrapper_utdi_0);
defparam ujtag_wrapper_utdi_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_utdi";

endmodule
