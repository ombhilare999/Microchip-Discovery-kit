///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: master_AXI.v
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

module master_AXI #(
  parameter integer S_AXI_DATA_WIDTH    = 32,
  parameter integer S_AXI_ADDR_WIDTH    = 32
)(
  input logic aclk,
  input logic aresetn,

  // AXI-Lite slave interface
  output logic [31:0]  M_AXI_AWADDR,
  output logic         M_AXI_AWVALID,
  input  logic         M_AXI_AWREADY,

  output logic [31:0]  M_AXI_WDATA,
  output logic [3:0]   M_AXI_WSTRB,
  output logic         M_AXI_WVALID,
  input  logic         M_AXI_WREADY,

  input   logic [1:0]  M_AXI_BRESP,
  input   logic        M_AXI_BVALID,
  output  logic        M_AXI_BREADY,

  output logic [31:0]  M_AXI_ARADDR,
  output logic         M_AXI_ARVALID,
  input  logic         M_AXI_ARREADY,

  input  logic [31:0]  M_AXI_RDATA,
  input  logic [1:0]   M_AXI_RRESP,
  input  logic         M_AXI_RVALID,
  output logic         M_AXI_RREADY,

  // Input/Output port interface
  input  logic [4:0]  M_MASK_N,
  input  logic [31:0] M_MASK_DATA,
  input  logic [31:0] M_MASK_ADDR,
  input  logic [31:0] M_MASK_OUTPUT_ADDR,
  input  logic        M_MASK_VALID,
  
  output logic [4:0]  M_MASK_N_OUT,
  output logic [31:0] M_MASK_DATA_OUT,
  output logic [31:0] M_MASK_OUTPUT_ADDR_OUT,
  output logic        M_MASK_VALID_OUT,
  
  input  logic        M_MASK_START_TRANSACTION,
  input  logic        M_MASK_READ_WRITE_TRANSACTION,
  output logic        M_WRITE_RESPONSE_ERROR,
  output logic        M_READY_RESPONSE_ERROR
);

  //------------- internal axi slave signals -----------//
  
  //------------- axi general signals -----------//
  
  logic [31:0] n_value;
  logic [31:0] data_value;
  logic [31:0] output_addr;
  logic [31:0] axi_addr;
  logic [31:0] init_write;
  
  logic        start_trans;
  logic        read_write_trans; // 1 for read and 0 for write
  
  assign n_value          = {27'b0, M_MASK_N};
  assign data_value       = M_MASK_DATA;
  assign output_addr      = M_MASK_OUTPUT_ADDR;
  assign init_write       = {31'b0, M_MASK_VALID};
  assign start_trans      = M_MASK_START_TRANSACTION;  
  assign read_write_trans = M_MASK_READ_WRITE_TRANSACTION;
  assign axi_addr         = M_MASK_ADDR;
  
  
  
  //------------- axi aw signals -----------//
  logic [31:0] master_axi_awaddr;
  logic        master_axi_awvalid;
  logic        master_axi_awready;
  
  assign M_AXI_AWVALID = master_axi_awvalid;
  assign master_axi_awready = M_AXI_AWREADY;
  assign M_AXI_AWADDR = master_axi_awaddr;
  
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_awvalid <= 1'b0;
    end else if (start_trans && !read_write_trans) begin
        master_axi_awvalid <= 1'b1;
    end else if (master_axi_awvalid && !master_axi_awready) begin
        master_axi_awvalid <= 1'b1;
    end else begin
        master_axi_awvalid <= 1'b0;
    end
  end
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_awaddr <= 32'b0;
    end else if (master_axi_awvalid && master_axi_awready) begin
        master_axi_awaddr <= axi_addr;
    end 
  end

  
  //------------- axi w signals -----------//
  
  logic [31:0] master_axi_wdata;
  logic [3:0]  master_axi_wstrb; 
  logic        master_axi_wvalid;
  logic        master_axi_wready;
  
  assign M_AXI_WDATA = master_axi_wdata;
  assign M_AXI_WSTRB = master_axi_wstrb;
  assign M_AXI_WVALID = master_axi_wvalid;
  assign master_axi_wready = M_AXI_WREADY;
  
  assign master_axi_wstrb = 4'b0;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_wvalid <= 1'b0;
    end else if (master_axi_awvalid && master_axi_awready) begin
        master_axi_wvalid <= 1'b1;
    end else if (master_axi_wvalid && !master_axi_wready) begin
        master_axi_wvalid <= 1'b1;
    end else begin
        master_axi_wvalid <= 1'b0;
    end
  end
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_wdata <= 32'b0;
    end else if (master_axi_wvalid && master_axi_wready) begin
        if (master_axi_awaddr == 32'd0) begin
            master_axi_wdata <= n_value;
        end else if (master_axi_awaddr == 32'd4) begin
            master_axi_wdata <= data_value;
        end else if (master_axi_awaddr == 32'd8) begin
            master_axi_wdata <= output_addr;
        end else if (master_axi_awaddr == 32'd12) begin
            master_axi_wdata <= init_write;
        end
    end 
  end
  
  //------------- axi b signals -----------//
  logic [1:0]  master_axi_bresp;
  logic        master_axi_bvalid;
  logic        master_axi_bready;
  
  assign master_axi_bvalid = M_AXI_BVALID;
  assign M_AXI_BREADY = master_axi_bready;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_bready <= 1'b0;
    end else if (master_axi_bvalid) begin
        master_axi_bready <= 1'b1;
    end else begin
        master_axi_bready <= 1'b0;
    end
  end
  
  assign master_axi_bresp = M_AXI_BRESP;
  assign M_WRITE_RESPONSE_ERROR = (master_axi_bresp == 2'b00) ? 1'b1 : 1'b0;
  
  
  //------------- axi ar signals -----------//  
  logic [31:0] master_axi_araddr;
  logic        master_axi_arvalid;
  logic        master_axi_arready;
  
  assign M_AXI_ARVALID = master_axi_arvalid;
  assign master_axi_arready = M_AXI_ARREADY;
  assign M_AXI_ARADDR = master_axi_araddr;
  
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_arvalid <= 1'b0;
    end else if (start_trans && read_write_trans) begin
        master_axi_arvalid <= 1'b1;
    end else if (master_axi_arvalid && !master_axi_arready) begin
        master_axi_arvalid <= 1'b1;
    end else begin
        master_axi_arvalid <= 1'b0;
    end
  end
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_araddr <= 32'b0;
    end else if (master_axi_arvalid && master_axi_arready) begin
        master_axi_araddr <= axi_addr;
    end 
  end
  
  //------------- axi r signals -----------//   
  logic [31:0] master_axi_rdata;
  logic        master_axi_rvalid;
  logic        master_axi_rready;
  logic [1:0]  master_axi_rresp;
  
  assign master_axi_rvalid = M_AXI_RVALID;
  assign M_AXI_RREADY      = master_axi_rready;
  
  always_ff @(posedge aclk) begin
    if (!aresetn) begin
        master_axi_rready <= 1'b0;
    end else if (master_axi_rvalid) begin
        master_axi_rready <= 1'b1;
    end else begin
        master_axi_rready <= 1'b0;
    end
  end
  
  assign master_axi_rdata  = M_AXI_RDATA;
  assign master_axi_rresp  = M_AXI_RRESP;
  assign M_READY_RESPONSE_ERROR = (master_axi_rresp == 2'b00) ? 1'b1 : 1'b0;
  
  always_comb begin
    if (master_axi_araddr == 32'd0) begin
        M_MASK_N_OUT = master_axi_rdata[4:0];
    end else if (master_axi_araddr == 32'd4) begin 
        M_MASK_DATA_OUT = master_axi_rdata;
    end else if (master_axi_araddr == 32'd8) begin
        M_MASK_OUTPUT_ADDR_OUT = master_axi_rdata;
    end else if (master_axi_araddr == 32'd12) begin
        M_MASK_VALID_OUT = master_axi_rdata[0];
    end
  end
  
endmodule

