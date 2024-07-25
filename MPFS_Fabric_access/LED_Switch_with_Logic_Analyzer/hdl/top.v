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

logic [1:0] dataAXI;
logic validAXI;
logic readyAXI;


//instandiation for the AXI modules
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

