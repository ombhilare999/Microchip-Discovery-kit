///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: slaveAXI.v
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

module slaveAXI(
input logic clk,
input logic rstn, 
input logic valid,
output logic ready,
input logic [1:0] data,
output logic outBit1,
output logic outBit2,
output logic outBit3,
output logic outBit4
);

//Slave handshaking logic
always_ff @(posedge clk) begin
    if (!rstn) begin
        ready <= 1'b0;
    end else begin
        ready <= valid;
    end
end

always_comb begin
    outBit1 = (data == 2'b00 || !rstn) ? 1'b1 : 1'b0;
    outBit2 = (data == 2'b01 || !rstn) ? 1'b1 : 1'b0;
    outBit3 = (data == 2'b10 || !rstn) ? 1'b1 : 1'b0;
    outBit4 = (data == 2'b11 || !rstn) ? 1'b1 : 1'b0;
end

endmodule

