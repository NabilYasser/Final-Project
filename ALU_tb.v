`timescale 1ns/1ns
module ALU_tb ();

    reg                      clk_tb      ;
    reg                      rst_tb      ;
    reg [8-1:0]     Operand_A_tb;
    reg [8-1:0]     Operand_B_tb;
    reg [4-1:0]   ALU_Fun_tb  ;
    reg                      Enable_tb  ;
    wire  [8-1:0]     ALU_Out_tb  ;
    wire                       Out_Valid_tb;


    parameter Clock_Period = 20 ;

    always  #(Clock_Period/2) clk_tb=~clk_tb;

    initial begin 
    clk_tb='b0     ;
    rst_tb='b0      ;
    Operand_A_tb='d2;
    Operand_B_tb='d3;
    ALU_Fun_tb='d0  ;
    Enable_tb='d0  ;
    #Clock_Period;
    rst_tb='b1      ;
    #Clock_Period;
    Enable_tb='d0  ;
    #Clock_Period;
    $display("Alu result=0x%0d  Valid =0x%0b",ALU_Out_tb,Out_Valid_tb);
    Enable_tb='d1  ;
    #Clock_Period;
    Test('d5);

    ALU_Fun_tb='d1  ;
    #Clock_Period;
    Test('b11111111);

    ALU_Fun_tb='d2  ;
    #Clock_Period;
    Test('d6);

    ALU_Fun_tb='d3  ;
    #Clock_Period;
    Test('d0);

    ALU_Fun_tb='d4  ;
    #Clock_Period;
    Test('d2);

    ALU_Fun_tb='d5  ;
    #Clock_Period;
    Test('d3);

    ALU_Fun_tb='d6  ;
    #Clock_Period;
    Test('d253);

    ALU_Fun_tb='d7  ;
    #Clock_Period;
    Test('d252);

    ALU_Fun_tb='d8  ;
    #Clock_Period;
    Test('d1);

    ALU_Fun_tb='d9  ;
    #Clock_Period;
    Test('d254);

    ALU_Fun_tb='d10  ;
    #Clock_Period;
    Test('b0);

    ALU_Fun_tb='d11  ;
    #Clock_Period;
    Test('b0);

    ALU_Fun_tb='d12  ;
    #Clock_Period;
    Test('b1);

    ALU_Fun_tb='d13  ;
    #Clock_Period;
    Test('d1);

    ALU_Fun_tb='d14  ;
    #Clock_Period;
    Test('d4);

    $stop;













    
    end

    task Test ( input [7:0] Comp);
    if ((ALU_Out_tb==Comp) && (Out_Valid_tb=='b1) ) begin
       $display("Test #0x%0d Case Passed",ALU_Fun_tb);
    end else begin
        $display("Test #0x%0d Case Failed",ALU_Fun_tb);
        $display("Alu result=0x%0d  Valid =0x%0b",ALU_Out_tb,Out_Valid_tb);
    end

    endtask
        



    ALU  u_ALU(
    	.clk       (clk_tb       ),
        .rst       (rst_tb       ),
        .Operand_A (Operand_A_tb ),
        .Operand_B (Operand_B_tb ),
        .ALU_Fun   (ALU_Fun_tb   ),
        .Enable    (Enable_tb    ),
        .ALU_Out   (ALU_Out_tb   ),
        .Out_Valid (Out_Valid_tb )
    );
    
endmodule