/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Aug 26 03:56:37 2022
/////////////////////////////////////////////////////////////


module MUX2_1 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  CLKMX2X4M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_4 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_3 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_2 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_0 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X8M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_5 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X6M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module RX_Controler_00000008_00000010_00000004_0000000e_00000004_test_1 ( clk, 
        rst, ALU_Valid, ALU_Enable, ALU_Fun, CLK_Gate_En, REG_Address, 
        REG_WrEn, REG_RdEn, REG_WrData, Rx_P_Data, RX_Valid, test_si, test_so, 
        test_se );
  output [3:0] ALU_Fun;
  output [3:0] REG_Address;
  output [7:0] REG_WrData;
  input [7:0] Rx_P_Data;
  input clk, rst, ALU_Valid, RX_Valid, test_si, test_se;
  output ALU_Enable, CLK_Gate_En, REG_WrEn, REG_RdEn, test_so;
  wire   N88, N89, N90, N91, N92, N104, n1, n2, n3, n4, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n61, n62, n64, n66,
         n67, n68;
  wire   [2:0] Current_State;
  wire   [2:0] Next_State;
  wire   [3:0] Saved_Data;
  assign test_so = Saved_Data[3];

  SDFFRQX1M \Saved_Data_reg[3]  ( .D(n60), .SI(Saved_Data[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(Saved_Data[3]) );
  SDFFRQX1M \Saved_Data_reg[2]  ( .D(n59), .SI(Saved_Data[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(Saved_Data[2]) );
  SDFFRQX1M \Saved_Data_reg[1]  ( .D(n58), .SI(n68), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Saved_Data[1]) );
  SDFFRQX1M \Saved_Data_reg[0]  ( .D(n57), .SI(n19), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Saved_Data[0]) );
  SDFFRQX1M \Current_State_reg[2]  ( .D(Next_State[2]), .SI(n67), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(Current_State[2]) );
  SDFFRQX1M \Current_State_reg[1]  ( .D(Next_State[1]), .SI(n66), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(Current_State[1]) );
  SDFFRQX1M \Current_State_reg[0]  ( .D(Next_State[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(Current_State[0]) );
  NOR2X2M U10 ( .A(n25), .B(n54), .Y(ALU_Fun[1]) );
  NOR2X2M U18 ( .A(n23), .B(n54), .Y(ALU_Fun[3]) );
  NOR2X2M U19 ( .A(n26), .B(n54), .Y(ALU_Fun[0]) );
  NOR2X2M U20 ( .A(n24), .B(n54), .Y(ALU_Fun[2]) );
  CLKBUFX2M U21 ( .A(Current_State[2]), .Y(n19) );
  MX2X2M U22 ( .A(n4), .B(Saved_Data[3]), .S0(Current_State[0]), .Y(
        REG_Address[3]) );
  AOI21X2M U23 ( .A0(n31), .A1(RX_Valid), .B0(n32), .Y(n30) );
  OAI21BX1M U24 ( .A0(n64), .A1(n26), .B0N(N92), .Y(N88) );
  OAI21X2M U25 ( .A0(n64), .A1(n25), .B0(n53), .Y(N89) );
  NAND2X2M U26 ( .A(n68), .B(n64), .Y(N104) );
  INVX2M U27 ( .A(n53), .Y(n61) );
  NOR3X2M U28 ( .A(n66), .B(n19), .C(n67), .Y(n43) );
  NOR2X2M U29 ( .A(n30), .B(n26), .Y(REG_WrData[0]) );
  NOR2X2M U30 ( .A(n30), .B(n25), .Y(REG_WrData[1]) );
  NOR2X2M U31 ( .A(n30), .B(n24), .Y(REG_WrData[2]) );
  NOR2X2M U32 ( .A(n30), .B(n23), .Y(REG_WrData[3]) );
  NOR2X2M U33 ( .A(n30), .B(n22), .Y(REG_WrData[4]) );
  NOR2X2M U34 ( .A(n30), .B(n21), .Y(REG_WrData[7]) );
  NOR2X2M U35 ( .A(n35), .B(n64), .Y(n32) );
  OAI2B11X2M U36 ( .A1N(n40), .A0(n66), .B0(n44), .C0(n45), .Y(Next_State[0])
         );
  AOI31X2M U37 ( .A0(n26), .A1(n22), .A2(n42), .B0(n32), .Y(n44) );
  AOI21X2M U38 ( .A0(n43), .A1(n64), .B0(n34), .Y(n45) );
  INVX2M U39 ( .A(n30), .Y(REG_WrEn) );
  NAND3X2M U40 ( .A(n66), .B(n67), .C(n19), .Y(n35) );
  NAND4BX1M U41 ( .AN(n34), .B(n35), .C(n36), .D(n37), .Y(Next_State[2]) );
  NAND2BX2M U42 ( .AN(n43), .B(n36), .Y(n31) );
  INVX2M U43 ( .A(n48), .Y(n20) );
  INVX2M U44 ( .A(n54), .Y(ALU_Enable) );
  INVX2M U45 ( .A(RX_Valid), .Y(n64) );
  NOR2X2M U46 ( .A(n68), .B(RX_Valid), .Y(N92) );
  NAND2X2M U47 ( .A(Saved_Data[1]), .B(n64), .Y(n53) );
  MX2X2M U48 ( .A(n2), .B(Saved_Data[1]), .S0(Current_State[0]), .Y(
        REG_Address[1]) );
  MX4X1M U49 ( .A(Saved_Data[1]), .B(n61), .C(N89), .D(n61), .S0(n19), .S1(
        Current_State[1]), .Y(n2) );
  MX2X2M U50 ( .A(n1), .B(Saved_Data[0]), .S0(Current_State[0]), .Y(
        REG_Address[0]) );
  MX4X1M U51 ( .A(Saved_Data[0]), .B(N104), .C(N88), .D(N92), .S0(n19), .S1(
        Current_State[1]), .Y(n1) );
  OAI2B2X1M U52 ( .A1N(n46), .A0(n47), .B0(n48), .B1(n49), .Y(n34) );
  NOR2BX2M U53 ( .AN(ALU_Valid), .B(n64), .Y(n47) );
  NOR3X2M U54 ( .A(Current_State[0]), .B(n19), .C(n67), .Y(n33) );
  NAND3X2M U55 ( .A(Current_State[0]), .B(n40), .C(RX_Valid), .Y(n29) );
  NOR2X2M U56 ( .A(Current_State[1]), .B(n19), .Y(n40) );
  NAND4X2M U57 ( .A(n40), .B(n66), .C(RX_Valid), .D(n56), .Y(n48) );
  NOR2X2M U58 ( .A(n23), .B(n21), .Y(n56) );
  NAND4X2M U59 ( .A(Rx_P_Data[6]), .B(Rx_P_Data[2]), .C(Rx_P_Data[4]), .D(n55), 
        .Y(n49) );
  NOR3X2M U60 ( .A(n26), .B(Rx_P_Data[5]), .C(Rx_P_Data[1]), .Y(n55) );
  INVX2M U61 ( .A(Rx_P_Data[0]), .Y(n26) );
  NAND4X2M U62 ( .A(Rx_P_Data[6]), .B(Rx_P_Data[2]), .C(n20), .D(n41), .Y(n37)
         );
  NOR4X1M U63 ( .A(Rx_P_Data[5]), .B(Rx_P_Data[4]), .C(Rx_P_Data[1]), .D(
        Rx_P_Data[0]), .Y(n41) );
  OAI2BB2X1M U64 ( .B0(n29), .B1(n26), .A0N(n29), .A1N(Saved_Data[0]), .Y(n57)
         );
  OAI2BB2X1M U65 ( .B0(n29), .B1(n25), .A0N(n29), .A1N(Saved_Data[1]), .Y(n58)
         );
  OAI2BB2X1M U66 ( .B0(n29), .B1(n24), .A0N(n29), .A1N(Saved_Data[2]), .Y(n59)
         );
  OAI2BB2X1M U67 ( .B0(n29), .B1(n23), .A0N(n29), .A1N(Saved_Data[3]), .Y(n60)
         );
  INVX2M U68 ( .A(Rx_P_Data[1]), .Y(n25) );
  INVX2M U69 ( .A(Current_State[0]), .Y(n66) );
  AND2X2M U70 ( .A(Rx_P_Data[5]), .B(REG_WrEn), .Y(REG_WrData[5]) );
  AND2X2M U71 ( .A(Rx_P_Data[6]), .B(REG_WrEn), .Y(REG_WrData[6]) );
  INVX2M U72 ( .A(Rx_P_Data[3]), .Y(n23) );
  AND3X2M U73 ( .A(n19), .B(Current_State[0]), .C(n67), .Y(n46) );
  INVX2M U74 ( .A(Rx_P_Data[2]), .Y(n24) );
  INVX2M U75 ( .A(Current_State[1]), .Y(n67) );
  NAND3X2M U76 ( .A(Current_State[1]), .B(n66), .C(n19), .Y(n36) );
  AND3X2M U77 ( .A(n20), .B(Rx_P_Data[5]), .C(n50), .Y(n42) );
  NOR3X2M U78 ( .A(n25), .B(Rx_P_Data[6]), .C(Rx_P_Data[2]), .Y(n50) );
  NAND4X2M U79 ( .A(n38), .B(n39), .C(n37), .D(n29), .Y(Next_State[1]) );
  OAI21X2M U80 ( .A0(n33), .A1(n31), .B0(n64), .Y(n38) );
  NAND3X2M U81 ( .A(Rx_P_Data[4]), .B(Rx_P_Data[0]), .C(n42), .Y(n39) );
  NAND2X2M U82 ( .A(Saved_Data[3]), .B(n64), .Y(n51) );
  NAND2X2M U83 ( .A(Saved_Data[2]), .B(n64), .Y(n52) );
  INVX2M U84 ( .A(Rx_P_Data[4]), .Y(n22) );
  AND2X2M U85 ( .A(n33), .B(RX_Valid), .Y(REG_RdEn) );
  INVX2M U86 ( .A(Saved_Data[0]), .Y(n68) );
  INVX2M U87 ( .A(Rx_P_Data[7]), .Y(n21) );
  MX4X1M U88 ( .A(Saved_Data[3]), .B(n27), .C(N91), .D(n27), .S0(n19), .S1(
        Current_State[1]), .Y(n4) );
  OAI21X2M U89 ( .A0(n64), .A1(n23), .B0(n51), .Y(N91) );
  INVX2M U90 ( .A(n51), .Y(n27) );
  MX2X2M U91 ( .A(n3), .B(Saved_Data[2]), .S0(Current_State[0]), .Y(
        REG_Address[2]) );
  MX4X1M U92 ( .A(Saved_Data[2]), .B(n28), .C(N90), .D(n28), .S0(n19), .S1(
        Current_State[1]), .Y(n3) );
  OAI21X2M U93 ( .A0(n64), .A1(n24), .B0(n52), .Y(N90) );
  INVX2M U94 ( .A(n52), .Y(n28) );
  NAND2X2M U95 ( .A(n46), .B(RX_Valid), .Y(n54) );
  OAI211X2M U96 ( .A0(n48), .A1(n49), .B0(n62), .C0(n54), .Y(CLK_Gate_En) );
  INVX2M U97 ( .A(n32), .Y(n62) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_test_0 ( async, clk, rst, sync, 
        test_si, test_se );
  input async, clk, rst, test_si, test_se;
  output sync;
  wire   \Q[0] ;

  SDFFRQX1M sync_reg ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(clk), .RN(
        rst), .Q(sync) );
  SDFFRQX1M \Q_reg[0]  ( .D(async), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(\Q[0] ) );
endmodule


module Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_test_0 ( 
        ASYNC, CLK, RST, SYNC, test_si, test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;


  Multi_Flop_Synchronizer_NUM_STAGES2_test_0 \genblk1[0].u0  ( .async(ASYNC[0]), .clk(CLK), .rst(RST), .sync(SYNC[0]), .test_si(test_si), .test_se(test_se)
         );
endmodule


module Pulse_Gen_test_0 ( Signal_in, clk, rst, Pulse_out, test_so, test_se );
  input Signal_in, clk, rst, test_se;
  output Pulse_out, test_so;
  wire   Q;
  assign test_so = Q;

  SDFFRQX1M Q_reg ( .D(Signal_in), .SI(Signal_in), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Q) );
  NOR2BX2M U5 ( .AN(Signal_in), .B(Q), .Y(Pulse_out) );
endmodule


module Data_Sync_test_0 ( Unsync_Bus, Enable, clk, rst, Sync_Bus, Enable_Pulse, 
        test_si, test_so, test_se );
  input [7:0] Unsync_Bus;
  output [7:0] Sync_Bus;
  input Enable, clk, rst, test_si, test_se;
  output Enable_Pulse, test_so;
  wire   Pulse_out, Enable_Sync, n4, n6, n8, n10, n12, n14, n16, n18, n27;

  SDFFRQX1M Enable_Pulse_reg ( .D(Pulse_out), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Enable_Pulse) );
  SDFFRQX1M \Sync_Bus_reg[7]  ( .D(n18), .SI(Sync_Bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[7]) );
  SDFFRQX1M \Sync_Bus_reg[6]  ( .D(n16), .SI(Sync_Bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[6]) );
  SDFFRQX1M \Sync_Bus_reg[5]  ( .D(n14), .SI(Sync_Bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[5]) );
  SDFFRQX1M \Sync_Bus_reg[4]  ( .D(n12), .SI(Sync_Bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[4]) );
  SDFFRQX1M \Sync_Bus_reg[3]  ( .D(n10), .SI(Sync_Bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[3]) );
  SDFFRQX1M \Sync_Bus_reg[2]  ( .D(n8), .SI(Sync_Bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[2]) );
  SDFFRQX1M \Sync_Bus_reg[1]  ( .D(n6), .SI(Sync_Bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[1]) );
  SDFFRQX1M \Sync_Bus_reg[0]  ( .D(n4), .SI(Enable_Pulse), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[0]) );
  INVX2M U21 ( .A(Pulse_out), .Y(n27) );
  AO22X1M U22 ( .A0(Unsync_Bus[0]), .A1(Pulse_out), .B0(Sync_Bus[0]), .B1(n27), 
        .Y(n4) );
  AO22X1M U23 ( .A0(Unsync_Bus[1]), .A1(Pulse_out), .B0(Sync_Bus[1]), .B1(n27), 
        .Y(n6) );
  AO22X1M U24 ( .A0(Unsync_Bus[2]), .A1(Pulse_out), .B0(Sync_Bus[2]), .B1(n27), 
        .Y(n8) );
  AO22X1M U25 ( .A0(Unsync_Bus[3]), .A1(Pulse_out), .B0(Sync_Bus[3]), .B1(n27), 
        .Y(n10) );
  AO22X1M U26 ( .A0(Unsync_Bus[4]), .A1(Pulse_out), .B0(Sync_Bus[4]), .B1(n27), 
        .Y(n12) );
  AO22X1M U27 ( .A0(Unsync_Bus[5]), .A1(Pulse_out), .B0(Sync_Bus[5]), .B1(n27), 
        .Y(n14) );
  AO22X1M U28 ( .A0(Unsync_Bus[6]), .A1(Pulse_out), .B0(Sync_Bus[6]), .B1(n27), 
        .Y(n16) );
  AO22X1M U29 ( .A0(Unsync_Bus[7]), .A1(Pulse_out), .B0(Sync_Bus[7]), .B1(n27), 
        .Y(n18) );
  Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_test_0 u_Multi_Flop_Synchronizer_Multi_bits ( 
        .ASYNC(Enable), .CLK(clk), .RST(rst), .SYNC(Enable_Sync), .test_si(
        Sync_Bus[7]), .test_se(test_se) );
  Pulse_Gen_test_0 u_Pulse_Gen ( .Signal_in(Enable_Sync), .clk(clk), .rst(rst), 
        .Pulse_out(Pulse_out), .test_so(test_so), .test_se(test_se) );
endmodule


module Tx_Controler_00000008_00000010_test_1 ( clk, rst, ALU_Out, ALU_Valid, 
        REG_RdData, REG_Rd_Valid, Tx_Busy, Tx_P_Data, Tx_Valid, test_si, 
        test_so, test_se );
  input [15:0] ALU_Out;
  input [7:0] REG_RdData;
  output [7:0] Tx_P_Data;
  input clk, rst, ALU_Valid, REG_Rd_Valid, Tx_Busy, test_si, test_se;
  output Tx_Valid, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n7, n8, n26, n27, n28, n29, n30;
  wire   [2:0] Current_State;
  wire   [2:0] Next_State;
  assign test_so = n29;

  SDFFRQX1M \Current_State_reg[2]  ( .D(n26), .SI(n28), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Current_State[2]) );
  SDFFRQX1M \Current_State_reg[1]  ( .D(Next_State[1]), .SI(n27), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(Current_State[1]) );
  SDFFRQX1M \Current_State_reg[0]  ( .D(Next_State[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(Current_State[0]) );
  OR2X2M U9 ( .A(n11), .B(n7), .Y(n10) );
  OR2X2M U10 ( .A(n8), .B(n10), .Y(Tx_Valid) );
  INVX2M U11 ( .A(n21), .Y(n26) );
  OAI2BB1X2M U12 ( .A0N(REG_RdData[0]), .A1N(n11), .B0(n20), .Y(Tx_P_Data[0])
         );
  AOI22X1M U13 ( .A0(ALU_Out[8]), .A1(n8), .B0(ALU_Out[0]), .B1(n7), .Y(n20)
         );
  OAI2BB1X2M U14 ( .A0N(REG_RdData[1]), .A1N(n11), .B0(n19), .Y(Tx_P_Data[1])
         );
  AOI22X1M U15 ( .A0(ALU_Out[9]), .A1(n8), .B0(ALU_Out[1]), .B1(n7), .Y(n19)
         );
  OAI2BB1X2M U16 ( .A0N(REG_RdData[2]), .A1N(n11), .B0(n18), .Y(Tx_P_Data[2])
         );
  AOI22X1M U17 ( .A0(ALU_Out[10]), .A1(n8), .B0(ALU_Out[2]), .B1(n7), .Y(n18)
         );
  OAI2BB1X2M U18 ( .A0N(REG_RdData[3]), .A1N(n11), .B0(n17), .Y(Tx_P_Data[3])
         );
  AOI22X1M U19 ( .A0(ALU_Out[11]), .A1(n8), .B0(ALU_Out[3]), .B1(n7), .Y(n17)
         );
  OAI2BB1X2M U20 ( .A0N(REG_RdData[4]), .A1N(n11), .B0(n16), .Y(Tx_P_Data[4])
         );
  AOI22X1M U21 ( .A0(ALU_Out[12]), .A1(n8), .B0(ALU_Out[4]), .B1(n7), .Y(n16)
         );
  OAI2BB1X2M U22 ( .A0N(REG_RdData[5]), .A1N(n11), .B0(n15), .Y(Tx_P_Data[5])
         );
  AOI22X1M U23 ( .A0(ALU_Out[13]), .A1(n8), .B0(ALU_Out[5]), .B1(n7), .Y(n15)
         );
  OAI2BB1X2M U24 ( .A0N(REG_RdData[6]), .A1N(n11), .B0(n14), .Y(Tx_P_Data[6])
         );
  AOI22X1M U25 ( .A0(ALU_Out[14]), .A1(n8), .B0(ALU_Out[6]), .B1(n7), .Y(n14)
         );
  OAI2BB1X2M U26 ( .A0N(REG_RdData[7]), .A1N(n11), .B0(n12), .Y(Tx_P_Data[7])
         );
  AOI22X1M U27 ( .A0(ALU_Out[15]), .A1(n8), .B0(ALU_Out[7]), .B1(n7), .Y(n12)
         );
  NOR3X2M U28 ( .A(Current_State[1]), .B(Current_State[2]), .C(n27), .Y(n11)
         );
  OAI21X2M U29 ( .A0(Current_State[2]), .A1(n22), .B0(n21), .Y(Next_State[1])
         );
  AOI31X2M U30 ( .A0(n23), .A1(n30), .A2(ALU_Valid), .B0(Current_State[1]), 
        .Y(n22) );
  INVX2M U31 ( .A(REG_Rd_Valid), .Y(n30) );
  INVX2M U32 ( .A(Current_State[1]), .Y(n28) );
  INVX2M U33 ( .A(Current_State[0]), .Y(n27) );
  INVX2M U34 ( .A(Current_State[2]), .Y(n29) );
  NOR2X2M U35 ( .A(Tx_Busy), .B(n24), .Y(Next_State[0]) );
  AOI31X2M U36 ( .A0(n28), .A1(n29), .A2(n25), .B0(n10), .Y(n24) );
  CLKXOR2X2M U37 ( .A(REG_Rd_Valid), .B(ALU_Valid), .Y(n25) );
  CLKBUFX2M U38 ( .A(n13), .Y(n7) );
  NOR3X2M U39 ( .A(n28), .B(Current_State[2]), .C(n27), .Y(n13) );
  CLKBUFX2M U40 ( .A(n9), .Y(n8) );
  NOR3X2M U41 ( .A(n28), .B(Current_State[0]), .C(n29), .Y(n9) );
  NOR2X2M U42 ( .A(Current_State[0]), .B(Tx_Busy), .Y(n23) );
  NAND2X2M U43 ( .A(n23), .B(Current_State[1]), .Y(n21) );
endmodule


module ALU_00000008_00000010_0000000e_00000004_DW_div_uns_0 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  INVX2M U2 ( .A(b[1]), .Y(n18) );
  XNOR2X2M U3 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X2M U9 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U10 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U11 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n3) );
  INVX2M U13 ( .A(n19), .Y(n2) );
  NAND2X2M U14 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n5) );
  INVX2M U16 ( .A(n19), .Y(n4) );
  NAND2X2M U17 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  INVX2M U19 ( .A(n19), .Y(n6) );
  NAND2X2M U20 ( .A(n8), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n9) );
  INVX2M U22 ( .A(n19), .Y(n8) );
  NAND2X2M U23 ( .A(n6), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U24 ( .A(a[1]), .Y(n10) );
  NAND2X2M U25 ( .A(n4), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U26 ( .A(a[0]), .Y(n11) );
  NAND2X2M U27 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U28 ( .A(a[6]), .Y(n1) );
  INVX2M U29 ( .A(b[6]), .Y(n13) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_00000008_00000010_0000000e_00000004_DW01_sub_0 ( A, B, CI, DIFF, CO
 );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U3 ( .A(B[6]), .Y(n4) );
  INVX2M U4 ( .A(B[0]), .Y(n10) );
  INVX2M U5 ( .A(B[7]), .Y(n3) );
  INVX2M U6 ( .A(B[2]), .Y(n8) );
  INVX2M U7 ( .A(B[3]), .Y(n7) );
  INVX2M U8 ( .A(B[4]), .Y(n6) );
  INVX2M U9 ( .A(B[5]), .Y(n5) );
  NAND2X2M U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U11 ( .A(B[1]), .Y(n9) );
  INVX2M U12 ( .A(A[0]), .Y(n1) );
endmodule


module ALU_00000008_00000010_0000000e_00000004_DW01_add_0 ( A, B, CI, SUM, CO
 );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_00000008_00000010_0000000e_00000004_DW01_add_1 ( A, B, CI, SUM, CO
 );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AOI21BX2M U2 ( .A0(n11), .A1(A[12]), .B0N(n12), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n8) );
  XNOR2X2M U4 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X1M U7 ( .A(n3), .B(n4), .Y(SUM[9]) );
  NOR2X1M U8 ( .A(n5), .B(n6), .Y(n4) );
  CLKXOR2X2M U9 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2BX1M U10 ( .AN(n9), .B(n10), .Y(n7) );
  OAI21X1M U11 ( .A0(A[12]), .A1(n11), .B0(B[12]), .Y(n12) );
  XOR3XLM U12 ( .A(B[12]), .B(A[12]), .C(n11), .Y(SUM[12]) );
  OAI21BX1M U13 ( .A0(n13), .A1(n14), .B0N(n15), .Y(n11) );
  XNOR2X1M U14 ( .A(n14), .B(n16), .Y(SUM[11]) );
  NOR2X1M U15 ( .A(n15), .B(n13), .Y(n16) );
  NOR2X1M U16 ( .A(B[11]), .B(A[11]), .Y(n13) );
  AND2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n15) );
  OA21X1M U18 ( .A0(n17), .A1(n18), .B0(n19), .Y(n14) );
  CLKXOR2X2M U19 ( .A(n20), .B(n18), .Y(SUM[10]) );
  AOI2BB1X1M U20 ( .A0N(n3), .A1N(n6), .B0(n5), .Y(n18) );
  AND2X1M U21 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NOR2X1M U22 ( .A(B[9]), .B(A[9]), .Y(n6) );
  OA21X1M U23 ( .A0(n8), .A1(n9), .B0(n10), .Y(n3) );
  CLKNAND2X2M U24 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X1M U25 ( .A(B[8]), .B(A[8]), .Y(n9) );
  NAND2BX1M U26 ( .AN(n17), .B(n19), .Y(n20) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n19) );
  NOR2X1M U28 ( .A(B[10]), .B(A[10]), .Y(n17) );
