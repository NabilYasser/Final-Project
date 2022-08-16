module Edge_Bit_Counter #(
    parameter Counter_Size='d5, Start_Point='d0
) (
    input   wire                     clk    ,
    input   wire                     rst    ,
    input   wire                     enable , 
    input   wire [Counter_Size-1:0]  Prescale   ,
    output  reg  [Counter_Size-1:0]  edge_cnt,
    output  reg                     finish
);
wire counter_rst;
 //! The couner works but it counts at 0 two clocks and stops at Prescale-'d1 so it is an indecator


    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            edge_cnt<=Start_Point;
        end else if (!counter_rst) begin
            edge_cnt<=Start_Point;
        end else begin
            edge_cnt<=edge_cnt+'b1;
        end
    end

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            finish<='b0;
        end else if (edge_cnt==Prescale-'d1) begin
            finish<='b1;
        end else begin
            finish<='b0;
        end
    end

    //assign finish=(edge_cnt==Prescale);

    assign counter_rst=(~finish & enable );



    
endmodule
