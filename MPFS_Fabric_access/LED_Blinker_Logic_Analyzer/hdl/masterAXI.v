///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: masterAXI.v
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

module masterAXI(
input logic clk,
input logic rstn, 
input logic [1:0] dataIn,
input logic inValid,
output logic outValid,
input logic ready,
output logic [1:0] dataOut
);


//Master handshaking logic to send switch value to slave
always_ff @(posedge clk) begin
    if (!rstn) begin
        outValid <= 1'b0;
    end else if (inValid) begin
        outValid <= 1'b1;
    end else begin
        outValid <= 1'b0;
    end
end

always_ff @(posedge  clk) begin
    if (!rstn) begin
        dataOut <= 2'b0;
    end else if (inValid && ready) begin
        dataOut <= dataIn;
    end
end

endmodule

