//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Jul 10 13:26:29 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// axi_lite_tut
module axi_lite_tut(
    // Inputs
    M_MASK_ADDR,
    M_MASK_DATA,
    M_MASK_N,
    M_MASK_OUTPUT_ADDR,
    M_MASK_READ_WRITE_TRANSACTION,
    M_MASK_START_TRANSACTION,
    M_MASK_VALID,
    aclk,
    aresetn,
    // Outputs
    M_MASK_DATA_OUT,
    M_MASK_N_OUT,
    M_MASK_OUTPUT_ADDR_OUT,
    M_MASK_VALID_OUT,
    M_READY_RESPONSE_ERROR,
    M_WRITE_RESPONSE_ERROR,
    S_MASK_ADDR,
    S_MASK_DATA,
    S_MASK_VALID
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] M_MASK_ADDR;
input  [31:0] M_MASK_DATA;
input  [4:0]  M_MASK_N;
input  [31:0] M_MASK_OUTPUT_ADDR;
input         M_MASK_READ_WRITE_TRANSACTION;
input         M_MASK_START_TRANSACTION;
input         M_MASK_VALID;
input         aclk;
input         aresetn;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] M_MASK_DATA_OUT;
output [4:0]  M_MASK_N_OUT;
output [31:0] M_MASK_OUTPUT_ADDR_OUT;
output        M_MASK_VALID_OUT;
output        M_READY_RESPONSE_ERROR;
output        M_WRITE_RESPONSE_ERROR;
output [31:0] S_MASK_ADDR;
output [31:0] S_MASK_DATA;
output        S_MASK_VALID;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          aclk;
wire          aresetn;
wire   [31:0] COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARADDR;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARBURST;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARCACHE;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARID;
wire   [7:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARLEN;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARLOCK;
wire   [2:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARPROT;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARQOS;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARREADY;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARREGION;
wire   [2:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARSIZE;
wire   [0:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARUSER;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARVALID;
wire   [31:0] COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWADDR;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWBURST;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWCACHE;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWID;
wire   [7:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWLEN;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWLOCK;
wire   [2:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWPROT;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWQOS;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWREADY;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWREGION;
wire   [2:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWSIZE;
wire   [0:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWUSER;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWVALID;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BREADY;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BRESP;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BVALID;
wire   [31:0] COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RDATA;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RREADY;
wire   [1:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RRESP;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RVALID;
wire   [31:0] COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WDATA;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WLAST;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WREADY;
wire   [3:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WSTRB;
wire   [0:0]  COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WUSER;
wire          COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WVALID;
wire   [31:0] M_MASK_ADDR;
wire   [31:0] M_MASK_DATA;
wire   [31:0] M_MASK_DATA_OUT_net_0;
wire   [4:0]  M_MASK_N;
wire   [4:0]  M_MASK_N_OUT_net_0;
wire   [31:0] M_MASK_OUTPUT_ADDR;
wire   [31:0] M_MASK_OUTPUT_ADDR_OUT_net_0;
wire          M_MASK_READ_WRITE_TRANSACTION;
wire          M_MASK_START_TRANSACTION;
wire          M_MASK_VALID;
wire          M_MASK_VALID_OUT_net_0;
wire          M_READY_RESPONSE_ERROR_net_0;
wire          M_WRITE_RESPONSE_ERROR_net_0;
wire   [31:0] master_AXI_0_master_ARADDR;
wire          master_AXI_0_master_ARREADY;
wire          master_AXI_0_master_ARVALID;
wire   [31:0] master_AXI_0_master_AWADDR;
wire          master_AXI_0_master_AWREADY;
wire          master_AXI_0_master_AWVALID;
wire   [0:0]  master_AXI_0_master_BID;
wire          master_AXI_0_master_BREADY;
wire   [1:0]  master_AXI_0_master_BRESP;
wire   [0:0]  master_AXI_0_master_BUSER;
wire          master_AXI_0_master_BVALID;
wire   [31:0] master_AXI_0_master_RDATA;
wire   [0:0]  master_AXI_0_master_RID;
wire          master_AXI_0_master_RLAST;
wire          master_AXI_0_master_RREADY;
wire   [1:0]  master_AXI_0_master_RRESP;
wire   [0:0]  master_AXI_0_master_RUSER;
wire          master_AXI_0_master_RVALID;
wire   [31:0] master_AXI_0_master_WDATA;
wire          master_AXI_0_master_WREADY;
wire   [3:0]  master_AXI_0_master_WSTRB;
wire          master_AXI_0_master_WVALID;
wire   [31:0] S_MASK_ADDR_net_0;
wire   [31:0] S_MASK_DATA_net_0;
wire          S_MASK_VALID_net_0;
wire          M_READY_RESPONSE_ERROR_net_1;
wire          M_MASK_VALID_OUT_net_1;
wire          M_WRITE_RESPONSE_ERROR_net_1;
wire          S_MASK_VALID_net_1;
wire   [4:0]  M_MASK_N_OUT_net_1;
wire   [31:0] M_MASK_OUTPUT_ADDR_OUT_net_1;
wire   [31:0] M_MASK_DATA_OUT_net_1;
wire   [31:0] S_MASK_ADDR_net_1;
wire   [31:0] S_MASK_DATA_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [1:0]  SLAVE0_BID_const_net_0;
wire   [1:0]  SLAVE0_RID_const_net_0;
wire          GND_net;
wire   [7:0]  MASTER0_AWLEN_const_net_0;
wire   [2:0]  MASTER0_AWSIZE_const_net_0;
wire   [1:0]  MASTER0_AWBURST_const_net_0;
wire   [1:0]  MASTER0_AWLOCK_const_net_0;
wire   [3:0]  MASTER0_AWCACHE_const_net_0;
wire   [2:0]  MASTER0_AWPROT_const_net_0;
wire   [3:0]  MASTER0_AWQOS_const_net_0;
wire   [3:0]  MASTER0_AWREGION_const_net_0;
wire   [7:0]  MASTER0_ARLEN_const_net_0;
wire   [2:0]  MASTER0_ARSIZE_const_net_0;
wire   [1:0]  MASTER0_ARBURST_const_net_0;
wire   [1:0]  MASTER0_ARLOCK_const_net_0;
wire   [3:0]  MASTER0_ARCACHE_const_net_0;
wire   [2:0]  MASTER0_ARPROT_const_net_0;
wire   [3:0]  MASTER0_ARQOS_const_net_0;
wire   [3:0]  MASTER0_ARREGION_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign SLAVE0_BID_const_net_0       = 2'h0;
assign SLAVE0_RID_const_net_0       = 2'h0;
assign GND_net                      = 1'b0;
assign MASTER0_AWLEN_const_net_0    = 8'h00;
assign MASTER0_AWSIZE_const_net_0   = 3'h0;
assign MASTER0_AWBURST_const_net_0  = 2'h3;
assign MASTER0_AWLOCK_const_net_0   = 2'h0;
assign MASTER0_AWCACHE_const_net_0  = 4'h0;
assign MASTER0_AWPROT_const_net_0   = 3'h0;
assign MASTER0_AWQOS_const_net_0    = 4'h0;
assign MASTER0_AWREGION_const_net_0 = 4'h0;
assign MASTER0_ARLEN_const_net_0    = 8'h00;
assign MASTER0_ARSIZE_const_net_0   = 3'h0;
assign MASTER0_ARBURST_const_net_0  = 2'h3;
assign MASTER0_ARLOCK_const_net_0   = 2'h0;
assign MASTER0_ARCACHE_const_net_0  = 4'h0;
assign MASTER0_ARPROT_const_net_0   = 3'h0;
assign MASTER0_ARQOS_const_net_0    = 4'h0;
assign MASTER0_ARREGION_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign M_READY_RESPONSE_ERROR_net_1 = M_READY_RESPONSE_ERROR_net_0;
assign M_READY_RESPONSE_ERROR       = M_READY_RESPONSE_ERROR_net_1;
assign M_MASK_VALID_OUT_net_1       = M_MASK_VALID_OUT_net_0;
assign M_MASK_VALID_OUT             = M_MASK_VALID_OUT_net_1;
assign M_WRITE_RESPONSE_ERROR_net_1 = M_WRITE_RESPONSE_ERROR_net_0;
assign M_WRITE_RESPONSE_ERROR       = M_WRITE_RESPONSE_ERROR_net_1;
assign S_MASK_VALID_net_1           = S_MASK_VALID_net_0;
assign S_MASK_VALID                 = S_MASK_VALID_net_1;
assign M_MASK_N_OUT_net_1           = M_MASK_N_OUT_net_0;
assign M_MASK_N_OUT[4:0]            = M_MASK_N_OUT_net_1;
assign M_MASK_OUTPUT_ADDR_OUT_net_1 = M_MASK_OUTPUT_ADDR_OUT_net_0;
assign M_MASK_OUTPUT_ADDR_OUT[31:0] = M_MASK_OUTPUT_ADDR_OUT_net_1;
assign M_MASK_DATA_OUT_net_1        = M_MASK_DATA_OUT_net_0;
assign M_MASK_DATA_OUT[31:0]        = M_MASK_DATA_OUT_net_1;
assign S_MASK_ADDR_net_1            = S_MASK_ADDR_net_0;
assign S_MASK_ADDR[31:0]            = S_MASK_ADDR_net_1;
assign S_MASK_DATA_net_1            = S_MASK_DATA_net_0;
assign S_MASK_DATA[31:0]            = S_MASK_DATA_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREAXI4INTERCONNECT_C0
COREAXI4INTERCONNECT_C0 COREAXI4INTERCONNECT_C0_0(
        // Inputs
        .ACLK             ( aclk ),
        .ARESETN          ( aresetn ),
        .SLAVE0_AWREADY   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWREADY ),
        .SLAVE0_WREADY    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WREADY ),
        .SLAVE0_BVALID    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BVALID ),
        .SLAVE0_ARREADY   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARREADY ),
        .SLAVE0_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RVALID    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RVALID ),
        .MASTER0_AWVALID  ( master_AXI_0_master_AWVALID ),
        .MASTER0_WLAST    ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_WVALID   ( master_AXI_0_master_WVALID ),
        .MASTER0_BREADY   ( master_AXI_0_master_BREADY ),
        .MASTER0_ARVALID  ( master_AXI_0_master_ARVALID ),
        .MASTER0_RREADY   ( master_AXI_0_master_RREADY ),
        .SLAVE0_BID       ( SLAVE0_BID_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE0_BRESP     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BRESP ),
        .SLAVE0_RID       ( SLAVE0_RID_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE0_RDATA     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RDATA ),
        .SLAVE0_RRESP     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RRESP ),
        .SLAVE0_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_AWID     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_AWADDR   ( master_AXI_0_master_AWADDR ),
        .MASTER0_AWLEN    ( MASTER0_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER0_AWSIZE   ( MASTER0_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_AWBURST  ( MASTER0_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER0_AWLOCK   ( MASTER0_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER0_AWCACHE  ( MASTER0_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWPROT   ( MASTER0_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_AWQOS    ( MASTER0_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWREGION ( MASTER0_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_WDATA    ( master_AXI_0_master_WDATA ),
        .MASTER0_WSTRB    ( master_AXI_0_master_WSTRB ),
        .MASTER0_ARID     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_ARADDR   ( master_AXI_0_master_ARADDR ),
        .MASTER0_ARLEN    ( MASTER0_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER0_ARSIZE   ( MASTER0_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_ARBURST  ( MASTER0_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER0_ARLOCK   ( MASTER0_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER0_ARCACHE  ( MASTER0_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARPROT   ( MASTER0_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_ARQOS    ( MASTER0_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARREGION ( MASTER0_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWUSER   ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_WUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_ARUSER   ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .SLAVE0_AWVALID   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWVALID ),
        .SLAVE0_WLAST     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WLAST ),
        .SLAVE0_WVALID    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WVALID ),
        .SLAVE0_BREADY    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BREADY ),
        .SLAVE0_ARVALID   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARVALID ),
        .SLAVE0_RREADY    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RREADY ),
        .MASTER0_AWREADY  ( master_AXI_0_master_AWREADY ),
        .MASTER0_WREADY   ( master_AXI_0_master_WREADY ),
        .MASTER0_BVALID   ( master_AXI_0_master_BVALID ),
        .MASTER0_ARREADY  ( master_AXI_0_master_ARREADY ),
        .MASTER0_RLAST    ( master_AXI_0_master_RLAST ),
        .MASTER0_RVALID   ( master_AXI_0_master_RVALID ),
        .SLAVE0_AWID      ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWID ),
        .SLAVE0_AWADDR    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWADDR ),
        .SLAVE0_AWLEN     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWLEN ),
        .SLAVE0_AWSIZE    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWSIZE ),
        .SLAVE0_AWBURST   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWBURST ),
        .SLAVE0_AWLOCK    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWLOCK ),
        .SLAVE0_AWCACHE   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWCACHE ),
        .SLAVE0_AWPROT    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWPROT ),
        .SLAVE0_AWQOS     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWQOS ),
        .SLAVE0_AWREGION  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWREGION ),
        .SLAVE0_WDATA     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WDATA ),
        .SLAVE0_WSTRB     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WSTRB ),
        .SLAVE0_ARID      ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARID ),
        .SLAVE0_ARADDR    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARADDR ),
        .SLAVE0_ARLEN     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARLEN ),
        .SLAVE0_ARSIZE    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARSIZE ),
        .SLAVE0_ARBURST   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARBURST ),
        .SLAVE0_ARLOCK    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARLOCK ),
        .SLAVE0_ARCACHE   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARCACHE ),
        .SLAVE0_ARPROT    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARPROT ),
        .SLAVE0_ARQOS     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARQOS ),
        .SLAVE0_ARREGION  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARREGION ),
        .SLAVE0_AWUSER    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWUSER ),
        .SLAVE0_WUSER     ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WUSER ),
        .SLAVE0_ARUSER    ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARUSER ),
        .MASTER0_BID      ( master_AXI_0_master_BID ),
        .MASTER0_BRESP    ( master_AXI_0_master_BRESP ),
        .MASTER0_RID      ( master_AXI_0_master_RID ),
        .MASTER0_RDATA    ( master_AXI_0_master_RDATA ),
        .MASTER0_RRESP    ( master_AXI_0_master_RRESP ),
        .MASTER0_BUSER    ( master_AXI_0_master_BUSER ),
        .MASTER0_RUSER    ( master_AXI_0_master_RUSER ) 
        );

