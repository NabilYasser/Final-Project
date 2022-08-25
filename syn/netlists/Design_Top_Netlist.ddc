/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Aug 25 03:45:01 2022
/////////////////////////////////////////////////////////////


module MUX2_5 ( IN0, IN1, SL, MUX_out );
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


module MUX2_1 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_0 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module RX_Controler_00000008_00000010_00000004_0000000e_00000004 ( clk, rst, 
        ALU_Valid, ALU_Enable, ALU_Fun, CLK_Gate_En, REG_Address, REG_WrEn, 
        REG_RdEn, REG_WrData, Rx_P_Data, RX_Valid );
  output [3:0] ALU_Fun;
  output [3:0] REG_Address;
  output [7:0] REG_WrData;
  input [7:0] Rx_P_Data;
  input clk, rst, ALU_Valid, RX_Valid;
  output ALU_Enable, CLK_Gate_En, REG_WrEn, REG_RdEn;
  wire   N88, N89, N90, N91, N92, N104, n1, n2, n3, n4, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n20, n21,
         n54;
  wire   [2:0] Current_State;
  wire   [2:0] Next_State;
  wire   [3:0] Saved_Data;

  DFFRQX1M \Saved_Data_reg[3]  ( .D(n53), .CK(clk), .RN(rst), .Q(Saved_Data[3]) );
  DFFRQX1M \Saved_Data_reg[2]  ( .D(n52), .CK(clk), .RN(rst), .Q(Saved_Data[2]) );
  DFFRQX1M \Saved_Data_reg[1]  ( .D(n51), .CK(clk), .RN(rst), .Q(Saved_Data[1]) );
  DFFRQX1M \Saved_Data_reg[0]  ( .D(n50), .CK(clk), .RN(rst), .Q(Saved_Data[0]) );
  DFFRQX1M \Current_State_reg[2]  ( .D(Next_State[2]), .CK(clk), .RN(rst), .Q(
        Current_State[2]) );
  DFFRQX1M \Current_State_reg[1]  ( .D(Next_State[1]), .CK(clk), .RN(rst), .Q(
        Current_State[1]) );
  DFFRQX1M \Current_State_reg[0]  ( .D(Next_State[0]), .CK(clk), .RN(rst), .Q(
        Current_State[0]) );
  NOR2X2M U3 ( .A(n11), .B(n47), .Y(ALU_Fun[1]) );
  NOR2X2M U4 ( .A(n9), .B(n47), .Y(ALU_Fun[3]) );
  NOR2X2M U5 ( .A(n12), .B(n47), .Y(ALU_Fun[0]) );
  NOR2X2M U6 ( .A(n10), .B(n47), .Y(ALU_Fun[2]) );
  MX2X2M U7 ( .A(n4), .B(Saved_Data[3]), .S0(Current_State[0]), .Y(
        REG_Address[3]) );
  CLKBUFX2M U8 ( .A(Current_State[2]), .Y(n5) );
  AOI21X2M U9 ( .A0(n24), .A1(RX_Valid), .B0(n25), .Y(n23) );
  INVX2M U10 ( .A(RX_Valid), .Y(n18) );
  NOR3X2M U11 ( .A(n20), .B(n5), .C(n21), .Y(n36) );
  NOR2X2M U12 ( .A(n23), .B(n12), .Y(REG_WrData[0]) );
  NOR2X2M U13 ( .A(n23), .B(n11), .Y(REG_WrData[1]) );
  NOR2X2M U14 ( .A(n23), .B(n10), .Y(REG_WrData[2]) );
  NOR2X2M U15 ( .A(n23), .B(n9), .Y(REG_WrData[3]) );
  NOR2X2M U16 ( .A(n23), .B(n8), .Y(REG_WrData[4]) );
  NOR2X2M U17 ( .A(n23), .B(n7), .Y(REG_WrData[7]) );
  NOR2X2M U18 ( .A(n28), .B(n18), .Y(n25) );
  OAI2B11X2M U19 ( .A1N(n33), .A0(n20), .B0(n37), .C0(n38), .Y(Next_State[0])
         );
  AOI31X2M U20 ( .A0(n12), .A1(n8), .A2(n35), .B0(n25), .Y(n37) );
  AOI21X2M U21 ( .A0(n36), .A1(n18), .B0(n27), .Y(n38) );
  INVX2M U22 ( .A(n23), .Y(REG_WrEn) );
  OAI21BX1M U23 ( .A0(n18), .A1(n12), .B0N(N92), .Y(N88) );
  OAI21X2M U24 ( .A0(n18), .A1(n11), .B0(n46), .Y(N89) );
  NAND3X2M U25 ( .A(n20), .B(n21), .C(n5), .Y(n28) );
  NAND4BX1M U26 ( .AN(n27), .B(n28), .C(n29), .D(n30), .Y(Next_State[2]) );
  NAND2BX2M U27 ( .AN(n36), .B(n29), .Y(n24) );
  INVX2M U28 ( .A(n41), .Y(n6) );
  NAND2X2M U29 ( .A(n54), .B(n18), .Y(N104) );
  INVX2M U30 ( .A(n46), .Y(n15) );
  INVX2M U31 ( .A(n47), .Y(ALU_Enable) );
  OAI2B2X1M U32 ( .A1N(n39), .A0(n40), .B0(n41), .B1(n42), .Y(n27) );
  NOR2BX2M U33 ( .AN(ALU_Valid), .B(n18), .Y(n40) );
  NOR3X2M U34 ( .A(Current_State[0]), .B(n5), .C(n21), .Y(n26) );
  NAND4X2M U35 ( .A(Rx_P_Data[6]), .B(Rx_P_Data[2]), .C(Rx_P_Data[4]), .D(n48), 
        .Y(n42) );
  NOR3X2M U36 ( .A(n12), .B(Rx_P_Data[5]), .C(Rx_P_Data[1]), .Y(n48) );
  NAND2X2M U37 ( .A(n39), .B(RX_Valid), .Y(n47) );
  NOR2X2M U38 ( .A(Current_State[1]), .B(n5), .Y(n33) );
  NAND4X2M U39 ( .A(n33), .B(n20), .C(RX_Valid), .D(n49), .Y(n41) );
  NOR2X2M U40 ( .A(n9), .B(n7), .Y(n49) );
  INVX2M U41 ( .A(Rx_P_Data[0]), .Y(n12) );
  NAND4X2M U42 ( .A(Rx_P_Data[6]), .B(Rx_P_Data[2]), .C(n6), .D(n34), .Y(n30)
         );
  NOR4X1M U43 ( .A(Rx_P_Data[5]), .B(Rx_P_Data[4]), .C(Rx_P_Data[1]), .D(
        Rx_P_Data[0]), .Y(n34) );
  INVX2M U44 ( .A(Rx_P_Data[1]), .Y(n11) );
  INVX2M U45 ( .A(Current_State[0]), .Y(n20) );
  AND2X2M U46 ( .A(Rx_P_Data[5]), .B(REG_WrEn), .Y(REG_WrData[5]) );
  AND2X2M U47 ( .A(Rx_P_Data[6]), .B(REG_WrEn), .Y(REG_WrData[6]) );
  INVX2M U48 ( .A(Rx_P_Data[3]), .Y(n9) );
  AND3X2M U49 ( .A(n5), .B(Current_State[0]), .C(n21), .Y(n39) );
  INVX2M U50 ( .A(Rx_P_Data[2]), .Y(n10) );
  INVX2M U51 ( .A(Current_State[1]), .Y(n21) );
  NAND3X2M U52 ( .A(Current_State[1]), .B(n20), .C(n5), .Y(n29) );
  AND3X2M U53 ( .A(n6), .B(Rx_P_Data[5]), .C(n43), .Y(n35) );
  NOR3X2M U54 ( .A(n11), .B(Rx_P_Data[6]), .C(Rx_P_Data[2]), .Y(n43) );
  NAND4X2M U55 ( .A(n31), .B(n32), .C(n30), .D(n22), .Y(Next_State[1]) );
  OAI21X2M U56 ( .A0(n26), .A1(n24), .B0(n18), .Y(n31) );
  NAND3X2M U57 ( .A(Rx_P_Data[4]), .B(Rx_P_Data[0]), .C(n35), .Y(n32) );
  NOR2X2M U58 ( .A(n54), .B(RX_Valid), .Y(N92) );
  NAND2X2M U59 ( .A(Saved_Data[1]), .B(n18), .Y(n46) );
  NAND2X2M U60 ( .A(Saved_Data[3]), .B(n18), .Y(n44) );
  NAND2X2M U61 ( .A(Saved_Data[2]), .B(n18), .Y(n45) );
  AND2X2M U62 ( .A(n26), .B(RX_Valid), .Y(REG_RdEn) );
  INVX2M U63 ( .A(Saved_Data[0]), .Y(n54) );
  INVX2M U64 ( .A(Rx_P_Data[7]), .Y(n7) );
  MX2X2M U65 ( .A(n2), .B(Saved_Data[1]), .S0(Current_State[0]), .Y(
        REG_Address[1]) );
  MX4X1M U66 ( .A(Saved_Data[1]), .B(n15), .C(N89), .D(n15), .S0(n5), .S1(
        Current_State[1]), .Y(n2) );
  MX2X2M U67 ( .A(n1), .B(Saved_Data[0]), .S0(Current_State[0]), .Y(
        REG_Address[0]) );
  MX4X1M U68 ( .A(Saved_Data[0]), .B(N104), .C(N88), .D(N92), .S0(n5), .S1(
        Current_State[1]), .Y(n1) );
  OAI211X2M U69 ( .A0(n41), .A1(n42), .B0(n16), .C0(n47), .Y(CLK_Gate_En) );
  INVX2M U70 ( .A(n25), .Y(n16) );
  MX4X1M U71 ( .A(Saved_Data[3]), .B(n13), .C(N91), .D(n13), .S0(n5), .S1(
        Current_State[1]), .Y(n4) );
  OAI21X2M U72 ( .A0(n18), .A1(n9), .B0(n44), .Y(N91) );
  INVX2M U73 ( .A(n44), .Y(n13) );
  MX2X2M U74 ( .A(n3), .B(Saved_Data[2]), .S0(Current_State[0]), .Y(
        REG_Address[2]) );
  MX4X1M U75 ( .A(Saved_Data[2]), .B(n14), .C(N90), .D(n14), .S0(n5), .S1(
        Current_State[1]), .Y(n3) );
  OAI21X2M U76 ( .A0(n18), .A1(n10), .B0(n45), .Y(N90) );
  INVX2M U77 ( .A(n45), .Y(n14) );
  NAND3X2M U78 ( .A(Current_State[0]), .B(n33), .C(RX_Valid), .Y(n22) );
  OAI2BB2X1M U79 ( .B0(n22), .B1(n12), .A0N(n22), .A1N(Saved_Data[0]), .Y(n50)
         );
  OAI2BB2X1M U80 ( .B0(n22), .B1(n11), .A0N(n22), .A1N(Saved_Data[1]), .Y(n51)
         );
  OAI2BB2X1M U81 ( .B0(n22), .B1(n10), .A0N(n22), .A1N(Saved_Data[2]), .Y(n52)
         );
  OAI2BB2X1M U82 ( .B0(n22), .B1(n9), .A0N(n22), .A1N(Saved_Data[3]), .Y(n53)
         );
  INVX2M U83 ( .A(Rx_P_Data[4]), .Y(n8) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_1 ( async, clk, rst, sync );
  input async, clk, rst;
  output sync;
  wire   \Q[0] ;

  DFFRQX2M \Q_reg[0]  ( .D(async), .CK(clk), .RN(rst), .Q(\Q[0] ) );
  DFFRQX1M sync_reg ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(sync) );
endmodule


module Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_1 ( ASYNC, 
        CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;


  Multi_Flop_Synchronizer_NUM_STAGES2_1 \genblk1[0].u0  ( .async(ASYNC[0]), 
        .clk(CLK), .rst(RST), .sync(SYNC[0]) );
endmodule


module Pulse_Gen_1 ( Signal_in, clk, rst, Pulse_out );
  input Signal_in, clk, rst;
  output Pulse_out;
  wire   Q;

  DFFRQX1M Q_reg ( .D(Signal_in), .CK(clk), .RN(rst), .Q(Q) );
  NOR2BX2M U3 ( .AN(Signal_in), .B(Q), .Y(Pulse_out) );
endmodule


module Data_Sync_1 ( Unsync_Bus, Enable, clk, rst, Sync_Bus, Enable_Pulse );
  input [7:0] Unsync_Bus;
  output [7:0] Sync_Bus;
  input Enable, clk, rst;
  output Enable_Pulse;
  wire   Pulse_out, Enable_Sync, n2, n3, n4, n5, n6, n7, n8, n9, n1;

  Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_1 u_Multi_Flop_Synchronizer_Multi_bits ( 
        .ASYNC(Enable), .CLK(clk), .RST(rst), .SYNC(Enable_Sync) );
  Pulse_Gen_1 u_Pulse_Gen ( .Signal_in(Enable_Sync), .clk(clk), .rst(rst), 
        .Pulse_out(Pulse_out) );
  DFFRQX1M Enable_Pulse_reg ( .D(Pulse_out), .CK(clk), .RN(rst), .Q(
        Enable_Pulse) );
  DFFRQX1M \Sync_Bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(Sync_Bus[7]) );
  DFFRQX1M \Sync_Bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(Sync_Bus[6]) );
  DFFRQX1M \Sync_Bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(Sync_Bus[5]) );
  DFFRQX1M \Sync_Bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(Sync_Bus[4]) );
  DFFRQX1M \Sync_Bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(Sync_Bus[3]) );
  DFFRQX1M \Sync_Bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(Sync_Bus[2]) );
  DFFRQX1M \Sync_Bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(Sync_Bus[1]) );
  DFFRQX1M \Sync_Bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(Sync_Bus[0]) );
  INVX2M U3 ( .A(Pulse_out), .Y(n1) );
  AO22X1M U4 ( .A0(Unsync_Bus[0]), .A1(Pulse_out), .B0(Sync_Bus[0]), .B1(n1), 
        .Y(n2) );
  AO22X1M U5 ( .A0(Unsync_Bus[1]), .A1(Pulse_out), .B0(Sync_Bus[1]), .B1(n1), 
        .Y(n3) );
  AO22X1M U6 ( .A0(Unsync_Bus[2]), .A1(Pulse_out), .B0(Sync_Bus[2]), .B1(n1), 
        .Y(n4) );
  AO22X1M U7 ( .A0(Unsync_Bus[3]), .A1(Pulse_out), .B0(Sync_Bus[3]), .B1(n1), 
        .Y(n5) );
  AO22X1M U8 ( .A0(Unsync_Bus[4]), .A1(Pulse_out), .B0(Sync_Bus[4]), .B1(n1), 
        .Y(n6) );
  AO22X1M U9 ( .A0(Unsync_Bus[5]), .A1(Pulse_out), .B0(Sync_Bus[5]), .B1(n1), 
        .Y(n7) );
  AO22X1M U10 ( .A0(Unsync_Bus[6]), .A1(Pulse_out), .B0(Sync_Bus[6]), .B1(n1), 
        .Y(n8) );
  AO22X1M U11 ( .A0(Unsync_Bus[7]), .A1(Pulse_out), .B0(Sync_Bus[7]), .B1(n1), 
        .Y(n9) );
endmodule


