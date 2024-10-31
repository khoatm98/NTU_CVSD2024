/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sat Oct 26 22:06:29 2024
/////////////////////////////////////////////////////////////


module conv ( i_clk, i_rst_n, i_data, i_isFirst, i_input_done, o_out_valid, 
        o_out_data );
  input [31:0] i_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_isFirst, i_input_done;
  output o_out_valid;
  wire   N52, N53, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87,
         N88, N89, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N126,
         N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, N187, N188, N189, N190, N191, N192, N193, N194, N195,
         N196, N197, N198, N199, N200, N201, N202, N203, N204, N205, N206,
         N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217,
         N218, N219, N220, N221, N222, N223, N224, N225, N226, N227, N228,
         N229, N230, N231, N232, N233, N234, N235, N236, N237, N238, N239,
         N240, n25, n26, n29, n30, n31, n850, n860, n880, n890, n90, N36, N35,
         N34, N33, N32, N310, N300, N290, N28, N260, N250, N24, N23, N22, N21,
         N20, N19, N18, n910, n920, n930, n940, n950, n960, n970, n980, n990,
         n1000, n1010, n1020, n1030, n1040, n1050, n1060, n1070, n1080, n1090,
         n1100, n1110, n1120, n1130, n1140, n1150, n1160, n1170, n1180, n1190,
         n1200, n1210, n1220, n123, n124, n125, n1260, n1270, n1280, n1290,
         n1300, n1310, n1320, n1330, n1340, n1350, n1360, n1370, n1380, n1390,
         n1400, n1410, n1420, n1430, n1440, n1450, n1460, n1470, n148, n149,
         n150, n1510, n1520, n1530, n1540, n1550, n1560, n1570, n1580, n1590,
         n1600, n1610, n1620, n1630, n1640, n1650, n1660, n1670, n1680, n1690,
         n1700, n1710, n1720, n1730, n1740, n1750, n1760, n1770, n1780, n1790,
         n1800, n1810, n1820, n1830, n1840, n1850, n1860, n1870, n1880, n1890,
         n1900, n1910, n1920, n1930, n1940, n1950, n1960, n1970, n1980, n1990,
         n2000, n2010, n2020, n2030, n2040, n2050, n2060, n2070, n2080, n2090,
         n2100, n2110, n2120, n2130, n2140, n2150, n2160, n2170, n2180, n2190,
         n2200, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [7:0] data_a_w;
  wire   [7:0] data_b_w;
  wire   [7:0] data_c_w;
  wire   [7:1] data_d_w;
  wire   [9:0] data_abc_w;
  wire   [9:0] data_bcd_w;
  wire   [16:0] conv_1_r;
  wire   [10:0] data_abc_1_r;
  wire   [16:0] conv_1_w;
  wire   [16:0] conv_2_r;
  wire   [10:0] data_bcd_2_r;
  wire   [16:0] conv_2_w;
  wire   [16:0] conv_3_r;
  wire   [10:0] data_abc_3_r;
  wire   [16:0] conv_3_w;
  wire   [16:0] conv_4_r;
  wire   [10:0] data_bcd_4_r;
  wire   [16:0] conv_4_w;
  wire   [1:0] cs;
  wire   [1:0] ns;
  wire   [1:0] cnt;
  wire   [16:3] conv_r;

  DFFRX4 cnt_reg_0_ ( .D(N52), .CK(i_clk), .RN(n1310), .Q(cnt[0]), .QN(n30) );
  DFFRX4 data_r_reg_29_ ( .D(N120), .CK(i_clk), .RN(n1300), .Q(data_d_w[5]) );
  DFFRX4 data_r_reg_28_ ( .D(N119), .CK(i_clk), .RN(n1320), .Q(data_d_w[4]) );
  DFFRX4 data_r_reg_27_ ( .D(N118), .CK(i_clk), .RN(n1310), .Q(data_d_w[3]) );
  DFFRX4 data_r_reg_25_ ( .D(N116), .CK(i_clk), .RN(n1280), .Q(data_d_w[1]) );
  DFFRX4 data_r_reg_23_ ( .D(N114), .CK(i_clk), .RN(n1290), .Q(data_c_w[7]) );
  DFFRX4 data_r_reg_22_ ( .D(N113), .CK(i_clk), .RN(n1350), .Q(data_c_w[6]) );
  DFFRX4 data_r_reg_21_ ( .D(N112), .CK(i_clk), .RN(n1360), .Q(data_c_w[5]) );
  DFFRX4 data_r_reg_20_ ( .D(N111), .CK(i_clk), .RN(n1340), .Q(data_c_w[4]) );
  DFFRX4 data_r_reg_19_ ( .D(N110), .CK(i_clk), .RN(n1370), .Q(data_c_w[3]) );
  DFFRX4 data_r_reg_18_ ( .D(N109), .CK(i_clk), .RN(n1370), .Q(data_c_w[2]), 
        .QN(n1100) );
  DFFRX4 data_r_reg_17_ ( .D(N108), .CK(i_clk), .RN(n1370), .Q(data_c_w[1]), 
        .QN(n1120) );
  DFFRX4 data_r_reg_16_ ( .D(N107), .CK(i_clk), .RN(n1370), .Q(data_c_w[0]) );
  DFFRX4 data_r_reg_15_ ( .D(N106), .CK(i_clk), .RN(n1370), .Q(data_b_w[7]) );
  DFFRX4 data_r_reg_14_ ( .D(N105), .CK(i_clk), .RN(n1370), .Q(data_b_w[6]) );
  DFFRX4 data_r_reg_13_ ( .D(N104), .CK(i_clk), .RN(n1370), .Q(data_b_w[5]) );
  DFFRX4 data_r_reg_9_ ( .D(N100), .CK(i_clk), .RN(n1370), .QN(n1140) );
  DFFRX4 data_r_reg_8_ ( .D(N99), .CK(i_clk), .RN(n1370), .Q(data_b_w[0]), 
        .QN(n1060) );
  DFFRX4 data_r_reg_7_ ( .D(N98), .CK(i_clk), .RN(n1360), .Q(data_a_w[7]) );
  DFFRX4 data_r_reg_3_ ( .D(N94), .CK(i_clk), .RN(n1360), .Q(data_a_w[3]) );
  DFFRX4 data_r_reg_2_ ( .D(N93), .CK(i_clk), .RN(n1360), .Q(data_a_w[2]) );
  DFFRX4 data_r_reg_1_ ( .D(N92), .CK(i_clk), .RN(n1360), .Q(data_a_w[1]) );
  DFFRX4 data_r_reg_0_ ( .D(N91), .CK(i_clk), .RN(n1360), .Q(data_a_w[0]) );
  NAND2X4 U203 ( .A(i_isFirst), .B(n123), .Y(n880) );
  conv_DW01_add_8 add_79 ( .A({conv_4_r[16:2], n990, conv_4_r[0]}), .SUM(
        conv_4_w), .\B[10] (data_bcd_4_r[10]), .\B[9] (data_bcd_4_r[9]), 
        .\B[8] (data_bcd_4_r[8]), .\B[7] (data_bcd_4_r[7]), .\B[6] (
        data_bcd_4_r[6]), .\B[5] (data_bcd_4_r[5]), .\B[4] (data_bcd_4_r[4]), 
        .\B[3] (data_bcd_4_r[3]), .\B[2] (data_bcd_4_r[2]), .\B[1] (
        data_bcd_4_r[1]), .\B[0] (data_bcd_4_r[0]) );
  conv_DW01_add_9 add_78 ( .A(conv_3_r), .SUM(conv_3_w), .\B[10] (
        data_abc_3_r[10]), .\B[9] (data_abc_3_r[9]), .\B[8] (data_abc_3_r[8]), 
        .\B[7] (data_abc_3_r[7]), .\B[6] (data_abc_3_r[6]), .\B[5] (
        data_abc_3_r[5]), .\B[4] (data_abc_3_r[4]), .\B[3] (data_abc_3_r[3]), 
        .\B[2] (data_abc_3_r[2]), .\B[1] (data_abc_3_r[1]), .\B[0] (
        data_abc_3_r[0]) );
  conv_DW01_add_10 add_77 ( .A(conv_2_r), .SUM(conv_2_w), .\B[10] (
        data_bcd_2_r[10]), .\B[9] (data_bcd_2_r[9]), .\B[8] (data_bcd_2_r[8]), 
        .\B[7] (data_bcd_2_r[7]), .\B[6] (n950), .\B[5] (data_bcd_2_r[5]), 
        .\B[4] (data_bcd_2_r[4]), .\B[3] (data_bcd_2_r[3]), .\B[2] (
        data_bcd_2_r[2]), .\B[1] (data_bcd_2_r[1]), .\B[0] (data_bcd_2_r[0])
         );
  conv_DW01_add_11 add_76 ( .A(conv_1_r), .SUM(conv_1_w), .\B[10] (
        data_abc_1_r[10]), .\B[9] (data_abc_1_r[9]), .\B[8] (data_abc_1_r[8]), 
        .\B[7] (data_abc_1_r[7]), .\B[6] (data_abc_1_r[6]), .\B[5] (
        data_abc_1_r[5]), .\B[4] (data_abc_1_r[4]), .\B[3] (data_abc_1_r[3]), 
        .\B[2] (data_abc_1_r[2]), .\B[1] (data_abc_1_r[1]), .\B[0] (
        data_abc_1_r[0]) );
  conv_DW01_inc_1 add_140_round ( .\A[13] (conv_r[16]), .\A[12] (conv_r[15]), 
        .\A[11] (conv_r[14]), .\A[10] (conv_r[13]), .\A[9] (conv_r[12]), 
        .\A[8] (conv_r[11]), .\A[7] (conv_r[10]), .\A[6] (conv_r[9]), .\A[5] (
        conv_r[8]), .\A[4] (conv_r[7]), .\A[3] (conv_r[6]), .\A[2] (conv_r[5]), 
        .\A[1] (conv_r[4]), .\A[0] (conv_r[3]), .\SUM[14] (N89), .\SUM[13] (
        N88), .\SUM[12] (N87), .\SUM[11] (N86), .\SUM[10] (N85), .\SUM[9] (N84), .\SUM[8] (N83), .\SUM[7] (N82), .\SUM[6] (N81), .\SUM[5] (N80), .\SUM[4] (
        N79), .\SUM[3] (N78), .\SUM[2] (N77), .\SUM[1] (N76) );
  DFFRX2 data_r_reg_11_ ( .D(N102), .CK(i_clk), .RN(n1370), .Q(data_b_w[3]), 
        .QN(n1160) );
  conv_DW01_add_16 add_1_root_add_0_root_add_73_2 ( .\A[7] (data_a_w[7]), 
        .\A[6] (data_a_w[6]), .\A[5] (data_a_w[5]), .\A[4] (data_a_w[4]), 
        .\A[3] (data_a_w[3]), .\A[2] (data_a_w[2]), .\A[1] (data_a_w[1]), 
        .\A[0] (data_a_w[0]), .\B[7] (data_c_w[7]), .\B[6] (data_c_w[6]), 
        .\B[5] (data_c_w[5]), .\B[4] (data_c_w[4]), .\B[3] (data_c_w[3]), 
        .\B[2] (data_c_w[2]), .\B[1] (data_c_w[1]), .\B[0] (data_c_w[0]), 
        .\SUM[8] (N260), .\SUM[7] (N250), .\SUM[6] (N24), .\SUM[5] (N23), 
        .\SUM[4] (N22), .\SUM[3] (N21), .\SUM[2] (N20), .\SUM[1] (N19), 
        .\SUM[0] (N18) );
  conv_DW01_add_17 add_0_root_add_0_root_add_73_2 ( .SUM(data_abc_w), .\A[8] (
        data_b_w[7]), .\A[7] (data_b_w[6]), .\A[6] (data_b_w[5]), .\A[5] (
        data_b_w[4]), .\A[4] (data_b_w[3]), .\A[3] (n1030), .\A[2] (n1150), 
        .\A[1] (data_b_w[0]), .\B[8] (N260), .\B[7] (N250), .\B[6] (N24), 
        .\B[5] (N23), .\B[4] (N22), .\B[3] (N21), .\B[2] (N20), .\B[1] (N19), 
        .\B[0] (N18) );
  conv_DW01_add_18 add_1_root_add_0_root_add_74_2 ( .\A[7] (data_d_w[7]), 
        .\A[6] (data_d_w[6]), .\A[5] (data_d_w[5]), .\A[4] (data_d_w[4]), 
        .\A[3] (data_d_w[3]), .\A[2] (n980), .\A[1] (data_d_w[1]), .\A[0] (
        n1040), .\B[7] (data_b_w[7]), .\B[6] (data_b_w[6]), .\B[5] (
        data_b_w[5]), .\B[4] (n970), .\B[3] (n1170), .\B[2] (n1030), .\B[1] (
        n1150), .\B[0] (n1070), .\SUM[8] (N36), .\SUM[7] (N35), .\SUM[6] (N34), 
        .\SUM[5] (N33), .\SUM[4] (N32), .\SUM[3] (N310), .\SUM[2] (N300), 
        .\SUM[1] (N290), .\SUM[0] (N28) );
  conv_DW01_add_19 add_0_root_add_0_root_add_74_2 ( .SUM(data_bcd_w), .\A[8] (
        data_c_w[7]), .\A[7] (data_c_w[6]), .\A[6] (data_c_w[5]), .\A[5] (
        data_c_w[4]), .\A[4] (data_c_w[3]), .\A[3] (n1110), .\A[2] (n1130), 
        .\A[1] (data_c_w[0]), .\B[8] (N36), .\B[7] (N35), .\B[6] (N34), 
        .\B[5] (N33), .\B[4] (N32), .\B[3] (N310), .\B[2] (N300), .\B[1] (N290), .\B[0] (N28) );
  DFFRX1 data_bcd_r_reg_0_ ( .D(data_bcd_w[0]), .CK(i_clk), .RN(i_rst_n), .Q(
        n1470) );
  DFFRX1 data_abc_r_reg_0_ ( .D(data_abc_w[0]), .CK(i_clk), .RN(n1350), .Q(
        n1580) );
  DFFRX1 data_bcd_r_reg_9_ ( .D(data_bcd_w[9]), .CK(i_clk), .RN(n1360), .Q(
        n1400) );
  DFFRX1 data_abc_r_reg_9_ ( .D(data_abc_w[9]), .CK(i_clk), .RN(n1340), .Q(
        n149) );
  DFFRX1 data_bcd_r_reg_6_ ( .D(data_bcd_w[6]), .CK(i_clk), .RN(n1360), .Q(
        n1410) );
  DFFRX1 data_bcd_r_reg_4_ ( .D(data_bcd_w[4]), .CK(i_clk), .RN(n1350), .Q(
        n1420) );
  DFFRX1 data_bcd_r_reg_3_ ( .D(data_bcd_w[3]), .CK(i_clk), .RN(n1290), .Q(
        n1430) );
  DFFRX1 data_bcd_r_reg_2_ ( .D(data_bcd_w[2]), .CK(i_clk), .RN(n1280), .Q(
        n1440) );
  DFFRX1 data_bcd_r_reg_1_ ( .D(data_bcd_w[1]), .CK(i_clk), .RN(n1310), .Q(
        n1450) );
  DFFRX1 data_abc_r_reg_6_ ( .D(data_abc_w[6]), .CK(i_clk), .RN(n1320), .Q(
        n1520) );
  DFFRX1 data_abc_r_reg_3_ ( .D(data_abc_w[3]), .CK(i_clk), .RN(n1290), .Q(
        n1540) );
  DFFRX1 data_abc_r_reg_2_ ( .D(data_abc_w[2]), .CK(i_clk), .RN(n1280), .Q(
        n1550) );
  DFFRX1 data_abc_r_reg_1_ ( .D(data_abc_w[1]), .CK(i_clk), .RN(n1310), .Q(
        n1560) );
  DFFRX1 conv_r_reg_16_ ( .D(N74), .CK(i_clk), .RN(n1270), .Q(conv_r[16]) );
  DFFRX1 conv_r_reg_15_ ( .D(N73), .CK(i_clk), .RN(n1270), .Q(conv_r[15]) );
  DFFRX1 data_abc_r_reg_7_ ( .D(data_abc_w[7]), .CK(i_clk), .RN(i_rst_n), .Q(
        n1510) );
  DFFRX1 conv_1_r_reg_16_ ( .D(N189), .CK(i_clk), .RN(n1320), .Q(conv_1_r[16])
         );
  DFFRX1 conv_4_r_reg_16_ ( .D(N240), .CK(i_clk), .RN(n1310), .Q(conv_4_r[16])
         );
  DFFRX1 conv_3_r_reg_16_ ( .D(N223), .CK(i_clk), .RN(n1290), .Q(conv_3_r[16])
         );
  DFFRX1 conv_2_r_reg_16_ ( .D(N206), .CK(i_clk), .RN(n1270), .Q(conv_2_r[16])
         );
  DFFRX1 conv_r_reg_14_ ( .D(N72), .CK(i_clk), .RN(n1270), .Q(conv_r[14]) );
  DFFRX1 conv_r_reg_13_ ( .D(N71), .CK(i_clk), .RN(n1270), .Q(conv_r[13]) );
  DFFRX1 conv_r_reg_12_ ( .D(N70), .CK(i_clk), .RN(n1270), .Q(conv_r[12]) );
  DFFRX1 conv_r_reg_10_ ( .D(N68), .CK(i_clk), .RN(n1280), .Q(conv_r[10]) );
  DFFRX1 conv_r_reg_6_ ( .D(N64), .CK(i_clk), .RN(n1280), .Q(conv_r[6]) );
  DFFRX1 conv_r_reg_7_ ( .D(N65), .CK(i_clk), .RN(n1280), .Q(conv_r[7]) );
  DFFRX1 conv_r_reg_8_ ( .D(N66), .CK(i_clk), .RN(n1280), .Q(conv_r[8]) );
  DFFRX1 conv_r_reg_9_ ( .D(N67), .CK(i_clk), .RN(n1280), .Q(conv_r[9]) );
  DFFRX1 conv_r_reg_4_ ( .D(N62), .CK(i_clk), .RN(n1290), .Q(conv_r[4]) );
  DFFRX1 conv_r_reg_3_ ( .D(N61), .CK(i_clk), .RN(n1290), .Q(conv_r[3]) );
  DFFRX1 conv_r_reg_5_ ( .D(N63), .CK(i_clk), .RN(n1290), .Q(conv_r[5]) );
  DFFRX1 conv_1_r_reg_15_ ( .D(N188), .CK(i_clk), .RN(n1320), .Q(conv_1_r[15])
         );
  DFFRX1 conv_4_r_reg_15_ ( .D(N239), .CK(i_clk), .RN(n1310), .Q(conv_4_r[15])
         );
  DFFRX1 conv_3_r_reg_15_ ( .D(N222), .CK(i_clk), .RN(n1290), .Q(conv_3_r[15])
         );
  DFFRX1 conv_2_r_reg_15_ ( .D(N205), .CK(i_clk), .RN(n1270), .Q(conv_2_r[15])
         );
  DFFRX1 i_input_done_r_reg ( .D(i_input_done), .CK(i_clk), .RN(i_rst_n), .QN(
        n31) );
  DFFRX1 conv_4_r_reg_13_ ( .D(N237), .CK(i_clk), .RN(n1310), .Q(conv_4_r[13])
         );
  DFFRX1 data_bcd_2_r_reg_7_ ( .D(N144), .CK(i_clk), .RN(n1320), .Q(
        data_bcd_2_r[7]) );
  DFFRX1 data_abc_1_r_reg_7_ ( .D(N133), .CK(i_clk), .RN(n1320), .Q(
        data_abc_1_r[7]) );
  DFFRX1 data_bcd_4_r_reg_7_ ( .D(N169), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[7]) );
  DFFRX1 data_abc_1_r_reg_4_ ( .D(N130), .CK(i_clk), .RN(n1300), .Q(
        data_abc_1_r[4]) );
  DFFRX1 data_abc_1_r_reg_6_ ( .D(N132), .CK(i_clk), .RN(n1330), .Q(
        data_abc_1_r[6]) );
  DFFRX1 data_bcd_4_r_reg_6_ ( .D(N168), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[6]) );
  DFFRX1 data_bcd_4_r_reg_1_ ( .D(N163), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[1]) );
  DFFRX1 data_abc_1_r_reg_3_ ( .D(N129), .CK(i_clk), .RN(n1260), .Q(
        data_abc_1_r[3]) );
  DFFRX1 conv_4_r_reg_0_ ( .D(N224), .CK(i_clk), .RN(n1320), .Q(conv_4_r[0])
         );
  DFFRX1 conv_3_r_reg_0_ ( .D(N207), .CK(i_clk), .RN(n1310), .Q(conv_3_r[0])
         );
  DFFRX1 conv_2_r_reg_0_ ( .D(N190), .CK(i_clk), .RN(n1290), .Q(conv_2_r[0])
         );
  DFFRX1 data_abc_1_r_reg_0_ ( .D(N126), .CK(i_clk), .RN(n1350), .Q(
        data_abc_1_r[0]) );
  DFFRX1 data_abc_3_r_reg_0_ ( .D(N151), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[0]) );
  DFFRX1 data_bcd_4_r_reg_10_ ( .D(N172), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[10]) );
  DFFRX1 data_abc_3_r_reg_10_ ( .D(N161), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[10]) );
  DFFRX1 data_bcd_2_r_reg_8_ ( .D(N145), .CK(i_clk), .RN(n1300), .Q(
        data_bcd_2_r[8]) );
  DFFRX1 o_out_valid_ready_r_reg ( .D(n2200), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_valid) );
  DFFRX1 o_out_data_ready_r_reg_0_ ( .D(N76), .CK(i_clk), .RN(n1270), .Q(
        o_out_data[0]) );
  DFFRX1 o_out_data_ready_r_reg_1_ ( .D(N77), .CK(i_clk), .RN(n1270), .Q(
        o_out_data[1]) );
  DFFRX1 o_out_data_ready_r_reg_2_ ( .D(N78), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[2]) );
  DFFRX1 o_out_data_ready_r_reg_3_ ( .D(N79), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[3]) );
  DFFRX1 o_out_data_ready_r_reg_4_ ( .D(N80), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[4]) );
  DFFRX1 o_out_data_ready_r_reg_5_ ( .D(N81), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[5]) );
  DFFRX1 o_out_data_ready_r_reg_6_ ( .D(N82), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[6]) );
  DFFRX1 o_out_data_ready_r_reg_7_ ( .D(N83), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[7]) );
  DFFRX1 o_out_data_ready_r_reg_8_ ( .D(N84), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[8]) );
  DFFRX1 o_out_data_ready_r_reg_9_ ( .D(N85), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[9]) );
  DFFRX1 o_out_data_ready_r_reg_10_ ( .D(N86), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[10]) );
  DFFRX1 o_out_data_ready_r_reg_13_ ( .D(N89), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[13]) );
  DFFRX4 data_bcd_2_r_reg_2_ ( .D(N139), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_2_r[2]) );
  DFFRHQX8 data_r_reg_10_ ( .D(N101), .CK(i_clk), .RN(n1370), .Q(n1030) );
  DFFRHQX8 data_r_reg_24_ ( .D(N115), .CK(i_clk), .RN(n1370), .Q(n1040) );
  DFFRX1 data_bcd_4_r_reg_0_ ( .D(N162), .CK(i_clk), .RN(n1340), .Q(
        data_bcd_4_r[0]) );
  DFFRX4 conv_3_r_reg_8_ ( .D(N215), .CK(i_clk), .RN(n1300), .Q(conv_3_r[8])
         );
  DFFRX1 conv_4_r_reg_2_ ( .D(N226), .CK(i_clk), .RN(n1320), .Q(conv_4_r[2])
         );
  DFFRX2 conv_3_r_reg_9_ ( .D(N216), .CK(i_clk), .RN(n1300), .Q(conv_3_r[9])
         );
  DFFRX4 data_abc_3_r_reg_2_ ( .D(N153), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[2]) );
  DFFRX4 conv_3_r_reg_2_ ( .D(N209), .CK(i_clk), .RN(n1300), .Q(conv_3_r[2])
         );
  DFFRX2 conv_2_r_reg_6_ ( .D(N196), .CK(i_clk), .RN(n1280), .Q(conv_2_r[6])
         );
  DFFRX2 conv_3_r_reg_6_ ( .D(N213), .CK(i_clk), .RN(n1300), .Q(conv_3_r[6])
         );
  DFFRX2 conv_3_r_reg_7_ ( .D(N214), .CK(i_clk), .RN(n1300), .Q(conv_3_r[7])
         );
  DFFRX2 conv_4_r_reg_6_ ( .D(N230), .CK(i_clk), .RN(n1320), .Q(conv_4_r[6])
         );
  DFFRX2 conv_1_r_reg_6_ ( .D(N179), .CK(i_clk), .RN(n1330), .Q(conv_1_r[6])
         );
  DFFRX2 conv_3_r_reg_5_ ( .D(N212), .CK(i_clk), .RN(n1300), .Q(conv_3_r[5])
         );
  DFFRX2 conv_4_r_reg_10_ ( .D(N234), .CK(i_clk), .RN(n1310), .Q(conv_4_r[10])
         );
  DFFRX2 conv_2_r_reg_10_ ( .D(N200), .CK(i_clk), .RN(n1280), .Q(conv_2_r[10])
         );
  DFFRX2 conv_3_r_reg_10_ ( .D(N217), .CK(i_clk), .RN(n1300), .Q(conv_3_r[10])
         );
  DFFRX2 conv_2_r_reg_5_ ( .D(N195), .CK(i_clk), .RN(n1290), .Q(conv_2_r[5])
         );
  DFFRX2 conv_1_r_reg_10_ ( .D(N183), .CK(i_clk), .RN(n1330), .Q(conv_1_r[10])
         );
  DFFRX4 data_abc_3_r_reg_8_ ( .D(N159), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[8]) );
  DFFRX2 conv_1_r_reg_7_ ( .D(N180), .CK(i_clk), .RN(n1330), .Q(conv_1_r[7])
         );
  DFFRX2 conv_4_r_reg_4_ ( .D(N228), .CK(i_clk), .RN(n1320), .Q(conv_4_r[4])
         );
  DFFRX2 conv_1_r_reg_4_ ( .D(N177), .CK(i_clk), .RN(n1330), .Q(conv_1_r[4])
         );
  DFFRX2 conv_3_r_reg_13_ ( .D(N220), .CK(i_clk), .RN(n1300), .Q(conv_3_r[13])
         );
  DFFRX2 conv_4_r_reg_9_ ( .D(N233), .CK(i_clk), .RN(n1310), .Q(conv_4_r[9])
         );
  DFFRX2 conv_2_r_reg_9_ ( .D(N199), .CK(i_clk), .RN(n1280), .Q(conv_2_r[9])
         );
  DFFRX2 conv_2_r_reg_7_ ( .D(N197), .CK(i_clk), .RN(n1280), .Q(conv_2_r[7])
         );
  DFFRX2 conv_1_r_reg_3_ ( .D(N176), .CK(i_clk), .RN(n1330), .Q(conv_1_r[3])
         );
  DFFRX2 data_abc_3_r_reg_3_ ( .D(N154), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[3]) );
  DFFRX2 conv_4_r_reg_7_ ( .D(N231), .CK(i_clk), .RN(n1310), .Q(conv_4_r[7])
         );
  DFFRX2 conv_3_r_reg_14_ ( .D(N221), .CK(i_clk), .RN(n1290), .Q(conv_3_r[14])
         );
  DFFRX2 conv_3_r_reg_12_ ( .D(N219), .CK(i_clk), .RN(n1300), .Q(conv_3_r[12])
         );
  DFFRX2 data_bcd_r_reg_7_ ( .D(data_bcd_w[7]), .CK(i_clk), .RN(n1360), .Q(
        n920) );
  DFFRX4 data_bcd_r_reg_5_ ( .D(data_bcd_w[5]), .CK(i_clk), .RN(n1260), .Q(
        n940) );
  DFFRX4 conv_2_r_reg_14_ ( .D(N204), .CK(i_clk), .RN(n1270), .Q(conv_2_r[14])
         );
  DFFRX2 data_abc_r_reg_5_ ( .D(data_abc_w[5]), .CK(i_clk), .RN(n1270), .Q(
        n930) );
  DFFRX2 conv_4_r_reg_14_ ( .D(N238), .CK(i_clk), .RN(n1310), .Q(conv_4_r[14])
         );
  DFFRX2 data_abc_1_r_reg_10_ ( .D(N136), .CK(i_clk), .RN(n1270), .Q(
        data_abc_1_r[10]) );
  DFFRX4 data_abc_1_r_reg_5_ ( .D(N131), .CK(i_clk), .RN(n1290), .Q(
        data_abc_1_r[5]) );
  DFFRX4 conv_1_r_reg_5_ ( .D(N178), .CK(i_clk), .RN(n1330), .Q(conv_1_r[5])
         );
  DFFRX2 cs_reg_1_ ( .D(ns[1]), .CK(i_clk), .RN(n1270), .Q(cs[1]), .QN(n25) );
  DFFRX2 conv_1_r_reg_13_ ( .D(N186), .CK(i_clk), .RN(n1320), .Q(conv_1_r[13])
         );
  DFFRX2 conv_1_r_reg_14_ ( .D(N187), .CK(i_clk), .RN(n1320), .Q(conv_1_r[14])
         );
  DFFRX2 conv_4_r_reg_8_ ( .D(N232), .CK(i_clk), .RN(n1310), .Q(conv_4_r[8])
         );
  DFFRX4 data_bcd_2_r_reg_3_ ( .D(N140), .CK(i_clk), .RN(n1340), .Q(
        data_bcd_2_r[3]) );
  DFFRX4 conv_2_r_reg_3_ ( .D(N193), .CK(i_clk), .RN(n1290), .Q(conv_2_r[3])
         );
  DFFRX4 conv_2_r_reg_2_ ( .D(N192), .CK(i_clk), .RN(n1290), .Q(conv_2_r[2])
         );
  DFFRX4 data_bcd_4_r_reg_3_ ( .D(N165), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[3]) );
  DFFRX4 conv_4_r_reg_3_ ( .D(N227), .CK(i_clk), .RN(n1320), .Q(conv_4_r[3])
         );
  DFFRX2 conv_4_r_reg_12_ ( .D(N236), .CK(i_clk), .RN(n1310), .Q(conv_4_r[12])
         );
  DFFRX2 conv_1_r_reg_12_ ( .D(N185), .CK(i_clk), .RN(n1320), .Q(conv_1_r[12])
         );
  DFFRX2 data_abc_r_reg_8_ ( .D(data_abc_w[8]), .CK(i_clk), .RN(n1330), .Q(
        n150) );
  DFFRX4 data_bcd_4_r_reg_5_ ( .D(N167), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[5]) );
  DFFRX4 conv_4_r_reg_5_ ( .D(N229), .CK(i_clk), .RN(n1320), .Q(conv_4_r[5])
         );
  DFFRX2 conv_2_r_reg_8_ ( .D(N198), .CK(i_clk), .RN(n1280), .Q(conv_2_r[8])
         );
  DFFRX2 data_bcd_2_r_reg_5_ ( .D(N142), .CK(i_clk), .RN(n1260), .Q(
        data_bcd_2_r[5]) );
  DFFRX2 data_bcd_2_r_reg_1_ ( .D(N138), .CK(i_clk), .RN(n1260), .Q(
        data_bcd_2_r[1]) );
  DFFRX2 conv_2_r_reg_1_ ( .D(N191), .CK(i_clk), .RN(n1290), .Q(conv_2_r[1])
         );
  DFFRHQX8 data_bcd_r_reg_8_ ( .D(data_bcd_w[8]), .CK(i_clk), .RN(n1360), .Q(
        n1020) );
  DFFRX2 conv_2_r_reg_13_ ( .D(N203), .CK(i_clk), .RN(n1270), .Q(conv_2_r[13])
         );
  DFFRX2 conv_1_r_reg_2_ ( .D(N175), .CK(i_clk), .RN(n1330), .Q(conv_1_r[2])
         );
  DFFRHQX1 conv_4_r_reg_1_ ( .D(N225), .CK(i_clk), .RN(n1320), .Q(n990) );
  DFFRHQX8 data_r_reg_26_ ( .D(N117), .CK(i_clk), .RN(n1270), .Q(n980) );
  DFFRX2 data_r_reg_12_ ( .D(N103), .CK(i_clk), .RN(n1370), .Q(data_b_w[4]), 
        .QN(n960) );
  DFFRHQX1 data_bcd_2_r_reg_6_ ( .D(N143), .CK(i_clk), .RN(n1270), .Q(n950) );
  DFFRX2 data_bcd_2_r_reg_9_ ( .D(N146), .CK(i_clk), .RN(n1340), .Q(
        data_bcd_2_r[9]) );
  DFFRHQX1 data_bcd_2_r_reg_0_ ( .D(N137), .CK(i_clk), .RN(i_rst_n), .Q(
        data_bcd_2_r[0]) );
  DFFRX2 cnt_reg_1_ ( .D(N53), .CK(i_clk), .RN(n1260), .Q(cnt[1]), .QN(n29) );
  DFFRX2 data_r_reg_31_ ( .D(N122), .CK(i_clk), .RN(i_rst_n), .Q(data_d_w[7])
         );
  DFFRX2 data_r_reg_30_ ( .D(N121), .CK(i_clk), .RN(n1330), .Q(data_d_w[6]) );
  DFFRX2 data_r_reg_6_ ( .D(N97), .CK(i_clk), .RN(n1360), .Q(data_a_w[6]) );
  DFFRX2 data_r_reg_5_ ( .D(N96), .CK(i_clk), .RN(n1360), .Q(data_a_w[5]) );
  DFFRX2 data_r_reg_4_ ( .D(N95), .CK(i_clk), .RN(n1360), .Q(data_a_w[4]) );
  DFFRX2 data_bcd_4_r_reg_2_ ( .D(N164), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[2]) );
  DFFRX2 data_bcd_2_r_reg_4_ ( .D(N141), .CK(i_clk), .RN(n1360), .Q(
        data_bcd_2_r[4]) );
  DFFRX2 conv_2_r_reg_4_ ( .D(N194), .CK(i_clk), .RN(n1290), .Q(conv_2_r[4])
         );
  DFFRX2 conv_4_r_reg_11_ ( .D(N235), .CK(i_clk), .RN(n1310), .Q(conv_4_r[11])
         );
  DFFRX2 conv_2_r_reg_11_ ( .D(N201), .CK(i_clk), .RN(n1280), .Q(conv_2_r[11])
         );
  DFFRX2 data_abc_1_r_reg_8_ ( .D(N134), .CK(i_clk), .RN(n1280), .Q(
        data_abc_1_r[8]) );
  DFFRX2 data_abc_3_r_reg_4_ ( .D(N155), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[4]) );
  DFFRX2 data_abc_3_r_reg_5_ ( .D(N156), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[5]) );
  DFFRX1 o_out_data_ready_r_reg_12_ ( .D(N88), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[12]) );
  DFFRX2 data_abc_1_r_reg_2_ ( .D(N128), .CK(i_clk), .RN(n1360), .Q(
        data_abc_1_r[2]) );
  DFFRX1 o_out_data_ready_r_reg_11_ ( .D(N87), .CK(i_clk), .RN(n1260), .Q(
        o_out_data[11]) );
  DFFRX1 conv_r_reg_11_ ( .D(N69), .CK(i_clk), .RN(n1280), .Q(conv_r[11]) );
  DFFRX1 data_bcd_4_r_reg_8_ ( .D(N170), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[8]) );
  DFFRX1 data_abc_3_r_reg_1_ ( .D(N152), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[1]) );
  DFFRX1 conv_3_r_reg_1_ ( .D(N208), .CK(i_clk), .RN(n1310), .Q(conv_3_r[1])
         );
  DFFRX1 conv_1_r_reg_0_ ( .D(N173), .CK(i_clk), .RN(n1330), .Q(conv_1_r[0])
         );
  DFFRX1 conv_1_r_reg_1_ ( .D(N174), .CK(i_clk), .RN(n1330), .Q(conv_1_r[1])
         );
  DFFRX1 data_bcd_4_r_reg_9_ ( .D(N171), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[9]) );
  DFFRX1 data_bcd_2_r_reg_10_ ( .D(N147), .CK(i_clk), .RN(n1370), .Q(
        data_bcd_2_r[10]) );
  DFFRX2 conv_3_r_reg_4_ ( .D(N211), .CK(i_clk), .RN(n1300), .Q(conv_3_r[4])
         );
  DFFRX2 conv_3_r_reg_3_ ( .D(N210), .CK(i_clk), .RN(n1300), .Q(conv_3_r[3])
         );
  DFFRX2 conv_2_r_reg_12_ ( .D(N202), .CK(i_clk), .RN(n1270), .Q(conv_2_r[12])
         );
  DFFRX4 conv_1_r_reg_9_ ( .D(N182), .CK(i_clk), .RN(n1330), .Q(conv_1_r[9])
         );
  DFFRX4 conv_3_r_reg_11_ ( .D(N218), .CK(i_clk), .RN(n1300), .Q(conv_3_r[11])
         );
  DFFRX2 data_abc_1_r_reg_1_ ( .D(N127), .CK(i_clk), .RN(n1350), .Q(
        data_abc_1_r[1]) );
  DFFRX4 conv_1_r_reg_8_ ( .D(N181), .CK(i_clk), .RN(n1330), .Q(conv_1_r[8])
         );
  DFFRX2 data_abc_3_r_reg_9_ ( .D(N160), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[9]) );
  DFFRX2 data_bcd_4_r_reg_4_ ( .D(N166), .CK(i_clk), .RN(n1350), .Q(
        data_bcd_4_r[4]) );
  DFFRX4 conv_1_r_reg_11_ ( .D(N184), .CK(i_clk), .RN(n1330), .Q(conv_1_r[11])
         );
  DFFRX4 data_abc_1_r_reg_9_ ( .D(N135), .CK(i_clk), .RN(n1370), .Q(
        data_abc_1_r[9]) );
  DFFRX2 data_abc_3_r_reg_6_ ( .D(N157), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[6]) );
  DFFRX2 data_abc_3_r_reg_7_ ( .D(N158), .CK(i_clk), .RN(n1340), .Q(
        data_abc_3_r[7]) );
  DFFRX1 cs_reg_0_ ( .D(ns[0]), .CK(i_clk), .RN(i_rst_n), .Q(cs[0]), .QN(n26)
         );
  DFFRX2 data_abc_r_reg_4_ ( .D(data_abc_w[4]), .CK(i_clk), .RN(i_rst_n), .Q(
        n1530) );
  CLKAND2X8 U212 ( .A(ns[0]), .B(n1390), .Y(n1080) );
  OAI211X4 U213 ( .A0(n1010), .A1(n860), .B0(n880), .C0(n890), .Y(ns[0]) );
  CLKAND2X3 U214 ( .A(n1380), .B(n1590), .Y(N52) );
  CLKBUFX20 U215 ( .A(n1080), .Y(n1180) );
  NAND2X8 U216 ( .A(n30), .B(n29), .Y(n2120) );
  INVX3 U217 ( .A(n2120), .Y(n1460) );
  AND2X6 U218 ( .A(conv_1_w[16]), .B(n1220), .Y(N189) );
  AND2X4 U219 ( .A(conv_4_w[10]), .B(n1210), .Y(N234) );
  AO22XL U220 ( .A0(n1460), .A1(n1430), .B0(n148), .B1(n1420), .Y(N166) );
  AO22XL U221 ( .A0(n1460), .A1(n150), .B0(n148), .B1(n149), .Y(N160) );
  INVX1 U222 ( .A(n26), .Y(n1000) );
  AND2X8 U223 ( .A(conv_2_w[16]), .B(n1200), .Y(N206) );
  CLKBUFX3 U224 ( .A(cs[0]), .Y(n910) );
  AND2X6 U225 ( .A(conv_4_w[11]), .B(n1200), .Y(N235) );
  AND2X8 U226 ( .A(conv_1_w[9]), .B(n1220), .Y(N182) );
  AND2X8 U227 ( .A(conv_2_w[11]), .B(n1190), .Y(N201) );
  NAND2X4 U228 ( .A(n148), .B(n29), .Y(n2140) );
  AND2X6 U229 ( .A(conv_2_w[9]), .B(n1190), .Y(N199) );
  AND2X8 U230 ( .A(conv_2_w[15]), .B(n1190), .Y(N205) );
  AND2X6 U231 ( .A(conv_2_w[12]), .B(n1190), .Y(N202) );
  INVX4 U232 ( .A(n960), .Y(n970) );
  INVX4 U233 ( .A(n1140), .Y(n1150) );
  NOR2X4 U234 ( .A(n148), .B(n29), .Y(n1010) );
  INVX3 U235 ( .A(n1010), .Y(n1050) );
  NOR2X1 U236 ( .A(ns[0]), .B(ns[1]), .Y(n850) );
  INVX3 U237 ( .A(cnt[0]), .Y(n1590) );
  CLKINVX4 U238 ( .A(n1060), .Y(n1070) );
  AND2X2 U239 ( .A(conv_2_w[13]), .B(n1190), .Y(N203) );
  AND2X2 U240 ( .A(conv_1_w[12]), .B(n1220), .Y(N185) );
  AND2X2 U241 ( .A(conv_4_w[12]), .B(n1200), .Y(N236) );
  NAND2BX1 U242 ( .AN(n2140), .B(conv_4_r[11]), .Y(n1810) );
  AND2X2 U243 ( .A(conv_4_w[14]), .B(n1200), .Y(N238) );
  AND2X4 U244 ( .A(conv_3_w[14]), .B(n1200), .Y(N221) );
  AND2X2 U245 ( .A(conv_4_w[7]), .B(n1210), .Y(N231) );
  AND2X2 U246 ( .A(conv_4_w[9]), .B(n1210), .Y(N233) );
  AND2X2 U247 ( .A(conv_1_w[11]), .B(n1220), .Y(N184) );
  AND2X2 U248 ( .A(conv_3_w[11]), .B(n1220), .Y(N218) );
  AND2X2 U249 ( .A(conv_4_w[13]), .B(n1200), .Y(N237) );
  AND2X6 U250 ( .A(n1200), .B(conv_4_w[15]), .Y(N239) );
  NAND2BX1 U251 ( .AN(n2140), .B(conv_4_r[5]), .Y(n2050) );
  NAND2BX1 U252 ( .AN(n2140), .B(conv_4_r[3]), .Y(n2160) );
  NAND2BX1 U253 ( .AN(n2140), .B(conv_4_r[4]), .Y(n2090) );
  NAND2BX1 U254 ( .AN(n2140), .B(conv_4_r[6]), .Y(n2010) );
  NAND2BX1 U255 ( .AN(n2140), .B(conv_4_r[10]), .Y(n1850) );
  AND2X2 U256 ( .A(conv_3_w[16]), .B(n1190), .Y(N223) );
  CLKINVX1 U257 ( .A(n850), .Y(n1380) );
  NAND2X1 U258 ( .A(cs[1]), .B(n910), .Y(n860) );
  CLKBUFX3 U259 ( .A(n1090), .Y(n123) );
  AND2X2 U260 ( .A(i_data[19]), .B(n1180), .Y(N110) );
  NAND2X6 U261 ( .A(cnt[1]), .B(cnt[0]), .Y(n2130) );
  AND2XL U262 ( .A(n1570), .B(n1400), .Y(N147) );
  AND2X6 U263 ( .A(conv_1_w[10]), .B(n1220), .Y(N183) );
  INVX6 U264 ( .A(n30), .Y(n148) );
  AO21X1 U265 ( .A0(n910), .A1(n1010), .B0(n25), .Y(n90) );
  AOI33X2 U266 ( .A0(n25), .A1(n31), .A2(n1000), .B0(cs[1]), .B1(n26), .B2(
        n1010), .Y(n890) );
  INVX4 U267 ( .A(n1160), .Y(n1170) );
  AND2X6 U268 ( .A(conv_1_w[15]), .B(n1210), .Y(N188) );
  AND2X2 U269 ( .A(conv_2_w[14]), .B(n1190), .Y(N204) );
  AOI2BB1X1 U270 ( .A0N(n2190), .A1N(n1010), .B0(n850), .Y(N53) );
  NAND2BXL U271 ( .AN(n2140), .B(conv_4_r[14]), .Y(n1690) );
  AO22XL U272 ( .A0(n1460), .A1(n1530), .B0(n148), .B1(n930), .Y(N156) );
  AO22XL U273 ( .A0(n1460), .A1(n1540), .B0(n148), .B1(n1530), .Y(N155) );
  AND2X4 U274 ( .A(conv_1_w[7]), .B(n1220), .Y(N180) );
  AO22XL U275 ( .A0(n1460), .A1(n1510), .B0(n148), .B1(n150), .Y(N159) );
  AND2X4 U276 ( .A(conv_3_w[9]), .B(n1210), .Y(N216) );
  AND2X2 U277 ( .A(conv_1_w[13]), .B(n1220), .Y(N186) );
  AND2X2 U278 ( .A(i_data[10]), .B(n1180), .Y(N101) );
  AND2X2 U279 ( .A(i_data[11]), .B(n1180), .Y(N102) );
  AND2X2 U280 ( .A(conv_1_w[5]), .B(n1220), .Y(N178) );
  AND2X2 U281 ( .A(conv_1_w[4]), .B(n1220), .Y(N177) );
  CLKINVX3 U282 ( .A(n2130), .Y(n1570) );
  INVXL U283 ( .A(n2140), .Y(n2190) );
  AND2X1 U284 ( .A(n1570), .B(n149), .Y(N136) );
  AND2XL U285 ( .A(n1460), .B(n149), .Y(N161) );
  AND2XL U286 ( .A(n1460), .B(n1400), .Y(N172) );
  CLKBUFX2 U287 ( .A(n1090), .Y(n125) );
  CLKBUFX2 U288 ( .A(n1090), .Y(n124) );
  AND2XL U289 ( .A(n148), .B(n1580), .Y(N151) );
  AND2XL U290 ( .A(n148), .B(n1470), .Y(N162) );
  CLKAND2X2 U291 ( .A(i_data[26]), .B(n1180), .Y(N117) );
  NAND2BXL U292 ( .AN(n2120), .B(conv_3_r[11]), .Y(n1830) );
  NAND2BXL U293 ( .AN(n2130), .B(conv_2_r[11]), .Y(n1820) );
  NAND2BXL U294 ( .AN(n2120), .B(conv_3_r[10]), .Y(n1870) );
  NAND2BXL U295 ( .AN(n2130), .B(conv_2_r[10]), .Y(n1860) );
  NAND2BXL U296 ( .AN(n2120), .B(conv_3_r[14]), .Y(n1710) );
  NAND2BXL U297 ( .AN(n2130), .B(conv_2_r[14]), .Y(n1700) );
  NAND2BXL U298 ( .AN(n2120), .B(conv_3_r[9]), .Y(n1910) );
  NAND2BXL U299 ( .AN(n2130), .B(conv_2_r[9]), .Y(n1900) );
  NAND2BXL U300 ( .AN(n2140), .B(conv_4_r[9]), .Y(n1890) );
  NAND2BXL U301 ( .AN(n2120), .B(conv_3_r[7]), .Y(n1990) );
  NAND2BXL U302 ( .AN(n2130), .B(conv_2_r[7]), .Y(n1980) );
  NAND2BXL U303 ( .AN(n2140), .B(conv_4_r[7]), .Y(n1970) );
  NAND2BXL U304 ( .AN(n2120), .B(conv_3_r[6]), .Y(n2030) );
  NAND2BXL U305 ( .AN(n2130), .B(conv_2_r[6]), .Y(n2020) );
  NAND2BXL U306 ( .AN(n2120), .B(conv_3_r[5]), .Y(n2070) );
  NAND2BXL U307 ( .AN(n2130), .B(conv_2_r[5]), .Y(n2060) );
  NAND2BXL U308 ( .AN(n2120), .B(conv_3_r[3]), .Y(n2180) );
  NAND2BXL U309 ( .AN(n2130), .B(conv_2_r[3]), .Y(n2170) );
  NAND2BXL U310 ( .AN(n2120), .B(conv_3_r[13]), .Y(n1750) );
  NAND2BXL U311 ( .AN(n2130), .B(conv_2_r[13]), .Y(n1740) );
  NAND2BXL U312 ( .AN(n2120), .B(conv_3_r[8]), .Y(n1950) );
  NAND2BXL U313 ( .AN(n2130), .B(conv_2_r[8]), .Y(n1940) );
  NAND2BXL U314 ( .AN(n2140), .B(conv_4_r[8]), .Y(n1930) );
  NAND2BXL U315 ( .AN(n2120), .B(conv_3_r[4]), .Y(n2110) );
  NAND2BXL U316 ( .AN(n2130), .B(conv_2_r[4]), .Y(n2100) );
  NAND2BXL U317 ( .AN(n2120), .B(conv_3_r[12]), .Y(n1790) );
  NAND2BXL U318 ( .AN(n2130), .B(conv_2_r[12]), .Y(n1780) );
  NAND2BXL U319 ( .AN(n2140), .B(conv_4_r[12]), .Y(n1770) );
  NAND2BXL U320 ( .AN(n2120), .B(conv_3_r[16]), .Y(n1630) );
  NAND2BXL U321 ( .AN(n2130), .B(conv_2_r[16]), .Y(n1620) );
  NAND2BXL U322 ( .AN(n2120), .B(conv_3_r[15]), .Y(n1670) );
  NAND2BXL U323 ( .AN(n2130), .B(conv_2_r[15]), .Y(n1660) );
  NAND2BXL U324 ( .AN(n1050), .B(conv_1_r[11]), .Y(n1800) );
  NAND2BXL U325 ( .AN(n1050), .B(conv_1_r[10]), .Y(n1840) );
  NAND2BXL U326 ( .AN(n1050), .B(conv_1_r[14]), .Y(n1680) );
  NAND2BXL U327 ( .AN(n1050), .B(conv_1_r[9]), .Y(n1880) );
  NAND2BXL U328 ( .AN(n1050), .B(conv_1_r[7]), .Y(n1960) );
  NAND2BXL U329 ( .AN(n1050), .B(conv_1_r[6]), .Y(n2000) );
  NAND2BXL U330 ( .AN(n1050), .B(conv_1_r[5]), .Y(n2040) );
  NAND2BXL U331 ( .AN(n1050), .B(conv_1_r[3]), .Y(n2150) );
  NAND2BXL U332 ( .AN(n1050), .B(conv_1_r[13]), .Y(n1720) );
  NAND2BXL U333 ( .AN(n1050), .B(conv_1_r[8]), .Y(n1920) );
  NAND2BXL U334 ( .AN(n1050), .B(conv_1_r[4]), .Y(n2080) );
  NAND2BXL U335 ( .AN(n1050), .B(conv_1_r[12]), .Y(n1760) );
  NAND2BXL U336 ( .AN(n1050), .B(conv_1_r[16]), .Y(n1600) );
  NAND2BXL U337 ( .AN(n1050), .B(conv_1_r[15]), .Y(n1640) );
  INVX3 U338 ( .A(n123), .Y(n1220) );
  INVX3 U339 ( .A(n125), .Y(n1190) );
  INVX3 U340 ( .A(n124), .Y(n1200) );
  INVX3 U341 ( .A(n124), .Y(n1210) );
  AND2X2 U342 ( .A(conv_3_w[13]), .B(n1190), .Y(N220) );
  AND2X2 U343 ( .A(conv_3_w[15]), .B(n1190), .Y(N222) );
  AND2X2 U344 ( .A(conv_2_w[10]), .B(n1190), .Y(N200) );
  AND2X2 U345 ( .A(conv_3_w[10]), .B(n1190), .Y(N217) );
  AND2X2 U346 ( .A(conv_2_w[5]), .B(n1200), .Y(N195) );
  AND2X2 U347 ( .A(conv_3_w[5]), .B(n1210), .Y(N212) );
  AND2X2 U348 ( .A(conv_4_w[5]), .B(n1210), .Y(N229) );
  AND2X2 U349 ( .A(conv_2_w[6]), .B(n1200), .Y(N196) );
  AND2X2 U350 ( .A(conv_3_w[6]), .B(n1190), .Y(N213) );
  AND2X2 U351 ( .A(conv_4_w[6]), .B(n1210), .Y(N230) );
  AND2X2 U352 ( .A(conv_1_w[6]), .B(n1220), .Y(N179) );
  AND2X2 U353 ( .A(conv_2_w[7]), .B(n1190), .Y(N197) );
  AND2X2 U354 ( .A(conv_3_w[7]), .B(n1200), .Y(N214) );
  AND2X2 U355 ( .A(conv_2_w[8]), .B(n1190), .Y(N198) );
  AND2X2 U356 ( .A(conv_3_w[8]), .B(n1190), .Y(N215) );
  AND2X2 U357 ( .A(conv_4_w[8]), .B(n1210), .Y(N232) );
  AND2X2 U358 ( .A(conv_1_w[8]), .B(n1220), .Y(N181) );
  AND2X2 U359 ( .A(conv_2_w[4]), .B(n1200), .Y(N194) );
  AND2X2 U360 ( .A(conv_3_w[4]), .B(n1210), .Y(N211) );
  AND2X2 U361 ( .A(conv_4_w[4]), .B(n1210), .Y(N228) );
  AND2X2 U362 ( .A(conv_2_w[3]), .B(n1200), .Y(N193) );
  AND2X2 U363 ( .A(conv_3_w[3]), .B(n1200), .Y(N210) );
  AND2X2 U364 ( .A(conv_4_w[3]), .B(n1210), .Y(N227) );
  AND2X2 U365 ( .A(conv_1_w[3]), .B(n1220), .Y(N176) );
  AND2X2 U366 ( .A(conv_1_w[2]), .B(n1220), .Y(N175) );
  AND2X2 U367 ( .A(conv_2_w[2]), .B(n1200), .Y(N192) );
  AND2X2 U368 ( .A(conv_2_w[1]), .B(n1200), .Y(N191) );
  AND2X2 U369 ( .A(conv_3_w[2]), .B(n1190), .Y(N209) );
  AND2X2 U370 ( .A(conv_3_w[1]), .B(n1190), .Y(N208) );
  AND2X2 U371 ( .A(conv_4_w[2]), .B(n1210), .Y(N226) );
  AND2X2 U372 ( .A(conv_4_w[1]), .B(n1210), .Y(N225) );
  AND2X2 U373 ( .A(conv_2_w[0]), .B(n1200), .Y(N190) );
  AND2X2 U374 ( .A(conv_3_w[0]), .B(n1190), .Y(N207) );
  AND2X2 U375 ( .A(conv_4_w[0]), .B(n1210), .Y(N224) );
  AND2X2 U376 ( .A(conv_1_w[1]), .B(n1220), .Y(N174) );
  AND2X2 U377 ( .A(conv_1_w[0]), .B(n1220), .Y(N173) );
  AO22X1 U378 ( .A0(n1570), .A1(n1580), .B0(n1590), .B1(n1560), .Y(N127) );
  AO22X1 U379 ( .A0(n1570), .A1(n1560), .B0(n1590), .B1(n1550), .Y(N128) );
  AO22X1 U380 ( .A0(n1570), .A1(n1550), .B0(n1590), .B1(n1540), .Y(N129) );
  AO22X1 U381 ( .A0(n1570), .A1(n1540), .B0(n1590), .B1(n1530), .Y(N130) );
  AO22X1 U382 ( .A0(n1570), .A1(n1530), .B0(n1590), .B1(n930), .Y(N131) );
  AO22X1 U383 ( .A0(n1570), .A1(n930), .B0(n1590), .B1(n1520), .Y(N132) );
  AO22X1 U384 ( .A0(n1570), .A1(n1470), .B0(n1590), .B1(n1450), .Y(N138) );
  AO22X1 U385 ( .A0(n1570), .A1(n1450), .B0(n1590), .B1(n1440), .Y(N139) );
  AO22X1 U386 ( .A0(n1570), .A1(n1440), .B0(n1590), .B1(n1430), .Y(N140) );
  AO22X1 U387 ( .A0(n1570), .A1(n1430), .B0(n1590), .B1(n1420), .Y(N141) );
  AO22X1 U388 ( .A0(n1570), .A1(n1420), .B0(n1590), .B1(n940), .Y(N142) );
  AO22X1 U389 ( .A0(n1570), .A1(n940), .B0(n1590), .B1(n1410), .Y(N143) );
  AO22X1 U390 ( .A0(n1570), .A1(n1410), .B0(n1590), .B1(n920), .Y(N144) );
  AO22X1 U391 ( .A0(n1570), .A1(n920), .B0(n1590), .B1(n1020), .Y(N145) );
  AO22X1 U392 ( .A0(n1570), .A1(n1020), .B0(n1590), .B1(n1400), .Y(N146) );
  AO22X1 U393 ( .A0(n1460), .A1(n1580), .B0(n148), .B1(n1560), .Y(N152) );
  AO22X1 U394 ( .A0(n1460), .A1(n1560), .B0(n148), .B1(n1550), .Y(N153) );
  AO22X1 U395 ( .A0(n1460), .A1(n1550), .B0(n148), .B1(n1540), .Y(N154) );
  AO22X1 U396 ( .A0(n1460), .A1(n930), .B0(n148), .B1(n1520), .Y(N157) );
  AO22X1 U397 ( .A0(n1460), .A1(n1470), .B0(n148), .B1(n1450), .Y(N163) );
  AO22X1 U398 ( .A0(n1460), .A1(n1450), .B0(n148), .B1(n1440), .Y(N164) );
  AO22X1 U399 ( .A0(n1460), .A1(n1440), .B0(n148), .B1(n1430), .Y(N165) );
  AO22X1 U400 ( .A0(n1460), .A1(n1420), .B0(n148), .B1(n940), .Y(N167) );
  AO22X1 U401 ( .A0(n1460), .A1(n940), .B0(n148), .B1(n1410), .Y(N168) );
  AO22X1 U402 ( .A0(n1460), .A1(n1410), .B0(n148), .B1(n920), .Y(N169) );
  AO22X1 U403 ( .A0(n1460), .A1(n920), .B0(n148), .B1(n1020), .Y(N170) );
  AO22X1 U404 ( .A0(n1460), .A1(n1020), .B0(n148), .B1(n1400), .Y(N171) );
  AND2X2 U405 ( .A(n1590), .B(n1580), .Y(N126) );
  AND2X2 U406 ( .A(n1590), .B(n1470), .Y(N137) );
  CLKINVX1 U407 ( .A(n860), .Y(n2200) );
  AND2X2 U408 ( .A(i_data[0]), .B(n1180), .Y(N91) );
  AND2X2 U409 ( .A(i_data[1]), .B(n1180), .Y(N92) );
  AND2X2 U410 ( .A(i_data[2]), .B(n1180), .Y(N93) );
  AND2X2 U411 ( .A(i_data[3]), .B(n1180), .Y(N94) );
  AND2X2 U412 ( .A(i_data[4]), .B(n1180), .Y(N95) );
  AND2X2 U413 ( .A(i_data[5]), .B(n1180), .Y(N96) );
  AND2X2 U414 ( .A(i_data[6]), .B(n1180), .Y(N97) );
  AND2X2 U415 ( .A(i_data[7]), .B(n1180), .Y(N98) );
  AND2X2 U416 ( .A(i_data[8]), .B(n1180), .Y(N99) );
  AND2X2 U417 ( .A(i_data[9]), .B(n1180), .Y(N100) );
  AND2X2 U418 ( .A(i_data[16]), .B(n1180), .Y(N107) );
  AND2X2 U419 ( .A(i_data[17]), .B(n1180), .Y(N108) );
  AND2X2 U420 ( .A(i_data[18]), .B(n1180), .Y(N109) );
  AND2X2 U421 ( .A(i_data[20]), .B(n1180), .Y(N111) );
  AND2X2 U422 ( .A(i_data[21]), .B(n1180), .Y(N112) );
  AND2X2 U423 ( .A(i_data[22]), .B(n1180), .Y(N113) );
  AND2X2 U424 ( .A(i_data[23]), .B(n1180), .Y(N114) );
  AND2X2 U425 ( .A(i_data[24]), .B(n1180), .Y(N115) );
  AND2X2 U426 ( .A(i_data[25]), .B(n1180), .Y(N116) );
  AND2X2 U427 ( .A(i_data[27]), .B(n1180), .Y(N118) );
  AND2X2 U428 ( .A(i_data[28]), .B(n1180), .Y(N119) );
  AND2X2 U429 ( .A(i_data[29]), .B(n1180), .Y(N120) );
  AND2X2 U430 ( .A(i_data[30]), .B(n1180), .Y(N121) );
  AND2X2 U431 ( .A(i_data[31]), .B(n1180), .Y(N122) );
  AND2X2 U432 ( .A(i_data[12]), .B(n1180), .Y(N103) );
  AND2X2 U433 ( .A(i_data[13]), .B(n1180), .Y(N104) );
  AND2X2 U434 ( .A(i_data[14]), .B(n1180), .Y(N105) );
  AND2X2 U435 ( .A(i_data[15]), .B(n1180), .Y(N106) );
  NOR2X4 U436 ( .A(cs[1]), .B(n910), .Y(n1090) );
  NAND4X1 U437 ( .A(n1830), .B(n1820), .C(n1810), .D(n1800), .Y(N69) );
  NAND4X1 U438 ( .A(n1870), .B(n1860), .C(n1850), .D(n1840), .Y(N68) );
  NAND4X1 U439 ( .A(n1910), .B(n1900), .C(n1890), .D(n1880), .Y(N67) );
  NAND4X1 U440 ( .A(n1950), .B(n1940), .C(n1930), .D(n1920), .Y(N66) );
  NAND4X1 U441 ( .A(n1990), .B(n1980), .C(n1970), .D(n1960), .Y(N65) );
  NAND4X1 U442 ( .A(n2030), .B(n2020), .C(n2010), .D(n2000), .Y(N64) );
  NAND4X1 U443 ( .A(n2070), .B(n2060), .C(n2050), .D(n2040), .Y(N63) );
  NAND4X1 U444 ( .A(n2110), .B(n2100), .C(n2090), .D(n2080), .Y(N62) );
  NAND4X1 U445 ( .A(n2180), .B(n2170), .C(n2160), .D(n2150), .Y(N61) );
  NAND4X1 U446 ( .A(n1750), .B(n1740), .C(n1730), .D(n1720), .Y(N71) );
  NAND2BX1 U447 ( .AN(n2140), .B(conv_4_r[13]), .Y(n1730) );
  NAND4X1 U448 ( .A(n1710), .B(n1700), .C(n1690), .D(n1680), .Y(N72) );
  NAND4X1 U449 ( .A(n1790), .B(n1780), .C(n1770), .D(n1760), .Y(N70) );
  NAND4X1 U450 ( .A(n1630), .B(n1620), .C(n1610), .D(n1600), .Y(N74) );
  NAND2BX1 U451 ( .AN(n2140), .B(conv_4_r[16]), .Y(n1610) );
  NAND4X1 U452 ( .A(n1670), .B(n1660), .C(n1650), .D(n1640), .Y(N73) );
  NAND2BX1 U453 ( .AN(n2140), .B(conv_4_r[15]), .Y(n1650) );
  AO22X1 U454 ( .A0(n1570), .A1(n1520), .B0(n1590), .B1(n1510), .Y(N133) );
  AO22X1 U455 ( .A0(n1570), .A1(n1510), .B0(n1590), .B1(n150), .Y(N134) );
  AO22X1 U456 ( .A0(n1570), .A1(n150), .B0(n1590), .B1(n149), .Y(N135) );
  AO22X1 U457 ( .A0(n1460), .A1(n1520), .B0(n148), .B1(n1510), .Y(N158) );
  CLKBUFX3 U458 ( .A(i_rst_n), .Y(n1260) );
  CLKBUFX3 U459 ( .A(i_rst_n), .Y(n1270) );
  CLKBUFX3 U460 ( .A(i_rst_n), .Y(n1280) );
  CLKBUFX3 U461 ( .A(i_rst_n), .Y(n1290) );
  CLKBUFX3 U462 ( .A(i_rst_n), .Y(n1300) );
  CLKBUFX3 U463 ( .A(i_rst_n), .Y(n1310) );
  CLKBUFX3 U464 ( .A(i_rst_n), .Y(n1320) );
  CLKBUFX3 U465 ( .A(i_rst_n), .Y(n1330) );
  CLKBUFX3 U466 ( .A(i_rst_n), .Y(n1340) );
  CLKBUFX3 U467 ( .A(i_rst_n), .Y(n1350) );
  CLKBUFX3 U468 ( .A(i_rst_n), .Y(n1360) );
  CLKBUFX3 U469 ( .A(i_rst_n), .Y(n1370) );
  CLKINVX1 U470 ( .A(n1100), .Y(n1110) );
  CLKINVX1 U471 ( .A(n1120), .Y(n1130) );
  INVX3 U472 ( .A(ns[1]), .Y(n1390) );
  OAI31X2 U473 ( .A0(n31), .A1(cs[1]), .A2(n26), .B0(n90), .Y(ns[1]) );
  AND2X4 U474 ( .A(conv_3_w[12]), .B(n1190), .Y(N219) );
  AND2X4 U475 ( .A(conv_4_w[16]), .B(n1210), .Y(N240) );
  AND2X4 U476 ( .A(conv_1_w[14]), .B(n1220), .Y(N187) );
