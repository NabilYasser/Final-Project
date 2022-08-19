module Clock_Divider #(
    parameter Division_Limit='d4
) (
    input  wire                      i_ref_clk  ,
    input  wire                      i_rst_n    ,
    input  wire                      i_clk_en   , 
    input  wire [Division_Limit-1:0] i_div_ratio,
    output reg                       o_div_clk

);
reg div_clk,odd_edge_tog;
wire Is_zero,Is_one,Is_odd,clk_en;
reg [Division_Limit-1:0] couter;
wire [Division_Limit-1:0] flip_pos,flip_neg;

always @(posedge i_ref_clk or negedge i_rst_n ) begin
    if (!i_rst_n) begin
        div_clk<='b0;
        couter<='b0;
        odd_edge_tog<='b1;
    end else if (clk_en) begin
        if ((!Is_odd)&&(couter==flip_pos)) begin
            div_clk<=~div_clk;
            couter<='b0;
        end else if ((Is_odd &&(couter==flip_pos)&&odd_edge_tog) ||(Is_odd && (couter==flip_neg) && !odd_edge_tog)) begin
            div_clk<=~div_clk;
            couter<='b0;
            odd_edge_tog<=~odd_edge_tog;         
        end else begin
            couter<=couter+1'b1;
        end

         
    end 
end

assign Is_zero=~|(i_div_ratio);
assign Is_one =(i_div_ratio=='b1);
assign Is_odd =(i_div_ratio[0]=='b1);
assign flip_neg=(i_div_ratio>>1);
assign flip_pos=flip_neg - 1'b1 ;
assign clk_en=i_clk_en & ~Is_zero & ~Is_one;

always @(*) begin
    if (clk_en) begin
        o_div_clk=div_clk;
    end else begin
        o_div_clk=i_ref_clk;
    end
    
end

endmodule