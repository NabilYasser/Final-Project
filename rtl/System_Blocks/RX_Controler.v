module RX_Controler #(
    parameter Data_width ='d8 ,REG_File_Depth='d16,
    Address_Depth=$clog2(REG_File_Depth),Num_Of_instructions='d14,
    Decoder_Size=$clog2(Num_Of_instructions)

) (
    input  wire                     clk         ,
    input  wire                     rst         ,

    input  wire                     ALU_Valid   ,
    output reg                      ALU_Enable  ,
    output reg [Decoder_Size-1:0]   ALU_Fun     , 

    output reg                      CLK_Gate_En ,

    output reg  [Address_Depth-1:0] REG_Address ,
    output reg                      REG_WrEn    ,
    output reg                      REG_RdEn    ,
    output reg  [Data_width-1:0]    REG_WrData  ,

    input  wire [Data_width-1:0]    Rx_P_Data    ,
    input  wire                     RX_Valid     


);
reg Save_En;
reg [Data_width-1:0] Saved_Data;
reg [2:0] Current_State,Next_State;
localparam Idle ='b000 ,
           REG_Wr_Add='b001 ,
           REG_Wr_Data='b011,
           REG_Rd_Add='b010 ,
           ALU_Wr_A=   'b110,
           ALU_Wr_B=   'b100,
           ALU_Fun_State='b101;



always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Current_State<='b0;
    end else begin
        Current_State<=Next_State;
    end
    
end

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Saved_Data<='b0;
    end else if(Save_En) begin
        Saved_Data<=Rx_P_Data;
    end

end


always @(*) begin
    REG_WrEn='b0;
    REG_RdEn='b0;
    REG_WrData='b0;
    ALU_Fun='b0;
    CLK_Gate_En='b0;
    ALU_Enable='b0;
    Save_En='b0;
    REG_Address=Saved_Data;
    case (Current_State)
        Idle:begin
            if (RX_Valid) begin
                case (Rx_P_Data)
                'hAA:begin
                    Next_State=REG_Wr_Add;
                end 

                'hBB:begin
                    Next_State=REG_Rd_Add;
                end 

                'hCC:begin
                    Next_State=ALU_Wr_A; //! CHEACK IT REG_Wr_Add or ALU_Wr_A
                end
                 
                'hDD:begin
                    Next_State=ALU_Fun_State;
                    CLK_Gate_En='b1;
                end
                default: begin
                    Next_State=Idle;
                end 
            endcase
            end else begin
                Next_State=Idle;
            end
        end 

        REG_Wr_Add:begin
            if (RX_Valid) begin
                Save_En='b1;
                Next_State=REG_Wr_Data;
            end else begin
                Next_State=REG_Wr_Add;
            end
        end

        REG_Wr_Data:begin
            if (RX_Valid) begin
                REG_WrEn='b1;
                REG_Address=Saved_Data;
                REG_WrData=Rx_P_Data; //! IT WONT WORK 
                Next_State=Idle;
            end else begin
                Next_State=REG_Wr_Data;
            end
        end

        REG_Rd_Add:begin
            if (RX_Valid) begin
                REG_RdEn='b1;
                REG_Address=Rx_P_Data;
                Next_State=Idle;
            end else begin
                Next_State=REG_Rd_Add;
            end
        end

        ALU_Wr_A:begin
             if (RX_Valid) begin
                REG_Address='b0;
                REG_WrEn='b1;
                REG_WrData=Rx_P_Data;
                Next_State=ALU_Wr_B;
            end else begin
                Next_State=ALU_Wr_A;
            end
        end

        ALU_Wr_B:begin
             if (RX_Valid) begin
                REG_Address='d1;
                REG_WrEn='b1;
                CLK_Gate_En='b1;
                REG_WrData=Rx_P_Data;
                Next_State=ALU_Fun_State;
            end else begin
                Next_State=ALU_Wr_B;
            end
        end

        ALU_Fun_State:begin
             if (RX_Valid) begin
                CLK_Gate_En='b1;
                ALU_Enable='b1;
                ALU_Fun=Rx_P_Data;
                if (ALU_Valid) begin //TODO: If the ALU takes more than 1 cycle  Multi And Div algo
                    Next_State=Idle;
                end else begin
                    Next_State=ALU_Fun_State;
                end
            end else begin
                Next_State=ALU_Fun_State;
            end
        end
        default: begin
            Next_State=Idle;
        end
    endcase

    end


endmodule