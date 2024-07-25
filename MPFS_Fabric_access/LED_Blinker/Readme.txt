LED Blinker Logic Anaylzer Project

Course: ECE 532 Digital System Design - University of Toronto
Creator: Hamas Waqar

Purpose: 
This is an introduction project to allows students to understand
Microchip Libero SoC design flow from start to bottom. Students
will be creating custom IP that will be switch together in HDL. 
Then students will synthesize, place & route, and generate the 
bitstream for the project which will then be flashed onto the 
PolarFire SoC Discovery Kit. 

Project Description:
This project essentially is a LED blinker controlled by switches. 
Based on the 2 bit value from the switch, specific led will start 
blinking at 1 Hz. This project also contains (1) handshaking logic
to get students accustomed to the basics principal of AXI protocol,
and also (2) a clock divider and clock condition circuitry (CCC) to 
create a 1 Hz clock frequency for the LEDs from the 100 MHz PLL.

Simulation:
This project was simulated in Logisim Pro. A sim test bench is included
in the project. 

I/O and Signal Mapping:

Constaints file can be found here: 
https://github.com/polarfire-soc/polarfire-soc-discovery-kit-reference-design/tree/main/script_support/constraints

I/O Pin Name | I/O on Discovery Board | Connected Signal
--------------------------------------------------------
R18            REF_CLK_50MHz             clk
U17            DIP1			 inSwitch[0]
Y16	       DIP2			 inSwitch[1]
AA19           DIP8			 rstn
R17            DIP3                      valid
T18            LED1                      outBit1
V17            LED2                      outBit2
U20            LED3                      outBit3
U21            LED4                      outBit4



 
