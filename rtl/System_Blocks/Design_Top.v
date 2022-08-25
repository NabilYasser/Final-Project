module Design_Top #(
    parameter Data_width='d8,REG_File_Depth='d16,
    Address_Depth=$clog2(REG_File_Depth),Num_Of_instructions='d14,
    Decoder_Size=$clog2(Num_Of_instructions),ALU_Output_Data_width='d16,
    ALU_Operand_A_RST='b0,ALU_Operand_B_RST='b0,
    UART_Config_RST='b000011100, //[0]:Parity Enable=0,[1]:Parity Type=0,[6:2]:prescale=8
    Div_Ratio_RST='b0000_1000
) (
  input   wire                          scan_clk,    
  input   wire                         scan_rst,    
 input   wire                          test_mode,    
 input   wire                          SE,    
 input   wire   [2:0]                       SI,    
 output   wire   [2:0]                       SO,

    input  wire    REF_CLK ,
    input  wire    UART_CLK,
    input  wire    RST     , 

    input  wire       RX_IN,
    output wire    TX_OUT 
);

// Wires Between the ALU and Control Unit
wire ALU_Enable_Top,CLK_Gate_En_Top;
wire [Decoder_Size-1:0] ALU_Fun_Top;
// ALU
wire ALU_CLK,ALU_Out_Valid_Top;
wire [Data_width-1:0] Operand_A_Top,Operand_B_Top;
wire [ALU_Output_Data_width-1:0] ALU_Out_Top;

// Wires Between the Reg File and Control Unit
wire REG_WrEn_Top,REG_RdEn_Top;
wire  [Address_Depth-1:0] REG_Address_Top;
wire [Data_width-1:0] REG_WrData_Top;

wire REG_Rd_Valid_Top;
wire [Data_width-1:0] REG_RdData_Top;

wire [6:0] REG2_UART_Config_Top;
wire [3:0] REG3_DIV_Top;

// Wires Between the RX and Control Unit
wire RX_Valid_Top,RX_Valid_Syn;
wire [Data_width-1:0] Rx_P_Data_Top,Rx_P_Data_Syn;

//
wire Tx_Busy_Top,Tx_Valid_Top_UnSyn,Tx_Busy_UnSyn,TX_IN_V_Top_Syn;
wire [Data_width-1:0] Tx_P_Data_Top_UnSyn,TX_IN_P_Top_Syn;

wire REF_CLK_Sync_RST,UART_CLK_Sync_RST;

wire REF_CLK_MUX,UART_CLK_MUX,TX_CLK_MUX;

