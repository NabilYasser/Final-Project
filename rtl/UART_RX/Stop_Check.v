module Stop_Check (
    input  wire  clk,
    input  wire  rst,
    input  wire  sampled_bit,
    input  wire  stop_check_en,
    output  reg  stop_err
);
 
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            stop_err<='b0;
        end else if (!stop_check_en) begin
            stop_err<='b0;
        end else if (sampled_bit=='b0) begin
                stop_err<='b1;
        end
    end

endmodule