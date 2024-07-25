//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun 24 15:19:13 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of RESET_GEN_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325E
# Create and Configure the core component RESET_GEN_C0
create_and_configure_core -core_vlnv {Actel:Simulation:RESET_GEN:1.0.1} -component_name {RESET_GEN_C0} -params {\
"DELAY:400"  \
"LOGIC_LEVEL:0"   }
# Exporting Component Description of RESET_GEN_C0 to TCL done
*/

// RESET_GEN_C0
module RESET_GEN_C0(
    // Outputs
    RESET
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output RESET;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   RESET_net_0;
wire   RESET_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign RESET_net_1 = RESET_net_0;
assign RESET       = RESET_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN #( 
        .DELAY       ( 400 ),
        .LOGIC_LEVEL ( 0 ) )
RESET_GEN_C0_0(
        // Outputs
        .RESET ( RESET_net_0 ) 
        );


endmodule
