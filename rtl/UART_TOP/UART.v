
module UART #( parameter DATA_WIDTH = 8 , PRESCALE_WIDTH = 5 )

(/*
 input   wire                          scan_clk,    
  input   wire                         scan_rst,    
 input   wire                          test_mode,    
 input   wire                          SE,    
 input   wire                          SI,    
 output   wire                          SO,*/
 input   wire                          RST,
 input   wire                          TX_CLK,
 input   wire                          RX_CLK,
 input   wire                          RX_IN_S,
 output  wire   [DATA_WIDTH-1:0]       RX_OUT_P, 
 output  wire                          RX_OUT_V,
 input   wire   [DATA_WIDTH-1:0]       TX_IN_P, 
 input   wire                          TX_IN_V, 
 output  wire                          TX_OUT_S,
 output  wire                          TX_OUT_V,  
 input   wire   [PRESCALE_WIDTH-1:0]   Prescale,
 input   wire                          parity_enable,
 input   wire                          parity_type
);
/*
wire TX_CLK_MUX,RX_CLK_MUX,RST_MUX;
MUX2 u_MUX2_TX_CLOCK(
    .IN0     (TX_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (TX_CLK_MUX )
);

MUX2 u_MUX2_RX_CLOCK(
    .IN0     (RX_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (RX_CLK_MUX )
);

MUX2 u_MUX2_RST(
    .IN0     (RST  ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (RST_MUX )
);
*/
RX u_RX1(
    .clk_Top        (RX_CLK        ),
    .rst_Top        (RST        ),
    .RX_IN_Top      (RX_IN_S      ),
    .Prescale_Top   (Prescale   ),
    .PAR_EN_TOP     (parity_enable     ),
    .PAR_TYP_Top    (parity_type    ),
    .Data_Valid_Top (RX_OUT_V ),
    .P_Data_Top     (RX_OUT_P     )
);

UART_TX_Top u_UART_TX_Top1(
    .clk             (TX_CLK            ),
    .RST             (RST             ),
    .P_Data_UART     (TX_IN_P     ),
    .Data_Valid_UART (TX_IN_V ),
    .Par_En_UART     (parity_enable     ),
    .Par_Type_UART   (parity_type   ),
    .TX_Out_UART     (TX_OUT_S     ),
    .Busy_UART       (TX_OUT_V       )
);



endmodule
 
