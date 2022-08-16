module Parity_Check #(
    parameter Data_size='d8
) (
    input  wire  clk         ,
    input  wire  rst         ,
    input  wire  par_check_en,
    input  wire  PAR_TYP     ,
    input  wire  sampled_bit ,
    input  wire [Data_size-1:0] P_DATA ,
    output reg   par_err
);
reg parity_clac;

    always @(*) begin
        if (!PAR_TYP) begin
            parity_clac=^P_DATA;
        end else begin
            parity_clac=~^P_DATA;
        end

    end

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            par_err<='b0;
        end else if ((!par_check_en)||sampled_bit==parity_clac) begin
            par_err<='b0;
        end else begin
            par_err<='b1;
        end

    end
endmodule
