//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun 24 14:53:17 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of COREFIFO_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325E
# Create and Configure the core component COREFIFO_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:COREFIFO:3.0.101} -component_name {COREFIFO_C0} -params {\
"AE_STATIC_EN:true"  \
"AEVAL:4"  \
"AF_STATIC_EN:true"  \
"AFVAL:60"  \
"CTRL_TYPE:1"  \
"DIE_SIZE:10"  \
"ECC:0"  \
"ESTOP:true"  \
"FSTOP:true"  \
"FWFT:false"  \
"NUM_STAGES:2"  \
"OVERFLOW_EN:true"  \
"PIPE:1"  \
"PREFETCH:false"  \
"RAM_OPT:0"  \
"RDCNT_EN:true"  \
"RDEPTH:64"  \
"RE_POLARITY:0"  \
"READ_DVALID:false"  \
"RWIDTH:20"  \
"SYNC:0"  \
"SYNC_RESET:0"  \
"UNDERFLOW_EN:true"  \
"WDEPTH:64"  \
"WE_POLARITY:0"  \
"WRCNT_EN:true"  \
"WRITE_ACK:false"  \
"WWIDTH:20"   }
# Exporting Component Description of COREFIFO_C0 to TCL done
*/

// COREFIFO_C0
module COREFIFO_C0(
    // Inputs
    DATA,
    RCLOCK,
    RE,
    RRESET_N,
    WCLOCK,
    WE,
    WRESET_N,
    // Outputs
    AEMPTY,
    AFULL,
    EMPTY,
    FULL,
    MEMRADDR,
    MEMRE,
    MEMWADDR,
    MEMWE,
    OVERFLOW,
    Q,
    RDCNT,
    UNDERFLOW,
    WRCNT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [19:0] DATA;
input         RCLOCK;
input         RE;
input         RRESET_N;
input         WCLOCK;
input         WE;
input         WRESET_N;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        AEMPTY;
output        AFULL;
output        EMPTY;
output        FULL;
output [5:0]  MEMRADDR;
output        MEMRE;
output [5:0]  MEMWADDR;
output        MEMWE;
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
wire   [19:0] DATA;
wire          EMPTY_net_0;
wire          FULL_net_0;
wire   [5:0]  MEMRADDR_net_0;
wire          MEMRE_net_0;
wire   [5:0]  MEMWADDR_net_0;
wire          MEMWE_net_0;
wire          OVERFLOW_net_0;
wire   [19:0] Q_net_0;
wire          RCLOCK;
wire   [6:0]  RDCNT_net_0;
wire          RE;
wire          RRESET_N;
wire          UNDERFLOW_net_0;
wire          WCLOCK;
wire          WE;
wire   [6:0]  WRCNT_net_0;
wire          WRESET_N;
wire          FULL_net_1;
wire          EMPTY_net_1;
wire          AFULL_net_1;
wire          AEMPTY_net_1;
wire          OVERFLOW_net_1;
wire          UNDERFLOW_net_1;
wire          MEMWE_net_1;
wire          MEMRE_net_1;
wire   [19:0] Q_net_1;
wire   [6:0]  WRCNT_net_1;
wire   [6:0]  RDCNT_net_1;
wire   [5:0]  MEMWADDR_net_1;
wire   [5:0]  MEMRADDR_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [19:0] MEMRD_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net           = 1'b0;
assign MEMRD_const_net_0 = 20'h00000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FULL_net_1      = FULL_net_0;
assign FULL            = FULL_net_1;
assign EMPTY_net_1     = EMPTY_net_0;
assign EMPTY           = EMPTY_net_1;
assign AFULL_net_1     = AFULL_net_0;
assign AFULL           = AFULL_net_1;
assign AEMPTY_net_1    = AEMPTY_net_0;
assign AEMPTY          = AEMPTY_net_1;
assign OVERFLOW_net_1  = OVERFLOW_net_0;
assign OVERFLOW        = OVERFLOW_net_1;
assign UNDERFLOW_net_1 = UNDERFLOW_net_0;
assign UNDERFLOW       = UNDERFLOW_net_1;
assign MEMWE_net_1     = MEMWE_net_0;
assign MEMWE           = MEMWE_net_1;
assign MEMRE_net_1     = MEMRE_net_0;
assign MEMRE           = MEMRE_net_1;
assign Q_net_1         = Q_net_0;
assign Q[19:0]         = Q_net_1;
assign WRCNT_net_1     = WRCNT_net_0;
assign WRCNT[6:0]      = WRCNT_net_1;
assign RDCNT_net_1     = RDCNT_net_0;
assign RDCNT[6:0]      = RDCNT_net_1;
assign MEMWADDR_net_1  = MEMWADDR_net_0;
assign MEMWADDR[5:0]   = MEMWADDR_net_1;
assign MEMRADDR_net_1  = MEMRADDR_net_0;
assign MEMRADDR[5:0]   = MEMRADDR_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREFIFO_C0_COREFIFO_C0_0_COREFIFO   -   Actel:DirectCore:COREFIFO:3.0.101
COREFIFO_C0_COREFIFO_C0_0_COREFIFO #( 
        .AE_STATIC_EN ( 1 ),
        .AEVAL        ( 4 ),
        .AF_STATIC_EN ( 1 ),
        .AFVAL        ( 60 ),
        .CTRL_TYPE    ( 1 ),
        .DIE_SIZE     ( 10 ),
        .ECC          ( 0 ),
        .ESTOP        ( 1 ),
        .FAMILY       ( 27 ),
        .FSTOP        ( 1 ),
        .FWFT         ( 0 ),
        .NUM_STAGES   ( 2 ),
        .OVERFLOW_EN  ( 1 ),
        .PIPE         ( 1 ),
        .PREFETCH     ( 0 ),
        .RAM_OPT      ( 0 ),
        .RDCNT_EN     ( 1 ),
        .RDEPTH       ( 64 ),
        .RE_POLARITY  ( 0 ),
        .READ_DVALID  ( 0 ),
        .RWIDTH       ( 20 ),
        .SYNC         ( 0 ),
        .SYNC_RESET   ( 0 ),
        .UNDERFLOW_EN ( 1 ),
        .WDEPTH       ( 64 ),
        .WE_POLARITY  ( 0 ),
        .WRCNT_EN     ( 1 ),
        .WRITE_ACK    ( 0 ),
        .WWIDTH       ( 20 ) )