//--------mask_axi532
mask_axi532 #( 
        .S_AXI_ADDR_WIDTH ( 32 ),
        .S_AXI_DATA_WIDTH ( 32 ) )
mask_axi532_0(
        // Inputs
        .aclk          ( aclk ),
        .aresetn       ( aresetn ),
        .S_AXI_AWVALID ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWVALID ),
        .S_AXI_WVALID  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WVALID ),
        .S_AXI_BREADY  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BREADY ),
        .S_AXI_ARVALID ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARVALID ),
        .S_AXI_RREADY  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RREADY ),
        .S_AXI_AWADDR  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWADDR ),
        .S_AXI_WDATA   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WDATA ),
        .S_AXI_WSTRB   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WSTRB ),
        .S_AXI_ARADDR  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARADDR ),
        // Outputs
        .S_AXI_AWREADY ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_AWREADY ),
        .S_AXI_WREADY  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_WREADY ),
        .S_AXI_BVALID  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BVALID ),
        .S_AXI_ARREADY ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_ARREADY ),
        .S_AXI_RVALID  ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RVALID ),
        .S_MASK_VALID  ( S_MASK_VALID_net_0 ),
        .S_AXI_BRESP   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_BRESP ),
        .S_AXI_RDATA   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RDATA ),
        .S_AXI_RRESP   ( COREAXI4INTERCONNECT_C0_0_AXI4mslave0_RRESP ),
        .S_MASK_DATA   ( S_MASK_DATA_net_0 ),
        .S_MASK_ADDR   ( S_MASK_ADDR_net_0 ) 
        );

