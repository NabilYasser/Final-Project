module Booth_Multi #(
    parameter Data_Width='d3,Counter_Width=$clog2(Data_Width)
) (
    input  wire       clk,
    input  wire       rst,
    input  wire       Multi_En,
    input  wire signed [Data_Width-1:0] Multiplicand,
    input  wire signed [Data_Width-1:0] Multiplier ,
    output wire                  Multip_Finsh,
    output wire signed [2*Data_Width-1:0] Multiplication_Out

);
wire [Data_Width-1:0]AC_In,AC_Out,BR_In,BR_Out,Q_In,Q_Out;
wire AC_En,BR_En,Q_En;

wire q1_In,q1_En,q1_Out;

wire [Counter_Width-1:0] Counter_Top;
wire Counter_Finsh_Top,Counter_Load_Top,Counter_Down_Top;

wire Load_Defult_Top,ALU_EN_TOP,ALU_Valid_Top;
wire [1:0] ALU_Func_Top;
wire [2*Data_Width:0] ALU_Out_Top;
assign Multiplication_Out= {AC_Out,Q_Out};


wire [Data_Width-1:0] Default_Value;
assign Default_Value='b0;
   

   Control_Unit u_Control_Unit(
   	.clk           (clk           ),
    .rst           (rst           ),
    .The_2_Qs      ({Q_Out[0],q1_Out}     ),
    .Multi_En      (Multi_En),
    .Counter_Finsh (Counter_Finsh_Top ),
    .ALU_Valid     (ALU_Valid_Top),
    .Load_Defult   (Load_Defult_Top   ),
    .ALU_Func      (ALU_Func_Top      ),
    .ALU_EN        (ALU_EN_TOP        ),
    .Counter_Down  (Counter_Down_Top  ),
    .AC_EN         (AC_En         ),
    .q1_En         (q1_En),
    .Q_En           (Q_En),
    .Multip_Finsh  (Multip_Finsh  )
   );


   Multi_ALU #(
    .data_Width (Data_Width )
   )
   u_ALU(
    .clk         (clk),
    .rst         (rst),
   	.Func        (ALU_Func_Top        ),
    .AC          (AC_Out          ),
    .Q           (Q_Out),
    .q           (q1_Out           ),
    .Multipicand (BR_Out ),
    .ALU_En      (ALU_EN_TOP),
    .ALU_Valid   (ALU_Valid_Top   ),
    .ALU_out     (ALU_Out_Top     )
   );
   

   Multi_REG_File #(
    .data_Width (Data_Width )
   )
   u_AC(
   	.clk      (clk      ),
    .rst      (rst      ),
    .Data_In  (ALU_Out_Top[2*Data_Width:Data_Width+1]  ),
    .Default_Value(Default_Value),
    .Load_Default(Load_Defult_Top),
    .Write_En (AC_En ),
    .Data_Out (AC_Out )
   );

   
    
    Multi_REG_File #(
        .data_Width (Data_Width )
    )
    u_Multiplicand(
    	.clk      (clk      ),
        .rst      (rst      ),
        .Data_In  (Multiplicand  ),
        .Default_Value(Default_Value),
        .Load_Default(1'b0),
        .Write_En (Load_Defult_Top ),
        .Data_Out (BR_Out )
    );

    Multi_REG_File #(
        .data_Width (Data_Width )
    )
    u_Q(
    	.clk      (clk      ),
        .rst      (rst      ),
        .Data_In  (ALU_Out_Top[Data_Width:1]),
        .Default_Value(Multiplier),
        .Load_Default(Load_Defult_Top),
        .Write_En (Q_En  ),
        .Data_Out (Q_Out )
    );
    


    Multi_REG_File #(
        .data_Width ('d1 ),
        .RST_Value  ('b0  )
    )
    u_REG_File(
    	.clk      (clk      ),
        .rst      (rst      ),
        .Data_In  (ALU_Out_Top[0]  ),
        .Default_Value(1'b0),
        .Load_Default(Load_Defult_Top),
        .Write_En (q1_En ),
        .Data_Out (q1_Out )
    );
    

    Multi_Counter #(
        .Data_Width    (Data_Width    ),
        .Counter_Width (Counter_Width )
    )
    SC(
    	.clk     (clk     ),
        .rst     (rst     ),
        .Down    (Counter_Down_Top    ),
        .Load    (Load_Defult_Top    ),
        .Finsh   (Counter_Finsh_Top   ),
        .Counter (Counter_Top )
    );
    
    
endmodule