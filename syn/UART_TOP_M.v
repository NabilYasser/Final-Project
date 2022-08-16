/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Aug 17 02:28:20 2022
/////////////////////////////////////////////////////////////


module MUX2_2 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_1 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  CLKMX2X4M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_0 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X4M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module RX_FSM ( clk, rst, RX_IN, PAR_EN, Prescale, bit_cnt, data_finish_flag, 
        edge_cnt, par_err, start_err, stop_err, counter_en, bits_counter_en, 
        data_samp_en, start_check_en, deser_en, par_check_en, stop_check_en, 
        data_valid );
  input [1:0] Prescale;
  input [4:0] edge_cnt;
  input clk, rst, RX_IN, PAR_EN, bit_cnt, data_finish_flag, par_err, start_err,
         stop_err;
  output counter_en, bits_counter_en, data_samp_en, start_check_en, deser_en,
         par_check_en, stop_check_en, data_valid;
  wire   par_error, N66, N67, n63, n64, n65, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [2:0] CurrentState;
  wire   [2:0] NextState;
  assign data_valid = N66;
  assign data_samp_en = N67;

  DFFRX1M stp_error_reg ( .D(n63), .CK(clk), .RN(rst), .QN(n6) );
  DFFRX1M strt_error_reg ( .D(n65), .CK(clk), .RN(rst), .QN(n1) );
  DFFRX1M \CurrentState_reg[1]  ( .D(NextState[1]), .CK(clk), .RN(rst), .Q(
        CurrentState[1]), .QN(n30) );
  DFFRX1M \CurrentState_reg[2]  ( .D(NextState[2]), .CK(clk), .RN(rst), .Q(
        CurrentState[2]) );
  DFFRQX1M par_error_reg ( .D(n64), .CK(clk), .RN(rst), .Q(par_error) );
  DFFRQX1M \CurrentState_reg[0]  ( .D(NextState[0]), .CK(clk), .RN(rst), .Q(
        CurrentState[0]) );
  NOR2X4M U3 ( .A(edge_cnt[4]), .B(n22), .Y(N67) );
  NOR3BX2M U4 ( .AN(n3), .B(n4), .C(CurrentState[1]), .Y(start_check_en) );
  NOR3BX2M U5 ( .AN(n8), .B(n4), .C(CurrentState[0]), .Y(stop_check_en) );
  NOR4BXLM U6 ( .AN(n17), .B(n27), .C(n28), .D(n21), .Y(N66) );
  MXI2X1M U7 ( .A(n1), .B(n2), .S0(start_check_en), .Y(n65) );
  CLKMX2X2M U8 ( .A(par_error), .B(par_err), .S0(par_check_en), .Y(n64) );
  NOR2X1M U9 ( .A(n5), .B(n4), .Y(par_check_en) );
  MXI2X1M U10 ( .A(n6), .B(n7), .S0(stop_check_en), .Y(n63) );
  NOR2X1M U11 ( .A(n4), .B(n9), .Y(deser_en) );
  CLKINVX1M U12 ( .A(n10), .Y(n4) );
  OAI211X1M U13 ( .A0(n11), .A1(n12), .B0(n13), .C0(n14), .Y(n10) );
  NOR2X1M U14 ( .A(edge_cnt[4]), .B(edge_cnt[3]), .Y(n14) );
  OAI211X1M U15 ( .A0(edge_cnt[0]), .A1(edge_cnt[1]), .B0(n15), .C0(
        edge_cnt[2]), .Y(n13) );
  CLKINVX1M U16 ( .A(Prescale[0]), .Y(n15) );
  OAI211X1M U17 ( .A0(bit_cnt), .A1(n16), .B0(n17), .C0(n18), .Y(counter_en)
         );
  OAI2B11X1M U18 ( .A1N(data_finish_flag), .A0(n9), .B0(n17), .C0(n5), .Y(
        NextState[2]) );
  OAI211X1M U19 ( .A0(n16), .A1(n19), .B0(n17), .C0(n20), .Y(NextState[1]) );
  NOR2BX1M U20 ( .AN(n5), .B(bits_counter_en), .Y(n20) );
  CLKINVX1M U21 ( .A(n9), .Y(bits_counter_en) );
  OAI2B11X1M U22 ( .A1N(PAR_EN), .A0(n9), .B0(n16), .C0(n18), .Y(NextState[0])
         );
  CLKINVX1M U23 ( .A(n21), .Y(n18) );
  MX3X1M U24 ( .A(n23), .B(n24), .C(n25), .S0(Prescale[0]), .S1(edge_cnt[3]), 
        .Y(n22) );
  NAND3X1M U25 ( .A(n11), .B(n12), .C(Prescale[1]), .Y(n25) );
  CLKINVX1M U26 ( .A(edge_cnt[2]), .Y(n12) );
  NAND3BX1M U27 ( .AN(Prescale[1]), .B(n11), .C(edge_cnt[2]), .Y(n24) );
  CLKNAND2X2M U28 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .Y(n11) );
  MXI2X1M U29 ( .A(edge_cnt[1]), .B(n26), .S0(edge_cnt[2]), .Y(n23) );
  NOR2X1M U30 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .Y(n26) );
  OAI221X1M U31 ( .A0(bit_cnt), .A1(n5), .B0(data_finish_flag), .B1(n9), .C0(
        n29), .Y(n21) );
  OR4X1M U32 ( .A(RX_IN), .B(CurrentState[1]), .C(CurrentState[0]), .D(
        CurrentState[2]), .Y(n29) );
  CLKNAND2X2M U33 ( .A(n16), .B(n9), .Y(n28) );
  CLKNAND2X2M U34 ( .A(n3), .B(CurrentState[1]), .Y(n9) );
  NAND3X1M U35 ( .A(n30), .B(n2), .C(n3), .Y(n16) );
  NOR2BX1M U36 ( .AN(CurrentState[0]), .B(CurrentState[2]), .Y(n3) );
  CLKINVX1M U37 ( .A(start_err), .Y(n2) );
  NAND4BX1M U38 ( .AN(par_error), .B(n5), .C(n6), .D(n1), .Y(n27) );
  CLKNAND2X2M U39 ( .A(CurrentState[0]), .B(n8), .Y(n5) );
  NAND3X1M U40 ( .A(n19), .B(n7), .C(n8), .Y(n17) );
  NOR2BX1M U41 ( .AN(CurrentState[2]), .B(n30), .Y(n8) );
  CLKINVX1M U42 ( .A(stop_err), .Y(n7) );
  CLKINVX1M U43 ( .A(bit_cnt), .Y(n19) );
