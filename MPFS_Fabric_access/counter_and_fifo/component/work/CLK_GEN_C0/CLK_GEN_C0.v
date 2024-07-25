//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun 24 15:18:36 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of CLK_GEN_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS095T-1FCSG325E
# Create and Configure the core component CLK_GEN_C0
create_and_configure_core -core_vlnv {Actel:Simulation:CLK_GEN:1.0.1} -component_name {CLK_GEN_C0} -params {\
"CLK_PERIOD:10000"  \
"DUTY_CYCLE:50"   }
# Exporting Component Description of CLK_GEN_C0 to TCL done
*/

// CLK_GEN_C0
module CLK_GEN_C0(
    // Outputs
    CLK
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output CLK;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK_net_0;
wire   CLK_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CLK_net_1 = CLK_net_0;
assign CLK       = CLK_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN #( 
        .CLK_PERIOD ( 10000 ),
        .DUTY_CYCLE ( 50 ) )
CLK_GEN_C0_0(
        // Outputs
        .CLK ( CLK_net_0 ) 
        );


endmodule
