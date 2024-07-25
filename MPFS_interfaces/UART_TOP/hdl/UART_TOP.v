module UART_TOP
  (input  i_Clk,       // Main Clock
   input i_Reset,
   input  i_UART_RX,   // UART RX Data
   output o_UART_TX    // UART TX Data
   ); 
 
        wire w_RX_DV;
        wire [7:0] w_RX_Byte;
        wire w_TX_Active, w_TX_Serial;

        // 25,000,000 / 115,200 = 217
        UART_RX #(.CLKS_PER_BIT(25)) UART_RX_Inst
        (.i_Clock(i_Clk),
        .i_Rst_L(i_Reset),
        .i_RX_Serial(i_UART_RX),
        .o_RX_DV(w_RX_DV),
        .o_RX_Byte(w_RX_Byte));

        UART_TX #(.CLKS_PER_BIT(25)) UART_TX_Inst
        (.i_Clock(i_Clk),
        .i_Rst_L(i_Reset),
        .i_TX_DV(w_RX_DV),      // Pass RX to TX module for loopback
        .i_TX_Byte(w_RX_Byte),  // Pass RX to TX module for loopback
        .o_TX_Active(w_TX_Active),
        .o_TX_Serial(w_TX_Serial),
        .o_TX_Done());

        // Drive UART line high when transmitter is not active
        assign o_UART_TX = w_TX_Active ? w_TX_Serial : 1'b1; 


endmodule