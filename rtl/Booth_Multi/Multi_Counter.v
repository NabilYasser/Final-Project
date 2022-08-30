module Multi_Counter #(
    parameter Data_Width='d4,Counter_Width=$clog2(Data_Width)
) (
    input  wire     clk,
    input  wire     rst,
    input  wire     Down,
    input  wire     Load,
    output wire     Finsh,
    output reg  [Counter_Width-1:0] Counter
);

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Counter<='b0;
    end else if(Load) begin
        Counter<=Data_Width;
    end else if(Down) begin
        Counter<=Counter-'b1;
    end

end

assign Finsh=(Counter=='b0);
    
endmodule