//--------master_AXI
master_AXI #( 
        .S_AXI_ADDR_WIDTH ( 32 ),
        .S_AXI_DATA_WIDTH ( 32 ) )
master_AXI_0(
        // Inputs
        .aclk                          ( aclk ),
        .aresetn                       ( aresetn ),
        .M_AXI_AWREADY                 ( master_AXI_0_master_AWREADY ),
        .M_AXI_WREADY                  ( master_AXI_0_master_WREADY ),
        .M_AXI_BVALID                  ( master_AXI_0_master_BVALID ),
        .M_AXI_ARREADY                 ( master_AXI_0_master_ARREADY ),
        .M_AXI_RVALID                  ( master_AXI_0_master_RVALID ),
        .M_MASK_VALID                  ( M_MASK_VALID ),
        .M_MASK_START_TRANSACTION      ( M_MASK_START_TRANSACTION ),
        .M_MASK_READ_WRITE_TRANSACTION ( M_MASK_READ_WRITE_TRANSACTION ),
        .M_AXI_BRESP                   ( master_AXI_0_master_BRESP ),
        .M_AXI_RDATA                   ( master_AXI_0_master_RDATA ),
        .M_AXI_RRESP                   ( master_AXI_0_master_RRESP ),
        .M_MASK_N                      ( M_MASK_N ),
        .M_MASK_DATA                   ( M_MASK_DATA ),
        .M_MASK_ADDR                   ( M_MASK_ADDR ),
        .M_MASK_OUTPUT_ADDR            ( M_MASK_OUTPUT_ADDR ),
        // Outputs
        .M_AXI_AWVALID                 ( master_AXI_0_master_AWVALID ),
        .M_AXI_WVALID                  ( master_AXI_0_master_WVALID ),
        .M_AXI_BREADY                  ( master_AXI_0_master_BREADY ),
        .M_AXI_ARVALID                 ( master_AXI_0_master_ARVALID ),
        .M_AXI_RREADY                  ( master_AXI_0_master_RREADY ),
        .M_MASK_VALID_OUT              ( M_MASK_VALID_OUT_net_0 ),
        .M_WRITE_RESPONSE_ERROR        ( M_WRITE_RESPONSE_ERROR_net_0 ),
        .M_READY_RESPONSE_ERROR        ( M_READY_RESPONSE_ERROR_net_0 ),
        .M_AXI_AWADDR                  ( master_AXI_0_master_AWADDR ),
        .M_AXI_WDATA                   ( master_AXI_0_master_WDATA ),
        .M_AXI_WSTRB                   ( master_AXI_0_master_WSTRB ),
        .M_AXI_ARADDR                  ( master_AXI_0_master_ARADDR ),
        .M_MASK_N_OUT                  ( M_MASK_N_OUT_net_0 ),
        .M_MASK_DATA_OUT               ( M_MASK_DATA_OUT_net_0 ),
        .M_MASK_OUTPUT_ADDR_OUT        ( M_MASK_OUTPUT_ADDR_OUT_net_0 ) 
        );


endmodule
