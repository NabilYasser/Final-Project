module Clock_Gating (
    input  wire  clk,
    input  wire  En ,
    input  wire  test_mode,
    output wire  Gated_clk
);/*
reg latched_En;
always @(*) begin
    if (!clk) begin
       latched_En<=En;
    end else begin
        latched_En<=latched_En;
    end
    
end
assign Gated_clk=clk&latched_En;
    */

TLATNCAX2M U0(
.CK(clk),
.E(test_mode||En),
.ECK(Gated_clk)

 );
endmodule