COREFIFO_C0_0(
        // Inputs
        .CLK        ( GND_net ), // tied to 1'b0 from definition
        .WCLOCK     ( WCLOCK ),
        .RCLOCK     ( RCLOCK ),
        .RESET_N    ( GND_net ), // tied to 1'b0 from definition
        .WRESET_N   ( WRESET_N ),
        .RRESET_N   ( RRESET_N ),
        .WE         ( WE ),
        .RE         ( RE ),
        .DATA       ( DATA ),
        .MEMRD      ( MEMRD_const_net_0 ), // tied to 20'h00000 from definition
        // Outputs
        .FULL       ( FULL_net_0 ),
        .EMPTY      ( EMPTY_net_0 ),
        .AFULL      ( AFULL_net_0 ),
        .AEMPTY     ( AEMPTY_net_0 ),
        .OVERFLOW   ( OVERFLOW_net_0 ),
        .UNDERFLOW  ( UNDERFLOW_net_0 ),
        .WACK       (  ),
        .DVLD       (  ),
        .MEMWE      ( MEMWE_net_0 ),
        .MEMRE      ( MEMRE_net_0 ),
        .SB_CORRECT (  ),
        .DB_DETECT  (  ),
        .Q          ( Q_net_0 ),
        .WRCNT      ( WRCNT_net_0 ),
        .RDCNT      ( RDCNT_net_0 ),
        .MEMWADDR   ( MEMWADDR_net_0 ),
        .MEMRADDR   ( MEMRADDR_net_0 ),
        .MEMWD      (  ) 
        );


endmodule