module Tx_Controler_00000008_00000010 ( clk, rst, ALU_Out, ALU_Valid, 
        REG_RdData, REG_Rd_Valid, Tx_Busy, Tx_P_Data, Tx_Valid, Clk_Div_En );
  input [15:0] ALU_Out;
  input [7:0] REG_RdData;
  output [7:0] Tx_P_Data;
  input clk, rst, ALU_Valid, REG_Rd_Valid, Tx_Busy;
  output Tx_Valid, Clk_Div_En;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n1, n2, n3, n4, n5, n23, n24;
  wire   [2:0] Current_State;
  wire   [2:0] Next_State;
  assign Clk_Div_En = 1'b1;

  DFFRQX1M \Current_State_reg[2]  ( .D(n3), .CK(clk), .RN(rst), .Q(
        Current_State[2]) );
  DFFRQX1M \Current_State_reg[1]  ( .D(Next_State[1]), .CK(clk), .RN(rst), .Q(
        Current_State[1]) );
  DFFRQX1M \Current_State_reg[0]  ( .D(Next_State[0]), .CK(clk), .RN(rst), .Q(
        Current_State[0]) );
  OR2X2M U3 ( .A(n8), .B(n1), .Y(n7) );
  INVX2M U4 ( .A(n18), .Y(n3) );
  OR2X2M U5 ( .A(n2), .B(n7), .Y(Tx_Valid) );
  OAI21X2M U6 ( .A0(Current_State[2]), .A1(n19), .B0(n18), .Y(Next_State[1])
         );
  AOI31X2M U7 ( .A0(n20), .A1(n24), .A2(ALU_Valid), .B0(Current_State[1]), .Y(
        n19) );
  INVX2M U8 ( .A(REG_Rd_Valid), .Y(n24) );
  INVX2M U9 ( .A(Current_State[1]), .Y(n5) );
  INVX2M U10 ( .A(Current_State[0]), .Y(n4) );
  NOR2X2M U11 ( .A(Tx_Busy), .B(n21), .Y(Next_State[0]) );
  AOI31X2M U12 ( .A0(n5), .A1(n23), .A2(n22), .B0(n7), .Y(n21) );
  CLKXOR2X2M U13 ( .A(REG_Rd_Valid), .B(ALU_Valid), .Y(n22) );
  CLKBUFX2M U14 ( .A(n10), .Y(n1) );
  NOR3X2M U15 ( .A(n5), .B(Current_State[2]), .C(n4), .Y(n10) );
  NOR3X2M U16 ( .A(Current_State[1]), .B(Current_State[2]), .C(n4), .Y(n8) );
  NOR2X2M U17 ( .A(Current_State[0]), .B(Tx_Busy), .Y(n20) );
  NAND2X2M U18 ( .A(n20), .B(Current_State[1]), .Y(n18) );
  INVX2M U19 ( .A(Current_State[2]), .Y(n23) );
  OAI2BB1X2M U20 ( .A0N(REG_RdData[0]), .A1N(n8), .B0(n17), .Y(Tx_P_Data[0])
         );
  AOI22X1M U21 ( .A0(ALU_Out[8]), .A1(n2), .B0(ALU_Out[0]), .B1(n1), .Y(n17)
         );
  OAI2BB1X2M U22 ( .A0N(REG_RdData[1]), .A1N(n8), .B0(n16), .Y(Tx_P_Data[1])
         );
  AOI22X1M U23 ( .A0(ALU_Out[9]), .A1(n2), .B0(ALU_Out[1]), .B1(n1), .Y(n16)
         );
  OAI2BB1X2M U24 ( .A0N(REG_RdData[2]), .A1N(n8), .B0(n15), .Y(Tx_P_Data[2])
         );
  AOI22X1M U25 ( .A0(ALU_Out[10]), .A1(n2), .B0(ALU_Out[2]), .B1(n1), .Y(n15)
         );
  OAI2BB1X2M U26 ( .A0N(REG_RdData[3]), .A1N(n8), .B0(n14), .Y(Tx_P_Data[3])
         );
  AOI22X1M U27 ( .A0(ALU_Out[11]), .A1(n2), .B0(ALU_Out[3]), .B1(n1), .Y(n14)
         );
  OAI2BB1X2M U28 ( .A0N(REG_RdData[4]), .A1N(n8), .B0(n13), .Y(Tx_P_Data[4])
         );
  AOI22X1M U29 ( .A0(ALU_Out[12]), .A1(n2), .B0(ALU_Out[4]), .B1(n1), .Y(n13)
         );
  OAI2BB1X2M U30 ( .A0N(REG_RdData[5]), .A1N(n8), .B0(n12), .Y(Tx_P_Data[5])
         );
  AOI22X1M U31 ( .A0(ALU_Out[13]), .A1(n2), .B0(ALU_Out[5]), .B1(n1), .Y(n12)
         );
  OAI2BB1X2M U32 ( .A0N(REG_RdData[6]), .A1N(n8), .B0(n11), .Y(Tx_P_Data[6])
         );
  AOI22X1M U33 ( .A0(ALU_Out[14]), .A1(n2), .B0(ALU_Out[6]), .B1(n1), .Y(n11)
         );
  OAI2BB1X2M U34 ( .A0N(REG_RdData[7]), .A1N(n8), .B0(n9), .Y(Tx_P_Data[7]) );
  AOI22X1M U35 ( .A0(ALU_Out[15]), .A1(n2), .B0(ALU_Out[7]), .B1(n1), .Y(n9)
         );
  CLKBUFX2M U36 ( .A(n6), .Y(n2) );
  NOR3X2M U37 ( .A(n5), .B(Current_State[0]), .C(n23), .Y(n6) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U10 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n4) );
  INVX2M U12 ( .A(n19), .Y(n3) );
  NAND2X2M U13 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n6) );
  INVX2M U15 ( .A(n19), .Y(n5) );
  NAND2X2M U16 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n8) );
  INVX2M U18 ( .A(n19), .Y(n7) );
  NAND2X2M U19 ( .A(n7), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n9) );
  NAND2X2M U21 ( .A(n7), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n10) );
  NAND2X2M U23 ( .A(n7), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n11) );
  NAND2X2M U25 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n2) );
  INVX2M U27 ( .A(n19), .Y(n1) );
  XNOR2X2M U28 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U2 ( .A(B[6]), .Y(n4) );
  XNOR2X2M U3 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U4 ( .A(B[0]), .Y(n10) );
  INVX2M U5 ( .A(B[7]), .Y(n3) );
  INVX2M U6 ( .A(B[2]), .Y(n8) );
  INVX2M U7 ( .A(B[3]), .Y(n7) );
  INVX2M U8 ( .A(B[4]), .Y(n6) );
  INVX2M U9 ( .A(B[5]), .Y(n5) );
  INVX2M U10 ( .A(B[1]), .Y(n9) );
  NAND2X2M U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
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

  ALU_00000008_00000010_0000000e_00000004_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n12, 
        n14, n13, n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
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
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U17 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U18 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U19 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U20 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U21 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n12) );
  AND2X2M U23 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  AND2X2M U24 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  INVX2M U27 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U29 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U30 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U31 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U32 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U33 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  INVX2M U37 ( .A(A[0]), .Y(n31) );
  INVX2M U38 ( .A(A[3]), .Y(n28) );
  INVX2M U39 ( .A(A[2]), .Y(n29) );
  INVX2M U40 ( .A(A[4]), .Y(n27) );
  INVX2M U41 ( .A(B[6]), .Y(n33) );
  XNOR2X2M U42 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U43 ( .A(A[7]), .Y(n24) );
  INVX2M U44 ( .A(A[6]), .Y(n25) );
  INVX2M U45 ( .A(A[5]), .Y(n26) );
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
endmodule


