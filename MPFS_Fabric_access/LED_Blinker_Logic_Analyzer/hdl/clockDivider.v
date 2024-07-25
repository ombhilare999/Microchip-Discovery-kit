///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: clockDivider.v
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

module clockDivider( 
    input logic clk_in,
    input logic rstn,
    output logic clk_out
);

logic [19:0] counter;

//Dividing the clock from 1MHz to 1 Hz
always_ff @(posedge clk_in) begin
    if (counter == 20'd500000) begin
        counter <= 20'b0;
        clk_out <= ~clk_out;
    end else begin
        clk_out <= clk_out;
        counter <= counter + 1'b1;
    end
end


endmodule

