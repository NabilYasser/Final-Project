module Control_Unit (
    input  wire           clk          ,
    input  wire           rst          ,
    input  wire [1:0]     The_2_Qs,
    input  wire           Counter_Finsh,
    input  wire           ALU_Valid ,
    input  wire           Multi_En,

    output reg            Load_Defult  ,

    output reg [1:0]      ALU_Func     ,
    output reg            ALU_EN       ,

    output reg           Counter_Down  ,

    output reg            AC_EN        ,
    output reg            q1_En        ,
    output reg            Q_En        ,

    output reg            Multip_Finsh 
    
);

reg [2:0] Current_State,Next_State;

localparam Idle ='b000 ,
           Comparing_QS='b001,
           Shifting='b111,
           Finsh='b110;
           
    


    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            Current_State<='b0;
        end else begin
            Current_State<=Next_State;
        end

    end


    always @(*) begin
        Load_Defult='b0;
        ALU_Func='b11;
        ALU_EN='b0;
        Counter_Down='b0;
        AC_EN='b0;
        q1_En='b0;
        Q_En='b0;
        Multip_Finsh='b0;
        Next_State=Idle;
        case (Current_State)
            Idle: begin
                Load_Defult='b1;
                if (Multi_En) begin
                    Next_State=Comparing_QS;
                end else begin
                    Next_State=Idle;
                end
                
                
            end

            Comparing_QS:begin
                case (The_2_Qs)
                    'b10:begin
                        ALU_Func='b0;
                        ALU_EN='b1;
                        AC_EN='b1;
                        if (ALU_Valid) begin
                            Next_State=Shifting;
                        end else begin
                            Next_State=Comparing_QS;
                        end
                    end 
                    'b01:begin
                        ALU_Func='b1;
                        ALU_EN='b1;
                        AC_EN='b1;
                        if (ALU_Valid) begin
                            Next_State=Shifting;
                        end else begin
                            Next_State=Comparing_QS;
                        end
                        
                    end
                    'b11,'b00:begin
                        ALU_EN='b0;
                        Next_State=Shifting;
                    end  
                    default: begin
                        ALU_EN='b0;
                        Next_State=Idle;
                    end
                endcase
            end

            Shifting:begin
                ALU_Func='b10;
                ALU_EN='b1;
                q1_En='b1;
                AC_EN='b1;
                Q_En='b1;
                Counter_Down='b1;
                if (ALU_Valid) begin
                    Next_State=Finsh;
                end else begin
                    Next_State=Shifting;
                end
                
            end

            Finsh:begin
                if (Counter_Finsh) begin
                    Next_State=Idle;
                    Multip_Finsh='b1;
                end else begin
                    Next_State=Comparing_QS;
                    Multip_Finsh='b0;
                end
            end
            default:begin
                Next_State=Idle; 
            end
        endcase
    end
endmodule