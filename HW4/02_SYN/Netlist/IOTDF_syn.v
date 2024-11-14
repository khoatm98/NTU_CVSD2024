/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12
// Date      : Thu Nov 14 15:06:20 2024
/////////////////////////////////////////////////////////////


module IOTDF ( clk, rst, in_en, iot_in, fn_sel, busy, valid, iot_out );
  input [7:0] iot_in;
  input [2:0] fn_sel;
  output [127:0] iot_out;
  input clk, rst, in_en;
  output busy, valid;
  wire   clk_DES_en, first_r, DES_en, N323, N324, N325, N326, N327, N328, N329,
         N330, N331, N332, N333, N334, N335, N336, N337, N338, N339, N340,
         N341, N342, N343, N344, N345, N346, N347, N348, N349, N350, N351,
         N352, N353, N354, N355, N356, N357, N358, N359, N360, N361, N362,
         N363, N364, N365, N366, N367, N368, N369, N370, N371, N372, N373,
         N374, N375, N376, N377, N378, N379, N380, N381, N382, N383, N384,
         N385, N386, N394, N398, N399, N400, N404, N405, N406, N407, N408,
         N409, N410, N411, N412, N413, N414, N415, N416, N417, N418, N419,
         N420, N421, N422, N423, N424, N425, N426, N427, N428, N429, N430,
         N431, N432, N433, N434, N435, N436, N437, N438, N439, N440, N441,
         N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, N452,
         N453, N454, N455, N456, N457, N458, N459, N460, N461, N462, N463,
         N464, N465, N466, N467, N476, N477, N478, N479, N480, N481, N482,
         N483, N484, N485, N486, N487, N488, N489, N490, N491, N492, N493,
         N494, N495, N496, N497, N498, N499, N500, N501, N502, N503, N504,
         N505, N506, N507, N508, N509, N510, N511, N512, N513, N514, N515,
         N516, N517, N518, N519, N520, N521, N522, N523, N524, N525, N526,
         N527, N528, N529, N530, N531, N532, N533, N534, N535, N536, N537,
         N538, N539, net1417, net1423, net1428, net1433, net1438, net1443,
         net1448, net1453, net1458, net1463, net1468, net1473, net1478,
         net1483, net1488, net1493, net1498, net1503, net1508, net1513,
         net1518, net1523, net1528, net1533, net1538, net1543, net1548,
         net1553, net1558, net1563, net1568, net1573, net1578, net1583,
         net1588, net1593, net1598, net1603, net1608, net1613, net1618,
         net1623, net1628, net1633, net1638, net1643, net1648, n256, n257,
         n258, n259, n260, n263, n264, n265, n266, n267, n268, n269, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n3230, n3240, n3250, n3260,
         n3270, n3280, n3290, n3300, n3310, n3320, n3330, n3340, n3350, n3360,
         n3370, n3380, n3390, n3400, n3410, n3420, n3430, n3440, n3450, n3460,
         n3470, n3480, n3490, n3500, n3510, n3520, n3530, n3540, n3550, n3560,
         n3570, n3580, n3590, n3600, n3610, n3620, n3630, n3640, n3650, n3670,
         n3680, n3690, n3700, n3710, n3720, n3730, n3740, n3750, n3760, n3770,
         n3780, n3790, n3800, n3810, n3830, n3840, n3850, n3860, n387, n388,
         n389, n390, n391, n392, n393, n3940, n395, n396, n397, n3980, n3990,
         n401, n402, n403, n4040, n4050, n4060, n4070, n4080, n4090, n4100,
         n4110, n4120, n4130, n4140, n4150, n4160, n4170, n4180, n4190, n4200,
         n4210, n4230, n4240, n4250, n4260, n4270, n4280, n4290, n4300, n4310,
         n4320, n4330, n4340, n4350, n4360, n4370, n4380, n4390, n4400, n4410,
         n4420, n4430, n4440, n4450, n4460, n4470, n4480, n4490, n4500, n4510,
         n4520, n4530, n4540, n4550, n4560, n4570, n4580, n4590, n4600, n4620,
         n4630, n4640, n4650, n4660, n4670, n468, n469, n470, n471, n472, n473,
         n474, n475, n4760, n4770, n4780, n4790, n4800, n4810, n4820, n4830,
         n4840, n4850, n4860, n4870, n4880, n4890, n4900, n4910, n4920, n4930,
         n4940, n4950, n4960, n4970, n4980, n4990, n5000, n5010, n5020, n5030,
         n5040, n5050, n5070, n5080, n5090, n5100, n5110, n5120, n5130, n5140,
         n5150, n5160, n5170, n5180, n5190, n5200, n5210, n5220, n5230, n5240,
         n5250, n5260, n5270, n5280, n5290, n5300, n5310, n5320, n5330, n5340,
         n5350, n5360, n5370, n5380, n5390, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n622, n624, n625,
         n626, n627, n628, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n652, n653, n654, n656, n657, n659, n660, n661, n662, n663, n664,
         n666, n667, n668, n669, n670, n671, n672, n673, n674;
  wire   [63:0] main_key_w;
  wire   [63:0] plain_text_w;
  wire   [3:0] round_r;
  wire   [55:0] PC2_permutation_w;
  wire   [55:0] PC2_permutation_r;
  wire   [31:0] L_ready_r;
  wire   [31:0] sbox_out_w;
  wire   [31:0] L_wait_r;

  sbox u_sbox ( .R(L_wait_r), .K({PC2_permutation_w[42], PC2_permutation_w[39], 
        PC2_permutation_w[45], PC2_permutation_w[32], PC2_permutation_w[55], 
        PC2_permutation_w[51], PC2_permutation_w[53], PC2_permutation_w[28], 
        PC2_permutation_w[41], PC2_permutation_w[50], PC2_permutation_w[35], 
        PC2_permutation_w[46], PC2_permutation_w[33], PC2_permutation_w[37], 
        PC2_permutation_w[44], PC2_permutation_w[52], PC2_permutation_w[30], 
        PC2_permutation_w[48], PC2_permutation_w[40], PC2_permutation_w[49], 
        PC2_permutation_w[29], PC2_permutation_w[36], PC2_permutation_w[43], 
        PC2_permutation_w[54], PC2_permutation_w[15], PC2_permutation_w[4], 
        PC2_permutation_w[25], PC2_permutation_w[19], PC2_permutation_w[9], 
        PC2_permutation_w[1], PC2_permutation_w[26], PC2_permutation_w[16], 
        PC2_permutation_w[5], PC2_permutation_w[11], PC2_permutation_w[23], 
        PC2_permutation_w[8], PC2_permutation_w[12], PC2_permutation_w[7], 
        PC2_permutation_w[17], PC2_permutation_w[0], PC2_permutation_w[22], 
        PC2_permutation_w[3], PC2_permutation_w[10], PC2_permutation_w[14], 
        PC2_permutation_w[6], PC2_permutation_w[20], PC2_permutation_w[27], 
        PC2_permutation_w[24]}), .sbox_out(sbox_out_w) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_0 clk_gate_L_ready_r_reg ( .CLK(clk), .EN(DES_en), 
        .ENCLK(net1417), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_46 clk_gate_L_ready_r_reg_0 ( .CLK(clk), .EN(
        DES_en), .ENCLK(net1423), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_45 clk_gate_L_ready_r_reg_1 ( .CLK(clk), .EN(
        DES_en), .ENCLK(net1428), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_44 clk_gate_L_ready_r_reg_2 ( .CLK(clk), .EN(
        DES_en), .ENCLK(net1433), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_43 clk_gate_R_ready_r_reg ( .CLK(clk), .EN(DES_en), .ENCLK(net1438), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_42 clk_gate_R_ready_r_reg_0 ( .CLK(clk), .EN(
        DES_en), .ENCLK(net1443), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_41 clk_gate_R_ready_r_reg_1 ( .CLK(clk), .EN(
        DES_en), .ENCLK(net1448), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_40 clk_gate_R_ready_r_reg_2 ( .CLK(clk), .EN(
        DES_en), .ENCLK(net1453), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_39 clk_gate_data_buffer_r_reg ( .CLK(clk), .EN(
        N394), .ENCLK(net1458), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_38 clk_gate_data_buffer_r_reg_0 ( .CLK(clk), .EN(
        N394), .ENCLK(net1463), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_37 clk_gate_data_buffer_r_reg_1 ( .CLK(clk), .EN(
        N394), .ENCLK(net1468), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_36 clk_gate_data_buffer_r_reg_2 ( .CLK(clk), .EN(
        N394), .ENCLK(net1473), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_35 clk_gate_data_buffer_r_reg_3 ( .CLK(clk), .EN(
        N394), .ENCLK(net1478), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_34 clk_gate_data_buffer_r_reg_4 ( .CLK(clk), .EN(
        N394), .ENCLK(net1483), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_33 clk_gate_data_buffer_r_reg_5 ( .CLK(clk), .EN(
        N394), .ENCLK(net1488), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_32 clk_gate_data_r_reg ( .CLK(clk), .EN(n672), 
        .ENCLK(net1493), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_31 clk_gate_data_r_reg_0 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1498), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_30 clk_gate_data_r_reg_1 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1503), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_29 clk_gate_data_r_reg_2 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1508), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_28 clk_gate_data_r_reg_3 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1513), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_27 clk_gate_data_r_reg_4 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1518), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_26 clk_gate_data_r_reg_5 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1523), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_25 clk_gate_data_r_reg_6 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1528), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_24 clk_gate_data_r_reg_7 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1533), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_23 clk_gate_data_r_reg_8 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1538), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_22 clk_gate_data_r_reg_9 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1543), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_21 clk_gate_data_r_reg_10 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1548), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_20 clk_gate_data_r_reg_11 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1553), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_19 clk_gate_data_r_reg_12 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1558), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_18 clk_gate_data_r_reg_13 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1563), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_17 clk_gate_data_r_reg_14 ( .CLK(clk), .EN(n672), 
        .ENCLK(net1568), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_16 clk_gate_iot_out_r_reg ( .CLK(clk), .EN(n264), 
        .ENCLK(net1573), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_15 clk_gate_iot_out_r_reg_0 ( .CLK(clk), .EN(n264), .ENCLK(net1578), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_14 clk_gate_iot_out_r_reg_1 ( .CLK(clk), .EN(n267), .ENCLK(net1583), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_13 clk_gate_iot_out_r_reg_2 ( .CLK(clk), .EN(n266), .ENCLK(net1588), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_12 clk_gate_iot_out_r_reg_3 ( .CLK(clk), .EN(n265), .ENCLK(net1593), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_11 clk_gate_iot_out_r_reg_4 ( .CLK(clk), .EN(n267), .ENCLK(net1598), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_10 clk_gate_iot_out_r_reg_5 ( .CLK(clk), .EN(n266), .ENCLK(net1603), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_9 clk_gate_iot_out_r_reg_6 ( .CLK(clk), .EN(n265), 
        .ENCLK(net1608), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_8 clk_gate_iot_out_r_reg_7 ( .CLK(clk), .EN(n260), 
        .ENCLK(net1613), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_7 clk_gate_iot_out_r_reg_8 ( .CLK(clk), .EN(n260), 
        .ENCLK(net1618), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_6 clk_gate_iot_out_r_reg_9 ( .CLK(clk), .EN(n260), 
        .ENCLK(net1623), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_5 clk_gate_iot_out_r_reg_10 ( .CLK(clk), .EN(n260), .ENCLK(net1628), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_4 clk_gate_iot_out_r_reg_11 ( .CLK(clk), .EN(n260), .ENCLK(net1633), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_3 clk_gate_iot_out_r_reg_12 ( .CLK(clk), .EN(n260), .ENCLK(net1638), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_2 clk_gate_iot_out_r_reg_13 ( .CLK(clk), .EN(n260), .ENCLK(net1643), .TE(1'b0) );
  SNPS_CLOCK_GATE_HIGH_IOTDF_1 clk_gate_iot_out_r_reg_14 ( .CLK(clk), .EN(n260), .ENCLK(net1648), .TE(1'b0) );
  DFFQX1 data_r_reg_127_ ( .D(iot_in[7]), .CK(net1493), .Q(main_key_w[63]) );
  DFFQX1 data_r_reg_126_ ( .D(iot_in[6]), .CK(net1493), .Q(main_key_w[62]) );
  DFFQX1 data_r_reg_125_ ( .D(iot_in[5]), .CK(net1493), .Q(main_key_w[61]) );
  DFFQX1 data_r_reg_124_ ( .D(iot_in[4]), .CK(net1493), .Q(main_key_w[60]) );
  DFFQX1 data_r_reg_123_ ( .D(iot_in[3]), .CK(net1493), .Q(main_key_w[59]) );
  DFFQX1 data_r_reg_122_ ( .D(iot_in[2]), .CK(net1493), .Q(main_key_w[58]) );
  DFFQX1 data_r_reg_121_ ( .D(iot_in[1]), .CK(net1493), .Q(main_key_w[57]) );
  DFFQX1 data_r_reg_120_ ( .D(iot_in[0]), .CK(net1493), .Q(main_key_w[56]) );
  DFFQX1 data_r_reg_119_ ( .D(main_key_w[63]), .CK(net1498), .Q(main_key_w[55]) );
  DFFQX1 data_r_reg_118_ ( .D(main_key_w[62]), .CK(net1498), .Q(main_key_w[54]) );
  DFFQX1 data_r_reg_117_ ( .D(main_key_w[61]), .CK(net1498), .Q(main_key_w[53]) );
  DFFQX1 data_r_reg_116_ ( .D(main_key_w[60]), .CK(net1498), .Q(main_key_w[52]) );
  DFFQX1 data_r_reg_115_ ( .D(main_key_w[59]), .CK(net1498), .Q(main_key_w[51]) );
  DFFQX1 data_r_reg_114_ ( .D(main_key_w[58]), .CK(net1498), .Q(main_key_w[50]) );
  DFFQX1 data_r_reg_113_ ( .D(main_key_w[57]), .CK(net1498), .Q(main_key_w[49]) );
  DFFQX1 data_r_reg_112_ ( .D(main_key_w[56]), .CK(net1498), .Q(main_key_w[48]) );
  DFFQX1 data_r_reg_111_ ( .D(main_key_w[55]), .CK(net1503), .Q(main_key_w[47]) );
  DFFQX1 data_r_reg_110_ ( .D(main_key_w[54]), .CK(net1503), .Q(main_key_w[46]) );
  DFFQX1 data_r_reg_109_ ( .D(main_key_w[53]), .CK(net1503), .Q(main_key_w[45]) );
  DFFQX1 data_r_reg_108_ ( .D(main_key_w[52]), .CK(net1503), .Q(main_key_w[44]) );
  DFFQX1 data_r_reg_107_ ( .D(main_key_w[51]), .CK(net1503), .Q(main_key_w[43]) );
  DFFQX1 data_r_reg_106_ ( .D(main_key_w[50]), .CK(net1503), .Q(main_key_w[42]) );
  DFFQX1 data_r_reg_105_ ( .D(main_key_w[49]), .CK(net1503), .Q(main_key_w[41]) );
  DFFQX1 data_r_reg_104_ ( .D(main_key_w[48]), .CK(net1503), .Q(main_key_w[40]) );
  DFFQX1 data_r_reg_103_ ( .D(main_key_w[47]), .CK(net1508), .Q(main_key_w[39]) );
  DFFQX1 data_r_reg_102_ ( .D(main_key_w[46]), .CK(net1508), .Q(main_key_w[38]) );
  DFFQX1 data_r_reg_101_ ( .D(main_key_w[45]), .CK(net1508), .Q(main_key_w[37]) );
  DFFQX1 data_r_reg_100_ ( .D(main_key_w[44]), .CK(net1508), .Q(main_key_w[36]) );
  DFFQX1 data_r_reg_99_ ( .D(main_key_w[43]), .CK(net1508), .Q(main_key_w[35])
         );
  DFFQX1 data_r_reg_98_ ( .D(main_key_w[42]), .CK(net1508), .Q(main_key_w[34])
         );
  DFFQX1 data_r_reg_97_ ( .D(main_key_w[41]), .CK(net1508), .Q(main_key_w[33])
         );
  DFFQX1 data_r_reg_96_ ( .D(main_key_w[40]), .CK(net1508), .Q(main_key_w[32])
         );
  DFFQX1 data_r_reg_95_ ( .D(main_key_w[39]), .CK(net1513), .Q(main_key_w[31])
         );
  DFFQX1 data_r_reg_94_ ( .D(main_key_w[38]), .CK(net1513), .Q(main_key_w[30])
         );
  DFFQX1 data_r_reg_93_ ( .D(main_key_w[37]), .CK(net1513), .Q(main_key_w[29])
         );
  DFFQX1 data_r_reg_92_ ( .D(main_key_w[36]), .CK(net1513), .Q(main_key_w[28])
         );
  DFFQX1 data_r_reg_91_ ( .D(main_key_w[35]), .CK(net1513), .Q(main_key_w[27])
         );
  DFFQX1 data_r_reg_90_ ( .D(main_key_w[34]), .CK(net1513), .Q(main_key_w[26])
         );
  DFFQX1 data_r_reg_89_ ( .D(main_key_w[33]), .CK(net1513), .Q(main_key_w[25])
         );
  DFFQX1 data_r_reg_88_ ( .D(main_key_w[32]), .CK(net1513), .Q(main_key_w[24])
         );
  DFFQX1 data_r_reg_87_ ( .D(main_key_w[31]), .CK(net1518), .Q(main_key_w[23])
         );
  DFFQX1 data_r_reg_86_ ( .D(main_key_w[30]), .CK(net1518), .Q(main_key_w[22])
         );
  DFFQX1 data_r_reg_85_ ( .D(main_key_w[29]), .CK(net1518), .Q(main_key_w[21])
         );
  DFFQX1 data_r_reg_84_ ( .D(main_key_w[28]), .CK(net1518), .Q(main_key_w[20])
         );
  DFFQX1 data_r_reg_83_ ( .D(main_key_w[27]), .CK(net1518), .Q(main_key_w[19])
         );
  DFFQX1 data_r_reg_82_ ( .D(main_key_w[26]), .CK(net1518), .Q(main_key_w[18])
         );
  DFFQX1 data_r_reg_81_ ( .D(main_key_w[25]), .CK(net1518), .Q(main_key_w[17])
         );
  DFFQX1 data_r_reg_80_ ( .D(main_key_w[24]), .CK(net1518), .Q(main_key_w[16])
         );
  DFFQX1 data_r_reg_79_ ( .D(main_key_w[23]), .CK(net1523), .Q(main_key_w[15])
         );
  DFFQX1 data_r_reg_78_ ( .D(main_key_w[22]), .CK(net1523), .Q(main_key_w[14])
         );
  DFFQX1 data_r_reg_77_ ( .D(main_key_w[21]), .CK(net1523), .Q(main_key_w[13])
         );
  DFFQX1 data_r_reg_76_ ( .D(main_key_w[20]), .CK(net1523), .Q(main_key_w[12])
         );
  DFFQX1 data_r_reg_75_ ( .D(main_key_w[19]), .CK(net1523), .Q(main_key_w[11])
         );
  DFFQX1 data_r_reg_74_ ( .D(main_key_w[18]), .CK(net1523), .Q(main_key_w[10])
         );
  DFFQX1 data_r_reg_73_ ( .D(main_key_w[17]), .CK(net1523), .Q(main_key_w[9])
         );
  DFFQX1 data_r_reg_72_ ( .D(main_key_w[16]), .CK(net1523), .Q(main_key_w[8])
         );
  DFFQX1 data_r_reg_71_ ( .D(main_key_w[15]), .CK(net1528), .Q(main_key_w[7])
         );
  DFFQX1 data_r_reg_70_ ( .D(main_key_w[14]), .CK(net1528), .Q(main_key_w[6])
         );
  DFFQX1 data_r_reg_69_ ( .D(main_key_w[13]), .CK(net1528), .Q(main_key_w[5])
         );
  DFFQX1 data_r_reg_68_ ( .D(main_key_w[12]), .CK(net1528), .Q(main_key_w[4])
         );
  DFFQX1 data_r_reg_67_ ( .D(main_key_w[11]), .CK(net1528), .Q(main_key_w[3])
         );
  DFFQX1 data_r_reg_66_ ( .D(main_key_w[10]), .CK(net1528), .Q(main_key_w[2])
         );
  DFFQX1 data_r_reg_65_ ( .D(main_key_w[9]), .CK(net1528), .Q(main_key_w[1])
         );
  DFFQX1 data_r_reg_64_ ( .D(main_key_w[8]), .CK(net1528), .Q(main_key_w[0])
         );
  DFFQX1 data_r_reg_63_ ( .D(main_key_w[7]), .CK(net1533), .Q(plain_text_w[63]) );
  DFFQX1 data_r_reg_62_ ( .D(main_key_w[6]), .CK(net1533), .Q(plain_text_w[62]) );
  DFFQX1 data_r_reg_61_ ( .D(main_key_w[5]), .CK(net1533), .Q(plain_text_w[61]) );
  DFFQX1 data_r_reg_60_ ( .D(main_key_w[4]), .CK(net1533), .Q(plain_text_w[60]) );
  DFFQX1 data_r_reg_59_ ( .D(main_key_w[3]), .CK(net1533), .Q(plain_text_w[59]) );
  DFFQX1 data_r_reg_58_ ( .D(main_key_w[2]), .CK(net1533), .Q(plain_text_w[58]) );
  DFFQX1 data_r_reg_57_ ( .D(main_key_w[1]), .CK(net1533), .Q(plain_text_w[57]) );
  DFFQX1 data_r_reg_56_ ( .D(main_key_w[0]), .CK(net1533), .Q(plain_text_w[56]) );
  DFFQX1 data_r_reg_55_ ( .D(plain_text_w[63]), .CK(net1538), .Q(
        plain_text_w[55]) );
  DFFQX1 data_r_reg_54_ ( .D(plain_text_w[62]), .CK(net1538), .Q(
        plain_text_w[54]) );
  DFFQX1 data_r_reg_53_ ( .D(plain_text_w[61]), .CK(net1538), .Q(
        plain_text_w[53]) );
  DFFQX1 data_r_reg_52_ ( .D(plain_text_w[60]), .CK(net1538), .Q(
        plain_text_w[52]) );
  DFFQX1 data_r_reg_51_ ( .D(plain_text_w[59]), .CK(net1538), .Q(
        plain_text_w[51]) );
  DFFQX1 data_r_reg_50_ ( .D(plain_text_w[58]), .CK(net1538), .Q(
        plain_text_w[50]) );
  DFFQX1 data_r_reg_49_ ( .D(plain_text_w[57]), .CK(net1538), .Q(
        plain_text_w[49]) );
  DFFQX1 data_r_reg_48_ ( .D(plain_text_w[56]), .CK(net1538), .Q(
        plain_text_w[48]) );
  DFFQX1 data_r_reg_47_ ( .D(plain_text_w[55]), .CK(net1543), .Q(
        plain_text_w[47]) );
  DFFQX1 data_r_reg_46_ ( .D(plain_text_w[54]), .CK(net1543), .Q(
        plain_text_w[46]) );
  DFFQX1 data_r_reg_45_ ( .D(plain_text_w[53]), .CK(net1543), .Q(
        plain_text_w[45]) );
  DFFQX1 data_r_reg_44_ ( .D(plain_text_w[52]), .CK(net1543), .Q(
        plain_text_w[44]) );
  DFFQX1 data_r_reg_43_ ( .D(plain_text_w[51]), .CK(net1543), .Q(
        plain_text_w[43]) );
  DFFQX1 data_r_reg_42_ ( .D(plain_text_w[50]), .CK(net1543), .Q(
        plain_text_w[42]) );
  DFFQX1 data_r_reg_41_ ( .D(plain_text_w[49]), .CK(net1543), .Q(
        plain_text_w[41]) );
  DFFQX1 data_r_reg_40_ ( .D(plain_text_w[48]), .CK(net1543), .Q(
        plain_text_w[40]) );
  DFFQX1 data_r_reg_39_ ( .D(plain_text_w[47]), .CK(net1548), .Q(
        plain_text_w[39]) );
  DFFQX1 data_r_reg_38_ ( .D(plain_text_w[46]), .CK(net1548), .Q(
        plain_text_w[38]) );
  DFFQX1 data_r_reg_37_ ( .D(plain_text_w[45]), .CK(net1548), .Q(
        plain_text_w[37]) );
  DFFQX1 data_r_reg_36_ ( .D(plain_text_w[44]), .CK(net1548), .Q(
        plain_text_w[36]) );
  DFFQX1 data_r_reg_35_ ( .D(plain_text_w[43]), .CK(net1548), .Q(
        plain_text_w[35]) );
  DFFQX1 data_r_reg_34_ ( .D(plain_text_w[42]), .CK(net1548), .Q(
        plain_text_w[34]) );
  DFFQX1 data_r_reg_33_ ( .D(plain_text_w[41]), .CK(net1548), .Q(
        plain_text_w[33]) );
  DFFQX1 data_r_reg_32_ ( .D(plain_text_w[40]), .CK(net1548), .Q(
        plain_text_w[32]) );
  DFFQX1 data_r_reg_31_ ( .D(plain_text_w[39]), .CK(net1553), .Q(
        plain_text_w[31]) );
  DFFQX1 data_r_reg_30_ ( .D(plain_text_w[38]), .CK(net1553), .Q(
        plain_text_w[30]) );
  DFFQX1 data_r_reg_29_ ( .D(plain_text_w[37]), .CK(net1553), .Q(
        plain_text_w[29]) );
  DFFQX1 data_r_reg_28_ ( .D(plain_text_w[36]), .CK(net1553), .Q(
        plain_text_w[28]) );
  DFFQX1 data_r_reg_27_ ( .D(plain_text_w[35]), .CK(net1553), .Q(
        plain_text_w[27]) );
  DFFQX1 data_r_reg_26_ ( .D(plain_text_w[34]), .CK(net1553), .Q(
        plain_text_w[26]) );
  DFFQX1 data_r_reg_25_ ( .D(plain_text_w[33]), .CK(net1553), .Q(
        plain_text_w[25]) );
  DFFQX1 data_r_reg_24_ ( .D(plain_text_w[32]), .CK(net1553), .Q(
        plain_text_w[24]) );
  DFFQX1 data_r_reg_23_ ( .D(plain_text_w[31]), .CK(net1558), .Q(
        plain_text_w[23]) );
  DFFQX1 data_r_reg_22_ ( .D(plain_text_w[30]), .CK(net1558), .Q(
        plain_text_w[22]) );
  DFFQX1 data_r_reg_21_ ( .D(plain_text_w[29]), .CK(net1558), .Q(
        plain_text_w[21]) );
  DFFQX1 data_r_reg_20_ ( .D(plain_text_w[28]), .CK(net1558), .Q(
        plain_text_w[20]) );
  DFFQX1 data_r_reg_19_ ( .D(plain_text_w[27]), .CK(net1558), .Q(
        plain_text_w[19]) );
  DFFQX1 data_r_reg_18_ ( .D(plain_text_w[26]), .CK(net1558), .Q(
        plain_text_w[18]) );
  DFFQX1 data_r_reg_17_ ( .D(plain_text_w[25]), .CK(net1558), .Q(
        plain_text_w[17]) );
  DFFQX1 data_r_reg_16_ ( .D(plain_text_w[24]), .CK(net1558), .Q(
        plain_text_w[16]) );
  DFFQX1 data_r_reg_15_ ( .D(plain_text_w[23]), .CK(net1563), .Q(
        plain_text_w[15]) );
  DFFQX1 data_r_reg_14_ ( .D(plain_text_w[22]), .CK(net1563), .Q(
        plain_text_w[14]) );
  DFFQX1 data_r_reg_13_ ( .D(plain_text_w[21]), .CK(net1563), .Q(
        plain_text_w[13]) );
  DFFQX1 data_r_reg_12_ ( .D(plain_text_w[20]), .CK(net1563), .Q(
        plain_text_w[12]) );
  DFFQX1 data_r_reg_11_ ( .D(plain_text_w[19]), .CK(net1563), .Q(
        plain_text_w[11]) );
  DFFQX1 data_r_reg_10_ ( .D(plain_text_w[18]), .CK(net1563), .Q(
        plain_text_w[10]) );
  DFFQX1 data_r_reg_9_ ( .D(plain_text_w[17]), .CK(net1563), .Q(
        plain_text_w[9]) );
  DFFQX1 data_r_reg_8_ ( .D(plain_text_w[16]), .CK(net1563), .Q(
        plain_text_w[8]) );
  DFFQX1 data_r_reg_7_ ( .D(plain_text_w[15]), .CK(net1568), .Q(
        plain_text_w[7]) );
  DFFQX1 data_r_reg_6_ ( .D(plain_text_w[14]), .CK(net1568), .Q(
        plain_text_w[6]) );
  DFFQX1 data_r_reg_5_ ( .D(plain_text_w[13]), .CK(net1568), .Q(
        plain_text_w[5]) );
  DFFQX1 data_r_reg_4_ ( .D(plain_text_w[12]), .CK(net1568), .Q(
        plain_text_w[4]) );
  DFFQX1 data_r_reg_3_ ( .D(plain_text_w[11]), .CK(net1568), .Q(
        plain_text_w[3]) );
  DFFQX1 data_r_reg_2_ ( .D(plain_text_w[10]), .CK(net1568), .Q(
        plain_text_w[2]) );
  DFFQX1 data_r_reg_1_ ( .D(plain_text_w[9]), .CK(net1568), .Q(plain_text_w[1]) );
  DFFQX1 data_r_reg_0_ ( .D(plain_text_w[8]), .CK(net1568), .Q(plain_text_w[0]) );
  DFFQX1 data_buffer_r_reg_24_ ( .D(PC2_permutation_r[24]), .CK(net1473), .Q(
        PC2_permutation_w[24]) );
  DFFQX1 data_buffer_r_reg_26_ ( .D(PC2_permutation_r[26]), .CK(net1473), .Q(
        PC2_permutation_w[26]) );
  DFFQX1 data_buffer_r_reg_27_ ( .D(PC2_permutation_r[27]), .CK(net1473), .Q(
        PC2_permutation_w[27]) );
  DFFQX1 data_buffer_r_reg_25_ ( .D(PC2_permutation_r[25]), .CK(net1473), .Q(
        PC2_permutation_w[25]) );
  DFFQX1 data_buffer_r_reg_23_ ( .D(PC2_permutation_r[23]), .CK(net1478), .Q(
        PC2_permutation_w[23]) );
  DFFQX1 data_buffer_r_reg_22_ ( .D(PC2_permutation_r[22]), .CK(net1478), .Q(
        PC2_permutation_w[22]) );
  DFFQX1 data_buffer_r_reg_21_ ( .D(PC2_permutation_r[21]), .CK(net1478), .Q(
        PC2_permutation_w[21]) );
  DFFQX1 data_buffer_r_reg_20_ ( .D(PC2_permutation_r[20]), .CK(net1478), .Q(
        PC2_permutation_w[20]) );
  DFFQX1 data_buffer_r_reg_19_ ( .D(PC2_permutation_r[19]), .CK(net1478), .Q(
        PC2_permutation_w[19]) );
  DFFQX1 data_buffer_r_reg_18_ ( .D(PC2_permutation_r[18]), .CK(net1478), .Q(
        PC2_permutation_w[18]) );
  DFFQX1 data_buffer_r_reg_17_ ( .D(PC2_permutation_r[17]), .CK(net1478), .Q(
        PC2_permutation_w[17]) );
  DFFQX1 data_buffer_r_reg_16_ ( .D(PC2_permutation_r[16]), .CK(net1478), .Q(
        PC2_permutation_w[16]) );
  DFFQX1 data_buffer_r_reg_15_ ( .D(PC2_permutation_r[15]), .CK(net1483), .Q(
        PC2_permutation_w[15]) );
  DFFQX1 data_buffer_r_reg_14_ ( .D(PC2_permutation_r[14]), .CK(net1483), .Q(
        PC2_permutation_w[14]) );
  DFFQX1 data_buffer_r_reg_13_ ( .D(PC2_permutation_r[13]), .CK(net1483), .Q(
        PC2_permutation_w[13]) );
  DFFQX1 data_buffer_r_reg_12_ ( .D(PC2_permutation_r[12]), .CK(net1483), .Q(
        PC2_permutation_w[12]) );
  DFFQX1 data_buffer_r_reg_11_ ( .D(PC2_permutation_r[11]), .CK(net1483), .Q(
        PC2_permutation_w[11]) );
  DFFQX1 data_buffer_r_reg_10_ ( .D(PC2_permutation_r[10]), .CK(net1483), .Q(
        PC2_permutation_w[10]) );
  DFFQX1 data_buffer_r_reg_9_ ( .D(PC2_permutation_r[9]), .CK(net1483), .Q(
        PC2_permutation_w[9]) );
  DFFQX1 data_buffer_r_reg_8_ ( .D(PC2_permutation_r[8]), .CK(net1483), .Q(
        PC2_permutation_w[8]) );
  DFFQX1 data_buffer_r_reg_7_ ( .D(PC2_permutation_r[7]), .CK(net1488), .Q(
        PC2_permutation_w[7]) );
  DFFQX1 data_buffer_r_reg_6_ ( .D(PC2_permutation_r[6]), .CK(net1488), .Q(
        PC2_permutation_w[6]) );
  DFFQX1 data_buffer_r_reg_5_ ( .D(PC2_permutation_r[5]), .CK(net1488), .Q(
        PC2_permutation_w[5]) );
  DFFQX1 data_buffer_r_reg_4_ ( .D(PC2_permutation_r[4]), .CK(net1488), .Q(
        PC2_permutation_w[4]) );
  DFFQX1 data_buffer_r_reg_3_ ( .D(PC2_permutation_r[3]), .CK(net1488), .Q(
        PC2_permutation_w[3]) );
  DFFQX1 data_buffer_r_reg_2_ ( .D(PC2_permutation_r[2]), .CK(net1488), .Q(
        PC2_permutation_w[2]) );
  DFFQX1 data_buffer_r_reg_1_ ( .D(PC2_permutation_r[1]), .CK(net1488), .Q(
        PC2_permutation_w[1]) );
  DFFQX1 data_buffer_r_reg_0_ ( .D(PC2_permutation_r[0]), .CK(net1488), .Q(
        PC2_permutation_w[0]) );
  DFFQX1 data_buffer_r_reg_48_ ( .D(PC2_permutation_r[48]), .CK(net1458), .Q(
        PC2_permutation_w[48]) );
  DFFQX1 data_buffer_r_reg_50_ ( .D(PC2_permutation_r[50]), .CK(net1458), .Q(
        PC2_permutation_w[50]) );
  DFFQX1 data_buffer_r_reg_52_ ( .D(PC2_permutation_r[52]), .CK(net1458), .Q(
        PC2_permutation_w[52]) );
  DFFQX1 data_buffer_r_reg_54_ ( .D(PC2_permutation_r[54]), .CK(net1458), .Q(
        PC2_permutation_w[54]) );
  DFFQX1 data_buffer_r_reg_55_ ( .D(PC2_permutation_r[55]), .CK(net1458), .Q(
        PC2_permutation_w[55]) );
  DFFQX1 data_buffer_r_reg_53_ ( .D(PC2_permutation_r[53]), .CK(net1458), .Q(
        PC2_permutation_w[53]) );
  DFFQX1 data_buffer_r_reg_51_ ( .D(PC2_permutation_r[51]), .CK(net1458), .Q(
        PC2_permutation_w[51]) );
  DFFQX1 data_buffer_r_reg_49_ ( .D(PC2_permutation_r[49]), .CK(net1458), .Q(
        PC2_permutation_w[49]) );
  DFFQX1 data_buffer_r_reg_47_ ( .D(PC2_permutation_r[47]), .CK(net1463), .Q(
        PC2_permutation_w[47]) );
  DFFQX1 data_buffer_r_reg_46_ ( .D(PC2_permutation_r[46]), .CK(net1463), .Q(
        PC2_permutation_w[46]) );
  DFFQX1 data_buffer_r_reg_45_ ( .D(PC2_permutation_r[45]), .CK(net1463), .Q(
        PC2_permutation_w[45]) );
  DFFQX1 data_buffer_r_reg_44_ ( .D(PC2_permutation_r[44]), .CK(net1463), .Q(
        PC2_permutation_w[44]) );
  DFFQX1 data_buffer_r_reg_43_ ( .D(PC2_permutation_r[43]), .CK(net1463), .Q(
        PC2_permutation_w[43]) );
  DFFQX1 data_buffer_r_reg_42_ ( .D(PC2_permutation_r[42]), .CK(net1463), .Q(
        PC2_permutation_w[42]) );
  DFFQX1 data_buffer_r_reg_41_ ( .D(PC2_permutation_r[41]), .CK(net1463), .Q(
        PC2_permutation_w[41]) );
  DFFQX1 data_buffer_r_reg_40_ ( .D(PC2_permutation_r[40]), .CK(net1463), .Q(
        PC2_permutation_w[40]) );
  DFFQX1 data_buffer_r_reg_39_ ( .D(PC2_permutation_r[39]), .CK(net1468), .Q(
        PC2_permutation_w[39]) );
  DFFQX1 data_buffer_r_reg_38_ ( .D(PC2_permutation_r[38]), .CK(net1468), .Q(
        PC2_permutation_w[38]) );
  DFFQX1 data_buffer_r_reg_37_ ( .D(PC2_permutation_r[37]), .CK(net1468), .Q(
        PC2_permutation_w[37]) );
  DFFQX1 data_buffer_r_reg_36_ ( .D(PC2_permutation_r[36]), .CK(net1468), .Q(
        PC2_permutation_w[36]) );
  DFFQX1 data_buffer_r_reg_35_ ( .D(PC2_permutation_r[35]), .CK(net1468), .Q(
        PC2_permutation_w[35]) );
  DFFQX1 data_buffer_r_reg_34_ ( .D(PC2_permutation_r[34]), .CK(net1468), .Q(
        PC2_permutation_w[34]) );
  DFFQX1 data_buffer_r_reg_33_ ( .D(PC2_permutation_r[33]), .CK(net1468), .Q(
        PC2_permutation_w[33]) );
  DFFQX1 data_buffer_r_reg_32_ ( .D(PC2_permutation_r[32]), .CK(net1468), .Q(
        PC2_permutation_w[32]) );
  DFFQX1 data_buffer_r_reg_31_ ( .D(PC2_permutation_r[31]), .CK(net1473), .Q(
        PC2_permutation_w[31]) );
  DFFQX1 data_buffer_r_reg_30_ ( .D(PC2_permutation_r[30]), .CK(net1473), .Q(
        PC2_permutation_w[30]) );
  DFFQX1 data_buffer_r_reg_29_ ( .D(PC2_permutation_r[29]), .CK(net1473), .Q(
        PC2_permutation_w[29]) );
  DFFQX1 data_buffer_r_reg_28_ ( .D(PC2_permutation_r[28]), .CK(net1473), .Q(
        PC2_permutation_w[28]) );
  DFFQX1 R_ready_r_reg_0_ ( .D(N323), .CK(net1453), .Q(L_wait_r[0]) );
  DFFQX1 L_ready_r_reg_0_ ( .D(N355), .CK(net1433), .Q(L_ready_r[0]) );
  DFFQX1 R_ready_r_reg_1_ ( .D(N324), .CK(net1453), .Q(L_wait_r[1]) );
  DFFQX1 L_ready_r_reg_1_ ( .D(N356), .CK(net1433), .Q(L_ready_r[1]) );
  DFFQX1 R_ready_r_reg_2_ ( .D(N325), .CK(net1453), .Q(L_wait_r[2]) );
  DFFQX1 L_ready_r_reg_2_ ( .D(N357), .CK(net1433), .Q(L_ready_r[2]) );
  DFFQX1 R_ready_r_reg_3_ ( .D(N326), .CK(net1453), .Q(L_wait_r[3]) );
  DFFQX1 L_ready_r_reg_3_ ( .D(N358), .CK(net1433), .Q(L_ready_r[3]) );
  DFFQX1 R_ready_r_reg_4_ ( .D(N327), .CK(net1453), .Q(L_wait_r[4]) );
  DFFQX1 L_ready_r_reg_4_ ( .D(N359), .CK(net1433), .Q(L_ready_r[4]) );
  DFFQX1 R_ready_r_reg_5_ ( .D(N328), .CK(net1453), .Q(L_wait_r[5]) );
  DFFQX1 L_ready_r_reg_5_ ( .D(N360), .CK(net1433), .Q(L_ready_r[5]) );
  DFFQX1 R_ready_r_reg_6_ ( .D(N329), .CK(net1453), .Q(L_wait_r[6]) );
  DFFQX1 L_ready_r_reg_6_ ( .D(N361), .CK(net1433), .Q(L_ready_r[6]) );
  DFFQX1 R_ready_r_reg_7_ ( .D(N330), .CK(net1453), .Q(L_wait_r[7]) );
  DFFQX1 L_ready_r_reg_7_ ( .D(N362), .CK(net1433), .Q(L_ready_r[7]) );
  DFFQX1 R_ready_r_reg_8_ ( .D(N331), .CK(net1448), .Q(L_wait_r[8]) );
  DFFQX1 L_ready_r_reg_8_ ( .D(N363), .CK(net1428), .Q(L_ready_r[8]) );
  DFFQX1 R_ready_r_reg_9_ ( .D(N332), .CK(net1448), .Q(L_wait_r[9]) );
  DFFQX1 L_ready_r_reg_9_ ( .D(N364), .CK(net1428), .Q(L_ready_r[9]) );
  DFFQX1 R_ready_r_reg_10_ ( .D(N333), .CK(net1448), .Q(L_wait_r[10]) );
  DFFQX1 L_ready_r_reg_10_ ( .D(N365), .CK(net1428), .Q(L_ready_r[10]) );
  DFFQX1 R_ready_r_reg_11_ ( .D(N334), .CK(net1448), .Q(L_wait_r[11]) );
  DFFQX1 L_ready_r_reg_11_ ( .D(N366), .CK(net1428), .Q(L_ready_r[11]) );
  DFFQX1 R_ready_r_reg_12_ ( .D(N335), .CK(net1448), .Q(L_wait_r[12]) );
  DFFQX1 L_ready_r_reg_12_ ( .D(N367), .CK(net1428), .Q(L_ready_r[12]) );
  DFFQX1 R_ready_r_reg_13_ ( .D(N336), .CK(net1448), .Q(L_wait_r[13]) );
  DFFQX1 L_ready_r_reg_13_ ( .D(N368), .CK(net1428), .Q(L_ready_r[13]) );
  DFFQX1 R_ready_r_reg_14_ ( .D(N337), .CK(net1448), .Q(L_wait_r[14]) );
  DFFQX1 L_ready_r_reg_14_ ( .D(N369), .CK(net1428), .Q(L_ready_r[14]) );
  DFFQX1 R_ready_r_reg_15_ ( .D(N338), .CK(net1448), .Q(L_wait_r[15]) );
  DFFQX1 L_ready_r_reg_15_ ( .D(N370), .CK(net1428), .Q(L_ready_r[15]) );
  DFFQX1 R_ready_r_reg_16_ ( .D(N339), .CK(net1443), .Q(L_wait_r[16]) );
  DFFQX1 L_ready_r_reg_16_ ( .D(N371), .CK(net1423), .Q(L_ready_r[16]) );
  DFFQX1 R_ready_r_reg_17_ ( .D(N340), .CK(net1443), .Q(L_wait_r[17]) );
  DFFQX1 L_ready_r_reg_17_ ( .D(N372), .CK(net1423), .Q(L_ready_r[17]) );
  DFFQX1 R_ready_r_reg_18_ ( .D(N341), .CK(net1443), .Q(L_wait_r[18]) );
  DFFQX1 L_ready_r_reg_18_ ( .D(N373), .CK(net1423), .Q(L_ready_r[18]) );
  DFFQX1 R_ready_r_reg_19_ ( .D(N342), .CK(net1443), .Q(L_wait_r[19]) );
  DFFQX1 L_ready_r_reg_19_ ( .D(N374), .CK(net1423), .Q(L_ready_r[19]) );
  DFFQX1 R_ready_r_reg_20_ ( .D(N343), .CK(net1443), .Q(L_wait_r[20]) );
  DFFQX1 L_ready_r_reg_20_ ( .D(N375), .CK(net1423), .Q(L_ready_r[20]) );
  DFFQX1 R_ready_r_reg_21_ ( .D(N344), .CK(net1443), .Q(L_wait_r[21]) );
  DFFQX1 L_ready_r_reg_21_ ( .D(N376), .CK(net1423), .Q(L_ready_r[21]) );
  DFFQX1 R_ready_r_reg_22_ ( .D(N345), .CK(net1443), .Q(L_wait_r[22]) );
  DFFQX1 L_ready_r_reg_22_ ( .D(N377), .CK(net1423), .Q(L_ready_r[22]) );
  DFFQX1 R_ready_r_reg_23_ ( .D(N346), .CK(net1443), .Q(L_wait_r[23]) );
  DFFQX1 L_ready_r_reg_23_ ( .D(N378), .CK(net1423), .Q(L_ready_r[23]) );
  DFFQX1 R_ready_r_reg_24_ ( .D(N347), .CK(net1438), .Q(L_wait_r[24]) );
  DFFQX1 L_ready_r_reg_24_ ( .D(N379), .CK(net1417), .Q(L_ready_r[24]) );
  DFFQX1 R_ready_r_reg_25_ ( .D(N348), .CK(net1438), .Q(L_wait_r[25]) );
  DFFQX1 L_ready_r_reg_25_ ( .D(N380), .CK(net1417), .Q(L_ready_r[25]) );
  DFFQX1 R_ready_r_reg_26_ ( .D(N349), .CK(net1438), .Q(L_wait_r[26]) );
  DFFQX1 L_ready_r_reg_26_ ( .D(N381), .CK(net1417), .Q(L_ready_r[26]) );
  DFFQX1 R_ready_r_reg_27_ ( .D(N350), .CK(net1438), .Q(L_wait_r[27]) );
  DFFQX1 L_ready_r_reg_27_ ( .D(N382), .CK(net1417), .Q(L_ready_r[27]) );
  DFFQX1 R_ready_r_reg_28_ ( .D(N351), .CK(net1438), .Q(L_wait_r[28]) );
  DFFQX1 L_ready_r_reg_28_ ( .D(N383), .CK(net1417), .Q(L_ready_r[28]) );
  DFFQX1 R_ready_r_reg_29_ ( .D(N352), .CK(net1438), .Q(L_wait_r[29]) );
  DFFQX1 L_ready_r_reg_29_ ( .D(N384), .CK(net1417), .Q(L_ready_r[29]) );
  DFFQX1 R_ready_r_reg_30_ ( .D(N353), .CK(net1438), .Q(L_wait_r[30]) );
  DFFQX1 L_ready_r_reg_30_ ( .D(N385), .CK(net1417), .Q(L_ready_r[30]) );
  DFFQX1 R_ready_r_reg_31_ ( .D(N354), .CK(net1438), .Q(L_wait_r[31]) );
  DFFQX1 L_ready_r_reg_31_ ( .D(N386), .CK(net1417), .Q(L_ready_r[31]) );
  DFFRX1 first_r_reg ( .D(n258), .CK(n674), .RN(n256), .Q(first_r), .QN(n671)
         );
  SNPS_CLOCK_GATE_HIGH_IOTDF_47 clk_gate_round_r_reg ( .CLK(clk), .EN(in_en), 
        .ENCLK(n674), .TE(1'b0) );
  DFFRX1 round_r_reg_2_ ( .D(N399), .CK(n674), .RN(n256), .Q(round_r[2]), .QN(
        n670) );
  DFFRX1 round_r_reg_1_ ( .D(N398), .CK(n674), .RN(n256), .Q(round_r[1]), .QN(
        n668) );
  DFFRX1 round_r_reg_0_ ( .D(n667), .CK(n674), .RN(n256), .Q(round_r[0]), .QN(
        n667) );
  DFFQX1 iot_out_r_reg_127_ ( .D(N467), .CK(net1573), .Q(iot_out[127]) );
  DFFQX1 iot_out_r_reg_126_ ( .D(N466), .CK(net1573), .Q(iot_out[126]) );
  DFFQX1 iot_out_r_reg_125_ ( .D(N465), .CK(net1573), .Q(iot_out[125]) );
  DFFQX1 iot_out_r_reg_124_ ( .D(N464), .CK(net1573), .Q(iot_out[124]) );
  DFFQX1 iot_out_r_reg_123_ ( .D(N463), .CK(net1573), .Q(iot_out[123]) );
  DFFQX1 iot_out_r_reg_122_ ( .D(N462), .CK(net1573), .Q(iot_out[122]) );
  DFFQX1 iot_out_r_reg_121_ ( .D(N461), .CK(net1573), .Q(iot_out[121]) );
  DFFQX1 iot_out_r_reg_120_ ( .D(N460), .CK(net1573), .Q(iot_out[120]) );
  DFFQX1 iot_out_r_reg_119_ ( .D(N459), .CK(net1578), .Q(iot_out[119]) );
  DFFQX1 iot_out_r_reg_118_ ( .D(N458), .CK(net1578), .Q(iot_out[118]) );
  DFFQX1 iot_out_r_reg_117_ ( .D(N457), .CK(net1578), .Q(iot_out[117]) );
  DFFQX1 iot_out_r_reg_116_ ( .D(N456), .CK(net1578), .Q(iot_out[116]) );
  DFFQX1 iot_out_r_reg_115_ ( .D(N455), .CK(net1578), .Q(iot_out[115]) );
  DFFQX1 iot_out_r_reg_114_ ( .D(N454), .CK(net1578), .Q(iot_out[114]) );
  DFFQX1 iot_out_r_reg_113_ ( .D(N453), .CK(net1578), .Q(iot_out[113]) );
  DFFQX1 iot_out_r_reg_112_ ( .D(N452), .CK(net1578), .Q(iot_out[112]) );
  DFFQX1 iot_out_r_reg_111_ ( .D(N451), .CK(net1583), .Q(iot_out[111]) );
  DFFQX1 iot_out_r_reg_110_ ( .D(N450), .CK(net1583), .Q(iot_out[110]) );
  DFFQX1 iot_out_r_reg_109_ ( .D(N449), .CK(net1583), .Q(iot_out[109]) );
  DFFQX1 iot_out_r_reg_108_ ( .D(N448), .CK(net1583), .Q(iot_out[108]) );
  DFFQX1 iot_out_r_reg_107_ ( .D(N447), .CK(net1583), .Q(iot_out[107]) );
  DFFQX1 iot_out_r_reg_106_ ( .D(N446), .CK(net1583), .Q(iot_out[106]) );
  DFFQX1 iot_out_r_reg_105_ ( .D(N445), .CK(net1583), .Q(iot_out[105]) );
  DFFQX1 iot_out_r_reg_104_ ( .D(N444), .CK(net1583), .Q(iot_out[104]) );
  DFFQX1 iot_out_r_reg_103_ ( .D(N443), .CK(net1588), .Q(iot_out[103]) );
  DFFQX1 iot_out_r_reg_102_ ( .D(N442), .CK(net1588), .Q(iot_out[102]) );
  DFFQX1 iot_out_r_reg_101_ ( .D(N441), .CK(net1588), .Q(iot_out[101]) );
  DFFQX1 iot_out_r_reg_100_ ( .D(N440), .CK(net1588), .Q(iot_out[100]) );
  DFFQX1 iot_out_r_reg_99_ ( .D(N439), .CK(net1588), .Q(iot_out[99]) );
  DFFQX1 iot_out_r_reg_98_ ( .D(N438), .CK(net1588), .Q(iot_out[98]) );
  DFFQX1 iot_out_r_reg_97_ ( .D(N437), .CK(net1588), .Q(iot_out[97]) );
  DFFQX1 iot_out_r_reg_96_ ( .D(N436), .CK(net1588), .Q(iot_out[96]) );
  DFFQX1 iot_out_r_reg_95_ ( .D(N435), .CK(net1593), .Q(iot_out[95]) );
  DFFQX1 iot_out_r_reg_94_ ( .D(N434), .CK(net1593), .Q(iot_out[94]) );
  DFFQX1 iot_out_r_reg_93_ ( .D(N433), .CK(net1593), .Q(iot_out[93]) );
  DFFQX1 iot_out_r_reg_92_ ( .D(N432), .CK(net1593), .Q(iot_out[92]) );
  DFFQX1 iot_out_r_reg_91_ ( .D(N431), .CK(net1593), .Q(iot_out[91]) );
  DFFQX1 iot_out_r_reg_90_ ( .D(N430), .CK(net1593), .Q(iot_out[90]) );
  DFFQX1 iot_out_r_reg_89_ ( .D(N429), .CK(net1593), .Q(iot_out[89]) );
  DFFQX1 iot_out_r_reg_88_ ( .D(N428), .CK(net1593), .Q(iot_out[88]) );
  DFFQX1 iot_out_r_reg_87_ ( .D(N427), .CK(net1598), .Q(iot_out[87]) );
  DFFQX1 iot_out_r_reg_86_ ( .D(N426), .CK(net1598), .Q(iot_out[86]) );
  DFFQX1 iot_out_r_reg_85_ ( .D(N425), .CK(net1598), .Q(iot_out[85]) );
  DFFQX1 iot_out_r_reg_84_ ( .D(N424), .CK(net1598), .Q(iot_out[84]) );
  DFFQX1 iot_out_r_reg_83_ ( .D(N423), .CK(net1598), .Q(iot_out[83]) );
  DFFQX1 iot_out_r_reg_82_ ( .D(N422), .CK(net1598), .Q(iot_out[82]) );
  DFFQX1 iot_out_r_reg_81_ ( .D(N421), .CK(net1598), .Q(iot_out[81]) );
  DFFQX1 iot_out_r_reg_80_ ( .D(N420), .CK(net1598), .Q(iot_out[80]) );
  DFFQX1 iot_out_r_reg_79_ ( .D(N419), .CK(net1603), .Q(iot_out[79]) );
  DFFQX1 iot_out_r_reg_78_ ( .D(N418), .CK(net1603), .Q(iot_out[78]) );
  DFFQX1 iot_out_r_reg_77_ ( .D(N417), .CK(net1603), .Q(iot_out[77]) );
  DFFQX1 iot_out_r_reg_76_ ( .D(N416), .CK(net1603), .Q(iot_out[76]) );
  DFFQX1 iot_out_r_reg_75_ ( .D(N415), .CK(net1603), .Q(iot_out[75]) );
  DFFQX1 iot_out_r_reg_74_ ( .D(N414), .CK(net1603), .Q(iot_out[74]) );
  DFFQX1 iot_out_r_reg_73_ ( .D(N413), .CK(net1603), .Q(iot_out[73]) );
  DFFQX1 iot_out_r_reg_72_ ( .D(N412), .CK(net1603), .Q(iot_out[72]) );
  DFFQX1 iot_out_r_reg_71_ ( .D(N411), .CK(net1608), .Q(iot_out[71]) );
  DFFQX1 iot_out_r_reg_70_ ( .D(N410), .CK(net1608), .Q(iot_out[70]) );
  DFFQX1 iot_out_r_reg_69_ ( .D(N409), .CK(net1608), .Q(iot_out[69]) );
  DFFQX1 iot_out_r_reg_68_ ( .D(N408), .CK(net1608), .Q(iot_out[68]) );
  DFFQX1 iot_out_r_reg_67_ ( .D(N407), .CK(net1608), .Q(iot_out[67]) );
  DFFQX1 iot_out_r_reg_66_ ( .D(N406), .CK(net1608), .Q(iot_out[66]) );
  DFFQX1 iot_out_r_reg_65_ ( .D(N405), .CK(net1608), .Q(iot_out[65]) );
  DFFQX1 iot_out_r_reg_64_ ( .D(N404), .CK(net1608), .Q(iot_out[64]) );
  DFFQX1 iot_out_r_reg_63_ ( .D(N539), .CK(net1613), .Q(iot_out[63]) );
  DFFQX1 iot_out_r_reg_62_ ( .D(N538), .CK(net1613), .Q(iot_out[62]) );
  DFFQX1 iot_out_r_reg_61_ ( .D(N537), .CK(net1613), .Q(iot_out[61]) );
  DFFQX1 iot_out_r_reg_60_ ( .D(N536), .CK(net1613), .Q(iot_out[60]) );
  DFFQX1 iot_out_r_reg_59_ ( .D(N535), .CK(net1613), .Q(iot_out[59]) );
  DFFQX1 iot_out_r_reg_58_ ( .D(N534), .CK(net1613), .Q(iot_out[58]) );
  DFFQX1 iot_out_r_reg_57_ ( .D(N533), .CK(net1613), .Q(iot_out[57]) );
  DFFQX1 iot_out_r_reg_56_ ( .D(N532), .CK(net1613), .Q(iot_out[56]) );
  DFFQX1 iot_out_r_reg_55_ ( .D(N531), .CK(net1618), .Q(iot_out[55]) );
  DFFQX1 iot_out_r_reg_54_ ( .D(N530), .CK(net1618), .Q(iot_out[54]) );
  DFFQX1 iot_out_r_reg_53_ ( .D(N529), .CK(net1618), .Q(iot_out[53]) );
  DFFQX1 iot_out_r_reg_52_ ( .D(N528), .CK(net1618), .Q(iot_out[52]) );
  DFFQX1 iot_out_r_reg_51_ ( .D(N527), .CK(net1618), .Q(iot_out[51]) );
  DFFQX1 iot_out_r_reg_50_ ( .D(N526), .CK(net1618), .Q(iot_out[50]) );
  DFFQX1 iot_out_r_reg_49_ ( .D(N525), .CK(net1618), .Q(iot_out[49]) );
  DFFQX1 iot_out_r_reg_48_ ( .D(N524), .CK(net1618), .Q(iot_out[48]) );
  DFFQX1 iot_out_r_reg_47_ ( .D(N523), .CK(net1623), .Q(iot_out[47]) );
  DFFQX1 iot_out_r_reg_46_ ( .D(N522), .CK(net1623), .Q(iot_out[46]) );
  DFFQX1 iot_out_r_reg_45_ ( .D(N521), .CK(net1623), .Q(iot_out[45]) );
  DFFQX1 iot_out_r_reg_44_ ( .D(N520), .CK(net1623), .Q(iot_out[44]) );
  DFFQX1 iot_out_r_reg_43_ ( .D(N519), .CK(net1623), .Q(iot_out[43]) );
  DFFQX1 iot_out_r_reg_42_ ( .D(N518), .CK(net1623), .Q(iot_out[42]) );
  DFFQX1 iot_out_r_reg_41_ ( .D(N517), .CK(net1623), .Q(iot_out[41]) );
  DFFQX1 iot_out_r_reg_40_ ( .D(N516), .CK(net1623), .Q(iot_out[40]) );
  DFFQX1 iot_out_r_reg_39_ ( .D(N515), .CK(net1628), .Q(iot_out[39]) );
  DFFQX1 iot_out_r_reg_38_ ( .D(N514), .CK(net1628), .Q(iot_out[38]) );
  DFFQX1 iot_out_r_reg_37_ ( .D(N513), .CK(net1628), .Q(iot_out[37]) );
  DFFQX1 iot_out_r_reg_36_ ( .D(N512), .CK(net1628), .Q(iot_out[36]) );
  DFFQX1 iot_out_r_reg_35_ ( .D(N511), .CK(net1628), .Q(iot_out[35]) );
  DFFQX1 iot_out_r_reg_34_ ( .D(N510), .CK(net1628), .Q(iot_out[34]) );
  DFFQX1 iot_out_r_reg_33_ ( .D(N509), .CK(net1628), .Q(iot_out[33]) );
  DFFQX1 iot_out_r_reg_32_ ( .D(N508), .CK(net1628), .Q(iot_out[32]) );
  DFFQX1 iot_out_r_reg_31_ ( .D(N507), .CK(net1633), .Q(iot_out[31]) );
  DFFQX1 iot_out_r_reg_30_ ( .D(N506), .CK(net1633), .Q(iot_out[30]) );
  DFFQX1 iot_out_r_reg_29_ ( .D(N505), .CK(net1633), .Q(iot_out[29]) );
  DFFQX1 iot_out_r_reg_28_ ( .D(N504), .CK(net1633), .Q(iot_out[28]) );
  DFFQX1 iot_out_r_reg_27_ ( .D(N503), .CK(net1633), .Q(iot_out[27]) );
  DFFQX1 iot_out_r_reg_26_ ( .D(N502), .CK(net1633), .Q(iot_out[26]) );
  DFFQX1 iot_out_r_reg_25_ ( .D(N501), .CK(net1633), .Q(iot_out[25]) );
  DFFQX1 iot_out_r_reg_24_ ( .D(N500), .CK(net1633), .Q(iot_out[24]) );
  DFFQX1 iot_out_r_reg_23_ ( .D(N499), .CK(net1638), .Q(iot_out[23]) );
  DFFQX1 iot_out_r_reg_22_ ( .D(N498), .CK(net1638), .Q(iot_out[22]) );
  DFFQX1 iot_out_r_reg_21_ ( .D(N497), .CK(net1638), .Q(iot_out[21]) );
  DFFQX1 iot_out_r_reg_20_ ( .D(N496), .CK(net1638), .Q(iot_out[20]) );
  DFFQX1 iot_out_r_reg_19_ ( .D(N495), .CK(net1638), .Q(iot_out[19]) );
  DFFQX1 iot_out_r_reg_18_ ( .D(N494), .CK(net1638), .Q(iot_out[18]) );
  DFFQX1 iot_out_r_reg_17_ ( .D(N493), .CK(net1638), .Q(iot_out[17]) );
  DFFQX1 iot_out_r_reg_16_ ( .D(N492), .CK(net1638), .Q(iot_out[16]) );
  DFFQX1 iot_out_r_reg_15_ ( .D(N491), .CK(net1643), .Q(iot_out[15]) );
  DFFQX1 iot_out_r_reg_14_ ( .D(N490), .CK(net1643), .Q(iot_out[14]) );
  DFFQX1 iot_out_r_reg_13_ ( .D(N489), .CK(net1643), .Q(iot_out[13]) );
  DFFQX1 iot_out_r_reg_12_ ( .D(N488), .CK(net1643), .Q(iot_out[12]) );
  DFFQX1 iot_out_r_reg_11_ ( .D(N487), .CK(net1643), .Q(iot_out[11]) );
  DFFQX1 iot_out_r_reg_10_ ( .D(N486), .CK(net1643), .Q(iot_out[10]) );
  DFFQX1 iot_out_r_reg_9_ ( .D(N485), .CK(net1643), .Q(iot_out[9]) );
  DFFQX1 iot_out_r_reg_8_ ( .D(N484), .CK(net1643), .Q(iot_out[8]) );
  DFFQX1 iot_out_r_reg_7_ ( .D(N483), .CK(net1648), .Q(iot_out[7]) );
  DFFQX1 iot_out_r_reg_6_ ( .D(N482), .CK(net1648), .Q(iot_out[6]) );
  DFFQX1 iot_out_r_reg_5_ ( .D(N481), .CK(net1648), .Q(iot_out[5]) );
  DFFQX1 iot_out_r_reg_4_ ( .D(N480), .CK(net1648), .Q(iot_out[4]) );
  DFFQX1 iot_out_r_reg_3_ ( .D(N479), .CK(net1648), .Q(iot_out[3]) );
  DFFQX1 iot_out_r_reg_0_ ( .D(N476), .CK(net1648), .Q(iot_out[0]) );
  DFFQX1 iot_out_r_reg_1_ ( .D(N477), .CK(net1648), .Q(iot_out[1]) );
  DFFQX1 iot_out_r_reg_2_ ( .D(N478), .CK(net1648), .Q(iot_out[2]) );
  DFFRX2 clk_DES_en_reg ( .D(n257), .CK(n674), .RN(n256), .Q(clk_DES_en), .QN(
        n673) );
  INVX2 U521 ( .A(n4330), .Y(n4490) );
  INVX2 U522 ( .A(n4330), .Y(n4520) );
  INVX2 U523 ( .A(n4330), .Y(n4470) );
  INVXL U524 ( .A(1'b1), .Y(busy) );
  CLKINVX2 U526 ( .A(rst), .Y(n256) );
  INVX1 U527 ( .A(n259), .Y(n263) );
  INVXL U528 ( .A(n263), .Y(n264) );
  INVXL U529 ( .A(n263), .Y(n265) );
  INVXL U530 ( .A(n263), .Y(n266) );
  INVXL U531 ( .A(n263), .Y(n267) );
  OAI21X2 U532 ( .A0(n673), .A1(n4490), .B0(n3980), .Y(n260) );
  INVX4 U534 ( .A(n4330), .Y(n4310) );
  OAI2BB2X1 U535 ( .B0(iot_in[2]), .B1(iot_in[5]), .A0N(iot_in[2]), .A1N(
        iot_in[5]), .Y(n280) );
  OAI2BB2X1 U536 ( .B0(n292), .B1(n667), .A0N(n291), .A1N(n3840), .Y(n294) );
  NAND3XL U537 ( .A(round_r[3]), .B(round_r[1]), .C(round_r[2]), .Y(n292) );
  CLKBUFX3 U538 ( .A(n673), .Y(n388) );
  NAND3XL U539 ( .A(n667), .B(n668), .C(n670), .Y(n271) );
  INVXL U541 ( .A(fn_sel[2]), .Y(n3850) );
  NAND4X1 U542 ( .A(fn_sel[0]), .B(fn_sel[1]), .C(n3670), .D(n3850), .Y(n3980)
         );
  OAI31XL U543 ( .A0(n388), .A1(n669), .A2(n271), .B0(n3980), .Y(n259) );
  INVX1 U544 ( .A(fn_sel[0]), .Y(n293) );
  INVXL U545 ( .A(fn_sel[1]), .Y(n269) );
  NOR2XL U546 ( .A(n293), .B(n269), .Y(n268) );
  AOI211X2 U547 ( .A0(n293), .A1(n269), .B0(fn_sel[2]), .C0(n268), .Y(DES_en)
         );
  NAND3XL U551 ( .A(round_r[0]), .B(round_r[1]), .C(in_en), .Y(n662) );
  NOR2X1 U552 ( .A(n670), .B(n662), .Y(n664) );
  AOI21XL U553 ( .A0(n670), .A1(n662), .B0(n664), .Y(N399) );
  AND2X1 U554 ( .A(DES_en), .B(first_r), .Y(N394) );
  NOR2X1 U556 ( .A(n271), .B(round_r[3]), .Y(n4530) );
  INVXL U559 ( .A(plain_text_w[42]), .Y(n3410) );
  INVXL U560 ( .A(L_wait_r[10]), .Y(n3600) );
  OAI22XL U561 ( .A0(n4310), .A1(n3410), .B0(n4330), .B1(n3600), .Y(N365) );
  INVXL U562 ( .A(plain_text_w[30]), .Y(n3370) );
  INVXL U563 ( .A(L_wait_r[28]), .Y(n3800) );
  OAI22XL U564 ( .A0(n4310), .A1(n3370), .B0(n4330), .B1(n3800), .Y(N383) );
  INVXL U565 ( .A(plain_text_w[44]), .Y(n3430) );
  INVXL U566 ( .A(L_wait_r[18]), .Y(n3610) );
  OAI22XL U567 ( .A0(n4310), .A1(n3430), .B0(n4330), .B1(n3610), .Y(N373) );
  INVXL U568 ( .A(plain_text_w[60]), .Y(n3420) );
  INVXL U569 ( .A(L_wait_r[16]), .Y(n3560) );
  OAI22XL U570 ( .A0(n4310), .A1(n3420), .B0(n4330), .B1(n3560), .Y(N371) );
  INVXL U571 ( .A(plain_text_w[50]), .Y(n3460) );
  INVXL U572 ( .A(L_wait_r[9]), .Y(n3510) );
  OAI22XL U573 ( .A0(n4310), .A1(n3460), .B0(n4330), .B1(n3510), .Y(N364) );
  INVXL U574 ( .A(plain_text_w[52]), .Y(n3470) );
  INVXL U575 ( .A(L_wait_r[17]), .Y(n3650) );
  OAI22XL U576 ( .A0(n4310), .A1(n3470), .B0(n4330), .B1(n3650), .Y(N372) );
  INVXL U577 ( .A(plain_text_w[54]), .Y(n3480) );
  INVXL U578 ( .A(L_wait_r[25]), .Y(n3520) );
  OAI22XL U579 ( .A0(n4310), .A1(n3480), .B0(n4330), .B1(n3520), .Y(N380) );
  INVXL U580 ( .A(plain_text_w[48]), .Y(n3450) );
  INVXL U581 ( .A(L_wait_r[1]), .Y(n3630) );
  OAI22XL U582 ( .A0(n4310), .A1(n3450), .B0(n4330), .B1(n3630), .Y(N356) );
  INVXL U583 ( .A(plain_text_w[22]), .Y(n3570) );
  INVXL U584 ( .A(L_wait_r[29]), .Y(n3790) );
  OAI22XL U585 ( .A0(n4310), .A1(n3570), .B0(n4330), .B1(n3790), .Y(N384) );
  INVXL U586 ( .A(plain_text_w[62]), .Y(n3490) );
  INVXL U587 ( .A(L_wait_r[24]), .Y(n3640) );
  OAI22XL U588 ( .A0(n4310), .A1(n3490), .B0(n4330), .B1(n3640), .Y(N379) );
  INVXL U589 ( .A(plain_text_w[20]), .Y(n3580) );
  INVXL U590 ( .A(L_wait_r[21]), .Y(n3700) );
  OAI22XL U591 ( .A0(n4310), .A1(n3580), .B0(n4330), .B1(n3700), .Y(N376) );
  INVXL U592 ( .A(plain_text_w[14]), .Y(n3590) );
  INVXL U593 ( .A(L_wait_r[30]), .Y(n3710) );
  OAI22XL U594 ( .A0(n4310), .A1(n3590), .B0(n4330), .B1(n3710), .Y(N385) );
  INVXL U595 ( .A(plain_text_w[10]), .Y(n3550) );
  INVXL U596 ( .A(L_wait_r[14]), .Y(n3740) );
  OAI22XL U597 ( .A0(n4310), .A1(n3550), .B0(n4330), .B1(n3740), .Y(N369) );
  INVXL U598 ( .A(plain_text_w[26]), .Y(n3390) );
  INVXL U599 ( .A(L_wait_r[12]), .Y(n3770) );
  OAI22XL U600 ( .A0(n4310), .A1(n3390), .B0(n4330), .B1(n3770), .Y(N367) );
  INVXL U601 ( .A(plain_text_w[38]), .Y(n3360) );
  INVXL U602 ( .A(L_wait_r[27]), .Y(n3750) );
  OAI22XL U603 ( .A0(n4310), .A1(n3360), .B0(n4330), .B1(n3750), .Y(N382) );
  INVXL U604 ( .A(plain_text_w[18]), .Y(n3540) );
  INVXL U605 ( .A(L_wait_r[13]), .Y(n3720) );
  OAI22XL U606 ( .A0(n4310), .A1(n3540), .B0(n4330), .B1(n3720), .Y(N368) );
  INVXL U607 ( .A(plain_text_w[46]), .Y(n3440) );
  INVXL U608 ( .A(L_wait_r[26]), .Y(n3620) );
  OAI22XL U609 ( .A0(n4310), .A1(n3440), .B0(n4330), .B1(n3620), .Y(N381) );
  INVXL U610 ( .A(plain_text_w[34]), .Y(n3680) );
  INVXL U611 ( .A(L_wait_r[11]), .Y(n3780) );
  OAI22XL U612 ( .A0(n4310), .A1(n3680), .B0(n4330), .B1(n3780), .Y(N366) );
  INVXL U613 ( .A(plain_text_w[12]), .Y(n3530) );
  INVXL U614 ( .A(L_wait_r[22]), .Y(n3730) );
  OAI22XL U615 ( .A0(n4310), .A1(n3530), .B0(n4330), .B1(n3730), .Y(N377) );
  INVXL U616 ( .A(plain_text_w[36]), .Y(n3400) );
  INVXL U617 ( .A(L_wait_r[19]), .Y(n3760) );
  OAI22XL U618 ( .A0(n4310), .A1(n3400), .B0(n4330), .B1(n3760), .Y(N374) );
  INVXL U619 ( .A(plain_text_w[28]), .Y(n3380) );
  INVXL U620 ( .A(L_wait_r[20]), .Y(n3690) );
  OAI22XL U621 ( .A0(n4310), .A1(n3380), .B0(n4330), .B1(n3690), .Y(N375) );
  XNOR2X1 U622 ( .A(sbox_out_w[15]), .B(L_ready_r[15]), .Y(n4300) );
  NAND2XL U623 ( .A(round_r[3]), .B(round_r[1]), .Y(n274) );
  INVXL U624 ( .A(n274), .Y(n273) );
  NOR2XL U625 ( .A(round_r[3]), .B(round_r[1]), .Y(n272) );
  OAI31XL U626 ( .A0(round_r[2]), .A1(n273), .A2(n272), .B0(n292), .Y(n276) );
  INVXL U627 ( .A(n276), .Y(n278) );
  OAI31XL U628 ( .A0(round_r[3]), .A1(round_r[1]), .A2(n670), .B0(n274), .Y(
        n279) );
  NAND2XL U629 ( .A(round_r[0]), .B(n279), .Y(n275) );
  OAI22XL U630 ( .A0(n278), .A1(round_r[0]), .B0(n276), .B1(n275), .Y(n287) );
  INVXL U631 ( .A(n287), .Y(n3940) );
  AOI2BB2X1 U632 ( .B0(iot_in[7]), .B1(iot_in[4]), .A0N(iot_in[7]), .A1N(
        iot_in[4]), .Y(n277) );
  AOI2BB2X1 U633 ( .B0(iot_in[1]), .B1(n277), .A0N(iot_in[1]), .A1N(n277), .Y(
        n283) );
  AOI2BB2X1 U634 ( .B0(n280), .B1(n283), .A0N(n280), .A1N(n283), .Y(n389) );
  OAI21X1 U635 ( .A0(round_r[0]), .A1(n279), .B0(n278), .Y(n391) );
  INVXL U636 ( .A(n391), .Y(n285) );
  INVXL U637 ( .A(n280), .Y(n282) );
  AOI2BB2X1 U638 ( .B0(iot_in[6]), .B1(iot_in[0]), .A0N(iot_in[6]), .A1N(
        iot_in[0]), .Y(n281) );
  AOI2BB2X1 U639 ( .B0(iot_in[3]), .B1(n281), .A0N(iot_in[3]), .A1N(n281), .Y(
        n284) );
  AOI2BB2X1 U640 ( .B0(n282), .B1(n284), .A0N(n282), .A1N(n284), .Y(n392) );
  AOI2BB2X1 U641 ( .B0(n284), .B1(n283), .A0N(n284), .A1N(n283), .Y(n390) );
  OAI22XL U642 ( .A0(n285), .A1(n392), .B0(n391), .B1(n390), .Y(n286) );
  OAI22XL U643 ( .A0(n3940), .A1(n389), .B0(n287), .B1(n286), .Y(n289) );
  NAND2XL U644 ( .A(iot_out[2]), .B(n4310), .Y(n288) );
  AOI2BB2X1 U645 ( .B0(n289), .B1(n288), .A0N(n289), .A1N(n288), .Y(n290) );
  OAI22XL U646 ( .A0(n388), .A1(n4300), .B0(n3980), .B1(n290), .Y(N478) );
  AOI2BB2X1 U647 ( .B0(n667), .B1(n669), .A0N(n667), .A1N(n669), .Y(n291) );
  NOR2XL U648 ( .A(round_r[1]), .B(round_r[2]), .Y(n3840) );
  INVXL U651 ( .A(PC2_permutation_w[55]), .Y(n560) );
  NOR2XL U654 ( .A(n4330), .B(n294), .Y(n295) );
  NOR2X1 U657 ( .A(n293), .B(n4310), .Y(n590) );
  AO22X1 U658 ( .A0(n627), .A1(PC2_permutation_w[28]), .B0(n642), .B1(
        main_key_w[23]), .Y(n297) );
  CLKBUFX3 U660 ( .A(n609), .Y(n646) );
  INVXL U661 ( .A(PC2_permutation_w[53]), .Y(n652) );
  NAND2X1 U662 ( .A(fn_sel[0]), .B(n295), .Y(n644) );
  INVXL U663 ( .A(PC2_permutation_w[52]), .Y(n645) );
  OAI22XL U664 ( .A0(n646), .A1(n652), .B0(n644), .B1(n645), .Y(n296) );
  AOI211XL U665 ( .A0(n469), .A1(main_key_w[15]), .B0(n297), .C0(n296), .Y(
        n298) );
  OAI21XL U666 ( .A0(n565), .A1(n560), .B0(n298), .Y(PC2_permutation_r[54]) );
  AO22X1 U667 ( .A0(n627), .A1(PC2_permutation_w[54]), .B0(n642), .B1(
        main_key_w[39]), .Y(n300) );
  INVXL U668 ( .A(PC2_permutation_w[51]), .Y(n643) );
  CLKBUFX3 U669 ( .A(n644), .Y(n614) );
  INVXL U670 ( .A(PC2_permutation_w[50]), .Y(n637) );
  OAI22XL U671 ( .A0(n646), .A1(n643), .B0(n614), .B1(n637), .Y(n299) );
  AOI211XL U672 ( .A0(n469), .A1(main_key_w[31]), .B0(n300), .C0(n299), .Y(
        n301) );
  OAI21XL U673 ( .A0(n565), .A1(n652), .B0(n301), .Y(PC2_permutation_r[52]) );
  INVXL U674 ( .A(PC2_permutation_w[25]), .Y(n554) );
  AO22X1 U676 ( .A0(PC2_permutation_w[26]), .A1(n627), .B0(n642), .B1(
        main_key_w[33]), .Y(n303) );
  INVXL U679 ( .A(PC2_permutation_w[23]), .Y(n547) );
  CLKBUFX3 U680 ( .A(n644), .Y(n653) );
  INVXL U681 ( .A(PC2_permutation_w[22]), .Y(n549) );
  OAI22XL U682 ( .A0(n609), .A1(n547), .B0(n653), .B1(n549), .Y(n302) );
  AOI211XL U683 ( .A0(n469), .A1(main_key_w[25]), .B0(n303), .C0(n302), .Y(
        n304) );
  OAI21XL U684 ( .A0(n565), .A1(n554), .B0(n304), .Y(PC2_permutation_r[24]) );
  INVXL U685 ( .A(PC2_permutation_w[27]), .Y(n4570) );
  AO22X1 U686 ( .A0(n627), .A1(PC2_permutation_w[0]), .B0(n642), .B1(
        main_key_w[17]), .Y(n306) );
  INVXL U687 ( .A(PC2_permutation_w[24]), .Y(n553) );
  OAI22XL U688 ( .A0(n609), .A1(n554), .B0(n653), .B1(n553), .Y(n305) );
  AOI211XL U689 ( .A0(n469), .A1(main_key_w[9]), .B0(n306), .C0(n305), .Y(n307) );
  OAI21XL U690 ( .A0(n565), .A1(n4570), .B0(n307), .Y(PC2_permutation_r[26])
         );
  INVXL U691 ( .A(PC2_permutation_w[26]), .Y(n555) );
  CLKBUFX3 U692 ( .A(n469), .Y(n635) );
  AO22X1 U693 ( .A0(PC2_permutation_w[27]), .A1(n627), .B0(n642), .B1(
        main_key_w[25]), .Y(n309) );
  OAI22XL U694 ( .A0(n609), .A1(n553), .B0(n653), .B1(n547), .Y(n308) );
  AOI211XL U695 ( .A0(n635), .A1(main_key_w[17]), .B0(n309), .C0(n308), .Y(
        n310) );
  OAI21XL U696 ( .A0(n565), .A1(n555), .B0(n310), .Y(PC2_permutation_r[25]) );
  INVXL U697 ( .A(PC2_permutation_w[30]), .Y(n320) );
  AO22X1 U699 ( .A0(n469), .A1(main_key_w[20]), .B0(n642), .B1(main_key_w[28]), 
        .Y(n312) );
  INVXL U700 ( .A(PC2_permutation_w[28]), .Y(n660) );
  OAI22XL U701 ( .A0(n609), .A1(n660), .B0(n653), .B1(n560), .Y(n311) );
  AOI211XL U702 ( .A0(n627), .A1(PC2_permutation_w[31]), .B0(n312), .C0(n311), 
        .Y(n313) );
  OAI21XL U703 ( .A0(n565), .A1(n320), .B0(n313), .Y(PC2_permutation_r[29]) );
  INVXL U704 ( .A(PC2_permutation_w[31]), .Y(n3310) );
  AO22X1 U706 ( .A0(n469), .A1(main_key_w[12]), .B0(n590), .B1(main_key_w[20]), 
        .Y(n315) );
  INVXL U707 ( .A(PC2_permutation_w[29]), .Y(n564) );
  OAI22XL U708 ( .A0(n609), .A1(n564), .B0(n653), .B1(n660), .Y(n314) );
  AOI211XL U709 ( .A0(n627), .A1(PC2_permutation_w[32]), .B0(n315), .C0(n314), 
        .Y(n316) );
  OAI21XL U710 ( .A0(n565), .A1(n3310), .B0(n316), .Y(PC2_permutation_r[30])
         );
  INVXL U711 ( .A(PC2_permutation_w[32]), .Y(n3320) );
  AO22X1 U712 ( .A0(n469), .A1(main_key_w[4]), .B0(n642), .B1(main_key_w[12]), 
        .Y(n318) );
  CLKBUFX3 U713 ( .A(n644), .Y(n631) );
  OAI22XL U714 ( .A0(n609), .A1(n320), .B0(n631), .B1(n564), .Y(n317) );
  AOI211XL U715 ( .A0(n627), .A1(PC2_permutation_w[33]), .B0(n318), .C0(n317), 
        .Y(n319) );
  OAI21XL U716 ( .A0(n565), .A1(n3320), .B0(n319), .Y(PC2_permutation_r[31])
         );
  INVXL U717 ( .A(PC2_permutation_w[33]), .Y(n3270) );
  AO22X1 U718 ( .A0(n469), .A1(main_key_w[61]), .B0(n642), .B1(main_key_w[4]), 
        .Y(n322) );
  OAI22XL U719 ( .A0(n609), .A1(n3310), .B0(n631), .B1(n320), .Y(n321) );
  AOI211XL U720 ( .A0(n627), .A1(PC2_permutation_w[34]), .B0(n322), .C0(n321), 
        .Y(n3230) );
  OAI21XL U721 ( .A0(n565), .A1(n3270), .B0(n3230), .Y(PC2_permutation_r[32])
         );
  INVXL U722 ( .A(PC2_permutation_w[35]), .Y(n570) );
  AO22X1 U723 ( .A0(n635), .A1(main_key_w[45]), .B0(n642), .B1(main_key_w[53]), 
        .Y(n3250) );
  OAI22XL U724 ( .A0(n609), .A1(n3270), .B0(n631), .B1(n3320), .Y(n3240) );
  AOI211XL U725 ( .A0(n627), .A1(PC2_permutation_w[36]), .B0(n3250), .C0(n3240), .Y(n3260) );
  OAI21XL U726 ( .A0(n565), .A1(n570), .B0(n3260), .Y(PC2_permutation_r[34])
         );
  INVXL U727 ( .A(PC2_permutation_w[36]), .Y(n574) );
  AO22X1 U728 ( .A0(n635), .A1(main_key_w[37]), .B0(n642), .B1(main_key_w[45]), 
        .Y(n3290) );
  INVXL U729 ( .A(PC2_permutation_w[34]), .Y(n566) );
  OAI22XL U730 ( .A0(n609), .A1(n566), .B0(n631), .B1(n3270), .Y(n3280) );
  AOI211XL U731 ( .A0(n627), .A1(PC2_permutation_w[37]), .B0(n3290), .C0(n3280), .Y(n3300) );
  OAI21XL U732 ( .A0(n565), .A1(n574), .B0(n3300), .Y(PC2_permutation_r[35])
         );
  AO22X1 U733 ( .A0(n635), .A1(main_key_w[53]), .B0(n590), .B1(main_key_w[61]), 
        .Y(n3340) );
  OAI22XL U734 ( .A0(n609), .A1(n3320), .B0(n631), .B1(n3310), .Y(n3330) );
  AOI211XL U735 ( .A0(n627), .A1(PC2_permutation_w[35]), .B0(n3340), .C0(n3330), .Y(n3350) );
  OAI21XL U736 ( .A0(n565), .A1(n566), .B0(n3350), .Y(PC2_permutation_r[33])
         );
  CLKBUFX3 U737 ( .A(n673), .Y(n3810) );
  NOR2BX1 U738 ( .AN(plain_text_w[39]), .B(n3810), .Y(N443) );
  NOR2BX1 U739 ( .AN(plain_text_w[47]), .B(n3810), .Y(N451) );
  NOR2BX1 U740 ( .AN(plain_text_w[7]), .B(n3810), .Y(N411) );
  CLKBUFX3 U741 ( .A(n673), .Y(n3830) );
  NOR2BX1 U742 ( .AN(plain_text_w[31]), .B(n3830), .Y(N435) );
  NOR2BX1 U743 ( .AN(plain_text_w[49]), .B(n3810), .Y(N453) );
  NOR2BX1 U744 ( .AN(plain_text_w[2]), .B(n3810), .Y(N406) );
  NOR2BX1 U745 ( .AN(plain_text_w[27]), .B(n3830), .Y(N431) );
  NOR2BX1 U746 ( .AN(plain_text_w[3]), .B(n3810), .Y(N407) );
  NOR2BX1 U747 ( .AN(plain_text_w[9]), .B(n3830), .Y(N413) );
  NOR2BX1 U748 ( .AN(plain_text_w[11]), .B(n3830), .Y(N415) );
  NOR2BX1 U749 ( .AN(plain_text_w[13]), .B(n3810), .Y(N417) );
  NOR2BX1 U750 ( .AN(plain_text_w[15]), .B(n3830), .Y(N419) );
  NOR2BX1 U751 ( .AN(plain_text_w[17]), .B(n3810), .Y(N421) );
  NOR2BX1 U752 ( .AN(plain_text_w[19]), .B(n3830), .Y(N423) );
  NOR2BX1 U753 ( .AN(plain_text_w[21]), .B(n3830), .Y(N425) );
  NOR2BX1 U754 ( .AN(plain_text_w[23]), .B(n3830), .Y(N427) );
  NOR2BX1 U755 ( .AN(plain_text_w[43]), .B(n3810), .Y(N447) );
  NOR2BX1 U756 ( .AN(plain_text_w[25]), .B(n3830), .Y(N429) );
  NOR2BX1 U757 ( .AN(L_wait_r[31]), .B(n3810), .Y(N483) );
  NOR2BX1 U758 ( .AN(plain_text_w[33]), .B(n3830), .Y(N437) );
  NOR2BX1 U759 ( .AN(plain_text_w[37]), .B(n3810), .Y(N441) );
  NOR2BX1 U760 ( .AN(plain_text_w[29]), .B(n3830), .Y(N433) );
  NOR2BX1 U761 ( .AN(plain_text_w[45]), .B(n3810), .Y(N449) );
  NOR2BX1 U762 ( .AN(L_wait_r[15]), .B(n3810), .Y(N479) );
  NOR2BX1 U763 ( .AN(plain_text_w[41]), .B(n3810), .Y(N445) );
  NOR2BX1 U764 ( .AN(plain_text_w[6]), .B(n3830), .Y(N410) );
  NOR2BX1 U765 ( .AN(plain_text_w[35]), .B(n3830), .Y(N439) );
  NOR2BX1 U766 ( .AN(plain_text_w[51]), .B(n3810), .Y(N455) );
  NOR2BX1 U767 ( .AN(plain_text_w[5]), .B(n3810), .Y(N409) );
  INVXL U768 ( .A(plain_text_w[32]), .Y(n4050) );
  NOR2XL U769 ( .A(n3500), .B(n4050), .Y(N436) );
  NOR2XL U770 ( .A(n3500), .B(n3360), .Y(N442) );
  INVXL U771 ( .A(plain_text_w[24]), .Y(n4070) );
  NOR2XL U772 ( .A(n3500), .B(n4070), .Y(N428) );
  NOR2XL U773 ( .A(n3500), .B(n3370), .Y(N434) );
  NOR2XL U774 ( .A(n3500), .B(n3380), .Y(N432) );
  NOR2XL U775 ( .A(n3500), .B(n3390), .Y(N430) );
  NOR2XL U776 ( .A(n3500), .B(n3400), .Y(N440) );
  NOR2BX1 U777 ( .AN(plain_text_w[4]), .B(n388), .Y(N408) );
  NOR2BX1 U778 ( .AN(plain_text_w[55]), .B(n388), .Y(N459) );
  NOR2BX1 U779 ( .AN(plain_text_w[57]), .B(n388), .Y(N461) );
  NOR2BX1 U780 ( .AN(plain_text_w[63]), .B(n388), .Y(N467) );
  NOR2BX1 U781 ( .AN(plain_text_w[53]), .B(n388), .Y(N457) );
  NOR2BX1 U782 ( .AN(plain_text_w[61]), .B(n388), .Y(N465) );
  NOR2BX1 U783 ( .AN(plain_text_w[1]), .B(n388), .Y(N405) );
  NOR2BX1 U784 ( .AN(plain_text_w[0]), .B(n388), .Y(N404) );
  NOR2BX1 U785 ( .AN(plain_text_w[59]), .B(n388), .Y(N463) );
  NOR2BX1 U786 ( .AN(L_wait_r[23]), .B(n388), .Y(N481) );
  NOR2XL U787 ( .A(n3670), .B(n3410), .Y(N446) );
  INVXL U788 ( .A(plain_text_w[40]), .Y(n403) );
  NOR2XL U789 ( .A(n3670), .B(n403), .Y(N444) );
  NOR2XL U790 ( .A(n3670), .B(n3420), .Y(N464) );
  NOR2XL U791 ( .A(n3670), .B(n3430), .Y(N448) );
  NOR2XL U792 ( .A(n3670), .B(n3440), .Y(N450) );
  NOR2XL U793 ( .A(n3670), .B(n3450), .Y(N452) );
  NOR2XL U794 ( .A(n3670), .B(n3460), .Y(N454) );
  NOR2XL U795 ( .A(n3670), .B(n3470), .Y(N456) );
  NOR2XL U796 ( .A(n3670), .B(n3480), .Y(N458) );
  INVXL U797 ( .A(plain_text_w[56]), .Y(n401) );
  NOR2XL U798 ( .A(n3670), .B(n401), .Y(N460) );
  INVXL U799 ( .A(plain_text_w[58]), .Y(n4130) );
  NOR2XL U800 ( .A(n3670), .B(n4130), .Y(N462) );
  NOR2XL U801 ( .A(n3670), .B(n3490), .Y(N466) );
  NOR2XL U803 ( .A(n3500), .B(n3510), .Y(N527) );
  INVXL U804 ( .A(plain_text_w[8]), .Y(n4110) );
  NOR2XL U805 ( .A(n3500), .B(n4110), .Y(N412) );
  NOR2XL U806 ( .A(n3500), .B(n3520), .Y(N531) );
  NOR2XL U807 ( .A(n3500), .B(n3530), .Y(N416) );
  INVXL U808 ( .A(L_wait_r[0]), .Y(n3990) );
  NOR2XL U809 ( .A(n3500), .B(n3990), .Y(N533) );
  NOR2XL U810 ( .A(n3500), .B(n3540), .Y(N422) );
  INVXL U811 ( .A(L_wait_r[8]), .Y(n4120) );
  NOR2XL U812 ( .A(n3500), .B(n4120), .Y(N535) );
  NOR2XL U813 ( .A(n3500), .B(n3550), .Y(N414) );
  NOR2XL U814 ( .A(n3500), .B(n3560), .Y(N537) );
  INVXL U815 ( .A(plain_text_w[16]), .Y(n4090) );
  NOR2XL U816 ( .A(n3500), .B(n4090), .Y(N420) );
  NOR2XL U817 ( .A(n3500), .B(n3570), .Y(N426) );
  NOR2XL U818 ( .A(n3500), .B(n3580), .Y(N424) );
  NOR2XL U819 ( .A(n3500), .B(n3590), .Y(N418) );
  NOR2XL U820 ( .A(n3500), .B(n3600), .Y(N519) );
  NOR2XL U821 ( .A(n3500), .B(n3610), .Y(N521) );
  NOR2XL U822 ( .A(n3500), .B(n3620), .Y(N523) );
  NOR2XL U823 ( .A(n3500), .B(n3630), .Y(N525) );
  NOR2XL U824 ( .A(n3500), .B(n3640), .Y(N539) );
  NOR2XL U825 ( .A(n3500), .B(n3650), .Y(N529) );
  NOR2XL U826 ( .A(n3670), .B(n3680), .Y(N438) );
  NOR2XL U827 ( .A(n3670), .B(n3690), .Y(N505) );
  INVXL U828 ( .A(L_wait_r[5]), .Y(n4080) );
  NOR2XL U829 ( .A(n3670), .B(n4080), .Y(N493) );
  NOR2XL U830 ( .A(n3670), .B(n3700), .Y(N497) );
  NOR2XL U831 ( .A(n3670), .B(n3710), .Y(N491) );
  NOR2XL U832 ( .A(n3670), .B(n3720), .Y(N495) );
  NOR2XL U833 ( .A(n3670), .B(n3730), .Y(N489) );
  INVXL U834 ( .A(L_wait_r[2]), .Y(n402) );
  NOR2XL U835 ( .A(n3670), .B(n402), .Y(N517) );
  NOR2XL U836 ( .A(n3670), .B(n3740), .Y(N487) );
  NOR2XL U837 ( .A(n3670), .B(n3750), .Y(N515) );
  INVXL U838 ( .A(L_wait_r[6]), .Y(n4100) );
  NOR2XL U839 ( .A(n3670), .B(n4100), .Y(N485) );
  NOR2XL U840 ( .A(n3670), .B(n3760), .Y(N513) );
  NOR2XL U841 ( .A(n3670), .B(n3770), .Y(N503) );
  NOR2XL U842 ( .A(n3670), .B(n3780), .Y(N511) );
  INVXL U843 ( .A(L_wait_r[4]), .Y(n4060) );
  NOR2XL U844 ( .A(n3670), .B(n4060), .Y(N501) );
  INVXL U845 ( .A(L_wait_r[3]), .Y(n4040) );
  NOR2XL U846 ( .A(n3670), .B(n4040), .Y(N509) );
  NOR2XL U847 ( .A(n3670), .B(n3790), .Y(N499) );
  NOR2XL U848 ( .A(n3670), .B(n3800), .Y(N507) );
  AOI2BB2X1 U849 ( .B0(sbox_out_w[6]), .B1(L_ready_r[6]), .A0N(sbox_out_w[6]), 
        .A1N(L_ready_r[6]), .Y(n4200) );
  NOR2BX1 U850 ( .AN(n4200), .B(n3810), .Y(N484) );
  AOI2BB2X1 U851 ( .B0(sbox_out_w[9]), .B1(L_ready_r[9]), .A0N(sbox_out_w[9]), 
        .A1N(L_ready_r[9]), .Y(n4240) );
  NOR2BX1 U852 ( .AN(n4240), .B(n388), .Y(N526) );
  AOI2BB2X1 U853 ( .B0(sbox_out_w[1]), .B1(L_ready_r[1]), .A0N(sbox_out_w[1]), 
        .A1N(L_ready_r[1]), .Y(n4150) );
  NOR2BX1 U854 ( .AN(n4150), .B(n3670), .Y(N524) );
  AOI2BB2X1 U855 ( .B0(sbox_out_w[23]), .B1(L_ready_r[23]), .A0N(
        sbox_out_w[23]), .A1N(L_ready_r[23]), .Y(n4400) );
  NOR2BX1 U856 ( .AN(n4400), .B(n388), .Y(N480) );
  AOI2BB2X1 U857 ( .B0(sbox_out_w[12]), .B1(L_ready_r[12]), .A0N(
        sbox_out_w[12]), .A1N(L_ready_r[12]), .Y(n4270) );
  NOR2BX1 U858 ( .AN(n4270), .B(n3810), .Y(N502) );
  AOI2BB2X1 U859 ( .B0(sbox_out_w[28]), .B1(L_ready_r[28]), .A0N(
        sbox_out_w[28]), .A1N(L_ready_r[28]), .Y(n4450) );
  NOR2BX1 U860 ( .AN(n4450), .B(n673), .Y(N506) );
  AOI2BB2X1 U861 ( .B0(sbox_out_w[17]), .B1(L_ready_r[17]), .A0N(
        sbox_out_w[17]), .A1N(L_ready_r[17]), .Y(n4340) );
  NOR2BX1 U862 ( .AN(n4340), .B(n673), .Y(N528) );
  AOI2BB2X1 U863 ( .B0(sbox_out_w[26]), .B1(L_ready_r[26]), .A0N(
        sbox_out_w[26]), .A1N(L_ready_r[26]), .Y(n4430) );
  NOR2BX1 U864 ( .AN(n4430), .B(n3670), .Y(N522) );
  AOI2BB2X1 U865 ( .B0(sbox_out_w[13]), .B1(L_ready_r[13]), .A0N(
        sbox_out_w[13]), .A1N(L_ready_r[13]), .Y(n4280) );
  NOR2BX1 U866 ( .AN(n4280), .B(n3830), .Y(N494) );
  AOI2BB2X1 U867 ( .B0(sbox_out_w[21]), .B1(L_ready_r[21]), .A0N(
        sbox_out_w[21]), .A1N(L_ready_r[21]), .Y(n4380) );
  NOR2BX1 U868 ( .AN(n4380), .B(n3830), .Y(N496) );
  AOI2BB2X1 U869 ( .B0(sbox_out_w[22]), .B1(L_ready_r[22]), .A0N(
        sbox_out_w[22]), .A1N(L_ready_r[22]), .Y(n4390) );
  NOR2BX1 U870 ( .AN(n4390), .B(n3810), .Y(N488) );
  AOI2BB2X1 U871 ( .B0(sbox_out_w[2]), .B1(L_ready_r[2]), .A0N(sbox_out_w[2]), 
        .A1N(L_ready_r[2]), .Y(n4160) );
  NOR2BX1 U872 ( .AN(n4160), .B(n388), .Y(N516) );
  AOI2BB2X1 U873 ( .B0(sbox_out_w[31]), .B1(L_ready_r[31]), .A0N(
        sbox_out_w[31]), .A1N(L_ready_r[31]), .Y(n4510) );
  NOR2BX1 U874 ( .AN(n4510), .B(n388), .Y(N482) );
  AOI2BB2X1 U875 ( .B0(sbox_out_w[20]), .B1(L_ready_r[20]), .A0N(
        sbox_out_w[20]), .A1N(L_ready_r[20]), .Y(n4370) );
  NOR2BX1 U876 ( .AN(n4370), .B(n388), .Y(N504) );
  AOI2BB2X1 U877 ( .B0(sbox_out_w[5]), .B1(L_ready_r[5]), .A0N(sbox_out_w[5]), 
        .A1N(L_ready_r[5]), .Y(n4190) );
  NOR2BX1 U878 ( .AN(n4190), .B(n3830), .Y(N492) );
  AOI2BB2X1 U879 ( .B0(sbox_out_w[11]), .B1(L_ready_r[11]), .A0N(
        sbox_out_w[11]), .A1N(L_ready_r[11]), .Y(n4260) );
  NOR2BX1 U880 ( .AN(n4260), .B(n3670), .Y(N510) );
  AOI2BB2X1 U881 ( .B0(sbox_out_w[27]), .B1(L_ready_r[27]), .A0N(
        sbox_out_w[27]), .A1N(L_ready_r[27]), .Y(n4440) );
  NOR2BX1 U882 ( .AN(n4440), .B(n3670), .Y(N514) );
  AOI2BB2X1 U883 ( .B0(sbox_out_w[25]), .B1(L_ready_r[25]), .A0N(
        sbox_out_w[25]), .A1N(L_ready_r[25]), .Y(n4420) );
  NOR2BX1 U884 ( .AN(n4420), .B(n3670), .Y(N530) );
  AOI2BB2X1 U885 ( .B0(sbox_out_w[10]), .B1(L_ready_r[10]), .A0N(
        sbox_out_w[10]), .A1N(L_ready_r[10]), .Y(n4250) );
  NOR2BX1 U886 ( .AN(n4250), .B(n3670), .Y(N518) );
  AOI2BB2X1 U887 ( .B0(sbox_out_w[24]), .B1(L_ready_r[24]), .A0N(
        sbox_out_w[24]), .A1N(L_ready_r[24]), .Y(n4410) );
  NOR2BX1 U888 ( .AN(n4410), .B(n388), .Y(N538) );
  AOI2BB2X1 U889 ( .B0(sbox_out_w[7]), .B1(L_ready_r[7]), .A0N(sbox_out_w[7]), 
        .A1N(L_ready_r[7]), .Y(n4210) );
  NOR2BX1 U890 ( .AN(n4210), .B(n388), .Y(N476) );
  AOI2BB2X1 U891 ( .B0(sbox_out_w[29]), .B1(L_ready_r[29]), .A0N(
        sbox_out_w[29]), .A1N(L_ready_r[29]), .Y(n4460) );
  NOR2BX1 U892 ( .AN(n4460), .B(n3830), .Y(N498) );
  AOI2BB2X1 U893 ( .B0(sbox_out_w[0]), .B1(L_ready_r[0]), .A0N(sbox_out_w[0]), 
        .A1N(L_ready_r[0]), .Y(n4140) );
  NOR2BX1 U894 ( .AN(n4140), .B(n673), .Y(N532) );
  AOI2BB2X1 U895 ( .B0(sbox_out_w[8]), .B1(L_ready_r[8]), .A0N(sbox_out_w[8]), 
        .A1N(L_ready_r[8]), .Y(n4230) );
  NOR2BX1 U896 ( .AN(n4230), .B(n3830), .Y(N534) );
  AOI2BB2X1 U897 ( .B0(sbox_out_w[14]), .B1(L_ready_r[14]), .A0N(
        sbox_out_w[14]), .A1N(L_ready_r[14]), .Y(n4290) );
  NOR2BX1 U898 ( .AN(n4290), .B(n3810), .Y(N486) );
  AOI2BB2X1 U899 ( .B0(sbox_out_w[4]), .B1(L_ready_r[4]), .A0N(sbox_out_w[4]), 
        .A1N(L_ready_r[4]), .Y(n4180) );
  NOR2BX1 U900 ( .AN(n4180), .B(n3830), .Y(N500) );
  AOI2BB2X1 U901 ( .B0(sbox_out_w[18]), .B1(L_ready_r[18]), .A0N(
        sbox_out_w[18]), .A1N(L_ready_r[18]), .Y(n4350) );
  NOR2BX1 U902 ( .AN(n4350), .B(n3670), .Y(N520) );
  AOI2BB2X1 U903 ( .B0(sbox_out_w[19]), .B1(L_ready_r[19]), .A0N(
        sbox_out_w[19]), .A1N(L_ready_r[19]), .Y(n4360) );
  NOR2BX1 U904 ( .AN(n4360), .B(n3670), .Y(N512) );
  AOI2BB2X1 U905 ( .B0(sbox_out_w[30]), .B1(L_ready_r[30]), .A0N(
        sbox_out_w[30]), .A1N(L_ready_r[30]), .Y(n4480) );
  NOR2BX1 U906 ( .AN(n4480), .B(n3830), .Y(N490) );
  AOI2BB2X1 U907 ( .B0(sbox_out_w[16]), .B1(L_ready_r[16]), .A0N(
        sbox_out_w[16]), .A1N(L_ready_r[16]), .Y(n4320) );
  NOR2BX1 U908 ( .AN(n4320), .B(n673), .Y(N536) );
  AOI2BB2X1 U909 ( .B0(sbox_out_w[3]), .B1(L_ready_r[3]), .A0N(sbox_out_w[3]), 
        .A1N(L_ready_r[3]), .Y(n4170) );
  NOR2BX1 U910 ( .AN(n4170), .B(n673), .Y(N508) );
  NAND2XL U912 ( .A(n3840), .B(n669), .Y(n387) );
  NAND4XL U913 ( .A(fn_sel[1]), .B(n642), .C(first_r), .D(n3850), .Y(n3860) );
  OAI31XL U914 ( .A0(n667), .A1(n388), .A2(n387), .B0(n3860), .Y(valid) );
  AOI2BB2X1 U915 ( .B0(n391), .B1(n390), .A0N(n391), .A1N(n389), .Y(n393) );
  AOI2BB2X1 U916 ( .B0(n3940), .B1(n393), .A0N(n3940), .A1N(n392), .Y(n396) );
  NAND2XL U917 ( .A(iot_out[1]), .B(n4310), .Y(n395) );
  AOI2BB2X1 U918 ( .B0(n396), .B1(n395), .A0N(n396), .A1N(n395), .Y(n397) );
  OAI2BB2XL U919 ( .B0(n3980), .B1(n397), .A0N(clk_DES_en), .A1N(L_wait_r[7]), 
        .Y(N477) );
  OAI22XL U920 ( .A0(n4490), .A1(n401), .B0(n4330), .B1(n3990), .Y(N355) );
  OAI22XL U921 ( .A0(n4490), .A1(n403), .B0(n4330), .B1(n402), .Y(N357) );
  OAI22XL U922 ( .A0(n4490), .A1(n4050), .B0(n4330), .B1(n4040), .Y(N358) );
  OAI22XL U923 ( .A0(n4490), .A1(n4070), .B0(n4330), .B1(n4060), .Y(N359) );
  OAI22XL U924 ( .A0(n4490), .A1(n4090), .B0(n4330), .B1(n4080), .Y(N360) );
  OAI22XL U925 ( .A0(n4490), .A1(n4110), .B0(n4330), .B1(n4100), .Y(N361) );
  OA22X1 U927 ( .A0(n4330), .A1(L_wait_r[7]), .B0(n4490), .B1(plain_text_w[0]), 
        .Y(N362) );
  OAI22XL U928 ( .A0(n4490), .A1(n4130), .B0(n4330), .B1(n4120), .Y(N363) );
  AO22X1 U929 ( .A0(n4490), .A1(L_wait_r[15]), .B0(n4530), .B1(plain_text_w[2]), .Y(N370) );
  AO22X1 U930 ( .A0(n4490), .A1(L_wait_r[23]), .B0(n4530), .B1(plain_text_w[4]), .Y(N378) );
  CLKBUFX3 U931 ( .A(n4530), .Y(n4500) );
  AO22X1 U932 ( .A0(n4490), .A1(L_wait_r[31]), .B0(n4500), .B1(plain_text_w[6]), .Y(N386) );
  AO22X1 U933 ( .A0(n4330), .A1(plain_text_w[57]), .B0(n4470), .B1(n4140), .Y(
        N323) );
  AO22X1 U934 ( .A0(n4330), .A1(plain_text_w[49]), .B0(n4520), .B1(n4150), .Y(
        N324) );
  AO22X1 U935 ( .A0(n4330), .A1(plain_text_w[41]), .B0(n4520), .B1(n4160), .Y(
        N325) );
  AO22X1 U936 ( .A0(n4330), .A1(plain_text_w[33]), .B0(n4470), .B1(n4170), .Y(
        N326) );
  AO22X1 U937 ( .A0(n4330), .A1(plain_text_w[25]), .B0(n4520), .B1(n4180), .Y(
        N327) );
  AO22X1 U938 ( .A0(n4330), .A1(plain_text_w[17]), .B0(n4520), .B1(n4190), .Y(
        N328) );
  AO22X1 U939 ( .A0(n4330), .A1(plain_text_w[9]), .B0(n4470), .B1(n4200), .Y(
        N329) );
  AO22X1 U940 ( .A0(n4330), .A1(plain_text_w[1]), .B0(n4520), .B1(n4210), .Y(
        N330) );
  AO22X1 U941 ( .A0(n4500), .A1(plain_text_w[59]), .B0(n4520), .B1(n4230), .Y(
        N331) );
  AO22X1 U942 ( .A0(n4500), .A1(plain_text_w[51]), .B0(n4520), .B1(n4240), .Y(
        N332) );
  AO22X1 U943 ( .A0(n4500), .A1(plain_text_w[43]), .B0(n4520), .B1(n4250), .Y(
        N333) );
  AO22X1 U944 ( .A0(n4330), .A1(plain_text_w[35]), .B0(n4520), .B1(n4260), .Y(
        N334) );
  AO22X1 U945 ( .A0(n4500), .A1(plain_text_w[27]), .B0(n4520), .B1(n4270), .Y(
        N335) );
  AO22X1 U946 ( .A0(n4500), .A1(plain_text_w[19]), .B0(n4520), .B1(n4280), .Y(
        N336) );
  AO22X1 U947 ( .A0(n4500), .A1(plain_text_w[11]), .B0(n4520), .B1(n4290), .Y(
        N337) );
  AOI2BB2X1 U948 ( .B0(n4310), .B1(n4300), .A0N(n4490), .A1N(plain_text_w[3]), 
        .Y(N338) );
  AO22X1 U949 ( .A0(n4330), .A1(plain_text_w[61]), .B0(n4520), .B1(n4320), .Y(
        N339) );
  AO22X1 U950 ( .A0(n4500), .A1(plain_text_w[53]), .B0(n4470), .B1(n4340), .Y(
        N340) );
  AO22X1 U951 ( .A0(n4500), .A1(plain_text_w[45]), .B0(n4470), .B1(n4350), .Y(
        N341) );
  AO22X1 U952 ( .A0(n4500), .A1(plain_text_w[37]), .B0(n4470), .B1(n4360), .Y(
        N342) );
  AO22X1 U953 ( .A0(n4500), .A1(plain_text_w[29]), .B0(n4470), .B1(n4370), .Y(
        N343) );
  AO22X1 U954 ( .A0(n4530), .A1(plain_text_w[21]), .B0(n4470), .B1(n4380), .Y(
        N344) );
  AO22X1 U955 ( .A0(n4500), .A1(plain_text_w[13]), .B0(n4470), .B1(n4390), .Y(
        N345) );
  AO22X1 U956 ( .A0(n4500), .A1(plain_text_w[5]), .B0(n4470), .B1(n4400), .Y(
        N346) );
  AO22X1 U957 ( .A0(n4500), .A1(plain_text_w[63]), .B0(n4470), .B1(n4410), .Y(
        N347) );
  AO22X1 U958 ( .A0(n4500), .A1(plain_text_w[55]), .B0(n4470), .B1(n4420), .Y(
        N348) );
  AO22X1 U959 ( .A0(n4500), .A1(plain_text_w[47]), .B0(n4470), .B1(n4430), .Y(
        N349) );
  AO22X1 U960 ( .A0(n4500), .A1(plain_text_w[39]), .B0(n4470), .B1(n4440), .Y(
        N350) );
  AO22X1 U961 ( .A0(n4500), .A1(plain_text_w[31]), .B0(n4520), .B1(n4450), .Y(
        N351) );
  AO22X1 U962 ( .A0(n4500), .A1(plain_text_w[23]), .B0(n4470), .B1(n4460), .Y(
        N352) );
  AO22X1 U963 ( .A0(n4500), .A1(plain_text_w[15]), .B0(n4490), .B1(n4480), .Y(
        N353) );
  AO22X1 U964 ( .A0(n4530), .A1(plain_text_w[7]), .B0(n4520), .B1(n4510), .Y(
        N354) );
  INVXL U966 ( .A(PC2_permutation_w[1]), .Y(n4650) );
  AO22X1 U967 ( .A0(n469), .A1(main_key_w[60]), .B0(n642), .B1(main_key_w[1]), 
        .Y(n4550) );
  OAI22XL U968 ( .A0(n609), .A1(n4570), .B0(n614), .B1(n555), .Y(n4540) );
  AOI211XL U969 ( .A0(n627), .A1(PC2_permutation_w[2]), .B0(n4550), .C0(n4540), 
        .Y(n4560) );
  OAI21XL U970 ( .A0(n565), .A1(n4650), .B0(n4560), .Y(PC2_permutation_r[0])
         );
  INVXL U971 ( .A(PC2_permutation_w[2]), .Y(n470) );
  AO22X1 U974 ( .A0(n469), .A1(main_key_w[52]), .B0(main_key_w[60]), .B1(n642), 
        .Y(n4590) );
  INVXL U975 ( .A(PC2_permutation_w[0]), .Y(n559) );
  OAI22XL U976 ( .A0(n609), .A1(n559), .B0(n4570), .B1(n614), .Y(n4580) );
  AOI211XL U977 ( .A0(n627), .A1(PC2_permutation_w[3]), .B0(n4590), .C0(n4580), 
        .Y(n4600) );
  OAI21XL U978 ( .A0(n565), .A1(n470), .B0(n4600), .Y(PC2_permutation_r[1]) );
  CLKBUFX3 U979 ( .A(n565), .Y(n661) );
  INVXL U980 ( .A(PC2_permutation_w[3]), .Y(n474) );
  AO22X1 U981 ( .A0(n469), .A1(main_key_w[44]), .B0(n642), .B1(main_key_w[52]), 
        .Y(n4630) );
  OAI22XL U982 ( .A0(n4650), .A1(n609), .B0(n653), .B1(n559), .Y(n4620) );
  AOI211XL U983 ( .A0(n627), .A1(PC2_permutation_w[4]), .B0(n4630), .C0(n4620), 
        .Y(n4640) );
  OAI21XL U984 ( .A0(n661), .A1(n474), .B0(n4640), .Y(PC2_permutation_r[2]) );
  INVXL U985 ( .A(PC2_permutation_w[4]), .Y(n4780) );
  AO22X1 U986 ( .A0(n469), .A1(main_key_w[36]), .B0(n642), .B1(main_key_w[44]), 
        .Y(n4670) );
  OAI22XL U987 ( .A0(n4650), .A1(n644), .B0(n609), .B1(n470), .Y(n4660) );
  AOI211XL U988 ( .A0(n627), .A1(PC2_permutation_w[5]), .B0(n4670), .C0(n4660), 
        .Y(n468) );
  OAI21XL U989 ( .A0(n565), .A1(n4780), .B0(n468), .Y(PC2_permutation_r[3]) );
  INVXL U990 ( .A(PC2_permutation_w[5]), .Y(n4820) );
  AO22X1 U991 ( .A0(n469), .A1(main_key_w[59]), .B0(n642), .B1(main_key_w[36]), 
        .Y(n472) );
  OAI22XL U992 ( .A0(n609), .A1(n474), .B0(n644), .B1(n470), .Y(n471) );
  AOI211XL U993 ( .A0(n627), .A1(PC2_permutation_w[6]), .B0(n472), .C0(n471), 
        .Y(n473) );
  OAI21XL U994 ( .A0(n565), .A1(n4820), .B0(n473), .Y(PC2_permutation_r[4]) );
  INVXL U995 ( .A(PC2_permutation_w[6]), .Y(n4860) );
  AO22X1 U996 ( .A0(n635), .A1(main_key_w[51]), .B0(n642), .B1(main_key_w[59]), 
        .Y(n4760) );
  OAI22XL U997 ( .A0(n646), .A1(n4780), .B0(n631), .B1(n474), .Y(n475) );
  AOI211XL U998 ( .A0(n627), .A1(PC2_permutation_w[7]), .B0(n4760), .C0(n475), 
        .Y(n4770) );
  OAI21XL U999 ( .A0(n661), .A1(n4860), .B0(n4770), .Y(PC2_permutation_r[5])
         );
  INVXL U1000 ( .A(PC2_permutation_w[7]), .Y(n4900) );
  AO22X1 U1001 ( .A0(n469), .A1(main_key_w[43]), .B0(n642), .B1(main_key_w[51]), .Y(n4800) );
  OAI22XL U1002 ( .A0(n646), .A1(n4820), .B0(n614), .B1(n4780), .Y(n4790) );
  AOI211XL U1003 ( .A0(n627), .A1(PC2_permutation_w[8]), .B0(n4800), .C0(n4790), .Y(n4810) );
  OAI21XL U1004 ( .A0(n661), .A1(n4900), .B0(n4810), .Y(PC2_permutation_r[6])
         );
  INVXL U1005 ( .A(PC2_permutation_w[8]), .Y(n4940) );
  AO22X1 U1006 ( .A0(n635), .A1(main_key_w[35]), .B0(n642), .B1(main_key_w[43]), .Y(n4840) );
  OAI22XL U1007 ( .A0(n646), .A1(n4860), .B0(n614), .B1(n4820), .Y(n4830) );
  AOI211XL U1008 ( .A0(n627), .A1(PC2_permutation_w[9]), .B0(n4840), .C0(n4830), .Y(n4850) );
  OAI21XL U1009 ( .A0(n565), .A1(n4940), .B0(n4850), .Y(PC2_permutation_r[7])
         );
  INVXL U1010 ( .A(PC2_permutation_w[9]), .Y(n4980) );
  AO22X1 U1011 ( .A0(n469), .A1(main_key_w[27]), .B0(n642), .B1(main_key_w[35]), .Y(n4880) );
  OAI22XL U1012 ( .A0(n646), .A1(n4900), .B0(n614), .B1(n4860), .Y(n4870) );
  AOI211XL U1013 ( .A0(n627), .A1(PC2_permutation_w[10]), .B0(n4880), .C0(
        n4870), .Y(n4890) );
  OAI21XL U1014 ( .A0(n565), .A1(n4980), .B0(n4890), .Y(PC2_permutation_r[8])
         );
  INVXL U1015 ( .A(PC2_permutation_w[10]), .Y(n5020) );
  AO22X1 U1016 ( .A0(n469), .A1(main_key_w[19]), .B0(n642), .B1(main_key_w[27]), .Y(n4920) );
  OAI22XL U1017 ( .A0(n646), .A1(n4940), .B0(n614), .B1(n4900), .Y(n4910) );
  AOI211XL U1018 ( .A0(n627), .A1(PC2_permutation_w[11]), .B0(n4920), .C0(
        n4910), .Y(n4930) );
  OAI21XL U1019 ( .A0(n661), .A1(n5020), .B0(n4930), .Y(PC2_permutation_r[9])
         );
  INVXL U1020 ( .A(PC2_permutation_w[11]), .Y(n5070) );
  AO22X1 U1021 ( .A0(n469), .A1(main_key_w[11]), .B0(n642), .B1(main_key_w[19]), .Y(n4960) );
  OAI22XL U1022 ( .A0(n646), .A1(n4980), .B0(n614), .B1(n4940), .Y(n4950) );
  AOI211XL U1023 ( .A0(n627), .A1(PC2_permutation_w[12]), .B0(n4960), .C0(
        n4950), .Y(n4970) );
  OAI21XL U1024 ( .A0(n565), .A1(n5070), .B0(n4970), .Y(PC2_permutation_r[10])
         );
  INVXL U1025 ( .A(PC2_permutation_w[12]), .Y(n5110) );
  AO22X1 U1026 ( .A0(n469), .A1(main_key_w[3]), .B0(n642), .B1(main_key_w[11]), 
        .Y(n5000) );
  OAI22XL U1027 ( .A0(n646), .A1(n5020), .B0(n614), .B1(n4980), .Y(n4990) );
  AOI211XL U1028 ( .A0(n627), .A1(PC2_permutation_w[13]), .B0(n5000), .C0(
        n4990), .Y(n5010) );
  OAI21XL U1029 ( .A0(n565), .A1(n5110), .B0(n5010), .Y(PC2_permutation_r[11])
         );
  INVXL U1030 ( .A(PC2_permutation_w[13]), .Y(n5150) );
  AO22X1 U1031 ( .A0(n635), .A1(main_key_w[58]), .B0(n642), .B1(main_key_w[3]), 
        .Y(n5040) );
  OAI22XL U1032 ( .A0(n646), .A1(n5070), .B0(n614), .B1(n5020), .Y(n5030) );
  AOI211XL U1033 ( .A0(n627), .A1(PC2_permutation_w[14]), .B0(n5040), .C0(
        n5030), .Y(n5050) );
  OAI21XL U1034 ( .A0(n661), .A1(n5150), .B0(n5050), .Y(PC2_permutation_r[12])
         );
  INVXL U1035 ( .A(PC2_permutation_w[14]), .Y(n5190) );
  AO22X1 U1036 ( .A0(n469), .A1(main_key_w[50]), .B0(n642), .B1(main_key_w[58]), .Y(n5090) );
  OAI22XL U1037 ( .A0(n646), .A1(n5110), .B0(n614), .B1(n5070), .Y(n5080) );
  AOI211XL U1038 ( .A0(n627), .A1(PC2_permutation_w[15]), .B0(n5090), .C0(
        n5080), .Y(n5100) );
  OAI21XL U1039 ( .A0(n661), .A1(n5190), .B0(n5100), .Y(PC2_permutation_r[13])
         );
  INVXL U1040 ( .A(PC2_permutation_w[15]), .Y(n5230) );
  AO22X1 U1041 ( .A0(n469), .A1(main_key_w[42]), .B0(n642), .B1(main_key_w[50]), .Y(n5130) );
  OAI22XL U1042 ( .A0(n646), .A1(n5150), .B0(n614), .B1(n5110), .Y(n5120) );
  AOI211XL U1043 ( .A0(n627), .A1(PC2_permutation_w[16]), .B0(n5130), .C0(
        n5120), .Y(n5140) );
  OAI21XL U1044 ( .A0(n661), .A1(n5230), .B0(n5140), .Y(PC2_permutation_r[14])
         );
  INVXL U1045 ( .A(PC2_permutation_w[16]), .Y(n5270) );
  AO22X1 U1046 ( .A0(n635), .A1(main_key_w[34]), .B0(n642), .B1(main_key_w[42]), .Y(n5170) );
  OAI22XL U1047 ( .A0(n646), .A1(n5190), .B0(n614), .B1(n5150), .Y(n5160) );
  AOI211XL U1048 ( .A0(n627), .A1(PC2_permutation_w[17]), .B0(n5170), .C0(
        n5160), .Y(n5180) );
  OAI21XL U1049 ( .A0(n661), .A1(n5270), .B0(n5180), .Y(PC2_permutation_r[15])
         );
  INVXL U1050 ( .A(PC2_permutation_w[17]), .Y(n5310) );
  AO22X1 U1051 ( .A0(n469), .A1(main_key_w[26]), .B0(n642), .B1(main_key_w[34]), .Y(n5210) );
  OAI22XL U1052 ( .A0(n646), .A1(n5230), .B0(n614), .B1(n5190), .Y(n5200) );
  AOI211XL U1053 ( .A0(n627), .A1(PC2_permutation_w[18]), .B0(n5210), .C0(
        n5200), .Y(n5220) );
  OAI21XL U1054 ( .A0(n661), .A1(n5310), .B0(n5220), .Y(PC2_permutation_r[16])
         );
  INVXL U1055 ( .A(PC2_permutation_w[18]), .Y(n5350) );
  AO22X1 U1056 ( .A0(n469), .A1(main_key_w[18]), .B0(n642), .B1(main_key_w[26]), .Y(n5250) );
  OAI22XL U1057 ( .A0(n646), .A1(n5270), .B0(n614), .B1(n5230), .Y(n5240) );
  AOI211XL U1058 ( .A0(n627), .A1(PC2_permutation_w[19]), .B0(n5250), .C0(
        n5240), .Y(n5260) );
  OAI21XL U1059 ( .A0(n661), .A1(n5350), .B0(n5260), .Y(PC2_permutation_r[17])
         );
  INVXL U1060 ( .A(PC2_permutation_w[19]), .Y(n5390) );
  AO22X1 U1061 ( .A0(n469), .A1(main_key_w[10]), .B0(n642), .B1(main_key_w[18]), .Y(n5290) );
  OAI22XL U1062 ( .A0(n646), .A1(n5310), .B0(n614), .B1(n5270), .Y(n5280) );
  AOI211XL U1063 ( .A0(n627), .A1(PC2_permutation_w[20]), .B0(n5290), .C0(
        n5280), .Y(n5300) );
  OAI21XL U1064 ( .A0(n661), .A1(n5390), .B0(n5300), .Y(PC2_permutation_r[18])
         );
  INVXL U1065 ( .A(PC2_permutation_w[20]), .Y(n543) );
  AO22X1 U1066 ( .A0(n469), .A1(main_key_w[2]), .B0(n642), .B1(main_key_w[10]), 
        .Y(n5330) );
  OAI22XL U1067 ( .A0(n609), .A1(n5350), .B0(n653), .B1(n5310), .Y(n5320) );
  AOI211XL U1068 ( .A0(n627), .A1(PC2_permutation_w[21]), .B0(n5330), .C0(
        n5320), .Y(n5340) );
  OAI21XL U1069 ( .A0(n661), .A1(n543), .B0(n5340), .Y(PC2_permutation_r[19])
         );
  INVXL U1070 ( .A(PC2_permutation_w[21]), .Y(n548) );
  AO22X1 U1071 ( .A0(n469), .A1(main_key_w[57]), .B0(n642), .B1(main_key_w[2]), 
        .Y(n5370) );
  OAI22XL U1072 ( .A0(n609), .A1(n5390), .B0(n653), .B1(n5350), .Y(n5360) );
  AOI211XL U1073 ( .A0(n627), .A1(PC2_permutation_w[22]), .B0(n5370), .C0(
        n5360), .Y(n5380) );
  OAI21XL U1074 ( .A0(n661), .A1(n548), .B0(n5380), .Y(PC2_permutation_r[20])
         );
  AO22X1 U1075 ( .A0(n469), .A1(main_key_w[49]), .B0(n642), .B1(main_key_w[57]), .Y(n541) );
  OAI22XL U1076 ( .A0(n609), .A1(n543), .B0(n653), .B1(n5390), .Y(n540) );
  AOI211XL U1077 ( .A0(n627), .A1(PC2_permutation_w[23]), .B0(n541), .C0(n540), 
        .Y(n542) );
  OAI21XL U1078 ( .A0(n661), .A1(n549), .B0(n542), .Y(PC2_permutation_r[21])
         );
  AO22X1 U1079 ( .A0(n469), .A1(main_key_w[41]), .B0(n642), .B1(main_key_w[49]), .Y(n545) );
  OAI22XL U1080 ( .A0(n609), .A1(n548), .B0(n653), .B1(n543), .Y(n544) );
  AOI211XL U1081 ( .A0(n627), .A1(PC2_permutation_w[24]), .B0(n545), .C0(n544), 
        .Y(n546) );
  OAI21XL U1082 ( .A0(n661), .A1(n547), .B0(n546), .Y(PC2_permutation_r[22])
         );
  AO22X1 U1083 ( .A0(n469), .A1(main_key_w[33]), .B0(n642), .B1(main_key_w[41]), .Y(n551) );
  OAI22XL U1084 ( .A0(n609), .A1(n549), .B0(n653), .B1(n548), .Y(n550) );
  AOI211XL U1085 ( .A0(n627), .A1(PC2_permutation_w[25]), .B0(n551), .C0(n550), 
        .Y(n552) );
  OAI21XL U1086 ( .A0(n661), .A1(n553), .B0(n552), .Y(PC2_permutation_r[23])
         );
  AO22X1 U1087 ( .A0(PC2_permutation_w[1]), .A1(n627), .B0(n642), .B1(
        main_key_w[9]), .Y(n557) );
  OAI22XL U1088 ( .A0(n609), .A1(n555), .B0(n653), .B1(n554), .Y(n556) );
  AOI211XL U1089 ( .A0(n469), .A1(main_key_w[1]), .B0(n557), .C0(n556), .Y(
        n558) );
  OAI21XL U1090 ( .A0(n565), .A1(n559), .B0(n558), .Y(PC2_permutation_r[27])
         );
  AO22X1 U1091 ( .A0(n469), .A1(main_key_w[28]), .B0(n642), .B1(main_key_w[7]), 
        .Y(n562) );
  INVXL U1092 ( .A(PC2_permutation_w[54]), .Y(n654) );
  OAI22XL U1093 ( .A0(n609), .A1(n560), .B0(n653), .B1(n654), .Y(n561) );
  AOI211XL U1094 ( .A0(n627), .A1(PC2_permutation_w[30]), .B0(n562), .C0(n561), 
        .Y(n563) );
  OAI21XL U1095 ( .A0(n565), .A1(n564), .B0(n563), .Y(PC2_permutation_r[28])
         );
  INVXL U1096 ( .A(PC2_permutation_w[37]), .Y(n578) );
  AO22X1 U1097 ( .A0(n635), .A1(main_key_w[29]), .B0(n642), .B1(main_key_w[37]), .Y(n568) );
  OAI22XL U1098 ( .A0(n609), .A1(n570), .B0(n631), .B1(n566), .Y(n567) );
  AOI211XL U1099 ( .A0(n627), .A1(PC2_permutation_w[38]), .B0(n568), .C0(n567), 
        .Y(n569) );
  OAI21XL U1100 ( .A0(n565), .A1(n578), .B0(n569), .Y(PC2_permutation_r[36])
         );
  INVXL U1101 ( .A(PC2_permutation_w[38]), .Y(n582) );
  AO22X1 U1102 ( .A0(n635), .A1(main_key_w[21]), .B0(n590), .B1(main_key_w[29]), .Y(n572) );
  OAI22XL U1103 ( .A0(n609), .A1(n574), .B0(n631), .B1(n570), .Y(n571) );
  AOI211XL U1104 ( .A0(n627), .A1(PC2_permutation_w[39]), .B0(n572), .C0(n571), 
        .Y(n573) );
  OAI21XL U1105 ( .A0(n565), .A1(n582), .B0(n573), .Y(PC2_permutation_r[37])
         );
  INVXL U1106 ( .A(PC2_permutation_w[39]), .Y(n586) );
  AO22X1 U1107 ( .A0(n635), .A1(main_key_w[13]), .B0(n642), .B1(main_key_w[21]), .Y(n576) );
  OAI22XL U1108 ( .A0(n609), .A1(n578), .B0(n631), .B1(n574), .Y(n575) );
  AOI211XL U1109 ( .A0(n627), .A1(PC2_permutation_w[40]), .B0(n576), .C0(n575), 
        .Y(n577) );
  OAI21XL U1110 ( .A0(n565), .A1(n586), .B0(n577), .Y(PC2_permutation_r[38])
         );
  INVXL U1111 ( .A(PC2_permutation_w[40]), .Y(n591) );
  AO22X1 U1112 ( .A0(n635), .A1(main_key_w[5]), .B0(n642), .B1(main_key_w[13]), 
        .Y(n580) );
  OAI22XL U1113 ( .A0(n609), .A1(n582), .B0(n631), .B1(n578), .Y(n579) );
  AOI211XL U1114 ( .A0(n627), .A1(PC2_permutation_w[41]), .B0(n580), .C0(n579), 
        .Y(n581) );
  OAI21XL U1115 ( .A0(n565), .A1(n591), .B0(n581), .Y(PC2_permutation_r[39])
         );
  INVXL U1116 ( .A(PC2_permutation_w[41]), .Y(n595) );
  AO22X1 U1117 ( .A0(n635), .A1(main_key_w[62]), .B0(n642), .B1(main_key_w[5]), 
        .Y(n584) );
  OAI22XL U1118 ( .A0(n609), .A1(n586), .B0(n631), .B1(n582), .Y(n583) );
  AOI211XL U1119 ( .A0(n627), .A1(PC2_permutation_w[42]), .B0(n584), .C0(n583), 
        .Y(n585) );
  OAI21XL U1120 ( .A0(n565), .A1(n595), .B0(n585), .Y(PC2_permutation_r[40])
         );
  INVXL U1121 ( .A(PC2_permutation_w[42]), .Y(n599) );
  AO22X1 U1122 ( .A0(n469), .A1(main_key_w[54]), .B0(n642), .B1(main_key_w[62]), .Y(n588) );
  OAI22XL U1123 ( .A0(n609), .A1(n591), .B0(n631), .B1(n586), .Y(n587) );
  AOI211XL U1124 ( .A0(n627), .A1(PC2_permutation_w[43]), .B0(n588), .C0(n587), 
        .Y(n589) );
  OAI21XL U1125 ( .A0(n565), .A1(n599), .B0(n589), .Y(PC2_permutation_r[41])
         );
  INVXL U1126 ( .A(PC2_permutation_w[43]), .Y(n603) );
  AO22X1 U1127 ( .A0(n635), .A1(main_key_w[46]), .B0(n590), .B1(main_key_w[54]), .Y(n593) );
  OAI22XL U1128 ( .A0(n609), .A1(n595), .B0(n631), .B1(n591), .Y(n592) );
  AOI211XL U1129 ( .A0(n627), .A1(PC2_permutation_w[44]), .B0(n593), .C0(n592), 
        .Y(n594) );
  OAI21XL U1130 ( .A0(n565), .A1(n603), .B0(n594), .Y(PC2_permutation_r[42])
         );
  INVXL U1131 ( .A(PC2_permutation_w[44]), .Y(n608) );
  AO22X1 U1132 ( .A0(n635), .A1(main_key_w[38]), .B0(n642), .B1(main_key_w[46]), .Y(n597) );
  OAI22XL U1133 ( .A0(n609), .A1(n599), .B0(n631), .B1(n595), .Y(n596) );
  AOI211XL U1134 ( .A0(n627), .A1(PC2_permutation_w[45]), .B0(n597), .C0(n596), 
        .Y(n598) );
  OAI21XL U1135 ( .A0(n565), .A1(n608), .B0(n598), .Y(PC2_permutation_r[43])
         );
  INVXL U1136 ( .A(PC2_permutation_w[45]), .Y(n613) );
  AO22X1 U1137 ( .A0(n635), .A1(main_key_w[30]), .B0(n642), .B1(main_key_w[38]), .Y(n601) );
  OAI22XL U1138 ( .A0(n609), .A1(n603), .B0(n631), .B1(n599), .Y(n600) );
  AOI211XL U1139 ( .A0(n627), .A1(PC2_permutation_w[46]), .B0(n601), .C0(n600), 
        .Y(n602) );
  OAI21XL U1140 ( .A0(n565), .A1(n613), .B0(n602), .Y(PC2_permutation_r[44])
         );
  INVXL U1141 ( .A(PC2_permutation_w[46]), .Y(n618) );
  AO22X1 U1142 ( .A0(n635), .A1(main_key_w[22]), .B0(n642), .B1(main_key_w[30]), .Y(n606) );
  OAI22XL U1143 ( .A0(n609), .A1(n608), .B0(n614), .B1(n603), .Y(n605) );
  AOI211XL U1144 ( .A0(n627), .A1(PC2_permutation_w[47]), .B0(n606), .C0(n605), 
        .Y(n607) );
  OAI21XL U1145 ( .A0(n565), .A1(n618), .B0(n607), .Y(PC2_permutation_r[45])
         );
  INVXL U1146 ( .A(PC2_permutation_w[47]), .Y(n624) );
  AO22X1 U1147 ( .A0(n635), .A1(main_key_w[14]), .B0(n642), .B1(main_key_w[22]), .Y(n611) );
  OAI22XL U1148 ( .A0(n609), .A1(n613), .B0(n631), .B1(n608), .Y(n610) );
  AOI211XL U1149 ( .A0(n627), .A1(PC2_permutation_w[48]), .B0(n611), .C0(n610), 
        .Y(n612) );
  OAI21XL U1150 ( .A0(n565), .A1(n624), .B0(n612), .Y(PC2_permutation_r[46])
         );
  INVXL U1151 ( .A(PC2_permutation_w[48]), .Y(n630) );
  AO22X1 U1152 ( .A0(n635), .A1(main_key_w[6]), .B0(n642), .B1(main_key_w[14]), 
        .Y(n616) );
  OAI22XL U1153 ( .A0(n609), .A1(n618), .B0(n614), .B1(n613), .Y(n615) );
  AOI211XL U1154 ( .A0(n627), .A1(PC2_permutation_w[49]), .B0(n616), .C0(n615), 
        .Y(n617) );
  OAI21XL U1155 ( .A0(n565), .A1(n630), .B0(n617), .Y(PC2_permutation_r[47])
         );
  INVXL U1156 ( .A(PC2_permutation_w[49]), .Y(n636) );
  AO22X1 U1157 ( .A0(n635), .A1(main_key_w[63]), .B0(n642), .B1(main_key_w[6]), 
        .Y(n620) );
  OAI22XL U1158 ( .A0(n609), .A1(n624), .B0(n653), .B1(n618), .Y(n619) );
  AOI211XL U1159 ( .A0(n627), .A1(PC2_permutation_w[50]), .B0(n620), .C0(n619), 
        .Y(n622) );
  OAI21XL U1160 ( .A0(n565), .A1(n636), .B0(n622), .Y(PC2_permutation_r[48])
         );
  AO22X1 U1161 ( .A0(n469), .A1(main_key_w[55]), .B0(n642), .B1(main_key_w[63]), .Y(n626) );
  OAI22XL U1162 ( .A0(n609), .A1(n630), .B0(n631), .B1(n624), .Y(n625) );
  AOI211XL U1163 ( .A0(n627), .A1(PC2_permutation_w[51]), .B0(n626), .C0(n625), 
        .Y(n628) );
  OAI21XL U1164 ( .A0(n661), .A1(n637), .B0(n628), .Y(PC2_permutation_r[49])
         );
  AO22X1 U1165 ( .A0(n469), .A1(main_key_w[47]), .B0(n642), .B1(main_key_w[55]), .Y(n633) );
  OAI22XL U1166 ( .A0(n609), .A1(n636), .B0(n631), .B1(n630), .Y(n632) );
  AOI211XL U1167 ( .A0(n627), .A1(PC2_permutation_w[52]), .B0(n633), .C0(n632), 
        .Y(n634) );
  OAI21XL U1168 ( .A0(n661), .A1(n643), .B0(n634), .Y(PC2_permutation_r[50])
         );
  AO22X1 U1169 ( .A0(n635), .A1(main_key_w[39]), .B0(n642), .B1(main_key_w[47]), .Y(n639) );
  OAI22XL U1170 ( .A0(n609), .A1(n637), .B0(n653), .B1(n636), .Y(n638) );
  AOI211XL U1171 ( .A0(n627), .A1(PC2_permutation_w[53]), .B0(n639), .C0(n638), 
        .Y(n641) );
  OAI21XL U1172 ( .A0(n661), .A1(n645), .B0(n641), .Y(PC2_permutation_r[51])
         );
  AO22X1 U1173 ( .A0(n627), .A1(PC2_permutation_w[55]), .B0(n642), .B1(
        main_key_w[31]), .Y(n648) );
  OAI22XL U1174 ( .A0(n646), .A1(n645), .B0(n644), .B1(n643), .Y(n647) );
  AOI211XL U1175 ( .A0(n469), .A1(main_key_w[23]), .B0(n648), .C0(n647), .Y(
        n649) );
  OAI21XL U1176 ( .A0(n661), .A1(n654), .B0(n649), .Y(PC2_permutation_r[53])
         );
  AO22X1 U1177 ( .A0(n627), .A1(PC2_permutation_w[29]), .B0(n642), .B1(
        main_key_w[15]), .Y(n657) );
  OAI22XL U1178 ( .A0(n609), .A1(n654), .B0(n653), .B1(n652), .Y(n656) );
  AOI211XL U1179 ( .A0(n469), .A1(main_key_w[7]), .B0(n657), .C0(n656), .Y(
        n659) );
  OAI21XL U1180 ( .A0(n661), .A1(n660), .B0(n659), .Y(PC2_permutation_r[55])
         );
  AND2X1 U1181 ( .A(in_en), .B(round_r[0]), .Y(n663) );
  OA21XL U1182 ( .A0(round_r[1]), .A1(n663), .B0(n662), .Y(N398) );
  AOI2BB2X1 U1183 ( .B0(round_r[3]), .B1(n664), .A0N(round_r[3]), .A1N(n664), 
        .Y(N400) );
  OAI2BB1XL U1184 ( .A0N(round_r[3]), .A1N(n664), .B0(n671), .Y(n258) );
  OAI31XL U1185 ( .A0(n668), .A1(n671), .A2(n666), .B0(n673), .Y(n257) );
  CLKBUFX6 U520 ( .A(n3500), .Y(n3670) );
  DFFRX2 round_r_reg_3_ ( .D(N400), .CK(n674), .RN(n256), .Q(round_r[3]), .QN(
        n669) );
  CLKBUFX8 U533 ( .A(n590), .Y(n642) );
  CLKBUFX8 U557 ( .A(n4530), .Y(n4330) );
  BUFX4 U540 ( .A(n673), .Y(n3500) );
  INVX3 U548 ( .A(n666), .Y(n672) );
  NAND2X1 U549 ( .A(in_en), .B(DES_en), .Y(n666) );
  NAND2X6 U550 ( .A(n293), .B(n294), .Y(n565) );
  CLKAND2X8 U555 ( .A(n293), .B(n295), .Y(n627) );
  NOR2X6 U558 ( .A(fn_sel[0]), .B(n4310), .Y(n469) );
  NAND2X6 U649 ( .A(n294), .B(fn_sel[0]), .Y(n609) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_47 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_46 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_45 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_44 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_43 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_42 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_41 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_40 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_39 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_38 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_37 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_36 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_35 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_34 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_33 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_32 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_31 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_30 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_29 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_28 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_27 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_26 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_25 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_24 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_23 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_22 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_21 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_20 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_19 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_18 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_17 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_16 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_15 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_14 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_13 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_12 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_11 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_10 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_9 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_8 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_7 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_6 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_5 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_4 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_3 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_IOTDF_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  TLATNTSCAX2 latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
endmodule


module sbox ( R, K, sbox_out );
  input [31:0] R;
  input [47:0] K;
  output [31:0] sbox_out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556;

  OR2X2 U3 ( .A(n444), .B(n447), .Y(n435) );
  NAND2XL U5 ( .A(n186), .B(n185), .Y(n223) );
  NOR2XL U6 ( .A(n186), .B(n185), .Y(n189) );
  NOR2XL U7 ( .A(n185), .B(n187), .Y(n182) );
  OAI2BB2X1 U9 ( .B0(K[15]), .B1(R[10]), .A0N(K[15]), .A1N(R[10]), .Y(n4) );
  OAI2BB2X2 U10 ( .B0(K[39]), .B1(R[26]), .A0N(K[39]), .A1N(R[26]), .Y(n470)
         );
  NAND2XL U11 ( .A(n224), .B(n220), .Y(n219) );
  CLKXOR2X2 U13 ( .A(R[4]), .B(K[7]), .Y(n143) );
  NAND2X2 U14 ( .A(n409), .B(n351), .Y(n429) );
  AOI2BB2X2 U15 ( .B0(K[18]), .B1(R[11]), .A0N(K[18]), .A1N(R[11]), .Y(n409)
         );
  OA21XL U16 ( .A0(n102), .A1(n101), .B0(n100), .Y(n104) );
  INVX2 U17 ( .A(n97), .Y(n101) );
  INVX2 U18 ( .A(n479), .Y(n486) );
  CLKXOR2X2 U19 ( .A(R[24]), .B(K[35]), .Y(n290) );
  OAI2BB2X2 U20 ( .B0(R[20]), .B1(K[29]), .A0N(R[20]), .A1N(K[29]), .Y(n100)
         );
  OAI21X1 U21 ( .A0(n258), .A1(n250), .B0(n220), .Y(n245) );
  OAI2BB2X2 U22 ( .B0(R[19]), .B1(K[30]), .A0N(R[19]), .A1N(K[30]), .Y(n535)
         );
  NAND2XL U23 ( .A(n143), .B(n139), .Y(n138) );
  OAI2BB2X2 U24 ( .B0(K[9]), .B1(R[6]), .A0N(K[9]), .A1N(R[6]), .Y(n139) );
  OAI2BB2X2 U25 ( .B0(R[3]), .B1(K[6]), .A0N(R[3]), .A1N(K[6]), .Y(n141) );
  OAI21X1 U26 ( .A0(n2), .A1(n3), .B0(n47), .Y(n65) );
  NAND2XL U27 ( .A(n2), .B(n78), .Y(n47) );
  NOR2BX1 U28 ( .AN(n185), .B(n202), .Y(n188) );
  OAI2BB2X2 U29 ( .B0(R[0]), .B1(K[47]), .A0N(R[0]), .A1N(K[47]), .Y(n202) );
  NAND2XL U30 ( .A(n4), .B(n49), .Y(n50) );
  CLKXOR2X2 U31 ( .A(R[11]), .B(K[16]), .Y(n49) );
  OAI2BB2X2 U32 ( .B0(R[16]), .B1(K[23]), .A0N(R[16]), .A1N(K[23]), .Y(n417)
         );
  OAI2BB2X2 U33 ( .B0(R[31]), .B1(K[0]), .A0N(R[31]), .A1N(K[0]), .Y(n525) );
  OAI2BB2X2 U34 ( .B0(R[4]), .B1(K[5]), .A0N(R[4]), .A1N(K[5]), .Y(n522) );
  OAI22X2 U35 ( .A0(n470), .A1(n456), .B0(n472), .B1(n383), .Y(n437) );
  NOR2X2 U36 ( .A(n263), .B(n282), .Y(n542) );
  OAI2BB2X1 U37 ( .B0(R[7]), .B1(K[12]), .A0N(R[7]), .A1N(K[12]), .Y(n86) );
  INVX1 U38 ( .A(n86), .Y(n88) );
  INVX1 U39 ( .A(n50), .Y(n72) );
  XOR2X1 U44 ( .A(K[14]), .B(R[9]), .Y(n53) );
  INVX1 U45 ( .A(n53), .Y(n55) );
  XOR2X1 U46 ( .A(R[8]), .B(K[13]), .Y(n69) );
  INVX1 U47 ( .A(n69), .Y(n74) );
  NAND2XL U48 ( .A(n55), .B(n74), .Y(n3) );
  NOR2X1 U49 ( .A(n74), .B(n53), .Y(n76) );
  INVXL U50 ( .A(n76), .Y(n8) );
  NAND2X1 U51 ( .A(n53), .B(n74), .Y(n63) );
  NAND2X1 U52 ( .A(n8), .B(n63), .Y(n78) );
  INVXL U53 ( .A(n4), .Y(n43) );
  NOR2X1 U54 ( .A(n49), .B(n43), .Y(n16) );
  NAND2XL U55 ( .A(n16), .B(n2), .Y(n54) );
  INVX1 U56 ( .A(n16), .Y(n79) );
  NAND2XL U57 ( .A(n51), .B(n8), .Y(n46) );
  OAI22XL U58 ( .A0(n74), .A1(n54), .B0(n79), .B1(n46), .Y(n7) );
  NAND2XL U59 ( .A(n53), .B(n69), .Y(n61) );
  NOR2XL U60 ( .A(n2), .B(n61), .Y(n9) );
  NOR2XL U61 ( .A(n51), .B(n3), .Y(n23) );
  NOR2XL U62 ( .A(n9), .B(n23), .Y(n5) );
  NAND2XL U63 ( .A(n49), .B(n43), .Y(n17) );
  NOR2X1 U64 ( .A(n49), .B(n4), .Y(n84) );
  AOI2BB2X1 U65 ( .B0(n5), .B1(n17), .A0N(n5), .A1N(n84), .Y(n6) );
  AOI211XL U66 ( .A0(n72), .A1(n65), .B0(n7), .C0(n6), .Y(n13) );
  INVXL U67 ( .A(n47), .Y(n15) );
  INVXL U68 ( .A(n17), .Y(n27) );
  NAND2X1 U69 ( .A(n51), .B(n27), .Y(n77) );
  OAI22XL U70 ( .A0(n61), .A1(n77), .B0(n8), .B1(n79), .Y(n11) );
  NAND2X1 U71 ( .A(n51), .B(n72), .Y(n73) );
  INVX1 U72 ( .A(n84), .Y(n64) );
  INVXL U73 ( .A(n9), .Y(n48) );
  NAND2XL U74 ( .A(n76), .B(n2), .Y(n22) );
  NAND2XL U75 ( .A(n48), .B(n22), .Y(n45) );
  OAI22XL U76 ( .A0(n76), .A1(n73), .B0(n64), .B1(n45), .Y(n10) );
  AOI211XL U77 ( .A0(n49), .A1(n15), .B0(n11), .C0(n10), .Y(n12) );
  OAI22XL U78 ( .A0(n88), .A1(n13), .B0(n86), .B1(n12), .Y(sbox_out[13]) );
  OAI22X1 U79 ( .A0(n51), .A1(n63), .B0(n2), .B1(n78), .Y(n70) );
  AOI21XL U80 ( .A0(n77), .A1(n54), .B0(n55), .Y(n21) );
  NOR2XL U81 ( .A(n2), .B(n78), .Y(n14) );
  NOR2X1 U82 ( .A(n15), .B(n14), .Y(n80) );
  NAND3XL U83 ( .A(n51), .B(n16), .C(n78), .Y(n19) );
  NOR2XL U84 ( .A(n51), .B(n17), .Y(n62) );
  NAND2XL U85 ( .A(n62), .B(n63), .Y(n18) );
  OAI211XL U86 ( .A0(n80), .A1(n64), .B0(n19), .C0(n18), .Y(n20) );
  AOI211XL U87 ( .A0(n72), .A1(n70), .B0(n21), .C0(n20), .Y(n29) );
  AND3X1 U88 ( .A(n72), .B(n22), .C(n63), .Y(n26) );
  AOI2BB1X1 U89 ( .A0N(n55), .A1N(n2), .B0(n23), .Y(n24) );
  OAI22XL U90 ( .A0(n24), .A1(n64), .B0(n79), .B1(n70), .Y(n25) );
  AOI211XL U91 ( .A0(n27), .A1(n65), .B0(n26), .C0(n25), .Y(n28) );
  OAI22XL U92 ( .A0(n88), .A1(n29), .B0(n86), .B1(n28), .Y(sbox_out[21]) );
  OAI2BB2X1 U93 ( .B0(R[15]), .B1(K[24]), .A0N(R[15]), .A1N(K[24]), .Y(n530)
         );
  INVX1 U94 ( .A(n530), .Y(n533) );
  OAI2BB2X1 U95 ( .B0(R[19]), .B1(K[28]), .A0N(R[19]), .A1N(K[28]), .Y(n97) );
  OAI2BB2X1 U96 ( .B0(R[18]), .B1(K[27]), .A0N(R[18]), .A1N(K[27]), .Y(n34) );
  INVX1 U97 ( .A(n34), .Y(n109) );
  XOR2X1 U98 ( .A(R[16]), .B(K[25]), .Y(n96) );
  OAI2BB2X1 U99 ( .B0(K[26]), .B1(R[17]), .A0N(K[26]), .A1N(R[17]), .Y(n35) );
  NAND2X1 U100 ( .A(n96), .B(n35), .Y(n102) );
  INVX1 U101 ( .A(n100), .Y(n106) );
  NAND2X1 U102 ( .A(n106), .B(n102), .Y(n112) );
  INVXL U103 ( .A(n96), .Y(n31) );
  NAND2XL U104 ( .A(n34), .B(n31), .Y(n37) );
  OAI2BB1XL U105 ( .A0N(n102), .A1N(n37), .B0(n100), .Y(n30) );
  OAI221XL U106 ( .A0(n109), .A1(n102), .B0(n34), .B1(n112), .C0(n30), .Y(n33)
         );
  INVXL U107 ( .A(n35), .Y(n99) );
  NOR2XL U108 ( .A(n34), .B(n31), .Y(n91) );
  OAI211XL U109 ( .A0(n99), .A1(n91), .B0(n101), .C0(n37), .Y(n90) );
  NOR2XL U110 ( .A(n35), .B(n96), .Y(n92) );
  INVXL U111 ( .A(n92), .Y(n36) );
  NAND3XL U112 ( .A(n101), .B(n102), .C(n36), .Y(n89) );
  OAI22XL U113 ( .A0(n106), .A1(n90), .B0(n100), .B1(n89), .Y(n32) );
  AOI21XL U114 ( .A0(n97), .A1(n33), .B0(n32), .Y(n532) );
  NOR2XL U115 ( .A(n109), .B(n36), .Y(n38) );
  NOR3XL U116 ( .A(n106), .B(n101), .C(n38), .Y(n95) );
  AO22X1 U117 ( .A0(n109), .A1(n35), .B0(n34), .B1(n102), .Y(n42) );
  NAND2X1 U118 ( .A(n109), .B(n36), .Y(n111) );
  AOI21XL U119 ( .A0(n111), .A1(n37), .B0(n101), .Y(n41) );
  NOR3BX1 U120 ( .AN(n111), .B(n38), .C(n97), .Y(n39) );
  AOI2BB2X1 U121 ( .B0(n39), .B1(n112), .A0N(n39), .A1N(n100), .Y(n40) );
  AOI2BB2X1 U122 ( .B0(n95), .B1(n42), .A0N(n41), .A1N(n40), .Y(n531) );
  OAI22XL U123 ( .A0(n533), .A1(n532), .B0(n530), .B1(n531), .Y(sbox_out[12])
         );
  OAI2BB2XL U124 ( .B0(n45), .B1(n79), .A0N(n43), .A1N(n80), .Y(n44) );
  AOI21XL U125 ( .A0(n72), .A1(n45), .B0(n44), .Y(n60) );
  NAND2XL U126 ( .A(n47), .B(n46), .Y(n58) );
  OAI2BB2XL U127 ( .B0(n49), .B1(n48), .A0N(n62), .A1N(n69), .Y(n57) );
  OAI21XL U128 ( .A0(n51), .A1(n50), .B0(n77), .Y(n68) );
  INVXL U129 ( .A(n68), .Y(n52) );
  AOI32XL U130 ( .A0(n73), .A1(n55), .A2(n54), .B0(n53), .B1(n52), .Y(n56) );
  AOI211XL U131 ( .A0(n84), .A1(n58), .B0(n57), .C0(n56), .Y(n59) );
  OAI22XL U132 ( .A0(n88), .A1(n60), .B0(n86), .B1(n59), .Y(sbox_out[28]) );
  OAI2BB2XL U133 ( .B0(n64), .B1(n63), .A0N(n62), .A1N(n61), .Y(n67) );
  OAI22XL U134 ( .A0(n69), .A1(n73), .B0(n65), .B1(n79), .Y(n66) );
  AOI211XL U135 ( .A0(n69), .A1(n68), .B0(n67), .C0(n66), .Y(n87) );
  INVXL U136 ( .A(n70), .Y(n83) );
  NAND2XL U137 ( .A(n72), .B(n2), .Y(n75) );
  OAI22XL U138 ( .A0(n76), .A1(n75), .B0(n74), .B1(n73), .Y(n82) );
  OAI22XL U139 ( .A0(n80), .A1(n79), .B0(n78), .B1(n77), .Y(n81) );
  AOI211XL U140 ( .A0(n84), .A1(n83), .B0(n82), .C0(n81), .Y(n85) );
  OAI22XL U141 ( .A0(n88), .A1(n87), .B0(n86), .B1(n85), .Y(sbox_out[3]) );
  NAND2XL U142 ( .A(n100), .B(n89), .Y(n98) );
  OAI31XL U143 ( .A0(n92), .A1(n101), .A2(n91), .B0(n90), .Y(n93) );
  NAND2XL U144 ( .A(n106), .B(n93), .Y(n94) );
  AOI22XL U145 ( .A0(n95), .A1(n111), .B0(n98), .B1(n94), .Y(n528) );
  AOI222XL U146 ( .A0(n98), .A1(n97), .B0(n98), .B1(n112), .C0(n97), .C1(n96), 
        .Y(n108) );
  NAND2XL U147 ( .A(n102), .B(n101), .Y(n103) );
  OAI21XL U148 ( .A0(n101), .A1(n99), .B0(n103), .Y(n105) );
  AO22X1 U149 ( .A0(n106), .A1(n105), .B0(n104), .B1(n103), .Y(n107) );
  AOI2BB2X1 U150 ( .B0(n109), .B1(n108), .A0N(n109), .A1N(n107), .Y(n110) );
  OAI21XL U151 ( .A0(n112), .A1(n111), .B0(n110), .Y(n529) );
  OAI22XL U152 ( .A0(n533), .A1(n528), .B0(n530), .B1(n529), .Y(sbox_out[31])
         );
  XOR2X1 U153 ( .A(R[8]), .B(K[11]), .Y(n140) );
  NAND2X1 U154 ( .A(n140), .B(n141), .Y(n331) );
  OAI2BB2XL U155 ( .B0(R[7]), .B1(K[10]), .A0N(R[7]), .A1N(K[10]), .Y(n113) );
  BUFX2 U156 ( .A(n113), .Y(n323) );
  OAI2BB2X2 U159 ( .B0(K[8]), .B1(R[5]), .A0N(K[8]), .A1N(R[5]), .Y(n155) );
  OAI22XL U160 ( .A0(n114), .A1(n145), .B0(n139), .B1(n310), .Y(n115) );
  NOR2X1 U161 ( .A(n143), .B(n155), .Y(n160) );
  NOR2X1 U162 ( .A(n310), .B(n160), .Y(n317) );
  NOR2XL U163 ( .A(n114), .B(n317), .Y(n132) );
  NOR2XL U164 ( .A(n310), .B(n132), .Y(n321) );
  AOI2BB2X1 U165 ( .B0(n323), .B1(n115), .A0N(n323), .A1N(n321), .Y(n166) );
  INVXL U166 ( .A(n323), .Y(n326) );
  INVXL U167 ( .A(n141), .Y(n146) );
  INVXL U168 ( .A(n317), .Y(n161) );
  AOI211XL U169 ( .A0(n146), .A1(n114), .B0(n140), .C0(n161), .Y(n120) );
  NOR2X1 U170 ( .A(n141), .B(n140), .Y(n116) );
  NAND2XL U171 ( .A(n116), .B(n155), .Y(n133) );
  OAI22X1 U172 ( .A0(n143), .A1(n139), .B0(n145), .B1(n114), .Y(n156) );
  INVX1 U173 ( .A(n140), .Y(n154) );
  NOR2X1 U174 ( .A(n141), .B(n154), .Y(n314) );
  INVX1 U175 ( .A(n314), .Y(n318) );
  OAI22XL U176 ( .A0(n143), .A1(n133), .B0(n156), .B1(n318), .Y(n119) );
  NAND2X1 U177 ( .A(n114), .B(n317), .Y(n311) );
  NAND2XL U178 ( .A(n141), .B(n154), .Y(n167) );
  INVXL U179 ( .A(n167), .Y(n327) );
  INVX1 U180 ( .A(n116), .Y(n320) );
  NOR3XL U181 ( .A(n310), .B(n114), .C(n320), .Y(n325) );
  NOR3XL U182 ( .A(n114), .B(n145), .C(n318), .Y(n164) );
  AOI211XL U183 ( .A0(n327), .A1(n156), .B0(n325), .C0(n164), .Y(n117) );
  NAND2XL U184 ( .A(n116), .B(n114), .Y(n316) );
  OAI211XL U185 ( .A0(n311), .A1(n318), .B0(n117), .C0(n134), .Y(n118) );
  OAI32XL U186 ( .A0(n326), .A1(n120), .A2(n119), .B0(n323), .B1(n118), .Y(
        n121) );
  OAI21XL U187 ( .A0(n331), .A1(n166), .B0(n121), .Y(sbox_out[20]) );
  INVX1 U188 ( .A(n522), .Y(n509) );
  INVX1 U189 ( .A(n525), .Y(n527) );
  BUFX2 U192 ( .A(n122), .Y(n518) );
  OAI2BB2X1 U193 ( .B0(R[3]), .B1(K[4]), .A0N(R[3]), .A1N(K[4]), .Y(n499) );
  OAI2BB2XL U194 ( .B0(K[3]), .B1(R[2]), .A0N(K[3]), .A1N(R[2]), .Y(n124) );
  INVX1 U195 ( .A(n124), .Y(n510) );
  NOR2X1 U196 ( .A(n499), .B(n510), .Y(n503) );
  INVX1 U197 ( .A(n503), .Y(n297) );
  NAND2XL U200 ( .A(n512), .B(n499), .Y(n126) );
  NAND2XL U201 ( .A(n297), .B(n126), .Y(n303) );
  INVX1 U202 ( .A(n499), .Y(n511) );
  NOR2X1 U203 ( .A(n124), .B(n511), .Y(n490) );
  INVX1 U204 ( .A(n512), .Y(n300) );
  OAI21XL U205 ( .A0(n490), .A1(n518), .B0(n300), .Y(n492) );
  OAI21XL U206 ( .A0(n490), .A1(n300), .B0(n492), .Y(n487) );
  OAI2BB1XL U207 ( .A0N(n518), .A1N(n303), .B0(n487), .Y(n125) );
  AOI2BB2X1 U208 ( .B0(n527), .B1(n125), .A0N(n527), .A1N(n125), .Y(n130) );
  INVXL U209 ( .A(n490), .Y(n127) );
  NAND2X1 U210 ( .A(n297), .B(n127), .Y(n496) );
  NOR2XL U211 ( .A(n512), .B(n496), .Y(n304) );
  AOI211XL U212 ( .A0(n512), .A1(n496), .B0(n497), .C0(n304), .Y(n305) );
  NAND2XL U213 ( .A(n511), .B(n300), .Y(n296) );
  AOI21XL U214 ( .A0(n296), .A1(n126), .B0(n518), .Y(n506) );
  OAI21X1 U215 ( .A0(n512), .A1(n127), .B0(n297), .Y(n519) );
  OAI2BB2XL U216 ( .B0(n497), .B1(n519), .A0N(n497), .A1N(n519), .Y(n128) );
  OAI32XL U217 ( .A0(n525), .A1(n305), .A2(n506), .B0(n128), .B1(n527), .Y(
        n129) );
  OAI22XL U218 ( .A0(n509), .A1(n130), .B0(n522), .B1(n129), .Y(sbox_out[5])
         );
  OAI21XL U219 ( .A0(n145), .A1(n155), .B0(n114), .Y(n131) );
  OAI31XL U220 ( .A0(n145), .A1(n114), .A2(n155), .B0(n131), .Y(n137) );
  NAND2BX1 U221 ( .AN(n132), .B(n311), .Y(n315) );
  OAI211XL U222 ( .A0(n167), .A1(n315), .B0(n134), .C0(n133), .Y(n136) );
  NOR2XL U223 ( .A(n331), .B(n137), .Y(n135) );
  AOI211XL U224 ( .A0(n137), .A1(n314), .B0(n136), .C0(n135), .Y(n153) );
  OAI21XL U225 ( .A0(n331), .A1(n138), .B0(n323), .Y(n152) );
  NAND2XL U226 ( .A(n314), .B(n139), .Y(n150) );
  NOR2XL U227 ( .A(n140), .B(n139), .Y(n142) );
  OAI21XL U228 ( .A0(n143), .A1(n142), .B0(n141), .Y(n144) );
  NAND3XL U229 ( .A(n144), .B(n155), .C(n150), .Y(n149) );
  NOR2XL U230 ( .A(n146), .B(n145), .Y(n147) );
  OAI211XL U231 ( .A0(n160), .A1(n147), .B0(n114), .C0(n154), .Y(n148) );
  OAI211XL U232 ( .A0(n155), .A1(n150), .B0(n149), .C0(n148), .Y(n151) );
  OAI22XL U233 ( .A0(n153), .A1(n323), .B0(n152), .B1(n151), .Y(sbox_out[10])
         );
  NOR3XL U234 ( .A(n114), .B(n155), .C(n154), .Y(n158) );
  OAI22XL U235 ( .A0(n320), .A1(n156), .B0(n311), .B1(n331), .Y(n157) );
  AOI211XL U236 ( .A0(n314), .A1(n160), .B0(n158), .C0(n157), .Y(n159) );
  NAND2XL U237 ( .A(n323), .B(n159), .Y(n163) );
  AOI2BB2X1 U238 ( .B0(n114), .B1(n160), .A0N(n114), .A1N(n160), .Y(n319) );
  OAI222XL U239 ( .A0(n318), .A1(n161), .B0(n331), .B1(n319), .C0(n320), .C1(
        n315), .Y(n162) );
  OAI22XL U240 ( .A0(n164), .A1(n163), .B0(n323), .B1(n162), .Y(n165) );
  OAI21XL U241 ( .A0(n167), .A1(n166), .B0(n165), .Y(sbox_out[0]) );
  XOR2X1 U242 ( .A(K[32]), .B(R[21]), .Y(n169) );
  INVX1 U243 ( .A(n169), .Y(n536) );
  NOR2X1 U244 ( .A(n536), .B(n535), .Y(n544) );
  INVX1 U245 ( .A(n290), .Y(n556) );
  NOR2X1 U246 ( .A(n535), .B(n169), .Y(n291) );
  OAI22XL U247 ( .A0(n290), .A1(n544), .B0(n556), .B1(n291), .Y(n271) );
  OAI2BB2X1 U249 ( .B0(R[20]), .B1(K[31]), .A0N(R[20]), .A1N(K[31]), .Y(n280)
         );
  INVX1 U250 ( .A(n280), .Y(n537) );
  BUFX2 U252 ( .A(n168), .Y(n540) );
  OAI2BB2X1 U253 ( .B0(K[33]), .B1(R[22]), .A0N(K[33]), .A1N(R[22]), .Y(n273)
         );
  INVXL U254 ( .A(n273), .Y(n172) );
  NOR2X1 U255 ( .A(n172), .B(n537), .Y(n263) );
  NOR2X1 U256 ( .A(n273), .B(n280), .Y(n282) );
  NOR2XL U257 ( .A(n540), .B(n542), .Y(n173) );
  INVXL U258 ( .A(n173), .Y(n294) );
  OAI21XL U259 ( .A0(n534), .A1(n537), .B0(n294), .Y(n180) );
  INVXL U260 ( .A(n535), .Y(n272) );
  NOR2X1 U261 ( .A(n536), .B(n272), .Y(n541) );
  INVX1 U262 ( .A(n541), .Y(n545) );
  INVXL U263 ( .A(n263), .Y(n265) );
  OA21XL U264 ( .A0(n265), .A1(n169), .B0(n540), .Y(n171) );
  INVXL U265 ( .A(n542), .Y(n551) );
  NAND2X1 U266 ( .A(n536), .B(n535), .Y(n279) );
  INVXL U267 ( .A(n291), .Y(n262) );
  OAI21XL U268 ( .A0(n263), .A1(n262), .B0(n534), .Y(n547) );
  AOI2BB1X1 U269 ( .A0N(n551), .A1N(n279), .B0(n547), .Y(n170) );
  NAND2X1 U270 ( .A(n541), .B(n540), .Y(n550) );
  OAI222XL U271 ( .A0(n545), .A1(n294), .B0(n171), .B1(n170), .C0(n550), .C1(
        n282), .Y(n178) );
  INVXL U272 ( .A(n180), .Y(n176) );
  INVX1 U273 ( .A(n544), .Y(n281) );
  NOR2X1 U274 ( .A(n280), .B(n172), .Y(n543) );
  NOR2X1 U275 ( .A(n534), .B(n543), .Y(n276) );
  NAND3BX1 U276 ( .AN(n276), .B(n541), .C(n542), .Y(n175) );
  INVX1 U277 ( .A(n279), .Y(n549) );
  OAI21XL U278 ( .A0(n173), .A1(n276), .B0(n549), .Y(n174) );
  OAI211XL U279 ( .A0(n176), .A1(n281), .B0(n175), .C0(n174), .Y(n177) );
  OAI22XL U280 ( .A0(n290), .A1(n178), .B0(n556), .B1(n177), .Y(n179) );
  OAI21XL U281 ( .A0(n271), .A1(n180), .B0(n179), .Y(sbox_out[8]) );
  XOR2X1 U282 ( .A(R[28]), .B(K[43]), .Y(n192) );
  XOR2X1 U283 ( .A(K[45]), .B(R[30]), .Y(n212) );
  NAND2X1 U284 ( .A(n192), .B(n212), .Y(n224) );
  INVX1 U285 ( .A(n192), .Y(n221) );
  INVX1 U286 ( .A(n212), .Y(n222) );
  NAND2X1 U287 ( .A(n221), .B(n222), .Y(n241) );
  NAND2X1 U288 ( .A(n224), .B(n241), .Y(n250) );
  AOI2BB2X1 U289 ( .B0(R[27]), .B1(K[42]), .A0N(R[27]), .A1N(K[42]), .Y(n185)
         );
  OAI2BB2X1 U290 ( .B0(K[44]), .B1(R[29]), .A0N(K[44]), .A1N(R[29]), .Y(n187)
         );
  NAND2X1 U291 ( .A(n182), .B(n202), .Y(n243) );
  INVXL U292 ( .A(n243), .Y(n199) );
  NAND3X1 U293 ( .A(n187), .B(n202), .C(n185), .Y(n217) );
  INVXL U294 ( .A(n217), .Y(n246) );
  INVXL U295 ( .A(n187), .Y(n186) );
  NAND2XL U296 ( .A(n186), .B(n188), .Y(n213) );
  INVXL U297 ( .A(n213), .Y(n239) );
  AOI222XL U298 ( .A0(n250), .A1(n199), .B0(n222), .B1(n246), .C0(n224), .C1(
        n239), .Y(n196) );
  INVX1 U301 ( .A(n258), .Y(n232) );
  INVXL U302 ( .A(n189), .Y(n197) );
  NOR2X1 U303 ( .A(n202), .B(n197), .Y(n234) );
  NAND2XL U304 ( .A(n258), .B(n221), .Y(n220) );
  INVX1 U305 ( .A(n202), .Y(n198) );
  NAND2X1 U306 ( .A(n198), .B(n182), .Y(n240) );
  NAND2XL U307 ( .A(n258), .B(n212), .Y(n183) );
  OAI31XL U308 ( .A0(n258), .A1(n212), .A2(n221), .B0(n183), .Y(n184) );
  INVXL U309 ( .A(n184), .Y(n218) );
  NAND2XL U310 ( .A(n220), .B(n218), .Y(n242) );
  NOR2XL U311 ( .A(n240), .B(n242), .Y(n191) );
  INVX1 U312 ( .A(n241), .Y(n238) );
  INVXL U313 ( .A(n250), .Y(n216) );
  OAI22XL U314 ( .A0(n258), .A1(n238), .B0(n232), .B1(n216), .Y(n204) );
  NOR2X1 U315 ( .A(n198), .B(n223), .Y(n235) );
  NAND2X1 U316 ( .A(n188), .B(n187), .Y(n249) );
  INVXL U317 ( .A(n249), .Y(n228) );
  NOR2XL U318 ( .A(n235), .B(n228), .Y(n203) );
  NAND2XL U319 ( .A(n189), .B(n218), .Y(n201) );
  OAI22XL U320 ( .A0(n204), .A1(n203), .B0(n198), .B1(n201), .Y(n190) );
  AOI211XL U321 ( .A0(n234), .A1(n219), .B0(n191), .C0(n190), .Y(n195) );
  NOR2XL U322 ( .A(n221), .B(n213), .Y(n254) );
  NOR2X1 U323 ( .A(n222), .B(n192), .Y(n251) );
  INVX1 U324 ( .A(n251), .Y(n236) );
  OAI22XL U325 ( .A0(n238), .A1(n217), .B0(n243), .B1(n236), .Y(n193) );
  OAI21XL U326 ( .A0(n254), .A1(n193), .B0(n232), .Y(n194) );
  OAI211XL U327 ( .A0(n196), .A1(n232), .B0(n195), .C0(n194), .Y(sbox_out[9])
         );
  NOR2X1 U328 ( .A(n198), .B(n197), .Y(n248) );
  OAI22XL U329 ( .A0(n251), .A1(n199), .B0(n236), .B1(n248), .Y(n200) );
  OAI21XL U330 ( .A0(n221), .A1(n217), .B0(n200), .Y(n208) );
  OAI21XL U331 ( .A0(n238), .A1(n232), .B0(n224), .Y(n209) );
  OAI22XL U332 ( .A0(n203), .A1(n209), .B0(n202), .B1(n201), .Y(n207) );
  AOI2BB2X1 U333 ( .B0(n248), .B1(n236), .A0N(n250), .A1N(n217), .Y(n205) );
  OAI22XL U334 ( .A0(n258), .A1(n205), .B0(n204), .B1(n240), .Y(n206) );
  AOI211XL U335 ( .A0(n258), .A1(n208), .B0(n207), .C0(n206), .Y(n211) );
  NAND2XL U336 ( .A(n239), .B(n209), .Y(n210) );
  OAI211XL U337 ( .A0(n241), .A1(n243), .B0(n211), .C0(n210), .Y(sbox_out[15])
         );
  INVXL U338 ( .A(n224), .Y(n225) );
  OAI22XL U339 ( .A0(n225), .A1(n240), .B0(n212), .B1(n249), .Y(n215) );
  OAI22XL U340 ( .A0(n216), .A1(n213), .B0(n224), .B1(n243), .Y(n214) );
  AOI211XL U341 ( .A0(n216), .A1(n235), .B0(n215), .C0(n214), .Y(n233) );
  AOI2BB2X1 U342 ( .B0(n248), .B1(n219), .A0N(n218), .A1N(n217), .Y(n231) );
  OAI2BB2XL U343 ( .B0(n223), .B1(n222), .A0N(n221), .A1N(n235), .Y(n227) );
  OAI22XL U344 ( .A0(n225), .A1(n243), .B0(n224), .B1(n240), .Y(n226) );
  AOI211XL U345 ( .A0(n228), .A1(n250), .B0(n227), .C0(n226), .Y(n229) );
  AOI2BB2X1 U346 ( .B0(n234), .B1(n245), .A0N(n258), .A1N(n229), .Y(n230) );
  OAI211XL U347 ( .A0(n233), .A1(n232), .B0(n231), .C0(n230), .Y(sbox_out[1])
         );
  NOR2XL U348 ( .A(n235), .B(n234), .Y(n252) );
  AOI32XL U349 ( .A0(n249), .A1(n236), .A2(n240), .B0(n251), .B1(n252), .Y(
        n237) );
  AOI21XL U350 ( .A0(n239), .A1(n238), .B0(n237), .Y(n257) );
  INVXL U351 ( .A(n245), .Y(n247) );
  OAI22XL U352 ( .A0(n243), .A1(n242), .B0(n241), .B1(n240), .Y(n244) );
  AOI221XL U353 ( .A0(n248), .A1(n247), .B0(n246), .B1(n245), .C0(n244), .Y(
        n256) );
  OAI22XL U354 ( .A0(n252), .A1(n251), .B0(n250), .B1(n249), .Y(n253) );
  OAI21XL U355 ( .A0(n254), .A1(n253), .B0(n258), .Y(n255) );
  OAI211XL U356 ( .A0(n258), .A1(n257), .B0(n256), .C0(n255), .Y(sbox_out[23])
         );
  NOR2X1 U357 ( .A(n537), .B(n273), .Y(n275) );
  NAND2X1 U358 ( .A(n275), .B(n540), .Y(n287) );
  NOR2XL U359 ( .A(n280), .B(n279), .Y(n260) );
  NOR2XL U360 ( .A(n282), .B(n281), .Y(n259) );
  AOI211XL U361 ( .A0(n541), .A1(n273), .B0(n260), .C0(n259), .Y(n261) );
  OAI222XL U362 ( .A0(n279), .A1(n287), .B0(n550), .B1(n263), .C0(n540), .C1(
        n261), .Y(n267) );
  OA22X1 U363 ( .A0(n545), .A1(n263), .B0(n275), .B1(n262), .Y(n264) );
  OAI222XL U364 ( .A0(n550), .A1(n265), .B0(n281), .B1(n542), .C0(n540), .C1(
        n264), .Y(n266) );
  OAI22XL U365 ( .A0(n290), .A1(n267), .B0(n556), .B1(n266), .Y(n270) );
  OAI22XL U366 ( .A0(n290), .A1(n291), .B0(n556), .B1(n549), .Y(n295) );
  INVXL U367 ( .A(n295), .Y(n268) );
  OAI211XL U368 ( .A0(n275), .A1(n540), .B0(n287), .C0(n268), .Y(n269) );
  OAI211XL U369 ( .A0(n271), .A1(n287), .B0(n270), .C0(n269), .Y(sbox_out[16])
         );
  NAND2XL U370 ( .A(n272), .B(n540), .Y(n274) );
  AOI2BB2X1 U371 ( .B0(n274), .B1(n542), .A0N(n274), .A1N(n273), .Y(n278) );
  OAI21XL U372 ( .A0(n276), .A1(n275), .B0(n549), .Y(n277) );
  OAI21XL U373 ( .A0(n536), .A1(n278), .B0(n277), .Y(n289) );
  INVX1 U374 ( .A(n282), .Y(n548) );
  OAI22XL U375 ( .A0(n280), .A1(n279), .B0(n548), .B1(n281), .Y(n284) );
  OAI22XL U376 ( .A0(n282), .A1(n281), .B0(n543), .B1(n545), .Y(n283) );
  OAI22XL U377 ( .A0(n534), .A1(n284), .B0(n540), .B1(n283), .Y(n286) );
  NAND2XL U378 ( .A(n542), .B(n291), .Y(n285) );
  OAI211XL U379 ( .A0(n287), .A1(n545), .B0(n286), .C0(n285), .Y(n288) );
  OAI22XL U380 ( .A0(n290), .A1(n289), .B0(n556), .B1(n288), .Y(n293) );
  NAND3XL U381 ( .A(n542), .B(n291), .C(n540), .Y(n292) );
  OAI211XL U382 ( .A0(n295), .A1(n294), .B0(n293), .C0(n292), .Y(sbox_out[2])
         );
  AOI211XL U383 ( .A0(n510), .A1(n518), .B0(n511), .C0(n509), .Y(n301) );
  AOI211XL U384 ( .A0(n297), .A1(n296), .B0(n497), .C0(n522), .Y(n299) );
  NOR2XL U385 ( .A(n509), .B(n503), .Y(n302) );
  AOI211XL U386 ( .A0(n509), .A1(n519), .B0(n302), .C0(n518), .Y(n298) );
  AOI211XL U387 ( .A0(n301), .A1(n300), .B0(n299), .C0(n298), .Y(n309) );
  NAND2XL U388 ( .A(n518), .B(n512), .Y(n489) );
  INVXL U389 ( .A(n489), .Y(n502) );
  NAND2XL U390 ( .A(n502), .B(n302), .Y(n521) );
  NOR2XL U391 ( .A(n497), .B(n303), .Y(n308) );
  NAND2XL U392 ( .A(n512), .B(n497), .Y(n498) );
  INVXL U393 ( .A(n304), .Y(n488) );
  OAI22XL U394 ( .A0(n510), .A1(n498), .B0(n518), .B1(n488), .Y(n307) );
  OAI21XL U395 ( .A0(n305), .A1(n307), .B0(n522), .Y(n306) );
  OAI31XL U396 ( .A0(n522), .A1(n308), .A2(n307), .B0(n306), .Y(n526) );
  AOI32XL U397 ( .A0(n309), .A1(n527), .A2(n521), .B0(n526), .B1(n525), .Y(
        sbox_out[11]) );
  AOI2BB2X1 U398 ( .B0(n323), .B1(n310), .A0N(n323), .A1N(n310), .Y(n312) );
  OAI21XL U399 ( .A0(n114), .A1(n312), .B0(n311), .Y(n330) );
  OAI2BB2XL U400 ( .B0(n317), .B1(n316), .A0N(n315), .A1N(n314), .Y(n324) );
  OAI22XL U401 ( .A0(n321), .A1(n320), .B0(n319), .B1(n318), .Y(n322) );
  OAI32XL U402 ( .A0(n326), .A1(n325), .A2(n324), .B0(n323), .B1(n322), .Y(
        n329) );
  NAND2XL U403 ( .A(n330), .B(n327), .Y(n328) );
  OAI211XL U404 ( .A0(n331), .A1(n330), .B0(n329), .C0(n328), .Y(sbox_out[25])
         );
  XOR2X1 U405 ( .A(K[20]), .B(R[13]), .Y(n333) );
  NOR2X1 U406 ( .A(n333), .B(n409), .Y(n419) );
  OAI2BB2X2 U410 ( .B0(K[19]), .B1(R[12]), .A0N(K[19]), .A1N(R[12]), .Y(n369)
         );
  NAND2X1 U411 ( .A(n369), .B(n366), .Y(n374) );
  INVX1 U412 ( .A(n374), .Y(n361) );
  NOR2X1 U413 ( .A(n369), .B(n366), .Y(n372) );
  NOR2X1 U414 ( .A(n361), .B(n372), .Y(n408) );
  INVX1 U415 ( .A(n408), .Y(n400) );
  NOR2XL U416 ( .A(n421), .B(n400), .Y(n411) );
  INVXL U417 ( .A(n333), .Y(n351) );
  NOR2X1 U418 ( .A(n351), .B(n409), .Y(n425) );
  INVX1 U419 ( .A(n425), .Y(n371) );
  OAI22XL U420 ( .A0(n361), .A1(n429), .B0(n369), .B1(n371), .Y(n334) );
  AOI211XL U421 ( .A0(n419), .A1(n366), .B0(n411), .C0(n334), .Y(n344) );
  INVX1 U422 ( .A(n417), .Y(n423) );
  XOR2X1 U423 ( .A(R[15]), .B(K[22]), .Y(n415) );
  NAND2X1 U426 ( .A(n423), .B(n335), .Y(n401) );
  NOR2XL U427 ( .A(n408), .B(n421), .Y(n406) );
  INVX1 U428 ( .A(n429), .Y(n358) );
  INVX1 U430 ( .A(n419), .Y(n370) );
  AOI2BB2X1 U431 ( .B0(n358), .B1(n360), .A0N(n370), .A1N(n369), .Y(n336) );
  OAI211XL U432 ( .A0(n374), .A1(n371), .B0(n336), .C0(n335), .Y(n340) );
  INVX1 U433 ( .A(n369), .Y(n403) );
  NAND2XL U434 ( .A(n366), .B(n403), .Y(n350) );
  INVX1 U435 ( .A(n350), .Y(n362) );
  NAND2X1 U436 ( .A(n360), .B(n369), .Y(n407) );
  OAI22XL U437 ( .A0(n403), .A1(n370), .B0(n350), .B1(n429), .Y(n337) );
  AOI211XL U438 ( .A0(n425), .A1(n407), .B0(n335), .C0(n337), .Y(n338) );
  OAI21XL U439 ( .A0(n362), .A1(n421), .B0(n338), .Y(n339) );
  OAI211XL U440 ( .A0(n406), .A1(n340), .B0(n417), .C0(n339), .Y(n343) );
  NOR2XL U441 ( .A(n371), .B(n400), .Y(n405) );
  NOR2XL U442 ( .A(n408), .B(n429), .Y(n347) );
  INVXL U443 ( .A(n372), .Y(n359) );
  OAI22XL U444 ( .A0(n366), .A1(n370), .B0(n421), .B1(n359), .Y(n341) );
  NOR2X1 U445 ( .A(n417), .B(n335), .Y(n365) );
  OAI31XL U446 ( .A0(n405), .A1(n347), .A2(n341), .B0(n365), .Y(n342) );
  OAI211XL U447 ( .A0(n344), .A1(n401), .B0(n343), .C0(n342), .Y(sbox_out[24])
         );
  INVXL U448 ( .A(n421), .Y(n367) );
  NOR2XL U449 ( .A(n362), .B(n371), .Y(n357) );
  AOI211XL U450 ( .A0(n367), .A1(n374), .B0(n357), .C0(n335), .Y(n356) );
  NOR2XL U451 ( .A(n421), .B(n407), .Y(n346) );
  OAI22XL U452 ( .A0(n372), .A1(n370), .B0(n360), .B1(n371), .Y(n345) );
  OAI31XL U453 ( .A0(n415), .A1(n346), .A2(n345), .B0(n417), .Y(n355) );
  NOR2XL U454 ( .A(n347), .B(n401), .Y(n349) );
  OAI22XL U455 ( .A0(n335), .A1(n361), .B0(n415), .B1(n374), .Y(n420) );
  INVXL U456 ( .A(n365), .Y(n402) );
  OAI22XL U457 ( .A0(n423), .A1(n420), .B0(n362), .B1(n402), .Y(n348) );
  AOI222XL U458 ( .A0(n349), .A1(n358), .B0(n349), .B1(n400), .C0(n358), .C1(
        n348), .Y(n354) );
  OAI22XL U459 ( .A0(n372), .A1(n370), .B0(n351), .B1(n350), .Y(n352) );
  NAND2XL U460 ( .A(n365), .B(n352), .Y(n353) );
  OAI211XL U461 ( .A0(n356), .A1(n355), .B0(n354), .C0(n353), .Y(sbox_out[7])
         );
  AOI221XL U462 ( .A0(n367), .A1(n403), .B0(n358), .B1(n369), .C0(n357), .Y(
        n381) );
  OAI21XL U463 ( .A0(n360), .A1(n421), .B0(n359), .Y(n364) );
  NOR2XL U464 ( .A(n361), .B(n335), .Y(n363) );
  OAI21XL U465 ( .A0(n363), .A1(n362), .B0(n423), .Y(n428) );
  AOI2BB2X1 U466 ( .B0(n365), .B1(n364), .A0N(n370), .A1N(n428), .Y(n380) );
  NAND2XL U467 ( .A(n367), .B(n366), .Y(n368) );
  OAI211XL U468 ( .A0(n369), .A1(n429), .B0(n335), .C0(n368), .Y(n378) );
  OAI22XL U469 ( .A0(n408), .A1(n371), .B0(n374), .B1(n370), .Y(n377) );
  NOR2XL U470 ( .A(n372), .B(n429), .Y(n404) );
  AOI211XL U471 ( .A0(n425), .A1(n374), .B0(n404), .C0(n335), .Y(n375) );
  NAND2XL U472 ( .A(n419), .B(n400), .Y(n412) );
  OAI211XL U473 ( .A0(n421), .A1(n407), .B0(n375), .C0(n412), .Y(n376) );
  OAI211XL U474 ( .A0(n378), .A1(n377), .B0(n417), .C0(n376), .Y(n379) );
  OAI211XL U475 ( .A0(n381), .A1(n401), .B0(n380), .C0(n379), .Y(sbox_out[29])
         );
  OAI2BB2XL U476 ( .B0(R[24]), .B1(K[37]), .A0N(R[24]), .A1N(K[37]), .Y(n382)
         );
  BUFX2 U477 ( .A(n382), .Y(n479) );
  CLKXOR2X2 U478 ( .A(R[27]), .B(K[40]), .Y(n443) );
  INVX1 U479 ( .A(n443), .Y(n439) );
  XOR2X1 U480 ( .A(K[38]), .B(R[25]), .Y(n456) );
  INVX1 U481 ( .A(n470), .Y(n472) );
  NAND2XL U484 ( .A(n439), .B(n437), .Y(n457) );
  NOR2XL U485 ( .A(n479), .B(n457), .Y(n448) );
  INVXL U486 ( .A(n448), .Y(n463) );
  CLKXOR2X2 U487 ( .A(R[23]), .B(K[36]), .Y(n476) );
  XOR2X1 U488 ( .A(R[28]), .B(K[41]), .Y(n482) );
  NAND2X1 U489 ( .A(n476), .B(n482), .Y(n454) );
  AOI2BB2X1 U490 ( .B0(n439), .B1(n383), .A0N(n439), .A1N(n383), .Y(n438) );
  INVXL U491 ( .A(n482), .Y(n458) );
  NAND2X1 U492 ( .A(n476), .B(n458), .Y(n436) );
  NOR2XL U493 ( .A(n443), .B(n456), .Y(n455) );
  NAND2X1 U494 ( .A(n470), .B(n443), .Y(n453) );
  INVXL U495 ( .A(n453), .Y(n465) );
  NOR2X1 U496 ( .A(n455), .B(n465), .Y(n384) );
  OAI22XL U497 ( .A0(n438), .A1(n436), .B0(n384), .B1(n454), .Y(n388) );
  NOR2X1 U498 ( .A(n476), .B(n482), .Y(n474) );
  INVX1 U499 ( .A(n474), .Y(n462) );
  NOR2X1 U500 ( .A(n476), .B(n458), .Y(n431) );
  OAI2BB2XL U501 ( .B0(n437), .B1(n462), .A0N(n438), .A1N(n431), .Y(n387) );
  NAND2XL U502 ( .A(n439), .B(n470), .Y(n430) );
  AOI2BB2X1 U503 ( .B0(n384), .B1(n431), .A0N(n384), .A1N(n462), .Y(n385) );
  OAI21XL U504 ( .A0(n436), .A1(n430), .B0(n385), .Y(n386) );
  OAI32XL U505 ( .A0(n486), .A1(n388), .A2(n387), .B0(n479), .B1(n386), .Y(
        n390) );
  NAND4XL U506 ( .A(n486), .B(n443), .C(n472), .D(n476), .Y(n389) );
  OAI211XL U507 ( .A0(n463), .A1(n454), .B0(n390), .C0(n389), .Y(sbox_out[14])
         );
  INVXL U508 ( .A(n437), .Y(n391) );
  AOI32XL U509 ( .A0(n472), .A1(n486), .A2(n383), .B0(n391), .B1(n479), .Y(
        n392) );
  NAND2XL U510 ( .A(n479), .B(n443), .Y(n469) );
  NOR2XL U511 ( .A(n456), .B(n469), .Y(n446) );
  AOI21XL U512 ( .A0(n453), .A1(n392), .B0(n446), .Y(n399) );
  OAI21XL U513 ( .A0(n383), .A1(n443), .B0(n453), .Y(n393) );
  INVXL U514 ( .A(n393), .Y(n461) );
  INVXL U515 ( .A(n431), .Y(n394) );
  OAI22XL U516 ( .A0(n461), .A1(n394), .B0(n393), .B1(n462), .Y(n396) );
  OAI22XL U517 ( .A0(n438), .A1(n394), .B0(n461), .B1(n462), .Y(n395) );
  OAI22XL U518 ( .A0(n486), .A1(n396), .B0(n479), .B1(n395), .Y(n398) );
  INVXL U519 ( .A(n454), .Y(n434) );
  NAND2XL U520 ( .A(n399), .B(n434), .Y(n397) );
  OAI211XL U521 ( .A0(n436), .A1(n399), .B0(n398), .C0(n397), .Y(sbox_out[4])
         );
  OAI22XL U522 ( .A0(n403), .A1(n402), .B0(n401), .B1(n400), .Y(n418) );
  NOR3XL U523 ( .A(n406), .B(n405), .C(n404), .Y(n414) );
  OAI22XL U524 ( .A0(n409), .A1(n408), .B0(n429), .B1(n407), .Y(n410) );
  OAI21XL U525 ( .A0(n411), .A1(n410), .B0(n415), .Y(n413) );
  OAI211XL U526 ( .A0(n415), .A1(n414), .B0(n413), .C0(n412), .Y(n416) );
  AOI22XL U527 ( .A0(n419), .A1(n418), .B0(n417), .B1(n416), .Y(n427) );
  INVXL U528 ( .A(n420), .Y(n424) );
  NAND2XL U529 ( .A(n424), .B(n421), .Y(n422) );
  OAI211XL U530 ( .A0(n425), .A1(n424), .B0(n423), .C0(n422), .Y(n426) );
  OAI211XL U531 ( .A0(n429), .A1(n428), .B0(n427), .C0(n426), .Y(sbox_out[18])
         );
  NOR2XL U532 ( .A(n437), .B(n469), .Y(n444) );
  NOR2XL U533 ( .A(n430), .B(n486), .Y(n447) );
  INVXL U534 ( .A(n430), .Y(n432) );
  NOR2XL U535 ( .A(n439), .B(n437), .Y(n473) );
  OAI31XL U536 ( .A0(n432), .A1(n473), .A2(n479), .B0(n431), .Y(n433) );
  AOI2BB2X1 U537 ( .B0(n435), .B1(n434), .A0N(n435), .A1N(n433), .Y(n452) );
  NOR3XL U538 ( .A(n443), .B(n437), .C(n436), .Y(n442) );
  INVX1 U539 ( .A(n436), .Y(n477) );
  AOI2BB2X1 U540 ( .B0(n477), .B1(n437), .A0N(n383), .A1N(n462), .Y(n440) );
  OAI22XL U541 ( .A0(n440), .A1(n439), .B0(n438), .B1(n454), .Y(n441) );
  OAI21XL U542 ( .A0(n442), .A1(n441), .B0(n486), .Y(n451) );
  NOR2X1 U543 ( .A(n470), .B(n443), .Y(n475) );
  INVXL U544 ( .A(n475), .Y(n466) );
  NOR2XL U545 ( .A(n466), .B(n486), .Y(n445) );
  OAI21XL U546 ( .A0(n445), .A1(n444), .B0(n477), .Y(n450) );
  OAI31XL U547 ( .A0(n448), .A1(n447), .A2(n446), .B0(n474), .Y(n449) );
  NAND4XL U548 ( .A(n452), .B(n451), .C(n450), .D(n449), .Y(sbox_out[19]) );
  NOR2XL U549 ( .A(n454), .B(n453), .Y(n464) );
  AOI211XL U550 ( .A0(n456), .A1(n465), .B0(n475), .C0(n455), .Y(n459) );
  OAI22XL U551 ( .A0(n459), .A1(n462), .B0(n458), .B1(n457), .Y(n460) );
  AOI211XL U552 ( .A0(n477), .A1(n461), .B0(n464), .C0(n460), .Y(n485) );
  AOI2BB2X1 U553 ( .B0(n383), .B1(n464), .A0N(n463), .A1N(n462), .Y(n484) );
  AOI211XL U554 ( .A0(n465), .A1(n383), .B0(n476), .C0(n479), .Y(n467) );
  NAND2XL U555 ( .A(n467), .B(n466), .Y(n468) );
  OAI31XL U556 ( .A0(n383), .A1(n470), .A2(n469), .B0(n468), .Y(n481) );
  NOR2XL U557 ( .A(n472), .B(n383), .Y(n478) );
  AOI222XL U558 ( .A0(n478), .A1(n477), .B0(n476), .B1(n475), .C0(n474), .C1(
        n473), .Y(n480) );
  AOI2BB2X1 U559 ( .B0(n482), .B1(n481), .A0N(n480), .A1N(n479), .Y(n483) );
  OAI211XL U560 ( .A0(n486), .A1(n485), .B0(n484), .C0(n483), .Y(sbox_out[30])
         );
  INVXL U561 ( .A(n496), .Y(n491) );
  OAI211XL U562 ( .A0(n491), .A1(n489), .B0(n488), .C0(n487), .Y(n495) );
  NAND2XL U563 ( .A(n518), .B(n490), .Y(n500) );
  INVXL U564 ( .A(n500), .Y(n493) );
  NAND2XL U565 ( .A(n512), .B(n491), .Y(n515) );
  OAI21XL U566 ( .A0(n493), .A1(n492), .B0(n515), .Y(n494) );
  OAI22XL U567 ( .A0(n527), .A1(n495), .B0(n525), .B1(n494), .Y(n508) );
  OAI21XL U568 ( .A0(n497), .A1(n496), .B0(n525), .Y(n505) );
  NOR2XL U569 ( .A(n499), .B(n498), .Y(n513) );
  OAI31XL U570 ( .A0(n512), .A1(n503), .A2(n518), .B0(n500), .Y(n501) );
  AOI211XL U571 ( .A0(n503), .A1(n502), .B0(n513), .C0(n501), .Y(n504) );
  OAI22XL U572 ( .A0(n506), .A1(n505), .B0(n504), .B1(n525), .Y(n507) );
  AOI2BB2X1 U573 ( .B0(n509), .B1(n508), .A0N(n509), .A1N(n507), .Y(
        sbox_out[17]) );
  OAI21XL U574 ( .A0(n512), .A1(n510), .B0(n518), .Y(n517) );
  INVXL U575 ( .A(n517), .Y(n516) );
  NOR3XL U576 ( .A(n512), .B(n511), .C(n518), .Y(n514) );
  AOI211XL U577 ( .A0(n516), .A1(n515), .B0(n514), .C0(n513), .Y(n523) );
  OAI211XL U578 ( .A0(n519), .A1(n518), .B0(n522), .C0(n517), .Y(n520) );
  OAI211XL U579 ( .A0(n523), .A1(n522), .B0(n521), .C0(n520), .Y(n524) );
  AO22X1 U580 ( .A0(n527), .A1(n526), .B0(n525), .B1(n524), .Y(sbox_out[27])
         );
  AOI2BB2X1 U581 ( .B0(n530), .B1(n529), .A0N(n530), .A1N(n528), .Y(
        sbox_out[22]) );
  AOI2BB2X1 U582 ( .B0(n533), .B1(n532), .A0N(n533), .A1N(n531), .Y(
        sbox_out[6]) );
  AOI2BB2X1 U583 ( .B0(n535), .B1(n534), .A0N(n535), .A1N(n534), .Y(n539) );
  OAI21XL U584 ( .A0(n537), .A1(n536), .B0(n548), .Y(n538) );
  AOI2BB2X1 U585 ( .B0(n539), .B1(n538), .A0N(n539), .A1N(n538), .Y(n555) );
  OA21XL U586 ( .A0(n542), .A1(n541), .B0(n540), .Y(n553) );
  OAI2BB2XL U587 ( .B0(n548), .B1(n545), .A0N(n544), .A1N(n543), .Y(n546) );
  AOI211XL U588 ( .A0(n549), .A1(n548), .B0(n547), .C0(n546), .Y(n552) );
  OAI22XL U589 ( .A0(n553), .A1(n552), .B0(n551), .B1(n550), .Y(n554) );
  AOI2BB2X1 U590 ( .B0(n556), .B1(n555), .A0N(n556), .A1N(n554), .Y(
        sbox_out[26]) );
  CLKINVX1 U12 ( .A(n143), .Y(n145) );
  INVX2 U42 ( .A(n51), .Y(n2) );
  INVX2 U482 ( .A(n456), .Y(n383) );
  INVX4 U157 ( .A(n139), .Y(n114) );
  INVX2 U424 ( .A(n415), .Y(n335) );
  NAND2X2 U4 ( .A(n409), .B(n333), .Y(n421) );
  CLKINVX1 U8 ( .A(n360), .Y(n366) );
  XNOR2X1 U40 ( .A(K[21]), .B(R[14]), .Y(n360) );
  CLKINVX1 U41 ( .A(n122), .Y(n497) );
  XNOR2X1 U43 ( .A(R[0]), .B(K[1]), .Y(n122) );
  CLKXOR2X2 U158 ( .A(K[2]), .B(R[1]), .Y(n512) );
  CLKXOR2X2 U190 ( .A(R[31]), .B(K[46]), .Y(n258) );
  CLKINVX1 U191 ( .A(n168), .Y(n534) );
  XNOR2X1 U198 ( .A(R[23]), .B(K[34]), .Y(n168) );
  CLKXOR2X2 U199 ( .A(R[12]), .B(K[17]), .Y(n51) );
  NAND2BXL U248 ( .AN(n316), .B(n143), .Y(n134) );
  AND2X2 U251 ( .A(n155), .B(n143), .Y(n310) );
endmodule

