//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Jun 20 21:26:51 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top_tb.v
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

module top_tb;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

logic [1:0] inSwitch;
logic valid;
logic outBit1;
logic outBit2;
logic outBit3;
logic outBit4;

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
    #(SYSCLK_PERIOD * 10 );
        NSYSRESET = 1'b1;
        valid = 1'b0;
    
    #(SYSCLK_PERIOD *10 );
        inSwitch = 2'b01;
        valid = 1'b1;
    
    #(SYSCLK_PERIOD *10 );
        valid = 1'b0;
    
    #(SYSCLK_PERIOD *10 );
        inSwitch = 2'b10;
        valid = 1'b1;
    
    #(SYSCLK_PERIOD *10 );
        valid = 1'b0;
    
    #(SYSCLK_PERIOD *10 );
        inSwitch = 2'b11;
        valid = 1'b1;
        
    #(SYSCLK_PERIOD *10 );
        valid = 1'b0;
    
    #(SYSCLK_PERIOD *10 );
        inSwitch = 2'b00;
        valid = 1'b1;
        
    #(SYSCLK_PERIOD *10 );
        valid = 1'b0;
    
    #(SYSCLK_PERIOD *20 );
        //$finish;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top
//////////////////////////////////////////////////////////////////////
top top_0 (
    // Inputs
    .clk(SYSCLK),
    .rstn(NSYSRESET),
    .inSwitch(inSwitch),
    .valid(valid),
    
    // Outputs
    .outBit1(outBit1),
    .outBit2(outBit2),
    .outBit3(outBit3),
    .outBit4(outBit4)

    // Inouts

);

endmodule

