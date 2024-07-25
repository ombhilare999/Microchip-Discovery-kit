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
input logic clk_1Hz,
input logic rstn, 
input logic valid,
output logic ready,
input logic [1:0] data,
output logic outBit1,
output logic outBit2,
output logic outBit3,
output logic outBit4
);

//Shave handshaking logic
always_ff @(posedge clk) begin
    if (!rstn) begin
        ready <= 1'b0;
    end else begin
        ready <= valid;
    end
end


//LED Blinker Logic
always_ff @(posedge clk_1Hz) begin
    if (!rstn) begin
        outBit1 <= 1'b0;
        outBit2 <= 1'b0;
        outBit3 <= 1'b0;
        outBit4 <= 1'b0;
    end else begin
        if (data == 2'b00) begin
           outBit1 <= ~outBit1; 
           outBit2 <= 1'b0; 
           outBit3 <= 1'b0; 
           outBit4 <= 1'b0; 
        end else if (data == 2'b01) begin
           outBit2 <= ~outBit2;
           outBit1 <= 1'b0; 
           outBit3 <= 1'b0; 
           outBit4 <= 1'b0; 
        end else if (data == 2'b10) begin
            outBit3 <= ~outBit3;
            outBit1 <= 1'b0; 
            outBit2 <= 1'b0; 
            outBit4 <= 1'b0; 
        end else if (data == 2'b11) begin
            outBit4 <= ~outBit4;
            outBit1 <= 1'b0; 
            outBit2 <= 1'b0; 
            outBit3 <= 1'b0; 
        end
    end
end

endmodule