endmodule


module conv_DW01_add_19 ( SUM, \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [9:0] SUM;
  input \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n2, n3, n4, n5, n6, n7, n8, n11, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n30, n31, n32, n33, n35, n36, n37, n38, n42,
         n43, n45, n48, n50, n51, n90, n91, n92, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121;
  wire   [8:0] B;
  wire   [8:1] A;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign A[8] = \A[8] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;

  INVX6 U66 ( .A(n21), .Y(n19) );
  NAND2X8 U67 ( .A(n98), .B(n23), .Y(n21) );
  BUFX20 U68 ( .A(n117), .Y(n112) );
  NOR2X8 U69 ( .A(B[5]), .B(A[5]), .Y(n113) );
  INVX3 U70 ( .A(n45), .Y(n43) );
  NAND2X4 U71 ( .A(B[1]), .B(A[1]), .Y(n45) );
  NAND2X2 U72 ( .A(n96), .B(n23), .Y(n3) );
  NAND2X6 U73 ( .A(n96), .B(n97), .Y(n98) );
  OR2X4 U74 ( .A(B[8]), .B(A[8]), .Y(n121) );
  CLKINVX1 U75 ( .A(n36), .Y(n51) );
  XOR2X1 U76 ( .A(n90), .B(n6), .Y(SUM[4]) );
  OA21X4 U77 ( .A0(n38), .A1(n36), .B0(n37), .Y(n90) );
  NOR2X8 U78 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NOR2X6 U79 ( .A(B[3]), .B(A[3]), .Y(n36) );
  INVX3 U80 ( .A(n22), .Y(n96) );
  OR2X1 U81 ( .A(B[1]), .B(A[1]), .Y(n91) );
  CLKAND2X4 U82 ( .A(B[2]), .B(A[2]), .Y(n115) );
  XNOR2X1 U83 ( .A(n8), .B(n43), .Y(SUM[2]) );
  AND2XL U84 ( .A(n91), .B(n45), .Y(SUM[1]) );
  NOR2X8 U85 ( .A(n119), .B(n115), .Y(n38) );
  NOR2X4 U86 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NAND2X4 U87 ( .A(A[4]), .B(B[4]), .Y(n33) );
  CLKBUFX4 U88 ( .A(n33), .Y(n95) );
  XOR2X1 U89 ( .A(n112), .B(n4), .Y(SUM[6]) );
  NOR2X2 U90 ( .A(n112), .B(n11), .Y(n99) );
  INVX4 U91 ( .A(n48), .Y(n92) );
  NOR2X6 U92 ( .A(B[6]), .B(A[6]), .Y(n25) );
  INVX3 U93 ( .A(n25), .Y(n48) );
  OR2X8 U94 ( .A(n99), .B(n94), .Y(SUM[9]) );
  CLKINVX8 U95 ( .A(n26), .Y(n97) );
  NAND2X2 U96 ( .A(n48), .B(n26), .Y(n4) );
  OAI2BB1X4 U97 ( .A0N(n121), .A1N(n21), .B0(n16), .Y(n94) );
  NOR2X6 U98 ( .A(n22), .B(n25), .Y(n20) );
  NAND2X6 U99 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NAND2X2 U100 ( .A(n17), .B(n2), .Y(n106) );
  INVX4 U101 ( .A(n17), .Y(n104) );
  XOR2XL U102 ( .A(n7), .B(n38), .Y(SUM[3]) );
  NAND2X2 U103 ( .A(n20), .B(n121), .Y(n11) );
  NAND2X4 U104 ( .A(n31), .B(n5), .Y(n102) );
  NAND2X8 U105 ( .A(n100), .B(n101), .Y(n103) );
  NAND2X6 U106 ( .A(n102), .B(n103), .Y(SUM[5]) );
  CLKINVX3 U107 ( .A(n31), .Y(n100) );
  CLKINVX2 U108 ( .A(n5), .Y(n101) );
  NAND2X4 U109 ( .A(n116), .B(n95), .Y(n31) );
  NAND2X2 U110 ( .A(n30), .B(n114), .Y(n5) );
  NAND2X6 U111 ( .A(n104), .B(n105), .Y(n107) );
  NAND2X4 U112 ( .A(n106), .B(n107), .Y(SUM[8]) );
  INVX3 U113 ( .A(n2), .Y(n105) );
  NAND2X2 U114 ( .A(n121), .B(n16), .Y(n2) );
  NAND2X2 U115 ( .A(n3), .B(n24), .Y(n110) );
  NAND2X6 U116 ( .A(n108), .B(n109), .Y(n111) );
  NAND2X4 U117 ( .A(n110), .B(n111), .Y(SUM[7]) );
  CLKINVX6 U118 ( .A(n24), .Y(n108) );
  INVX3 U119 ( .A(n3), .Y(n109) );
  NAND2X4 U120 ( .A(B[5]), .B(A[5]), .Y(n30) );
  OAI21X4 U121 ( .A0(n112), .A1(n92), .B0(n26), .Y(n24) );
  OAI21X4 U122 ( .A0(n112), .A1(n18), .B0(n19), .Y(n17) );
  OR2X4 U123 ( .A(n90), .B(n32), .Y(n116) );
  OR2X1 U124 ( .A(B[5]), .B(A[5]), .Y(n114) );
  INVXL U125 ( .A(n115), .Y(n42) );
  AND2X8 U126 ( .A(n120), .B(n43), .Y(n119) );
  NAND2XL U127 ( .A(n42), .B(n120), .Y(n8) );
  OR2X6 U128 ( .A(B[2]), .B(A[2]), .Y(n120) );
  INVX4 U129 ( .A(n20), .Y(n18) );
  AOI21X4 U130 ( .A0(n27), .A1(n35), .B0(n118), .Y(n117) );
  OAI21X4 U131 ( .A0(n113), .A1(n33), .B0(n30), .Y(n118) );
  OAI21X4 U132 ( .A0(n38), .A1(n36), .B0(n37), .Y(n35) );
  CLKBUFX3 U133 ( .A(B[0]), .Y(SUM[0]) );
  NAND2X2 U134 ( .A(B[7]), .B(A[7]), .Y(n23) );
  NAND2X2 U135 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2X2 U136 ( .A(B[3]), .B(A[3]), .Y(n37) );
  CLKINVX1 U137 ( .A(n32), .Y(n50) );
  NAND2X1 U138 ( .A(n51), .B(n37), .Y(n7) );
  NAND2X1 U139 ( .A(n50), .B(n95), .Y(n6) );
  NOR2X4 U140 ( .A(n32), .B(n113), .Y(n27) );
endmodule


module conv_DW01_add_18 ( \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , 
        \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , 
        \B[0] , \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , 
        \SUM[2] , \SUM[1] , \SUM[0]  );
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  output \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] , \SUM[0] ;
  wire   n2, n3, n5, n6, n7, n11, n13, n14, n15, n16, n17, n18, n19, n21, n22,
         n23, n25, n26, n27, n28, n29, n30, n32, n33, n37, n38, n40, n41, n42,
         n43, n44, n45, n47, n48, n49, n50, n53, n54, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115;
  wire   [8:0] SUM;
  wire   [7:0] B;
  wire   [7:0] A;
  assign \SUM[8]  = SUM[8];
  assign \SUM[7]  = SUM[7];
  assign \SUM[6]  = SUM[6];
  assign \SUM[5]  = SUM[5];
  assign \SUM[4]  = SUM[4];
  assign \SUM[3]  = SUM[3];
  assign \SUM[2]  = SUM[2];
  assign \SUM[1]  = SUM[1];
  assign \SUM[0]  = SUM[0];
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;

  XNOR2X4 U3 ( .A(n17), .B(n2), .Y(SUM[7]) );
  OAI21X4 U28 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  OR2X4 U68 ( .A(n93), .B(n111), .Y(n104) );
  NAND2X8 U69 ( .A(n54), .B(n111), .Y(n112) );
  INVX4 U70 ( .A(n47), .Y(n111) );
  NAND2X6 U71 ( .A(n54), .B(n45), .Y(n93) );
  INVX6 U72 ( .A(n44), .Y(n54) );
  NAND2X6 U73 ( .A(n112), .B(n45), .Y(n43) );
  NAND2X4 U74 ( .A(A[1]), .B(B[1]), .Y(n45) );
  NAND2X4 U75 ( .A(B[6]), .B(A[6]), .Y(n23) );
  AO21X2 U76 ( .A0(n28), .A1(n13), .B0(n14), .Y(n114) );
  NAND2X2 U77 ( .A(n93), .B(n111), .Y(n106) );
  NAND2X4 U78 ( .A(n106), .B(n104), .Y(SUM[1]) );
  CLKINVX6 U79 ( .A(n101), .Y(n96) );
  NAND2BX1 U80 ( .AN(n37), .B(n38), .Y(n6) );
  BUFX12 U81 ( .A(n109), .Y(n101) );
  NOR2X2 U82 ( .A(n40), .B(n37), .Y(n97) );
  NOR2X4 U83 ( .A(B[2]), .B(A[2]), .Y(n40) );
  NAND2X4 U84 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2X4 U85 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NOR2X4 U86 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NOR2X6 U87 ( .A(A[1]), .B(B[1]), .Y(n44) );
  CLKAND2X3 U88 ( .A(n50), .B(n30), .Y(n94) );
  OAI21X4 U89 ( .A0(n42), .A1(n40), .B0(n41), .Y(n110) );
  NOR2X8 U90 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NAND2X6 U91 ( .A(B[0]), .B(A[0]), .Y(n47) );
  OR2X1 U92 ( .A(B[0]), .B(A[0]), .Y(n95) );
  AND2X8 U93 ( .A(n43), .B(n97), .Y(n105) );
  CLKINVX6 U94 ( .A(n43), .Y(n42) );
  NAND2X8 U95 ( .A(n96), .B(n33), .Y(n100) );
  NOR2X8 U96 ( .A(n105), .B(n100), .Y(n98) );
  INVX6 U97 ( .A(n40), .Y(n53) );
  OAI21X4 U98 ( .A0(n37), .A1(n41), .B0(n38), .Y(n109) );
  NAND2X6 U99 ( .A(n107), .B(n94), .Y(n102) );
  OR2X8 U100 ( .A(n107), .B(n94), .Y(n103) );
  AOI2BB1X2 U101 ( .A0N(n108), .A1N(n11), .B0(n114), .Y(n113) );
  INVX3 U102 ( .A(n113), .Y(SUM[8]) );
  AND2X1 U103 ( .A(n33), .B(n32), .Y(n99) );
  XOR2X4 U104 ( .A(n42), .B(n7), .Y(SUM[2]) );
  NAND2X4 U105 ( .A(B[3]), .B(A[3]), .Y(n38) );
  OR2X8 U106 ( .A(n98), .B(n99), .Y(n107) );
  NAND2X2 U107 ( .A(n53), .B(n41), .Y(n7) );
  NOR2X8 U108 ( .A(n105), .B(n101), .Y(n108) );
  NAND2X8 U109 ( .A(n103), .B(n102), .Y(SUM[5]) );
  NOR2X8 U110 ( .A(B[3]), .B(A[3]), .Y(n37) );
  NAND2BX1 U111 ( .AN(n32), .B(n33), .Y(n5) );
  OA21X4 U112 ( .A0(n108), .A1(n25), .B0(n26), .Y(n115) );
  XNOR2X4 U113 ( .A(n110), .B(n6), .Y(SUM[3]) );
  XOR2X4 U114 ( .A(n115), .B(n3), .Y(SUM[6]) );
  AND2X2 U115 ( .A(n95), .B(n47), .Y(SUM[0]) );
  CLKINVX1 U116 ( .A(n28), .Y(n26) );
  NAND2X2 U117 ( .A(B[7]), .B(A[7]), .Y(n16) );
  NAND2X2 U118 ( .A(B[5]), .B(A[5]), .Y(n30) );
  CLKINVX1 U119 ( .A(n23), .Y(n21) );
  NAND2X1 U120 ( .A(n48), .B(n16), .Y(n2) );
  NOR2X4 U121 ( .A(B[7]), .B(A[7]), .Y(n15) );
  NAND2X1 U122 ( .A(n49), .B(n23), .Y(n3) );
  NOR2X4 U123 ( .A(B[6]), .B(A[6]), .Y(n22) );
  CLKINVX1 U124 ( .A(n15), .Y(n48) );
  OAI21X1 U125 ( .A0(n15), .A1(n23), .B0(n16), .Y(n14) );
  NOR2X2 U126 ( .A(n22), .B(n15), .Y(n13) );
  INVX3 U127 ( .A(n22), .Y(n49) );
  CLKINVX1 U128 ( .A(n27), .Y(n25) );
  NAND2X1 U129 ( .A(n27), .B(n49), .Y(n18) );
  NAND2X1 U130 ( .A(n13), .B(n27), .Y(n11) );
  CLKINVX1 U131 ( .A(n29), .Y(n50) );
  NOR2X4 U132 ( .A(n32), .B(n29), .Y(n27) );
  AOI21X2 U133 ( .A0(n28), .A1(n49), .B0(n21), .Y(n19) );
  OAI21X2 U134 ( .A0(n108), .A1(n18), .B0(n19), .Y(n17) );
  XOR2X4 U135 ( .A(n108), .B(n5), .Y(SUM[4]) );
