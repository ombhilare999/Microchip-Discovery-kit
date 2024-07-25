`timescale 1ns/1fs

module PULSE_GEN(PULSE); 

   parameter PULSE_START_TIME  = 1000;  
   parameter PULSE_WIDTH = 10 ;
   parameter PULSE_TYPE = 1 ;
   
   output PULSE;
   wire PULSE; 
   
   reg PULSE1;
   reg PULSE2;

   
   
   initial
   begin
		PULSE1 = 1'b0 ;
		PULSE2 = 1'b0 ;
		#PULSE_START_TIME
			PULSE1 = 1'b1;
		#PULSE_WIDTH
			PULSE1 = 1'b0 ;
			
   end
   
   always 
   begin
		#PULSE_START_TIME
			PULSE2 = 1'b1 ;
		#PULSE_WIDTH
			PULSE2 = 1'b0 ;
   end

	assign PULSE = PULSE_TYPE ? PULSE2 : PULSE1 ;

endmodule 