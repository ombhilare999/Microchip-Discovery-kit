///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: axi_lite_tut_tb.v
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

`timescale 1ns/100ps

module axi_lite_tut_tb;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

//input signals
logic        M_MASK_READ_WRITE_TRANSACTION;
logic        M_MASK_START_TRANSACTION;
logic        M_MASK_VALID;
logic [31:0] M_MASK_OUTPUT_ADDR;
logic [31:0] M_MASK_ADDR;
logic [31:0] M_MASK_DATA;
logic [4:0]  M_MASK_N;

//output signals
logic        M_READY_RESPONSE_ERROR;
logic        M_MASK_VALID_OUT;
logic        M_WRITE_RESPONSE_ERROR;
logic        S_MASK_VALID;
logic [4:0]  M_MASK_N_OUT;
logic [31:0] M_MASK_OUTPUT_ADDR_OUT;
logic [31:0] M_MASK_DATA_OUT;
logic [31:0] S_MASK_DATA;
logic [31:0] S_MASK_ADDR;


initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b0;
        M_MASK_READ_WRITE_TRANSACTION = 1'b0;
        M_MASK_START_TRANSACTION = 1'b0;
        M_MASK_VALID = 1'b0;
        M_MASK_OUTPUT_ADDR = 32'b0;
        M_MASK_ADDR = 32'b0;
        M_MASK_DATA = 32'b0;
        M_MASK_N = 5'b0;
        
        
        
        
    
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
        M_MASK_READ_WRITE_TRANSACTION = 1'b0;
        M_MASK_START_TRANSACTION = 1'b0;
        M_MASK_VALID = 1'b1;
        M_MASK_OUTPUT_ADDR = 32'h00000004;
        M_MASK_ADDR = 32'h00000000;
        M_MASK_DATA = 32'hFFFFFFFF;
        M_MASK_N    = 5'b00011;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
      
      
      

    #(SYSCLK_PERIOD * 50 )
        M_MASK_ADDR = 32'h00000004;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_ADDR = 32'h00000008;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_ADDR = 32'h0000000C;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
    
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_READ_WRITE_TRANSACTION = 1'b1;
        M_MASK_ADDR = 32'h00000000;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
    
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_READ_WRITE_TRANSACTION = 1'b1;
        M_MASK_ADDR = 32'h00000004;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
      
    
    
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_READ_WRITE_TRANSACTION = 1'b1;
        M_MASK_ADDR = 32'h00000008;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0;
      
    
    
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_READ_WRITE_TRANSACTION = 1'b1;
        M_MASK_ADDR = 32'h0000000C;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0; 
     
     
     
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_READ_WRITE_TRANSACTION = 1'b0;
        M_MASK_ADDR = 32'h0000000C;
        M_MASK_VALID = 1'b0;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0;
      
      
    
    
    
    
    
    
    #(SYSCLK_PERIOD * 50 )
        M_MASK_READ_WRITE_TRANSACTION = 1'b1;
        M_MASK_ADDR = 32'h0000000C;
    
    #(SYSCLK_PERIOD * 5 )
      M_MASK_START_TRANSACTION = 1'b1; 
    
    #(SYSCLK_PERIOD * 10 )
      M_MASK_START_TRANSACTION = 1'b0;
     
    
    #(SYSCLK_PERIOD * 100 )
    $stop;
      
        
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  axi_lite_tut
//////////////////////////////////////////////////////////////////////
axi_lite_tut axi_lite_tut_0 (
    // Inputs
    .M_MASK_READ_WRITE_TRANSACTION(M_MASK_READ_WRITE_TRANSACTION),
    .aresetn(NSYSRESET),
    .aclk(SYSCLK),
    .M_MASK_VALID(M_MASK_VALID),
    .M_MASK_START_TRANSACTION(M_MASK_START_TRANSACTION),
    .M_MASK_OUTPUT_ADDR(M_MASK_OUTPUT_ADDR),
    .M_MASK_ADDR(M_MASK_ADDR),
    .M_MASK_DATA(M_MASK_DATA),
    .M_MASK_N(M_MASK_N),

    // Outputs
    .M_READY_RESPONSE_ERROR(M_READY_RESPONSE_ERROR),
    .M_MASK_VALID_OUT(M_MASK_VALID_OUT),
    .M_WRITE_RESPONSE_ERROR(M_WRITE_RESPONSE_ERROR),
    .S_MASK_VALID(S_MASK_VALID),
    .M_MASK_N_OUT(M_MASK_N_OUT),
    .M_MASK_OUTPUT_ADDR_OUT(M_MASK_OUTPUT_ADDR_OUT),
    .M_MASK_DATA_OUT(M_MASK_DATA_OUT),
    .S_MASK_ADDR(S_MASK_ADDR),
    .S_MASK_DATA(S_MASK_DATA)

    // Inouts

);

endmodule