endmodule


module Start_Check ( clk, rst, sampled_bit, start_check_en, start_err );
  input clk, rst, sampled_bit, start_check_en;
  output start_err;
  wire   n1;

  DFFRQX1M start_err_reg ( .D(n1), .CK(clk), .RN(rst), .Q(start_err) );
  OA21X1M U3 ( .A0(start_err), .A1(sampled_bit), .B0(start_check_en), .Y(n1)
         );
endmodule


module Parity_Check ( clk, rst, par_check_en, PAR_TYP, sampled_bit, P_DATA, 
        par_err );
  input [7:0] P_DATA;
  input clk, rst, par_check_en, PAR_TYP, sampled_bit;
  output par_err;
  wire   N9, n1, n2, n3, n4, n5, n6;

  DFFRQX1M par_err_reg ( .D(N9), .CK(clk), .RN(rst), .Q(par_err) );
  XOR3XLM U3 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XNOR2X2M U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n2) );
  NOR2BX2M U7 ( .AN(par_check_en), .B(n1), .Y(N9) );
  XNOR2X2M U8 ( .A(sampled_bit), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U9 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
endmodule


module Stop_Check ( clk, rst, sampled_bit, stop_check_en, stop_err );
  input clk, rst, sampled_bit, stop_check_en;
  output stop_err;
  wire   n2, n1;

  DFFRQX1M stop_err_reg ( .D(n2), .CK(clk), .RN(rst), .Q(stop_err) );
  AOI2B1X1M U3 ( .A1N(stop_err), .A0(sampled_bit), .B0(n1), .Y(n2) );
  INVXLM U4 ( .A(stop_check_en), .Y(n1) );
endmodule


module Bits_Counter ( clk, rst, enable, bits_counter, finish );
  output [2:0] bits_counter;
  input clk, rst, enable;
  output finish;
  wire   n1, n2, n4, n5, n6, n3;

  DFFRX1M \bits_counter_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(
        bits_counter[2]) );
  DFFRQX1M \bits_counter_reg[0]  ( .D(n6), .CK(clk), .RN(rst), .Q(
        bits_counter[0]) );
  DFFRHQX1M \bits_counter_reg[1]  ( .D(n5), .CK(clk), .RN(rst), .Q(
        bits_counter[1]) );
  NOR3BX2M U3 ( .AN(bits_counter[2]), .B(n2), .C(n3), .Y(finish) );
  NAND2X2M U4 ( .A(enable), .B(bits_counter[0]), .Y(n2) );
  INVX2M U5 ( .A(bits_counter[1]), .Y(n3) );
  CLKXOR2X2M U6 ( .A(enable), .B(bits_counter[0]), .Y(n6) );
  XNOR2X2M U7 ( .A(bits_counter[1]), .B(n2), .Y(n5) );
  CLKXOR2X2M U8 ( .A(bits_counter[2]), .B(n1), .Y(n4) );
  NOR2X2M U9 ( .A(n2), .B(n3), .Y(n1) );
