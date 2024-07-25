
module OLED_interface_synth (input CLK100MHZ, //100MHz clock, stepped down to 5MHz
                       input [2:0] sw, //determines MODE
                       //input btnC, //reset
                       input btnU, btnD, //i_START
                       output [7:0] JA //OLED PMOD Port
                       );
    
    parameter WIDTH        = 8; //# of serial bits to transmit over MOSI, loaded from i_DATA
    parameter N            = 8; //# of serial bits to transmit over MOSI, loaded from i_DATA
    parameter SCLK_DIVIDER = 20; //divide clock by 1
    
    parameter WAIT_3_US = 20; 
    parameter WAIT_100_MS = 600000;

    parameter NUM_COL = 96; //# of columns in OLED array
    parameter NUM_ROW = 64; //# of rows in OLED array

    parameter ASCII_COL_SIZE = 8; //Number of x bits of ASCII char
    parameter ASCII_ROW_SIZE = 8; //Number of y bits of ASCII char
    
    parameter NUM_ASCII_COL  = NUM_COL / ASCII_COL_SIZE; //# of cols of ASCII chars (12 Default)
    parameter NUM_ASCII_ROW  = NUM_ROW / ASCII_ROW_SIZE; //# of rows of ASCII chars (8 Default

    parameter N_COLOR_BITS = 8;

    //Wires to inputs
    wire [1:0] s_MODE;
    wire s_TICK, s_START;

    //Wires to outputs
    wire s_READY, s_CS, s_MOSI, s_SCK, s_DC, s_RES, s_VCCEN, s_PMODEN;

    wire [WIDTH-1:0] s_background_color;

    wire [NUM_ASCII_COL * NUM_ASCII_ROW * 8 - 1:0] s_ASCII;

    OLED_interface 
    #(.WIDTH(WIDTH), 
    .N(N), 
    .SCLK_DIVIDER(SCLK_DIVIDER), 
    .WAIT_3_US(WAIT_3_US), 
    .WAIT_100_MS(WAIT_100_MS),
    .NUM_COL(NUM_COL),
    .NUM_ROW(NUM_ROW),
    .ASCII_COL_SIZE(ASCII_COL_SIZE),
    .ASCII_ROW_SIZE(ASCII_ROW_SIZE),
    .N_COLOR_BITS(N_COLOR_BITS)
    ) 

    g_OLED_interface
    (.i_CLK(CLK100MHZ),
    .i_RST(sw[2]),
    .i_MODE(s_MODE), //00 for start, 01 for color spam
    .i_START(s_START),
    .i_TEXT_COLOR(8'h00),
    .i_BACKGROUND_COLOR(8'hFF),
    .i_ASCII(s_ASCII), 
    .o_READY(s_READY),
    .o_CS(s_CS),
    .o_MOSI(s_MOSI),
    .o_SCK(s_SCK),
    .o_DC(s_DC),
    .o_RES(s_RES),
    .o_VCCEN(s_VCCEN),
    .o_PMODEN(s_PMODEN)
    );


    button_tick_latch g_button_tick_latch
    (.i_CLK(s_SCK),
    .i_RST(sw[2]),
    .i_BTN(btnU),
    .o_TICK(s_TICK)
    );

    assign s_START = s_TICK | btnD;

    //Sets Mode
    /*
    2'b00: turnon
    */
    assign s_MODE = {sw[1], sw[0]};

    assign JA[0] = s_CS;       // GPIO 16 --> B15
    assign JA[1] = s_MOSI;     // GPIO 14 --> A20
    assign JA[2] = 1'b0;       // GPIO 15 --> B21
    assign JA[3] = s_SCK;      // GPIO 17 --> G18
    assign JA[4] = s_DC;       // GPIO 04 --> E12
    assign JA[5] = s_RES;      // GPIO 12 --> B20
    assign JA[6] = s_VCCEN;    // GPIO 05 --> D17
    assign JA[7] = s_PMODEN;   // GPIO 06 --> D18 


    //12 col, 8 row, 8 byte per ASCII
    assign s_ASCII = {"            ",
                      "            ",
                      "   ECE532   ", 
                      "            ", 
                      "   ECE532   ", 
                      "            ",
                      "   ECE532   ", 
                      "            "};
                      
endmodule