module ALU_00000008_00000010_0000000e_00000004 ( clk, rst, Operand_A, 
        Operand_B, ALU_Fun, Enable, ALU_Out, Out_Valid );
  input [7:0] Operand_A;
  input [7:0] Operand_B;
  input [3:0] ALU_Fun;
  output [15:0] ALU_Out;
  input clk, rst, Enable;
  output Out_Valid;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135;
  wire   [15:0] ALU_Out_Comb;

  ALU_00000008_00000010_0000000e_00000004_DW_div_uns_0 div_67 ( .a({n11, n10, 
        n9, n8, n7, n6, n5, n4}), .b({Operand_B[7], n3, Operand_B[5:0]}), 
        .quotient({N132, N131, N130, N129, N128, N127, N126, N125}) );
  ALU_00000008_00000010_0000000e_00000004_DW01_sub_0 sub_59 ( .A({1'b0, n11, 
        n10, n9, n8, n7, n6, n5, n4}), .B({1'b0, Operand_B[7], n3, 
        Operand_B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, N104, N103, 
        N102, N101, N100}) );
  ALU_00000008_00000010_0000000e_00000004_DW01_add_0 add_55 ( .A({1'b0, n11, 
        n10, n9, n8, n7, n6, n5, n4}), .B({1'b0, Operand_B[7], n3, 
        Operand_B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, N94, N93, 
        N92, N91}) );
  ALU_00000008_00000010_0000000e_00000004_DW02_mult_0 mult_63 ( .A({n11, n10, 
        n9, n8, n7, n6, n5, n4}), .B({Operand_B[7], n3, Operand_B[5:0]}), .TC(
        1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_Out_reg[7]  ( .D(ALU_Out_Comb[7]), .CK(clk), .RN(rst), .Q(
        ALU_Out[7]) );
  DFFRQX2M \ALU_Out_reg[6]  ( .D(ALU_Out_Comb[6]), .CK(clk), .RN(rst), .Q(
        ALU_Out[6]) );
  DFFRQX2M \ALU_Out_reg[5]  ( .D(ALU_Out_Comb[5]), .CK(clk), .RN(rst), .Q(
        ALU_Out[5]) );
  DFFRQX2M \ALU_Out_reg[4]  ( .D(ALU_Out_Comb[4]), .CK(clk), .RN(rst), .Q(
        ALU_Out[4]) );
  DFFRQX2M \ALU_Out_reg[3]  ( .D(ALU_Out_Comb[3]), .CK(clk), .RN(rst), .Q(
        ALU_Out[3]) );
  DFFRQX2M \ALU_Out_reg[2]  ( .D(ALU_Out_Comb[2]), .CK(clk), .RN(rst), .Q(
        ALU_Out[2]) );
  DFFRQX2M \ALU_Out_reg[1]  ( .D(ALU_Out_Comb[1]), .CK(clk), .RN(rst), .Q(
        ALU_Out[1]) );
  DFFRQX2M \ALU_Out_reg[0]  ( .D(ALU_Out_Comb[0]), .CK(clk), .RN(rst), .Q(
        ALU_Out[0]) );
  DFFRQX2M \ALU_Out_reg[15]  ( .D(ALU_Out_Comb[15]), .CK(clk), .RN(rst), .Q(
        ALU_Out[15]) );
  DFFRQX2M \ALU_Out_reg[14]  ( .D(ALU_Out_Comb[14]), .CK(clk), .RN(rst), .Q(
        ALU_Out[14]) );
  DFFRQX2M \ALU_Out_reg[13]  ( .D(ALU_Out_Comb[13]), .CK(clk), .RN(rst), .Q(
        ALU_Out[13]) );
  DFFRQX2M \ALU_Out_reg[12]  ( .D(ALU_Out_Comb[12]), .CK(clk), .RN(rst), .Q(
        ALU_Out[12]) );
  DFFRQX2M \ALU_Out_reg[11]  ( .D(ALU_Out_Comb[11]), .CK(clk), .RN(rst), .Q(
        ALU_Out[11]) );
  DFFRQX2M \ALU_Out_reg[10]  ( .D(ALU_Out_Comb[10]), .CK(clk), .RN(rst), .Q(
        ALU_Out[10]) );
  DFFRQX2M \ALU_Out_reg[9]  ( .D(ALU_Out_Comb[9]), .CK(clk), .RN(rst), .Q(
        ALU_Out[9]) );
  DFFRQX2M \ALU_Out_reg[8]  ( .D(ALU_Out_Comb[8]), .CK(clk), .RN(rst), .Q(
        ALU_Out[8]) );
  DFFRQX2M Out_Valid_reg ( .D(Enable), .CK(clk), .RN(rst), .Q(Out_Valid) );
  CLKBUFX2M U3 ( .A(Operand_A[7]), .Y(n11) );
  CLKBUFX2M U4 ( .A(Operand_B[6]), .Y(n3) );
  CLKBUFX2M U7 ( .A(Operand_A[6]), .Y(n10) );
  CLKBUFX2M U8 ( .A(Operand_A[1]), .Y(n5) );
  OAI2BB1X2M U9 ( .A0N(N123), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[14]) );
  OAI2BB1X2M U10 ( .A0N(N121), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[12]) );
  OAI2BB1X2M U11 ( .A0N(N122), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[13]) );
  OAI2BB1X2M U12 ( .A0N(N124), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[15]) );
  OAI2BB1X2M U13 ( .A0N(N118), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[9]) );
  OAI2BB1X2M U14 ( .A0N(N119), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[10]) );
  OAI2BB1X2M U15 ( .A0N(N120), .A1N(n32), .B0(n33), .Y(ALU_Out_Comb[11]) );
  OAI2B1X2M U16 ( .A1N(n102), .A0(n89), .B0(n100), .Y(n48) );
  OAI2B1X2M U17 ( .A1N(n98), .A0(n99), .B0(n100), .Y(n49) );
  NOR2BX2M U18 ( .AN(n103), .B(n99), .Y(n38) );
  AND2X2M U19 ( .A(n98), .B(n102), .Y(n43) );
  NAND2X2M U20 ( .A(n132), .B(n134), .Y(n99) );
  INVX2M U21 ( .A(n36), .Y(n131) );
  AND2X2M U22 ( .A(n103), .B(n102), .Y(n51) );
  CLKBUFX2M U23 ( .A(n42), .Y(n13) );
  NOR2X2M U24 ( .A(n89), .B(n99), .Y(n42) );
  NOR3X2M U25 ( .A(n89), .B(ALU_Fun[0]), .C(n132), .Y(n36) );
  NOR2X2M U26 ( .A(ALU_Fun[2]), .B(ALU_Fun[1]), .Y(n103) );
  AND3X2M U27 ( .A(n103), .B(n134), .C(ALU_Fun[3]), .Y(n47) );
  AND3X2M U28 ( .A(n102), .B(ALU_Fun[1]), .C(n133), .Y(n50) );
  AND3X2M U29 ( .A(n98), .B(ALU_Fun[3]), .C(ALU_Fun[0]), .Y(n55) );
  NOR2X2M U30 ( .A(n134), .B(ALU_Fun[3]), .Y(n102) );
  NOR2X2M U31 ( .A(n133), .B(ALU_Fun[1]), .Y(n98) );
  NAND2X2M U32 ( .A(ALU_Fun[2]), .B(ALU_Fun[1]), .Y(n89) );
  INVX2M U33 ( .A(ALU_Fun[0]), .Y(n134) );
  NAND3X2M U34 ( .A(n103), .B(ALU_Fun[0]), .C(ALU_Fun[3]), .Y(n100) );
  INVX2M U35 ( .A(ALU_Fun[3]), .Y(n132) );
  INVX2M U36 ( .A(ALU_Fun[2]), .Y(n133) );
  NAND2X2M U37 ( .A(Enable), .B(n119), .Y(n33) );
  CLKBUFX2M U38 ( .A(n37), .Y(n12) );
  NOR3BX2M U39 ( .AN(ALU_Fun[1]), .B(n99), .C(ALU_Fun[2]), .Y(n37) );
  AND2X2M U40 ( .A(n12), .B(Enable), .Y(n32) );
  INVX2M U41 ( .A(Enable), .Y(n135) );
  AOI31X2M U42 ( .A0(n91), .A1(n92), .A2(n93), .B0(n135), .Y(ALU_Out_Comb[0])
         );
  AOI22X1M U43 ( .A0(N100), .A1(n51), .B0(N91), .B1(n38), .Y(n91) );
  AOI221XLM U44 ( .A0(n5), .A1(n55), .B0(n13), .B1(n126), .C0(n94), .Y(n93) );
  AOI222X1M U45 ( .A0(N109), .A1(n12), .B0(n4), .B1(n43), .C0(N125), .C1(n50), 
        .Y(n92) );
  AOI31X2M U46 ( .A0(n83), .A1(n84), .A2(n85), .B0(n135), .Y(ALU_Out_Comb[1])
         );
  AOI22X1M U47 ( .A0(N101), .A1(n51), .B0(N92), .B1(n38), .Y(n83) );
  AOI221XLM U48 ( .A0(n6), .A1(n55), .B0(n13), .B1(n125), .C0(n86), .Y(n85) );
  AOI222X1M U49 ( .A0(N110), .A1(n12), .B0(n5), .B1(n43), .C0(N126), .C1(n50), 
        .Y(n84) );
  AOI31X2M U50 ( .A0(n77), .A1(n78), .A2(n79), .B0(n135), .Y(ALU_Out_Comb[2])
         );
  AOI22X1M U51 ( .A0(N102), .A1(n51), .B0(N93), .B1(n38), .Y(n77) );
  AOI221XLM U52 ( .A0(n7), .A1(n55), .B0(n13), .B1(n124), .C0(n80), .Y(n79) );
  AOI222X1M U53 ( .A0(N111), .A1(n12), .B0(n6), .B1(n43), .C0(N127), .C1(n50), 
        .Y(n78) );
  AOI31X2M U54 ( .A0(n71), .A1(n72), .A2(n73), .B0(n135), .Y(ALU_Out_Comb[3])
         );
  AOI22X1M U55 ( .A0(N103), .A1(n51), .B0(N94), .B1(n38), .Y(n71) );
  AOI221XLM U56 ( .A0(n8), .A1(n55), .B0(n13), .B1(n123), .C0(n74), .Y(n73) );
  AOI222X1M U57 ( .A0(N112), .A1(n12), .B0(n7), .B1(n43), .C0(N128), .C1(n50), 
        .Y(n72) );
  AOI31X2M U58 ( .A0(n65), .A1(n66), .A2(n67), .B0(n135), .Y(ALU_Out_Comb[4])
         );
  AOI22X1M U59 ( .A0(N104), .A1(n51), .B0(N95), .B1(n38), .Y(n65) );
  AOI221XLM U60 ( .A0(n55), .A1(n9), .B0(n13), .B1(n122), .C0(n68), .Y(n67) );
  AOI222X1M U61 ( .A0(N113), .A1(n12), .B0(n8), .B1(n43), .C0(N129), .C1(n50), 
        .Y(n66) );
  AOI33X2M U62 ( .A0(n101), .A1(n133), .A2(ALU_Fun[1]), .B0(n98), .B1(n134), 
        .B2(N159), .Y(n96) );
  AO22X1M U63 ( .A0(N158), .A1(ALU_Fun[0]), .B0(N157), .B1(n134), .Y(n101) );
  AOI31X2M U64 ( .A0(n59), .A1(n60), .A2(n61), .B0(n135), .Y(ALU_Out_Comb[5])
         );
  AOI22X1M U65 ( .A0(N105), .A1(n51), .B0(N96), .B1(n38), .Y(n59) );
  AOI221XLM U66 ( .A0(n55), .A1(n10), .B0(n13), .B1(n121), .C0(n62), .Y(n61)
         );
  AOI222X1M U67 ( .A0(N114), .A1(n12), .B0(n9), .B1(n43), .C0(N130), .C1(n50), 
        .Y(n60) );
  AOI31X2M U68 ( .A0(n52), .A1(n53), .A2(n54), .B0(n135), .Y(ALU_Out_Comb[6])
         );
  AOI22X1M U69 ( .A0(N106), .A1(n51), .B0(N97), .B1(n38), .Y(n52) );
  AOI221XLM U70 ( .A0(n55), .A1(n11), .B0(n13), .B1(n120), .C0(n56), .Y(n54)
         );
  AOI222X1M U71 ( .A0(N115), .A1(n12), .B0(n43), .B1(n10), .C0(N131), .C1(n50), 
        .Y(n53) );
  AOI31X2M U72 ( .A0(n39), .A1(n40), .A2(n41), .B0(n135), .Y(ALU_Out_Comb[7])
         );
  AOI221XLM U73 ( .A0(n13), .A1(n118), .B0(n43), .B1(n11), .C0(n44), .Y(n41)
         );
  AOI22X1M U74 ( .A0(N107), .A1(n51), .B0(N98), .B1(n38), .Y(n39) );
  AOI22X1M U75 ( .A0(N132), .A1(n50), .B0(N116), .B1(n12), .Y(n40) );
  INVX2M U76 ( .A(n25), .Y(n117) );
  AOI21X2M U77 ( .A0(n34), .A1(n35), .B0(n135), .Y(ALU_Out_Comb[8]) );
  AOI21X2M U78 ( .A0(N99), .A1(n38), .B0(n119), .Y(n34) );
  AOI22X1M U79 ( .A0(n11), .A1(n36), .B0(N117), .B1(n12), .Y(n35) );
  INVX2M U80 ( .A(n111), .Y(N158) );
  INVX2M U81 ( .A(n3), .Y(n115) );
  INVX2M U82 ( .A(n90), .Y(n119) );
  AOI211X2M U83 ( .A0(N108), .A1(n51), .B0(n13), .C0(n48), .Y(n90) );
  OAI222X1M U84 ( .A0(n57), .A1(n115), .B0(n3), .B1(n58), .C0(n131), .C1(n121), 
        .Y(n56) );
  AOI221XLM U85 ( .A0(n47), .A1(n120), .B0(n10), .B1(n49), .C0(n43), .Y(n57)
         );
  AOI221XLM U86 ( .A0(n10), .A1(n47), .B0(n48), .B1(n120), .C0(n13), .Y(n58)
         );
  INVX2M U87 ( .A(n10), .Y(n120) );
  INVX2M U88 ( .A(n5), .Y(n125) );
  INVX2M U89 ( .A(n4), .Y(n126) );
  INVX2M U90 ( .A(n6), .Y(n124) );
  INVX2M U91 ( .A(n7), .Y(n123) );
  INVX2M U92 ( .A(n9), .Y(n121) );
  INVX2M U93 ( .A(n8), .Y(n122) );
  INVX2M U94 ( .A(n11), .Y(n118) );
  CLKBUFX2M U95 ( .A(Operand_A[5]), .Y(n9) );
  CLKBUFX2M U96 ( .A(Operand_A[4]), .Y(n8) );
  CLKBUFX2M U97 ( .A(Operand_A[3]), .Y(n7) );
  CLKBUFX2M U98 ( .A(Operand_A[2]), .Y(n6) );
  CLKBUFX2M U99 ( .A(Operand_A[0]), .Y(n4) );
  OAI222X1M U100 ( .A0(Operand_B[0]), .A1(n95), .B0(n96), .B1(n132), .C0(n97), 
        .C1(n112), .Y(n94) );
  AOI221XLM U101 ( .A0(n47), .A1(n126), .B0(n4), .B1(n49), .C0(n43), .Y(n97)
         );
  AOI221XLM U102 ( .A0(n4), .A1(n47), .B0(n48), .B1(n126), .C0(n13), .Y(n95)
         );
  INVX2M U103 ( .A(n14), .Y(n116) );
  INVX2M U104 ( .A(Operand_B[0]), .Y(n112) );
  INVX2M U105 ( .A(Operand_B[2]), .Y(n113) );
  OAI222X1M U106 ( .A0(n87), .A1(n130), .B0(Operand_B[1]), .B1(n88), .C0(n131), 
        .C1(n126), .Y(n86) );
  INVX2M U107 ( .A(Operand_B[1]), .Y(n130) );
  AOI221XLM U108 ( .A0(n47), .A1(n125), .B0(n5), .B1(n49), .C0(n43), .Y(n87)
         );
  AOI221XLM U109 ( .A0(n5), .A1(n47), .B0(n48), .B1(n125), .C0(n13), .Y(n88)
         );
  OAI222X1M U110 ( .A0(n81), .A1(n113), .B0(Operand_B[2]), .B1(n82), .C0(n131), 
        .C1(n125), .Y(n80) );
  AOI221XLM U111 ( .A0(n47), .A1(n124), .B0(n6), .B1(n49), .C0(n43), .Y(n81)
         );
  AOI221XLM U112 ( .A0(n6), .A1(n47), .B0(n48), .B1(n124), .C0(n13), .Y(n82)
         );
  OAI222X1M U113 ( .A0(n75), .A1(n114), .B0(Operand_B[3]), .B1(n76), .C0(n131), 
        .C1(n124), .Y(n74) );
  AOI221XLM U114 ( .A0(n47), .A1(n123), .B0(n7), .B1(n49), .C0(n43), .Y(n75)
         );
  AOI221XLM U115 ( .A0(n7), .A1(n47), .B0(n48), .B1(n123), .C0(n13), .Y(n76)
         );
  OAI222X1M U116 ( .A0(n69), .A1(n129), .B0(Operand_B[4]), .B1(n70), .C0(n131), 
        .C1(n123), .Y(n68) );
  INVX2M U117 ( .A(Operand_B[4]), .Y(n129) );
  AOI221XLM U118 ( .A0(n47), .A1(n122), .B0(n8), .B1(n49), .C0(n43), .Y(n69)
         );
  AOI221XLM U119 ( .A0(n8), .A1(n47), .B0(n48), .B1(n122), .C0(n13), .Y(n70)
         );
  OAI222X1M U120 ( .A0(n63), .A1(n128), .B0(Operand_B[5]), .B1(n64), .C0(n131), 
        .C1(n122), .Y(n62) );
  INVX2M U121 ( .A(Operand_B[5]), .Y(n128) );
  AOI221XLM U122 ( .A0(n47), .A1(n121), .B0(n9), .B1(n49), .C0(n43), .Y(n63)
         );
  AOI221XLM U123 ( .A0(n9), .A1(n47), .B0(n48), .B1(n121), .C0(n13), .Y(n64)
         );
  OAI222X1M U124 ( .A0(n45), .A1(n127), .B0(Operand_B[7]), .B1(n46), .C0(n131), 
        .C1(n120), .Y(n44) );
  INVX2M U125 ( .A(Operand_B[7]), .Y(n127) );
  AOI221XLM U126 ( .A0(n47), .A1(n118), .B0(n11), .B1(n49), .C0(n43), .Y(n45)
         );
  AOI221XLM U127 ( .A0(n47), .A1(n11), .B0(n48), .B1(n118), .C0(n13), .Y(n46)
         );
  INVX2M U128 ( .A(Operand_B[3]), .Y(n114) );
  NOR2X1M U129 ( .A(n118), .B(Operand_B[7]), .Y(n108) );
  NAND2BX1M U130 ( .AN(Operand_B[4]), .B(n8), .Y(n29) );
  NAND2BX1M U131 ( .AN(n8), .B(Operand_B[4]), .Y(n18) );
  CLKNAND2X2M U132 ( .A(n29), .B(n18), .Y(n31) );
  NOR2X1M U133 ( .A(n114), .B(n7), .Y(n26) );
  NOR2X1M U134 ( .A(n113), .B(n6), .Y(n17) );
  NOR2X1M U135 ( .A(n112), .B(n4), .Y(n14) );
  CLKNAND2X2M U136 ( .A(n6), .B(n113), .Y(n28) );
  NAND2BX1M U137 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U138 ( .A0(n14), .A1(n125), .B0(Operand_B[1]), .Y(n15) );
  AOI211X1M U139 ( .A0(n5), .A1(n116), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U140 ( .A(n7), .B(n114), .Y(n27) );
  OAI31X1M U141 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U142 ( .AN(n9), .B(Operand_B[5]), .Y(n106) );
  OAI211X1M U143 ( .A0(n31), .A1(n19), .B0(n18), .C0(n106), .Y(n20) );
  NAND2BX1M U144 ( .AN(Operand_B[5]), .B(n9), .Y(n30) );
  XNOR2X1M U145 ( .A(n10), .B(n3), .Y(n105) );
  AOI32X1M U146 ( .A0(n20), .A1(n30), .A2(n105), .B0(n3), .B1(n120), .Y(n21)
         );
  CLKNAND2X2M U147 ( .A(Operand_B[7]), .B(n118), .Y(n109) );
  OAI21X1M U148 ( .A0(n108), .A1(n21), .B0(n109), .Y(N159) );
  CLKNAND2X2M U149 ( .A(n4), .B(n112), .Y(n24) );
  OA21X1M U150 ( .A0(n24), .A1(n125), .B0(Operand_B[1]), .Y(n22) );
  AOI211X1M U151 ( .A0(n24), .A1(n125), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U152 ( .A0(n117), .A1(n28), .A2(n27), .B0(n26), .Y(n104) );
  OAI2B11X1M U153 ( .A1N(n104), .A0(n31), .B0(n30), .C0(n29), .Y(n107) );
  AOI32X1M U154 ( .A0(n107), .A1(n106), .A2(n105), .B0(n10), .B1(n115), .Y(
        n110) );
  AOI2B1X1M U155 ( .A1N(n110), .A0(n109), .B0(n108), .Y(n111) );
  NOR2X1M U156 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module Clock_Gating ( clk, En, test_mode, Gated_clk );
  input clk, En, test_mode;
  output Gated_clk;
  wire   _0_net_;

  TLATNCAX2M U0 ( .E(_0_net_), .CK(clk), .ECK(Gated_clk) );
  OR2X2M U1 ( .A(En), .B(test_mode), .Y(_0_net_) );
endmodule



    module REG_File_00000008_00000010_00000004_00000000_00000000_0000001c_00000008 ( 
        clk, rst, Address, WrEn, RdEn, WrData, RdData, RdData_Valid, 
        REG0_ALU_A, REG1_ALU_B, REG2_UART, REG3_DIV );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0_ALU_A;
  output [7:0] REG1_ALU_B;
  output [6:0] REG2_UART;
  output [3:0] REG3_DIV;
  input clk, rst, WrEn, RdEn;
  output RdData_Valid;
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
         \Memory[15][2] , \Memory[15][1] , \Memory[15][0] , n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];
  assign RdData_Valid = RdEn;

  DFFSQX2M \Memory_reg[2][3]  ( .D(n145), .CK(clk), .SN(n195), .Q(REG2_UART[3]) );
  DFFSQX2M \Memory_reg[2][4]  ( .D(n146), .CK(clk), .SN(n195), .Q(REG2_UART[4]) );
  DFFRQX2M \Memory_reg[5][3]  ( .D(n121), .CK(clk), .RN(n200), .Q(
        \Memory[5][3] ) );
  DFFRQX2M \Memory_reg[5][2]  ( .D(n120), .CK(clk), .RN(n200), .Q(
        \Memory[5][2] ) );
  DFFRQX2M \Memory_reg[5][1]  ( .D(n119), .CK(clk), .RN(n200), .Q(
        \Memory[5][1] ) );
  DFFRQX2M \Memory_reg[5][0]  ( .D(n118), .CK(clk), .RN(n200), .Q(
        \Memory[5][0] ) );
  DFFRQX2M \Memory_reg[9][7]  ( .D(n93), .CK(clk), .RN(n198), .Q(
        \Memory[9][7] ) );
  DFFRQX2M \Memory_reg[9][6]  ( .D(n92), .CK(clk), .RN(n198), .Q(
        \Memory[9][6] ) );
  DFFRQX2M \Memory_reg[9][5]  ( .D(n91), .CK(clk), .RN(n198), .Q(
        \Memory[9][5] ) );
  DFFRQX2M \Memory_reg[9][4]  ( .D(n90), .CK(clk), .RN(n198), .Q(
        \Memory[9][4] ) );
  DFFRQX2M \Memory_reg[9][3]  ( .D(n89), .CK(clk), .RN(n198), .Q(
        \Memory[9][3] ) );
  DFFRQX2M \Memory_reg[9][2]  ( .D(n88), .CK(clk), .RN(n198), .Q(
        \Memory[9][2] ) );
  DFFRQX2M \Memory_reg[9][1]  ( .D(n87), .CK(clk), .RN(n198), .Q(
        \Memory[9][1] ) );
  DFFRQX2M \Memory_reg[9][0]  ( .D(n86), .CK(clk), .RN(n198), .Q(
        \Memory[9][0] ) );
  DFFRQX2M \Memory_reg[13][7]  ( .D(n61), .CK(clk), .RN(n196), .Q(
        \Memory[13][7] ) );
  DFFRQX2M \Memory_reg[13][6]  ( .D(n60), .CK(clk), .RN(n196), .Q(
        \Memory[13][6] ) );
  DFFRQX2M \Memory_reg[13][5]  ( .D(n59), .CK(clk), .RN(n196), .Q(
        \Memory[13][5] ) );
  DFFRQX2M \Memory_reg[13][4]  ( .D(n58), .CK(clk), .RN(n196), .Q(
        \Memory[13][4] ) );
  DFFRQX2M \Memory_reg[13][3]  ( .D(n57), .CK(clk), .RN(n196), .Q(
        \Memory[13][3] ) );
  DFFRQX2M \Memory_reg[13][2]  ( .D(n56), .CK(clk), .RN(n196), .Q(
        \Memory[13][2] ) );
  DFFRQX2M \Memory_reg[13][1]  ( .D(n55), .CK(clk), .RN(n196), .Q(
        \Memory[13][1] ) );
  DFFRQX2M \Memory_reg[13][0]  ( .D(n54), .CK(clk), .RN(n196), .Q(
        \Memory[13][0] ) );
  DFFRQX2M \Memory_reg[3][7]  ( .D(n141), .CK(clk), .RN(n201), .Q(
        \Memory[3][7] ) );
  DFFRQX2M \Memory_reg[3][6]  ( .D(n140), .CK(clk), .RN(n201), .Q(
        \Memory[3][6] ) );
  DFFRQX2M \Memory_reg[3][5]  ( .D(n139), .CK(clk), .RN(n201), .Q(
        \Memory[3][5] ) );
  DFFRQX2M \Memory_reg[3][4]  ( .D(n138), .CK(clk), .RN(n201), .Q(
        \Memory[3][4] ) );
  DFFRQX2M \Memory_reg[11][7]  ( .D(n77), .CK(clk), .RN(n197), .Q(
        \Memory[11][7] ) );
  DFFRQX2M \Memory_reg[11][6]  ( .D(n76), .CK(clk), .RN(n197), .Q(
        \Memory[11][6] ) );
  DFFRQX2M \Memory_reg[11][5]  ( .D(n75), .CK(clk), .RN(n197), .Q(
        \Memory[11][5] ) );
  DFFRQX2M \Memory_reg[11][4]  ( .D(n74), .CK(clk), .RN(n197), .Q(
        \Memory[11][4] ) );
  DFFRQX2M \Memory_reg[11][3]  ( .D(n73), .CK(clk), .RN(n197), .Q(
        \Memory[11][3] ) );
  DFFRQX2M \Memory_reg[11][2]  ( .D(n72), .CK(clk), .RN(n197), .Q(
        \Memory[11][2] ) );
  DFFRQX2M \Memory_reg[11][1]  ( .D(n71), .CK(clk), .RN(n197), .Q(
        \Memory[11][1] ) );
  DFFRQX2M \Memory_reg[11][0]  ( .D(n70), .CK(clk), .RN(n197), .Q(
        \Memory[11][0] ) );
  DFFRQX2M \Memory_reg[15][7]  ( .D(n45), .CK(clk), .RN(n195), .Q(
        \Memory[15][7] ) );
  DFFRQX2M \Memory_reg[15][6]  ( .D(n44), .CK(clk), .RN(n195), .Q(
        \Memory[15][6] ) );
  DFFRQX2M \Memory_reg[15][5]  ( .D(n43), .CK(clk), .RN(n195), .Q(
        \Memory[15][5] ) );
  DFFRQX2M \Memory_reg[15][4]  ( .D(n42), .CK(clk), .RN(n195), .Q(
        \Memory[15][4] ) );
  DFFRQX2M \Memory_reg[15][3]  ( .D(n41), .CK(clk), .RN(n195), .Q(
        \Memory[15][3] ) );
  DFFRQX2M \Memory_reg[15][2]  ( .D(n40), .CK(clk), .RN(n195), .Q(
        \Memory[15][2] ) );
  DFFRQX2M \Memory_reg[15][1]  ( .D(n39), .CK(clk), .RN(n195), .Q(
        \Memory[15][1] ) );
  DFFRQX2M \Memory_reg[15][0]  ( .D(n38), .CK(clk), .RN(n199), .Q(
        \Memory[15][0] ) );
  DFFRQX2M \Memory_reg[10][7]  ( .D(n85), .CK(clk), .RN(n198), .Q(
        \Memory[10][7] ) );
  DFFRQX2M \Memory_reg[10][6]  ( .D(n84), .CK(clk), .RN(n198), .Q(
        \Memory[10][6] ) );
  DFFRQX2M \Memory_reg[10][5]  ( .D(n83), .CK(clk), .RN(n198), .Q(
        \Memory[10][5] ) );
  DFFRQX2M \Memory_reg[10][4]  ( .D(n82), .CK(clk), .RN(n198), .Q(
        \Memory[10][4] ) );
  DFFRQX2M \Memory_reg[10][3]  ( .D(n81), .CK(clk), .RN(n198), .Q(
        \Memory[10][3] ) );
  DFFRQX2M \Memory_reg[10][2]  ( .D(n80), .CK(clk), .RN(n197), .Q(
        \Memory[10][2] ) );
  DFFRQX2M \Memory_reg[10][1]  ( .D(n79), .CK(clk), .RN(n197), .Q(
        \Memory[10][1] ) );
  DFFRQX2M \Memory_reg[10][0]  ( .D(n78), .CK(clk), .RN(n197), .Q(
        \Memory[10][0] ) );
  DFFRQX2M \Memory_reg[14][7]  ( .D(n53), .CK(clk), .RN(n196), .Q(
        \Memory[14][7] ) );
  DFFRQX2M \Memory_reg[14][6]  ( .D(n52), .CK(clk), .RN(n196), .Q(
        \Memory[14][6] ) );
  DFFRQX2M \Memory_reg[14][5]  ( .D(n51), .CK(clk), .RN(n196), .Q(
        \Memory[14][5] ) );
  DFFRQX2M \Memory_reg[14][4]  ( .D(n50), .CK(clk), .RN(n195), .Q(
        \Memory[14][4] ) );
  DFFRQX2M \Memory_reg[14][3]  ( .D(n49), .CK(clk), .RN(n196), .Q(
        \Memory[14][3] ) );
  DFFRQX2M \Memory_reg[14][2]  ( .D(n48), .CK(clk), .RN(n196), .Q(
        \Memory[14][2] ) );
  DFFRQX2M \Memory_reg[14][1]  ( .D(n47), .CK(clk), .RN(n195), .Q(
        \Memory[14][1] ) );
  DFFRQX2M \Memory_reg[14][0]  ( .D(n46), .CK(clk), .RN(n195), .Q(
        \Memory[14][0] ) );
  DFFRQX2M \Memory_reg[8][7]  ( .D(n101), .CK(clk), .RN(n199), .Q(
        \Memory[8][7] ) );
  DFFRQX2M \Memory_reg[8][6]  ( .D(n100), .CK(clk), .RN(n199), .Q(
        \Memory[8][6] ) );
  DFFRQX2M \Memory_reg[8][5]  ( .D(n99), .CK(clk), .RN(n199), .Q(
        \Memory[8][5] ) );
  DFFRQX2M \Memory_reg[8][4]  ( .D(n98), .CK(clk), .RN(n199), .Q(
        \Memory[8][4] ) );
  DFFRQX2M \Memory_reg[8][3]  ( .D(n97), .CK(clk), .RN(n199), .Q(
        \Memory[8][3] ) );
  DFFRQX2M \Memory_reg[8][2]  ( .D(n96), .CK(clk), .RN(n198), .Q(
        \Memory[8][2] ) );
  DFFRQX2M \Memory_reg[8][1]  ( .D(n95), .CK(clk), .RN(n198), .Q(
        \Memory[8][1] ) );
  DFFRQX2M \Memory_reg[8][0]  ( .D(n94), .CK(clk), .RN(n198), .Q(
        \Memory[8][0] ) );
  DFFRQX2M \Memory_reg[12][7]  ( .D(n69), .CK(clk), .RN(n197), .Q(
        \Memory[12][7] ) );
  DFFRQX2M \Memory_reg[12][6]  ( .D(n68), .CK(clk), .RN(n197), .Q(
        \Memory[12][6] ) );
  DFFRQX2M \Memory_reg[12][5]  ( .D(n67), .CK(clk), .RN(n197), .Q(
        \Memory[12][5] ) );
  DFFRQX2M \Memory_reg[12][4]  ( .D(n66), .CK(clk), .RN(n197), .Q(
        \Memory[12][4] ) );
  DFFRQX2M \Memory_reg[12][3]  ( .D(n65), .CK(clk), .RN(n197), .Q(
        \Memory[12][3] ) );
  DFFRQX2M \Memory_reg[12][2]  ( .D(n64), .CK(clk), .RN(n196), .Q(
        \Memory[12][2] ) );
  DFFRQX2M \Memory_reg[12][1]  ( .D(n63), .CK(clk), .RN(n196), .Q(
        \Memory[12][1] ) );
  DFFRQX2M \Memory_reg[12][0]  ( .D(n62), .CK(clk), .RN(n196), .Q(
        \Memory[12][0] ) );
  DFFSQX2M \Memory_reg[2][2]  ( .D(n144), .CK(clk), .SN(n195), .Q(REG2_UART[2]) );
  DFFSQX2M \Memory_reg[3][3]  ( .D(n137), .CK(clk), .SN(n195), .Q(REG3_DIV[3])
         );
  DFFRQX2M \Memory_reg[3][0]  ( .D(n134), .CK(clk), .RN(n201), .Q(REG3_DIV[0])
         );
  DFFRQX2M \Memory_reg[3][1]  ( .D(n135), .CK(clk), .RN(n201), .Q(REG3_DIV[1])
         );
  DFFRQX2M \Memory_reg[3][2]  ( .D(n136), .CK(clk), .RN(n201), .Q(REG3_DIV[2])
         );
  DFFRQX2M \Memory_reg[1][6]  ( .D(n156), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[6]) );
  DFFRQX2M \Memory_reg[1][5]  ( .D(n155), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[5]) );
  DFFRQX2M \Memory_reg[1][4]  ( .D(n154), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[4]) );
  DFFRQX2M \Memory_reg[1][1]  ( .D(n151), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[1]) );
  DFFRQX2M \Memory_reg[1][7]  ( .D(n157), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[7]) );
  DFFRQX2M \Memory_reg[1][3]  ( .D(n153), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[3]) );
  DFFRQX2M \Memory_reg[1][2]  ( .D(n152), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[2]) );
  DFFRQX2M \Memory_reg[1][0]  ( .D(n150), .CK(clk), .RN(n202), .Q(
        REG1_ALU_B[0]) );
  DFFRQX1M \Memory_reg[6][7]  ( .D(n117), .CK(clk), .RN(n200), .Q(
        \Memory[6][7] ) );
  DFFRQX1M \Memory_reg[6][6]  ( .D(n116), .CK(clk), .RN(n200), .Q(
        \Memory[6][6] ) );
  DFFRQX1M \Memory_reg[6][5]  ( .D(n115), .CK(clk), .RN(n200), .Q(
        \Memory[6][5] ) );
  DFFRQX1M \Memory_reg[6][4]  ( .D(n114), .CK(clk), .RN(n200), .Q(
        \Memory[6][4] ) );
  DFFRQX1M \Memory_reg[6][3]  ( .D(n113), .CK(clk), .RN(n200), .Q(
        \Memory[6][3] ) );
  DFFRQX1M \Memory_reg[6][2]  ( .D(n112), .CK(clk), .RN(n200), .Q(
        \Memory[6][2] ) );
  DFFRQX1M \Memory_reg[6][1]  ( .D(n111), .CK(clk), .RN(n199), .Q(
        \Memory[6][1] ) );
  DFFRQX1M \Memory_reg[6][0]  ( .D(n110), .CK(clk), .RN(n199), .Q(
        \Memory[6][0] ) );
  DFFRQX1M \Memory_reg[7][7]  ( .D(n109), .CK(clk), .RN(n199), .Q(
        \Memory[7][7] ) );
  DFFRQX1M \Memory_reg[7][6]  ( .D(n108), .CK(clk), .RN(n199), .Q(
        \Memory[7][6] ) );
  DFFRQX1M \Memory_reg[7][5]  ( .D(n107), .CK(clk), .RN(n199), .Q(
        \Memory[7][5] ) );
  DFFRQX1M \Memory_reg[7][4]  ( .D(n106), .CK(clk), .RN(n199), .Q(
        \Memory[7][4] ) );
  DFFRQX1M \Memory_reg[7][3]  ( .D(n105), .CK(clk), .RN(n199), .Q(
        \Memory[7][3] ) );
  DFFRQX1M \Memory_reg[7][2]  ( .D(n104), .CK(clk), .RN(n199), .Q(
        \Memory[7][2] ) );
  DFFRQX1M \Memory_reg[7][1]  ( .D(n103), .CK(clk), .RN(n199), .Q(
        \Memory[7][1] ) );
  DFFRQX1M \Memory_reg[7][0]  ( .D(n102), .CK(clk), .RN(n199), .Q(
        \Memory[7][0] ) );
  DFFRQX1M \Memory_reg[4][7]  ( .D(n133), .CK(clk), .RN(n201), .Q(
        \Memory[4][7] ) );
  DFFRQX1M \Memory_reg[4][6]  ( .D(n132), .CK(clk), .RN(n201), .Q(
        \Memory[4][6] ) );
  DFFRQX1M \Memory_reg[4][5]  ( .D(n131), .CK(clk), .RN(n201), .Q(
        \Memory[4][5] ) );
  DFFRQX1M \Memory_reg[4][4]  ( .D(n130), .CK(clk), .RN(n201), .Q(
        \Memory[4][4] ) );
  DFFRQX1M \Memory_reg[4][3]  ( .D(n129), .CK(clk), .RN(n201), .Q(
        \Memory[4][3] ) );
  DFFRQX1M \Memory_reg[4][2]  ( .D(n128), .CK(clk), .RN(n201), .Q(
        \Memory[4][2] ) );
  DFFRQX1M \Memory_reg[4][1]  ( .D(n127), .CK(clk), .RN(n200), .Q(
        \Memory[4][1] ) );
  DFFRQX1M \Memory_reg[4][0]  ( .D(n126), .CK(clk), .RN(n200), .Q(
        \Memory[4][0] ) );
  DFFRQX1M \Memory_reg[2][7]  ( .D(n149), .CK(clk), .RN(n202), .Q(
        \Memory[2][7] ) );
  DFFRQX1M \Memory_reg[2][6]  ( .D(n148), .CK(clk), .RN(n202), .Q(REG2_UART[6]) );
  DFFRQX1M \Memory_reg[2][5]  ( .D(n147), .CK(clk), .RN(n201), .Q(REG2_UART[5]) );
  DFFRQX1M \Memory_reg[2][1]  ( .D(n143), .CK(clk), .RN(n201), .Q(REG2_UART[1]) );
  DFFRQX1M \Memory_reg[2][0]  ( .D(n142), .CK(clk), .RN(n201), .Q(REG2_UART[0]) );
  DFFRQX1M \Memory_reg[0][7]  ( .D(n165), .CK(clk), .RN(n195), .Q(
        REG0_ALU_A[7]) );
  DFFRQX1M \Memory_reg[0][6]  ( .D(n164), .CK(clk), .RN(n203), .Q(
        REG0_ALU_A[6]) );
  DFFRQX1M \Memory_reg[0][5]  ( .D(n163), .CK(clk), .RN(n202), .Q(
        REG0_ALU_A[5]) );
  DFFRQX1M \Memory_reg[0][4]  ( .D(n162), .CK(clk), .RN(n202), .Q(
        REG0_ALU_A[4]) );
  DFFRQX1M \Memory_reg[0][3]  ( .D(n161), .CK(clk), .RN(n202), .Q(
        REG0_ALU_A[3]) );
  DFFRQX1M \Memory_reg[0][2]  ( .D(n160), .CK(clk), .RN(n202), .Q(
        REG0_ALU_A[2]) );
  DFFRQX1M \Memory_reg[0][1]  ( .D(n159), .CK(clk), .RN(n202), .Q(
        REG0_ALU_A[1]) );
  DFFRQX1M \Memory_reg[0][0]  ( .D(n158), .CK(clk), .RN(n202), .Q(
        REG0_ALU_A[0]) );
  DFFRQX1M \Memory_reg[5][7]  ( .D(n125), .CK(clk), .RN(n200), .Q(
        \Memory[5][7] ) );
  DFFRQX1M \Memory_reg[5][6]  ( .D(n124), .CK(clk), .RN(n200), .Q(
        \Memory[5][6] ) );
  DFFRQX1M \Memory_reg[5][5]  ( .D(n123), .CK(clk), .RN(n200), .Q(
        \Memory[5][5] ) );
  DFFRQX1M \Memory_reg[5][4]  ( .D(n122), .CK(clk), .RN(n200), .Q(
        \Memory[5][4] ) );
  NOR2X2M U2 ( .A(n194), .B(N12), .Y(n21) );
  NOR2X2M U3 ( .A(N11), .B(N12), .Y(n24) );
  NOR2X2M U4 ( .A(n212), .B(n194), .Y(n13) );
  INVX2M U5 ( .A(WrData[5]), .Y(n208) );
  INVX2M U6 ( .A(WrData[6]), .Y(n207) );
  NAND2X2M U7 ( .A(n18), .B(n14), .Y(n17) );
  NAND2X2M U8 ( .A(n28), .B(n18), .Y(n31) );
  NOR2X2M U9 ( .A(n212), .B(N11), .Y(n18) );
  NAND2X2M U10 ( .A(n21), .B(n14), .Y(n20) );
  NAND2X2M U11 ( .A(n21), .B(n16), .Y(n22) );
  NAND2X2M U12 ( .A(n24), .B(n14), .Y(n23) );
  NAND2X2M U13 ( .A(n24), .B(n16), .Y(n26) );
  NAND2X2M U14 ( .A(n18), .B(n16), .Y(n19) );
  NAND2X2M U15 ( .A(n16), .B(n13), .Y(n15) );
  NAND2X2M U16 ( .A(n28), .B(n13), .Y(n27) );
  NAND2X2M U17 ( .A(n30), .B(n13), .Y(n29) );
  NAND2X2M U18 ( .A(n28), .B(n21), .Y(n33) );
  NAND2X2M U19 ( .A(n30), .B(n21), .Y(n34) );
  NAND2X2M U20 ( .A(n28), .B(n24), .Y(n35) );
  NAND2X2M U21 ( .A(n30), .B(n24), .Y(n37) );
  NAND2X2M U22 ( .A(n30), .B(n18), .Y(n32) );
  NAND2X2M U23 ( .A(n13), .B(n14), .Y(n12) );
  AND2X2M U24 ( .A(n25), .B(N10), .Y(n14) );
  AND2X2M U25 ( .A(n36), .B(N10), .Y(n28) );
  BUFX4M U26 ( .A(N10), .Y(n191) );
  BUFX4M U27 ( .A(N10), .Y(n192) );
  CLKBUFX2M U28 ( .A(N10), .Y(n190) );
  CLKBUFX2M U29 ( .A(N11), .Y(n188) );
  CLKBUFX2M U30 ( .A(N11), .Y(n189) );
  CLKBUFX2M U31 ( .A(N11), .Y(n187) );
  CLKBUFX2M U32 ( .A(n205), .Y(n195) );
  CLKBUFX2M U33 ( .A(n205), .Y(n196) );
  CLKBUFX2M U34 ( .A(n205), .Y(n197) );
  CLKBUFX2M U35 ( .A(n204), .Y(n198) );
  CLKBUFX2M U36 ( .A(n204), .Y(n199) );
  CLKBUFX2M U37 ( .A(n204), .Y(n200) );
  CLKBUFX2M U38 ( .A(n203), .Y(n201) );
  CLKBUFX2M U39 ( .A(n203), .Y(n202) );
  INVX2M U40 ( .A(WrData[0]), .Y(n214) );
  INVX2M U41 ( .A(WrData[1]), .Y(n213) );
  INVX2M U42 ( .A(WrData[2]), .Y(n211) );
  INVX2M U43 ( .A(WrData[3]), .Y(n210) );
  INVX2M U44 ( .A(WrData[4]), .Y(n209) );
  INVX2M U45 ( .A(WrData[7]), .Y(n206) );
  AND2X2M U46 ( .A(n25), .B(n193), .Y(n16) );
  NOR2BX2M U47 ( .AN(WrEn), .B(N13), .Y(n36) );
  AND2X2M U48 ( .A(n36), .B(n193), .Y(n30) );
  INVX2M U49 ( .A(N12), .Y(n212) );
  AND2X2M U50 ( .A(WrEn), .B(N13), .Y(n25) );
  CLKBUFX2M U51 ( .A(rst), .Y(n204) );
  CLKBUFX2M U52 ( .A(rst), .Y(n203) );
  CLKBUFX2M U53 ( .A(rst), .Y(n205) );
  OAI2BB2X1M U54 ( .B0(n12), .B1(n214), .A0N(\Memory[15][0] ), .A1N(n12), .Y(
        n38) );
  OAI2BB2X1M U55 ( .B0(n12), .B1(n213), .A0N(\Memory[15][1] ), .A1N(n12), .Y(
        n39) );
  OAI2BB2X1M U56 ( .B0(n12), .B1(n211), .A0N(\Memory[15][2] ), .A1N(n12), .Y(
        n40) );
  OAI2BB2X1M U57 ( .B0(n12), .B1(n210), .A0N(\Memory[15][3] ), .A1N(n12), .Y(
        n41) );
  OAI2BB2X1M U58 ( .B0(n12), .B1(n209), .A0N(\Memory[15][4] ), .A1N(n12), .Y(
        n42) );
  OAI2BB2X1M U59 ( .B0(n12), .B1(n208), .A0N(\Memory[15][5] ), .A1N(n12), .Y(
        n43) );
  OAI2BB2X1M U60 ( .B0(n12), .B1(n207), .A0N(\Memory[15][6] ), .A1N(n12), .Y(
        n44) );
  OAI2BB2X1M U61 ( .B0(n12), .B1(n206), .A0N(\Memory[15][7] ), .A1N(n12), .Y(
        n45) );
  OAI2BB2X1M U62 ( .B0(n214), .B1(n20), .A0N(\Memory[11][0] ), .A1N(n20), .Y(
        n70) );
  OAI2BB2X1M U63 ( .B0(n213), .B1(n20), .A0N(\Memory[11][1] ), .A1N(n20), .Y(
        n71) );
  OAI2BB2X1M U64 ( .B0(n211), .B1(n20), .A0N(\Memory[11][2] ), .A1N(n20), .Y(
        n72) );
  OAI2BB2X1M U65 ( .B0(n210), .B1(n20), .A0N(\Memory[11][3] ), .A1N(n20), .Y(
        n73) );
  OAI2BB2X1M U66 ( .B0(n209), .B1(n20), .A0N(\Memory[11][4] ), .A1N(n20), .Y(
        n74) );
  OAI2BB2X1M U67 ( .B0(n208), .B1(n20), .A0N(\Memory[11][5] ), .A1N(n20), .Y(
        n75) );
  OAI2BB2X1M U68 ( .B0(n207), .B1(n20), .A0N(\Memory[11][6] ), .A1N(n20), .Y(
        n76) );
  OAI2BB2X1M U69 ( .B0(n206), .B1(n20), .A0N(\Memory[11][7] ), .A1N(n20), .Y(
        n77) );
  OAI2BB2X1M U70 ( .B0(n214), .B1(n22), .A0N(\Memory[10][0] ), .A1N(n22), .Y(
        n78) );
  OAI2BB2X1M U71 ( .B0(n213), .B1(n22), .A0N(\Memory[10][1] ), .A1N(n22), .Y(
        n79) );
  OAI2BB2X1M U72 ( .B0(n211), .B1(n22), .A0N(\Memory[10][2] ), .A1N(n22), .Y(
        n80) );
  OAI2BB2X1M U73 ( .B0(n210), .B1(n22), .A0N(\Memory[10][3] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U74 ( .B0(n209), .B1(n22), .A0N(\Memory[10][4] ), .A1N(n22), .Y(
        n82) );
  OAI2BB2X1M U75 ( .B0(n208), .B1(n22), .A0N(\Memory[10][5] ), .A1N(n22), .Y(
        n83) );
  OAI2BB2X1M U76 ( .B0(n207), .B1(n22), .A0N(\Memory[10][6] ), .A1N(n22), .Y(
        n84) );
  OAI2BB2X1M U77 ( .B0(n206), .B1(n22), .A0N(\Memory[10][7] ), .A1N(n22), .Y(
        n85) );
  OAI2BB2X1M U78 ( .B0(n214), .B1(n23), .A0N(\Memory[9][0] ), .A1N(n23), .Y(
        n86) );
  OAI2BB2X1M U79 ( .B0(n213), .B1(n23), .A0N(\Memory[9][1] ), .A1N(n23), .Y(
        n87) );
  OAI2BB2X1M U80 ( .B0(n211), .B1(n23), .A0N(\Memory[9][2] ), .A1N(n23), .Y(
        n88) );
  OAI2BB2X1M U81 ( .B0(n210), .B1(n23), .A0N(\Memory[9][3] ), .A1N(n23), .Y(
        n89) );
  OAI2BB2X1M U82 ( .B0(n209), .B1(n23), .A0N(\Memory[9][4] ), .A1N(n23), .Y(
        n90) );
  OAI2BB2X1M U83 ( .B0(n208), .B1(n23), .A0N(\Memory[9][5] ), .A1N(n23), .Y(
        n91) );
  OAI2BB2X1M U84 ( .B0(n207), .B1(n23), .A0N(\Memory[9][6] ), .A1N(n23), .Y(
        n92) );
  OAI2BB2X1M U85 ( .B0(n206), .B1(n23), .A0N(\Memory[9][7] ), .A1N(n23), .Y(
        n93) );
  OAI2BB2X1M U86 ( .B0(n214), .B1(n26), .A0N(\Memory[8][0] ), .A1N(n26), .Y(
        n94) );
  OAI2BB2X1M U87 ( .B0(n213), .B1(n26), .A0N(\Memory[8][1] ), .A1N(n26), .Y(
        n95) );
  OAI2BB2X1M U88 ( .B0(n211), .B1(n26), .A0N(\Memory[8][2] ), .A1N(n26), .Y(
        n96) );
  OAI2BB2X1M U89 ( .B0(n210), .B1(n26), .A0N(\Memory[8][3] ), .A1N(n26), .Y(
        n97) );
  OAI2BB2X1M U90 ( .B0(n209), .B1(n26), .A0N(\Memory[8][4] ), .A1N(n26), .Y(
        n98) );
  OAI2BB2X1M U91 ( .B0(n208), .B1(n26), .A0N(\Memory[8][5] ), .A1N(n26), .Y(
        n99) );
  OAI2BB2X1M U92 ( .B0(n207), .B1(n26), .A0N(\Memory[8][6] ), .A1N(n26), .Y(
        n100) );
  OAI2BB2X1M U93 ( .B0(n206), .B1(n26), .A0N(\Memory[8][7] ), .A1N(n26), .Y(
        n101) );
  OAI2BB2X1M U94 ( .B0(n214), .B1(n17), .A0N(\Memory[13][0] ), .A1N(n17), .Y(
        n54) );
  OAI2BB2X1M U95 ( .B0(n213), .B1(n17), .A0N(\Memory[13][1] ), .A1N(n17), .Y(
        n55) );
  OAI2BB2X1M U96 ( .B0(n211), .B1(n17), .A0N(\Memory[13][2] ), .A1N(n17), .Y(
        n56) );
  OAI2BB2X1M U97 ( .B0(n210), .B1(n17), .A0N(\Memory[13][3] ), .A1N(n17), .Y(
        n57) );
  OAI2BB2X1M U98 ( .B0(n209), .B1(n17), .A0N(\Memory[13][4] ), .A1N(n17), .Y(
        n58) );
  OAI2BB2X1M U99 ( .B0(n208), .B1(n17), .A0N(\Memory[13][5] ), .A1N(n17), .Y(
        n59) );
  OAI2BB2X1M U100 ( .B0(n207), .B1(n17), .A0N(\Memory[13][6] ), .A1N(n17), .Y(
        n60) );
  OAI2BB2X1M U101 ( .B0(n206), .B1(n17), .A0N(\Memory[13][7] ), .A1N(n17), .Y(
        n61) );
  OAI2BB2X1M U102 ( .B0(n214), .B1(n19), .A0N(\Memory[12][0] ), .A1N(n19), .Y(
        n62) );
  OAI2BB2X1M U103 ( .B0(n213), .B1(n19), .A0N(\Memory[12][1] ), .A1N(n19), .Y(
        n63) );
  OAI2BB2X1M U104 ( .B0(n211), .B1(n19), .A0N(\Memory[12][2] ), .A1N(n19), .Y(
        n64) );
  OAI2BB2X1M U105 ( .B0(n210), .B1(n19), .A0N(\Memory[12][3] ), .A1N(n19), .Y(
        n65) );
  OAI2BB2X1M U106 ( .B0(n209), .B1(n19), .A0N(\Memory[12][4] ), .A1N(n19), .Y(
        n66) );
  OAI2BB2X1M U107 ( .B0(n208), .B1(n19), .A0N(\Memory[12][5] ), .A1N(n19), .Y(
        n67) );
  OAI2BB2X1M U108 ( .B0(n207), .B1(n19), .A0N(\Memory[12][6] ), .A1N(n19), .Y(
        n68) );
  OAI2BB2X1M U109 ( .B0(n206), .B1(n19), .A0N(\Memory[12][7] ), .A1N(n19), .Y(
        n69) );
  OAI2BB2X1M U110 ( .B0(n214), .B1(n15), .A0N(\Memory[14][0] ), .A1N(n15), .Y(
        n46) );
  OAI2BB2X1M U111 ( .B0(n213), .B1(n15), .A0N(\Memory[14][1] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U112 ( .B0(n211), .B1(n15), .A0N(\Memory[14][2] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U113 ( .B0(n210), .B1(n15), .A0N(\Memory[14][3] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U114 ( .B0(n209), .B1(n15), .A0N(\Memory[14][4] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U115 ( .B0(n208), .B1(n15), .A0N(\Memory[14][5] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U116 ( .B0(n207), .B1(n15), .A0N(\Memory[14][6] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U117 ( .B0(n206), .B1(n15), .A0N(\Memory[14][7] ), .A1N(n15), .Y(
        n53) );
  OAI2BB2X1M U118 ( .B0(n214), .B1(n27), .A0N(\Memory[7][0] ), .A1N(n27), .Y(
        n102) );
  OAI2BB2X1M U119 ( .B0(n213), .B1(n27), .A0N(\Memory[7][1] ), .A1N(n27), .Y(
        n103) );
  OAI2BB2X1M U120 ( .B0(n211), .B1(n27), .A0N(\Memory[7][2] ), .A1N(n27), .Y(
        n104) );
  OAI2BB2X1M U121 ( .B0(n210), .B1(n27), .A0N(\Memory[7][3] ), .A1N(n27), .Y(
        n105) );
  OAI2BB2X1M U122 ( .B0(n209), .B1(n27), .A0N(\Memory[7][4] ), .A1N(n27), .Y(
        n106) );
  OAI2BB2X1M U123 ( .B0(n208), .B1(n27), .A0N(\Memory[7][5] ), .A1N(n27), .Y(
        n107) );
  OAI2BB2X1M U124 ( .B0(n207), .B1(n27), .A0N(\Memory[7][6] ), .A1N(n27), .Y(
        n108) );
  OAI2BB2X1M U125 ( .B0(n206), .B1(n27), .A0N(\Memory[7][7] ), .A1N(n27), .Y(
        n109) );
  OAI2BB2X1M U126 ( .B0(n214), .B1(n29), .A0N(\Memory[6][0] ), .A1N(n29), .Y(
        n110) );
  OAI2BB2X1M U127 ( .B0(n213), .B1(n29), .A0N(\Memory[6][1] ), .A1N(n29), .Y(
        n111) );
  OAI2BB2X1M U128 ( .B0(n211), .B1(n29), .A0N(\Memory[6][2] ), .A1N(n29), .Y(
        n112) );
  OAI2BB2X1M U129 ( .B0(n210), .B1(n29), .A0N(\Memory[6][3] ), .A1N(n29), .Y(
        n113) );
  OAI2BB2X1M U130 ( .B0(n209), .B1(n29), .A0N(\Memory[6][4] ), .A1N(n29), .Y(
        n114) );
  OAI2BB2X1M U131 ( .B0(n208), .B1(n29), .A0N(\Memory[6][5] ), .A1N(n29), .Y(
        n115) );
  OAI2BB2X1M U132 ( .B0(n207), .B1(n29), .A0N(\Memory[6][6] ), .A1N(n29), .Y(
        n116) );
  OAI2BB2X1M U133 ( .B0(n206), .B1(n29), .A0N(\Memory[6][7] ), .A1N(n29), .Y(
        n117) );
  OAI2BB2X1M U134 ( .B0(n214), .B1(n33), .A0N(REG3_DIV[0]), .A1N(n33), .Y(n134) );
  OAI2BB2X1M U135 ( .B0(n213), .B1(n33), .A0N(REG3_DIV[1]), .A1N(n33), .Y(n135) );
  OAI2BB2X1M U136 ( .B0(n211), .B1(n33), .A0N(REG3_DIV[2]), .A1N(n33), .Y(n136) );
  OAI2BB2X1M U137 ( .B0(n209), .B1(n33), .A0N(\Memory[3][4] ), .A1N(n33), .Y(
        n138) );
  OAI2BB2X1M U138 ( .B0(n208), .B1(n33), .A0N(\Memory[3][5] ), .A1N(n33), .Y(
        n139) );
  OAI2BB2X1M U139 ( .B0(n207), .B1(n33), .A0N(\Memory[3][6] ), .A1N(n33), .Y(
        n140) );
  OAI2BB2X1M U140 ( .B0(n206), .B1(n33), .A0N(\Memory[3][7] ), .A1N(n33), .Y(
        n141) );
  OAI2BB2X1M U141 ( .B0(n214), .B1(n34), .A0N(REG2_UART[0]), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U142 ( .B0(n213), .B1(n34), .A0N(REG2_UART[1]), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U143 ( .B0(n208), .B1(n34), .A0N(REG2_UART[5]), .A1N(n34), .Y(
        n147) );
  OAI2BB2X1M U144 ( .B0(n207), .B1(n34), .A0N(REG2_UART[6]), .A1N(n34), .Y(
        n148) );
  OAI2BB2X1M U145 ( .B0(n206), .B1(n34), .A0N(\Memory[2][7] ), .A1N(n34), .Y(
        n149) );
  OAI2BB2X1M U146 ( .B0(n214), .B1(n35), .A0N(REG1_ALU_B[0]), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U147 ( .B0(n213), .B1(n35), .A0N(REG1_ALU_B[1]), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U148 ( .B0(n211), .B1(n35), .A0N(REG1_ALU_B[2]), .A1N(n35), .Y(
        n152) );
  OAI2BB2X1M U149 ( .B0(n210), .B1(n35), .A0N(REG1_ALU_B[3]), .A1N(n35), .Y(
        n153) );
  OAI2BB2X1M U150 ( .B0(n209), .B1(n35), .A0N(REG1_ALU_B[4]), .A1N(n35), .Y(
        n154) );
  OAI2BB2X1M U151 ( .B0(n208), .B1(n35), .A0N(REG1_ALU_B[5]), .A1N(n35), .Y(
        n155) );
  OAI2BB2X1M U152 ( .B0(n207), .B1(n35), .A0N(REG1_ALU_B[6]), .A1N(n35), .Y(
        n156) );
  OAI2BB2X1M U153 ( .B0(n206), .B1(n35), .A0N(REG1_ALU_B[7]), .A1N(n35), .Y(
        n157) );
  OAI2BB2X1M U154 ( .B0(n214), .B1(n37), .A0N(REG0_ALU_A[0]), .A1N(n37), .Y(
        n158) );
  OAI2BB2X1M U155 ( .B0(n213), .B1(n37), .A0N(REG0_ALU_A[1]), .A1N(n37), .Y(
        n159) );
  OAI2BB2X1M U156 ( .B0(n211), .B1(n37), .A0N(REG0_ALU_A[2]), .A1N(n37), .Y(
        n160) );
  OAI2BB2X1M U157 ( .B0(n210), .B1(n37), .A0N(REG0_ALU_A[3]), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U158 ( .B0(n209), .B1(n37), .A0N(REG0_ALU_A[4]), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U159 ( .B0(n208), .B1(n37), .A0N(REG0_ALU_A[5]), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U160 ( .B0(n207), .B1(n37), .A0N(REG0_ALU_A[6]), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U161 ( .B0(n206), .B1(n37), .A0N(REG0_ALU_A[7]), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U162 ( .B0(n214), .B1(n31), .A0N(\Memory[5][0] ), .A1N(n31), .Y(
        n118) );
  OAI2BB2X1M U163 ( .B0(n213), .B1(n31), .A0N(\Memory[5][1] ), .A1N(n31), .Y(
        n119) );
  OAI2BB2X1M U164 ( .B0(n211), .B1(n31), .A0N(\Memory[5][2] ), .A1N(n31), .Y(
        n120) );
  OAI2BB2X1M U165 ( .B0(n210), .B1(n31), .A0N(\Memory[5][3] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U166 ( .B0(n209), .B1(n31), .A0N(\Memory[5][4] ), .A1N(n31), .Y(
        n122) );
  OAI2BB2X1M U167 ( .B0(n208), .B1(n31), .A0N(\Memory[5][5] ), .A1N(n31), .Y(
        n123) );
  OAI2BB2X1M U168 ( .B0(n207), .B1(n31), .A0N(\Memory[5][6] ), .A1N(n31), .Y(
        n124) );
  OAI2BB2X1M U169 ( .B0(n206), .B1(n31), .A0N(\Memory[5][7] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U170 ( .B0(n214), .B1(n32), .A0N(\Memory[4][0] ), .A1N(n32), .Y(
        n126) );
  OAI2BB2X1M U171 ( .B0(n213), .B1(n32), .A0N(\Memory[4][1] ), .A1N(n32), .Y(
        n127) );
  OAI2BB2X1M U172 ( .B0(n211), .B1(n32), .A0N(\Memory[4][2] ), .A1N(n32), .Y(
        n128) );
  OAI2BB2X1M U173 ( .B0(n210), .B1(n32), .A0N(\Memory[4][3] ), .A1N(n32), .Y(
        n129) );
  OAI2BB2X1M U174 ( .B0(n209), .B1(n32), .A0N(\Memory[4][4] ), .A1N(n32), .Y(
        n130) );
  OAI2BB2X1M U175 ( .B0(n208), .B1(n32), .A0N(\Memory[4][5] ), .A1N(n32), .Y(
        n131) );
  OAI2BB2X1M U176 ( .B0(n207), .B1(n32), .A0N(\Memory[4][6] ), .A1N(n32), .Y(
        n132) );
  OAI2BB2X1M U177 ( .B0(n206), .B1(n32), .A0N(\Memory[4][7] ), .A1N(n32), .Y(
        n133) );
  OAI2BB2X1M U178 ( .B0(n210), .B1(n33), .A0N(REG3_DIV[3]), .A1N(n33), .Y(n137) );
  OAI2BB2X1M U179 ( .B0(n211), .B1(n34), .A0N(REG2_UART[2]), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U180 ( .B0(n210), .B1(n34), .A0N(REG2_UART[3]), .A1N(n34), .Y(
        n145) );
  OAI2BB2X1M U181 ( .B0(n209), .B1(n34), .A0N(REG2_UART[4]), .A1N(n34), .Y(
        n146) );
  INVX2M U182 ( .A(N11), .Y(n194) );
  INVX2M U183 ( .A(N10), .Y(n193) );
  MX4X1M U184 ( .A(REG0_ALU_A[1]), .B(REG1_ALU_B[1]), .C(REG2_UART[1]), .D(
        REG3_DIV[1]), .S0(n191), .S1(n187), .Y(n8) );
  MX4X1M U185 ( .A(REG0_ALU_A[2]), .B(REG1_ALU_B[2]), .C(REG2_UART[2]), .D(
        REG3_DIV[2]), .S0(n191), .S1(n188), .Y(n166) );
  MX4X1M U186 ( .A(REG0_ALU_A[3]), .B(REG1_ALU_B[3]), .C(REG2_UART[3]), .D(
        REG3_DIV[3]), .S0(n191), .S1(n188), .Y(n170) );
  MX4X1M U187 ( .A(REG0_ALU_A[4]), .B(REG1_ALU_B[4]), .C(REG2_UART[4]), .D(
        \Memory[3][4] ), .S0(n192), .S1(n188), .Y(n174) );
  MX4X1M U188 ( .A(REG0_ALU_A[5]), .B(REG1_ALU_B[5]), .C(REG2_UART[5]), .D(
        \Memory[3][5] ), .S0(n192), .S1(n189), .Y(n178) );
  MX4X1M U189 ( .A(REG0_ALU_A[6]), .B(REG1_ALU_B[6]), .C(REG2_UART[6]), .D(
        \Memory[3][6] ), .S0(n192), .S1(n189), .Y(n182) );
  MX4X1M U190 ( .A(REG0_ALU_A[7]), .B(REG1_ALU_B[7]), .C(\Memory[2][7] ), .D(
        \Memory[3][7] ), .S0(n192), .S1(n189), .Y(n186) );
  MX4X1M U191 ( .A(\Memory[4][1] ), .B(\Memory[5][1] ), .C(\Memory[6][1] ), 
        .D(\Memory[7][1] ), .S0(n191), .S1(n187), .Y(n7) );
  MX4X1M U192 ( .A(\Memory[4][2] ), .B(\Memory[5][2] ), .C(\Memory[6][2] ), 
        .D(\Memory[7][2] ), .S0(n191), .S1(n188), .Y(n11) );
  MX4X1M U193 ( .A(\Memory[4][3] ), .B(\Memory[5][3] ), .C(\Memory[6][3] ), 
        .D(\Memory[7][3] ), .S0(n191), .S1(n188), .Y(n169) );
  MX4X1M U194 ( .A(\Memory[4][4] ), .B(\Memory[5][4] ), .C(\Memory[6][4] ), 
        .D(\Memory[7][4] ), .S0(n191), .S1(n188), .Y(n173) );
  MX4X1M U195 ( .A(\Memory[4][5] ), .B(\Memory[5][5] ), .C(\Memory[6][5] ), 
        .D(\Memory[7][5] ), .S0(n192), .S1(n189), .Y(n177) );
  MX4X1M U196 ( .A(\Memory[4][6] ), .B(\Memory[5][6] ), .C(\Memory[6][6] ), 
        .D(\Memory[7][6] ), .S0(n192), .S1(n189), .Y(n181) );
  MX4X1M U197 ( .A(\Memory[4][7] ), .B(\Memory[5][7] ), .C(\Memory[6][7] ), 
        .D(\Memory[7][7] ), .S0(n192), .S1(n189), .Y(n185) );
  MX4X1M U198 ( .A(\Memory[12][0] ), .B(\Memory[13][0] ), .C(\Memory[14][0] ), 
        .D(\Memory[15][0] ), .S0(n190), .S1(n187), .Y(n1) );
  MX4X1M U199 ( .A(\Memory[12][1] ), .B(\Memory[13][1] ), .C(\Memory[14][1] ), 
        .D(\Memory[15][1] ), .S0(n190), .S1(n187), .Y(n5) );
  MX4X1M U200 ( .A(\Memory[12][2] ), .B(\Memory[13][2] ), .C(\Memory[14][2] ), 
        .D(\Memory[15][2] ), .S0(n191), .S1(n188), .Y(n9) );
  MX4X1M U201 ( .A(\Memory[12][3] ), .B(\Memory[13][3] ), .C(\Memory[14][3] ), 
        .D(\Memory[15][3] ), .S0(n191), .S1(n188), .Y(n167) );
  MX4X1M U202 ( .A(\Memory[12][4] ), .B(\Memory[13][4] ), .C(\Memory[14][4] ), 
        .D(\Memory[15][4] ), .S0(n191), .S1(n188), .Y(n171) );
  MX4X1M U203 ( .A(\Memory[12][5] ), .B(\Memory[13][5] ), .C(\Memory[14][5] ), 
        .D(\Memory[15][5] ), .S0(n192), .S1(n189), .Y(n175) );
  MX4X1M U204 ( .A(\Memory[12][6] ), .B(\Memory[13][6] ), .C(\Memory[14][6] ), 
        .D(\Memory[15][6] ), .S0(n192), .S1(n189), .Y(n179) );
  MX4X1M U205 ( .A(\Memory[12][7] ), .B(\Memory[13][7] ), .C(\Memory[14][7] ), 
        .D(\Memory[15][7] ), .S0(n192), .S1(n189), .Y(n183) );
  MX4X1M U206 ( .A(\Memory[8][2] ), .B(\Memory[9][2] ), .C(\Memory[10][2] ), 
        .D(\Memory[11][2] ), .S0(n191), .S1(n188), .Y(n10) );
  MX4X1M U207 ( .A(\Memory[8][3] ), .B(\Memory[9][3] ), .C(\Memory[10][3] ), 
        .D(\Memory[11][3] ), .S0(n191), .S1(n188), .Y(n168) );
  MX4X1M U208 ( .A(\Memory[8][4] ), .B(\Memory[9][4] ), .C(\Memory[10][4] ), 
        .D(\Memory[11][4] ), .S0(n191), .S1(n188), .Y(n172) );
  MX4X1M U209 ( .A(\Memory[8][5] ), .B(\Memory[9][5] ), .C(\Memory[10][5] ), 
        .D(\Memory[11][5] ), .S0(n192), .S1(n189), .Y(n176) );
  MX4X1M U210 ( .A(\Memory[8][6] ), .B(\Memory[9][6] ), .C(\Memory[10][6] ), 
        .D(\Memory[11][6] ), .S0(n192), .S1(n189), .Y(n180) );
  MX4X1M U211 ( .A(\Memory[8][7] ), .B(\Memory[9][7] ), .C(\Memory[10][7] ), 
        .D(\Memory[11][7] ), .S0(n192), .S1(n189), .Y(n184) );
  MX4X1M U212 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N13), .S1(N12), .Y(
        RdData[0]) );
  MX4X1M U213 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N13), .S1(N12), .Y(
        RdData[1]) );
  MX4X1M U214 ( .A(n166), .B(n10), .C(n11), .D(n9), .S0(N13), .S1(N12), .Y(
        RdData[2]) );
  MX4X1M U215 ( .A(n170), .B(n168), .C(n169), .D(n167), .S0(N13), .S1(N12), 
        .Y(RdData[3]) );
  MX4X1M U216 ( .A(n174), .B(n172), .C(n173), .D(n171), .S0(N13), .S1(N12), 
        .Y(RdData[4]) );
  MX4X1M U217 ( .A(n178), .B(n176), .C(n177), .D(n175), .S0(N13), .S1(N12), 
        .Y(RdData[5]) );
  MX4X1M U218 ( .A(n182), .B(n180), .C(n181), .D(n179), .S0(N13), .S1(N12), 
        .Y(RdData[6]) );
  MX4X1M U219 ( .A(n186), .B(n184), .C(n185), .D(n183), .S0(N13), .S1(N12), 
        .Y(RdData[7]) );
  MX4X1M U220 ( .A(REG0_ALU_A[0]), .B(REG1_ALU_B[0]), .C(REG2_UART[0]), .D(
        REG3_DIV[0]), .S0(n190), .S1(n187), .Y(n4) );
  MX4X1M U221 ( .A(\Memory[4][0] ), .B(\Memory[5][0] ), .C(\Memory[6][0] ), 
        .D(\Memory[7][0] ), .S0(n190), .S1(n187), .Y(n3) );
  MX4X1M U222 ( .A(\Memory[8][0] ), .B(\Memory[9][0] ), .C(\Memory[10][0] ), 
        .D(\Memory[11][0] ), .S0(n190), .S1(n187), .Y(n2) );
  MX4X1M U223 ( .A(\Memory[8][1] ), .B(\Memory[9][1] ), .C(\Memory[10][1] ), 
        .D(\Memory[11][1] ), .S0(n190), .S1(n187), .Y(n6) );
endmodule


module RX_FSM ( clk, rst, RX_IN, PAR_EN, Prescale, bit_cnt, data_finish_flag, 
        edge_cnt, P_DATA, PAR_TYP, Error, Compared_bit, counter_en, 
        bits_counter_en, Error_Unit_En, data_samp_en, deser_en, data_valid );
  input [1:0] Prescale;
  input [4:0] edge_cnt;
  input [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_EN, bit_cnt, data_finish_flag, PAR_TYP, Error;
  output Compared_bit, counter_en, bits_counter_en, Error_Unit_En,
         data_samp_en, deser_en, data_valid;
  wire   Error_REG, N74, N82, n59, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37;
  wire   [2:0] CurrentState;
  wire   [2:0] NextState;
  assign data_samp_en = N82;

  DFFRQX2M Error_REG_reg ( .D(n59), .CK(clk), .RN(rst), .Q(Error_REG) );
  DFFRQX2M \CurrentState_reg[0]  ( .D(NextState[0]), .CK(clk), .RN(rst), .Q(
        CurrentState[0]) );
  DFFRQX2M \CurrentState_reg[2]  ( .D(NextState[2]), .CK(clk), .RN(rst), .Q(
        CurrentState[2]) );
  DFFRQX2M \CurrentState_reg[1]  ( .D(NextState[1]), .CK(clk), .RN(rst), .Q(
        CurrentState[1]) );
  DFFRQX2M data_valid_reg ( .D(N74), .CK(clk), .RN(rst), .Q(data_valid) );
  NOR2BX1M U3 ( .AN(n1), .B(n2), .Y(n59) );
  AOI31X1M U4 ( .A0(n3), .A1(n4), .A2(Error), .B0(Error_REG), .Y(n2) );
  NOR2X1M U5 ( .A(n5), .B(n6), .Y(deser_en) );
  OAI21X1M U6 ( .A0(bit_cnt), .A1(n7), .B0(n8), .Y(counter_en) );
  AOI21X1M U7 ( .A0(CurrentState[1]), .A1(n9), .B0(n10), .Y(n7) );
  OAI31X1M U8 ( .A0(n11), .A1(PAR_EN), .A2(n6), .B0(n12), .Y(NextState[2]) );
  CLKMX2X2M U9 ( .A(n13), .B(n14), .S0(bit_cnt), .Y(n12) );
  CLKINVX1M U10 ( .A(data_finish_flag), .Y(n11) );
  NAND3X1M U11 ( .A(n14), .B(n6), .C(n15), .Y(NextState[1]) );
  CLKMX2X2M U12 ( .A(n13), .B(n16), .S0(bit_cnt), .Y(n15) );
  OAI211X1M U13 ( .A0(n13), .A1(n17), .B0(n16), .C0(n8), .Y(NextState[0]) );
  OA21X1M U14 ( .A0(data_finish_flag), .A1(n6), .B0(n18), .Y(n8) );
  NAND4X1M U15 ( .A(n9), .B(n19), .C(n20), .D(n21), .Y(n18) );
  CLKINVX1M U16 ( .A(bits_counter_en), .Y(n6) );
  NOR3X1M U17 ( .A(n9), .B(CurrentState[2]), .C(n19), .Y(bits_counter_en) );
  CLKINVX1M U18 ( .A(n10), .Y(n16) );
  NOR2X1M U19 ( .A(n1), .B(Error), .Y(n10) );
  CLKNAND2X2M U20 ( .A(bit_cnt), .B(n21), .Y(n17) );
  CLKINVX1M U21 ( .A(RX_IN), .Y(n21) );
  OAI32X1M U22 ( .A0(n22), .A1(n23), .A2(n24), .B0(n25), .B1(n26), .Y(N82) );
  MX3X1M U23 ( .A(n27), .B(n28), .C(n29), .S0(n30), .S1(Prescale[0]), .Y(n26)
         );
  NAND3X1M U24 ( .A(n31), .B(n23), .C(edge_cnt[2]), .Y(n29) );
  NAND2BX1M U25 ( .AN(edge_cnt[0]), .B(n28), .Y(n27) );
  CLKINVX1M U26 ( .A(n32), .Y(n25) );
  CLKINVX1M U27 ( .A(edge_cnt[3]), .Y(n24) );
  CLKINVX1M U28 ( .A(Prescale[1]), .Y(n23) );
  NAND3BX1M U29 ( .AN(edge_cnt[4]), .B(n30), .C(n31), .Y(n22) );
  CLKNAND2X2M U30 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .Y(n31) );
  NOR3BX1M U31 ( .AN(bit_cnt), .B(n13), .C(Error_REG), .Y(N74) );
  AOI2B1X1M U32 ( .A1N(n3), .A0(n1), .B0(n5), .Y(Error_Unit_En) );
  CLKINVX1M U33 ( .A(n4), .Y(n5) );
  OAI31X1M U34 ( .A0(n30), .A1(Prescale[0]), .A2(n28), .B0(n32), .Y(n4) );
  NOR2X1M U35 ( .A(edge_cnt[4]), .B(edge_cnt[3]), .Y(n32) );
  CLKINVX1M U36 ( .A(edge_cnt[1]), .Y(n28) );
  CLKINVX1M U37 ( .A(edge_cnt[2]), .Y(n30) );
  NAND3X1M U38 ( .A(n19), .B(n20), .C(CurrentState[0]), .Y(n1) );
  CLKINVX1M U39 ( .A(CurrentState[1]), .Y(n19) );
  CLKNAND2X2M U40 ( .A(n14), .B(n13), .Y(n3) );
  OAI21X1M U41 ( .A0(n33), .A1(n14), .B0(n13), .Y(Compared_bit) );
  NAND3X1M U42 ( .A(CurrentState[1]), .B(n9), .C(CurrentState[2]), .Y(n13) );
  NAND3X1M U43 ( .A(n9), .B(n20), .C(CurrentState[1]), .Y(n14) );
  CLKINVX1M U44 ( .A(CurrentState[2]), .Y(n20) );
  CLKINVX1M U45 ( .A(CurrentState[0]), .Y(n9) );
  XOR3XLM U46 ( .A(n34), .B(PAR_TYP), .C(n35), .Y(n33) );
  XOR3XLM U47 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n36), .Y(n35) );
  XNOR2X1M U48 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n36) );
  XOR3XLM U49 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n37), .Y(n34) );
  CLKXOR2X2M U50 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n37) );
endmodule


module Error_Unit ( clk, rst, sampled_bit, Compared_bit, Enable, Error );
  input clk, rst, sampled_bit, Compared_bit, Enable;
  output Error;
  wire   n1;

  NOR2BX2M U3 ( .AN(Enable), .B(n1), .Y(Error) );
  XNOR2X2M U4 ( .A(sampled_bit), .B(Compared_bit), .Y(n1) );
endmodule


module Bits_Counter ( clk, rst, enable, bits_counter, finish );
  output [2:0] bits_counter;
  input clk, rst, enable;
  output finish;
  wire   n1, n2, n4, n5, n6, n3;

  DFFRQX2M \bits_counter_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(
        bits_counter[2]) );
  DFFRQX2M \bits_counter_reg[1]  ( .D(n5), .CK(clk), .RN(rst), .Q(
        bits_counter[1]) );
  DFFRQX2M \bits_counter_reg[0]  ( .D(n6), .CK(clk), .RN(rst), .Q(
        bits_counter[0]) );
  NOR3BX2M U3 ( .AN(bits_counter[2]), .B(n2), .C(n3), .Y(finish) );
  XNOR2X2M U4 ( .A(bits_counter[1]), .B(n2), .Y(n5) );
  NAND2X2M U5 ( .A(enable), .B(bits_counter[0]), .Y(n2) );
  INVX2M U6 ( .A(bits_counter[1]), .Y(n3) );
  CLKXOR2X2M U7 ( .A(enable), .B(bits_counter[0]), .Y(n6) );
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

  DFFRQX2M finish_reg ( .D(N21), .CK(clk), .RN(rst), .Q(finish) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N14), .CK(clk), .RN(rst), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N10), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N12), .CK(clk), .RN(rst), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N13), .CK(clk), .RN(rst), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N11), .CK(clk), .RN(rst), .Q(edge_cnt[1]) );
  NOR2BX2M U3 ( .AN(N8), .B(n5), .Y(N13) );
  NOR2BX2M U4 ( .AN(N7), .B(n5), .Y(N12) );
  NOR2BX2M U5 ( .AN(N6), .B(n5), .Y(N11) );
  NAND2BX2M U6 ( .AN(finish), .B(enable), .Y(n5) );
  NOR2X2M U7 ( .A(n1), .B(n5), .Y(N14) );
  XNOR2X2M U8 ( .A(\add_21/carry[4] ), .B(edge_cnt[4]), .Y(n1) );
  NOR2X2M U9 ( .A(edge_cnt[0]), .B(n5), .Y(N10) );
  ADDHX1M U10 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_21/carry[2] ), .S(
        N6) );
  ADDHX1M U11 ( .A(edge_cnt[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N7) );
  ADDHX1M U12 ( .A(edge_cnt[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N8) );
  INVX2M U13 ( .A(Prescale[0]), .Y(N15) );
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

  DFFRQX2M \bits_reg[2]  ( .D(n6), .CK(clk), .RN(rst), .Q(bits[2]) );
  DFFRQX2M \bits_reg[1]  ( .D(n7), .CK(clk), .RN(rst), .Q(bits[1]) );
  DFFRX1M \bits_reg[0]  ( .D(n8), .CK(clk), .RN(rst), .Q(bits[0]), .QN(n4) );
  INVX2M U2 ( .A(data_samp_en), .Y(n3) );
  OAI22XLM U3 ( .A0(data_samp_en), .A1(n5), .B0(n4), .B1(n3), .Y(n7) );
  AOI21X2M U4 ( .A0(n1), .A1(n2), .B0(data_samp_en), .Y(sampled_bit) );
  NAND2X2M U5 ( .A(bits[1]), .B(bits[0]), .Y(n1) );
  OAI21X2M U6 ( .A0(bits[0]), .A1(bits[1]), .B0(bits[2]), .Y(n2) );
  OAI2BB2XLM U7 ( .B0(data_samp_en), .B1(n4), .A0N(RX_in), .A1N(data_samp_en), 
        .Y(n8) );
  OAI2BB2X1M U8 ( .B0(n5), .B1(n3), .A0N(n3), .A1N(bits[2]), .Y(n6) );
  INVX2M U9 ( .A(bits[1]), .Y(n5) );
endmodule


module Deserializer ( sampled_bit, clk, rst, deser_en, bits_counter, Data );
  input [2:0] bits_counter;
  output [7:0] Data;
  input sampled_bit, clk, rst, deser_en;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n1, n2;

  DFFRQX2M \Data_reg[3]  ( .D(n22), .CK(clk), .RN(rst), .Q(Data[3]) );
  DFFRQX2M \Data_reg[2]  ( .D(n21), .CK(clk), .RN(rst), .Q(Data[2]) );
  DFFRQX2M \Data_reg[1]  ( .D(n20), .CK(clk), .RN(rst), .Q(Data[1]) );
  DFFRQX2M \Data_reg[0]  ( .D(n19), .CK(clk), .RN(rst), .Q(Data[0]) );
  DFFRQX2M \Data_reg[6]  ( .D(n25), .CK(clk), .RN(rst), .Q(Data[6]) );
  DFFRQX2M \Data_reg[5]  ( .D(n24), .CK(clk), .RN(rst), .Q(Data[5]) );
  DFFRQX2M \Data_reg[4]  ( .D(n23), .CK(clk), .RN(rst), .Q(Data[4]) );
  DFFRQX2M \Data_reg[7]  ( .D(n26), .CK(clk), .RN(rst), .Q(Data[7]) );
  NAND2BX2M U2 ( .AN(n15), .B(sampled_bit), .Y(n13) );
  NAND2BX2M U3 ( .AN(n6), .B(sampled_bit), .Y(n4) );
  NAND2X2M U4 ( .A(n2), .B(n1), .Y(n3) );
  OAI21X2M U5 ( .A0(n4), .A1(n7), .B0(n8), .Y(n20) );
  OAI21X2M U6 ( .A0(n6), .A1(n7), .B0(Data[1]), .Y(n8) );
  OAI21X2M U7 ( .A0(n4), .A1(n9), .B0(n10), .Y(n21) );
  OAI21X2M U8 ( .A0(n6), .A1(n9), .B0(Data[2]), .Y(n10) );
  OAI21X2M U9 ( .A0(n4), .A1(n11), .B0(n12), .Y(n22) );
  OAI21X2M U10 ( .A0(n6), .A1(n11), .B0(Data[3]), .Y(n12) );
  OAI21X2M U11 ( .A0(n3), .A1(n4), .B0(n5), .Y(n19) );
  OAI21X2M U12 ( .A0(n6), .A1(n3), .B0(Data[0]), .Y(n5) );
  OAI21X2M U13 ( .A0(n3), .A1(n13), .B0(n14), .Y(n23) );
  OAI21X2M U14 ( .A0(n3), .A1(n15), .B0(Data[4]), .Y(n14) );
  OAI21X2M U15 ( .A0(n7), .A1(n13), .B0(n16), .Y(n24) );
  OAI21X2M U16 ( .A0(n7), .A1(n15), .B0(Data[5]), .Y(n16) );
  OAI21X2M U17 ( .A0(n9), .A1(n13), .B0(n17), .Y(n25) );
  OAI21X2M U18 ( .A0(n9), .A1(n15), .B0(Data[6]), .Y(n17) );
  OAI21X2M U19 ( .A0(n11), .A1(n13), .B0(n18), .Y(n26) );
  OAI21X2M U20 ( .A0(n11), .A1(n15), .B0(Data[7]), .Y(n18) );
  NAND2X2M U21 ( .A(bits_counter[2]), .B(deser_en), .Y(n15) );
  NAND2BX2M U22 ( .AN(bits_counter[2]), .B(deser_en), .Y(n6) );
  NAND2X2M U23 ( .A(bits_counter[0]), .B(n2), .Y(n7) );
  NAND2X2M U24 ( .A(bits_counter[1]), .B(n1), .Y(n9) );
  NAND2X2M U25 ( .A(bits_counter[1]), .B(bits_counter[0]), .Y(n11) );
  INVX2M U26 ( .A(bits_counter[0]), .Y(n1) );
  INVX2M U27 ( .A(bits_counter[1]), .Y(n2) );
endmodule


module RX ( clk_Top, rst_Top, RX_IN_Top, Prescale_Top, PAR_EN_TOP, PAR_TYP_Top, 
        Data_Valid_Top, P_Data_Top );
  input [4:0] Prescale_Top;
  output [7:0] P_Data_Top;
  input clk_Top, rst_Top, RX_IN_Top, PAR_EN_TOP, PAR_TYP_Top;
  output Data_Valid_Top;
  wire   bit_cnt_Top, data_finish_flag_Top, Error_Top, Compared_bit_Top,
         enable_Top, bits_counter_en_Top, Error_Unit_En_Top, data_samp_en_Top,
         deser_en_FSM_Top, sampled_bit_Top, n1, n2;
  wire   [4:0] edge_cnt_Top;
  wire   [2:0] bits_counter_Top;

  RX_FSM u_RX_FSM ( .clk(clk_Top), .rst(n1), .RX_IN(RX_IN_Top), .PAR_EN(
        PAR_EN_TOP), .Prescale(Prescale_Top[4:3]), .bit_cnt(bit_cnt_Top), 
        .data_finish_flag(data_finish_flag_Top), .edge_cnt(edge_cnt_Top), 
        .P_DATA(P_Data_Top), .PAR_TYP(PAR_TYP_Top), .Error(Error_Top), 
        .Compared_bit(Compared_bit_Top), .counter_en(enable_Top), 
        .bits_counter_en(bits_counter_en_Top), .Error_Unit_En(
        Error_Unit_En_Top), .data_samp_en(data_samp_en_Top), .deser_en(
        deser_en_FSM_Top), .data_valid(Data_Valid_Top) );
  Error_Unit u_Error_Unit ( .clk(clk_Top), .rst(n1), .sampled_bit(
        sampled_bit_Top), .Compared_bit(Compared_bit_Top), .Enable(
        Error_Unit_En_Top), .Error(Error_Top) );
  Counter_Unit u_Counter_Unit ( .clk(clk_Top), .rst(n1), .enable(enable_Top), 
        .Data_enable(bits_counter_en_Top), .Prescale(Prescale_Top), 
        .Finish_edge(bit_cnt_Top), .Finish_data(data_finish_flag_Top), 
        .bits_counter(bits_counter_Top), .edge_cnt(edge_cnt_Top) );
  Data_Sampling u_Data_Sampling ( .RX_in(RX_IN_Top), .clk(clk_Top), .rst(n1), 
        .data_samp_en(data_samp_en_Top), .sampled_bit(sampled_bit_Top) );
  Deserializer u_Deserializer ( .sampled_bit(sampled_bit_Top), .clk(clk_Top), 
        .rst(n1), .deser_en(deser_en_FSM_Top), .bits_counter(bits_counter_Top), 
        .Data(P_Data_Top) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_Top), .Y(n2) );
endmodule


module Counter ( RST, clk, Ser_En, Counter, Finish );
  output [2:0] Counter;
  input RST, clk, Ser_En;
  output Finish;
  wire   N8, N9, N10, N12, n2, n3, n4, n1;
  assign Finish = N12;

  DFFRQX2M \Counter_reg[2]  ( .D(N10), .CK(clk), .RN(RST), .Q(Counter[2]) );
  DFFRQX2M \Counter_reg[1]  ( .D(N9), .CK(clk), .RN(RST), .Q(Counter[1]) );
  DFFRQX2M \Counter_reg[0]  ( .D(N8), .CK(clk), .RN(RST), .Q(Counter[0]) );
  INVX2M U3 ( .A(Ser_En), .Y(n1) );
  NAND2X2M U4 ( .A(Counter[0]), .B(Counter[1]), .Y(n3) );
  NOR2X2M U5 ( .A(Counter[0]), .B(n1), .Y(N8) );
  NOR2X2M U6 ( .A(n2), .B(n1), .Y(N9) );
  XNOR2X2M U7 ( .A(Counter[0]), .B(Counter[1]), .Y(n2) );
  NOR2X2M U8 ( .A(n4), .B(n1), .Y(N10) );
  CLKXOR2X2M U9 ( .A(n3), .B(Counter[2]), .Y(n4) );
  NOR2BX2M U10 ( .AN(Counter[2]), .B(n3), .Y(N12) );
endmodule


module Serializer ( P_Data, clk, rst, Ser_En, Data_Valid, Counter, Ser_Data );
  input [7:0] P_Data;
  input [2:0] Counter;
  input clk, rst, Ser_En, Data_Valid;
  output Ser_Data;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [7:1] Data;

  DFFRQX2M \Data_reg[6]  ( .D(n12), .CK(clk), .RN(rst), .Q(Data[6]) );
  DFFRQX2M \Data_reg[5]  ( .D(n13), .CK(clk), .RN(rst), .Q(Data[5]) );
  DFFRQX2M \Data_reg[4]  ( .D(n14), .CK(clk), .RN(rst), .Q(Data[4]) );
  DFFRQX2M \Data_reg[3]  ( .D(n15), .CK(clk), .RN(rst), .Q(Data[3]) );
  DFFRQX2M \Data_reg[2]  ( .D(n16), .CK(clk), .RN(rst), .Q(Data[2]) );
  DFFRQX2M \Data_reg[1]  ( .D(n17), .CK(clk), .RN(rst), .Q(Data[1]) );
  DFFRQX2M \Data_reg[7]  ( .D(n11), .CK(clk), .RN(rst), .Q(Data[7]) );
  DFFRQX2M \Data_reg[0]  ( .D(n10), .CK(clk), .RN(rst), .Q(Ser_Data) );
  NOR2BX2M U3 ( .AN(Ser_En), .B(Data_Valid), .Y(n3) );
  NOR2X2M U4 ( .A(Data_Valid), .B(n3), .Y(n1) );
  OAI2BB1X2M U5 ( .A0N(Ser_Data), .A1N(n1), .B0(n2), .Y(n10) );
  AOI22X1M U6 ( .A0(Data[1]), .A1(n3), .B0(P_Data[0]), .B1(Data_Valid), .Y(n2)
         );
  OAI2BB1X2M U7 ( .A0N(Data[1]), .A1N(n1), .B0(n9), .Y(n17) );
  AOI22X1M U8 ( .A0(Data[2]), .A1(n3), .B0(P_Data[1]), .B1(Data_Valid), .Y(n9)
         );
  OAI2BB1X2M U9 ( .A0N(n1), .A1N(Data[2]), .B0(n8), .Y(n16) );
  AOI22X1M U10 ( .A0(Data[3]), .A1(n3), .B0(P_Data[2]), .B1(Data_Valid), .Y(n8) );
  OAI2BB1X2M U11 ( .A0N(n1), .A1N(Data[3]), .B0(n7), .Y(n15) );
  AOI22X1M U12 ( .A0(Data[4]), .A1(n3), .B0(P_Data[3]), .B1(Data_Valid), .Y(n7) );
  OAI2BB1X2M U13 ( .A0N(n1), .A1N(Data[4]), .B0(n6), .Y(n14) );
  AOI22X1M U14 ( .A0(Data[5]), .A1(n3), .B0(P_Data[4]), .B1(Data_Valid), .Y(n6) );
  OAI2BB1X2M U15 ( .A0N(n1), .A1N(Data[5]), .B0(n5), .Y(n13) );
  AOI22X1M U16 ( .A0(Data[6]), .A1(n3), .B0(P_Data[5]), .B1(Data_Valid), .Y(n5) );
  OAI2BB1X2M U17 ( .A0N(n1), .A1N(Data[6]), .B0(n4), .Y(n12) );
  AOI22X1M U18 ( .A0(Data[7]), .A1(n3), .B0(P_Data[6]), .B1(Data_Valid), .Y(n4) );
  AO22X1M U19 ( .A0(n1), .A1(Data[7]), .B0(P_Data[7]), .B1(Data_Valid), .Y(n11) );
endmodule


module Serializer_Top ( Ser_En, RST, clk, Data_Valid, P_Data_Top, Ser_Data_Top, 
        Ser_Done );
  input [7:0] P_Data_Top;
  input Ser_En, RST, clk, Data_Valid;
  output Ser_Data_Top, Ser_Done;

  wire   [2:0] Counter_Top;

  Counter u_Counter ( .RST(RST), .clk(clk), .Ser_En(Ser_En), .Counter(
        Counter_Top), .Finish(Ser_Done) );
  Serializer u_Serializer ( .P_Data(P_Data_Top), .clk(clk), .rst(RST), 
        .Ser_En(Ser_En), .Data_Valid(Data_Valid), .Counter(Counter_Top), 
        .Ser_Data(Ser_Data_Top) );
endmodule


module FSM ( clk, RST, Data_Valid, Par_En, Ser_done, Ser_En, Busy, Mux_Sel );
  output [1:0] Mux_Sel;
  input clk, RST, Data_Valid, Par_En, Ser_done;
  output Ser_En, Busy;
  wire   \Current_State[0] , n3, n4, n5;
  wire   [1:0] Next_State;

  DFFRQX2M \Current_State_reg[0]  ( .D(Next_State[0]), .CK(clk), .RN(RST), .Q(
        \Current_State[0] ) );
  DFFRQX2M \Current_State_reg[1]  ( .D(Next_State[1]), .CK(clk), .RN(RST), .Q(
        Mux_Sel[1]) );
  INVX2M U3 ( .A(n3), .Y(Ser_En) );
  NAND2X2M U4 ( .A(n5), .B(n3), .Y(Busy) );
  CLKXOR2X2M U5 ( .A(Mux_Sel[1]), .B(Mux_Sel[0]), .Y(n5) );
  NAND2X2M U6 ( .A(n5), .B(\Current_State[0] ), .Y(n3) );
  INVX2M U7 ( .A(\Current_State[0] ), .Y(Mux_Sel[0]) );
  OAI2BB2X1M U8 ( .B0(Mux_Sel[0]), .B1(n4), .A0N(Data_Valid), .A1N(Mux_Sel[0]), 
        .Y(Next_State[0]) );
  AOI2B1X1M U9 ( .A1N(Par_En), .A0(n4), .B0(Mux_Sel[0]), .Y(Next_State[1]) );
  AND2X2M U10 ( .A(Ser_done), .B(Mux_Sel[1]), .Y(n4) );
endmodule


module Parity_Unit ( clk, Data_Valid, P_Data, Par_Type, Par_Bit );
  input [7:0] P_Data;
  input clk, Data_Valid, Par_Type;
  output Par_Bit;
  wire   N5, n1, n2, n3, n4;

  DFFQX2M Par_Bit_reg ( .D(N5), .CK(clk), .Q(Par_Bit) );
  XOR3XLM U3 ( .A(Par_Type), .B(n1), .C(n2), .Y(N5) );
  XOR3XLM U4 ( .A(P_Data[1]), .B(P_Data[0]), .C(n3), .Y(n2) );
  XOR3XLM U5 ( .A(P_Data[5]), .B(P_Data[4]), .C(n4), .Y(n1) );
  XNOR2X2M U6 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n3) );
  XNOR2X2M U7 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n4) );
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


module UART ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [4:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V;
  wire   n1, n2;

  RX u_RX1 ( .clk_Top(RX_CLK), .rst_Top(n1), .RX_IN_Top(RX_IN_S), 
        .Prescale_Top(Prescale), .PAR_EN_TOP(parity_enable), .PAR_TYP_Top(
        parity_type), .Data_Valid_Top(RX_OUT_V), .P_Data_Top(RX_OUT_P) );
  UART_TX_Top u_UART_TX_Top1 ( .clk(TX_CLK), .RST(n1), .P_Data_UART(TX_IN_P), 
        .Data_Valid_UART(TX_IN_V), .Par_En_UART(parity_enable), 
        .Par_Type_UART(parity_type), .TX_Out_UART(TX_OUT_S), .Busy_UART(
        TX_OUT_V) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module Multi_Flop_Synchronizer ( async, clk, rst, sync );
  input async, clk, rst;
  output sync;
  wire   \Q[0] ;

  DFFRQX2M \Q_reg[0]  ( .D(async), .CK(clk), .RN(rst), .Q(\Q[0] ) );
  DFFRQX1M sync_reg ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(sync) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_0 ( async, clk, rst, sync );
  input async, clk, rst;
  output sync;
  wire   \Q[0] ;

  DFFRQX2M sync_reg ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(sync) );
  DFFRQX2M \Q_reg[0]  ( .D(async), .CK(clk), .RN(rst), .Q(\Q[0] ) );
endmodule


module Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_0 ( ASYNC, 
        CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;


  Multi_Flop_Synchronizer_NUM_STAGES2_0 \genblk1[0].u0  ( .async(ASYNC[0]), 
        .clk(CLK), .rst(RST), .sync(SYNC[0]) );
endmodule


module Pulse_Gen_0 ( Signal_in, clk, rst, Pulse_out );
  input Signal_in, clk, rst;
  output Pulse_out;
  wire   Q;

  DFFRQX2M Q_reg ( .D(Signal_in), .CK(clk), .RN(rst), .Q(Q) );
  NOR2BX2M U3 ( .AN(Signal_in), .B(Q), .Y(Pulse_out) );
endmodule


module Data_Sync_0 ( Unsync_Bus, Enable, clk, rst, Sync_Bus, Enable_Pulse );
  input [7:0] Unsync_Bus;
  output [7:0] Sync_Bus;
  input Enable, clk, rst;
  output Enable_Pulse;
  wire   Pulse_out, Enable_Sync, n1, n10, n11, n12, n13, n14, n15, n16, n17;

  Multi_Flop_Synchronizer_Multi_bits_NUM_STAGES2_BUS_WIDTH1_0 u_Multi_Flop_Synchronizer_Multi_bits ( 
        .ASYNC(Enable), .CLK(clk), .RST(rst), .SYNC(Enable_Sync) );
  Pulse_Gen_0 u_Pulse_Gen ( .Signal_in(Enable_Sync), .clk(clk), .rst(rst), 
        .Pulse_out(Pulse_out) );
  DFFRQX2M \Sync_Bus_reg[1]  ( .D(n16), .CK(clk), .RN(rst), .Q(Sync_Bus[1]) );
  DFFRQX2M \Sync_Bus_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(Sync_Bus[4]) );
  DFFRQX2M \Sync_Bus_reg[0]  ( .D(n17), .CK(clk), .RN(rst), .Q(Sync_Bus[0]) );
  DFFRQX2M \Sync_Bus_reg[7]  ( .D(n10), .CK(clk), .RN(rst), .Q(Sync_Bus[7]) );
  DFFRQX2M \Sync_Bus_reg[3]  ( .D(n14), .CK(clk), .RN(rst), .Q(Sync_Bus[3]) );
  DFFRQX2M \Sync_Bus_reg[6]  ( .D(n11), .CK(clk), .RN(rst), .Q(Sync_Bus[6]) );
  DFFRQX2M \Sync_Bus_reg[2]  ( .D(n15), .CK(clk), .RN(rst), .Q(Sync_Bus[2]) );
  DFFRQX2M Enable_Pulse_reg ( .D(Pulse_out), .CK(clk), .RN(rst), .Q(
        Enable_Pulse) );
  DFFRQX2M \Sync_Bus_reg[5]  ( .D(n12), .CK(clk), .RN(rst), .Q(Sync_Bus[5]) );
  INVX2M U3 ( .A(Pulse_out), .Y(n1) );
  AO22X1M U4 ( .A0(Unsync_Bus[0]), .A1(Pulse_out), .B0(Sync_Bus[0]), .B1(n1), 
        .Y(n17) );
  AO22X1M U5 ( .A0(Unsync_Bus[1]), .A1(Pulse_out), .B0(Sync_Bus[1]), .B1(n1), 
        .Y(n16) );
  AO22X1M U6 ( .A0(Unsync_Bus[2]), .A1(Pulse_out), .B0(Sync_Bus[2]), .B1(n1), 
        .Y(n15) );
  AO22X1M U7 ( .A0(Unsync_Bus[3]), .A1(Pulse_out), .B0(Sync_Bus[3]), .B1(n1), 
        .Y(n14) );
  AO22X1M U8 ( .A0(Unsync_Bus[4]), .A1(Pulse_out), .B0(Sync_Bus[4]), .B1(n1), 
        .Y(n13) );
  AO22X1M U9 ( .A0(Unsync_Bus[5]), .A1(Pulse_out), .B0(Sync_Bus[5]), .B1(n1), 
        .Y(n12) );
  AO22X1M U10 ( .A0(Unsync_Bus[6]), .A1(Pulse_out), .B0(Sync_Bus[6]), .B1(n1), 
        .Y(n11) );
  AO22X1M U11 ( .A0(Unsync_Bus[7]), .A1(Pulse_out), .B0(Sync_Bus[7]), .B1(n1), 
        .Y(n10) );
endmodule


module Clock_Divider ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, n11, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n1, n2, n3, n4, n5, n6, n7;
  wire   [3:0] couter;

  DFFRQX2M div_clk_reg ( .D(n36), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \couter_reg[0]  ( .D(n40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        couter[0]) );
  DFFRQX2M \couter_reg[1]  ( .D(n38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        couter[1]) );
  DFFRQX2M \couter_reg[2]  ( .D(n1), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        couter[2]) );
  DFFRX1M \couter_reg[3]  ( .D(n37), .CK(i_ref_clk), .RN(i_rst_n), .QN(n11) );
  DFFSX1M odd_edge_tog_reg ( .D(n39), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        odd_edge_tog), .QN(n4) );
  OAI31X1M U3 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[3]), .A2(i_div_ratio[2]), 
        .B0(i_clk_en), .Y(n17) );
  NOR3X2M U4 ( .A(n17), .B(n2), .C(n23), .Y(n20) );
  AOI21X2M U5 ( .A0(n2), .A1(n3), .B0(n17), .Y(n24) );
  INVX2M U6 ( .A(n17), .Y(n7) );
  OAI2BB2X1M U7 ( .B0(n24), .B1(n5), .A0N(n5), .A1N(n20), .Y(n38) );
  INVX2M U8 ( .A(n23), .Y(n3) );
  OAI21X2M U9 ( .A0(i_div_ratio[0]), .A1(n27), .B0(n26), .Y(n23) );
  INVX2M U10 ( .A(n22), .Y(n1) );
  AOI32X1M U11 ( .A0(n20), .A1(n6), .A2(couter[1]), .B0(n21), .B1(couter[2]), 
        .Y(n22) );
  OAI32XLM U12 ( .A0(n23), .A1(couter[0]), .A2(n17), .B0(n7), .B1(n2), .Y(n40)
         );
  OAI21X2M U13 ( .A0(couter[1]), .A1(n23), .B0(n24), .Y(n21) );
  NAND2X2M U14 ( .A(i_div_ratio[0]), .B(n28), .Y(n26) );
  OAI32X1M U15 ( .A0(n29), .A1(n30), .A2(n31), .B0(n27), .B1(n4), .Y(n28) );
  CLKXOR2X2M U16 ( .A(i_div_ratio[3]), .B(couter[2]), .Y(n31) );
  NAND3X2M U17 ( .A(n11), .B(n4), .C(n32), .Y(n29) );
  NAND4X2M U18 ( .A(n30), .B(n33), .C(n34), .D(n11), .Y(n27) );
  CLKXOR2X2M U19 ( .A(n35), .B(couter[2]), .Y(n34) );
  XOR3XLM U20 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .C(couter[1]), .Y(n33)
         );
  OAI21X2M U21 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0(i_div_ratio[3]), 
        .Y(n35) );
  OAI21X2M U22 ( .A0(n18), .A1(n11), .B0(n19), .Y(n37) );
  NAND4X2M U23 ( .A(n20), .B(couter[2]), .C(couter[1]), .D(n11), .Y(n19) );
  NOR2X2M U24 ( .A(n6), .B(n21), .Y(n18) );
  CLKXOR2X2M U25 ( .A(i_div_ratio[1]), .B(couter[0]), .Y(n30) );
  INVX2M U26 ( .A(couter[1]), .Y(n5) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[2]), .B(n5), .Y(n32) );
  CLKXOR2X2M U28 ( .A(div_clk), .B(n16), .Y(n36) );
  NOR2XLM U29 ( .A(n3), .B(n17), .Y(n16) );
  CLKXOR2X2M U30 ( .A(odd_edge_tog), .B(n25), .Y(n39) );
  NOR2XLM U31 ( .A(n17), .B(n26), .Y(n25) );
  INVX2M U32 ( .A(couter[2]), .Y(n6) );
  INVX2M U33 ( .A(couter[0]), .Y(n2) );
  MX2X2M U34 ( .A(i_ref_clk), .B(div_clk), .S0(n7), .Y(o_div_clk) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_3 ( async, clk, rst, sync );
  input async, clk, rst;
  output sync;
  wire   \Q[0] ;

  DFFRQX2M \Q_reg[0]  ( .D(async), .CK(clk), .RN(rst), .Q(\Q[0] ) );
  DFFRQX1M sync_reg ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(sync) );
