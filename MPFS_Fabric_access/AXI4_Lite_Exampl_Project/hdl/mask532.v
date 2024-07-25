///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: mask532.v
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

module mask532(
    input logic [4:0] n,
    input logic [31:0] value_in,
    output logic [31:0] value_out
);
    
    logic [31:0] noMask; 
	
    //Masking n least significant bit of the data
	assign noMask = 32'hFFFFFFFF; 
	
	always_comb begin
	   value_out = value_in & (noMask << n);
	end
    
endmodule

