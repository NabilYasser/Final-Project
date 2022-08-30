module REG_File #(
    parameter data_Width='d4,RST_Value='d0
) (
    input  wire                            clk       ,
    input  wire                            rst       ,
    input  wire signed [data_Width-1:0]           Data_In    ,
    input  wire signed [data_Width-1:0]           Default_Value,
    input  wire                            Load_Default,
    input  wire                            Write_En  ,
    output reg  signed [data_Width-1:0]           Data_Out  

);

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Data_Out<=RST_Value;
    end else if(Load_Default) begin
        Data_Out<=Default_Value;
    end else if(Write_En) begin
        Data_Out<=Data_In;
    end
end
    
endmodule