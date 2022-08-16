module MUX2 (
    input wire IN0,
    input wire IN1,
    input wire SL,
    output wire MUX_out

);
assign MUX_out=SL?IN1:IN0;
    
endmodule