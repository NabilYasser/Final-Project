/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Aug 17 05:41:59 2022
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


module RX_FSM_test_1 ( clk, rst, RX_IN, PAR_EN, Prescale, bit_cnt, 
        data_finish_flag, edge_cnt, P_DATA, PAR_TYP, Error, Compared_bit, 
        counter_en, bits_counter_en, Error_Unit_En, data_samp_en, deser_en, 
        data_valid, test_si, test_so, test_se );
  input [1:0] Prescale;
  input [4:0] edge_cnt;
  input [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_EN, bit_cnt, data_finish_flag, PAR_TYP, Error,
         test_si, test_se;
  output Compared_bit, counter_en, bits_counter_en, Error_Unit_En,
         data_samp_en, deser_en, data_valid, test_so;
  wire   N77, n66, n1, n6, n3, n4, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n2;
  wire   [2:0] CurrentState;
  wire   [2:0] NextState;
  assign test_so = n4;

  SDFFRQX1M \CurrentState_reg[2]  ( .D(NextState[2]), .SI(CurrentState[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(CurrentState[2]) );
  OAI32X1M U3 ( .A0(n35), .A1(n36), .A2(n37), .B0(n38), .B1(n39), .Y(N77) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n1) );
  CLKXOR2X2M U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n50) );
  INVXLM U8 ( .A(n3), .Y(n4) );
  OAI31X2M U17 ( .A0(n45), .A1(Prescale[0]), .A2(n40), .B0(n44), .Y(n14) );
  CLKBUFX2M U18 ( .A(N77), .Y(data_samp_en) );
  CLKINVX2M U19 ( .A(Prescale[1]), .Y(n36) );
  XOR3XLM U20 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n50), .Y(n48) );
  XOR3XLM U21 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n1), .Y(n49) );
  OAI2BB1X1M U22 ( .A0N(n4), .A1N(n10), .B0(n11), .Y(n66) );
  OAI211X1M U23 ( .A0(n12), .A1(n13), .B0(n14), .C0(Error), .Y(n10) );
  NOR2X1M U24 ( .A(n15), .B(n16), .Y(deser_en) );
  CLKNAND2X2M U25 ( .A(n17), .B(n18), .Y(counter_en) );
  OAI21X1M U26 ( .A0(n19), .A1(n20), .B0(n21), .Y(n18) );
  OAI2BB1X1M U27 ( .A0N(bits_counter_en), .A1N(data_finish_flag), .B0(n22), 
        .Y(NextState[2]) );
  OAI2B11X1M U28 ( .A1N(n20), .A0(n21), .B0(n16), .C0(n22), .Y(NextState[1])
         );
  AOI21X1M U29 ( .A0(n21), .A1(n13), .B0(n12), .Y(n22) );
  CLKINVX1M U30 ( .A(n23), .Y(n13) );
  CLKINVX1M U31 ( .A(bit_cnt), .Y(n21) );
  NAND3X1M U32 ( .A(n24), .B(n17), .C(n29), .Y(NextState[0]) );
  AOI21X1M U33 ( .A0(PAR_EN), .A1(bits_counter_en), .B0(n20), .Y(n29) );
  NOR2X1M U34 ( .A(n11), .B(Error), .Y(n20) );
  CLKINVX1M U35 ( .A(n16), .Y(bits_counter_en) );
  CLKINVX1M U36 ( .A(n30), .Y(n17) );
  OAI32X1M U37 ( .A0(n31), .A1(CurrentState[1]), .A2(CurrentState[0]), .B0(
        data_finish_flag), .B1(n16), .Y(n30) );
  NAND3X1M U38 ( .A(CurrentState[1]), .B(n32), .C(CurrentState[0]), .Y(n16) );
  OR2X1M U39 ( .A(RX_IN), .B(CurrentState[2]), .Y(n31) );
  MXI2X1M U40 ( .A(n12), .B(n33), .S0(bit_cnt), .Y(n24) );
  NOR2X1M U41 ( .A(RX_IN), .B(n23), .Y(n33) );
  CLKINVX1M U42 ( .A(n34), .Y(n12) );
  MX3X1M U43 ( .A(n40), .B(n41), .C(n42), .S0(edge_cnt[2]), .S1(Prescale[0]), 
        .Y(n39) );
  NAND3X1M U44 ( .A(n43), .B(n36), .C(edge_cnt[2]), .Y(n42) );
  OR2X1M U45 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .Y(n41) );
  CLKINVX1M U46 ( .A(n44), .Y(n38) );
  CLKINVX1M U47 ( .A(edge_cnt[3]), .Y(n37) );
  NAND3BX1M U48 ( .AN(edge_cnt[4]), .B(n45), .C(n43), .Y(n35) );
  CLKNAND2X2M U49 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .Y(n43) );
  AOI31X1M U50 ( .A0(n23), .A1(n34), .A2(n11), .B0(n15), .Y(Error_Unit_En) );
  CLKINVX1M U51 ( .A(n14), .Y(n15) );
  NOR2X1M U52 ( .A(edge_cnt[4]), .B(edge_cnt[3]), .Y(n44) );
  CLKINVX1M U53 ( .A(edge_cnt[1]), .Y(n40) );
  CLKINVX1M U54 ( .A(edge_cnt[2]), .Y(n45) );
  NAND3X1M U55 ( .A(n46), .B(n32), .C(CurrentState[0]), .Y(n11) );
  OAI21X1M U56 ( .A0(n47), .A1(n34), .B0(n23), .Y(Compared_bit) );
  NAND2BX1M U57 ( .AN(CurrentState[0]), .B(n19), .Y(n23) );
  CLKNAND2X2M U58 ( .A(CurrentState[0]), .B(n19), .Y(n34) );
  NOR2X1M U59 ( .A(n32), .B(n46), .Y(n19) );
  CLKINVX1M U60 ( .A(CurrentState[1]), .Y(n46) );
  CLKINVX1M U61 ( .A(CurrentState[2]), .Y(n32) );
  XOR3XLM U62 ( .A(n48), .B(PAR_TYP), .C(n49), .Y(n47) );
  SDFFSX1M data_valid_reg ( .D(n66), .SI(CurrentState[2]), .SE(test_se), .CK(
        clk), .SN(rst), .QN(n3) );
  SDFFRQX1M \CurrentState_reg[1]  ( .D(NextState[1]), .SI(CurrentState[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(CurrentState[1]) );
  SDFFRQX1M \CurrentState_reg[0]  ( .D(NextState[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(CurrentState[0]) );
  CLKINVX1M U6 ( .A(n6), .Y(n2) );
  CLKINVX40M U7 ( .A(n2), .Y(data_valid) );
  INVX2M U9 ( .A(n3), .Y(n6) );
endmodule


module Error_Unit ( clk, rst, sampled_bit, Compared_bit, Enable, Error );
  input clk, rst, sampled_bit, Compared_bit, Enable;
  output Error;
  wire   n1;

  NOR2BX2M U3 ( .AN(Enable), .B(n1), .Y(Error) );
  XNOR2X2M U4 ( .A(sampled_bit), .B(Compared_bit), .Y(n1) );
endmodule


module Bits_Counter_test_1 ( clk, rst, enable, bits_counter, finish, test_si, 
        test_se );
  output [2:0] bits_counter;
  input clk, rst, enable, test_si, test_se;
  output finish;
  wire   n1, n2, n5, n7, n9, n12;

  SDFFRQX1M \bits_counter_reg[0]  ( .D(n9), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(bits_counter[0]) );
  SDFFRQX1M \bits_counter_reg[1]  ( .D(n7), .SI(bits_counter[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(bits_counter[1]) );
  SDFFRQX1M \bits_counter_reg[2]  ( .D(n5), .SI(n12), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(bits_counter[2]) );
  NOR3BX2M U6 ( .AN(bits_counter[2]), .B(n2), .C(n12), .Y(finish) );
  NAND2X2M U7 ( .A(enable), .B(bits_counter[0]), .Y(n2) );
  XNOR2X2M U8 ( .A(bits_counter[1]), .B(n2), .Y(n7) );
  CLKXOR2X2M U9 ( .A(bits_counter[2]), .B(n1), .Y(n5) );
  NOR2X2M U13 ( .A(n2), .B(n12), .Y(n1) );
  CLKXOR2X2M U14 ( .A(enable), .B(bits_counter[0]), .Y(n9) );
  INVX2M U15 ( .A(bits_counter[1]), .Y(n12) );
endmodule


module Edge_Bit_Counter_test_1 ( clk, rst, enable, Prescale, edge_cnt, finish, 
        test_si, test_se );
  input [4:0] Prescale;
  output [4:0] edge_cnt;
  input clk, rst, enable, test_si, test_se;
  output finish;
  wire   n36, n37, N6, N7, N8, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, n11, \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n28, n30, n31, n32, n34, n35;

  SDFFRQX1M \edge_cnt_reg[2]  ( .D(N12), .SI(n30), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(edge_cnt[2]) );
  NOR2BX2M U15 ( .AN(N8), .B(n11), .Y(N13) );
  NOR2BX2M U16 ( .AN(N7), .B(n11), .Y(N12) );
  NOR2BX2M U17 ( .AN(N6), .B(n11), .Y(N11) );
  NAND2BX2M U18 ( .AN(finish), .B(enable), .Y(n11) );
  NOR2X2M U19 ( .A(n14), .B(n11), .Y(N14) );
  XNOR2X2M U20 ( .A(\add_21/carry[4] ), .B(edge_cnt[4]), .Y(n14) );
  NOR2X2M U21 ( .A(n34), .B(n11), .Y(N10) );
  INVX2M U22 ( .A(Prescale[0]), .Y(N15) );
  ADDHX1M U23 ( .A(n31), .B(edge_cnt[0]), .CO(\add_21/carry[2] ), .S(N6) );
  ADDHX1M U24 ( .A(edge_cnt[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N7) );
  ADDHX1M U25 ( .A(edge_cnt[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N8) );
  NAND2BX1M U26 ( .AN(Prescale[1]), .B(N15), .Y(n15) );
  OAI2BB1X1M U27 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n15), .Y(N16) );
  OR2X1M U28 ( .A(n15), .B(Prescale[2]), .Y(n16) );
  OAI2BB1X1M U29 ( .A0N(n15), .A1N(Prescale[2]), .B0(n16), .Y(N17) );
  XNOR2X1M U30 ( .A(Prescale[3]), .B(n16), .Y(N18) );
  NOR3X1M U31 ( .A(Prescale[3]), .B(Prescale[4]), .C(n16), .Y(N20) );
  OAI21X1M U32 ( .A0(Prescale[3]), .A1(n16), .B0(Prescale[4]), .Y(n17) );
  NAND2BX1M U33 ( .AN(N20), .B(n17), .Y(N19) );
  NOR2BX1M U34 ( .AN(N15), .B(n35), .Y(n18) );
  OAI2B2X1M U35 ( .A1N(n31), .A0(n18), .B0(N16), .B1(n18), .Y(n21) );
  NOR2BX1M U36 ( .AN(n34), .B(N15), .Y(n19) );
  OAI2B2X1M U37 ( .A1N(N16), .A0(n19), .B0(n30), .B1(n19), .Y(n20) );
  NAND3BX1M U38 ( .AN(N20), .B(n21), .C(n20), .Y(n25) );
  CLKXOR2X2M U39 ( .A(N19), .B(edge_cnt[4]), .Y(n24) );
  CLKXOR2X2M U40 ( .A(N17), .B(edge_cnt[2]), .Y(n23) );
  CLKXOR2X2M U41 ( .A(N18), .B(edge_cnt[3]), .Y(n22) );
  NOR4X1M U42 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(N21) );
  INVXLM U43 ( .A(n36), .Y(n28) );
  INVXLM U44 ( .A(n28), .Y(edge_cnt[1]) );
  INVXLM U45 ( .A(n28), .Y(n30) );
  INVXLM U46 ( .A(n28), .Y(n31) );
  INVXLM U47 ( .A(n37), .Y(n32) );
  INVXLM U48 ( .A(n32), .Y(edge_cnt[0]) );
  INVXLM U49 ( .A(n32), .Y(n34) );
  INVXLM U50 ( .A(n32), .Y(n35) );
  SDFFRQX1M finish_reg ( .D(N21), .SI(edge_cnt[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(finish) );
  SDFFRQX1M \edge_cnt_reg[3]  ( .D(N13), .SI(edge_cnt[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[3]) );
  SDFFRQX1M \edge_cnt_reg[1]  ( .D(N11), .SI(n35), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n36) );
  SDFFRQX1M \edge_cnt_reg[4]  ( .D(N14), .SI(edge_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[4]) );
  SDFFRQX1M \edge_cnt_reg[0]  ( .D(N10), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n37) );
endmodule


module Counter_Unit_test_1 ( clk, rst, enable, Data_enable, Prescale, 
        Finish_edge, Finish_data, bits_counter, edge_cnt, test_si, test_se );
  input [4:0] Prescale;
  output [2:0] bits_counter;
  output [4:0] edge_cnt;
  input clk, rst, enable, Data_enable, test_si, test_se;
  output Finish_edge, Finish_data;
  wire   Bits_counter_enable;

  AND2X2M U1 ( .A(Finish_edge), .B(Data_enable), .Y(Bits_counter_enable) );
  Bits_Counter_test_1 u_Bits_Counter ( .clk(clk), .rst(rst), .enable(
        Bits_counter_enable), .bits_counter(bits_counter), .finish(Finish_data), .test_si(test_si), .test_se(test_se) );
  Edge_Bit_Counter_test_1 u_Edge_Bit_Counter ( .clk(clk), .rst(rst), .enable(
        enable), .Prescale(Prescale), .edge_cnt(edge_cnt), .finish(Finish_edge), .test_si(bits_counter[2]), .test_se(test_se) );
endmodule


module Data_Sampling_test_1 ( RX_in, clk, rst, data_samp_en, sampled_bit, 
        test_si, test_so, test_se );
  input RX_in, clk, rst, data_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   n1, n2, n7, n9, n11, n12, n13, n14;
  wire   [2:0] bits;
  assign test_so = bits[2];

  INVXLM U5 ( .A(data_samp_en), .Y(n12) );
  OAI22XLM U6 ( .A0(data_samp_en), .A1(n14), .B0(n13), .B1(n12), .Y(n9) );
  AOI21X2M U7 ( .A0(n1), .A1(n2), .B0(data_samp_en), .Y(sampled_bit) );
  OAI21X2M U8 ( .A0(bits[0]), .A1(bits[1]), .B0(bits[2]), .Y(n2) );
  NAND2X2M U9 ( .A(bits[1]), .B(bits[0]), .Y(n1) );
  OAI2BB2XLM U10 ( .B0(data_samp_en), .B1(n13), .A0N(RX_in), .A1N(data_samp_en), .Y(n11) );
  OAI2BB2X1M U14 ( .B0(n14), .B1(n12), .A0N(n12), .A1N(bits[2]), .Y(n7) );
  INVX2M U15 ( .A(bits[0]), .Y(n13) );
  INVX2M U16 ( .A(bits[1]), .Y(n14) );
  SDFFRQX1M \bits_reg[0]  ( .D(n11), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(bits[0]) );
  SDFFRQX1M \bits_reg[2]  ( .D(n7), .SI(n14), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(bits[2]) );
  SDFFRQX1M \bits_reg[1]  ( .D(n9), .SI(n13), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(bits[1]) );
endmodule


module Deserializer_test_1 ( sampled_bit, clk, rst, deser_en, bits_counter, 
        Data, test_si, test_se );
  input [2:0] bits_counter;
  output [7:0] Data;
  input sampled_bit, clk, rst, deser_en, test_si, test_se;
  wire   n47, n48, n11, n12, n14, n15, n17, n19, n21, n23, n27, n28, n29, n30,
         n31, n32, n33, n34, n9, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;

  INVX2M U10 ( .A(n44), .Y(Data[3]) );
  INVX2M U11 ( .A(n9), .Y(Data[2]) );
  CLKINVX1M U12 ( .A(n48), .Y(n9) );
  OA21XLM U13 ( .A0(n14), .A1(n17), .B0(Data[2]), .Y(n42) );
  OA21XLM U14 ( .A0(n14), .A1(n15), .B0(Data[1]), .Y(n40) );
  OA21XLM U15 ( .A0(n15), .A1(n23), .B0(Data[5]), .Y(n41) );
  OAI21BX1M U24 ( .A0(n11), .A1(n12), .B0N(n36), .Y(n27) );
  OA21X2M U25 ( .A0(n14), .A1(n11), .B0(Data[0]), .Y(n36) );
  OAI21BX1M U26 ( .A0(n11), .A1(n21), .B0N(n37), .Y(n31) );
  OA21X2M U27 ( .A0(n11), .A1(n23), .B0(Data[4]), .Y(n37) );
  OAI21BX1M U28 ( .A0(n17), .A1(n21), .B0N(n38), .Y(n33) );
  OA21X2M U29 ( .A0(n17), .A1(n23), .B0(Data[6]), .Y(n38) );
  OAI21BX1M U30 ( .A0(n12), .A1(n19), .B0N(n39), .Y(n30) );
  OA21X2M U31 ( .A0(n14), .A1(n19), .B0(Data[3]), .Y(n39) );
  NAND2BX2M U32 ( .AN(n23), .B(sampled_bit), .Y(n21) );
  NAND2BX1M U33 ( .AN(n14), .B(sampled_bit), .Y(n12) );
  NAND2X2M U34 ( .A(n46), .B(n45), .Y(n11) );
  OAI21BX1M U35 ( .A0(n12), .A1(n15), .B0N(n40), .Y(n28) );
  OAI21BX1M U36 ( .A0(n15), .A1(n21), .B0N(n41), .Y(n32) );
  OAI21BX1M U37 ( .A0(n12), .A1(n17), .B0N(n42), .Y(n29) );
  OAI21BX1M U38 ( .A0(n19), .A1(n21), .B0N(n43), .Y(n34) );
  OA21X2M U39 ( .A0(n19), .A1(n23), .B0(Data[7]), .Y(n43) );
  NAND2X2M U40 ( .A(bits_counter[2]), .B(deser_en), .Y(n23) );
  NAND2BX2M U41 ( .AN(bits_counter[2]), .B(deser_en), .Y(n14) );
  NAND2X2M U42 ( .A(bits_counter[0]), .B(n46), .Y(n15) );
  NAND2X2M U43 ( .A(bits_counter[1]), .B(n45), .Y(n17) );
  NAND2X2M U44 ( .A(bits_counter[1]), .B(bits_counter[0]), .Y(n19) );
  INVX2M U45 ( .A(bits_counter[0]), .Y(n45) );
  INVX2M U46 ( .A(bits_counter[1]), .Y(n46) );
  CLKINVX1M U47 ( .A(n47), .Y(n44) );
  SDFFRQX1M \Data_reg[3]  ( .D(n30), .SI(Data[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n47) );
  SDFFRQX1M \Data_reg[2]  ( .D(n29), .SI(Data[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n48) );
  SDFFRHQX1M \Data_reg[7]  ( .D(n34), .SI(Data[6]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[7]) );
  SDFFRHQX1M \Data_reg[6]  ( .D(n33), .SI(Data[5]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[6]) );
  SDFFRHQX1M \Data_reg[1]  ( .D(n28), .SI(Data[0]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[1]) );
  SDFFRHQX1M \Data_reg[5]  ( .D(n32), .SI(Data[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[5]) );
  SDFFRHQX1M \Data_reg[0]  ( .D(n27), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[0]) );
  SDFFRHQX1M \Data_reg[4]  ( .D(n31), .SI(Data[3]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[4]) );
endmodule


module RX_test_1 ( clk_Top, rst_Top, RX_IN_Top, Prescale_Top, PAR_EN_TOP, 
        PAR_TYP_Top, Data_Valid_Top, P_Data_Top, test_si, test_so, test_se );
  input [4:0] Prescale_Top;
  output [7:0] P_Data_Top;
  input clk_Top, rst_Top, RX_IN_Top, PAR_EN_TOP, PAR_TYP_Top, test_si, test_se;
  output Data_Valid_Top, test_so;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, bit_cnt_Top,
         data_finish_flag_Top, Error_Top, Compared_bit_Top, enable_Top,
         bits_counter_en_Top, Error_Unit_En_Top, data_samp_en_Top,
         deser_en_FSM_Top, sampled_bit_Top, n1, n2, n4, n5, n7, n8, n10, n11,
         n13, n14, n16, n17, n19, n20, n22, n23, n34;
  wire   [4:0] edge_cnt_Top;
  wire   [2:0] bits_counter_Top;

  CLKINVX1M U1 ( .A(n29), .Y(n1) );
  INVXLM U2 ( .A(n1), .Y(n2) );
  CLKINVX40M U3 ( .A(n1), .Y(P_Data_Top[3]) );
  INVXLM U5 ( .A(n4), .Y(n5) );
  CLKINVX1M U7 ( .A(n30), .Y(n7) );
  INVXLM U8 ( .A(n7), .Y(n8) );
  CLKINVX40M U9 ( .A(n7), .Y(P_Data_Top[2]) );
  INVXLM U11 ( .A(n10), .Y(n11) );
  INVXLM U14 ( .A(n13), .Y(n14) );
  INVXLM U17 ( .A(n16), .Y(n17) );
  INVXLM U20 ( .A(n19), .Y(n20) );
  INVXLM U23 ( .A(n22), .Y(n23) );
  RX_FSM_test_1 u_RX_FSM ( .clk(clk_Top), .rst(rst_Top), .RX_IN(RX_IN_Top), 
        .PAR_EN(PAR_EN_TOP), .Prescale(Prescale_Top[4:3]), .bit_cnt(
        bit_cnt_Top), .data_finish_flag(data_finish_flag_Top), .edge_cnt(
        edge_cnt_Top), .P_DATA({n5, n11, n17, n23, n2, n8, n14, n20}), 
        .PAR_TYP(PAR_TYP_Top), .Error(Error_Top), .Compared_bit(
        Compared_bit_Top), .counter_en(enable_Top), .bits_counter_en(
        bits_counter_en_Top), .Error_Unit_En(Error_Unit_En_Top), 
        .data_samp_en(data_samp_en_Top), .deser_en(deser_en_FSM_Top), 
        .data_valid(Data_Valid_Top), .test_si(n25), .test_so(test_so), 
        .test_se(test_se) );
  Error_Unit u_Error_Unit ( .clk(clk_Top), .rst(rst_Top), .sampled_bit(
        sampled_bit_Top), .Compared_bit(Compared_bit_Top), .Enable(
        Error_Unit_En_Top), .Error(Error_Top) );
  Counter_Unit_test_1 u_Counter_Unit ( .clk(clk_Top), .rst(rst_Top), .enable(
        enable_Top), .Data_enable(bits_counter_en_Top), .Prescale(Prescale_Top), .Finish_edge(bit_cnt_Top), .Finish_data(data_finish_flag_Top), 
        .bits_counter(bits_counter_Top), .edge_cnt(edge_cnt_Top), .test_si(
        test_si), .test_se(test_se) );
  Data_Sampling_test_1 u_Data_Sampling ( .RX_in(RX_IN_Top), .clk(clk_Top), 
        .rst(rst_Top), .data_samp_en(data_samp_en_Top), .sampled_bit(
        sampled_bit_Top), .test_si(bit_cnt_Top), .test_so(n34), .test_se(
        test_se) );
  Deserializer_test_1 u_Deserializer ( .sampled_bit(sampled_bit_Top), .clk(
        clk_Top), .rst(rst_Top), .deser_en(deser_en_FSM_Top), .bits_counter(
        bits_counter_Top), .Data({n25, n26, n27, n28, n29, n30, n31, n32}), 
        .test_si(n34), .test_se(test_se) );
  CLKINVX40M U4 ( .A(n22), .Y(P_Data_Top[4]) );
  CLKINVX1M U6 ( .A(n28), .Y(n22) );
  CLKINVX40M U10 ( .A(n19), .Y(P_Data_Top[0]) );
  CLKINVX1M U12 ( .A(n32), .Y(n19) );
  CLKINVX40M U13 ( .A(n16), .Y(P_Data_Top[5]) );
  CLKINVX1M U15 ( .A(n27), .Y(n16) );
  CLKINVX40M U16 ( .A(n13), .Y(P_Data_Top[1]) );
  CLKINVX1M U18 ( .A(n31), .Y(n13) );
  CLKINVX40M U19 ( .A(n10), .Y(P_Data_Top[6]) );
  CLKINVX1M U21 ( .A(n26), .Y(n10) );
  CLKINVX40M U22 ( .A(n4), .Y(P_Data_Top[7]) );
  CLKINVX1M U24 ( .A(n25), .Y(n4) );
endmodule


module Counter_test_1 ( RST, clk, Ser_En, Counter, Finish, test_si, test_se );
  output [2:0] Counter;
  input RST, clk, Ser_En, test_si, test_se;
  output Finish;
  wire   N8, N9, N10, N12, n5, n6, n7, n10;
  assign Finish = N12;

  SDFFRQX1M \Counter_reg[2]  ( .D(N10), .SI(Counter[1]), .SE(test_se), .CK(clk), .RN(RST), .Q(Counter[2]) );
  SDFFRQX1M \Counter_reg[1]  ( .D(N9), .SI(Counter[0]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(Counter[1]) );
  SDFFRQX1M \Counter_reg[0]  ( .D(N8), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(Counter[0]) );
  INVX2M U9 ( .A(Ser_En), .Y(n10) );
  NAND2X2M U10 ( .A(Counter[0]), .B(Counter[1]), .Y(n6) );
  NOR2X2M U11 ( .A(Counter[0]), .B(n10), .Y(N8) );
  NOR2X2M U12 ( .A(n7), .B(n10), .Y(N10) );
  CLKXOR2X2M U13 ( .A(n6), .B(Counter[2]), .Y(n7) );
  NOR2X2M U14 ( .A(n5), .B(n10), .Y(N9) );
  XNOR2X2M U15 ( .A(Counter[0]), .B(Counter[1]), .Y(n5) );
  NOR2BX2M U16 ( .AN(Counter[2]), .B(n6), .Y(N12) );
endmodule


module Serializer_test_1 ( P_Data, clk, rst, Ser_En, Data_Valid, Counter, 
        Ser_Data, test_so, test_se );
  input [7:0] P_Data;
  input [2:0] Counter;
  input clk, rst, Ser_En, Data_Valid, test_se;
  output Ser_Data, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n34, n3, n38, n39, n40, n41, n1;
  wire   [7:1] Data;

  NOR2BX4M U19 ( .AN(Ser_En), .B(n34), .Y(n11) );
  NOR2X4M U20 ( .A(n34), .B(n11), .Y(n9) );
  BUFX4M U21 ( .A(Data_Valid), .Y(n34) );
  OAI2BB1X2M U22 ( .A0N(n9), .A1N(Data[2]), .B0(n16), .Y(n24) );
  AOI22X1M U23 ( .A0(Data[3]), .A1(n11), .B0(P_Data[2]), .B1(n34), .Y(n16) );
  OAI2BB1X2M U24 ( .A0N(n9), .A1N(Data[6]), .B0(n12), .Y(n20) );
  AOI22X1M U25 ( .A0(n40), .A1(n11), .B0(P_Data[6]), .B1(n34), .Y(n12) );
  OAI2BB1X2M U26 ( .A0N(n9), .A1N(Data[3]), .B0(n15), .Y(n23) );
  AOI22X1M U27 ( .A0(Data[4]), .A1(n11), .B0(P_Data[3]), .B1(n34), .Y(n15) );
  OAI2BB1X2M U28 ( .A0N(Ser_Data), .A1N(n9), .B0(n10), .Y(n18) );
  AOI22X1M U29 ( .A0(Data[1]), .A1(n11), .B0(P_Data[0]), .B1(n34), .Y(n10) );
  OAI2BB1X2M U30 ( .A0N(Data[1]), .A1N(n9), .B0(n17), .Y(n25) );
  AOI22X1M U31 ( .A0(Data[2]), .A1(n11), .B0(P_Data[1]), .B1(n34), .Y(n17) );
  OAI2BB1X2M U32 ( .A0N(n9), .A1N(Data[4]), .B0(n14), .Y(n22) );
  AOI22X1M U33 ( .A0(Data[5]), .A1(n11), .B0(P_Data[4]), .B1(n34), .Y(n14) );
  OAI2BB1X2M U34 ( .A0N(n9), .A1N(Data[5]), .B0(n13), .Y(n21) );
  AOI22X1M U35 ( .A0(Data[6]), .A1(n11), .B0(P_Data[5]), .B1(n34), .Y(n13) );
  AO22X1M U36 ( .A0(n9), .A1(n39), .B0(P_Data[7]), .B1(n34), .Y(n19) );
  INVXLM U38 ( .A(Data[7]), .Y(n38) );
  INVXLM U39 ( .A(n38), .Y(n39) );
  INVXLM U40 ( .A(n38), .Y(n40) );
  INVXLM U41 ( .A(n38), .Y(n41) );
  SDFFRQX1M \Data_reg[1]  ( .D(n25), .SI(Ser_Data), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[1]) );
  SDFFRQX1M \Data_reg[0]  ( .D(n18), .SI(Counter[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Ser_Data) );
  SDFFRQX1M \Data_reg[6]  ( .D(n20), .SI(Data[5]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[6]) );
  SDFFRQX1M \Data_reg[5]  ( .D(n21), .SI(Data[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[5]) );
  SDFFRQX1M \Data_reg[4]  ( .D(n22), .SI(Data[3]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[4]) );
  SDFFRQX1M \Data_reg[3]  ( .D(n23), .SI(Data[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[3]) );
  SDFFRQX1M \Data_reg[2]  ( .D(n24), .SI(Data[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[2]) );
  SDFFRQX1M \Data_reg[7]  ( .D(n19), .SI(Data[6]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[7]) );
  CLKINVX1M U3 ( .A(n3), .Y(n1) );
  CLKINVX40M U4 ( .A(n1), .Y(test_so) );
  CLKBUFX8M U5 ( .A(n41), .Y(n3) );
endmodule


module Serializer_Top_test_1 ( Ser_En, RST, clk, Data_Valid, P_Data_Top, 
        Ser_Data_Top, Ser_Done, test_si, test_so, test_se );
  input [7:0] P_Data_Top;
  input Ser_En, RST, clk, Data_Valid, test_si, test_se;
  output Ser_Data_Top, Ser_Done, test_so;

  wire   [2:0] Counter_Top;

  Counter_test_1 u_Counter ( .RST(RST), .clk(clk), .Ser_En(Ser_En), .Counter(
        Counter_Top), .Finish(Ser_Done), .test_si(test_si), .test_se(test_se)
         );
  Serializer_test_1 u_Serializer ( .P_Data(P_Data_Top), .clk(clk), .rst(RST), 
        .Ser_En(Ser_En), .Data_Valid(Data_Valid), .Counter(Counter_Top), 
        .Ser_Data(Ser_Data_Top), .test_so(test_so), .test_se(test_se) );
endmodule


module FSM_test_1 ( clk, RST, Data_Valid, Par_En, Ser_done, Ser_En, Busy, 
        Mux_Sel, test_si, test_se );
  output [1:0] Mux_Sel;
  input clk, RST, Data_Valid, Par_En, Ser_done, test_si, test_se;
  output Ser_En, Busy;
  wire   n12, \Current_State[0] , n5, n6, n7, n3;
  wire   [1:0] Next_State;

  CLKINVX1M U5 ( .A(n12), .Y(n3) );
  CLKINVX40M U6 ( .A(n3), .Y(Busy) );
  NAND2XLM U7 ( .A(n7), .B(n5), .Y(n12) );
  INVX2M U10 ( .A(n5), .Y(Ser_En) );
  CLKXOR2X2M U11 ( .A(Mux_Sel[1]), .B(Mux_Sel[0]), .Y(n7) );
  INVX2M U12 ( .A(\Current_State[0] ), .Y(Mux_Sel[0]) );
  NAND2X2M U13 ( .A(n7), .B(\Current_State[0] ), .Y(n5) );
  OAI2BB2X1M U14 ( .B0(Mux_Sel[0]), .B1(n6), .A0N(Data_Valid), .A1N(Mux_Sel[0]), .Y(Next_State[0]) );
  AOI2B1X1M U15 ( .A1N(Par_En), .A0(n6), .B0(Mux_Sel[0]), .Y(Next_State[1]) );
  AND2X2M U16 ( .A(Ser_done), .B(Mux_Sel[1]), .Y(n6) );
  SDFFRQX1M \Current_State_reg[1]  ( .D(Next_State[1]), .SI(Mux_Sel[0]), .SE(
        test_se), .CK(clk), .RN(RST), .Q(Mux_Sel[1]) );
  SDFFRQX1M \Current_State_reg[0]  ( .D(Next_State[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(RST), .Q(\Current_State[0] ) );
endmodule


module Parity_Unit_test_1 ( clk, Data_Valid, P_Data, Par_Type, Par_Bit, 
        test_si, test_se );
  input [7:0] P_Data;
  input clk, Data_Valid, Par_Type, test_si, test_se;
  output Par_Bit;
  wire   N5, n2, n3, n4, n5;

  SDFFQX1M Par_Bit_reg ( .D(N5), .SI(test_si), .SE(test_se), .CK(clk), .Q(
        Par_Bit) );
  XNOR2X2M U5 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n5) );
  XOR3XLM U6 ( .A(Par_Type), .B(n2), .C(n3), .Y(N5) );
  XOR3XLM U7 ( .A(P_Data[1]), .B(P_Data[0]), .C(n4), .Y(n3) );
  XOR3XLM U8 ( .A(P_Data[5]), .B(P_Data[4]), .C(n5), .Y(n2) );
  XNOR2X2M U9 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n4) );
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


module UART_TX_Top_test_1 ( clk, RST, P_Data_UART, Data_Valid_UART, 
        Par_En_UART, Par_Type_UART, TX_Out_UART, Busy_UART, test_si, test_so, 
        test_se );
  input [7:0] P_Data_UART;
  input clk, RST, Data_Valid_UART, Par_En_UART, Par_Type_UART, test_si,
         test_se;
  output TX_Out_UART, Busy_UART, test_so;
  wire   Ser_En, Ser_Data_Top, Ser_Done, Par_Bit;
  wire   [1:0] Mux_Sel;

  Serializer_Top_test_1 u_Serializer_Top ( .Ser_En(Ser_En), .RST(RST), .clk(
        clk), .Data_Valid(Data_Valid_UART), .P_Data_Top(P_Data_UART), 
        .Ser_Data_Top(Ser_Data_Top), .Ser_Done(Ser_Done), .test_si(Par_Bit), 
        .test_so(test_so), .test_se(test_se) );
  FSM_test_1 u_FSM ( .clk(clk), .RST(RST), .Data_Valid(Data_Valid_UART), 
        .Par_En(Par_En_UART), .Ser_done(Ser_Done), .Ser_En(Ser_En), .Busy(
        Busy_UART), .Mux_Sel(Mux_Sel), .test_si(test_si), .test_se(test_se) );
  Parity_Unit_test_1 u_Parity_Unit ( .clk(clk), .Data_Valid(Data_Valid_UART), 
        .P_Data(P_Data_UART), .Par_Type(Par_Type_UART), .Par_Bit(Par_Bit), 
        .test_si(Mux_Sel[1]), .test_se(test_se) );
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
  wire   n3, TX_CLK_MUX, RX_CLK_MUX, RST_MUX, n1, n6;

  CLKINVX1M U1 ( .A(n3), .Y(n1) );
  CLKINVX40M U2 ( .A(n1), .Y(TX_OUT_S) );
  MUX2_2 u_MUX2_TX_CLOCK ( .IN0(TX_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(TX_CLK_MUX) );
  MUX2_1 u_MUX2_RX_CLOCK ( .IN0(RX_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(RX_CLK_MUX) );
  MUX2_0 u_MUX2_RST ( .IN0(RST), .IN1(scan_rst), .SL(test_mode), .MUX_out(
        RST_MUX) );
  RX_test_1 u_RX1 ( .clk_Top(RX_CLK_MUX), .rst_Top(RST_MUX), .RX_IN_Top(
        RX_IN_S), .Prescale_Top(Prescale), .PAR_EN_TOP(parity_enable), 
        .PAR_TYP_Top(parity_type), .Data_Valid_Top(RX_OUT_V), .P_Data_Top(
        RX_OUT_P), .test_si(SI), .test_so(n6), .test_se(SE) );
  UART_TX_Top_test_1 u_UART_TX_Top1 ( .clk(TX_CLK_MUX), .RST(RST_MUX), 
        .P_Data_UART(TX_IN_P), .Data_Valid_UART(TX_IN_V), .Par_En_UART(
        parity_enable), .Par_Type_UART(parity_type), .TX_Out_UART(n3), 
        .Busy_UART(TX_OUT_V), .test_si(n6), .test_so(SO), .test_se(SE) );
endmodule

