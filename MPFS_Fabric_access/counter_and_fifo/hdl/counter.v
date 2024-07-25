///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: counter.v
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

module counter (
    input clk,
    input rstn,
    input en,
    output reg [19:0] data_out
);

//Creating a 20 bit counter that wrap around
always @(posedge clk) begin
    if (!rstn) begin
        data_out <= 20'b0;
    end else if (en) begin
        data_out <= data_out + 1'b1;
    end
end

endmodule