endmodule


module conv_DW01_add_17 ( SUM, \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [9:0] SUM;
  input \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n11, n12, n14, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n40, n42, n43, n45, n47, n48, n49, n50, n51, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99;
  wire   [8:0] B;
  wire   [8:1] A;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign A[8] = \A[8] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;

  OAI21X4 U17 ( .A0(n22), .A1(n26), .B0(n23), .Y(n21) );
  OAI21X4 U44 ( .A0(n38), .A1(n36), .B0(n37), .Y(n35) );
  NAND2X4 U66 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NOR2X8 U67 ( .A(B[3]), .B(A[3]), .Y(n36) );
  INVX3 U68 ( .A(n20), .Y(n18) );
  NAND2X4 U69 ( .A(B[2]), .B(A[2]), .Y(n42) );
  INVX3 U70 ( .A(n45), .Y(n43) );
  NAND2X4 U71 ( .A(B[3]), .B(A[3]), .Y(n37) );
  INVX3 U72 ( .A(n97), .Y(n93) );
  NOR2X4 U73 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NAND2X2 U74 ( .A(B[7]), .B(A[7]), .Y(n23) );
  NOR2X4 U75 ( .A(n22), .B(n25), .Y(n20) );
  NOR2X4 U76 ( .A(n29), .B(n32), .Y(n27) );
  XOR2X1 U77 ( .A(n38), .B(n7), .Y(SUM[3]) );
  AND2X8 U78 ( .A(n27), .B(n35), .Y(n92) );
  AOI21X4 U79 ( .A0(n21), .A1(n99), .B0(n14), .Y(n12) );
  BUFX4 U80 ( .A(B[8]), .Y(n90) );
  NAND2X1 U81 ( .A(n48), .B(n26), .Y(n4) );
  NOR2X4 U82 ( .A(B[6]), .B(A[6]), .Y(n25) );
  NAND2X2 U83 ( .A(A[6]), .B(B[6]), .Y(n26) );
  INVX3 U84 ( .A(n35), .Y(n34) );
  OR2X1 U85 ( .A(B[1]), .B(A[1]), .Y(n91) );
  NAND2X4 U86 ( .A(B[5]), .B(A[5]), .Y(n30) );
  NOR2X8 U87 ( .A(n92), .B(n28), .Y(n1) );
  OAI21X1 U88 ( .A0(n11), .A1(n1), .B0(n12), .Y(SUM[9]) );
  OAI21X4 U89 ( .A0(n18), .A1(n1), .B0(n19), .Y(n17) );
  CLKINVX3 U90 ( .A(n29), .Y(n49) );
  NAND2X2 U91 ( .A(n20), .B(n99), .Y(n11) );
  OR2X4 U92 ( .A(B[2]), .B(A[2]), .Y(n98) );
  CLKINVX4 U93 ( .A(n16), .Y(n14) );
  INVX3 U94 ( .A(n25), .Y(n48) );
  NOR2X8 U95 ( .A(B[5]), .B(A[5]), .Y(n29) );
  OAI21X4 U96 ( .A0(n1), .A1(n25), .B0(n26), .Y(n24) );
  NAND2X2 U97 ( .A(n97), .B(n94), .Y(n95) );
  NAND2X8 U98 ( .A(n93), .B(n5), .Y(n96) );
  NAND2X6 U99 ( .A(n95), .B(n96), .Y(SUM[5]) );
  CLKINVX1 U100 ( .A(n5), .Y(n94) );
  NAND2X8 U101 ( .A(n49), .B(n30), .Y(n5) );
  XNOR2X4 U102 ( .A(n24), .B(n3), .Y(SUM[7]) );
  XNOR2X4 U103 ( .A(n17), .B(n2), .Y(SUM[8]) );
  NAND2X2 U104 ( .A(n47), .B(n23), .Y(n3) );
  AOI21X4 U105 ( .A0(n98), .A1(n43), .B0(n40), .Y(n38) );
  INVX3 U106 ( .A(n42), .Y(n40) );
  XOR2X2 U107 ( .A(n1), .B(n4), .Y(SUM[6]) );
  INVX2 U108 ( .A(n21), .Y(n19) );
  OA21X4 U109 ( .A0(n34), .A1(n32), .B0(n33), .Y(n97) );
  OAI21X4 U110 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  AND2XL U111 ( .A(n91), .B(n45), .Y(SUM[1]) );
  NAND2X1 U112 ( .A(n99), .B(n16), .Y(n2) );
  OR2X4 U113 ( .A(n90), .B(A[8]), .Y(n99) );
  NAND2X2 U114 ( .A(n90), .B(A[8]), .Y(n16) );
  CLKBUFX3 U115 ( .A(B[0]), .Y(SUM[0]) );
  NOR2X4 U116 ( .A(B[4]), .B(A[4]), .Y(n32) );
  XOR2X1 U117 ( .A(n34), .B(n6), .Y(SUM[4]) );
  NAND2X2 U118 ( .A(B[1]), .B(A[1]), .Y(n45) );
  INVX1 U119 ( .A(n36), .Y(n51) );
  NAND2X1 U120 ( .A(n51), .B(n37), .Y(n7) );
  NAND2X1 U121 ( .A(n50), .B(n33), .Y(n6) );
  CLKINVX1 U122 ( .A(n32), .Y(n50) );
  INVX1 U123 ( .A(n22), .Y(n47) );
  XNOR2X1 U124 ( .A(n8), .B(n43), .Y(SUM[2]) );
  NAND2XL U125 ( .A(n98), .B(n42), .Y(n8) );
endmodule


module conv_DW01_add_16 ( \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , 
        \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , 
        \B[0] , \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , 
        \SUM[2] , \SUM[1] , \SUM[0]  );
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  output \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] , \SUM[0] ;
  wire   n3, n4, n5, n6, n7, n8, n11, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n37, n38, n40, n41, n42, n43, n44, n45, n47, n48, n50, n51, n52,
         n53, n54, n93, n94, n95, n96, n97, n98, n99, n101, n102, n103, n104,
         n105;
  wire   [8:0] SUM;
  wire   [7:0] B;
  wire   [7:0] A;
  assign \SUM[8]  = SUM[8];
  assign \SUM[7]  = SUM[7];
  assign \SUM[6]  = SUM[6];
  assign \SUM[5]  = SUM[5];
  assign \SUM[4]  = SUM[4];
  assign \SUM[3]  = SUM[3];
  assign \SUM[2]  = SUM[2];
  assign \SUM[1]  = SUM[1];
  assign \SUM[0]  = SUM[0];
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;

  XNOR2X4 U23 ( .A(n31), .B(n4), .Y(SUM[5]) );
  OAI21X4 U28 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  OAI21X4 U34 ( .A0(n34), .A1(n32), .B0(n33), .Y(n31) );
  OAI21X4 U55 ( .A0(n44), .A1(n47), .B0(n45), .Y(n43) );
  INVX1 U68 ( .A(n37), .Y(n52) );
  INVX4 U69 ( .A(n43), .Y(n42) );
  NAND2X4 U70 ( .A(B[3]), .B(A[3]), .Y(n38) );
  NOR2X8 U71 ( .A(B[3]), .B(A[3]), .Y(n37) );
  NAND2X8 U72 ( .A(n98), .B(n99), .Y(SUM[3]) );
  NAND2X4 U73 ( .A(n96), .B(n6), .Y(n99) );
  NAND2X2 U74 ( .A(n103), .B(n97), .Y(n98) );
  CLKINVX4 U75 ( .A(n103), .Y(n96) );
  INVX3 U76 ( .A(n6), .Y(n97) );
  NOR2X8 U77 ( .A(n94), .B(n95), .Y(n103) );
  OAI21X2 U78 ( .A0(n34), .A1(n18), .B0(n19), .Y(n17) );
  XOR2X4 U79 ( .A(n17), .B(n104), .Y(SUM[7]) );
  NOR2X4 U80 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NOR2X4 U81 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NAND2X2 U82 ( .A(n52), .B(n38), .Y(n6) );
  NOR2X4 U83 ( .A(n42), .B(n40), .Y(n94) );
  NOR2X4 U84 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NOR2X6 U85 ( .A(A[1]), .B(B[1]), .Y(n44) );
  NAND2X6 U86 ( .A(B[0]), .B(A[0]), .Y(n47) );
  OR2XL U87 ( .A(A[0]), .B(B[0]), .Y(n93) );
  CLKINVX2 U88 ( .A(n28), .Y(n26) );
  NOR2X4 U89 ( .A(n32), .B(n29), .Y(n27) );
  CLKINVX1 U90 ( .A(n41), .Y(n95) );
  NAND2X6 U91 ( .A(n53), .B(n41), .Y(n7) );
  INVX12 U92 ( .A(n105), .Y(n34) );
  OAI21X4 U93 ( .A0(n34), .A1(n25), .B0(n26), .Y(n24) );
  NAND2X2 U94 ( .A(n51), .B(n33), .Y(n5) );
  NAND2X4 U95 ( .A(A[1]), .B(B[1]), .Y(n45) );
  AOI21X2 U96 ( .A0(n13), .A1(n28), .B0(n14), .Y(n101) );
  NOR2X6 U97 ( .A(A[2]), .B(B[2]), .Y(n40) );
  INVX3 U98 ( .A(n40), .Y(n53) );
  INVX6 U99 ( .A(n22), .Y(n20) );
  OAI21X2 U100 ( .A0(n37), .A1(n41), .B0(n38), .Y(n102) );
  NAND2X2 U101 ( .A(B[5]), .B(A[5]), .Y(n30) );
  XOR2X4 U102 ( .A(n42), .B(n7), .Y(SUM[2]) );
  XOR2X4 U103 ( .A(n8), .B(n47), .Y(SUM[1]) );
  INVX3 U104 ( .A(n44), .Y(n54) );
  OAI21X1 U105 ( .A0(n34), .A1(n11), .B0(n101), .Y(SUM[8]) );
  AO21X4 U106 ( .A0(n35), .A1(n43), .B0(n102), .Y(n105) );
  NAND2X1 U107 ( .A(B[7]), .B(A[7]), .Y(n16) );
  XNOR2X4 U108 ( .A(n24), .B(n3), .Y(SUM[6]) );
  AND2XL U109 ( .A(n93), .B(n47), .Y(SUM[0]) );
  AND2X2 U110 ( .A(n48), .B(n16), .Y(n104) );
  NAND2X4 U111 ( .A(A[2]), .B(B[2]), .Y(n41) );
  NAND2X2 U112 ( .A(B[6]), .B(A[6]), .Y(n23) );
  CLKINVX1 U113 ( .A(n23), .Y(n21) );
  NAND2X1 U114 ( .A(n20), .B(n23), .Y(n3) );
  NAND2X2 U115 ( .A(n50), .B(n30), .Y(n4) );
  NAND2X2 U116 ( .A(n54), .B(n45), .Y(n8) );
  NOR2X4 U117 ( .A(B[7]), .B(A[7]), .Y(n15) );
  CLKINVX1 U118 ( .A(n15), .Y(n48) );
  OAI21X1 U119 ( .A0(n15), .A1(n23), .B0(n16), .Y(n14) );
  NOR2X2 U120 ( .A(n22), .B(n15), .Y(n13) );
  AOI21X2 U121 ( .A0(n28), .A1(n20), .B0(n21), .Y(n19) );
  CLKINVX1 U122 ( .A(n29), .Y(n50) );
  NAND2X4 U123 ( .A(B[4]), .B(A[4]), .Y(n33) );
  CLKINVX1 U124 ( .A(n27), .Y(n25) );
  NAND2X1 U125 ( .A(n27), .B(n20), .Y(n18) );
  NAND2X1 U126 ( .A(n13), .B(n27), .Y(n11) );
  INVX1 U127 ( .A(n32), .Y(n51) );
  NOR2X2 U128 ( .A(n37), .B(n40), .Y(n35) );
  XOR2X4 U129 ( .A(n34), .B(n5), .Y(SUM[4]) );