endmodule


module Edge_Bit_Counter ( clk, rst, enable, Prescale, edge_cnt, finish );
  input [4:0] Prescale;
  output [4:0] edge_cnt;
  input clk, rst, enable;
  output finish;
  wire   N6, N7, N8, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, n5, \add_21/carry[4] , \add_21/carry[3] , \add_21/carry[2] , n1,
         n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13;

  DFFRHQX4M \edge_cnt_reg[1]  ( .D(N11), .CK(clk), .RN(rst), .Q(edge_cnt[1])
         );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N10), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  DFFRQX1M finish_reg ( .D(N21), .CK(clk), .RN(rst), .Q(finish) );
  DFFRQX1M \edge_cnt_reg[3]  ( .D(N13), .CK(clk), .RN(rst), .Q(edge_cnt[3]) );
  DFFRQX1M \edge_cnt_reg[4]  ( .D(N14), .CK(clk), .RN(rst), .Q(edge_cnt[4]) );
  DFFRHQX1M \edge_cnt_reg[2]  ( .D(N12), .CK(clk), .RN(rst), .Q(edge_cnt[2])
         );
  NOR2BX2M U3 ( .AN(N8), .B(n5), .Y(N13) );
  NOR2BX2M U4 ( .AN(N7), .B(n5), .Y(N12) );
  NOR2BX2M U5 ( .AN(N6), .B(n5), .Y(N11) );
  INVX2M U6 ( .A(Prescale[0]), .Y(N15) );
  NAND2BX2M U7 ( .AN(finish), .B(enable), .Y(n5) );
  NOR2X2M U8 ( .A(n1), .B(n5), .Y(N14) );
  XNOR2X2M U9 ( .A(\add_21/carry[4] ), .B(edge_cnt[4]), .Y(n1) );
  NOR2X2M U10 ( .A(edge_cnt[0]), .B(n5), .Y(N10) );
  ADDHX1M U11 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_21/carry[2] ), .S(
        N6) );
  ADDHX1M U12 ( .A(edge_cnt[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N7) );
  ADDHX1M U13 ( .A(edge_cnt[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N8) );
  NAND2BX1M U14 ( .AN(Prescale[1]), .B(N15), .Y(n2) );
  OAI2BB1X1M U15 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N16) );
  OR2X1M U16 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U17 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N17) );
  XNOR2X1M U18 ( .A(Prescale[3]), .B(n3), .Y(N18) );
  NOR3X1M U19 ( .A(Prescale[3]), .B(Prescale[4]), .C(n3), .Y(N20) );
  OAI21X1M U20 ( .A0(Prescale[3]), .A1(n3), .B0(Prescale[4]), .Y(n4) );
  NAND2BX1M U21 ( .AN(N20), .B(n4), .Y(N19) );
  NOR2BX1M U22 ( .AN(N15), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U23 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N16), .B1(n6), .Y(n9) );
  NOR2BX1M U24 ( .AN(edge_cnt[0]), .B(N15), .Y(n7) );
  OAI2B2X1M U25 ( .A1N(N16), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND3BX1M U26 ( .AN(N20), .B(n9), .C(n8), .Y(n13) );
  CLKXOR2X2M U27 ( .A(N19), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U28 ( .A(N17), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U29 ( .A(N18), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U30 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N21) );
endmodule


module Counter_Unit ( clk, rst, enable, Data_enable, Prescale, Finish_edge, 
        Finish_data, bits_counter, edge_cnt );
  input [4:0] Prescale;
  output [2:0] bits_counter;
  output [4:0] edge_cnt;
  input clk, rst, enable, Data_enable;
  output Finish_edge, Finish_data;
  wire   Bits_counter_enable;

  Bits_Counter u_Bits_Counter ( .clk(clk), .rst(rst), .enable(
        Bits_counter_enable), .bits_counter(bits_counter), .finish(Finish_data) );
  Edge_Bit_Counter u_Edge_Bit_Counter ( .clk(clk), .rst(rst), .enable(enable), 
        .Prescale(Prescale), .edge_cnt(edge_cnt), .finish(Finish_edge) );
  AND2X2M U1 ( .A(Finish_edge), .B(Data_enable), .Y(Bits_counter_enable) );
endmodule


module Data_Sampling ( RX_in, clk, rst, data_samp_en, sampled_bit );
  input RX_in, clk, rst, data_samp_en;
  output sampled_bit;
  wire   n1, n2, n6, n7, n8, n3, n4, n5;
  wire   [2:0] bits;

  DFFRX1M \bits_reg[0]  ( .D(n8), .CK(clk), .RN(rst), .Q(bits[0]), .QN(n4) );
  DFFRX1M \bits_reg[1]  ( .D(n7), .CK(clk), .RN(rst), .Q(bits[1]), .QN(n5) );
  DFFRQX1M \bits_reg[2]  ( .D(n6), .CK(clk), .RN(rst), .Q(bits[2]) );
  AOI21X3M U2 ( .A0(n1), .A1(n2), .B0(data_samp_en), .Y(sampled_bit) );
  INVXLM U3 ( .A(data_samp_en), .Y(n3) );
  OAI22XLM U4 ( .A0(data_samp_en), .A1(n5), .B0(n4), .B1(n3), .Y(n7) );
  OAI21X2M U5 ( .A0(bits[0]), .A1(bits[1]), .B0(bits[2]), .Y(n2) );
  NAND2X2M U6 ( .A(bits[1]), .B(bits[0]), .Y(n1) );
  OAI2BB2XLM U7 ( .B0(data_samp_en), .B1(n4), .A0N(RX_in), .A1N(data_samp_en), 
        .Y(n8) );
  OAI2BB2X1M U8 ( .B0(n5), .B1(n3), .A0N(n3), .A1N(bits[2]), .Y(n6) );
endmodule


module Deserializer ( sampled_bit, clk, rst, deser_en, bits_counter, Data );
  input [2:0] bits_counter;
  output [7:0] Data;
  input sampled_bit, clk, rst, deser_en;
  wire   n3, n4, n6, n7, n9, n11, n13, n15, n19, n20, n21, n22, n23, n24, n25,
         n26, n1, n2, n10, n12, n14, n16, n17, n18, n27, n28, n29, n30, n31,
         n32;

  DFFRX1M \Data_reg[7]  ( .D(n26), .CK(clk), .RN(rst), .Q(n2), .QN(n30) );
  DFFRX1M \Data_reg[3]  ( .D(n22), .CK(clk), .RN(rst), .Q(n1), .QN(n29) );
  DFFRHQX1M \Data_reg[4]  ( .D(n23), .CK(clk), .RN(rst), .Q(Data[4]) );
  DFFRHQX1M \Data_reg[0]  ( .D(n19), .CK(clk), .RN(rst), .Q(Data[0]) );
  DFFRHQX1M \Data_reg[5]  ( .D(n24), .CK(clk), .RN(rst), .Q(Data[5]) );
  DFFRHQX1M \Data_reg[1]  ( .D(n20), .CK(clk), .RN(rst), .Q(Data[1]) );
  DFFRHQX1M \Data_reg[6]  ( .D(n25), .CK(clk), .RN(rst), .Q(Data[6]) );
  DFFRHQX1M \Data_reg[2]  ( .D(n21), .CK(clk), .RN(rst), .Q(Data[2]) );
  INVX2M U2 ( .A(n29), .Y(Data[3]) );
  INVX2M U3 ( .A(n30), .Y(Data[7]) );
  OAI21BX1M U4 ( .A0(n3), .A1(n4), .B0N(n17), .Y(n19) );
  OAI21BX1M U5 ( .A0(n3), .A1(n13), .B0N(n18), .Y(n23) );
  OA21XLM U6 ( .A0(n6), .A1(n3), .B0(Data[0]), .Y(n17) );
  OA21XLM U7 ( .A0(n3), .A1(n15), .B0(Data[4]), .Y(n18) );
  OAI21BXLM U8 ( .A0(n7), .A1(n13), .B0N(n28), .Y(n24) );
  OA21XLM U9 ( .A0(n7), .A1(n15), .B0(Data[5]), .Y(n28) );
  OAI21BXLM U10 ( .A0(n9), .A1(n13), .B0N(n16), .Y(n25) );
  OA21XLM U11 ( .A0(n9), .A1(n15), .B0(Data[6]), .Y(n16) );
  OAI21BXLM U12 ( .A0(n4), .A1(n7), .B0N(n27), .Y(n20) );
  OA21XLM U13 ( .A0(n6), .A1(n7), .B0(Data[1]), .Y(n27) );
  OAI21BXLM U14 ( .A0(n4), .A1(n9), .B0N(n14), .Y(n21) );
  OA21XLM U15 ( .A0(n6), .A1(n9), .B0(Data[2]), .Y(n14) );
  OAI21BX1M U16 ( .A0(n4), .A1(n11), .B0N(n10), .Y(n22) );
  OA21X2M U17 ( .A0(n6), .A1(n11), .B0(n1), .Y(n10) );
  OAI21BX1M U18 ( .A0(n11), .A1(n13), .B0N(n12), .Y(n26) );
  OA21X2M U19 ( .A0(n11), .A1(n15), .B0(n2), .Y(n12) );
  NAND2BX2M U20 ( .AN(n15), .B(sampled_bit), .Y(n13) );
  NAND2BX2M U21 ( .AN(n6), .B(sampled_bit), .Y(n4) );
  NAND2X2M U22 ( .A(n32), .B(n31), .Y(n3) );
  NAND2X2M U23 ( .A(bits_counter[2]), .B(deser_en), .Y(n15) );
  NAND2BX2M U24 ( .AN(bits_counter[2]), .B(deser_en), .Y(n6) );
  NAND2X2M U25 ( .A(bits_counter[0]), .B(n32), .Y(n7) );
  NAND2X2M U26 ( .A(bits_counter[1]), .B(n31), .Y(n9) );
  INVX2M U27 ( .A(bits_counter[0]), .Y(n31) );
  INVX2M U28 ( .A(bits_counter[1]), .Y(n32) );
  NAND2X2M U29 ( .A(bits_counter[1]), .B(bits_counter[0]), .Y(n11) );
endmodule


module RX ( clk_Top, rst_Top, RX_IN_Top, Prescale_Top, PAR_EN_TOP, PAR_TYP_Top, 
        Data_Valid_Top, P_Data_Top );
  input [4:0] Prescale_Top;
  output [7:0] P_Data_Top;
  input clk_Top, rst_Top, RX_IN_Top, PAR_EN_TOP, PAR_TYP_Top;
  output Data_Valid_Top;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, bit_cnt_Top,
         data_finish_flag_Top, par_err_Top, start_err_Top, stop_err_Top,
         enable_Top, bits_counter_en_Top, data_samp_en_Top, start_check_en_Top,
         deser_en_FSM_Top, par_check_en_Top, stop_check_en_Top,
         sampled_bit_Top, n1, n2, n4, n5, n7, n8, n10, n11, n13, n14, n16, n17,
         n19, n20, n22, n23;
  wire   [4:0] edge_cnt_Top;
  wire   [2:0] bits_counter_Top;

  RX_FSM u_FSM ( .clk(clk_Top), .rst(rst_Top), .RX_IN(RX_IN_Top), .PAR_EN(
        PAR_EN_TOP), .Prescale(Prescale_Top[4:3]), .bit_cnt(bit_cnt_Top), 
        .data_finish_flag(data_finish_flag_Top), .edge_cnt(edge_cnt_Top), 
        .par_err(par_err_Top), .start_err(start_err_Top), .stop_err(
        stop_err_Top), .counter_en(enable_Top), .bits_counter_en(
        bits_counter_en_Top), .data_samp_en(data_samp_en_Top), 
        .start_check_en(start_check_en_Top), .deser_en(deser_en_FSM_Top), 
        .par_check_en(par_check_en_Top), .stop_check_en(stop_check_en_Top), 
        .data_valid(Data_Valid_Top) );
  Start_Check u_Start_Check ( .clk(clk_Top), .rst(rst_Top), .sampled_bit(
        sampled_bit_Top), .start_check_en(start_check_en_Top), .start_err(
        start_err_Top) );
  Parity_Check u_Parity_Check ( .clk(clk_Top), .rst(rst_Top), .par_check_en(
        par_check_en_Top), .PAR_TYP(PAR_TYP_Top), .sampled_bit(sampled_bit_Top), .P_DATA({n17, n5, n11, n23, n14, n2, n8, n20}), .par_err(par_err_Top) );
  Stop_Check u_Stop_Check ( .clk(clk_Top), .rst(rst_Top), .sampled_bit(
        sampled_bit_Top), .stop_check_en(stop_check_en_Top), .stop_err(
        stop_err_Top) );
  Counter_Unit u_Counter_Unit ( .clk(clk_Top), .rst(rst_Top), .enable(
        enable_Top), .Data_enable(bits_counter_en_Top), .Prescale(Prescale_Top), .Finish_edge(bit_cnt_Top), .Finish_data(data_finish_flag_Top), 
        .bits_counter(bits_counter_Top), .edge_cnt(edge_cnt_Top) );
  Data_Sampling u_Data_Sampling ( .RX_in(RX_IN_Top), .clk(clk_Top), .rst(
        rst_Top), .data_samp_en(data_samp_en_Top), .sampled_bit(
        sampled_bit_Top) );
  Deserializer u_Deserializer ( .sampled_bit(sampled_bit_Top), .clk(clk_Top), 
        .rst(rst_Top), .deser_en(deser_en_FSM_Top), .bits_counter(
        bits_counter_Top), .Data({n25, n26, n27, n28, n29, n30, n31, n32}) );
  CLKINVX1M U1 ( .A(n30), .Y(n1) );
  INVXLM U2 ( .A(n1), .Y(n2) );
  CLKINVX40M U3 ( .A(n1), .Y(P_Data_Top[2]) );
  CLKINVX1M U4 ( .A(n26), .Y(n4) );
  INVXLM U5 ( .A(n4), .Y(n5) );
  CLKINVX40M U6 ( .A(n4), .Y(P_Data_Top[6]) );
  CLKINVX1M U7 ( .A(n31), .Y(n7) );
  INVXLM U8 ( .A(n7), .Y(n8) );
  CLKINVX40M U9 ( .A(n7), .Y(P_Data_Top[1]) );
  CLKINVX1M U10 ( .A(n27), .Y(n10) );
  INVXLM U11 ( .A(n10), .Y(n11) );
  CLKINVX40M U12 ( .A(n10), .Y(P_Data_Top[5]) );
  CLKINVX1M U13 ( .A(n29), .Y(n13) );
  INVXLM U14 ( .A(n13), .Y(n14) );
  CLKINVX40M U15 ( .A(n13), .Y(P_Data_Top[3]) );
  CLKINVX1M U16 ( .A(n25), .Y(n16) );
  INVXLM U17 ( .A(n16), .Y(n17) );
  CLKINVX40M U18 ( .A(n16), .Y(P_Data_Top[7]) );
  CLKINVX1M U19 ( .A(n32), .Y(n19) );
  INVXLM U20 ( .A(n19), .Y(n20) );
  CLKINVX40M U21 ( .A(n19), .Y(P_Data_Top[0]) );
  CLKINVX1M U22 ( .A(n28), .Y(n22) );
  INVXLM U23 ( .A(n22), .Y(n23) );
  CLKINVX40M U24 ( .A(n22), .Y(P_Data_Top[4]) );
endmodule


module Counter ( RST, clk, Counter, Finish );
  output [2:0] Counter;
  input RST, clk;
  output Finish;
  wire   N2, N3, N5, n2, n1;
  assign Finish = N5;

  DFFRQX2M \Counter_reg[2]  ( .D(N3), .CK(clk), .RN(RST), .Q(Counter[2]) );
  DFFRQX2M \Counter_reg[1]  ( .D(N2), .CK(clk), .RN(RST), .Q(Counter[1]) );
  DFFRQX2M \Counter_reg[0]  ( .D(n1), .CK(clk), .RN(RST), .Q(Counter[0]) );
  XNOR2X2M U3 ( .A(Counter[2]), .B(n2), .Y(N3) );
  NAND2X2M U4 ( .A(Counter[1]), .B(Counter[0]), .Y(n2) );
  XNOR2X2M U5 ( .A(Counter[1]), .B(n1), .Y(N2) );
  INVX2M U6 ( .A(Counter[0]), .Y(n1) );
  AND3X2M U7 ( .A(Counter[2]), .B(Counter[0]), .C(Counter[1]), .Y(N5) );
endmodule


module Serializer ( P_Data, clk, rst, Ser_En, Data_Valid, Counter, Ser_Data );
  input [7:0] P_Data;
  input [2:0] Counter;
  input clk, rst, Ser_En, Data_Valid;
  output Ser_Data;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [7:1] Data;

  DFFRX1M \Data_reg[6]  ( .D(n12), .CK(clk), .RN(rst), .Q(Data[6]) );
  DFFRX1M \Data_reg[5]  ( .D(n13), .CK(clk), .RN(rst), .Q(Data[5]) );
  DFFRX1M \Data_reg[4]  ( .D(n14), .CK(clk), .RN(rst), .Q(Data[4]) );
  DFFRX1M \Data_reg[3]  ( .D(n15), .CK(clk), .RN(rst), .Q(Data[3]) );
  DFFRX1M \Data_reg[2]  ( .D(n16), .CK(clk), .RN(rst), .Q(Data[2]) );
  DFFRX1M \Data_reg[1]  ( .D(n17), .CK(clk), .RN(rst), .Q(Data[1]) );
  DFFRX1M \Data_reg[0]  ( .D(n10), .CK(clk), .RN(rst), .Q(Ser_Data) );
  DFFRX1M \Data_reg[7]  ( .D(n11), .CK(clk), .RN(rst), .Q(Data[7]) );
  NOR2BX4M U3 ( .AN(Ser_En), .B(n18), .Y(n3) );
  NOR2X4M U4 ( .A(n18), .B(n3), .Y(n1) );
  BUFX4M U5 ( .A(Data_Valid), .Y(n18) );
  OAI2BB1X2M U6 ( .A0N(n1), .A1N(Data[2]), .B0(n8), .Y(n16) );
  AOI22X1M U7 ( .A0(Data[3]), .A1(n3), .B0(P_Data[2]), .B1(n18), .Y(n8) );
  OAI2BB1X2M U8 ( .A0N(n1), .A1N(Data[6]), .B0(n4), .Y(n12) );
  AOI22X1M U9 ( .A0(Data[7]), .A1(n3), .B0(P_Data[6]), .B1(n18), .Y(n4) );
  OAI2BB1X2M U10 ( .A0N(n1), .A1N(Data[3]), .B0(n7), .Y(n15) );
  AOI22X1M U11 ( .A0(Data[4]), .A1(n3), .B0(P_Data[3]), .B1(n18), .Y(n7) );
  OAI2BB1X2M U12 ( .A0N(Ser_Data), .A1N(n1), .B0(n2), .Y(n10) );
  AOI22X1M U13 ( .A0(Data[1]), .A1(n3), .B0(P_Data[0]), .B1(n18), .Y(n2) );
  OAI2BB1X2M U14 ( .A0N(Data[1]), .A1N(n1), .B0(n9), .Y(n17) );
  AOI22X1M U15 ( .A0(Data[2]), .A1(n3), .B0(P_Data[1]), .B1(n18), .Y(n9) );
  OAI2BB1X2M U16 ( .A0N(n1), .A1N(Data[4]), .B0(n6), .Y(n14) );
  AOI22X1M U17 ( .A0(Data[5]), .A1(n3), .B0(P_Data[4]), .B1(n18), .Y(n6) );
  OAI2BB1X2M U18 ( .A0N(n1), .A1N(Data[5]), .B0(n5), .Y(n13) );
  AOI22X1M U19 ( .A0(Data[6]), .A1(n3), .B0(P_Data[5]), .B1(n18), .Y(n5) );
  AO22X1M U20 ( .A0(n1), .A1(Data[7]), .B0(P_Data[7]), .B1(n18), .Y(n11) );
endmodule


module Serializer_Top ( Ser_En, RST, clk, Data_Valid, P_Data_Top, Ser_Data_Top, 
        Ser_Done );
  input [7:0] P_Data_Top;
  input Ser_En, RST, clk, Data_Valid;
  output Ser_Data_Top, Ser_Done;
  wire   Counter_RST;
  wire   [2:0] Counter_Top;

  Counter u_Counter ( .RST(Counter_RST), .clk(clk), .Counter(Counter_Top), 
        .Finish(Ser_Done) );
  Serializer u_Serializer ( .P_Data(P_Data_Top), .clk(clk), .rst(RST), 
        .Ser_En(Ser_En), .Data_Valid(Data_Valid), .Counter(Counter_Top), 
        .Ser_Data(Ser_Data_Top) );
  AND2X1M U1 ( .A(Ser_En), .B(RST), .Y(Counter_RST) );
endmodule


module FSM ( clk, RST, Data_Valid, Par_En, Ser_done, Ser_En, Busy, Mux_Sel );
  output [1:0] Mux_Sel;
  input clk, RST, Data_Valid, Par_En, Ser_done;
  output Ser_En, Busy;
  wire   n8, \Current_State[0] , n3, n4, n5, n1;
  wire   [1:0] Next_State;

  DFFRX1M \Current_State_reg[0]  ( .D(Next_State[0]), .CK(clk), .RN(RST), .Q(
        \Current_State[0] ), .QN(Mux_Sel[0]) );
  DFFRX1M \Current_State_reg[1]  ( .D(Next_State[1]), .CK(clk), .RN(RST), .Q(
        Mux_Sel[1]) );
  CLKINVX1M U3 ( .A(n8), .Y(n1) );
  CLKINVX40M U4 ( .A(n1), .Y(Busy) );
  NAND2XLM U5 ( .A(n5), .B(n3), .Y(n8) );
  INVX2M U6 ( .A(n3), .Y(Ser_En) );
  CLKXOR2X2M U7 ( .A(Mux_Sel[1]), .B(Mux_Sel[0]), .Y(n5) );
  NAND2X2M U8 ( .A(n5), .B(\Current_State[0] ), .Y(n3) );
  OAI2BB2X1M U9 ( .B0(Mux_Sel[0]), .B1(n4), .A0N(Data_Valid), .A1N(Mux_Sel[0]), 
        .Y(Next_State[0]) );
  AOI2B1X1M U10 ( .A1N(Par_En), .A0(n4), .B0(Mux_Sel[0]), .Y(Next_State[1]) );
  AND2X2M U11 ( .A(Ser_done), .B(Mux_Sel[1]), .Y(n4) );
endmodule


module Parity_Unit ( clk, Data_Valid, P_Data, Par_Type, Par_Bit );
  input [7:0] P_Data;
  input clk, Data_Valid, Par_Type;
  output Par_Bit;
  wire   N5, n1, n2, n3, n4;

  DFFQX2M Par_Bit_reg ( .D(N5), .CK(clk), .Q(Par_Bit) );
  XNOR2X2M U3 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n4) );
  XOR3XLM U4 ( .A(Par_Type), .B(n1), .C(n2), .Y(N5) );
  XOR3XLM U5 ( .A(P_Data[1]), .B(P_Data[0]), .C(n3), .Y(n2) );
  XOR3XLM U6 ( .A(P_Data[5]), .B(P_Data[4]), .C(n4), .Y(n1) );
  XNOR2X2M U7 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n3) );
