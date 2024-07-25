//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jun 25 02:13:41 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// testbench
module testbench(
    // Outputs
    AEMPTY,
    AFULL,
    OVERFLOW,
    Q,
    RDCNT,
    UNDERFLOW,
    WRCNT
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        AEMPTY;
output        AFULL;
output        OVERFLOW;
output [19:0] Q;
output [6:0]  RDCNT;
output        UNDERFLOW;
output [6:0]  WRCNT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          AEMPTY_net_0;
wire          AFULL_net_0;
wire          CLK_GEN_C0_0_CLK;
wire          OVERFLOW_net_0;
wire          PULSE_GEN_C1_0_PULSE;
wire   [19:0] Q_net_0;
wire   [6:0]  RDCNT_net_0;
wire          RESET_GEN_C0_0_RESET;
wire          UNDERFLOW_net_0;
wire   [6:0]  WRCNT_net_0;
wire          UNDERFLOW_net_1;
wire          OVERFLOW_net_1;
wire          AEMPTY_net_1;
wire          AFULL_net_1;
wire   [6:0]  WRCNT_net_1;
wire   [6:0]  RDCNT_net_1;
wire   [19:0] Q_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UNDERFLOW_net_1 = UNDERFLOW_net_0;
assign UNDERFLOW       = UNDERFLOW_net_1;
assign OVERFLOW_net_1  = OVERFLOW_net_0;
assign OVERFLOW        = OVERFLOW_net_1;
assign AEMPTY_net_1    = AEMPTY_net_0;
assign AEMPTY          = AEMPTY_net_1;
assign AFULL_net_1     = AFULL_net_0;
assign AFULL           = AFULL_net_1;
assign WRCNT_net_1     = WRCNT_net_0;
assign WRCNT[6:0]      = WRCNT_net_1;
assign RDCNT_net_1     = RDCNT_net_0;
assign RDCNT[6:0]      = RDCNT_net_1;
assign Q_net_1         = Q_net_0;
assign Q[19:0]         = Q_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_GEN_C0
CLK_GEN_C0 CLK_GEN_C0_0(
        // Outputs
        .CLK ( CLK_GEN_C0_0_CLK ) 
        );

//--------mydesign
mydesign mydesign_0(
        // Inputs
        .REF_CLK_0 ( CLK_GEN_C0_0_CLK ),
        .en        ( PULSE_GEN_C1_0_PULSE ),
        .rstn      ( RESET_GEN_C0_0_RESET ),
        // Outputs
        .AFULL     ( AFULL_net_0 ),
        .AEMPTY    ( AEMPTY_net_0 ),
        .OVERFLOW  ( OVERFLOW_net_0 ),
        .UNDERFLOW ( UNDERFLOW_net_0 ),
        .WRCNT     ( WRCNT_net_0 ),
        .RDCNT     ( RDCNT_net_0 ),
        .Q         ( Q_net_0 ) 
        );

//--------PULSE_GEN_C1
PULSE_GEN_C1 PULSE_GEN_C1_0(
        // Outputs
        .PULSE ( PULSE_GEN_C1_0_PULSE ) 
        );

//--------RESET_GEN_C0
RESET_GEN_C0 RESET_GEN_C0_0(
        // Outputs
        .RESET ( RESET_GEN_C0_0_RESET ) 
        );


endmodule
