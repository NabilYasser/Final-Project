module Error_Unit (
    input  wire  clk,
    input  wire  rst,
    input  wire  sampled_bit,
    input  wire  Compared_bit,
    input  wire  Enable,
    output  reg  Error
);
    always @(*) begin
        if (!Enable) begin
            Error='b0;
        end else if (sampled_bit!=Compared_bit) begin
            Error='b1;
        end else begin
             Error='b0;
        end
    end

endmodule