endmodule


module Mux_4 ( clk, Mux_Sel, Ser_Data, Par_Bit, TX_Out );
  input [1:0] Mux_Sel;
  input clk, Ser_Data, Par_Bit;
  output TX_Out;
  wire   n2, n3, n1;

  INVX2M U3 ( .A(Mux_Sel[0]), .Y(n1) );
  NOR2BX2M U4 ( .AN(Mux_Sel[1]), .B(Par_Bit), .Y(n2) );
  NAND3X2M U5 ( .A(Mux_Sel[1]), .B(n1), .C(Ser_Data), .Y(n3) );
  OAI21XLM U6 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_Out) );
endmodule


module UART_TX_Top ( clk, RST, P_Data_UART, Data_Valid_UART, Par_En_UART, 
        Par_Type_UART, TX_Out_UART, Busy_UART );
  input [7:0] P_Data_UART;
  input clk, RST, Data_Valid_UART, Par_En_UART, Par_Type_UART;
  output TX_Out_UART, Busy_UART;
  wire   Ser_En, Ser_Data_Top, Ser_Done, Par_Bit;
  wire   [1:0] Mux_Sel;

  Serializer_Top u_Serializer_Top ( .Ser_En(Ser_En), .RST(RST), .clk(clk), 
        .Data_Valid(Data_Valid_UART), .P_Data_Top(P_Data_UART), .Ser_Data_Top(
        Ser_Data_Top), .Ser_Done(Ser_Done) );
  FSM u_FSM ( .clk(clk), .RST(RST), .Data_Valid(Data_Valid_UART), .Par_En(
        Par_En_UART), .Ser_done(Ser_Done), .Ser_En(Ser_En), .Busy(Busy_UART), 
        .Mux_Sel(Mux_Sel) );
  Parity_Unit u_Parity_Unit ( .clk(clk), .Data_Valid(Data_Valid_UART), 
        .P_Data(P_Data_UART), .Par_Type(Par_Type_UART), .Par_Bit(Par_Bit) );
  Mux_4 u_Mux_4 ( .clk(clk), .Mux_Sel(Mux_Sel), .Ser_Data(Ser_Data_Top), 
        .Par_Bit(Par_Bit), .TX_Out(TX_Out_UART) );
