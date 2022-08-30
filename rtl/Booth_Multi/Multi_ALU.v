module Multi_ALU #(
    parameter data_Width='d4
) (
    input  wire                 clk,
    input  wire                 rst,
    input  wire  [1:0]  Func,
    input  wire   [data_Width-1:0] AC,
    input  wire  [data_Width-1:0] Q,
    input  wire                  q,
    input  wire  [data_Width-1:0] Multipicand,
    input  wire                 ALU_En,
    output reg                  ALU_Valid,
    output reg   [2*data_Width:0] ALU_out
);

wire signed [2*data_Width:0] Sign;
assign Sign={AC,Q,q};

always @(*) begin
    ALU_Valid='b0;
    ALU_out='b0;
    if (ALU_En) begin
        case (Func)
        'b00: begin
            ALU_out[2*data_Width:data_Width+1]=AC-Multipicand;
            ALU_Valid='b1;
        end

        'b01:begin
            ALU_out[2*data_Width:data_Width+1]=AC+Multipicand;
            ALU_Valid='b1;
        end

        'b10:begin
            //ALU_out=({AC,Q,q})>>>1;
            ALU_out=Sign>>>1;
            ALU_Valid='b1;

        end
        default: begin
            ALU_Valid='b0;
            ALU_out='b0;

        end
    endcase
    end else begin
        ALU_Valid='b0;
        ALU_out='b0;

    end
    

end

/*
always @(posedge clk or negedge rst) begin
    if (!rst) begin
        ALU_out<='b0;
        ALU_Valid<='b0;
    end else if(ALU_En) begin
        ALU_out<=ALU_out_Commp;
        ALU_Valid<=ALU_Valid_Commp;
    end

end*/
    
endmodule