endmodule


module ALU_00000008_00000010_0000000e_00000004_DW02_mult_0 ( A, B, TC, PRODUCT
 );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n3), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n8), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n4), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  AND2X2M U2 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U23 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U28 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U29 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U30 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n24) );
  INVX2M U38 ( .A(A[6]), .Y(n25) );
  INVX2M U39 ( .A(A[1]), .Y(n30) );
  INVX2M U40 ( .A(A[0]), .Y(n31) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[2]), .Y(n29) );
  INVX2M U43 ( .A(A[5]), .Y(n26) );
  INVX2M U44 ( .A(A[4]), .Y(n27) );
  INVX2M U45 ( .A(B[6]), .Y(n33) );
  INVX2M U46 ( .A(B[0]), .Y(n39) );
  INVX2M U47 ( .A(B[2]), .Y(n37) );
  INVX2M U48 ( .A(B[3]), .Y(n36) );
  INVX2M U49 ( .A(B[7]), .Y(n32) );
  INVX2M U50 ( .A(B[1]), .Y(n38) );
  INVX2M U51 ( .A(B[4]), .Y(n35) );
  INVX2M U52 ( .A(B[5]), .Y(n34) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
  ALU_00000008_00000010_0000000e_00000004_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, 
        n15, n12, n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
endmodule


module ALU_00000008_00000010_0000000e_00000004_test_1 ( clk, rst, Operand_A, 
        Operand_B, ALU_Fun, Enable, ALU_Out, Out_Valid, test_si, test_se );
  input [7:0] Operand_A;
  input [7:0] Operand_B;
  input [3:0] ALU_Fun;
  output [15:0] ALU_Out;
  input clk, rst, Enable, test_si, test_se;
  output Out_Valid;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n3, n4, n5, n6, n7, n8, n9, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152;
  wire   [15:0] ALU_Out_Comb;

  SDFFRHQX1M \ALU_Out_reg[7]  ( .D(ALU_Out_Comb[7]), .SI(ALU_Out[6]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[7]) );
  SDFFRHQX1M \ALU_Out_reg[6]  ( .D(ALU_Out_Comb[6]), .SI(ALU_Out[5]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[6]) );
  SDFFRHQX1M \ALU_Out_reg[5]  ( .D(ALU_Out_Comb[5]), .SI(ALU_Out[4]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[5]) );
  SDFFRHQX1M \ALU_Out_reg[4]  ( .D(ALU_Out_Comb[4]), .SI(ALU_Out[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[4]) );
  SDFFRHQX1M \ALU_Out_reg[3]  ( .D(ALU_Out_Comb[3]), .SI(ALU_Out[2]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[3]) );
  SDFFRHQX1M \ALU_Out_reg[2]  ( .D(ALU_Out_Comb[2]), .SI(ALU_Out[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[2]) );
  SDFFRHQX1M \ALU_Out_reg[1]  ( .D(ALU_Out_Comb[1]), .SI(ALU_Out[0]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[1]) );
  SDFFRHQX1M \ALU_Out_reg[0]  ( .D(ALU_Out_Comb[0]), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(ALU_Out[0]) );
  SDFFRHQX1M \ALU_Out_reg[15]  ( .D(ALU_Out_Comb[15]), .SI(ALU_Out[14]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[15]) );
  SDFFRHQX1M \ALU_Out_reg[14]  ( .D(ALU_Out_Comb[14]), .SI(ALU_Out[13]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[14]) );
  SDFFRHQX1M \ALU_Out_reg[13]  ( .D(ALU_Out_Comb[13]), .SI(ALU_Out[12]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[13]) );
  SDFFRHQX1M \ALU_Out_reg[12]  ( .D(ALU_Out_Comb[12]), .SI(ALU_Out[11]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[12]) );
  SDFFRHQX1M \ALU_Out_reg[11]  ( .D(ALU_Out_Comb[11]), .SI(ALU_Out[10]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[11]) );
  SDFFRHQX1M \ALU_Out_reg[10]  ( .D(ALU_Out_Comb[10]), .SI(ALU_Out[9]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[10]) );
  SDFFRHQX1M \ALU_Out_reg[9]  ( .D(ALU_Out_Comb[9]), .SI(ALU_Out[8]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[9]) );
  SDFFRHQX1M \ALU_Out_reg[8]  ( .D(ALU_Out_Comb[8]), .SI(ALU_Out[7]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_Out[8]) );
  SDFFRHQX1M Out_Valid_reg ( .D(Enable), .SI(ALU_Out[15]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Out_Valid) );
  CLKBUFX2M U7 ( .A(Operand_A[6]), .Y(n27) );
  CLKBUFX2M U23 ( .A(Operand_A[1]), .Y(n5) );
  CLKBUFX2M U24 ( .A(Operand_A[7]), .Y(n28) );
  CLKBUFX2M U25 ( .A(Operand_A[0]), .Y(n4) );
  CLKBUFX2M U26 ( .A(Operand_B[6]), .Y(n3) );
  OAI2B1X2M U27 ( .A1N(n119), .A0(n106), .B0(n117), .Y(n65) );
  OAI2B1X2M U28 ( .A1N(n115), .A0(n116), .B0(n117), .Y(n66) );
  NOR2BX2M U29 ( .AN(n120), .B(n116), .Y(n55) );
  AND2X2M U30 ( .A(n115), .B(n119), .Y(n60) );
  NAND2X2M U31 ( .A(n149), .B(n151), .Y(n116) );
  INVX2M U32 ( .A(n53), .Y(n148) );
  AND2X2M U33 ( .A(n120), .B(n119), .Y(n68) );
  CLKBUFX2M U34 ( .A(n59), .Y(n30) );
  NOR2X2M U35 ( .A(n106), .B(n116), .Y(n59) );
  OAI2BB1X2M U36 ( .A0N(N118), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[9]) );
  OAI2BB1X2M U37 ( .A0N(N119), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[10]) );
  OAI2BB1X2M U38 ( .A0N(N120), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[11]) );
  OAI2BB1X2M U39 ( .A0N(N121), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[12]) );
  OAI2BB1X2M U40 ( .A0N(N122), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[13]) );
  OAI2BB1X2M U41 ( .A0N(N123), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[14]) );
  OAI2BB1X2M U42 ( .A0N(N124), .A1N(n49), .B0(n50), .Y(ALU_Out_Comb[15]) );
  NOR3X2M U43 ( .A(n106), .B(ALU_Fun[0]), .C(n149), .Y(n53) );
  NOR2X2M U44 ( .A(ALU_Fun[2]), .B(ALU_Fun[1]), .Y(n120) );
  AND3X2M U45 ( .A(n120), .B(n151), .C(ALU_Fun[3]), .Y(n64) );
  AND3X2M U46 ( .A(n119), .B(ALU_Fun[1]), .C(n150), .Y(n67) );
  AND3X2M U47 ( .A(n115), .B(ALU_Fun[3]), .C(ALU_Fun[0]), .Y(n72) );
  NOR2X2M U48 ( .A(n151), .B(ALU_Fun[3]), .Y(n119) );
  NOR2X2M U49 ( .A(n150), .B(ALU_Fun[1]), .Y(n115) );
  NAND2X2M U50 ( .A(ALU_Fun[2]), .B(ALU_Fun[1]), .Y(n106) );
  INVX2M U51 ( .A(ALU_Fun[0]), .Y(n151) );
  NAND3X2M U52 ( .A(n120), .B(ALU_Fun[0]), .C(ALU_Fun[3]), .Y(n117) );
  INVX2M U53 ( .A(ALU_Fun[3]), .Y(n149) );
  INVX2M U54 ( .A(ALU_Fun[2]), .Y(n150) );
  NAND2X2M U55 ( .A(Enable), .B(n136), .Y(n50) );
  INVX2M U56 ( .A(Enable), .Y(n152) );
  CLKBUFX2M U57 ( .A(n54), .Y(n29) );
  NOR3BX2M U58 ( .AN(ALU_Fun[1]), .B(n116), .C(ALU_Fun[2]), .Y(n54) );
  AND2X2M U59 ( .A(n29), .B(Enable), .Y(n49) );
  OAI222X1M U60 ( .A0(n74), .A1(n132), .B0(n3), .B1(n75), .C0(n148), .C1(n138), 
        .Y(n73) );
  AOI221XLM U61 ( .A0(n27), .A1(n64), .B0(n65), .B1(n137), .C0(n30), .Y(n75)
         );
  AOI221XLM U62 ( .A0(n64), .A1(n137), .B0(n27), .B1(n66), .C0(n60), .Y(n74)
         );
  AOI221XLM U63 ( .A0(n64), .A1(n143), .B0(n4), .B1(n66), .C0(n60), .Y(n114)
         );
  INVX2M U64 ( .A(n3), .Y(n132) );
  AOI31X2M U65 ( .A0(n108), .A1(n109), .A2(n110), .B0(n152), .Y(
        ALU_Out_Comb[0]) );
  AOI22X1M U66 ( .A0(N100), .A1(n68), .B0(N91), .B1(n55), .Y(n108) );
  AOI221XLM U67 ( .A0(n5), .A1(n72), .B0(n30), .B1(n143), .C0(n111), .Y(n110)
         );
  AOI222X1M U68 ( .A0(N109), .A1(n29), .B0(n4), .B1(n60), .C0(N125), .C1(n67), 
        .Y(n109) );
  AOI31X2M U69 ( .A0(n100), .A1(n101), .A2(n102), .B0(n152), .Y(
        ALU_Out_Comb[1]) );
  AOI22X1M U70 ( .A0(N101), .A1(n68), .B0(N92), .B1(n55), .Y(n100) );
  AOI221XLM U71 ( .A0(n6), .A1(n72), .B0(n30), .B1(n142), .C0(n103), .Y(n102)
         );
  AOI222X1M U72 ( .A0(N110), .A1(n29), .B0(n5), .B1(n60), .C0(N126), .C1(n67), 
        .Y(n101) );
  AOI31X2M U73 ( .A0(n94), .A1(n95), .A2(n96), .B0(n152), .Y(ALU_Out_Comb[2])
         );
  AOI22X1M U74 ( .A0(N102), .A1(n68), .B0(N93), .B1(n55), .Y(n94) );
  AOI221XLM U75 ( .A0(n7), .A1(n72), .B0(n30), .B1(n141), .C0(n97), .Y(n96) );
  AOI222X1M U76 ( .A0(N111), .A1(n29), .B0(n6), .B1(n60), .C0(N127), .C1(n67), 
        .Y(n95) );
  AOI31X2M U77 ( .A0(n88), .A1(n89), .A2(n90), .B0(n152), .Y(ALU_Out_Comb[3])
         );
  AOI22X1M U78 ( .A0(N103), .A1(n68), .B0(N94), .B1(n55), .Y(n88) );
  AOI221XLM U79 ( .A0(n8), .A1(n72), .B0(n30), .B1(n140), .C0(n91), .Y(n90) );
  AOI222X1M U80 ( .A0(N112), .A1(n29), .B0(n7), .B1(n60), .C0(N128), .C1(n67), 
        .Y(n89) );
  AOI31X2M U81 ( .A0(n82), .A1(n83), .A2(n84), .B0(n152), .Y(ALU_Out_Comb[4])
         );
  AOI22X1M U82 ( .A0(N104), .A1(n68), .B0(N95), .B1(n55), .Y(n82) );
  AOI221XLM U83 ( .A0(n72), .A1(n9), .B0(n30), .B1(n139), .C0(n85), .Y(n84) );
  AOI222X1M U84 ( .A0(N113), .A1(n29), .B0(n8), .B1(n60), .C0(N129), .C1(n67), 
        .Y(n83) );
  AOI31X2M U85 ( .A0(n76), .A1(n77), .A2(n78), .B0(n152), .Y(ALU_Out_Comb[5])
         );
  AOI22X1M U86 ( .A0(N105), .A1(n68), .B0(N96), .B1(n55), .Y(n76) );
  AOI221XLM U87 ( .A0(n72), .A1(n27), .B0(n30), .B1(n138), .C0(n79), .Y(n78)
         );
  AOI222X1M U88 ( .A0(N114), .A1(n29), .B0(n9), .B1(n60), .C0(N130), .C1(n67), 
        .Y(n77) );
  AOI31X2M U89 ( .A0(n69), .A1(n70), .A2(n71), .B0(n152), .Y(ALU_Out_Comb[6])
         );
  AOI22X1M U90 ( .A0(N106), .A1(n68), .B0(N97), .B1(n55), .Y(n69) );
  AOI221XLM U91 ( .A0(n72), .A1(n28), .B0(n30), .B1(n137), .C0(n73), .Y(n71)
         );
  AOI222X1M U92 ( .A0(N115), .A1(n29), .B0(n60), .B1(n27), .C0(N131), .C1(n67), 
        .Y(n70) );
  AOI31X2M U93 ( .A0(n56), .A1(n57), .A2(n58), .B0(n152), .Y(ALU_Out_Comb[7])
         );
  AOI22X1M U94 ( .A0(N132), .A1(n67), .B0(N116), .B1(n29), .Y(n57) );
  AOI22X1M U95 ( .A0(N107), .A1(n68), .B0(N98), .B1(n55), .Y(n56) );
  AOI221XLM U96 ( .A0(n30), .A1(n135), .B0(n60), .B1(n28), .C0(n61), .Y(n58)
         );
  INVX2M U97 ( .A(n107), .Y(n136) );
  AOI211X2M U98 ( .A0(N108), .A1(n68), .B0(n30), .C0(n65), .Y(n107) );
  AOI21X2M U99 ( .A0(n51), .A1(n52), .B0(n152), .Y(ALU_Out_Comb[8]) );
  AOI21X2M U100 ( .A0(N99), .A1(n55), .B0(n136), .Y(n51) );
  AOI22X1M U101 ( .A0(n28), .A1(n53), .B0(N117), .B1(n29), .Y(n52) );
  AO22X1M U102 ( .A0(N158), .A1(ALU_Fun[0]), .B0(N157), .B1(n151), .Y(n118) );
  INVX2M U103 ( .A(n128), .Y(N158) );
  INVX2M U104 ( .A(n27), .Y(n137) );
  INVX2M U105 ( .A(n5), .Y(n142) );
  INVX2M U106 ( .A(n4), .Y(n143) );
  INVX2M U107 ( .A(n6), .Y(n141) );
  INVX2M U108 ( .A(n7), .Y(n140) );
  INVX2M U109 ( .A(n9), .Y(n138) );
  INVX2M U110 ( .A(n8), .Y(n139) );
  INVX2M U111 ( .A(n28), .Y(n135) );
  OAI222X1M U112 ( .A0(Operand_B[0]), .A1(n112), .B0(n113), .B1(n149), .C0(
        n114), .C1(n129), .Y(n111) );
  AOI221XLM U113 ( .A0(n4), .A1(n64), .B0(n65), .B1(n143), .C0(n30), .Y(n112)
         );
  AOI33X2M U114 ( .A0(n118), .A1(n150), .A2(ALU_Fun[1]), .B0(n115), .B1(n151), 
        .B2(N159), .Y(n113) );
  OAI222X1M U115 ( .A0(n104), .A1(n147), .B0(Operand_B[1]), .B1(n105), .C0(
        n148), .C1(n143), .Y(n103) );
  INVX2M U116 ( .A(Operand_B[1]), .Y(n147) );
  AOI221XLM U117 ( .A0(n5), .A1(n64), .B0(n65), .B1(n142), .C0(n30), .Y(n105)
         );
  AOI221XLM U118 ( .A0(n64), .A1(n142), .B0(n5), .B1(n66), .C0(n60), .Y(n104)
         );
  OAI222X1M U119 ( .A0(n98), .A1(n130), .B0(Operand_B[2]), .B1(n99), .C0(n148), 
        .C1(n142), .Y(n97) );
  AOI221XLM U120 ( .A0(n6), .A1(n64), .B0(n65), .B1(n141), .C0(n30), .Y(n99)
         );
  AOI221XLM U121 ( .A0(n64), .A1(n141), .B0(n6), .B1(n66), .C0(n60), .Y(n98)
         );
  OAI222X1M U122 ( .A0(n92), .A1(n131), .B0(Operand_B[3]), .B1(n93), .C0(n148), 
        .C1(n141), .Y(n91) );
  AOI221XLM U123 ( .A0(n7), .A1(n64), .B0(n65), .B1(n140), .C0(n30), .Y(n93)
         );
  AOI221XLM U124 ( .A0(n64), .A1(n140), .B0(n7), .B1(n66), .C0(n60), .Y(n92)
         );
  OAI222X1M U125 ( .A0(n86), .A1(n146), .B0(Operand_B[4]), .B1(n87), .C0(n148), 
        .C1(n140), .Y(n85) );
  INVX2M U126 ( .A(Operand_B[4]), .Y(n146) );
  AOI221XLM U127 ( .A0(n8), .A1(n64), .B0(n65), .B1(n139), .C0(n30), .Y(n87)
         );
  AOI221XLM U128 ( .A0(n64), .A1(n139), .B0(n8), .B1(n66), .C0(n60), .Y(n86)
         );
  OAI222X1M U129 ( .A0(n80), .A1(n145), .B0(Operand_B[5]), .B1(n81), .C0(n148), 
        .C1(n139), .Y(n79) );
  INVX2M U130 ( .A(Operand_B[5]), .Y(n145) );
  AOI221XLM U131 ( .A0(n9), .A1(n64), .B0(n65), .B1(n138), .C0(n30), .Y(n81)
         );
  AOI221XLM U132 ( .A0(n64), .A1(n138), .B0(n9), .B1(n66), .C0(n60), .Y(n80)
         );
  OAI222X1M U133 ( .A0(n62), .A1(n144), .B0(Operand_B[7]), .B1(n63), .C0(n148), 
        .C1(n137), .Y(n61) );
  INVX2M U134 ( .A(Operand_B[7]), .Y(n144) );
  AOI221XLM U135 ( .A0(n64), .A1(n28), .B0(n65), .B1(n135), .C0(n30), .Y(n63)
         );
  AOI221XLM U136 ( .A0(n64), .A1(n135), .B0(n28), .B1(n66), .C0(n60), .Y(n62)
         );
  INVX2M U137 ( .A(n31), .Y(n133) );
  INVX2M U138 ( .A(n42), .Y(n134) );
  CLKBUFX2M U139 ( .A(Operand_A[2]), .Y(n6) );
  CLKBUFX2M U140 ( .A(Operand_A[3]), .Y(n7) );
  CLKBUFX2M U141 ( .A(Operand_A[5]), .Y(n9) );
  CLKBUFX2M U142 ( .A(Operand_A[4]), .Y(n8) );
  INVX2M U143 ( .A(Operand_B[0]), .Y(n129) );
  INVX2M U144 ( .A(Operand_B[2]), .Y(n130) );
  INVX2M U145 ( .A(Operand_B[3]), .Y(n131) );
  NOR2X1M U146 ( .A(n135), .B(Operand_B[7]), .Y(n125) );
  NAND2BX1M U147 ( .AN(Operand_B[4]), .B(n8), .Y(n46) );
  NAND2BX1M U148 ( .AN(n8), .B(Operand_B[4]), .Y(n35) );
  CLKNAND2X2M U149 ( .A(n46), .B(n35), .Y(n48) );
  NOR2X1M U150 ( .A(n131), .B(n7), .Y(n43) );
  NOR2X1M U151 ( .A(n130), .B(n6), .Y(n34) );
  NOR2X1M U152 ( .A(n129), .B(n4), .Y(n31) );
  CLKNAND2X2M U153 ( .A(n6), .B(n130), .Y(n45) );
  NAND2BX1M U154 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U155 ( .A0(n31), .A1(n142), .B0(Operand_B[1]), .Y(n32) );
  AOI211X1M U156 ( .A0(n5), .A1(n133), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U157 ( .A(n7), .B(n131), .Y(n44) );
  OAI31X1M U158 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U159 ( .AN(n9), .B(Operand_B[5]), .Y(n123) );
  OAI211X1M U160 ( .A0(n48), .A1(n36), .B0(n35), .C0(n123), .Y(n37) );
  NAND2BX1M U161 ( .AN(Operand_B[5]), .B(n9), .Y(n47) );
  XNOR2X1M U162 ( .A(n27), .B(n3), .Y(n122) );
  AOI32X1M U163 ( .A0(n37), .A1(n47), .A2(n122), .B0(n3), .B1(n137), .Y(n38)
         );
  CLKNAND2X2M U164 ( .A(Operand_B[7]), .B(n135), .Y(n126) );
  OAI21X1M U165 ( .A0(n125), .A1(n38), .B0(n126), .Y(N159) );
  CLKNAND2X2M U166 ( .A(n4), .B(n129), .Y(n41) );
  OA21X1M U167 ( .A0(n41), .A1(n142), .B0(Operand_B[1]), .Y(n39) );
  AOI211X1M U168 ( .A0(n41), .A1(n142), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U169 ( .A0(n134), .A1(n45), .A2(n44), .B0(n43), .Y(n121) );
  OAI2B11X1M U170 ( .A1N(n121), .A0(n48), .B0(n47), .C0(n46), .Y(n124) );
  AOI32X1M U171 ( .A0(n124), .A1(n123), .A2(n122), .B0(n27), .B1(n132), .Y(
        n127) );
  AOI2B1X1M U172 ( .A1N(n127), .A0(n126), .B0(n125), .Y(n128) );
  NOR2X1M U173 ( .A(N159), .B(N158), .Y(N157) );
  ALU_00000008_00000010_0000000e_00000004_DW_div_uns_0 div_67 ( .a({n28, n27, 
        n9, n8, n7, n6, n5, n4}), .b({Operand_B[7], n3, Operand_B[5:0]}), 
        .quotient({N132, N131, N130, N129, N128, N127, N126, N125}) );
  ALU_00000008_00000010_0000000e_00000004_DW01_sub_0 sub_59 ( .A({1'b0, n28, 
        n27, n9, n8, n7, n6, n5, n4}), .B({1'b0, Operand_B[7], n3, 
        Operand_B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, N104, N103, 
        N102, N101, N100}) );
  ALU_00000008_00000010_0000000e_00000004_DW01_add_0 add_55 ( .A({1'b0, n28, 
        n27, n9, n8, n7, n6, n5, n4}), .B({1'b0, Operand_B[7], n3, 
        Operand_B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, N94, N93, 
        N92, N91}) );
  ALU_00000008_00000010_0000000e_00000004_DW02_mult_0 mult_63 ( .A({n28, n27, 
        n9, n8, n7, n6, n5, n4}), .B({Operand_B[7], n3, Operand_B[5:0]}), .TC(
        1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module Clock_Gating ( clk, En, test_mode, Gated_clk );
  input clk, En, test_mode;
  output Gated_clk;
  wire   _0_net_;

  TLATNCAX2M U0 ( .E(_0_net_), .CK(clk), .ECK(Gated_clk) );
  OR2X2M U1 ( .A(En), .B(test_mode), .Y(_0_net_) );
endmodule



    module REG_File_00000008_00000010_00000004_00000000_00000000_0000001c_00000008_test_1 ( 
        clk, rst, Address, WrEn, RdEn, WrData, RdData, RdData_Valid, 
        REG0_ALU_A, REG1_ALU_B, REG2_UART, REG3_DIV, test_si3, test_si2, 
        test_si1, test_so3, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0_ALU_A;
  output [7:0] REG1_ALU_B;
  output [6:0] REG2_UART;
  output [3:0] REG3_DIV;
  input clk, rst, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so3, test_so2, test_so1;
  wire   N10, N11, N12, N13, RdEn, \Memory[2][7] , \Memory[3][7] ,
         \Memory[3][6] , \Memory[3][5] , \Memory[3][4] , \Memory[4][7] ,
         \Memory[4][6] , \Memory[4][5] , \Memory[4][4] , \Memory[4][3] ,
         \Memory[4][2] , \Memory[4][1] , \Memory[4][0] , \Memory[5][7] ,
         \Memory[5][6] , \Memory[5][5] , \Memory[5][4] , \Memory[5][3] ,
         \Memory[5][2] , \Memory[5][1] , \Memory[5][0] , \Memory[6][7] ,
         \Memory[6][6] , \Memory[6][5] , \Memory[6][4] , \Memory[6][3] ,
         \Memory[6][2] , \Memory[6][1] , \Memory[6][0] , \Memory[7][7] ,
         \Memory[7][6] , \Memory[7][5] , \Memory[7][4] , \Memory[7][3] ,
         \Memory[7][2] , \Memory[7][1] , \Memory[7][0] , \Memory[8][7] ,
         \Memory[8][6] , \Memory[8][5] , \Memory[8][4] , \Memory[8][3] ,
         \Memory[8][2] , \Memory[8][1] , \Memory[8][0] , \Memory[9][7] ,
         \Memory[9][6] , \Memory[9][5] , \Memory[9][4] , \Memory[9][3] ,
         \Memory[9][2] , \Memory[9][1] , \Memory[9][0] , \Memory[10][7] ,
         \Memory[10][6] , \Memory[10][5] , \Memory[10][4] , \Memory[10][3] ,
         \Memory[10][2] , \Memory[10][1] , \Memory[10][0] , \Memory[11][7] ,
         \Memory[11][6] , \Memory[11][5] , \Memory[11][4] , \Memory[11][3] ,
         \Memory[11][2] , \Memory[11][1] , \Memory[11][0] , \Memory[12][7] ,
         \Memory[12][6] , \Memory[12][5] , \Memory[12][4] , \Memory[12][3] ,
         \Memory[12][2] , \Memory[12][1] , \Memory[12][0] , \Memory[13][7] ,
         \Memory[13][6] , \Memory[13][5] , \Memory[13][4] , \Memory[13][3] ,
         \Memory[13][2] , \Memory[13][1] , \Memory[13][0] , \Memory[14][7] ,
         \Memory[14][6] , \Memory[14][5] , \Memory[14][4] , \Memory[14][3] ,
         \Memory[14][2] , \Memory[14][1] , \Memory[14][0] , \Memory[15][7] ,
         \Memory[15][6] , \Memory[15][5] , \Memory[15][4] , \Memory[15][3] ,
         \Memory[15][2] , \Memory[15][1] , \Memory[15][0] , n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];
  assign RdData_Valid = RdEn;
  assign test_so1 = \Memory[4][5] ;
  assign test_so2 = \Memory[14][2] ;
  assign test_so3 = \Memory[15][7] ;

  SDFFSQX1M \Memory_reg[2][3]  ( .D(n273), .SI(REG2_UART[2]), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(REG2_UART[3]) );
  SDFFSQX1M \Memory_reg[2][4]  ( .D(n274), .SI(REG2_UART[3]), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(REG2_UART[4]) );
  SDFFSQX1M \Memory_reg[2][2]  ( .D(n272), .SI(REG2_UART[1]), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(REG2_UART[2]) );
  SDFFRQX1M \Memory_reg[1][7]  ( .D(n285), .SI(REG1_ALU_B[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[7]) );
  SDFFRQX1M \Memory_reg[1][5]  ( .D(n283), .SI(REG1_ALU_B[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[5]) );
  SDFFRQX1M \Memory_reg[1][4]  ( .D(n282), .SI(REG1_ALU_B[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[4]) );
  SDFFRQX1M \Memory_reg[1][3]  ( .D(n281), .SI(REG1_ALU_B[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[3]) );
  SDFFRQX1M \Memory_reg[1][2]  ( .D(n280), .SI(REG1_ALU_B[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[2]) );
  SDFFRQX1M \Memory_reg[1][1]  ( .D(n279), .SI(REG1_ALU_B[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[1]) );
  SDFFRQX1M \Memory_reg[1][0]  ( .D(n278), .SI(REG0_ALU_A[7]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[0]) );
  SDFFRQX1M \Memory_reg[7][7]  ( .D(n237), .SI(\Memory[7][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][7] ) );
  SDFFRQX1M \Memory_reg[7][6]  ( .D(n236), .SI(\Memory[7][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][6] ) );
  SDFFRQX1M \Memory_reg[7][5]  ( .D(n235), .SI(\Memory[7][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][5] ) );
  SDFFRQX1M \Memory_reg[7][4]  ( .D(n234), .SI(\Memory[7][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][4] ) );
  SDFFRQX1M \Memory_reg[7][3]  ( .D(n233), .SI(\Memory[7][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][3] ) );
  SDFFRQX1M \Memory_reg[7][2]  ( .D(n232), .SI(\Memory[7][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][2] ) );
  SDFFRQX1M \Memory_reg[7][1]  ( .D(n231), .SI(\Memory[7][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][1] ) );
  SDFFRQX1M \Memory_reg[7][0]  ( .D(n230), .SI(\Memory[6][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[7][0] ) );
  SDFFRQX1M \Memory_reg[6][7]  ( .D(n245), .SI(\Memory[6][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][7] ) );
  SDFFRQX1M \Memory_reg[6][6]  ( .D(n244), .SI(\Memory[6][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][6] ) );
  SDFFRQX1M \Memory_reg[6][5]  ( .D(n243), .SI(\Memory[6][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][5] ) );
  SDFFRQX1M \Memory_reg[6][4]  ( .D(n242), .SI(\Memory[6][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][4] ) );
  SDFFRQX1M \Memory_reg[6][3]  ( .D(n241), .SI(\Memory[6][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][3] ) );
  SDFFRQX1M \Memory_reg[6][2]  ( .D(n240), .SI(\Memory[6][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][2] ) );
  SDFFRQX1M \Memory_reg[6][1]  ( .D(n239), .SI(\Memory[6][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][1] ) );
  SDFFRQX1M \Memory_reg[6][0]  ( .D(n238), .SI(\Memory[5][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[6][0] ) );
  SDFFRQX1M \Memory_reg[5][7]  ( .D(n253), .SI(\Memory[5][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][7] ) );
  SDFFRQX1M \Memory_reg[5][6]  ( .D(n252), .SI(\Memory[5][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][6] ) );
  SDFFRQX1M \Memory_reg[5][5]  ( .D(n251), .SI(\Memory[5][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][5] ) );
  SDFFRQX1M \Memory_reg[5][4]  ( .D(n250), .SI(\Memory[5][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][4] ) );
  SDFFRQX1M \Memory_reg[5][3]  ( .D(n249), .SI(\Memory[5][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][3] ) );
  SDFFRQX1M \Memory_reg[5][2]  ( .D(n248), .SI(\Memory[5][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][2] ) );
  SDFFRQX1M \Memory_reg[5][1]  ( .D(n247), .SI(\Memory[5][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][1] ) );
  SDFFRQX1M \Memory_reg[5][0]  ( .D(n246), .SI(\Memory[4][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[5][0] ) );
  SDFFRQX1M \Memory_reg[4][7]  ( .D(n261), .SI(\Memory[4][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][7] ) );
  SDFFRQX1M \Memory_reg[4][6]  ( .D(n260), .SI(test_si2), .SE(test_se), .CK(
        clk), .RN(rst), .Q(\Memory[4][6] ) );
  SDFFRQX1M \Memory_reg[4][5]  ( .D(n259), .SI(\Memory[4][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][5] ) );
  SDFFRQX1M \Memory_reg[4][4]  ( .D(n258), .SI(\Memory[4][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][4] ) );
  SDFFRQX1M \Memory_reg[4][3]  ( .D(n257), .SI(\Memory[4][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][3] ) );
  SDFFRQX1M \Memory_reg[4][2]  ( .D(n256), .SI(\Memory[4][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][2] ) );
  SDFFRQX1M \Memory_reg[4][1]  ( .D(n255), .SI(\Memory[4][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][1] ) );
  SDFFRQX1M \Memory_reg[4][0]  ( .D(n254), .SI(\Memory[3][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[4][0] ) );
  SDFFRQX1M \Memory_reg[3][7]  ( .D(n269), .SI(\Memory[3][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[3][7] ) );
  SDFFRQX1M \Memory_reg[3][6]  ( .D(n268), .SI(\Memory[3][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[3][6] ) );
  SDFFRQX1M \Memory_reg[3][5]  ( .D(n267), .SI(\Memory[3][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[3][5] ) );
  SDFFRQX1M \Memory_reg[3][4]  ( .D(n266), .SI(REG3_DIV[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[3][4] ) );
  SDFFRQX1M \Memory_reg[3][2]  ( .D(n264), .SI(REG3_DIV[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG3_DIV[2]) );
  SDFFRQX1M \Memory_reg[3][1]  ( .D(n263), .SI(REG3_DIV[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG3_DIV[1]) );
  SDFFRQX1M \Memory_reg[3][0]  ( .D(n262), .SI(\Memory[2][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG3_DIV[0]) );
  SDFFRQX1M \Memory_reg[2][7]  ( .D(n277), .SI(REG2_UART[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[2][7] ) );
  SDFFRQX1M \Memory_reg[2][6]  ( .D(n276), .SI(REG2_UART[5]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG2_UART[6]) );
  SDFFRQX1M \Memory_reg[2][5]  ( .D(n275), .SI(REG2_UART[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG2_UART[5]) );
  SDFFRQX1M \Memory_reg[2][1]  ( .D(n271), .SI(REG2_UART[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG2_UART[1]) );
  SDFFRQX1M \Memory_reg[2][0]  ( .D(n270), .SI(REG1_ALU_B[7]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG2_UART[0]) );
  SDFFRQX1M \Memory_reg[1][6]  ( .D(n284), .SI(REG1_ALU_B[5]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG1_ALU_B[6]) );
  SDFFRQX1M \Memory_reg[0][7]  ( .D(n293), .SI(REG0_ALU_A[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[7]) );
  SDFFRQX1M \Memory_reg[0][6]  ( .D(n292), .SI(REG0_ALU_A[5]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[6]) );
  SDFFRQX1M \Memory_reg[0][5]  ( .D(n291), .SI(REG0_ALU_A[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[5]) );
  SDFFRQX1M \Memory_reg[0][4]  ( .D(n290), .SI(REG0_ALU_A[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[4]) );
  SDFFRQX1M \Memory_reg[0][3]  ( .D(n289), .SI(REG0_ALU_A[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[3]) );
  SDFFRQX1M \Memory_reg[0][2]  ( .D(n288), .SI(REG0_ALU_A[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[2]) );
  SDFFRQX1M \Memory_reg[0][1]  ( .D(n287), .SI(REG0_ALU_A[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(REG0_ALU_A[1]) );
  SDFFRQX1M \Memory_reg[0][0]  ( .D(n286), .SI(test_si1), .SE(test_se), .CK(
        clk), .RN(rst), .Q(REG0_ALU_A[0]) );
  SDFFRQX1M \Memory_reg[14][7]  ( .D(n181), .SI(\Memory[14][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][7] ) );
  SDFFRQX1M \Memory_reg[14][6]  ( .D(n180), .SI(\Memory[14][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][6] ) );
  SDFFRQX1M \Memory_reg[14][5]  ( .D(n179), .SI(\Memory[14][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][5] ) );
  SDFFRQX1M \Memory_reg[14][4]  ( .D(n178), .SI(\Memory[14][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][4] ) );
  SDFFRQX1M \Memory_reg[14][3]  ( .D(n177), .SI(test_si3), .SE(test_se), .CK(
        clk), .RN(rst), .Q(\Memory[14][3] ) );
  SDFFRQX1M \Memory_reg[14][2]  ( .D(n176), .SI(\Memory[14][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][2] ) );
  SDFFRQX1M \Memory_reg[14][1]  ( .D(n175), .SI(\Memory[14][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][1] ) );
  SDFFRQX1M \Memory_reg[14][0]  ( .D(n174), .SI(\Memory[13][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[14][0] ) );
  SDFFRQX1M \Memory_reg[13][7]  ( .D(n189), .SI(\Memory[13][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][7] ) );
  SDFFRQX1M \Memory_reg[13][6]  ( .D(n188), .SI(\Memory[13][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][6] ) );
  SDFFRQX1M \Memory_reg[13][5]  ( .D(n187), .SI(\Memory[13][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][5] ) );
  SDFFRQX1M \Memory_reg[13][4]  ( .D(n186), .SI(\Memory[13][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][4] ) );
  SDFFRQX1M \Memory_reg[13][3]  ( .D(n185), .SI(\Memory[13][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][3] ) );
  SDFFRQX1M \Memory_reg[13][2]  ( .D(n184), .SI(\Memory[13][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][2] ) );
  SDFFRQX1M \Memory_reg[13][1]  ( .D(n183), .SI(\Memory[13][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][1] ) );
  SDFFRQX1M \Memory_reg[13][0]  ( .D(n182), .SI(\Memory[12][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[13][0] ) );
  SDFFRQX1M \Memory_reg[11][7]  ( .D(n205), .SI(\Memory[11][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][7] ) );
  SDFFRQX1M \Memory_reg[11][6]  ( .D(n204), .SI(\Memory[11][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][6] ) );
  SDFFRQX1M \Memory_reg[11][5]  ( .D(n203), .SI(\Memory[11][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][5] ) );
  SDFFRQX1M \Memory_reg[11][4]  ( .D(n202), .SI(\Memory[11][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][4] ) );
  SDFFRQX1M \Memory_reg[11][3]  ( .D(n201), .SI(\Memory[11][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][3] ) );
  SDFFRQX1M \Memory_reg[11][2]  ( .D(n200), .SI(\Memory[11][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][2] ) );
  SDFFRQX1M \Memory_reg[11][1]  ( .D(n199), .SI(\Memory[11][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][1] ) );
  SDFFRQX1M \Memory_reg[11][0]  ( .D(n198), .SI(\Memory[10][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[11][0] ) );
  SDFFRQX1M \Memory_reg[9][7]  ( .D(n221), .SI(\Memory[9][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][7] ) );
  SDFFRQX1M \Memory_reg[9][6]  ( .D(n220), .SI(\Memory[9][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][6] ) );
  SDFFRQX1M \Memory_reg[9][5]  ( .D(n219), .SI(\Memory[9][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][5] ) );
  SDFFRQX1M \Memory_reg[9][4]  ( .D(n218), .SI(\Memory[9][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][4] ) );
  SDFFRQX1M \Memory_reg[9][3]  ( .D(n217), .SI(\Memory[9][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][3] ) );
  SDFFRQX1M \Memory_reg[9][2]  ( .D(n216), .SI(\Memory[9][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][2] ) );
  SDFFRQX1M \Memory_reg[9][1]  ( .D(n215), .SI(\Memory[9][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][1] ) );
  SDFFRQX1M \Memory_reg[9][0]  ( .D(n214), .SI(\Memory[8][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[9][0] ) );
  SDFFRQX1M \Memory_reg[12][7]  ( .D(n197), .SI(\Memory[12][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][7] ) );
  SDFFRQX1M \Memory_reg[12][6]  ( .D(n196), .SI(\Memory[12][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][6] ) );
  SDFFRQX1M \Memory_reg[12][5]  ( .D(n195), .SI(\Memory[12][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][5] ) );
  SDFFRQX1M \Memory_reg[12][4]  ( .D(n194), .SI(\Memory[12][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][4] ) );
  SDFFRQX1M \Memory_reg[12][3]  ( .D(n193), .SI(\Memory[12][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][3] ) );
  SDFFRQX1M \Memory_reg[12][2]  ( .D(n192), .SI(\Memory[12][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][2] ) );
  SDFFRQX1M \Memory_reg[12][1]  ( .D(n191), .SI(\Memory[12][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][1] ) );
  SDFFRQX1M \Memory_reg[12][0]  ( .D(n190), .SI(\Memory[11][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[12][0] ) );
  SDFFRQX1M \Memory_reg[10][7]  ( .D(n213), .SI(\Memory[10][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][7] ) );
  SDFFRQX1M \Memory_reg[10][6]  ( .D(n212), .SI(\Memory[10][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][6] ) );
  SDFFRQX1M \Memory_reg[10][5]  ( .D(n211), .SI(\Memory[10][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][5] ) );
  SDFFRQX1M \Memory_reg[10][4]  ( .D(n210), .SI(\Memory[10][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][4] ) );
  SDFFRQX1M \Memory_reg[10][3]  ( .D(n209), .SI(\Memory[10][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][3] ) );
  SDFFRQX1M \Memory_reg[10][2]  ( .D(n208), .SI(\Memory[10][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][2] ) );
  SDFFRQX1M \Memory_reg[10][1]  ( .D(n207), .SI(\Memory[10][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][1] ) );
  SDFFRQX1M \Memory_reg[10][0]  ( .D(n206), .SI(\Memory[9][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[10][0] ) );
  SDFFRQX1M \Memory_reg[8][7]  ( .D(n229), .SI(\Memory[8][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][7] ) );
  SDFFRQX1M \Memory_reg[8][6]  ( .D(n228), .SI(\Memory[8][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][6] ) );
  SDFFRQX1M \Memory_reg[8][5]  ( .D(n227), .SI(\Memory[8][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][5] ) );
  SDFFRQX1M \Memory_reg[8][4]  ( .D(n226), .SI(\Memory[8][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][4] ) );
  SDFFRQX1M \Memory_reg[8][3]  ( .D(n225), .SI(\Memory[8][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][3] ) );
  SDFFRQX1M \Memory_reg[8][2]  ( .D(n224), .SI(\Memory[8][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][2] ) );
  SDFFRQX1M \Memory_reg[8][1]  ( .D(n223), .SI(\Memory[8][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][1] ) );
  SDFFRQX1M \Memory_reg[8][0]  ( .D(n222), .SI(\Memory[7][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[8][0] ) );
  SDFFRQX1M \Memory_reg[15][7]  ( .D(n173), .SI(\Memory[15][6] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][7] ) );
  SDFFRQX1M \Memory_reg[15][6]  ( .D(n172), .SI(\Memory[15][5] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][6] ) );
  SDFFRQX1M \Memory_reg[15][5]  ( .D(n171), .SI(\Memory[15][4] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][5] ) );
  SDFFRQX1M \Memory_reg[15][4]  ( .D(n170), .SI(\Memory[15][3] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][4] ) );
  SDFFRQX1M \Memory_reg[15][3]  ( .D(n169), .SI(\Memory[15][2] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][3] ) );
  SDFFRQX1M \Memory_reg[15][2]  ( .D(n168), .SI(\Memory[15][1] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][2] ) );
  SDFFRQX1M \Memory_reg[15][1]  ( .D(n167), .SI(\Memory[15][0] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][1] ) );
  SDFFRQX1M \Memory_reg[15][0]  ( .D(n166), .SI(\Memory[14][7] ), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\Memory[15][0] ) );
  SDFFSQX1M \Memory_reg[3][3]  ( .D(n265), .SI(REG3_DIV[2]), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(REG3_DIV[3]) );
  NOR2X2M U255 ( .A(n447), .B(N12), .Y(n149) );
  NOR2X2M U256 ( .A(N11), .B(N12), .Y(n152) );
  NOR2X2M U257 ( .A(n454), .B(n447), .Y(n141) );
  INVX2M U258 ( .A(WrData[5]), .Y(n450) );
  INVX2M U259 ( .A(WrData[6]), .Y(n449) );
  NAND2X2M U260 ( .A(n146), .B(n142), .Y(n145) );
  NAND2X2M U261 ( .A(n156), .B(n146), .Y(n159) );
  BUFX4M U262 ( .A(N10), .Y(n444) );
  BUFX4M U263 ( .A(N10), .Y(n445) );
  CLKBUFX2M U264 ( .A(N10), .Y(n443) );
  CLKBUFX2M U265 ( .A(N11), .Y(n441) );
  CLKBUFX2M U266 ( .A(N11), .Y(n442) );
  CLKBUFX2M U267 ( .A(N11), .Y(n440) );
  NOR2X2M U268 ( .A(n454), .B(N11), .Y(n146) );
  NAND2X2M U269 ( .A(n149), .B(n142), .Y(n148) );
  NAND2X2M U270 ( .A(n149), .B(n144), .Y(n150) );
  NAND2X2M U271 ( .A(n152), .B(n142), .Y(n151) );
  NAND2X2M U272 ( .A(n152), .B(n144), .Y(n154) );
  NAND2X2M U273 ( .A(n146), .B(n144), .Y(n147) );
  NAND2X2M U274 ( .A(n144), .B(n141), .Y(n143) );
  NAND2X2M U275 ( .A(n156), .B(n141), .Y(n155) );
  NAND2X2M U276 ( .A(n158), .B(n141), .Y(n157) );
  NAND2X2M U277 ( .A(n156), .B(n149), .Y(n161) );
  NAND2X2M U278 ( .A(n158), .B(n149), .Y(n162) );
  NAND2X2M U279 ( .A(n156), .B(n152), .Y(n163) );
  NAND2X2M U280 ( .A(n158), .B(n152), .Y(n165) );
  NAND2X2M U281 ( .A(n158), .B(n146), .Y(n160) );
  NAND2X2M U282 ( .A(n141), .B(n142), .Y(n140) );
  AND2X2M U283 ( .A(n153), .B(N10), .Y(n142) );
  AND2X2M U284 ( .A(n164), .B(N10), .Y(n156) );
  INVX2M U285 ( .A(WrData[0]), .Y(n456) );
  INVX2M U286 ( .A(WrData[1]), .Y(n455) );
  INVX2M U287 ( .A(WrData[2]), .Y(n453) );
  INVX2M U288 ( .A(WrData[3]), .Y(n452) );
  INVX2M U289 ( .A(WrData[4]), .Y(n451) );
  INVX2M U290 ( .A(WrData[7]), .Y(n448) );
  AND2X2M U291 ( .A(n153), .B(n446), .Y(n144) );
  NOR2BX2M U292 ( .AN(WrEn), .B(N13), .Y(n164) );
  AND2X2M U293 ( .A(n164), .B(n446), .Y(n158) );
  INVX2M U294 ( .A(N12), .Y(n454) );
  AND2X2M U295 ( .A(WrEn), .B(N13), .Y(n153) );
  MX4X1M U296 ( .A(REG0_ALU_A[0]), .B(REG1_ALU_B[0]), .C(REG2_UART[0]), .D(
        REG3_DIV[0]), .S0(n443), .S1(n440), .Y(n411) );
  MX4X1M U297 ( .A(REG0_ALU_A[1]), .B(REG1_ALU_B[1]), .C(REG2_UART[1]), .D(
        REG3_DIV[1]), .S0(n444), .S1(n440), .Y(n415) );
  MX4X1M U298 ( .A(REG0_ALU_A[2]), .B(REG1_ALU_B[2]), .C(REG2_UART[2]), .D(
        REG3_DIV[2]), .S0(n444), .S1(n441), .Y(n419) );
  MX4X1M U299 ( .A(REG0_ALU_A[3]), .B(REG1_ALU_B[3]), .C(REG2_UART[3]), .D(
        REG3_DIV[3]), .S0(n444), .S1(n441), .Y(n423) );
  MX4X1M U300 ( .A(REG0_ALU_A[4]), .B(REG1_ALU_B[4]), .C(REG2_UART[4]), .D(
        \Memory[3][4] ), .S0(n445), .S1(n441), .Y(n427) );
  MX4X1M U301 ( .A(REG0_ALU_A[5]), .B(REG1_ALU_B[5]), .C(REG2_UART[5]), .D(
        \Memory[3][5] ), .S0(n445), .S1(n442), .Y(n431) );
  MX4X1M U302 ( .A(REG0_ALU_A[6]), .B(REG1_ALU_B[6]), .C(REG2_UART[6]), .D(
        \Memory[3][6] ), .S0(n445), .S1(n442), .Y(n435) );
  MX4X1M U303 ( .A(REG0_ALU_A[7]), .B(REG1_ALU_B[7]), .C(\Memory[2][7] ), .D(
        \Memory[3][7] ), .S0(n445), .S1(n442), .Y(n439) );
  MX4X1M U304 ( .A(\Memory[4][0] ), .B(\Memory[5][0] ), .C(\Memory[6][0] ), 
        .D(\Memory[7][0] ), .S0(n443), .S1(n440), .Y(n410) );
  MX4X1M U305 ( .A(\Memory[4][1] ), .B(\Memory[5][1] ), .C(\Memory[6][1] ), 
        .D(\Memory[7][1] ), .S0(n444), .S1(n440), .Y(n414) );
  MX4X1M U306 ( .A(\Memory[4][2] ), .B(\Memory[5][2] ), .C(\Memory[6][2] ), 
        .D(\Memory[7][2] ), .S0(n444), .S1(n441), .Y(n418) );
  MX4X1M U307 ( .A(\Memory[4][3] ), .B(\Memory[5][3] ), .C(\Memory[6][3] ), 
        .D(\Memory[7][3] ), .S0(n444), .S1(n441), .Y(n422) );
  MX4X1M U308 ( .A(\Memory[4][4] ), .B(\Memory[5][4] ), .C(\Memory[6][4] ), 
        .D(\Memory[7][4] ), .S0(n444), .S1(n441), .Y(n426) );
  MX4X1M U309 ( .A(\Memory[4][5] ), .B(\Memory[5][5] ), .C(\Memory[6][5] ), 
        .D(\Memory[7][5] ), .S0(n445), .S1(n442), .Y(n430) );
  MX4X1M U310 ( .A(\Memory[4][6] ), .B(\Memory[5][6] ), .C(\Memory[6][6] ), 
        .D(\Memory[7][6] ), .S0(n445), .S1(n442), .Y(n434) );
  MX4X1M U311 ( .A(\Memory[4][7] ), .B(\Memory[5][7] ), .C(\Memory[6][7] ), 
        .D(\Memory[7][7] ), .S0(n445), .S1(n442), .Y(n438) );
  MX4X1M U312 ( .A(\Memory[12][0] ), .B(\Memory[13][0] ), .C(\Memory[14][0] ), 
        .D(\Memory[15][0] ), .S0(n443), .S1(n440), .Y(n408) );
  MX4X1M U313 ( .A(\Memory[12][1] ), .B(\Memory[13][1] ), .C(\Memory[14][1] ), 
        .D(\Memory[15][1] ), .S0(n443), .S1(n440), .Y(n412) );
  MX4X1M U314 ( .A(\Memory[12][2] ), .B(\Memory[13][2] ), .C(\Memory[14][2] ), 
        .D(\Memory[15][2] ), .S0(n444), .S1(n441), .Y(n416) );
  MX4X1M U315 ( .A(\Memory[12][3] ), .B(\Memory[13][3] ), .C(\Memory[14][3] ), 
        .D(\Memory[15][3] ), .S0(n444), .S1(n441), .Y(n420) );
  MX4X1M U316 ( .A(\Memory[12][4] ), .B(\Memory[13][4] ), .C(\Memory[14][4] ), 
        .D(\Memory[15][4] ), .S0(n444), .S1(n441), .Y(n424) );
  MX4X1M U317 ( .A(\Memory[12][5] ), .B(\Memory[13][5] ), .C(\Memory[14][5] ), 
        .D(\Memory[15][5] ), .S0(n445), .S1(n442), .Y(n428) );
  MX4X1M U318 ( .A(\Memory[12][6] ), .B(\Memory[13][6] ), .C(\Memory[14][6] ), 
        .D(\Memory[15][6] ), .S0(n445), .S1(n442), .Y(n432) );
  MX4X1M U319 ( .A(\Memory[12][7] ), .B(\Memory[13][7] ), .C(\Memory[14][7] ), 
        .D(\Memory[15][7] ), .S0(n445), .S1(n442), .Y(n436) );
  MX4X1M U320 ( .A(\Memory[8][0] ), .B(\Memory[9][0] ), .C(\Memory[10][0] ), 
        .D(\Memory[11][0] ), .S0(n443), .S1(n440), .Y(n409) );
  MX4X1M U321 ( .A(\Memory[8][1] ), .B(\Memory[9][1] ), .C(\Memory[10][1] ), 
        .D(\Memory[11][1] ), .S0(n443), .S1(n440), .Y(n413) );
  MX4X1M U322 ( .A(\Memory[8][2] ), .B(\Memory[9][2] ), .C(\Memory[10][2] ), 
        .D(\Memory[11][2] ), .S0(n444), .S1(n441), .Y(n417) );
  MX4X1M U323 ( .A(\Memory[8][3] ), .B(\Memory[9][3] ), .C(\Memory[10][3] ), 
        .D(\Memory[11][3] ), .S0(n444), .S1(n441), .Y(n421) );
  MX4X1M U324 ( .A(\Memory[8][4] ), .B(\Memory[9][4] ), .C(\Memory[10][4] ), 
        .D(\Memory[11][4] ), .S0(n444), .S1(n441), .Y(n425) );
  MX4X1M U325 ( .A(\Memory[8][5] ), .B(\Memory[9][5] ), .C(\Memory[10][5] ), 
        .D(\Memory[11][5] ), .S0(n445), .S1(n442), .Y(n429) );
  MX4X1M U326 ( .A(\Memory[8][6] ), .B(\Memory[9][6] ), .C(\Memory[10][6] ), 
        .D(\Memory[11][6] ), .S0(n445), .S1(n442), .Y(n433) );
  MX4X1M U327 ( .A(\Memory[8][7] ), .B(\Memory[9][7] ), .C(\Memory[10][7] ), 
        .D(\Memory[11][7] ), .S0(n445), .S1(n442), .Y(n437) );
  INVX2M U328 ( .A(N11), .Y(n447) );
  INVX2M U329 ( .A(N10), .Y(n446) );
  MX4X1M U330 ( .A(n411), .B(n409), .C(n410), .D(n408), .S0(N13), .S1(N12), 
        .Y(RdData[0]) );
  MX4X1M U331 ( .A(n415), .B(n413), .C(n414), .D(n412), .S0(N13), .S1(N12), 
        .Y(RdData[1]) );
  MX4X1M U332 ( .A(n419), .B(n417), .C(n418), .D(n416), .S0(N13), .S1(N12), 
        .Y(RdData[2]) );
  MX4X1M U333 ( .A(n423), .B(n421), .C(n422), .D(n420), .S0(N13), .S1(N12), 
        .Y(RdData[3]) );
  MX4X1M U334 ( .A(n427), .B(n425), .C(n426), .D(n424), .S0(N13), .S1(N12), 
        .Y(RdData[4]) );
  MX4X1M U335 ( .A(n431), .B(n429), .C(n430), .D(n428), .S0(N13), .S1(N12), 
        .Y(RdData[5]) );
  MX4X1M U336 ( .A(n435), .B(n433), .C(n434), .D(n432), .S0(N13), .S1(N12), 
        .Y(RdData[6]) );
  MX4X1M U337 ( .A(n439), .B(n437), .C(n438), .D(n436), .S0(N13), .S1(N12), 
        .Y(RdData[7]) );
  OAI2BB2X1M U338 ( .B0(n140), .B1(n456), .A0N(\Memory[15][0] ), .A1N(n140), 
        .Y(n166) );
  OAI2BB2X1M U339 ( .B0(n140), .B1(n455), .A0N(\Memory[15][1] ), .A1N(n140), 
        .Y(n167) );
  OAI2BB2X1M U340 ( .B0(n140), .B1(n453), .A0N(\Memory[15][2] ), .A1N(n140), 
        .Y(n168) );
  OAI2BB2X1M U341 ( .B0(n140), .B1(n452), .A0N(\Memory[15][3] ), .A1N(n140), 
        .Y(n169) );
  OAI2BB2X1M U342 ( .B0(n140), .B1(n451), .A0N(\Memory[15][4] ), .A1N(n140), 
        .Y(n170) );
  OAI2BB2X1M U343 ( .B0(n140), .B1(n450), .A0N(\Memory[15][5] ), .A1N(n140), 
        .Y(n171) );
  OAI2BB2X1M U344 ( .B0(n140), .B1(n449), .A0N(\Memory[15][6] ), .A1N(n140), 
        .Y(n172) );
  OAI2BB2X1M U345 ( .B0(n140), .B1(n448), .A0N(\Memory[15][7] ), .A1N(n140), 
        .Y(n173) );
  OAI2BB2X1M U346 ( .B0(n456), .B1(n148), .A0N(\Memory[11][0] ), .A1N(n148), 
        .Y(n198) );
  OAI2BB2X1M U347 ( .B0(n455), .B1(n148), .A0N(\Memory[11][1] ), .A1N(n148), 
        .Y(n199) );
  OAI2BB2X1M U348 ( .B0(n453), .B1(n148), .A0N(\Memory[11][2] ), .A1N(n148), 
        .Y(n200) );
  OAI2BB2X1M U349 ( .B0(n452), .B1(n148), .A0N(\Memory[11][3] ), .A1N(n148), 
        .Y(n201) );
  OAI2BB2X1M U350 ( .B0(n451), .B1(n148), .A0N(\Memory[11][4] ), .A1N(n148), 
        .Y(n202) );
  OAI2BB2X1M U351 ( .B0(n450), .B1(n148), .A0N(\Memory[11][5] ), .A1N(n148), 
        .Y(n203) );
  OAI2BB2X1M U352 ( .B0(n449), .B1(n148), .A0N(\Memory[11][6] ), .A1N(n148), 
        .Y(n204) );
  OAI2BB2X1M U353 ( .B0(n448), .B1(n148), .A0N(\Memory[11][7] ), .A1N(n148), 
        .Y(n205) );
  OAI2BB2X1M U354 ( .B0(n456), .B1(n150), .A0N(\Memory[10][0] ), .A1N(n150), 
        .Y(n206) );
  OAI2BB2X1M U355 ( .B0(n455), .B1(n150), .A0N(\Memory[10][1] ), .A1N(n150), 
        .Y(n207) );
  OAI2BB2X1M U356 ( .B0(n453), .B1(n150), .A0N(\Memory[10][2] ), .A1N(n150), 
        .Y(n208) );
  OAI2BB2X1M U357 ( .B0(n452), .B1(n150), .A0N(\Memory[10][3] ), .A1N(n150), 
        .Y(n209) );
  OAI2BB2X1M U358 ( .B0(n451), .B1(n150), .A0N(\Memory[10][4] ), .A1N(n150), 
        .Y(n210) );
  OAI2BB2X1M U359 ( .B0(n450), .B1(n150), .A0N(\Memory[10][5] ), .A1N(n150), 
        .Y(n211) );
  OAI2BB2X1M U360 ( .B0(n449), .B1(n150), .A0N(\Memory[10][6] ), .A1N(n150), 
        .Y(n212) );
  OAI2BB2X1M U361 ( .B0(n448), .B1(n150), .A0N(\Memory[10][7] ), .A1N(n150), 
        .Y(n213) );
  OAI2BB2X1M U362 ( .B0(n456), .B1(n151), .A0N(\Memory[9][0] ), .A1N(n151), 
        .Y(n214) );
  OAI2BB2X1M U363 ( .B0(n455), .B1(n151), .A0N(\Memory[9][1] ), .A1N(n151), 
        .Y(n215) );
  OAI2BB2X1M U364 ( .B0(n453), .B1(n151), .A0N(\Memory[9][2] ), .A1N(n151), 
        .Y(n216) );
  OAI2BB2X1M U365 ( .B0(n452), .B1(n151), .A0N(\Memory[9][3] ), .A1N(n151), 
        .Y(n217) );
  OAI2BB2X1M U366 ( .B0(n451), .B1(n151), .A0N(\Memory[9][4] ), .A1N(n151), 
        .Y(n218) );
  OAI2BB2X1M U367 ( .B0(n450), .B1(n151), .A0N(\Memory[9][5] ), .A1N(n151), 
        .Y(n219) );
  OAI2BB2X1M U368 ( .B0(n449), .B1(n151), .A0N(\Memory[9][6] ), .A1N(n151), 
        .Y(n220) );
  OAI2BB2X1M U369 ( .B0(n448), .B1(n151), .A0N(\Memory[9][7] ), .A1N(n151), 
        .Y(n221) );
  OAI2BB2X1M U370 ( .B0(n456), .B1(n154), .A0N(\Memory[8][0] ), .A1N(n154), 
        .Y(n222) );
  OAI2BB2X1M U371 ( .B0(n455), .B1(n154), .A0N(\Memory[8][1] ), .A1N(n154), 
        .Y(n223) );
  OAI2BB2X1M U372 ( .B0(n453), .B1(n154), .A0N(\Memory[8][2] ), .A1N(n154), 
        .Y(n224) );
  OAI2BB2X1M U373 ( .B0(n452), .B1(n154), .A0N(\Memory[8][3] ), .A1N(n154), 
        .Y(n225) );
  OAI2BB2X1M U374 ( .B0(n451), .B1(n154), .A0N(\Memory[8][4] ), .A1N(n154), 
        .Y(n226) );
  OAI2BB2X1M U375 ( .B0(n450), .B1(n154), .A0N(\Memory[8][5] ), .A1N(n154), 
        .Y(n227) );
  OAI2BB2X1M U376 ( .B0(n449), .B1(n154), .A0N(\Memory[8][6] ), .A1N(n154), 
        .Y(n228) );
  OAI2BB2X1M U377 ( .B0(n448), .B1(n154), .A0N(\Memory[8][7] ), .A1N(n154), 
        .Y(n229) );
  OAI2BB2X1M U378 ( .B0(n456), .B1(n145), .A0N(\Memory[13][0] ), .A1N(n145), 
        .Y(n182) );
  OAI2BB2X1M U379 ( .B0(n455), .B1(n145), .A0N(\Memory[13][1] ), .A1N(n145), 
        .Y(n183) );
  OAI2BB2X1M U380 ( .B0(n453), .B1(n145), .A0N(\Memory[13][2] ), .A1N(n145), 
        .Y(n184) );
  OAI2BB2X1M U381 ( .B0(n452), .B1(n145), .A0N(\Memory[13][3] ), .A1N(n145), 
        .Y(n185) );
  OAI2BB2X1M U382 ( .B0(n451), .B1(n145), .A0N(\Memory[13][4] ), .A1N(n145), 
        .Y(n186) );
  OAI2BB2X1M U383 ( .B0(n450), .B1(n145), .A0N(\Memory[13][5] ), .A1N(n145), 
        .Y(n187) );
  OAI2BB2X1M U384 ( .B0(n449), .B1(n145), .A0N(\Memory[13][6] ), .A1N(n145), 
        .Y(n188) );
  OAI2BB2X1M U385 ( .B0(n448), .B1(n145), .A0N(\Memory[13][7] ), .A1N(n145), 
        .Y(n189) );
  OAI2BB2X1M U386 ( .B0(n456), .B1(n147), .A0N(\Memory[12][0] ), .A1N(n147), 
        .Y(n190) );
  OAI2BB2X1M U387 ( .B0(n455), .B1(n147), .A0N(\Memory[12][1] ), .A1N(n147), 
        .Y(n191) );
  OAI2BB2X1M U388 ( .B0(n453), .B1(n147), .A0N(\Memory[12][2] ), .A1N(n147), 
        .Y(n192) );
  OAI2BB2X1M U389 ( .B0(n452), .B1(n147), .A0N(\Memory[12][3] ), .A1N(n147), 
        .Y(n193) );
  OAI2BB2X1M U390 ( .B0(n451), .B1(n147), .A0N(\Memory[12][4] ), .A1N(n147), 
        .Y(n194) );
  OAI2BB2X1M U391 ( .B0(n450), .B1(n147), .A0N(\Memory[12][5] ), .A1N(n147), 
        .Y(n195) );
  OAI2BB2X1M U392 ( .B0(n449), .B1(n147), .A0N(\Memory[12][6] ), .A1N(n147), 
        .Y(n196) );
  OAI2BB2X1M U393 ( .B0(n448), .B1(n147), .A0N(\Memory[12][7] ), .A1N(n147), 
        .Y(n197) );
  OAI2BB2X1M U394 ( .B0(n456), .B1(n143), .A0N(\Memory[14][0] ), .A1N(n143), 
        .Y(n174) );
  OAI2BB2X1M U395 ( .B0(n455), .B1(n143), .A0N(\Memory[14][1] ), .A1N(n143), 
        .Y(n175) );
  OAI2BB2X1M U396 ( .B0(n453), .B1(n143), .A0N(\Memory[14][2] ), .A1N(n143), 
        .Y(n176) );
  OAI2BB2X1M U397 ( .B0(n452), .B1(n143), .A0N(\Memory[14][3] ), .A1N(n143), 
        .Y(n177) );
  OAI2BB2X1M U398 ( .B0(n451), .B1(n143), .A0N(\Memory[14][4] ), .A1N(n143), 
        .Y(n178) );
  OAI2BB2X1M U399 ( .B0(n450), .B1(n143), .A0N(\Memory[14][5] ), .A1N(n143), 
        .Y(n179) );
  OAI2BB2X1M U400 ( .B0(n449), .B1(n143), .A0N(\Memory[14][6] ), .A1N(n143), 
        .Y(n180) );
  OAI2BB2X1M U401 ( .B0(n448), .B1(n143), .A0N(\Memory[14][7] ), .A1N(n143), 
        .Y(n181) );
  OAI2BB2X1M U402 ( .B0(n456), .B1(n155), .A0N(\Memory[7][0] ), .A1N(n155), 
        .Y(n230) );
  OAI2BB2X1M U403 ( .B0(n455), .B1(n155), .A0N(\Memory[7][1] ), .A1N(n155), 
        .Y(n231) );
  OAI2BB2X1M U404 ( .B0(n453), .B1(n155), .A0N(\Memory[7][2] ), .A1N(n155), 
        .Y(n232) );
  OAI2BB2X1M U405 ( .B0(n452), .B1(n155), .A0N(\Memory[7][3] ), .A1N(n155), 
        .Y(n233) );
  OAI2BB2X1M U406 ( .B0(n451), .B1(n155), .A0N(\Memory[7][4] ), .A1N(n155), 
        .Y(n234) );
  OAI2BB2X1M U407 ( .B0(n450), .B1(n155), .A0N(\Memory[7][5] ), .A1N(n155), 
        .Y(n235) );
  OAI2BB2X1M U408 ( .B0(n449), .B1(n155), .A0N(\Memory[7][6] ), .A1N(n155), 
        .Y(n236) );
  OAI2BB2X1M U409 ( .B0(n448), .B1(n155), .A0N(\Memory[7][7] ), .A1N(n155), 
        .Y(n237) );
  OAI2BB2X1M U410 ( .B0(n456), .B1(n157), .A0N(\Memory[6][0] ), .A1N(n157), 
        .Y(n238) );
  OAI2BB2X1M U411 ( .B0(n455), .B1(n157), .A0N(\Memory[6][1] ), .A1N(n157), 
        .Y(n239) );
  OAI2BB2X1M U412 ( .B0(n453), .B1(n157), .A0N(\Memory[6][2] ), .A1N(n157), 
        .Y(n240) );
  OAI2BB2X1M U413 ( .B0(n452), .B1(n157), .A0N(\Memory[6][3] ), .A1N(n157), 
        .Y(n241) );
  OAI2BB2X1M U414 ( .B0(n451), .B1(n157), .A0N(\Memory[6][4] ), .A1N(n157), 
        .Y(n242) );
  OAI2BB2X1M U415 ( .B0(n450), .B1(n157), .A0N(\Memory[6][5] ), .A1N(n157), 
        .Y(n243) );
  OAI2BB2X1M U416 ( .B0(n449), .B1(n157), .A0N(\Memory[6][6] ), .A1N(n157), 
        .Y(n244) );
  OAI2BB2X1M U417 ( .B0(n448), .B1(n157), .A0N(\Memory[6][7] ), .A1N(n157), 
        .Y(n245) );
  OAI2BB2X1M U418 ( .B0(n456), .B1(n161), .A0N(REG3_DIV[0]), .A1N(n161), .Y(
        n262) );
  OAI2BB2X1M U419 ( .B0(n455), .B1(n161), .A0N(REG3_DIV[1]), .A1N(n161), .Y(
        n263) );
  OAI2BB2X1M U420 ( .B0(n453), .B1(n161), .A0N(REG3_DIV[2]), .A1N(n161), .Y(
        n264) );
  OAI2BB2X1M U421 ( .B0(n451), .B1(n161), .A0N(\Memory[3][4] ), .A1N(n161), 
        .Y(n266) );
  OAI2BB2X1M U422 ( .B0(n450), .B1(n161), .A0N(\Memory[3][5] ), .A1N(n161), 
        .Y(n267) );
  OAI2BB2X1M U423 ( .B0(n449), .B1(n161), .A0N(\Memory[3][6] ), .A1N(n161), 
        .Y(n268) );
  OAI2BB2X1M U424 ( .B0(n448), .B1(n161), .A0N(\Memory[3][7] ), .A1N(n161), 
        .Y(n269) );
  OAI2BB2X1M U425 ( .B0(n456), .B1(n162), .A0N(REG2_UART[0]), .A1N(n162), .Y(
        n270) );
  OAI2BB2X1M U426 ( .B0(n455), .B1(n162), .A0N(REG2_UART[1]), .A1N(n162), .Y(
        n271) );
  OAI2BB2X1M U427 ( .B0(n450), .B1(n162), .A0N(REG2_UART[5]), .A1N(n162), .Y(
        n275) );
  OAI2BB2X1M U428 ( .B0(n449), .B1(n162), .A0N(REG2_UART[6]), .A1N(n162), .Y(
        n276) );
  OAI2BB2X1M U429 ( .B0(n448), .B1(n162), .A0N(\Memory[2][7] ), .A1N(n162), 
        .Y(n277) );
  OAI2BB2X1M U430 ( .B0(n456), .B1(n163), .A0N(REG1_ALU_B[0]), .A1N(n163), .Y(
        n278) );
  OAI2BB2X1M U431 ( .B0(n455), .B1(n163), .A0N(REG1_ALU_B[1]), .A1N(n163), .Y(
        n279) );
  OAI2BB2X1M U432 ( .B0(n453), .B1(n163), .A0N(REG1_ALU_B[2]), .A1N(n163), .Y(
        n280) );
  OAI2BB2X1M U433 ( .B0(n452), .B1(n163), .A0N(REG1_ALU_B[3]), .A1N(n163), .Y(
        n281) );
  OAI2BB2X1M U434 ( .B0(n451), .B1(n163), .A0N(REG1_ALU_B[4]), .A1N(n163), .Y(
        n282) );
  OAI2BB2X1M U435 ( .B0(n450), .B1(n163), .A0N(REG1_ALU_B[5]), .A1N(n163), .Y(
        n283) );
  OAI2BB2X1M U436 ( .B0(n449), .B1(n163), .A0N(REG1_ALU_B[6]), .A1N(n163), .Y(
        n284) );
  OAI2BB2X1M U437 ( .B0(n448), .B1(n163), .A0N(REG1_ALU_B[7]), .A1N(n163), .Y(
        n285) );
  OAI2BB2X1M U438 ( .B0(n456), .B1(n165), .A0N(REG0_ALU_A[0]), .A1N(n165), .Y(
        n286) );
  OAI2BB2X1M U439 ( .B0(n455), .B1(n165), .A0N(REG0_ALU_A[1]), .A1N(n165), .Y(
        n287) );
  OAI2BB2X1M U440 ( .B0(n453), .B1(n165), .A0N(REG0_ALU_A[2]), .A1N(n165), .Y(
        n288) );
  OAI2BB2X1M U441 ( .B0(n452), .B1(n165), .A0N(REG0_ALU_A[3]), .A1N(n165), .Y(
        n289) );
  OAI2BB2X1M U442 ( .B0(n451), .B1(n165), .A0N(REG0_ALU_A[4]), .A1N(n165), .Y(
        n290) );
  OAI2BB2X1M U443 ( .B0(n450), .B1(n165), .A0N(REG0_ALU_A[5]), .A1N(n165), .Y(
        n291) );
  OAI2BB2X1M U444 ( .B0(n449), .B1(n165), .A0N(REG0_ALU_A[6]), .A1N(n165), .Y(
        n292) );
  OAI2BB2X1M U445 ( .B0(n448), .B1(n165), .A0N(REG0_ALU_A[7]), .A1N(n165), .Y(
        n293) );
  OAI2BB2X1M U446 ( .B0(n456), .B1(n159), .A0N(\Memory[5][0] ), .A1N(n159), 
        .Y(n246) );
  OAI2BB2X1M U447 ( .B0(n455), .B1(n159), .A0N(\Memory[5][1] ), .A1N(n159), 
        .Y(n247) );
  OAI2BB2X1M U448 ( .B0(n453), .B1(n159), .A0N(\Memory[5][2] ), .A1N(n159), 
        .Y(n248) );
  OAI2BB2X1M U449 ( .B0(n452), .B1(n159), .A0N(\Memory[5][3] ), .A1N(n159), 
        .Y(n249) );
  OAI2BB2X1M U450 ( .B0(n451), .B1(n159), .A0N(\Memory[5][4] ), .A1N(n159), 
        .Y(n250) );
  OAI2BB2X1M U451 ( .B0(n450), .B1(n159), .A0N(\Memory[5][5] ), .A1N(n159), 
        .Y(n251) );
  OAI2BB2X1M U452 ( .B0(n449), .B1(n159), .A0N(\Memory[5][6] ), .A1N(n159), 
        .Y(n252) );
  OAI2BB2X1M U453 ( .B0(n448), .B1(n159), .A0N(\Memory[5][7] ), .A1N(n159), 
        .Y(n253) );
  OAI2BB2X1M U454 ( .B0(n456), .B1(n160), .A0N(\Memory[4][0] ), .A1N(n160), 
        .Y(n254) );
  OAI2BB2X1M U455 ( .B0(n455), .B1(n160), .A0N(\Memory[4][1] ), .A1N(n160), 
        .Y(n255) );
  OAI2BB2X1M U456 ( .B0(n453), .B1(n160), .A0N(\Memory[4][2] ), .A1N(n160), 
        .Y(n256) );
  OAI2BB2X1M U457 ( .B0(n452), .B1(n160), .A0N(\Memory[4][3] ), .A1N(n160), 
        .Y(n257) );
  OAI2BB2X1M U458 ( .B0(n451), .B1(n160), .A0N(\Memory[4][4] ), .A1N(n160), 
        .Y(n258) );
  OAI2BB2X1M U459 ( .B0(n450), .B1(n160), .A0N(\Memory[4][5] ), .A1N(n160), 
        .Y(n259) );
  OAI2BB2X1M U460 ( .B0(n449), .B1(n160), .A0N(\Memory[4][6] ), .A1N(n160), 
        .Y(n260) );
  OAI2BB2X1M U461 ( .B0(n448), .B1(n160), .A0N(\Memory[4][7] ), .A1N(n160), 
        .Y(n261) );
  OAI2BB2X1M U462 ( .B0(n452), .B1(n161), .A0N(REG3_DIV[3]), .A1N(n161), .Y(
        n265) );
  OAI2BB2X1M U463 ( .B0(n453), .B1(n162), .A0N(REG2_UART[2]), .A1N(n162), .Y(
        n272) );
  OAI2BB2X1M U464 ( .B0(n452), .B1(n162), .A0N(REG2_UART[3]), .A1N(n162), .Y(
        n273) );
  OAI2BB2X1M U465 ( .B0(n451), .B1(n162), .A0N(REG2_UART[4]), .A1N(n162), .Y(
        n274) );
endmodule


module RX_FSM_test_1 ( clk, rst, RX_IN, PAR_EN, Prescale, bit_cnt, 
        data_finish_flag, edge_cnt, P_DATA, PAR_TYP, Error, Compared_bit, 
        counter_en, bits_counter_en, Error_Unit_En, data_samp_en, deser_en, 
        data_valid, test_se );
  input [1:0] Prescale;
  input [4:0] edge_cnt;
  input [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_EN, bit_cnt, data_finish_flag, PAR_TYP, Error,
         test_se;
  output Compared_bit, counter_en, bits_counter_en, Error_Unit_En,
         data_samp_en, deser_en, data_valid;
  wire   Error_REG, N74, N82, n64, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [2:0] CurrentState;
  wire   [2:0] NextState;
  assign data_samp_en = N82;

  SDFFRQX2M Error_REG_reg ( .D(n64), .SI(CurrentState[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Error_REG) );
  SDFFRQX2M \CurrentState_reg[0]  ( .D(NextState[0]), .SI(P_DATA[7]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(CurrentState[0]) );
  SDFFRQX2M \CurrentState_reg[2]  ( .D(NextState[2]), .SI(CurrentState[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(CurrentState[2]) );
  SDFFRQX2M \CurrentState_reg[1]  ( .D(NextState[1]), .SI(CurrentState[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(CurrentState[1]) );
  SDFFRQX2M data_valid_reg ( .D(N74), .SI(Error_REG), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(data_valid) );
  NOR2BX1M U3 ( .AN(n1), .B(n2), .Y(n64) );
  AOI31X1M U4 ( .A0(n3), .A1(n4), .A2(Error), .B0(Error_REG), .Y(n2) );
  NOR2X1M U5 ( .A(n5), .B(n6), .Y(deser_en) );
  OAI21X1M U6 ( .A0(bit_cnt), .A1(n7), .B0(n8), .Y(counter_en) );
  AOI21X1M U7 ( .A0(CurrentState[1]), .A1(n9), .B0(n10), .Y(n7) );
  OAI31X1M U8 ( .A0(n11), .A1(PAR_EN), .A2(n6), .B0(n12), .Y(NextState[2]) );
  CLKMX2X2M U9 ( .A(n13), .B(n14), .S0(bit_cnt), .Y(n12) );
  CLKINVX1M U10 ( .A(data_finish_flag), .Y(n11) );
  NAND3X1M U11 ( .A(n14), .B(n6), .C(n15), .Y(NextState[1]) );
  CLKMX2X2M U12 ( .A(n13), .B(n16), .S0(bit_cnt), .Y(n15) );
  OAI211X1M U18 ( .A0(n13), .A1(n17), .B0(n16), .C0(n8), .Y(NextState[0]) );
  OA21X1M U19 ( .A0(data_finish_flag), .A1(n6), .B0(n18), .Y(n8) );
  NAND4X1M U20 ( .A(n9), .B(n19), .C(n20), .D(n21), .Y(n18) );
  CLKINVX1M U21 ( .A(bits_counter_en), .Y(n6) );
  NOR3X1M U22 ( .A(n9), .B(CurrentState[2]), .C(n19), .Y(bits_counter_en) );
  CLKINVX1M U23 ( .A(n10), .Y(n16) );
  NOR2X1M U24 ( .A(n1), .B(Error), .Y(n10) );
  CLKNAND2X2M U25 ( .A(bit_cnt), .B(n21), .Y(n17) );
  CLKINVX1M U26 ( .A(RX_IN), .Y(n21) );
  OAI32X1M U27 ( .A0(n22), .A1(n23), .A2(n24), .B0(n25), .B1(n31), .Y(N82) );
  MX3X1M U28 ( .A(n32), .B(n33), .C(n34), .S0(n35), .S1(Prescale[0]), .Y(n31)
         );
  NAND3X1M U29 ( .A(n36), .B(n23), .C(edge_cnt[2]), .Y(n34) );
  NAND2BX1M U30 ( .AN(edge_cnt[0]), .B(n33), .Y(n32) );
  CLKINVX1M U31 ( .A(n37), .Y(n25) );
  CLKINVX1M U32 ( .A(edge_cnt[3]), .Y(n24) );
  CLKINVX1M U33 ( .A(Prescale[1]), .Y(n23) );
  NAND3BX1M U34 ( .AN(edge_cnt[4]), .B(n35), .C(n36), .Y(n22) );
  CLKNAND2X2M U35 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .Y(n36) );
  NOR3BX1M U36 ( .AN(bit_cnt), .B(n13), .C(Error_REG), .Y(N74) );
  AOI2B1X1M U37 ( .A1N(n3), .A0(n1), .B0(n5), .Y(Error_Unit_En) );
  CLKINVX1M U38 ( .A(n4), .Y(n5) );
  OAI31X1M U39 ( .A0(n35), .A1(Prescale[0]), .A2(n33), .B0(n37), .Y(n4) );
  NOR2X1M U40 ( .A(edge_cnt[4]), .B(edge_cnt[3]), .Y(n37) );
  CLKINVX1M U41 ( .A(edge_cnt[1]), .Y(n33) );
  CLKINVX1M U42 ( .A(edge_cnt[2]), .Y(n35) );
  NAND3X1M U43 ( .A(n19), .B(n20), .C(CurrentState[0]), .Y(n1) );
  CLKINVX1M U44 ( .A(CurrentState[1]), .Y(n19) );
  CLKNAND2X2M U45 ( .A(n14), .B(n13), .Y(n3) );
  OAI21X1M U46 ( .A0(n38), .A1(n14), .B0(n13), .Y(Compared_bit) );
  NAND3X1M U47 ( .A(CurrentState[1]), .B(n9), .C(CurrentState[2]), .Y(n13) );
  NAND3X1M U48 ( .A(n9), .B(n20), .C(CurrentState[1]), .Y(n14) );
  CLKINVX1M U49 ( .A(CurrentState[2]), .Y(n20) );
  CLKINVX1M U50 ( .A(CurrentState[0]), .Y(n9) );
  XOR3XLM U51 ( .A(n39), .B(PAR_TYP), .C(n40), .Y(n38) );
  XOR3XLM U52 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n41), .Y(n40) );
  XNOR2X1M U53 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n41) );
  XOR3XLM U54 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n42), .Y(n39) );
  CLKXOR2X2M U55 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n42) );
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
  wire   n1, n2, n5, n7, n9, n3;

  SDFFRQX2M \bits_counter_reg[2]  ( .D(n5), .SI(bits_counter[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(bits_counter[2]) );
  SDFFRQX2M \bits_counter_reg[1]  ( .D(n7), .SI(bits_counter[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(bits_counter[1]) );
  SDFFRQX2M \bits_counter_reg[0]  ( .D(n9), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(bits_counter[0]) );
  NOR3BX2M U3 ( .AN(bits_counter[2]), .B(n2), .C(n3), .Y(finish) );
  XNOR2X2M U4 ( .A(bits_counter[1]), .B(n2), .Y(n7) );
  NAND2X2M U5 ( .A(enable), .B(bits_counter[0]), .Y(n2) );
  INVX2M U6 ( .A(bits_counter[1]), .Y(n3) );
  CLKXOR2X2M U7 ( .A(enable), .B(bits_counter[0]), .Y(n9) );
  CLKXOR2X2M U8 ( .A(bits_counter[2]), .B(n1), .Y(n5) );
  NOR2X2M U9 ( .A(n2), .B(n3), .Y(n1) );
endmodule


module Edge_Bit_Counter_test_1 ( clk, rst, enable, Prescale, edge_cnt, finish, 
        test_si, test_se );
  input [4:0] Prescale;
  output [4:0] edge_cnt;
  input clk, rst, enable, test_si, test_se;
  output finish;
  wire   N6, N7, N8, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, n11, \add_21/carry[4] , \add_21/carry[3] , \add_21/carry[2] , n1,
         n2, n3, n4, n12, n13, n14, n15, n16, n17, n18, n19;

  SDFFRQX2M finish_reg ( .D(N21), .SI(edge_cnt[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(finish) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N14), .SI(edge_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N10), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N12), .SI(edge_cnt[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N13), .SI(edge_cnt[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N11), .SI(edge_cnt[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[1]) );
  NOR2BX2M U5 ( .AN(N8), .B(n11), .Y(N13) );
  NOR2BX2M U6 ( .AN(N7), .B(n11), .Y(N12) );
  NOR2BX2M U11 ( .AN(N6), .B(n11), .Y(N11) );
  NAND2BX2M U12 ( .AN(finish), .B(enable), .Y(n11) );
  NOR2X2M U13 ( .A(n1), .B(n11), .Y(N14) );
  XNOR2X2M U14 ( .A(\add_21/carry[4] ), .B(edge_cnt[4]), .Y(n1) );
  NOR2X2M U15 ( .A(edge_cnt[0]), .B(n11), .Y(N10) );
  ADDHX1M U16 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_21/carry[2] ), .S(
        N6) );
  ADDHX1M U17 ( .A(edge_cnt[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N7) );
  ADDHX1M U18 ( .A(edge_cnt[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N8) );
  INVX2M U19 ( .A(Prescale[0]), .Y(N15) );
  NAND2BX1M U20 ( .AN(Prescale[1]), .B(N15), .Y(n2) );
  OAI2BB1X1M U21 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N16) );
  OR2X1M U22 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U23 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N17) );
  XNOR2X1M U24 ( .A(Prescale[3]), .B(n3), .Y(N18) );
  NOR3X1M U25 ( .A(Prescale[3]), .B(Prescale[4]), .C(n3), .Y(N20) );
  OAI21X1M U26 ( .A0(Prescale[3]), .A1(n3), .B0(Prescale[4]), .Y(n4) );
  NAND2BX1M U27 ( .AN(N20), .B(n4), .Y(N19) );
  NOR2BX1M U28 ( .AN(N15), .B(edge_cnt[0]), .Y(n12) );
  OAI2B2X1M U29 ( .A1N(edge_cnt[1]), .A0(n12), .B0(N16), .B1(n12), .Y(n15) );
  NOR2BX1M U30 ( .AN(edge_cnt[0]), .B(N15), .Y(n13) );
  OAI2B2X1M U31 ( .A1N(N16), .A0(n13), .B0(edge_cnt[1]), .B1(n13), .Y(n14) );
  NAND3BX1M U32 ( .AN(N20), .B(n15), .C(n14), .Y(n19) );
  CLKXOR2X2M U33 ( .A(N19), .B(edge_cnt[4]), .Y(n18) );
  CLKXOR2X2M U34 ( .A(N17), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U35 ( .A(N18), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U36 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N21) );
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
  wire   n1, n2, n7, n9, n11, n3, n4, n5;
  wire   [2:0] bits;
  assign test_so = bits[2];

  SDFFRQX2M \bits_reg[2]  ( .D(n7), .SI(n5), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(bits[2]) );
  SDFFRQX2M \bits_reg[1]  ( .D(n9), .SI(n4), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(bits[1]) );
  SDFFRQX2M \bits_reg[0]  ( .D(n11), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(bits[0]) );
  INVX2M U2 ( .A(data_samp_en), .Y(n3) );
  OAI22XLM U3 ( .A0(data_samp_en), .A1(n5), .B0(n4), .B1(n3), .Y(n9) );
  AOI21X2M U4 ( .A0(n1), .A1(n2), .B0(data_samp_en), .Y(sampled_bit) );
  NAND2X2M U5 ( .A(bits[1]), .B(bits[0]), .Y(n1) );
  OAI21X2M U6 ( .A0(bits[0]), .A1(bits[1]), .B0(bits[2]), .Y(n2) );
  OAI2BB2XLM U7 ( .B0(data_samp_en), .B1(n4), .A0N(RX_in), .A1N(data_samp_en), 
        .Y(n11) );
  OAI2BB2X1M U8 ( .B0(n5), .B1(n3), .A0N(n3), .A1N(bits[2]), .Y(n7) );
  INVX2M U9 ( .A(bits[0]), .Y(n4) );
  INVX2M U10 ( .A(bits[1]), .Y(n5) );
endmodule


module Deserializer_test_1 ( sampled_bit, clk, rst, deser_en, bits_counter, 
        Data, test_si, test_se );
  input [2:0] bits_counter;
  output [7:0] Data;
  input sampled_bit, clk, rst, deser_en, test_si, test_se;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n9, n10;

  SDFFRQX2M \Data_reg[3]  ( .D(n30), .SI(Data[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[3]) );
  SDFFRQX2M \Data_reg[2]  ( .D(n29), .SI(Data[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[2]) );
  SDFFRQX2M \Data_reg[0]  ( .D(n27), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[0]) );
  SDFFRQX2M \Data_reg[6]  ( .D(n33), .SI(Data[5]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[6]) );
  SDFFRQX2M \Data_reg[5]  ( .D(n32), .SI(Data[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[5]) );
  SDFFRQX2M \Data_reg[1]  ( .D(n28), .SI(Data[0]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[1]) );
  SDFFRQX2M \Data_reg[4]  ( .D(n31), .SI(Data[3]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[4]) );
  SDFFRQX2M \Data_reg[7]  ( .D(n34), .SI(Data[6]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[7]) );
  NAND2BX2M U10 ( .AN(n23), .B(sampled_bit), .Y(n21) );
  NAND2BX2M U11 ( .AN(n14), .B(sampled_bit), .Y(n12) );
  NAND2X2M U12 ( .A(n10), .B(n9), .Y(n11) );
  OAI21X2M U13 ( .A0(n12), .A1(n15), .B0(n16), .Y(n28) );
  OAI21X2M U14 ( .A0(n14), .A1(n15), .B0(Data[1]), .Y(n16) );
  OAI21X2M U15 ( .A0(n12), .A1(n17), .B0(n18), .Y(n29) );
  OAI21X2M U16 ( .A0(n14), .A1(n17), .B0(Data[2]), .Y(n18) );
  OAI21X2M U17 ( .A0(n12), .A1(n19), .B0(n20), .Y(n30) );
  OAI21X2M U18 ( .A0(n14), .A1(n19), .B0(Data[3]), .Y(n20) );
  OAI21X2M U19 ( .A0(n11), .A1(n12), .B0(n13), .Y(n27) );
  OAI21X2M U20 ( .A0(n14), .A1(n11), .B0(Data[0]), .Y(n13) );
  OAI21X2M U21 ( .A0(n11), .A1(n21), .B0(n22), .Y(n31) );
  OAI21X2M U22 ( .A0(n11), .A1(n23), .B0(Data[4]), .Y(n22) );
  OAI21X2M U23 ( .A0(n15), .A1(n21), .B0(n24), .Y(n32) );
  OAI21X2M U24 ( .A0(n15), .A1(n23), .B0(Data[5]), .Y(n24) );
  OAI21X2M U25 ( .A0(n17), .A1(n21), .B0(n25), .Y(n33) );
  OAI21X2M U26 ( .A0(n17), .A1(n23), .B0(Data[6]), .Y(n25) );
  OAI21X2M U27 ( .A0(n19), .A1(n21), .B0(n26), .Y(n34) );
  OAI21X2M U28 ( .A0(n19), .A1(n23), .B0(Data[7]), .Y(n26) );
  NAND2X2M U29 ( .A(bits_counter[2]), .B(deser_en), .Y(n23) );
  NAND2BX2M U30 ( .AN(bits_counter[2]), .B(deser_en), .Y(n14) );
  NAND2X2M U31 ( .A(bits_counter[0]), .B(n10), .Y(n15) );
  NAND2X2M U32 ( .A(bits_counter[1]), .B(n9), .Y(n17) );
  NAND2X2M U33 ( .A(bits_counter[1]), .B(bits_counter[0]), .Y(n19) );
  INVX2M U34 ( .A(bits_counter[0]), .Y(n9) );
  INVX2M U35 ( .A(bits_counter[1]), .Y(n10) );
endmodule


module RX_test_1 ( clk_Top, rst_Top, RX_IN_Top, Prescale_Top, PAR_EN_TOP, 
        PAR_TYP_Top, Data_Valid_Top, P_Data_Top, test_si, test_se );
  input [4:0] Prescale_Top;
  output [7:0] P_Data_Top;
  input clk_Top, rst_Top, RX_IN_Top, PAR_EN_TOP, PAR_TYP_Top, test_si, test_se;
  output Data_Valid_Top;
  wire   bit_cnt_Top, data_finish_flag_Top, Error_Top, Compared_bit_Top,
         enable_Top, bits_counter_en_Top, Error_Unit_En_Top, data_samp_en_Top,
         deser_en_FSM_Top, sampled_bit_Top, n1;
  wire   [4:0] edge_cnt_Top;
  wire   [2:0] bits_counter_Top;

  RX_FSM_test_1 u_RX_FSM ( .clk(clk_Top), .rst(rst_Top), .RX_IN(RX_IN_Top), 
        .PAR_EN(PAR_EN_TOP), .Prescale(Prescale_Top[4:3]), .bit_cnt(
        bit_cnt_Top), .data_finish_flag(data_finish_flag_Top), .edge_cnt(
        edge_cnt_Top), .P_DATA(P_Data_Top), .PAR_TYP(PAR_TYP_Top), .Error(
        Error_Top), .Compared_bit(Compared_bit_Top), .counter_en(enable_Top), 
        .bits_counter_en(bits_counter_en_Top), .Error_Unit_En(
        Error_Unit_En_Top), .data_samp_en(data_samp_en_Top), .deser_en(
        deser_en_FSM_Top), .data_valid(Data_Valid_Top), .test_se(test_se) );
  Error_Unit u_Error_Unit ( .clk(clk_Top), .rst(rst_Top), .sampled_bit(
        sampled_bit_Top), .Compared_bit(Compared_bit_Top), .Enable(
        Error_Unit_En_Top), .Error(Error_Top) );
  Counter_Unit_test_1 u_Counter_Unit ( .clk(clk_Top), .rst(rst_Top), .enable(
        enable_Top), .Data_enable(bits_counter_en_Top), .Prescale(Prescale_Top), .Finish_edge(bit_cnt_Top), .Finish_data(data_finish_flag_Top), 
        .bits_counter(bits_counter_Top), .edge_cnt(edge_cnt_Top), .test_si(
        test_si), .test_se(test_se) );
  Data_Sampling_test_1 u_Data_Sampling ( .RX_in(RX_IN_Top), .clk(clk_Top), 
        .rst(rst_Top), .data_samp_en(data_samp_en_Top), .sampled_bit(
        sampled_bit_Top), .test_si(bit_cnt_Top), .test_so(n1), .test_se(
        test_se) );
  Deserializer_test_1 u_Deserializer ( .sampled_bit(sampled_bit_Top), .clk(
        clk_Top), .rst(rst_Top), .deser_en(deser_en_FSM_Top), .bits_counter(
        bits_counter_Top), .Data(P_Data_Top), .test_si(n1), .test_se(test_se)
         );
endmodule


module Counter_test_1 ( RST, clk, Ser_En, Counter, Finish, test_si, test_se );
  output [2:0] Counter;
  input RST, clk, Ser_En, test_si, test_se;
  output Finish;
  wire   N8, N9, N10, N12, n5, n6, n7, n4;
  assign Finish = N12;

  SDFFRQX2M \Counter_reg[2]  ( .D(N10), .SI(Counter[1]), .SE(test_se), .CK(clk), .RN(RST), .Q(Counter[2]) );
  SDFFRQX2M \Counter_reg[1]  ( .D(N9), .SI(Counter[0]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(Counter[1]) );
  SDFFRQX2M \Counter_reg[0]  ( .D(N8), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(Counter[0]) );
  INVX2M U6 ( .A(Ser_En), .Y(n4) );
  NOR2X2M U7 ( .A(Counter[0]), .B(n4), .Y(N8) );
  NOR2X2M U8 ( .A(n5), .B(n4), .Y(N9) );
  XNOR2X2M U9 ( .A(Counter[0]), .B(Counter[1]), .Y(n5) );
  NOR2X2M U10 ( .A(n7), .B(n4), .Y(N10) );
  CLKXOR2X2M U11 ( .A(n6), .B(Counter[2]), .Y(n7) );
  NAND2X2M U12 ( .A(Counter[0]), .B(Counter[1]), .Y(n6) );
  NOR2BX2M U13 ( .AN(Counter[2]), .B(n6), .Y(N12) );
endmodule


module Serializer_test_1 ( P_Data, clk, rst, Ser_En, Data_Valid, Counter, 
        Ser_Data, test_so, test_se );
  input [7:0] P_Data;
  input [2:0] Counter;
  input clk, rst, Ser_En, Data_Valid, test_se;
  output Ser_Data, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;
  wire   [7:1] Data;
  assign test_so = Data[7];

  SDFFRQX2M \Data_reg[6]  ( .D(n20), .SI(Data[5]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[6]) );
  SDFFRQX2M \Data_reg[5]  ( .D(n21), .SI(Data[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[5]) );
  SDFFRQX2M \Data_reg[4]  ( .D(n22), .SI(Data[3]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[4]) );
  SDFFRQX2M \Data_reg[3]  ( .D(n23), .SI(Data[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[3]) );
  SDFFRQX2M \Data_reg[2]  ( .D(n24), .SI(Data[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[2]) );
  SDFFRQX2M \Data_reg[1]  ( .D(n25), .SI(Ser_Data), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[1]) );
  SDFFRQX2M \Data_reg[7]  ( .D(n19), .SI(Data[6]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Data[7]) );
  SDFFRQX2M \Data_reg[0]  ( .D(n18), .SI(Counter[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Ser_Data) );
  NOR2BX2M U11 ( .AN(Ser_En), .B(Data_Valid), .Y(n11) );
  NOR2X2M U12 ( .A(Data_Valid), .B(n11), .Y(n9) );
  OAI2BB1X2M U13 ( .A0N(Ser_Data), .A1N(n9), .B0(n10), .Y(n18) );
  AOI22X1M U14 ( .A0(Data[1]), .A1(n11), .B0(P_Data[0]), .B1(Data_Valid), .Y(
        n10) );
  OAI2BB1X2M U15 ( .A0N(Data[1]), .A1N(n9), .B0(n17), .Y(n25) );
  AOI22X1M U16 ( .A0(Data[2]), .A1(n11), .B0(P_Data[1]), .B1(Data_Valid), .Y(
        n17) );
  OAI2BB1X2M U17 ( .A0N(n9), .A1N(Data[2]), .B0(n16), .Y(n24) );
  AOI22X1M U18 ( .A0(Data[3]), .A1(n11), .B0(P_Data[2]), .B1(Data_Valid), .Y(
        n16) );
  OAI2BB1X2M U19 ( .A0N(n9), .A1N(Data[3]), .B0(n15), .Y(n23) );
  AOI22X1M U20 ( .A0(Data[4]), .A1(n11), .B0(P_Data[3]), .B1(Data_Valid), .Y(
        n15) );
  OAI2BB1X2M U21 ( .A0N(n9), .A1N(Data[4]), .B0(n14), .Y(n22) );
  AOI22X1M U22 ( .A0(Data[5]), .A1(n11), .B0(P_Data[4]), .B1(Data_Valid), .Y(
        n14) );
  OAI2BB1X2M U23 ( .A0N(n9), .A1N(Data[5]), .B0(n13), .Y(n21) );
  AOI22X1M U24 ( .A0(Data[6]), .A1(n11), .B0(P_Data[5]), .B1(Data_Valid), .Y(
        n13) );
  OAI2BB1X2M U25 ( .A0N(n9), .A1N(Data[6]), .B0(n12), .Y(n20) );
  AOI22X1M U26 ( .A0(Data[7]), .A1(n11), .B0(P_Data[6]), .B1(Data_Valid), .Y(
        n12) );
  AO22X1M U27 ( .A0(n9), .A1(Data[7]), .B0(P_Data[7]), .B1(Data_Valid), .Y(n19) );
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
  wire   \Current_State[0] , n5, n6, n7;
  wire   [1:0] Next_State;

  SDFFRQX2M \Current_State_reg[0]  ( .D(Next_State[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(RST), .Q(\Current_State[0] ) );
  SDFFRQX2M \Current_State_reg[1]  ( .D(Next_State[1]), .SI(Mux_Sel[0]), .SE(
        test_se), .CK(clk), .RN(RST), .Q(Mux_Sel[1]) );
  INVX2M U5 ( .A(n5), .Y(Ser_En) );
  NAND2X2M U6 ( .A(n7), .B(n5), .Y(Busy) );
  CLKXOR2X2M U7 ( .A(Mux_Sel[1]), .B(Mux_Sel[0]), .Y(n7) );
  NAND2X2M U8 ( .A(n7), .B(\Current_State[0] ), .Y(n5) );
  INVX2M U9 ( .A(\Current_State[0] ), .Y(Mux_Sel[0]) );
  OAI2BB2X1M U10 ( .B0(Mux_Sel[0]), .B1(n6), .A0N(Data_Valid), .A1N(Mux_Sel[0]), .Y(Next_State[0]) );
  AOI2B1X1M U11 ( .A1N(Par_En), .A0(n6), .B0(Mux_Sel[0]), .Y(Next_State[1]) );
  AND2X2M U12 ( .A(Ser_done), .B(Mux_Sel[1]), .Y(n6) );
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
  wire   n2, n1, n3, n4, n5;

  AND3X2M U3 ( .A(Mux_Sel[1]), .B(n5), .C(Ser_Data), .Y(n1) );
  CLKINVX12M U4 ( .A(n3), .Y(TX_Out) );
  NOR2XLM U5 ( .A(n2), .B(n5), .Y(n4) );
  NOR2XLM U6 ( .A(n4), .B(n1), .Y(n3) );
  INVX2M U7 ( .A(Mux_Sel[0]), .Y(n5) );
  NOR2BX2M U8 ( .AN(Mux_Sel[1]), .B(Par_Bit), .Y(n2) );
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


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        test_si, test_so, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [4:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, test_so;


  RX_test_1 u_RX1 ( .clk_Top(RX_CLK), .rst_Top(RST), .RX_IN_Top(RX_IN_S), 
        .Prescale_Top(Prescale), .PAR_EN_TOP(parity_enable), .PAR_TYP_Top(
        parity_type), .Data_Valid_Top(RX_OUT_V), .P_Data_Top(RX_OUT_P), 
        .test_si(test_si), .test_se(test_se) );
  UART_TX_Top_test_1 u_UART_TX_Top1 ( .clk(TX_CLK), .RST(RST), .P_Data_UART(
        TX_IN_P), .Data_Valid_UART(TX_IN_V), .Par_En_UART(parity_enable), 
        .Par_Type_UART(parity_type), .TX_Out_UART(TX_OUT_S), .Busy_UART(
        TX_OUT_V), .test_si(RX_OUT_V), .test_so(test_so), .test_se(test_se) );
endmodule


module Multi_Flop_Synchronizer_test_1 ( async, clk, rst, sync, test_si, 
        test_se );
  input async, clk, rst, test_si, test_se;
  output sync;
  wire   \Q[0] ;

  SDFFRQX1M sync_reg ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(clk), .RN(
        rst), .Q(sync) );
  SDFFRQX1M \Q_reg[0]  ( .D(async), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(\Q[0] ) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_test_3 ( async, clk, rst, sync, 
        test_si, test_se );
  input async, clk, rst, test_si, test_se;
  output sync;
  wire   \Q[0] ;

  SDFFRQX2M \Q_reg[0]  ( .D(async), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(\Q[0] ) );
  SDFFRQX1M sync_reg ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(clk), .RN(
        rst), .Q(sync) );
endmodule


module Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_test_1 ( 
        ASYNC, CLK, RST, SYNC, test_si, test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;


  Multi_Flop_Synchronizer_NUM_STAGES2_test_3 \genblk1[0].u0  ( .async(ASYNC[0]), .clk(CLK), .rst(RST), .sync(SYNC[0]), .test_si(test_si), .test_se(test_se)
         );
endmodule


module Pulse_Gen_test_1 ( Signal_in, clk, rst, Pulse_out, test_so, test_se );
  input Signal_in, clk, rst, test_se;
  output Pulse_out, test_so;
  wire   Q;
  assign test_so = Q;

  SDFFRQX2M Q_reg ( .D(Signal_in), .SI(Signal_in), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(Q) );
  NOR2BX2M U4 ( .AN(Signal_in), .B(Q), .Y(Pulse_out) );
endmodule


module Data_Sync_test_1 ( Unsync_Bus, Enable, clk, rst, Sync_Bus, Enable_Pulse, 
        test_si, test_so, test_se );
  input [7:0] Unsync_Bus;
  output [7:0] Sync_Bus;
  input Enable, clk, rst, test_si, test_se;
  output Enable_Pulse, test_so;
  wire   Pulse_out, Enable_Sync, n1, n19, n21, n23, n25, n27, n29, n31, n33;

  SDFFRQX2M \Sync_Bus_reg[1]  ( .D(n31), .SI(Sync_Bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[1]) );
  SDFFRQX2M \Sync_Bus_reg[0]  ( .D(n33), .SI(Enable_Pulse), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[0]) );
  SDFFRQX2M \Sync_Bus_reg[3]  ( .D(n27), .SI(Sync_Bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[3]) );
  SDFFRQX2M \Sync_Bus_reg[2]  ( .D(n29), .SI(Sync_Bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[2]) );
  SDFFRQX2M Enable_Pulse_reg ( .D(Pulse_out), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Enable_Pulse) );
  SDFFRQX2M \Sync_Bus_reg[5]  ( .D(n23), .SI(Sync_Bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[5]) );
  SDFFRQX2M \Sync_Bus_reg[4]  ( .D(n25), .SI(Sync_Bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[4]) );
  SDFFRQX2M \Sync_Bus_reg[7]  ( .D(n19), .SI(Sync_Bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[7]) );
  SDFFRQX2M \Sync_Bus_reg[6]  ( .D(n21), .SI(Sync_Bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(Sync_Bus[6]) );
  INVX2M U3 ( .A(Pulse_out), .Y(n1) );
  AO22X1M U4 ( .A0(Unsync_Bus[0]), .A1(Pulse_out), .B0(Sync_Bus[0]), .B1(n1), 
        .Y(n33) );
  AO22X1M U5 ( .A0(Unsync_Bus[1]), .A1(Pulse_out), .B0(Sync_Bus[1]), .B1(n1), 
        .Y(n31) );
  AO22X1M U6 ( .A0(Unsync_Bus[2]), .A1(Pulse_out), .B0(Sync_Bus[2]), .B1(n1), 
        .Y(n29) );
  AO22X1M U7 ( .A0(Unsync_Bus[3]), .A1(Pulse_out), .B0(Sync_Bus[3]), .B1(n1), 
        .Y(n27) );
  AO22X1M U8 ( .A0(Unsync_Bus[4]), .A1(Pulse_out), .B0(Sync_Bus[4]), .B1(n1), 
        .Y(n25) );
  AO22X1M U9 ( .A0(Unsync_Bus[5]), .A1(Pulse_out), .B0(Sync_Bus[5]), .B1(n1), 
        .Y(n23) );
  AO22X1M U10 ( .A0(Unsync_Bus[6]), .A1(Pulse_out), .B0(Sync_Bus[6]), .B1(n1), 
        .Y(n21) );
  AO22X1M U11 ( .A0(Unsync_Bus[7]), .A1(Pulse_out), .B0(Sync_Bus[7]), .B1(n1), 
        .Y(n19) );
  Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_test_1 u_Multi_Flop_Synchronizer_Multi_bits ( 
        .ASYNC(Enable), .CLK(clk), .RST(rst), .SYNC(Enable_Sync), .test_si(
        Sync_Bus[7]), .test_se(test_se) );
  Pulse_Gen_test_1 u_Pulse_Gen ( .Signal_in(Enable_Sync), .clk(clk), .rst(rst), 
        .Pulse_out(Pulse_out), .test_so(test_so), .test_se(test_se) );
endmodule


module Clock_Divider_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, n17, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n3, n4, n5, n6, n7, n14, n15, n16;
  wire   [3:0] couter;
  assign test_so = n6;

  SDFFRQX2M div_clk_reg ( .D(n42), .SI(n16), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \couter_reg[0]  ( .D(n46), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(couter[0]) );
  SDFFRQX2M \couter_reg[1]  ( .D(n44), .SI(n4), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(couter[1]) );
  SDFFRQX2M \couter_reg[2]  ( .D(n3), .SI(couter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(couter[2]) );
  SDFFRX1M \couter_reg[3]  ( .D(n43), .SI(n14), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(n16), .QN(n17) );
  OAI31X1M U9 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[3]), .A2(i_div_ratio[2]), 
        .B0(i_clk_en), .Y(n23) );
  NOR3X2M U12 ( .A(n23), .B(n4), .C(n29), .Y(n26) );
  AOI21X2M U13 ( .A0(n4), .A1(n5), .B0(n23), .Y(n30) );
  INVX2M U14 ( .A(n23), .Y(n15) );
  OAI2BB2X1M U15 ( .B0(n30), .B1(n7), .A0N(n7), .A1N(n26), .Y(n44) );
  INVX2M U16 ( .A(n29), .Y(n5) );
  OAI21X2M U17 ( .A0(i_div_ratio[0]), .A1(n33), .B0(n32), .Y(n29) );
  OAI32XLM U18 ( .A0(n29), .A1(couter[0]), .A2(n23), .B0(n15), .B1(n4), .Y(n46) );
  OAI21X2M U19 ( .A0(couter[1]), .A1(n29), .B0(n30), .Y(n27) );
  CLKXOR2X2M U20 ( .A(div_clk), .B(n22), .Y(n42) );
  NOR2XLM U21 ( .A(n5), .B(n23), .Y(n22) );
  NAND4X2M U22 ( .A(n36), .B(n39), .C(n40), .D(n17), .Y(n33) );
  CLKXOR2X2M U23 ( .A(n41), .B(couter[2]), .Y(n40) );
  XOR3XLM U24 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .C(couter[1]), .Y(n39)
         );
  OAI21X2M U25 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0(i_div_ratio[3]), 
        .Y(n41) );
  OAI21X2M U26 ( .A0(n24), .A1(n17), .B0(n25), .Y(n43) );
  NAND4X2M U27 ( .A(n26), .B(couter[2]), .C(couter[1]), .D(n17), .Y(n25) );
  NOR2X2M U28 ( .A(n14), .B(n27), .Y(n24) );
  NAND2X2M U29 ( .A(i_div_ratio[0]), .B(n34), .Y(n32) );
  OAI32X1M U30 ( .A0(n35), .A1(n36), .A2(n37), .B0(n33), .B1(n6), .Y(n34) );
  CLKXOR2X2M U31 ( .A(i_div_ratio[3]), .B(couter[2]), .Y(n37) );
  NAND3X2M U32 ( .A(n17), .B(n6), .C(n38), .Y(n35) );
  CLKXOR2X2M U33 ( .A(i_div_ratio[1]), .B(couter[0]), .Y(n36) );
  INVX2M U34 ( .A(couter[1]), .Y(n7) );
  INVX2M U35 ( .A(couter[0]), .Y(n4) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[2]), .B(n7), .Y(n38) );
  INVX2M U37 ( .A(n28), .Y(n3) );
  AOI32X1M U38 ( .A0(n26), .A1(n14), .A2(couter[1]), .B0(n27), .B1(couter[2]), 
        .Y(n28) );
  CLKXOR2X2M U40 ( .A(odd_edge_tog), .B(n31), .Y(n45) );
  NOR2XLM U41 ( .A(n23), .B(n32), .Y(n31) );
  INVX2M U42 ( .A(couter[2]), .Y(n14) );
  MX2X2M U43 ( .A(i_ref_clk), .B(div_clk), .S0(n15), .Y(o_div_clk) );
  SDFFSX1M odd_edge_tog_reg ( .D(n45), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(odd_edge_tog), .QN(n6) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_test_1 ( async, clk, rst, sync, 
        test_si, test_se );
  input async, clk, rst, test_si, test_se;
  output sync;
  wire   \Q[0] ;

  SDFFRQX2M \Q_reg[0]  ( .D(async), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(\Q[0] ) );
  SDFFRQX1M sync_reg ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(clk), .RN(
        rst), .Q(sync) );
endmodule


module RST_Sync_test_0 ( RST, clk, Sync_RST, test_si, test_se );
  input RST, clk, test_si, test_se;
  output Sync_RST;


  Multi_Flop_Synchronizer_NUM_STAGES2_test_1 u_Multi_Flop_Synchronizer ( 
        .async(1'b1), .clk(clk), .rst(RST), .sync(Sync_RST), .test_si(test_si), 
        .test_se(test_se) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_test_2 ( async, clk, rst, sync, 
        test_si, test_se );
  input async, clk, rst, test_si, test_se;
  output sync;
  wire   \Q[0] ;

  SDFFRQX2M sync_reg ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(clk), .RN(
        rst), .Q(sync) );
  SDFFRQX2M \Q_reg[0]  ( .D(async), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(\Q[0] ) );
endmodule


module RST_Sync_test_1 ( RST, clk, Sync_RST, test_si, test_se );
  input RST, clk, test_si, test_se;
  output Sync_RST;


  Multi_Flop_Synchronizer_NUM_STAGES2_test_2 u_Multi_Flop_Synchronizer ( 
        .async(1'b1), .clk(clk), .rst(RST), .sync(Sync_RST), .test_si(test_si), 
        .test_se(test_se) );
endmodule


module Design_Top ( scan_clk, scan_rst, test_mode, SE, SI, SO, REF_CLK, 
        UART_CLK, RST, RX_IN, TX_OUT );
  input [2:0] SI;
  output [2:0] SO;
  input scan_clk, scan_rst, test_mode, SE, REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   REF_CLK_MUX, UART_CLK_MUX, TX_CLK, TX_CLK_MUX, RST_MUX,
         REF_CLK_Sync_RST, REF_CLK_Sync_RST_MUX, UART_CLK_Sync_RST,
         UART_CLK_Sync_RST_MUX, ALU_Out_Valid_Top, ALU_Enable_Top,
         CLK_Gate_En_Top, REG_WrEn_Top, REG_RdEn_Top, RX_Valid_Syn,
         RX_Valid_Top, REG_Rd_Valid_Top, Tx_Busy_Top, Tx_Valid_Top_UnSyn,
         ALU_CLK, TX_IN_V_Top_Syn, Tx_Busy_UnSyn, n3, n4, n5, n6, n11, n12;
  wire   [3:0] ALU_Fun_Top;
  wire   [3:0] REG_Address_Top;
  wire   [7:0] REG_WrData_Top;
  wire   [7:0] Rx_P_Data_Syn;
  wire   [7:0] Rx_P_Data_Top;
  wire   [15:0] ALU_Out_Top;
  wire   [7:0] REG_RdData_Top;
  wire   [7:0] Tx_P_Data_Top_UnSyn;
  wire   [7:0] Operand_A_Top;
  wire   [7:0] Operand_B_Top;
  wire   [6:0] REG2_UART_Config_Top;
  wire   [3:0] REG3_DIV_Top;
  wire   [7:0] TX_IN_P_Top_Syn;

  MUX2_1 u_MUX2_TX_CLOCK ( .IN0(REF_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(REF_CLK_MUX) );
  MUX2_4 u_MUX2_RX_CLOCK ( .IN0(UART_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(UART_CLK_MUX) );
  MUX2_3 u_MUX2 ( .IN0(TX_CLK), .IN1(scan_clk), .SL(test_mode), .MUX_out(
        TX_CLK_MUX) );
  MUX2_2 u_MUX2_RST ( .IN0(RST), .IN1(scan_rst), .SL(test_mode), .MUX_out(
        RST_MUX) );
  MUX2_0 u_MUX2_REF_RST ( .IN0(REF_CLK_Sync_RST), .IN1(scan_rst), .SL(
        test_mode), .MUX_out(REF_CLK_Sync_RST_MUX) );
  MUX2_5 u_MUX2_UART_RST ( .IN0(UART_CLK_Sync_RST), .IN1(scan_rst), .SL(
        test_mode), .MUX_out(UART_CLK_Sync_RST_MUX) );
  RX_Controler_00000008_00000010_00000004_0000000e_00000004_test_1 u_RX_Controler ( 
        .clk(REF_CLK_MUX), .rst(REF_CLK_Sync_RST_MUX), .ALU_Valid(
        ALU_Out_Valid_Top), .ALU_Enable(ALU_Enable_Top), .ALU_Fun(ALU_Fun_Top), 
        .CLK_Gate_En(CLK_Gate_En_Top), .REG_Address(REG_Address_Top), 
        .REG_WrEn(REG_WrEn_Top), .REG_RdEn(REG_RdEn_Top), .REG_WrData(
        REG_WrData_Top), .Rx_P_Data(Rx_P_Data_Syn), .RX_Valid(RX_Valid_Syn), 
        .test_si(UART_CLK_Sync_RST), .test_so(n5), .test_se(SE) );
  Data_Sync_test_0 u_Data_Sync ( .Unsync_Bus(Rx_P_Data_Top), .Enable(
        RX_Valid_Top), .clk(REF_CLK_MUX), .rst(REF_CLK_Sync_RST_MUX), 
        .Sync_Bus(Rx_P_Data_Syn), .Enable_Pulse(RX_Valid_Syn), .test_si(n12), 
        .test_so(n11), .test_se(SE) );
  Tx_Controler_00000008_00000010_test_1 u_Tx_Controler ( .clk(REF_CLK_MUX), 
        .rst(REF_CLK_Sync_RST_MUX), .ALU_Out(ALU_Out_Top), .ALU_Valid(
        ALU_Out_Valid_Top), .REG_RdData(REG_RdData_Top), .REG_Rd_Valid(
        REG_Rd_Valid_Top), .Tx_Busy(Tx_Busy_Top), .Tx_P_Data(
        Tx_P_Data_Top_UnSyn), .Tx_Valid(Tx_Valid_Top_UnSyn), .test_si(n5), 
        .test_so(n4), .test_se(SE) );
  ALU_00000008_00000010_0000000e_00000004_test_1 u_ALU ( .clk(ALU_CLK), .rst(
        REF_CLK_Sync_RST_MUX), .Operand_A(Operand_A_Top), .Operand_B(
        Operand_B_Top), .ALU_Fun(ALU_Fun_Top), .Enable(ALU_Enable_Top), 
        .ALU_Out(ALU_Out_Top), .Out_Valid(ALU_Out_Valid_Top), .test_si(SI[2]), 
        .test_se(SE) );
  Clock_Gating u_Clock_Gating ( .clk(REF_CLK_MUX), .En(CLK_Gate_En_Top), 
        .test_mode(test_mode), .Gated_clk(ALU_CLK) );
  REG_File_00000008_00000010_00000004_00000000_00000000_0000001c_00000008_test_1 u_REG_File ( 
        .clk(REF_CLK_MUX), .rst(REF_CLK_Sync_RST_MUX), .Address(
        REG_Address_Top), .WrEn(REG_WrEn_Top), .RdEn(REG_RdEn_Top), .WrData(
        REG_WrData_Top), .RdData(REG_RdData_Top), .RdData_Valid(
        REG_Rd_Valid_Top), .REG0_ALU_A(Operand_A_Top), .REG1_ALU_B(
        Operand_B_Top), .REG2_UART(REG2_UART_Config_Top), .REG3_DIV(
        REG3_DIV_Top), .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(
        REF_CLK_Sync_RST), .test_so3(n6), .test_so2(SO[1]), .test_so1(SO[2]), 
        .test_se(SE) );
  UART_test_1 u_UART ( .RST(UART_CLK_Sync_RST_MUX), .TX_CLK(TX_CLK_MUX), 
        .RX_CLK(UART_CLK_MUX), .RX_IN_S(RX_IN), .RX_OUT_P(Rx_P_Data_Top), 
        .RX_OUT_V(RX_Valid_Top), .TX_IN_P(TX_IN_P_Top_Syn), .TX_IN_V(
        TX_IN_V_Top_Syn), .TX_OUT_S(TX_OUT), .TX_OUT_V(Tx_Busy_UnSyn), 
        .Prescale(REG2_UART_Config_Top[6:2]), .parity_enable(
        REG2_UART_Config_Top[0]), .parity_type(REG2_UART_Config_Top[1]), 
        .test_si(n3), .test_so(SO[0]), .test_se(SE) );
  Multi_Flop_Synchronizer_test_1 u_Busy_Syn ( .async(Tx_Busy_UnSyn), .clk(
        REF_CLK_MUX), .rst(REF_CLK_Sync_RST_MUX), .sync(Tx_Busy_Top), 
        .test_si(ALU_Out_Valid_Top), .test_se(SE) );
  Data_Sync_test_1 u_Tx_Data_Syn ( .Unsync_Bus(Tx_P_Data_Top_UnSyn), .Enable(
        Tx_Valid_Top_UnSyn), .clk(TX_CLK_MUX), .rst(UART_CLK_Sync_RST_MUX), 
        .Sync_Bus(TX_IN_P_Top_Syn), .Enable_Pulse(TX_IN_V_Top_Syn), .test_si(
        n4), .test_so(n3), .test_se(SE) );
  Clock_Divider_test_1 u_Clock_Divider ( .i_ref_clk(UART_CLK_MUX), .i_rst_n(
        UART_CLK_Sync_RST_MUX), .i_clk_en(1'b1), .i_div_ratio(REG3_DIV_Top), 
        .o_div_clk(TX_CLK), .test_si(Tx_Busy_Top), .test_so(n12), .test_se(SE)
         );
  RST_Sync_test_0 u_REF_CLK_RST_SYN ( .RST(RST_MUX), .clk(REF_CLK_MUX), 
        .Sync_RST(REF_CLK_Sync_RST), .test_si(n11), .test_se(SE) );
  RST_Sync_test_1 u_RST_Sync ( .RST(RST_MUX), .clk(UART_CLK_MUX), .Sync_RST(
        UART_CLK_Sync_RST), .test_si(n6), .test_se(SE) );
endmodule

