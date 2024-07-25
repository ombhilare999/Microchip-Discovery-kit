AXI4 Lite Project

Course: ECE 532 Digital System Design - University of Toronto
Creator: Hamas Waqar

Purpose: 
The purpose of this project is to experiment in packaging custom IP to 
facilitate communication between IPs via bus protocol such as AXI. This project
required creating custom IP for AXI4Lite Master and Slave modules that was 
stitched on SmartDesign.
 
This project was only simulated, hence did not pass the Libero design flow. 

Project Description:
To begin with, this project is based on Assignment 1 from ECE 532 which
requires student to create and AXI4-Lite interface around a simple module. This
simple modules, mask532, masks n number of bits in a giving data value. However, data value 
along with the number of masking bits are sent to the mask532 module through AXI4Lite. Hence, 
this module will need to wrap an AXI4Lite slave interface to facilitate the communication. Do
note that data for other signals will also be send through the AXI4Lite interface.

Since AXI4Lite is memory mapped, the address of the registers are the following

Address        | Reg/Signal Name
0x00000000     | n_value
0x00000004     | data_value
0x00000008     | output_addr
0x0000000C     | init_write

A master AXI module was added to facilitate the handshaking with the AXI4Lite slave interface
during simulation.

Note that SmartDesign currently does not allow users to connect two interfaces of an custom IPs
together, and hence need to use an AXI interconnect IP.

For a more description depiction, of the design, please see the block diagram,
attached to this project folder.

Simulation:
This project was simulated in Logisim Pro. A sim test bench is included
in the project. 

I/O and Signal Mapping:
N/A