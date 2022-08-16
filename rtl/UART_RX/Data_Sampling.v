module Data_Sampling (

    input  wire                    RX_in   ,

    input  wire                    clk     ,

    input  wire                    rst     ,

    input  wire                    data_samp_en,

    output reg                     sampled_bit



);

reg [2:0] bits;



always @(posedge clk or negedge rst) begin

    if (!rst) begin

        bits<='b0;


    end else if (data_samp_en) begin

        bits<={bits[1:0],RX_in};


    end else begin

        bits<=bits;


    end

end



always @(*) begin

    if (!data_samp_en) begin

        if ((bits[0] & bits[1])||(bits[0] & bits[2])||(bits[2] & bits[1])) begin

            sampled_bit=1'b1;

        end else begin

            sampled_bit=1'b0;

        end

    end else begin

        sampled_bit=1'b0;

    end

end



    

endmodule