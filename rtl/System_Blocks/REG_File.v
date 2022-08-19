module REG_File #(
    parameter Data_width='d8,REG_File_Depth='d16,Address_Depth=$clog2(REG_File_Depth),ALU_Operand_A_RST='b0,ALU_Operand_B_RST='b0,
    UART_Config_RST='b000011100, //[0]:Parity Enable=0,[1]:Parity Type=0,[6:2]:prescale=8
    Div_Ratio_RST='b00001000
) (
    input  wire                      clk         , 
    input  wire                      rst         ,
    input  wire [Address_Depth-1:0]  Address     ,
    input  wire                      WrEn        ,
    input  wire                      RdEn        ,
    input  wire [Data_width-1:0]     WrData      ,

    output wire [Data_width-1:0]      RdData       ,
    output reg                      RdData_Valid ,
    output wire [Data_width-1:0]    REG0_ALU_A   ,
    output wire [Data_width-1:0]    REG1_ALU_B   ,
    output wire [6:0]    REG2_UART    ,
    output wire [3:0]    REG3_DIV  
);
    integer i;
    reg [Data_width-1:0] Memory [0:REG_File_Depth-1];

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            Memory[0]<=ALU_Operand_A_RST;
            Memory[1]<=ALU_Operand_B_RST;
            Memory[2]<=UART_Config_RST; 
            Memory[3]<=Div_Ratio_RST; 
            for (i ='d4 ;i<REG_File_Depth ;i=i+1 ) begin
                Memory[i]<='b0;
            end
        end else if (WrEn) begin
            Memory[Address]<=WrData;
        end 
            
    end




    assign RdData=Memory[Address];
    assign REG0_ALU_A=Memory[0];
    assign REG1_ALU_B=Memory[1];
    assign REG2_UART=Memory[2];
    assign REG3_DIV=Memory[3];

    always @(*) begin
        if (RdEn) begin
            RdData_Valid='b1;
        end else begin
            RdData_Valid='b0;
        end
    end



endmodule
