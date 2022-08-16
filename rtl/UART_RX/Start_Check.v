module Start_Check (
    input  wire  clk,
    input  wire  rst,
    input  wire  sampled_bit,
    input  wire  start_check_en,
    output  reg  start_err
);
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            start_err<='b0;
        end else if (!start_check_en) begin
            start_err<='b0;
        end else if (sampled_bit=='b1) begin
                start_err<='b1;
        end
    end

endmodule