module ALU #(
    parameter Data_width='d8,Output_Data_width='d16,Num_Of_instructions='d14,
    Decoder_Size=$clog2(Num_Of_instructions),Counter_Width=$clog2(Data_width)
) (
    input  wire                      clk      ,
    input  wire                      rst      ,
    input  wire [Data_width-1:0]     Operand_A,
    input  wire [Data_width-1:0]     Operand_B,
    input  wire [Decoder_Size-1:0]   ALU_Fun  ,
    input  wire                      Enable   ,
    output reg  [Output_Data_width-1:0]     ALU_Out  ,
    output reg                       Out_Valid

);

reg [Output_Data_width-1:0] ALU_Out_Comb;
reg Out_Valid_Comb;
reg Mutli_Start;

localparam Add ='d0, 
           Sub ='d1,
           Multi='d2,
           Div='d3,
           AND='d4,
           OR='d5,
           NAND='d6,
           NOR='d7,
           XOR='d8,
           XNOR='d9,
           CMP_Eq='d10,
           CMP_La='d11,
           CMP_Le='d12,
           Shift_Right='d13,
           Shift_Left='d14;


always @(posedge clk or negedge rst) begin
    if (!rst) begin
        ALU_Out<='b0;
        Out_Valid<='b0;
    end else begin
        ALU_Out<=ALU_Out_Comb;
        Out_Valid<=Out_Valid_Comb;
    end
    
end

always @(*) begin
    Out_Valid_Comb='b0;
    ALU_Out_Comb='b0;
    Mutli_Start='b0;

    if (Enable) begin
    Out_Valid_Comb='b1;
    case (ALU_Fun)
        Add:begin
            ALU_Out_Comb=Operand_A+Operand_B;
        end 

        Sub:begin
            ALU_Out_Comb=Operand_A-Operand_B;
        end

        Multi:begin
            Mutli_Start='b1;

            //ALU_Out_Comb=Operand_A*Operand_B; //TODO Find another algo
        end

        Div:begin
            ALU_Out_Comb=Operand_A/Operand_B; //TODO Find another algo
        end

        AND:begin
            ALU_Out_Comb=Operand_A & Operand_B;
        end

        OR:begin
            ALU_Out_Comb=Operand_A | Operand_B;
        end

        NAND:begin
            ALU_Out_Comb=~(Operand_A & Operand_B);
        end

        NOR:begin
            ALU_Out_Comb=~(Operand_A | Operand_B);
        end

        XOR:begin
            ALU_Out_Comb=Operand_A ^ Operand_B;
        end

        XNOR:begin
            ALU_Out_Comb=~(Operand_A ^ Operand_B);
        end

        CMP_Eq:begin
            if (Operand_A==Operand_B) begin
                ALU_Out_Comb='b1;
            end else begin
                ALU_Out_Comb='b0;
            end
            
        end

        CMP_La:begin
            if (Operand_A>Operand_B) begin
                ALU_Out_Comb='b1;
            end else begin
                ALU_Out_Comb='b0;
            end
        end
        
        CMP_Le:begin
            if (Operand_A<Operand_B) begin
                ALU_Out_Comb='b1;
            end else begin
                ALU_Out_Comb='b0;
            end
        end

        Shift_Right:begin
            ALU_Out_Comb=Operand_A>>1;
        end
        Shift_Left:begin
            ALU_Out_Comb=Operand_A<<1;
        end


        default:ALU_Out_Comb='b0; 
    endcase
    
end else begin
    Out_Valid_Comb='b0;
    ALU_Out_Comb='b0;
end
end

            Booth_Multi #(
                .Data_Width    (Data_width    ),
                .Counter_Width (Counter_Width )
            )
            u_Booth_Multi(
            	.clk                (clk                ),
                .rst                (rst                ),
                .Multi_En           (Mutli_Start),
                .Multiplicand       (Operand_A       ),
                .Multiplier         (Operand_B         ),
                .Multip_Finsh       (Out_Valid       ),
                .Multiplication_Out (ALU_Out )
            );
            
    
endmodule


