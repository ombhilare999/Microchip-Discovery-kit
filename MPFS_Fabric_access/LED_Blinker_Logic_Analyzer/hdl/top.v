///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top.v
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

module top(
input logic clk,
input logic rstn, 
input logic [1:0] inSwitch,
input logic valid,
output logic outBit1,
output logic outBit2,
output logic outBit3,
output logic outBit4
);
//<statements>


//Initializing Top Level signals
logic [1:0] dataAXI;
logic validAXI;
logic readyAXI;


//Getting a clock frequency for the LED Blinker
logic clock_1MHz;
logic clock_1Hz;

PF_CCC_C0 clk_ccc(
    // Inputs
    .REF_CLK_0     (clk),
    // Outputs
    .OUT0_FABCLK_0 (clock_1MHz),
    .PLL_LOCK_0    (  ) 
);


clockDivider clkDiv (
    .clk_in(clock_1MHz),
    .rstn(rstn),
    .clk_out(clock_1Hz)
);

//Handshaking Interface
masterAXI master (
    .clk(clk),
    .rstn(rstn), 
    .dataIn(inSwitch),
    .inValid(valid),
    .outValid(validAXI),
    .ready(readyAXI),
    .dataOut(dataAXI)
);

slaveAXI slave(
    .clk(clk),
    .clk_1Hz(clock_1Hz),
    .rstn(rstn), 
    .valid(validAXI),
    .ready(readyAXI),
    .data(dataAXI),
    .outBit1(outBit1),
    .outBit2(outBit2),
    .outBit3(outBit3),
    .outBit4(outBit4)
);

endmodule

