//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun 24 12:10:28 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of PF_TPSRAM_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325E
# Create and Configure the core component PF_TPSRAM_C0
create_and_configure_core -core_vlnv {Actel:SgCore:PF_TPSRAM:1.1.108} -component_name {PF_TPSRAM_C0} -params {\
"A_DOUT_EN_PN:R_DATA_EN"  \
"A_DOUT_EN_POLARITY:2"  \
"A_DOUT_SRST_PN:R_DATA_SRST_N"  \
"A_DOUT_SRST_POLARITY:2"  \
"A_WBYTE_EN_PN:WBYTE_EN"  \
"BUSY_FLAG:0"  \
"BYTE_ENABLE_WIDTH:0"  \
"BYTEENABLES:0"  \
"CASCADE:0"  \
"CLK_EDGE:RISE"  \
"CLKS:1"  \
"CLOCK_PN:CLK"  \
"DATA_IN_PN:W_DATA"  \
"DATA_OUT_PN:R_DATA"  \
"ECC:0"  \
"IMPORT_FILE:"  \
"INIT_RAM:F"  \
"LPM_HINT:0"  \
"LPMTYPE:LPM_RAM"  \
"PMODE2:0"  \
"PTYPE:1"  \
"RADDRESS_PN:R_ADDR"  \
"RCLK_EDGE:RISE"  \
"RCLOCK_PN:R_CLK"  \
"RDEPTH:64"  \
"RE_PN:R_EN"  \
"RE_POLARITY:1"  \
"RESET_PN:R_DATA_ARST_N"  \
"RESET_POLARITY:2"  \
"RWIDTH:20"  \
"SII_LOCK:0"  \
"WADDRESS_PN:W_ADDR"  \
"WCLK_EDGE:RISE"  \
"WCLOCK_PN:W_CLK"  \
"WDEPTH:64"  \
"WE_PN:W_EN"  \
"WE_POLARITY:1"  \
"WWIDTH:20"   }
# Exporting Component Description of PF_TPSRAM_C0 to TCL done
*/

// PF_TPSRAM_C0
module PF_TPSRAM_C0(
    // Inputs
    CLK,
    R_ADDR,
    R_EN,
    W_ADDR,
    W_DATA,
    W_EN,
    // Outputs
    R_DATA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input  [5:0]  R_ADDR;
input         R_EN;
input  [5:0]  W_ADDR;
input  [19:0] W_DATA;
input         W_EN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [19:0] R_DATA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [5:0]  R_ADDR;
wire   [19:0] R_DATA_net_0;
wire          R_EN;
wire   [5:0]  W_ADDR;
wire   [19:0] W_DATA;
wire          W_EN;
wire   [19:0] R_DATA_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net    = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign R_DATA_net_1 = R_DATA_net_0;
assign R_DATA[19:0] = R_DATA_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PF_TPSRAM_C0_PF_TPSRAM_C0_0_PF_TPSRAM   -   Actel:SgCore:PF_TPSRAM:1.1.108
PF_TPSRAM_C0_PF_TPSRAM_C0_0_PF_TPSRAM PF_TPSRAM_C0_0(
        // Inputs
        .W_DATA ( W_DATA ),
        .W_ADDR ( W_ADDR ),
        .R_ADDR ( R_ADDR ),
        .W_EN   ( W_EN ),
        .R_EN   ( R_EN ),
        .CLK    ( CLK ),
        // Outputs
        .R_DATA ( R_DATA_net_0 ) 
        );


endmodule