wire TX_CLK;
wire REF_CLK_Sync_RST_MUX,RST_MUX,UART_CLK_Sync_RST_MUX;
MUX2 u_MUX2_TX_CLOCK(
    .IN0     (REF_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (REF_CLK_MUX )
);

MUX2 u_MUX2_RX_CLOCK(
    .IN0     (UART_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (UART_CLK_MUX )
);
MUX2 u_MUX2(
    .IN0     (TX_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (TX_CLK_MUX )
);


MUX2 u_MUX2_RST(
    .IN0     (RST  ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (RST_MUX )
);
MUX2 u_MUX2_REF_RST(
    .IN0     (REF_CLK_Sync_RST  ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (REF_CLK_Sync_RST_MUX )
);
MUX2 u_MUX2_UART_RST(
    .IN0     (UART_CLK_Sync_RST  ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (UART_CLK_Sync_RST_MUX )
);


RX_Controler #(
    .Data_width     (Data_width     ),
    .REG_File_Depth (REG_File_Depth ),
    .Address_Depth  (Address_Depth  ),
    .Num_Of_instructions(Num_Of_instructions),
    .Decoder_Size(Decoder_Size)

)
u_RX_Controler(
    .clk         (REF_CLK_MUX         ),
    .rst         (REF_CLK_Sync_RST_MUX             ),

    .ALU_Valid   (ALU_Out_Valid_Top   ),
    .ALU_Enable  (ALU_Enable_Top  ),
    .ALU_Fun     (ALU_Fun_Top     ),
    .CLK_Gate_En (CLK_Gate_En_Top ),

    .REG_Address (REG_Address_Top ),
    .REG_WrEn    (REG_WrEn_Top    ),
    .REG_RdEn    (REG_RdEn_Top    ),
    .REG_WrData  (REG_WrData_Top  ),

    .Rx_P_Data   (Rx_P_Data_Syn   ),
    .RX_Valid    (RX_Valid_Syn    )
);

Data_Sync u_Data_Sync(
    .Unsync_Bus   (Rx_P_Data_Top   ),
    .Enable       (RX_Valid_Top       ),
    .clk          (REF_CLK_MUX          ),
    .rst          (REF_CLK_Sync_RST_MUX          ),
    .Sync_Bus     (Rx_P_Data_Syn     ),
    .Enable_Pulse (RX_Valid_Syn )
);





Tx_Controler #(
    .Data_width            (Data_width            ),
    .ALU_Output_Data_width (ALU_Output_Data_width )
)
u_Tx_Controler(
    .clk          (REF_CLK_MUX          ),
    .rst          (REF_CLK_Sync_RST_MUX          ), 
    .ALU_Out      (ALU_Out_Top      ),
    .ALU_Valid    (ALU_Out_Valid_Top    ),
    .REG_RdData   (REG_RdData_Top   ),
    .REG_Rd_Valid (REG_Rd_Valid_Top ),
    .Tx_Busy      (Tx_Busy_Top      ),
    .Tx_P_Data    (Tx_P_Data_Top_UnSyn    ),
    .Tx_Valid     (Tx_Valid_Top_UnSyn     )
);


ALU #(
    .Data_width          (Data_width          ),
    .Output_Data_width   (ALU_Output_Data_width),
    .Num_Of_instructions (Num_Of_instructions ),
    .Decoder_Size        (Decoder_Size        )
)
u_ALU(
    .clk       (ALU_CLK       ),
    .rst       (REF_CLK_Sync_RST_MUX       ),
    .Operand_A (Operand_A_Top ),
    .Operand_B (Operand_B_Top ),
    .ALU_Fun   (ALU_Fun_Top   ),
    .Enable    (ALU_Enable_Top    ),
    .ALU_Out   (ALU_Out_Top   ),
    .Out_Valid (ALU_Out_Valid_Top )
);

Clock_Gating u_Clock_Gating(
    .clk       (REF_CLK_MUX       ),
    .En        (CLK_Gate_En_Top        ),
    .test_mode(test_mode),
    .Gated_clk (ALU_CLK )
);


REG_File #(
    .Data_width        (Data_width        ),
    .REG_File_Depth    (REG_File_Depth    ),
    .Address_Depth     (Address_Depth     ),
    .ALU_Operand_A_RST (ALU_Operand_A_RST ),
    .ALU_Operand_B_RST (ALU_Operand_B_RST ),
    .UART_Config_RST   (UART_Config_RST   ),
    .Div_Ratio_RST     (Div_Ratio_RST     )
)
u_REG_File(
    .clk          (REF_CLK_MUX          ),
    .rst          (REF_CLK_Sync_RST_MUX          ),
    .Address      (REG_Address_Top      ),
    .WrEn         (REG_WrEn_Top         ),
    .RdEn         (REG_RdEn_Top         ),
    .WrData       (REG_WrData_Top       ),
    .RdData       (REG_RdData_Top       ),
    .RdData_Valid (REG_Rd_Valid_Top ),
    .REG0_ALU_A   (Operand_A_Top   ),
    .REG1_ALU_B   (Operand_B_Top   ),
    .REG2_UART    (REG2_UART_Config_Top    ),
    .REG3_DIV     (REG3_DIV_Top     )
);

UART  u_UART(
    .RST           (UART_CLK_Sync_RST_MUX           ), 
    .TX_CLK        (TX_CLK_MUX        ),
    .RX_CLK        (UART_CLK_MUX        ),
    .RX_IN_S       (RX_IN       ),
    .RX_OUT_P      (Rx_P_Data_Top      ),
    .RX_OUT_V      (RX_Valid_Top      ),
    .TX_IN_P       (TX_IN_P_Top_Syn       ),
    .TX_IN_V       (TX_IN_V_Top_Syn       ),
    .TX_OUT_S      (TX_OUT      ),
    .TX_OUT_V      (Tx_Busy_UnSyn      ),
    .Prescale      (REG2_UART_Config_Top [6:2]      ),
    .parity_enable (REG2_UART_Config_Top[0]  ),
    .parity_type   (REG2_UART_Config_Top[1]    )
);

Multi_Flop_Synchronizer u_Busy_Syn(
    .async (Tx_Busy_UnSyn ),
    .clk   (REF_CLK_MUX   ),
    .rst   (REF_CLK_Sync_RST_MUX   ), 
    .sync  (Tx_Busy_Top  )
);  


Data_Sync u_Tx_Data_Syn(
    .Unsync_Bus   (Tx_P_Data_Top_UnSyn   ),
    .Enable       (Tx_Valid_Top_UnSyn       ),
    .clk          (TX_CLK_MUX          ),
    .rst          (UART_CLK_Sync_RST_MUX          ),
    .Sync_Bus     (TX_IN_P_Top_Syn     ),
    .Enable_Pulse (TX_IN_V_Top_Syn )
);

Clock_Divider u_Clock_Divider(
    .i_ref_clk   (UART_CLK_MUX   ),
    .i_rst_n     (UART_CLK_Sync_RST_MUX     ),
    .i_clk_en    (1'b1    ),
    .i_div_ratio (REG3_DIV_Top ),
    .o_div_clk   (TX_CLK   )
);

RST_Sync u_REF_CLK_RST_SYN(
    .RST      (RST_MUX      ),
    .clk      (REF_CLK_MUX      ),
    .Sync_RST (REF_CLK_Sync_RST )
);

RST_Sync u_RST_Sync(
    .RST      (RST_MUX      ),
    .clk      (UART_CLK_MUX      ),
    .Sync_RST (UART_CLK_Sync_RST )
);





    
endmodule