endmodule


module RST_Sync_1 ( RST, clk, Sync_RST );
  input RST, clk;
  output Sync_RST;


  Multi_Flop_Synchronizer_NUM_STAGES2_3 u_Multi_Flop_Synchronizer ( .async(
        1'b1), .clk(clk), .rst(RST), .sync(Sync_RST) );
endmodule


module Multi_Flop_Synchronizer_NUM_STAGES2_2 ( async, clk, rst, sync );
  input async, clk, rst;
  output sync;
  wire   \Q[0] ;

  DFFRQX2M sync_reg ( .D(\Q[0] ), .CK(clk), .RN(rst), .Q(sync) );
  DFFRQX2M \Q_reg[0]  ( .D(async), .CK(clk), .RN(rst), .Q(\Q[0] ) );
endmodule


module RST_Sync_0 ( RST, clk, Sync_RST );
  input RST, clk;
  output Sync_RST;


  Multi_Flop_Synchronizer_NUM_STAGES2_2 u_Multi_Flop_Synchronizer ( .async(
        1'b1), .clk(clk), .rst(RST), .sync(Sync_RST) );
endmodule


module Design_Top ( scan_clk, scan_rst, test_mode, SE, SI, SO, REF_CLK, 
        UART_CLK, RST, RX_IN, TX_OUT );
  input scan_clk, scan_rst, test_mode, SE, SI, REF_CLK, UART_CLK, RST, RX_IN;
  output SO, TX_OUT;
  wire   REF_CLK_MUX, UART_CLK_MUX, TX_CLK, TX_CLK_MUX, RST_MUX,
         REF_CLK_Sync_RST, REF_CLK_Sync_RST_MUX, UART_CLK_Sync_RST,
         UART_CLK_Sync_RST_MUX, ALU_Enable_Top, CLK_Gate_En_Top, REG_WrEn_Top,
         REG_RdEn_Top, RX_Valid_Syn, RX_Valid_Top, ALU_Out_Valid_Top,
         REG_Rd_Valid_Top, Tx_Busy_Top, Tx_Valid_Top_UnSyn, ALU_CLK,
         TX_IN_V_Top_Syn, Tx_Busy_UnSyn, n1, n2;
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

  MUX2_5 u_MUX2_TX_CLOCK ( .IN0(REF_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(REF_CLK_MUX) );
  MUX2_4 u_MUX2_RX_CLOCK ( .IN0(UART_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(UART_CLK_MUX) );
  MUX2_3 u_MUX2 ( .IN0(TX_CLK), .IN1(scan_clk), .SL(test_mode), .MUX_out(
        TX_CLK_MUX) );
  MUX2_2 u_MUX2_RST ( .IN0(RST), .IN1(scan_rst), .SL(test_mode), .MUX_out(
        RST_MUX) );
  MUX2_1 u_MUX2_REF_RST ( .IN0(REF_CLK_Sync_RST), .IN1(scan_rst), .SL(
        test_mode), .MUX_out(REF_CLK_Sync_RST_MUX) );
  MUX2_0 u_MUX2_UART_RST ( .IN0(UART_CLK_Sync_RST), .IN1(scan_rst), .SL(
        test_mode), .MUX_out(UART_CLK_Sync_RST_MUX) );
  RX_Controler_00000008_00000010_00000004_0000000e_00000004 u_RX_Controler ( 
        .clk(REF_CLK_MUX), .rst(n1), .ALU_Valid(1'b0), .ALU_Enable(
        ALU_Enable_Top), .ALU_Fun(ALU_Fun_Top), .CLK_Gate_En(CLK_Gate_En_Top), 
        .REG_Address(REG_Address_Top), .REG_WrEn(REG_WrEn_Top), .REG_RdEn(
        REG_RdEn_Top), .REG_WrData(REG_WrData_Top), .Rx_P_Data(Rx_P_Data_Syn), 
        .RX_Valid(RX_Valid_Syn) );
  Data_Sync_1 u_Data_Sync ( .Unsync_Bus(Rx_P_Data_Top), .Enable(RX_Valid_Top), 
        .clk(REF_CLK_MUX), .rst(n1), .Sync_Bus(Rx_P_Data_Syn), .Enable_Pulse(
        RX_Valid_Syn) );
  Tx_Controler_00000008_00000010 u_Tx_Controler ( .clk(REF_CLK_MUX), .rst(n1), 
        .ALU_Out(ALU_Out_Top), .ALU_Valid(ALU_Out_Valid_Top), .REG_RdData(
        REG_RdData_Top), .REG_Rd_Valid(REG_Rd_Valid_Top), .Tx_Busy(Tx_Busy_Top), .Tx_P_Data(Tx_P_Data_Top_UnSyn), .Tx_Valid(Tx_Valid_Top_UnSyn) );
  ALU_00000008_00000010_0000000e_00000004 u_ALU ( .clk(ALU_CLK), .rst(n1), 
        .Operand_A(Operand_A_Top), .Operand_B(Operand_B_Top), .ALU_Fun(
        ALU_Fun_Top), .Enable(ALU_Enable_Top), .ALU_Out(ALU_Out_Top), 
        .Out_Valid(ALU_Out_Valid_Top) );
  Clock_Gating u_Clock_Gating ( .clk(REF_CLK_MUX), .En(CLK_Gate_En_Top), 
        .test_mode(test_mode), .Gated_clk(ALU_CLK) );
  REG_File_00000008_00000010_00000004_00000000_00000000_0000001c_00000008 u_REG_File ( 
        .clk(REF_CLK_MUX), .rst(n1), .Address(REG_Address_Top), .WrEn(
        REG_WrEn_Top), .RdEn(REG_RdEn_Top), .WrData(REG_WrData_Top), .RdData(
        REG_RdData_Top), .RdData_Valid(REG_Rd_Valid_Top), .REG0_ALU_A(
        Operand_A_Top), .REG1_ALU_B(Operand_B_Top), .REG2_UART(
        REG2_UART_Config_Top), .REG3_DIV(REG3_DIV_Top) );
  UART u_UART ( .RST(UART_CLK_Sync_RST_MUX), .TX_CLK(TX_CLK_MUX), .RX_CLK(
        UART_CLK_MUX), .RX_IN_S(RX_IN), .RX_OUT_P(Rx_P_Data_Top), .RX_OUT_V(
        RX_Valid_Top), .TX_IN_P(TX_IN_P_Top_Syn), .TX_IN_V(TX_IN_V_Top_Syn), 
        .TX_OUT_S(TX_OUT), .TX_OUT_V(Tx_Busy_UnSyn), .Prescale(
        REG2_UART_Config_Top[6:2]), .parity_enable(REG2_UART_Config_Top[0]), 
        .parity_type(REG2_UART_Config_Top[1]) );
  Multi_Flop_Synchronizer u_Busy_Syn ( .async(Tx_Busy_UnSyn), .clk(REF_CLK_MUX), .rst(n1), .sync(Tx_Busy_Top) );
  Data_Sync_0 u_Tx_Data_Syn ( .Unsync_Bus(Tx_P_Data_Top_UnSyn), .Enable(
        Tx_Valid_Top_UnSyn), .clk(TX_CLK_MUX), .rst(UART_CLK_Sync_RST_MUX), 
        .Sync_Bus(TX_IN_P_Top_Syn), .Enable_Pulse(TX_IN_V_Top_Syn) );
  Clock_Divider u_Clock_Divider ( .i_ref_clk(UART_CLK_MUX), .i_rst_n(
        UART_CLK_Sync_RST_MUX), .i_clk_en(1'b1), .i_div_ratio(REG3_DIV_Top), 
        .o_div_clk(TX_CLK) );
  RST_Sync_1 u_REF_CLK_RST_SYN ( .RST(RST_MUX), .clk(REF_CLK_MUX), .Sync_RST(
        REF_CLK_Sync_RST) );
  RST_Sync_0 u_RST_Sync ( .RST(RST_MUX), .clk(UART_CLK_MUX), .Sync_RST(
        UART_CLK_Sync_RST) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(REF_CLK_Sync_RST_MUX), .Y(n2) );
endmodule

