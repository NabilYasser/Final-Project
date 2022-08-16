module Counter #(
   parameter Data_Width=8
) (
    input wire RST,
    input wire clk,
    input wire Ser_En,
    output reg [2:0] Counter,
    output wire Finish
);
//wire DFlag;

    always @(posedge clk or negedge RST ) begin
       if (!RST) begin
        Counter<=3'b0;
       end else if (!Ser_En) begin
        Counter<=3'b0;
       end else begin
        Counter<= Counter+1'b1;

       end
    end

    assign Finish=(Counter==3'b111);
/*
    always @(posedge clk ) begin
        Finish<=DFlag;
    end*/
endmodule