endmodule


module conv_DW01_inc_1 ( \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , 
        \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , 
        \SUM[14] , \SUM[13] , \SUM[12] , \SUM[11] , \SUM[10] , \SUM[9] , 
        \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] , 
        \SUM[1]  );
  input \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] , \A[6] ,
         \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] ;
  output \SUM[14] , \SUM[13] , \SUM[12] , \SUM[11] , \SUM[10] , \SUM[9] ,
         \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] ;
  wire   n2, n3, n6, n7, n11, n12, n13, n14, n15, n21, n22, n23, n24, n30, n31,
         n37, n38, n39, n40, n46, n47, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95;
  wire   [13:0] A;
  wire   [14:1] SUM;
  assign A[13] = \A[13] ;
  assign A[12] = \A[12] ;
  assign A[11] = \A[11] ;
  assign A[10] = \A[10] ;
  assign A[9] = \A[9] ;
  assign A[8] = \A[8] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign \SUM[14]  = SUM[14];
  assign \SUM[13]  = SUM[13];
  assign \SUM[12]  = SUM[12];
  assign \SUM[11]  = SUM[11];
  assign \SUM[10]  = SUM[10];
  assign \SUM[9]  = SUM[9];
  assign \SUM[8]  = SUM[8];
  assign \SUM[7]  = SUM[7];
  assign \SUM[6]  = SUM[6];
  assign \SUM[5]  = SUM[5];
  assign \SUM[4]  = SUM[4];
  assign \SUM[3]  = SUM[3];
  assign \SUM[2]  = SUM[2];
  assign \SUM[1]  = SUM[1];

  NOR2X2 U69 ( .A(n38), .B(n31), .Y(n30) );
  NAND2X2 U70 ( .A(A[4]), .B(A[5]), .Y(n31) );
  BUFX4 U71 ( .A(A[6]), .Y(n86) );
  CLKAND2X2 U72 ( .A(n21), .B(n11), .Y(n91) );
  NOR2X2 U73 ( .A(n15), .B(n12), .Y(n11) );
  NAND2X2 U74 ( .A(n23), .B(n39), .Y(n22) );
  BUFX6 U75 ( .A(A[8]), .Y(n87) );
  NOR2X2 U76 ( .A(n40), .B(n47), .Y(n39) );
  NAND2X2 U77 ( .A(A[2]), .B(A[3]), .Y(n40) );
  CLKINVX1 U78 ( .A(n22), .Y(n21) );
  NAND2X1 U79 ( .A(n89), .B(n90), .Y(SUM[13]) );
  NAND2X1 U80 ( .A(n88), .B(n2), .Y(n90) );
  CLKINVX1 U81 ( .A(n3), .Y(n88) );
  CLKINVX1 U82 ( .A(A[13]), .Y(n2) );
  NOR2X2 U83 ( .A(n7), .B(n22), .Y(n6) );
  NAND2X1 U84 ( .A(n3), .B(A[13]), .Y(n89) );
  NAND2X2 U85 ( .A(n6), .B(A[12]), .Y(n3) );
  NAND2X2 U86 ( .A(A[1]), .B(A[0]), .Y(n47) );
  NAND2X4 U87 ( .A(n87), .B(A[9]), .Y(n15) );
  XOR2X1 U88 ( .A(n21), .B(n87), .Y(SUM[8]) );
  INVX1 U89 ( .A(n39), .Y(n38) );
  INVXL U90 ( .A(n15), .Y(n14) );
  XOR2XL U91 ( .A(n38), .B(n37), .Y(SUM[4]) );
  INVXL U92 ( .A(n47), .Y(n46) );
  XOR2XL U93 ( .A(n6), .B(A[12]), .Y(SUM[12]) );
  OR2XL U94 ( .A(n38), .B(n37), .Y(n94) );
  INVX1 U95 ( .A(A[10]), .Y(n12) );
  XOR2XL U96 ( .A(n95), .B(A[3]), .Y(SUM[3]) );
  AND2XL U97 ( .A(n46), .B(A[2]), .Y(n95) );
  XOR2XL U98 ( .A(n46), .B(A[2]), .Y(SUM[2]) );
  INVXL U99 ( .A(A[4]), .Y(n37) );
  XOR2XL U100 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XOR2X1 U101 ( .A(n13), .B(n12), .Y(SUM[10]) );
  NAND2X1 U102 ( .A(n21), .B(n14), .Y(n13) );
  NOR2X1 U103 ( .A(n3), .B(n2), .Y(SUM[14]) );
  NOR2X1 U104 ( .A(n31), .B(n24), .Y(n23) );
  NAND2X1 U105 ( .A(n86), .B(A[7]), .Y(n24) );
  XOR2X1 U106 ( .A(n91), .B(A[11]), .Y(SUM[11]) );
  XOR2X1 U107 ( .A(n92), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U108 ( .A(n21), .B(n87), .Y(n92) );
  XOR2X1 U109 ( .A(n93), .B(A[7]), .Y(SUM[7]) );
  AND2X2 U110 ( .A(n30), .B(n86), .Y(n93) );
  NAND2X1 U111 ( .A(n11), .B(A[11]), .Y(n7) );
  XOR2X1 U112 ( .A(n30), .B(n86), .Y(SUM[6]) );
  XNOR2X1 U113 ( .A(n94), .B(A[5]), .Y(SUM[5]) );
endmodule


module conv_DW01_add_11 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n37, n38, n39, n40, n41, n45,
         n46, n47, n48, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66, n69,
         n70, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n89,
         n91, n92, n94, n97, n98, n99, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n120, n122, n123, n125, n126, n128, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221;
  wire   [10:0] B;
  assign B[10] = \B[10] ;
  assign B[9] = \B[9] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  XOR2X2 U150 ( .A(n99), .B(n9), .Y(SUM[5]) );
  NOR2X4 U151 ( .A(A[9]), .B(B[9]), .Y(n69) );
  BUFX8 U152 ( .A(B[3]), .Y(n188) );
  AO21X4 U153 ( .A0(n1), .A1(n31), .B0(n32), .Y(n220) );
  NAND2X1 U154 ( .A(A[9]), .B(B[9]), .Y(n70) );
  OAI21X2 U155 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  NAND2X2 U156 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NAND2BX1 U157 ( .AN(n196), .B(A[11]), .Y(n48) );
  NAND2X4 U158 ( .A(n192), .B(n191), .Y(n116) );
  BUFX8 U159 ( .A(B[0]), .Y(n189) );
  NAND2X4 U160 ( .A(A[8]), .B(B[8]), .Y(n75) );
  NOR2X2 U161 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NOR2X1 U162 ( .A(n65), .B(n56), .Y(n54) );
  BUFX4 U163 ( .A(B[1]), .Y(n191) );
  XNOR2X1 U164 ( .A(n217), .B(A[11]), .Y(SUM[11]) );
  AOI21X2 U165 ( .A0(n1), .A1(n54), .B0(n55), .Y(n217) );
  INVXL U166 ( .A(n3), .Y(n37) );
  NOR2X2 U167 ( .A(n41), .B(n196), .Y(n40) );
  BUFX6 U168 ( .A(n57), .Y(n196) );
  XNOR2X4 U169 ( .A(n215), .B(n5), .Y(SUM[9]) );
  BUFX8 U170 ( .A(A[0]), .Y(n190) );
  OAI21X1 U171 ( .A0(n66), .A1(n56), .B0(n196), .Y(n55) );
  INVX4 U172 ( .A(n64), .Y(n66) );
  BUFX8 U173 ( .A(A[1]), .Y(n192) );
  BUFX8 U174 ( .A(B[7]), .Y(n193) );
  NAND2X1 U175 ( .A(n58), .B(A[11]), .Y(n47) );
  INVX4 U176 ( .A(n56), .Y(n58) );
  BUFX8 U177 ( .A(B[6]), .Y(n194) );
  NOR2X2 U178 ( .A(n41), .B(n56), .Y(n39) );
  NOR2X8 U179 ( .A(A[10]), .B(B[10]), .Y(n56) );
  OAI21XL U180 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U181 ( .A(A[5]), .B(B[5]), .Y(n98) );
  NOR2X4 U182 ( .A(n205), .B(n107), .Y(n105) );
  NAND2X4 U183 ( .A(n206), .B(n109), .Y(n107) );
  NOR2X1 U184 ( .A(n195), .B(n35), .Y(n32) );
  NAND2X4 U185 ( .A(n204), .B(n70), .Y(n64) );
  NAND2X6 U186 ( .A(n201), .B(n98), .Y(n92) );
  INVX3 U187 ( .A(n105), .Y(n104) );
  NAND2X2 U188 ( .A(A[6]), .B(n194), .Y(n89) );
  NAND2X2 U189 ( .A(n39), .B(n63), .Y(n3) );
  NOR2X1 U190 ( .A(n195), .B(n218), .Y(n18) );
  AO21X1 U191 ( .A0(n1), .A1(n207), .B0(n203), .Y(n215) );
  NAND2X2 U192 ( .A(n208), .B(n209), .Y(SUM[13]) );
  NOR2X6 U193 ( .A(A[3]), .B(n188), .Y(n108) );
  NAND2X4 U194 ( .A(n199), .B(n200), .Y(n201) );
  INVX4 U195 ( .A(n103), .Y(n200) );
  INVX3 U196 ( .A(n75), .Y(n203) );
  NOR2X2 U197 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2X2 U198 ( .A(A[2]), .B(B[2]), .Y(n112) );
  CLKINVX1 U199 ( .A(n97), .Y(n199) );
  XNOR2X1 U200 ( .A(n1), .B(n6), .Y(SUM[8]) );
  NOR2BX1 U201 ( .AN(n91), .B(n86), .Y(n84) );
  XOR2X2 U202 ( .A(n221), .B(A[12]), .Y(SUM[12]) );
  AO21X2 U203 ( .A0(n1), .A1(n45), .B0(n46), .Y(n221) );
  NAND2X1 U204 ( .A(n104), .B(n125), .Y(n210) );
  XNOR2X1 U205 ( .A(n104), .B(n10), .Y(SUM[4]) );
  AOI21X2 U206 ( .A0(n1), .A1(n23), .B0(n24), .Y(n22) );
  XOR2X4 U207 ( .A(n62), .B(n4), .Y(SUM[10]) );
  NAND2X2 U208 ( .A(A[7]), .B(n193), .Y(n82) );
  NAND2X2 U209 ( .A(n214), .B(n35), .Y(n208) );
  AO21X2 U210 ( .A0(n1), .A1(n17), .B0(n18), .Y(n219) );
  NAND2X4 U211 ( .A(n190), .B(n189), .Y(n118) );
  OAI21X1 U212 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  NOR2X4 U213 ( .A(n192), .B(n191), .Y(n115) );
  NAND2X2 U214 ( .A(A[13]), .B(A[14]), .Y(n25) );
  XOR2X4 U215 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X4 U216 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U217 ( .A(n94), .B(n86), .Y(n197) );
  INVX1 U218 ( .A(n92), .Y(n94) );
  XOR2X4 U219 ( .A(n22), .B(n21), .Y(SUM[15]) );
  NOR2X4 U220 ( .A(n108), .B(n111), .Y(n106) );
  INVX12 U221 ( .A(n213), .Y(n1) );
  XOR2X4 U222 ( .A(n219), .B(A[16]), .Y(SUM[16]) );
  CLKXOR2X2 U223 ( .A(n220), .B(A[14]), .Y(SUM[14]) );
  BUFX12 U224 ( .A(n2), .Y(n195) );
  NAND2X4 U225 ( .A(n91), .B(n79), .Y(n77) );
  AOI21X4 U226 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NOR2X4 U227 ( .A(n86), .B(n81), .Y(n79) );
  NAND2X2 U228 ( .A(A[3]), .B(n188), .Y(n109) );
  OAI21X4 U229 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NAND2X4 U230 ( .A(A[4]), .B(B[4]), .Y(n103) );
  XOR2X1 U231 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NOR2X8 U232 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NOR2X4 U233 ( .A(n74), .B(n69), .Y(n63) );
  NAND2X1 U234 ( .A(A[10]), .B(B[10]), .Y(n57) );
  NOR2X4 U235 ( .A(A[7]), .B(n193), .Y(n81) );
  NOR2X4 U236 ( .A(A[6]), .B(n194), .Y(n86) );
  AOI21X4 U237 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  NOR2X4 U238 ( .A(n102), .B(n97), .Y(n91) );
  NOR2X2 U239 ( .A(A[4]), .B(B[4]), .Y(n102) );
  INVXL U240 ( .A(n89), .Y(n198) );
  OR2X1 U241 ( .A(n197), .B(n198), .Y(n85) );
  AO21X4 U242 ( .A0(n104), .A1(n91), .B0(n92), .Y(n216) );
  NAND2X2 U243 ( .A(n202), .B(n203), .Y(n204) );
  CLKINVX1 U244 ( .A(n69), .Y(n202) );
  CLKAND2X8 U245 ( .A(n114), .B(n106), .Y(n205) );
  OR2X6 U246 ( .A(n108), .B(n112), .Y(n206) );
  AND2X2 U247 ( .A(n210), .B(n211), .Y(n99) );
  NAND2BX4 U248 ( .AN(n214), .B(A[13]), .Y(n209) );
  AO21X4 U249 ( .A0(n1), .A1(n37), .B0(n38), .Y(n214) );
  OR2XL U250 ( .A(A[8]), .B(B[8]), .Y(n207) );
  INVX1 U251 ( .A(A[13]), .Y(n35) );
  CLKINVX1 U252 ( .A(n200), .Y(n211) );
  INVXL U253 ( .A(n102), .Y(n125) );
  OR2XL U254 ( .A(A[2]), .B(B[2]), .Y(n212) );
  INVXL U255 ( .A(n69), .Y(n120) );
  OA21X4 U256 ( .A0(n105), .A1(n77), .B0(n78), .Y(n213) );
  INVXL U257 ( .A(n114), .Y(n113) );
  NAND2XL U258 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U259 ( .A(n216), .B(n8), .Y(SUM[6]) );
  NAND2XL U260 ( .A(n199), .B(n98), .Y(n9) );
  NAND2XL U261 ( .A(n126), .B(n109), .Y(n11) );
  NAND2XL U262 ( .A(n125), .B(n103), .Y(n10) );
  XOR2XL U263 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U264 ( .A(n212), .B(n112), .Y(n12) );
  INVXL U265 ( .A(n86), .Y(n123) );
  NAND2XL U266 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U267 ( .A(n115), .Y(n128) );
  NAND2BXL U268 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U269 ( .A(n81), .Y(n122) );
  NOR2XL U270 ( .A(n190), .B(n189), .Y(n117) );
  CLKINVX1 U271 ( .A(n195), .Y(n38) );
  NOR2X1 U272 ( .A(n3), .B(n218), .Y(n17) );
  CLKINVX1 U273 ( .A(n63), .Y(n65) );
  NOR2X1 U274 ( .A(n195), .B(n25), .Y(n24) );
  NOR2X1 U275 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U276 ( .A(n120), .B(n70), .Y(n5) );
  NAND2X1 U277 ( .A(n58), .B(n196), .Y(n4) );
  AOI21X1 U278 ( .A0(n1), .A1(n63), .B0(n64), .Y(n62) );
  NAND2X1 U279 ( .A(n123), .B(n89), .Y(n8) );
  NOR2X1 U280 ( .A(n65), .B(n47), .Y(n45) );
  NAND2X1 U281 ( .A(n207), .B(n75), .Y(n6) );
  NOR2X1 U282 ( .A(n3), .B(n35), .Y(n31) );
  OR2X1 U283 ( .A(n25), .B(n21), .Y(n218) );
  XNOR2X1 U284 ( .A(n110), .B(n11), .Y(SUM[3]) );
  CLKINVX1 U285 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U286 ( .A(n108), .Y(n126) );
  CLKINVX1 U287 ( .A(A[15]), .Y(n21) );
endmodule


module conv_DW01_add_10 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n38, n39, n40, n41, n45, n46,
         n47, n48, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66, n69, n70,
         n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n86, n89,
         n91, n92, n94, n97, n98, n99, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n120, n122, n123, n125, n126, n128, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216;
  wire   [10:0] B;
  assign B[10] = \B[10] ;
  assign B[9] = \B[9] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  BUFX4 U150 ( .A(A[0]), .Y(n190) );
  XNOR2X4 U151 ( .A(n209), .B(n35), .Y(SUM[13]) );
  XOR2X4 U152 ( .A(n83), .B(n7), .Y(SUM[7]) );
  XNOR2X4 U153 ( .A(n210), .B(n5), .Y(SUM[9]) );
  XOR2X1 U154 ( .A(n62), .B(n4), .Y(SUM[10]) );
  AOI21X2 U155 ( .A0(n1), .A1(n63), .B0(n64), .Y(n62) );
  XOR2X2 U156 ( .A(n216), .B(A[12]), .Y(SUM[12]) );
  XNOR2X4 U157 ( .A(n212), .B(A[11]), .Y(SUM[11]) );
  CLKAND2X4 U158 ( .A(n1), .B(n23), .Y(n191) );
  NAND2X6 U159 ( .A(n190), .B(B[0]), .Y(n118) );
  NAND2X2 U160 ( .A(A[10]), .B(B[10]), .Y(n57) );
  NAND2X2 U161 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NAND2BX1 U162 ( .AN(n57), .B(A[11]), .Y(n48) );
  NAND2X2 U163 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NOR2X2 U164 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NOR2X2 U165 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2X1 U166 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NAND2X1 U167 ( .A(n104), .B(n84), .Y(n205) );
  NOR2X1 U168 ( .A(n94), .B(n86), .Y(n201) );
  CLKINVX1 U169 ( .A(n92), .Y(n94) );
  BUFX4 U170 ( .A(n98), .Y(n196) );
  XOR2X1 U171 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2X2 U172 ( .A(n194), .B(n195), .Y(SUM[14]) );
  NAND2X1 U173 ( .A(n215), .B(n193), .Y(n194) );
  NAND2X2 U174 ( .A(n192), .B(A[14]), .Y(n195) );
  AOI21X1 U175 ( .A0(n1), .A1(n54), .B0(n55), .Y(n212) );
  NOR2X1 U176 ( .A(n197), .B(n213), .Y(n18) );
  AND2X4 U177 ( .A(n39), .B(n63), .Y(n188) );
  OAI21X1 U178 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  INVX3 U179 ( .A(n188), .Y(n198) );
  NOR2X1 U180 ( .A(n201), .B(n202), .Y(n189) );
  AND2X2 U181 ( .A(A[4]), .B(B[4]), .Y(n200) );
  INVX3 U182 ( .A(n97), .Y(n203) );
  NAND2X1 U183 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NOR2X4 U184 ( .A(A[9]), .B(B[9]), .Y(n69) );
  CLKINVX1 U185 ( .A(n64), .Y(n66) );
  OAI21X2 U186 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  INVX3 U187 ( .A(n63), .Y(n65) );
  AO21X2 U188 ( .A0(n1), .A1(n188), .B0(n38), .Y(n209) );
  AO21X4 U189 ( .A0(n1), .A1(n31), .B0(n32), .Y(n215) );
  NOR2X2 U190 ( .A(n198), .B(n35), .Y(n31) );
  NAND2X4 U191 ( .A(A[8]), .B(B[8]), .Y(n75) );
  NOR2X4 U192 ( .A(A[8]), .B(B[8]), .Y(n74) );
  OAI21X2 U193 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  NOR2X2 U194 ( .A(n197), .B(n35), .Y(n32) );
  NAND2XL U195 ( .A(n72), .B(n75), .Y(n6) );
  INVXL U196 ( .A(n75), .Y(n73) );
  NOR2BX1 U197 ( .AN(n91), .B(n86), .Y(n84) );
  AO21X2 U198 ( .A0(n1), .A1(n17), .B0(n18), .Y(n214) );
  NOR2X4 U199 ( .A(n41), .B(n56), .Y(n39) );
  NOR2X4 U200 ( .A(n191), .B(n24), .Y(n22) );
  INVX12 U201 ( .A(n208), .Y(n1) );
  NOR2X2 U202 ( .A(n198), .B(n25), .Y(n23) );
  XOR2X4 U203 ( .A(n22), .B(n21), .Y(SUM[15]) );
  CLKINVX6 U204 ( .A(n215), .Y(n192) );
  INVX1 U205 ( .A(A[14]), .Y(n193) );
  XOR2X4 U206 ( .A(n214), .B(A[16]), .Y(SUM[16]) );
  NAND2X2 U207 ( .A(A[1]), .B(B[1]), .Y(n116) );
  NAND2X2 U208 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NOR2X4 U209 ( .A(A[7]), .B(B[7]), .Y(n81) );
  INVXL U210 ( .A(n108), .Y(n126) );
  INVX1 U211 ( .A(n74), .Y(n72) );
  NOR2X4 U212 ( .A(n74), .B(n69), .Y(n63) );
  AO21X2 U213 ( .A0(n1), .A1(n45), .B0(n46), .Y(n216) );
  NOR2X4 U214 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NOR2X4 U215 ( .A(n86), .B(n81), .Y(n79) );
  NOR2X4 U216 ( .A(A[6]), .B(B[6]), .Y(n86) );
  BUFX8 U217 ( .A(n2), .Y(n197) );
  NOR2X4 U218 ( .A(A[10]), .B(B[10]), .Y(n56) );
  AO21X2 U219 ( .A0(n104), .A1(n91), .B0(n92), .Y(n211) );
  NOR2X2 U220 ( .A(n102), .B(n97), .Y(n91) );
  CLKAND2X12 U221 ( .A(n114), .B(n106), .Y(n206) );
  OAI21X4 U222 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NAND2X2 U223 ( .A(n91), .B(n79), .Y(n77) );
  NAND2X2 U224 ( .A(B[6]), .B(A[6]), .Y(n89) );
  OAI21X1 U225 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  NAND2XL U226 ( .A(n58), .B(n57), .Y(n4) );
  NOR2X2 U227 ( .A(n41), .B(n57), .Y(n40) );
  BUFX6 U228 ( .A(n70), .Y(n199) );
  NAND2X2 U229 ( .A(n58), .B(A[11]), .Y(n47) );
  AOI21X4 U230 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NAND2X8 U231 ( .A(n204), .B(n196), .Y(n92) );
  NOR2X2 U232 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NAND2XL U233 ( .A(A[4]), .B(B[4]), .Y(n103) );
  INVXL U234 ( .A(n89), .Y(n202) );
  NAND2X6 U235 ( .A(n203), .B(n200), .Y(n204) );
  OAI21X4 U236 ( .A0(n69), .A1(n75), .B0(n199), .Y(n64) );
  INVX2 U237 ( .A(n105), .Y(n104) );
  NOR2X6 U238 ( .A(n206), .B(n107), .Y(n105) );
  OAI21X2 U239 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  NOR2X2 U240 ( .A(n108), .B(n111), .Y(n106) );
  AND2X2 U241 ( .A(n205), .B(n189), .Y(n83) );
  INVX1 U242 ( .A(A[13]), .Y(n35) );
  OA21X4 U243 ( .A0(n105), .A1(n77), .B0(n78), .Y(n208) );
  OR2XL U244 ( .A(A[2]), .B(B[2]), .Y(n207) );
  AOI21X2 U245 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  AOI21X1 U246 ( .A0(n104), .A1(n125), .B0(n200), .Y(n99) );
  INVX1 U247 ( .A(n56), .Y(n58) );
  NOR2X2 U248 ( .A(A[3]), .B(B[3]), .Y(n108) );
  INVXL U249 ( .A(n114), .Y(n113) );
  AO21X1 U250 ( .A0(n1), .A1(n72), .B0(n73), .Y(n210) );
  XNOR2XL U251 ( .A(n1), .B(n6), .Y(SUM[8]) );
  NAND2XL U252 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U253 ( .A(n211), .B(n8), .Y(SUM[6]) );
  NAND2XL U254 ( .A(n203), .B(n196), .Y(n9) );
  NAND2XL U255 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U256 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NAND2XL U257 ( .A(n125), .B(n103), .Y(n10) );
  NOR2XL U258 ( .A(n65), .B(n56), .Y(n54) );
  INVXL U259 ( .A(n102), .Y(n125) );
  NAND2XL U260 ( .A(n207), .B(n112), .Y(n12) );
  XOR2XL U261 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U262 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U263 ( .A(n115), .Y(n128) );
  NAND2BXL U264 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U265 ( .A(n86), .Y(n123) );
  INVXL U266 ( .A(n81), .Y(n122) );
  NAND2X1 U267 ( .A(A[13]), .B(A[14]), .Y(n25) );
  NOR2XL U268 ( .A(n190), .B(B[0]), .Y(n117) );
  CLKINVX1 U269 ( .A(n197), .Y(n38) );
  NOR2X1 U270 ( .A(n198), .B(n213), .Y(n17) );
  NOR2X1 U271 ( .A(n197), .B(n25), .Y(n24) );
  NAND2X1 U272 ( .A(n120), .B(n199), .Y(n5) );
  XOR2X1 U273 ( .A(n99), .B(n9), .Y(SUM[5]) );
  NAND2X1 U274 ( .A(n123), .B(n89), .Y(n8) );
  NOR2X1 U275 ( .A(n65), .B(n47), .Y(n45) );
  OR2X1 U276 ( .A(n25), .B(n21), .Y(n213) );
  XNOR2X1 U277 ( .A(n110), .B(n11), .Y(SUM[3]) );
  CLKINVX1 U278 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U279 ( .A(n69), .Y(n120) );
  NAND2X1 U280 ( .A(A[5]), .B(B[5]), .Y(n98) );
  CLKINVX1 U281 ( .A(A[15]), .Y(n21) );
endmodule


module conv_DW01_add_9 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n37, n38, n39, n40, n41, n45,
         n46, n47, n48, n54, n55, n56, n57, n58, n63, n64, n65, n66, n69, n70,
         n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n89, n91,
         n92, n94, n97, n98, n99, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n122, n123, n124, n125, n126, n128, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208;
  wire   [10:0] B;
  assign B[10] = \B[10] ;
  assign B[9] = \B[9] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  NAND2X2 U150 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NAND2X2 U151 ( .A(A[6]), .B(B[6]), .Y(n89) );
  NOR2X4 U152 ( .A(n41), .B(n56), .Y(n39) );
  NAND2X2 U153 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NOR2X4 U154 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NOR2X2 U155 ( .A(n190), .B(n111), .Y(n106) );
  NOR2X2 U156 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2BXL U157 ( .AN(n57), .B(A[11]), .Y(n48) );
  NOR2X2 U158 ( .A(n2), .B(n25), .Y(n24) );
  NOR2X6 U159 ( .A(A[9]), .B(B[9]), .Y(n69) );
  AOI21X2 U160 ( .A0(n1), .A1(n54), .B0(n55), .Y(n204) );
  NOR2X1 U161 ( .A(n65), .B(n56), .Y(n54) );
  INVX2 U162 ( .A(n69), .Y(n194) );
  OAI21X1 U163 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  INVX2 U164 ( .A(n64), .Y(n66) );
  INVX4 U165 ( .A(n114), .Y(n113) );
  AOI21X4 U166 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  OAI21X4 U167 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  BUFX4 U168 ( .A(B[10]), .Y(n189) );
  NOR2X2 U169 ( .A(n102), .B(n97), .Y(n91) );
  NOR2X1 U170 ( .A(n41), .B(n57), .Y(n40) );
  INVX1 U171 ( .A(n92), .Y(n94) );
  NAND2X2 U172 ( .A(A[10]), .B(n189), .Y(n57) );
  NAND2X1 U173 ( .A(A[13]), .B(A[14]), .Y(n25) );
  NAND2X2 U174 ( .A(n91), .B(n79), .Y(n77) );
  NAND2X2 U175 ( .A(n188), .B(n82), .Y(n80) );
  NOR2X4 U176 ( .A(n86), .B(n81), .Y(n79) );
  NAND2X4 U177 ( .A(n191), .B(n98), .Y(n92) );
  NAND2X2 U178 ( .A(A[0]), .B(B[0]), .Y(n118) );
  NAND2X4 U179 ( .A(n198), .B(n199), .Y(SUM[13]) );
  XNOR2X2 U180 ( .A(n192), .B(n4), .Y(SUM[10]) );
  AOI21X1 U181 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  XOR2X1 U182 ( .A(n83), .B(n7), .Y(SUM[7]) );
  XNOR2X1 U183 ( .A(n204), .B(A[11]), .Y(SUM[11]) );
  XOR2X2 U184 ( .A(n206), .B(A[16]), .Y(SUM[16]) );
  NOR2X2 U185 ( .A(n2), .B(n35), .Y(n32) );
  INVX1 U186 ( .A(n2), .Y(n38) );
  NAND2X4 U187 ( .A(n194), .B(n195), .Y(n196) );
  CLKINVX1 U188 ( .A(n75), .Y(n195) );
  NOR2X4 U189 ( .A(A[3]), .B(B[3]), .Y(n108) );
  AO21X4 U190 ( .A0(n1), .A1(n17), .B0(n18), .Y(n206) );
  NOR2X1 U191 ( .A(n3), .B(n205), .Y(n17) );
  AO21X2 U192 ( .A0(n1), .A1(n63), .B0(n64), .Y(n192) );
  INVX12 U193 ( .A(n200), .Y(n1) );
  OAI21X1 U194 ( .A0(n94), .A1(n86), .B0(n89), .Y(n85) );
  OAI21X2 U195 ( .A0(n190), .A1(n112), .B0(n109), .Y(n107) );
  XNOR2X4 U196 ( .A(n202), .B(n5), .Y(SUM[9]) );
  NAND2X2 U197 ( .A(A[1]), .B(B[1]), .Y(n116) );
  AOI21X2 U198 ( .A0(n1), .A1(n23), .B0(n24), .Y(n22) );
  XOR2X2 U199 ( .A(n22), .B(n21), .Y(SUM[15]) );
  OR2X4 U200 ( .A(n81), .B(n89), .Y(n188) );
  XOR2X4 U201 ( .A(n208), .B(A[12]), .Y(SUM[12]) );
  OAI21X1 U202 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  BUFX8 U203 ( .A(n108), .Y(n190) );
  XOR2X4 U204 ( .A(n207), .B(A[14]), .Y(SUM[14]) );
  AOI21X4 U205 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  AOI21X4 U206 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  CLKINVX1 U207 ( .A(A[13]), .Y(n35) );
  NOR2X4 U208 ( .A(n74), .B(n69), .Y(n63) );
  NOR2X1 U209 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NOR2X4 U210 ( .A(A[10]), .B(n189), .Y(n56) );
  NAND2X2 U211 ( .A(A[5]), .B(B[5]), .Y(n98) );
  NOR2X4 U212 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NOR2X4 U213 ( .A(A[7]), .B(B[7]), .Y(n81) );
  NOR2X4 U214 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NAND2XL U215 ( .A(n58), .B(n57), .Y(n4) );
  NAND2X2 U216 ( .A(n58), .B(A[11]), .Y(n47) );
  OR2X8 U217 ( .A(n201), .B(n35), .Y(n199) );
  AO21X4 U218 ( .A0(n1), .A1(n37), .B0(n38), .Y(n201) );
  NAND2X2 U219 ( .A(n201), .B(n35), .Y(n198) );
  OR2X2 U220 ( .A(n97), .B(n103), .Y(n191) );
  NAND2X2 U221 ( .A(A[4]), .B(B[4]), .Y(n103) );
  NOR2X2 U222 ( .A(A[4]), .B(B[4]), .Y(n102) );
  AO21X4 U223 ( .A0(n104), .A1(n91), .B0(n92), .Y(n203) );
  OR2XL U224 ( .A(A[2]), .B(B[2]), .Y(n193) );
  NAND2X8 U225 ( .A(n196), .B(n70), .Y(n64) );
  NAND2X2 U226 ( .A(A[8]), .B(B[8]), .Y(n75) );
  NAND2X2 U227 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NAND2X2 U228 ( .A(n39), .B(n63), .Y(n3) );
  NOR2X1 U229 ( .A(n3), .B(n35), .Y(n31) );
  OR2XL U230 ( .A(A[8]), .B(B[8]), .Y(n197) );
  INVX1 U231 ( .A(n3), .Y(n37) );
  INVX2 U232 ( .A(n105), .Y(n104) );
  OA21X4 U233 ( .A0(n105), .A1(n77), .B0(n78), .Y(n200) );
  AOI21X1 U234 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  INVX1 U235 ( .A(n56), .Y(n58) );
  AO21X1 U236 ( .A0(n1), .A1(n197), .B0(n195), .Y(n202) );
  XNOR2XL U237 ( .A(n1), .B(n6), .Y(SUM[8]) );
  NAND2XL U238 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U239 ( .A(n203), .B(n8), .Y(SUM[6]) );
  NAND2XL U240 ( .A(n124), .B(n98), .Y(n9) );
  NAND2XL U241 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U242 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NAND2XL U243 ( .A(n125), .B(n103), .Y(n10) );
  NOR2BXL U244 ( .AN(n91), .B(n86), .Y(n84) );
  INVXL U245 ( .A(n102), .Y(n125) );
  XOR2XL U246 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U247 ( .A(n193), .B(n112), .Y(n12) );
  XOR2XL U248 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U249 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U250 ( .A(n115), .Y(n128) );
  NAND2BXL U251 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U252 ( .A(n103), .Y(n101) );
  INVXL U253 ( .A(n86), .Y(n123) );
  INVXL U254 ( .A(n97), .Y(n124) );
  INVXL U255 ( .A(n81), .Y(n122) );
  NOR2XL U256 ( .A(A[0]), .B(B[0]), .Y(n117) );
  NOR2X1 U257 ( .A(n2), .B(n205), .Y(n18) );
  CLKINVX1 U258 ( .A(n63), .Y(n65) );
  NOR2X1 U259 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U260 ( .A(n194), .B(n70), .Y(n5) );
  XOR2X1 U261 ( .A(n99), .B(n9), .Y(SUM[5]) );
  NAND2X1 U262 ( .A(n123), .B(n89), .Y(n8) );
  NOR2X1 U263 ( .A(n65), .B(n47), .Y(n45) );
  NAND2X1 U264 ( .A(n197), .B(n75), .Y(n6) );
  OR2X1 U265 ( .A(n25), .B(n21), .Y(n205) );
  XNOR2X1 U266 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21XL U267 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  CLKINVX1 U268 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U269 ( .A(n190), .Y(n126) );
  AO21X1 U270 ( .A0(n1), .A1(n31), .B0(n32), .Y(n207) );
  AO21X1 U271 ( .A0(n1), .A1(n45), .B0(n46), .Y(n208) );
  NAND2X1 U272 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NAND2X1 U273 ( .A(B[7]), .B(A[7]), .Y(n82) );
  CLKINVX1 U274 ( .A(A[15]), .Y(n21) );
endmodule


module conv_DW01_add_8 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n38, n39, n40, n41, n45, n46,
         n47, n48, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66, n69, n70,
         n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n86, n89,
         n91, n92, n94, n97, n98, n99, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n120, n122, n123, n125, n126, n128, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212;
  wire   [10:0] B;
  assign B[10] = \B[10] ;
  assign B[9] = \B[9] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  INVX4 U150 ( .A(n189), .Y(n194) );
  BUFX8 U151 ( .A(B[1]), .Y(n188) );
  NAND2X2 U152 ( .A(A[8]), .B(B[8]), .Y(n75) );
  NAND2X4 U153 ( .A(A[0]), .B(B[0]), .Y(n118) );
  NAND2X2 U154 ( .A(A[9]), .B(B[9]), .Y(n70) );
  AND2X8 U155 ( .A(n114), .B(n106), .Y(n202) );
  NOR2X2 U156 ( .A(n108), .B(n111), .Y(n106) );
  XNOR2X2 U157 ( .A(n208), .B(A[11]), .Y(SUM[11]) );
  CLKINVX4 U158 ( .A(n64), .Y(n66) );
  AOI21X4 U159 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  AOI21X1 U160 ( .A0(n1), .A1(n63), .B0(n64), .Y(n62) );
  OAI21X4 U161 ( .A0(n69), .A1(n75), .B0(n195), .Y(n64) );
  NAND2X2 U162 ( .A(n192), .B(B[2]), .Y(n112) );
  NAND2BX1 U163 ( .AN(n57), .B(A[11]), .Y(n48) );
  NOR2X1 U164 ( .A(n94), .B(n86), .Y(n196) );
  INVX1 U165 ( .A(n92), .Y(n94) );
  OAI21X1 U166 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  NAND2X2 U167 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NOR2X4 U168 ( .A(n192), .B(B[2]), .Y(n111) );
  NAND2X1 U169 ( .A(A[3]), .B(B[3]), .Y(n109) );
  XOR2X2 U170 ( .A(n211), .B(A[14]), .Y(SUM[14]) );
  XOR2X2 U171 ( .A(n83), .B(n7), .Y(SUM[7]) );
  XNOR2X2 U172 ( .A(n206), .B(n5), .Y(SUM[9]) );
  AOI21X1 U173 ( .A0(n1), .A1(n54), .B0(n55), .Y(n208) );
  XOR2X1 U174 ( .A(n113), .B(n12), .Y(SUM[2]) );
  XNOR2X2 U175 ( .A(n205), .B(n35), .Y(SUM[13]) );
  NAND2X4 U176 ( .A(n198), .B(n199), .Y(n200) );
  INVX1 U177 ( .A(n97), .Y(n198) );
  AND2X4 U178 ( .A(n39), .B(n63), .Y(n189) );
  NOR2X1 U179 ( .A(n196), .B(n197), .Y(n190) );
  INVX3 U180 ( .A(n103), .Y(n199) );
  CLKAND2X3 U181 ( .A(n1), .B(n23), .Y(n191) );
  AO21X4 U182 ( .A0(n1), .A1(n17), .B0(n18), .Y(n210) );
  AO21X4 U183 ( .A0(n1), .A1(n189), .B0(n38), .Y(n205) );
  AO21X2 U184 ( .A0(n1), .A1(n72), .B0(n73), .Y(n206) );
  INVX12 U185 ( .A(n204), .Y(n1) );
  NOR2X4 U186 ( .A(n191), .B(n24), .Y(n22) );
  NAND2X2 U187 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NOR2X4 U188 ( .A(A[1]), .B(n188), .Y(n115) );
  AO21X2 U189 ( .A0(n1), .A1(n31), .B0(n32), .Y(n211) );
  XNOR2X1 U190 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NOR2X4 U191 ( .A(A[7]), .B(B[7]), .Y(n81) );
  NOR2X4 U192 ( .A(A[9]), .B(B[9]), .Y(n69) );
  NOR2X1 U193 ( .A(n65), .B(n56), .Y(n54) );
  XOR2X2 U194 ( .A(n62), .B(n4), .Y(SUM[10]) );
  XOR2X4 U195 ( .A(n22), .B(n21), .Y(SUM[15]) );
  NOR2X4 U196 ( .A(n41), .B(n56), .Y(n39) );
  NOR2X2 U197 ( .A(n194), .B(n209), .Y(n17) );
  NOR2BX1 U198 ( .AN(n91), .B(n86), .Y(n84) );
  NOR2X4 U199 ( .A(n102), .B(n97), .Y(n91) );
  NAND2X2 U200 ( .A(A[13]), .B(A[14]), .Y(n25) );
  XOR2X2 U201 ( .A(n212), .B(A[12]), .Y(SUM[12]) );
  XOR2X4 U202 ( .A(n210), .B(A[16]), .Y(SUM[16]) );
  NAND2X2 U203 ( .A(A[1]), .B(n188), .Y(n116) );
  INVXL U204 ( .A(n108), .Y(n126) );
  OAI21X2 U205 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  INVX1 U206 ( .A(n74), .Y(n72) );
  NOR2X4 U207 ( .A(n74), .B(n69), .Y(n63) );
  NOR2X2 U208 ( .A(A[8]), .B(B[8]), .Y(n74) );
  BUFX8 U209 ( .A(A[2]), .Y(n192) );
  AOI21X4 U210 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NOR2X4 U211 ( .A(n86), .B(n81), .Y(n79) );
  NOR2X2 U212 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NAND2X4 U213 ( .A(A[4]), .B(B[4]), .Y(n103) );
  AO21X2 U214 ( .A0(n1), .A1(n45), .B0(n46), .Y(n212) );
  OAI21X1 U215 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  OAI21X2 U216 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  BUFX8 U217 ( .A(n2), .Y(n193) );
  NOR2X4 U218 ( .A(A[10]), .B(B[10]), .Y(n56) );
  NAND2X2 U219 ( .A(A[6]), .B(B[6]), .Y(n89) );
  OAI21X4 U220 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NAND2X2 U221 ( .A(n91), .B(n79), .Y(n77) );
  AO21X4 U222 ( .A0(n104), .A1(n91), .B0(n92), .Y(n207) );
  NOR2X4 U223 ( .A(A[5]), .B(B[5]), .Y(n97) );
  OAI21X1 U224 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  NAND2XL U225 ( .A(n58), .B(n57), .Y(n4) );
  NOR2X2 U226 ( .A(n41), .B(n57), .Y(n40) );
  NAND2X2 U227 ( .A(A[10]), .B(B[10]), .Y(n57) );
  BUFX6 U228 ( .A(n70), .Y(n195) );
  NAND2X2 U229 ( .A(n58), .B(A[11]), .Y(n47) );
  INVXL U230 ( .A(n89), .Y(n197) );
  NOR2X4 U231 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NAND2X6 U232 ( .A(n200), .B(n98), .Y(n92) );
  INVX2 U233 ( .A(n105), .Y(n104) );
  NOR2X6 U234 ( .A(n202), .B(n107), .Y(n105) );
  AND2X2 U235 ( .A(n201), .B(n190), .Y(n83) );
  NAND2X1 U236 ( .A(n104), .B(n84), .Y(n201) );
  INVX1 U237 ( .A(A[13]), .Y(n35) );
  OA21X4 U238 ( .A0(n105), .A1(n77), .B0(n78), .Y(n204) );
  OR2XL U239 ( .A(n192), .B(B[2]), .Y(n203) );
  AOI21X1 U240 ( .A0(n104), .A1(n125), .B0(n199), .Y(n99) );
  INVX1 U241 ( .A(n56), .Y(n58) );
  NOR2X2 U242 ( .A(A[3]), .B(B[3]), .Y(n108) );
  INVXL U243 ( .A(n114), .Y(n113) );
  XNOR2XL U244 ( .A(n1), .B(n6), .Y(SUM[8]) );
  NAND2XL U245 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U246 ( .A(n207), .B(n8), .Y(SUM[6]) );
  NAND2XL U247 ( .A(n198), .B(n98), .Y(n9) );
  NAND2XL U248 ( .A(n126), .B(n109), .Y(n11) );
  NAND2XL U249 ( .A(n125), .B(n103), .Y(n10) );
  INVXL U250 ( .A(n102), .Y(n125) );
  NAND2XL U251 ( .A(n203), .B(n112), .Y(n12) );
  XOR2XL U252 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U253 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U254 ( .A(n115), .Y(n128) );
  NAND2BXL U255 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U256 ( .A(n86), .Y(n123) );
  INVXL U257 ( .A(n81), .Y(n122) );
  NOR2XL U258 ( .A(A[0]), .B(B[0]), .Y(n117) );
  CLKINVX1 U259 ( .A(n193), .Y(n38) );
  NOR2X1 U260 ( .A(n193), .B(n209), .Y(n18) );
  CLKINVX1 U261 ( .A(n63), .Y(n65) );
  NOR2X1 U262 ( .A(n193), .B(n25), .Y(n24) );
  NOR2X1 U263 ( .A(n193), .B(n35), .Y(n32) );
  NOR2X1 U264 ( .A(n194), .B(n25), .Y(n23) );
  NAND2X1 U265 ( .A(n120), .B(n195), .Y(n5) );
  XOR2X1 U266 ( .A(n99), .B(n9), .Y(SUM[5]) );
  NAND2X1 U267 ( .A(n123), .B(n89), .Y(n8) );
  NOR2X1 U268 ( .A(n65), .B(n47), .Y(n45) );
  NAND2X1 U269 ( .A(n72), .B(n75), .Y(n6) );
  NOR2X1 U270 ( .A(n194), .B(n35), .Y(n31) );
  OR2X1 U271 ( .A(n25), .B(n21), .Y(n209) );
  XNOR2X1 U272 ( .A(n110), .B(n11), .Y(SUM[3]) );
  CLKINVX1 U273 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U274 ( .A(n75), .Y(n73) );
  CLKINVX1 U275 ( .A(n69), .Y(n120) );
  NAND2X1 U276 ( .A(A[5]), .B(B[5]), .Y(n98) );
  CLKINVX1 U277 ( .A(A[15]), .Y(n21) );
endmodule