endmodule


module UART ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST, TX_CLK, RX_CLK, 
        RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, 
        Prescale, parity_enable, parity_type );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [4:0] Prescale;
  input scan_clk, scan_rst, test_mode, SE, SI, RST, TX_CLK, RX_CLK, RX_IN_S,
         TX_IN_V, parity_enable, parity_type;
  output SO, RX_OUT_V, TX_OUT_S, TX_OUT_V;
  wire   n5, n6, TX_CLK_MUX, RX_CLK_MUX, RST_MUX, n1, n3;

  MUX2_2 u_MUX2_TX_CLOCK ( .IN0(TX_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(TX_CLK_MUX) );
  MUX2_1 u_MUX2_RX_CLOCK ( .IN0(RX_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(RX_CLK_MUX) );
  MUX2_0 u_MUX2_RST ( .IN0(RST), .IN1(scan_rst), .SL(test_mode), .MUX_out(
        RST_MUX) );
  RX u_RX1 ( .clk_Top(RX_CLK_MUX), .rst_Top(RST_MUX), .RX_IN_Top(RX_IN_S), 
        .Prescale_Top(Prescale), .PAR_EN_TOP(parity_enable), .PAR_TYP_Top(
        parity_type), .Data_Valid_Top(n5), .P_Data_Top(RX_OUT_P) );
  UART_TX_Top u_UART_TX_Top1 ( .clk(TX_CLK_MUX), .RST(RST_MUX), .P_Data_UART(
        TX_IN_P), .Data_Valid_UART(TX_IN_V), .Par_En_UART(parity_enable), 
        .Par_Type_UART(parity_type), .TX_Out_UART(n6), .Busy_UART(TX_OUT_V) );
  CLKINVX1M U1 ( .A(n6), .Y(n1) );
  CLKINVX40M U2 ( .A(n1), .Y(TX_OUT_S) );
  CLKINVX1M U3 ( .A(n5), .Y(n3) );
  CLKINVX40M U4 ( .A(n3), .Y(RX_OUT_V) );
endmodule

