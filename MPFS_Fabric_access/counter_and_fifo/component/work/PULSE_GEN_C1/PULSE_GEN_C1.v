//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jun 25 02:01:49 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of PULSE_GEN_C1 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325E
# Create and Configure the core component PULSE_GEN_C1
create_and_configure_core -core_vlnv {Actel:Simulation:PULSE_GEN:1.0.1} -component_name {PULSE_GEN_C1} -params {\
"PULSE_START_TIME:500"  \
"PULSE_TYPE:1"  \
"PULSE_WIDTH:500"   }
# Exporting Component Description of PULSE_GEN_C1 to TCL done
*/

// PULSE_GEN_C1
module PULSE_GEN_C1(
    // Outputs
    PULSE
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output PULSE;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   PULSE_net_0;
wire   PULSE_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign PULSE_net_1 = PULSE_net_0;
assign PULSE       = PULSE_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PULSE_GEN   -   Actel:Simulation:PULSE_GEN:1.0.1
PULSE_GEN #( 
        .PULSE_START_TIME ( 500 ),
        .PULSE_TYPE       ( 1 ),
        .PULSE_WIDTH      ( 500 ) )
PULSE_GEN_C1_0(
        // Outputs
        .PULSE ( PULSE_net_0 ) 
        );


endmodule
