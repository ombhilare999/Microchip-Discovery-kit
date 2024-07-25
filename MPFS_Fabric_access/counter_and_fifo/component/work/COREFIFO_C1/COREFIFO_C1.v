//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun 24 16:34:49 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of COREFIFO_C1 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325E
# Create and Configure the core component COREFIFO_C1
create_and_configure_core -core_vlnv {Actel:DirectCore:COREFIFO:3.0.101} -component_name {COREFIFO_C1} -params {\
"AE_STATIC_EN:false"  \
"AEVAL:4"  \
"AF_STATIC_EN:false"  \
"AFVAL:1020"  \
"CTRL_TYPE:1"  \
"DIE_SIZE:25"  \
"ECC:0"  \
"ESTOP:true"  \
"FSTOP:true"  \
"FWFT:false"  \
"NUM_STAGES:2"  \
"OVERFLOW_EN:false"  \
"PIPE:1"  \
"PREFETCH:false"  \
"RAM_OPT:0"  \
"RDCNT_EN:false"  \
"RDEPTH:1024"  \
"RE_POLARITY:0"  \
"READ_DVALID:false"  \
"RWIDTH:18"  \
"SYNC:0"  \
"SYNC_RESET:0"  \
"UNDERFLOW_EN:false"  \
"WDEPTH:1024"  \
"WE_POLARITY:0"  \
"WRCNT_EN:false"  \
"WRITE_ACK:false"  \
"WWIDTH:18"   }
# Exporting Component Description of COREFIFO_C1 to TCL done
*/

// COREFIFO_C1
module COREFIFO_C1(
    // Inputs
    DATA,
    RCLOCK,
    RE,
    RRESET_N,
    WCLOCK,
    WE,
    WRESET_N,
    // Outputs
    EMPTY,
    FULL,
    MEMRADDR,
    MEMRE,
    MEMWADDR,
    MEMWE,
    Q
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [17:0] DATA;
input         RCLOCK;
input         RE;
input         RRESET_N;
input         WCLOCK;
input         WE;
input         WRESET_N;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        EMPTY;
output        FULL;
output [9:0]  MEMRADDR;
output        MEMRE;
output [9:0]  MEMWADDR;
output        MEMWE;
output [17:0] Q;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [17:0] DATA;
wire          EMPTY_net_0;
wire          FULL_net_0;
wire   [9:0]  MEMRADDR_net_0;
wire          MEMRE_net_0;
wire   [9:0]  MEMWADDR_net_0;
wire          MEMWE_net_0;
wire   [17:0] Q_net_0;
wire          RCLOCK;
wire          RE;
wire          RRESET_N;
wire          WCLOCK;
wire          WE;
wire          WRESET_N;
wire   [17:0] Q_net_1;
wire          FULL_net_1;
wire          EMPTY_net_1;
wire          MEMWE_net_1;
wire          MEMRE_net_1;
wire   [9:0]  MEMWADDR_net_1;
wire   [9:0]  MEMRADDR_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [17:0] MEMRD_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net           = 1'b0;
assign MEMRD_const_net_0 = 18'h00000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign Q_net_1        = Q_net_0;
assign Q[17:0]        = Q_net_1;
assign FULL_net_1     = FULL_net_0;
assign FULL           = FULL_net_1;
assign EMPTY_net_1    = EMPTY_net_0;
assign EMPTY          = EMPTY_net_1;
assign MEMWE_net_1    = MEMWE_net_0;
assign MEMWE          = MEMWE_net_1;
assign MEMRE_net_1    = MEMRE_net_0;
assign MEMRE          = MEMRE_net_1;
assign MEMWADDR_net_1 = MEMWADDR_net_0;
assign MEMWADDR[9:0]  = MEMWADDR_net_1;
assign MEMRADDR_net_1 = MEMRADDR_net_0;
assign MEMRADDR[9:0]  = MEMRADDR_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREFIFO_C1_COREFIFO_C1_0_COREFIFO   -   Actel:DirectCore:COREFIFO:3.0.101
COREFIFO_C1_COREFIFO_C1_0_COREFIFO #( 
        .AE_STATIC_EN ( 0 ),
        .AEVAL        ( 4 ),
        .AF_STATIC_EN ( 0 ),
        .AFVAL        ( 1020 ),
        .CTRL_TYPE    ( 1 ),
        .DIE_SIZE     ( 10 ),
        .ECC          ( 0 ),
        .ESTOP        ( 1 ),
        .FAMILY       ( 27 ),
        .FSTOP        ( 1 ),
        .FWFT         ( 0 ),
        .NUM_STAGES   ( 2 ),
        .OVERFLOW_EN  ( 0 ),
        .PIPE         ( 1 ),
        .PREFETCH     ( 0 ),
        .RAM_OPT      ( 0 ),
        .RDCNT_EN     ( 0 ),
        .RDEPTH       ( 1024 ),
        .RE_POLARITY  ( 0 ),
        .READ_DVALID  ( 0 ),
        .RWIDTH       ( 18 ),
        .SYNC         ( 0 ),
        .SYNC_RESET   ( 0 ),
        .UNDERFLOW_EN ( 0 ),
        .WDEPTH       ( 1024 ),
        .WE_POLARITY  ( 0 ),
        .WRCNT_EN     ( 0 ),
        .WRITE_ACK    ( 0 ),
        .WWIDTH       ( 18 ) )
COREFIFO_C1_0(
        // Inputs
        .CLK        ( GND_net ), // tied to 1'b0 from definition
        .WCLOCK     ( WCLOCK ),
        .RCLOCK     ( RCLOCK ),
        .RESET_N    ( GND_net ), // tied to 1'b0 from definition
        .WRESET_N   ( WRESET_N ),
        .RRESET_N   ( RRESET_N ),
        .DATA       ( DATA ),
        .WE         ( WE ),
        .RE         ( RE ),
        .MEMRD      ( MEMRD_const_net_0 ), // tied to 18'h00000 from definition
        // Outputs
        .Q          ( Q_net_0 ),
        .FULL       ( FULL_net_0 ),
        .EMPTY      ( EMPTY_net_0 ),
        .AFULL      (  ),
        .AEMPTY     (  ),
        .OVERFLOW   (  ),
        .UNDERFLOW  (  ),
        .WACK       (  ),
        .DVLD       (  ),
        .WRCNT      (  ),
        .RDCNT      (  ),
        .MEMWE      ( MEMWE_net_0 ),
        .MEMRE      ( MEMRE_net_0 ),
        .MEMWADDR   ( MEMWADDR_net_0 ),
        .MEMRADDR   ( MEMRADDR_net_0 ),
        .MEMWD      (  ),
        .SB_CORRECT (  ),
        .DB_DETECT  (  ) 
        );


endmodule
