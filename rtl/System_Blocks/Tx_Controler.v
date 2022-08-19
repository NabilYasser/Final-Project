module Tx_Controler #(
    parameter Data_width ='d8,ALU_Output_Data_width='d16
) (
    input  wire                     clk         ,
    input  wire                     rst         ,

    input  wire [ALU_Output_Data_width-1:0]    ALU_Out     ,
    input  wire                     ALU_Valid   ,

    input  wire [Data_width-1:0]    REG_RdData  ,
    input  wire                     REG_Rd_Valid,

    input  wire                    Tx_Busy      ,
    output reg  [Data_width-1:0]   Tx_P_Data    ,
    output reg                     Tx_Valid     ,
    output wire                    Clk_Div_En   //!

); 
wire [1:0] Flags;
//reg Save_En;

assign Flags={REG_Rd_Valid,ALU_Valid};

assign Clk_Div_En=1'b1;

//reg [Data_width:0] Saved_Data;
reg [2:0] Current_State,Next_State;

localparam Idle ='b000 ,
           REG_Packet='b001,
           ALU_Packet_1='b011,
           Wait='b010,
           ALU_Packet_2='b110;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Current_State<=Idle;
    end else begin
        Current_State<=Next_State;
    end
end
/*
always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Saved_Data<='b0;
    end else if(REG_Rd_Valid) begin
        Saved_Data<=REG_RdData;
    end else if(Save_En) begin
        Saved_Data<=ALU_Out[Data_width*2-1:Data_width];
    end
end*/


always @(*) begin
   Tx_Valid='b0;
   Tx_P_Data='b0;
   case (Current_State)
    Idle:begin 
        if (!Tx_Busy) begin
            case (Flags)
            'b10:Next_State=REG_Packet;
            'b01: Next_State=ALU_Packet_1;
             
            default:Next_State=Idle; 
        endcase
        end else begin
            Next_State=Idle;
        end
    end 

    REG_Packet:begin
        Tx_Valid='b1;
        Tx_P_Data=REG_RdData;
        if (Tx_Busy) begin
           Next_State=Idle; 
        end else begin
            Next_State=REG_Packet;
        end
    end

    ALU_Packet_1:begin
        Tx_Valid='b1;
        Tx_P_Data=ALU_Out[Data_width-1:0];
        if (Tx_Busy) begin
           Next_State=Wait; 
        end else begin
            Next_State=ALU_Packet_1;
        end
    end

    Wait:begin
        if (!Tx_Busy) begin
            Next_State=ALU_Packet_2; 
        end else begin
            Next_State=Wait;
        end
    end

    ALU_Packet_2:begin
        Tx_Valid='b1;
        Tx_P_Data=ALU_Out[Data_width*2-1:Data_width];
        if (Tx_Busy) begin
           Next_State=Idle; 
        end else begin
            Next_State=ALU_Packet_2;
        end
        
    end
    default: Next_State=Idle; 
   endcase

end





    
endmodule