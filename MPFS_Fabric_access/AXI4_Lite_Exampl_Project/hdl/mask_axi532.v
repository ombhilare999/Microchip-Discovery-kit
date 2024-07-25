///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: mask_axi532.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFireSoC> <Die::MPFS095T> <Package::FCSG325>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module mask_axi532 #(
  parameter integer S_AXI_DATA_WIDTH    = 32,
  parameter integer S_AXI_ADDR_WIDTH    = 32
)(
  input logic aclk,
  input logic aresetn,

  // AXI-Lite slave interface
  input logic [31:0]  S_AXI_AWADDR,
  input logic         S_AXI_AWVALID,
  output logic        S_AXI_AWREADY,

  input logic [31:0]  S_AXI_WDATA,
  input logic [3:0]   S_AXI_WSTRB,
  input logic         S_AXI_WVALID,
  output logic        S_AXI_WREADY,

  output logic [1:0]  S_AXI_BRESP,
  output logic        S_AXI_BVALID,
  input  logic        S_AXI_BREADY,

  input logic [31:0]  S_AXI_ARADDR,
  input logic         S_AXI_ARVALID,
  output logic        S_AXI_ARREADY,

  output logic [31:0] S_AXI_RDATA,
  output logic [1:0]  S_AXI_RRESP,
  output logic        S_AXI_RVALID,
  input  logic        S_AXI_RREADY,

  // Output interface
  output logic [31:0] S_MASK_DATA,
  output logic [31:0] S_MASK_ADDR,
  output logic        S_MASK_VALID
);

  //------------- internal axi slave signals -----------//
  
  //------------- axi general signals -----------//
  
  logic [4:0]  n_value;
  logic [31:0] data_value;
  logic [31:0] output_addr;
  logic        init_write;
  
  //------------- axi aw signals -----------//
  logic [31:0] slave_axi_awaddr;
  logic        slave_axi_awvalid;
  logic        slave_axi_awready;
  
  assign slave_axi_awvalid = S_AXI_AWVALID;
  assign S_AXI_AWREADY = slave_axi_awready;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_awready <= 1'b0;
    end else if (slave_axi_awvalid) begin
        slave_axi_awready <= 1'b1;
    end else begin
        slave_axi_awready <= 1'b0;
    end
  end
  
  assign slave_axi_awaddr = S_AXI_AWADDR;

  
  //------------- axi w signals -----------//
  logic [31:0] slave_axi_wdata;
  logic        slave_axi_wvalid;
  logic        slave_axi_wready;
  
  assign slave_axi_wvalid = S_AXI_WVALID;
  assign S_AXI_WREADY = slave_axi_wready;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_wready <= 1'b0;
    end else if (slave_axi_wvalid) begin
        slave_axi_wready <= 1'b1;
    end else begin
        slave_axi_wready <= 1'b0;
    end
  end
  
  assign slave_axi_wdata = S_AXI_WDATA;
  
  always_comb begin
    if (slave_axi_awaddr == 32'd0) begin
        n_value = slave_axi_wdata[4:0];
    end else if (slave_axi_awaddr == 32'd4) begin
        data_value = slave_axi_wdata;
    end else if (slave_axi_awaddr == 32'd8) begin
        output_addr = slave_axi_wdata;
    end else if (slave_axi_awaddr == 32'd12) begin 
        init_write = slave_axi_wdata[0];
    end
  end
  
  //------------- axi b signals -----------//
  
  logic slave_axi_bvalid;
  logic slave_axi_bready;
  logic [1:0] slave_axi_bresp;
  
  assign S_AXI_BVALID = slave_axi_bvalid;
  assign slave_axi_bready = S_AXI_BREADY;
  assign S_AXI_BRESP  = slave_axi_bresp;
  
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_bvalid <= 1'b0;
    end else if (slave_axi_wvalid && slave_axi_wready) begin
        slave_axi_bvalid <= 1'b1;
    end else if (slave_axi_bvalid && !slave_axi_bready) begin
        slave_axi_bvalid <= 1'b1;
    end else begin
        slave_axi_bvalid <= 1'b0;
    end
  end
  
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_bresp <= 2'b0;
    end else if (slave_axi_bvalid && slave_axi_bready) begin
        slave_axi_bresp <= 2'b0;
    end else begin
        slave_axi_bresp <= 2'b0;
    end
  end
  
  //------------- axi ar signals -----------//  
  logic [31:0] slave_axi_araddr;
  logic        slave_axi_arvalid;
  logic        slave_axi_arready;
  
  assign slave_axi_arvalid = S_AXI_ARVALID;
  assign S_AXI_ARREADY = slave_axi_arready;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_arready <= 1'b0;
    end else if (slave_axi_arvalid) begin
        slave_axi_arready <= 1'b1;
    end else begin
        slave_axi_arready <= 1'b0;
    end
  end
  
  assign slave_axi_araddr = S_AXI_ARADDR;
  
  //------------- axi r signals -----------// 
  logic  [31:0]    slave_axi_rdata;
  logic  [1:0]     slave_axi_rresp;
  logic            slave_axi_rvalid;
  logic            slave_axi_rready;
  
  logic  [31:0]    slave_axi_data;
  
  assign S_AXI_RDATA      = slave_axi_rdata;
  assign S_AXI_RRESP      = slave_axi_rresp;
  assign S_AXI_RVALID     = slave_axi_rvalid;
  assign slave_axi_rready = S_AXI_RREADY;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_rvalid <= 1'b0;
    end else if (slave_axi_arvalid && slave_axi_arready) begin
        slave_axi_rvalid <= 1'b1;
    end else if (slave_axi_rvalid && !slave_axi_rready) begin
        slave_axi_rvalid <= 1'b1;
    end else begin
        slave_axi_rvalid <= 1'b0;
    end
  end
  
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        slave_axi_rresp <= 2'b0;
        slave_axi_rdata <= 32'b0;
    end else if (slave_axi_rvalid && slave_axi_rready) begin
        slave_axi_rresp <= 2'b0;
        slave_axi_rdata <= slave_axi_data;
    end
  end
  
  always_comb begin
    if (slave_axi_araddr == 32'd0) begin
        slave_axi_data = {27'b0, n_value};
    end else if (slave_axi_araddr == 32'd4) begin
        slave_axi_data = data_value;
    end else if (slave_axi_araddr == 32'd8) begin
        slave_axi_data = output_addr;
    end else if (slave_axi_araddr == 32'd12) begin 
        slave_axi_data = {31'b0, init_write};
    end
  end
  
  
  //------------- MASK Block connection and wrapper singals -----------//
  
  logic [4:0] n;
  logic [31:0] value_in;
  logic [31:0] value_out;
  logic [31:0] output_data;
  
  assign n = n_value;
  assign value_in = data_value;
  assign output_data = value_out;
  
  mask532 mask(
    .n(n),
    .value_in(value_in),
    .value_out(value_out)
  );
  
  logic init_write_output;

  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        init_write_output <= 1'b0;
    end else if (!init_write_output && init_write) begin
        init_write_output <= 1'b1;
    end 
  end
  
  
  assign S_MASK_DATA = output_data;
  assign S_MASK_ADDR = output_addr;
  assign S_MASK_VALID = init_write_output;
  
endmodule

