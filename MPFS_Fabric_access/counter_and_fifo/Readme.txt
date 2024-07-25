Counter and FIFO Project

Course: ECE 532 Digital System Design - University of Toronto
Creator: Hamas Waqar

Purpose: 
The purpose of this project is to experiment with Libero SmartDesign,
particularly add custom HDL/IP blocks, IP blocks, add constant value
to the design, tie off unused signals, etc. 

Project Description:
This projects creates FIFO using Microchip IP. Particularly, a FIFO
controller was created using CoreFIFO IP. This controller stores a 18-bit
data word in 1024 deep FIFO. Additionally, a true port SRAM IP (TPSRAM) was
used to generate a SRAM to sore the data of the FIFO. Note that the CoreFIFO
IP should create memory along with the FIFO controller but currently this feature
is broken. In addition, a custom counter IP was created that generates data to be
feed into the FIFO. Also a clock conditioning circuitry IP (CCC) was used to create
a clock frequency of 200 MHz from which this digital design will be operating at. 

This project is based on Microchip’s “Simulate a SmartDesign Project” video on Youtube.
 

Simulation:
This project was simulated in Logisim Pro. A sim test bench is included
in the project. 

I/O and Signal Mapping:
N/A