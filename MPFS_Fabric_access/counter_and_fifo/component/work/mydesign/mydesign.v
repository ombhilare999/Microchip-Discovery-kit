//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Jul  3 10:46:22 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// mydesign
module mydesign(
    // Inputs
    REF_CLK_0,
    en,
    rstn,
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
// Input
//--------------------------------------------------------------------
input         REF_CLK_0;
input         en;
input         rstn;
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
wire          AND2_0_Y;
wire          AND2_1_Y;
wire          COREFIFO_C0_0_EMPTY;
wire          COREFIFO_C0_0_FULL;
wire   [5:0]  COREFIFO_C0_0_MEMRADDR;
wire          COREFIFO_C0_0_MEMRE;
wire   [5:0]  COREFIFO_C0_0_MEMWADDR;
wire          COREFIFO_C0_0_MEMWE;
wire   [19:0] counter_0_data_out;
wire          en;
wire          OVERFLOW_net_0;
wire          PF_CCC_C0_0_OUT0_FABCLK_0;
wire          PF_CCC_C0_0_PLL_LOCK_0;
wire   [19:0] Q_net_0;
wire   [6:0]  RDCNT_net_0;
wire          REF_CLK_0;
wire          rstn;
wire          UNDERFLOW_net_0;
wire   [6:0]  WRCNT_net_0;
wire          AFULL_net_1;
wire          AEMPTY_net_1;
wire          OVERFLOW_net_1;
wire          UNDERFLOW_net_1;
wire   [6:0]  WRCNT_net_1;
wire   [6:0]  RDCNT_net_1;
wire   [19:0] Q_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [19:0] DATA_const_net_0;
wire          VCC_net;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          A_IN_POST_INV0_0;
wire          RE_IN_POST_INV1_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign DATA_const_net_0 = 20'h00000;
assign VCC_net          = 1'b1;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign A_IN_POST_INV0_0  = ~ COREFIFO_C0_0_FULL;
assign RE_IN_POST_INV1_0 = ~ COREFIFO_C0_0_EMPTY;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AFULL_net_1     = AFULL_net_0;
assign AFULL           = AFULL_net_1;
assign AEMPTY_net_1    = AEMPTY_net_0;
assign AEMPTY          = AEMPTY_net_1;
assign OVERFLOW_net_1  = OVERFLOW_net_0;
assign OVERFLOW        = OVERFLOW_net_1;
assign UNDERFLOW_net_1 = UNDERFLOW_net_0;
assign UNDERFLOW       = UNDERFLOW_net_1;
assign WRCNT_net_1     = WRCNT_net_0;
assign WRCNT[6:0]      = WRCNT_net_1;
assign RDCNT_net_1     = RDCNT_net_0;
assign RDCNT[6:0]      = RDCNT_net_1;
assign Q_net_1         = Q_net_0;
assign Q[19:0]         = Q_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( A_IN_POST_INV0_0 ),
        .B ( en ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------AND2
AND2 AND2_1(
        // Inputs
        .A ( PF_CCC_C0_0_PLL_LOCK_0 ),
        .B ( rstn ),
        // Outputs
        .Y ( AND2_1_Y ) 
        );

//--------COREFIFO_C0
COREFIFO_C0 COREFIFO_C0_0(
        // Inputs
        .WCLOCK    ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .RCLOCK    ( REF_CLK_0 ),
        .WRESET_N  ( AND2_1_Y ),
        .RRESET_N  ( AND2_1_Y ),
        .WE        ( AND2_0_Y ),
        .RE        ( RE_IN_POST_INV1_0 ),
        .DATA      ( DATA_const_net_0 ),
        // Outputs
        .FULL      ( COREFIFO_C0_0_FULL ),
        .EMPTY     ( COREFIFO_C0_0_EMPTY ),
        .AFULL     ( AFULL_net_0 ),
        .AEMPTY    ( AEMPTY_net_0 ),
        .OVERFLOW  ( OVERFLOW_net_0 ),
        .UNDERFLOW ( UNDERFLOW_net_0 ),
        .MEMWE     ( COREFIFO_C0_0_MEMWE ),
        .MEMRE     ( COREFIFO_C0_0_MEMRE ),
        .Q         (  ),
        .WRCNT     ( WRCNT_net_0 ),
        .RDCNT     ( RDCNT_net_0 ),
        .MEMWADDR  ( COREFIFO_C0_0_MEMWADDR ),
        .MEMRADDR  ( COREFIFO_C0_0_MEMRADDR ) 
        );

//--------counter
counter counter_0(
        // Inputs
        .clk      ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .rstn     ( AND2_1_Y ),
        .en       ( en ),
        // Outputs
        .data_out ( counter_0_data_out ) 
        );

//--------PF_CCC_C0
PF_CCC_C0 PF_CCC_C0_0(
        // Inputs
        .REF_CLK_0         ( REF_CLK_0 ),
        .PLL_POWERDOWN_N_0 ( VCC_net ),
        // Outputs
        .OUT0_FABCLK_0     ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0        ( PF_CCC_C0_0_PLL_LOCK_0 ) 
        );

//--------PF_TPSRAM_C0
PF_TPSRAM_C0 PF_TPSRAM_C0_0(
        // Inputs
        .W_EN   ( COREFIFO_C0_0_MEMWE ),
        .R_EN   ( COREFIFO_C0_0_MEMRE ),
        .CLK    ( REF_CLK_0 ),
        .W_DATA ( counter_0_data_out ),
        .W_ADDR ( COREFIFO_C0_0_MEMWADDR ),
        .R_ADDR ( COREFIFO_C0_0_MEMRADDR ),
        // Outputs
        .R_DATA ( Q_net_0 ) 
        );


endmodule
