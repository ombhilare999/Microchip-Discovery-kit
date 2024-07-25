//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jul 25 02:28:13 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top
module top(
    // Inputs
    clk,
    dataIn,
    inValid,
    rstn,
    // Outputs
    outBit1,
    outBit2,
    outBit3,
    outBit4
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        clk;
input  [1:0] dataIn;
input        inValid;
input        rstn;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       outBit1;
output       outBit2;
output       outBit3;
output       outBit4;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         clk;
wire         clockDivider_0_clk_out;
wire   [1:0] dataIn;
wire         inValid;
wire   [1:0] masterAXI_0_dataOut;
wire         masterAXI_0_outValid;
wire         outBit1_net_0;
wire         outBit2_net_0;
wire         outBit3_net_0;
wire         outBit4_net_0;
wire         PF_CCC_C0_0_OUT0_FABCLK_0;
wire         rstn;
wire         slaveAXI_0_ready;
wire         outBit4_net_1;
wire         outBit1_net_1;
wire         outBit2_net_1;
wire         outBit3_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign outBit4_net_1 = outBit4_net_0;
assign outBit4       = outBit4_net_1;
assign outBit1_net_1 = outBit1_net_0;
assign outBit1       = outBit1_net_1;
assign outBit2_net_1 = outBit2_net_0;
assign outBit2       = outBit2_net_1;
assign outBit3_net_1 = outBit3_net_0;
assign outBit3       = outBit3_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------clockDivider
clockDivider clockDivider_0(
        // Inputs
        .clk_in  ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .rstn    ( rstn ),
        // Outputs
        .clk_out ( clockDivider_0_clk_out ) 
        );

//--------masterAXI
masterAXI masterAXI_0(
        // Inputs
        .clk      ( clk ),
        .rstn     ( rstn ),
        .dataIn   ( dataIn ),
        .inValid  ( inValid ),
        .ready    ( slaveAXI_0_ready ),
        // Outputs
        .outValid ( masterAXI_0_outValid ),
        .dataOut  ( masterAXI_0_dataOut ) 
        );

//--------PF_CCC_C0
PF_CCC_C0 PF_CCC_C0_0(
        // Inputs
        .REF_CLK_0     ( clk ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0    (  ) 
        );

//--------slaveAXI
slaveAXI slaveAXI_0(
        // Inputs
        .clk     ( clk ),
        .clk_1Hz ( clockDivider_0_clk_out ),
        .rstn    ( rstn ),
        .valid   ( masterAXI_0_outValid ),
        .data    ( masterAXI_0_dataOut ),
        // Outputs
        .ready   ( slaveAXI_0_ready ),
        .outBit1 ( outBit1_net_0 ),
        .outBit2 ( outBit2_net_0 ),
        .outBit3 ( outBit3_net_0 ),
        .outBit4 ( outBit4_net_0 ) 
        );


endmodule
