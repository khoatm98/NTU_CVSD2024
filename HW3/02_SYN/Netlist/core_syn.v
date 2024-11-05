/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12
// Date      : Tue Nov  5 18:48:05 2024
/////////////////////////////////////////////////////////////


module core ( i_clk, i_rst_n, i_op_valid, i_op_mode, o_op_ready, i_in_valid, 
        i_in_data, o_in_ready, o_out_valid, o_out_data );
  input [3:0] i_op_mode;
  input [7:0] i_in_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_op_valid, i_in_valid;
  output o_op_ready, o_in_ready, o_out_valid;
  wire   conv_out_valid_w, med_sobel_out_valid_w, next_state_3_, x_origin_r_1_,
         y_origin_r_2_, conv_isFirst_signal_r, conv_calc_done_r,
         med_sobel_isFirst_signal_r, med_done_w, op_mode_r_1_,
         x_minus_one_r_0_, out_valid_wait_r, x_delay_r_1__1_, x_delay_r_1__0_,
         x_delay_r_0__1_, x_delay_r_0__0_, N687, N688, N689, N690, N691, N692,
         N693, N694, N695, N696, N697, N698, N699, N700, N701, N702, N703,
         N704, N705, N706, N707, N708, N709, N710, N711, N712, N713, N714,
         N715, N716, N717, N718, N726, N730, N732, N755, N757, N758, N759,
         N760, N761, N762, N785, N789, N790, N811, N812, N813, N814, N866,
         n385, n386, n391, n399, n401, n403, n406, n408, n411, n412, n421,
         n422, n424, n427, n437, n439, n441, n442, n443, n447, n449, n465,
         n468, n469, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n778, n779, n780, n781, n783, n784, n7850, n786, n787, n791,
         n792, n794, n797, n800, n801, n802, n803, n804, n809, n8110, n8130,
         n8140, n815, n816, n817, n818, n819, n820, n821, n822, n824, n825,
         n826, n827, n831, n833, n837, n839, n841, n843, n844, n846, n848,
         n850, n852, n853, n856, n858, n862, n8660, n869, n871, n873, n877,
         n879, n883, n884, n885, n893, n899, n900, n901, n1020, n1021, n1145,
         n1148, n1153, n1431, n1432, n1433, n1434, n1435, n1437, n1438, n1439,
         n1440, n1441, n1443, conv_inst_n114, conv_inst_n113, conv_inst_n112,
         conv_inst_n111, conv_inst_n110, conv_inst_n109, conv_inst_n108,
         conv_inst_n107, conv_inst_n105, conv_inst_n104, conv_inst_n103,
         conv_inst_n102, conv_inst_n101, conv_inst_n93, conv_inst_n59,
         conv_inst_n55, conv_inst_n54, conv_inst_n47, conv_inst_n44,
         conv_inst_n42, conv_inst_n41, conv_inst_n38, conv_inst_n34,
         conv_inst_n33, conv_inst_n32, conv_inst_n22, conv_inst_n21,
         conv_inst_n13, conv_inst_n11, conv_inst_n28, conv_inst_n27,
         conv_inst_N287, conv_inst_N286, conv_inst_N285, conv_inst_N284,
         conv_inst_N283, conv_inst_N282, conv_inst_N281, conv_inst_N280,
         conv_inst_N279, conv_inst_N278, conv_inst_N277, conv_inst_N276,
         conv_inst_N275, conv_inst_N274, conv_inst_N273, conv_inst_N272,
         conv_inst_N271, conv_inst_N270, conv_inst_N269, conv_inst_N268,
         conv_inst_N267, conv_inst_N266, conv_inst_N265, conv_inst_N264,
         conv_inst_N263, conv_inst_N262, conv_inst_N261, conv_inst_N260,
         conv_inst_N259, conv_inst_N258, conv_inst_N257, conv_inst_N256,
         conv_inst_N255, conv_inst_N254, conv_inst_N253, conv_inst_N252,
         conv_inst_N251, conv_inst_N250, conv_inst_N249, conv_inst_N248,
         conv_inst_N247, conv_inst_N246, conv_inst_N245, conv_inst_N244,
         conv_inst_N243, conv_inst_N242, conv_inst_N241, conv_inst_N240,
         conv_inst_N239, conv_inst_N238, conv_inst_N237, conv_inst_N236,
         conv_inst_N235, conv_inst_N233, conv_inst_N232, conv_inst_N231,
         conv_inst_N230, conv_inst_N229, conv_inst_N228, conv_inst_N227,
         conv_inst_N226, conv_inst_N225, conv_inst_N224, conv_inst_N223,
         conv_inst_N222, conv_inst_N221, conv_inst_N220, conv_inst_N219,
         conv_inst_N217, conv_inst_N216, conv_inst_N215, conv_inst_N214,
         conv_inst_N213, conv_inst_N212, conv_inst_N211, conv_inst_N210,
         conv_inst_N209, conv_inst_N206, conv_inst_N205, conv_inst_N204,
         conv_inst_N203, conv_inst_N202, conv_inst_N201, conv_inst_N200,
         conv_inst_N199, conv_inst_N198, conv_inst_N145, conv_inst_N144,
         conv_inst_N143, conv_inst_N142, conv_inst_N141, conv_inst_N140,
         conv_inst_N139, conv_inst_N138, conv_inst_N137, conv_inst_N136,
         conv_inst_N135, conv_inst_N134, conv_inst_N133, conv_inst_N132,
         conv_inst_N131, conv_inst_N130, conv_inst_N129, conv_inst_N128,
         conv_inst_N127, conv_inst_N126, conv_inst_N125, conv_inst_N124,
         conv_inst_N79, conv_inst_N78, conv_inst_N77, conv_inst_N76,
         conv_inst_N75, conv_inst_N74, conv_inst_N73, conv_inst_N72,
         conv_inst_N71, conv_inst_N70, conv_inst_N69, conv_inst_N68,
         conv_inst_N67, conv_inst_N66, conv_inst_N57, conv_inst_N56,
         conv_inst_cs_0_, median_sobel_inst_n991, median_sobel_inst_n988,
         median_sobel_inst_n987, median_sobel_inst_n986,
         median_sobel_inst_n985, median_sobel_inst_n984,
         median_sobel_inst_n983, median_sobel_inst_n982,
         median_sobel_inst_n981, median_sobel_inst_n980,
         median_sobel_inst_n979, median_sobel_inst_n978,
         median_sobel_inst_n977, median_sobel_inst_n959,
         median_sobel_inst_n869, median_sobel_inst_n785,
         median_sobel_inst_n747, median_sobel_inst_n718,
         median_sobel_inst_n715, median_sobel_inst_n713,
         median_sobel_inst_n711, median_sobel_inst_n708,
         median_sobel_inst_n702, median_sobel_inst_n700,
         median_sobel_inst_n697, median_sobel_inst_n690,
         median_sobel_inst_n688, median_sobel_inst_n678,
         median_sobel_inst_n674, median_sobel_inst_n672,
         median_sobel_inst_n671, median_sobel_inst_n669,
         median_sobel_inst_n664, median_sobel_inst_n662,
         median_sobel_inst_n660, median_sobel_inst_n654,
         median_sobel_inst_n653, median_sobel_inst_n649,
         median_sobel_inst_n646, median_sobel_inst_n626,
         median_sobel_inst_n321, median_sobel_inst_n150,
         median_sobel_inst_n141, median_sobel_inst_n129,
         median_sobel_inst_n110, median_sobel_inst_n108,
         median_sobel_inst_n107, median_sobel_inst_n102, median_sobel_inst_n92,
         median_sobel_inst_n38, median_sobel_inst_n619, median_sobel_inst_n618,
         median_sobel_inst_n616, median_sobel_inst_n615,
         median_sobel_inst_n608, median_sobel_inst_n602,
         median_sobel_inst_n600, median_sobel_inst_n599,
         median_sobel_inst_n598, median_sobel_inst_n597,
         median_sobel_inst_n591, median_sobel_inst_n587,
         median_sobel_inst_n586, median_sobel_inst_n585,
         median_sobel_inst_n584, median_sobel_inst_n582,
         median_sobel_inst_n579, median_sobel_inst_n578,
         median_sobel_inst_n577, median_sobel_inst_n576,
         median_sobel_inst_n575, median_sobel_inst_n574,
         median_sobel_inst_n572, median_sobel_inst_n571,
         median_sobel_inst_n570, median_sobel_inst_n569,
         median_sobel_inst_n568, median_sobel_inst_n567,
         median_sobel_inst_n566, median_sobel_inst_n564,
         median_sobel_inst_n563, median_sobel_inst_n562,
         median_sobel_inst_n561, median_sobel_inst_n560,
         median_sobel_inst_n559, median_sobel_inst_n555,
         median_sobel_inst_n553, median_sobel_inst_n551,
         median_sobel_inst_n550, median_sobel_inst_n548,
         median_sobel_inst_n547, median_sobel_inst_n546,
         median_sobel_inst_n545, median_sobel_inst_n544,
         median_sobel_inst_n543, median_sobel_inst_n542,
         median_sobel_inst_n538, median_sobel_inst_n536,
         median_sobel_inst_n535, median_sobel_inst_n534,
         median_sobel_inst_n528, median_sobel_inst_n519,
         median_sobel_inst_n515, median_sobel_inst_n514,
         median_sobel_inst_n513, median_sobel_inst_n507,
         median_sobel_inst_n499, median_sobel_inst_n498,
         median_sobel_inst_n491, median_sobel_inst_n490,
         median_sobel_inst_n489, median_sobel_inst_n488,
         median_sobel_inst_n487, median_sobel_inst_n486,
         median_sobel_inst_n485, median_sobel_inst_n484,
         median_sobel_inst_n483, median_sobel_inst_n482,
         median_sobel_inst_n481, median_sobel_inst_n480,
         median_sobel_inst_n479, median_sobel_inst_n478,
         median_sobel_inst_n477, median_sobel_inst_n476,
         median_sobel_inst_n475, median_sobel_inst_n474,
         median_sobel_inst_n473, median_sobel_inst_n472,
         median_sobel_inst_n471, median_sobel_inst_n470,
         median_sobel_inst_n469, median_sobel_inst_n468,
         median_sobel_inst_n467, median_sobel_inst_n466,
         median_sobel_inst_n465, median_sobel_inst_n464,
         median_sobel_inst_n463, median_sobel_inst_n462,
         median_sobel_inst_n461, median_sobel_inst_n460,
         median_sobel_inst_n459, median_sobel_inst_n458,
         median_sobel_inst_n457, median_sobel_inst_n456,
         median_sobel_inst_n455, median_sobel_inst_n454,
         median_sobel_inst_n453, median_sobel_inst_n452,
         median_sobel_inst_n451, median_sobel_inst_n450,
         median_sobel_inst_n449, median_sobel_inst_n448,
         median_sobel_inst_n447, median_sobel_inst_n446,
         median_sobel_inst_n445, median_sobel_inst_n444,
         median_sobel_inst_n443, median_sobel_inst_n442,
         median_sobel_inst_n441, median_sobel_inst_n440,
         median_sobel_inst_n438, median_sobel_inst_n437,
         median_sobel_inst_n436, median_sobel_inst_n435,
         median_sobel_inst_n434, median_sobel_inst_n433,
         median_sobel_inst_n432, median_sobel_inst_n430,
         median_sobel_inst_n429, median_sobel_inst_n428,
         median_sobel_inst_n427, median_sobel_inst_n426,
         median_sobel_inst_n425, median_sobel_inst_n424,
         median_sobel_inst_n423, median_sobel_inst_n422,
         median_sobel_inst_n421, median_sobel_inst_n420,
         median_sobel_inst_n419, median_sobel_inst_n418,
         median_sobel_inst_n417, median_sobel_inst_n416,
         median_sobel_inst_n415, median_sobel_inst_n414,
         median_sobel_inst_n413, median_sobel_inst_n411,
         median_sobel_inst_n410, median_sobel_inst_n409,
         median_sobel_inst_n408, median_sobel_inst_n406,
         median_sobel_inst_n401, median_sobel_inst_n400,
         median_sobel_inst_n399, median_sobel_inst_n398,
         median_sobel_inst_n396, median_sobel_inst_n393,
         median_sobel_inst_n391, median_sobel_inst_n390,
         median_sobel_inst_n389, median_sobel_inst_n386,
         median_sobel_inst_n385, median_sobel_inst_n384,
         median_sobel_inst_n383, median_sobel_inst_n382,
         median_sobel_inst_n381, median_sobel_inst_n380,
         median_sobel_inst_n378, median_sobel_inst_n377,
         median_sobel_inst_n376, median_sobel_inst_n375,
         median_sobel_inst_n373, median_sobel_inst_n372,
         median_sobel_inst_n371, median_sobel_inst_n369,
         median_sobel_inst_n368, median_sobel_inst_n367,
         median_sobel_inst_n365, median_sobel_inst_n363,
         median_sobel_inst_n362, median_sobel_inst_n361,
         median_sobel_inst_n360, median_sobel_inst_n359,
         median_sobel_inst_n358, median_sobel_inst_n357,
         median_sobel_inst_n356, median_sobel_inst_n354,
         median_sobel_inst_n353, median_sobel_inst_n352,
         median_sobel_inst_n351, median_sobel_inst_n350,
         median_sobel_inst_n349, median_sobel_inst_n348,
         median_sobel_inst_n347, median_sobel_inst_n346,
         median_sobel_inst_n344, median_sobel_inst_n343,
         median_sobel_inst_n342, median_sobel_inst_n341,
         median_sobel_inst_n339, median_sobel_inst_n338,
         median_sobel_inst_n337, median_sobel_inst_n336,
         median_sobel_inst_n333, median_sobel_inst_n330,
         median_sobel_inst_n329, median_sobel_inst_n328,
         median_sobel_inst_n327, median_sobel_inst_n325,
         median_sobel_inst_n323, median_sobel_inst_n320,
         median_sobel_inst_n266, median_sobel_inst_n265,
         median_sobel_inst_n264, median_sobel_inst_n263,
         median_sobel_inst_n262, median_sobel_inst_n261,
         median_sobel_inst_n258, median_sobel_inst_n257,
         median_sobel_inst_n256, median_sobel_inst_n254,
         median_sobel_inst_n253, median_sobel_inst_n252,
         median_sobel_inst_n251, median_sobel_inst_n250,
         median_sobel_inst_n249, median_sobel_inst_n248,
         median_sobel_inst_n247, median_sobel_inst_n246,
         median_sobel_inst_n245, median_sobel_inst_n244,
         median_sobel_inst_n243, median_sobel_inst_n242,
         median_sobel_inst_n241, median_sobel_inst_n240,
         median_sobel_inst_n239, median_sobel_inst_n238,
         median_sobel_inst_n237, median_sobel_inst_n236,
         median_sobel_inst_n235, median_sobel_inst_n234,
         median_sobel_inst_n233, median_sobel_inst_n232,
         median_sobel_inst_n231, median_sobel_inst_n230,
         median_sobel_inst_n229, median_sobel_inst_n228,
         median_sobel_inst_n227, median_sobel_inst_n226,
         median_sobel_inst_n225, median_sobel_inst_n224,
         median_sobel_inst_n222, median_sobel_inst_n221,
         median_sobel_inst_n220, median_sobel_inst_n219,
         median_sobel_inst_n218, median_sobel_inst_n217,
         median_sobel_inst_n215, median_sobel_inst_n214,
         median_sobel_inst_n213, median_sobel_inst_n212,
         median_sobel_inst_n211, median_sobel_inst_n210,
         median_sobel_inst_n209, median_sobel_inst_n208,
         median_sobel_inst_n207, median_sobel_inst_n206,
         median_sobel_inst_n205, median_sobel_inst_n204,
         median_sobel_inst_n203, median_sobel_inst_n202,
         median_sobel_inst_n201, median_sobel_inst_n200,
         median_sobel_inst_n199, median_sobel_inst_n198,
         median_sobel_inst_n197, median_sobel_inst_n196,
         median_sobel_inst_n195, median_sobel_inst_n194,
         median_sobel_inst_n193, median_sobel_inst_n192,
         median_sobel_inst_n191, median_sobel_inst_n190,
         median_sobel_inst_n189, median_sobel_inst_n188,
         median_sobel_inst_n187, median_sobel_inst_n186,
         median_sobel_inst_n185, median_sobel_inst_n184,
         median_sobel_inst_n183, median_sobel_inst_n182,
         median_sobel_inst_n181, median_sobel_inst_n180,
         median_sobel_inst_n179, median_sobel_inst_n178,
         median_sobel_inst_n177, median_sobel_inst_n176,
         median_sobel_inst_n175, median_sobel_inst_n174,
         median_sobel_inst_n173, median_sobel_inst_n172,
         median_sobel_inst_n171, median_sobel_inst_n170,
         median_sobel_inst_n169, median_sobel_inst_n168,
         median_sobel_inst_n167, median_sobel_inst_n166,
         median_sobel_inst_n165, median_sobel_inst_n164,
         median_sobel_inst_n163, median_sobel_inst_n162,
         median_sobel_inst_n161, median_sobel_inst_n160,
         median_sobel_inst_n159, median_sobel_inst_n158,
         median_sobel_inst_n157, median_sobel_inst_n156,
         median_sobel_inst_n155, median_sobel_inst_n154,
         median_sobel_inst_N116, median_sobel_inst_N115,
         median_sobel_inst_N114, median_sobel_inst_N113,
         median_sobel_inst_N112, median_sobel_inst_N96,
         median_sobel_inst_cnt_3_,
         median_sobel_inst_u_median_filter_submodule_n826,
         median_sobel_inst_u_median_filter_submodule_n825,
         median_sobel_inst_u_median_filter_submodule_n823,
         median_sobel_inst_u_median_filter_submodule_n821,
         median_sobel_inst_u_median_filter_submodule_n820,
         median_sobel_inst_u_median_filter_submodule_n818,
         median_sobel_inst_u_median_filter_submodule_n815,
         median_sobel_inst_u_median_filter_submodule_n814,
         median_sobel_inst_u_median_filter_submodule_n812,
         median_sobel_inst_u_median_filter_submodule_n811,
         median_sobel_inst_u_median_filter_submodule_n810,
         median_sobel_inst_u_median_filter_submodule_n806,
         median_sobel_inst_u_median_filter_submodule_n805,
         median_sobel_inst_u_median_filter_submodule_n803,
         median_sobel_inst_u_median_filter_submodule_n802,
         median_sobel_inst_u_median_filter_submodule_n801,
         median_sobel_inst_u_median_filter_submodule_n800,
         median_sobel_inst_u_median_filter_submodule_n799,
         median_sobel_inst_u_median_filter_submodule_n798,
         median_sobel_inst_u_median_filter_submodule_n797,
         median_sobel_inst_u_median_filter_submodule_n795,
         median_sobel_inst_u_median_filter_submodule_n794,
         median_sobel_inst_u_median_filter_submodule_n792,
         median_sobel_inst_u_median_filter_submodule_n789,
         median_sobel_inst_u_median_filter_submodule_n788,
         median_sobel_inst_u_median_filter_submodule_n787,
         median_sobel_inst_u_median_filter_submodule_n786,
         median_sobel_inst_u_median_filter_submodule_n785,
         median_sobel_inst_u_median_filter_submodule_n776,
         median_sobel_inst_u_median_filter_submodule_n775,
         median_sobel_inst_u_median_filter_submodule_n774,
         median_sobel_inst_u_median_filter_submodule_n773,
         median_sobel_inst_u_median_filter_submodule_n772,
         median_sobel_inst_u_median_filter_submodule_n771,
         median_sobel_inst_u_median_filter_submodule_n770,
         median_sobel_inst_u_median_filter_submodule_n769,
         median_sobel_inst_u_median_filter_submodule_n753,
         median_sobel_inst_u_median_filter_submodule_n752,
         median_sobel_inst_u_median_filter_submodule_n751,
         median_sobel_inst_u_median_filter_submodule_n750,
         median_sobel_inst_u_median_filter_submodule_n749,
         median_sobel_inst_u_median_filter_submodule_n748,
         median_sobel_inst_u_median_filter_submodule_n747,
         median_sobel_inst_u_median_filter_submodule_n746,
         median_sobel_inst_u_median_filter_submodule_n745,
         median_sobel_inst_u_median_filter_submodule_n487,
         median_sobel_inst_u_median_filter_submodule_n428,
         median_sobel_inst_u_median_filter_submodule_n316,
         median_sobel_inst_u_median_filter_submodule_n280,
         median_sobel_inst_u_median_filter_submodule_n258,
         median_sobel_inst_u_median_filter_submodule_n256,
         median_sobel_inst_u_median_filter_submodule_n254,
         median_sobel_inst_u_median_filter_submodule_n249,
         median_sobel_inst_u_median_filter_submodule_n246,
         median_sobel_inst_u_median_filter_submodule_n243,
         median_sobel_inst_u_median_filter_submodule_n241,
         median_sobel_inst_u_median_filter_submodule_n239,
         median_sobel_inst_u_median_filter_submodule_n235,
         median_sobel_inst_u_median_filter_submodule_n233,
         median_sobel_inst_u_median_filter_submodule_n231,
         median_sobel_inst_u_median_filter_submodule_n229,
         median_sobel_inst_u_median_filter_submodule_n227,
         median_sobel_inst_u_median_filter_submodule_n223,
         median_sobel_inst_u_median_filter_submodule_n221,
         median_sobel_inst_u_median_filter_submodule_n216,
         median_sobel_inst_u_median_filter_submodule_n211,
         median_sobel_inst_u_median_filter_submodule_n209,
         median_sobel_inst_u_median_filter_submodule_n203,
         median_sobel_inst_u_median_filter_submodule_n201,
         median_sobel_inst_u_median_filter_submodule_n200,
         median_sobel_inst_u_median_filter_submodule_n197,
         median_sobel_inst_u_median_filter_submodule_n193,
         median_sobel_inst_u_median_filter_submodule_n186,
         median_sobel_inst_u_median_filter_submodule_n184,
         median_sobel_inst_u_median_filter_submodule_n181,
         median_sobel_inst_u_median_filter_submodule_n179,
         median_sobel_inst_u_median_filter_submodule_n176,
         median_sobel_inst_u_median_filter_submodule_n163,
         median_sobel_inst_u_median_filter_submodule_n152,
         median_sobel_inst_u_median_filter_submodule_n145,
         median_sobel_inst_u_median_filter_submodule_n130,
         median_sobel_inst_u_median_filter_submodule_n124,
         median_sobel_inst_u_median_filter_submodule_n121,
         median_sobel_inst_u_median_filter_submodule_n115,
         median_sobel_inst_u_median_filter_submodule_n107,
         median_sobel_inst_u_median_filter_submodule_n106,
         median_sobel_inst_u_median_filter_submodule_n105,
         median_sobel_inst_u_median_filter_submodule_n99,
         median_sobel_inst_u_median_filter_submodule_n97,
         median_sobel_inst_u_median_filter_submodule_n96,
         median_sobel_inst_u_median_filter_submodule_n93,
         median_sobel_inst_u_median_filter_submodule_n91,
         median_sobel_inst_u_median_filter_submodule_n84,
         median_sobel_inst_u_median_filter_submodule_n81,
         median_sobel_inst_u_median_filter_submodule_n78,
         median_sobel_inst_u_median_filter_submodule_n77,
         median_sobel_inst_u_median_filter_submodule_n75,
         median_sobel_inst_u_median_filter_submodule_n74,
         median_sobel_inst_u_median_filter_submodule_n70,
         median_sobel_inst_u_median_filter_submodule_n69,
         median_sobel_inst_u_median_filter_submodule_n68,
         median_sobel_inst_u_median_filter_submodule_n64,
         median_sobel_inst_u_median_filter_submodule_n63,
         median_sobel_inst_u_median_filter_submodule_n62,
         median_sobel_inst_u_median_filter_submodule_n58,
         median_sobel_inst_u_median_filter_submodule_n56,
         median_sobel_inst_u_median_filter_submodule_n51,
         median_sobel_inst_u_median_filter_submodule_n49,
         median_sobel_inst_u_median_filter_submodule_n48,
         median_sobel_inst_u_median_filter_submodule_n47,
         median_sobel_inst_u_median_filter_submodule_n44,
         median_sobel_inst_u_median_filter_submodule_n42,
         median_sobel_inst_u_median_filter_submodule_n41,
         median_sobel_inst_u_median_filter_submodule_n37,
         median_sobel_inst_u_median_filter_submodule_n32,
         median_sobel_inst_u_median_filter_submodule_n31,
         median_sobel_inst_u_median_filter_submodule_n29,
         median_sobel_inst_u_median_filter_submodule_n27,
         median_sobel_inst_u_median_filter_submodule_n26,
         median_sobel_inst_u_median_filter_submodule_n9,
         median_sobel_inst_u_median_filter_submodule_net58553,
         median_sobel_inst_u_median_filter_submodule_net58169,
         median_sobel_inst_u_median_filter_submodule_net57730,
         median_sobel_inst_u_median_filter_submodule_net57373,
         median_sobel_inst_u_median_filter_submodule_net22700,
         median_sobel_inst_u_median_filter_submodule_net22699,
         median_sobel_inst_u_median_filter_submodule_net22698,
         median_sobel_inst_u_median_filter_submodule_net22697,
         median_sobel_inst_u_median_filter_submodule_net22696,
         median_sobel_inst_u_median_filter_submodule_net22695,
         median_sobel_inst_u_median_filter_submodule_net22693,
         median_sobel_inst_u_median_filter_submodule_net22691,
         median_sobel_inst_u_median_filter_submodule_net22688,
         median_sobel_inst_u_median_filter_submodule_net22686,
         median_sobel_inst_u_median_filter_submodule_net22685,
         median_sobel_inst_u_median_filter_submodule_net22682,
         median_sobel_inst_u_median_filter_submodule_n161,
         median_sobel_inst_u_median_filter_submodule_n159,
         median_sobel_inst_u_median_filter_submodule_a4_r_5_,
         median_sobel_inst_u_sobel_gradient_submodule_n279,
         median_sobel_inst_u_sobel_gradient_submodule_n124,
         median_sobel_inst_u_sobel_gradient_submodule_n117,
         median_sobel_inst_u_sobel_gradient_submodule_n116,
         median_sobel_inst_u_sobel_gradient_submodule_n111,
         median_sobel_inst_u_sobel_gradient_submodule_n110,
         median_sobel_inst_u_sobel_gradient_submodule_n101,
         median_sobel_inst_u_sobel_gradient_submodule_n100,
         median_sobel_inst_u_sobel_gradient_submodule_n99,
         median_sobel_inst_u_sobel_gradient_submodule_n96,
         median_sobel_inst_u_sobel_gradient_submodule_n95,
         median_sobel_inst_u_sobel_gradient_submodule_n94,
         median_sobel_inst_u_sobel_gradient_submodule_n93,
         median_sobel_inst_u_sobel_gradient_submodule_n92,
         median_sobel_inst_u_sobel_gradient_submodule_n89,
         median_sobel_inst_u_sobel_gradient_submodule_n87,
         median_sobel_inst_u_sobel_gradient_submodule_n84,
         median_sobel_inst_u_sobel_gradient_submodule_n81,
         median_sobel_inst_u_sobel_gradient_submodule_n80,
         median_sobel_inst_u_sobel_gradient_submodule_n79,
         median_sobel_inst_u_sobel_gradient_submodule_n76,
         median_sobel_inst_u_sobel_gradient_submodule_n74,
         median_sobel_inst_u_sobel_gradient_submodule_n73,
         median_sobel_inst_u_sobel_gradient_submodule_n69,
         median_sobel_inst_u_sobel_gradient_submodule_n68,
         median_sobel_inst_u_sobel_gradient_submodule_n66,
         median_sobel_inst_u_sobel_gradient_submodule_n63,
         median_sobel_inst_u_sobel_gradient_submodule_n60,
         median_sobel_inst_u_sobel_gradient_submodule_n58,
         median_sobel_inst_u_sobel_gradient_submodule_n57,
         median_sobel_inst_u_sobel_gradient_submodule_n56,
         median_sobel_inst_u_sobel_gradient_submodule_n55,
         median_sobel_inst_u_sobel_gradient_submodule_n54,
         median_sobel_inst_u_sobel_gradient_submodule_n52,
         median_sobel_inst_u_sobel_gradient_submodule_n51,
         median_sobel_inst_u_sobel_gradient_submodule_n49,
         median_sobel_inst_u_sobel_gradient_submodule_n48,
         median_sobel_inst_u_sobel_gradient_submodule_n46,
         median_sobel_inst_u_sobel_gradient_submodule_n45,
         median_sobel_inst_u_sobel_gradient_submodule_n44,
         median_sobel_inst_u_sobel_gradient_submodule_n43,
         median_sobel_inst_u_sobel_gradient_submodule_n42,
         median_sobel_inst_u_sobel_gradient_submodule_n41,
         median_sobel_inst_u_sobel_gradient_submodule_n40,
         median_sobel_inst_u_sobel_gradient_submodule_n39,
         median_sobel_inst_u_sobel_gradient_submodule_n37,
         median_sobel_inst_u_sobel_gradient_submodule_n36,
         median_sobel_inst_u_sobel_gradient_submodule_n34,
         median_sobel_inst_u_sobel_gradient_submodule_n33,
         median_sobel_inst_u_sobel_gradient_submodule_n30,
         median_sobel_inst_u_sobel_gradient_submodule_n29,
         median_sobel_inst_u_sobel_gradient_submodule_n28,
         median_sobel_inst_u_sobel_gradient_submodule_n27,
         median_sobel_inst_u_sobel_gradient_submodule_n26,
         median_sobel_inst_u_sobel_gradient_submodule_n25,
         median_sobel_inst_u_sobel_gradient_submodule_n24,
         median_sobel_inst_u_sobel_gradient_submodule_n23,
         median_sobel_inst_u_sobel_gradient_submodule_n22,
         median_sobel_inst_u_sobel_gradient_submodule_n8,
         median_sobel_inst_u_sobel_gradient_submodule_n7,
         median_sobel_inst_u_sobel_gradient_submodule_n5,
         median_sobel_inst_u_sobel_gradient_submodule_n4,
         median_sobel_inst_u_sobel_gradient_submodule_n3,
         median_sobel_inst_u_sobel_gradient_submodule_N77,
         median_sobel_inst_u_sobel_gradient_submodule_n65,
         median_sobel_inst_u_sobel_gradient_submodule_n64,
         median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r_1_,
         median_sobel_inst_u_sobel_gradient_submodule_N177,
         median_sobel_inst_u_sobel_gradient_submodule_N176,
         median_sobel_inst_u_sobel_gradient_submodule_N175,
         median_sobel_inst_u_sobel_gradient_submodule_N167,
         median_sobel_inst_u_sobel_gradient_submodule_N166,
         median_sobel_inst_u_sobel_gradient_submodule_N165,
         median_sobel_inst_u_sobel_gradient_submodule_N164,
         median_sobel_inst_u_sobel_gradient_submodule_N163,
         median_sobel_inst_u_sobel_gradient_submodule_N162,
         median_sobel_inst_u_sobel_gradient_submodule_N160,
         median_sobel_inst_u_sobel_gradient_submodule_N158,
         median_sobel_inst_u_sobel_gradient_submodule_N157,
         median_sobel_inst_u_sobel_gradient_submodule_N156,
         median_sobel_inst_u_sobel_gradient_submodule_N155,
         median_sobel_inst_u_sobel_gradient_submodule_N154,
         median_sobel_inst_u_sobel_gradient_submodule_N153,
         median_sobel_inst_u_sobel_gradient_submodule_N152,
         median_sobel_inst_u_sobel_gradient_submodule_N151,
         median_sobel_inst_u_sobel_gradient_submodule_N150,
         median_sobel_inst_u_sobel_gradient_submodule_N149,
         median_sobel_inst_u_sobel_gradient_submodule_N148,
         median_sobel_inst_u_sobel_gradient_submodule_N147,
         median_sobel_inst_u_sobel_gradient_submodule_N142,
         median_sobel_inst_u_sobel_gradient_submodule_N141,
         median_sobel_inst_u_sobel_gradient_submodule_N140,
         median_sobel_inst_u_sobel_gradient_submodule_N139,
         median_sobel_inst_u_sobel_gradient_submodule_N138,
         median_sobel_inst_u_sobel_gradient_submodule_N137,
         median_sobel_inst_u_sobel_gradient_submodule_N136,
         median_sobel_inst_u_sobel_gradient_submodule_N135,
         median_sobel_inst_u_sobel_gradient_submodule_N134,
         median_sobel_inst_u_sobel_gradient_submodule_N133,
         median_sobel_inst_u_sobel_gradient_submodule_N132,
         median_sobel_inst_u_sobel_gradient_submodule_N131,
         median_sobel_inst_u_sobel_gradient_submodule_N128,
         median_sobel_inst_u_sobel_gradient_submodule_N127,
         median_sobel_inst_u_sobel_gradient_submodule_N126,
         median_sobel_inst_u_sobel_gradient_submodule_N125,
         median_sobel_inst_u_sobel_gradient_submodule_N1240,
         median_sobel_inst_u_sobel_gradient_submodule_N123,
         median_sobel_inst_u_sobel_gradient_submodule_N122,
         median_sobel_inst_u_sobel_gradient_submodule_N121,
         median_sobel_inst_u_sobel_gradient_submodule_N120,
         median_sobel_inst_u_sobel_gradient_submodule_N119,
         median_sobel_inst_u_sobel_gradient_submodule_N118,
         median_sobel_inst_u_sobel_gradient_submodule_N1160,
         median_sobel_inst_u_sobel_gradient_submodule_N115,
         median_sobel_inst_u_sobel_gradient_submodule_N114,
         median_sobel_inst_u_sobel_gradient_submodule_N113,
         median_sobel_inst_u_sobel_gradient_submodule_N112,
         median_sobel_inst_u_sobel_gradient_submodule_N1110,
         median_sobel_inst_u_sobel_gradient_submodule_N1100,
         median_sobel_inst_u_sobel_gradient_submodule_N109,
         median_sobel_inst_u_sobel_gradient_submodule_N108,
         median_sobel_inst_u_sobel_gradient_submodule_N107,
         median_sobel_inst_u_sobel_gradient_submodule_N106,
         median_sobel_inst_u_sobel_gradient_submodule_N105,
         median_sobel_inst_u_sobel_gradient_submodule_N104,
         median_sobel_inst_u_sobel_gradient_submodule_N103,
         median_sobel_inst_u_sobel_gradient_submodule_N102,
         median_sobel_inst_u_sobel_gradient_submodule_N1010,
         median_sobel_inst_u_sobel_gradient_submodule_N1000,
         median_sobel_inst_u_sobel_gradient_submodule_N990,
         median_sobel_inst_u_sobel_gradient_submodule_N98,
         median_sobel_inst_u_sobel_gradient_submodule_N75,
         median_sobel_inst_u_sobel_gradient_submodule_N740,
         median_sobel_inst_u_sobel_gradient_submodule_N730,
         median_sobel_inst_u_sobel_gradient_submodule_N72,
         median_sobel_inst_u_sobel_gradient_submodule_N71,
         median_sobel_inst_u_sobel_gradient_submodule_N70,
         median_sobel_inst_u_sobel_gradient_submodule_N690,
         median_sobel_inst_u_sobel_gradient_submodule_N680,
         median_sobel_inst_u_sobel_gradient_submodule_N67,
         median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_,
         median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_0_,
         median_sobel_inst_u_sobel_gradient_submodule_N440,
         median_sobel_inst_u_sobel_gradient_submodule_N430,
         median_sobel_inst_u_sobel_gradient_submodule_N420,
         median_sobel_inst_u_sobel_gradient_submodule_N410,
         median_sobel_inst_u_sobel_gradient_submodule_N400,
         median_sobel_inst_u_sobel_gradient_submodule_N390,
         median_sobel_inst_u_sobel_gradient_submodule_N38,
         median_sobel_inst_u_sobel_gradient_submodule_N370,
         median_sobel_inst_u_sobel_gradient_submodule_N360,
         median_sobel_inst_u_sobel_gradient_submodule_N340,
         median_sobel_inst_u_sobel_gradient_submodule_N330,
         median_sobel_inst_u_sobel_gradient_submodule_N32,
         median_sobel_inst_u_sobel_gradient_submodule_N31,
         median_sobel_inst_u_sobel_gradient_submodule_N300,
         median_sobel_inst_u_sobel_gradient_submodule_N290,
         median_sobel_inst_u_sobel_gradient_submodule_N280,
         median_sobel_inst_u_sobel_gradient_submodule_N270,
         median_sobel_inst_u_sobel_gradient_submodule_N260,
         median_sobel_inst_u_sobel_gradient_submodule_N240,
         median_sobel_inst_u_sobel_gradient_submodule_N230,
         median_sobel_inst_u_sobel_gradient_submodule_N220,
         median_sobel_inst_u_sobel_gradient_submodule_N21,
         median_sobel_inst_u_sobel_gradient_submodule_N20,
         median_sobel_inst_u_sobel_gradient_submodule_N19,
         median_sobel_inst_u_sobel_gradient_submodule_N18,
         median_sobel_inst_u_sobel_gradient_submodule_N17,
         median_sobel_inst_u_sobel_gradient_submodule_N16,
         median_sobel_inst_u_sobel_gradient_submodule_N14,
         median_sobel_inst_u_sobel_gradient_submodule_N13,
         median_sobel_inst_u_sobel_gradient_submodule_N12,
         median_sobel_inst_u_sobel_gradient_submodule_N11,
         median_sobel_inst_u_sobel_gradient_submodule_N10,
         median_sobel_inst_u_sobel_gradient_submodule_N9,
         median_sobel_inst_u_sobel_gradient_submodule_N82,
         median_sobel_inst_u_sobel_gradient_submodule_N78,
         median_sobel_inst_u_sobel_gradient_submodule_N6,
         median_sobel_inst_u_sober_compare_submodule_n246,
         median_sobel_inst_u_sober_compare_submodule_n224,
         median_sobel_inst_u_sober_compare_submodule_n169,
         median_sobel_inst_u_sober_compare_submodule_n55,
         median_sobel_inst_u_sober_compare_submodule_n53,
         median_sobel_inst_u_sober_compare_submodule_n51,
         median_sobel_inst_u_sober_compare_submodule_n47,
         median_sobel_inst_u_sober_compare_submodule_n46,
         median_sobel_inst_u_sober_compare_submodule_n44,
         median_sobel_inst_u_sober_compare_submodule_n41,
         median_sobel_inst_u_sober_compare_submodule_n34,
         median_sobel_inst_u_sober_compare_submodule_n13,
         median_sobel_inst_u_sober_compare_submodule_n11,
         median_sobel_inst_u_sober_compare_submodule_n10,
         median_sobel_inst_u_sober_compare_submodule_n3,
         median_sobel_inst_u_sober_compare_submodule_n2,
         median_sobel_inst_u_sober_compare_submodule_n1,
         median_sobel_inst_u_sober_compare_submodule_n167,
         median_sobel_inst_u_sober_compare_submodule_n163,
         median_sobel_inst_u_sober_compare_submodule_n161,
         median_sobel_inst_u_sober_compare_submodule_n160,
         median_sobel_inst_u_sober_compare_submodule_n159,
         median_sobel_inst_u_sober_compare_submodule_n158,
         median_sobel_inst_u_sober_compare_submodule_n157,
         median_sobel_inst_u_sober_compare_submodule_n156,
         median_sobel_inst_u_sober_compare_submodule_n155,
         median_sobel_inst_u_sober_compare_submodule_n154,
         median_sobel_inst_u_sober_compare_submodule_n152,
         median_sobel_inst_u_sober_compare_submodule_n151,
         median_sobel_inst_u_sober_compare_submodule_n150,
         median_sobel_inst_u_sober_compare_submodule_n149,
         median_sobel_inst_u_sober_compare_submodule_n148,
         median_sobel_inst_u_sober_compare_submodule_n147,
         median_sobel_inst_u_sober_compare_submodule_n146,
         median_sobel_inst_u_sober_compare_submodule_n145,
         median_sobel_inst_u_sober_compare_submodule_n144,
         median_sobel_inst_u_sober_compare_submodule_n143,
         median_sobel_inst_u_sober_compare_submodule_n142,
         median_sobel_inst_u_sober_compare_submodule_n141,
         median_sobel_inst_u_sober_compare_submodule_n140,
         median_sobel_inst_u_sober_compare_submodule_n139,
         median_sobel_inst_u_sober_compare_submodule_n138,
         median_sobel_inst_u_sober_compare_submodule_n137,
         median_sobel_inst_u_sober_compare_submodule_n136,
         median_sobel_inst_u_sober_compare_submodule_n135,
         median_sobel_inst_u_sober_compare_submodule_n134,
         median_sobel_inst_u_sober_compare_submodule_n133,
         median_sobel_inst_u_sober_compare_submodule_n132,
         median_sobel_inst_u_sober_compare_submodule_n131,
         median_sobel_inst_u_sober_compare_submodule_n130,
         median_sobel_inst_u_sober_compare_submodule_n129,
         median_sobel_inst_u_sober_compare_submodule_n128,
         median_sobel_inst_u_sober_compare_submodule_n127,
         median_sobel_inst_u_sober_compare_submodule_n126,
         median_sobel_inst_u_sober_compare_submodule_n125,
         median_sobel_inst_u_sober_compare_submodule_n124,
         median_sobel_inst_u_sober_compare_submodule_n123,
         median_sobel_inst_u_sober_compare_submodule_n122,
         median_sobel_inst_u_sober_compare_submodule_n121,
         median_sobel_inst_u_sober_compare_submodule_n120,
         median_sobel_inst_u_sober_compare_submodule_n119,
         median_sobel_inst_u_sober_compare_submodule_n118,
         median_sobel_inst_u_sober_compare_submodule_n117,
         median_sobel_inst_u_sober_compare_submodule_n116,
         median_sobel_inst_u_sober_compare_submodule_n115,
         median_sobel_inst_u_sober_compare_submodule_n114,
         median_sobel_inst_u_sober_compare_submodule_n113,
         median_sobel_inst_u_sober_compare_submodule_n112,
         median_sobel_inst_u_sober_compare_submodule_n111,
         median_sobel_inst_u_sober_compare_submodule_n110,
         median_sobel_inst_u_sober_compare_submodule_n109,
         median_sobel_inst_u_sober_compare_submodule_n108,
         median_sobel_inst_u_sober_compare_submodule_n107,
         median_sobel_inst_u_sober_compare_submodule_n106,
         median_sobel_inst_u_sober_compare_submodule_n105,
         median_sobel_inst_u_sober_compare_submodule_n104,
         median_sobel_inst_u_sober_compare_submodule_n103,
         median_sobel_inst_u_sober_compare_submodule_n102,
         median_sobel_inst_u_sober_compare_submodule_n101,
         median_sobel_inst_u_sober_compare_submodule_n100,
         median_sobel_inst_u_sober_compare_submodule_n99,
         median_sobel_inst_u_sober_compare_submodule_n98,
         median_sobel_inst_u_sober_compare_submodule_n97,
         median_sobel_inst_u_sober_compare_submodule_n96,
         median_sobel_inst_u_sober_compare_submodule_n95,
         median_sobel_inst_u_sober_compare_submodule_n94,
         median_sobel_inst_u_sober_compare_submodule_n93,
         median_sobel_inst_u_sober_compare_submodule_n92,
         median_sobel_inst_u_sober_compare_submodule_n91,
         median_sobel_inst_u_sober_compare_submodule_n90,
         median_sobel_inst_u_sober_compare_submodule_n89,
         median_sobel_inst_u_sober_compare_submodule_n88,
         median_sobel_inst_u_sober_compare_submodule_n87,
         median_sobel_inst_u_sober_compare_submodule_n86,
         median_sobel_inst_u_sober_compare_submodule_n85,
         median_sobel_inst_u_sober_compare_submodule_n84,
         median_sobel_inst_u_sober_compare_submodule_n83,
         median_sobel_inst_u_sober_compare_submodule_n82,
         median_sobel_inst_u_sober_compare_submodule_n81,
         median_sobel_inst_u_sober_compare_submodule_n80,
         median_sobel_inst_u_sober_compare_submodule_n79,
         median_sobel_inst_u_sober_compare_submodule_n78,
         median_sobel_inst_u_sober_compare_submodule_n77,
         median_sobel_inst_u_sober_compare_submodule_n76,
         median_sobel_inst_u_sober_compare_submodule_n75,
         median_sobel_inst_u_sober_compare_submodule_n74,
         median_sobel_inst_u_sober_compare_submodule_n73,
         median_sobel_inst_u_sober_compare_submodule_n72,
         median_sobel_inst_u_sober_compare_submodule_n71,
         median_sobel_inst_u_sober_compare_submodule_n70,
         median_sobel_inst_u_sober_compare_submodule_n69,
         median_sobel_inst_u_sober_compare_submodule_n68,
         median_sobel_inst_u_sober_compare_submodule_n67,
         median_sobel_inst_u_sober_compare_submodule_n66,
         median_sobel_inst_u_sober_compare_submodule_n64,
         median_sobel_inst_u_sober_compare_submodule_n63,
         median_sobel_inst_u_sober_compare_submodule_n62,
         median_sobel_inst_u_sober_compare_submodule_n61,
         median_sobel_inst_u_sober_compare_submodule_n60,
         median_sobel_inst_u_sober_compare_submodule_n59,
         median_sobel_inst_u_sober_compare_submodule_n54,
         median_sobel_inst_u_sober_compare_submodule_N1260,
         median_sobel_inst_u_sober_compare_submodule_N1240,
         median_sobel_inst_u_sober_compare_submodule_N1230,
         median_sobel_inst_u_sober_compare_submodule_N1220,
         median_sobel_inst_u_sober_compare_submodule_N1210,
         median_sobel_inst_u_sober_compare_submodule_N1200,
         median_sobel_inst_u_sober_compare_submodule_N1190,
         median_sobel_inst_u_sober_compare_submodule_N1180,
         median_sobel_inst_u_sober_compare_submodule_N1170,
         median_sobel_inst_u_sober_compare_submodule_N1160,
         median_sobel_inst_u_sober_compare_submodule_temp_a_r_6_,
         median_sobel_inst_u_sober_compare_submodule_N30,
         median_sobel_inst_u_sober_compare_submodule_N29, n2650, n2651, n2667,
         n2668, n2669, n2670, n2671, n2673, n2675, n2676, n2677, n2679, n2680,
         n2681, n2682, n2684, n2685, n2686, n2687, n2688, n2690, n2691, n2692,
         n2693, n2694, n2695, n2696, n2697, n2698, n2699, n2700, n2701, n2702,
         n2703, n2704, n2705, n2706, n2707, n2708, n2709, n2710, n2711, n2712,
         n2713, n2714, n2715, n2716, n2717, n2718, n2719, n2720, n2721, n2722,
         n2723, n2724, n2725, n2726, n2727, n2728, n2729, n2730, n2731, n2732,
         n2733, n2734, n2735, n2736, n2737, n2738, n2739, n2740, n2741, n2742,
         n2743, n2744, n2745, n2746, n2747, n2748, n2749, n2750, n2751, n2752,
         n2753, n2754, n2755, n2756, n2757, n2758, n2759, n2760, n2761, n2762,
         n2763, n2764, n2765, n2766, n2767, n2768, n2769, n2770, n2771, n2774,
         n2775, n2776, n2777, n2778, n2779, n2780, n2781, n2782, n2783, n2784,
         n2785, n2786, n2787, n2788, n2789, n2790, n2791, n2792, n2793, n2794,
         n2795, n2796, n2797, n2798, n2799, n2800, n2801, n2802, n2806, n2807,
         n2808, n2809, n2810, n2811, n2812, n2813, n2814, n2815, n2817, n2818,
         n2819, n2820, n2821, n2822, n2823, n2824, n2826, n2827, n2828, n2829,
         n2830, n2831, n2832, n2834, n2835, n2836, n2837, n2838, n2839, n2840,
         n2842, n2846, n2847, n2848, n2849, n2850, n2851, n2852, n2853, n2854,
         n2855, n2858, n2859, n2860, n2861, n2862, n2863, n2864, n2865, n2866,
         n2867, n2868, n2869, n2870, n2871, n2872, n2873, n2874, n2875, n2876,
         n2877, n2878, n2879, n2880, n2881, n2882, n2883, n2884, n2885, n2886,
         n2887, n2889, n2891, n2892, n2893, n2894, n2896, n2898, n2900, n2902,
         n2903, n2905, n2906, n2908, n2909, n2911, n2912, n2913, n2914, n2915,
         n2916, n2917, n2918, n2919, n2920, n2921, n2922, n2923, n2924, n2925,
         n2926, n2928, n2929, n2930, n2932, n2933, n2934, n2935, n2936, n2937,
         n2938, n2939, n2940, n2941, n2942, n2943, n2944, n2945, n2946, n2947,
         n2948, n2949, n2950, n2952, n2953, n2954, n2955, n2956, n2957, n2958,
         n2959, n2960, n2961, n2962, n2963, n2964, n2966, n2968, n2970, n2971,
         n2972, n2973, n2975, n2976, n2977, n2978, n2980, n2982, n2983, n2984,
         n2985, n2986, n2987, n2988, n2989, n2990, n2991, n2992, n2993, n2994,
         n2995, n2996, n2997, n2998, n2999, n3000, n3001, n3002, n3003, n3004,
         n3005, n3006, n3007, n3008, n3009, n3010, n3011, n3012, n3013, n3014,
         n3015, n3016, n3017, n3018, n3019, n3020, n3021, n3022, n3024, n3025,
         n3026, n3027, n3028, n3029, n3030, n3031, n3032, n3033, n3034, n3035,
         n3036, n3039, n3041, n3042, n3044, n3045, n3046, n3047, n3048, n3049,
         n3050, n3052, n3053, n3055, n3056, n3057, n3058, n3059, n3060, n3061,
         n3062, n3063, n3064, n3065, n3066, n3067, n3068, n3069, n3070, n3071,
         n3073, n3074, n3075, n3076, n3078, n3080, n3081, n3082, n3083, n3084,
         n3085, n3086, n3087, n3088, n3090, n3091, n3092, n3093, n3094, n3095,
         n3096, n3097, n3098, n3099, n3101, n3102, n3103, n3104, n3105, n3106,
         n3107, n3108, n3109, n3110, n3111, n3112, n3113, n3114, n3115, n3116,
         n3118, n3119, n3121, n3122, n3123, n3125, n3126, n3127, n3128, n3129,
         n3130, n3132, n3134, n3135, n3136, n3137, n3138, n3139, n3140, n3141,
         n3142, n3143, n3144, n3145, n3146, n3147, n3148, n3149, n3151, n3152,
         n3153, n3155, n3156, n3157, n3158, n3159, n3162, n3163, n3164, n3165,
         n3166, n3167, n3168, n3169, n3170, n3171, n3172, n3173, n3174, n3176,
         n3177, n3178, n3179, n3180, n3181, n3183, n3184, n3185, n3186, n3187,
         n3188, n3190, n3191, n3192, n3193, n3194, n3195, n3196, n3197, n3198,
         n3199, n3200, n3201, n3202, n3203, n3204, n3206, n3207, n3208, n3209,
         n3210, n3211, n3212, n3213, n3214, n3215, n3216, n3217, n3218, n3219,
         n3220, n3221, n3222, n3223, n3224, n3225, n3226, n3227, n3228, n3229,
         n3230, n3231, n3232, n3233, n3235, n3236, n3237, n3239, n3240, n3241,
         n3242, n3244, n3245, n3246, n3247, n3248, n3249, n3250, n3251, n3252,
         n3253, n3254, n3255, n3256, n3257, n3258, n3259, n3260, n3261, n3262,
         n3263, n3264, n3265, n3266, n3267, n3268, n3270, n3271, n3273, n3274,
         n3275, n3276, n3277, n3278, n3279, n3281, n3282, n3283, n3284, n3286,
         n3287, n3288, n3289, n3290, n3292, n3293, n3294, n3295, n3296, n3297,
         n3298, n3299, n3301, n3302, n3303, n3304, n3305, n3306, n3308, n3309,
         n3310, n3311, n3312, n3314, n3315, n3316, n3317, n3318, n3319, n3320,
         n3323, n3324, n3325, n3326, n3329, n3330, n3331, n3333, n3334, n3336,
         n3338, n3339, n3340, n3341, n3342, n3343, n3344, n3345, n3347, n3348,
         n3349, n3350, n3351, n3352, n3354, n3355, n3356, n3357, n3359, n3360,
         n3364, n3365, n3366, n3369, n3370, n3377, n3379, n3380, n3381, n3382,
         n3383, n3384, n3385, n3386, n3387, n3388, n3389, n3390, n3391, n3392,
         n3393, n3394, n3395, n3396, n3397, n3398, n3399, n3400, n3401, n3402,
         n3403, n3404, n3405, n3406, n3407, n3408, n3409, n3410, n3411, n3412,
         n3413, n3415, n3416, n3417, n3419, n3420, n3421, n3423, n3424, n3425,
         n3427, n3429, n3430, n3431, n3432, n3433, n3434, n3435, n3436, n3437,
         n3438, n3439, n3440, n3441, n3442, n3443, n3445, n3446, n3447, n3448,
         n3449, n3450, n3451, n3452, n3453, n3454, n3455, n3456, n3457, n3459,
         n3460, n3461, n3462, n3463, n3464, n3465, n3466, n3467, n3468, n3469,
         n3470, n3471, n3472, n3474, n3476, n3477, n3478, n3479, n3480, n3484,
         n3487, n3488, n3489, n3490, n3491, n3492, n3493, n3494, n3495, n3496,
         n3497, n3498, n3499, n3500, n3501, n3502, n3503, n3504, n3505, n3506,
         n3508, n3509, n3510, n3511, n3512, n3513, n3514, n3515, n3516, n3517,
         n3518, n3519, n3520, n3521, n3522, n3523, n3524, n3525, n3526, n3527,
         n3528, n3529, n3530, n3531, n3532, n3533, n3534, n3536, n3537, n3538,
         n3539, n3540, n3541, n3542, n3543, n3545, n3546, n3548, n3549, n3552,
         n3553, n3554, n3555, n3556, n3557, n3558, n3559, n3560, n3561, n3562,
         n3563, n3564, n3565, n3566, n3567, n3568, n3569, n3570, n3571, n3573,
         n3574, n3575, n3576, n3577, n3578, n3579, n3580, n3581, n3582, n3583,
         n3584, n3585, n3586, n3587, n3589, n3590, n3591, n3592, n3593, n3594,
         n3595, n3596, n3597, n3598, n3599, n3600, n3601, n3602, n3603, n3605,
         n3606, n3607, n3608, n3609, n3610, n3611, n3612, n3613, n3614, n3615,
         n3616, n3617, n3618, n3619, n3620, n3621, n3623, n3624, n3625, n3626,
         n3627, n3628, n3629, n3630, n3631, n3632, n3634, n3635, n3636, n3637,
         n3638, n3639, n3641, n3642, n3643, n3645, n3646, n3647, n3649, n3650,
         n3651, n3652, n3653, n3655, n3656, n3657, n3658, n3660, n3661, n3662,
         n3663, n3665, n3666, n3668, n3669, n3670, n3672, n3674, n3675, n3676,
         n3677, n3678, n3679, n3680, n3682, n3683, n3684, n3685, n3688, n3689,
         n3691, n3692, n3693, n3694, n3695, n3696, n3697, n3698, n3699, n3700,
         n3701, n3702, n3703, n3704, n3705, n3706, n3707, n3708, n3709, n3710,
         n3711, n3713, n3717, n3718, n3719, n3720, n3721, n3724, n3725, n3726,
         n3727, n3728, n3729, n3730, n3732, n3733, n3734, n3735, n3736, n3737,
         n3738, n3739, n3740, n3741, n3742, n3743, n3744, n3745, n3747, n3748,
         n3749, n3750, n3752, n3753, n3754, n3755, n3756, n3757, n3758, n3759,
         n3760, n3761, n3762, n3763, n3764, n3765, n3766, n3767, n3768, n3769,
         n3770, n3771, n3772, n3773, n3774, n3775, n3776, n3778, n3779, n3780,
         n3781, n3782, n3783, n3784, n3785, n3786, n3787, n3788, n3789, n3790,
         n3792, n3793, n3794, n3795, n3796, n3797, n3798, n3799, n3800, n3801,
         n3802, n3805, n3807, n3808, n3809, n3810, n3811, n3812, n3813, n3814,
         n3815, n3816, n3817, n3818, n3819, n3820, n3821, n3822, n3823, n3824,
         n3825, n3826, n3827, n3828, n3829, n3830, n3831, n3832, n3833, n3834,
         n3835, n3836, n3837, n3838, n3839, n3840, n3841, n3842, n3843, n3844,
         n3845, n3848, n3849, n3850, n3851, n3852, n3853, n3854, n3855, n3856,
         n3857, n3858, n3859, n3860, n3861, n3862, n3863, n3864, n3865, n3866,
         n3867, n3868, n3869, n3870, n3871, n3872, n3873, n3874, n3875, n3876,
         n3877, n3878, n3879, n3880, n3881, n3882, n3883, n3884, n3885, n3886,
         n3887, n3888, n3889, n3890, n3891, n3892, n3894, n3895, n3896, n3897,
         n3898, n3899, n3900, n3901, n3902, n3903, n3904, n3905, n3906, n3907,
         n3908, n3909, n3910, n3911, n3913, n3914, n3915, n3917, n3918, n3919,
         n3920, n3921, n3922, n3923, n3924, n3925, n3926, n3927, n3928, n3929,
         n3930, n3931, n3932, n3933, n3934, n3935, n3936, n3937, n3938, n3939,
         n3940, n3942, n3943, n3944, n3945, n3946, n3947, n3948, n3949, n3950,
         n3951, n3952, n3953, n3955, n3956, n3957, n3958, n3959, n3960, n3961,
         n3962, n3963, n3964, n3965, n3966, n3967, n3968, n3969, n3970, n3971,
         n3972, n3973, n3974, n3975, n3976, n3977, n3978, n3979, n3980, n3981,
         n3982, n3983, n3984, n3985, n3986, n3987, n3988, n3989, n3990, n3991,
         n3992, n3993, n3994, n3995, n3996, n3997, n3998, n3999, n4002, n4003,
         n4005, n4006, n4007, n4008, n4009, n4010, n4011, n4012, n4013, n4014,
         n4015, n4016, n4017, n4018, n4019, n4020, n4021, n4022, n4023, n4024,
         n4025, n4026, n4027, n4028, n4029, n4030, n4031, n4032, n4033, n4034,
         n4035, n4036, n4037, n4038, n4039, n4040, n4041, n4042, n4043, n4044,
         n4045, n4046, n4047, n4048, n4049, n4050, n4051, n4052, n4053, n4054,
         n4055, n4056, n4057, n4058, n4059, n4062, n4063, n4064, n4065, n4066,
         n4067, n4069, n4070, n4071, n4072, n4073, n4074, n4075, n4076, n4077,
         n4079, n4081, n4082, n4083, n4084, n4085, n4086, n4087, n4088, n4089,
         n4090, n4091, n4092, n4093, n4094, n4095, n4096, n4097, n4098, n4099,
         n4100, n4101, n4102, n4103, n4104, n4105, n4106, n4107, n4108, n4109,
         n4110, n4111, n4112, n4113, n4115, n4116, n4117, n4118, n4119, n4120,
         n4121, n4122, n4123, n4124, n4125, n4126, n4127, n4128, n4129, n4130,
         n4131, n4132, n4133, n4134, n4135, n4136, n4137, n4138, n4139, n4140,
         n4141, n4142, n4143, n4144, n4145, n4146, n4147, n4148, n4149, n4150,
         n4151, n4152, n4153, n4154, n4155, n4156, n4157, n4158, n4159, n4160,
         n4161, n4162, n4163, n4164, n4165, n4166, n4167, n4168, n4169, n4170,
         n4171, n4172, n4174, n4175, n4177, n4178, n4179, n4180, n4181, n4182,
         n4183, n4184, n4185, n4186, n4187, n4188, n4189, n4190, n4192, n4195,
         n4197, n4199, n4200, n4201, n4202, n4203, n4204, n4207, n4208, n4209,
         n4210, n4211, n4212, n4213, n4214, n4215, n4216, n4217, n4218, n4219,
         n4220, n4221, n4223, n4224, n4225, n4226, n4227, n4228, n4229, n4230,
         n4232, n4233, n4234, n4235, n4237, n4238, n4239, n4240, n4241, n4242,
         n4243, n4244, n4245, n4246, n4247, n4248, n4249, n4250, n4251, n4252,
         n4253, n4254, n4255, n4256, n4257, n4258, n4259, n4260, n4262, n4263,
         n4264, n4265, n4266, n4267, n4268, n4269, n4270, n4272, n4274, n4275,
         n4276, n4277, n4278, n4279, n4280, n4281, n4282, n4283, n4284, n4285,
         n4286, n4287, n4288, n4289, n4290, n4291, n4292, n4293, n4294, n4295,
         n4296, n4297, n4298, n4299, n4300, n4301, n4302, n4303, n4304, n4305,
         n4306, n4308, n4309, n4310, n4311, n4312, n4313, n4314, n4315, n4316,
         n4317, n4318, n4319, n4320, n4321, n4322, n4323, n4324, n4325, n4326,
         n4327, n4328, n4329, n4330, n4331, n4332, n4333, n4334, n4335, n4336,
         n4337, n4338, n4339, n4340, n4341, n4342, n4343, n4344, n4345, n4346,
         n4347, n4348, n4349, n4350, n4351, n4352, n4353, n4354, n4355, n4356,
         n4357, n4358, n4359, n4360, n4361, n4362, n4363, n4364, n4365, n4366,
         n4367, n4368, n4369, n4370, n4371, n4372, n4373, n4374, n4375, n4376,
         n4377, n4379, n4380, n4381, n4382, n4383, n4384, n4385, n4386, n4387,
         n4388, n4389, n4390, n4391, n4392, n4393, n4394, n4395, n4397, n4398,
         n4399, n4400, n4401, n4402, n4403, n4404, n4405, n4406, n4407, n4408,
         n4409, n4410, n4411, n4412, n4413, n4414, n4415, n4416, n4417, n4418,
         n4419, n4420, n4421, n4422, n4423, n4424, n4425, n4426, n4428, n4429,
         n4430, n4431, n4432, n4433, n4434, n4435, n4436, n4437, n4438, n4439,
         n4440, n4441, n4442, n4443, n4444, n4445, n4446, n4447, n4448, n4449,
         n4450, n4451, n4452, n4453, n4454, n4455, n4456, n4457, n4458, n4459,
         n4460, n4461, n4462, n4463, n4464, n4465, n4466, n4467, n4470, n4471,
         n4472, n4473, n4474, n4475, n4476, n4477, n4478, n4479, n4480, n4481,
         n4482, n4483, n4484, n4485, n4486, n4487, n4488, n4489, n4490, n4491,
         n4492, n4493, n4494, n4495, n4497, n4498, n4499, n4500, n4501, n4502,
         n4503, n4504, n4505, n4506, n4509, n4510, n4511, n4512, n4513, n4514,
         n4515, n4516, n4517, n4518, n4519, n4520, n4522, n4523, n4524, n4525,
         n4526, n4529, n4530, n4531, n4532, n4533, n4534, n4535, n4536, n4537,
         n4539, n4540, n4541, n4544, n4545, n4546, n4547, n4548, n4549, n4550,
         n4551, n4552, n4553, n4554, n4556, n4557, n4558, n4559, n4560, n4561,
         n4562, n4563, n4564, n4565, n4566, n4567, n4568, n4569, n4570, n4571,
         n4574, n4575, n4576, n4577, n4578, n4579, n4580, n4581, n4582, n4583,
         n4584, n4585, n4586, n4587, n4588, n4589, n4590, n4591, n4592, n4593,
         n4594, n4595, n4596, n4597, n4598, n4599, n4600, n4601, n4602, n4603,
         n4604, n4606, n4607, n4608, n4610, n4611, n4612, n4613, n4614, n4615,
         n4616, n4617, n4618, n4619, n4620, n4621, n4622, n4623, n4624, n4625,
         n4626, n4627, n4628, n4629, n4631, n4632, n4633, n4634, n4635, n4636,
         n4637, n4638, n4639, n4640, n4641, n4642, n4643, n4644, n4645, n4646,
         n4647, n4648, n4649, n4650, n4651, n4652, n4653, n4654, n4655, n4656,
         n4657, n4658, n4659, n4660, n4661, n4662, n4663, n4664, n4665, n4666,
         n4667, n4668, n4669, n4670, n4671, n4672, n4673, n4674, n4675, n4676,
         n4677, n4678, n4679, n4680, n4681, n4682, n4683, n4684, n4685, n4686,
         n4687, n4688, n4689, n4690, n4691, n4692, n4693, n4694, n4695, n4696,
         n4697, n4698, n4699, n4700, n4701, n4702, n4703, n4704, n4705, n4706,
         n4707, n4708, n4709, n4710, n4711, n4712, n4713, n4714, n4715, n4716,
         n4717, n4718, n4719, n4720, n4721, n4722, n4723, n4724, n4725, n4726,
         n4727, n4728, n4729, n4730, n4731, n4732, n4733, n4734, n4735, n4736,
         n4737, n4738, n4739, n4740, n4741, n4742, n4743, n4744, n4745, n4746,
         n4747, n4750, n4751, n4752, n4753, n4754, n4755, n4756, n4757, n4758,
         n4759, n4760, n4761, n4762, n4763, n4764, n4765, n4766, n4767, n4768,
         n4769, n4770, n4771, n4772, n4773, n4774, n4775, n4776, n4777, n4778,
         n4779, n4780, n4781, n4782, n4783, n4784, n4785, n4786, n4787, n4788,
         n4789, n4790, n4791, n4792, n4793, n4794, n4795, n4796, n4797, n4798,
         n4799, n4800, n4801, n4802, n4803, n4804, n4805, n4806, n4807, n4808,
         n4809, n4810, n4811, n4812, n4813, n4814, n4815, n4816, n4817, n4818,
         n4819, n4821, n4822, n4823, n4824, n4825, n4826, n4827, n4828, n4829,
         n4830, n4831, n4832, n4833, n4834, n4835, n4836, n4837, n4838, n4839,
         n4840, n4841, n4842, n4843, n4844, n4845, n4846, n4847, n4848, n4849,
         n4850, n4851, n4852, n4853, n4854, n4855, n4856, n4857, n4858, n4859,
         n4860, n4861, n4862, n4863, n4864, n4865, n4866, n4867, n4868, n4869,
         n4870, n4871, n4872, n4873, n4874, n4875, n4876, n4877, n4878, n4879,
         n4880, n4881, n4882, n4883, n4884, n4885, n4886, n4887, n4888, n4889,
         n4890, n4892, n4893, n4895, n4896, n4897, n4898, n4899, n4900, n4901,
         n4902, n4903, n4904, n4905, n4906, n4907, n4908, n4909, n4910, n4911,
         n4912, n4913, n4914, n4915, n4917, n4918, n4919, n4920, n4921, n4922,
         n4923, n4924, n4925, n4926, n4927, n4928, n4929, n4930, n4931, n4932,
         n4933, n4934, n4935, n4936, n4937, n4938, n4939, n4940, n4941, n4942,
         n4943, n4944, n4945, n4947, n4948, n4949, n4950, n4951, n4952, n4953,
         n4954, n4955, n4956, n4957, n4958, n4959, n4960, n4961, n4962, n4963,
         n4964, n4965, n4966, n4967, n4968, n4969, n4970, n4971, n4972, n4973,
         n4974, n4975, n4976, n4977, n4978, n4979, n4980, n4981, n4982, n4983,
         n4984, n4985, n4986, n4987, n4988, n4989, n4990, n4991, n4992, n4993,
         n4994, n4995, n4996, n4997, n4998, n4999, n5000, n5001, n5002, n5003,
         n5005, n5006, n5007, n5008, n5010, n5011, n5012, n5013, n5015, n5016,
         n5017, n5018, n5020, n5021, n5022, n5023, n5024, n5025, n5026, n5027,
         n5028, n5029, n5030, n5031, n5032, n5033, n5034, n5035, n5036, n5037,
         n5038, n5039, n5040, n5041, n5042, n5043, n5044, n5045, n5046, n5047,
         n5048, n5049, n5050, n5053, n5054, n5055, n5056, n5057, n5058, n5059,
         n5060, n5061, n5062, n5063, n5064, n5065, n5066, n5067, n5068, n5069,
         n5070, n5071, n5072, n5073, n5074, n5075, n5076, n5077, n5078, n5079,
         n5080, n5081, n5082, n5083, n5084, n5085, n5086, n5087, n5088, n5089,
         n5090, n5091, n5092, n5093, n5094, n5095, n5096, n5097, n5098, n5099,
         n5100, n5101, n5102, n5103, n5104, n5105, n5106, n5107, n5108, n5109,
         n5110, n5111, n5112, n5113, n5114, n5115, n5116, n5117, n5118, n5119,
         n5120, n5121, n5122, n5123, n5124, n5125, n5126, n5127, n5128, n5129,
         n5130, n5131, n5132, n5133, n5134, n5135, n5136, n5137, n5138, n5139,
         n5140, n5141, n5142, n5144, n5145, n5146, n5147, n5148, n5149, n5150,
         n5151, n5152, n5153, n5154, n5156, n5157, n5158, n5159, n5160, n5161,
         n5162, n5163, n5164, n5165, n5166, n5167, n5168, n5169, n5170, n5171,
         n5172, n5173, n5174, n5175, n5176, n5177, n5178, n5179, n5180, n5181,
         n5182, n5183, n5184, n5185, n5186, n5187, n5188, n5189, n5190, n5191,
         n5192, n5193, n5194, n5195, n5196, n5197, n5198, n5199, n5200, n5201,
         n5204, n5205, n5206, n5207, n5208, n5209, n5210, n5211, n5212, n5213,
         n5214, n5215, n5216, n5217, n5218, n5219, n5220, n5221, n5222, n5223,
         n5224, n5225, n5226, n5227, n5228, n5229, n5230, n5231, n5232, n5233,
         n5234, n5235, n5236, n5237, n5238, n5239, n5240, n5241, n5242, n5243,
         n5244, n5245, n5246, n5247, n5248, n5249, n5250, n5251, n5252, n5253,
         n5254, n5255, n5256, n5257, n5258, n5259, n5260, n5261, n5262, n5263,
         n5264, n5265, n5266, n5267, n5268, n5269, n5270, n5271, n5272, n5273,
         n5274, n5275, n5276, n5277, n5278, n5279, n5280, n5281, n5282, n5283,
         n5284, n5285, n5286, n5287, n5288, n5289, n5290, n5291, n5292, n5293,
         n5294, n5295, n5296, n5297, n5298, n5299, n5300, n5301, n5302, n5303,
         n5304, n5305, n5306, n5307, n5308, n5309, n5310, n5311, n5312, n5313,
         n5314, n5315, n5316, n5317, n5318, n5319, n5320, n5321, n5322, n5323,
         n5324, n5325, n5326, n5327, n5328, n5329, n5330, n5331, n5332, n5333,
         n5334, n5335, n5336, n5337, n5338, n5339, n5340, n5341, n5342, n5343,
         n5344, n5345, n5346, n5347, n5348, n5349, n5350, n5351, n5352, n5353,
         n5354, n5355, n5356, n5357, n5358, n5359, n5360, n5361, n5362, n5363,
         n5364, n5365, n5366, n5367, n5368, n5369, n5370, n5371, n5372, n5373,
         n5374, n5377, n5378, n5380, n5381, n5382, n5383, n5384, n5385, n5386,
         n5387, n5388, n5389, n5390, n5391, n5392, n5393, n5394, n5395, n5396,
         n5397, n5398, n5399, n5400, n5401, n5402, n5403, n5404, n5405, n5406,
         n5407, n5408, n5409, n5410, n5411, n5412, n5413, n5414, n5415, n5416,
         n5417, n5418, n5419, n5420, n5421, n5422, n5423, n5424, n5425, n5426,
         n5427, n5428, n5429, n5430, n5431, n5432, n5433, n5434, n5435, n5436,
         n5437, n5438, n5439, n5440, n5441, n5442, n5443, n5444, n5445, n5446,
         n5447, n5448, n5449, n5450, n5451, n5452, n5453, n5454, n5455, n5456,
         n5457, n5458, n5459, n5460, n5461, n5462, n5463, n5464, n5465, n5466,
         n5467, n5468, n5469, n5470, n5471, n5472, n5473, n5474, n5475, n5476,
         n5477, n5478, n5479, n5480, n5481, n5482, n5483, n5484, n5485, n5486,
         n5487, n5488, n5489, n5490, n5491, n5492, n5493, n5494, n5495, n5496,
         n5497, n5498, n5499, n5500, n5501, n5502, n5503, n5504, n5505, n5507,
         n5508, n5509, n5510, n5511, n5512, n5513, n5514, n5515, n5516, n5517,
         n5518, n5519, n5520, n5521, n5522, n5523, n5524, n5525, n5526, n5527,
         n5528, n5529, n5530, n5531, n5532, n5533, n5534, n5535, n5536, n5537,
         n5538, n5539, n5540, n5541, n5542, n5543, n5544, n5546, n5547, n5548,
         n5549, n5550, n5551, n5552, n5553, n5554, n5555, n5556, n5557, n5558,
         n5559, n5560, n5561, n5562, n5563, n5564, n5565, n5566, n5567, n5568,
         n5569, n5570, n5571, n5572, n5573, n5574, n5575, n5576, n5577, n5578,
         n5579, n5580, n5581, n5582, n5583, n5584, n5585, n5586, n5587, n5588,
         n5590, n5591, n5592, n5593, n5594, n5595, n5596, n5597, n5598, n5599,
         n5600, n5601, n5602, n5603, n5604, n5605, n5606, n5607, n5608, n5609,
         n5610, n5611, n5612, n5613, n5614, n5615, n5616, n5617, n5618, n5619,
         n5620, n5621, n5622, n5623, n5624, n5625, n5626, n5627, n5628, n5629,
         n5630, n5631, n5632, n5633, n5634, n5635, n5636, n5637, n5638, n5639,
         n5640, n5641, n5642, n5643, n5644, n5645, n5646, n5647, n5648, n5649,
         n5650, n5651, n5652, n5653, n5654, n5655, n5656, n5657, n5658, n5659,
         n5660, n5661, n5662, n5663, n5664, n5665, n5666, n5667, n5668, n5669,
         n5670, n5671, n5672, n5673, n5674, n5675, n5676, n5677, n5678, n5679,
         n5680, n5681, n5682, n5683, n5684, n5685, n5686, n5687, n5688, n5689,
         n5690, n5691, n5692, n5693, n5694, n5695, n5696, n5697, n5698, n5699,
         n5700, n5701, n5702, n5703, n5704, n5705, n5706, n5707, n5708, n5709,
         n5710, n5711, n5712, n5713, n5714, n5715, n5716, n5717, n5718, n5719,
         n5720, n5721, n5722, n5723, n5724, n5725, n5726, n5727, n5728, n5729,
         n5730, n5731, n5732, n5733, n5734, n5735, n5736, n5737, n5738, n5739,
         n5740, n5741, n5742, n5743, n5744, n5745, n5746, n5747, n5748, n5749,
         n5750, n5751, n5752, n5753, n5754, n5755, n5756, n5757, n5758, n5759,
         n5760, n5761, n5762, n5763, n5764, n5765, n5766, n5767, n5768, n5769,
         n5770, n5771, n5772, n5774, n5775, n5776, n5777, n5778, n5779, n5780,
         n5781, n5782, n5783, n5784, n5785, n5786, n5787, n5788, n5789, n5791,
         n5792, n5793, n5794, n5795, n5796, n5797, n5798, n5799, n5800, n5801,
         n5802, n5803, n5804, n5805, n5806, n5807, n5808, n5809, n5810, n5811,
         n5812, n5813, n5814, n5815, n5816, n5817, n5818, n5819, n5820, n5821,
         n5822, n5823, n5824, n5825, n5826, n5827, n5828, n5829, n5830, n5831,
         n5832, n5833, n5834, n5835, n5836, n5837, n5838, n5839, n5840, n5841,
         n5842, n5843, n5844, n5845, n5846, n5847, n5848, n5849, n5850, n5851,
         n5852, n5853, n5854, n5855, n5856, n5857, n5858, n5859, n5861, n5862,
         n5863, n5864, n5865, n5866, n5867, n5868, n5869, n5870, n5871, n5872,
         n5873, n5874, n5875, n5876, n5877, n5878, n5879, n5880, n5881, n5882,
         n5883, n5884, n5885, n5886, n5887, n5888, n5889, n5890, n5891, n5892,
         n5893, n5894, n5895, n5896, n5897, n5898, n5899, n5900, n5901, n5902,
         n5903, n5904, n5905, n5906, n5907, n5908, n5909, n5910, n5911, n5912,
         n5914, n5915, n5916, n5917, n5918, n5919, n5920, n5921, n5922, n5923,
         n5924, n5925, n5926, n5927, n5928, n5929, n5930, n5931, n5932, n5933,
         n5934, n5935, n5938, n5939, n5940, n5941, n5942, n5943, n5944, n5945,
         n5946, n5947, n5948, n5949, n5950, n5951, n5952, n5953, n5954, n5955,
         n5956, n5957, n5958, n5959, n5960, n5961, n5962, n5963, n5964, n5965,
         n5966, n5967, n5968, n5969, n5970, n5971, n5972, n5973, n5974, n5975,
         n5976, n5977, n5978, n5979, n5980, n5981, n5983, n5984, n5985, n5986,
         n5987, n5988, n5989, n5990, n5991, n5992, n5993, n5994, n5996, n5997,
         n5998, n5999, n6000, n6001, n6002, n6003, n6004, n6005, n6006, n6007,
         n6008, n6009, n6010, n6011, n6012, n6013, n6014, n6015, n6016, n6017,
         n6018, n6019, n6020, n6021, n6022, n6023, n6024, n6025, n6026, n6027,
         n6028, n6030, n6031, n6032, n6033, n6034, n6035, n6036, n6037, n6038,
         n6039, n6040, n6041, n6042, n6043, n6044, n6045, n6046, n6047, n6048,
         n6050, n6051, n6052, n6053, n6054, n6055, n6056, n6057, n6058, n6059,
         n6060, n6061, n6062, n6063, n6064, n6065, n6066, n6067, n6068, n6069,
         n6070, n6071, n6072, n6073, n6074, n6075, n6076, n6077, n6078, n6079,
         n6080, n6081, n6082, n6083, n6084, n6085, n6086, n6087, n6088, n6089,
         n6090, n6091, n6092, n6093, n6094, n6095, n6096, n6097, n6098, n6099,
         n6100, n6101, n6102, n6103, n6104, n6105, n6106, n6107, n6108, n6109,
         n6110, n6111, n6112, n6113, n6114, n6115, n6116, n6117, n6118, n6119,
         n6120, n6121, n6122, n6123, n6124, n6125, n6126, n6127, n6128, n6129,
         n6130, n6131, n6132, n6133, n6134, n6135, n6136, n6137, n6138, n6139,
         n6140, n6141, n6142, n6143, n6144, n6145, n6146, n6147, n6148, n6151,
         n6152, n6153, n6154, n6155, n6156, n6157, n6158, n6159, n6160, n6161,
         n6162, n6163, n6164, n6165, n6166, n6167, n6168, n6169, n6170, n6171,
         n6172, n6173, n6174, n6175, n6176, n6177, n6178, n6179, n6180, n6181,
         n6182, n6183, n6184, n6185, n6186, n6187, n6188, n6189, n6190, n6191,
         n6192, n6193, n6194, n6196, n6197, n6198, n6199, n6200, n6201, n6202,
         n6203, n6204, n6205, n6206, n6207, n6208, n6209, n6210, n6211, n6212,
         n6213, n6214, n6215, n6216, n6217, n6218, n6219, n6220, n6221, n6222,
         n6223, n6224, n6225, n6227, n6228, n6229, n6230, n6231, n6232, n6233,
         n6234, n6235, n6236, n6237, n6238, n6239, n6240, n6241, n6242, n6243,
         n6244, n6245, n6246, n6247, n6248, n6249, n6250, n6251, n6252, n6253,
         n6254, n6255, n6256, n6257, n6258, n6259, n6261, n6262, n6263, n6264,
         n6265, n6266, n6267, n6268, n6269, n6270, n6271, n6272, n6273, n6275,
         n6276, n6277, n6278, n6279, n6280, n6281, n6282, n6283, n6284, n6285,
         n6286, n6287, n6288, n6289, n6290, n6291, n6292, n6293, n6294, n6295,
         n6296, n6297, n6298, n6299, n6301, n6302, n6303, n6304, n6305, n6306,
         n6307, n6308, n6309, n6310, n6311, n6312, n6313, n6314, n6315, n6316,
         n6317, n6318, n6319, n6320, n6321, n6322, n6323, n6324, n6325, n6326,
         n6327, n6328, n6329, n6330, n6331, n6332, n6333, n6334, n6335, n6336,
         n6337, n6338, n6339, n6340, n6341, n6342, n6343, n6344, n6345, n6346,
         n6347, n6348, n6349, n6350, n6351, n6352, n6353, n6354, n6355, n6356,
         n6357, n6358, n6359, n6360, n6361, n6362, n6363, n6364, n6365, n6366,
         n6367, n6368, n6369, n6370, n6371, n6372, n6373, n6374, n6375, n6376,
         n6377, n6378, n6379, n6380, n6381, n6382, n6383, n6384, n6385, n6386,
         n6387, n6388, n6389, n6390, n6391, n6392, n6393, n6394, n6395, n6396,
         n6397, n6398, n6399, n6400, n6401, n6402, n6403, n6404, n6405, n6406,
         n6407, n6408, n6409, n6410, n6411, n6412, n6413, n6414, n6415, n6416,
         n6417, n6420, n6421, n6422, n6423, n6424, n6425, n6426, n6427, n6428,
         n6429, n6430, n6431, n6434, n6435, n6436, n6437, n6440, n6441, n6444,
         n6447, n6448, n6449, n6450, n6455, n6456, n6457, n6458, n6459, n6460,
         n6461, n6462, n6463, n6464, n6465, n6466, n6467, n6468, n6469, n6470,
         n6476, n6477, n6478, n6479, n6480, n6481, n6482, n6483, n6484, n6485,
         n6486, n6487, n6488, n6489, n6490, n6491, n6492, n6493, n6494, n6495,
         n6496, n6497, n6498, n6499, n6500, n6501, n6502, n6503, n6504, n6505,
         n6506, n6507, n6508, n6509, n6510, n6511, n6512, n6513, n6514, n6515,
         n6516, n6517, n6518, n6519, n6520, n6521, n6522, n6523, n6524, n6525,
         n6526, n6527, n6528, n6529, n6530, n6531, n6532, n6533, n6534, n6535,
         n6536, n6537, n6538, n6539, n6540, n6541, n6542, n6543, n6544, n6545,
         n6546, n6547, n6548, n6549, n6550, n6551, n6552, n6553, n6554, n6555,
         n6556, n6557, n6558, n6559, n6560, n6561, n6562, n6563, n6564, n6565,
         n6566, n6567, n6568, n6569, n6570, n6571, n6572, n6573, n6574, n6575,
         n6576, n6577, n6578, n6579, n6580, n6581, n6582, n6583, n6584, n6585,
         n6586, n6587, n6588, n6589, n6590, n6591, n6592, n6593, n6594, n6595,
         n6596, n6597, n6598, n6599, n6600, n6601, n6602, n6603, n6604, n6605,
         n6606, n6607, n6608, n6609, n6610, n6611, n6612, n6613, n6614, n6615,
         n6616, n6617, n6618, n6619, n6620, n6621, n6622, n6623, n6624, n6625,
         n6626, n6627, n6628, n6629, n6630, n6631, n6632, n6633, n6634, n6635,
         n6636, n6638, n6639, n6640, n6641, n6642, n6644, n6645, n6646, n6647,
         n6648, n6649, n6650, n6651, n6652, n6653, n6654, n6655, n6656, n6657,
         n6658, n6659, n6660, n6661, n6662, n6663, n6664, n6665, n6666, n6667,
         n6668, n6669, n6670, n6671, n6672, n6673, n6674, n6675, n6676, n6677,
         n6678, n6679, n6680, n6681, n6682, n6683, n6684, n6685, n6686, n6687,
         n6688, n6689, n6690, n6691, n6692, n6693, n6694, n6695, n6696, n6697,
         n6698, n6699, n6700, n6701, n6702, n6703, n6704, n6705, n6706, n6707,
         n6708, n6709, n6710, n6711, n6712, n6713, n6714, n6715, n6716, n6717,
         n6718, n6719, n6720, n6721, n6723, n6724, n6725, n6726, n6727, n6728,
         n6729, n6730, n6731, n6732, n6733, n6734, n6735, n6736, n6737, n6738,
         n6739, n6740, n6741, n6742, n6743, n6744, n6745, n6746, n6747, n6748,
         n6749, n6750, n6751, n6752, n6753, n6754, n6755, n6756, n6757, n6758,
         n6759, n6760, n6761, n6762, n6763, n6764, n6765, n6766, n6767, n6768,
         n6769, n6770, n6771, n6772, n6773, n6774, n6775, n6776, n6777, n6778,
         n6779, n6780, n6781, n6782, n6783, n6784, n6785, n6786, n6787, n6788,
         n6789, n6790, n6791, n6792, n6793, n6794, n6795, n6796, n6797, n6798,
         n6799, n6800, n6801, n6802, n6803, n6804, n6805, n6806, n6807, n6808,
         n6809, n6810, n6811, n6812, n6813, n6814, n6815, n6816, n6817, n6818,
         n6819, n6820, n6821, n6822, n6823, n6824, n6825, n6826, n6827, n6828,
         n6829, n6830, n6831, n6832, n6833, n6834, n6835, n6836, n6837, n6838,
         n6839, n6840, n6841, n6842, n6843, n6844, n6845, n6846, n6847, n6848,
         n6849, n6850, n6851, n6852, n6853, n6854, n6855, n6856, n6857, n6858,
         n6859, n6860, n6861, n6862, n6863, n6864, n6865, n6866, n6867, n6868,
         n6869, n6870, n6871, n6872, n6873, n6874, n6875, n6876, n6877, n6878,
         n6879, n6880, n6881, n6882, n6883, n6884, n6885, n6886, n6887, n6888,
         n6889, n6890, n6891, n6892, n6893, n6894, n6895, n6896, n6897, n6898,
         n6899, n6900, n6901, n6902, n6903, n6904, n6905, n6906, n6907, n6908,
         n6909, n6910, n6911, n6913, n6914, n6916, n6917, n6919, n6921, n6923,
         n6924, n6926, n6927, n6928, n6929, n6930, n6931, n6932, n6933, n6934,
         n6935, n6936, n6937, n6938, n6939, n6940, n6941, n6942, n6943, n6944,
         n6945, n6946, n6947, n6948, n6949, n6950, n6951, n6952, n6953, n6954,
         n6955, n6956, n6957, n6958, n6959, n6960, n6961, n6962, n6963, n6964,
         n6965, n6966, n6967, n6968, n6969, n6970, n6971, n6972, n6973, n6974,
         n6975, n6976, n6977, n6978, n6979, n6980, n6981, n6982, n6983, n6984,
         n6985, n6986, n6987, n6988, n6989, n6990, n6991, n6992, n6993, n6994,
         n6995, n6996, n6997, n6998, n6999, n7000, n7001, n7002, n7003, n7004,
         n7005, n7006, n7007, n7008, n7009, n7010, n7011, n7012, n7013, n7014,
         n7015, n7016, n7017, n7018, n7019, n7020, n7021, n7022, n7023, n7024,
         n7025, n7026, n7027, n7028, n7029, n7030, n7031, n7032, n7033, n7034,
         n7035, n7036, n7038, n7040, n7041, n7042, n7045, n7047, n7048, n7050,
         n7051, n7052, n7053, n7054, n7055, n7056, n7057, n7058, n7059, n7060,
         n7061, n7062, n7063, n7064, n7065, n7067, n7068, n7069;
  wire   [31:0] sram_data_out_w;
  wire   [3:0] sram_wen_ready_r;
  wire   [35:0] sram_addr_w;
  wire   [7:0] in_data_r;
  wire   [10:0] conv_result_w;
  wire   [13:11] result_w;
  wire   [3:1] curr_state;
  wire   [10:0] cnt;
  wire   [31:4] input_data_ready_r;
  wire   [31:0] sram_addr_wait_r;
  wire   [2:0] x_r;
  wire   [6:0] pre_state;
  wire   [13:0] out_data_wait_r;
  wire   [1:0] conv_inst_ns;
  wire   [10:0] conv_inst_data_bcd_4_r;
  wire   [16:0] conv_inst_conv_4_r;
  wire   [10:0] conv_inst_data_abc_3_r;
  wire   [16:0] conv_inst_conv_3_r;
  wire   [10:0] conv_inst_data_bcd_2_r;
  wire   [16:0] conv_inst_conv_2_r;
  wire   [10:0] conv_inst_data_abc_1_r;
  wire   [16:0] conv_inst_conv_1_r;
  wire   [8:0] conv_inst_data_bcd_w;
  wire   [9:0] conv_inst_data_abc_w;
  wire   [2:0] median_sobel_inst_ns;
  wire   [83:0] median_sobel_inst_med_sobel_e_wait_r;
  wire   [7:0] median_sobel_inst_angle;
  wire   [35:0] median_sobel_inst_G;
  wire   [7:1] median_sobel_inst_data_i_r;
  wire   [6:4] median_sobel_inst_data_h_r;
  wire   [7:0] median_sobel_inst_data_g_r;
  wire   [7:0] median_sobel_inst_data_f_r;
  wire   [7:0] median_sobel_inst_data_e_r;
  wire   [7:0] median_sobel_inst_data_d_r;
  wire   [7:0] median_sobel_inst_data_c_r;
  wire   [7:0] median_sobel_inst_data_b_r;
  wire   [7:0] median_sobel_inst_data_a_r;
  wire   [10:0] median_sobel_inst_sobel_out_data_w;
  wire   [7:0] median_sobel_inst_out_data_w;
  wire   [6:1] median_sobel_inst_u_median_filter_submodule_b9_r;
  wire   [6:0] median_sobel_inst_u_median_filter_submodule_b5_r;
  wire   [7:5] median_sobel_inst_u_median_filter_submodule_b1_r;
  wire   [6:5] median_sobel_inst_u_median_filter_submodule_a6_r;
  wire   [6:2] median_sobel_inst_u_median_filter_submodule_a5_r;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a9;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a6;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a3;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a8;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a5;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a2;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a7;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a4;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a1;
  wire   [12:8] median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r;
  wire   [16:9] median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r;
  wire   [15:11] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r;
  wire   [12:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r;
  wire   [11:1] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r;
  wire   [21:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs;
  wire   [21:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay;
  wire   [3:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_delay;
  wire   [3:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_delay;
  wire   [9:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_abs;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_imm;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_imm;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy2_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx2_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1_w;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p9_d_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p1_d_r;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gy2;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx2;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gy1;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p9_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p8_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p7_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p6_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p4_r;
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p3_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p2_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p1_r;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_b;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_a;
  wire   [9:2] median_sobel_inst_u_sober_compare_submodule_temp_b_r;

  sram_512x8 SRAM_inst_loop_0__u_sram ( .Q(sram_data_out_w[7:0]), .A(
        sram_addr_w[8:0]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[0]) );
  sram_512x8 SRAM_inst_loop_1__u_sram ( .Q(sram_data_out_w[15:8]), .A(
        sram_addr_w[17:9]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[1]) );
  sram_512x8 SRAM_inst_loop_2__u_sram ( .Q(sram_data_out_w[23:16]), .A(
        sram_addr_w[26:18]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[2]) );
  sram_512x8 SRAM_inst_loop_3__u_sram ( .Q(sram_data_out_w[31:24]), .A(
        sram_addr_w[35:27]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[3]) );
  DFFRX4 input_data_ready_r_reg_25_ ( .D(N712), .CK(i_clk), .RN(n6933), .Q(
        input_data_ready_r[25]), .QN(n6484) );
  DFFRX4 input_data_ready_r_reg_24_ ( .D(N711), .CK(i_clk), .RN(n6914), .Q(
        input_data_ready_r[24]), .QN(n6896) );
  DFFRX4 curr_state_reg_1_ ( .D(n1437), .CK(i_clk), .RN(n6940), .Q(
        curr_state[1]), .QN(n449) );
  DFFRX4 cnt_reg_0_ ( .D(n484), .CK(i_clk), .RN(n6926), .Q(cnt[0]) );
  DFFRX4 cnt_reg_1_ ( .D(n483), .CK(i_clk), .RN(n6936), .Q(cnt[1]), .QN(n6529)
         );
  DFFRX4 x_origin_r_reg_0_ ( .D(n489), .CK(i_clk), .RN(n6927), .Q(N730), .QN(
        n469) );
  DFFRX4 input_data_ready_r_reg_27_ ( .D(N714), .CK(i_clk), .RN(i_rst_n), .Q(
        input_data_ready_r[27]), .QN(n6561) );
  DFFRX4 input_data_ready_r_reg_3_ ( .D(N690), .CK(i_clk), .RN(i_rst_n), .Q(
        n6498), .QN(n833) );
  DFFRX4 input_data_ready_r_reg_1_ ( .D(N688), .CK(i_clk), .RN(n6939), .QN(
        n873) );
  DFFRX4 input_data_ready_r_reg_20_ ( .D(N707), .CK(i_clk), .RN(i_rst_n), .Q(
        n6889), .QN(n839) );
  DFFRX4 input_data_ready_r_reg_13_ ( .D(N700), .CK(i_clk), .RN(n6913), .Q(
        n6485), .QN(n844) );
  DFFRX1 med_sobel_r_reg ( .D(n1443), .CK(i_clk), .RN(n6933), .QN(n6570) );
  DFFSX1 sram_wen_ready_r_reg_3_ ( .D(N814), .CK(i_clk), .SN(n6929), .Q(
        sram_wen_ready_r[3]), .QN(n6744) );
  DFFSX1 sram_wen_ready_r_reg_0_ ( .D(N811), .CK(i_clk), .SN(n6929), .Q(
        sram_wen_ready_r[0]) );
  DFFSX1 sram_wen_ready_r_reg_1_ ( .D(N812), .CK(i_clk), .SN(n6929), .Q(
        sram_wen_ready_r[1]), .QN(n6777) );
  DFFSX1 sram_wen_ready_r_reg_2_ ( .D(N813), .CK(i_clk), .SN(n6929), .Q(
        sram_wen_ready_r[2]), .QN(n6778) );
  DFFSX1 pre_state_reg_1__3_ ( .D(pre_state[3]), .CK(i_clk), .SN(n6929), .Q(
        pre_state[6]) );
  DFFRX1 pre_state_reg_1__1_ ( .D(pre_state[1]), .CK(i_clk), .RN(n6934), .Q(
        pre_state[5]), .QN(n901) );
  DFFRX1 x_minus_one_r_reg_2_ ( .D(N726), .CK(i_clk), .RN(n6924), .QN(n821) );
  DFFRX1 x_plus_one_r_reg_2_ ( .D(n2650), .CK(i_clk), .RN(n6924), .QN(n802) );
  DFFRX1 pre_state_reg_2__0_ ( .D(pre_state[4]), .CK(i_clk), .RN(n6924), .Q(
        n899) );
  DFFRX1 pre_state_reg_1__0_ ( .D(pre_state[0]), .CK(i_clk), .RN(n6924), .Q(
        pre_state[4]) );
  DFFRX1 x_minus_one_r_reg_1_ ( .D(n2651), .CK(i_clk), .RN(n6924), .QN(n800)
         );
  DFFRX1 x_plus_two_r_reg_2_ ( .D(N732), .CK(i_clk), .RN(n6924), .Q(n6648), 
        .QN(n818) );
  DFFRX1 out_valid_ready_r_reg ( .D(out_valid_wait_r), .CK(i_clk), .RN(n6924), 
        .Q(o_out_valid), .QN(n819) );
  DFFRX1 x_r_reg_0_ ( .D(N755), .CK(i_clk), .RN(n6936), .Q(x_r[0]) );
  DFFRX1 out_data_ready_r_reg_8_ ( .D(out_data_wait_r[8]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[8]) );
  DFFRX1 out_data_ready_r_reg_9_ ( .D(out_data_wait_r[9]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[9]) );
  DFFRX1 out_data_ready_r_reg_10_ ( .D(out_data_wait_r[10]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[10]) );
  DFFRX1 out_data_ready_r_reg_11_ ( .D(out_data_wait_r[11]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[11]) );
  DFFRX1 out_data_ready_r_reg_12_ ( .D(out_data_wait_r[12]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[12]) );
  DFFRX1 out_data_ready_r_reg_13_ ( .D(out_data_wait_r[13]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[13]) );
  DFFRX1 x_delay_r_reg_1__1_ ( .D(x_delay_r_0__1_), .CK(i_clk), .RN(n6936), 
        .Q(x_delay_r_1__1_) );
  DFFRX1 in_data_r_reg_7_ ( .D(i_in_data[7]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[7]) );
  DFFRX1 in_data_r_reg_6_ ( .D(i_in_data[6]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[6]) );
  DFFRX1 in_data_r_reg_5_ ( .D(i_in_data[5]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[5]) );
  DFFRX1 in_data_r_reg_4_ ( .D(i_in_data[4]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[4]) );
  DFFRX1 in_data_r_reg_3_ ( .D(i_in_data[3]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[3]) );
  DFFRX1 in_data_r_reg_2_ ( .D(i_in_data[2]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[2]) );
  DFFRX1 in_data_r_reg_1_ ( .D(i_in_data[1]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[1]) );
  DFFRX1 in_data_r_reg_0_ ( .D(i_in_data[0]), .CK(i_clk), .RN(n6936), .Q(
        in_data_r[0]) );
  DFFSXL pre_state_reg_2__3_ ( .D(pre_state[6]), .CK(i_clk), .SN(n6929), .QN(
        n7025) );
  DFFRX1 pre_state_reg_2__1_ ( .D(pre_state[5]), .CK(i_clk), .RN(n6936), .QN(
        n900) );
  DFFRX1 x_delay_r_reg_1__0_ ( .D(x_delay_r_0__0_), .CK(i_clk), .RN(n6936), 
        .Q(x_delay_r_1__0_) );
  DFFRX1 x_delay_r_reg_0__1_ ( .D(x_r[1]), .CK(i_clk), .RN(n6936), .Q(
        x_delay_r_0__1_) );
  DFFRX1 x_delay_r_reg_0__0_ ( .D(x_r[0]), .CK(i_clk), .RN(n6936), .Q(
        x_delay_r_0__0_) );
  DFFRX4 input_data_ready_r_reg_28_ ( .D(N715), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[28]), .QN(n6478) );
  DFFRX4 input_data_ready_r_reg_0_ ( .D(N687), .CK(i_clk), .RN(n6913), .Q(
        n2726), .QN(n862) );
  DFFRX1 depth_ready_r_reg_1_ ( .D(n486), .CK(i_clk), .RN(n6936), .Q(n822) );
  DFFRX1 med_done_r_reg ( .D(med_done_w), .CK(i_clk), .RN(n6936), .Q(n841) );
  DFFRX1 x_plus_two_r_reg_1_ ( .D(n468), .CK(i_clk), .RN(n6936), .Q(n879), 
        .QN(n6589) );
  DFFRX1 sram_addr_ready_r_reg_0__8_ ( .D(sram_addr_wait_r[7]), .CK(i_clk), 
        .RN(n6936), .Q(sram_addr_w[8]), .QN(n412) );
  DFFRX1 sram_addr_ready_r_reg_2__7_ ( .D(sram_addr_wait_r[22]), .CK(i_clk), 
        .RN(n6936), .Q(sram_addr_w[25]), .QN(n427) );
  DFFRX1 sram_addr_ready_r_reg_2__1_ ( .D(sram_addr_wait_r[16]), .CK(i_clk), 
        .RN(n6936), .Q(sram_addr_w[19]), .QN(n421) );
  DFFRX1 sram_addr_ready_r_reg_0__7_ ( .D(sram_addr_wait_r[6]), .CK(i_clk), 
        .RN(n6936), .Q(sram_addr_w[7]), .QN(n411) );
  DFFRX1 out_data_ready_r_reg_1_ ( .D(out_data_wait_r[1]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[1]) );
  DFFRX1 out_data_ready_r_reg_3_ ( .D(out_data_wait_r[3]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[3]) );
  DFFRX1 out_data_ready_r_reg_2_ ( .D(out_data_wait_r[2]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[2]) );
  DFFRX1 out_data_ready_r_reg_5_ ( .D(out_data_wait_r[5]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[5]) );
  DFFRX1 sram_addr_ready_r_reg_2__2_ ( .D(sram_addr_wait_r[17]), .CK(i_clk), 
        .RN(n6936), .Q(sram_addr_w[20]), .QN(n422) );
  DFFRX2 out_data_ready_r_reg_7_ ( .D(out_data_wait_r[7]), .CK(i_clk), .RN(
        n6923), .Q(o_out_data[7]) );
  DFFRX1 depth_ready_r_reg_0_ ( .D(n485), .CK(i_clk), .RN(n6936), .Q(n6665), 
        .QN(n465) );
  DFFRX2 conv_inst_data_abc_1_r_reg_4_ ( .D(conv_inst_N128), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_abc_1_r[4]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_0_ ( .D(n6479), .CK(i_clk), .RN(n6919), 
        .Q(conv_inst_data_abc_3_r[0]) );
  DFFRX1 conv_inst_data_abc_r_reg_1_ ( .D(n7007), .CK(i_clk), .RN(n6935), .Q(
        conv_inst_n114), .QN(n6481) );
  DFFRX1 conv_inst_data_bcd_r_reg_1_ ( .D(conv_inst_data_bcd_w[1]), .CK(i_clk), 
        .RN(n6935), .Q(conv_inst_n105), .QN(n6536) );
  DFFRX1 conv_inst_o_out_valid_ready_r_reg ( .D(conv_inst_N287), .CK(i_clk), 
        .RN(n6935), .QN(conv_out_valid_w) );
  DFFRX2 conv_inst_data_abc_1_r_reg_2_ ( .D(conv_inst_N126), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_1_r[2]) );
  DFFRX2 conv_inst_conv_1_r_reg_2_ ( .D(conv_inst_N221), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_1_r[2]) );
  DFFRX2 conv_inst_conv_3_r_reg_0_ ( .D(conv_inst_N253), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_3_r[0]) );
  DFFRX2 conv_inst_conv_2_r_reg_2_ ( .D(conv_inst_N238), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_2_r[2]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_8_ ( .D(conv_inst_N143), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_bcd_2_r[8]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_2_ ( .D(conv_inst_N199), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_abc_3_r[2]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_0_ ( .D(n6491), .CK(i_clk), .RN(n6919), 
        .Q(conv_inst_data_bcd_4_r[0]) );
  DFFRHQX1 conv_inst_conv_4_r_reg_13_ ( .D(conv_inst_N283), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n42) );
  DFFRX2 conv_inst_conv_3_r_reg_2_ ( .D(conv_inst_N255), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_3_r[2]) );
  DFFRX2 conv_inst_conv_4_r_reg_0_ ( .D(conv_inst_N270), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_4_r[0]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_8_ ( .D(conv_inst_N216), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_4_r[8]) );
  DFFRX2 conv_inst_conv_4_r_reg_2_ ( .D(conv_inst_N272), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_4_r[2]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_3_ ( .D(conv_inst_N127), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_1_r[3]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_6_ ( .D(conv_inst_N141), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_2_r[6]) );
  DFFRX2 conv_inst_conv_4_r_reg_1_ ( .D(conv_inst_N271), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_4_r[1]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_1_ ( .D(conv_inst_N209), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_4_r[1]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_3_ ( .D(conv_inst_N211), .CK(i_clk), .RN(
        n6924), .Q(conv_inst_data_bcd_4_r[3]) );
  DFFRX2 conv_inst_conv_1_r_reg_9_ ( .D(conv_inst_N228), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_1_r[9]), .QN(n6630) );
  DFFRX2 conv_inst_conv_2_r_reg_5_ ( .D(conv_inst_N241), .CK(i_clk), .RN(n6919), .QN(n6598) );
  DFFRX2 conv_inst_conv_1_r_reg_4_ ( .D(conv_inst_N223), .CK(i_clk), .RN(n6939), .Q(conv_inst_conv_1_r[4]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_1_ ( .D(conv_inst_N198), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_abc_3_r[1]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_6_ ( .D(conv_inst_N214), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_4_r[6]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_6_ ( .D(conv_inst_N203), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_3_r[6]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_4_ ( .D(conv_inst_N212), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_bcd_4_r[4]) );
  DFFRX2 conv_inst_conv_4_r_reg_5_ ( .D(conv_inst_N275), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_4_r[5]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_8_ ( .D(conv_inst_N74), .CK(i_clk), 
        .RN(n6942), .Q(conv_result_w[8]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_2_ ( .D(conv_inst_N210), .CK(i_clk), .RN(
        n6917), .Q(conv_inst_data_bcd_4_r[2]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_2_ ( .D(conv_inst_N137), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_2_r[2]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_4_ ( .D(conv_inst_N139), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_data_bcd_2_r[4]) );
  DFFRX2 conv_inst_conv_3_r_reg_10_ ( .D(conv_inst_N263), .CK(i_clk), .RN(
        n6914), .Q(conv_inst_conv_3_r[10]), .QN(n6528) );
  DFFRX2 conv_inst_conv_2_r_reg_6_ ( .D(conv_inst_N242), .CK(i_clk), .RN(n6921), .Q(conv_inst_conv_2_r[6]) );
  DFFRHQX1 conv_inst_conv_3_r_reg_9_ ( .D(conv_inst_N262), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n59) );
  DFFRX2 conv_inst_conv_4_r_reg_9_ ( .D(conv_inst_N279), .CK(i_clk), .RN(n6941), .Q(conv_inst_conv_4_r[9]) );
  DFFRX2 conv_inst_conv_2_r_reg_16_ ( .D(conv_inst_N252), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_2_r[16]), .QN(n6741) );
  DFFRX2 conv_inst_conv_3_r_reg_16_ ( .D(conv_inst_N269), .CK(i_clk), .RN(
        n6940), .Q(conv_inst_conv_3_r[16]) );
  DFFRX2 conv_inst_conv_4_r_reg_14_ ( .D(conv_inst_N284), .CK(i_clk), .RN(
        n6933), .Q(conv_inst_conv_4_r[14]), .QN(n2769) );
  DFFRX2 conv_inst_conv_3_r_reg_14_ ( .D(conv_inst_N267), .CK(i_clk), .RN(
        n6928), .Q(conv_inst_conv_3_r[14]) );
  DFFRX2 conv_inst_conv_4_r_reg_10_ ( .D(conv_inst_N280), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_4_r[10]) );
  DFFRX1 conv_inst_data_abc_3_r_reg_9_ ( .D(conv_inst_N206), .CK(i_clk), .RN(
        n6935), .Q(conv_inst_data_abc_3_r[9]) );
  DFFRX1 conv_inst_data_abc_1_r_reg_10_ ( .D(conv_inst_N134), .CK(i_clk), .RN(
        n6935), .Q(conv_inst_data_abc_1_r[10]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_2_ ( .D(conv_inst_N68), .CK(i_clk), 
        .RN(n6919), .Q(conv_result_w[2]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_0_ ( .D(conv_inst_N66), .CK(i_clk), 
        .RN(n6927), .Q(conv_result_w[0]) );
  DFFRX1 conv_inst_data_abc_r_reg_3_ ( .D(conv_inst_data_abc_w[3]), .CK(i_clk), 
        .RN(n6924), .Q(conv_inst_n32), .QN(n6730) );
  DFFRX1 conv_inst_data_bcd_r_reg_2_ ( .D(conv_inst_data_bcd_w[2]), .CK(i_clk), 
        .RN(n6939), .Q(conv_inst_n33), .QN(n6729) );
  DFFRX1 conv_inst_data_bcd_r_reg_3_ ( .D(conv_inst_data_bcd_w[3]), .CK(i_clk), 
        .RN(n6941), .Q(conv_inst_n22), .QN(n6537) );
  DFFRX1 conv_inst_data_abc_r_reg_0_ ( .D(conv_inst_data_abc_w[0]), .CK(i_clk), 
        .RN(n6936), .Q(n6752), .QN(conv_inst_n11) );
  DFFRX1 conv_inst_data_bcd_r_reg_0_ ( .D(conv_inst_data_bcd_w[0]), .CK(i_clk), 
        .RN(n6933), .Q(n6751), .QN(conv_inst_n13) );
  DFFRX4 conv_inst_cnt_reg_1_ ( .D(conv_inst_N57), .CK(i_clk), .RN(n6940), .Q(
        n3730), .QN(conv_inst_n27) );
  DFFRX4 conv_inst_cnt_reg_0_ ( .D(conv_inst_N56), .CK(i_clk), .RN(n6940), .Q(
        n6555), .QN(conv_inst_n28) );
  DFFRX1 median_sobel_inst_G_reg_2__0_ ( .D(median_sobel_inst_n480), .CK(i_clk), .RN(n6927), .Q(median_sobel_inst_G[15]), .QN(n2727) );
  DFFRX1 median_sobel_inst_G_reg_2__1_ ( .D(median_sobel_inst_n476), .CK(i_clk), .RN(n6921), .Q(median_sobel_inst_G[16]), .QN(n3531) );
  DFFRX1 median_sobel_inst_G_reg_2__2_ ( .D(median_sobel_inst_n472), .CK(i_clk), .RN(n6939), .Q(median_sobel_inst_G[17]), .QN(n3530) );
  DFFRX1 median_sobel_inst_G_reg_2__3_ ( .D(median_sobel_inst_n468), .CK(i_clk), .RN(n6926), .Q(median_sobel_inst_G[18]), .QN(n2704) );
  DFFRX1 median_sobel_inst_G_reg_2__4_ ( .D(median_sobel_inst_n464), .CK(i_clk), .RN(n6927), .Q(median_sobel_inst_G[19]) );
  DFFRX1 median_sobel_inst_G_reg_2__5_ ( .D(median_sobel_inst_n460), .CK(i_clk), .RN(n6936), .Q(median_sobel_inst_G[20]) );
  DFFRX1 median_sobel_inst_G_reg_2__6_ ( .D(median_sobel_inst_n456), .CK(i_clk), .RN(n6917), .Q(median_sobel_inst_G[21]), .QN(n2758) );
  DFFRX1 median_sobel_inst_G_reg_2__7_ ( .D(median_sobel_inst_n452), .CK(i_clk), .RN(n6928), .Q(median_sobel_inst_G[22]), .QN(n2684) );
  DFFRX1 median_sobel_inst_G_reg_2__8_ ( .D(median_sobel_inst_n448), .CK(i_clk), .RN(n6939), .Q(median_sobel_inst_G[23]), .QN(n3528) );
  DFFRX1 median_sobel_inst_G_reg_2__9_ ( .D(median_sobel_inst_n444), .CK(i_clk), .RN(n6932), .Q(median_sobel_inst_G[24]) );
  DFFRX1 median_sobel_inst_angle_reg_2__0_ ( .D(median_sobel_inst_n488), .CK(
        i_clk), .RN(n6932), .Q(median_sobel_inst_angle[4]), .QN(n2686) );
  DFFRX1 median_sobel_inst_angle_reg_2__1_ ( .D(median_sobel_inst_n484), .CK(
        i_clk), .RN(n6932), .Q(median_sobel_inst_angle[5]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__7_ ( .D(n6530), .CK(
        i_clk), .RN(n6932), .QN(median_sobel_inst_n408) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__6_ ( .D(n6547), .CK(
        i_clk), .RN(n6932), .Q(n3501), .QN(median_sobel_inst_n369) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__6_ ( .D(n6550), .CK(
        i_clk), .RN(n6932), .Q(n3517), .QN(median_sobel_inst_n361) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__6_ ( .D(n6524), .CK(
        i_clk), .RN(n6932), .Q(n2697), .QN(median_sobel_inst_n385) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__4_ ( .D(n6531), .CK(
        i_clk), .RN(n6932), .QN(median_sobel_inst_n363) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__2_ ( .D(n6523), .CK(
        i_clk), .RN(n6932), .QN(median_sobel_inst_n421) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__4_ ( .D(
        median_sobel_inst_n615), .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_n959), .QN(n2736) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__4_ ( .D(n6688), .CK(
        i_clk), .RN(n6928), .Q(n3491), .QN(median_sobel_inst_n419) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__6_ ( .D(n6696), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n329) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__6_ ( .D(n6727), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n353) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__1_ ( .D(n6668), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n252) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__2_ ( .D(n6669), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n253) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__5_ ( .D(n6760), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n264) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__5_ ( .D(n6685), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n386) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__3_ ( .D(n6695), .CK(
        i_clk), .RN(n6928), .Q(n7026), .QN(median_sobel_inst_n396) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__0_ ( .D(n6675), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n423) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__3_ ( .D(n6674), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n356) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[51]), .CK(i_clk), .RN(n6928), .Q(
        n7021), .QN(median_sobel_inst_n229) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[25]), .CK(i_clk), .RN(n6928), .Q(
        n6774), .QN(median_sobel_inst_n199) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[52]), .CK(i_clk), .RN(n6928), .Q(
        n6770), .QN(median_sobel_inst_n230) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[50]), .CK(i_clk), .RN(n6928), 
        .QN(median_sobel_inst_n228) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[19]), .CK(i_clk), .RN(n6928), 
        .QN(median_sobel_inst_n192) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[75]), .CK(i_clk), .RN(n6928), 
        .QN(median_sobel_inst_n168) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[43]), .CK(i_clk), .RN(n6928), 
        .QN(median_sobel_inst_n220) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[44]), .CK(i_clk), .RN(n6928), .Q(
        n2732), .QN(median_sobel_inst_n221) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[49]), .CK(i_clk), .RN(n6928), .Q(
        n2721), .QN(median_sobel_inst_n227) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[79]), .CK(i_clk), .RN(n6931), .Q(
        n7019), .QN(median_sobel_inst_n173) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__1_ ( .D(n6707), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n342) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[53]), .CK(i_clk), .RN(n6928), .Q(
        n6771), .QN(median_sobel_inst_n231) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[80]), .CK(i_clk), .RN(n6931), .Q(
        n2735), .QN(median_sobel_inst_n174) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[81]), .CK(i_clk), .RN(n6931), .Q(
        n2738), .QN(median_sobel_inst_n175) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[78]), .CK(i_clk), .RN(n6928), .Q(
        n2729), .QN(median_sobel_inst_n172) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[77]), .CK(i_clk), .RN(n6931), .Q(
        n2720), .QN(median_sobel_inst_n171) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[71]), .CK(i_clk), .RN(n6928), .Q(
        n2711), .QN(median_sobel_inst_n164) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__7_ ( .D(n6691), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n400) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[72]), .CK(i_clk), .RN(n6928), .Q(
        n2730), .QN(median_sobel_inst_n165) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[73]), .CK(i_clk), .RN(n6928), .Q(
        n6761), .QN(median_sobel_inst_n166) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[74]), .CK(i_clk), .RN(n6928), 
        .QN(median_sobel_inst_n167) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__4_ ( .D(n6670), .CK(
        i_clk), .RN(n6928), .QN(median_sobel_inst_n427) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__4_ ( .D(n6662), .CK(
        i_clk), .RN(n6928), .Q(n3508), .QN(median_sobel_inst_n435) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[20]), .CK(i_clk), .RN(n6928), .Q(
        n6755), .QN(median_sobel_inst_n193) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[9]), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n181) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__3_ ( .D(n6666), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n428) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__3_ ( .D(n6704), .CK(
        i_clk), .RN(n6942), .QN(median_sobel_inst_n254) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__4_ ( .D(n6759), .CK(
        i_clk), .RN(n6941), .QN(median_sobel_inst_n263) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__7_ ( .D(
        median_sobel_inst_n572), .CK(i_clk), .RN(n6939), .QN(
        median_sobel_inst_n368) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__5_ ( .D(
        median_sobel_inst_n574), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_n678) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__2_ ( .D(
        median_sobel_inst_n577), .CK(i_clk), .RN(n6913), .QN(
        median_sobel_inst_n373) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__2_ ( .D(
        median_sobel_inst_n569), .CK(i_clk), .RN(n6933), .Q(n2693), .QN(
        median_sobel_inst_n381) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__1_ ( .D(
        median_sobel_inst_n570), .CK(i_clk), .RN(n6941), .Q(n7031), .QN(
        median_sobel_inst_n382) );
  DFFRHQX1 median_sobel_inst_cs_reg_2_ ( .D(median_sobel_inst_ns[2]), .CK(
        i_clk), .RN(n6931), .Q(median_sobel_inst_n702) );
  DFFRHQX1 median_sobel_inst_cnt_reg_4_ ( .D(median_sobel_inst_N116), .CK(
        i_clk), .RN(n6931), .Q(median_sobel_inst_n713) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__1_ ( .D(
        median_sobel_inst_n546), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n406) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__5_ ( .D(
        median_sobel_inst_n534), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n410) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__3_ ( .D(
        median_sobel_inst_n544), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_n697), .QN(n6795) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__4_ ( .D(
        median_sobel_inst_n543), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_n708), .QN(n6556) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[63]), .CK(i_clk), .RN(n6943), .Q(
        n6841), .QN(median_sobel_inst_n243) );
  DFFRX2 median_sobel_inst_cnt_reg_2_ ( .D(median_sobel_inst_N114), .CK(i_clk), 
        .RN(n6941), .QN(median_sobel_inst_n325) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__3_ ( .D(
        median_sobel_inst_n576), .CK(i_clk), .RN(n6941), .Q(n7030), .QN(
        median_sobel_inst_n372) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__0_ ( .D(
        median_sobel_inst_n571), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n383) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__1_ ( .D(n6673), .CK(
        i_clk), .RN(n6943), .Q(n2698), .QN(median_sobel_inst_n422) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__0_ ( .D(n6714), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n343) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__0_ ( .D(
        median_sobel_inst_n515), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_n107), .QN(n2723) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__7_ ( .D(n6711), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n344) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__4_ ( .D(n6712), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n339) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__5_ ( .D(
        median_sobel_inst_n550), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_n649) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__5_ ( .D(n6700), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n338) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__7_ ( .D(n6694), .CK(
        i_clk), .RN(n6943), .Q(n2751), .QN(median_sobel_inst_n336) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__2_ ( .D(n6699), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n341) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__2_ ( .D(n6684), .CK(
        i_clk), .RN(n6921), .QN(median_sobel_inst_n349) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__5_ ( .D(n6683), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n418) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__0_ ( .D(n6690), .CK(
        i_clk), .RN(n6924), .QN(median_sobel_inst_n351) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__6_ ( .D(n6710), .CK(
        i_clk), .RN(n6919), .QN(median_sobel_inst_n409) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__1_ ( .D(n6686), .CK(
        i_clk), .RN(n6913), .QN(median_sobel_inst_n438) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__5_ ( .D(n6701), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n426) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__7_ ( .D(n6682), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n384) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__7_ ( .D(n6681), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n416) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__7_ ( .D(n6726), .CK(
        i_clk), .RN(n6943), .Q(n2748), .QN(median_sobel_inst_n352) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__0_ ( .D(
        median_sobel_inst_n619), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_n321) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__7_ ( .D(n6693), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n360) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__2_ ( .D(n6721), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n357) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__5_ ( .D(n6678), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n434) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__3_ ( .D(
        median_sobel_inst_n616), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_n150) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__3_ ( .D(n6703), .CK(
        i_clk), .RN(n6943), .Q(n7027), .QN(median_sobel_inst_n436) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__0_ ( .D(n6725), .CK(
        i_clk), .RN(n6943), .Q(n3513), .QN(median_sobel_inst_n359) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__5_ ( .D(n6680), .CK(
        i_clk), .RN(n6943), .Q(n3518), .QN(median_sobel_inst_n354) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__5_ ( .D(n6706), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n330) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__7_ ( .D(n6698), .CK(
        i_clk), .RN(n6943), .QN(median_sobel_inst_n328) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__2_ ( .D(n6708), .CK(
        i_clk), .RN(n6917), .Q(n7029), .QN(median_sobel_inst_n333) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__1_ ( .D(n6672), .CK(
        i_clk), .RN(n6931), .Q(n2703), .QN(median_sobel_inst_n358) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__6_ ( .D(n6697), .CK(
        i_clk), .RN(n6942), .QN(median_sobel_inst_n401) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__0_ ( .D(
        median_sobel_inst_n507), .CK(i_clk), .RN(n6914), .Q(
        median_sobel_inst_n785), .QN(n2728) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__6_ ( .D(n6705), .CK(
        i_clk), .RN(n6940), .Q(n2745), .QN(median_sobel_inst_n377) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__2_ ( .D(
        median_sobel_inst_n553), .CK(i_clk), .RN(n6924), .Q(
        median_sobel_inst_n660) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__1_ ( .D(n6702), .CK(
        i_clk), .RN(n6931), .Q(n3499), .QN(median_sobel_inst_n398) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__5_ ( .D(n6750), .CK(
        i_clk), .RN(n6921), .QN(median_sobel_inst_n256) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__3_ ( .D(n6749), .CK(
        i_clk), .RN(n6928), .Q(n7028), .QN(median_sobel_inst_n262) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__6_ ( .D(n6671), .CK(
        i_clk), .RN(n6919), .Q(n2705), .QN(median_sobel_inst_n417) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__1_ ( .D(
        median_sobel_inst_n498), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_n141), .QN(n2708) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__2_ ( .D(n6677), .CK(
        i_clk), .RN(n6936), .QN(median_sobel_inst_n437) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__6_ ( .D(n6713), .CK(
        i_clk), .RN(n6941), .QN(median_sobel_inst_n337) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__0_ ( .D(n6709), .CK(
        i_clk), .RN(n6938), .QN(median_sobel_inst_n251) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__6_ ( .D(
        median_sobel_inst_n597), .CK(i_clk), .RN(n6926), .Q(
        median_sobel_inst_n654) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__4_ ( .D(
        median_sobel_inst_n519), .CK(i_clk), .RN(n6927), .Q(
        median_sobel_inst_n129) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__7_ ( .D(n6676), .CK(
        i_clk), .RN(n6926), .QN(median_sobel_inst_n432) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__7_ ( .D(n6533), .CK(
        i_clk), .RN(n6939), .QN(median_sobel_inst_n424) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__6_ ( .D(n6667), .CK(
        i_clk), .RN(n6931), .QN(median_sobel_inst_n425) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__0_ ( .D(
        median_sobel_inst_n499), .CK(i_clk), .RN(n6917), .Q(
        median_sobel_inst_n108) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__7_ ( .D(n6758), .CK(
        i_clk), .RN(n6931), .QN(median_sobel_inst_n258) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__6_ ( .D(n6525), .CK(
        i_clk), .RN(n6933), .QN(median_sobel_inst_n433) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__2_ ( .D(n6532), .CK(
        i_clk), .RN(n6916), .QN(median_sobel_inst_n261) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__6_ ( .D(n6692), .CK(
        i_clk), .RN(n6931), .QN(median_sobel_inst_n393) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__7_ ( .D(n6552), .CK(
        i_clk), .RN(n6927), .QN(median_sobel_inst_n266) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__6_ ( .D(n6551), .CK(
        i_clk), .RN(n6927), .Q(n3514), .QN(median_sobel_inst_n257) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__6_ ( .D(n6482), .CK(
        i_clk), .RN(n6944), .QN(median_sobel_inst_n265) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__7_ ( .D(median_sobel_inst_n979), .CK(i_clk), .RN(n6944), .QN(median_sobel_inst_n202) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[18]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n191) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__7_ ( .D(median_sobel_inst_n980), .CK(i_clk), .RN(n6944), .QN(median_sobel_inst_n194) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[8]), .CK(i_clk), .RN(n6944), .QN(
        median_sobel_inst_n180) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[7]), .CK(i_clk), .RN(n6944), .QN(
        median_sobel_inst_n179) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[21]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n195) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[22]), .CK(i_clk), .RN(n6916), .Q(
        n7020), .QN(median_sobel_inst_n196) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[23]), .CK(i_clk), .RN(n6943), 
        .QN(median_sobel_inst_n197) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[24]), .CK(i_clk), .RN(n6926), .Q(
        n2734), .QN(median_sobel_inst_n198) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[14]), .CK(i_clk), .RN(n6923), .Q(
        n2710), .QN(median_sobel_inst_n187) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[15]), .CK(i_clk), .RN(n6927), .Q(
        n2712), .QN(median_sobel_inst_n188) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[16]), .CK(i_clk), .RN(n6916), .Q(
        n2731), .QN(median_sobel_inst_n189) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[17]), .CK(i_clk), .RN(n6926), 
        .QN(median_sobel_inst_n190) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[11]), .CK(i_clk), .RN(n6929), 
        .QN(median_sobel_inst_n183) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[12]), .CK(i_clk), .RN(n6923), 
        .QN(median_sobel_inst_n184) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[13]), .CK(i_clk), .RN(n6930), 
        .QN(median_sobel_inst_n185) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__7_ ( .D(median_sobel_inst_n978), .CK(i_clk), .RN(n6926), .QN(median_sobel_inst_n186) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[0]), .CK(i_clk), .RN(n6931), .Q(
        n6839), .QN(median_sobel_inst_n155) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[1]), .CK(i_clk), .RN(n6927), .QN(
        median_sobel_inst_n156) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[2]), .CK(i_clk), .RN(n6926), .QN(
        median_sobel_inst_n157) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[3]), .CK(i_clk), .RN(n6939), .Q(
        n6757), .QN(median_sobel_inst_n158) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[4]), .CK(i_clk), .RN(n6913), .Q(
        n6756), .QN(median_sobel_inst_n159) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[5]), .CK(i_clk), .RN(n6914), .QN(
        median_sobel_inst_n160) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[6]), .CK(i_clk), .RN(n6944), .QN(
        median_sobel_inst_n161) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__7_ ( .D(median_sobel_inst_n977), .CK(i_clk), .RN(n6927), .QN(median_sobel_inst_n162) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[54]), .CK(i_clk), .RN(n6944), .Q(
        n2713), .QN(median_sobel_inst_n232) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[55]), .CK(i_clk), .RN(n6944), .Q(
        n2742), .QN(median_sobel_inst_n233) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__7_ ( .D(median_sobel_inst_n983), .CK(i_clk), .RN(n6944), .Q(n2746), .QN(median_sobel_inst_n234) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[47]), .CK(i_clk), .RN(n6926), 
        .QN(median_sobel_inst_n224) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[48]), .CK(i_clk), .RN(n6927), 
        .QN(median_sobel_inst_n225) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__7_ ( .D(median_sobel_inst_n984), .CK(i_clk), .RN(n6944), .QN(median_sobel_inst_n226) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[35]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n211) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[36]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n212) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[37]), .CK(i_clk), .RN(n6944), .Q(
        n2687), .QN(median_sobel_inst_n213) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[38]), .CK(i_clk), .RN(n6944), .Q(
        n2692), .QN(median_sobel_inst_n214) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[39]), .CK(i_clk), .RN(n6944), .Q(
        n2737), .QN(median_sobel_inst_n215) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[40]), .CK(i_clk), .RN(n6944), .Q(
        n6870) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[41]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n217) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[28]), .CK(i_clk), .RN(n6940), 
        .QN(median_sobel_inst_n203) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[29]), .CK(i_clk), .RN(n6921), .Q(
        n6869), .QN(median_sobel_inst_n204) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[30]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n205) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[31]), .CK(i_clk), .RN(n6927), .Q(
        n6772), .QN(median_sobel_inst_n206) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[32]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n207) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[33]), .CK(i_clk), .RN(n6926), 
        .QN(median_sobel_inst_n208) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[34]), .CK(i_clk), .RN(n6940), 
        .QN(median_sobel_inst_n209) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__7_ ( .D(median_sobel_inst_n982), .CK(i_clk), .RN(n6944), .QN(median_sobel_inst_n210) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[70]), .CK(i_clk), .RN(n6926), .Q(
        n2694), .QN(median_sobel_inst_n163) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[42]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n219) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[66]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n246) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[10]), .CK(i_clk), .RN(n6944), .Q(
        n6868), .QN(median_sobel_inst_n182) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[26]), .CK(i_clk), .RN(n6944), .Q(
        n2741), .QN(median_sobel_inst_n200) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[27]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n201) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__7_ ( .D(median_sobel_inst_n986), .CK(i_clk), .RN(n6944), .QN(median_sobel_inst_n250) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__7_ ( .D(median_sobel_inst_n981), .CK(i_clk), .RN(n6944), .Q(n2695), .QN(median_sobel_inst_n218) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[64]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n244) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__7_ ( .D(
        median_sobel_inst_n988), .CK(i_clk), .RN(n6944), .QN(
        median_sobel_inst_n170) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__7_ ( .D(median_sobel_inst_n985), .CK(i_clk), .RN(n6944), .Q(n6773), .QN(median_sobel_inst_n242) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__7_ ( .D(
        median_sobel_inst_n987), .CK(i_clk), .RN(n6944), .Q(n2747), .QN(
        median_sobel_inst_n178) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[76]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n169) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[67]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n247) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[68]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n248) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[69]), .CK(i_clk), .RN(n6944), 
        .QN(median_sobel_inst_n249) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[82]), .CK(i_clk), .RN(n6944), .Q(
        n2740), .QN(median_sobel_inst_n176) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[83]), .CK(i_clk), .RN(n6940), .Q(
        n2743), .QN(median_sobel_inst_n177) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[57]), .CK(i_clk), .RN(n6931), 
        .QN(median_sobel_inst_n236) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[58]), .CK(i_clk), .RN(n6929), .Q(
        n6838), .QN(median_sobel_inst_n237) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[60]), .CK(i_clk), .RN(n6917), .Q(
        n6769), .QN(median_sobel_inst_n239) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[61]), .CK(i_clk), .RN(n6942), .Q(
        n6754), .QN(median_sobel_inst_n240) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[62]), .CK(i_clk), .RN(n6919), 
        .QN(median_sobel_inst_n241) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[59]), .CK(i_clk), .RN(n6933), 
        .QN(median_sobel_inst_n238) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[56]), .CK(i_clk), .RN(n6936), .Q(
        n2725), .QN(median_sobel_inst_n235) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[65]), .CK(i_clk), .RN(n6942), .Q(
        n6763), .QN(median_sobel_inst_n245) );
  DFFRX1 median_sobel_inst_G_reg_3__8_ ( .D(median_sobel_inst_n451), .CK(i_clk), .RN(n6913), .Q(median_sobel_inst_G[33]) );
  DFFRX1 median_sobel_inst_G_reg_1__8_ ( .D(median_sobel_inst_n449), .CK(i_clk), .RN(n6931), .Q(median_sobel_inst_G[12]) );
  DFFRX1 median_sobel_inst_G_reg_3__7_ ( .D(median_sobel_inst_n455), .CK(i_clk), .RN(n6931), .Q(median_sobel_inst_G[32]) );
  DFFRX1 median_sobel_inst_G_reg_1__7_ ( .D(median_sobel_inst_n453), .CK(i_clk), .RN(n6924), .Q(median_sobel_inst_G[11]) );
  DFFRX1 median_sobel_inst_G_reg_3__5_ ( .D(median_sobel_inst_n463), .CK(i_clk), .RN(n6924), .Q(median_sobel_inst_G[30]) );
  DFFRX1 median_sobel_inst_G_reg_1__5_ ( .D(median_sobel_inst_n461), .CK(i_clk), .RN(n6941), .Q(median_sobel_inst_G[9]) );
  DFFRX1 median_sobel_inst_G_reg_3__4_ ( .D(median_sobel_inst_n467), .CK(i_clk), .RN(n6931), .Q(median_sobel_inst_G[29]), .QN(n3524) );
  DFFRX1 median_sobel_inst_G_reg_1__4_ ( .D(median_sobel_inst_n465), .CK(i_clk), .RN(n6940), .Q(median_sobel_inst_G[8]) );
  DFFRX1 median_sobel_inst_G_reg_3__2_ ( .D(median_sobel_inst_n475), .CK(i_clk), .RN(n6917), .Q(median_sobel_inst_G[27]) );
  DFFRX1 median_sobel_inst_G_reg_1__2_ ( .D(median_sobel_inst_n473), .CK(i_clk), .RN(n6939), .Q(median_sobel_inst_G[6]), .QN(n3529) );
  DFFRX1 median_sobel_inst_G_reg_3__1_ ( .D(median_sobel_inst_n479), .CK(i_clk), .RN(n6941), .Q(median_sobel_inst_G[26]), .QN(n3525) );
  DFFRX1 median_sobel_inst_G_reg_1__1_ ( .D(median_sobel_inst_n477), .CK(i_clk), .RN(n6929), .Q(median_sobel_inst_G[5]), .QN(n3527) );
  DFFRX1 median_sobel_inst_G_reg_1__0_ ( .D(median_sobel_inst_n481), .CK(i_clk), .RN(n6940), .Q(median_sobel_inst_G[4]) );
  DFFRX1 median_sobel_inst_angle_reg_3__1_ ( .D(median_sobel_inst_n487), .CK(
        i_clk), .RN(n6933), .Q(median_sobel_inst_angle[7]), .QN(n2760) );
  DFFRX1 median_sobel_inst_angle_reg_0__0_ ( .D(median_sobel_inst_n490), .CK(
        i_clk), .RN(n6942), .Q(median_sobel_inst_angle[0]), .QN(n2696) );
  DFFRX1 median_sobel_inst_angle_reg_1__0_ ( .D(median_sobel_inst_n489), .CK(
        i_clk), .RN(n6916), .Q(median_sobel_inst_angle[2]), .QN(n2699) );
  DFFRX1 median_sobel_inst_G_reg_3__10_ ( .D(median_sobel_inst_n443), .CK(
        i_clk), .RN(n6919), .Q(median_sobel_inst_G[35]) );
  DFFRX1 median_sobel_inst_G_reg_1__10_ ( .D(median_sobel_inst_n441), .CK(
        i_clk), .RN(n6928), .Q(median_sobel_inst_G[14]) );
  DFFRX1 median_sobel_inst_G_reg_2__10_ ( .D(median_sobel_inst_n440), .CK(
        i_clk), .RN(n6931), .QN(n3532) );
  DFFRX1 median_sobel_inst_G_reg_3__9_ ( .D(median_sobel_inst_n447), .CK(i_clk), .RN(n6923), .Q(median_sobel_inst_G[34]) );
  DFFRX1 median_sobel_inst_G_reg_1__9_ ( .D(median_sobel_inst_n445), .CK(i_clk), .RN(n6913), .Q(median_sobel_inst_G[13]) );
  DFFRX1 median_sobel_inst_G_reg_0__9_ ( .D(median_sobel_inst_n446), .CK(i_clk), .RN(n6940), .Q(median_sobel_inst_G[3]), .QN(n6793) );
  DFFRX1 median_sobel_inst_G_reg_0__8_ ( .D(median_sobel_inst_n450), .CK(i_clk), .RN(n6943), .QN(n6791) );
  DFFRX1 median_sobel_inst_G_reg_0__7_ ( .D(median_sobel_inst_n454), .CK(i_clk), .RN(n6943), .Q(median_sobel_inst_G[2]), .QN(n6790) );
  DFFRX1 median_sobel_inst_G_reg_3__6_ ( .D(median_sobel_inst_n459), .CK(i_clk), .RN(n6943), .Q(median_sobel_inst_G[31]) );
  DFFRX1 median_sobel_inst_G_reg_0__10_ ( .D(median_sobel_inst_n442), .CK(
        i_clk), .RN(n6943), .QN(n6794) );
  DFFRX1 median_sobel_inst_G_reg_0__6_ ( .D(median_sobel_inst_n458), .CK(i_clk), .RN(n6943), .Q(median_sobel_inst_G[1]), .QN(n6792) );
  DFFRX1 median_sobel_inst_G_reg_1__6_ ( .D(median_sobel_inst_n457), .CK(i_clk), .RN(n6943), .Q(median_sobel_inst_G[10]) );
  DFFRX1 median_sobel_inst_G_reg_0__5_ ( .D(median_sobel_inst_n462), .CK(i_clk), .RN(n6943), .Q(median_sobel_inst_G[0]), .QN(n6789) );
  DFFRX1 median_sobel_inst_G_reg_0__4_ ( .D(median_sobel_inst_n466), .CK(i_clk), .RN(n6944), .Q(n2701), .QN(n6788) );
  DFFRX1 median_sobel_inst_G_reg_3__3_ ( .D(median_sobel_inst_n471), .CK(i_clk), .RN(n6919), .Q(median_sobel_inst_G[28]) );
  DFFRX1 median_sobel_inst_G_reg_0__3_ ( .D(median_sobel_inst_n470), .CK(i_clk), .RN(n6914), .QN(n6786) );
  DFFRX1 median_sobel_inst_G_reg_1__3_ ( .D(median_sobel_inst_n469), .CK(i_clk), .RN(n6929), .Q(median_sobel_inst_G[7]) );
  DFFRX1 median_sobel_inst_G_reg_0__2_ ( .D(median_sobel_inst_n474), .CK(i_clk), .RN(n6921), .QN(n6785) );
  DFFRX1 median_sobel_inst_G_reg_0__1_ ( .D(median_sobel_inst_n478), .CK(i_clk), .RN(n6942), .QN(n6787) );
  DFFRX1 median_sobel_inst_G_reg_3__0_ ( .D(median_sobel_inst_n483), .CK(i_clk), .RN(n6923), .Q(median_sobel_inst_G[25]), .QN(n3526) );
  DFFRX1 median_sobel_inst_G_reg_0__0_ ( .D(median_sobel_inst_n482), .CK(i_clk), .RN(n6929), .QN(n6784) );
  DFFRX1 median_sobel_inst_angle_reg_0__1_ ( .D(median_sobel_inst_n486), .CK(
        i_clk), .RN(n6942), .Q(median_sobel_inst_angle[1]), .QN(n3498) );
  DFFRX1 median_sobel_inst_angle_reg_1__1_ ( .D(median_sobel_inst_n485), .CK(
        i_clk), .RN(n6913), .Q(median_sobel_inst_angle[3]) );
  DFFRX1 median_sobel_inst_angle_reg_3__0_ ( .D(median_sobel_inst_n491), .CK(
        i_clk), .RN(n6933), .Q(median_sobel_inst_angle[6]) );
  DFFRX4 median_sobel_inst_cnt_reg_0_ ( .D(median_sobel_inst_N112), .CK(i_clk), 
        .RN(n6940), .Q(n6890), .QN(median_sobel_inst_n327) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p8_r_reg_2_ ( .D(
        median_sobel_inst_n110), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_0_ ( .D(
        median_sobel_inst_data_g_r[0]), .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_median_filter_submodule_n9) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_4_ ( .D(
        median_sobel_inst_data_d_r[4]), .CK(i_clk), .RN(n6936), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[0]), .CK(i_clk), .RN(
        n6924), .Q(n6603), .QN(
        median_sobel_inst_u_median_filter_submodule_n803) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_5_ ( .D(
        median_sobel_inst_data_i_r[5]), .CK(i_clk), .RN(n6924), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n41) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a8_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[7]), .CK(i_clk), .RN(
        n6943), .QN(median_sobel_inst_u_median_filter_submodule_n37) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[0]), .CK(i_clk), .RN(
        n6943), .QN(median_sobel_inst_u_median_filter_submodule_n794) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_2_ ( .D(
        median_sobel_inst_data_f_r[2]), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .QN(n6908) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_5_ ( .D(
        median_sobel_inst_data_g_r[5]), .CK(i_clk), .RN(n6917), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .QN(n6733) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[7]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n124) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_5_ ( .D(
        median_sobel_inst_data_d_r[5]), .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_3_ ( .D(
        median_sobel_inst_data_f_r[3]), .CK(i_clk), .RN(n6933), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p2_r_reg_5_ ( .D(n2671), 
        .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_5_ ( .D(
        median_sobel_inst_data_f_r[5]), .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[7]), .CK(i_clk), .RN(
        n6924), .QN(median_sobel_inst_u_median_filter_submodule_net22699) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_1_ ( .D(
        median_sobel_inst_data_d_r[1]), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p2_r_reg_6_ ( .D(
        median_sobel_inst_data_b_r[6]), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_4_ ( .D(
        median_sobel_inst_data_g_r[4]), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .QN(n6724) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[7]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n184) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_5_ ( .D(n7006), 
        .CK(i_clk), .RN(n6941), .Q(n6583), .QN(
        median_sobel_inst_u_median_filter_submodule_n197) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_3_ ( .D(n6988), 
        .CK(i_clk), .RN(n6941), .Q(n6575), .QN(
        median_sobel_inst_u_median_filter_submodule_n811) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_1_ ( .D(
        median_sobel_inst_data_f_r[1]), .CK(i_clk), .RN(n6939), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[5]), .CK(i_clk), .RN(
        n6944), .Q(median_sobel_inst_u_median_filter_submodule_a4_r_5_), .QN(
        n6587) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[3]), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_u_median_filter_submodule_n200), .QN(
        n6505) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[4]), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_u_median_filter_submodule_n91), .QN(n6493) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_1_ ( .D(n7002), 
        .CK(i_clk), .RN(n6931), .Q(n6569), .QN(
        median_sobel_inst_u_median_filter_submodule_n820) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[5]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n223) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_7_ ( .D(
        median_sobel_inst_data_g_r[7]), .CK(i_clk), .RN(n6913), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .QN(n6545) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[4]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n229) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[6]), .CK(i_clk), .RN(
        n6924), .QN(median_sobel_inst_u_median_filter_submodule_n788) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_3_ ( .D(n7000), 
        .CK(i_clk), .RN(n6927), .Q(n6490), .QN(
        median_sobel_inst_u_median_filter_submodule_n821) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[6]), .CK(i_clk), .RN(
        n6936), .Q(median_sobel_inst_u_median_filter_submodule_a5_r[6]), .QN(
        n6516) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[7]), .CK(i_clk), .RN(
        n6917), .Q(n6910), .QN(
        median_sobel_inst_u_median_filter_submodule_net22691) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_5_ ( .D(n6984), 
        .CK(i_clk), .RN(n6926), .Q(
        median_sobel_inst_u_median_filter_submodule_b1_r[5]), .QN(n6904) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[5]), .CK(i_clk), .RN(
        n6917), .Q(n6563), .QN(
        median_sobel_inst_u_median_filter_submodule_n799) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_1_ ( .D(
        median_sobel_inst_data_e_r[1]), .CK(i_clk), .RN(n6932), .QN(
        median_sobel_inst_u_median_filter_submodule_n96) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_5_ ( .D(
        median_sobel_inst_data_e_r[5]), .CK(i_clk), .RN(n6932), .QN(
        median_sobel_inst_u_median_filter_submodule_n78) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a4_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[0]), .CK(i_clk), .RN(
        n6939), .Q(n2749), .QN(
        median_sobel_inst_u_median_filter_submodule_net22698) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a69_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n753), .CK(i_clk), .RN(
        n6940), .QN(median_sobel_inst_u_median_filter_submodule_n29) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[0]), .CK(i_clk), .RN(
        n6944), .QN(median_sobel_inst_u_median_filter_submodule_net22686) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_4_ ( .D(
        median_sobel_inst_data_h_r[4]), .CK(i_clk), .RN(n6913), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .QN(n6657) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_0_ ( .D(n2670), 
        .CK(i_clk), .RN(n6933), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .QN(n6906) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_5_ ( .D(
        median_sobel_inst_data_h_r[5]), .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .QN(n6739) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_0_ ( .D(n2668), 
        .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n42) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_1_ ( .D(
        median_sobel_inst_data_i_r[1]), .CK(i_clk), .RN(n6934), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n64) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_2_ ( .D(
        median_sobel_inst_data_i_r[2]), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n63) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_3_ ( .D(
        median_sobel_inst_data_i_r[3]), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n48) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_4_ ( .D(
        median_sobel_inst_data_i_r[4]), .CK(i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n69) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_6_ ( .D(
        median_sobel_inst_data_i_r[6]), .CK(i_clk), .RN(n6943), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n44) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_3_ ( .D(
        median_sobel_inst_n102), .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .QN(n6740) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_2_ ( .D(
        median_sobel_inst_data_e_r[2]), .CK(i_clk), .RN(n6919), .QN(
        median_sobel_inst_u_median_filter_submodule_n99) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_3_ ( .D(
        median_sobel_inst_data_c_r[3]), .CK(i_clk), .RN(n6943), .QN(
        median_sobel_inst_u_median_filter_submodule_n75) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_0_ ( .D(
        median_sobel_inst_data_b_r[0]), .CK(i_clk), .RN(n6926), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .QN(n6907) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_4_ ( .D(
        median_sobel_inst_data_b_r[4]), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .QN(n6903) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_5_ ( .D(
        median_sobel_inst_data_c_r[5]), .CK(i_clk), .RN(n6924), .QN(
        median_sobel_inst_u_median_filter_submodule_n74) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_2_ ( .D(
        median_sobel_inst_data_d_r[2]), .CK(i_clk), .RN(n6926), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .QN(n6901) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_0_ ( .D(
        median_sobel_inst_data_a_r[0]), .CK(i_clk), .RN(n6944), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n68) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_1_ ( .D(
        median_sobel_inst_data_a_r[1]), .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n70) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_7_ ( .D(
        median_sobel_inst_data_a_r[7]), .CK(i_clk), .RN(n6914), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n56) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_6_ ( .D(
        median_sobel_inst_data_d_r[6]), .CK(i_clk), .RN(n6917), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_7_ ( .D(
        median_sobel_inst_data_d_r[7]), .CK(i_clk), .RN(n6933), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_1_ ( .D(n2716), 
        .CK(i_clk), .RN(n6927), .QN(
        median_sobel_inst_u_median_filter_submodule_n47) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[0]), .CK(i_clk), .RN(
        n6926), .Q(n2750) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_2_ ( .D(n3692), .CK(i_clk), .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n93)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]), .CK(i_clk), 
        .RN(n6927), .QN(n6622) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_11_ ( .D(
        n6981), .CK(i_clk), .RN(n6923), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]), .CK(i_clk), 
        .RN(n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N370), .CK(i_clk), .RN(
        n6935), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_18_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N177), .CK(i_clk), .RN(
        n6935), .QN(median_sobel_inst_u_sobel_gradient_submodule_n124) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_7_ ( .D(
        median_sobel_inst_data_c_r[7]), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n56) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .CK(i_clk), 
        .RN(n6942), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_12_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N155), .CK(i_clk), 
        .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n58) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N167), .CK(i_clk), 
        .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n60) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]), 
        .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n63) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N153), .CK(i_clk), 
        .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n68) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N140), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]), 
        .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n69) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N70), .CK(i_clk), .RN(
        n6919), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]), 
        .CK(i_clk), .RN(n6930), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n73) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]), 
        .CK(i_clk), .RN(n6930), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n74) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]), 
        .CK(i_clk), .RN(n6930), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n76) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N123), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .CK(i_clk), 
        .RN(n6936), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .CK(i_clk), 
        .RN(n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .CK(i_clk), 
        .RN(n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .CK(i_clk), 
        .RN(n6914), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), 
        .QN(n2739) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N151), .CK(i_clk), 
        .RN(n6929), .Q(median_sobel_inst_u_sobel_gradient_submodule_n80) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_11_ ( 
        .D(n6689), .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n84) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]), 
        .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n89) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .CK(i_clk), 
        .RN(n6916), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), .CK(i_clk), 
        .RN(n6926), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .CK(i_clk), 
        .RN(n6936), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .CK(i_clk), 
        .RN(n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .CK(i_clk), 
        .RN(n6936), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .CK(i_clk), 
        .RN(n6936), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N152), .CK(i_clk), 
        .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n96) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]), .CK(i_clk), 
        .RN(n6921), .Q(n6831), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n49) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]), .CK(i_clk), 
        .RN(n6921), .Q(n6652), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n51) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N147), .CK(i_clk), .RN(
        n6938), .Q(median_sobel_inst_u_sobel_gradient_submodule_N163) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N107), .CK(i_clk), .RN(
        n6938), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]), .CK(
        i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]), .CK(i_clk), 
        .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]), .CK(
        i_clk), .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]), .CK(
        i_clk), .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]), .CK(
        i_clk), .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]), .CK(
        i_clk), .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]), .CK(i_clk), 
        .RN(n6937), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_10_ ( .D(n6480), .CK(i_clk), .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N148), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_N164) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N149), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_N165) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N108), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N109), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1100), .CK(i_clk), .RN(
        n6937), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1110), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N115), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2]), .CK(i_clk), 
        .RN(n6921), .QN(n3727) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3]), .CK(i_clk), 
        .RN(n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_N162) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .CK(i_clk), 
        .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N163), .CK(i_clk), .RN(
        n6921), .QN(median_sobel_inst_u_sobel_gradient_submodule_n101) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_10_ ( .D(
        n6687), .CK(i_clk), .RN(n6921), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n37) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_12_ ( .D(
        n6506), .CK(i_clk), .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[12]), .QN(
        n6655) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N165), .CK(i_clk), .RN(
        n6939), .QN(median_sobel_inst_u_sobel_gradient_submodule_n111) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]), .CK(
        i_clk), .RN(n6943), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n117) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N160), .CK(i_clk), .RN(
        n6944), .QN(median_sobel_inst_u_sobel_gradient_submodule_n116) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5]), .CK(i_clk), 
        .RN(n6941), .QN(n6509) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]), .CK(i_clk), 
        .RN(n6931), .QN(median_sobel_inst_u_sobel_gradient_submodule_n5) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]), .CK(i_clk), 
        .RN(n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_0_)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]), .CK(i_clk), 
        .RN(n6943), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]), 
        .CK(i_clk), .RN(n6923), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[20]), .QN(
        n3493) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .CK(
        i_clk), .RN(n6936), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n48) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]), .CK(i_clk), 
        .RN(n6941), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N16), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N260), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]), .CK(i_clk), 
        .RN(n6916), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), 
        .QN(n2724) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]), .CK(i_clk), 
        .RN(n6941), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]), .CK(i_clk), 
        .RN(n6916), .QN(n6617) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]), .CK(i_clk), 
        .RN(n6924), .QN(n6616) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N17), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N270), .CK(i_clk), .RN(
        n6928), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]), .CK(i_clk), 
        .RN(n6942), .Q(n6850), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n41) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]), .CK(i_clk), 
        .RN(n6941), .Q(n6875), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n27) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]), .CK(i_clk), 
        .RN(n6914), .QN(n6613) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]), .CK(i_clk), 
        .RN(n6921), .QN(n6612) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]), .CK(i_clk), 
        .RN(n6931), .Q(n6586), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n39) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]), .CK(i_clk), 
        .RN(n6919), .QN(median_sobel_inst_u_sobel_gradient_submodule_n24) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]), .CK(i_clk), 
        .RN(n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]), .CK(i_clk), 
        .RN(n6936), .QN(median_sobel_inst_u_sobel_gradient_submodule_n25) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]), .CK(i_clk), 
        .RN(n6933), .QN(n6621) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]), .CK(i_clk), 
        .RN(n6933), .Q(n6782), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n22) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N10), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_15_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .CK(
        i_clk), .RN(n6933), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n23) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]), .CK(i_clk), 
        .RN(n6933), .QN(n6645) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]), 
        .CK(i_clk), .RN(n6933), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N740), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]), .CK(i_clk), 
        .RN(n6933), .Q(n7022), .QN(n6780) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]), .CK(i_clk), 
        .RN(n6933), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N240), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N340), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N14), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N132), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N133), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]), .CK(
        i_clk), .RN(n6933), .Q(n6851), .QN(n3496) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]), .CK(
        i_clk), .RN(n6933), .Q(n6854) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]), .CK(
        i_clk), .RN(n6933), .Q(n6852) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]), .CK(
        i_clk), .RN(n6933), .Q(n6853) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]), .CK(
        i_clk), .RN(n6933), .Q(n6855), .QN(n3494) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]), .CK(
        i_clk), .RN(n6933), .Q(n6856) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]), .CK(
        i_clk), .RN(n6933), .Q(n6857) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]), .CK(
        i_clk), .RN(n6933), .Q(n6564) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]), .CK(
        i_clk), .RN(n6933), .Q(n6565), .QN(n3495) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]), .CK(
        i_clk), .RN(n6933), .Q(n6566) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]), .CK(
        i_clk), .RN(n6933), .Q(n6567) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N139), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9])
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]), .CK(i_clk), 
        .RN(n6933), .Q(median_sobel_inst_u_sober_compare_submodule_temp_a_r_6_), .QN(n6554) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]), .CK(i_clk), 
        .RN(n6924), .QN(median_sobel_inst_u_sober_compare_submodule_n224) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]), .CK(i_clk), 
        .RN(n6924), .Q(median_sobel_inst_u_sober_compare_submodule_n1), .QN(
        n6765) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]), .CK(i_clk), 
        .RN(n6924), .QN(median_sobel_inst_u_sober_compare_submodule_n60) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n88), .CK(i_clk), .RN(
        n6924), .Q(median_sobel_inst_u_sober_compare_submodule_n51), .QN(n2715) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n113), .CK(i_clk), .RN(
        n6924), .Q(n6814), .QN(
        median_sobel_inst_u_sober_compare_submodule_n144) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n116), .CK(i_clk), .RN(
        n6924), .Q(n6815), .QN(
        median_sobel_inst_u_sober_compare_submodule_n141) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n117), .CK(i_clk), .RN(
        n6924), .Q(n6816), .QN(
        median_sobel_inst_u_sober_compare_submodule_n140) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n105), .CK(i_clk), .RN(
        n6924), .Q(n6825), .QN(
        median_sobel_inst_u_sober_compare_submodule_n152) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n121), .CK(i_clk), .RN(
        n6924), .Q(n6797), .QN(median_sobel_inst_u_sober_compare_submodule_n69) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n124), .CK(i_clk), .RN(
        n6924), .Q(n6802), .QN(median_sobel_inst_u_sober_compare_submodule_n72) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n127), .CK(i_clk), .RN(
        n6924), .Q(n6803), .QN(median_sobel_inst_u_sober_compare_submodule_n75) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n110), .CK(i_clk), .RN(
        n6924), .Q(n6807), .QN(
        median_sobel_inst_u_sober_compare_submodule_n147) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n102), .CK(i_clk), .RN(
        n6924), .Q(n6824), .QN(
        median_sobel_inst_u_sober_compare_submodule_n155) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n106), .CK(i_clk), .RN(
        n6924), .Q(n6826), .QN(
        median_sobel_inst_u_sober_compare_submodule_n151) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n93), .CK(i_clk), .RN(
        n6924), .Q(median_sobel_inst_u_sober_compare_submodule_n246), .QN(
        n2762) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n129), .CK(i_clk), .RN(
        n6924), .QN(median_sobel_inst_u_sober_compare_submodule_n77) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n136), .CK(i_clk), .RN(
        n6924), .QN(median_sobel_inst_u_sober_compare_submodule_n84) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n137), .CK(i_clk), .RN(
        n6924), .QN(median_sobel_inst_u_sober_compare_submodule_n85) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]), .CK(i_clk), 
        .RN(n6930), .Q(median_sobel_inst_u_sober_compare_submodule_n46) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n91), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_sober_compare_submodule_n47) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]), .CK(i_clk), 
        .RN(n6930), .Q(median_sobel_inst_u_sober_compare_submodule_n53) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]), .CK(i_clk), 
        .RN(n6930), .Q(median_sobel_inst_u_sober_compare_submodule_n55) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]), .CK(i_clk), 
        .RN(n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n59) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]), .CK(i_clk), 
        .RN(n6934), .Q(n6553), .QN(
        median_sobel_inst_u_sober_compare_submodule_n61) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]), .CK(i_clk), 
        .RN(n6934), .Q(n6559), .QN(
        median_sobel_inst_u_sober_compare_submodule_n62) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n95), .CK(i_clk), .RN(
        n6934), .Q(median_sobel_inst_u_sober_compare_submodule_n10), .QN(n2759) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n94), .CK(i_clk), .RN(
        n6934), .Q(n6519), .QN(
        median_sobel_inst_u_sober_compare_submodule_n163) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n118), .CK(i_clk), .RN(
        n6934), .Q(n6557), .QN(median_sobel_inst_u_sober_compare_submodule_n66) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n126), .CK(i_clk), .RN(
        n6934), .Q(n6558), .QN(median_sobel_inst_u_sober_compare_submodule_n74) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n130), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n78) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n131), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n79) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n133), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n81) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n134), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n82) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n132), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n80) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n135), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n83) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n138), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n86) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n139), .CK(i_clk), .RN(
        n6934), .QN(median_sobel_inst_u_sober_compare_submodule_n87) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n119), .CK(i_clk), .RN(
        n6923), .Q(n6798), .QN(median_sobel_inst_u_sober_compare_submodule_n67) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n120), .CK(i_clk), .RN(
        n6923), .Q(n6796), .QN(median_sobel_inst_u_sober_compare_submodule_n68) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n122), .CK(i_clk), .RN(
        n6923), .Q(n6799), .QN(median_sobel_inst_u_sober_compare_submodule_n70) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n123), .CK(i_clk), .RN(
        n6923), .Q(n6800), .QN(median_sobel_inst_u_sober_compare_submodule_n71) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n125), .CK(i_clk), .RN(
        n6923), .Q(n6801), .QN(median_sobel_inst_u_sober_compare_submodule_n73) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n96), .CK(i_clk), .RN(
        n6923), .Q(n6820), .QN(
        median_sobel_inst_u_sober_compare_submodule_n161) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n99), .CK(i_clk), .RN(
        n6923), .Q(n6818), .QN(
        median_sobel_inst_u_sober_compare_submodule_n158) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n128), .CK(i_clk), .RN(
        n6923), .Q(n6804), .QN(median_sobel_inst_u_sober_compare_submodule_n76) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n97), .CK(i_clk), .RN(
        n6923), .Q(n6819), .QN(
        median_sobel_inst_u_sober_compare_submodule_n160) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n98), .CK(i_clk), .RN(
        n6923), .Q(n6817), .QN(
        median_sobel_inst_u_sober_compare_submodule_n159) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n100), .CK(i_clk), .RN(
        n6923), .Q(n6821), .QN(
        median_sobel_inst_u_sober_compare_submodule_n157) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n101), .CK(i_clk), .RN(
        n6923), .Q(n6822), .QN(
        median_sobel_inst_u_sober_compare_submodule_n156) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n103), .CK(i_clk), .RN(
        n6923), .Q(n6823), .QN(
        median_sobel_inst_u_sober_compare_submodule_n154) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n104), .CK(i_clk), .RN(
        n6923), .Q(median_sobel_inst_u_sober_compare_submodule_n34) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_9_ ( 
        .D(n6619), .CK(i_clk), .RN(n6923), .Q(
        median_sobel_inst_sobel_out_data_w[9]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n107), .CK(i_clk), .RN(
        n6923), .Q(n6809), .QN(
        median_sobel_inst_u_sober_compare_submodule_n150) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n108), .CK(i_clk), .RN(
        n6923), .Q(n6808), .QN(
        median_sobel_inst_u_sober_compare_submodule_n149) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n109), .CK(i_clk), .RN(
        n6923), .Q(n6806), .QN(
        median_sobel_inst_u_sober_compare_submodule_n148) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n111), .CK(i_clk), .RN(
        n6923), .Q(n6810), .QN(
        median_sobel_inst_u_sober_compare_submodule_n146) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n112), .CK(i_clk), .RN(
        n6923), .Q(n6811), .QN(
        median_sobel_inst_u_sober_compare_submodule_n145) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n114), .CK(i_clk), .RN(
        n6923), .Q(n6812), .QN(
        median_sobel_inst_u_sober_compare_submodule_n143) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n115), .CK(i_clk), .RN(
        n6923), .Q(n6813), .QN(
        median_sobel_inst_u_sober_compare_submodule_n142) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N104), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .QN(n6513) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N103), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .QN(n6720) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1010), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .QN(n3489) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N102), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1000), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .QN(n6488) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N105), .CK(i_clk), .RN(
        n6943), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .QN(n6738) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N106), .CK(i_clk), .RN(
        n6943), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .QN(n6873) );
  DFFRX2 conv_inst_conv_2_r_reg_8_ ( .D(conv_inst_N244), .CK(i_clk), .RN(n6935), .Q(conv_inst_conv_2_r[8]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[7]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_net57730) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_3_ ( .D(
        median_sobel_inst_data_d_r[3]), .CK(i_clk), .RN(n6927), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[4]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n176) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n826), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n179) );
  DFFRHQX2 conv_inst_conv_3_r_reg_5_ ( .D(conv_inst_N258), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n55) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[3]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_net57373) );
  DFFRX4 conv_inst_conv_3_r_reg_3_ ( .D(conv_inst_N256), .CK(i_clk), .RN(n6941), .Q(conv_inst_conv_3_r[3]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_0_ ( .D(
        median_sobel_inst_data_c_r[0]), .CK(i_clk), .RN(n6921), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .QN(n6735) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_0_ ( .D(
        median_sobel_inst_data_g_r[0]), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]) );
  DFFRX4 conv_inst_conv_3_r_reg_4_ ( .D(conv_inst_N257), .CK(i_clk), .RN(n6916), .Q(conv_inst_conv_3_r[4]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[5]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n280) );
  DFFRX2 conv_inst_conv_1_r_reg_1_ ( .D(conv_inst_N220), .CK(i_clk), .RN(n6926), .Q(conv_inst_conv_1_r[1]), .QN(n2722) );
  DFFRX4 conv_inst_conv_1_r_reg_6_ ( .D(conv_inst_N225), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_1_r[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_0_ ( .D(n6875), .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N122), .CK(i_clk), .RN(
        n6936), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4])
         );
  DFFRX2 conv_inst_data_abc_3_r_reg_8_ ( .D(conv_inst_N205), .CK(i_clk), .RN(
        n6935), .Q(conv_inst_data_abc_3_r[8]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_7_ ( .D(
        median_sobel_inst_data_i_r[7]), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n49) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[46]), .CK(i_clk), .RN(n6940), .Q(
        n6883), .QN(n3497) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_4_ ( .D(
        median_sobel_inst_data_e_r[4]), .CK(i_clk), .RN(n6941), .Q(n6881) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_3_ ( .D(
        median_sobel_inst_data_e_r[3]), .CK(i_clk), .RN(n6941), .Q(n6880), 
        .QN(median_sobel_inst_u_median_filter_submodule_n97) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p3_r_reg_4_ ( .D(
        median_sobel_inst_data_c_r[4]), .CK(i_clk), .RN(n6916), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .QN(n6877) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_2_ ( .D(
        median_sobel_inst_data_a_r[2]), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n106) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_0_ ( .D(
        median_sobel_inst_data_e_r[0]), .CK(i_clk), .RN(n6941), .Q(n6872), 
        .QN(median_sobel_inst_u_median_filter_submodule_n93) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_6_ ( .D(
        median_sobel_inst_data_e_r[6]), .CK(i_clk), .RN(n6941), .Q(n6871), 
        .QN(median_sobel_inst_u_median_filter_submodule_n115) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_2_ ( .D(n3692), 
        .CK(i_clk), .RN(n6941), .Q(n6865), .QN(
        median_sobel_inst_u_median_filter_submodule_n81) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_7_ ( .D(
        median_sobel_inst_data_c_r[7]), .CK(i_clk), .RN(n6928), .Q(n6864), 
        .QN(median_sobel_inst_u_median_filter_submodule_n77) );
  DFFRX1 median_sobel_inst_out_valid_r_reg ( .D(median_sobel_inst_ns[2]), .CK(
        i_clk), .RN(n6941), .Q(med_sobel_out_valid_w), .QN(n6863) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_7_ ( .D(
        median_sobel_inst_data_e_r[7]), .CK(i_clk), .RN(n6940), .Q(n6862), 
        .QN(median_sobel_inst_u_median_filter_submodule_n84) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_6_ ( .D(
        median_sobel_inst_data_a_r[6]), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n105) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_3_ ( .D(
        median_sobel_inst_data_a_r[3]), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n51) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_5_ ( .D(
        median_sobel_inst_data_a_r[5]), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n58) );
  DFFRX1 conv_inst_data_bcd_r_reg_4_ ( .D(conv_inst_data_bcd_w[4]), .CK(i_clk), 
        .RN(n6939), .Q(conv_inst_n34), .QN(n6837) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n89), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_u_sober_compare_submodule_n44), .QN(n6745) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n58), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[12]), .QN(n6728) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n6926), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[6]), .QN(n6911) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[7]), .CK(i_clk), .RN(
        n6923), .Q(n6893), .QN(
        median_sobel_inst_u_median_filter_submodule_n798) );
  DFFRX2 conv_inst_conv_1_r_reg_3_ ( .D(conv_inst_N222), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_1_r[3]), .QN(n6639) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[2]), .CK(i_clk), .RN(
        n6913), .Q(n6631), .QN(
        median_sobel_inst_u_median_filter_submodule_net22695) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__3_ ( .D(
        median_sobel_inst_n608), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_n690), .QN(n6629) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_2_ ( .D(n7001), 
        .CK(i_clk), .RN(n6914), .Q(n6615), .QN(
        median_sobel_inst_u_median_filter_submodule_n823) );
  DFFRX1 conv_inst_conv_1_r_reg_8_ ( .D(conv_inst_N227), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_1_r[8]), .QN(n6614) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_0_ ( .D(
        median_sobel_inst_data_d_r[0]), .CK(i_clk), .RN(n6939), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .QN(n6606) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_0_ ( .D(
        median_sobel_inst_data_f_r[0]), .CK(i_clk), .RN(n6936), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .QN(n6593) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .CK(i_clk), .RN(
        n6919), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), 
        .QN(n6576) );
  DFFRX1 conv_inst_i_input_done_r_reg ( .D(conv_calc_done_r), .CK(i_clk), .RN(
        n6929), .Q(conv_inst_n93), .QN(n6560) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n90), .CK(i_clk), .RN(
        n6917), .Q(n6540), .QN(
        median_sobel_inst_u_sober_compare_submodule_n167) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[0]), .CK(i_clk), .RN(
        n6940), .Q(n6518), .QN(
        median_sobel_inst_u_median_filter_submodule_n802) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_10_ ( .D(
        n3737), .CK(i_clk), .RN(i_rst_n), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n65) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_4_ ( .D(
        n2788), .CK(i_clk), .RN(n6919), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N131), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1])
         );
  DFFRX1 pre_state_reg_0__1_ ( .D(curr_state[1]), .CK(i_clk), .RN(n6917), .Q(
        pre_state[1]) );
  DFFRX1 x_r_reg_1_ ( .D(n1431), .CK(i_clk), .RN(n6916), .Q(x_r[1]) );
  DFFRX1 median_sobel_inst_out_done_r_reg ( .D(median_sobel_inst_N96), .CK(
        i_clk), .RN(n6916), .Q(med_done_w) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .CK(i_clk), 
        .RN(n6941), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_5_ ( .D(
        n2790), .CK(i_clk), .RN(n6917), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_7_ ( .D(conv_inst_N73), .CK(i_clk), 
        .RN(n6913), .Q(conv_result_w[7]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_4_ ( .D(conv_inst_N70), .CK(i_clk), 
        .RN(n6914), .Q(conv_result_w[4]) );
  DFFRX1 y_r_reg_0_ ( .D(N785), .CK(i_clk), .RN(n6940), .QN(n825) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N440), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[45]), .CK(i_clk), .RN(n6940), 
        .QN(median_sobel_inst_n222) );
  DFFRX1 z_r_reg_4_ ( .D(N762), .CK(i_clk), .RN(n6916), .QN(n6844) );
  DFFRX1 conv_inst_data_bcd_r_reg_5_ ( .D(conv_inst_data_bcd_w[5]), .CK(i_clk), 
        .RN(n6936), .Q(conv_inst_n21), .QN(n6483) );
  DFFRX1 conv_inst_data_abc_r_reg_2_ ( .D(conv_inst_data_abc_w[2]), .CK(i_clk), 
        .RN(n6936), .Q(conv_inst_n113), .QN(n6539) );
  DFFRX1 z_r_reg_3_ ( .D(N761), .CK(i_clk), .RN(n6916), .QN(n826) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_0_ ( .D(
        n2763), .CK(i_clk), .RN(n6914), .Q(n6858) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1260), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[10]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1240), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[8]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1200), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[4]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1230), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_sobel_out_data_w[7]) );
  DFFRX1 sram_addr_ready_r_reg_0__4_ ( .D(sram_addr_wait_r[3]), .CK(i_clk), 
        .RN(n6917), .Q(sram_addr_w[4]), .QN(n408) );
  DFFRX1 sram_addr_ready_r_reg_0__2_ ( .D(sram_addr_wait_r[1]), .CK(i_clk), 
        .RN(n6917), .Q(sram_addr_w[2]), .QN(n406) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_1_ ( .D(conv_inst_N67), .CK(i_clk), 
        .RN(n6919), .Q(conv_result_w[1]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1210), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[5]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1190), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[3]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1160), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[0]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1220), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[6]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1180), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_sobel_out_data_w[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .CK(
        i_clk), .RN(n6919), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n52) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_7_ ( .D(
        median_sobel_inst_n38), .CK(i_clk), .RN(n6913), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .QN(n6781) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_7_ ( .D(
        median_sobel_inst_data_f_r[7]), .CK(i_clk), .RN(n6919), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]) );
  DFFRX1 x_r_reg_2_ ( .D(N757), .CK(i_clk), .RN(n6936), .Q(x_r[2]), .QN(n6618)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n80), .CK(i_clk), .RN(
        n6913), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[8])
         );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_7_ ( .D(
        median_sobel_inst_data_b_r[7]), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]), .CK(i_clk), 
        .RN(n6939), .QN(median_sobel_inst_u_sober_compare_submodule_n2) );
  DFFRX1 conv_inst_conv_2_r_reg_15_ ( .D(conv_inst_N251), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_conv_2_r[15]), .QN(n6762) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n96), .CK(i_clk), .RN(
        n6917), .QN(median_sobel_inst_u_sobel_gradient_submodule_n34) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__4_ ( .D(
        median_sobel_inst_n591), .CK(i_clk), .RN(n6914), .Q(
        median_sobel_inst_n674) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N390), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N19), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n68), .CK(i_clk), .RN(
        n6941), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[10]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__7_ ( .D(
        median_sobel_inst_n548), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_n672) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_11_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[11]), .CK(
        i_clk), .RN(n6919), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]), .CK(i_clk), 
        .RN(n6917), .QN(median_sobel_inst_u_sobel_gradient_submodule_n26) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]), .CK(i_clk), 
        .RN(n6917), .QN(median_sobel_inst_u_sobel_gradient_submodule_n45) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_9_ ( .D(
        n6767), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[9]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__4_ ( .D(
        median_sobel_inst_n559), .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_n662) );
  DFFRX1 conv_inst_data_abc_3_r_reg_10_ ( .D(n6494), .CK(i_clk), .RN(n6919), 
        .Q(conv_inst_data_abc_3_r[10]), .QN(n6732) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]), 
        .CK(i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n87) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[7]), .CK(i_clk), .RN(
        n6913), .Q(n6743), .QN(
        median_sobel_inst_u_median_filter_submodule_n216) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n92), .CK(i_clk), .RN(
        n6927), .Q(median_sobel_inst_u_sober_compare_submodule_n13), .QN(n2717) );
  DFFRX2 cnt_reg_4_ ( .D(n480), .CK(i_clk), .RN(n6939), .Q(cnt[4]), .QN(n6611)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N400), .CK(i_clk), .RN(
        n6913), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N20), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]) );
  DFFRX1 input_data_ready_r_reg_31_ ( .D(N718), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[31]), .QN(n6828) );
  DFFRX1 display_done_r_reg ( .D(n7009), .CK(i_clk), .RN(n6927), .Q(n783) );
  DFFRHQX2 x_origin_r_reg_2_ ( .D(n487), .CK(i_clk), .RN(n6914), .Q(n827) );
  DFFRX2 cnt_reg_2_ ( .D(n482), .CK(i_clk), .RN(n6924), .Q(cnt[2]), .QN(n6476)
         );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__4_ ( .D(
        median_sobel_inst_n551), .CK(i_clk), .RN(n6939), .Q(
        median_sobel_inst_n626) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]), .CK(i_clk), 
        .RN(n6942), .QN(median_sobel_inst_u_sobel_gradient_submodule_n3) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[6]), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_u_median_filter_submodule_a6_r[6]), .QN(
        n6895) );
  DFFRX1 conv_inst_data_bcd_4_r_reg_9_ ( .D(conv_inst_N217), .CK(i_clk), .RN(
        n6916), .Q(conv_inst_data_bcd_4_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]), .CK(i_clk), 
        .RN(n6919), .QN(median_sobel_inst_u_sobel_gradient_submodule_n36) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__3_ ( .D(
        median_sobel_inst_n584), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_n646) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__7_ ( .D(
        median_sobel_inst_n564), .CK(i_clk), .RN(n6939), .Q(n6526), .QN(
        median_sobel_inst_n376) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__5_ ( .D(
        median_sobel_inst_n542), .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_n869), .QN(n6640) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N300), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[6]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n211) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_13_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N156), .CK(i_clk), 
        .RN(n6923), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .QN(
        n6647) );
  DFFRX1 conv_inst_conv_1_r_reg_10_ ( .D(conv_inst_N229), .CK(i_clk), .RN(
        n6923), .Q(conv_inst_conv_1_r[10]), .QN(n6650) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[6]), .CK(i_clk), .RN(
        n6939), .Q(n6830), .QN(
        median_sobel_inst_u_median_filter_submodule_n806) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__3_ ( .D(
        median_sobel_inst_n560), .CK(i_clk), .RN(n6913), .Q(
        median_sobel_inst_n671), .QN(n2733) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__5_ ( .D(
        median_sobel_inst_n582), .CK(i_clk), .RN(n6939), .Q(n3504), .QN(
        median_sobel_inst_n362) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__5_ ( .D(
        median_sobel_inst_n598), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n346) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]), .CK(i_clk), 
        .RN(n6941), .QN(median_sobel_inst_u_sobel_gradient_submodule_n44) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_3_ ( .D(n2669), 
        .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .QN(n6568) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_6_ ( .D(
        median_sobel_inst_data_h_r[6]), .CK(i_clk), .RN(n6914), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .QN(n6776) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]), .CK(i_clk), 
        .RN(n6939), .QN(n6607) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]), .CK(i_clk), 
        .RN(n6939), .QN(median_sobel_inst_u_sober_compare_submodule_n54) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__0_ ( .D(
        median_sobel_inst_n563), .CK(i_clk), .RN(n6939), .QN(
        median_sobel_inst_n391) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__1_ ( .D(
        median_sobel_inst_n618), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n92) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__1_ ( .D(
        median_sobel_inst_n586), .CK(i_clk), .RN(n6916), .Q(
        median_sobel_inst_n664) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__2_ ( .D(
        median_sobel_inst_n585), .CK(i_clk), .RN(n6942), .QN(
        median_sobel_inst_n365) );
  DFFRX1 input_data_ready_r_reg_7_ ( .D(N694), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[7]), .QN(n6742) );
  DFFRX1 conv_calc_done_r_reg ( .D(n439), .CK(i_clk), .RN(n6923), .Q(
        conv_calc_done_r), .QN(n6866) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]), .CK(i_clk), 
        .RN(n6941), .QN(n6624) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__2_ ( .D(
        median_sobel_inst_n561), .CK(i_clk), .RN(n6916), .QN(
        median_sobel_inst_n389) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N18), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__3_ ( .D(
        median_sobel_inst_n600), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n348) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]), .CK(i_clk), 
        .RN(n6931), .QN(n6602) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__0_ ( .D(
        median_sobel_inst_n555), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n399) );
  DFFRX1 map_load_done_r_reg ( .D(N866), .CK(i_clk), .RN(n6913), .Q(n6885), 
        .QN(n473) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N360), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N136), .CK(i_clk), .RN(
        n6913), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1]), .CK(i_clk), 
        .RN(n6926), .Q(median_sobel_inst_u_sobel_gradient_submodule_N160), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n8) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p3_r_reg_2_ ( .D(n3101), 
        .CK(i_clk), .RN(n6939), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]), .CK(i_clk), 
        .RN(n6923), .QN(n6608) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__1_ ( .D(
        median_sobel_inst_n562), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n390) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]), .CK(i_clk), 
        .RN(n6941), .QN(n6627) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[4]), .CK(i_clk), .RN(
        n6916), .Q(n6646), .QN(
        median_sobel_inst_u_median_filter_submodule_n797) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N78), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__3_ ( .D(
        median_sobel_inst_n528), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n420) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N125), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N280), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N82), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]), .CK(i_clk), 
        .RN(n6913), .QN(n6597) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N6), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]) );
  DFFRX2 conv_inst_conv_2_r_reg_7_ ( .D(conv_inst_N243), .CK(i_clk), .RN(n6939), .Q(conv_inst_conv_2_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1240), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6])
         );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_0_ ( .D(n6998), 
        .CK(i_clk), .RN(i_rst_n), .Q(
        median_sobel_inst_u_median_filter_submodule_n152) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_2_ ( .D(n6987), 
        .CK(i_clk), .RN(n6939), .Q(n6499), .QN(
        median_sobel_inst_u_median_filter_submodule_n812) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_1_ ( .D(n6986), 
        .CK(i_clk), .RN(n6921), .Q(n6500), .QN(
        median_sobel_inst_u_median_filter_submodule_n810) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[1]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_net58553) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N121), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3])
         );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a4_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[4]), .CK(i_clk), .RN(
        n6940), .Q(n6594), .QN(
        median_sobel_inst_u_median_filter_submodule_net22693) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N120), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[1]), .CK(i_clk), .RN(
        n6917), .Q(n6623), .QN(
        median_sobel_inst_u_median_filter_submodule_net22688) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__0_ ( .D(
        median_sobel_inst_n587), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n367) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N134), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4])
         );
  DFFRX1 conv_inst_conv_2_r_reg_0_ ( .D(conv_inst_N236), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_2_r[0]), .QN(n6596) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__1_ ( .D(
        median_sobel_inst_n514), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n430) );
  DFFRX2 conv_inst_conv_4_r_reg_3_ ( .D(conv_inst_N273), .CK(i_clk), .RN(n6921), .Q(conv_inst_conv_4_r[3]), .QN(n6584) );
  DFFRX2 conv_inst_conv_2_r_reg_3_ ( .D(conv_inst_N239), .CK(i_clk), .RN(n6914), .Q(conv_inst_conv_2_r[3]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[2]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n203) );
  DFFRX2 conv_inst_conv_2_r_reg_1_ ( .D(conv_inst_N237), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_2_r[1]), .QN(n6599) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_1_ ( .D(conv_inst_N136), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_bcd_2_r[1]), .QN(n6496) );
  DFFRX2 conv_inst_conv_4_r_reg_8_ ( .D(conv_inst_N278), .CK(i_clk), .RN(n6936), .Q(conv_inst_conv_4_r[8]), .QN(n6626) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .CK(i_clk), 
        .RN(n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), 
        .QN(n3734) );
  DFFRX4 input_data_ready_r_reg_22_ ( .D(N709), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[22]), .QN(n6779) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_0_ ( .D(n6985), 
        .CK(i_clk), .RN(n6916), .QN(n6878) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[2]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n235) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_6_ ( .D(n6996), 
        .CK(i_clk), .RN(n6924), .Q(
        median_sobel_inst_u_median_filter_submodule_b9_r[6]), .QN(n6899) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a47_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n750), .CK(i_clk), .RN(
        n6916), .QN(median_sobel_inst_u_median_filter_submodule_n159) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n769), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_out_data_w[7]) );
  DFFRX2 cnt_reg_3_ ( .D(n481), .CK(i_clk), .RN(n6939), .Q(cnt[3]), .QN(n6508)
         );
  DFFRX2 cnt_reg_10_ ( .D(n474), .CK(i_clk), .RN(n6939), .Q(cnt[10]), .QN(
        n6734) );
  DFFRX4 y_origin_r_reg_0_ ( .D(n492), .CK(i_clk), .RN(n6913), .Q(n6842), .QN(
        n472) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[4]), .CK(i_clk), .RN(
        n6916), .Q(n6766), .QN(
        median_sobel_inst_u_median_filter_submodule_n789) );
  DFFRX4 input_data_ready_r_reg_8_ ( .D(N695), .CK(i_clk), .RN(n6914), .Q(
        n6898), .QN(n8660) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_4_ ( .D(n6999), 
        .CK(i_clk), .RN(n6940), .Q(n6805), .QN(
        median_sobel_inst_u_median_filter_submodule_n825) );
  DFFRX2 cnt_reg_6_ ( .D(n478), .CK(i_clk), .RN(n6939), .Q(cnt[6]), .QN(n6504)
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a39_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n745), .CK(i_clk), .RN(
        n6913), .QN(median_sobel_inst_u_median_filter_submodule_n316) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__3_ ( .D(
        median_sobel_inst_n536), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_n688) );
  DFFRX2 y_r_reg_2_ ( .D(n1434), .CK(i_clk), .RN(n6917), .QN(n6861) );
  DFFRHQX4 op_mode_r_reg_1_ ( .D(n441), .CK(i_clk), .RN(n6914), .Q(
        op_mode_r_1_) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[2]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_a5_r[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_7_ ( .D(n7005), 
        .CK(i_clk), .RN(n6939), .Q(n6501), .QN(
        median_sobel_inst_u_median_filter_submodule_n818) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_6_ ( .D(n7003), 
        .CK(i_clk), .RN(n6916), .Q(
        median_sobel_inst_u_median_filter_submodule_b5_r[6]), .QN(n6495) );
  DFFRX4 conv_inst_data_abc_3_r_reg_5_ ( .D(conv_inst_N202), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_abc_3_r[5]) );
  DFFRX4 input_data_ready_r_reg_9_ ( .D(N696), .CK(i_clk), .RN(n6914), .Q(
        n6897), .QN(n831) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a17_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n751), .CK(i_clk), .RN(
        n6916), .QN(median_sobel_inst_u_median_filter_submodule_n26) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n774), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_out_data_w[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n770), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_out_data_w[0]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n776), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_out_data_w[6]) );
  DFFRX4 conv_inst_conv_2_r_reg_4_ ( .D(conv_inst_N240), .CK(i_clk), .RN(n6941), .Q(conv_inst_conv_2_r[4]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r_1_), .CK(
        i_clk), .RN(n6921), .Q(n6573), .QN(n3534) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]), .CK(i_clk), 
        .RN(n6923), .QN(n6719) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_cnt_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N30), .CK(i_clk), .RN(
        n6939), .Q(n6590), .QN(median_sobel_inst_u_sober_compare_submodule_n63) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1160), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]) );
  DFFRX4 input_data_ready_r_reg_12_ ( .D(N699), .CK(i_clk), .RN(n6914), .Q(
        input_data_ready_r[12]), .QN(n6578) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a25_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n749), .CK(i_clk), .RN(
        n6940), .Q(n6517), .QN(
        median_sobel_inst_u_median_filter_submodule_n428) );
  DFFRHQX8 median_sobel_inst_cnt_reg_1_ ( .D(median_sobel_inst_N113), .CK(
        i_clk), .RN(n6914), .Q(median_sobel_inst_n747) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_6_ ( .D(n6991), 
        .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_median_filter_submodule_n241) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_5_ ( .D(n6994), 
        .CK(i_clk), .RN(n6916), .Q(n6905), .QN(
        median_sobel_inst_u_median_filter_submodule_n814) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_0_ ( .D(n6850), .CK(i_clk), .RN(n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_N118), .QN(n6492) );
  DFFRX2 conv_inst_conv_2_r_reg_11_ ( .D(conv_inst_N247), .CK(i_clk), .RN(
        n6913), .Q(conv_inst_conv_2_r[11]), .QN(n6651) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a14_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n752), .CK(i_clk), .RN(
        n6914), .QN(median_sobel_inst_u_median_filter_submodule_n487) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_7_ ( .D(conv_inst_N142), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_bcd_2_r[7]) );
  DFFRX4 input_data_ready_r_reg_18_ ( .D(N705), .CK(i_clk), .RN(n6913), .Q(
        n6723), .QN(n1148) );
  DFFRX2 out_data_ready_r_reg_0_ ( .D(out_data_wait_r[0]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]), .CK(i_clk), 
        .RN(n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]), .CK(i_clk), 
        .RN(n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[1]), .CK(i_clk), .RN(
        n6916), .QN(median_sobel_inst_u_median_filter_submodule_n785) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a58_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n747), .CK(i_clk), .RN(
        n6916), .QN(median_sobel_inst_u_median_filter_submodule_n161) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n772), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_out_data_w[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n771), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_out_data_w[1]) );
  DFFRX2 conv_inst_conv_1_r_reg_7_ ( .D(conv_inst_N226), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_1_r[7]), .QN(n6620) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N31), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]), .CK(i_clk), 
        .RN(n6921), .Q(n6658), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n54) );
  DFFRHQX4 op_mode_r_reg_3_ ( .D(n443), .CK(i_clk), .RN(n6914), .Q(n852) );
  DFFRHQX2 conv_inst_conv_3_r_reg_11_ ( .D(conv_inst_N264), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n54) );
  DFFRX2 conv_inst_conv_3_r_reg_15_ ( .D(conv_inst_N268), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_conv_3_r[15]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_12_ ( .D(conv_inst_N78), .CK(i_clk), 
        .RN(n6942), .Q(result_w[12]) );
  DFFRX4 conv_inst_data_abc_3_r_reg_4_ ( .D(conv_inst_N201), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_3_r[4]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N12), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N11), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_3_ ( .D(
        median_sobel_inst_data_g_r[3]), .CK(i_clk), .RN(n6927), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .QN(n6764) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a28_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n748), .CK(i_clk), .RN(
        n6940), .QN(median_sobel_inst_u_median_filter_submodule_n31) );
  DFFRX4 input_data_ready_r_reg_14_ ( .D(N701), .CK(i_clk), .RN(n6913), .Q(
        n6625), .QN(n856) );
  DFFRHQX2 conv_inst_conv_3_r_reg_8_ ( .D(conv_inst_N261), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n41) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_6_ ( .D(
        median_sobel_inst_data_g_r[6]), .CK(i_clk), .RN(n6928), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .QN(n6768) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]), .CK(i_clk), 
        .RN(n6941), .QN(median_sobel_inst_u_sobel_gradient_submodule_n46) );
  DFFRX4 x_origin_r_reg_1_ ( .D(n488), .CK(i_clk), .RN(n6913), .Q(
        x_origin_r_1_), .QN(n468) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[5]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n193) );
  DFFRX2 sram_addr_ready_r_reg_0__0_ ( .D(n1441), .CK(i_clk), .RN(n6929), .Q(
        sram_addr_w[0]), .QN(n6832) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N72), .CK(i_clk), .RN(
        n6927), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]) );
  DFFRHQX4 op_mode_r_reg_2_ ( .D(n442), .CK(i_clk), .RN(n6914), .Q(n850) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]), .CK(i_clk), 
        .RN(n6933), .QN(n6717) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]), .CK(i_clk), 
        .RN(n6933), .QN(n6716) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_7_ ( .D(n6989), 
        .CK(i_clk), .RN(n6924), .Q(
        median_sobel_inst_u_median_filter_submodule_b1_r[7]), .QN(n6609) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[1]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n246) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N128), .CK(i_clk), .RN(
        n6921), .QN(n6571) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n773), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_out_data_w[3]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_b9_r_reg_1_ ( .D(n6992), 
        .CK(i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_median_filter_submodule_b9_r[1]), .QN(n6886) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]), .CK(i_clk), 
        .RN(n6927), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]), .CK(i_clk), 
        .RN(n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N127), .CK(i_clk), .RN(
        n6936), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[9])
         );
  DFFRX2 cnt_reg_5_ ( .D(n479), .CK(i_clk), .RN(n6939), .Q(cnt[5]), .QN(n6477)
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N21), .CK(i_clk), .RN(
        n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]) );
  DFFRX2 conv_inst_conv_1_r_reg_14_ ( .D(conv_inst_N233), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_1_r[14]), .QN(n2700) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_0_ ( .D(n7004), 
        .CK(i_clk), .RN(n6916), .Q(
        median_sobel_inst_u_median_filter_submodule_b5_r[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_15_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N158), .CK(i_clk), 
        .RN(n6939), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n55) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_5_ ( .D(conv_inst_N71), .CK(i_clk), 
        .RN(n6914), .Q(conv_result_w[5]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_3_ ( .D(conv_inst_N138), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_bcd_2_r[3]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N114), .CK(i_clk), .RN(
        n6932), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]), .CK(i_clk), 
        .RN(n6935), .QN(n6502) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N126), .CK(i_clk), .RN(
        n6935), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8])
         );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N98), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_u_sobel_gradient_submodule_N131), .QN(
        n6591) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_3_ ( .D(
        median_sobel_inst_data_c_r[3]), .CK(i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n92) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N230), .CK(i_clk), .RN(
        n6926), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a36_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_n746), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_median_filter_submodule_n163), .QN(
        n6605) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_10_ ( .D(conv_inst_N76), .CK(i_clk), 
        .RN(n6928), .Q(conv_result_w[10]) );
  DFFRX2 input_data_ready_r_reg_6_ ( .D(N693), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[6]), .QN(n6827) );
  DFFRX4 input_data_ready_r_reg_4_ ( .D(N691), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[4]), .QN(n6867) );
  DFFRHQX2 conv_inst_cs_reg_1_ ( .D(conv_inst_ns[1]), .CK(i_clk), .RN(n6931), 
        .Q(conv_inst_n38) );
  DFFRX2 z_r_reg_2_ ( .D(N760), .CK(i_clk), .RN(n6916), .QN(n824) );
  DFFRX2 z_r_reg_0_ ( .D(N758), .CK(i_clk), .RN(n6916), .QN(n6845) );
  DFFRX2 conv_inst_conv_2_r_reg_14_ ( .D(conv_inst_N250), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_2_r[14]), .QN(n6546) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_5_ ( .D(conv_inst_N140), .CK(i_clk), .RN(
        n6936), .Q(conv_inst_data_bcd_2_r[5]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[6]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n249) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]), .CK(i_clk), 
        .RN(n6933), .QN(median_sobel_inst_u_sobel_gradient_submodule_n28) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]), .CK(i_clk), 
        .RN(n6917), .QN(median_sobel_inst_u_sobel_gradient_submodule_n42) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]), .CK(i_clk), 
        .RN(n6917), .QN(median_sobel_inst_u_sobel_gradient_submodule_n30) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N290), .CK(i_clk), .RN(
        n6914), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]) );
  DFFRX4 conv_inst_conv_3_r_reg_7_ ( .D(conv_inst_N260), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_3_r[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]), .CK(i_clk), 
        .RN(n6933), .QN(median_sobel_inst_u_sobel_gradient_submodule_n40) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3])
         );
  DFFRX4 conv_inst_cs_reg_0_ ( .D(conv_inst_ns[0]), .CK(i_clk), .RN(n6935), 
        .Q(conv_inst_cs_0_) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[3]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n233) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[5]), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_u_median_filter_submodule_n62), .QN(n6891) );
  DFFRX4 input_data_ready_r_reg_26_ ( .D(N713), .CK(i_clk), .RN(n6914), .Q(
        input_data_ready_r[26]), .QN(n6833) );
  DFFRX2 conv_inst_data_abc_1_r_reg_9_ ( .D(conv_inst_N133), .CK(i_clk), .RN(
        n6936), .Q(conv_inst_data_abc_1_r[9]) );
  DFFRX2 cnt_reg_7_ ( .D(n477), .CK(i_clk), .RN(n6939), .Q(cnt[7]), .QN(n6636)
         );
  DFFRX4 conv_inst_conv_4_r_reg_4_ ( .D(conv_inst_N274), .CK(i_clk), .RN(n6941), .Q(conv_inst_conv_4_r[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_3_ ( .D(n6993), 
        .CK(i_clk), .RN(n6929), .Q(n6487), .QN(
        median_sobel_inst_u_median_filter_submodule_n815) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[2]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n209) );
  DFFRX2 out_data_ready_r_reg_6_ ( .D(out_data_wait_r[6]), .CK(i_clk), .RN(
        n6936), .Q(o_out_data[6]) );
  DFFRX4 sram_data_out_r_reg_3__6_ ( .D(sram_data_out_w[30]), .CK(i_clk), .RN(
        n6933), .Q(n401), .QN(n3522) );
  DFFRX4 sram_data_out_r_reg_1__6_ ( .D(sram_data_out_w[14]), .CK(i_clk), .RN(
        n6933), .QN(n794) );
  DFFRX4 sram_data_out_r_reg_1__2_ ( .D(sram_data_out_w[10]), .CK(i_clk), .RN(
        n6933), .QN(n791) );
  DFFRX4 sram_data_out_r_reg_1__4_ ( .D(sram_data_out_w[12]), .CK(i_clk), .RN(
        n6933), .QN(n797) );
  DFFRX4 sram_data_out_r_reg_1__5_ ( .D(sram_data_out_w[13]), .CK(i_clk), .RN(
        n6933), .QN(n781) );
  DFFRX4 sram_data_out_r_reg_0__5_ ( .D(sram_data_out_w[5]), .CK(i_clk), .RN(
        n6936), .Q(n6544), .QN(n804) );
  DFFRX4 sram_data_out_r_reg_3__0_ ( .D(sram_data_out_w[24]), .CK(i_clk), .RN(
        n6936), .Q(n385), .QN(n6503) );
  DFFRX4 sram_data_out_r_reg_3__1_ ( .D(sram_data_out_w[25]), .CK(i_clk), .RN(
        n6936), .Q(n391), .QN(n6512) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__0_ ( .D(
        median_sobel_inst_n547), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_n715) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_11_ ( .D(conv_inst_N77), .CK(i_clk), 
        .RN(n6942), .Q(result_w[11]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[5]), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_median_filter_submodule_a6_r[5]), .QN(
        n6577) );
  DFFRX2 conv_inst_conv_2_r_reg_9_ ( .D(conv_inst_N245), .CK(i_clk), .RN(n6936), .Q(conv_inst_conv_2_r[9]), .QN(n6638) );
  DFFRX4 conv_inst_conv_4_r_reg_6_ ( .D(conv_inst_N276), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_4_r[6]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[4]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n201) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[1]), .CK(i_clk), .RN(
        n6940), .Q(n6879), .QN(
        median_sobel_inst_u_median_filter_submodule_n801) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[3]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n256) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N690), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[3]), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_median_filter_submodule_net58169), .QN(
        n6882) );
  DFFRX4 input_data_ready_r_reg_19_ ( .D(N706), .CK(i_clk), .RN(n6913), .Q(
        n6661), .QN(n1145) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__2_ ( .D(
        median_sobel_inst_n545), .CK(i_clk), .RN(n6931), .Q(
        median_sobel_inst_n711) );
  DFFRX2 sram_addr_ready_r_reg_2__0_ ( .D(n1439), .CK(i_clk), .RN(n6916), .Q(
        sram_addr_w[18]), .QN(n6834) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N410), .CK(i_clk), .RN(
        n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]) );
  DFFRX2 input_data_ready_r_reg_30_ ( .D(N717), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[30]), .QN(n6829) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_1_ ( .D(n2716), .CK(i_clk), .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n95)
         );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_9_ ( .D(conv_inst_N75), .CK(i_clk), 
        .RN(n6919), .Q(conv_result_w[9]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N9), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[4]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n130) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N730), .CK(i_clk), .RN(
        n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]) );
  DFFRX2 x_plus_one_r_reg_1_ ( .D(n7008), .CK(i_clk), .RN(n6924), .Q(n7024), 
        .QN(n792) );
  DFFRX2 sram_addr_ready_r_reg_1__0_ ( .D(n1440), .CK(i_clk), .RN(n6917), .Q(
        sram_addr_w[9]), .QN(n6835) );
  DFFRX2 conv_inst_data_abc_1_r_reg_8_ ( .D(conv_inst_N132), .CK(i_clk), .RN(
        n6936), .Q(conv_inst_data_abc_1_r[8]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N430), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N75), .CK(i_clk), .RN(
        n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3])
         );
  DFFRX1 sram_addr_ready_r_reg_2__3_ ( .D(sram_addr_wait_r[18]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[21]), .QN(n6967) );
  DFFRX1 sram_addr_ready_r_reg_2__5_ ( .D(sram_addr_wait_r[20]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[23]), .QN(n6966) );
  DFFRX1 sram_addr_ready_r_reg_2__8_ ( .D(sram_addr_wait_r[23]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[26]), .QN(n6964) );
  DFFRX1 sram_addr_ready_r_reg_2__6_ ( .D(sram_addr_wait_r[21]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[24]), .QN(n6965) );
  DFFRX1 sram_addr_ready_r_reg_0__5_ ( .D(sram_addr_wait_r[4]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[5]), .QN(n6977) );
  DFFRX1 sram_addr_ready_r_reg_0__3_ ( .D(sram_addr_wait_r[2]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[3]), .QN(n6978) );
  DFFRX1 sram_addr_ready_r_reg_0__6_ ( .D(sram_addr_wait_r[5]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[6]), .QN(n6976) );
  DFFRX1 sram_addr_ready_r_reg_0__1_ ( .D(sram_addr_wait_r[0]), .CK(i_clk), 
        .RN(n6938), .Q(sram_addr_w[1]), .QN(n6979) );
  DFFRX1 sram_addr_ready_r_reg_1__4_ ( .D(sram_addr_wait_r[11]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[13]), .QN(n6972) );
  DFFRX1 sram_addr_ready_r_reg_1__2_ ( .D(sram_addr_wait_r[9]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[11]), .QN(n6974) );
  DFFRX1 sram_addr_ready_r_reg_1__8_ ( .D(sram_addr_wait_r[15]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[17]), .QN(n6968) );
  DFFRX1 sram_addr_ready_r_reg_1__6_ ( .D(sram_addr_wait_r[13]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[15]), .QN(n6970) );
  DFFRX1 sram_addr_ready_r_reg_3__5_ ( .D(sram_addr_wait_r[28]), .CK(i_clk), 
        .RN(n6938), .Q(sram_addr_w[32]), .QN(n6959) );
  DFFRX1 sram_addr_ready_r_reg_3__4_ ( .D(sram_addr_wait_r[27]), .CK(i_clk), 
        .RN(n6938), .Q(sram_addr_w[31]), .QN(n6960) );
  DFFRX1 sram_addr_ready_r_reg_3__3_ ( .D(sram_addr_wait_r[26]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[30]), .QN(n6961) );
  DFFRX1 sram_addr_ready_r_reg_3__2_ ( .D(sram_addr_wait_r[25]), .CK(i_clk), 
        .RN(n6938), .Q(sram_addr_w[29]), .QN(n6962) );
  DFFRX1 sram_addr_ready_r_reg_3__7_ ( .D(sram_addr_wait_r[30]), .CK(i_clk), 
        .RN(n6938), .Q(sram_addr_w[34]), .QN(n6957) );
  DFFRX1 sram_addr_ready_r_reg_3__6_ ( .D(sram_addr_wait_r[29]), .CK(i_clk), 
        .RN(n6938), .Q(sram_addr_w[33]), .QN(n6958) );
  DFFRX1 sram_addr_ready_r_reg_3__1_ ( .D(sram_addr_wait_r[24]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[28]), .QN(n6963) );
  DFFRX1 sram_addr_ready_r_reg_3__8_ ( .D(sram_addr_wait_r[31]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[35]), .QN(n6956) );
  DFFRX1 sram_addr_ready_r_reg_1__7_ ( .D(sram_addr_wait_r[14]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[16]), .QN(n6969) );
  DFFRX1 sram_addr_ready_r_reg_1__1_ ( .D(sram_addr_wait_r[8]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[10]), .QN(n6975) );
  DFFRX1 sram_addr_ready_r_reg_1__5_ ( .D(sram_addr_wait_r[12]), .CK(i_clk), 
        .RN(n6942), .Q(sram_addr_w[14]), .QN(n6971) );
  DFFRX1 sram_addr_ready_r_reg_1__3_ ( .D(sram_addr_wait_r[10]), .CK(i_clk), 
        .RN(n6931), .Q(sram_addr_w[12]), .QN(n6973) );
  DFFSX1 x_plus_two_r_reg_0_ ( .D(n469), .CK(i_clk), .SN(n6938), .Q(n6980), 
        .QN(n883) );
  DFFSX1 pre_state_reg_0__0_ ( .D(n6955), .CK(i_clk), .SN(n6913), .QN(
        pre_state[0]) );
  DFFSRX1 depth_ready_r_reg_2_ ( .D(n447), .CK(i_clk), .SN(n6931), .RN(1'b1), 
        .Q(n6572), .QN(n437) );
  DFFRX2 sram_addr_ready_r_reg_3__0_ ( .D(n1438), .CK(i_clk), .RN(n6916), .Q(
        sram_addr_w[27]), .QN(n6836) );
  DFFSRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N38), .CK(i_clk), .SN(
        1'b1), .RN(n6917), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]) );
  DFFSRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__4_ ( .D(
        median_sobel_inst_n567), .CK(i_clk), .SN(1'b1), .RN(n6931), .Q(
        median_sobel_inst_n669) );
  DFFSX4 conv_inst_data_bcd_r_reg_6_ ( .D(n3728), .CK(i_clk), .SN(n6942), .Q(
        n6948), .QN(conv_inst_n104) );
  DFFSRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_4_ ( .D(n6945), 
        .CK(i_clk), .SN(n6926), .RN(1'b1), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]) );
  DFFSRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_2_ ( 
        .D(n3727), .CK(i_clk), .SN(n6921), .RN(1'b1), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n100) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N330), .CK(i_clk), .RN(
        n6919), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]) );
  DFFRX2 conv_inst_data_bcd_r_reg_9_ ( .D(n6983), .CK(i_clk), .RN(n6921), .Q(
        conv_inst_n101), .QN(n6954) );
  DFFRX2 conv_inst_data_abc_r_reg_9_ ( .D(conv_inst_data_abc_w[9]), .CK(i_clk), 
        .RN(n6914), .Q(conv_inst_n107), .QN(n6953) );
  DFFRX2 conv_inst_data_bcd_r_reg_7_ ( .D(conv_inst_data_bcd_w[7]), .CK(i_clk), 
        .RN(n6942), .Q(conv_inst_n103), .QN(n6950) );
  DFFRX2 conv_inst_data_bcd_r_reg_8_ ( .D(conv_inst_data_bcd_w[8]), .CK(i_clk), 
        .RN(n6942), .Q(conv_inst_n102), .QN(n6952) );
  DFFRX2 conv_inst_data_abc_r_reg_7_ ( .D(conv_inst_data_abc_w[7]), .CK(i_clk), 
        .RN(n6942), .Q(conv_inst_n109), .QN(n6949) );
  DFFRX2 conv_inst_data_abc_r_reg_6_ ( .D(conv_inst_data_abc_w[6]), .CK(i_clk), 
        .RN(n6942), .Q(conv_inst_n110), .QN(n6947) );
  DFFRX2 conv_inst_data_abc_r_reg_8_ ( .D(conv_inst_data_abc_w[8]), .CK(i_clk), 
        .RN(n6942), .Q(conv_inst_n108), .QN(n6951) );
  DFFRHQX1 pre_state_reg_2__2_ ( .D(n1021), .CK(i_clk), .RN(n6929), .Q(n1020)
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]), .CK(i_clk), 
        .RN(n6919), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2])
         );
  DFFRX1 conv_inst_data_bcd_2_r_reg_0_ ( .D(conv_inst_N135), .CK(i_clk), .RN(
        n6940), .Q(conv_inst_data_bcd_2_r[0]), .QN(n3735) );
  DFFSHQX4 curr_state_reg_2_ ( .D(n1432), .CK(i_clk), .SN(n6940), .Q(
        curr_state[2]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[10]), .CK(i_clk), 
        .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n64) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p2_r_reg_1_ ( .D(
        median_sobel_inst_data_b_r[1]), .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p2_r_reg_2_ ( .D(
        median_sobel_inst_data_b_r[2]), .CK(i_clk), .RN(n6926), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .QN(n6902) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_13_ ( .D(conv_inst_N79), .CK(i_clk), 
        .RN(n6936), .Q(result_w[13]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[0]), .CK(i_clk), .RN(
        n6928), .QN(median_sobel_inst_u_median_filter_submodule_n786) );
  DFFRX2 sram_addr_ready_r_reg_2__4_ ( .D(sram_addr_wait_r[19]), .CK(i_clk), 
        .RN(n6936), .Q(sram_addr_w[22]), .QN(n424) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N142), .CK(i_clk), .RN(
        n6916), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12])
         );
  DFFRX2 conv_inst_data_abc_r_reg_5_ ( .D(conv_inst_data_abc_w[5]), .CK(i_clk), 
        .RN(n6936), .Q(conv_inst_n111), .QN(n6731) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_3_ ( .D(conv_inst_N69), .CK(i_clk), 
        .RN(n6914), .Q(conv_result_w[3]) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__0_ ( .D(n6679), .CK(
        i_clk), .RN(n6928), .Q(n7032), .QN(median_sobel_inst_n415) );
  DFFRX2 conv_inst_conv_4_r_reg_12_ ( .D(conv_inst_N282), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_4_r[12]), .QN(n6660) );
  DFFRX2 median_sobel_inst_cnt_reg_3_ ( .D(median_sobel_inst_N115), .CK(i_clk), 
        .RN(n6941), .Q(median_sobel_inst_cnt_3_), .QN(median_sobel_inst_n154)
         );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_4_ ( .D(n6990), 
        .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_median_filter_submodule_n258) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[2]) );
  DFFRX4 sram_data_out_r_reg_1__3_ ( .D(sram_data_out_w[11]), .CK(i_clk), .RN(
        n6944), .QN(n843) );
  DFFRX4 sram_data_out_r_reg_2__3_ ( .D(sram_data_out_w[19]), .CK(i_clk), .RN(
        n6933), .Q(n6549), .QN(n786) );
  DFFRX4 sram_data_out_r_reg_2__4_ ( .D(sram_data_out_w[20]), .CK(i_clk), .RN(
        n6933), .Q(n6543), .QN(n815) );
  DFFRX4 sram_data_out_r_reg_2__5_ ( .D(sram_data_out_w[21]), .CK(i_clk), .RN(
        n6933), .Q(n6542), .QN(n787) );
  DFFRX4 sram_data_out_r_reg_3__2_ ( .D(sram_data_out_w[26]), .CK(i_clk), .RN(
        n6933), .Q(n6541), .QN(n778) );
  DFFRX4 sram_data_out_r_reg_2__2_ ( .D(sram_data_out_w[18]), .CK(i_clk), .RN(
        n6933), .Q(n6535), .QN(n7850) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]), .CK(i_clk), 
        .RN(n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7])
         );
  DFFRX1 median_sobel_inst_med_sobel_r_reg ( .D(median_sobel_inst_n320), .CK(
        i_clk), .RN(n6941), .Q(n6659), .QN(median_sobel_inst_n323) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[6]), .CK(i_clk), .RN(
        n6940), .Q(n3520), .QN(
        median_sobel_inst_u_median_filter_submodule_net22700) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__4_ ( .D(
        median_sobel_inst_n535), .CK(i_clk), .RN(n6941), .Q(n3515), .QN(
        median_sobel_inst_n411) );
  DFFRX2 conv_inst_conv_4_r_reg_7_ ( .D(conv_inst_N277), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_4_r[7]) );
  DFFRX2 conv_inst_conv_1_r_reg_5_ ( .D(conv_inst_N224), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_1_r[5]), .QN(n3506) );
  DFFSX1 pre_state_reg_0__3_ ( .D(curr_state[3]), .CK(i_clk), .SN(n6929), .Q(
        pre_state[3]) );
  DFFSX1 pre_state_reg_0__2_ ( .D(curr_state[2]), .CK(i_clk), .SN(n6929), .Q(
        pre_state[2]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__1_ ( .D(
        median_sobel_inst_n578), .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_n653), .QN(n6507) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N119), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1])
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_u_sober_compare_submodule_n3) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[4]), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[4]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]), .CK(i_clk), 
        .RN(n6942), .QN(median_sobel_inst_u_sober_compare_submodule_n169) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[4]), .CK(i_clk), .RN(
        n6932), .Q(n6909), .QN(
        median_sobel_inst_u_median_filter_submodule_n792) );
  DFFRX2 x_delay_r_reg_2__0_ ( .D(x_delay_r_1__0_), .CK(i_clk), .RN(n6942), 
        .Q(n6581), .QN(n871) );
  DFFRX2 input_data_ready_r_reg_15_ ( .D(N702), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[15]), .QN(n6753) );
  DFFRX2 input_data_ready_r_reg_23_ ( .D(N710), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[23]), .QN(n6534) );
  DFFSHQX4 curr_state_reg_3_ ( .D(next_state_3_), .CK(i_clk), .SN(n6940), .Q(
        curr_state[3]) );
  DFFRHQX1 conv_inst_conv_3_r_reg_12_ ( .D(conv_inst_N265), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n47) );
  DFFRHQX4 curr_state_reg_0_ ( .D(n1435), .CK(i_clk), .RN(n6914), .Q(n837) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_4_ ( .D(n6997), 
        .CK(i_clk), .RN(n6929), .Q(
        median_sobel_inst_u_median_filter_submodule_n243) );
  DFFRX2 input_data_ready_r_reg_5_ ( .D(N692), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[5]), .QN(n6604) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]), .CK(i_clk), 
        .RN(n6939), .Q(n6664) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[1]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n121) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[2]), .CK(i_clk), .RN(
        n6914), .Q(median_sobel_inst_u_median_filter_submodule_n227), .QN(
        n6588) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N32), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]), .CK(i_clk), 
        .RN(n6935), .QN(median_sobel_inst_u_sobel_gradient_submodule_N77) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]), .CK(i_clk), 
        .RN(n6914), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6])
         );
  DFFRHQX1 conv_inst_conv_1_r_reg_13_ ( .D(conv_inst_N232), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_n44) );
  DFFRX2 conv_inst_conv_3_r_reg_13_ ( .D(conv_inst_N266), .CK(i_clk), .RN(
        n6929), .Q(conv_inst_conv_3_r[13]), .QN(n6663) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]), .CK(i_clk), 
        .RN(n6939), .Q(n6748), .QN(
        median_sobel_inst_u_sober_compare_submodule_n41) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]), .CK(i_clk), 
        .RN(n6939), .Q(n6718), .QN(
        median_sobel_inst_u_sober_compare_submodule_n11) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[9]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]), .CK(i_clk), 
        .RN(n6939), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[7]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_cnt_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N29), .CK(i_clk), .RN(
        n6939), .Q(n6601), .QN(median_sobel_inst_u_sober_compare_submodule_n64) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N420), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N71), .CK(i_clk), .RN(
        n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_7_ ( .D(conv_inst_N131), .CK(i_clk), .RN(
        n6936), .Q(conv_inst_data_abc_1_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]), .CK(i_clk), 
        .RN(n6944), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N141), .CK(i_clk), 
        .RN(n6914), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_14_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N157), .CK(i_clk), 
        .RN(n6942), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n7) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_1_ ( .D(n2667), 
        .CK(i_clk), .RN(n6932), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .QN(n6514) );
  DFFRX1 conv_inst_data_bcd_2_r_reg_10_ ( .D(conv_inst_N145), .CK(i_clk), .RN(
        n6943), .Q(conv_inst_data_bcd_2_r[10]) );
  DFFRX1 conv_inst_conv_2_r_reg_13_ ( .D(conv_inst_N249), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_conv_2_r[13]), .QN(n6656) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]), .CK(i_clk), 
        .RN(n6935), .QN(n6515) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[5]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n239) );
  DFFRX2 conv_inst_conv_4_r_reg_16_ ( .D(conv_inst_N286), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_conv_4_r[16]), .QN(n6874) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N138), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_2_ ( .D(n6995), 
        .CK(i_clk), .RN(n6941), .Q(
        median_sobel_inst_u_median_filter_submodule_b9_r[2]), .QN(n6884) );
  DFFRX2 input_data_ready_r_reg_29_ ( .D(N716), .CK(i_clk), .RN(n6913), .Q(
        input_data_ready_r[29]), .QN(n6579) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[2]), .CK(i_clk), .RN(
        n6916), .Q(n6887), .QN(
        median_sobel_inst_u_median_filter_submodule_net22682) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n775), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_out_data_w[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]), .CK(i_clk), 
        .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5])
         );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[3]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n221) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[0]), .CK(i_clk), .RN(
        n6932), .Q(n6574), .QN(
        median_sobel_inst_u_median_filter_submodule_net22685) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1170), .CK(i_clk), 
        .RN(n6942), .Q(median_sobel_inst_sobel_out_data_w[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]), .CK(i_clk), 
        .RN(n6941), .QN(n6642) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[1]), .CK(i_clk), .RN(
        n6917), .Q(n6585), .QN(
        median_sobel_inst_u_median_filter_submodule_net22697) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[5]), .CK(i_clk), .RN(
        n6938), .Q(median_sobel_inst_u_median_filter_submodule_n231) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[3]), .CK(i_clk), .RN(
        n6914), .Q(n6489), .QN(
        median_sobel_inst_u_median_filter_submodule_n800) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_6_ ( .D(
        median_sobel_inst_data_f_r[6]), .CK(i_clk), .RN(n6927), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]) );
  DFFRX2 y_origin_r_reg_2_ ( .D(n490), .CK(i_clk), .RN(n6939), .Q(
        y_origin_r_2_), .QN(n6511) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[6]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n181) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[3]), .CK(i_clk), .RN(
        n6939), .Q(n6497), .QN(
        median_sobel_inst_u_median_filter_submodule_n805) );
  DFFRHQX2 y_origin_r_reg_1_ ( .D(n491), .CK(i_clk), .RN(n6914), .Q(n885) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[1]), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_median_filter_submodule_n32), .QN(n6580) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .CK(i_clk), 
        .RN(n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N154), .CK(i_clk), 
        .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[11]), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n4) );
  DFFRX4 conv_inst_data_abc_3_r_reg_3_ ( .D(conv_inst_N200), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_abc_3_r[3]) );
  DFFRX2 conv_inst_conv_4_r_reg_11_ ( .D(conv_inst_N281), .CK(i_clk), .RN(
        n6940), .Q(conv_inst_conv_4_r[11]), .QN(n6520) );
  DFFRX2 conv_inst_data_abc_r_reg_4_ ( .D(conv_inst_data_abc_w[4]), .CK(i_clk), 
        .RN(n6935), .Q(conv_inst_n112), .QN(n6538) );
  DFFRX2 conv_inst_conv_1_r_reg_15_ ( .D(n6486), .CK(i_clk), .RN(n6935), .Q(
        conv_inst_conv_1_r[15]), .QN(n6527) );
  DFFRX2 conv_inst_conv_1_r_reg_11_ ( .D(conv_inst_N230), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_1_r[11]), .QN(n6510) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_5_ ( .D(conv_inst_N213), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_4_r[5]) );
  DFFRX4 input_data_ready_r_reg_16_ ( .D(N703), .CK(i_clk), .RN(n6914), .Q(
        n6654), .QN(n869) );
  DFFSHQX8 op_mode_r_reg_0_ ( .D(n6469), .CK(i_clk), .SN(n6914), .Q(n6470) );
  DFFRX4 conv_inst_conv_3_r_reg_6_ ( .D(conv_inst_N259), .CK(i_clk), .RN(n6919), .Q(conv_inst_conv_3_r[6]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[3]), .CK(i_clk), .RN(
        n6941), .QN(median_sobel_inst_u_median_filter_submodule_net22696) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[2]), .CK(i_clk), .RN(
        n6929), .Q(median_sobel_inst_u_median_filter_submodule_n254) );
  DFFRHQX8 input_data_ready_r_reg_10_ ( .D(N697), .CK(i_clk), .RN(n6914), .Q(
        n893) );
  DFFRX2 conv_inst_data_abc_1_r_reg_0_ ( .D(conv_inst_N124), .CK(i_clk), .RN(
        n6926), .Q(conv_inst_data_abc_1_r[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N113), .CK(i_clk), .RN(
        n6941), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N112), .CK(i_clk), .RN(
        n6941), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]) );
  DFFRX2 conv_inst_conv_2_r_reg_12_ ( .D(conv_inst_N248), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_2_r[12]), .QN(n6653) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__4_ ( .D(
        median_sobel_inst_n575), .CK(i_clk), .RN(n6940), .Q(n6635), .QN(
        median_sobel_inst_n371) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .CK(i_clk), 
        .RN(n6938), .Q(median_sobel_inst_u_sobel_gradient_submodule_n57) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[7]), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_median_filter_submodule_n27), .QN(n6892) );
  DFFRX4 conv_inst_conv_3_r_reg_1_ ( .D(conv_inst_N254), .CK(i_clk), .RN(n6942), .Q(conv_inst_conv_3_r[1]) );
  DFFRX4 conv_inst_data_abc_3_r_reg_7_ ( .D(conv_inst_N204), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_3_r[7]) );
  DFFRX1 conv_inst_conv_2_r_reg_10_ ( .D(conv_inst_N246), .CK(i_clk), .RN(
        n6931), .Q(conv_inst_conv_2_r[10]), .QN(n2768) );
  DFFRX1 conv_inst_conv_1_r_reg_16_ ( .D(conv_inst_N235), .CK(i_clk), .RN(
        n6941), .Q(conv_inst_conv_1_r[16]), .QN(n2766) );
  DFFRX1 input_data_ready_r_reg_21_ ( .D(N708), .CK(i_clk), .RN(n6931), .Q(
        n3736), .QN(n846) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__2_ ( .D(n6522), .CK(
        i_clk), .RN(n6932), .Q(n2718), .QN(median_sobel_inst_n413) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]), 
        .CK(i_clk), .RN(n6938), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n94) );
  DFFRX2 conv_inst_data_abc_1_r_reg_6_ ( .D(conv_inst_N130), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_1_r[6]) );
  DFFRX2 out_data_ready_r_reg_4_ ( .D(out_data_wait_r[4]), .CK(i_clk), .RN(
        n6917), .Q(o_out_data[4]) );
  DFFRX4 input_data_ready_r_reg_11_ ( .D(N698), .CK(i_clk), .RN(n6914), .Q(
        n6888), .QN(n858) );
  DFFRX2 conv_isFirst_signal_r_reg ( .D(N789), .CK(i_clk), .RN(n6924), .Q(
        conv_isFirst_signal_r) );
  DFFRX2 med_sobel_isFirst_signal_r_reg ( .D(N790), .CK(i_clk), .RN(n6924), 
        .Q(med_sobel_isFirst_signal_r) );
  DFFRX4 sram_data_out_r_reg_2__0_ ( .D(sram_data_out_w[16]), .CK(i_clk), .RN(
        n6924), .Q(n386), .QN(n3521) );
  DFFRX4 sram_data_out_r_reg_3__5_ ( .D(sram_data_out_w[29]), .CK(i_clk), .RN(
        n6921), .Q(n399), .QN(n3516) );
  DFFRX4 sram_data_out_r_reg_3__4_ ( .D(sram_data_out_w[28]), .CK(i_clk), .RN(
        n6933), .Q(n6746), .QN(n780) );
  DFFRX4 sram_data_out_r_reg_0__4_ ( .D(sram_data_out_w[4]), .CK(i_clk), .RN(
        n6916), .Q(n6843), .QN(n8130) );
  DFFRX4 sram_data_out_r_reg_0__6_ ( .D(sram_data_out_w[6]), .CK(i_clk), .RN(
        n6917), .Q(n6775), .QN(n809) );
  DFFRX4 sram_data_out_r_reg_0__3_ ( .D(sram_data_out_w[3]), .CK(i_clk), .RN(
        n6917), .Q(n6783), .QN(n877) );
  DFFRX4 sram_data_out_r_reg_3__3_ ( .D(sram_data_out_w[27]), .CK(i_clk), .RN(
        n6933), .Q(n6747), .QN(n779) );
  DFFRX4 sram_data_out_r_reg_0__2_ ( .D(sram_data_out_w[2]), .CK(i_clk), .RN(
        n6916), .Q(n6849), .QN(n8110) );
  DFFRX4 sram_data_out_r_reg_2__1_ ( .D(sram_data_out_w[17]), .CK(i_clk), .RN(
        n6924), .Q(n6737), .QN(n784) );
  DFFRX4 sram_data_out_r_reg_2__6_ ( .D(sram_data_out_w[22]), .CK(i_clk), .RN(
        n6924), .Q(n6736), .QN(n8140) );
  DFFRX4 sram_data_out_r_reg_1__1_ ( .D(sram_data_out_w[9]), .CK(i_clk), .RN(
        n6917), .QN(n853) );
  DFFRX4 sram_data_out_r_reg_0__0_ ( .D(sram_data_out_w[0]), .CK(i_clk), .RN(
        n6929), .Q(n6562), .QN(n803) );
  DFFRX4 sram_data_out_r_reg_2__7_ ( .D(sram_data_out_w[23]), .CK(i_clk), .RN(
        n6940), .Q(n6848), .QN(n820) );
  DFFRX4 sram_data_out_r_reg_1__0_ ( .D(sram_data_out_w[8]), .CK(i_clk), .RN(
        n6933), .QN(n817) );
  DFFRX4 sram_data_out_r_reg_0__1_ ( .D(sram_data_out_w[1]), .CK(i_clk), .RN(
        n6913), .Q(n6840), .QN(n816) );
  DFFRX4 sram_data_out_r_reg_1__7_ ( .D(sram_data_out_w[15]), .CK(i_clk), .RN(
        n6939), .QN(n801) );
  DFFRX4 sram_data_out_r_reg_0__7_ ( .D(sram_data_out_w[7]), .CK(i_clk), .RN(
        n6917), .Q(n6847), .QN(n884) );
  DFFRX4 sram_data_out_r_reg_3__7_ ( .D(sram_data_out_w[31]), .CK(i_clk), .RN(
        n6921), .Q(n403), .QN(n6649) );
  DFFRX2 input_data_ready_r_reg_17_ ( .D(N704), .CK(i_clk), .RN(n6913), .Q(
        n6610), .QN(n1153) );
  DFFRX4 input_data_ready_r_reg_2_ ( .D(N689), .CK(i_clk), .RN(n6914), .QN(
        n848) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_7_ ( .D(conv_inst_N215), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_bcd_4_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N162), .CK(i_clk), .RN(
        n6921), .QN(median_sobel_inst_u_sobel_gradient_submodule_n99) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N164), .CK(i_clk), .RN(
        n6921), .QN(median_sobel_inst_u_sobel_gradient_submodule_n110) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[0]), .CK(i_clk), .RN(
        n6942), .Q(n6859), .QN(
        median_sobel_inst_u_median_filter_submodule_n787) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__1_ ( .D(
        median_sobel_inst_n602), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n350) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[2]), .CK(i_clk), .RN(
        n6930), .Q(median_sobel_inst_u_median_filter_submodule_n145) );
  DFFRX1 conv_inst_conv_1_r_reg_0_ ( .D(conv_inst_N219), .CK(i_clk), .RN(n6913), .Q(conv_inst_conv_1_r[0]), .QN(n2702) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N166), .CK(i_clk), .RN(
        n6921), .QN(median_sobel_inst_u_sobel_gradient_submodule_n33) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[1]), .CK(i_clk), .RN(
        n6913), .Q(n6876), .QN(
        median_sobel_inst_u_median_filter_submodule_n795) );
  DFFRX1 conv_inst_data_abc_1_r_reg_1_ ( .D(conv_inst_N125), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_data_abc_1_r[1]), .QN(n6595) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__4_ ( .D(
        median_sobel_inst_n599), .CK(i_clk), .RN(n6940), .QN(
        median_sobel_inst_n347) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__5_ ( .D(
        median_sobel_inst_n566), .CK(i_clk), .RN(n6923), .Q(n3509), .QN(
        median_sobel_inst_n378) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__0_ ( .D(
        median_sobel_inst_n579), .CK(i_clk), .RN(n6940), .Q(n3510), .QN(
        median_sobel_inst_n375) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__1_ ( .D(
        median_sobel_inst_n538), .CK(i_clk), .RN(n6916), .Q(n6600), .QN(
        median_sobel_inst_n414) );
  DFFRX1 conv_inst_data_abc_1_r_reg_5_ ( .D(conv_inst_N129), .CK(i_clk), .RN(
        n6919), .Q(conv_inst_data_abc_1_r[5]), .QN(n3488) );
  DFFRX1 conv_inst_conv_1_r_reg_12_ ( .D(conv_inst_N231), .CK(i_clk), .RN(
        n6942), .Q(conv_inst_conv_1_r[12]), .QN(n6644) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__2_ ( .D(
        median_sobel_inst_n513), .CK(i_clk), .RN(n6939), .QN(
        median_sobel_inst_n429) );
  DFFSX1 pre_state_reg_1__2_ ( .D(pre_state[2]), .CK(i_clk), .SN(n6929), .QN(
        n1021) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N135), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_14_ ( .D(
        n6633), .CK(i_clk), .RN(n6916), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n29) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N137), .CK(i_clk), .RN(
        n6939), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7])
         );
  DFFRX1 conv_inst_data_bcd_2_r_reg_9_ ( .D(conv_inst_N144), .CK(i_clk), .RN(
        n6940), .Q(conv_inst_data_bcd_2_r[9]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__3_ ( .D(
        median_sobel_inst_n568), .CK(i_clk), .RN(n6941), .QN(
        median_sobel_inst_n380) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[6]), .CK(i_clk), .RN(
        n6931), .Q(median_sobel_inst_u_median_filter_submodule_n186) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]), .CK(i_clk), 
        .RN(n6941), .QN(median_sobel_inst_u_sobel_gradient_submodule_n43) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .CK(i_clk), 
        .RN(n6917), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), 
        .QN(n3502) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .CK(i_clk), 
        .RN(n6929), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[0]), 
        .QN(n3733) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_15_ ( .D(
        n6641), .CK(i_clk), .RN(n6916), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]), .CK(i_clk), 
        .RN(n6914), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]), .CK(i_clk), 
        .RN(n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7])
         );
  DFFRX1 cnt_reg_9_ ( .D(n475), .CK(i_clk), .RN(n6939), .Q(cnt[9]), .QN(n6715)
         );
  DFFRX1 conv_inst_conv_4_r_reg_15_ ( .D(conv_inst_N285), .CK(i_clk), .RN(
        n6927), .Q(conv_inst_conv_4_r[15]), .QN(n6628) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .CK(i_clk), 
        .RN(n6933), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[0]), 
        .QN(n3490) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .CK(i_clk), 
        .RN(n6914), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), 
        .QN(n2756) );
  DFFRX1 cnt_reg_8_ ( .D(n476), .CK(i_clk), .RN(n6939), .Q(cnt[8]), .QN(n6521)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N220), .CK(i_clk), .RN(
        n6942), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_1_ ( .D(n6982), 
        .CK(i_clk), .RN(n6936), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .QN(n6894) );
  DFFRX1 conv_inst_data_bcd_4_r_reg_10_ ( .D(n6592), .CK(i_clk), .RN(n6919), 
        .Q(conv_inst_data_bcd_4_r[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N67), .CK(i_clk), .RN(
        n6923), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N680), .CK(i_clk), .RN(
        n6928), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]), .CK(i_clk), 
        .RN(n6929), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]), .CK(i_clk), 
        .RN(n6923), .QN(n6632) );
  DFFRHQX1 x_delay_r_reg_2__1_ ( .D(x_delay_r_1__1_), .CK(i_clk), .RN(n6942), 
        .Q(n6900) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .CK(i_clk), 
        .RN(n6938), .Q(median_sobel_inst_u_sobel_gradient_submodule_n79) );
  DFFSX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_5_ ( .D(n6946), 
        .CK(i_clk), .SN(n6929), .Q(n3519), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n81) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_16_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N175), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_17_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N176), .CK(i_clk), .RN(
        n6919), .Q(n2753) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_13_ ( .D(
        n6634), .CK(i_clk), .RN(n6923), .Q(n3533), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n279) );
  DFFRX1 x_minus_one_r_reg_0_ ( .D(n469), .CK(i_clk), .RN(n6933), .Q(
        x_minus_one_r_0_), .QN(n6548) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]), .CK(i_clk), 
        .RN(n6931), .Q(median_sobel_inst_u_sobel_gradient_submodule_n66) );
  DFFRX1 z_r_reg_1_ ( .D(N759), .CK(i_clk), .RN(n6916), .QN(n6860) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_4_ ( .D(
        median_sobel_inst_data_a_r[4]), .CK(i_clk), .RN(n6914), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n107) );
  DFFRX1 y_r_reg_1_ ( .D(n1433), .CK(i_clk), .RN(n6916), .QN(n6846) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_6_ ( .D(conv_inst_N72), .CK(i_clk), 
        .RN(n6914), .Q(conv_result_w[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N13), .CK(i_clk), .RN(
        n6913), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N150), .CK(i_clk), .RN(
        n6921), .Q(median_sobel_inst_u_sobel_gradient_submodule_N166) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]), .CK(
        i_clk), .RN(n6940), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]) );
  BUFX12 U2897 ( .A(i_rst_n), .Y(n6940) );
  BUFX16 U2898 ( .A(i_rst_n), .Y(n6942) );
  BUFX12 U2899 ( .A(i_rst_n), .Y(n6933) );
  BUFX12 U2900 ( .A(i_rst_n), .Y(n6936) );
  BUFX12 U2901 ( .A(i_rst_n), .Y(n6939) );
  OAI21XL U2902 ( .A0(n5558), .A1(n6733), .B0(n4435), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[5]) );
  OAI22XL U2903 ( .A0(n4451), .A1(n4450), .B0(n5530), .B1(n6397), .Y(n483) );
  OA21XL U2904 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n28), .A1(
        n5556), .B0(n5555), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N71) );
  OAI21XL U2905 ( .A0(n5508), .A1(n6906), .B0(n4459), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[0]) );
  OAI21XL U2906 ( .A0(n6894), .A1(n5452), .B0(n4386), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[1]) );
  OA21XL U2907 ( .A0(n4240), .A1(n4239), .B0(n5921), .Y(N715) );
  OAI21XL U2908 ( .A0(n6764), .A1(n5516), .B0(n5494), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[3]) );
  OA21XL U2909 ( .A0(n5569), .A1(n5568), .B0(n5921), .Y(N711) );
  OAI21XL U2910 ( .A0(n5508), .A1(n6514), .B0(n4429), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[1]) );
  CLKMX2X2 U2911 ( .A(median_sobel_inst_G[29]), .B(n6855), .S0(n3902), .Y(
        median_sobel_inst_n467) );
  CLKMX2X2 U2912 ( .A(median_sobel_inst_G[33]), .B(n6565), .S0(n3902), .Y(
        median_sobel_inst_n451) );
  OA21XL U2913 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n40), .A1(
        n5547), .B0(n5546), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N102) );
  OA21XL U2914 ( .A0(n5575), .A1(n5574), .B0(n5921), .Y(N716) );
  OA21XL U2915 ( .A0(n5550), .A1(n5549), .B0(n5548), .Y(conv_inst_N67) );
  OAI21XL U2916 ( .A0(n4457), .A1(n6955), .B0(n6430), .Y(N811) );
  OAI21XL U2917 ( .A0(median_sobel_inst_u_median_filter_submodule_n70), .A1(
        n5551), .B0(n4483), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[1]) );
  OAI21XL U2918 ( .A0(n5508), .A1(n6657), .B0(n4436), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[4]) );
  CLKMX2X2 U2919 ( .A(n6801), .B(median_sobel_inst_G[11]), .S0(n3725), .Y(
        median_sobel_inst_u_sober_compare_submodule_n125) );
  OAI21XL U2920 ( .A0(median_sobel_inst_u_median_filter_submodule_n56), .A1(
        n5519), .B0(n4465), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[7]) );
  OAI21XL U2921 ( .A0(i_op_valid), .A1(n5791), .B0(n4479), .Y(n441) );
  OAI21XL U2922 ( .A0(median_sobel_inst_u_median_filter_submodule_n58), .A1(
        n5519), .B0(n5161), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[5]) );
  AO21X1 U2923 ( .A0(n5756), .A1(n4498), .B0(n4497), .Y(n6480) );
  OAI21XL U2924 ( .A0(i_op_valid), .A1(n5046), .B0(n4505), .Y(n443) );
  OAI21XL U2925 ( .A0(n6781), .A1(n5508), .B0(n4855), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[7]) );
  OAI21XL U2926 ( .A0(median_sobel_inst_u_median_filter_submodule_n77), .A1(
        n5452), .B0(n4460), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[7]) );
  OAI21XL U2927 ( .A0(n5508), .A1(n6776), .B0(n4384), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[6]) );
  OAI21XL U2928 ( .A0(n5067), .A1(n2758), .B0(n3257), .Y(
        median_sobel_inst_n456) );
  CLKMX2X2 U2929 ( .A(median_sobel_inst_angle[7]), .B(n6573), .S0(n3902), .Y(
        median_sobel_inst_n487) );
  CLKINVX1 U2930 ( .A(n3556), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N125) );
  OAI21XL U2931 ( .A0(n4957), .A1(n6908), .B0(n4956), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[2]) );
  OAI21XL U2932 ( .A0(n4821), .A1(n6740), .B0(n4768), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[3]) );
  OAI21XL U2933 ( .A0(n4974), .A1(n5779), .B0(n4973), .Y(n447) );
  CLKINVX1 U2934 ( .A(n5938), .Y(n6945) );
  OAI21XL U2935 ( .A0(n5558), .A1(n6724), .B0(n4382), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[4]) );
  OAI21XL U2936 ( .A0(n4821), .A1(n6902), .B0(n3431), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[2]) );
  OAI22XL U2937 ( .A0(n6729), .A1(n5449), .B0(n4474), .B1(n6537), .Y(
        conv_inst_N138) );
  OAI22XL U2938 ( .A0(n6837), .A1(n4476), .B0(n4474), .B1(n6483), .Y(
        conv_inst_N140) );
  OAI22XL U2939 ( .A0(n6947), .A1(n4476), .B0(n4474), .B1(n6949), .Y(
        conv_inst_N131) );
  OAI22XL U2940 ( .A0(n6731), .A1(n5449), .B0(n4474), .B1(n6947), .Y(
        conv_inst_N130) );
  OAI22XL U2941 ( .A0(n6537), .A1(n4476), .B0(n4474), .B1(n6837), .Y(
        conv_inst_N139) );
  OAI22XL U2942 ( .A0(n6951), .A1(n5449), .B0(n4474), .B1(n6953), .Y(
        conv_inst_N133) );
  OAI22XL U2943 ( .A0(n6483), .A1(n4476), .B0(n4474), .B1(n6948), .Y(
        conv_inst_N141) );
  OAI22XL U2944 ( .A0(n6948), .A1(n4476), .B0(n4474), .B1(n6950), .Y(
        conv_inst_N142) );
  OAI22XL U2945 ( .A0(n6949), .A1(n5449), .B0(n4474), .B1(n6951), .Y(
        conv_inst_N132) );
  OAI22XL U2946 ( .A0(n6950), .A1(n4476), .B0(n4474), .B1(n6952), .Y(
        conv_inst_N143) );
  OAI22XL U2947 ( .A0(n6481), .A1(n5449), .B0(n4474), .B1(n6539), .Y(
        conv_inst_N126) );
  OAI22XL U2948 ( .A0(n6539), .A1(n4476), .B0(n4474), .B1(n6730), .Y(
        conv_inst_N127) );
  OAI22XL U2949 ( .A0(n6730), .A1(n4476), .B0(n4474), .B1(n6538), .Y(
        conv_inst_N128) );
  OAI22XL U2950 ( .A0(n6536), .A1(n5449), .B0(n4474), .B1(n6729), .Y(
        conv_inst_N137) );
  OAI22XL U2951 ( .A0(conv_inst_n13), .A1(n5449), .B0(n4474), .B1(n6536), .Y(
        conv_inst_N136) );
  AND2X2 U2952 ( .A(n6081), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N440) );
  OAI21XL U2953 ( .A0(n4637), .A1(n6570), .B0(n4636), .Y(
        median_sobel_inst_n320) );
  CLKINVX1 U2954 ( .A(n4195), .Y(n475) );
  OAI21XL U2955 ( .A0(n4673), .A1(
        median_sobel_inst_u_median_filter_submodule_n41), .B0(n4380), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[5]) );
  OAI21XL U2956 ( .A0(n4673), .A1(
        median_sobel_inst_u_median_filter_submodule_n48), .B0(n4672), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[3]) );
  NAND2X1 U2957 ( .A(n4046), .B(n4047), .Y(N708) );
  NAND2X1 U2958 ( .A(n5826), .B(n5825), .Y(N698) );
  NOR2X1 U2959 ( .A(n5212), .B(n5211), .Y(median_sobel_inst_N114) );
  OA21X2 U2960 ( .A0(n6090), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .B0(n6089), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]) );
  NAND2X1 U2961 ( .A(n5833), .B(n5832), .Y(N696) );
  NAND2X1 U2962 ( .A(n5871), .B(n5870), .Y(N709) );
  NAND2X1 U2963 ( .A(n5803), .B(n5802), .Y(N695) );
  NAND2X1 U2964 ( .A(n5887), .B(n5886), .Y(N703) );
  NAND2X1 U2965 ( .A(n5878), .B(n5877), .Y(N705) );
  NAND2X1 U2966 ( .A(n5845), .B(n5844), .Y(N700) );
  NAND2X1 U2967 ( .A(n5816), .B(n5815), .Y(N701) );
  NAND2X1 U2968 ( .A(n5822), .B(n5821), .Y(N699) );
  OA21X2 U2969 ( .A0(n6168), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[9]), .B0(n6170), 
        .Y(median_sobel_inst_u_sobel_gradient_submodule_N156) );
  OA21X2 U2970 ( .A0(n6117), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .B0(n6116), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]) );
  NOR2X4 U2971 ( .A(n6292), .B(n6291), .Y(conv_inst_N268) );
  NAND2X1 U2972 ( .A(n5891), .B(n5890), .Y(N704) );
  NOR2X2 U2973 ( .A(n5514), .B(n3441), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N175) );
  NAND2X1 U2974 ( .A(n5873), .B(n5872), .Y(N710) );
  NAND2X1 U2975 ( .A(n5811), .B(n5810), .Y(N702) );
  MXI2X1 U2976 ( .A(median_sobel_inst_n215), .B(n6578), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[39]) );
  OA21X2 U2977 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n30), .A1(
        n5566), .B0(n5565), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N72) );
  NAND2X2 U2978 ( .A(n6365), .B(n3577), .Y(n1438) );
  CLKINVX1 U2979 ( .A(n5943), .Y(n3101) );
  OAI21X2 U2980 ( .A0(n6164), .A1(n6513), .B0(n2975), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N126) );
  OAI2BB1X1 U2982 ( .A0N(median_sobel_inst_angle[0]), .A1N(n3711), .B0(n3637), 
        .Y(median_sobel_inst_u_sober_compare_submodule_n94) );
  OAI2BB1X1 U2983 ( .A0N(median_sobel_inst_angle[4]), .A1N(n3711), .B0(n3636), 
        .Y(median_sobel_inst_u_sober_compare_submodule_n90) );
  MXI2X1 U2984 ( .A(median_sobel_inst_n160), .B(n6604), .S0(n2776), .Y(
        median_sobel_inst_med_sobel_e_wait_r[5]) );
  NOR2X1 U2986 ( .A(n5099), .B(n6291), .Y(conv_inst_N272) );
  NOR2X6 U2987 ( .A(n6287), .B(n6291), .Y(conv_inst_N250) );
  MXI2X2 U2988 ( .A(n6715), .B(n6477), .S0(n6344), .Y(N761) );
  NAND2X1 U2989 ( .A(n6440), .B(n3668), .Y(sram_addr_wait_r[4]) );
  NOR2X1 U2990 ( .A(n5847), .B(n5814), .Y(N694) );
  AOI21X2 U2991 ( .A0(n4499), .A1(n2849), .B0(n4235), .Y(conv_inst_N72) );
  OAI21X1 U2992 ( .A0(n3356), .A1(median_sobel_inst_n232), .B0(n3369), .Y(
        median_sobel_inst_med_sobel_e_wait_r[54]) );
  OAI21X1 U2993 ( .A0(n3356), .A1(n6789), .B0(n3381), .Y(
        median_sobel_inst_n462) );
  OAI21X1 U2994 ( .A0(n3356), .A1(n2759), .B0(n3377), .Y(
        median_sobel_inst_u_sober_compare_submodule_n95) );
  OAI21X1 U2995 ( .A0(n3356), .A1(n6794), .B0(n3380), .Y(
        median_sobel_inst_n442) );
  OAI21X1 U2996 ( .A0(n3356), .A1(n6787), .B0(n3379), .Y(
        median_sobel_inst_n478) );
  OAI21X1 U2997 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n144), .B0(n3387), .Y(
        median_sobel_inst_u_sober_compare_submodule_n113) );
  OAI21X1 U2998 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n147), .B0(n3384), .Y(
        median_sobel_inst_u_sober_compare_submodule_n110) );
  OAI21X1 U2999 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n145), .B0(n3382), .Y(
        median_sobel_inst_u_sober_compare_submodule_n112) );
  OAI21X1 U3000 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n155), .B0(n3390), .Y(
        median_sobel_inst_u_sober_compare_submodule_n102) );
  OAI21X1 U3001 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n151), .B0(n3389), .Y(
        median_sobel_inst_u_sober_compare_submodule_n106) );
  OAI21X1 U3002 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n152), .B0(n3391), .Y(
        median_sobel_inst_u_sober_compare_submodule_n105) );
  OAI21X1 U3003 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n159), .B0(n3392), .Y(
        median_sobel_inst_u_sober_compare_submodule_n98) );
  OAI21X1 U3004 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n71), .B0(n3385), .Y(
        median_sobel_inst_u_sober_compare_submodule_n123) );
  OAI21X1 U3005 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n70), .B0(n3386), .Y(
        median_sobel_inst_u_sober_compare_submodule_n122) );
  OAI21X1 U3006 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n69), .B0(n3383), .Y(
        median_sobel_inst_u_sober_compare_submodule_n121) );
  OAI21X1 U3007 ( .A0(n3356), .A1(
        median_sobel_inst_u_sober_compare_submodule_n158), .B0(n3388), .Y(
        median_sobel_inst_u_sober_compare_submodule_n99) );
  OAI21X1 U3008 ( .A0(n3356), .A1(n2715), .B0(n3393), .Y(
        median_sobel_inst_u_sober_compare_submodule_n88) );
  NAND3X1 U3009 ( .A(n6190), .B(n6189), .C(n6188), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]) );
  NAND3X1 U3010 ( .A(n6217), .B(n6216), .C(n6215), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]) );
  NAND3X1 U3011 ( .A(n3293), .B(n3292), .C(n3289), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]) );
  NAND3X1 U3012 ( .A(n6193), .B(n6192), .C(n6191), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]) );
  NAND3X1 U3013 ( .A(n6405), .B(n6440), .C(n6404), .Y(sram_addr_wait_r[12]) );
  OAI21XL U3014 ( .A0(n3219), .A1(median_sobel_inst_n415), .B0(n3261), .Y(
        n6679) );
  OAI21XL U3015 ( .A0(n3219), .A1(median_sobel_inst_n372), .B0(n3265), .Y(
        median_sobel_inst_n576) );
  OAI21XL U3016 ( .A0(n3219), .A1(median_sobel_inst_n368), .B0(n3266), .Y(
        median_sobel_inst_n572) );
  OAI21XL U3017 ( .A0(n3219), .A1(median_sobel_inst_n381), .B0(n3264), .Y(
        median_sobel_inst_n569) );
  OAI21XL U3018 ( .A0(n3219), .A1(median_sobel_inst_n373), .B0(n3262), .Y(
        median_sobel_inst_n577) );
  OAI21XL U3019 ( .A0(n3219), .A1(median_sobel_inst_n371), .B0(n3225), .Y(
        median_sobel_inst_n575) );
  XNOR2X2 U3021 ( .A(n6353), .B(n472), .Y(N785) );
  NOR2X1 U3022 ( .A(n5212), .B(n4287), .Y(median_sobel_inst_N115) );
  MXI2X1 U3023 ( .A(n6148), .B(n6147), .S0(n6146), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N139) );
  OAI21XL U3024 ( .A0(n3219), .A1(n2704), .B0(n3258), .Y(
        median_sobel_inst_n468) );
  OAI21XL U3025 ( .A0(n3219), .A1(n2686), .B0(n3253), .Y(
        median_sobel_inst_n488) );
  OAI21XL U3026 ( .A0(n3219), .A1(n2708), .B0(n3252), .Y(
        median_sobel_inst_n498) );
  OAI21XL U3027 ( .A0(n3219), .A1(n2727), .B0(n3256), .Y(
        median_sobel_inst_n480) );
  OAI21XL U3028 ( .A0(n3219), .A1(n2684), .B0(n3260), .Y(
        median_sobel_inst_n452) );
  OAI21XL U3029 ( .A0(n3219), .A1(median_sobel_inst_n354), .B0(n3227), .Y(
        n6680) );
  OAI21XL U3030 ( .A0(n3219), .A1(median_sobel_inst_n358), .B0(n3242), .Y(
        n6672) );
  MXI2X1 U3031 ( .A(n6745), .B(n2760), .S0(n3049), .Y(
        median_sobel_inst_u_sober_compare_submodule_n89) );
  OAI21XL U3032 ( .A0(n3219), .A1(n2728), .B0(n3259), .Y(
        median_sobel_inst_n507) );
  OAI21XL U3033 ( .A0(n3219), .A1(n2733), .B0(n3251), .Y(
        median_sobel_inst_n560) );
  OAI21XL U3034 ( .A0(n3219), .A1(median_sobel_inst_n356), .B0(n3245), .Y(
        n6674) );
  OAI21XL U3035 ( .A0(n3219), .A1(n3532), .B0(n3254), .Y(
        median_sobel_inst_n440) );
  OAI21XL U3036 ( .A0(n3219), .A1(median_sobel_inst_n349), .B0(n3221), .Y(
        n6684) );
  OAI21XL U3037 ( .A0(n3219), .A1(median_sobel_inst_n434), .B0(n3248), .Y(
        n6678) );
  OAI21XL U3038 ( .A0(n3219), .A1(median_sobel_inst_n351), .B0(n3250), .Y(
        n6690) );
  OAI21XL U3039 ( .A0(n3219), .A1(median_sobel_inst_n416), .B0(n3224), .Y(
        n6681) );
  OAI21XL U3040 ( .A0(n3219), .A1(median_sobel_inst_n418), .B0(n3223), .Y(
        n6683) );
  OAI21XL U3041 ( .A0(n3219), .A1(median_sobel_inst_n438), .B0(n3228), .Y(
        n6686) );
  OAI21XL U3042 ( .A0(n3219), .A1(median_sobel_inst_n420), .B0(n3235), .Y(
        median_sobel_inst_n528) );
  OAI21XL U3043 ( .A0(n3219), .A1(median_sobel_inst_n384), .B0(n3220), .Y(
        n6682) );
  OAI21XL U3044 ( .A0(n3219), .A1(median_sobel_inst_n350), .B0(n3267), .Y(
        median_sobel_inst_n602) );
  OAI21XL U3045 ( .A0(n3219), .A1(median_sobel_inst_n433), .B0(n3240), .Y(
        n6525) );
  OAI21XL U3046 ( .A0(n3219), .A1(median_sobel_inst_n437), .B0(n3226), .Y(
        n6677) );
  OAI21XL U3047 ( .A0(n3219), .A1(median_sobel_inst_n432), .B0(n3247), .Y(
        n6676) );
  OAI21XL U3048 ( .A0(n3219), .A1(median_sobel_inst_n391), .B0(n3236), .Y(
        median_sobel_inst_n563) );
  OAI21XL U3049 ( .A0(n3219), .A1(median_sobel_inst_n399), .B0(n3232), .Y(
        median_sobel_inst_n555) );
  OAI21XL U3050 ( .A0(n3219), .A1(median_sobel_inst_n389), .B0(n3233), .Y(
        median_sobel_inst_n561) );
  OAI21XL U3051 ( .A0(n3219), .A1(median_sobel_inst_n385), .B0(n3239), .Y(
        n6524) );
  OAI21XL U3052 ( .A0(n3219), .A1(median_sobel_inst_n419), .B0(n3249), .Y(
        n6688) );
  OAI21XL U3053 ( .A0(n3219), .A1(median_sobel_inst_n417), .B0(n3241), .Y(
        n6671) );
  OAI21XL U3054 ( .A0(n3219), .A1(median_sobel_inst_n435), .B0(n3230), .Y(
        n6662) );
  OAI21XL U3055 ( .A0(n3219), .A1(median_sobel_inst_n421), .B0(n3237), .Y(
        n6523) );
  OAI21XL U3056 ( .A0(n3219), .A1(median_sobel_inst_n422), .B0(n3244), .Y(
        n6673) );
  OAI21XL U3057 ( .A0(n3219), .A1(median_sobel_inst_n423), .B0(n3246), .Y(
        n6675) );
  OAI21XL U3058 ( .A0(n3219), .A1(median_sobel_inst_n429), .B0(n3268), .Y(
        median_sobel_inst_n513) );
  OAI21XL U3059 ( .A0(n3219), .A1(median_sobel_inst_n413), .B0(n3270), .Y(
        n6522) );
  OAI21XL U3060 ( .A0(n3219), .A1(median_sobel_inst_n414), .B0(n3263), .Y(
        median_sobel_inst_n538) );
  NAND3X1 U3061 ( .A(n6005), .B(n6004), .C(n6003), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[1]) );
  NAND3X4 U3072 ( .A(n3022), .B(n3417), .C(n3416), .Y(n6989) );
  MXI2X1 U3073 ( .A(median_sobel_inst_n202), .B(n6828), .S0(n5840), .Y(
        median_sobel_inst_n979) );
  NOR2X1 U3074 ( .A(n4874), .B(n2685), .Y(conv_inst_N70) );
  MXI2X2 U3075 ( .A(n6734), .B(n6504), .S0(n6344), .Y(N762) );
  XNOR2X2 U3076 ( .A(n6289), .B(n6288), .Y(conv_inst_N76) );
  XNOR2X1 U3078 ( .A(n5658), .B(n2923), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]) );
  XNOR2X1 U3079 ( .A(n5708), .B(n2928), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]) );
  XNOR2X2 U3080 ( .A(n6089), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]) );
  XOR2X2 U3081 ( .A(n5514), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N176) );
  XNOR2X2 U3083 ( .A(n6116), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]) );
  XNOR2X1 U3084 ( .A(n5735), .B(n5734), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]) );
  XNOR2X1 U3085 ( .A(n5730), .B(n5729), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]) );
  XNOR2X1 U3086 ( .A(n3462), .B(n4949), .Y(n6641) );
  AOI21X1 U3087 ( .A0(n5157), .A1(n5742), .B0(n5156), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[10]) );
  XNOR2X1 U3088 ( .A(n5742), .B(n5500), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]) );
  XNOR2X1 U3089 ( .A(n5725), .B(n5724), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]) );
  OR2X1 U3091 ( .A(n6464), .B(n6611), .Y(n6449) );
  BUFX12 U3095 ( .A(n4379), .Y(n5879) );
  INVX1 U3096 ( .A(median_sobel_inst_data_g_r[7]), .Y(n5864) );
  INVX6 U3097 ( .A(n3474), .Y(n6228) );
  NAND2X6 U3098 ( .A(n6011), .B(n3032), .Y(n6022) );
  AO21X2 U3099 ( .A0(n437), .A1(n465), .B0(n5779), .Y(n5778) );
  OR2X1 U3100 ( .A(n5415), .B(n2776), .Y(n3523) );
  NAND2XL U3102 ( .A(n3219), .B(n6654), .Y(n3259) );
  NOR2X4 U3103 ( .A(n6314), .B(n469), .Y(n6356) );
  OAI22X2 U3105 ( .A0(n6352), .A1(cnt[0]), .B0(n6529), .B1(n5624), .Y(n6353)
         );
  NOR2X1 U3106 ( .A(n5624), .B(n472), .Y(n5625) );
  NAND2XL U3107 ( .A(n3219), .B(input_data_ready_r[23]), .Y(n3247) );
  NAND2X6 U3109 ( .A(n3311), .B(n3060), .Y(n4020) );
  NAND2X1 U3111 ( .A(n6041), .B(
        median_sobel_inst_u_median_filter_submodule_n32), .Y(n6037) );
  OR2X2 U3114 ( .A(n6415), .B(n6971), .Y(n6404) );
  OR2X1 U3115 ( .A(n6385), .B(n6477), .Y(n6379) );
  OR2X1 U3116 ( .A(n6357), .B(n6504), .Y(n6325) );
  OR2X1 U3117 ( .A(n6385), .B(n6636), .Y(n6375) );
  OR2X1 U3118 ( .A(n6385), .B(n6611), .Y(n6381) );
  OR2X1 U3119 ( .A(n6357), .B(n6477), .Y(n6348) );
  OR2X1 U3121 ( .A(n6357), .B(n6636), .Y(n6323) );
  OR2X1 U3122 ( .A(n6385), .B(n6508), .Y(n6383) );
  OR2X1 U3123 ( .A(n6357), .B(n6611), .Y(n6350) );
  OR2X1 U3124 ( .A(n6357), .B(n6508), .Y(n6354) );
  OR2X1 U3126 ( .A(n6357), .B(n6734), .Y(n6317) );
  INVX4 U3128 ( .A(n4585), .Y(n4588) );
  INVX4 U3129 ( .A(n4585), .Y(n4589) );
  INVX1 U3130 ( .A(n6008), .Y(n4821) );
  NAND2X1 U3131 ( .A(n3012), .B(n6830), .Y(n6023) );
  OR2X1 U3132 ( .A(n6357), .B(n6521), .Y(n6321) );
  OR2X1 U3133 ( .A(n6357), .B(n6715), .Y(n6319) );
  NAND2X1 U3134 ( .A(n6041), .B(n6497), .Y(n6034) );
  NAND2X1 U3135 ( .A(n6041), .B(
        median_sobel_inst_u_median_filter_submodule_n62), .Y(n6027) );
  NAND2X1 U3136 ( .A(n6041), .B(
        median_sobel_inst_u_median_filter_submodule_n249), .Y(n6024) );
  NOR2X6 U3137 ( .A(n6309), .B(n6310), .Y(conv_inst_N79) );
  OR2X2 U3138 ( .A(n6415), .B(n6975), .Y(n6413) );
  OR2X2 U3139 ( .A(n6415), .B(n6969), .Y(n6400) );
  OR2X2 U3140 ( .A(n6415), .B(n6970), .Y(n6402) );
  OR2X2 U3141 ( .A(n6415), .B(n6968), .Y(n6398) );
  OR2X2 U3142 ( .A(n6415), .B(n6974), .Y(n6410) );
  OR2X2 U3143 ( .A(n6415), .B(n6972), .Y(n6406) );
  OR2X2 U3144 ( .A(n6463), .B(n411), .Y(n6436) );
  OR2X2 U3145 ( .A(n6384), .B(n6966), .Y(n6374) );
  OR2X2 U3146 ( .A(n3193), .B(n6963), .Y(n6355) );
  OR2X2 U3147 ( .A(n3193), .B(n6956), .Y(n6318) );
  OR2X2 U3148 ( .A(n3193), .B(n6958), .Y(n6322) );
  OR2X2 U3149 ( .A(n3193), .B(n6957), .Y(n6320) );
  OR2X2 U3150 ( .A(n3193), .B(n6962), .Y(n6351) );
  OR2X2 U3151 ( .A(n3193), .B(n6960), .Y(n6326) );
  OR2X2 U3152 ( .A(n3193), .B(n6961), .Y(n6349) );
  OR2X2 U3153 ( .A(n6384), .B(n6964), .Y(n6368) );
  OR2X2 U3154 ( .A(n6384), .B(n427), .Y(n6370) );
  OR2X2 U3155 ( .A(n6384), .B(n6965), .Y(n6372) );
  OR2X2 U3156 ( .A(n6384), .B(n6967), .Y(n6378) );
  OR2X2 U3157 ( .A(n6384), .B(n422), .Y(n6380) );
  OR2X2 U3158 ( .A(n6384), .B(n421), .Y(n6382) );
  NAND2X1 U3159 ( .A(n6412), .B(cnt[7]), .Y(n6405) );
  NAND2XL U3160 ( .A(n5920), .B(n827), .Y(n5800) );
  NAND2BX1 U3161 ( .AN(n3711), .B(n6519), .Y(n3637) );
  OR2X1 U3162 ( .A(n5516), .B(median_sobel_inst_u_median_filter_submodule_n81), 
        .Y(n4932) );
  NAND2X1 U3163 ( .A(n6412), .B(cnt[5]), .Y(n6409) );
  OR2X1 U3164 ( .A(n4767), .B(median_sobel_inst_u_median_filter_submodule_n93), 
        .Y(n4823) );
  OR2X1 U3165 ( .A(n5519), .B(median_sobel_inst_u_median_filter_submodule_n106), .Y(n4931) );
  NAND2X4 U3166 ( .A(n6104), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .Y(n6103) );
  AOI21X2 U3168 ( .A0(n2978), .A1(n6161), .B0(n2976), .Y(n2975) );
  NAND2XL U3169 ( .A(n3219), .B(n2746), .Y(n3220) );
  NAND2XL U3170 ( .A(n3219), .B(n2731), .Y(n3221) );
  NAND2XL U3171 ( .A(n3219), .B(n2740), .Y(n3223) );
  NAND2XL U3172 ( .A(n3219), .B(n2747), .Y(n3224) );
  NAND2XL U3173 ( .A(n3219), .B(n6723), .Y(n3226) );
  NAND2XL U3174 ( .A(n3219), .B(n2741), .Y(n3227) );
  NAND2XL U3175 ( .A(n3219), .B(n3229), .Y(n3228) );
  NAND2XL U3176 ( .A(n3219), .B(n3231), .Y(n3230) );
  NAND2XL U3177 ( .A(n3219), .B(n2725), .Y(n3232) );
  NAND2XL U3178 ( .A(n3219), .B(n2735), .Y(n3235) );
  NAND2XL U3179 ( .A(n3219), .B(n2721), .Y(n3236) );
  NAND2XL U3180 ( .A(n3219), .B(n7019), .Y(n3237) );
  NAND2XL U3181 ( .A(n3219), .B(n2742), .Y(n3239) );
  NAND2XL U3182 ( .A(n3219), .B(n2743), .Y(n3241) );
  NAND2XL U3183 ( .A(n3219), .B(n7020), .Y(n3242) );
  NAND2XL U3184 ( .A(n3219), .B(n2729), .Y(n3244) );
  NAND2XL U3185 ( .A(n3219), .B(n2734), .Y(n3245) );
  NAND2XL U3186 ( .A(n3219), .B(n2720), .Y(n3246) );
  NAND2XL U3187 ( .A(n3219), .B(n3736), .Y(n3248) );
  NAND2XL U3188 ( .A(n3219), .B(n2738), .Y(n3249) );
  NAND2XL U3189 ( .A(n3219), .B(n2710), .Y(n3250) );
  NAND2XL U3190 ( .A(n3219), .B(n6770), .Y(n3251) );
  NAND2XL U3191 ( .A(n3219), .B(n3549), .Y(n3252) );
  NAND2XL U3192 ( .A(n3219), .B(n6858), .Y(n3253) );
  NAND2XL U3193 ( .A(n3219), .B(n6567), .Y(n3254) );
  NAND2XL U3194 ( .A(n3219), .B(n6851), .Y(n3256) );
  NAND2XL U3195 ( .A(n3219), .B(n6853), .Y(n3258) );
  NAND2XL U3196 ( .A(n3219), .B(n6564), .Y(n3260) );
  INVX1 U3197 ( .A(median_sobel_inst_data_e_r[7]), .Y(n3005) );
  NOR2X2 U3198 ( .A(n5777), .B(n5770), .Y(n5772) );
  OAI21X2 U3200 ( .A0(n6115), .A1(n5676), .B0(n5675), .Y(n5679) );
  OAI21X2 U3201 ( .A0(n6129), .A1(n5709), .B0(n5710), .Y(n2928) );
  OAI21X2 U3202 ( .A0(n6102), .A1(n5736), .B0(n5737), .Y(n5735) );
  NAND2X2 U3203 ( .A(n3029), .B(n3028), .Y(n3027) );
  NAND2X4 U3204 ( .A(n3558), .B(n6140), .Y(n6981) );
  NAND2X2 U3205 ( .A(n5805), .B(n5804), .Y(n5847) );
  NAND3X2 U3208 ( .A(n4009), .B(n6306), .C(n4008), .Y(n4245) );
  OR2X1 U3209 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n76), 
        .Y(n2764) );
  OR2X1 U3210 ( .A(n4451), .B(n4845), .Y(n4388) );
  NAND2X1 U3211 ( .A(n5677), .B(n6108), .Y(n5678) );
  NAND2XL U3212 ( .A(n3041), .B(n3208), .Y(n4729) );
  OAI21X2 U3213 ( .A0(n5269), .A1(n4560), .B0(n4559), .Y(n6081) );
  NAND2XL U3214 ( .A(n3219), .B(n6857), .Y(n3257) );
  NAND2X1 U3224 ( .A(n6199), .B(n6807), .Y(n6191) );
  NAND2XL U3225 ( .A(n3356), .B(n3370), .Y(n3369) );
  NAND2XL U3226 ( .A(n3356), .B(median_sobel_inst_angle[1]), .Y(n3377) );
  NAND2XL U3227 ( .A(n3356), .B(n6854), .Y(n3379) );
  NAND2XL U3228 ( .A(n3356), .B(n6567), .Y(n3380) );
  NAND2XL U3229 ( .A(n3356), .B(n6856), .Y(n3381) );
  NAND2XL U3230 ( .A(n3356), .B(median_sobel_inst_G[20]), .Y(n3382) );
  NAND2XL U3231 ( .A(n3356), .B(median_sobel_inst_G[7]), .Y(n3383) );
  NAND2XL U3232 ( .A(n3356), .B(median_sobel_inst_G[18]), .Y(n3384) );
  NAND2XL U3233 ( .A(n3356), .B(median_sobel_inst_G[9]), .Y(n3385) );
  NAND2XL U3234 ( .A(n3356), .B(median_sobel_inst_G[8]), .Y(n3386) );
  NAND2XL U3235 ( .A(n3356), .B(median_sobel_inst_G[28]), .Y(n3388) );
  NAND2XL U3236 ( .A(n3356), .B(median_sobel_inst_G[35]), .Y(n3389) );
  NAND2XL U3237 ( .A(n3356), .B(median_sobel_inst_G[31]), .Y(n3390) );
  NAND2XL U3238 ( .A(n3356), .B(median_sobel_inst_G[34]), .Y(n3391) );
  NAND2XL U3239 ( .A(n3356), .B(median_sobel_inst_G[27]), .Y(n3392) );
  NAND2XL U3240 ( .A(n3356), .B(median_sobel_inst_angle[6]), .Y(n3393) );
  NAND2X1 U3241 ( .A(n6199), .B(n6806), .Y(n6188) );
  NAND2XL U3242 ( .A(n6199), .B(n6816), .Y(n6215) );
  NOR2X2 U3243 ( .A(conv_inst_ns[0]), .B(conv_inst_ns[1]), .Y(n5140) );
  NAND2XL U3244 ( .A(n3219), .B(n2713), .Y(n3222) );
  NAND2X2 U3245 ( .A(n3311), .B(n2765), .Y(n5600) );
  INVXL U3246 ( .A(n6156), .Y(n3471) );
  AOI21X2 U3247 ( .A0(n3447), .A1(n3446), .B0(n3442), .Y(n3441) );
  NAND2X1 U3248 ( .A(n6199), .B(n6814), .Y(n6206) );
  NAND2X1 U3249 ( .A(n6199), .B(n6812), .Y(n6200) );
  NAND2X1 U3250 ( .A(n6199), .B(n6815), .Y(n6209) );
  NAND2X1 U3251 ( .A(n6199), .B(n6813), .Y(n6203) );
  NAND2X1 U3252 ( .A(n6199), .B(n6811), .Y(n6196) );
  OR2X2 U3253 ( .A(n6430), .B(n824), .Y(n6437) );
  OR2X2 U3254 ( .A(n6430), .B(n825), .Y(n6450) );
  OR2X2 U3255 ( .A(n6861), .B(n6430), .Y(n6444) );
  OR2X2 U3256 ( .A(n6846), .B(n6430), .Y(n6447) );
  OR2X1 U3258 ( .A(n6385), .B(n6734), .Y(n6369) );
  OR2X1 U3263 ( .A(n6463), .B(n406), .Y(n6448) );
  AOI2BB2X1 U3265 ( .B0(n6213), .B1(n6817), .A0N(n6212), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n79), .Y(n6190) );
  NAND2X2 U3266 ( .A(n3032), .B(n6910), .Y(n6007) );
  OR2X2 U3267 ( .A(n6430), .B(n826), .Y(n6434) );
  OR2X2 U3268 ( .A(n6845), .B(n6430), .Y(n6441) );
  NOR2X1 U3269 ( .A(n5813), .B(n5812), .Y(n5814) );
  ACHCINX2 U3270 ( .CIN(n3709), .A(median_sobel_inst_data_b_r[7]), .B(n3708), 
        .CO(n5902) );
  NAND2X2 U3271 ( .A(n3032), .B(n6909), .Y(n3981) );
  AOI2BB1X2 U3272 ( .A0N(n4947), .A1N(n5136), .B0(n3463), .Y(n3462) );
  NAND2X1 U3273 ( .A(n6746), .B(n5884), .Y(n5875) );
  NAND2X1 U3274 ( .A(n6747), .B(n5884), .Y(n5868) );
  NAND3X2 U3275 ( .A(n6462), .B(n6461), .C(n6460), .Y(n6468) );
  AOI2BB2X1 U3276 ( .B0(n5885), .B1(n385), .A0N(n817), .A1N(n4045), .Y(n5802)
         );
  NAND2X1 U3277 ( .A(n6214), .B(n6796), .Y(n6189) );
  NAND2X1 U3278 ( .A(n6214), .B(n6797), .Y(n6192) );
  NAND2X1 U3279 ( .A(n6214), .B(n6557), .Y(n3293) );
  NAND2XL U3280 ( .A(n6214), .B(n6804), .Y(n6216) );
  AOI21X2 U3281 ( .A0(n6266), .A1(n6265), .B0(conv_inst_conv_3_r[13]), .Y(
        n6268) );
  NAND2X4 U3282 ( .A(n3415), .B(n6859), .Y(n3424) );
  XNOR2X2 U3283 ( .A(n6255), .B(conv_inst_conv_2_r[11]), .Y(n6256) );
  NAND2XL U3285 ( .A(n5652), .B(n6085), .Y(n5653) );
  NAND2X1 U3286 ( .A(n6214), .B(n6800), .Y(n6197) );
  NAND2XL U3287 ( .A(n6214), .B(n6803), .Y(n6210) );
  NAND2XL U3288 ( .A(n6214), .B(n6801), .Y(n6201) );
  NAND2XL U3289 ( .A(n6214), .B(n6558), .Y(n6204) );
  NAND2XL U3290 ( .A(n6214), .B(n6802), .Y(n6207) );
  AOI21X2 U3292 ( .A0(n3562), .A1(n3561), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(n3560) );
  OAI21X1 U3293 ( .A0(n5136), .A1(n4942), .B0(n4944), .Y(n3438) );
  AOI21X1 U3294 ( .A0(n5458), .A1(n4936), .B0(n4935), .Y(n4939) );
  AOI2BB2X2 U3295 ( .B0(n6543), .B1(n5884), .A0N(n8130), .A1N(n5888), .Y(n5822) );
  AOI2BB2X2 U3296 ( .B0(n6541), .B1(n5884), .A0N(n791), .A1N(n5888), .Y(n5878)
         );
  AOI2BB2X2 U3297 ( .B0(n6736), .B1(n5884), .A0N(n809), .A1N(n5888), .Y(n5816)
         );
  AOI2BB2X2 U3298 ( .B0(n6549), .B1(n5884), .A0N(n877), .A1N(n5888), .Y(n5826)
         );
  AOI2BB2X2 U3299 ( .B0(n5884), .B1(n401), .A0N(n794), .A1N(n5888), .Y(n5871)
         );
  AOI2BB2X2 U3300 ( .B0(n5884), .B1(n385), .A0N(n817), .A1N(n5888), .Y(n5887)
         );
  XNOR2X2 U3301 ( .A(n6280), .B(conv_inst_conv_4_r[11]), .Y(n6251) );
  BUFX4 U3302 ( .A(n4481), .Y(n3355) );
  NOR2X1 U3303 ( .A(n3461), .B(n3460), .Y(n4766) );
  AOI2BB2X2 U3306 ( .B0(n5889), .B1(n6847), .A0N(n820), .A1N(n4045), .Y(n5872)
         );
  AOI2BB2X2 U3307 ( .B0(n5889), .B1(n6840), .A0N(n784), .A1N(n4045), .Y(n5890)
         );
  AOI2BB2X1 U3309 ( .B0(n5885), .B1(n6843), .A0N(n815), .A1N(n4045), .Y(n5876)
         );
  NAND4X2 U3310 ( .A(n6460), .B(n6364), .C(n6363), .D(n6362), .Y(n6365) );
  AOI2BB2X1 U3311 ( .B0(n5885), .B1(n6562), .A0N(n4045), .A1N(n3521), .Y(n5886) );
  AOI2BB2X1 U3312 ( .B0(n5885), .B1(n401), .A0N(n794), .A1N(n4045), .Y(n5815)
         );
  AOI2BB2X1 U3313 ( .B0(n5885), .B1(n399), .A0N(n781), .A1N(n4045), .Y(n5844)
         );
  AOI2BB2X1 U3314 ( .B0(n5885), .B1(n6775), .A0N(n8140), .A1N(n4045), .Y(n5870) );
  AOI2BB2X1 U3315 ( .B0(n5889), .B1(n391), .A0N(n853), .A1N(n4045), .Y(n5832)
         );
  INVX4 U3317 ( .A(n3511), .Y(n5889) );
  INVX12 U3318 ( .A(n6247), .Y(n2868) );
  NAND2X6 U3319 ( .A(n5805), .B(n5829), .Y(n5888) );
  BUFX16 U3320 ( .A(n4481), .Y(n3356) );
  OR2X1 U3321 ( .A(n6717), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n5748) );
  OR2X1 U3322 ( .A(n6716), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n5741) );
  OR2X1 U3323 ( .A(n6719), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n5751) );
  OR2X1 U3324 ( .A(n6502), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n5744) );
  AND2X2 U3326 ( .A(n5901), .B(median_sobel_inst_data_e_r[6]), .Y(n3709) );
  CLKAND2X3 U3327 ( .A(n3894), .B(n3470), .Y(n2771) );
  CLKINVX6 U3328 ( .A(n6020), .Y(n6011) );
  OR2X1 U3329 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(n5758)
         );
  OAI2BB1X1 U3332 ( .A0N(cnt[0]), .A1N(n5620), .B0(n6330), .Y(n5622) );
  INVX1 U3333 ( .A(n6010), .Y(n4822) );
  INVXL U3335 ( .A(n4811), .Y(n5552) );
  NOR2X4 U3336 ( .A(n5624), .B(n6618), .Y(n6466) );
  NOR2BX1 U3337 ( .AN(n6160), .B(n6738), .Y(n2978) );
  NAND2X2 U3338 ( .A(n6295), .B(n6293), .Y(n6286) );
  NOR2X1 U3340 ( .A(n468), .B(n5453), .Y(n4237) );
  INVX1 U3341 ( .A(n4342), .Y(n4343) );
  INVX1 U3342 ( .A(n6311), .Y(n4845) );
  AOI2BB1X1 U3343 ( .A0N(n786), .A1N(n5920), .B0(n5188), .Y(n5189) );
  INVX1 U3344 ( .A(n5643), .Y(n5015) );
  INVXL U3345 ( .A(n2775), .Y(n3229) );
  BUFX8 U3347 ( .A(n3144), .Y(n3111) );
  BUFX3 U3348 ( .A(n5530), .Y(n5777) );
  NOR3X1 U3349 ( .A(n6338), .B(n6337), .C(n6336), .Y(n6339) );
  OAI22XL U3350 ( .A0(n5916), .A1(n803), .B0(n817), .B1(n5846), .Y(n5807) );
  INVX1 U3351 ( .A(n4644), .Y(n4686) );
  INVX1 U3352 ( .A(n4612), .Y(n4626) );
  INVX1 U3353 ( .A(n5693), .Y(n5005) );
  BUFX6 U3354 ( .A(n3724), .Y(n3711) );
  CLKINVX1 U3355 ( .A(n4903), .Y(n4658) );
  CLKINVX1 U3356 ( .A(n4641), .Y(n4678) );
  CLKINVX1 U3357 ( .A(n4957), .Y(n3472) );
  BUFX8 U3358 ( .A(n3929), .Y(n5603) );
  INVX1 U3360 ( .A(n4731), .Y(n4648) );
  CLKINVX1 U3361 ( .A(n5719), .Y(n5010) );
  INVX1 U3362 ( .A(n6132), .Y(n5183) );
  CLKBUFX3 U3366 ( .A(n4466), .Y(n5210) );
  AND2X4 U3368 ( .A(n5763), .B(n5762), .Y(n5767) );
  NAND2X1 U3370 ( .A(n5259), .B(n5264), .Y(n4560) );
  NOR2X1 U3371 ( .A(n2933), .B(n6259), .Y(n2932) );
  AOI21X2 U3372 ( .A0(n5041), .A1(n5040), .B0(n5039), .Y(n5043) );
  NOR2BX1 U3373 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(n4604) );
  CLKINVX1 U3374 ( .A(n5495), .Y(n5754) );
  NAND2X1 U3375 ( .A(n5561), .B(median_sobel_inst_sobel_out_data_w[4]), .Y(
        n3672) );
  NAND2X1 U3376 ( .A(n4401), .B(n4400), .Y(conv_inst_ns[1]) );
  NOR2X2 U3378 ( .A(n6463), .B(n6977), .Y(n3669) );
  NAND2X1 U3379 ( .A(n6106), .B(n5677), .Y(n5671) );
  NOR2X1 U3380 ( .A(n5835), .B(n5834), .Y(n5836) );
  AOI21X1 U3381 ( .A0(n6112), .A1(n5677), .B0(n3134), .Y(n5670) );
  CLKBUFX3 U3382 ( .A(n2960), .Y(n2679) );
  NOR2X1 U3383 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n74), .Y(n3461) );
  NOR2X1 U3384 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n70), .Y(n3452) );
  NOR2X1 U3385 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n71), .Y(n3453) );
  NOR2X1 U3386 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n73), .Y(n3454) );
  NOR2X1 U3387 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n68), .Y(n3455) );
  NOR2X1 U3388 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n72), .Y(n3456) );
  NOR2X1 U3389 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n67), .Y(n3457) );
  NOR2X1 U3390 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n66), .Y(n3459) );
  OAI22XL U3391 ( .A0(n6269), .A1(n6271), .B0(conv_inst_conv_2_r[11]), .B1(
        conv_inst_conv_2_r[12]), .Y(n2933) );
  INVX12 U3393 ( .A(n3656), .Y(n6247) );
  CLKAND2X8 U3394 ( .A(n4767), .B(n6010), .Y(n6008) );
  CLKINVX1 U3395 ( .A(op_mode_r_1_), .Y(n5791) );
  OR2X1 U3400 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n5523) );
  OA22X1 U3401 ( .A0(n5326), .A1(n3521), .B0(n5325), .B1(n803), .Y(n5317) );
  NAND2X6 U3402 ( .A(n3144), .B(n3884), .Y(n3474) );
  NAND2X6 U3403 ( .A(n2680), .B(n3174), .Y(n3173) );
  INVX1 U3404 ( .A(n6105), .Y(n5677) );
  OA22X1 U3405 ( .A0(n5324), .A1(n781), .B0(n5323), .B1(n3516), .Y(n5298) );
  OA22X1 U3406 ( .A0(n5324), .A1(n853), .B0(n5323), .B1(n6512), .Y(n5303) );
  OA22X1 U3407 ( .A0(n5324), .A1(n791), .B0(n5323), .B1(n778), .Y(n5313) );
  INVX3 U3408 ( .A(median_sobel_inst_data_d_r[5]), .Y(n2781) );
  NAND2X6 U3409 ( .A(n3297), .B(n3298), .Y(n3296) );
  NOR2X6 U3410 ( .A(n5032), .B(n5031), .Y(n5322) );
  INVX4 U3411 ( .A(n4675), .Y(n5554) );
  INVX1 U3412 ( .A(n6269), .Y(n6272) );
  NAND3X2 U3413 ( .A(n3914), .B(n4635), .C(median_sobel_inst_n323), .Y(n3679)
         );
  NAND2X6 U3414 ( .A(n4675), .B(n4811), .Y(n5551) );
  INVX1 U3415 ( .A(n5450), .Y(n5059) );
  INVX1 U3416 ( .A(n6092), .Y(n5728) );
  INVX1 U3417 ( .A(n2851), .Y(n4232) );
  NAND2X2 U3419 ( .A(n6946), .B(median_sobel_inst_data_f_r[5]), .Y(n3395) );
  NOR2X1 U3420 ( .A(n6476), .B(n6508), .Y(n4023) );
  NAND2X1 U3421 ( .A(n6311), .B(n5761), .Y(n5762) );
  AND2X2 U3422 ( .A(n6293), .B(n4354), .Y(n6294) );
  INVX1 U3423 ( .A(n6082), .Y(n5652) );
  INVXL U3425 ( .A(n5794), .Y(n5797) );
  NAND2X1 U3426 ( .A(n4393), .B(n5025), .Y(n4395) );
  NAND2X1 U3427 ( .A(n6111), .B(n6106), .Y(n6114) );
  NAND3X6 U3428 ( .A(n3103), .B(n5934), .C(n3105), .Y(n3102) );
  NOR2X6 U3429 ( .A(n2963), .B(n2755), .Y(n2962) );
  NOR2X1 U3430 ( .A(n5275), .B(n5288), .Y(n5520) );
  OAI21X2 U3431 ( .A0(n4759), .A1(n4816), .B0(n4760), .Y(n4563) );
  OAI21X2 U3432 ( .A0(n4743), .A1(n4794), .B0(n4744), .Y(n4556) );
  NAND3X4 U3433 ( .A(n4043), .B(n4044), .C(n3191), .Y(n3511) );
  OAI21X1 U3434 ( .A0(n5275), .A1(n5289), .B0(n5276), .Y(n5524) );
  NAND2BX1 U3435 ( .AN(n3127), .B(n4168), .Y(n3126) );
  NOR2X1 U3436 ( .A(n5920), .B(n6512), .Y(n5834) );
  NOR2X1 U3437 ( .A(n4815), .B(n4759), .Y(n4564) );
  OAI22XL U3438 ( .A0(n5137), .A1(n6741), .B0(n2820), .B1(n2766), .Y(n4285) );
  NOR2X2 U3439 ( .A(n5948), .B(n5938), .Y(n3107) );
  OR2X2 U3440 ( .A(n6900), .B(n871), .Y(n5324) );
  INVX6 U3441 ( .A(n5827), .Y(n5916) );
  INVX6 U3442 ( .A(n5829), .Y(n5920) );
  INVX4 U3443 ( .A(median_sobel_inst_data_i_r[4]), .Y(n3140) );
  NAND2X6 U3444 ( .A(n4096), .B(n4097), .Y(n5938) );
  NOR2X4 U3445 ( .A(median_sobel_inst_u_median_filter_submodule_n163), .B(
        median_sobel_inst_u_median_filter_submodule_n29), .Y(n5062) );
  AND2X6 U3446 ( .A(n3704), .B(n5897), .Y(n3297) );
  NOR2X2 U3447 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n4743) );
  NAND2X6 U3448 ( .A(n4113), .B(n3697), .Y(median_sobel_inst_data_g_r[4]) );
  NOR2X2 U3451 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .Y(n5270) );
  NOR2X2 U3452 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .Y(n4793) );
  NAND2X1 U3453 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .Y(n5422) );
  NAND2BX1 U3455 ( .AN(median_sobel_inst_n344), .B(n3902), .Y(n5926) );
  INVX3 U3456 ( .A(median_sobel_inst_data_c_r[5]), .Y(n6946) );
  CLKINVX1 U3457 ( .A(median_sobel_inst_n718), .Y(n4634) );
  NAND2X1 U3458 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n5121) );
  NAND2X1 U3459 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .Y(n5244) );
  NAND2X2 U3461 ( .A(n5056), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n5556)
         );
  OAI21XL U3463 ( .A0(n6096), .A1(n6095), .B0(n6094), .Y(n6097) );
  OAI21XL U3464 ( .A0(n6123), .A1(n6122), .B0(n6121), .Y(n6124) );
  BUFX4 U3465 ( .A(median_sobel_inst_data_i_r[3]), .Y(n3074) );
  AND3X4 U3466 ( .A(n4501), .B(n4503), .C(n4502), .Y(n3708) );
  INVX3 U3467 ( .A(n5635), .Y(n3883) );
  INVX1 U3469 ( .A(n5385), .Y(n4562) );
  BUFX3 U3470 ( .A(n5606), .Y(n3334) );
  NAND2X6 U3472 ( .A(n4957), .B(n5450), .Y(n5452) );
  NAND2X2 U3473 ( .A(n6306), .B(n3330), .Y(n5158) );
  NOR2X2 U3475 ( .A(n4994), .B(n4987), .Y(n4493) );
  INVX3 U3476 ( .A(n4842), .Y(n5557) );
  NAND2X2 U3477 ( .A(n6186), .B(n6745), .Y(n6187) );
  NOR2X2 U3478 ( .A(n5642), .B(n5639), .Y(n2925) );
  OR2X2 U3479 ( .A(median_sobel_inst_u_median_filter_submodule_n31), .B(
        median_sobel_inst_u_median_filter_submodule_n161), .Y(n6010) );
  OAI21X2 U3480 ( .A0(n4944), .A1(n4945), .B0(n4943), .Y(n5135) );
  NOR2X1 U3482 ( .A(n4837), .B(n4835), .Y(n4580) );
  NOR2X1 U3483 ( .A(n4677), .B(n4679), .Y(n4391) );
  NAND2BX2 U3484 ( .AN(n6733), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n5267) );
  NAND2BX1 U3488 ( .AN(n6659), .B(med_sobel_out_valid_w), .Y(n5031) );
  NAND2X1 U3489 ( .A(n6390), .B(n6389), .Y(n6394) );
  OAI21X2 U3490 ( .A0(n4978), .A1(n5460), .B0(n4979), .Y(n4992) );
  OAI21X2 U3492 ( .A0(n5692), .A1(n5691), .B0(n5690), .Y(n2929) );
  BUFX8 U3494 ( .A(n4241), .Y(n5613) );
  NOR2X1 U3496 ( .A(n6096), .B(n6092), .Y(n6098) );
  NAND2X4 U3500 ( .A(n3643), .B(n3591), .Y(median_sobel_inst_data_d_r[6]) );
  NAND2X1 U3501 ( .A(n3114), .B(n6084), .Y(n3113) );
  NOR2X1 U3502 ( .A(n5692), .B(n5689), .Y(n2930) );
  AO22X1 U3505 ( .A0(n6249), .A1(
        median_sobel_inst_u_median_filter_submodule_b1_r[7]), .B0(
        median_sobel_inst_u_median_filter_submodule_n241), .B1(n6899), .Y(
        n6054) );
  OA22X1 U3506 ( .A0(median_sobel_inst_n368), .A1(n3397), .B0(n3634), .B1(
        median_sobel_inst_n376), .Y(n4501) );
  AO22X1 U3507 ( .A0(n6891), .A1(
        median_sobel_inst_u_median_filter_submodule_n231), .B0(n3083), .B1(
        median_sobel_inst_u_median_filter_submodule_n211), .Y(n5984) );
  OR2X1 U3508 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .Y(
        n6166) );
  OR2X6 U3509 ( .A(n4102), .B(n3176), .Y(median_sobel_inst_data_a_r[5]) );
  OAI22XL U3510 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[11]), .A1(
        n4181), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[10]), .B1(
        n4180), .Y(n4182) );
  INVX6 U3512 ( .A(median_sobel_inst_data_h_r[5]), .Y(n5909) );
  INVX4 U3513 ( .A(median_sobel_inst_data_d_r[4]), .Y(n3696) );
  NOR2X1 U3514 ( .A(n6529), .B(cnt[0]), .Y(n6366) );
  INVX3 U3515 ( .A(n6429), .Y(n6428) );
  NOR2BX2 U3516 ( .AN(n6488), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n4613) );
  NAND2X2 U3517 ( .A(conv_inst_conv_2_r[12]), .B(conv_inst_conv_2_r[11]), .Y(
        n6271) );
  NAND2X6 U3519 ( .A(n6578), .B(n5635), .Y(n6221) );
  OA22X1 U3520 ( .A0(median_sobel_inst_u_sober_compare_submodule_temp_b_r[9]), 
        .A1(median_sobel_inst_u_sober_compare_submodule_n61), .B0(
        median_sobel_inst_u_sober_compare_submodule_n62), .B1(n6748), .Y(n4425) );
  NOR2X4 U3521 ( .A(n6605), .B(
        median_sobel_inst_u_median_filter_submodule_n316), .Y(n4771) );
  INVX4 U3523 ( .A(n5806), .Y(n5918) );
  NOR2X2 U3524 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .Y(n5410) );
  NOR2X1 U3525 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), .Y(n4976)
         );
  NOR2X2 U3526 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .Y(n4837) );
  NAND2X1 U3527 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n5427) );
  NOR2X2 U3528 ( .A(n6613), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n4679) );
  NAND2X6 U3530 ( .A(n6242), .B(n4326), .Y(n4536) );
  NOR2X2 U3531 ( .A(n6597), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .Y(n5392) );
  NOR2BX2 U3532 ( .AN(n6179), .B(
        median_sobel_inst_u_sober_compare_submodule_n51), .Y(n6186) );
  NAND2X6 U3536 ( .A(n5634), .B(n3575), .Y(n3574) );
  NAND2X2 U3537 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n92), .Y(n4834) );
  NAND2BX1 U3538 ( .AN(median_sobel_inst_n433), .B(n5402), .Y(n3801) );
  NAND2BX1 U3541 ( .AN(median_sobel_inst_n408), .B(n3479), .Y(n4251) );
  NOR2X6 U3542 ( .A(n2908), .B(n2906), .Y(n5859) );
  NAND2BX1 U3543 ( .AN(median_sobel_inst_n416), .B(n4478), .Y(n4249) );
  NAND2X1 U3545 ( .A(median_sobel_inst_u_sober_compare_submodule_n13), .B(
        median_sobel_inst_u_sober_compare_submodule_n246), .Y(n3284) );
  NAND2BX1 U3546 ( .AN(median_sobel_inst_n400), .B(n4584), .Y(n4502) );
  NAND2X2 U3547 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4623)
         );
  INVX1 U3548 ( .A(n3427), .Y(n3407) );
  NAND2BX1 U3549 ( .AN(median_sobel_inst_n369), .B(n4402), .Y(n4099) );
  INVX3 U3550 ( .A(n6153), .Y(n6156) );
  INVX12 U3552 ( .A(n6306), .Y(n4241) );
  NAND2X2 U3553 ( .A(n6529), .B(cnt[0]), .Y(n6397) );
  CLKMX2X3 U3554 ( .A(n3905), .B(median_sobel_inst_n718), .S0(
        median_sobel_inst_n702), .Y(n3908) );
  NAND2X2 U3556 ( .A(n3278), .B(median_sobel_inst_data_f_r[1]), .Y(n3720) );
  NOR2X2 U3557 ( .A(n3642), .B(n3592), .Y(n3591) );
  NAND2X2 U3558 ( .A(n5907), .B(median_sobel_inst_data_b_r[2]), .Y(n5897) );
  AOI21X2 U3559 ( .A0(n2705), .A1(n3725), .B0(n3053), .Y(n3802) );
  NAND2X4 U3560 ( .A(n4477), .B(n3181), .Y(median_sobel_inst_data_e_r[6]) );
  NAND2X1 U3561 ( .A(n3902), .B(n3517), .Y(n3643) );
  NOR2X2 U3563 ( .A(median_sobel_inst_n110), .B(n5907), .Y(n2801) );
  INVX1 U3565 ( .A(n3568), .Y(n2964) );
  NOR2X2 U3566 ( .A(n5788), .B(n5505), .Y(n5794) );
  NAND4X4 U3567 ( .A(n4377), .B(n4376), .C(n4375), .D(n4374), .Y(
        median_sobel_inst_data_c_r[3]) );
  OR2X1 U3568 ( .A(med_sobel_isFirst_signal_r), .B(median_sobel_inst_n718), 
        .Y(n3915) );
  NAND2X4 U3569 ( .A(n3153), .B(n3821), .Y(n3062) );
  NAND2X4 U3570 ( .A(n4104), .B(n3401), .Y(median_sobel_inst_data_a_r[7]) );
  NOR2X4 U3571 ( .A(median_sobel_inst_u_median_filter_submodule_n428), .B(
        median_sobel_inst_u_median_filter_submodule_n31), .Y(n5477) );
  NAND2X4 U3572 ( .A(n4776), .B(n4441), .Y(n4443) );
  NOR2X4 U3573 ( .A(n5943), .B(median_sobel_inst_data_f_r[2]), .Y(n3104) );
  CLKBUFX8 U3575 ( .A(n4452), .Y(n5923) );
  NAND2BX1 U3577 ( .AN(n6086), .B(n3115), .Y(n3114) );
  AOI2BB2X2 U3578 ( .B0(n3514), .B1(n3641), .A0N(n3397), .A1N(
        median_sobel_inst_n393), .Y(n3764) );
  BUFX12 U3579 ( .A(n4022), .Y(n6311) );
  OA22X1 U3580 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n73), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n52), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n23), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n89), .Y(n4188) );
  OR2X2 U3581 ( .A(median_sobel_inst_n380), .B(n5927), .Y(n4374) );
  OR2X1 U3582 ( .A(n6715), .B(n6521), .Y(n3732) );
  INVX3 U3583 ( .A(n3692), .Y(n3196) );
  OA22X2 U3584 ( .A0(n3397), .A1(median_sobel_inst_n346), .B0(
        median_sobel_inst_n378), .B1(n5927), .Y(n4138) );
  INVX1 U3585 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n95), .Y(n4561) );
  OR2X2 U3587 ( .A(n4849), .B(n4969), .Y(n4852) );
  INVX4 U3588 ( .A(n4314), .Y(n2669) );
  NAND2X6 U3589 ( .A(n3294), .B(n3799), .Y(median_sobel_inst_data_i_r[1]) );
  INVX1 U3590 ( .A(n5927), .Y(n3641) );
  INVX4 U3591 ( .A(n4316), .Y(median_sobel_inst_data_h_r[4]) );
  NAND2BX1 U3592 ( .AN(median_sobel_inst_n348), .B(n3477), .Y(n4375) );
  NAND2X6 U3593 ( .A(n3210), .B(n4304), .Y(median_sobel_inst_n102) );
  AOI2BB2X1 U3595 ( .B0(n3479), .B1(median_sobel_inst_n669), .A0N(
        median_sobel_inst_n411), .A1N(n5927), .Y(n4095) );
  NOR2X2 U3596 ( .A(n6607), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n3776) );
  NAND2BX1 U3597 ( .AN(median_sobel_inst_n377), .B(n4482), .Y(n4296) );
  NAND2X6 U3598 ( .A(n4349), .B(n4348), .Y(n4351) );
  NOR2X2 U3599 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n6109) );
  NOR2X1 U3601 ( .A(median_sobel_inst_n393), .B(n3484), .Y(n3642) );
  NOR2X1 U3602 ( .A(n3733), .B(n3734), .Y(n5439) );
  NOR2X2 U3603 ( .A(n3490), .B(n3734), .Y(n5434) );
  NAND2BX1 U3604 ( .AN(median_sobel_inst_n384), .B(n4478), .Y(n4246) );
  NAND2BX1 U3606 ( .AN(median_sobel_inst_n713), .B(median_sobel_inst_n718), 
        .Y(n3910) );
  INVX2 U3607 ( .A(n5400), .Y(n2898) );
  AOI22X1 U3608 ( .A0(n4274), .A1(conv_inst_conv_2_r[15]), .B0(
        conv_inst_conv_3_r[15]), .B1(n2774), .Y(n4275) );
  NAND2BX1 U3609 ( .AN(median_sobel_inst_n337), .B(n3478), .Y(n4297) );
  NOR2X4 U3610 ( .A(n4212), .B(n4213), .Y(n4484) );
  NOR2BX2 U3611 ( .AN(n6075), .B(n6078), .Y(n3662) );
  NAND2BX1 U3613 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n89), .B(
        n3129), .Y(n3128) );
  OAI22X2 U3614 ( .A0(n3861), .A1(
        median_sobel_inst_u_median_filter_submodule_n181), .B0(
        median_sobel_inst_u_median_filter_submodule_n184), .B1(n3857), .Y(
        n3411) );
  NAND2X4 U3615 ( .A(n4120), .B(n4119), .Y(median_sobel_inst_data_g_r[0]) );
  BUFX4 U3618 ( .A(n4482), .Y(n2677) );
  OAI21X1 U3620 ( .A0(n6891), .A1(
        median_sobel_inst_u_median_filter_submodule_n231), .B0(n5978), .Y(
        n5979) );
  BUFX8 U3622 ( .A(n4662), .Y(n6176) );
  NOR2X2 U3623 ( .A(n6894), .B(n6593), .Y(n5413) );
  NAND3X2 U3625 ( .A(n5047), .B(n5164), .C(n5046), .Y(n5788) );
  NAND2X2 U3626 ( .A(n4515), .B(n4514), .Y(n5109) );
  NOR3X6 U3627 ( .A(n2822), .B(n6336), .C(n2821), .Y(n4373) );
  NOR2X1 U3628 ( .A(n6742), .B(n6534), .Y(n3889) );
  NAND2X2 U3630 ( .A(n3352), .B(n3349), .Y(n3348) );
  NAND2X2 U3634 ( .A(n4570), .B(n3580), .Y(n5089) );
  NAND3X4 U3635 ( .A(n4086), .B(n4085), .C(n4087), .Y(
        median_sobel_inst_data_e_r[5]) );
  NAND4X1 U3636 ( .A(n4416), .B(n4418), .C(n4417), .D(n4415), .Y(n4423) );
  AND2X2 U3637 ( .A(n4106), .B(n4105), .Y(n3401) );
  NOR2X2 U3638 ( .A(n3201), .B(n3200), .Y(n4104) );
  NOR2BX2 U3640 ( .AN(n6143), .B(n3567), .Y(n3566) );
  OAI21X2 U3641 ( .A0(median_sobel_inst_n330), .A1(n3397), .B0(n4103), .Y(
        n3176) );
  OAI21X2 U3642 ( .A0(n5655), .A1(n5660), .B0(n5656), .Y(n6087) );
  NOR2X6 U3643 ( .A(n4219), .B(n4218), .Y(n4728) );
  NOR2BX1 U3645 ( .AN(n3887), .B(n3888), .Y(n3468) );
  INVX6 U3646 ( .A(n3573), .Y(n3143) );
  BUFX8 U3648 ( .A(n4452), .Y(n5464) );
  AOI22X1 U3649 ( .A0(n3725), .A1(n2745), .B0(n3902), .B1(n3501), .Y(n3181) );
  NOR2X1 U3650 ( .A(n4466), .B(median_sobel_inst_n265), .Y(n3053) );
  INVX12 U3651 ( .A(n3331), .Y(n6306) );
  NOR2X4 U3652 ( .A(n4858), .B(n6337), .Y(n5166) );
  MXI2X6 U3653 ( .A(n6723), .B(n4877), .S0(n2783), .Y(n5637) );
  NOR2X4 U3656 ( .A(n4208), .B(n4207), .Y(n5419) );
  INVX4 U3657 ( .A(n3287), .Y(n6181) );
  NAND2X2 U3658 ( .A(n4320), .B(n4322), .Y(n2673) );
  OAI2BB2XL U3659 ( .B0(n6588), .B1(
        median_sobel_inst_u_median_filter_submodule_n145), .A0N(
        median_sobel_inst_u_median_filter_submodule_n256), .A1N(
        median_sobel_inst_u_median_filter_submodule_n805), .Y(n5976) );
  OA22X1 U3660 ( .A0(median_sobel_inst_u_median_filter_submodule_n825), .A1(
        median_sobel_inst_u_median_filter_submodule_n243), .B0(n6487), .B1(
        median_sobel_inst_u_median_filter_submodule_n821), .Y(n6072) );
  OR2X1 U3662 ( .A(median_sobel_inst_u_median_filter_submodule_net22699), .B(
        median_sobel_inst_u_median_filter_submodule_net57730), .Y(n3959) );
  CLKINVX1 U3663 ( .A(n852), .Y(n5046) );
  OR2X1 U3664 ( .A(median_sobel_inst_n372), .B(n5927), .Y(n4304) );
  OR2X1 U3665 ( .A(median_sobel_inst_n411), .B(n3612), .Y(n4432) );
  CLKINVX1 U3666 ( .A(median_sobel_inst_u_median_filter_submodule_n179), .Y(
        n6249) );
  CLKINVX1 U3668 ( .A(median_sobel_inst_u_median_filter_submodule_n186), .Y(
        n3861) );
  INVX1 U3669 ( .A(median_sobel_inst_n678), .Y(n4101) );
  NAND2BX1 U3671 ( .AN(median_sobel_inst_u_median_filter_submodule_b1_r[5]), 
        .B(n6905), .Y(n2882) );
  INVX4 U3672 ( .A(n4876), .Y(n2783) );
  NAND2X1 U3673 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]), .Y(n5656) );
  OR2X1 U3674 ( .A(median_sobel_inst_u_sober_compare_submodule_n224), .B(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[4]), .Y(n4413) );
  OR2X1 U3675 ( .A(n3397), .B(n2736), .Y(n2691) );
  NAND2BX1 U3676 ( .AN(median_sobel_inst_n400), .B(n3477), .Y(n4301) );
  NAND2BX1 U3677 ( .AN(median_sobel_inst_n408), .B(n3725), .Y(n4300) );
  NAND2BX1 U3678 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n68), .B(
        n6642), .Y(n4829) );
  OR2X2 U3679 ( .A(n6134), .B(n6137), .Y(n6138) );
  NAND2X1 U3680 ( .A(median_sobel_inst_n107), .B(n5415), .Y(n4119) );
  NAND2BX1 U3681 ( .AN(median_sobel_inst_n338), .B(n4478), .Y(n4103) );
  NAND2BX1 U3682 ( .AN(median_sobel_inst_n413), .B(n4478), .Y(n3900) );
  NAND2X1 U3683 ( .A(median_sobel_inst_n660), .B(n5402), .Y(n4136) );
  AND2X4 U3684 ( .A(median_sobel_inst_u_sober_compare_submodule_n63), .B(
        median_sobel_inst_u_sober_compare_submodule_n64), .Y(n3287) );
  NOR2X1 U3685 ( .A(n5378), .B(median_sobel_inst_n368), .Y(n3201) );
  NAND2X6 U3686 ( .A(n2827), .B(median_sobel_inst_data_h_r[5]), .Y(n3203) );
  NAND2BX1 U3688 ( .AN(median_sobel_inst_n400), .B(n4402), .Y(n4406) );
  NAND2BX2 U3689 ( .AN(n841), .B(n4908), .Y(n5167) );
  NAND2X2 U3690 ( .A(n4730), .B(n893), .Y(n2920) );
  AND3X6 U3691 ( .A(n3897), .B(n3896), .C(n3430), .Y(n4314) );
  OAI21X2 U3692 ( .A0(median_sobel_inst_u_median_filter_submodule_n176), .A1(
        n4019), .B0(n3816), .Y(n3819) );
  NOR2X2 U3693 ( .A(n4134), .B(n4133), .Y(n4135) );
  NAND2X4 U3694 ( .A(n3833), .B(n3832), .Y(n3835) );
  INVX6 U3695 ( .A(n2846), .Y(n4485) );
  INVX1 U3696 ( .A(median_sobel_inst_u_median_filter_submodule_n184), .Y(n3858) );
  NAND2X2 U3697 ( .A(n4328), .B(n3166), .Y(n4079) );
  NAND2X1 U3698 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6085) );
  NOR2X1 U3699 ( .A(n6636), .B(n6504), .Y(n4192) );
  NAND4BX1 U3700 ( .AN(median_sobel_inst_u_sober_compare_submodule_temp_a_r_6_), .B(n4417), .C(n4418), .D(n6718), .Y(n4421) );
  NOR2X4 U3701 ( .A(conv_inst_cs_0_), .B(conv_inst_n38), .Y(n3331) );
  AOI22X1 U3702 ( .A0(n5402), .A1(median_sobel_inst_n107), .B0(
        median_sobel_inst_n785), .B1(n5067), .Y(n4313) );
  INVX6 U3704 ( .A(n2716), .Y(n3178) );
  OAI22X1 U3706 ( .A0(median_sobel_inst_u_median_filter_submodule_a6_r[6]), 
        .A1(median_sobel_inst_u_median_filter_submodule_net22700), .B0(
        median_sobel_inst_u_median_filter_submodule_net22699), .B1(n6910), .Y(
        n2813) );
  NAND2X1 U3707 ( .A(n4537), .B(n4535), .Y(n2802) );
  NAND2X2 U3708 ( .A(n4217), .B(n4216), .Y(n4218) );
  OAI21X2 U3710 ( .A0(n6071), .A1(n6070), .B0(n6069), .Y(n6073) );
  NAND2X2 U3711 ( .A(n4215), .B(n4214), .Y(n4219) );
  AND2X2 U3712 ( .A(n3921), .B(n3579), .Y(n3540) );
  AOI22X2 U3713 ( .A0(n5960), .A1(
        median_sobel_inst_u_median_filter_submodule_n37), .B0(n6830), .B1(
        n3083), .Y(n3082) );
  NAND2BX2 U3714 ( .AN(n6078), .B(n6074), .Y(n3661) );
  AOI22X2 U3716 ( .A0(n4584), .A1(n3508), .B0(n4478), .B1(n3491), .Y(n3628) );
  NAND2BX1 U3717 ( .AN(median_sobel_inst_n360), .B(n4584), .Y(n4106) );
  AOI2BB1X2 U3718 ( .A0N(median_sobel_inst_n251), .A1N(n5927), .B0(n4118), .Y(
        n4120) );
  NAND2X2 U3719 ( .A(n4210), .B(n4209), .Y(n4213) );
  NAND2X2 U3720 ( .A(n2724), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_), .Y(n5400) );
  NOR2X2 U3721 ( .A(n5969), .B(n5970), .Y(n3085) );
  AND3X4 U3723 ( .A(n4305), .B(n4303), .C(n3211), .Y(n3210) );
  NAND2X1 U3725 ( .A(n3478), .B(n2751), .Y(n3352) );
  NOR2X2 U3727 ( .A(n4685), .B(n4687), .Y(n2892) );
  OR2X1 U3728 ( .A(median_sobel_inst_u_median_filter_submodule_n181), .B(
        median_sobel_inst_u_median_filter_submodule_n788), .Y(n3834) );
  OR2X1 U3729 ( .A(median_sobel_inst_n380), .B(n3612), .Y(n4303) );
  OR2X6 U3730 ( .A(n5416), .B(n3434), .Y(n3041) );
  CLKINVX1 U3731 ( .A(n827), .Y(n5453) );
  NOR2X2 U3732 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .Y(n6137)
         );
  NOR2X4 U3733 ( .A(cnt[0]), .B(cnt[1]), .Y(n6429) );
  NAND2X1 U3734 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n6135)
         );
  AND2X6 U3735 ( .A(n3880), .B(n3865), .Y(n2714) );
  NAND2X1 U3738 ( .A(n2774), .B(conv_inst_conv_3_r[3]), .Y(n2831) );
  NAND2X6 U3739 ( .A(n4312), .B(n4311), .Y(n2667) );
  OAI22X2 U3740 ( .A0(median_sobel_inst_u_median_filter_submodule_b9_r[2]), 
        .A1(median_sobel_inst_u_median_filter_submodule_n823), .B0(
        median_sobel_inst_u_median_filter_submodule_n152), .B1(
        median_sobel_inst_u_median_filter_submodule_b9_r[1]), .Y(n6071) );
  NAND2X1 U3741 ( .A(conv_inst_conv_1_r[6]), .B(n2819), .Y(n4216) );
  NOR2X2 U3742 ( .A(n6511), .B(n5623), .Y(n5049) );
  NAND2BX1 U3743 ( .AN(median_sobel_inst_n338), .B(n3479), .Y(n4292) );
  CLKAND2X8 U3745 ( .A(n6332), .B(n6511), .Y(n5197) );
  NAND2X1 U3746 ( .A(n2774), .B(conv_inst_n55), .Y(n4211) );
  AOI21X1 U3747 ( .A0(median_sobel_inst_u_median_filter_submodule_n184), .A1(
        median_sobel_inst_u_median_filter_submodule_n124), .B0(
        median_sobel_inst_u_median_filter_submodule_n216), .Y(n3836) );
  NAND2X1 U3748 ( .A(conv_inst_conv_1_r[5]), .B(n2819), .Y(n4210) );
  NOR2X2 U3749 ( .A(n2788), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n6134) );
  NAND2BX1 U3750 ( .AN(median_sobel_inst_n428), .B(n4403), .Y(n3897) );
  NAND2BX1 U3751 ( .AN(median_sobel_inst_n415), .B(n4402), .Y(n4058) );
  NOR2X4 U3753 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .Y(
        n5485) );
  NAND2BX1 U3755 ( .AN(median_sobel_inst_n413), .B(n4403), .Y(n4257) );
  NAND2BX1 U3756 ( .AN(median_sobel_inst_n438), .B(n4403), .Y(n3798) );
  NOR2X1 U3757 ( .A(n6656), .B(n5137), .Y(n4268) );
  BUFX8 U3758 ( .A(n4430), .Y(n4481) );
  AOI22X2 U3759 ( .A0(n3479), .A1(median_sobel_inst_n697), .B0(
        median_sobel_inst_n688), .B1(n4478), .Y(n3430) );
  NAND2BX2 U3760 ( .AN(n6620), .B(conv_inst_data_abc_1_r[7]), .Y(n4535) );
  NAND2X4 U3761 ( .A(n3071), .B(n3070), .Y(n3922) );
  AOI21X1 U3762 ( .A0(n4107), .A1(median_sobel_inst_n697), .B0(n3638), .Y(
        n4082) );
  NOR2X2 U3764 ( .A(n4734), .B(n4731), .Y(n3555) );
  BUFX6 U3765 ( .A(n3725), .Y(n3049) );
  NAND2BX2 U3767 ( .AN(median_sobel_inst_n437), .B(n4584), .Y(n3796) );
  NAND2BX1 U3768 ( .AN(n5928), .B(median_sobel_inst_n141), .Y(n3800) );
  OAI22X1 U3770 ( .A0(median_sobel_inst_u_median_filter_submodule_a5_r[6]), 
        .A1(median_sobel_inst_u_median_filter_submodule_net22700), .B0(n6587), 
        .B1(median_sobel_inst_u_median_filter_submodule_n280), .Y(n2810) );
  OAI21X2 U3771 ( .A0(n4733), .A1(n4734), .B0(n4732), .Y(n3554) );
  NOR2X2 U3772 ( .A(n4439), .B(n4335), .Y(n4337) );
  NOR2X1 U3773 ( .A(n6584), .B(n4283), .Y(n4201) );
  NAND2X2 U3774 ( .A(n4550), .B(n4442), .Y(n4336) );
  XNOR2X2 U3775 ( .A(conv_inst_conv_2_r[9]), .B(conv_inst_data_bcd_2_r[9]), 
        .Y(n4344) );
  NOR2BX2 U3776 ( .AN(n3840), .B(n3413), .Y(n3850) );
  NOR2X1 U3777 ( .A(n5001), .B(median_sobel_inst_n368), .Y(n3351) );
  AOI21X2 U3778 ( .A0(n3831), .A1(n3830), .B0(n3829), .Y(n3832) );
  NOR2BX2 U3779 ( .AN(conv_inst_conv_1_r[11]), .B(n3167), .Y(n3166) );
  XNOR2X2 U3780 ( .A(n2790), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n6155) );
  NAND2X1 U3781 ( .A(n5968), .B(n5971), .Y(n5969) );
  AND2X4 U3782 ( .A(n4220), .B(n4221), .Y(n2846) );
  INVX4 U3783 ( .A(median_sobel_inst_data_b_r[1]), .Y(n3002) );
  NAND2X4 U3784 ( .A(n5164), .B(n4449), .Y(n5784) );
  OR2X1 U3787 ( .A(n6591), .B(n6488), .Y(n3564) );
  OA22X2 U3788 ( .A0(median_sobel_inst_n383), .A1(n5378), .B0(
        median_sobel_inst_n375), .B1(n3484), .Y(n3864) );
  INVX1 U3789 ( .A(median_sobel_inst_u_median_filter_submodule_n223), .Y(n5609) );
  BUFX4 U3790 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .Y(n2790) );
  NAND2X1 U3791 ( .A(median_sobel_inst_u_median_filter_submodule_n806), .B(
        median_sobel_inst_u_median_filter_submodule_n249), .Y(n5971) );
  OAI21X2 U3792 ( .A0(n3749), .A1(n6478), .B0(n6578), .Y(n3071) );
  BUFX8 U3795 ( .A(n4227), .Y(n5137) );
  INVX1 U3796 ( .A(n4846), .Y(n4449) );
  NOR2X2 U3798 ( .A(n4310), .B(n4309), .Y(n4312) );
  NOR2X2 U3799 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n3553) );
  OAI21X2 U3801 ( .A0(n2681), .A1(median_sobel_inst_n389), .B0(n3398), .Y(
        n4255) );
  NOR2X4 U3802 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n4734)
         );
  NOR2X4 U3803 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(n2788), .Y(n4731) );
  NOR2X4 U3804 ( .A(n3867), .B(n3866), .Y(n3868) );
  NOR2BX2 U3805 ( .AN(n4288), .B(n3180), .Y(n3179) );
  NAND2BX2 U3808 ( .AN(median_sobel_inst_n438), .B(n4452), .Y(n4311) );
  AOI2BB2X2 U3809 ( .B0(n3610), .B1(n3946), .A0N(n6631), .A1N(
        median_sobel_inst_u_median_filter_submodule_net22682), .Y(n3542) );
  NOR2X4 U3810 ( .A(n3057), .B(median_sobel_inst_n371), .Y(n3056) );
  NAND2X4 U3811 ( .A(n5068), .B(n2867), .Y(n5078) );
  AOI22X2 U3812 ( .A0(n4482), .A1(median_sobel_inst_n108), .B0(n4403), .B1(
        median_sobel_inst_n785), .Y(n3619) );
  NOR2X1 U3813 ( .A(n6626), .B(n4283), .Y(n4223) );
  NOR3X1 U3814 ( .A(n6508), .B(n6477), .C(n6611), .Y(n4190) );
  AOI2BB1X2 U3815 ( .A0N(median_sobel_inst_n381), .A1N(n3634), .B0(n5881), .Y(
        n5882) );
  BUFX6 U3817 ( .A(n5929), .Y(n3724) );
  NOR2X1 U3818 ( .A(n5144), .B(n6663), .Y(n2902) );
  OR2X2 U3819 ( .A(median_sobel_inst_n382), .B(n3484), .Y(n4024) );
  CLKBUFX3 U3820 ( .A(n831), .Y(n2785) );
  INVX12 U3821 ( .A(n3576), .Y(n5164) );
  INVX1 U3822 ( .A(median_sobel_inst_u_median_filter_submodule_net57373), .Y(
        n3966) );
  OA22X2 U3823 ( .A0(median_sobel_inst_u_median_filter_submodule_n209), .A1(
        n3841), .B0(n3839), .B1(
        median_sobel_inst_u_median_filter_submodule_n221), .Y(n3823) );
  NOR2X2 U3824 ( .A(median_sobel_inst_u_median_filter_submodule_b9_r[2]), .B(
        median_sobel_inst_u_median_filter_submodule_n812), .Y(n2881) );
  INVX3 U3826 ( .A(n837), .Y(n6955) );
  NOR2BX2 U3827 ( .AN(conv_inst_conv_1_r[1]), .B(n6595), .Y(n5076) );
  NOR2X2 U3828 ( .A(n4857), .B(curr_state[2]), .Y(n4850) );
  NAND2BX1 U3829 ( .AN(median_sobel_inst_u_median_filter_submodule_n801), .B(
        median_sobel_inst_u_median_filter_submodule_n803), .Y(n3087) );
  NAND2X1 U3830 ( .A(median_sobel_inst_u_median_filter_submodule_net22682), 
        .B(median_sobel_inst_u_median_filter_submodule_a5_r[2]), .Y(n3961) );
  OR2X2 U3831 ( .A(n4069), .B(n4599), .Y(n2971) );
  NAND2X2 U3832 ( .A(median_sobel_inst_n664), .B(n5402), .Y(n3982) );
  INVX8 U3833 ( .A(n3725), .Y(n3057) );
  NAND2X2 U3834 ( .A(n3881), .B(n3880), .Y(n3315) );
  AND2X4 U3835 ( .A(conv_inst_data_abc_3_r[6]), .B(conv_inst_conv_3_r[6]), .Y(
        n4878) );
  NOR2X2 U3836 ( .A(n5578), .B(n6604), .Y(n3867) );
  NAND2X2 U3838 ( .A(curr_state[3]), .B(curr_state[2]), .Y(n4846) );
  NOR2X4 U3839 ( .A(n4847), .B(n4366), .Y(n4367) );
  NAND2X1 U3840 ( .A(n3960), .B(
        median_sobel_inst_u_median_filter_submodule_net22688), .Y(n3963) );
  NOR2X4 U3842 ( .A(n4070), .B(n5081), .Y(n4512) );
  CLKINVX2 U3845 ( .A(n5050), .Y(n4365) );
  INVX3 U3846 ( .A(n3612), .Y(n4452) );
  NAND2X4 U3847 ( .A(n472), .B(n5623), .Y(n5617) );
  NAND2BX2 U3848 ( .AN(conv_inst_data_abc_1_r[1]), .B(n2722), .Y(n2867) );
  XNOR2X2 U3849 ( .A(conv_inst_data_bcd_4_r[5]), .B(conv_inst_conv_4_r[5]), 
        .Y(n4577) );
  XOR2X2 U3850 ( .A(n1148), .B(n858), .Y(n3747) );
  INVX2 U3852 ( .A(n2879), .Y(n2874) );
  XOR2X2 U3853 ( .A(conv_inst_data_bcd_2_r[5]), .B(n6598), .Y(n4784) );
  INVX3 U3854 ( .A(n2774), .Y(n5144) );
  NOR3X2 U3856 ( .A(n2958), .B(n2957), .C(n2956), .Y(n2955) );
  NAND3X4 U3857 ( .A(n2948), .B(n3960), .C(n2947), .Y(n2946) );
  OR2X6 U3858 ( .A(n449), .B(n837), .Y(n3576) );
  CLKAND2X3 U3859 ( .A(conv_inst_data_bcd_4_r[2]), .B(conv_inst_conv_4_r[2]), 
        .Y(n4569) );
  INVX16 U3860 ( .A(n3902), .Y(n3397) );
  AND2X2 U3861 ( .A(conv_inst_data_bcd_2_r[3]), .B(conv_inst_conv_2_r[3]), .Y(
        n4778) );
  NOR2X4 U3862 ( .A(n6888), .B(input_data_ready_r[27]), .Y(n3749) );
  INVX1 U3863 ( .A(median_sobel_inst_u_median_filter_submodule_n254), .Y(n3841) );
  NAND2X6 U3864 ( .A(conv_inst_n28), .B(conv_inst_n27), .Y(n4283) );
  NAND2X2 U3865 ( .A(input_data_ready_r[4]), .B(n6889), .Y(n3865) );
  INVX16 U3866 ( .A(n5001), .Y(n4403) );
  INVX16 U3867 ( .A(n5001), .Y(n4584) );
  NOR2X1 U3868 ( .A(input_data_ready_r[12]), .B(input_data_ready_r[28]), .Y(
        n3344) );
  NAND2X6 U3869 ( .A(n5048), .B(n6470), .Y(n5504) );
  NAND2X6 U3870 ( .A(n3301), .B(n3299), .Y(n3880) );
  NAND2X1 U3871 ( .A(n5048), .B(n852), .Y(n4366) );
  NAND2X2 U3872 ( .A(n5789), .B(op_mode_r_1_), .Y(n5050) );
  NOR2X4 U3873 ( .A(n3740), .B(n3744), .Y(n3743) );
  NAND2X6 U3875 ( .A(n3725), .B(n2703), .Y(n3055) );
  CLKINVX1 U3876 ( .A(n4146), .Y(n3600) );
  INVX12 U3878 ( .A(n4308), .Y(n4430) );
  XOR2X2 U3880 ( .A(n831), .B(n848), .Y(n3874) );
  NAND2X2 U3881 ( .A(n5094), .B(n4719), .Y(n3584) );
  OR2X4 U3884 ( .A(median_sobel_inst_n399), .B(n5927), .Y(n4010) );
  INVX4 U3885 ( .A(n885), .Y(n5623) );
  INVX2 U3886 ( .A(n2681), .Y(n2675) );
  BUFX16 U3887 ( .A(n3762), .Y(n5927) );
  OR2X2 U3889 ( .A(n3108), .B(n869), .Y(n3876) );
  BUFX16 U3890 ( .A(n5929), .Y(n4478) );
  BUFX8 U3891 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .Y(n2788) );
  INVX8 U3892 ( .A(n850), .Y(n5048) );
  NAND2X2 U3893 ( .A(conv_inst_data_bcd_4_r[7]), .B(conv_inst_conv_4_r[7]), 
        .Y(n4038) );
  INVX6 U3894 ( .A(n6470), .Y(n5789) );
  NAND2X4 U3895 ( .A(conv_inst_data_bcd_4_r[0]), .B(conv_inst_conv_4_r[0]), 
        .Y(n4719) );
  NAND2X4 U3896 ( .A(conv_inst_data_abc_3_r[0]), .B(conv_inst_conv_3_r[0]), 
        .Y(n4717) );
  BUFX12 U3897 ( .A(n3762), .Y(n5001) );
  BUFX4 U3898 ( .A(n6888), .Y(n3480) );
  XOR2X2 U3899 ( .A(n6889), .B(input_data_ready_r[4]), .Y(n3314) );
  NAND2X4 U3900 ( .A(n6574), .B(n3039), .Y(n3962) );
  NAND2X1 U3903 ( .A(n1145), .B(n833), .Y(n3469) );
  NOR2X2 U3905 ( .A(n6599), .B(n6496), .Y(n4802) );
  INVX4 U3907 ( .A(n5473), .Y(n4531) );
  INVX2 U3909 ( .A(n3436), .Y(n3877) );
  OR2X6 U3911 ( .A(n3735), .B(n6596), .Y(n5473) );
  INVX16 U3912 ( .A(n3710), .Y(n4308) );
  NAND2X2 U3913 ( .A(n3108), .B(n2775), .Y(n2986) );
  NOR2X4 U3914 ( .A(n6896), .B(n8660), .Y(n5381) );
  NOR2X4 U3915 ( .A(n848), .B(n1148), .Y(n3436) );
  INVX3 U3917 ( .A(n2726), .Y(n2985) );
  OR2X4 U3918 ( .A(n862), .B(n873), .Y(n3108) );
  INVX8 U3919 ( .A(n3447), .Y(n3445) );
  NAND3BX4 U3921 ( .AN(n2673), .B(n4319), .C(n4321), .Y(
        median_sobel_inst_data_c_r[4]) );
  NOR2X8 U3922 ( .A(n4466), .B(median_sobel_inst_n325), .Y(n5209) );
  INVX6 U3923 ( .A(n5805), .Y(n4238) );
  NAND2BX2 U3926 ( .AN(median_sobel_inst_u_median_filter_submodule_net22688), 
        .B(median_sobel_inst_u_median_filter_submodule_net22697), .Y(n3608) );
  NAND2X4 U3928 ( .A(n4549), .B(n4548), .Y(n4551) );
  INVX12 U3929 ( .A(n6254), .Y(n4353) );
  INVX4 U3931 ( .A(n4914), .Y(n5468) );
  CLKINVX1 U3932 ( .A(median_sobel_inst_n700), .Y(n3904) );
  AOI2BB2X2 U3933 ( .B0(n6066), .B1(
        median_sobel_inst_u_median_filter_submodule_b1_r[7]), .A0N(
        median_sobel_inst_u_median_filter_submodule_b5_r[6]), .A1N(n6065), .Y(
        n6067) );
  BUFX8 U3934 ( .A(n4308), .Y(n2681) );
  AND2X2 U3935 ( .A(n5943), .B(median_sobel_inst_data_f_r[2]), .Y(n3099) );
  NAND2X8 U3936 ( .A(n3665), .B(n3202), .Y(n2826) );
  AOI22X4 U3937 ( .A0(n3479), .A1(median_sobel_inst_n708), .B0(n2675), .B1(
        n3515), .Y(n4027) );
  OAI21X4 U3938 ( .A0(n6228), .A1(n6227), .B0(n2676), .Y(
        conv_inst_data_abc_w[7]) );
  NAND2X6 U3939 ( .A(n6225), .B(n6224), .Y(n2676) );
  OR2X6 U3941 ( .A(n6579), .B(n844), .Y(n3579) );
  INVX6 U3944 ( .A(n3109), .Y(n3882) );
  BUFX8 U3945 ( .A(n6158), .Y(n2954) );
  CLKINVX1 U3946 ( .A(n3436), .Y(n3305) );
  NAND2X6 U3947 ( .A(n2997), .B(n2996), .Y(n2995) );
  NOR2X4 U3948 ( .A(n6621), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n5147) );
  NAND2X8 U3949 ( .A(n3691), .B(median_sobel_inst_n747), .Y(n3762) );
  NAND2X6 U3950 ( .A(n2959), .B(n3216), .Y(n5895) );
  NAND3X6 U3951 ( .A(n3213), .B(n3215), .C(n3218), .Y(n2680) );
  OAI22X4 U3952 ( .A0(conv_inst_conv_1_r[8]), .A1(conv_inst_data_abc_1_r[8]), 
        .B0(conv_inst_conv_1_r[9]), .B1(conv_inst_data_abc_1_r[9]), .Y(n4327)
         );
  BUFX20 U3953 ( .A(n3310), .Y(n3309) );
  NAND3X8 U3954 ( .A(n3170), .B(n3172), .C(n3652), .Y(n3539) );
  NAND2X6 U3956 ( .A(n3835), .B(n3152), .Y(n3151) );
  OAI21X2 U3959 ( .A0(n6102), .A1(n5727), .B0(n5726), .Y(n5730) );
  NOR2X6 U3960 ( .A(median_sobel_inst_data_b_r[0]), .B(n3024), .Y(n3214) );
  XOR2X4 U3962 ( .A(n2682), .B(n2775), .Y(n3066) );
  XNOR2X4 U3963 ( .A(input_data_ready_r[26]), .B(n893), .Y(n2682) );
  AOI22X4 U3964 ( .A0(n5943), .A1(median_sobel_inst_data_i_r[2]), .B0(n3278), 
        .B1(median_sobel_inst_data_i_r[1]), .Y(n2779) );
  AND3X8 U3965 ( .A(n5932), .B(n5931), .C(n5930), .Y(n5943) );
  NAND2X4 U3967 ( .A(n4142), .B(n4141), .Y(n4172) );
  OAI2BB1X4 U3968 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[20]), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n279), .B0(n4162), .Y(
        n4163) );
  AND2X4 U3969 ( .A(n4471), .B(n4472), .Y(n2763) );
  INVX6 U3970 ( .A(n3930), .Y(n3342) );
  NAND2XL U3972 ( .A(median_sobel_inst_u_median_filter_submodule_n241), .B(
        median_sobel_inst_u_median_filter_submodule_n818), .Y(n6065) );
  OA22X2 U3973 ( .A0(median_sobel_inst_u_median_filter_submodule_n821), .A1(
        n6575), .B0(n6499), .B1(
        median_sobel_inst_u_median_filter_submodule_n823), .Y(n6057) );
  NAND3X4 U3974 ( .A(n3601), .B(n3743), .C(n3579), .Y(n3019) );
  NOR2XL U3975 ( .A(n6493), .B(
        median_sobel_inst_u_median_filter_submodule_n201), .Y(n5970) );
  NAND4X1 U3976 ( .A(n4159), .B(n4158), .C(n4157), .D(n4156), .Y(n4160) );
  OAI22X1 U3977 ( .A0(n3812), .A1(n3811), .B0(
        median_sobel_inst_u_median_filter_submodule_n209), .B1(n3810), .Y(
        n3814) );
  INVXL U3978 ( .A(n6142), .Y(n3568) );
  INVXL U3979 ( .A(n6397), .Y(n6396) );
  NOR2X2 U3980 ( .A(median_sobel_inst_data_a_r[3]), .B(n5858), .Y(n2941) );
  NAND2XL U3982 ( .A(conv_inst_conv_4_r[4]), .B(n4267), .Y(n4204) );
  INVXL U3984 ( .A(n6095), .Y(n5720) );
  AND2X4 U3985 ( .A(n5165), .B(n4368), .Y(n4856) );
  NAND2XL U3986 ( .A(median_sobel_inst_n662), .B(n4430), .Y(n4094) );
  NAND2XL U3987 ( .A(n800), .B(n821), .Y(n6457) );
  NAND2XL U3988 ( .A(n6388), .B(n6618), .Y(n6389) );
  INVXL U3989 ( .A(n4038), .Y(n4039) );
  AOI2BB1X1 U3990 ( .A0N(n4167), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[16]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .Y(
        n4169) );
  INVXL U3991 ( .A(n5081), .Y(n5083) );
  NAND2XL U3994 ( .A(conv_inst_conv_4_r[6]), .B(n4267), .Y(n4215) );
  OA22X1 U3995 ( .A0(n5324), .A1(n843), .B0(n5323), .B1(n779), .Y(n5308) );
  NOR2X4 U3996 ( .A(n3192), .B(n5048), .Y(n4359) );
  NOR2XL U3997 ( .A(n4767), .B(median_sobel_inst_u_median_filter_submodule_n99), .Y(n3432) );
  INVXL U3998 ( .A(n5616), .Y(n5201) );
  INVXL U3999 ( .A(n5705), .Y(n5707) );
  INVXL U4000 ( .A(n5713), .Y(n4889) );
  INVX3 U4002 ( .A(n4856), .Y(n2821) );
  INVX3 U4003 ( .A(n6235), .Y(n2988) );
  NAND2X4 U4004 ( .A(n6430), .B(n6315), .Y(n3193) );
  INVXL U4005 ( .A(n5270), .Y(n5272) );
  NAND2XL U4006 ( .A(n5293), .B(n5292), .Y(n5294) );
  INVXL U4007 ( .A(conv_inst_n38), .Y(n4399) );
  INVXL U4008 ( .A(n5620), .Y(n5621) );
  CLKINVX1 U4009 ( .A(n4767), .Y(n5215) );
  NAND2X1 U4010 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n92), .Y(n5250) );
  NAND2X1 U4011 ( .A(n5322), .B(median_sobel_inst_out_data_w[4]), .Y(n3674) );
  NAND2X1 U4012 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n4744) );
  AND2X2 U4013 ( .A(n3593), .B(n4189), .Y(n3121) );
  NAND2X1 U4015 ( .A(median_sobel_inst_n708), .B(n5402), .Y(n4434) );
  NOR2X4 U4016 ( .A(median_sobel_inst_u_sober_compare_submodule_n63), .B(
        median_sobel_inst_u_sober_compare_submodule_n64), .Y(n6179) );
  INVXL U4018 ( .A(n4924), .Y(n5456) );
  AND2X1 U4020 ( .A(n4430), .B(median_sobel_inst_n678), .Y(n4129) );
  NOR2X1 U4022 ( .A(n5096), .B(n5095), .Y(n5098) );
  OAI21XL U4023 ( .A0(i_op_valid), .A1(n6470), .B0(n3738), .Y(n3739) );
  NAND2XL U4024 ( .A(n5357), .B(conv_inst_n32), .Y(n5177) );
  NOR2X2 U4025 ( .A(n472), .B(n5623), .Y(n5616) );
  NAND2XL U4026 ( .A(n5647), .B(n6084), .Y(n5648) );
  NAND2X1 U4027 ( .A(n3012), .B(
        median_sobel_inst_u_median_filter_submodule_n201), .Y(n6030) );
  NAND2XL U4028 ( .A(n6002), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n5115) );
  NAND2XL U4030 ( .A(n4952), .B(n5131), .Y(n4953) );
  NAND2BX2 U4031 ( .AN(n2690), .B(n4306), .Y(n3217) );
  OR2X2 U4032 ( .A(n3193), .B(n6959), .Y(n6324) );
  NOR2X1 U4033 ( .A(n3670), .B(n3669), .Y(n3668) );
  NAND3XL U4034 ( .A(n6132), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n51), .C(n6658), .Y(n5186) );
  NAND2XL U4035 ( .A(n4761), .B(n4760), .Y(n4762) );
  INVX3 U4036 ( .A(n4385), .Y(n4957) );
  NAND2XL U4037 ( .A(n5006), .B(n5690), .Y(n5007) );
  NAND2XL U4038 ( .A(n5334), .B(conv_inst_n103), .Y(n5222) );
  NAND2XL U4039 ( .A(n5334), .B(conv_inst_n112), .Y(n5205) );
  NAND2XL U4040 ( .A(n5277), .B(n5276), .Y(n5278) );
  AOI2BB2X1 U4041 ( .B0(n5889), .B1(n6849), .A0N(n7850), .A1N(n4045), .Y(n5877) );
  AOI2BB2X1 U4042 ( .B0(n6746), .B1(n5885), .A0N(n797), .A1N(n4045), .Y(n5821)
         );
  NOR2XL U4043 ( .A(n5564), .B(n5200), .Y(n5054) );
  NAND2XL U4044 ( .A(n5063), .B(n5062), .Y(n4756) );
  NAND2XL U4045 ( .A(n5687), .B(n5686), .Y(n5688) );
  NAND2XL U4046 ( .A(n3219), .B(n7021), .Y(n3233) );
  NAND2XL U4047 ( .A(n4689), .B(n4688), .Y(n4690) );
  NAND2XL U4048 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[6]), 
        .B(n6001), .Y(n5332) );
  INVXL U4049 ( .A(median_sobel_inst_u_sober_compare_submodule_n46), .Y(n4587)
         );
  NAND2BX1 U4050 ( .AN(n3711), .B(n6540), .Y(n3636) );
  AOI22XL U4051 ( .A0(n5062), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .B0(n4771), 
        .B1(n6864), .Y(n4656) );
  NAND2XL U4052 ( .A(n5356), .B(conv_inst_n109), .Y(n5208) );
  INVXL U4053 ( .A(n5480), .Y(n4715) );
  NAND2XL U4055 ( .A(n3356), .B(median_sobel_inst_G[21]), .Y(n3387) );
  INVXL U4056 ( .A(n6148), .Y(n6147) );
  NAND2XL U4057 ( .A(n5755), .B(n5495), .Y(n5496) );
  NAND2XL U4059 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n6140)
         );
  NAND2BX1 U4060 ( .AN(median_sobel_inst_n386), .B(n4482), .Y(n4139) );
  NAND2XL U4061 ( .A(n6002), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .Y(n5280) );
  NAND2X1 U4062 ( .A(n4584), .B(median_sobel_inst_n129), .Y(n3697) );
  AND3X4 U4063 ( .A(n4258), .B(n4260), .C(n4259), .Y(n5949) );
  NAND2XL U4064 ( .A(n3219), .B(input_data_ready_r[22]), .Y(n3240) );
  NAND2XL U4065 ( .A(n3219), .B(n6898), .Y(n3255) );
  NAND2XL U4066 ( .A(n3219), .B(n2712), .Y(n3267) );
  NAND2X6 U4067 ( .A(n6654), .B(n2726), .Y(n5446) );
  OR2X2 U4068 ( .A(n3676), .B(n4343), .Y(n3675) );
  NAND2XL U4069 ( .A(n5357), .B(conv_inst_n113), .Y(n5194) );
  NAND2XL U4071 ( .A(i_in_valid), .B(n5541), .Y(n5542) );
  NAND3X4 U4072 ( .A(n4360), .B(n5164), .C(n5047), .Y(n4361) );
  NAND2XL U4073 ( .A(n5193), .B(n5192), .Y(conv_inst_N213) );
  OAI21XL U4074 ( .A0(n6768), .A1(n5516), .B0(n5045), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[6]) );
  NAND3X1 U4075 ( .A(n6409), .B(n6444), .C(n6408), .Y(sram_addr_wait_r[10]) );
  NAND3XL U4076 ( .A(n4825), .B(n4824), .C(n4823), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[0]) );
  OAI21XL U4077 ( .A0(n6764), .A1(n5558), .B0(n4453), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[3]) );
  OA21XL U4078 ( .A0(n5573), .A1(n5572), .B0(n5921), .Y(N713) );
  OA21XL U4079 ( .A0(n4874), .A1(n4500), .B0(n4499), .Y(conv_inst_N71) );
  NAND2XL U4080 ( .A(n5223), .B(n5222), .Y(conv_inst_N215) );
  NAND2XL U4081 ( .A(n5206), .B(n5205), .Y(conv_inst_N201) );
  XNOR2X1 U4082 ( .A(n5684), .B(n5683), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]) );
  MX2X1 U4083 ( .A(median_sobel_inst_n664), .B(n6869), .S0(n5464), .Y(
        median_sobel_inst_n586) );
  OAI21XL U4084 ( .A0(n6768), .A1(n5558), .B0(n4383), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[6]) );
  MXI2X1 U4085 ( .A(n2717), .B(n2699), .S0(n3049), .Y(
        median_sobel_inst_u_sober_compare_submodule_n92) );
  NAND3X1 U4086 ( .A(n6198), .B(n6197), .C(n6196), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]) );
  NAND2XL U4087 ( .A(n5208), .B(n5207), .Y(conv_inst_N205) );
  MX2X1 U4088 ( .A(n6823), .B(median_sobel_inst_G[32]), .S0(n4510), .Y(
        median_sobel_inst_u_sober_compare_submodule_n103) );
  OAI21XL U4089 ( .A0(n4481), .A1(
        median_sobel_inst_u_sober_compare_submodule_n82), .B0(n3357), .Y(
        median_sobel_inst_u_sober_compare_submodule_n134) );
  NAND3XL U4090 ( .A(n4665), .B(n4664), .C(n4663), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]) );
  MX2X1 U4091 ( .A(n6815), .B(median_sobel_inst_G[24]), .S0(n4481), .Y(
        median_sobel_inst_u_sober_compare_submodule_n116) );
  NAND2XL U4092 ( .A(n5400), .B(n4591), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]) );
  MX2X1 U4093 ( .A(median_sobel_inst_angle[6]), .B(n6858), .S0(n3902), .Y(
        median_sobel_inst_n491) );
  MX2X1 U4094 ( .A(median_sobel_inst_G[2]), .B(n6564), .S0(n3725), .Y(
        median_sobel_inst_n454) );
  MX2X1 U4095 ( .A(median_sobel_inst_G[6]), .B(n6852), .S0(n5402), .Y(
        median_sobel_inst_n473) );
  OAI21XL U4096 ( .A0(n3355), .A1(median_sobel_inst_n218), .B0(n3364), .Y(
        median_sobel_inst_n981) );
  OAI21XL U4097 ( .A0(n3355), .A1(median_sobel_inst_n209), .B0(n3366), .Y(
        median_sobel_inst_med_sobel_e_wait_r[34]) );
  MX2X1 U4098 ( .A(n6870), .B(n6485), .S0(n4478), .Y(
        median_sobel_inst_med_sobel_e_wait_r[40]) );
  MXI2X1 U4099 ( .A(median_sobel_inst_n194), .B(n6534), .S0(n3902), .Y(
        median_sobel_inst_n980) );
  MX2X1 U4100 ( .A(median_sobel_inst_n108), .B(input_data_ready_r[24]), .S0(
        n5415), .Y(median_sobel_inst_n499) );
  MX2X1 U4101 ( .A(median_sobel_inst_n660), .B(n6838), .S0(n5879), .Y(
        median_sobel_inst_n553) );
  MX2X1 U4102 ( .A(median_sobel_inst_n321), .B(n6839), .S0(n5879), .Y(
        median_sobel_inst_n619) );
  OAI21XL U4103 ( .A0(n3219), .A1(n2723), .B0(n3255), .Y(
        median_sobel_inst_n515) );
  NAND2X2 U4104 ( .A(n3682), .B(n3917), .Y(median_sobel_inst_ns[0]) );
  OAI21XL U4105 ( .A0(n3355), .A1(median_sobel_inst_n231), .B0(n3359), .Y(
        median_sobel_inst_med_sobel_e_wait_r[53]) );
  OAI21XL U4106 ( .A0(n3219), .A1(median_sobel_inst_n386), .B0(n3222), .Y(
        n6685) );
  MX2X1 U4107 ( .A(median_sobel_inst_angle[5]), .B(n6573), .S0(n5415), .Y(
        median_sobel_inst_n484) );
  AND2X1 U4108 ( .A(n5341), .B(conv_inst_n101), .Y(n6592) );
  NAND3X1 U4110 ( .A(n6436), .B(n6435), .C(n6434), .Y(sram_addr_wait_r[6]) );
  AND2X1 U4111 ( .A(n2719), .B(result_w[13]), .Y(out_data_wait_r[13]) );
  NAND2XL U4112 ( .A(n5800), .B(n5804), .Y(N726) );
  AND2X1 U4113 ( .A(n5190), .B(n5921), .Y(N714) );
  AND2X2 U4114 ( .A(n4873), .B(n4872), .Y(n2685) );
  AND2X2 U4115 ( .A(n4403), .B(n3499), .Y(n2688) );
  OAI22X1 U4117 ( .A0(median_sobel_inst_n381), .A1(n5928), .B0(
        median_sobel_inst_n373), .B1(n3484), .Y(n2690) );
  AND2X2 U4118 ( .A(n6246), .B(n6487), .Y(n2706) );
  OA21X4 U4120 ( .A0(median_sobel_inst_n382), .A1(n4525), .B0(n4066), .Y(n2709) );
  OR2X4 U4121 ( .A(n4238), .B(n5846), .Y(n3729) );
  NAND3X6 U4122 ( .A(n4013), .B(n4014), .C(n4012), .Y(n2716) );
  CLKINVX1 U4123 ( .A(n3288), .Y(n6171) );
  OR2X8 U4124 ( .A(n3274), .B(n7025), .Y(n2719) );
  INVX4 U4125 ( .A(n3397), .Y(n5840) );
  CLKBUFX3 U4126 ( .A(n3479), .Y(n2776) );
  AND2X2 U4127 ( .A(x_origin_r_1_), .B(n469), .Y(n5818) );
  INVX4 U4128 ( .A(n2915), .Y(n4510) );
  NOR2X1 U4129 ( .A(conv_inst_n38), .B(n4227), .Y(n3726) );
  CLKBUFX8 U4130 ( .A(n846), .Y(n5578) );
  AOI21X1 U4131 ( .A0(n3068), .A1(n6829), .B0(n3924), .Y(n2744) );
  NOR2X4 U4134 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), .Y(n2752) );
  NOR2X1 U4135 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n5), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n7), .Y(n2754) );
  AND2X2 U4136 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n2755)
         );
  NAND2XL U4137 ( .A(n6910), .B(
        median_sobel_inst_u_median_filter_submodule_net22699), .Y(n2757) );
  OR2X2 U4138 ( .A(n6171), .B(n3284), .Y(n2761) );
  NAND2X4 U4139 ( .A(n6182), .B(n6183), .Y(n6214) );
  AND2X2 U4140 ( .A(n3058), .B(
        median_sobel_inst_u_median_filter_submodule_n203), .Y(n2765) );
  NAND3X2 U4141 ( .A(n3058), .B(n3309), .C(
        median_sobel_inst_u_median_filter_submodule_n124), .Y(n3022) );
  AND2X2 U4142 ( .A(n3164), .B(n6306), .Y(n2767) );
  AND2X4 U4143 ( .A(n3467), .B(n3466), .Y(n2770) );
  NAND2X6 U4144 ( .A(n2921), .B(n2920), .Y(n5634) );
  NOR2X8 U4145 ( .A(n3998), .B(n3997), .Y(n5337) );
  NAND2BX2 U4149 ( .AN(n2739), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .Y(n5660) );
  BUFX20 U4151 ( .A(n3487), .Y(n2774) );
  NOR2X6 U4152 ( .A(n3552), .B(conv_inst_n27), .Y(n3487) );
  AOI2BB2X2 U4154 ( .B0(n4403), .B1(median_sobel_inst_n672), .A0N(n4308), 
        .A1N(median_sobel_inst_n368), .Y(n4404) );
  NAND3X2 U4155 ( .A(n3699), .B(n3698), .C(n3395), .Y(n3394) );
  CLKXOR2X4 U4156 ( .A(conv_inst_data_abc_1_r[7]), .B(conv_inst_conv_1_r[7]), 
        .Y(n4326) );
  NAND2X4 U4157 ( .A(n3007), .B(n3009), .Y(n3008) );
  NAND2X2 U4158 ( .A(n6427), .B(n6426), .Y(n1440) );
  NAND2X2 U4160 ( .A(n6468), .B(n6467), .Y(n1441) );
  NAND2X2 U4161 ( .A(n6020), .B(n6574), .Y(n3025) );
  NAND3X2 U4163 ( .A(n6275), .B(n6269), .C(n6653), .Y(n2934) );
  NAND2X4 U4164 ( .A(n2798), .B(n2792), .Y(n2791) );
  NAND2X6 U4167 ( .A(n3882), .B(n3480), .Y(n3573) );
  INVX2 U4168 ( .A(median_sobel_inst_data_a_r[5]), .Y(n5851) );
  NAND2X4 U4169 ( .A(n5933), .B(median_sobel_inst_data_c_r[3]), .Y(n5934) );
  INVX4 U4170 ( .A(n3310), .Y(n3308) );
  INVX3 U4173 ( .A(n5910), .Y(n3653) );
  NOR2X4 U4174 ( .A(n5908), .B(median_sobel_inst_data_h_r[4]), .Y(n2799) );
  NAND2X2 U4175 ( .A(n5908), .B(median_sobel_inst_data_h_r[4]), .Y(n2793) );
  CLKINVX1 U4178 ( .A(n5949), .Y(median_sobel_inst_data_i_r[5]) );
  INVX3 U4179 ( .A(n3708), .Y(median_sobel_inst_data_e_r[7]) );
  NAND2X6 U4180 ( .A(n4135), .B(n4136), .Y(median_sobel_inst_data_d_r[2]) );
  NAND2X2 U4183 ( .A(n3049), .B(n2697), .Y(n3052) );
  OAI21X1 U4185 ( .A0(n5511), .A1(n6902), .B0(n4864), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[2]) );
  CLKMX2X2 U4188 ( .A(n6812), .B(median_sobel_inst_G[22]), .S0(n4481), .Y(
        median_sobel_inst_u_sober_compare_submodule_n114) );
  CLKMX2X2 U4189 ( .A(median_sobel_inst_G[1]), .B(n6857), .S0(n4481), .Y(
        median_sobel_inst_n458) );
  CLKMX2X2 U4190 ( .A(median_sobel_inst_G[3]), .B(n6566), .S0(n4481), .Y(
        median_sobel_inst_n446) );
  NAND2X6 U4191 ( .A(n6429), .B(n5197), .Y(n4044) );
  XNOR2X2 U4192 ( .A(n5699), .B(n5698), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]) );
  OAI22X1 U4193 ( .A0(conv_inst_n11), .A1(n5449), .B0(n4474), .B1(n6481), .Y(
        conv_inst_N125) );
  CLKMX2X2 U4197 ( .A(n6804), .B(median_sobel_inst_G[14]), .S0(n4481), .Y(
        median_sobel_inst_u_sober_compare_submodule_n128) );
  NOR2X1 U4199 ( .A(n6601), .B(n4481), .Y(
        median_sobel_inst_u_sober_compare_submodule_N29) );
  NAND2X1 U4201 ( .A(n4430), .B(median_sobel_inst_n669), .Y(n4433) );
  INVX1 U4203 ( .A(n3451), .Y(n4693) );
  INVX6 U4204 ( .A(n5576), .Y(n6001) );
  OAI21X1 U4205 ( .A0(n2679), .A1(n6134), .B0(n6136), .Y(n4738) );
  NAND2X2 U4206 ( .A(n3130), .B(n3128), .Y(n4167) );
  NOR2BX1 U4207 ( .AN(n5808), .B(n5807), .Y(n5809) );
  CLKMX2X2 U4211 ( .A(n6763), .B(median_sobel_inst_n711), .S0(n5378), .Y(
        median_sobel_inst_n545) );
  CLKMX2X2 U4212 ( .A(n6870), .B(median_sobel_inst_n678), .S0(n5378), .Y(
        median_sobel_inst_n574) );
  NAND3X2 U4213 ( .A(n5078), .B(n4514), .C(n4511), .Y(n4074) );
  CLKINVX1 U4216 ( .A(n5056), .Y(n4620) );
  NAND2BX2 U4217 ( .AN(n5967), .B(n5966), .Y(n3086) );
  NAND2X4 U4218 ( .A(n3067), .B(n6654), .Y(n4883) );
  AOI21X1 U4220 ( .A0(n6126), .A1(n5702), .B0(n5694), .Y(n5695) );
  INVX3 U4222 ( .A(n6155), .Y(n6154) );
  INVX3 U4223 ( .A(n3891), .Y(n2991) );
  INVX3 U4224 ( .A(n5918), .Y(n3191) );
  NAND2X1 U4226 ( .A(n4948), .B(n5130), .Y(n4949) );
  INVX3 U4227 ( .A(n2886), .Y(n2885) );
  OAI22X1 U4228 ( .A0(n5920), .A1(n6649), .B0(n801), .B1(n5846), .Y(n5812) );
  NAND2X1 U4229 ( .A(n5702), .B(n6122), .Y(n5703) );
  NAND2X6 U4230 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(n5377) );
  INVX1 U4231 ( .A(n3132), .Y(n3129) );
  INVX1 U4233 ( .A(n5397), .Y(n5399) );
  CLKINVX1 U4236 ( .A(n3739), .Y(n6469) );
  INVX1 U4237 ( .A(n5716), .Y(n5011) );
  CLKINVX1 U4238 ( .A(n5410), .Y(n5412) );
  INVX1 U4239 ( .A(n4687), .Y(n4689) );
  INVX3 U4240 ( .A(n6366), .Y(n6367) );
  INVX6 U4241 ( .A(n5818), .Y(n5846) );
  INVX3 U4242 ( .A(n3953), .Y(n3039) );
  INVX3 U4243 ( .A(n3749), .Y(n3750) );
  OA21X2 U4245 ( .A0(n792), .A1(n802), .B0(n800), .Y(n6392) );
  NOR2X1 U4246 ( .A(n6738), .B(n6513), .Y(n6151) );
  NAND2X1 U4248 ( .A(median_sobel_inst_u_median_filter_submodule_net58169), 
        .B(median_sobel_inst_u_median_filter_submodule_net22696), .Y(n3947) );
  INVX3 U4249 ( .A(n6900), .Y(n5033) );
  AOI22X1 U4250 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[20]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n48), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n52), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n73), .Y(n4186) );
  CLKINVX1 U4251 ( .A(median_sobel_inst_u_median_filter_submodule_net22695), 
        .Y(n3034) );
  INVX1 U4252 ( .A(n6738), .Y(n2977) );
  NOR2X4 U4253 ( .A(n6616), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n4685) );
  NAND2X1 U4254 ( .A(n6645), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n55), .Y(n5130) );
  NAND3X2 U4255 ( .A(n3027), .B(n3026), .C(n3025), .Y(n7004) );
  AND2X4 U4256 ( .A(n4081), .B(n2767), .Y(n6486) );
  NAND3X2 U4259 ( .A(n6028), .B(n6027), .C(n6026), .Y(n6994) );
  NAND3X2 U4260 ( .A(n6324), .B(n6323), .C(n6440), .Y(sram_addr_wait_r[28]) );
  NAND3X2 U4261 ( .A(n6045), .B(n6044), .C(n6043), .Y(n6995) );
  INVX12 U4262 ( .A(n3729), .Y(n5884) );
  NAND3X2 U4263 ( .A(n6038), .B(n6037), .C(n6036), .Y(n6992) );
  NAND3X2 U4265 ( .A(n3013), .B(
        median_sobel_inst_u_median_filter_submodule_n227), .C(n6039), .Y(n6045) );
  INVX6 U4266 ( .A(n3882), .Y(n3575) );
  NAND2X6 U4267 ( .A(n3316), .B(n3887), .Y(n3892) );
  NOR2X2 U4269 ( .A(n5906), .B(n2667), .Y(n3277) );
  NAND2X2 U4270 ( .A(n6042), .B(n6563), .Y(n6026) );
  NOR2X2 U4273 ( .A(median_sobel_inst_data_d_r[6]), .B(n5853), .Y(n2840) );
  CLKINVX1 U4275 ( .A(n5912), .Y(n3006) );
  NAND2X6 U4276 ( .A(n6430), .B(n6316), .Y(n6357) );
  NAND2X2 U4277 ( .A(n5850), .B(median_sobel_inst_data_d_r[2]), .Y(n2859) );
  CLKINVX1 U4278 ( .A(n3616), .Y(median_sobel_inst_data_c_r[0]) );
  INVX12 U4279 ( .A(n3015), .Y(n3537) );
  INVX3 U4280 ( .A(median_sobel_inst_data_a_r[5]), .Y(n2782) );
  INVX3 U4281 ( .A(n5907), .Y(n2959) );
  INVX3 U4282 ( .A(n4232), .Y(n4500) );
  XNOR2X2 U4285 ( .A(n6244), .B(n6243), .Y(n6245) );
  INVX3 U4288 ( .A(median_sobel_inst_data_c_r[3]), .Y(n5944) );
  NAND2X4 U4290 ( .A(n3540), .B(n3922), .Y(n3069) );
  INVX4 U4291 ( .A(n5892), .Y(median_sobel_inst_data_b_r[0]) );
  NOR2X4 U4292 ( .A(n4169), .B(n3126), .Y(n3125) );
  NAND2X6 U4294 ( .A(n4126), .B(n4125), .Y(n3692) );
  NAND2X4 U4295 ( .A(n2877), .B(n2875), .Y(n2883) );
  INVX12 U4297 ( .A(n3042), .Y(n3046) );
  NAND2X6 U4298 ( .A(n4289), .B(n3179), .Y(median_sobel_inst_data_h_r[5]) );
  NAND2X4 U4299 ( .A(n3151), .B(n2707), .Y(n3061) );
  NOR2X4 U4300 ( .A(n2937), .B(n3749), .Y(n2918) );
  OAI22X1 U4302 ( .A0(n6538), .A1(n4476), .B0(n4474), .B1(n6731), .Y(
        conv_inst_N129) );
  OAI22X1 U4303 ( .A0(n6952), .A1(n4476), .B0(n4474), .B1(n6954), .Y(
        conv_inst_N144) );
  NAND2X1 U4304 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), 
        .B(n6001), .Y(n5116) );
  INVX3 U4305 ( .A(n2853), .Y(n2852) );
  NAND2X4 U4306 ( .A(n2946), .B(n2945), .Y(n3956) );
  NOR2X4 U4309 ( .A(n3116), .B(n3113), .Y(n3112) );
  CLKMX2X2 U4310 ( .A(n6558), .B(median_sobel_inst_G[12]), .S0(n3724), .Y(
        median_sobel_inst_u_sober_compare_submodule_n126) );
  CLKMX2X2 U4311 ( .A(n6803), .B(median_sobel_inst_G[13]), .S0(n3724), .Y(
        median_sobel_inst_u_sober_compare_submodule_n127) );
  INVX4 U4314 ( .A(n4975), .Y(n5463) );
  NAND2X1 U4316 ( .A(median_sobel_inst_n869), .B(n4430), .Y(n4089) );
  AND2X2 U4319 ( .A(n5138), .B(n5137), .Y(n5139) );
  NOR2X6 U4321 ( .A(n5138), .B(n6630), .Y(n2853) );
  AND2X4 U4322 ( .A(n5167), .B(n5165), .Y(n2815) );
  NAND2X4 U4323 ( .A(n3086), .B(n3085), .Y(n3084) );
  OAI21X1 U4327 ( .A0(n5551), .A1(
        median_sobel_inst_u_median_filter_submodule_n68), .B0(n4475), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[0]) );
  NAND2X2 U4329 ( .A(median_sobel_inst_u_median_filter_submodule_n815), .B(
        n2885), .Y(n2884) );
  NAND2X1 U4330 ( .A(n5318), .B(n5317), .Y(n5319) );
  NAND2X1 U4331 ( .A(n5035), .B(n5034), .Y(n5036) );
  NAND2X1 U4332 ( .A(n5328), .B(n5327), .Y(n5329) );
  NAND2X1 U4333 ( .A(n5298), .B(n5297), .Y(n5299) );
  NAND2X1 U4334 ( .A(n5313), .B(n5312), .Y(n5314) );
  NAND2X1 U4335 ( .A(n5308), .B(n5307), .Y(n5309) );
  NAND2X1 U4336 ( .A(n5303), .B(n5302), .Y(n5304) );
  NAND2X1 U4337 ( .A(n5181), .B(n5232), .Y(n5182) );
  CLKINVX1 U4338 ( .A(n5960), .Y(n4597) );
  NAND2X1 U4340 ( .A(n4645), .B(n4684), .Y(n4646) );
  INVX1 U4341 ( .A(n4267), .Y(n2818) );
  NAND2X1 U4342 ( .A(n4740), .B(n4834), .Y(n4741) );
  NAND2X1 U4343 ( .A(n4989), .B(n4988), .Y(n4990) );
  INVX1 U4344 ( .A(n6109), .Y(n5672) );
  NAND2BX1 U4345 ( .AN(n2753), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n124), .Y(n3127) );
  INVX1 U4347 ( .A(n6096), .Y(n5723) );
  INVX1 U4348 ( .A(n6122), .Y(n5694) );
  NAND2X1 U4350 ( .A(n4771), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .Y(n4754) );
  CLKINVX1 U4352 ( .A(n5521), .Y(n5522) );
  CLKINVX1 U4353 ( .A(n4793), .Y(n4795) );
  NAND3X2 U4354 ( .A(median_sobel_inst_u_median_filter_submodule_n32), .B(
        n5962), .C(n3087), .Y(n5963) );
  CLKINVX1 U4355 ( .A(n2785), .Y(n3434) );
  NAND2X1 U4356 ( .A(n5748), .B(n5497), .Y(n5498) );
  CLKINVX1 U4357 ( .A(n3889), .Y(n3466) );
  AOI22X1 U4358 ( .A0(n5509), .A1(n6862), .B0(n5477), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(n4855) );
  AOI22X1 U4360 ( .A0(n5477), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .B0(n5509), 
        .B1(n6872), .Y(n4459) );
  INVX1 U4361 ( .A(n4987), .Y(n4989) );
  NOR2X1 U4362 ( .A(n6457), .B(x_minus_one_r_0_), .Y(n6458) );
  INVX3 U4363 ( .A(n3096), .Y(n3090) );
  AOI22X1 U4366 ( .A0(n5509), .A1(n6871), .B0(n5477), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n4384) );
  INVX1 U4367 ( .A(n5275), .Y(n5277) );
  AOI22X1 U4368 ( .A0(n5363), .A1(n5477), .B0(n5509), .B1(n6881), .Y(n4436) );
  CLKINVX1 U4369 ( .A(n6908), .Y(n5063) );
  NAND2X1 U4370 ( .A(median_sobel_inst_u_median_filter_submodule_net22691), 
        .B(median_sobel_inst_u_median_filter_submodule_net57730), .Y(n3973) );
  CLKMX2X2 U4371 ( .A(n465), .B(n437), .S0(op_mode_r_1_), .Y(n4972) );
  OR2X2 U4372 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n73), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n29), .Y(n3132) );
  NOR2X4 U4374 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), .Y(
        n4516) );
  CLKINVX1 U4375 ( .A(n6582), .Y(n2972) );
  NAND2X1 U4377 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(n6720), .Y(n2982) );
  NAND2X2 U4378 ( .A(conv_inst_data_bcd_4_r[10]), .B(conv_inst_conv_4_r[10]), 
        .Y(n4051) );
  INVX2 U4379 ( .A(median_sobel_inst_u_median_filter_submodule_n209), .Y(n5599) );
  BUFX2 U4380 ( .A(input_data_ready_r[25]), .Y(n3549) );
  INVX1 U4381 ( .A(median_sobel_inst_u_median_filter_submodule_n130), .Y(n3968) );
  INVX1 U4382 ( .A(median_sobel_inst_u_median_filter_submodule_n258), .Y(n2887) );
  INVX3 U4383 ( .A(median_sobel_inst_u_median_filter_submodule_net58553), .Y(
        n3953) );
  INVXL U4384 ( .A(conv_inst_n42), .Y(n6261) );
  NAND2X1 U4386 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n74), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n34), .Y(n4175) );
  NAND2X2 U4387 ( .A(n6484), .B(n831), .Y(n3545) );
  INVXL U4388 ( .A(median_sobel_inst_n715), .Y(n4056) );
  INVXL U4389 ( .A(median_sobel_inst_u_median_filter_submodule_n235), .Y(n3157) );
  OR2X2 U4390 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n5755)
         );
  NAND2X1 U4391 ( .A(input_data_ready_r[30]), .B(n6625), .Y(n3921) );
  NAND2X4 U4392 ( .A(n2838), .B(n5856), .Y(
        median_sobel_inst_u_median_filter_submodule_n752) );
  NAND2X6 U4393 ( .A(n3173), .B(n4317), .Y(n3172) );
  NAND3X6 U4394 ( .A(n2835), .B(n2839), .C(n2834), .Y(n2838) );
  NOR2X4 U4395 ( .A(n2950), .B(n2949), .Y(conv_inst_N249) );
  NAND2X4 U4396 ( .A(n6296), .B(n6306), .Y(n6297) );
  NOR2X4 U4397 ( .A(n4554), .B(n6291), .Y(conv_inst_N244) );
  NAND3X2 U4398 ( .A(n6347), .B(n6346), .C(n6345), .Y(n1434) );
  NAND3X2 U4399 ( .A(n5869), .B(n5868), .C(n5867), .Y(N706) );
  NAND2X6 U4400 ( .A(n2860), .B(n2859), .Y(n2858) );
  NAND2X6 U4401 ( .A(n2909), .B(n2905), .Y(n3406) );
  NAND2X6 U4402 ( .A(n2786), .B(n3194), .Y(n3693) );
  NAND3X2 U4403 ( .A(n5876), .B(n5875), .C(n5874), .Y(N707) );
  NAND2X6 U4404 ( .A(n3594), .B(n3125), .Y(n4471) );
  NOR2X4 U4405 ( .A(n6251), .B(n6291), .Y(conv_inst_N281) );
  NAND2X2 U4407 ( .A(n6020), .B(
        median_sobel_inst_u_median_filter_submodule_a5_r[2]), .Y(n3035) );
  NAND3X4 U4408 ( .A(n3425), .B(n3424), .C(n3423), .Y(n6985) );
  NAND2X6 U4410 ( .A(n2862), .B(n2861), .Y(n2860) );
  OAI2BB1X2 U4413 ( .A0N(n6395), .A1N(n3325), .B0(n3324), .Y(n1439) );
  INVX16 U4414 ( .A(n2869), .Y(n6246) );
  NAND3X2 U4415 ( .A(n6375), .B(n6374), .C(n6440), .Y(sram_addr_wait_r[20]) );
  NAND2X6 U4416 ( .A(n3184), .B(n3685), .Y(n2862) );
  NAND3X2 U4417 ( .A(n6035), .B(n6034), .C(n6033), .Y(n6993) );
  NOR2X2 U4418 ( .A(n4042), .B(n5613), .Y(conv_inst_N278) );
  NAND2X6 U4419 ( .A(n5590), .B(input_data_ready_r[22]), .Y(n6232) );
  NAND3X2 U4420 ( .A(n6025), .B(n6024), .C(n6023), .Y(n6996) );
  INVX6 U4421 ( .A(n5590), .Y(n3186) );
  NOR2X4 U4422 ( .A(n6258), .B(n6291), .Y(conv_inst_N231) );
  NAND2X6 U4424 ( .A(n3347), .B(n3354), .Y(n3646) );
  NAND2X6 U4425 ( .A(n6164), .B(n6163), .Y(n3569) );
  NAND2X2 U4428 ( .A(n5348), .B(n6527), .Y(n4081) );
  NAND3X2 U4429 ( .A(n6449), .B(n6448), .C(n6447), .Y(sram_addr_wait_r[1]) );
  NAND2X6 U4431 ( .A(n5349), .B(n3165), .Y(n3164) );
  NAND2X4 U4432 ( .A(n2794), .B(n2793), .Y(n2792) );
  NAND3X2 U4433 ( .A(n3013), .B(n6876), .C(n6039), .Y(n6038) );
  NOR2X1 U4434 ( .A(n4777), .B(n5613), .Y(conv_inst_N242) );
  NAND2X4 U4435 ( .A(n3537), .B(n3340), .Y(n3339) );
  NAND2X4 U4438 ( .A(n5863), .B(median_sobel_inst_data_a_r[7]), .Y(n5854) );
  NOR2BX2 U4439 ( .AN(n5837), .B(n5847), .Y(N688) );
  NAND2X2 U4441 ( .A(n5857), .B(median_sobel_inst_data_a_r[1]), .Y(n2861) );
  NAND2X2 U4442 ( .A(n6042), .B(n6489), .Y(n6033) );
  NOR3X4 U4443 ( .A(n6161), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .C(n2977), 
        .Y(n2976) );
  NAND3X2 U4444 ( .A(n3013), .B(
        median_sobel_inst_u_median_filter_submodule_n256), .C(n6039), .Y(n6035) );
  NAND2X4 U4446 ( .A(median_sobel_inst_data_d_r[5]), .B(n5851), .Y(n2842) );
  NAND2X6 U4447 ( .A(n2809), .B(n3959), .Y(n3978) );
  NAND3X4 U4448 ( .A(n3758), .B(n3756), .C(n3757), .Y(n5605) );
  AND2X2 U4452 ( .A(median_sobel_inst_ns[2]), .B(n5003), .Y(
        median_sobel_inst_N96) );
  NAND2X6 U4454 ( .A(n6145), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n6144) );
  CLKMX2X2 U4455 ( .A(n5054), .B(n5053), .S0(n472), .Y(n492) );
  NOR2X4 U4457 ( .A(n6245), .B(n6291), .Y(conv_inst_N229) );
  BUFX8 U4458 ( .A(n3310), .Y(n3059) );
  INVX3 U4459 ( .A(n4730), .Y(n2922) );
  INVX2 U4462 ( .A(median_sobel_inst_data_a_r[7]), .Y(n3400) );
  OAI2BB1X1 U4463 ( .A0N(n5564), .A1N(n5616), .B0(n5563), .Y(n490) );
  AND2X4 U4464 ( .A(n4364), .B(n4363), .Y(n2944) );
  INVX3 U4465 ( .A(median_sobel_inst_n110), .Y(n3212) );
  NAND2X1 U4466 ( .A(n5562), .B(y_origin_r_2_), .Y(n5563) );
  NOR2X1 U4468 ( .A(n4799), .B(n5613), .Y(conv_inst_N259) );
  NOR2X1 U4469 ( .A(n5786), .B(n6734), .Y(N866) );
  NAND4X1 U4470 ( .A(n4854), .B(n5166), .C(n6330), .D(n4853), .Y(n1437) );
  NAND2X6 U4471 ( .A(n2962), .B(n2961), .Y(n6145) );
  NOR2X1 U4472 ( .A(n4488), .B(n6291), .Y(conv_inst_N257) );
  NOR2X1 U4473 ( .A(n5110), .B(n6291), .Y(conv_inst_N223) );
  NAND2X6 U4474 ( .A(n3011), .B(n3010), .Y(n6040) );
  INVX3 U4475 ( .A(median_sobel_inst_data_d_r[3]), .Y(n2854) );
  NOR2X1 U4476 ( .A(n4866), .B(n5613), .Y(conv_inst_N226) );
  INVX1 U4477 ( .A(median_sobel_inst_n38), .Y(n5912) );
  AOI21X1 U4478 ( .A0(n5797), .A1(x_origin_r_1_), .B0(n5796), .Y(n5798) );
  INVX3 U4479 ( .A(median_sobel_inst_data_h_r[6]), .Y(n3632) );
  NAND2X6 U4480 ( .A(n6090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .Y(n6089) );
  NOR2X1 U4481 ( .A(n4792), .B(n5613), .Y(conv_inst_N276) );
  NAND2X6 U4483 ( .A(n2808), .B(n2806), .Y(n5141) );
  NOR2X1 U4484 ( .A(n5073), .B(n6291), .Y(conv_inst_N274) );
  NAND3X1 U4486 ( .A(n4711), .B(n4710), .C(n4709), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]) );
  NOR2X4 U4487 ( .A(n2916), .B(n2914), .Y(n3797) );
  NAND3X1 U4488 ( .A(n5598), .B(n5597), .C(n5596), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[1]) );
  NAND3X1 U4489 ( .A(n4932), .B(n4931), .C(n4930), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[2]) );
  CLKMX2X2 U4490 ( .A(median_sobel_inst_n690), .B(n6868), .S0(n5879), .Y(
        median_sobel_inst_n608) );
  INVX4 U4491 ( .A(n5997), .Y(n3011) );
  NAND3X1 U4492 ( .A(n5369), .B(n5368), .C(n5367), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[2]) );
  AOI21X1 U4493 ( .A0(n5544), .A1(n4621), .B0(n4620), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N70) );
  NAND2X6 U4494 ( .A(n3449), .B(n3448), .Y(n3447) );
  NAND2X6 U4495 ( .A(n5166), .B(n2815), .Y(n6341) );
  NAND3X1 U4496 ( .A(n5347), .B(n5346), .C(n5345), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[5]) );
  NAND3X1 U4499 ( .A(n4705), .B(n2764), .C(n4704), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]) );
  NAND3X1 U4500 ( .A(n4703), .B(n4702), .C(n4701), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]) );
  NAND3X1 U4502 ( .A(n4668), .B(n4667), .C(n4666), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]) );
  NAND3X1 U4503 ( .A(n4671), .B(n4670), .C(n4669), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]) );
  NAND3X1 U4504 ( .A(n4708), .B(n4707), .C(n4706), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]) );
  NAND3X1 U4505 ( .A(n5355), .B(n5354), .C(n5353), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[3]) );
  NAND2X4 U4506 ( .A(n5882), .B(n5883), .Y(median_sobel_inst_data_e_r[2]) );
  NAND2X1 U4507 ( .A(n5359), .B(n5358), .Y(conv_inst_N217) );
  NAND3X6 U4508 ( .A(n4092), .B(n4093), .C(n3135), .Y(
        median_sobel_inst_data_f_r[5]) );
  NAND3X1 U4509 ( .A(n5362), .B(n5361), .C(n5360), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[7]) );
  NAND3X1 U4510 ( .A(n4766), .B(n4765), .C(n4764), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]) );
  NAND3X1 U4511 ( .A(n4697), .B(n4696), .C(n4695), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]) );
  NAND3X1 U4512 ( .A(n4700), .B(n4699), .C(n4698), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]) );
  NAND3X1 U4513 ( .A(n5221), .B(n5220), .C(n5219), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[6]) );
  XOR2X2 U4514 ( .A(n4941), .B(n3438), .Y(n6634) );
  NAND2X1 U4515 ( .A(n5178), .B(n5177), .Y(conv_inst_N200) );
  MXI2X1 U4516 ( .A(median_sobel_inst_n219), .B(n869), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[42]) );
  NAND3X1 U4517 ( .A(n5218), .B(n5217), .C(n5216), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[0]) );
  NAND3X1 U4518 ( .A(n5366), .B(n5365), .C(n5364), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[4]) );
  NAND3X1 U4519 ( .A(n5066), .B(n5065), .C(n5064), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[2]) );
  NAND2X6 U4520 ( .A(n4043), .B(n4044), .Y(n3190) );
  INVX6 U4521 ( .A(n4438), .Y(n4334) );
  CLKMX2X2 U4522 ( .A(median_sobel_inst_n654), .B(n6755), .S0(n5879), .Y(
        median_sobel_inst_n597) );
  NAND2X1 U4523 ( .A(n5343), .B(n5342), .Y(conv_inst_N206) );
  NAND2X1 U4524 ( .A(i_op_valid), .B(n4845), .Y(n4854) );
  NAND3X1 U4525 ( .A(n5117), .B(n5116), .C(n5115), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[4]) );
  CLKMX2X2 U4526 ( .A(median_sobel_inst_G[25]), .B(n6851), .S0(n2776), .Y(
        median_sobel_inst_n483) );
  NOR2X1 U4527 ( .A(n5503), .B(n6291), .Y(conv_inst_N256) );
  NAND2X1 U4528 ( .A(n5341), .B(conv_inst_n32), .Y(n5206) );
  CLKMX2X2 U4529 ( .A(median_sobel_inst_angle[3]), .B(n6573), .S0(n5402), .Y(
        median_sobel_inst_n485) );
  NAND2X1 U4530 ( .A(n5341), .B(conv_inst_n113), .Y(n5178) );
  NAND2X1 U4531 ( .A(n5356), .B(conv_inst_n34), .Y(n5193) );
  NAND2X1 U4532 ( .A(n5357), .B(conv_inst_n21), .Y(n5192) );
  XOR2X1 U4534 ( .A(n4686), .B(n4646), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]) );
  NAND2X1 U4535 ( .A(n6001), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .Y(n5065) );
  CLKMX2X2 U4536 ( .A(median_sobel_inst_G[28]), .B(n6853), .S0(n2776), .Y(
        median_sobel_inst_n471) );
  NAND2X4 U4537 ( .A(n4584), .B(n7032), .Y(n3421) );
  AND2X2 U4538 ( .A(n5356), .B(conv_inst_n107), .Y(n6494) );
  NAND2X2 U4539 ( .A(n4111), .B(n4110), .Y(n4112) );
  CLKMX2X2 U4540 ( .A(median_sobel_inst_G[7]), .B(n6853), .S0(n5402), .Y(
        median_sobel_inst_n469) );
  CLKMX2X2 U4541 ( .A(median_sobel_inst_G[13]), .B(n6566), .S0(n5402), .Y(
        median_sobel_inst_n445) );
  CLKMX2X2 U4543 ( .A(median_sobel_inst_n672), .B(n6773), .S0(n5923), .Y(
        median_sobel_inst_n548) );
  CLKMX2X2 U4546 ( .A(median_sobel_inst_G[14]), .B(n6567), .S0(n5402), .Y(
        median_sobel_inst_n441) );
  CLKMX2X2 U4547 ( .A(median_sobel_inst_angle[2]), .B(n6858), .S0(n5402), .Y(
        median_sobel_inst_n489) );
  CLKMX2X2 U4548 ( .A(median_sobel_inst_G[4]), .B(n6851), .S0(n5402), .Y(
        median_sobel_inst_n481) );
  NAND2X1 U4549 ( .A(n5341), .B(conv_inst_n108), .Y(n5343) );
  CLKMX2X2 U4550 ( .A(median_sobel_inst_G[5]), .B(n6854), .S0(n5402), .Y(
        median_sobel_inst_n477) );
  NOR2X1 U4551 ( .A(n5449), .B(n6953), .Y(conv_inst_N134) );
  NAND2X6 U4552 ( .A(n4852), .B(n4851), .Y(n6312) );
  CLKMX2X2 U4553 ( .A(median_sobel_inst_G[8]), .B(n6855), .S0(n5402), .Y(
        median_sobel_inst_n465) );
  NOR2X6 U4554 ( .A(n2847), .B(n4202), .Y(n5418) );
  CLKMX2X2 U4555 ( .A(median_sobel_inst_G[9]), .B(n6856), .S0(n5402), .Y(
        median_sobel_inst_n461) );
  AOI21X1 U4556 ( .A0(n5749), .A1(n4398), .B0(n4397), .Y(n3737) );
  CLKMX2X2 U4557 ( .A(median_sobel_inst_G[11]), .B(n6564), .S0(n5402), .Y(
        median_sobel_inst_n453) );
  CLKMX2X2 U4558 ( .A(median_sobel_inst_G[32]), .B(n6564), .S0(n2776), .Y(
        median_sobel_inst_n455) );
  CLKMX2X2 U4559 ( .A(median_sobel_inst_G[12]), .B(n6565), .S0(n5402), .Y(
        median_sobel_inst_n449) );
  NAND2X4 U4560 ( .A(n6131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .Y(n6130) );
  NOR2X1 U4562 ( .A(n5090), .B(n6291), .Y(conv_inst_N273) );
  CLKMX2X2 U4563 ( .A(median_sobel_inst_G[10]), .B(n6857), .S0(n5402), .Y(
        median_sobel_inst_n457) );
  NAND2X1 U4564 ( .A(n5341), .B(conv_inst_n22), .Y(n5172) );
  NAND2X6 U4565 ( .A(n3557), .B(n2966), .Y(n6153) );
  NAND2X1 U4567 ( .A(n5357), .B(conv_inst_n34), .Y(n5171) );
  CLKMX2X2 U4568 ( .A(n6557), .B(median_sobel_inst_G[4]), .S0(n4478), .Y(
        median_sobel_inst_u_sober_compare_submodule_n118) );
  CLKINVX1 U4569 ( .A(n3457), .Y(n4667) );
  AND2X2 U4570 ( .A(n5334), .B(n6751), .Y(n6491) );
  NAND2X4 U4571 ( .A(n6117), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .Y(n6116) );
  AND2X2 U4572 ( .A(n5334), .B(n6752), .Y(n6479) );
  NOR2X1 U4573 ( .A(n5449), .B(n6954), .Y(conv_inst_N145) );
  NAND3X1 U4574 ( .A(n2719), .B(conv_out_valid_w), .C(n6863), .Y(
        out_valid_wait_r) );
  CLKMX2X2 U4576 ( .A(n6809), .B(median_sobel_inst_G[15]), .S0(n4478), .Y(
        median_sobel_inst_u_sober_compare_submodule_n107) );
  NOR2X4 U4577 ( .A(n4057), .B(n3639), .Y(n4059) );
  CLKINVX1 U4578 ( .A(n3459), .Y(n4670) );
  NAND2X1 U4580 ( .A(n5356), .B(conv_inst_n114), .Y(n5195) );
  CLKINVX1 U4581 ( .A(n3455), .Y(n4707) );
  XNOR2X2 U4582 ( .A(n5674), .B(n5673), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]) );
  NAND2X1 U4583 ( .A(n5356), .B(n6751), .Y(n5231) );
  AND2X2 U4584 ( .A(n2719), .B(result_w[12]), .Y(out_data_wait_r[12]) );
  NAND2X1 U4585 ( .A(n5356), .B(conv_inst_n102), .Y(n5359) );
  CLKINVX1 U4586 ( .A(n3456), .Y(n4710) );
  NOR2X1 U4587 ( .A(n5080), .B(n6291), .Y(conv_inst_N221) );
  CLKINVX1 U4588 ( .A(n3452), .Y(n4699) );
  NAND2X4 U4589 ( .A(n4033), .B(n3088), .Y(n3093) );
  CLKINVX1 U4590 ( .A(n3453), .Y(n4696) );
  CLKINVX1 U4591 ( .A(n3454), .Y(n4702) );
  AND2X2 U4592 ( .A(n2719), .B(result_w[11]), .Y(out_data_wait_r[11]) );
  NAND3X1 U4593 ( .A(n4694), .B(n4693), .C(n4692), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]) );
  XOR2X1 U4594 ( .A(n5020), .B(n4896), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]) );
  NAND2X1 U4598 ( .A(n4276), .B(n4275), .Y(n4278) );
  NOR3X1 U4599 ( .A(n6259), .B(n5068), .C(n4534), .Y(conv_inst_N219) );
  NAND2X1 U4601 ( .A(n4602), .B(n4601), .Y(n4603) );
  NOR2X1 U4602 ( .A(n5070), .B(n6291), .Y(conv_inst_N220) );
  CLKMX2X2 U4603 ( .A(median_sobel_inst_n662), .B(n6771), .S0(n5415), .Y(
        median_sobel_inst_n559) );
  CLKMX2X2 U4604 ( .A(median_sobel_inst_n674), .B(n6774), .S0(n5415), .Y(
        median_sobel_inst_n591) );
  XOR2X1 U4605 ( .A(n4751), .B(n2679), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N136) );
  NOR3X1 U4606 ( .A(n6259), .B(n5096), .C(n4529), .Y(conv_inst_N271) );
  NAND2X6 U4607 ( .A(n3935), .B(n3936), .Y(n4033) );
  CLKMX2X2 U4608 ( .A(n6841), .B(median_sobel_inst_n715), .S0(n5210), .Y(
        median_sobel_inst_n547) );
  NAND2X4 U4609 ( .A(n3433), .B(n6898), .Y(n5417) );
  INVX1 U4610 ( .A(n6328), .Y(n6329) );
  INVX4 U4611 ( .A(n3142), .Y(n3303) );
  CLKMX2X2 U4612 ( .A(n6761), .B(median_sobel_inst_n688), .S0(n5210), .Y(
        median_sobel_inst_n536) );
  NAND2X1 U4613 ( .A(n5613), .B(conv_isFirst_signal_r), .Y(n4063) );
  INVX16 U4614 ( .A(n4525), .Y(n4379) );
  CLKMX2X2 U4615 ( .A(median_sobel_inst_G[34]), .B(n6566), .S0(n3478), .Y(
        median_sobel_inst_n447) );
  CLKMX2X2 U4616 ( .A(median_sobel_inst_G[35]), .B(n6567), .S0(n3478), .Y(
        median_sobel_inst_n443) );
  CLKMX2X2 U4617 ( .A(median_sobel_inst_G[24]), .B(n6566), .S0(n5415), .Y(
        median_sobel_inst_n444) );
  CLKMX2X2 U4618 ( .A(median_sobel_inst_G[23]), .B(n6565), .S0(n5415), .Y(
        median_sobel_inst_n448) );
  NAND2X6 U4619 ( .A(n2970), .B(n4602), .Y(n3557) );
  CLKMX2X2 U4620 ( .A(median_sobel_inst_G[16]), .B(n6854), .S0(n5415), .Y(
        median_sobel_inst_n476) );
  CLKMX2X2 U4621 ( .A(median_sobel_inst_G[20]), .B(n6856), .S0(n5415), .Y(
        median_sobel_inst_n460) );
  CLKMX2X2 U4622 ( .A(median_sobel_inst_G[17]), .B(n6852), .S0(n5415), .Y(
        median_sobel_inst_n472) );
  CLKMX2X2 U4623 ( .A(median_sobel_inst_G[19]), .B(n6855), .S0(n5415), .Y(
        median_sobel_inst_n464) );
  NAND2X2 U4624 ( .A(n4513), .B(n4512), .Y(n4515) );
  CLKMX2X2 U4625 ( .A(n6883), .B(median_sobel_inst_n669), .S0(n4525), .Y(
        median_sobel_inst_n567) );
  NAND2X4 U4626 ( .A(n4970), .B(n4365), .Y(n4849) );
  INVX1 U4627 ( .A(n2819), .Y(n2820) );
  AOI21X1 U4629 ( .A0(n4735), .A1(n4648), .B0(n4647), .Y(n4651) );
  NAND2X6 U4630 ( .A(n4358), .B(n473), .Y(n5540) );
  NAND2X1 U4631 ( .A(n6000), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .Y(n5066) );
  OAI2BB1X1 U4632 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), 
        .A1N(n5554), .B0(n5553), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[7]) );
  NAND2X1 U4633 ( .A(n4657), .B(n4656), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[7]) );
  NAND2X1 U4634 ( .A(n4750), .B(n6136), .Y(n4751) );
  NOR2X1 U4635 ( .A(n5371), .B(n5370), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N132) );
  XNOR2X1 U4636 ( .A(n5435), .B(n5434), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]) );
  NAND2X1 U4637 ( .A(n4832), .B(n4944), .Y(n4833) );
  NAND2X1 U4638 ( .A(n4632), .B(n4829), .Y(n4633) );
  NAND2X1 U4639 ( .A(n4624), .B(n4623), .Y(n4625) );
  NAND2X1 U4642 ( .A(n4927), .B(n5484), .Y(n4928) );
  INVX1 U4643 ( .A(n5129), .Y(n4951) );
  NAND2X1 U4644 ( .A(n6000), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .Y(n6005) );
  NAND2X1 U4645 ( .A(n4648), .B(n4733), .Y(n4611) );
  AND2X2 U4646 ( .A(n5446), .B(n4590), .Y(conv_inst_data_abc_w[0]) );
  NAND2X6 U4647 ( .A(n3603), .B(n3536), .Y(n3602) );
  XNOR2X1 U4648 ( .A(n5401), .B(n5400), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]) );
  NAND3X1 U4649 ( .A(n4756), .B(n4755), .C(n4754), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[2]) );
  NAND2X4 U4650 ( .A(n3306), .B(n3877), .Y(n3301) );
  NAND2X1 U4652 ( .A(n6000), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .Y(n5282) );
  NOR2X4 U4653 ( .A(n5158), .B(n6555), .Y(n5204) );
  NAND2X1 U4654 ( .A(n5129), .B(n4952), .Y(n4947) );
  NAND2BX1 U4655 ( .AN(n2754), .B(n5135), .Y(n3464) );
  NAND2X1 U4656 ( .A(n6000), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .Y(n5333) );
  NAND2X1 U4657 ( .A(n6000), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .Y(n5117) );
  NOR2X1 U4658 ( .A(conv_inst_n13), .B(n4474), .Y(conv_inst_N135) );
  NOR2X1 U4659 ( .A(conv_inst_n11), .B(n4474), .Y(conv_inst_N124) );
  NAND2X1 U4661 ( .A(n4597), .B(
        median_sobel_inst_u_median_filter_submodule_n37), .Y(
        median_sobel_inst_u_median_filter_submodule_n826) );
  NAND3X1 U4662 ( .A(n4774), .B(n4773), .C(n4772), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[1]) );
  NAND2X4 U4663 ( .A(n3091), .B(n3090), .Y(n3095) );
  AOI22X1 U4664 ( .A0(n5560), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .B0(n4842), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .Y(n4382)
         );
  NAND2X1 U4665 ( .A(n4895), .B(n5665), .Y(n4896) );
  NAND2X1 U4666 ( .A(n2830), .B(n6306), .Y(n2829) );
  NAND2X1 U4667 ( .A(n4996), .B(n4995), .Y(n4997) );
  INVX1 U4668 ( .A(n4908), .Y(n4909) );
  NAND2X1 U4669 ( .A(n5399), .B(n5398), .Y(n5401) );
  INVX3 U4670 ( .A(n4075), .Y(n4077) );
  OAI21X2 U4671 ( .A0(n4613), .A1(n4623), .B0(n4614), .Y(n4490) );
  NAND2X1 U4672 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), 
        .B(n4822), .Y(n4824) );
  NAND2X1 U4674 ( .A(n6008), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n4800) );
  INVX1 U4675 ( .A(n5460), .Y(n4977) );
  NAND2X1 U4677 ( .A(n5461), .B(n5460), .Y(n5462) );
  NAND2X1 U4678 ( .A(n5466), .B(n5465), .Y(n5467) );
  NAND2X1 U4679 ( .A(n5389), .B(n5388), .Y(n5391) );
  NAND2X1 U4680 ( .A(n5470), .B(n5469), .Y(n5471) );
  NAND2X1 U4681 ( .A(n4889), .B(n5715), .Y(n4890) );
  AOI22X1 U4682 ( .A0(n5560), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .B0(n4842), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .Y(n4435)
         );
  NAND2X1 U4683 ( .A(n4886), .B(n5691), .Y(n4887) );
  NAND2X1 U4685 ( .A(n4639), .B(n4899), .Y(n4640) );
  NAND2X1 U4686 ( .A(n5672), .B(n6107), .Y(n5673) );
  INVX1 U4688 ( .A(n4629), .Y(n4607) );
  NAND2X1 U4690 ( .A(n4653), .B(n4827), .Y(n4654) );
  NAND2X1 U4691 ( .A(n5456), .B(n5455), .Y(n5457) );
  NAND2X1 U4692 ( .A(n4745), .B(n4744), .Y(n4746) );
  NAND2X4 U4693 ( .A(n2985), .B(n5612), .Y(n2984) );
  NAND2X1 U4695 ( .A(n4937), .B(n5483), .Y(n4938) );
  NAND2X1 U4696 ( .A(n6002), .B(n5063), .Y(n5064) );
  NAND2X1 U4697 ( .A(n4905), .B(n4925), .Y(n4906) );
  NAND2X1 U4698 ( .A(n5423), .B(n5422), .Y(n5425) );
  NAND2X2 U4699 ( .A(n3536), .B(n3745), .Y(n3065) );
  NAND2X1 U4700 ( .A(n5285), .B(n5284), .Y(n5286) );
  NAND2X1 U4701 ( .A(n4813), .B(n5250), .Y(n4814) );
  NAND2X1 U4702 ( .A(n5738), .B(n5737), .Y(n5739) );
  NAND2X1 U4703 ( .A(n4795), .B(n4794), .Y(n4796) );
  NAND2X1 U4704 ( .A(n5394), .B(n5393), .Y(n5396) );
  NAND2X4 U4705 ( .A(n5528), .B(n4190), .Y(n5761) );
  INVX1 U4706 ( .A(n4942), .Y(n4832) );
  INVX1 U4707 ( .A(n2752), .Y(n4927) );
  NAND2X1 U4708 ( .A(n5226), .B(n5267), .Y(n5227) );
  NAND2X1 U4709 ( .A(n5412), .B(n5411), .Y(n5414) );
  NAND2X1 U4710 ( .A(n4892), .B(n5641), .Y(n4893) );
  NOR2X1 U4711 ( .A(n4610), .B(n5801), .Y(n2650) );
  NAND2X1 U4712 ( .A(n5384), .B(n5383), .Y(n5386) );
  INVX1 U4713 ( .A(n5524), .Y(n5255) );
  INVX1 U4714 ( .A(n4622), .Y(n4624) );
  INVX1 U4715 ( .A(n6134), .Y(n4750) );
  NAND2X1 U4716 ( .A(n4962), .B(n4961), .Y(n4963) );
  NAND2X1 U4717 ( .A(n3783), .B(n5150), .Y(n3784) );
  INVX1 U4718 ( .A(n5239), .Y(n5242) );
  NOR2X4 U4719 ( .A(n2872), .B(n2886), .Y(n2871) );
  NAND2X1 U4720 ( .A(n5236), .B(n5235), .Y(n5237) );
  AOI22X1 U4721 ( .A0(n5363), .A1(n6008), .B0(n5215), .B1(n6881), .Y(n4875) );
  NAND2X1 U4722 ( .A(n5428), .B(n5427), .Y(n5430) );
  INVX1 U4724 ( .A(n5060), .Y(n4673) );
  NAND2X1 U4725 ( .A(n5661), .B(n5660), .Y(n5662) );
  NAND2X1 U4726 ( .A(n3780), .B(n5149), .Y(n3781) );
  NAND2X1 U4727 ( .A(n5290), .B(n5289), .Y(n5291) );
  INVX1 U4728 ( .A(n4993), .Y(n4983) );
  NAND2X1 U4729 ( .A(n4649), .B(n4732), .Y(n4650) );
  NAND2X1 U4730 ( .A(n6002), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .Y(n5331) );
  NAND2X1 U4731 ( .A(n4940), .B(n4943), .Y(n4941) );
  NAND2X1 U4732 ( .A(n4921), .B(n4920), .Y(n4922) );
  NAND2X1 U4734 ( .A(n5657), .B(n5656), .Y(n5658) );
  BUFX4 U4735 ( .A(n6171), .Y(n3450) );
  NAND2X1 U4737 ( .A(n4736), .B(n6135), .Y(n4737) );
  INVX1 U4738 ( .A(n6120), .Y(n5701) );
  NAND2X1 U4740 ( .A(n5682), .B(n5681), .Y(n5683) );
  AOI22X1 U4742 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), 
        .A1(n5060), .B0(n5062), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .Y(n4464) );
  NOR2X1 U4743 ( .A(n4532), .B(n4531), .Y(n4533) );
  NAND2X1 U4744 ( .A(n5433), .B(n5432), .Y(n5435) );
  AOI22X1 U4745 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), 
        .A1(n5560), .B0(n4842), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .Y(n4453) );
  NAND2X1 U4746 ( .A(n5060), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .Y(n4657) );
  AOI22X1 U4747 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), 
        .A1(n5560), .B0(n4842), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .Y(n4383) );
  NAND2X1 U4748 ( .A(conv_inst_conv_4_r[15]), .B(n4267), .Y(n4276) );
  AOI22X1 U4749 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), 
        .A1(n5060), .B0(n5062), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n4446) );
  INVX1 U4750 ( .A(n6137), .Y(n4736) );
  INVX1 U4751 ( .A(n5121), .Y(n4581) );
  INVX1 U4755 ( .A(n4604), .Y(n4504) );
  INVX1 U4756 ( .A(n6123), .Y(n5697) );
  INVX1 U4757 ( .A(n4743), .Y(n4745) );
  NAND2X4 U4758 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(n2788), .Y(n4733) );
  INVX1 U4760 ( .A(n4759), .Y(n4761) );
  INVX1 U4761 ( .A(n5233), .Y(n5181) );
  NAND2X1 U4762 ( .A(n5751), .B(n5750), .Y(n5752) );
  INVX1 U4763 ( .A(n5251), .Y(n4869) );
  INVX1 U4764 ( .A(n5431), .Y(n5433) );
  NOR2X1 U4765 ( .A(N732), .B(n469), .Y(n4610) );
  INVX1 U4766 ( .A(n5465), .Y(n4959) );
  INVX1 U4767 ( .A(n5692), .Y(n5006) );
  INVX1 U4769 ( .A(n5026), .Y(n5028) );
  INVX1 U4770 ( .A(n3990), .Y(n3793) );
  INVX1 U4771 ( .A(n3988), .Y(n3792) );
  NOR2X4 U4772 ( .A(n6063), .B(n3503), .Y(n3658) );
  AND2X2 U4773 ( .A(n5755), .B(n5758), .Y(n4498) );
  NAND2X1 U4775 ( .A(n5062), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .Y(n4772) );
  INVX1 U4776 ( .A(n5094), .Y(n5095) );
  NAND2X1 U4777 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), 
        .B(n4771), .Y(n4773) );
  INVX1 U4778 ( .A(n4837), .Y(n4839) );
  INVX1 U4779 ( .A(n4530), .Y(n4532) );
  NAND3X1 U4780 ( .A(conv_inst_cs_0_), .B(n4399), .C(n6560), .Y(n4062) );
  INVX1 U4781 ( .A(n5639), .Y(n4892) );
  NAND2X1 U4782 ( .A(n6166), .B(n6165), .Y(n5492) );
  INVX1 U4783 ( .A(n5268), .Y(n5226) );
  NAND3X1 U4784 ( .A(conv_inst_cs_0_), .B(conv_inst_n93), .C(n4399), .Y(n4400)
         );
  NOR2X1 U4785 ( .A(n5381), .B(n5380), .Y(conv_inst_data_bcd_w[0]) );
  INVX3 U4787 ( .A(n4335), .Y(n4441) );
  INVX1 U4788 ( .A(n5663), .Y(n4895) );
  NAND2X4 U4791 ( .A(n3545), .B(n5381), .Y(n3536) );
  INVX1 U4792 ( .A(n5689), .Y(n4886) );
  INVX1 U4793 ( .A(n4613), .Y(n4615) );
  INVX1 U4794 ( .A(n5436), .Y(n5438) );
  NOR2X4 U4795 ( .A(n3273), .B(n4568), .Y(n3275) );
  INVX1 U4796 ( .A(n5485), .Y(n4937) );
  OR2X4 U4798 ( .A(n3923), .B(n856), .Y(n3068) );
  NAND2X1 U4799 ( .A(n5523), .B(n5521), .Y(n5257) );
  XOR2X2 U4800 ( .A(n2788), .B(n2790), .Y(n2966) );
  NAND2BX2 U4802 ( .AN(n6876), .B(n6518), .Y(n3155) );
  INVX1 U4803 ( .A(n3773), .Y(n5470) );
  NAND2X1 U4804 ( .A(n5741), .B(n5499), .Y(n5500) );
  OAI2BB1X1 U4805 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_n54), 
        .A1N(median_sobel_inst_u_sobel_gradient_submodule_n64), .B0(n5184), 
        .Y(n5185) );
  INVX1 U4806 ( .A(n5392), .Y(n5394) );
  INVX1 U4807 ( .A(n5248), .Y(n4813) );
  INVX1 U4808 ( .A(n4994), .Y(n4996) );
  INVX1 U4809 ( .A(n4897), .Y(n4639) );
  INVX1 U4810 ( .A(n5403), .Y(n5405) );
  INVX1 U4811 ( .A(n4815), .Y(n4817) );
  INVX1 U4812 ( .A(n5666), .Y(n5021) );
  NAND2X1 U4813 ( .A(n5395), .B(n4592), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]) );
  INVX1 U4814 ( .A(n5283), .Y(n5285) );
  INVX1 U4815 ( .A(n5421), .Y(n5423) );
  INVX1 U4816 ( .A(n4781), .Y(n4783) );
  NAND2X1 U4817 ( .A(n6391), .B(x_minus_one_r_0_), .Y(n6362) );
  AND2X2 U4818 ( .A(n5748), .B(n5751), .Y(n4398) );
  INVX1 U4819 ( .A(n4835), .Y(n4740) );
  XOR2X1 U4820 ( .A(n3742), .B(input_data_ready_r[29]), .Y(n3336) );
  ACHCINX2 U4822 ( .CIN(n3162), .A(
        median_sobel_inst_u_median_filter_submodule_a6_r[5]), .B(n6587), .CO(
        n3951) );
  INVX1 U4823 ( .A(n5497), .Y(n5747) );
  NAND2X1 U4824 ( .A(n5758), .B(n5757), .Y(n5759) );
  NAND2X1 U4825 ( .A(n5245), .B(n5244), .Y(n5246) );
  INVX1 U4826 ( .A(n4945), .Y(n4940) );
  INVX3 U4828 ( .A(n4771), .Y(n5061) );
  CLKINVX1 U4829 ( .A(n3855), .Y(n3854) );
  INVX1 U4830 ( .A(n5709), .Y(n5711) );
  NAND2X1 U4833 ( .A(median_sobel_inst_u_sober_compare_submodule_n34), .B(
        n6179), .Y(n4765) );
  INVX1 U4834 ( .A(n5234), .Y(n5236) );
  INVX1 U4835 ( .A(n6085), .Y(n3115) );
  AND2X2 U4836 ( .A(n5741), .B(n5744), .Y(n5157) );
  INVX1 U4837 ( .A(n5628), .Y(n4006) );
  INVX1 U4838 ( .A(n5499), .Y(n5740) );
  INVX1 U4839 ( .A(n5469), .Y(n3769) );
  INVX1 U4840 ( .A(n5288), .Y(n5290) );
  INVX1 U4841 ( .A(n5132), .Y(n4948) );
  OAI2BB1X2 U4842 ( .A0N(median_sobel_inst_u_median_filter_submodule_n209), 
        .A1N(n3841), .B0(n3822), .Y(n3824) );
  NAND2X2 U4843 ( .A(median_sobel_inst_u_median_filter_submodule_net22685), 
        .B(n3953), .Y(n3960) );
  AND2X2 U4844 ( .A(n4325), .B(n4323), .Y(n2865) );
  INVX1 U4845 ( .A(n4919), .Y(n4921) );
  NOR2X4 U4846 ( .A(n3583), .B(n3582), .Y(n3581) );
  NAND2X4 U4847 ( .A(n871), .B(n5033), .Y(n5325) );
  NOR2X1 U4848 ( .A(n6510), .B(n6644), .Y(n4329) );
  NAND2X1 U4850 ( .A(median_sobel_inst_u_sober_compare_submodule_n1), .B(
        median_sobel_inst_u_sober_compare_submodule_n2), .Y(n4416) );
  INVX1 U4851 ( .A(median_sobel_inst_u_median_filter_submodule_n176), .Y(n4017) );
  INVX1 U4852 ( .A(n839), .Y(n3231) );
  INVX1 U4853 ( .A(median_sobel_inst_u_median_filter_submodule_n9), .Y(n5515)
         );
  NOR2X1 U4854 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n64), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n46), .Y(n5058) );
  INVX1 U4855 ( .A(n6478), .Y(n3360) );
  NAND2X1 U4856 ( .A(n6502), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n5743) );
  INVX1 U4857 ( .A(median_sobel_inst_n702), .Y(n3909) );
  AOI21X1 U4858 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n23), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n89), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .Y(
        n4189) );
  NAND2BX1 U4860 ( .AN(n6644), .B(conv_inst_n44), .Y(n3167) );
  INVX1 U4862 ( .A(n6903), .Y(n5363) );
  AND2X2 U4863 ( .A(n6594), .B(
        median_sobel_inst_u_median_filter_submodule_n792), .Y(n3162) );
  NOR2X1 U4864 ( .A(conv_inst_data_abc_1_r[0]), .B(conv_inst_conv_1_r[0]), .Y(
        n4534) );
  INVX1 U4865 ( .A(n6738), .Y(n3561) );
  INVX1 U4866 ( .A(n6753), .Y(n3365) );
  INVX1 U4867 ( .A(median_sobel_inst_u_median_filter_submodule_net57730), .Y(
        n3974) );
  NOR2X1 U4869 ( .A(median_sobel_inst_u_median_filter_submodule_n241), .B(
        n6899), .Y(n6050) );
  NAND2X1 U4871 ( .A(median_sobel_inst_u_sober_compare_submodule_temp_a_r_6_), 
        .B(median_sobel_inst_u_sober_compare_submodule_n11), .Y(n4415) );
  AND2X2 U4873 ( .A(conv_inst_data_bcd_4_r[8]), .B(conv_inst_conv_4_r[8]), .Y(
        n3096) );
  INVX1 U4876 ( .A(median_sobel_inst_u_median_filter_submodule_n258), .Y(n6229) );
  NOR2X1 U4877 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n65), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n42), .Y(n4716) );
  NOR2X1 U4878 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n64), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n45), .Y(n4621) );
  NOR3X2 U4879 ( .A(n6896), .B(n831), .C(n8660), .Y(n2958) );
  NOR2X4 U4880 ( .A(n6897), .B(n6898), .Y(n2957) );
  NAND2X1 U4882 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n4), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n3), .Y(n4827) );
  INVX1 U4883 ( .A(median_sobel_inst_u_median_filter_submodule_n798), .Y(n3080) );
  NOR2X1 U4884 ( .A(n6546), .B(n6762), .Y(n4354) );
  NAND2X1 U4885 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(n5757)
         );
  NAND2X1 U4886 ( .A(op_mode_r_1_), .B(n852), .Y(n4593) );
  INVX1 U4887 ( .A(conv_inst_n54), .Y(n4279) );
  NAND2X1 U4888 ( .A(input_data_ready_r[6]), .B(input_data_ready_r[22]), .Y(
        n3885) );
  CLKINVX1 U4889 ( .A(median_sobel_inst_u_median_filter_submodule_n249), .Y(
        n3083) );
  NAND2X1 U4890 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n40), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n26), .Y(n4712) );
  NAND2X1 U4891 ( .A(n6509), .B(n6647), .Y(n4943) );
  INVX1 U4893 ( .A(n6780), .Y(n3442) );
  NAND2X1 U4894 ( .A(i_op_valid), .B(i_op_mode[2]), .Y(n4480) );
  NAND2X1 U4895 ( .A(i_op_valid), .B(i_op_mode[3]), .Y(n4505) );
  NAND2X1 U4897 ( .A(i_op_valid), .B(i_op_mode[1]), .Y(n4479) );
  NAND2X1 U4898 ( .A(i_op_valid), .B(i_op_mode[0]), .Y(n3738) );
  OAI21X4 U4899 ( .A0(n2826), .A1(n3171), .B0(median_sobel_inst_data_b_r[6]), 
        .Y(n3170) );
  NOR2X8 U4900 ( .A(n2777), .B(n3646), .Y(n3645) );
  OAI2BB1X4 U4902 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .A1N(n4619), .B0(median_sobel_inst_u_sobel_gradient_submodule_n45), .Y(n5056) );
  XNOR2X4 U4903 ( .A(n6103), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]) );
  NAND3X1 U4904 ( .A(n5187), .B(n5186), .C(n5185), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N75) );
  OAI21X2 U4905 ( .A0(n3147), .A1(n3146), .B0(n3111), .Y(
        conv_inst_data_abc_w[5]) );
  BUFX20 U4906 ( .A(n5928), .Y(n2778) );
  AOI21X4 U4907 ( .A0(n3345), .A1(n2941), .B0(n2940), .Y(n2836) );
  INVX8 U4908 ( .A(n3719), .Y(n4107) );
  OAI21X4 U4909 ( .A0(n3620), .A1(n3615), .B0(n2779), .Y(n5946) );
  NAND2BX4 U4910 ( .AN(n3853), .B(n2780), .Y(n3412) );
  AOI21X4 U4911 ( .A0(n3849), .A1(n3429), .B0(n3854), .Y(n2780) );
  AND2X2 U4912 ( .A(n2718), .B(n3479), .Y(n3613) );
  AOI2BB1X4 U4913 ( .A0N(n2781), .A1N(median_sobel_inst_data_g_r[5]), .B0(
        n3695), .Y(n3694) );
  INVX3 U4914 ( .A(median_sobel_inst_data_g_r[5]), .Y(n3177) );
  OA22X4 U4915 ( .A0(median_sobel_inst_data_g_r[4]), .A1(n2939), .B0(
        median_sobel_inst_data_g_r[5]), .B1(n2782), .Y(n4128) );
  XNOR2X4 U4916 ( .A(n6130), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]) );
  BUFX12 U4917 ( .A(n4308), .Y(n3634) );
  OA22X4 U4920 ( .A0(median_sobel_inst_n424), .A1(n3484), .B0(
        median_sobel_inst_n432), .B1(n5378), .Y(n4302) );
  NOR2BX1 U4921 ( .AN(median_sobel_inst_u_median_filter_submodule_n233), .B(
        median_sobel_inst_u_median_filter_submodule_n200), .Y(n3845) );
  NAND2X6 U4922 ( .A(n3296), .B(n3700), .Y(n3295) );
  NAND2X8 U4923 ( .A(n3929), .B(n3342), .Y(n3187) );
  NAND2X6 U4925 ( .A(n3693), .B(n3500), .Y(n3546) );
  NAND2X2 U4926 ( .A(median_sobel_inst_n664), .B(n3477), .Y(n4015) );
  AOI22X4 U4929 ( .A0(n2911), .A1(n2716), .B0(n5850), .B1(n3692), .Y(n2784) );
  NAND2X6 U4931 ( .A(n3406), .B(n3405), .Y(n3404) );
  XOR2X4 U4933 ( .A(n3164), .B(conv_inst_conv_1_r[16]), .Y(n5614) );
  OA21X4 U4934 ( .A0(median_sobel_inst_n424), .A1(n4466), .B0(n3766), .Y(n3767) );
  NAND2X2 U4935 ( .A(n4551), .B(n4550), .Y(n4553) );
  NOR2X2 U4936 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), .Y(n5441) );
  OA22X4 U4938 ( .A0(n3634), .A1(median_sobel_inst_n406), .B0(n5928), .B1(
        median_sobel_inst_n430), .Y(n4013) );
  NAND3X6 U4940 ( .A(n2953), .B(n2952), .C(n4724), .Y(n4780) );
  NAND2X6 U4941 ( .A(n3195), .B(n3197), .Y(n2786) );
  NAND2X2 U4942 ( .A(median_sobel_inst_n660), .B(n3477), .Y(n4125) );
  NOR2X1 U4943 ( .A(n5918), .B(n853), .Y(n5581) );
  AND2X2 U4944 ( .A(n6306), .B(n5631), .Y(n6304) );
  AND3X8 U4947 ( .A(n4027), .B(n4028), .C(n4026), .Y(n4316) );
  OAI21X4 U4948 ( .A0(n3684), .A1(n3713), .B0(n2787), .Y(
        median_sobel_inst_u_median_filter_submodule_n753) );
  NAND2X1 U4949 ( .A(median_sobel_inst_data_i_r[7]), .B(n5940), .Y(n2787) );
  NAND2X8 U4950 ( .A(n5604), .B(n5605), .Y(n3929) );
  NAND3X6 U4951 ( .A(n3094), .B(n3093), .C(n4545), .Y(n3092) );
  AOI22X4 U4952 ( .A0(median_sobel_inst_data_d_r[2]), .A1(n3196), .B0(
        median_sobel_inst_data_d_r[3]), .B1(n5859), .Y(n3194) );
  NAND3X8 U4953 ( .A(n4351), .B(n4350), .C(n4352), .Y(n6254) );
  NOR2X8 U4956 ( .A(median_sobel_inst_data_h_r[5]), .B(n2827), .Y(n3589) );
  NAND2BX2 U4957 ( .AN(median_sobel_inst_n339), .B(n3478), .Y(n4031) );
  NAND2X2 U4958 ( .A(n3575), .B(n2919), .Y(n5633) );
  OR2X4 U4960 ( .A(n6158), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n6139) );
  NOR3X2 U4961 ( .A(n3754), .B(n3753), .C(n6661), .Y(n3757) );
  OAI22X4 U4962 ( .A0(n3397), .A1(median_sobel_inst_n373), .B0(n5927), .B1(
        n5880), .Y(n5881) );
  OAI22X4 U4963 ( .A0(n2789), .A1(n5941), .B0(n5940), .B1(
        median_sobel_inst_data_c_r[7]), .Y(
        median_sobel_inst_u_median_filter_submodule_n746) );
  AOI21X4 U4964 ( .A0(n3097), .A1(n3106), .B0(n3394), .Y(n2789) );
  BUFX4 U4965 ( .A(n5634), .Y(n2919) );
  NAND2BX2 U4967 ( .AN(n3634), .B(median_sobel_inst_n674), .Y(n4322) );
  NOR2X4 U4968 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .Y(
        n5387) );
  AOI2BB1X4 U4970 ( .A0N(median_sobel_inst_n253), .A1N(n5927), .B0(n4124), .Y(
        n4126) );
  INVX3 U4971 ( .A(median_sobel_inst_data_i_r[7]), .Y(n5954) );
  AOI2BB2X4 U4972 ( .B0(n5592), .B1(n3064), .A0N(input_data_ready_r[23]), 
        .A1N(n5591), .Y(n6983) );
  NAND2X6 U4974 ( .A(n6897), .B(input_data_ready_r[25]), .Y(n3745) );
  AOI21X2 U4975 ( .A0(n5240), .A1(n5245), .B0(n4565), .Y(n4566) );
  AOI21X2 U4976 ( .A0(n5463), .A1(n4986), .B0(n4985), .Y(n4991) );
  OAI22X1 U4977 ( .A0(median_sobel_inst_u_median_filter_submodule_b1_r[5]), 
        .A1(median_sobel_inst_u_median_filter_submodule_n197), .B0(
        median_sobel_inst_u_median_filter_submodule_n825), .B1(
        median_sobel_inst_u_median_filter_submodule_n258), .Y(n6060) );
  AOI21X2 U4978 ( .A0(n5975), .A1(
        median_sobel_inst_u_median_filter_submodule_n795), .B0(n5974), .Y(
        n5977) );
  OAI21X4 U4979 ( .A0(n5985), .A1(n5984), .B0(n5983), .Y(n3010) );
  OAI22X2 U4980 ( .A0(n2778), .A1(median_sobel_inst_n401), .B0(n2915), .B1(
        median_sobel_inst_n369), .Y(n3592) );
  NAND3X6 U4981 ( .A(n2795), .B(n3276), .C(n2791), .Y(n3009) );
  NAND2X2 U4982 ( .A(n3701), .B(n2669), .Y(n2794) );
  NAND3X6 U4983 ( .A(n2798), .B(n2800), .C(n2796), .Y(n2795) );
  OAI2BB2X4 U4984 ( .B0(n2797), .B1(n3277), .A0N(median_sobel_inst_n110), 
        .A1N(n5907), .Y(n2796) );
  AOI22X4 U4985 ( .A0(n5905), .A1(n2670), .B0(n5906), .B1(n2667), .Y(n2797) );
  NOR2X6 U4986 ( .A(n3705), .B(n2799), .Y(n2798) );
  NOR2BX4 U4987 ( .AN(n3706), .B(n2801), .Y(n2800) );
  NAND2BX2 U4988 ( .AN(n6614), .B(conv_inst_data_abc_1_r[8]), .Y(n4537) );
  XOR2X4 U4990 ( .A(n6257), .B(conv_inst_conv_1_r[12]), .Y(n6258) );
  AOI21X4 U4991 ( .A0(n6240), .A1(n4328), .B0(n2807), .Y(n2806) );
  INVX1 U4992 ( .A(n4325), .Y(n2807) );
  XOR2X4 U4994 ( .A(n2812), .B(n3978), .Y(n2936) );
  OAI21X4 U4995 ( .A0(n2811), .A1(n2810), .B0(n3958), .Y(n2809) );
  AOI21X4 U4996 ( .A0(n3956), .A1(n3957), .B0(n3955), .Y(n2811) );
  OAI21X4 U4997 ( .A0(n2814), .A1(n2813), .B0(n2757), .Y(n2812) );
  AOI2BB2X4 U4998 ( .B0(n3952), .B1(n3951), .A0N(n6895), .A1N(n3520), .Y(n2814) );
  NAND2X6 U4999 ( .A(next_state_3_), .B(n6341), .Y(n6352) );
  BUFX20 U5000 ( .A(n3163), .Y(n2819) );
  AOI2BB2X1 U5001 ( .B0(n2817), .B1(conv_inst_conv_1_r[14]), .A0N(n2818), 
        .A1N(n2769), .Y(n4265) );
  NOR2X8 U5002 ( .A(n3552), .B(n3730), .Y(n3163) );
  OR2X8 U5003 ( .A(n6337), .B(n2823), .Y(n2822) );
  AOI21X4 U5004 ( .A0(n4849), .A1(n4369), .B0(n2824), .Y(n2823) );
  NAND3X4 U5005 ( .A(n5169), .B(n4846), .C(n5164), .Y(n2824) );
  NAND3BX4 U5006 ( .AN(conv_inst_N287), .B(n4063), .C(n4062), .Y(
        conv_inst_ns[0]) );
  NAND2X8 U5007 ( .A(n4316), .B(median_sobel_inst_data_b_r[4]), .Y(n2827) );
  AOI21X1 U5009 ( .A0(n6272), .A1(n6273), .B0(n2829), .Y(n2828) );
  NAND2XL U5010 ( .A(n6271), .B(n6656), .Y(n2830) );
  NOR2X1 U5011 ( .A(n6271), .B(n6656), .Y(n6273) );
  NAND2X8 U5012 ( .A(n6254), .B(n6253), .Y(n6275) );
  NAND2X4 U5013 ( .A(n5624), .B(n6358), .Y(n3329) );
  NAND2X8 U5014 ( .A(n6352), .B(n5624), .Y(n6344) );
  NAND2X8 U5015 ( .A(next_state_3_), .B(n6312), .Y(n5624) );
  NAND3BX4 U5016 ( .AN(n4201), .B(n2832), .C(n2831), .Y(n2847) );
  NAND2BX4 U5017 ( .AN(n5852), .B(n2842), .Y(n2834) );
  NAND3X6 U5018 ( .A(n2837), .B(n2836), .C(n2842), .Y(n2835) );
  NAND3X6 U5019 ( .A(n2858), .B(n3345), .C(n2855), .Y(n2837) );
  NAND3X6 U5020 ( .A(n5550), .B(n4233), .C(n4485), .Y(n4873) );
  NOR2X8 U5021 ( .A(n4484), .B(n4728), .Y(n4233) );
  NOR2X8 U5022 ( .A(n5419), .B(n5418), .Y(n5550) );
  INVX8 U5023 ( .A(median_sobel_inst_data_a_r[1]), .Y(n2911) );
  NAND2X6 U5024 ( .A(n3178), .B(median_sobel_inst_data_a_r[1]), .Y(n2913) );
  NAND3X6 U5025 ( .A(n3983), .B(n3984), .C(n3982), .Y(
        median_sobel_inst_data_a_r[1]) );
  NAND3X8 U5027 ( .A(n2848), .B(n4233), .C(n5550), .Y(n4966) );
  NOR2X8 U5028 ( .A(n2850), .B(n2849), .Y(n2848) );
  NAND3X8 U5029 ( .A(n4234), .B(n4485), .C(n2851), .Y(n2850) );
  NAND3BX4 U5030 ( .AN(n4228), .B(n4226), .C(n2852), .Y(n2851) );
  OR2X8 U5032 ( .A(n2939), .B(median_sobel_inst_data_d_r[4]), .Y(n3345) );
  NAND2X8 U5034 ( .A(n2866), .B(n2864), .Y(n5349) );
  OR2X8 U5035 ( .A(n4536), .B(n2863), .Y(n2866) );
  NOR2X6 U5036 ( .A(n5076), .B(n5082), .Y(n4511) );
  NOR2BX4 U5038 ( .AN(conv_inst_data_abc_1_r[0]), .B(n2702), .Y(n5068) );
  OAI2BB1X4 U5039 ( .A0N(n2868), .A1N(n2706), .B0(n2870), .Y(
        median_sobel_inst_u_median_filter_submodule_n773) );
  AOI2BB2X4 U5040 ( .B0(n6247), .B1(n6490), .A0N(n6246), .A1N(
        median_sobel_inst_u_median_filter_submodule_n811), .Y(n2870) );
  XNOR2X4 U5041 ( .A(n6068), .B(n6079), .Y(n2869) );
  NAND3BX4 U5044 ( .AN(n2881), .B(n2878), .C(n2874), .Y(n2873) );
  NOR2BX4 U5045 ( .AN(n6048), .B(n2876), .Y(n2875) );
  OAI21X4 U5046 ( .A0(n2884), .A1(
        median_sobel_inst_u_median_filter_submodule_n811), .B0(n6047), .Y(
        n2876) );
  NAND3BX4 U5049 ( .AN(n5152), .B(n2889), .C(n2893), .Y(n5742) );
  AOI21X4 U5052 ( .A0(n2892), .A1(n4644), .B0(n2896), .Y(n5154) );
  OAI21X2 U5053 ( .A0(n4684), .A1(n4687), .B0(n4688), .Y(n2896) );
  OAI21X4 U5054 ( .A0(n5397), .A1(n2898), .B0(n5398), .Y(n4644) );
  NAND2X2 U5055 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), 
        .B(n6602), .Y(n5398) );
  NOR2BX4 U5059 ( .AN(n4270), .B(n2903), .Y(n4342) );
  AOI2BB2X4 U5061 ( .B0(n5859), .B1(median_sobel_inst_data_a_r[3]), .A0N(n3692), .A1N(n5850), .Y(n2905) );
  NAND2BX4 U5062 ( .AN(n4116), .B(n2942), .Y(median_sobel_inst_data_a_r[3]) );
  NOR2X4 U5065 ( .A(n5378), .B(median_sobel_inst_n261), .Y(n2916) );
  NAND2X4 U5066 ( .A(median_sobel_inst_data_i_r[2]), .B(n4263), .Y(n3075) );
  OR2X8 U5069 ( .A(n3613), .B(n3614), .Y(median_sobel_inst_data_i_r[2]) );
  XOR2X4 U5070 ( .A(n3601), .B(n3748), .Y(n4876) );
  NAND2X8 U5071 ( .A(n3602), .B(n3741), .Y(n3601) );
  MXI2X4 U5072 ( .A(n2775), .B(n4883), .S0(n4882), .Y(n4877) );
  XOR2X4 U5073 ( .A(n3066), .B(n3065), .Y(n4882) );
  XNOR2X4 U5074 ( .A(n2917), .B(n2938), .Y(n5638) );
  NAND3X6 U5076 ( .A(n2922), .B(n3041), .C(n3208), .Y(n2921) );
  NAND2X4 U5077 ( .A(n5417), .B(n5416), .Y(n3208) );
  OAI21X4 U5078 ( .A0(n6088), .A1(n5659), .B0(n5660), .Y(n2923) );
  AOI21X4 U5079 ( .A0(n5643), .A1(n2925), .B0(n2924), .Y(n6088) );
  AOI21X4 U5081 ( .A0(n2930), .A1(n5693), .B0(n2929), .Y(n6129) );
  OAI22X4 U5082 ( .A0(conv_inst_conv_2_r[8]), .A1(conv_inst_data_bcd_2_r[8]), 
        .B0(conv_inst_data_bcd_2_r[7]), .B1(conv_inst_conv_2_r[7]), .Y(n4345)
         );
  NAND2X2 U5083 ( .A(n3616), .B(median_sobel_inst_data_f_r[0]), .Y(n3721) );
  NOR2BX4 U5084 ( .AN(n3901), .B(n2935), .Y(n3616) );
  NAND2BX4 U5085 ( .AN(n3618), .B(n3617), .Y(n2935) );
  INVX12 U5086 ( .A(n2936), .Y(n3031) );
  XOR2X1 U5087 ( .A(n3752), .B(n1145), .Y(n2938) );
  XNOR2X4 U5088 ( .A(input_data_ready_r[12]), .B(input_data_ready_r[28]), .Y(
        n3752) );
  NAND3X6 U5089 ( .A(n4084), .B(n4082), .C(n4083), .Y(
        median_sobel_inst_data_d_r[3]) );
  AOI21X2 U5090 ( .A0(median_sobel_inst_n646), .A1(n4584), .B0(n2943), .Y(
        n2942) );
  NAND2X6 U5091 ( .A(n4362), .B(n2944), .Y(median_sobel_inst_data_d_r[4]) );
  AOI22X2 U5093 ( .A0(median_sobel_inst_u_median_filter_submodule_net22695), 
        .A1(median_sobel_inst_u_median_filter_submodule_a5_r[2]), .B0(
        median_sobel_inst_u_median_filter_submodule_net57373), .B1(
        median_sobel_inst_u_median_filter_submodule_net22696), .Y(n2945) );
  OR2X2 U5094 ( .A(median_sobel_inst_u_median_filter_submodule_net22695), .B(
        median_sobel_inst_u_median_filter_submodule_a5_r[2]), .Y(n2947) );
  NAND2X4 U5095 ( .A(n3962), .B(n6585), .Y(n2948) );
  NAND2X6 U5098 ( .A(n4332), .B(n4780), .Y(n4438) );
  XOR2X4 U5099 ( .A(conv_inst_data_bcd_2_r[3]), .B(conv_inst_conv_2_r[3]), .Y(
        n4724) );
  NAND2X4 U5100 ( .A(n4722), .B(n4721), .Y(n2952) );
  NOR2X6 U5101 ( .A(n4531), .B(n4802), .Y(n4722) );
  NAND2X4 U5102 ( .A(n4723), .B(n4721), .Y(n2953) );
  NAND2X4 U5103 ( .A(conv_inst_data_bcd_2_r[2]), .B(conv_inst_conv_2_r[2]), 
        .Y(n4721) );
  OAI22X4 U5104 ( .A0(conv_inst_conv_2_r[2]), .A1(conv_inst_data_bcd_2_r[2]), 
        .B0(conv_inst_conv_2_r[1]), .B1(conv_inst_data_bcd_2_r[1]), .Y(n4723)
         );
  OAI21X4 U5106 ( .A0(n2960), .A1(n6138), .B0(n3563), .Y(n6158) );
  XNOR2X4 U5107 ( .A(n2955), .B(n6484), .Y(n3067) );
  AND2X2 U5108 ( .A(n6896), .B(n831), .Y(n2956) );
  AOI21X4 U5109 ( .A0(n3555), .A1(n4735), .B0(n3554), .Y(n2960) );
  XNOR2X4 U5110 ( .A(n6144), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N141) );
  NAND2X4 U5111 ( .A(n2954), .B(n3566), .Y(n2961) );
  OAI2BB1X4 U5112 ( .A0N(n2973), .A1N(n4598), .B0(n2971), .Y(n2970) );
  NOR2X4 U5113 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        n2972), .Y(n4599) );
  NAND2X8 U5114 ( .A(n6139), .B(n3556), .Y(n6161) );
  NAND3X6 U5115 ( .A(n2986), .B(n2984), .C(n2983), .Y(n3142) );
  OAI21X4 U5116 ( .A0(n5612), .A1(n2775), .B0(n869), .Y(n2983) );
  NAND2X4 U5117 ( .A(n5446), .B(n5612), .Y(n3875) );
  NAND2X8 U5119 ( .A(n6223), .B(n3168), .Y(n6235) );
  XOR2X4 U5120 ( .A(n2987), .B(n2990), .Y(conv_inst_data_abc_w[8]) );
  AOI2BB2X4 U5121 ( .B0(n2989), .B1(n2988), .A0N(n3470), .A1N(n6625), .Y(n2987) );
  XOR2X4 U5122 ( .A(n3892), .B(n2991), .Y(n3470) );
  NAND3X6 U5123 ( .A(n3574), .B(n3883), .C(n3573), .Y(n2992) );
  XOR2X4 U5124 ( .A(n2770), .B(n6753), .Y(n2990) );
  XOR2X4 U5125 ( .A(n3890), .B(input_data_ready_r[7]), .Y(n3891) );
  NAND2X8 U5128 ( .A(n2994), .B(n2993), .Y(n6242) );
  AOI22X4 U5129 ( .A0(n4077), .A1(n4076), .B0(conv_inst_conv_1_r[6]), .B1(
        conv_inst_data_abc_1_r[6]), .Y(n2993) );
  AOI21X4 U5130 ( .A0(n2995), .A1(n3139), .B0(n3138), .Y(n3684) );
  AOI2BB2X4 U5131 ( .B0(n5933), .B1(n3074), .A0N(n5938), .A1N(n3140), .Y(n2996) );
  NAND3X6 U5132 ( .A(n3000), .B(n2999), .C(n2998), .Y(n2997) );
  NAND2X4 U5133 ( .A(n5942), .B(median_sobel_inst_data_f_r[3]), .Y(n2998) );
  NAND3X6 U5134 ( .A(n3075), .B(n3629), .C(n3001), .Y(n3000) );
  OAI21X4 U5135 ( .A0(n3282), .A1(median_sobel_inst_data_i_r[1]), .B0(n3076), 
        .Y(n3001) );
  AOI22X4 U5140 ( .A0(n3212), .A1(median_sobel_inst_data_b_r[2]), .B0(n4314), 
        .B1(median_sobel_inst_n102), .Y(n3174) );
  OR2X8 U5141 ( .A(n3004), .B(n3217), .Y(median_sobel_inst_data_b_r[2]) );
  OAI2BB1X4 U5142 ( .A0N(n3006), .A1N(n3005), .B0(n3008), .Y(
        median_sobel_inst_u_median_filter_submodule_n747) );
  BUFX12 U5143 ( .A(n6040), .Y(n3013) );
  INVX12 U5144 ( .A(n6040), .Y(n6041) );
  AND2X8 U5145 ( .A(n5997), .B(n3014), .Y(n3012) );
  XNOR2X4 U5147 ( .A(n3018), .B(n3016), .Y(n3015) );
  XNOR2X4 U5148 ( .A(n3017), .B(input_data_ready_r[30]), .Y(n3016) );
  XNOR2X4 U5149 ( .A(n5578), .B(n856), .Y(n3017) );
  NAND3X6 U5150 ( .A(n3343), .B(n3019), .C(n3020), .Y(n3018) );
  AOI21X2 U5151 ( .A0(n3344), .A1(n3579), .B0(n3923), .Y(n3020) );
  OAI22X2 U5153 ( .A0(median_sobel_inst_u_median_filter_submodule_n786), .A1(
        median_sobel_inst_u_median_filter_submodule_n785), .B0(
        median_sobel_inst_u_median_filter_submodule_n203), .B1(n5599), .Y(
        n3812) );
  OR2X4 U5154 ( .A(median_sobel_inst_u_median_filter_submodule_n27), .B(n3080), 
        .Y(n5960) );
  INVX12 U5155 ( .A(n3058), .Y(n3415) );
  NAND2X8 U5156 ( .A(n3062), .B(n3061), .Y(n3310) );
  NAND2X8 U5157 ( .A(n3063), .B(n3409), .Y(n3058) );
  NAND2BX4 U5158 ( .AN(n5033), .B(n871), .Y(n5326) );
  NOR2X4 U5160 ( .A(n6020), .B(
        median_sobel_inst_u_median_filter_submodule_net22686), .Y(n3028) );
  NAND2X8 U5165 ( .A(n3574), .B(n3145), .Y(n3144) );
  XOR2X4 U5166 ( .A(n3206), .B(n3435), .Y(n4730) );
  OR2X4 U5168 ( .A(n3046), .B(median_sobel_inst_u_sober_compare_submodule_n78), 
        .Y(n3044) );
  OA21X4 U5169 ( .A0(median_sobel_inst_u_sober_compare_submodule_n10), .A1(
        n6174), .B0(n6173), .Y(n3045) );
  AOI2BB1X4 U5170 ( .A0N(n3290), .A1N(n2715), .B0(n3048), .Y(n6212) );
  OAI22X4 U5171 ( .A0(n6177), .A1(
        median_sobel_inst_u_sober_compare_submodule_n246), .B0(n6180), .B1(
        n6540), .Y(n3048) );
  OAI21X4 U5172 ( .A0(n3612), .A1(median_sobel_inst_n390), .B0(n3055), .Y(
        n3283) );
  AOI21X4 U5173 ( .A0(n4482), .A1(median_sobel_inst_n708), .B0(n3056), .Y(
        n4363) );
  AOI2BB2X4 U5174 ( .B0(n3902), .B1(n7032), .A0N(median_sobel_inst_n423), 
        .A1N(n3057), .Y(n3419) );
  NAND2X6 U5175 ( .A(n3412), .B(n3410), .Y(n3063) );
  OAI22X1 U5177 ( .A0(n3842), .A1(
        median_sobel_inst_u_median_filter_submodule_n246), .B0(
        median_sobel_inst_u_median_filter_submodule_n203), .B1(n3841), .Y(
        n3848) );
  NAND2X6 U5178 ( .A(n3064), .B(n6232), .Y(n3185) );
  OA21X4 U5179 ( .A0(n3932), .A1(n3931), .B0(n3064), .Y(
        conv_inst_data_bcd_w[7]) );
  NAND3X8 U5180 ( .A(n3187), .B(n3188), .C(n3186), .Y(n3064) );
  AOI22X4 U5181 ( .A0(n3743), .A1(n3601), .B0(n6478), .B1(n3749), .Y(n3070) );
  NOR2X8 U5184 ( .A(N730), .B(x_origin_r_1_), .Y(n5829) );
  NAND2X4 U5186 ( .A(n3676), .B(n3073), .Y(n6289) );
  AOI2BB2X4 U5187 ( .B0(n3084), .B1(n3081), .A0N(n3080), .A1N(
        median_sobel_inst_u_median_filter_submodule_n37), .Y(n5997) );
  OA21X4 U5188 ( .A0(n5972), .A1(
        median_sobel_inst_u_median_filter_submodule_n62), .B0(n3082), .Y(n3081) );
  NAND2X8 U5190 ( .A(n3092), .B(n3942), .Y(n5092) );
  OR2X8 U5191 ( .A(n3095), .B(n4544), .Y(n3094) );
  NAND3X6 U5192 ( .A(n3102), .B(n5935), .C(n3098), .Y(n3097) );
  XNOR2X4 U5194 ( .A(n3315), .B(n3110), .Y(n3109) );
  NAND2X6 U5195 ( .A(n3886), .B(n3885), .Y(n3316) );
  OAI21X4 U5196 ( .A0(n3118), .A1(n6088), .B0(n3112), .Y(n6090) );
  NAND2BX2 U5197 ( .AN(n3119), .B(n6083), .Y(n3118) );
  OAI2BB1X4 U5199 ( .A0N(n4185), .A1N(n4184), .B0(n3123), .Y(n3122) );
  OAI2BB1X1 U5200 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_n89), 
        .A1N(n3132), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[15]), .Y(n3130) );
  NAND2X1 U5201 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6108) );
  AOI21X2 U5202 ( .A0(n3479), .A1(n3509), .B0(n3136), .Y(n3135) );
  INVX8 U5203 ( .A(median_sobel_inst_data_e_r[1]), .Y(n5906) );
  NAND3X6 U5204 ( .A(n4470), .B(n4467), .C(n3137), .Y(
        median_sobel_inst_data_e_r[1]) );
  OAI22X2 U5205 ( .A0(n3717), .A1(median_sobel_inst_data_f_r[6]), .B0(n5949), 
        .B1(median_sobel_inst_data_f_r[5]), .Y(n3138) );
  AOI22X2 U5206 ( .A0(n3140), .A1(n5938), .B0(median_sobel_inst_data_f_r[5]), 
        .B1(n5949), .Y(n3139) );
  XNOR2X4 U5207 ( .A(n3141), .B(n3148), .Y(n5635) );
  AOI21X4 U5208 ( .A0(n3881), .A1(n2714), .B0(n3869), .Y(n3141) );
  NAND2X8 U5209 ( .A(n3303), .B(n3302), .Y(n3881) );
  XOR2X4 U5210 ( .A(n3209), .B(n3142), .Y(n5416) );
  OAI21X1 U5212 ( .A0(n3575), .A1(n3480), .B0(n5635), .Y(n3146) );
  NOR2X1 U5213 ( .A(n2919), .B(n3882), .Y(n3147) );
  XNOR2X4 U5214 ( .A(n3149), .B(input_data_ready_r[5]), .Y(n3148) );
  XOR2X4 U5215 ( .A(n5578), .B(input_data_ready_r[12]), .Y(n3149) );
  NOR2BX4 U5216 ( .AN(n3834), .B(n3836), .Y(n3152) );
  OAI21X4 U5217 ( .A0(n3820), .A1(n3819), .B0(n3818), .Y(n3153) );
  AOI21X4 U5219 ( .A0(n3156), .A1(n3155), .B0(n5986), .Y(n5989) );
  NAND2BX2 U5221 ( .AN(median_sobel_inst_u_median_filter_submodule_n795), .B(
        median_sobel_inst_u_median_filter_submodule_n802), .Y(n3158) );
  NAND2BX4 U5222 ( .AN(n3159), .B(n4313), .Y(n2670) );
  XOR2X4 U5226 ( .A(n3886), .B(n3873), .Y(n6220) );
  NAND2BX4 U5227 ( .AN(conv_inst_data_abc_1_r[10]), .B(n6650), .Y(n4328) );
  XNOR2X4 U5228 ( .A(n3892), .B(n3891), .Y(n3168) );
  NAND2X8 U5229 ( .A(n3169), .B(n6485), .Y(n6223) );
  INVX12 U5230 ( .A(n6220), .Y(n3169) );
  XOR2X2 U5231 ( .A(input_data_ready_r[22]), .B(n844), .Y(n3872) );
  NAND2X8 U5232 ( .A(n3474), .B(n6223), .Y(n6225) );
  OAI2BB2X2 U5233 ( .B0(n3634), .B1(median_sobel_inst_n410), .A0N(
        median_sobel_inst_n869), .A1N(n3902), .Y(n3180) );
  NAND2X4 U5234 ( .A(n4015), .B(n4016), .Y(n3183) );
  NAND2X4 U5235 ( .A(n2911), .B(median_sobel_inst_data_d_r[1]), .Y(n3184) );
  XOR2X4 U5237 ( .A(n3185), .B(n6234), .Y(conv_inst_data_bcd_w[8]) );
  NAND2X4 U5238 ( .A(n3338), .B(n3930), .Y(n3188) );
  INVX12 U5239 ( .A(n3190), .Y(n5805) );
  NAND2X6 U5240 ( .A(n5805), .B(n5827), .Y(n4045) );
  NAND2X8 U5241 ( .A(cnt[1]), .B(cnt[0]), .Y(n6315) );
  OAI22X2 U5242 ( .A0(n3193), .A1(n6836), .B0(n6476), .B1(n6357), .Y(n3578) );
  AOI2BB2X4 U5243 ( .B0(n5857), .B1(n2716), .A0N(n3196), .A1N(
        median_sobel_inst_data_d_r[2]), .Y(n3195) );
  INVX20 U5246 ( .A(n3199), .Y(n3902) );
  NOR2BX1 U5247 ( .AN(n3902), .B(median_sobel_inst_n328), .Y(n3200) );
  NAND2X8 U5248 ( .A(n3691), .B(n3611), .Y(n3199) );
  NAND2X6 U5249 ( .A(n3203), .B(n2671), .Y(n3665) );
  NAND2X2 U5251 ( .A(n3207), .B(n3878), .Y(n3206) );
  NAND3X4 U5252 ( .A(n3437), .B(n3876), .C(n3305), .Y(n3207) );
  XOR2X4 U5253 ( .A(n3874), .B(n1148), .Y(n3209) );
  NAND2X4 U5254 ( .A(n3214), .B(n2670), .Y(n3213) );
  NAND2X4 U5255 ( .A(n3216), .B(median_sobel_inst_n110), .Y(n3215) );
  NAND2X6 U5256 ( .A(n3899), .B(n3900), .Y(median_sobel_inst_n110) );
  BUFX20 U5258 ( .A(n5067), .Y(n3219) );
  NAND2X1 U5259 ( .A(n3219), .B(n2737), .Y(n3225) );
  NAND2X1 U5260 ( .A(n3219), .B(n2694), .Y(n3261) );
  NAND2X1 U5261 ( .A(n3219), .B(n2687), .Y(n3262) );
  NAND2X1 U5262 ( .A(n3219), .B(n2711), .Y(n3263) );
  NAND2X1 U5263 ( .A(n3219), .B(n2732), .Y(n3264) );
  NAND2X1 U5264 ( .A(n3219), .B(n2692), .Y(n3265) );
  NAND2X1 U5265 ( .A(n3219), .B(n2695), .Y(n3266) );
  NAND2X1 U5266 ( .A(n3219), .B(n893), .Y(n3268) );
  NAND2X1 U5267 ( .A(n3219), .B(n2730), .Y(n3270) );
  BUFX6 U5268 ( .A(n3719), .Y(n3271) );
  OR2X8 U5269 ( .A(median_sobel_inst_n327), .B(n3611), .Y(n3719) );
  INVX12 U5270 ( .A(median_sobel_inst_n747), .Y(n3611) );
  AOI22X4 U5271 ( .A0(n3074), .A1(n5944), .B0(n5948), .B1(
        median_sobel_inst_data_i_r[4]), .Y(n5945) );
  NAND2X2 U5272 ( .A(n1021), .B(n1020), .Y(n3273) );
  NAND4BBX4 U5273 ( .AN(n899), .BN(pre_state[4]), .C(n3275), .D(pre_state[6]), 
        .Y(n3274) );
  OAI2BB1X4 U5277 ( .A0N(n3808), .A1N(n3809), .B0(n3279), .Y(
        median_sobel_inst_data_f_r[1]) );
  AND2X8 U5278 ( .A(n4025), .B(n3281), .Y(n3278) );
  NOR2BX4 U5279 ( .AN(n4024), .B(n3283), .Y(n3281) );
  NAND3X6 U5281 ( .A(n3286), .B(n2761), .C(n6187), .Y(n6199) );
  NOR2BX4 U5283 ( .AN(n3288), .B(
        median_sobel_inst_u_sober_compare_submodule_n13), .Y(n6175) );
  NOR2X4 U5284 ( .A(n6590), .B(median_sobel_inst_u_sober_compare_submodule_n64), .Y(n3288) );
  AOI2BB2X2 U5286 ( .B0(n6213), .B1(n6820), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n77), .Y(n3289) );
  NAND2X1 U5287 ( .A(n6199), .B(n6809), .Y(n3292) );
  NAND2X2 U5288 ( .A(n3282), .B(median_sobel_inst_data_i_r[1]), .Y(n3629) );
  NOR2X4 U5289 ( .A(n3278), .B(median_sobel_inst_data_i_r[1]), .Y(n3620) );
  AND2X4 U5290 ( .A(n3798), .B(n3800), .Y(n3294) );
  AOI2BB2X4 U5291 ( .B0(n3295), .B1(n5899), .A0N(n5898), .A1N(n2671), .Y(n5904) );
  NAND3X6 U5292 ( .A(n5895), .B(n5894), .C(n5896), .Y(n3298) );
  NAND3X6 U5293 ( .A(n3881), .B(n3868), .C(n3880), .Y(n3304) );
  NAND3X6 U5294 ( .A(n3304), .B(n3871), .C(n3870), .Y(n3886) );
  NOR2X8 U5295 ( .A(n6170), .B(n6571), .Y(n6169) );
  NAND2X6 U5297 ( .A(n3312), .B(n6165), .Y(n6168) );
  NAND2X4 U5298 ( .A(n6167), .B(n6166), .Y(n3312) );
  OAI21X4 U5299 ( .A0(n5490), .A1(n5491), .B0(n5489), .Y(n6167) );
  NAND2X4 U5302 ( .A(n3320), .B(n3317), .Y(conv_inst_data_abc_w[9]) );
  NAND2X2 U5304 ( .A(n3319), .B(n3894), .Y(n3318) );
  NAND2X4 U5305 ( .A(n6225), .B(n2771), .Y(n3320) );
  NOR2X2 U5309 ( .A(n3329), .B(n3326), .Y(n3325) );
  INVX1 U5312 ( .A(n6388), .Y(n6387) );
  OR2X2 U5313 ( .A(n883), .B(n6589), .Y(n6388) );
  NOR2BX2 U5314 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n63), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[12]), .Y(n4183) );
  NAND2X1 U5315 ( .A(conv_inst_cs_0_), .B(conv_inst_n38), .Y(n3330) );
  NAND3X6 U5316 ( .A(n4294), .B(n4293), .C(n4295), .Y(
        median_sobel_inst_data_h_r[6]) );
  BUFX4 U5317 ( .A(n3930), .Y(n3333) );
  XOR2X4 U5319 ( .A(n3922), .B(n3336), .Y(n5606) );
  NAND2BX4 U5320 ( .AN(n2768), .B(conv_inst_data_bcd_2_r[10]), .Y(n6269) );
  OAI21X4 U5321 ( .A0(n3537), .A1(n3341), .B0(n3339), .Y(n3338) );
  INVX1 U5322 ( .A(n3736), .Y(n3340) );
  INVX1 U5323 ( .A(n839), .Y(n3341) );
  XNOR2X4 U5324 ( .A(n5587), .B(n3926), .Y(n5590) );
  NAND2BX4 U5326 ( .AN(n3348), .B(n4299), .Y(median_sobel_inst_data_b_r[7]) );
  NOR2X4 U5327 ( .A(n3351), .B(n3350), .Y(n3349) );
  NOR2X4 U5328 ( .A(n5378), .B(median_sobel_inst_n376), .Y(n3350) );
  NAND2X4 U5330 ( .A(n5910), .B(n3589), .Y(n3354) );
  INVX1 U5335 ( .A(n6579), .Y(n3370) );
  AOI22X4 U5336 ( .A0(median_sobel_inst_data_g_r[4]), .A1(n3696), .B0(n5858), 
        .B1(median_sobel_inst_data_g_r[3]), .Y(n3500) );
  OAI22X4 U5337 ( .A0(n3402), .A1(n3399), .B0(n5864), .B1(
        median_sobel_inst_data_a_r[7]), .Y(
        median_sobel_inst_u_median_filter_submodule_n751) );
  OAI22X2 U5338 ( .A0(median_sobel_inst_data_g_r[7]), .A1(n3400), .B0(n5853), 
        .B1(median_sobel_inst_data_g_r[6]), .Y(n3399) );
  AOI21X4 U5339 ( .A0(n3404), .A1(n4128), .B0(n3403), .Y(n3402) );
  OAI22X4 U5340 ( .A0(n5861), .A1(median_sobel_inst_data_a_r[6]), .B0(
        median_sobel_inst_data_a_r[5]), .B1(n3177), .Y(n3403) );
  AOI2BB2X4 U5341 ( .B0(n2939), .B1(median_sobel_inst_data_g_r[4]), .A0N(n5859), .A1N(median_sobel_inst_data_a_r[3]), .Y(n3405) );
  AOI2BB2X4 U5342 ( .B0(n3408), .B1(n3835), .A0N(n3859), .A1N(n3407), .Y(n3409) );
  OA21X4 U5343 ( .A0(n3427), .A1(
        median_sobel_inst_u_median_filter_submodule_n216), .B0(n3834), .Y(
        n3408) );
  NOR2BX2 U5344 ( .AN(n3839), .B(n3837), .Y(n3413) );
  NAND2BX2 U5345 ( .AN(median_sobel_inst_u_median_filter_submodule_n254), .B(
        median_sobel_inst_u_median_filter_submodule_n203), .Y(n3837) );
  CLKINVX1 U5348 ( .A(n5850), .Y(median_sobel_inst_data_a_r[2]) );
  NAND2X4 U5349 ( .A(n3415), .B(
        median_sobel_inst_u_median_filter_submodule_n184), .Y(n3417) );
  OR2X4 U5350 ( .A(n3309), .B(median_sobel_inst_u_median_filter_submodule_n216), .Y(n3416) );
  OR2X8 U5352 ( .A(n3903), .B(n3420), .Y(median_sobel_inst_data_f_r[0]) );
  OAI21X4 U5353 ( .A0(median_sobel_inst_n423), .A1(n4466), .B0(n3421), .Y(
        n3420) );
  OR2X4 U5355 ( .A(n3059), .B(median_sobel_inst_u_median_filter_submodule_n786), .Y(n3423) );
  NAND2BX2 U5357 ( .AN(median_sobel_inst_u_median_filter_submodule_n186), .B(
        median_sobel_inst_u_median_filter_submodule_n181), .Y(n3855) );
  CLKINVX1 U5358 ( .A(median_sobel_inst_u_median_filter_submodule_n193), .Y(
        n3852) );
  INVX3 U5359 ( .A(n3858), .Y(n3427) );
  AND2X4 U5360 ( .A(n3851), .B(n3850), .Y(n3429) );
  NAND2X2 U5361 ( .A(median_sobel_inst_data_e_r[3]), .B(n4314), .Y(n3706) );
  AOI21X1 U5362 ( .A0(n4822), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .B0(n3432), .Y(
        n3431) );
  XOR2X4 U5363 ( .A(n5447), .B(n5446), .Y(n3433) );
  CLKXOR2X2 U5364 ( .A(n3879), .B(n1145), .Y(n3435) );
  NAND2X4 U5365 ( .A(n3875), .B(n6610), .Y(n3437) );
  NOR2X8 U5366 ( .A(n3465), .B(n3439), .Y(n5136) );
  OAI21X2 U5368 ( .A0(n4828), .A1(n4829), .B0(n4827), .Y(n3465) );
  INVX3 U5369 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n68), .Y(n4631) );
  NOR2X8 U5370 ( .A(n3445), .B(n3443), .Y(n5514) );
  AOI21X4 U5372 ( .A0(n5134), .A1(n5135), .B0(n5133), .Y(n3446) );
  AND2X4 U5373 ( .A(n5134), .B(n5129), .Y(n3448) );
  NOR2X1 U5375 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n75), .Y(n3451) );
  NOR2X1 U5377 ( .A(n6181), .B(median_sobel_inst_u_sober_compare_submodule_n85), .Y(n3460) );
  CLKINVX1 U5378 ( .A(n2754), .Y(n4952) );
  NAND2BX2 U5379 ( .AN(n3013), .B(
        median_sobel_inst_u_median_filter_submodule_n145), .Y(n6044) );
  NOR2BX4 U5380 ( .AN(n6590), .B(n6601), .Y(n4662) );
  NAND2X2 U5381 ( .A(n5611), .B(n5610), .Y(n6984) );
  OAI22X2 U5382 ( .A0(n5977), .A1(n5976), .B0(
        median_sobel_inst_u_median_filter_submodule_n805), .B1(
        median_sobel_inst_u_median_filter_submodule_n256), .Y(n5981) );
  OAI2BB2X1 U5384 ( .B0(median_sobel_inst_u_median_filter_submodule_n803), 
        .B1(n6580), .A0N(n6588), .A1N(
        median_sobel_inst_u_median_filter_submodule_n145), .Y(n5974) );
  NOR2X4 U5385 ( .A(n6222), .B(n6228), .Y(conv_inst_data_abc_w[6]) );
  AOI21X4 U5386 ( .A0(n6221), .A1(n3111), .B0(n6220), .Y(n6222) );
  INVXL U5387 ( .A(median_sobel_inst_u_median_filter_submodule_n145), .Y(n5973) );
  OAI21X2 U5388 ( .A0(n5234), .A1(n5232), .B0(n5235), .Y(n5240) );
  NAND2X2 U5389 ( .A(median_sobel_inst_n321), .B(n3477), .Y(n3689) );
  CLKMX2X4 U5390 ( .A(n827), .B(N732), .S0(n6356), .Y(N757) );
  NAND3X2 U5392 ( .A(n5047), .B(n5164), .C(n5046), .Y(n3476) );
  NOR2X8 U5393 ( .A(n4359), .B(n4847), .Y(n5047) );
  OAI2BB2X1 U5394 ( .B0(median_sobel_inst_u_median_filter_submodule_n223), 
        .B1(n3852), .A0N(median_sobel_inst_u_median_filter_submodule_n181), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n788), .Y(n3829) );
  NAND2X2 U5395 ( .A(n6042), .B(
        median_sobel_inst_u_median_filter_submodule_n235), .Y(n6043) );
  NOR2X2 U5396 ( .A(n5680), .B(n5685), .Y(n6106) );
  OAI21X4 U5397 ( .A0(n5382), .A1(n4562), .B0(n5383), .Y(n4758) );
  MXI2X2 U5398 ( .A(n5793), .B(n5792), .S0(n5791), .Y(n5799) );
  NOR2X1 U5399 ( .A(n6338), .B(n4861), .Y(n4862) );
  NAND3X2 U5400 ( .A(n4860), .B(n6358), .C(n4859), .Y(n4861) );
  NAND3X2 U5401 ( .A(n5629), .B(conv_inst_n54), .C(n4007), .Y(n4009) );
  OAI22X4 U5402 ( .A0(conv_inst_data_abc_3_r[8]), .A1(conv_inst_n41), .B0(
        conv_inst_conv_3_r[7]), .B1(conv_inst_data_abc_3_r[7]), .Y(n3999) );
  NAND2X1 U5404 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n5495)
         );
  NAND2X4 U5405 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n6142)
         );
  NOR2X4 U5406 ( .A(median_sobel_inst_u_median_filter_submodule_n487), .B(
        median_sobel_inst_u_median_filter_submodule_n26), .Y(n4842) );
  NOR2X4 U5407 ( .A(n4900), .B(n4897), .Y(n4902) );
  NOR2X4 U5408 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(
        n4897) );
  AOI2BB2X2 U5409 ( .B0(n5889), .B1(n403), .A0N(n801), .A1N(n4045), .Y(n5810)
         );
  NAND2BX2 U5410 ( .AN(median_sobel_inst_n409), .B(n4478), .Y(n4294) );
  BUFX20 U5411 ( .A(n3902), .Y(n3477) );
  BUFX20 U5412 ( .A(n3902), .Y(n3478) );
  BUFX20 U5413 ( .A(n3902), .Y(n3479) );
  OAI21X1 U5414 ( .A0(n6332), .A1(n6511), .B0(n6331), .Y(n6333) );
  INVX1 U5415 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n87), .Y(n4180) );
  NAND2BX1 U5417 ( .AN(n449), .B(n4850), .Y(n4851) );
  NOR3X4 U5418 ( .A(n6252), .B(n6271), .C(n6656), .Y(n6293) );
  NOR2X2 U5419 ( .A(conv_inst_data_bcd_2_r[10]), .B(conv_inst_conv_2_r[10]), 
        .Y(n6252) );
  AOI2BB1X2 U5423 ( .A0N(n3842), .A1N(
        median_sobel_inst_u_median_filter_submodule_n787), .B0(
        median_sobel_inst_u_median_filter_submodule_n785), .Y(n3825) );
  CLKINVX1 U5424 ( .A(median_sobel_inst_u_median_filter_submodule_n121), .Y(
        n3842) );
  NOR3X1 U5425 ( .A(n5581), .B(n5580), .C(n5579), .Y(n5582) );
  NOR2X1 U5426 ( .A(n816), .B(n5846), .Y(n5579) );
  AOI21X1 U5427 ( .A0(n5463), .A1(n5461), .B0(n4977), .Y(n4982) );
  NAND3X1 U5429 ( .A(n6205), .B(n6204), .C(n6203), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]) );
  NAND3X1 U5430 ( .A(n6202), .B(n6201), .C(n6200), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]) );
  NAND3X1 U5431 ( .A(n6211), .B(n6210), .C(n6209), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]) );
  NAND3X1 U5432 ( .A(n6208), .B(n6207), .C(n6206), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]) );
  NOR3X1 U5433 ( .A(n5349), .B(n4331), .C(n4330), .Y(conv_inst_N232) );
  NOR2X2 U5434 ( .A(n5141), .B(conv_inst_n44), .Y(n4331) );
  XOR2X2 U5435 ( .A(n4998), .B(n4997), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N113) );
  AOI21X1 U5436 ( .A0(n5463), .A1(n4993), .B0(n4992), .Y(n4998) );
  XOR2X2 U5437 ( .A(n4982), .B(n4981), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N112) );
  OAI21X2 U5438 ( .A0(n6129), .A1(n5701), .B0(n5700), .Y(n5704) );
  OAI21X2 U5439 ( .A0(n5262), .A1(n5269), .B0(n5261), .Y(n5266) );
  OR2X4 U5440 ( .A(median_sobel_inst_u_median_filter_submodule_n159), .B(
        median_sobel_inst_u_median_filter_submodule_n26), .Y(n4811) );
  BUFX20 U5441 ( .A(n3762), .Y(n3484) );
  OAI21X2 U5442 ( .A0(n5431), .A1(n4888), .B0(n5432), .Y(n5719) );
  NAND2X2 U5443 ( .A(n4662), .B(
        median_sobel_inst_u_sober_compare_submodule_n47), .Y(n6180) );
  XOR2X2 U5444 ( .A(n5753), .B(n5752), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]) );
  AOI21X2 U5445 ( .A0(n5749), .A1(n5748), .B0(n5747), .Y(n5753) );
  NAND2X2 U5446 ( .A(n5799), .B(n5798), .Y(n488) );
  OAI22X2 U5447 ( .A0(n6283), .A1(n4200), .B0(n4199), .B1(n6874), .Y(
        conv_inst_N286) );
  NAND2X4 U5448 ( .A(n4055), .B(n4054), .Y(n4199) );
  NAND2X6 U5450 ( .A(n5632), .B(n6306), .Y(n6267) );
  OAI21X2 U5451 ( .A0(n6088), .A1(n5646), .B0(n5645), .Y(n5649) );
  AOI21X1 U5452 ( .A0(n6087), .A1(n5652), .B0(n5644), .Y(n5645) );
  OAI21X4 U5453 ( .A0(n5527), .A1(n5256), .B0(n5255), .Y(n5258) );
  OAI21X2 U5454 ( .A0(n6115), .A1(n5671), .B0(n5670), .Y(n5674) );
  NAND3X2 U5456 ( .A(n3013), .B(
        median_sobel_inst_u_median_filter_submodule_n231), .C(n6039), .Y(n6028) );
  NAND2X4 U5457 ( .A(n5349), .B(conv_inst_conv_1_r[14]), .Y(n5348) );
  INVX3 U5458 ( .A(n4484), .Y(n5549) );
  NAND3X2 U5459 ( .A(n5965), .B(n5964), .C(n5963), .Y(n5966) );
  NOR2X4 U5460 ( .A(n6008), .B(n5477), .Y(n5593) );
  NAND2X6 U5461 ( .A(n3606), .B(n4006), .Y(n6266) );
  NAND2X2 U5462 ( .A(n5629), .B(n4007), .Y(n3606) );
  BUFX20 U5463 ( .A(n3271), .Y(n4525) );
  NOR2X2 U5464 ( .A(n6624), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n3773) );
  NAND2X1 U5465 ( .A(n6093), .B(n5728), .Y(n5722) );
  CLKINVX1 U5466 ( .A(n6093), .Y(n5727) );
  NOR2X2 U5467 ( .A(n5731), .B(n5736), .Y(n6093) );
  NAND3X2 U5469 ( .A(n4179), .B(n4178), .C(n4177), .Y(n4185) );
  AOI21X4 U5471 ( .A0(n6170), .A1(n6571), .B0(n6169), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N157) );
  INVX3 U5472 ( .A(median_sobel_inst_data_i_r[6]), .Y(n3717) );
  INVX3 U5473 ( .A(n4326), .Y(n4865) );
  AOI2BB1X2 U5474 ( .A0N(n6266), .A1N(conv_inst_n54), .B0(n4245), .Y(
        conv_inst_N264) );
  NAND2X2 U5476 ( .A(n6266), .B(n4242), .Y(n4243) );
  OAI21X4 U5477 ( .A0(n5287), .A1(n4583), .B0(n4582), .Y(n5352) );
  AOI21X1 U5478 ( .A0(n5118), .A1(n5122), .B0(n4581), .Y(n4582) );
  NAND3X4 U5479 ( .A(median_sobel_inst_data_e_r[0]), .B(n5892), .C(n5893), .Y(
        n5894) );
  INVX3 U5480 ( .A(n5908), .Y(n3703) );
  NAND3BX1 U5481 ( .AN(median_sobel_inst_u_median_filter_submodule_n193), .B(
        n3855), .C(median_sobel_inst_u_median_filter_submodule_n239), .Y(n3856) );
  NAND2X2 U5482 ( .A(n1148), .B(n848), .Y(n3878) );
  NOR2X2 U5483 ( .A(n5048), .B(n852), .Y(n4970) );
  NOR3X4 U5484 ( .A(n3650), .B(n3649), .C(n3630), .Y(n3647) );
  NAND2X2 U5486 ( .A(n6073), .B(n6072), .Y(n6076) );
  AND2X2 U5487 ( .A(n6052), .B(n6051), .Y(n6053) );
  AOI22X1 U5488 ( .A0(median_sobel_inst_u_median_filter_submodule_n788), .A1(
        median_sobel_inst_u_median_filter_submodule_n186), .B0(
        median_sobel_inst_u_median_filter_submodule_n124), .B1(
        median_sobel_inst_u_median_filter_submodule_n216), .Y(n3821) );
  NAND2X4 U5489 ( .A(conv_inst_data_abc_3_r[4]), .B(conv_inst_conv_3_r[4]), 
        .Y(n3988) );
  NOR2X4 U5490 ( .A(x_origin_r_1_), .B(n469), .Y(n5827) );
  AOI2BB1X2 U5491 ( .A0N(n5764), .A1N(cnt[5]), .B0(n5767), .Y(n479) );
  OR2X4 U5492 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n33), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n76), .Y(n4149) );
  NOR2X4 U5493 ( .A(input_data_ready_r[4]), .B(n6889), .Y(n3869) );
  INVX3 U5494 ( .A(median_sobel_inst_data_d_r[0]), .Y(n3624) );
  OAI22XL U5496 ( .A0(median_sobel_inst_u_median_filter_submodule_n239), .A1(
        n3852), .B0(median_sobel_inst_u_median_filter_submodule_n229), .B1(
        median_sobel_inst_u_median_filter_submodule_n789), .Y(n3853) );
  NAND2XL U5497 ( .A(conv_inst_n47), .B(n2774), .Y(n4270) );
  NOR2X1 U5499 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n57), .Y(n6092) );
  NAND2X1 U5500 ( .A(conv_inst_conv_2_r[8]), .B(n4274), .Y(n4225) );
  INVX1 U5501 ( .A(n5434), .Y(n4888) );
  AOI22X1 U5502 ( .A0(median_sobel_inst_u_median_filter_submodule_a5_r[6]), 
        .A1(median_sobel_inst_u_median_filter_submodule_net22700), .B0(
        median_sobel_inst_u_median_filter_submodule_net22699), .B1(
        median_sobel_inst_u_median_filter_submodule_net57730), .Y(n3958) );
  NOR2X2 U5503 ( .A(conv_inst_data_abc_3_r[6]), .B(conv_inst_conv_3_r[6]), .Y(
        n4880) );
  NOR2X4 U5504 ( .A(n5158), .B(n5144), .Y(n5191) );
  NAND2X1 U5505 ( .A(n4370), .B(n852), .Y(n4371) );
  NAND4BX1 U5507 ( .AN(n449), .B(n4847), .C(n837), .D(n4846), .Y(n4848) );
  INVX1 U5508 ( .A(n5135), .Y(n4950) );
  XOR2X1 U5509 ( .A(n3872), .B(input_data_ready_r[6]), .Y(n3873) );
  NAND2X4 U5510 ( .A(n6430), .B(n6396), .Y(n6416) );
  NAND2X6 U5511 ( .A(n6430), .B(n6397), .Y(n6415) );
  NOR2X2 U5512 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .Y(n4759) );
  NOR2X1 U5514 ( .A(n6527), .B(n5138), .Y(n4277) );
  NOR2X2 U5515 ( .A(n3776), .B(n3773), .Y(n5148) );
  INVX1 U5516 ( .A(n4733), .Y(n4647) );
  NOR2X2 U5517 ( .A(n5787), .B(n7008), .Y(n5793) );
  NOR2X2 U5518 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n5234) );
  NAND2X1 U5519 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n5235) );
  NOR2X1 U5520 ( .A(n5233), .B(n5234), .Y(n5239) );
  NAND2X1 U5521 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n5521) );
  CLKINVX1 U5522 ( .A(median_sobel_inst_data_b_r[4]), .Y(n3702) );
  NOR2X2 U5523 ( .A(median_sobel_inst_data_g_r[4]), .B(n3696), .Y(n3695) );
  CLKINVX1 U5524 ( .A(n4569), .Y(n3580) );
  XOR2X1 U5525 ( .A(conv_inst_data_bcd_2_r[7]), .B(conv_inst_conv_2_r[7]), .Y(
        n4548) );
  NOR2X2 U5527 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .Y(n4815) );
  NAND2X1 U5528 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .Y(n4816) );
  NOR2X2 U5529 ( .A(n6606), .B(n4561), .Y(n5385) );
  NOR2X1 U5530 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n93), .Y(n5382) );
  NOR4X1 U5532 ( .A(n4447), .B(cnt[10]), .C(cnt[9]), .D(cnt[8]), .Y(n5783) );
  NAND2BX2 U5533 ( .AN(n3519), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .Y(n5289) );
  OAI21XL U5534 ( .A0(n4934), .A1(n2752), .B0(n5484), .Y(n4935) );
  INVX1 U5535 ( .A(n4958), .Y(n5466) );
  INVX3 U5536 ( .A(n4739), .Y(n4836) );
  XOR2X2 U5537 ( .A(n844), .B(n839), .Y(n3742) );
  NAND2BX2 U5538 ( .AN(median_sobel_inst_n367), .B(n3477), .Y(n4011) );
  XOR2X1 U5539 ( .A(conv_inst_data_abc_1_r[8]), .B(conv_inst_conv_1_r[8]), .Y(
        n4911) );
  AOI21X2 U5540 ( .A0(n4053), .A1(n4052), .B0(n4241), .Y(n4054) );
  NAND2BX2 U5541 ( .AN(median_sobel_inst_n408), .B(n5464), .Y(n4503) );
  NAND2X2 U5542 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4598) );
  NAND2X1 U5543 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .Y(n5232) );
  NAND2X2 U5544 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n36), .B(
        n4831), .Y(n4944) );
  NAND2X2 U5545 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .Y(n5388) );
  INVX1 U5546 ( .A(n5455), .Y(n4904) );
  INVX3 U5547 ( .A(n5491), .Y(n5458) );
  AOI21X2 U5548 ( .A0(n5488), .A1(n5487), .B0(n5486), .Y(n5489) );
  NOR2X1 U5549 ( .A(n5663), .B(n5666), .Y(n5668) );
  NAND2X2 U5550 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .B(n2788), .Y(n6136) );
  NAND2BX2 U5551 ( .AN(median_sobel_inst_u_median_filter_submodule_n487), .B(
        median_sobel_inst_u_median_filter_submodule_n159), .Y(n4675) );
  NOR2X4 U5552 ( .A(n5215), .B(n5509), .Y(n5595) );
  NAND2X1 U5553 ( .A(median_sobel_inst_n708), .B(n4430), .Y(n4110) );
  NOR2X6 U5555 ( .A(n5554), .B(n5560), .Y(n5517) );
  NAND2X4 U5556 ( .A(n5551), .B(n5557), .Y(n5519) );
  NOR2X4 U5557 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .B(
        n6517), .Y(n5509) );
  XOR2X2 U5558 ( .A(n833), .B(n893), .Y(n3879) );
  NOR2X4 U5559 ( .A(n3989), .B(n3993), .Y(n3995) );
  NOR2X2 U5560 ( .A(conv_inst_data_bcd_2_r[4]), .B(conv_inst_conv_2_r[4]), .Y(
        n4781) );
  NOR2X1 U5561 ( .A(n4506), .B(n4717), .Y(n5104) );
  BUFX20 U5562 ( .A(n4241), .Y(n6291) );
  NAND2X6 U5563 ( .A(n6430), .B(n6366), .Y(n6385) );
  OR2X2 U5564 ( .A(n901), .B(n900), .Y(n4568) );
  NOR2X4 U5565 ( .A(n6312), .B(o_in_ready), .Y(n6330) );
  NOR3X2 U5566 ( .A(n5504), .B(op_mode_r_1_), .C(n852), .Y(n4360) );
  INVX1 U5567 ( .A(median_sobel_inst_u_sober_compare_submodule_n55), .Y(n4586)
         );
  NAND2X2 U5568 ( .A(n6246), .B(n6905), .Y(n6237) );
  NAND2BX1 U5569 ( .AN(median_sobel_inst_n349), .B(n3725), .Y(n4306) );
  CLKINVX1 U5571 ( .A(n6233), .Y(n5591) );
  OAI22X1 U5572 ( .A0(n5769), .A1(n5768), .B0(n5767), .B1(n6636), .Y(n477) );
  AOI21X1 U5573 ( .A0(n5767), .A1(cnt[6]), .B0(cnt[7]), .Y(n5769) );
  NAND2XL U5574 ( .A(n5028), .B(n5027), .Y(n5029) );
  NAND2X6 U5575 ( .A(n3645), .B(n3647), .Y(n3538) );
  NAND3X2 U5576 ( .A(n6032), .B(n6031), .C(n6030), .Y(n6997) );
  NAND3X2 U5577 ( .A(n3013), .B(n6646), .C(n6039), .Y(n6032) );
  OAI22X1 U5578 ( .A0(n5766), .A1(n5765), .B0(n5767), .B1(n6504), .Y(n478) );
  AOI2BB2X2 U5579 ( .B0(n5884), .B1(n386), .A0N(n803), .A1N(n5888), .Y(n5803)
         );
  NOR2X1 U5581 ( .A(n5513), .B(median_sobel_inst_u_sober_compare_submodule_n54), .Y(median_sobel_inst_u_sober_compare_submodule_N1180) );
  NOR2X1 U5582 ( .A(n4588), .B(n4428), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1190) );
  NOR2X1 U5583 ( .A(n4589), .B(median_sobel_inst_u_sober_compare_submodule_n59), .Y(median_sobel_inst_u_sober_compare_submodule_N1230) );
  OAI22X1 U5584 ( .A0(n6629), .A1(n2681), .B0(median_sobel_inst_n372), .B1(
        n4466), .Y(n4116) );
  AOI2BB2X1 U5585 ( .B0(n4482), .B1(n6635), .A0N(n3634), .A1N(
        median_sobel_inst_n339), .Y(n4109) );
  OA22X2 U5586 ( .A0(median_sobel_inst_n409), .A1(n2778), .B0(
        median_sobel_inst_n401), .B1(n3484), .Y(n4477) );
  NAND2X1 U5587 ( .A(median_sobel_inst_n662), .B(n5415), .Y(n4321) );
  CLKINVX1 U5588 ( .A(n5908), .Y(median_sobel_inst_data_e_r[4]) );
  NAND2X2 U5589 ( .A(n3724), .B(n3513), .Y(n3617) );
  OAI22X1 U5590 ( .A0(n5928), .A1(median_sobel_inst_n391), .B0(
        median_sobel_inst_n383), .B1(n3484), .Y(n3618) );
  MXI2X1 U5591 ( .A(median_sobel_inst_u_sober_compare_submodule_n142), .B(
        n3528), .S0(n3711), .Y(
        median_sobel_inst_u_sober_compare_submodule_n115) );
  MXI2X1 U5592 ( .A(median_sobel_inst_u_sober_compare_submodule_n149), .B(
        n3531), .S0(n3711), .Y(
        median_sobel_inst_u_sober_compare_submodule_n108) );
  MXI2X1 U5593 ( .A(median_sobel_inst_u_sober_compare_submodule_n157), .B(
        n3524), .S0(n3711), .Y(
        median_sobel_inst_u_sober_compare_submodule_n100) );
  MXI2X1 U5594 ( .A(median_sobel_inst_u_sober_compare_submodule_n160), .B(
        n3525), .S0(n3711), .Y(median_sobel_inst_u_sober_compare_submodule_n97) );
  MXI2X1 U5595 ( .A(median_sobel_inst_u_sober_compare_submodule_n161), .B(
        n3526), .S0(n3711), .Y(median_sobel_inst_u_sober_compare_submodule_n96) );
  MXI2X1 U5596 ( .A(median_sobel_inst_u_sober_compare_submodule_n67), .B(n3527), .S0(n3711), .Y(median_sobel_inst_u_sober_compare_submodule_n119) );
  NAND2X1 U5597 ( .A(n4065), .B(n6890), .Y(n3984) );
  NAND2X2 U5598 ( .A(n3724), .B(n3518), .Y(n4137) );
  NAND2BX1 U5600 ( .AN(median_sobel_inst_n400), .B(n3724), .Y(n3768) );
  AOI2BB2X1 U5601 ( .B0(n3477), .B1(median_sobel_inst_n672), .A0N(
        median_sobel_inst_n258), .A1N(n3484), .Y(n3766) );
  AOI2BB1X1 U5602 ( .A0N(n3843), .A1N(
        median_sobel_inst_u_median_filter_submodule_n121), .B0(
        median_sobel_inst_u_median_filter_submodule_n787), .Y(n3844) );
  NAND2BX2 U5603 ( .AN(median_sobel_inst_u_median_filter_submodule_n810), .B(
        median_sobel_inst_u_median_filter_submodule_n820), .Y(n6056) );
  NAND3X1 U5604 ( .A(n5962), .B(n6603), .C(
        median_sobel_inst_u_median_filter_submodule_n801), .Y(n5964) );
  NOR2X2 U5605 ( .A(n4146), .B(n4148), .Y(n4140) );
  AOI2BB2X2 U5608 ( .B0(median_sobel_inst_u_median_filter_submodule_n258), 
        .B1(median_sobel_inst_u_median_filter_submodule_n825), .A0N(n6490), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n811), .Y(n6061) );
  NAND2BX2 U5609 ( .AN(median_sobel_inst_u_median_filter_submodule_n193), .B(
        median_sobel_inst_u_median_filter_submodule_n223), .Y(n3830) );
  NOR2X1 U5610 ( .A(median_sobel_inst_u_median_filter_submodule_n176), .B(
        median_sobel_inst_u_median_filter_submodule_n789), .Y(n3831) );
  NOR2X1 U5611 ( .A(n6505), .B(
        median_sobel_inst_u_median_filter_submodule_n221), .Y(n3813) );
  NOR2X2 U5612 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), .Y(
        n3582) );
  NAND2X1 U5613 ( .A(median_sobel_inst_u_median_filter_submodule_n91), .B(
        median_sobel_inst_u_median_filter_submodule_n797), .Y(n5978) );
  NAND2BX1 U5614 ( .AN(median_sobel_inst_u_median_filter_submodule_n799), .B(
        n5971), .Y(n5972) );
  NAND3XL U5615 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n37), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n87), .C(n4155), .Y(n4156) );
  OR2X2 U5616 ( .A(median_sobel_inst_u_sober_compare_submodule_n55), .B(
        median_sobel_inst_u_sober_compare_submodule_n169), .Y(n4407) );
  NAND2X1 U5617 ( .A(conv_inst_n44), .B(n2819), .Y(n4266) );
  INVX1 U5618 ( .A(n5630), .Y(n4007) );
  OAI21X1 U5619 ( .A0(n6050), .A1(
        median_sobel_inst_u_median_filter_submodule_n179), .B0(n6609), .Y(
        n6052) );
  NAND3BX1 U5620 ( .AN(median_sobel_inst_u_median_filter_submodule_n241), .B(
        median_sobel_inst_u_median_filter_submodule_b9_r[6]), .C(
        median_sobel_inst_u_median_filter_submodule_n179), .Y(n6051) );
  INVX3 U5621 ( .A(n4514), .Y(n4071) );
  NAND2X2 U5622 ( .A(n4518), .B(n4520), .Y(n4076) );
  NAND2BX1 U5623 ( .AN(n6630), .B(conv_inst_data_abc_1_r[9]), .Y(n4323) );
  AOI2BB1X1 U5624 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[20]), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n48), .B0(n4171), .Y(
        n4187) );
  OAI22XL U5625 ( .A0(n4183), .A1(n4170), .B0(n6728), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .Y(n4171) );
  NOR2XL U5626 ( .A(n4183), .B(n4182), .Y(n4184) );
  NOR2X1 U5627 ( .A(n3755), .B(n3621), .Y(n3754) );
  INVX3 U5629 ( .A(n5617), .Y(n6332) );
  OR2X2 U5630 ( .A(median_sobel_inst_u_sober_compare_submodule_n59), .B(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[7]), .Y(n4417) );
  NOR2X1 U5631 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .Y(n6082) );
  NOR2X2 U5632 ( .A(n5655), .B(n5659), .Y(n6083) );
  NOR2BX1 U5633 ( .AN(n6142), .B(n6141), .Y(n3567) );
  NOR2X1 U5634 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6105) );
  NAND2X2 U5635 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n25), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n41), .Y(n4595) );
  NOR2X2 U5636 ( .A(conv_inst_data_bcd_4_r[6]), .B(conv_inst_conv_4_r[6]), .Y(
        n4034) );
  AND2X4 U5637 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), .Y(
        n3989) );
  NOR2X2 U5638 ( .A(conv_inst_data_bcd_4_r[4]), .B(conv_inst_conv_4_r[4]), .Y(
        n4574) );
  NAND2X2 U5639 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), 
        .Y(n5094) );
  NOR3X6 U5640 ( .A(n4847), .B(n449), .C(n6955), .Y(n4358) );
  NAND2XL U5641 ( .A(n6120), .B(n5702), .Y(n5696) );
  CLKINVX1 U5642 ( .A(median_sobel_inst_u_median_filter_submodule_n229), .Y(
        n4019) );
  AOI22X1 U5643 ( .A0(conv_inst_conv_3_r[7]), .A1(n2774), .B0(
        conv_inst_conv_4_r[7]), .B1(n4267), .Y(n4221) );
  XOR2X1 U5644 ( .A(input_data_ready_r[23]), .B(n6625), .Y(n3890) );
  XNOR2X1 U5645 ( .A(input_data_ready_r[15]), .B(input_data_ready_r[22]), .Y(
        n3925) );
  NAND3XL U5646 ( .A(n7024), .B(n6392), .C(x_minus_one_r_0_), .Y(n6364) );
  NOR2XL U5648 ( .A(n7024), .B(n6548), .Y(n6420) );
  NAND2X1 U5649 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .Y(n6084) );
  INVX1 U5650 ( .A(n6085), .Y(n5644) );
  NAND2X1 U5651 ( .A(n6083), .B(n5652), .Y(n5646) );
  NAND2X1 U5652 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n6107) );
  MXI2X1 U5653 ( .A(n6394), .B(n6391), .S0(n6548), .Y(n6395) );
  NOR2X2 U5654 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .Y(n4978)
         );
  NOR2X2 U5655 ( .A(n4976), .B(n4978), .Y(n4993) );
  NAND2X2 U5656 ( .A(n5556), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .Y(n5555) );
  INVX1 U5657 ( .A(n5025), .Y(n4915) );
  INVX1 U5659 ( .A(n4878), .Y(n4879) );
  NAND2X6 U5660 ( .A(n4282), .B(n3676), .Y(n6309) );
  CLKINVX1 U5663 ( .A(n5900), .Y(n3707) );
  CLKINVX1 U5664 ( .A(median_sobel_inst_u_median_filter_submodule_n241), .Y(
        n6238) );
  NAND3X1 U5665 ( .A(conv_inst_data_abc_3_r[10]), .B(conv_inst_conv_3_r[10]), 
        .C(conv_inst_n54), .Y(n4008) );
  NOR2X2 U5666 ( .A(n6330), .B(n6329), .Y(n6342) );
  NOR3X2 U5667 ( .A(n6342), .B(n6341), .C(y_origin_r_2_), .Y(n6343) );
  AND2X2 U5669 ( .A(n5993), .B(n5992), .Y(n5994) );
  NAND2X1 U5670 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), .Y(n5681) );
  NOR2X2 U5671 ( .A(n4327), .B(n4865), .Y(n6241) );
  NAND2X2 U5672 ( .A(n5766), .B(n6311), .Y(n5533) );
  CLKINVX1 U5673 ( .A(median_sobel_inst_u_sober_compare_submodule_n53), .Y(
        n4428) );
  INVX4 U5674 ( .A(n4585), .Y(n5513) );
  NAND2BX1 U5675 ( .AN(n4186), .B(n4188), .Y(n3593) );
  AOI22X1 U5676 ( .A0(conv_inst_conv_2_r[10]), .A1(n4274), .B0(
        conv_inst_conv_4_r[10]), .B1(n4267), .Y(n4230) );
  AOI22X1 U5677 ( .A0(conv_inst_conv_1_r[10]), .A1(n2819), .B0(
        conv_inst_conv_3_r[10]), .B1(n2774), .Y(n4229) );
  NAND2X1 U5678 ( .A(n6719), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n5750) );
  OAI22X2 U5679 ( .A0(n3397), .A1(median_sobel_inst_n375), .B0(n3484), .B1(
        n4056), .Y(n4057) );
  NOR2X1 U5680 ( .A(n4308), .B(median_sobel_inst_n372), .Y(n3638) );
  NAND2X2 U5681 ( .A(n2954), .B(n6141), .Y(n3565) );
  XNOR2X1 U5682 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n5408) );
  NOR2X2 U5683 ( .A(n6602), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n5397) );
  NAND2BX1 U5684 ( .AN(n6488), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n4614) );
  NOR2X4 U5685 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), .Y(
        n4900) );
  NOR2X1 U5686 ( .A(n5713), .B(n5716), .Y(n5718) );
  OAI21X2 U5687 ( .A0(n5680), .A1(n5686), .B0(n5681), .Y(n6112) );
  INVX1 U5688 ( .A(n6106), .Y(n5676) );
  AOI2BB2X1 U5689 ( .B0(n3902), .B1(median_sobel_inst_n688), .A0N(n3634), 
        .A1N(median_sobel_inst_n420), .Y(n4197) );
  AOI21X1 U5690 ( .A0(median_sobel_inst_n390), .A1(n6890), .B0(
        median_sobel_inst_n747), .Y(n3809) );
  BUFX12 U5691 ( .A(n3719), .Y(n5378) );
  NAND2X2 U5692 ( .A(n5550), .B(n5549), .Y(n5548) );
  XOR2X1 U5693 ( .A(conv_inst_data_bcd_4_r[9]), .B(conv_inst_conv_4_r[9]), .Y(
        n4545) );
  NOR2X6 U5694 ( .A(n3986), .B(n3985), .Y(n5335) );
  XNOR2X1 U5696 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), 
        .Y(n4526) );
  INVX1 U5697 ( .A(n5102), .Y(n5103) );
  NAND2X2 U5698 ( .A(n6306), .B(conv_inst_n42), .Y(n6279) );
  NAND2X6 U5699 ( .A(n6430), .B(n6429), .Y(n6464) );
  NAND3X2 U5701 ( .A(n4972), .B(n4971), .C(n4970), .Y(n5779) );
  NAND2X2 U5702 ( .A(next_state_3_), .B(n6313), .Y(n6314) );
  NOR2X2 U5703 ( .A(n5763), .B(n6885), .Y(n5543) );
  INVX1 U5704 ( .A(n5540), .Y(n5541) );
  OAI22X1 U5705 ( .A0(n5916), .A1(n816), .B0(n853), .B1(n5846), .Y(n5835) );
  NAND3X2 U5706 ( .A(n5507), .B(n5794), .C(n5795), .Y(n5787) );
  OAI22XL U5707 ( .A0(n778), .A1(n5920), .B0(n791), .B1(n5846), .Y(n5843) );
  OAI22XL U5708 ( .A0(n7850), .A1(n5918), .B0(n8110), .B1(n5916), .Y(n5842) );
  NOR2X1 U5709 ( .A(n4789), .B(n5613), .Y(conv_inst_N224) );
  NOR2X1 U5710 ( .A(n4809), .B(n5613), .Y(conv_inst_N277) );
  OAI21XL U5711 ( .A0(median_sobel_inst_u_median_filter_submodule_n70), .A1(
        n5519), .B0(n5512), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[1]) );
  NAND2X1 U5712 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(n5218) );
  NAND2X1 U5713 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n5217) );
  NAND2X1 U5714 ( .A(n5595), .B(n6872), .Y(n5216) );
  OAI21XL U5715 ( .A0(median_sobel_inst_u_median_filter_submodule_n75), .A1(
        n5452), .B0(n5451), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[3]) );
  NAND2XL U5716 ( .A(n5707), .B(n5706), .Y(n5708) );
  NOR2X2 U5717 ( .A(n6144), .B(n6873), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N142) );
  OAI21XL U5719 ( .A0(n5170), .A1(n5169), .B0(n5168), .Y(n1432) );
  INVX1 U5720 ( .A(n5164), .Y(n5170) );
  INVX1 U5721 ( .A(n6341), .Y(n5168) );
  XOR2X1 U5722 ( .A(n6091), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N330) );
  NAND3X1 U5723 ( .A(n6414), .B(n6450), .C(n6413), .Y(sram_addr_wait_r[8]) );
  NAND2X1 U5724 ( .A(n6412), .B(cnt[3]), .Y(n6414) );
  NAND3X1 U5725 ( .A(n6401), .B(n6434), .C(n6400), .Y(sram_addr_wait_r[14]) );
  NAND2X1 U5726 ( .A(n6412), .B(cnt[9]), .Y(n6401) );
  NAND3X1 U5727 ( .A(n6403), .B(n6437), .C(n6402), .Y(sram_addr_wait_r[13]) );
  NAND2X1 U5728 ( .A(n6412), .B(cnt[8]), .Y(n6403) );
  NAND3X1 U5729 ( .A(n6399), .B(n6431), .C(n6398), .Y(sram_addr_wait_r[15]) );
  NAND2X1 U5730 ( .A(n6412), .B(cnt[10]), .Y(n6399) );
  NAND3X1 U5731 ( .A(n6411), .B(n6447), .C(n6410), .Y(sram_addr_wait_r[9]) );
  NAND2X1 U5732 ( .A(n6412), .B(cnt[4]), .Y(n6411) );
  NAND3X1 U5733 ( .A(n6407), .B(n6441), .C(n6406), .Y(sram_addr_wait_r[11]) );
  NAND2X1 U5734 ( .A(n6412), .B(cnt[6]), .Y(n6407) );
  XOR2X1 U5735 ( .A(n6081), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N430) );
  NAND2X1 U5736 ( .A(n6008), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(n4825) );
  NOR2X2 U5737 ( .A(n5806), .B(n5829), .Y(n7008) );
  NAND2X1 U5738 ( .A(n5595), .B(n6881), .Y(n5364) );
  NAND2X1 U5739 ( .A(n5593), .B(n5363), .Y(n5366) );
  OAI21X1 U5740 ( .A0(n4819), .A1(n4815), .B0(n4816), .Y(n4763) );
  CLKINVX3 U5741 ( .A(n6289), .Y(n6276) );
  XNOR2X1 U5742 ( .A(n5649), .B(n5648), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]) );
  INVX1 U5743 ( .A(n6086), .Y(n5647) );
  AND2X2 U5744 ( .A(n5922), .B(n5921), .Y(N717) );
  OAI21XL U5745 ( .A0(n8140), .A1(n5920), .B0(n5919), .Y(n5922) );
  AOI2BB1X1 U5746 ( .A0N(n794), .A1N(n5918), .B0(n5917), .Y(n5919) );
  NAND2XL U5747 ( .A(n5272), .B(n5271), .Y(n5273) );
  NOR2X1 U5748 ( .A(n4341), .B(n6291), .Y(conv_inst_N245) );
  OA21XL U5749 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n24), .A1(
        n5537), .B0(n5536), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N680) );
  NAND2XL U5750 ( .A(n4980), .B(n4979), .Y(n4981) );
  INVX1 U5751 ( .A(n4978), .Y(n4980) );
  MXI2X1 U5752 ( .A(n5294), .B(conv_result_w[6]), .S0(n2719), .Y(n5295) );
  AOI21X1 U5753 ( .A0(n5468), .A1(n5466), .B0(n4959), .Y(n4964) );
  INVX1 U5754 ( .A(n4960), .Y(n4962) );
  NAND2XL U5755 ( .A(n4869), .B(n5249), .Y(n4870) );
  OAI21X1 U5756 ( .A0(n4868), .A1(n5248), .B0(n5250), .Y(n4871) );
  XOR2X1 U5757 ( .A(n3785), .B(n3784), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]) );
  INVX1 U5758 ( .A(n5147), .Y(n3783) );
  XOR2X1 U5759 ( .A(n3772), .B(n3771), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]) );
  INVX1 U5760 ( .A(n3776), .Y(n3770) );
  AOI2BB1X1 U5761 ( .A0N(n5824), .A1N(n5823), .B0(n5847), .Y(N691) );
  OAI22XL U5762 ( .A0(n780), .A1(n5920), .B0(n797), .B1(n5846), .Y(n5824) );
  AOI2BB1X1 U5763 ( .A0N(n5820), .A1N(n5819), .B0(n5847), .Y(N693) );
  OAI21XL U5764 ( .A0(n8140), .A1(n5918), .B0(n5817), .Y(n5820) );
  AOI22XL U5765 ( .A0(n6775), .A1(n5827), .B0(n5829), .B1(n401), .Y(n5817) );
  XOR2X1 U5766 ( .A(n5352), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N230) );
  XOR2X1 U5767 ( .A(n6129), .B(n5712), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]) );
  NAND2XL U5768 ( .A(n5711), .B(n5710), .Y(n5712) );
  INVX1 U5769 ( .A(n4734), .Y(n4649) );
  XOR2X2 U5770 ( .A(n6169), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N158) );
  NAND2XL U5771 ( .A(n5126), .B(n5125), .Y(n5127) );
  OAI21X1 U5772 ( .A0(n5287), .A1(n5283), .B0(n5284), .Y(n5128) );
  INVXL U5773 ( .A(n5124), .Y(n5126) );
  OAI21XL U5774 ( .A0(n6739), .A1(n6010), .B0(n4867), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[5]) );
  INVX1 U5775 ( .A(n5795), .Y(n5796) );
  INVX1 U5776 ( .A(n5151), .Y(n3780) );
  INVX1 U5777 ( .A(n5260), .Y(n5261) );
  AOI2BB2X1 U5778 ( .B0(n6213), .B1(n6823), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n84), .Y(n6202) );
  AOI2BB2X1 U5779 ( .B0(n6213), .B1(n6825), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n86), .Y(n6211) );
  AOI2BB2X1 U5780 ( .B0(n6213), .B1(n6824), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n83), .Y(n6208) );
  INVX1 U5781 ( .A(n6264), .Y(n6265) );
  OAI21XL U5782 ( .A0(n6768), .A1(n4811), .B0(n4810), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[6]) );
  NAND2X1 U5783 ( .A(n5623), .B(n6352), .Y(n5626) );
  AOI22X1 U5784 ( .A0(n5622), .A1(n472), .B0(n6334), .B1(n5621), .Y(n5627) );
  XNOR2X1 U5785 ( .A(n5704), .B(n5703), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]) );
  INVX1 U5786 ( .A(n6126), .Y(n5700) );
  NAND2X1 U5787 ( .A(n5728), .B(n6095), .Y(n5729) );
  INVX1 U5788 ( .A(n6099), .Y(n5726) );
  OAI21XL U5789 ( .A0(n6901), .A1(n4844), .B0(n4843), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[2]) );
  OAI21XL U5790 ( .A0(n6514), .A1(n6010), .B0(n6009), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[1]) );
  XOR2X1 U5791 ( .A(n5760), .B(n5759), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1160) );
  AOI2BB2X1 U5792 ( .B0(median_sobel_inst_u_sober_compare_submodule_n34), .B1(
        n6213), .A0N(n6212), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n85), .Y(n6205) );
  AOI2BB1X1 U5793 ( .A0N(n5849), .A1N(n5848), .B0(n5847), .Y(N692) );
  OAI22XL U5794 ( .A0(n781), .A1(n5846), .B0(n804), .B1(n5916), .Y(n5849) );
  OAI22XL U5795 ( .A0(n787), .A1(n5918), .B0(n5920), .B1(n3516), .Y(n5848) );
  INVX1 U5796 ( .A(median_sobel_inst_u_median_filter_submodule_n243), .Y(n6231) );
  OAI21XL U5797 ( .A0(i_op_valid), .A1(n6311), .B0(n4862), .Y(n1435) );
  INVX1 U5798 ( .A(conv_inst_n47), .Y(n4244) );
  NOR3XL U5799 ( .A(n6259), .B(conv_inst_n47), .C(n4279), .Y(n4242) );
  NAND2X1 U5800 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .Y(n5368) );
  NAND2X1 U5801 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .Y(n5369) );
  OAI21XL U5802 ( .A0(n6657), .A1(n6010), .B0(n4875), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[4]) );
  AOI2BB2X2 U5803 ( .B0(n5884), .B1(n403), .A0N(n801), .A1N(n5888), .Y(n5873)
         );
  AOI2BB2X2 U5804 ( .B0(n5884), .B1(n6848), .A0N(n884), .A1N(n5888), .Y(n5811)
         );
  NAND2X1 U5805 ( .A(n5839), .B(n5838), .Y(N697) );
  NOR3XL U5806 ( .A(n6259), .B(n4803), .C(n4533), .Y(conv_inst_N237) );
  OAI21XL U5807 ( .A0(n6901), .A1(n4675), .B0(n4674), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[2]) );
  NOR2X1 U5808 ( .A(n6259), .B(n4726), .Y(conv_inst_N239) );
  OAI21XL U5809 ( .A0(n4722), .A1(n4723), .B0(n4721), .Y(n4725) );
  NAND2X1 U5810 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .Y(n5597) );
  NAND2X1 U5811 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .Y(n5598) );
  OAI22XL U5812 ( .A0(n5558), .A1(n6545), .B0(n5557), .B1(
        median_sobel_inst_u_median_filter_submodule_n56), .Y(n5559) );
  INVX1 U5813 ( .A(n5508), .Y(n4863) );
  NOR2X1 U5814 ( .A(n4444), .B(n5613), .Y(conv_inst_N243) );
  XOR2X1 U5815 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n95), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N6) );
  NAND2XL U5816 ( .A(n5443), .B(n5442), .Y(n5445) );
  INVX1 U5817 ( .A(n5441), .Y(n5443) );
  NAND2XL U5818 ( .A(n4817), .B(n4816), .Y(n4818) );
  INVX1 U5819 ( .A(n5382), .Y(n5384) );
  XOR2X1 U5820 ( .A(n6115), .B(n5688), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]) );
  NAND2XL U5822 ( .A(n472), .B(n885), .Y(n5199) );
  MXI2X1 U5823 ( .A(median_sobel_inst_n228), .B(median_sobel_inst_n390), .S0(
        n2778), .Y(median_sobel_inst_n562) );
  XOR2X1 U5824 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n95), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N360) );
  INVX1 U5825 ( .A(n5426), .Y(n5428) );
  XOR2X1 U5826 ( .A(n6088), .B(n5662), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]) );
  INVXL U5827 ( .A(n5659), .Y(n5661) );
  OA22X1 U5828 ( .A0(median_sobel_inst_u_sober_compare_submodule_n159), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n79), .B1(
        n6181), .Y(n4708) );
  OAI21X1 U5829 ( .A0(n488), .A1(n5801), .B0(n5800), .Y(n487) );
  XOR2X1 U5830 ( .A(n822), .B(cnt[6]), .Y(n5782) );
  OA21XL U5831 ( .A0(n5915), .A1(n5914), .B0(n5921), .Y(N718) );
  OAI22XL U5832 ( .A0(n5916), .A1(n6649), .B0(n884), .B1(n5846), .Y(n5914) );
  OAI22XL U5833 ( .A0(n801), .A1(n5918), .B0(n5920), .B1(n820), .Y(n5915) );
  MXI2X1 U5835 ( .A(n5533), .B(n5766), .S0(n6611), .Y(n480) );
  NAND2XL U5836 ( .A(n4607), .B(n4628), .Y(n4608) );
  NOR2X1 U5837 ( .A(n4588), .B(n4587), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1160) );
  NOR2X1 U5838 ( .A(n4589), .B(
        median_sobel_inst_u_sober_compare_submodule_n224), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1200) );
  NOR2X1 U5839 ( .A(n4588), .B(median_sobel_inst_u_sober_compare_submodule_n60), .Y(median_sobel_inst_u_sober_compare_submodule_N1240) );
  AND2X2 U5840 ( .A(n5493), .B(n6559), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1260) );
  MX2X1 U5841 ( .A(n5000), .B(n4999), .S0(median_sobel_inst_n713), .Y(n5002)
         );
  AOI22X2 U5842 ( .A0(n5415), .A1(median_sobel_inst_n715), .B0(n4430), .B1(
        n3510), .Y(n3625) );
  NAND2X1 U5843 ( .A(n5517), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .Y(n4930) );
  MXI2X1 U5844 ( .A(n3497), .B(n839), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[46]) );
  OAI22XL U5845 ( .A0(n4600), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .B0(n4599), 
        .B1(n6488), .Y(n4601) );
  INVX1 U5846 ( .A(n4598), .Y(n4600) );
  NOR2X2 U5847 ( .A(n4524), .B(n5613), .Y(conv_inst_N225) );
  XNOR2X2 U5848 ( .A(n4523), .B(n4522), .Y(n4524) );
  NAND2X1 U5850 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n5347) );
  NAND2X1 U5851 ( .A(n5595), .B(n6880), .Y(n5353) );
  NAND2X1 U5852 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .Y(n5355) );
  NAND2X1 U5853 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n5354) );
  OAI21XL U5854 ( .A0(n6877), .A1(n5452), .B0(n4454), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[4]) );
  NAND2X1 U5855 ( .A(n5595), .B(n6862), .Y(n5360) );
  NAND2X1 U5856 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(n5361) );
  NAND2X1 U5857 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(n5362) );
  XOR2X2 U5858 ( .A(n4553), .B(n4552), .Y(n4554) );
  NAND2X1 U5859 ( .A(n5480), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5459)
         );
  MXI2X1 U5860 ( .A(median_sobel_inst_u_sober_compare_submodule_n148), .B(
        n3530), .S0(n3711), .Y(
        median_sobel_inst_u_sober_compare_submodule_n109) );
  AND3X2 U5861 ( .A(n5493), .B(n6553), .C(n5114), .Y(n6619) );
  MXI2X1 U5862 ( .A(median_sobel_inst_u_sober_compare_submodule_n68), .B(n3529), .S0(n3711), .Y(median_sobel_inst_u_sober_compare_submodule_n120) );
  OA22X1 U5863 ( .A0(median_sobel_inst_u_sober_compare_submodule_n151), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n87), .B1(
        n6181), .Y(n4705) );
  OA22X1 U5864 ( .A0(median_sobel_inst_u_sober_compare_submodule_n152), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n86), .B1(
        n6181), .Y(n4694) );
  OA22X1 U5865 ( .A0(median_sobel_inst_u_sober_compare_submodule_n154), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n84), .B1(
        n6181), .Y(n4703) );
  OA22X1 U5866 ( .A0(median_sobel_inst_u_sober_compare_submodule_n160), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n78), .B1(
        n6181), .Y(n4668) );
  OA22X1 U5867 ( .A0(median_sobel_inst_u_sober_compare_submodule_n158), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n80), .B1(
        n6181), .Y(n4665) );
  OAI2BB1X1 U5868 ( .A0N(n3711), .A1N(median_sobel_inst_angle[5]), .B0(n3635), 
        .Y(median_sobel_inst_u_sober_compare_submodule_n91) );
  NAND2X1 U5869 ( .A(n3634), .B(
        median_sobel_inst_u_sober_compare_submodule_n47), .Y(n3635) );
  OA22X1 U5870 ( .A0(median_sobel_inst_u_sober_compare_submodule_n161), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n77), .B1(
        n6181), .Y(n4671) );
  MXI2X1 U5871 ( .A(median_sobel_inst_u_sober_compare_submodule_n140), .B(
        n3532), .S0(n4478), .Y(
        median_sobel_inst_u_sober_compare_submodule_n117) );
  OA22X1 U5872 ( .A0(median_sobel_inst_u_sober_compare_submodule_n156), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n82), .B1(
        n6181), .Y(n4697) );
  OA22X1 U5873 ( .A0(median_sobel_inst_u_sober_compare_submodule_n157), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n81), .B1(
        n6181), .Y(n4700) );
  OA22X1 U5874 ( .A0(median_sobel_inst_u_sober_compare_submodule_n155), .A1(
        n6178), .B0(median_sobel_inst_u_sober_compare_submodule_n83), .B1(
        n6181), .Y(n4711) );
  INVX1 U5875 ( .A(n5377), .Y(n5371) );
  AND2X2 U5876 ( .A(n6118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N14) );
  AND2X2 U5877 ( .A(n5352), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N240) );
  MXI2X1 U5878 ( .A(n6652), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n51), .S0(n6133), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N740) );
  OR2X2 U5879 ( .A(n6132), .B(median_sobel_inst_u_sobel_gradient_submodule_n64), .Y(n6133) );
  XOR2X1 U5880 ( .A(n6102), .B(n5739), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]) );
  INVXL U5881 ( .A(n5736), .Y(n5738) );
  INVX1 U5882 ( .A(n4685), .Y(n4645) );
  INVX1 U5883 ( .A(n4677), .Y(n4642) );
  NAND2XL U5884 ( .A(n5021), .B(n5664), .Y(n5022) );
  NAND2XL U5885 ( .A(n5438), .B(n5437), .Y(n5440) );
  INVX1 U5886 ( .A(n4826), .Y(n4632) );
  INVX1 U5887 ( .A(n5372), .Y(n5374) );
  INVX1 U5888 ( .A(n5387), .Y(n5389) );
  XOR2X1 U5889 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N107) );
  XOR2X1 U5890 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N147) );
  INVX1 U5891 ( .A(n4926), .Y(n4905) );
  INVX1 U5892 ( .A(n4828), .Y(n4653) );
  XOR2X1 U5893 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n80), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N167) );
  NAND2XL U5894 ( .A(n5405), .B(n5404), .Y(n5407) );
  OR2X6 U5895 ( .A(n4117), .B(n3688), .Y(median_sobel_inst_data_a_r[0]) );
  NOR2X1 U5896 ( .A(median_sobel_inst_n373), .B(n4308), .Y(n4133) );
  NAND2X2 U5897 ( .A(median_sobel_inst_n671), .B(n5415), .Y(n4376) );
  NAND2BX1 U5898 ( .AN(median_sobel_inst_n413), .B(n4379), .Y(n5883) );
  NAND2BX1 U5899 ( .AN(median_sobel_inst_n348), .B(n3725), .Y(n4305) );
  AOI2BB2X2 U5900 ( .B0(n3477), .B1(n6600), .A0N(n3634), .A1N(
        median_sobel_inst_n422), .Y(n3799) );
  OR2X2 U5902 ( .A(median_sobel_inst_n414), .B(n4466), .Y(n4467) );
  OAI2BB1X1 U5903 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), 
        .A1N(n6000), .B0(n5571), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[7]) );
  NAND2X1 U5904 ( .A(n5593), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n5221) );
  NAND2X1 U5905 ( .A(n5595), .B(n6871), .Y(n5219) );
  OAI21XL U5906 ( .A0(n6911), .A1(n5452), .B0(n4455), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[6]) );
  OAI21XL U5907 ( .A0(n4811), .A1(n6724), .B0(n4757), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[4]) );
  OAI21XL U5908 ( .A0(n6764), .A1(n4811), .B0(n4752), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[3]) );
  NOR2X4 U5910 ( .A(n4112), .B(n3548), .Y(n4113) );
  NOR2X1 U5911 ( .A(n3612), .B(median_sobel_inst_n427), .Y(n3548) );
  OAI21XL U5912 ( .A0(median_sobel_inst_u_median_filter_submodule_n70), .A1(
        n5557), .B0(n5454), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[1]) );
  NAND3X6 U5913 ( .A(n4296), .B(n4298), .C(n4297), .Y(
        median_sobel_inst_data_b_r[6]) );
  AOI2BB2X1 U5914 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .A0N(n5516), 
        .A1N(n6545), .Y(n4465) );
  NAND2X2 U5915 ( .A(median_sobel_inst_n671), .B(n4481), .Y(n4253) );
  OAI2BB2X2 U5916 ( .B0(n3397), .B1(median_sobel_inst_n399), .A0N(n4430), 
        .A1N(median_sobel_inst_n715), .Y(n4118) );
  MXI2X1 U5917 ( .A(n3498), .B(n3534), .S0(n3711), .Y(median_sobel_inst_n486)
         );
  MXI2X1 U5918 ( .A(n6784), .B(n3496), .S0(n3711), .Y(median_sobel_inst_n482)
         );
  MXI2X1 U5919 ( .A(n6788), .B(n3494), .S0(n3711), .Y(median_sobel_inst_n466)
         );
  MX2X1 U5920 ( .A(median_sobel_inst_G[31]), .B(n6857), .S0(n3902), .Y(
        median_sobel_inst_n459) );
  MXI2X1 U5921 ( .A(n6791), .B(n3495), .S0(n3711), .Y(median_sobel_inst_n450)
         );
  MX2X1 U5922 ( .A(median_sobel_inst_G[26]), .B(n6854), .S0(n3902), .Y(
        median_sobel_inst_n479) );
  MX2X1 U5923 ( .A(median_sobel_inst_G[27]), .B(n6852), .S0(n3902), .Y(
        median_sobel_inst_n475) );
  MX2X1 U5924 ( .A(median_sobel_inst_G[30]), .B(n6856), .S0(n3902), .Y(
        median_sobel_inst_n463) );
  MXI2X1 U5925 ( .A(n862), .B(median_sobel_inst_n235), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[56]) );
  MXI2X1 U5926 ( .A(median_sobel_inst_n241), .B(n6827), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[62]) );
  MXI2X1 U5927 ( .A(median_sobel_inst_n201), .B(n6829), .S0(n3902), .Y(
        median_sobel_inst_med_sobel_e_wait_r[27]) );
  MXI2X1 U5928 ( .A(median_sobel_inst_n156), .B(n5612), .S0(n2776), .Y(
        median_sobel_inst_med_sobel_e_wait_r[1]) );
  MXI2X1 U5929 ( .A(median_sobel_inst_n179), .B(n8660), .S0(n2776), .Y(
        median_sobel_inst_med_sobel_e_wait_r[7]) );
  MXI2X1 U5930 ( .A(median_sobel_inst_n191), .B(n839), .S0(n3902), .Y(
        median_sobel_inst_med_sobel_e_wait_r[18]) );
  MXI2X1 U5931 ( .A(n6827), .B(median_sobel_inst_n257), .S0(n5210), .Y(n6551)
         );
  MXI2X1 U5932 ( .A(n6833), .B(median_sobel_inst_n261), .S0(n5378), .Y(n6532)
         );
  MXI2X1 U5933 ( .A(n6742), .B(median_sobel_inst_n258), .S0(n5378), .Y(n6758)
         );
  MXI2X1 U5934 ( .A(n6561), .B(median_sobel_inst_n262), .S0(n5210), .Y(n6749)
         );
  MXI2X1 U5935 ( .A(n6604), .B(median_sobel_inst_n256), .S0(n2778), .Y(n6750)
         );
  MXI2X1 U5936 ( .A(median_sobel_inst_n377), .B(median_sobel_inst_n225), .S0(
        n5879), .Y(n6705) );
  MXI2X1 U5937 ( .A(median_sobel_inst_n359), .B(median_sobel_inst_n195), .S0(
        n5415), .Y(n6725) );
  MXI2X1 U5938 ( .A(median_sobel_inst_n360), .B(median_sobel_inst_n210), .S0(
        n5464), .Y(n6693) );
  MXI2X1 U5939 ( .A(median_sobel_inst_n336), .B(median_sobel_inst_n186), .S0(
        n5923), .Y(n6694) );
  NAND2X4 U5940 ( .A(n3678), .B(n3677), .Y(median_sobel_inst_n991) );
  NAND3X2 U5941 ( .A(n3914), .B(n4635), .C(n6659), .Y(n3677) );
  NAND4X4 U5942 ( .A(n3917), .B(n4634), .C(n3909), .D(median_sobel_inst_n700), 
        .Y(n3678) );
  MXI2X1 U5943 ( .A(n6478), .B(median_sobel_inst_n263), .S0(n5378), .Y(n6759)
         );
  MXI2X1 U5944 ( .A(n839), .B(median_sobel_inst_n167), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[74]) );
  MXI2X1 U5945 ( .A(n2775), .B(median_sobel_inst_n164), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[71]) );
  MXI2X1 U5946 ( .A(median_sobel_inst_n396), .B(median_sobel_inst_n238), .S0(
        n5923), .Y(n6695) );
  MXI2X1 U5947 ( .A(median_sobel_inst_n353), .B(median_sobel_inst_n201), .S0(
        n5415), .Y(n6727) );
  MXI2X1 U5948 ( .A(median_sobel_inst_n363), .B(median_sobel_inst_n207), .S0(
        n5879), .Y(n6531) );
  MXI2X1 U5949 ( .A(median_sobel_inst_n361), .B(median_sobel_inst_n209), .S0(
        n5464), .Y(n6550) );
  MXI2X1 U5950 ( .A(median_sobel_inst_n408), .B(median_sobel_inst_n170), .S0(
        n5879), .Y(n6530) );
  NAND2X1 U5951 ( .A(n869), .B(n2985), .Y(n4590) );
  NOR2XL U5952 ( .A(n5550), .B(n5420), .Y(conv_inst_N66) );
  AND2X2 U5953 ( .A(n5419), .B(n5418), .Y(n5420) );
  XNOR2X1 U5954 ( .A(conv_inst_data_bcd_2_r[10]), .B(conv_inst_conv_2_r[10]), 
        .Y(n5100) );
  XOR2X2 U5955 ( .A(n4540), .B(n4539), .Y(n4541) );
  NOR2X1 U5957 ( .A(n6259), .B(n4720), .Y(conv_inst_N270) );
  NOR2X1 U5958 ( .A(n6259), .B(n4718), .Y(conv_inst_N253) );
  AO22X1 U5959 ( .A0(n5561), .A1(median_sobel_inst_sobel_out_data_w[10]), .B0(
        conv_result_w[10]), .B1(n2719), .Y(out_data_wait_r[10]) );
  AO22X1 U5960 ( .A0(n5561), .A1(median_sobel_inst_sobel_out_data_w[9]), .B0(
        conv_result_w[9]), .B1(n2719), .Y(out_data_wait_r[9]) );
  AO22X1 U5961 ( .A0(n5561), .A1(median_sobel_inst_sobel_out_data_w[8]), .B0(
        conv_result_w[8]), .B1(n2719), .Y(out_data_wait_r[8]) );
  INVXL U5962 ( .A(n7008), .Y(n2651) );
  NOR2XL U5963 ( .A(n5504), .B(n4593), .Y(n1443) );
  AOI2BB1X1 U5964 ( .A0N(n5831), .A1N(n5830), .B0(n5847), .Y(N690) );
  OAI21XL U5965 ( .A0(n786), .A1(n5918), .B0(n5828), .Y(n5831) );
  CLKBUFX8 U5966 ( .A(n6940), .Y(n6914) );
  AND2X2 U5967 ( .A(n5921), .B(n5583), .Y(N712) );
  OAI21XL U5968 ( .A0(n784), .A1(n5920), .B0(n5582), .Y(n5583) );
  NOR2X1 U5969 ( .A(n5916), .B(n6512), .Y(n5580) );
  AND2X2 U5970 ( .A(n3477), .B(n3515), .Y(n3492) );
  OAI22X4 U5971 ( .A0(n6495), .A1(
        median_sobel_inst_u_median_filter_submodule_n241), .B0(
        median_sobel_inst_u_median_filter_submodule_n818), .B1(
        median_sobel_inst_u_median_filter_submodule_b1_r[7]), .Y(n3503) );
  AND2X2 U5972 ( .A(n3479), .B(n3504), .Y(n3505) );
  OR2X2 U5973 ( .A(n5378), .B(median_sobel_inst_n263), .Y(n3512) );
  INVX3 U5974 ( .A(median_sobel_inst_data_b_r[7]), .Y(n5900) );
  CLKBUFX8 U5976 ( .A(i_rst_n), .Y(n6943) );
  BUFX12 U5977 ( .A(i_rst_n), .Y(n6931) );
  BUFX4 U5978 ( .A(n6944), .Y(n6926) );
  BUFX4 U5979 ( .A(n6944), .Y(n6927) );
  CLKBUFX8 U5980 ( .A(n6941), .Y(n6917) );
  CLKBUFX8 U5981 ( .A(n6940), .Y(n6913) );
  CLKBUFX8 U5982 ( .A(n6939), .Y(n6916) );
  CLKBUFX8 U5983 ( .A(n6930), .Y(n6929) );
  CLKBUFX8 U5984 ( .A(n6937), .Y(n6921) );
  CLKBUFX8 U5985 ( .A(n6932), .Y(n6928) );
  CLKBUFX8 U5986 ( .A(n6935), .Y(n6923) );
  CLKBUFX8 U5987 ( .A(n6934), .Y(n6924) );
  CLKBUFX8 U5988 ( .A(n6942), .Y(n6919) );
  BUFX12 U5989 ( .A(i_rst_n), .Y(n6941) );
  NAND2X6 U5990 ( .A(n3730), .B(n3552), .Y(n4227) );
  NOR2X4 U5991 ( .A(n6299), .B(n6301), .Y(n4282) );
  NAND3X6 U5992 ( .A(n3539), .B(n3538), .C(n4318), .Y(
        median_sobel_inst_u_median_filter_submodule_n748) );
  OAI21X2 U5993 ( .A0(n6129), .A1(n5696), .B0(n5695), .Y(n5699) );
  OAI21X4 U5994 ( .A0(n3542), .A1(n3950), .B0(n3949), .Y(n3952) );
  NAND3X2 U5995 ( .A(n3013), .B(n6039), .C(
        median_sobel_inst_u_median_filter_submodule_n211), .Y(n6025) );
  NOR2X4 U5998 ( .A(n3938), .B(n3937), .Y(n3940) );
  OAI2BB1X4 U5999 ( .A0N(n3964), .A1N(n3965), .B0(n3543), .Y(n3967) );
  NOR2X4 U6001 ( .A(n4174), .B(n4151), .Y(n4152) );
  NAND4X2 U6002 ( .A(n4172), .B(n4143), .C(n4155), .D(n4154), .Y(n4153) );
  NAND2X4 U6003 ( .A(n3701), .B(median_sobel_inst_n102), .Y(n3704) );
  XOR2X2 U6004 ( .A(n4923), .B(n4922), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]) );
  AOI21X4 U6006 ( .A0(n3546), .A1(n3694), .B0(n5862), .Y(n5866) );
  NAND2X6 U6008 ( .A(n3789), .B(n3788), .Y(n3996) );
  NAND4X6 U6010 ( .A(n6305), .B(n6304), .C(conv_inst_conv_3_r[14]), .D(
        conv_inst_conv_3_r[15]), .Y(n6308) );
  NAND2X6 U6012 ( .A(n6305), .B(n6304), .Y(n5632) );
  NOR2X4 U6013 ( .A(n3787), .B(n3786), .Y(n3788) );
  BUFX12 U6014 ( .A(conv_inst_n28), .Y(n3552) );
  NOR3X4 U6015 ( .A(n4569), .B(n4575), .C(n4571), .Y(n3933) );
  NAND3X6 U6016 ( .A(n3680), .B(n3917), .C(n3679), .Y(median_sobel_inst_ns[2])
         );
  NAND2X2 U6017 ( .A(n5301), .B(n5300), .Y(out_data_wait_r[5]) );
  NAND2X2 U6018 ( .A(n5306), .B(n5305), .Y(out_data_wait_r[1]) );
  NAND2X2 U6019 ( .A(n5311), .B(n5310), .Y(out_data_wait_r[3]) );
  NAND2X2 U6020 ( .A(n5316), .B(n5315), .Y(out_data_wait_r[2]) );
  NOR2X2 U6021 ( .A(n6295), .B(conv_inst_conv_2_r[16]), .Y(n4356) );
  OAI22X4 U6022 ( .A0(n5861), .A1(median_sobel_inst_data_d_r[6]), .B0(n3177), 
        .B1(median_sobel_inst_data_d_r[5]), .Y(n5862) );
  NOR2X2 U6023 ( .A(n5044), .B(n5613), .Y(conv_inst_N261) );
  NOR2X4 U6024 ( .A(n3560), .B(n6981), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N128) );
  NAND2X2 U6025 ( .A(median_sobel_inst_n713), .B(n5209), .Y(n3919) );
  OAI21X4 U6027 ( .A0(n5377), .A1(n3553), .B0(n3564), .Y(n4735) );
  NAND2X2 U6028 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n4732)
         );
  XOR2X4 U6029 ( .A(n6152), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n3556) );
  NAND2X4 U6030 ( .A(n6161), .B(n6720), .Y(n3559) );
  XNOR2X1 U6031 ( .A(n3557), .B(n2790), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N123) );
  NAND2X4 U6032 ( .A(n3559), .B(n2755), .Y(n3558) );
  NAND2X2 U6033 ( .A(n6161), .B(n6513), .Y(n3562) );
  NAND2X2 U6035 ( .A(n3565), .B(n6142), .Y(n6146) );
  XOR2X4 U6036 ( .A(n3569), .B(n6873), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N127) );
  OAI21X4 U6037 ( .A0(n2954), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .B0(n6157), 
        .Y(n3570) );
  AOI21X4 U6040 ( .A0(n4739), .A1(n4580), .B0(n4579), .Y(n5287) );
  AOI2BB2X2 U6041 ( .B0(n5901), .B1(median_sobel_inst_data_h_r[6]), .A0N(n4316), .A1N(median_sobel_inst_data_b_r[4]), .Y(n4317) );
  XOR2X2 U6042 ( .A(n4991), .B(n4990), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N114) );
  AOI22X2 U6044 ( .A0(conv_inst_conv_4_r[9]), .A1(n4267), .B0(conv_inst_n59), 
        .B1(n2774), .Y(n4226) );
  NAND2X6 U6045 ( .A(n4131), .B(n4132), .Y(median_sobel_inst_data_d_r[5]) );
  NAND2X4 U6046 ( .A(n4570), .B(n3933), .Y(n3936) );
  NAND2X6 U6047 ( .A(n4033), .B(n4032), .Y(n4791) );
  NAND2X4 U6048 ( .A(n4037), .B(n4036), .Y(n4808) );
  NAND2X6 U6049 ( .A(n3584), .B(n3581), .Y(n4570) );
  NOR2X2 U6050 ( .A(conv_inst_data_bcd_4_r[2]), .B(conv_inst_conv_4_r[2]), .Y(
        n3583) );
  NOR2X2 U6051 ( .A(n3585), .B(n6291), .Y(conv_inst_N275) );
  XOR2X1 U6052 ( .A(n3586), .B(n4577), .Y(n3585) );
  CLKINVX1 U6054 ( .A(n4575), .Y(n3587) );
  INVX4 U6055 ( .A(median_sobel_inst_data_d_r[6]), .Y(n3590) );
  NAND2X2 U6056 ( .A(n3596), .B(n4471), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r_1_) );
  NAND3X6 U6057 ( .A(n3595), .B(n4165), .C(n4166), .Y(n3594) );
  OAI2BB1X4 U6058 ( .A0N(n3493), .A1N(n3533), .B0(n4163), .Y(n3595) );
  NAND2X2 U6059 ( .A(n4472), .B(n4473), .Y(n3596) );
  OAI2BB1X4 U6060 ( .A0N(n4149), .A1N(n3597), .B0(n4150), .Y(n4174) );
  NOR2X2 U6061 ( .A(n3598), .B(n4145), .Y(n3597) );
  NAND3BX4 U6062 ( .AN(n4147), .B(n3600), .C(n3599), .Y(n3598) );
  INVX2 U6063 ( .A(n4148), .Y(n3599) );
  NAND2X8 U6065 ( .A(n3607), .B(n4005), .Y(n5629) );
  NAND3X6 U6066 ( .A(n4003), .B(n5338), .C(n4002), .Y(n3607) );
  NAND2X4 U6067 ( .A(n4717), .B(n5102), .Y(n3789) );
  NAND2X4 U6068 ( .A(conv_inst_data_abc_3_r[1]), .B(conv_inst_conv_3_r[1]), 
        .Y(n5102) );
  NAND2X4 U6069 ( .A(n3609), .B(n3608), .Y(n3610) );
  OAI2BB1X4 U6070 ( .A0N(median_sobel_inst_u_median_filter_submodule_net22688), 
        .A1N(n6585), .B0(median_sobel_inst_u_median_filter_submodule_net22698), 
        .Y(n3609) );
  BUFX12 U6071 ( .A(n3719), .Y(n3612) );
  NAND2X4 U6072 ( .A(n3797), .B(n3796), .Y(n3614) );
  NAND2X2 U6073 ( .A(n2668), .B(n3616), .Y(n3615) );
  NAND3X1 U6074 ( .A(n3755), .B(n2937), .C(n3621), .Y(n3756) );
  INVX4 U6075 ( .A(median_sobel_inst_data_e_r[3]), .Y(n3701) );
  NAND3X6 U6076 ( .A(n3807), .B(n3805), .C(n3623), .Y(
        median_sobel_inst_data_e_r[3]) );
  OR2X8 U6077 ( .A(n3492), .B(n3627), .Y(median_sobel_inst_data_i_r[4]) );
  NAND2X4 U6078 ( .A(n3512), .B(n3628), .Y(n3627) );
  OAI21X4 U6079 ( .A0(n2669), .A1(n3651), .B0(n3631), .Y(n3630) );
  NOR2X6 U6080 ( .A(n3653), .B(n3665), .Y(n3649) );
  NAND2X2 U6081 ( .A(median_sobel_inst_data_b_r[6]), .B(n3632), .Y(n3631) );
  AOI2BB2X4 U6083 ( .B0(n4584), .B1(median_sobel_inst_n678), .A0N(n3634), 
        .A1N(median_sobel_inst_n346), .Y(n4291) );
  AOI2BB2X4 U6084 ( .B0(n4379), .B1(median_sobel_inst_n669), .A0N(n2681), 
        .A1N(median_sobel_inst_n347), .Y(n4030) );
  NOR2X4 U6086 ( .A(n3646), .B(n3649), .Y(n3652) );
  BUFX12 U6088 ( .A(n6247), .Y(n3655) );
  OAI21X4 U6089 ( .A0(n6064), .A1(n3503), .B0(n3657), .Y(n6079) );
  AOI21X4 U6091 ( .A0(n6076), .A1(n3662), .B0(n3660), .Y(n3663) );
  OAI2BB1X4 U6092 ( .A0N(n6501), .A1N(n6249), .B0(n3661), .Y(n3660) );
  XNOR2X4 U6093 ( .A(n6079), .B(n3663), .Y(n3656) );
  NAND2X8 U6094 ( .A(n4857), .B(n3666), .Y(n4847) );
  INVX12 U6095 ( .A(curr_state[3]), .Y(n4857) );
  INVX20 U6096 ( .A(n4456), .Y(n6430) );
  NAND2X6 U6097 ( .A(n6430), .B(n6428), .Y(n6463) );
  NOR2X2 U6098 ( .A(n6464), .B(n6636), .Y(n3670) );
  AND2X4 U6100 ( .A(n6277), .B(n3675), .Y(conv_inst_N74) );
  NAND2X4 U6101 ( .A(n3676), .B(n4343), .Y(n6277) );
  NOR2X1 U6103 ( .A(n4967), .B(n3676), .Y(conv_inst_N73) );
  NOR2X8 U6104 ( .A(n4966), .B(n4965), .Y(n3676) );
  NOR3X8 U6105 ( .A(median_sobel_inst_ns[0]), .B(median_sobel_inst_ns[2]), .C(
        median_sobel_inst_n991), .Y(n5212) );
  AND2X2 U6107 ( .A(n3915), .B(n4635), .Y(n3683) );
  OAI21X4 U6109 ( .A0(n3634), .A1(median_sobel_inst_n343), .B0(n3689), .Y(
        n3688) );
  INVX4 U6110 ( .A(median_sobel_inst_data_f_r[2]), .Y(n4263) );
  BUFX20 U6111 ( .A(median_sobel_inst_n327), .Y(n3691) );
  NAND2X4 U6112 ( .A(median_sobel_inst_data_f_r[6]), .B(n5952), .Y(n3698) );
  NAND3X4 U6113 ( .A(n5948), .B(n5939), .C(n5938), .Y(n3699) );
  AOI2BB2X4 U6114 ( .B0(n3703), .B1(n3702), .A0N(median_sobel_inst_n102), 
        .A1N(n3701), .Y(n3700) );
  NOR2BX4 U6115 ( .AN(median_sobel_inst_data_e_r[5]), .B(
        median_sobel_inst_data_h_r[5]), .Y(n3705) );
  OAI2BB2X4 U6116 ( .B0(n5901), .B1(median_sobel_inst_data_e_r[6]), .A0N(n3707), .A1N(n3708), .Y(n5903) );
  NOR2X8 U6117 ( .A(n3691), .B(median_sobel_inst_n747), .Y(n3710) );
  OAI22X2 U6118 ( .A0(median_sobel_inst_n391), .A1(n2681), .B0(n3397), .B1(
        median_sobel_inst_n383), .Y(n3903) );
  BUFX20 U6121 ( .A(n5929), .Y(n3725) );
  NAND2X2 U6122 ( .A(n6608), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n4961) );
  OR2X2 U6123 ( .A(n3761), .B(n3931), .Y(n3728) );
  NAND2X4 U6124 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .B(
        n6517), .Y(n4767) );
  NOR2X1 U6125 ( .A(input_data_ready_r[7]), .B(input_data_ready_r[23]), .Y(
        n3888) );
  OAI21X2 U6126 ( .A0(n5578), .A1(n3869), .B0(n6604), .Y(n3871) );
  XOR2X1 U6127 ( .A(n3925), .B(input_data_ready_r[31]), .Y(n3926) );
  NOR2X2 U6128 ( .A(n6105), .B(n6109), .Y(n6111) );
  NOR2X2 U6129 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .Y(n5421) );
  NOR2X4 U6130 ( .A(n2752), .B(n5485), .Y(n5487) );
  NOR2X2 U6131 ( .A(n4278), .B(n4277), .Y(n6301) );
  INVX1 U6132 ( .A(n5240), .Y(n5241) );
  INVX1 U6133 ( .A(n5685), .Y(n5687) );
  INVX1 U6134 ( .A(n5655), .Y(n5657) );
  NOR2X2 U6135 ( .A(n6279), .B(n4049), .Y(n4053) );
  NAND2BX1 U6136 ( .AN(median_sobel_inst_n363), .B(n4584), .Y(n4108) );
  OAI22X2 U6137 ( .A0(median_sobel_inst_n375), .A1(n4525), .B0(
        median_sobel_inst_n367), .B1(n5927), .Y(n4117) );
  XNOR2X1 U6138 ( .A(conv_inst_data_bcd_4_r[10]), .B(conv_inst_conv_4_r[10]), 
        .Y(n5091) );
  XOR2X1 U6139 ( .A(conv_inst_data_abc_3_r[9]), .B(conv_inst_n59), .Y(n5338)
         );
  NOR2X1 U6140 ( .A(n4969), .B(n5505), .Y(n4971) );
  OR2X2 U6141 ( .A(n6415), .B(n6973), .Y(n6408) );
  NAND2X4 U6142 ( .A(n6302), .B(n6301), .Y(n6303) );
  NOR2X2 U6143 ( .A(n5766), .B(n6611), .Y(n5764) );
  NAND2XL U6144 ( .A(n5264), .B(n5263), .Y(n5265) );
  AOI2BB2X1 U6145 ( .B0(n6213), .B1(n6826), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n87), .Y(n6217) );
  NAND2X2 U6148 ( .A(n6327), .B(y_origin_r_2_), .Y(n6347) );
  XNOR2X1 U6149 ( .A(cnt[5]), .B(n465), .Y(n5780) );
  NAND2X1 U6150 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .Y(n5346) );
  NAND2X2 U6151 ( .A(n4594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n22), .Y(n4713) );
  NAND2XL U6152 ( .A(n4642), .B(n4676), .Y(n4643) );
  NAND2XL U6153 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .B(n4595), .Y(n5535) );
  NAND2X1 U6154 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .Y(n5220) );
  AOI2BB2X2 U6155 ( .B0(n4403), .B1(median_sobel_inst_n688), .A0N(n4466), 
        .A1N(median_sobel_inst_n420), .Y(n4254) );
  NOR2X1 U6156 ( .A(input_data_ready_r[24]), .B(n6898), .Y(n5380) );
  NOR2X1 U6158 ( .A(n5806), .B(n827), .Y(n5801) );
  OAI21XL U6159 ( .A0(n4811), .A1(n6733), .B0(n4753), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[5]) );
  OAI21XL U6160 ( .A0(n6739), .A1(n5508), .B0(n5478), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[5]) );
  NOR2X1 U6161 ( .A(n6259), .B(n5474), .Y(conv_inst_N236) );
  OAI21XL U6162 ( .A0(n6740), .A1(n5511), .B0(n5510), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[3]) );
  MXI2X1 U6163 ( .A(n5785), .B(n6866), .S0(n5784), .Y(n439) );
  NOR3X2 U6164 ( .A(n5782), .B(n5781), .C(n5780), .Y(n7009) );
  NOR2X1 U6165 ( .A(n4589), .B(n4586), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1170) );
  MXI2X1 U6166 ( .A(n2651), .B(n468), .S0(n6314), .Y(n1431) );
  AND2X2 U6167 ( .A(n4713), .B(n4596), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1000) );
  XNOR2X1 U6168 ( .A(n5654), .B(n5653), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]) );
  OAI21XL U6169 ( .A0(median_sobel_inst_u_median_filter_submodule_n68), .A1(
        n5557), .B0(n5475), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[0]) );
  MXI2X1 U6170 ( .A(median_sobel_inst_n205), .B(n848), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[30]) );
  MXI2X1 U6171 ( .A(median_sobel_inst_n183), .B(n6578), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[11]) );
  MXI2X1 U6172 ( .A(median_sobel_inst_n229), .B(n6833), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[51]) );
  NAND3X1 U6173 ( .A(n6377), .B(n6376), .C(n6441), .Y(sram_addr_wait_r[19]) );
  AOI2BB1X1 U6174 ( .A0N(n5843), .A1N(n5842), .B0(n5847), .Y(N689) );
  OR2X4 U6177 ( .A(input_data_ready_r[26]), .B(n893), .Y(n3741) );
  INVX4 U6178 ( .A(n3334), .Y(n5602) );
  NOR2X2 U6179 ( .A(input_data_ready_r[29]), .B(n6485), .Y(n3923) );
  XOR2X4 U6180 ( .A(n3747), .B(input_data_ready_r[27]), .Y(n3748) );
  INVX3 U6182 ( .A(n3752), .Y(n3755) );
  NOR2X2 U6183 ( .A(n3752), .B(n3750), .Y(n3753) );
  NAND3X2 U6184 ( .A(n3929), .B(n5602), .C(n3537), .Y(n3759) );
  OAI21X4 U6185 ( .A0(n5602), .A1(n3760), .B0(n3759), .Y(n3761) );
  NOR2X6 U6186 ( .A(n5603), .B(n3333), .Y(n3931) );
  NAND2BX1 U6190 ( .AN(median_sobel_inst_n401), .B(n4478), .Y(n3765) );
  BUFX20 U6191 ( .A(n3719), .Y(n5928) );
  NAND2BX1 U6192 ( .AN(median_sobel_inst_n425), .B(n4402), .Y(n3763) );
  NAND3X2 U6193 ( .A(n3764), .B(n3765), .C(n3763), .Y(
        median_sobel_inst_data_g_r[6]) );
  BUFX20 U6194 ( .A(n3719), .Y(n4466) );
  NAND2X4 U6195 ( .A(n3768), .B(n3767), .Y(median_sobel_inst_data_g_r[7]) );
  NAND2X2 U6196 ( .A(n6616), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n4684) );
  NAND2X1 U6197 ( .A(n6612), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n4688) );
  NAND2X2 U6198 ( .A(n6624), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n5469) );
  AOI21X1 U6199 ( .A0(n5472), .A1(n5470), .B0(n3769), .Y(n3772) );
  NAND2X1 U6200 ( .A(n6607), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n3775) );
  NAND2XL U6201 ( .A(n3770), .B(n3775), .Y(n3771) );
  CLKINVX1 U6202 ( .A(n5148), .Y(n3774) );
  NOR2X1 U6203 ( .A(n3774), .B(n5147), .Y(n3779) );
  OAI21X2 U6204 ( .A0(n3776), .A1(n5469), .B0(n3775), .Y(n5153) );
  NAND2X1 U6206 ( .A(n6621), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n5150) );
  AOI21X1 U6208 ( .A0(n5472), .A1(n3779), .B0(n3778), .Y(n3782) );
  NOR2X2 U6209 ( .A(n6515), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n5151) );
  NAND2X1 U6210 ( .A(n6515), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n5149) );
  XOR2X2 U6211 ( .A(n3782), .B(n3781), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]) );
  AOI21X1 U6212 ( .A0(n5472), .A1(n5148), .B0(n5153), .Y(n3785) );
  NOR2X4 U6213 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), .Y(
        n3787) );
  NOR2X4 U6214 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), .Y(
        n3786) );
  CLKINVX1 U6215 ( .A(n3989), .Y(n3790) );
  NAND2X2 U6216 ( .A(n3996), .B(n3790), .Y(n5502) );
  XOR2X4 U6217 ( .A(conv_inst_data_abc_3_r[3]), .B(conv_inst_conv_3_r[3]), .Y(
        n5501) );
  NAND2X4 U6219 ( .A(conv_inst_data_abc_3_r[3]), .B(conv_inst_conv_3_r[3]), 
        .Y(n3987) );
  NOR2X4 U6221 ( .A(conv_inst_data_abc_3_r[4]), .B(conv_inst_conv_3_r[4]), .Y(
        n3990) );
  AOI21X1 U6222 ( .A0(n4487), .A1(n3793), .B0(n3792), .Y(n3794) );
  XNOR2X2 U6223 ( .A(conv_inst_data_abc_3_r[5]), .B(conv_inst_n55), .Y(n3991)
         );
  XNOR2X1 U6224 ( .A(n3794), .B(n3991), .Y(n3795) );
  NOR2X2 U6225 ( .A(n3795), .B(n6291), .Y(conv_inst_N258) );
  INVX20 U6228 ( .A(n5001), .Y(n5402) );
  BUFX20 U6230 ( .A(n4107), .Y(n5415) );
  CLKINVX1 U6231 ( .A(n6890), .Y(n4064) );
  NAND2X1 U6232 ( .A(median_sobel_inst_n382), .B(n4064), .Y(n3808) );
  AOI21X1 U6233 ( .A0(median_sobel_inst_u_median_filter_submodule_n785), .A1(
        median_sobel_inst_u_median_filter_submodule_n786), .B0(
        median_sobel_inst_u_median_filter_submodule_n246), .Y(n3811) );
  INVXL U6234 ( .A(median_sobel_inst_u_median_filter_submodule_n203), .Y(n3810) );
  AOI2BB2X4 U6235 ( .B0(median_sobel_inst_u_median_filter_submodule_n221), 
        .B1(n6505), .A0N(n3814), .A1N(n3813), .Y(n3820) );
  NAND2BX2 U6236 ( .AN(median_sobel_inst_u_median_filter_submodule_n223), .B(
        median_sobel_inst_u_median_filter_submodule_n239), .Y(n3816) );
  NOR2BX1 U6237 ( .AN(median_sobel_inst_u_median_filter_submodule_n176), .B(
        median_sobel_inst_u_median_filter_submodule_n229), .Y(n3817) );
  OAI22X2 U6238 ( .A0(median_sobel_inst_u_median_filter_submodule_n239), .A1(
        n5609), .B0(median_sobel_inst_u_median_filter_submodule_n186), .B1(
        median_sobel_inst_u_median_filter_submodule_n788), .Y(n3815) );
  AOI21X4 U6239 ( .A0(n3817), .A1(n3816), .B0(n3815), .Y(n3818) );
  NAND2BX1 U6240 ( .AN(median_sobel_inst_u_median_filter_submodule_n121), .B(
        median_sobel_inst_u_median_filter_submodule_n787), .Y(n3822) );
  INVX1 U6241 ( .A(median_sobel_inst_u_median_filter_submodule_n233), .Y(n3839) );
  OAI21X4 U6242 ( .A0(n3825), .A1(n3824), .B0(n3823), .Y(n3828) );
  CLKINVX1 U6243 ( .A(median_sobel_inst_u_median_filter_submodule_n221), .Y(
        n6017) );
  NAND2X4 U6244 ( .A(n3827), .B(n3828), .Y(n3833) );
  NAND2X1 U6245 ( .A(n3837), .B(
        median_sobel_inst_u_median_filter_submodule_n233), .Y(n3838) );
  NAND2X1 U6246 ( .A(n3838), .B(
        median_sobel_inst_u_median_filter_submodule_n200), .Y(n3851) );
  NAND2XL U6247 ( .A(median_sobel_inst_u_median_filter_submodule_n789), .B(
        median_sobel_inst_u_median_filter_submodule_n229), .Y(n3840) );
  INVX1 U6248 ( .A(median_sobel_inst_u_median_filter_submodule_n246), .Y(n3843) );
  NOR2X1 U6251 ( .A(median_sobel_inst_u_median_filter_submodule_n216), .B(
        n3857), .Y(n3859) );
  AOI2BB2X4 U6252 ( .B0(n3415), .B1(
        median_sobel_inst_u_median_filter_submodule_n181), .A0N(n3309), .A1N(
        median_sobel_inst_u_median_filter_submodule_n788), .Y(n3860) );
  OAI21X4 U6253 ( .A0(n4020), .A1(n3861), .B0(n3860), .Y(n6991) );
  NAND2BX1 U6254 ( .AN(median_sobel_inst_n343), .B(n3478), .Y(n3863) );
  NAND2BX1 U6255 ( .AN(median_sobel_inst_n351), .B(n4478), .Y(n3862) );
  BUFX8 U6256 ( .A(n873), .Y(n5612) );
  NAND2X2 U6257 ( .A(n3869), .B(n5578), .Y(n3870) );
  XNOR2X2 U6258 ( .A(n2775), .B(n873), .Y(n5447) );
  OR2X2 U6259 ( .A(input_data_ready_r[6]), .B(input_data_ready_r[22]), .Y(
        n3887) );
  NAND2X4 U6260 ( .A(n2770), .B(n6753), .Y(n3894) );
  NAND2BX1 U6264 ( .AN(median_sobel_inst_n436), .B(n5067), .Y(n3896) );
  OA21X4 U6266 ( .A0(median_sobel_inst_n437), .A1(n4466), .B0(n3898), .Y(n3899) );
  NAND2BX1 U6267 ( .AN(median_sobel_inst_n351), .B(n3479), .Y(n3901) );
  NAND3X4 U6268 ( .A(n4107), .B(median_sobel_inst_n325), .C(
        median_sobel_inst_n154), .Y(n3906) );
  NOR2X4 U6269 ( .A(n3906), .B(n3904), .Y(n3905) );
  AOI2BB2X2 U6270 ( .B0(median_sobel_inst_n700), .B1(median_sobel_inst_n718), 
        .A0N(n3906), .A1N(median_sobel_inst_n713), .Y(n3907) );
  NAND2X6 U6271 ( .A(n3908), .B(n3907), .Y(n3917) );
  NAND2X2 U6272 ( .A(n5209), .B(median_sobel_inst_n154), .Y(n3911) );
  NOR2X2 U6274 ( .A(median_sobel_inst_n702), .B(median_sobel_inst_n700), .Y(
        n4635) );
  NOR3BX1 U6275 ( .AN(median_sobel_inst_n702), .B(median_sobel_inst_n718), .C(
        median_sobel_inst_n700), .Y(n3913) );
  AO21X1 U6276 ( .A0(median_sobel_inst_cnt_3_), .A1(n5209), .B0(
        median_sobel_inst_n713), .Y(n3918) );
  AOI21X1 U6278 ( .A0(n6889), .A1(n5606), .B0(n3537), .Y(n3928) );
  AND2X2 U6279 ( .A(n3537), .B(n5578), .Y(n3927) );
  NOR3X1 U6280 ( .A(input_data_ready_r[29]), .B(n6625), .C(n6485), .Y(n3924)
         );
  OAI21X2 U6281 ( .A0(n3928), .A1(n3927), .B0(n5590), .Y(n3932) );
  NOR2X2 U6282 ( .A(n5212), .B(n6890), .Y(median_sobel_inst_N112) );
  AND2X4 U6283 ( .A(conv_inst_data_bcd_4_r[4]), .B(conv_inst_conv_4_r[4]), .Y(
        n4575) );
  AND2X4 U6284 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_conv_4_r[3]), .Y(
        n4571) );
  NOR3X4 U6285 ( .A(n4575), .B(conv_inst_data_bcd_4_r[3]), .C(
        conv_inst_conv_4_r[3]), .Y(n3934) );
  NOR3X4 U6286 ( .A(n3934), .B(n4577), .C(n4574), .Y(n3935) );
  NAND2X2 U6287 ( .A(conv_inst_data_bcd_4_r[5]), .B(conv_inst_conv_4_r[5]), 
        .Y(n4032) );
  NOR2X2 U6288 ( .A(conv_inst_data_bcd_4_r[8]), .B(conv_inst_conv_4_r[8]), .Y(
        n3938) );
  NAND2X4 U6289 ( .A(conv_inst_data_bcd_4_r[6]), .B(conv_inst_conv_4_r[6]), 
        .Y(n4036) );
  NAND2X4 U6290 ( .A(n4036), .B(n4038), .Y(n3939) );
  NAND2X1 U6292 ( .A(conv_inst_data_bcd_4_r[9]), .B(conv_inst_conv_4_r[9]), 
        .Y(n3942) );
  OR2X2 U6293 ( .A(conv_inst_data_bcd_4_r[10]), .B(conv_inst_conv_4_r[10]), 
        .Y(n4048) );
  NAND2X6 U6294 ( .A(n5092), .B(n4048), .Y(n3943) );
  NAND2X8 U6295 ( .A(n3943), .B(n4051), .Y(n6280) );
  AOI21X2 U6296 ( .A0(n6280), .A1(conv_inst_conv_4_r[11]), .B0(
        conv_inst_conv_4_r[12]), .Y(n3945) );
  NOR2X2 U6297 ( .A(n6660), .B(n6520), .Y(n6282) );
  NAND2X6 U6298 ( .A(n6280), .B(n6282), .Y(n6262) );
  NOR2X4 U6300 ( .A(n3945), .B(n3944), .Y(conv_inst_N282) );
  NAND2X1 U6301 ( .A(median_sobel_inst_u_median_filter_submodule_net22682), 
        .B(n6631), .Y(n3946) );
  NOR2X1 U6302 ( .A(median_sobel_inst_u_median_filter_submodule_net58169), .B(
        median_sobel_inst_u_median_filter_submodule_net22696), .Y(n3950) );
  OAI21X2 U6303 ( .A0(n6577), .A1(
        median_sobel_inst_u_median_filter_submodule_a4_r_5_), .B0(n3947), .Y(
        n3948) );
  AOI2BB1X2 U6304 ( .A0N(median_sobel_inst_u_median_filter_submodule_n792), 
        .A1N(n6594), .B0(n3948), .Y(n3949) );
  NAND3X2 U6309 ( .A(n3962), .B(n3963), .C(n3961), .Y(n3965) );
  AOI2BB2X2 U6310 ( .B0(median_sobel_inst_u_median_filter_submodule_net58169), 
        .B1(n3966), .A0N(median_sobel_inst_u_median_filter_submodule_net22682), 
        .A1N(median_sobel_inst_u_median_filter_submodule_a5_r[2]), .Y(n3964)
         );
  OAI2BB1X4 U6311 ( .A0N(n3968), .A1N(n6909), .B0(n3967), .Y(n3972) );
  AOI2BB2X1 U6312 ( .B0(median_sobel_inst_u_median_filter_submodule_n792), 
        .B1(median_sobel_inst_u_median_filter_submodule_n130), .A0N(
        median_sobel_inst_u_median_filter_submodule_a6_r[5]), .A1N(n3969), .Y(
        n3971) );
  OAI22X1 U6313 ( .A0(n6895), .A1(
        median_sobel_inst_u_median_filter_submodule_a5_r[6]), .B0(
        median_sobel_inst_u_median_filter_submodule_n280), .B1(n6577), .Y(
        n3970) );
  AOI21X4 U6314 ( .A0(n3972), .A1(n3971), .B0(n3970), .Y(n3976) );
  OAI21X1 U6315 ( .A0(median_sobel_inst_u_median_filter_submodule_a6_r[6]), 
        .A1(n6516), .B0(n3973), .Y(n3975) );
  OAI2BB2X4 U6316 ( .B0(n3976), .B1(n3975), .A0N(n3974), .A1N(n6910), .Y(n3977) );
  XOR2X4 U6317 ( .A(n3977), .B(n3978), .Y(n3979) );
  BUFX20 U6318 ( .A(n3979), .Y(n6020) );
  AOI2BB2X4 U6319 ( .B0(n6020), .B1(
        median_sobel_inst_u_median_filter_submodule_n130), .A0N(n3032), .A1N(
        median_sobel_inst_u_median_filter_submodule_net22693), .Y(n3980) );
  OAI21X4 U6320 ( .A0(n3981), .A1(n6020), .B0(n3980), .Y(n6999) );
  NOR2X1 U6321 ( .A(median_sobel_inst_n342), .B(median_sobel_inst_n747), .Y(
        n4065) );
  AOI2BB2X4 U6322 ( .B0(n4379), .B1(median_sobel_inst_n653), .A0N(n3397), 
        .A1N(median_sobel_inst_n92), .Y(n3983) );
  AOI2BB1X4 U6323 ( .A0N(n4878), .A1N(n5039), .B0(n3999), .Y(n3986) );
  NAND2X4 U6324 ( .A(n3988), .B(n3987), .Y(n3993) );
  NOR2X4 U6325 ( .A(n3991), .B(n3990), .Y(n3992) );
  OAI21X4 U6326 ( .A0(n3993), .A1(n5501), .B0(n3992), .Y(n3994) );
  AOI21X4 U6327 ( .A0(n3996), .A1(n3995), .B0(n3994), .Y(n3998) );
  AND2X2 U6328 ( .A(conv_inst_data_abc_3_r[5]), .B(conv_inst_n55), .Y(n3997)
         );
  NAND2X4 U6329 ( .A(n5337), .B(n5335), .Y(n4003) );
  NAND2X4 U6331 ( .A(n5336), .B(n5335), .Y(n4002) );
  NOR2X2 U6333 ( .A(conv_inst_data_abc_3_r[10]), .B(conv_inst_conv_3_r[10]), 
        .Y(n5630) );
  NOR2X1 U6334 ( .A(n6528), .B(n6732), .Y(n5628) );
  NAND2BX2 U6335 ( .AN(median_sobel_inst_n398), .B(n3479), .Y(n4014) );
  NAND2BX2 U6336 ( .AN(median_sobel_inst_n252), .B(n4403), .Y(n4012) );
  AOI2BB2X4 U6337 ( .B0(median_sobel_inst_n653), .B1(n3725), .A0N(
        median_sobel_inst_n406), .A1N(n3612), .Y(n4016) );
  AOI2BB2X4 U6338 ( .B0(n3415), .B1(n6766), .A0N(n3309), .A1N(n4017), .Y(n4018) );
  OAI21X4 U6339 ( .A0(n4020), .A1(n4019), .B0(n4018), .Y(n6990) );
  NAND2X8 U6340 ( .A(n4021), .B(n4358), .Y(n5763) );
  INVX8 U6341 ( .A(n4847), .Y(n4369) );
  NAND2X4 U6342 ( .A(n4369), .B(n449), .Y(n4022) );
  NAND2X8 U6343 ( .A(n5763), .B(n6311), .Y(n5530) );
  NOR2X8 U6344 ( .A(n5530), .B(n6315), .Y(n4451) );
  NAND2X8 U6345 ( .A(n4451), .B(n4023), .Y(n5766) );
  NAND2BX1 U6346 ( .AN(median_sobel_inst_n350), .B(n3478), .Y(n4025) );
  NAND3X8 U6348 ( .A(n4031), .B(n4030), .C(n4029), .Y(
        median_sobel_inst_data_b_r[4]) );
  CLKINVX1 U6349 ( .A(n4034), .Y(n4035) );
  NAND2X4 U6350 ( .A(n4791), .B(n4035), .Y(n4037) );
  XOR2X1 U6351 ( .A(conv_inst_data_bcd_4_r[7]), .B(conv_inst_conv_4_r[7]), .Y(
        n4807) );
  AOI21X4 U6352 ( .A0(n4808), .A1(n4807), .B0(n4039), .Y(n4041) );
  XOR2X1 U6353 ( .A(conv_inst_data_bcd_4_r[8]), .B(conv_inst_conv_4_r[8]), .Y(
        n4040) );
  XOR2X1 U6354 ( .A(n4041), .B(n4040), .Y(n4042) );
  NOR2X4 U6356 ( .A(n468), .B(n469), .Y(n5806) );
  AOI2BB2X4 U6358 ( .B0(n5884), .B1(n399), .A0N(n781), .A1N(n5888), .Y(n4046)
         );
  CLKINVX1 U6359 ( .A(n4051), .Y(n4050) );
  NAND3X2 U6360 ( .A(n4048), .B(n6282), .C(conv_inst_conv_4_r[14]), .Y(n4049)
         );
  OAI21X4 U6361 ( .A0(n4050), .A1(n5092), .B0(n4053), .Y(n6283) );
  NAND3X2 U6362 ( .A(n5092), .B(n4053), .C(conv_inst_conv_4_r[15]), .Y(n4055)
         );
  NOR2X1 U6363 ( .A(n4051), .B(n6628), .Y(n4052) );
  AOI21X2 U6364 ( .A0(n6283), .A1(n6628), .B0(n4199), .Y(conv_inst_N285) );
  NAND2X6 U6365 ( .A(n4059), .B(n4058), .Y(median_sobel_inst_data_e_r[0]) );
  NAND2BX4 U6369 ( .AN(median_sobel_inst_n350), .B(n4478), .Y(n4066) );
  NOR2X2 U6370 ( .A(n6507), .B(n3484), .Y(n4067) );
  NAND2X6 U6371 ( .A(n6153), .B(n6154), .Y(n6152) );
  NAND2X4 U6372 ( .A(conv_inst_data_abc_1_r[3]), .B(conv_inst_conv_1_r[3]), 
        .Y(n4514) );
  NOR2X4 U6373 ( .A(conv_inst_data_abc_1_r[2]), .B(conv_inst_conv_1_r[2]), .Y(
        n5081) );
  NOR2X4 U6374 ( .A(conv_inst_data_abc_1_r[3]), .B(conv_inst_conv_1_r[3]), .Y(
        n4070) );
  NOR2X4 U6375 ( .A(n4512), .B(n4071), .Y(n4072) );
  XOR2X4 U6376 ( .A(conv_inst_data_abc_1_r[6]), .B(conv_inst_conv_1_r[6]), .Y(
        n4522) );
  OAI2BB1X4 U6377 ( .A0N(n3506), .A1N(n3488), .B0(n4522), .Y(n4075) );
  NOR3X4 U6378 ( .A(n4072), .B(n4075), .C(n4516), .Y(n4073) );
  NAND2X2 U6380 ( .A(conv_inst_data_abc_1_r[5]), .B(conv_inst_conv_1_r[5]), 
        .Y(n4520) );
  NAND2BX1 U6381 ( .AN(n6650), .B(conv_inst_data_abc_1_r[10]), .Y(n4325) );
  NAND2BX2 U6382 ( .AN(median_sobel_inst_n396), .B(n4584), .Y(n4084) );
  NAND2X2 U6383 ( .A(median_sobel_inst_n646), .B(n3478), .Y(n4083) );
  AOI2BB2X2 U6386 ( .B0(n3478), .B1(median_sobel_inst_n678), .A0N(n4466), 
        .A1N(median_sobel_inst_n410), .Y(n4086) );
  NAND2X2 U6387 ( .A(median_sobel_inst_n869), .B(n5402), .Y(n4085) );
  NAND2X1 U6388 ( .A(median_sobel_inst_n649), .B(n3478), .Y(n4091) );
  NAND2BX1 U6389 ( .AN(median_sobel_inst_n256), .B(n4403), .Y(n4090) );
  NAND2BX1 U6390 ( .AN(median_sobel_inst_n426), .B(n4482), .Y(n4088) );
  NAND4X4 U6391 ( .A(n4091), .B(n4090), .C(n4089), .D(n4088), .Y(
        median_sobel_inst_data_g_r[5]) );
  NAND2BX2 U6392 ( .AN(median_sobel_inst_n386), .B(n4478), .Y(n4093) );
  NAND2BX2 U6393 ( .AN(median_sobel_inst_n418), .B(n4482), .Y(n4092) );
  NAND2BX2 U6394 ( .AN(median_sobel_inst_n419), .B(n2677), .Y(n4097) );
  OA22X4 U6396 ( .A0(median_sobel_inst_n361), .A1(n5927), .B0(
        median_sobel_inst_n329), .B1(n3397), .Y(n4100) );
  NAND2BX1 U6397 ( .AN(median_sobel_inst_n337), .B(n4430), .Y(n4098) );
  OAI22X2 U6398 ( .A0(median_sobel_inst_n362), .A1(n5927), .B0(n4101), .B1(
        n4466), .Y(n4102) );
  NAND2BX1 U6399 ( .AN(median_sobel_inst_n336), .B(n4430), .Y(n4105) );
  NAND2X1 U6400 ( .A(median_sobel_inst_n626), .B(n3479), .Y(n4111) );
  NAND2BX2 U6401 ( .AN(median_sobel_inst_n428), .B(n4482), .Y(n4115) );
  NAND2BX1 U6402 ( .AN(median_sobel_inst_n341), .B(n4430), .Y(n4123) );
  OAI2BB2X4 U6405 ( .B0(median_sobel_inst_n429), .B1(n5928), .A0N(
        median_sobel_inst_n711), .A1N(n4430), .Y(n4124) );
  INVX3 U6406 ( .A(median_sobel_inst_data_a_r[0]), .Y(n4127) );
  INVX3 U6407 ( .A(median_sobel_inst_data_g_r[6]), .Y(n5861) );
  NAND2X1 U6408 ( .A(median_sobel_inst_n649), .B(n5402), .Y(n4132) );
  NOR2X1 U6409 ( .A(n6640), .B(n4466), .Y(n4130) );
  NOR3X2 U6410 ( .A(n3505), .B(n4130), .C(n4129), .Y(n4131) );
  CLKINVX1 U6411 ( .A(median_sobel_inst_n711), .Y(n5880) );
  NAND3X6 U6412 ( .A(n4139), .B(n4138), .C(n4137), .Y(
        median_sobel_inst_data_c_r[5]) );
  NAND2X2 U6413 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n117), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .Y(n4146) );
  NAND2X2 U6414 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n116), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n111), .Y(n4148) );
  AND2X2 U6415 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n100), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n99), .Y(n4144) );
  NAND4X2 U6416 ( .A(n4149), .B(n4140), .C(n4144), .D(
        median_sobel_inst_u_sobel_gradient_submodule_n110), .Y(n4142) );
  AOI21X1 U6417 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n33), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n76), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n69), .Y(n4141) );
  NAND2BX1 U6418 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n74), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[9]), .Y(n4143)
         );
  NAND2BX2 U6419 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n94), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n84), .Y(n4155) );
  OR2X2 U6420 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n37), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n87), .Y(n4154) );
  INVX1 U6421 ( .A(n4144), .Y(n4145) );
  NAND2X2 U6422 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n69), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n110), .Y(n4147) );
  NAND3XL U6423 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n33), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n76), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n69), .Y(n4150) );
  INVXL U6424 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n60), .Y(n4151) );
  NOR2X4 U6425 ( .A(n4153), .B(n4152), .Y(n4161) );
  NAND2BX1 U6426 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[12]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .Y(n4159) );
  NAND4BX1 U6427 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[9]), .B(n4154), 
        .C(median_sobel_inst_u_sobel_gradient_submodule_n74), .D(n4155), .Y(
        n4158) );
  NAND2BX1 U6428 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n84), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n94), .Y(n4157) );
  OAI22X2 U6429 ( .A0(n4161), .A1(n4160), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .B1(n6655), .Y(
        n4162) );
  INVXL U6430 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n89), .Y(n4164) );
  AOI2BB2X1 U6431 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_n29), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_n73), .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[15]), .A1N(
        n4164), .Y(n4166) );
  NAND2BX1 U6432 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[16]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .Y(
        n4165) );
  NAND2X1 U6433 ( .A(n4167), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[16]), .Y(n4168) );
  NAND2BX1 U6434 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n94), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[11]), .Y(n4170) );
  AOI2BB2X1 U6435 ( .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[10]), .B1(
        n4180), .A0N(median_sobel_inst_u_sobel_gradient_submodule_n34), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n74), .Y(n4177) );
  INVXL U6436 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n94), .Y(n4181) );
  NOR2X4 U6437 ( .A(n6476), .B(n6315), .Y(n5528) );
  NAND2X2 U6438 ( .A(n6311), .B(n5770), .Y(n5768) );
  NAND3X2 U6439 ( .A(n5763), .B(cnt[8]), .C(n5768), .Y(n5771) );
  OAI2BB1X4 U6442 ( .A0N(n5771), .A1N(n6715), .B0(n5774), .Y(n4195) );
  NAND2BX1 U6444 ( .AN(conv_inst_conv_4_r[16]), .B(conv_inst_conv_4_r[15]), 
        .Y(n4200) );
  NAND2X1 U6446 ( .A(conv_inst_conv_3_r[4]), .B(n2774), .Y(n4203) );
  NAND2X2 U6447 ( .A(n4204), .B(n4203), .Y(n4208) );
  INVX8 U6448 ( .A(n4227), .Y(n4274) );
  NAND2X1 U6449 ( .A(conv_inst_conv_4_r[5]), .B(n4267), .Y(n4209) );
  OAI21X2 U6450 ( .A0(n6598), .A1(n5137), .B0(n4211), .Y(n4212) );
  NAND2X1 U6451 ( .A(conv_inst_conv_3_r[6]), .B(n2774), .Y(n4214) );
  NAND2X2 U6452 ( .A(conv_inst_conv_2_r[6]), .B(n4274), .Y(n4217) );
  AOI22X2 U6453 ( .A0(conv_inst_conv_2_r[7]), .A1(n4274), .B0(
        conv_inst_conv_1_r[7]), .B1(n2819), .Y(n4220) );
  INVX3 U6454 ( .A(n4234), .Y(n4872) );
  NOR2X1 U6455 ( .A(n6638), .B(n4227), .Y(n4228) );
  OAI22XL U6457 ( .A0(n780), .A1(n5916), .B0(n815), .B1(n5920), .Y(n4240) );
  OAI22XL U6458 ( .A0(n797), .A1(n5918), .B0(n8130), .B1(n5846), .Y(n4239) );
  BUFX12 U6459 ( .A(n4241), .Y(n6259) );
  NAND2BX1 U6460 ( .AN(median_sobel_inst_n408), .B(n4403), .Y(n4248) );
  AOI2BB2X1 U6461 ( .B0(n6526), .B1(n3479), .A0N(median_sobel_inst_n416), 
        .A1N(n3612), .Y(n4247) );
  OA22X2 U6462 ( .A0(median_sobel_inst_n432), .A1(n5927), .B0(
        median_sobel_inst_n266), .B1(n4466), .Y(n4250) );
  NAND2BX2 U6463 ( .AN(median_sobel_inst_n380), .B(n3478), .Y(n4252) );
  NAND3X6 U6464 ( .A(n4254), .B(n4253), .C(n4252), .Y(
        median_sobel_inst_data_f_r[3]) );
  AOI2BB1X4 U6465 ( .A0N(median_sobel_inst_n421), .A1N(n3612), .B0(n4255), .Y(
        n4256) );
  NAND2X4 U6466 ( .A(n4257), .B(n4256), .Y(median_sobel_inst_data_f_r[2]) );
  OA22X4 U6467 ( .A0(median_sobel_inst_n410), .A1(n3397), .B0(
        median_sobel_inst_n264), .B1(n5378), .Y(n4260) );
  NAND2BX1 U6468 ( .AN(median_sobel_inst_n418), .B(n3725), .Y(n4259) );
  NAND2BX1 U6469 ( .AN(median_sobel_inst_n434), .B(n4403), .Y(n4258) );
  NAND2BX1 U6470 ( .AN(median_sobel_inst_n377), .B(n3902), .Y(n4262) );
  AOI22X1 U6473 ( .A0(conv_inst_conv_2_r[14]), .A1(n4274), .B0(
        conv_inst_conv_3_r[14]), .B1(n2774), .Y(n4264) );
  NOR2X1 U6477 ( .A(n6660), .B(n4283), .Y(n4272) );
  OAI22X1 U6478 ( .A0(n6651), .A1(n5137), .B0(n6520), .B1(n4283), .Y(n4281) );
  OAI22X1 U6479 ( .A0(n6510), .A1(n5138), .B0(n4279), .B1(n5144), .Y(n4280) );
  NOR2X4 U6480 ( .A(n4281), .B(n4280), .Y(n4965) );
  NAND2BX1 U6481 ( .AN(n4283), .B(conv_inst_conv_4_r[16]), .Y(n4284) );
  OAI2BB1X1 U6482 ( .A0N(n2774), .A1N(conv_inst_conv_3_r[16]), .B0(n4284), .Y(
        n4286) );
  NOR2X2 U6483 ( .A(n4286), .B(n4285), .Y(n6310) );
  XNOR2X1 U6484 ( .A(n5209), .B(median_sobel_inst_cnt_3_), .Y(n4287) );
  NAND2BX2 U6485 ( .AN(median_sobel_inst_n426), .B(n5402), .Y(n4289) );
  NAND2BX1 U6486 ( .AN(median_sobel_inst_n434), .B(n5067), .Y(n4288) );
  OA22X4 U6488 ( .A0(median_sobel_inst_n433), .A1(n5378), .B0(
        median_sobel_inst_n425), .B1(n5001), .Y(n4295) );
  NAND2BX2 U6489 ( .AN(median_sobel_inst_n401), .B(n3479), .Y(n4293) );
  NAND2BX1 U6490 ( .AN(median_sobel_inst_n344), .B(n4430), .Y(n4299) );
  OAI22X4 U6492 ( .A0(n3397), .A1(median_sobel_inst_n406), .B0(
        median_sobel_inst_n430), .B1(n5001), .Y(n4310) );
  INVX4 U6495 ( .A(median_sobel_inst_data_b_r[6]), .Y(n5901) );
  NAND2X1 U6496 ( .A(median_sobel_inst_n38), .B(n5900), .Y(n4318) );
  NAND2BX2 U6497 ( .AN(median_sobel_inst_n347), .B(n3479), .Y(n4320) );
  NAND2X1 U6498 ( .A(n5402), .B(median_sobel_inst_n669), .Y(n4319) );
  OAI21XL U6499 ( .A0(conv_inst_n44), .A1(n4329), .B0(n6306), .Y(n4330) );
  AND2X2 U6500 ( .A(conv_inst_data_bcd_2_r[4]), .B(conv_inst_conv_2_r[4]), .Y(
        n4782) );
  NOR2X4 U6501 ( .A(n4782), .B(n4778), .Y(n4332) );
  NOR2X4 U6502 ( .A(n4784), .B(n4781), .Y(n4437) );
  NOR2X4 U6503 ( .A(conv_inst_data_bcd_2_r[6]), .B(conv_inst_conv_2_r[6]), .Y(
        n4335) );
  NOR2X8 U6505 ( .A(n4334), .B(n4333), .Y(n4349) );
  NAND2BX2 U6506 ( .AN(n6598), .B(conv_inst_data_bcd_2_r[5]), .Y(n4439) );
  NAND2X2 U6507 ( .A(conv_inst_data_bcd_2_r[7]), .B(conv_inst_conv_2_r[7]), 
        .Y(n4550) );
  NAND2X2 U6508 ( .A(conv_inst_data_bcd_2_r[6]), .B(conv_inst_conv_2_r[6]), 
        .Y(n4442) );
  NOR2X4 U6509 ( .A(n4337), .B(n4336), .Y(n4347) );
  CLKINVX1 U6510 ( .A(n4347), .Y(n4338) );
  NOR2X2 U6511 ( .A(n4349), .B(n4338), .Y(n4339) );
  NAND2X2 U6512 ( .A(conv_inst_conv_2_r[8]), .B(conv_inst_data_bcd_2_r[8]), 
        .Y(n4346) );
  OAI21X2 U6513 ( .A0(n4339), .A1(n4345), .B0(n4346), .Y(n4340) );
  XOR2X1 U6514 ( .A(n4340), .B(n4344), .Y(n4341) );
  AOI21X4 U6515 ( .A0(n4345), .A1(n4346), .B0(n4344), .Y(n4348) );
  OAI2BB1X4 U6516 ( .A0N(n4347), .A1N(n4346), .B0(n4348), .Y(n4352) );
  NAND2X1 U6517 ( .A(conv_inst_conv_2_r[9]), .B(conv_inst_data_bcd_2_r[9]), 
        .Y(n4350) );
  NAND2X8 U6518 ( .A(n4353), .B(n6269), .Y(n6295) );
  AND4X4 U6519 ( .A(n6295), .B(n6293), .C(n4354), .D(conv_inst_conv_2_r[16]), 
        .Y(n4357) );
  OAI21X1 U6520 ( .A0(n6294), .A1(conv_inst_conv_2_r[16]), .B0(n6306), .Y(
        n4355) );
  NOR3X2 U6521 ( .A(n4357), .B(n4356), .C(n4355), .Y(conv_inst_N252) );
  NAND2X8 U6522 ( .A(n5540), .B(n4361), .Y(o_in_ready) );
  NAND2BX1 U6523 ( .AN(median_sobel_inst_n363), .B(n3477), .Y(n4364) );
  NAND2X1 U6524 ( .A(median_sobel_inst_n626), .B(n4403), .Y(n4362) );
  NAND2X2 U6525 ( .A(n783), .B(curr_state[3]), .Y(n5169) );
  XOR2X4 U6526 ( .A(op_mode_r_1_), .B(n5789), .Y(n4968) );
  NAND3X6 U6527 ( .A(n5164), .B(n4968), .C(n4367), .Y(n5165) );
  NAND3X1 U6528 ( .A(n4850), .B(n449), .C(n6955), .Y(n4368) );
  NAND2X6 U6529 ( .A(n5164), .B(n4369), .Y(n4969) );
  CLKAND2X3 U6531 ( .A(n5164), .B(curr_state[2]), .Y(n4372) );
  NOR2BX4 U6532 ( .AN(n4372), .B(conv_calc_done_r), .Y(n6336) );
  NOR2X2 U6533 ( .A(n4846), .B(n6955), .Y(n4908) );
  NAND2X8 U6534 ( .A(n4373), .B(n5167), .Y(next_state_3_) );
  NAND2BX2 U6535 ( .AN(median_sobel_inst_n356), .B(n4478), .Y(n4377) );
  MXI2X1 U6537 ( .A(median_sobel_inst_n220), .B(median_sobel_inst_n382), .S0(
        n5210), .Y(median_sobel_inst_n570) );
  MXI2X1 U6538 ( .A(n844), .B(median_sobel_inst_n248), .S0(n3484), .Y(
        median_sobel_inst_med_sobel_e_wait_r[68]) );
  MXI2X1 U6539 ( .A(n2785), .B(median_sobel_inst_n244), .S0(n3484), .Y(
        median_sobel_inst_med_sobel_e_wait_r[64]) );
  MXI2X1 U6540 ( .A(n5578), .B(median_sobel_inst_n168), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[75]) );
  MXI2X1 U6541 ( .A(median_sobel_inst_n196), .B(n6484), .S0(n3478), .Y(
        median_sobel_inst_med_sobel_e_wait_r[22]) );
  MXI2X1 U6542 ( .A(median_sobel_inst_n212), .B(n6507), .S0(n5378), .Y(
        median_sobel_inst_n578) );
  MXI2X1 U6543 ( .A(median_sobel_inst_n200), .B(n6579), .S0(n3477), .Y(
        median_sobel_inst_med_sobel_e_wait_r[26]) );
  MXI2X1 U6544 ( .A(median_sobel_inst_n248), .B(n6640), .S0(n5378), .Y(
        median_sobel_inst_n542) );
  MXI2X1 U6545 ( .A(median_sobel_inst_n247), .B(n6578), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[67]) );
  MXI2X1 U6546 ( .A(median_sobel_inst_n239), .B(n6867), .S0(n5402), .Y(
        median_sobel_inst_med_sobel_e_wait_r[60]) );
  MXI2X1 U6547 ( .A(median_sobel_inst_n174), .B(n6561), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[80]) );
  MXI2X1 U6548 ( .A(median_sobel_inst_n176), .B(n6579), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[82]) );
  MXI2X1 U6549 ( .A(median_sobel_inst_n227), .B(n6896), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[49]) );
  XOR2X1 U6550 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]) );
  XOR2X1 U6551 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]) );
  XOR2X1 U6552 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]) );
  XOR2X1 U6553 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]) );
  CLKMX2X2 U6554 ( .A(median_sobel_inst_n129), .B(input_data_ready_r[4]), .S0(
        n5879), .Y(median_sobel_inst_n519) );
  NOR2X6 U6555 ( .A(n5062), .B(n4771), .Y(n5060) );
  AOI2BB2X1 U6556 ( .B0(n5062), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .A0N(n5061), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n74), .Y(n4380) );
  MXI2X1 U6557 ( .A(median_sobel_inst_n177), .B(n6829), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[83]) );
  MXI2X1 U6558 ( .A(median_sobel_inst_n178), .B(n6828), .S0(n4584), .Y(
        median_sobel_inst_n987) );
  MXI2X1 U6559 ( .A(median_sobel_inst_n169), .B(n6779), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[76]) );
  NOR2BX4 U6560 ( .AN(median_sobel_inst_u_median_filter_submodule_n487), .B(
        median_sobel_inst_u_median_filter_submodule_n159), .Y(n4381) );
  BUFX12 U6561 ( .A(n4381), .Y(n5560) );
  MXI2X1 U6563 ( .A(median_sobel_inst_n409), .B(median_sobel_inst_n169), .S0(
        n5879), .Y(n6710) );
  NOR2BX4 U6564 ( .AN(median_sobel_inst_u_median_filter_submodule_n29), .B(
        n6605), .Y(n4385) );
  OR2X4 U6565 ( .A(median_sobel_inst_u_median_filter_submodule_n29), .B(
        median_sobel_inst_u_median_filter_submodule_n316), .Y(n5450) );
  AOI2BB2X1 U6566 ( .B0(n4385), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n64), .A1N(n5450), .Y(
        n4386) );
  MXI2X1 U6567 ( .A(median_sobel_inst_n242), .B(n6742), .S0(n5402), .Y(
        median_sobel_inst_n985) );
  CLKINVX1 U6568 ( .A(n4451), .Y(n4387) );
  MXI2X2 U6569 ( .A(n4388), .B(n4387), .S0(n6476), .Y(n482) );
  MXI2X1 U6570 ( .A(median_sobel_inst_n214), .B(n858), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[38]) );
  MXI2X1 U6571 ( .A(median_sobel_inst_n203), .B(n862), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[28]) );
  MXI2X1 U6572 ( .A(median_sobel_inst_n211), .B(n8660), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[35]) );
  MXI2X1 U6573 ( .A(median_sobel_inst_n233), .B(n6829), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[55]) );
  MXI2X1 U6574 ( .A(median_sobel_inst_n225), .B(n6779), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[48]) );
  NOR2X2 U6575 ( .A(n6622), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n5026) );
  NOR2X2 U6576 ( .A(n6632), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), .Y(n4919) );
  NOR2X2 U6577 ( .A(n5026), .B(n4919), .Y(n4393) );
  NOR2X4 U6578 ( .A(n6608), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n4960) );
  NOR2X2 U6579 ( .A(n6627), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n4958) );
  NOR2X2 U6580 ( .A(n4960), .B(n4958), .Y(n5025) );
  NAND2BX4 U6581 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_0_), .Y(n5395)
         );
  INVX3 U6582 ( .A(n5395), .Y(n4389) );
  NAND2X2 U6583 ( .A(n6597), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .Y(n5393) );
  OAI21X4 U6584 ( .A0(n5392), .A1(n4389), .B0(n5393), .Y(n4641) );
  NOR2X2 U6585 ( .A(n6617), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n4677) );
  NAND2X2 U6586 ( .A(n6617), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n4676) );
  NAND2X1 U6587 ( .A(n6613), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n4680) );
  OAI21X1 U6588 ( .A0(n4679), .A1(n4676), .B0(n4680), .Y(n4390) );
  AOI21X4 U6589 ( .A0(n4641), .A1(n4391), .B0(n4390), .Y(n4914) );
  NAND2X2 U6590 ( .A(n6627), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n5465) );
  OAI21X2 U6591 ( .A0(n4960), .A1(n5465), .B0(n4961), .Y(n5024) );
  NAND2X1 U6592 ( .A(n6622), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n5027) );
  NAND2X1 U6593 ( .A(n6632), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), .Y(n4920) );
  OAI21X1 U6594 ( .A0(n4919), .A1(n5027), .B0(n4920), .Y(n4392) );
  AOI21X2 U6595 ( .A0(n4393), .A1(n5024), .B0(n4392), .Y(n4394) );
  OAI21X4 U6596 ( .A0(n4395), .A1(n4914), .B0(n4394), .Y(n5749) );
  NAND2X1 U6597 ( .A(n6717), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n5497) );
  MXI2X1 U6599 ( .A(median_sobel_inst_n221), .B(n1148), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[44]) );
  NOR2X1 U6600 ( .A(n5140), .B(n6555), .Y(conv_inst_N56) );
  OA21X4 U6601 ( .A0(median_sobel_inst_n360), .A1(n3397), .B0(n4404), .Y(n4405) );
  NAND2X4 U6602 ( .A(n4406), .B(n4405), .Y(median_sobel_inst_data_d_r[7]) );
  OAI21X1 U6603 ( .A0(median_sobel_inst_u_sober_compare_submodule_n46), .A1(
        median_sobel_inst_u_sober_compare_submodule_n169), .B0(
        median_sobel_inst_u_sober_compare_submodule_n55), .Y(n4409) );
  OAI2BB2X2 U6604 ( .B0(median_sobel_inst_u_sober_compare_submodule_n46), .B1(
        n4407), .A0N(median_sobel_inst_u_sober_compare_submodule_n54), .A1N(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[2]), .Y(n4408) );
  AOI21X4 U6605 ( .A0(n4409), .A1(
        median_sobel_inst_u_sober_compare_submodule_n3), .B0(n4408), .Y(n4412)
         );
  OAI22X2 U6606 ( .A0(median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), 
        .A1(n4428), .B0(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[2]), .B1(
        median_sobel_inst_u_sober_compare_submodule_n54), .Y(n4411) );
  AOI22X2 U6607 ( .A0(median_sobel_inst_u_sober_compare_submodule_n224), .A1(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[4]), .B0(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), .B1(n4428), 
        .Y(n4410) );
  OAI21X4 U6608 ( .A0(n4412), .A1(n4411), .B0(n4410), .Y(n4414) );
  AOI2BB2X4 U6609 ( .B0(n4414), .B1(n4413), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n2), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n1), .Y(n4424) );
  OR2X4 U6610 ( .A(median_sobel_inst_u_sober_compare_submodule_n60), .B(n6664), 
        .Y(n4418) );
  AOI22X1 U6611 ( .A0(median_sobel_inst_u_sober_compare_submodule_n60), .A1(
        n6664), .B0(median_sobel_inst_u_sober_compare_submodule_n61), .B1(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[9]), .Y(n4420) );
  NAND3X1 U6612 ( .A(n4418), .B(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[7]), .C(
        median_sobel_inst_u_sober_compare_submodule_n59), .Y(n4419) );
  AND3X4 U6613 ( .A(n4421), .B(n4420), .C(n4419), .Y(n4422) );
  OAI21X4 U6614 ( .A0(n4424), .A1(n4423), .B0(n4422), .Y(n4426) );
  NAND2X6 U6615 ( .A(n4426), .B(n4425), .Y(n5493) );
  AOI2BB2X1 U6618 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), 
        .B1(n5477), .A0N(median_sobel_inst_u_median_filter_submodule_n96), 
        .A1N(n5476), .Y(n4429) );
  NAND2BX1 U6619 ( .AN(median_sobel_inst_n371), .B(n3478), .Y(n4431) );
  INVX3 U6620 ( .A(n3726), .Y(n4476) );
  NAND2X2 U6621 ( .A(n4438), .B(n4437), .Y(n4440) );
  NAND2X4 U6622 ( .A(n4440), .B(n4439), .Y(n4776) );
  NAND2X4 U6623 ( .A(n4443), .B(n4442), .Y(n4549) );
  XNOR2X1 U6624 ( .A(n4549), .B(n4548), .Y(n4444) );
  AOI2BB2X1 U6625 ( .B0(n3472), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n42), .A1N(n5450), .Y(
        n4445) );
  OAI21XL U6626 ( .A0(n5452), .A1(n6735), .B0(n4445), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[0]) );
  OAI21XL U6627 ( .A0(n5061), .A1(n6877), .B0(n4446), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[4]) );
  OR2X2 U6628 ( .A(cnt[3]), .B(cnt[4]), .Y(n4447) );
  NOR4X1 U6629 ( .A(cnt[5]), .B(cnt[6]), .C(cnt[7]), .D(n6428), .Y(n4448) );
  NAND3X2 U6630 ( .A(cnt[2]), .B(n5783), .C(n4448), .Y(n4910) );
  NOR2X1 U6631 ( .A(n4910), .B(n5784), .Y(N789) );
  NAND2XL U6632 ( .A(cnt[1]), .B(n6311), .Y(n4450) );
  MXI2X1 U6633 ( .A(n858), .B(median_sobel_inst_n246), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[66]) );
  MXI2X1 U6634 ( .A(median_sobel_inst_n369), .B(median_sobel_inst_n217), .S0(
        n2677), .Y(n6547) );
  MXI2X1 U6635 ( .A(median_sobel_inst_n401), .B(median_sobel_inst_n249), .S0(
        n2677), .Y(n6697) );
  AOI2BB2X1 U6636 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), 
        .B1(n3472), .A0N(median_sobel_inst_u_median_filter_submodule_n69), 
        .A1N(n5450), .Y(n4454) );
  AOI2BB2X1 U6637 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), 
        .B1(n3472), .A0N(median_sobel_inst_u_median_filter_submodule_n44), 
        .A1N(n5450), .Y(n4455) );
  MXI2X1 U6638 ( .A(sram_wen_ready_r[0]), .B(sram_wen_ready_r[3]), .S0(
        i_in_valid), .Y(n4457) );
  AOI2BB2X1 U6640 ( .B0(n3472), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n41), .A1N(n5450), .Y(
        n4458) );
  OAI21XL U6641 ( .A0(median_sobel_inst_u_median_filter_submodule_n74), .A1(
        n5452), .B0(n4458), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[5]) );
  AOI2BB2X1 U6642 ( .B0(n4385), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n49), .A1N(n5450), .Y(
        n4460) );
  NAND2BX1 U6643 ( .AN(median_sobel_inst_n377), .B(n4584), .Y(n4463) );
  OA22X2 U6644 ( .A0(median_sobel_inst_n385), .A1(n2778), .B0(
        median_sobel_inst_n353), .B1(n3634), .Y(n4462) );
  NAND2X1 U6645 ( .A(median_sobel_inst_n654), .B(n3479), .Y(n4461) );
  OAI21XL U6646 ( .A0(n5061), .A1(n6911), .B0(n4464), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[6]) );
  XOR2X1 U6648 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]), .Y(n4473) );
  AOI2BB2X1 U6649 ( .B0(n5552), .B1(
        median_sobel_inst_u_median_filter_submodule_n9), .A0N(n6606), .A1N(
        n4675), .Y(n4475) );
  MXI2X1 U6650 ( .A(median_sobel_inst_n195), .B(n6896), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[21]) );
  MXI2X1 U6651 ( .A(median_sobel_inst_n198), .B(n6561), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[24]) );
  MXI2X1 U6652 ( .A(median_sobel_inst_n192), .B(n5578), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[19]) );
  MXI2X1 U6653 ( .A(median_sobel_inst_n170), .B(n6534), .S0(n4584), .Y(
        median_sobel_inst_n988) );
  NOR2X1 U6654 ( .A(n5513), .B(n6765), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1210) );
  NOR2X1 U6655 ( .A(n5513), .B(n6554), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1220) );
  OAI21XL U6656 ( .A0(i_op_valid), .A1(n5048), .B0(n4480), .Y(n442) );
  MXI2X1 U6657 ( .A(median_sobel_inst_n400), .B(median_sobel_inst_n250), .S0(
        n2677), .Y(n6691) );
  MXI2X1 U6658 ( .A(n6579), .B(median_sobel_inst_n264), .S0(n4525), .Y(n6760)
         );
  XOR2X1 U6659 ( .A(x_origin_r_1_), .B(n827), .Y(N732) );
  AOI2BB2X1 U6660 ( .B0(n5554), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n47), .A1N(n4811), .Y(
        n4483) );
  INVX3 U6661 ( .A(n3726), .Y(n5449) );
  NOR2X2 U6662 ( .A(n5548), .B(n4728), .Y(n4727) );
  OA21X2 U6663 ( .A0(n4727), .A1(n4485), .B0(n4873), .Y(conv_inst_N69) );
  XNOR2X1 U6664 ( .A(conv_inst_data_abc_3_r[4]), .B(conv_inst_conv_3_r[4]), 
        .Y(n4486) );
  XOR2X1 U6665 ( .A(n4487), .B(n4486), .Y(n4488) );
  NOR2X2 U6666 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n5372) );
  OAI21X4 U6668 ( .A0(n5372), .A1(n4489), .B0(n5373), .Y(n4612) );
  NOR2X4 U6669 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4622)
         );
  NOR2X2 U6670 ( .A(n4613), .B(n4622), .Y(n4491) );
  AOI21X4 U6671 ( .A0(n4612), .A1(n4491), .B0(n4490), .Y(n4975) );
  NOR2X4 U6672 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n4994)
         );
  NOR2X2 U6673 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n4987)
         );
  NAND2X2 U6674 ( .A(n4993), .B(n4493), .Y(n4495) );
  NAND2X2 U6675 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), 
        .B(n2788), .Y(n5460) );
  NAND2X1 U6676 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .Y(n4979)
         );
  NAND2X2 U6677 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n4995)
         );
  NAND2X1 U6678 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n4988)
         );
  OAI21X1 U6679 ( .A0(n4987), .A1(n4995), .B0(n4988), .Y(n4492) );
  AOI21X2 U6680 ( .A0(n4992), .A1(n4493), .B0(n4492), .Y(n4494) );
  OAI21X4 U6681 ( .A0(n4975), .A1(n4495), .B0(n4494), .Y(n5756) );
  MXI2X1 U6683 ( .A(median_sobel_inst_n226), .B(n6534), .S0(n4510), .Y(
        median_sobel_inst_n984) );
  OAI21XL U6684 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_N131), .A1(
        n6492), .B0(n4504), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N119) );
  MX2X1 U6685 ( .A(median_sobel_inst_G[33]), .B(
        median_sobel_inst_u_sober_compare_submodule_n34), .S0(n2681), .Y(
        median_sobel_inst_u_sober_compare_submodule_n104) );
  MXI2X1 U6686 ( .A(median_sobel_inst_n383), .B(median_sobel_inst_n219), .S0(
        n5464), .Y(median_sobel_inst_n571) );
  XNOR2X1 U6687 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), 
        .Y(n4506) );
  NOR3XL U6688 ( .A(n6259), .B(n5104), .C(n4509), .Y(conv_inst_N254) );
  MXI2X1 U6689 ( .A(median_sobel_inst_n348), .B(median_sobel_inst_n190), .S0(
        n5464), .Y(median_sobel_inst_n600) );
  MXI2X1 U6690 ( .A(n6828), .B(median_sobel_inst_n266), .S0(n2778), .Y(n6552)
         );
  MXI2X1 U6691 ( .A(median_sobel_inst_n159), .B(n6867), .S0(n3902), .Y(
        median_sobel_inst_med_sobel_e_wait_r[4]) );
  MXI2X1 U6692 ( .A(median_sobel_inst_n207), .B(n6867), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[32]) );
  NAND2X2 U6693 ( .A(n5078), .B(n4511), .Y(n4513) );
  CLKINVX1 U6694 ( .A(n4516), .Y(n4517) );
  NAND2X4 U6695 ( .A(n4519), .B(n4518), .Y(n4788) );
  XOR2X1 U6696 ( .A(conv_inst_data_abc_1_r[5]), .B(conv_inst_conv_1_r[5]), .Y(
        n4787) );
  MXI2X1 U6698 ( .A(n6829), .B(median_sobel_inst_n265), .S0(n4525), .Y(n6482)
         );
  MXI2X1 U6699 ( .A(median_sobel_inst_n230), .B(n6561), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[52]) );
  MXI2X1 U6700 ( .A(median_sobel_inst_n228), .B(n6484), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[50]) );
  MXI2X1 U6701 ( .A(median_sobel_inst_n184), .B(n844), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[12]) );
  MXI2X1 U6702 ( .A(median_sobel_inst_n199), .B(n6478), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[25]) );
  MXI2X1 U6703 ( .A(median_sobel_inst_n173), .B(n6833), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[79]) );
  MXI2X1 U6704 ( .A(median_sobel_inst_n240), .B(n6604), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[61]) );
  NOR2X1 U6705 ( .A(n4526), .B(n4719), .Y(n5096) );
  XNOR2X1 U6706 ( .A(conv_inst_conv_2_r[1]), .B(conv_inst_data_bcd_2_r[1]), 
        .Y(n4530) );
  NOR2X1 U6707 ( .A(n4530), .B(n5473), .Y(n4803) );
  MXI2X1 U6708 ( .A(median_sobel_inst_n430), .B(n2785), .S0(n5923), .Y(
        median_sobel_inst_n514) );
  MXI2X1 U6709 ( .A(median_sobel_inst_n365), .B(median_sobel_inst_n205), .S0(
        n5923), .Y(median_sobel_inst_n585) );
  MXI2X1 U6710 ( .A(median_sobel_inst_n161), .B(n6827), .S0(n3478), .Y(
        median_sobel_inst_med_sobel_e_wait_r[6]) );
  MXI2X1 U6711 ( .A(median_sobel_inst_u_sober_compare_submodule_n87), .B(n6794), .S0(n4510), .Y(median_sobel_inst_u_sober_compare_submodule_n139) );
  MXI2X1 U6712 ( .A(median_sobel_inst_n193), .B(n6779), .S0(n2776), .Y(
        median_sobel_inst_med_sobel_e_wait_r[20]) );
  MXI2X1 U6713 ( .A(median_sobel_inst_u_sober_compare_submodule_n79), .B(n6785), .S0(n4478), .Y(median_sobel_inst_u_sober_compare_submodule_n131) );
  MXI2X1 U6714 ( .A(median_sobel_inst_n234), .B(n6828), .S0(n4510), .Y(
        median_sobel_inst_n983) );
  MXI2X1 U6715 ( .A(median_sobel_inst_u_sober_compare_submodule_n83), .B(n6792), .S0(n4510), .Y(median_sobel_inst_u_sober_compare_submodule_n135) );
  MXI2X1 U6716 ( .A(median_sobel_inst_u_sober_compare_submodule_n86), .B(n6793), .S0(n4481), .Y(median_sobel_inst_u_sober_compare_submodule_n138) );
  MXI2X1 U6717 ( .A(median_sobel_inst_u_sober_compare_submodule_n80), .B(n6786), .S0(n3725), .Y(median_sobel_inst_u_sober_compare_submodule_n132) );
  MXI2X1 U6718 ( .A(median_sobel_inst_u_sober_compare_submodule_n77), .B(n6784), .S0(n3711), .Y(median_sobel_inst_u_sober_compare_submodule_n129) );
  MXI2X1 U6719 ( .A(median_sobel_inst_n224), .B(n5578), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[47]) );
  MXI2X1 U6720 ( .A(median_sobel_inst_n208), .B(n6604), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[33]) );
  XNOR2X1 U6723 ( .A(conv_inst_data_abc_1_r[9]), .B(conv_inst_conv_1_r[9]), 
        .Y(n4539) );
  NOR2X2 U6724 ( .A(n4541), .B(n6291), .Y(conv_inst_N228) );
  AOI21X1 U6725 ( .A0(n4791), .A1(n4544), .B0(n3095), .Y(n4546) );
  XOR2X1 U6726 ( .A(n4546), .B(n4545), .Y(n4547) );
  XNOR2X1 U6727 ( .A(conv_inst_conv_2_r[8]), .B(conv_inst_data_bcd_2_r[8]), 
        .Y(n4552) );
  MXI2X1 U6728 ( .A(median_sobel_inst_n180), .B(n2785), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[8]) );
  NOR2X2 U6729 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n93), .Y(n5403) );
  NAND2X1 U6731 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n93), .Y(n5404) );
  AOI21X4 U6734 ( .A0(n4742), .A1(n4557), .B0(n4556), .Y(n5269) );
  NOR2X2 U6735 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .Y(n5268) );
  NOR2X2 U6736 ( .A(n5270), .B(n5268), .Y(n5259) );
  NAND2X1 U6738 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .Y(n5271) );
  OAI21X2 U6739 ( .A0(n5270), .A1(n5267), .B0(n5271), .Y(n5260) );
  NAND2X1 U6740 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .Y(n5263) );
  CLKINVX1 U6741 ( .A(n5263), .Y(n4558) );
  AOI21X1 U6742 ( .A0(n5260), .A1(n5264), .B0(n4558), .Y(n4559) );
  MXI2X1 U6743 ( .A(median_sobel_inst_n186), .B(n6753), .S0(n5840), .Y(
        median_sobel_inst_n978) );
  NAND2X1 U6744 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n93), .Y(n5383) );
  NAND2X1 U6745 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .Y(n4760) );
  AOI21X4 U6746 ( .A0(n4564), .A1(n4758), .B0(n4563), .Y(n5243) );
  NOR2X2 U6747 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .Y(n5233) );
  OR2X2 U6748 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .Y(n5245) );
  NAND2X1 U6749 ( .A(n5239), .B(n5245), .Y(n4567) );
  CLKINVX1 U6750 ( .A(n5244), .Y(n4565) );
  OAI21X4 U6751 ( .A0(n5243), .A1(n4567), .B0(n4566), .Y(n6118) );
  CLKBUFX8 U6752 ( .A(i_rst_n), .Y(n6944) );
  CLKBUFX3 U6753 ( .A(i_rst_n), .Y(n6932) );
  CLKBUFX3 U6754 ( .A(i_rst_n), .Y(n6934) );
  CLKBUFX3 U6755 ( .A(i_rst_n), .Y(n6935) );
  CLKBUFX3 U6756 ( .A(i_rst_n), .Y(n6930) );
  CLKBUFX3 U6757 ( .A(i_rst_n), .Y(n6937) );
  CLKBUFX8 U6758 ( .A(i_rst_n), .Y(n6938) );
  MXI2X1 U6759 ( .A(median_sobel_inst_n246), .B(n6795), .S0(n2778), .Y(
        median_sobel_inst_n544) );
  MXI2X1 U6760 ( .A(median_sobel_inst_n189), .B(n1148), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[16]) );
  MXI2X1 U6761 ( .A(median_sobel_inst_n188), .B(n2775), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[15]) );
  MXI2X1 U6762 ( .A(median_sobel_inst_n171), .B(n6896), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[77]) );
  MXI2X1 U6763 ( .A(median_sobel_inst_n172), .B(n6484), .S0(n4584), .Y(
        median_sobel_inst_med_sobel_e_wait_r[78]) );
  MXI2X1 U6764 ( .A(median_sobel_inst_n367), .B(median_sobel_inst_n203), .S0(
        n5464), .Y(median_sobel_inst_n587) );
  MXI2X1 U6765 ( .A(median_sobel_inst_n212), .B(n2785), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[36]) );
  MXI2X1 U6766 ( .A(median_sobel_inst_n210), .B(n6742), .S0(n4510), .Y(
        median_sobel_inst_n982) );
  MXI2X1 U6767 ( .A(median_sobel_inst_n220), .B(n2775), .S0(n3711), .Y(
        median_sobel_inst_med_sobel_e_wait_r[43]) );
  XOR2X1 U6768 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_conv_4_r[3]), .Y(
        n5088) );
  INVX1 U6771 ( .A(n4574), .Y(n4576) );
  MXI2X1 U6772 ( .A(median_sobel_inst_u_sober_compare_submodule_n78), .B(n6787), .S0(n4510), .Y(median_sobel_inst_u_sober_compare_submodule_n130) );
  MXI2X1 U6773 ( .A(median_sobel_inst_u_sober_compare_submodule_n84), .B(n6790), .S0(n4510), .Y(median_sobel_inst_u_sober_compare_submodule_n136) );
  MXI2X1 U6774 ( .A(median_sobel_inst_u_sober_compare_submodule_n85), .B(n6791), .S0(n4510), .Y(median_sobel_inst_u_sober_compare_submodule_n137) );
  CLKINVX1 U6775 ( .A(n5413), .Y(n4578) );
  NAND2X2 U6776 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .Y(n5411) );
  OAI21X4 U6777 ( .A0(n5410), .A1(n4578), .B0(n5411), .Y(n4739) );
  NOR2X2 U6778 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n92), .Y(n4835) );
  NAND2X1 U6779 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .Y(n4838) );
  OAI21X1 U6780 ( .A0(n4837), .A1(n4834), .B0(n4838), .Y(n4579) );
  NOR2X2 U6781 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n5124) );
  NOR2X2 U6782 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n5283) );
  NAND2X2 U6783 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n5284) );
  NAND2X1 U6784 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n5125) );
  OAI21X1 U6785 ( .A0(n5124), .A1(n5284), .B0(n5125), .Y(n5118) );
  MXI2X1 U6786 ( .A(median_sobel_inst_n250), .B(n6753), .S0(n4584), .Y(
        median_sobel_inst_n986) );
  MXI2X1 U6787 ( .A(median_sobel_inst_n158), .B(n833), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[3]) );
  MXI2X1 U6788 ( .A(median_sobel_inst_n162), .B(n6742), .S0(n5840), .Y(
        median_sobel_inst_n977) );
  NAND2BX1 U6789 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), .Y(n4591)
         );
  NAND2BX1 U6790 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_0_), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0]), .Y(n4592)
         );
  MXI2X1 U6791 ( .A(n869), .B(median_sobel_inst_n163), .S0(n3484), .Y(
        median_sobel_inst_med_sobel_e_wait_r[70]) );
  MXI2X1 U6792 ( .A(n848), .B(median_sobel_inst_n237), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[58]) );
  MXI2X1 U6793 ( .A(n5612), .B(median_sobel_inst_n236), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[57]) );
  MXI2X1 U6794 ( .A(n856), .B(median_sobel_inst_n249), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[69]) );
  MXI2X1 U6795 ( .A(n8660), .B(median_sobel_inst_n243), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[63]) );
  MXI2X1 U6796 ( .A(median_sobel_inst_n187), .B(n869), .S0(n3477), .Y(
        median_sobel_inst_med_sobel_e_wait_r[14]) );
  MXI2X1 U6797 ( .A(median_sobel_inst_n156), .B(median_sobel_inst_n92), .S0(
        n5378), .Y(median_sobel_inst_n618) );
  OAI21X4 U6798 ( .A0(n4595), .A1(n6586), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n4594)
         );
  NAND2X1 U6799 ( .A(n5535), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n39), .Y(n5534) );
  NAND3X1 U6800 ( .A(n6782), .B(n5534), .C(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n4596)
         );
  XOR2X1 U6801 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N260) );
  XOR2X1 U6802 ( .A(n4603), .B(n2788), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N122) );
  INVX3 U6804 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n96), .Y(n4606) );
  NOR2X2 U6805 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n8), .B(n4606), .Y(n4629) );
  NAND2X1 U6806 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n8), .B(
        n4606), .Y(n4628) );
  XOR2X1 U6807 ( .A(n4627), .B(n4608), .Y(n6767) );
  MXI2X1 U6808 ( .A(median_sobel_inst_n357), .B(median_sobel_inst_n197), .S0(
        n5415), .Y(n6721) );
  XNOR2X1 U6809 ( .A(n4735), .B(n4611), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N134) );
  OAI21X1 U6810 ( .A0(n4626), .A1(n4622), .B0(n4623), .Y(n4617) );
  NAND2X1 U6811 ( .A(n4615), .B(n4614), .Y(n4616) );
  XNOR2X1 U6812 ( .A(n4617), .B(n4616), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1100) );
  AND2X4 U6813 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n43), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n27), .Y(n4618) );
  NAND3X1 U6815 ( .A(n4618), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n24), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n44), .Y(n4619) );
  XOR2X1 U6816 ( .A(n4626), .B(n4625), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N109) );
  CLKINVX1 U6819 ( .A(n4830), .Y(n4652) );
  NOR2X2 U6820 ( .A(n6642), .B(n4631), .Y(n4826) );
  XNOR2X1 U6821 ( .A(n4652), .B(n4633), .Y(n6687) );
  NAND2X1 U6822 ( .A(n4635), .B(n4634), .Y(n4637) );
  NAND2X1 U6823 ( .A(n4637), .B(n6659), .Y(n4636) );
  CLKMX2X2 U6824 ( .A(median_sobel_inst_n150), .B(n6757), .S0(n5879), .Y(
        median_sobel_inst_n616) );
  CLKMX2X2 U6825 ( .A(median_sobel_inst_n959), .B(n6756), .S0(n5879), .Y(
        median_sobel_inst_n615) );
  CLKMX2X2 U6826 ( .A(median_sobel_inst_n646), .B(n6772), .S0(n5879), .Y(
        median_sobel_inst_n584) );
  CLKMX2X2 U6827 ( .A(median_sobel_inst_n649), .B(n6754), .S0(n5879), .Y(
        median_sobel_inst_n550) );
  CLKMX2X2 U6828 ( .A(median_sobel_inst_n626), .B(n6769), .S0(n5879), .Y(
        median_sobel_inst_n551) );
  NOR2BX2 U6829 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), .B(n6576), 
        .Y(n5390) );
  INVX3 U6830 ( .A(n5390), .Y(n4638) );
  OAI21X4 U6831 ( .A0(n5387), .A1(n4638), .B0(n5388), .Y(n4903) );
  NAND2X4 U6832 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(n4899) );
  XOR2X1 U6833 ( .A(n4658), .B(n4640), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N149) );
  XOR2X1 U6834 ( .A(n4678), .B(n4643), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]) );
  XOR2X1 U6835 ( .A(n4651), .B(n4650), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N135) );
  MXI2X1 U6836 ( .A(n5777), .B(n5763), .S0(cnt[0]), .Y(n484) );
  OAI21X1 U6837 ( .A0(n4652), .A1(n4826), .B0(n4829), .Y(n4655) );
  NOR2X2 U6838 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n3), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n4), .Y(n4828) );
  XOR2X1 U6839 ( .A(n4655), .B(n4654), .Y(n6689) );
  OAI21X1 U6840 ( .A0(n4658), .A1(n4897), .B0(n4899), .Y(n4661) );
  CLKINVX1 U6841 ( .A(n4900), .Y(n4659) );
  NAND2X2 U6842 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), .Y(n4898) );
  NAND2X1 U6843 ( .A(n4659), .B(n4898), .Y(n4660) );
  XNOR2X1 U6844 ( .A(n4661), .B(n4660), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N150) );
  NAND2BX1 U6845 ( .AN(median_sobel_inst_u_sober_compare_submodule_n147), .B(
        n6176), .Y(n4663) );
  NAND2BX1 U6846 ( .AN(median_sobel_inst_u_sober_compare_submodule_n149), .B(
        n6176), .Y(n4666) );
  NAND2BX1 U6847 ( .AN(median_sobel_inst_u_sober_compare_submodule_n150), .B(
        n6176), .Y(n4669) );
  AOI2BB2X1 U6848 ( .B0(n5062), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .A0N(n5061), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n75), .Y(n4672) );
  MXI2X1 U6849 ( .A(median_sobel_inst_n254), .B(n833), .S0(n5879), .Y(n6704)
         );
  MXI2X1 U6850 ( .A(median_sobel_inst_n436), .B(n1145), .S0(n5879), .Y(n6703)
         );
  MXI2X1 U6851 ( .A(median_sobel_inst_n337), .B(median_sobel_inst_n185), .S0(
        n5879), .Y(n6713) );
  MXI2X1 U6852 ( .A(median_sobel_inst_n333), .B(median_sobel_inst_n157), .S0(
        n5879), .Y(n6708) );
  MXI2X1 U6853 ( .A(median_sobel_inst_n339), .B(median_sobel_inst_n183), .S0(
        n5879), .Y(n6712) );
  MXI2X1 U6854 ( .A(median_sobel_inst_n398), .B(median_sobel_inst_n236), .S0(
        n5879), .Y(n6702) );
  MXI2X1 U6855 ( .A(median_sobel_inst_n425), .B(n856), .S0(n5879), .Y(n6667)
         );
  MXI2X1 U6856 ( .A(median_sobel_inst_n344), .B(median_sobel_inst_n194), .S0(
        n5879), .Y(n6711) );
  MXI2X1 U6857 ( .A(median_sobel_inst_n329), .B(median_sobel_inst_n161), .S0(
        n5879), .Y(n6696) );
  MXI2X1 U6858 ( .A(median_sobel_inst_n338), .B(median_sobel_inst_n184), .S0(
        n5879), .Y(n6700) );
  MXI2X1 U6859 ( .A(median_sobel_inst_n342), .B(median_sobel_inst_n180), .S0(
        n5879), .Y(n6707) );
  MXI2X1 U6860 ( .A(median_sobel_inst_n330), .B(median_sobel_inst_n160), .S0(
        n5879), .Y(n6706) );
  MXI2X1 U6861 ( .A(median_sobel_inst_n341), .B(median_sobel_inst_n181), .S0(
        n5879), .Y(n6699) );
  MXI2X1 U6862 ( .A(median_sobel_inst_n328), .B(median_sobel_inst_n162), .S0(
        n5879), .Y(n6698) );
  AOI2BB2X1 U6863 ( .B0(n5552), .B1(n6865), .A0N(n5551), .A1N(
        median_sobel_inst_u_median_filter_submodule_n106), .Y(n4674) );
  OAI21X1 U6864 ( .A0(n4678), .A1(n4677), .B0(n4676), .Y(n4683) );
  CLKINVX1 U6865 ( .A(n4679), .Y(n4681) );
  NAND2XL U6866 ( .A(n4681), .B(n4680), .Y(n4682) );
  XNOR2X1 U6867 ( .A(n4683), .B(n4682), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]) );
  OAI21X1 U6868 ( .A0(n4686), .A1(n4685), .B0(n4684), .Y(n4691) );
  XNOR2X1 U6869 ( .A(n4691), .B(n4690), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]) );
  MXI2X1 U6870 ( .A(median_sobel_inst_n251), .B(n862), .S0(n5415), .Y(n6709)
         );
  MXI2X1 U6871 ( .A(median_sobel_inst_n352), .B(median_sobel_inst_n202), .S0(
        n5415), .Y(n6726) );
  NAND2BX1 U6872 ( .AN(median_sobel_inst_u_sober_compare_submodule_n141), .B(
        n6176), .Y(n4692) );
  NAND2BX1 U6873 ( .AN(median_sobel_inst_u_sober_compare_submodule_n145), .B(
        n6176), .Y(n4695) );
  NAND2BX1 U6874 ( .AN(median_sobel_inst_u_sober_compare_submodule_n146), .B(
        n6176), .Y(n4698) );
  NAND2BX1 U6875 ( .AN(median_sobel_inst_u_sober_compare_submodule_n143), .B(
        n6176), .Y(n4701) );
  NAND2BX1 U6876 ( .AN(median_sobel_inst_u_sober_compare_submodule_n140), .B(
        n6176), .Y(n4704) );
  NAND2BX1 U6877 ( .AN(median_sobel_inst_u_sober_compare_submodule_n148), .B(
        n6176), .Y(n4706) );
  NAND2BX1 U6878 ( .AN(median_sobel_inst_u_sober_compare_submodule_n144), .B(
        n6176), .Y(n4709) );
  NAND2X2 U6879 ( .A(n4713), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5539)
         );
  NAND2X2 U6880 ( .A(n5539), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n26), .Y(n5538) );
  NAND2X2 U6881 ( .A(n5538), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5547)
         );
  NAND2X2 U6882 ( .A(n5547), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n40), .Y(n5546) );
  OAI21X4 U6883 ( .A0(n4713), .A1(n4712), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n4714)
         );
  NAND2X4 U6884 ( .A(n4714), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n42), .Y(n5480) );
  AOI21X1 U6885 ( .A0(n5546), .A1(n4716), .B0(n4715), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N103) );
  OAI21XL U6886 ( .A0(conv_inst_conv_3_r[0]), .A1(conv_inst_data_abc_3_r[0]), 
        .B0(n4717), .Y(n4718) );
  OAI21XL U6887 ( .A0(conv_inst_conv_4_r[0]), .A1(conv_inst_data_bcd_4_r[0]), 
        .B0(n4719), .Y(n4720) );
  XNOR2X1 U6888 ( .A(n4725), .B(n4724), .Y(n4726) );
  AOI21X1 U6889 ( .A0(n4728), .A1(n5548), .B0(n4727), .Y(conv_inst_N68) );
  XOR2X1 U6890 ( .A(n4729), .B(n4730), .Y(conv_inst_data_abc_w[3]) );
  XNOR2X1 U6891 ( .A(n4738), .B(n4737), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N137) );
  XOR2X1 U6892 ( .A(n4836), .B(n4741), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N18) );
  INVX3 U6893 ( .A(n4742), .Y(n4797) );
  OAI21X1 U6894 ( .A0(n4797), .A1(n4793), .B0(n4794), .Y(n4747) );
  XNOR2X1 U6895 ( .A(n4747), .B(n4746), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N390) );
  AOI2BB2X1 U6897 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), 
        .B1(n5554), .A0N(median_sobel_inst_u_median_filter_submodule_n51), 
        .A1N(n5551), .Y(n4752) );
  AOI2BB2X1 U6898 ( .B0(n5554), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .A0N(n5551), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n58), .Y(n4753) );
  NAND2BX1 U6899 ( .AN(median_sobel_inst_u_median_filter_submodule_n63), .B(
        n5060), .Y(n4755) );
  AOI2BB2X1 U6900 ( .B0(n5554), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .A0N(n5551), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n107), .Y(n4757) );
  CLKINVX1 U6901 ( .A(n4758), .Y(n4819) );
  XNOR2X1 U6902 ( .A(n4763), .B(n4762), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N9) );
  NAND2BX1 U6903 ( .AN(median_sobel_inst_u_sober_compare_submodule_n142), .B(
        n6176), .Y(n4764) );
  OA22X1 U6904 ( .A0(n6010), .A1(n6568), .B0(n4767), .B1(
        median_sobel_inst_u_median_filter_submodule_n97), .Y(n4768) );
  XOR2X1 U6905 ( .A(n869), .B(n2785), .Y(n4769) );
  XOR2X1 U6906 ( .A(n3549), .B(n4769), .Y(n4770) );
  XOR2X1 U6907 ( .A(n4770), .B(n5381), .Y(conv_inst_data_bcd_w[1]) );
  NAND2BX1 U6908 ( .AN(median_sobel_inst_u_median_filter_submodule_n64), .B(
        n5060), .Y(n4774) );
  XNOR2X1 U6909 ( .A(conv_inst_data_bcd_2_r[6]), .B(conv_inst_conv_2_r[6]), 
        .Y(n4775) );
  XOR2X1 U6910 ( .A(n4776), .B(n4775), .Y(n4777) );
  CLKINVX1 U6911 ( .A(n4778), .Y(n4779) );
  NAND2X1 U6912 ( .A(n4780), .B(n4779), .Y(n5112) );
  AOI21X1 U6913 ( .A0(n5112), .A1(n4783), .B0(n4782), .Y(n4785) );
  XNOR2X1 U6914 ( .A(n4784), .B(n4785), .Y(n4786) );
  NOR2X1 U6915 ( .A(n4786), .B(n5613), .Y(conv_inst_N241) );
  XNOR2X1 U6916 ( .A(n4788), .B(n4787), .Y(n4789) );
  XNOR2X1 U6917 ( .A(conv_inst_data_bcd_4_r[6]), .B(conv_inst_conv_4_r[6]), 
        .Y(n4790) );
  XOR2X1 U6918 ( .A(n4791), .B(n4790), .Y(n4792) );
  XOR2X1 U6919 ( .A(n4797), .B(n4796), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N38) );
  XOR2X1 U6920 ( .A(conv_inst_data_abc_3_r[6]), .B(conv_inst_conv_3_r[6]), .Y(
        n4798) );
  XOR2X1 U6921 ( .A(n3541), .B(n4798), .Y(n4799) );
  AOI2BB2X1 U6922 ( .B0(n4822), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n115), .A1N(n4767), .Y(
        n4801) );
  NOR2X1 U6923 ( .A(n4803), .B(n4802), .Y(n4805) );
  XOR2X1 U6924 ( .A(conv_inst_conv_2_r[2]), .B(conv_inst_data_bcd_2_r[2]), .Y(
        n4804) );
  XOR2X1 U6925 ( .A(n4805), .B(n4804), .Y(n4806) );
  NOR2X1 U6926 ( .A(n6259), .B(n4806), .Y(conv_inst_N238) );
  XNOR2X1 U6927 ( .A(n4808), .B(n4807), .Y(n4809) );
  AOI2BB2X1 U6928 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), 
        .B1(n5554), .A0N(median_sobel_inst_u_median_filter_submodule_n105), 
        .A1N(n5551), .Y(n4810) );
  NOR2X1 U6929 ( .A(n6894), .B(n6907), .Y(n5424) );
  INVX3 U6930 ( .A(n5424), .Y(n4812) );
  OAI21X4 U6931 ( .A0(n5421), .A1(n4812), .B0(n5422), .Y(n5254) );
  INVX3 U6932 ( .A(n5254), .Y(n4868) );
  NOR2X2 U6933 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n92), .Y(n5248) );
  XOR2X1 U6934 ( .A(n4868), .B(n4814), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N280) );
  XOR2X1 U6935 ( .A(n4819), .B(n4818), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N82) );
  NOR2X2 U6937 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n36), .B(
        n4831), .Y(n4942) );
  XNOR2X1 U6938 ( .A(n5136), .B(n4833), .Y(n6506) );
  OAI21X1 U6939 ( .A0(n4836), .A1(n4835), .B0(n4834), .Y(n4841) );
  NAND2XL U6940 ( .A(n4839), .B(n4838), .Y(n4840) );
  XNOR2X1 U6941 ( .A(n4841), .B(n4840), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N19) );
  AOI2BB2X1 U6942 ( .B0(n4842), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .A0N(n5558), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n81), .Y(n4843) );
  XOR2X1 U6943 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N16) );
  MXI2X1 U6944 ( .A(median_sobel_inst_n428), .B(n858), .S0(n5879), .Y(n6666)
         );
  MXI2X1 U6945 ( .A(median_sobel_inst_n252), .B(n5612), .S0(n5879), .Y(n6668)
         );
  MXI2X1 U6946 ( .A(median_sobel_inst_n253), .B(n848), .S0(n5879), .Y(n6669)
         );
  MXI2X1 U6947 ( .A(median_sobel_inst_n426), .B(n844), .S0(n5879), .Y(n6701)
         );
  MXI2X1 U6948 ( .A(median_sobel_inst_n427), .B(n6578), .S0(n5879), .Y(n6670)
         );
  NAND3BX1 U6949 ( .AN(n841), .B(curr_state[3]), .C(curr_state[1]), .Y(n4853)
         );
  NAND2X1 U6950 ( .A(n5167), .B(n4856), .Y(n6338) );
  NAND2BX1 U6951 ( .AN(n5784), .B(conv_calc_done_r), .Y(n4860) );
  INVX3 U6952 ( .A(n6430), .Y(n6358) );
  NAND3X1 U6953 ( .A(n4858), .B(n819), .C(n4857), .Y(n4859) );
  AOI2BB2X1 U6954 ( .B0(n4863), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n99), .A1N(n5476), .Y(
        n4864) );
  XOR2X1 U6955 ( .A(n4865), .B(n6242), .Y(n4866) );
  AOI2BB2X1 U6956 ( .B0(n6008), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n78), .A1N(n4767), .Y(
        n4867) );
  MXI2X1 U6957 ( .A(median_sobel_inst_n155), .B(n862), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[0]) );
  MXI2X1 U6958 ( .A(median_sobel_inst_n157), .B(n848), .S0(n3902), .Y(
        median_sobel_inst_med_sobel_e_wait_r[2]) );
  NOR2X2 U6959 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .Y(n5251) );
  NAND2X1 U6960 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .Y(n5249) );
  XNOR2X1 U6961 ( .A(n4871), .B(n4870), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N290) );
  MXI2X1 U6962 ( .A(median_sobel_inst_n185), .B(n856), .S0(n3478), .Y(
        median_sobel_inst_med_sobel_e_wait_r[13]) );
  XNOR2X1 U6963 ( .A(n4876), .B(n4877), .Y(conv_inst_data_bcd_w[3]) );
  OAI21X4 U6964 ( .A0(n3541), .A1(n4880), .B0(n4879), .Y(n5041) );
  XOR2X1 U6965 ( .A(conv_inst_data_abc_3_r[7]), .B(conv_inst_conv_3_r[7]), .Y(
        n5040) );
  XNOR2X1 U6966 ( .A(n5041), .B(n5040), .Y(n4881) );
  NOR2X1 U6967 ( .A(n4881), .B(n5613), .Y(conv_inst_N260) );
  XNOR2X1 U6968 ( .A(n4883), .B(n4882), .Y(conv_inst_data_bcd_w[2]) );
  OAI21X1 U6969 ( .A0(n5480), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n66), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n4884)
         );
  CLKMX2X2 U6970 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .B(
        n6831), .S0(n4884), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N105) );
  NOR2X2 U6971 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n5436) );
  NAND2X1 U6973 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n5437) );
  OAI21X4 U6974 ( .A0(n5436), .A1(n4885), .B0(n5437), .Y(n5693) );
  NOR2X2 U6975 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), .Y(n5689) );
  XOR2X1 U6977 ( .A(n5005), .B(n4887), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]) );
  NOR2X2 U6978 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n5431) );
  NAND2X1 U6979 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n5432) );
  NOR2X2 U6980 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), .Y(n5713) );
  XOR2X1 U6981 ( .A(n5010), .B(n4890), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]) );
  NOR2X2 U6982 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n5426) );
  NOR2X2 U6983 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n5639) );
  XOR2X1 U6985 ( .A(n5015), .B(n4893), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]) );
  NAND2X1 U6987 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), .Y(n5442) );
  NOR2X2 U6988 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n5663) );
  OAI21X4 U6990 ( .A0(n4900), .A1(n4899), .B0(n4898), .Y(n4901) );
  AOI21X4 U6991 ( .A0(n4903), .A1(n4902), .B0(n4901), .Y(n5491) );
  NOR2X2 U6992 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(
        n4924) );
  NAND2X2 U6993 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(n5455) );
  AOI21X1 U6994 ( .A0(n5458), .A1(n5456), .B0(n4904), .Y(n4907) );
  NOR2X4 U6995 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .Y(
        n4926) );
  XOR2X1 U6996 ( .A(n4907), .B(n4906), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N152) );
  NOR2X1 U6997 ( .A(n4910), .B(n4909), .Y(N790) );
  XNOR2X1 U6998 ( .A(n4912), .B(n4911), .Y(n4913) );
  NOR2X1 U6999 ( .A(n4913), .B(n5613), .Y(conv_inst_N227) );
  NOR2X1 U7000 ( .A(n4915), .B(n5026), .Y(n4918) );
  AOI21X1 U7002 ( .A0(n5468), .A1(n4918), .B0(n4917), .Y(n4923) );
  NOR2X2 U7003 ( .A(n4924), .B(n4926), .Y(n5482) );
  OAI21X4 U7004 ( .A0(n4926), .A1(n5455), .B0(n4925), .Y(n5488) );
  AOI21X1 U7005 ( .A0(n5458), .A1(n5482), .B0(n5488), .Y(n4929) );
  NAND2X2 U7006 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), .Y(n5484)
         );
  XOR2X1 U7007 ( .A(n4929), .B(n4928), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N153) );
  MXI2X1 U7008 ( .A(median_sobel_inst_n343), .B(median_sobel_inst_n179), .S0(
        n5464), .Y(n6714) );
  MXI2X1 U7009 ( .A(median_sobel_inst_n393), .B(median_sobel_inst_n241), .S0(
        n5923), .Y(n6692) );
  CLKINVX1 U7010 ( .A(n5482), .Y(n4933) );
  NOR2X1 U7011 ( .A(n4933), .B(n2752), .Y(n4936) );
  CLKINVX1 U7012 ( .A(n5488), .Y(n4934) );
  NAND2X2 U7013 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .Y(n5483) );
  XOR2X1 U7014 ( .A(n4939), .B(n4938), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N154) );
  MXI2X1 U7015 ( .A(median_sobel_inst_n204), .B(n5612), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[29]) );
  NOR2X2 U7016 ( .A(n6509), .B(n6647), .Y(n4945) );
  NOR2X2 U7017 ( .A(n4945), .B(n4942), .Y(n5129) );
  NAND2X1 U7018 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n7), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n5), .Y(n5131) );
  OAI21X1 U7020 ( .A0(n5136), .A1(n4951), .B0(n4950), .Y(n4954) );
  XOR2X1 U7021 ( .A(n4954), .B(n4953), .Y(n6633) );
  CLKINVX1 U7022 ( .A(n5452), .Y(n4955) );
  AOI2BB2X1 U7023 ( .B0(n4955), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n63), .A1N(n5450), .Y(
        n4956) );
  XOR2X1 U7024 ( .A(n4964), .B(n4963), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]) );
  AND2X2 U7025 ( .A(n4966), .B(n4965), .Y(n4967) );
  NAND2X1 U7026 ( .A(n822), .B(n6470), .Y(n4974) );
  INVX3 U7027 ( .A(n4968), .Y(n5505) );
  NAND2X1 U7028 ( .A(n5779), .B(n6572), .Y(n4973) );
  CLKINVX1 U7029 ( .A(n4976), .Y(n5461) );
  NOR2X1 U7030 ( .A(n4983), .B(n4994), .Y(n4986) );
  CLKINVX1 U7031 ( .A(n4992), .Y(n4984) );
  OAI21X1 U7032 ( .A0(n4984), .A1(n4994), .B0(n4995), .Y(n4985) );
  NAND2BX1 U7033 ( .AN(median_sobel_inst_n323), .B(median_sobel_inst_n325), 
        .Y(n5000) );
  NAND2BX1 U7034 ( .AN(median_sobel_inst_n325), .B(median_sobel_inst_n323), 
        .Y(n4999) );
  NOR3X1 U7035 ( .A(n5002), .B(median_sobel_inst_cnt_3_), .C(n5001), .Y(n5003)
         );
  OAI21X1 U7036 ( .A0(n5005), .A1(n5689), .B0(n5691), .Y(n5008) );
  NOR2X2 U7037 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n5692) );
  NAND2X1 U7038 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n5690) );
  XNOR2X1 U7039 ( .A(n5008), .B(n5007), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]) );
  OAI21X1 U7040 ( .A0(n5010), .A1(n5713), .B0(n5715), .Y(n5013) );
  NOR2X2 U7041 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .Y(n5716) );
  NAND2X1 U7042 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .Y(n5714) );
  NAND2X1 U7043 ( .A(n5011), .B(n5714), .Y(n5012) );
  XNOR2X1 U7044 ( .A(n5013), .B(n5012), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]) );
  OAI21X1 U7045 ( .A0(n5015), .A1(n5639), .B0(n5641), .Y(n5018) );
  NOR2X2 U7046 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .Y(n5642) );
  CLKINVX1 U7047 ( .A(n5642), .Y(n5016) );
  NAND2X1 U7048 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .Y(n5640) );
  NAND2X1 U7049 ( .A(n5016), .B(n5640), .Y(n5017) );
  XNOR2X1 U7050 ( .A(n5018), .B(n5017), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]) );
  OAI21X1 U7051 ( .A0(n5020), .A1(n5663), .B0(n5665), .Y(n5023) );
  NOR2X2 U7052 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), .Y(n5666) );
  NAND2X1 U7053 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), .Y(n5664) );
  XNOR2X1 U7054 ( .A(n5023), .B(n5022), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]) );
  AOI21X1 U7055 ( .A0(n5468), .A1(n5025), .B0(n5024), .Y(n5030) );
  XOR2X1 U7056 ( .A(n5030), .B(n5029), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]) );
  AOI22X1 U7057 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[7]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[7]), .Y(n5038) );
  NAND2BX4 U7058 ( .AN(n5033), .B(n6581), .Y(n5323) );
  OA22X1 U7059 ( .A0(n5324), .A1(n801), .B0(n5323), .B1(n6649), .Y(n5035) );
  OA22X1 U7060 ( .A0(n5326), .A1(n820), .B0(n5325), .B1(n884), .Y(n5034) );
  MXI2X1 U7061 ( .A(n5036), .B(conv_result_w[7]), .S0(n2719), .Y(n5037) );
  NAND2X1 U7062 ( .A(n5038), .B(n5037), .Y(out_data_wait_r[7]) );
  XOR2X1 U7063 ( .A(conv_inst_data_abc_3_r[8]), .B(conv_inst_n41), .Y(n5042)
         );
  XOR2X1 U7064 ( .A(n5043), .B(n5042), .Y(n5044) );
  AOI2BB2X1 U7065 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n105), .A1N(n5519), .Y(
        n5045) );
  NOR3X4 U7066 ( .A(n3476), .B(n5049), .C(n5048), .Y(n5564) );
  NOR2X4 U7067 ( .A(n3476), .B(n5050), .Y(n5200) );
  NAND2X4 U7069 ( .A(n5555), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n5566)
         );
  NAND2X2 U7070 ( .A(n5566), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n30), .Y(n5565) );
  NAND2X1 U7071 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n28), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n30), .Y(n5055) );
  OAI21X4 U7072 ( .A0(n5056), .A1(n5055), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n5057)
         );
  AOI21X1 U7073 ( .A0(n5565), .A1(n5058), .B0(n6132), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N730) );
  NOR2X6 U7074 ( .A(n5060), .B(n5059), .Y(n6000) );
  NOR2X4 U7075 ( .A(n4385), .B(n5062), .Y(n6002) );
  XOR2X1 U7076 ( .A(n5068), .B(n6595), .Y(n5069) );
  XOR2X1 U7077 ( .A(n5069), .B(conv_inst_conv_1_r[1]), .Y(n5070) );
  XNOR2X1 U7078 ( .A(conv_inst_data_bcd_4_r[4]), .B(conv_inst_conv_4_r[4]), 
        .Y(n5071) );
  XOR2X1 U7079 ( .A(n5072), .B(n5071), .Y(n5073) );
  XNOR2X1 U7080 ( .A(conv_inst_data_abc_3_r[10]), .B(conv_inst_conv_3_r[10]), 
        .Y(n5074) );
  XOR2X1 U7081 ( .A(n5629), .B(n5074), .Y(n5075) );
  NOR2X1 U7082 ( .A(n5075), .B(n6291), .Y(conv_inst_N263) );
  CLKINVX1 U7083 ( .A(n5076), .Y(n5077) );
  NAND2X1 U7084 ( .A(n5077), .B(n5078), .Y(n5084) );
  XNOR2X1 U7085 ( .A(conv_inst_data_abc_1_r[2]), .B(conv_inst_conv_1_r[2]), 
        .Y(n5079) );
  XOR2X1 U7086 ( .A(n5084), .B(n5079), .Y(n5080) );
  AOI21X1 U7087 ( .A0(n5084), .A1(n5083), .B0(n5082), .Y(n5086) );
  XOR2X1 U7088 ( .A(conv_inst_data_abc_1_r[3]), .B(conv_inst_conv_1_r[3]), .Y(
        n5085) );
  XOR2X1 U7089 ( .A(n5086), .B(n5085), .Y(n5087) );
  NOR2X1 U7090 ( .A(n5087), .B(n6291), .Y(conv_inst_N222) );
  XNOR2X1 U7091 ( .A(n5089), .B(n5088), .Y(n5090) );
  XOR2X1 U7092 ( .A(n5092), .B(n5091), .Y(n5093) );
  NOR2X1 U7093 ( .A(n5093), .B(n6291), .Y(conv_inst_N280) );
  XOR2X1 U7094 ( .A(conv_inst_data_bcd_4_r[2]), .B(conv_inst_conv_4_r[2]), .Y(
        n5097) );
  XOR2X1 U7095 ( .A(n5098), .B(n5097), .Y(n5099) );
  XOR2X1 U7096 ( .A(n6254), .B(n5100), .Y(n5101) );
  NOR2X1 U7097 ( .A(n5101), .B(n6291), .Y(conv_inst_N246) );
  NOR2X1 U7098 ( .A(n5104), .B(n5103), .Y(n5106) );
  XOR2X1 U7099 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), .Y(
        n5105) );
  XOR2X1 U7100 ( .A(n5106), .B(n5105), .Y(n5107) );
  NOR2X1 U7101 ( .A(n5107), .B(n6291), .Y(conv_inst_N255) );
  XNOR2X1 U7102 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), 
        .Y(n5108) );
  XOR2X1 U7103 ( .A(n5109), .B(n5108), .Y(n5110) );
  XNOR2X1 U7104 ( .A(conv_inst_data_bcd_2_r[4]), .B(conv_inst_conv_2_r[4]), 
        .Y(n5111) );
  XOR2X1 U7105 ( .A(n5112), .B(n5111), .Y(n5113) );
  NOR2X1 U7106 ( .A(n5113), .B(n6291), .Y(conv_inst_N240) );
  CLKINVX1 U7107 ( .A(n5118), .Y(n5119) );
  NAND2X1 U7108 ( .A(n5122), .B(n5121), .Y(n5123) );
  XNOR2X1 U7109 ( .A(n5128), .B(n5127), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N21) );
  NOR2X1 U7110 ( .A(n5132), .B(n2754), .Y(n5134) );
  OAI21X1 U7111 ( .A0(n5132), .A1(n5131), .B0(n5130), .Y(n5133) );
  NOR2X1 U7112 ( .A(n5140), .B(n5139), .Y(conv_inst_N57) );
  NAND2X1 U7113 ( .A(n822), .B(n5789), .Y(n5146) );
  NAND2X1 U7114 ( .A(n5779), .B(n6665), .Y(n5145) );
  OAI21X1 U7116 ( .A0(n5151), .A1(n5150), .B0(n5149), .Y(n5152) );
  NAND2X1 U7117 ( .A(n6716), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n5499) );
  NAND2X1 U7119 ( .A(n5341), .B(conv_inst_n110), .Y(n5160) );
  NAND2X1 U7120 ( .A(n5357), .B(conv_inst_n109), .Y(n5159) );
  NAND2X1 U7121 ( .A(n5160), .B(n5159), .Y(conv_inst_N204) );
  AOI2BB2X1 U7122 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .A0N(n5516), 
        .A1N(n6733), .Y(n5161) );
  NAND2X1 U7123 ( .A(n5341), .B(conv_inst_n21), .Y(n5163) );
  NAND2X1 U7124 ( .A(n5357), .B(conv_inst_n104), .Y(n5162) );
  NAND2X1 U7125 ( .A(n5163), .B(n5162), .Y(conv_inst_N214) );
  NAND2X1 U7126 ( .A(n5172), .B(n5171), .Y(conv_inst_N212) );
  NAND2X1 U7127 ( .A(n5341), .B(conv_inst_n33), .Y(n5174) );
  NAND2X1 U7128 ( .A(n5357), .B(conv_inst_n22), .Y(n5173) );
  NAND2X1 U7129 ( .A(n5174), .B(n5173), .Y(conv_inst_N211) );
  NAND2X1 U7130 ( .A(n5341), .B(conv_inst_n112), .Y(n5176) );
  NAND2X1 U7131 ( .A(n5357), .B(conv_inst_n111), .Y(n5175) );
  NAND2X1 U7132 ( .A(n5176), .B(n5175), .Y(conv_inst_N202) );
  NAND2X1 U7133 ( .A(n5341), .B(conv_inst_n105), .Y(n5180) );
  NAND2X1 U7134 ( .A(n5357), .B(conv_inst_n33), .Y(n5179) );
  NAND2X1 U7135 ( .A(n5180), .B(n5179), .Y(conv_inst_N210) );
  XOR2X1 U7136 ( .A(n5243), .B(n5182), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N10) );
  NAND3X1 U7137 ( .A(n5183), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n54), .C(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n5187)
         );
  OAI21XL U7138 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n51), .A1(
        n6658), .B0(median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), 
        .Y(n5184) );
  OAI22X1 U7139 ( .A0(n5918), .A1(n843), .B0(n877), .B1(n5846), .Y(n5188) );
  OAI21X1 U7140 ( .A0(n779), .A1(n5916), .B0(n5189), .Y(n5190) );
  NAND2X1 U7141 ( .A(n5195), .B(n5194), .Y(conv_inst_N199) );
  NAND3X1 U7142 ( .A(n5564), .B(n6842), .C(n5623), .Y(n5196) );
  NAND2X1 U7143 ( .A(n5200), .B(n6332), .Y(n5562) );
  NAND2X1 U7144 ( .A(n5196), .B(n5562), .Y(n5198) );
  INVX3 U7145 ( .A(n5197), .Y(n6331) );
  NAND2X1 U7148 ( .A(n5334), .B(conv_inst_n108), .Y(n5207) );
  AO21X1 U7149 ( .A0(median_sobel_inst_n325), .A1(n5210), .B0(n5209), .Y(n5211) );
  NAND2X1 U7150 ( .A(n5341), .B(conv_inst_n111), .Y(n5214) );
  NAND2X1 U7151 ( .A(n5334), .B(conv_inst_n110), .Y(n5213) );
  NAND2X1 U7152 ( .A(n5214), .B(n5213), .Y(conv_inst_N203) );
  NAND2X1 U7153 ( .A(n5356), .B(conv_inst_n104), .Y(n5223) );
  NAND2X1 U7154 ( .A(n5341), .B(conv_inst_n103), .Y(n5225) );
  NAND2X1 U7155 ( .A(n5334), .B(conv_inst_n102), .Y(n5224) );
  NAND2X1 U7156 ( .A(n5225), .B(n5224), .Y(conv_inst_N216) );
  XOR2X1 U7157 ( .A(n5269), .B(n5227), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N400) );
  NAND2X1 U7158 ( .A(n5356), .B(n6752), .Y(n5229) );
  NAND2X1 U7159 ( .A(n5334), .B(conv_inst_n114), .Y(n5228) );
  NAND2X1 U7160 ( .A(n5229), .B(n5228), .Y(conv_inst_N198) );
  NAND2X1 U7161 ( .A(n5334), .B(conv_inst_n105), .Y(n5230) );
  NAND2X1 U7162 ( .A(n5231), .B(n5230), .Y(conv_inst_N209) );
  OAI21X2 U7163 ( .A0(n5243), .A1(n5233), .B0(n5232), .Y(n5238) );
  XNOR2X1 U7164 ( .A(n5238), .B(n5237), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N11) );
  OAI21X2 U7165 ( .A0(n5243), .A1(n5242), .B0(n5241), .Y(n5247) );
  XNOR2X1 U7166 ( .A(n5247), .B(n5246), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N12) );
  NOR2X1 U7167 ( .A(n5251), .B(n5248), .Y(n5253) );
  OAI21X1 U7168 ( .A0(n5251), .A1(n5250), .B0(n5249), .Y(n5252) );
  AOI21X4 U7169 ( .A0(n5254), .A1(n5253), .B0(n5252), .Y(n5527) );
  NOR2X2 U7170 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n5275) );
  NOR2X2 U7171 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n5288) );
  CLKINVX1 U7172 ( .A(n5520), .Y(n5256) );
  NAND2X1 U7173 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n5276) );
  XNOR2X1 U7174 ( .A(n5258), .B(n5257), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N32) );
  CLKINVX1 U7175 ( .A(n5259), .Y(n5262) );
  XNOR2X1 U7176 ( .A(n5266), .B(n5265), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N420) );
  OAI21X1 U7177 ( .A0(n5269), .A1(n5268), .B0(n5267), .Y(n5274) );
  XNOR2X1 U7178 ( .A(n5274), .B(n5273), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N410) );
  OAI21X2 U7179 ( .A0(n5527), .A1(n5288), .B0(n5289), .Y(n5279) );
  XNOR2X1 U7180 ( .A(n5279), .B(n5278), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N31) );
  NAND2X1 U7181 ( .A(n6001), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .Y(n5281) );
  NAND3X1 U7182 ( .A(n5282), .B(n5281), .C(n5280), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[0]) );
  XOR2X1 U7183 ( .A(n5287), .B(n5286), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N20) );
  XOR2X1 U7184 ( .A(n5527), .B(n5291), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N300) );
  AOI22X1 U7185 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[6]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[6]), .Y(n5296) );
  OA22X2 U7186 ( .A0(n5324), .A1(n794), .B0(n5323), .B1(n3522), .Y(n5293) );
  OA22X1 U7187 ( .A0(n5326), .A1(n8140), .B0(n5325), .B1(n809), .Y(n5292) );
  NAND2X1 U7188 ( .A(n5296), .B(n5295), .Y(out_data_wait_r[6]) );
  AOI22X1 U7189 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[5]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[5]), .Y(n5301) );
  OA22X1 U7190 ( .A0(n5326), .A1(n787), .B0(n5325), .B1(n804), .Y(n5297) );
  MXI2X1 U7191 ( .A(n5299), .B(conv_result_w[5]), .S0(n2719), .Y(n5300) );
  AOI22X1 U7192 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[1]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[1]), .Y(n5306) );
  OA22X1 U7193 ( .A0(n5326), .A1(n784), .B0(n5325), .B1(n816), .Y(n5302) );
  MXI2X1 U7194 ( .A(n5304), .B(conv_result_w[1]), .S0(n2719), .Y(n5305) );
  AOI22X1 U7195 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[3]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[3]), .Y(n5311) );
  OA22X1 U7196 ( .A0(n5326), .A1(n786), .B0(n5325), .B1(n877), .Y(n5307) );
  MXI2X1 U7197 ( .A(n5309), .B(conv_result_w[3]), .S0(n2719), .Y(n5310) );
  AOI22X1 U7198 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[2]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[2]), .Y(n5316) );
  OA22X1 U7199 ( .A0(n5326), .A1(n7850), .B0(n5325), .B1(n8110), .Y(n5312) );
  MXI2X1 U7200 ( .A(n5314), .B(conv_result_w[2]), .S0(n2719), .Y(n5315) );
  AOI22X1 U7201 ( .A0(n5322), .A1(median_sobel_inst_out_data_w[0]), .B0(n5561), 
        .B1(median_sobel_inst_sobel_out_data_w[0]), .Y(n5321) );
  OA22X1 U7202 ( .A0(n5324), .A1(n817), .B0(n5323), .B1(n6503), .Y(n5318) );
  MXI2X1 U7203 ( .A(n5319), .B(conv_result_w[0]), .S0(n2719), .Y(n5320) );
  NAND2X1 U7204 ( .A(n5321), .B(n5320), .Y(out_data_wait_r[0]) );
  OA22X1 U7205 ( .A0(n797), .A1(n5324), .B0(n5323), .B1(n780), .Y(n5328) );
  OA22X1 U7206 ( .A0(n5326), .A1(n815), .B0(n8130), .B1(n5325), .Y(n5327) );
  MXI2X1 U7207 ( .A(n5329), .B(conv_result_w[4]), .S0(n2719), .Y(n5330) );
  NAND3X1 U7208 ( .A(n5333), .B(n5332), .C(n5331), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[6]) );
  OAI21X1 U7209 ( .A0(n5337), .A1(n5336), .B0(n5335), .Y(n5339) );
  XNOR2X1 U7210 ( .A(n5339), .B(n5338), .Y(n5340) );
  NOR2X1 U7211 ( .A(n5340), .B(n6291), .Y(conv_inst_N262) );
  NAND2X1 U7212 ( .A(n5357), .B(conv_inst_n107), .Y(n5342) );
  AOI2BB2X1 U7213 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .A0N(n5516), 
        .A1N(n6724), .Y(n5344) );
  OAI21X1 U7214 ( .A0(median_sobel_inst_u_median_filter_submodule_n107), .A1(
        n5519), .B0(n5344), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[4]) );
  NAND2BX1 U7215 ( .AN(median_sobel_inst_u_median_filter_submodule_n78), .B(
        n5595), .Y(n5345) );
  NOR2X1 U7217 ( .A(n5349), .B(conv_inst_conv_1_r[14]), .Y(n5350) );
  NOR3X2 U7218 ( .A(n5351), .B(n5350), .C(n6259), .Y(conv_inst_N233) );
  NAND2X1 U7219 ( .A(n5357), .B(conv_inst_n101), .Y(n5358) );
  NAND2X1 U7220 ( .A(n5594), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n5365) );
  MXI2X1 U7221 ( .A(median_sobel_inst_n182), .B(n858), .S0(n2776), .Y(
        median_sobel_inst_med_sobel_e_wait_r[10]) );
  NAND2BX1 U7222 ( .AN(median_sobel_inst_u_median_filter_submodule_n99), .B(
        n5595), .Y(n5367) );
  MXI2X1 U7223 ( .A(n5841), .B(median_sobel_inst_n245), .S0(n3484), .Y(
        median_sobel_inst_med_sobel_e_wait_r[65]) );
  NOR2BX1 U7224 ( .AN(n6582), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(n5370) );
  MXI2X1 U7225 ( .A(n1145), .B(median_sobel_inst_n166), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[73]) );
  MXI2X1 U7226 ( .A(n833), .B(median_sobel_inst_n238), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[59]) );
  MXI2X1 U7227 ( .A(n1148), .B(median_sobel_inst_n165), .S0(n5927), .Y(
        median_sobel_inst_med_sobel_e_wait_r[72]) );
  XOR2X1 U7228 ( .A(n5377), .B(n5408), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N133) );
  MXI2X1 U7229 ( .A(median_sobel_inst_n247), .B(n6556), .S0(n5378), .Y(
        median_sobel_inst_n543) );
  XNOR2X1 U7231 ( .A(n5386), .B(n5385), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N78) );
  XNOR2X1 U7232 ( .A(n5391), .B(n5390), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N148) );
  XNOR2X1 U7233 ( .A(n5396), .B(n5395), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]) );
  MXI2X1 U7234 ( .A(median_sobel_inst_n347), .B(median_sobel_inst_n191), .S0(
        n5415), .Y(median_sobel_inst_n599) );
  MXI2X1 U7235 ( .A(median_sobel_inst_n410), .B(median_sobel_inst_n168), .S0(
        n5415), .Y(median_sobel_inst_n534) );
  MXI2X1 U7236 ( .A(median_sobel_inst_n175), .B(n6478), .S0(n5402), .Y(
        median_sobel_inst_med_sobel_e_wait_r[81]) );
  XNOR2X1 U7237 ( .A(n5407), .B(n5406), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N370) );
  XOR2X1 U7238 ( .A(n5409), .B(n5408), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N121) );
  XNOR2X1 U7239 ( .A(n5414), .B(n5413), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N17) );
  MXI2X1 U7240 ( .A(median_sobel_inst_n376), .B(median_sobel_inst_n226), .S0(
        n5415), .Y(median_sobel_inst_n564) );
  XNOR2X1 U7241 ( .A(n5417), .B(n5416), .Y(conv_inst_data_abc_w[2]) );
  XOR2X1 U7242 ( .A(n3471), .B(n6720), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1240) );
  XNOR2X1 U7243 ( .A(n5425), .B(n5424), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N270) );
  XNOR2X1 U7244 ( .A(n5430), .B(n5429), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]) );
  XNOR2X1 U7245 ( .A(n5440), .B(n5439), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]) );
  XNOR2X1 U7246 ( .A(n5445), .B(n5444), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]) );
  XOR2X1 U7247 ( .A(n5446), .B(n6898), .Y(n5448) );
  XOR2X1 U7248 ( .A(n5448), .B(n5447), .Y(n7007) );
  MXI2X1 U7249 ( .A(median_sobel_inst_n411), .B(median_sobel_inst_n167), .S0(
        n5923), .Y(median_sobel_inst_n535) );
  MXI2X1 U7250 ( .A(median_sobel_inst_n375), .B(median_sobel_inst_n211), .S0(
        n5464), .Y(median_sobel_inst_n579) );
  MXI2X1 U7251 ( .A(median_sobel_inst_n406), .B(median_sobel_inst_n244), .S0(
        n5923), .Y(median_sobel_inst_n546) );
  MXI2X1 U7252 ( .A(median_sobel_inst_n378), .B(median_sobel_inst_n224), .S0(
        n5464), .Y(median_sobel_inst_n566) );
  MXI2X1 U7253 ( .A(median_sobel_inst_n380), .B(median_sobel_inst_n222), .S0(
        n5923), .Y(median_sobel_inst_n568) );
  AOI2BB2X1 U7254 ( .B0(n3472), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n48), .A1N(n5450), .Y(
        n5451) );
  AOI2BB2X1 U7255 ( .B0(n5560), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .A0N(n5558), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n47), .Y(n5454) );
  XNOR2X1 U7256 ( .A(n5458), .B(n5457), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N151) );
  XNOR2X1 U7257 ( .A(n5459), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n66), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N104) );
  XNOR2X1 U7258 ( .A(n5463), .B(n5462), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1110) );
  MXI2X1 U7259 ( .A(median_sobel_inst_n346), .B(median_sobel_inst_n192), .S0(
        n5923), .Y(median_sobel_inst_n598) );
  MXI2X1 U7260 ( .A(median_sobel_inst_n362), .B(median_sobel_inst_n208), .S0(
        n5464), .Y(median_sobel_inst_n582) );
  XNOR2X1 U7261 ( .A(n5468), .B(n5467), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]) );
  XNOR2X1 U7262 ( .A(n5472), .B(n5471), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]) );
  OAI21XL U7263 ( .A0(conv_inst_conv_2_r[0]), .A1(conv_inst_data_bcd_2_r[0]), 
        .B0(n5473), .Y(n5474) );
  AOI2BB2X1 U7264 ( .B0(n5560), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .A0N(n5558), 
        .A1N(n5515), .Y(n5475) );
  AOI2BB2X1 U7265 ( .B0(n5477), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .A0N(n5476), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n78), .Y(n5478) );
  NAND2BX1 U7266 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n66), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n5479) );
  OAI21X1 U7267 ( .A0(n5480), .A1(n5479), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5481)
         );
  XOR2X1 U7268 ( .A(n5481), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N77), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N106) );
  MXI2X1 U7269 ( .A(median_sobel_inst_n213), .B(n5841), .S0(n4510), .Y(
        median_sobel_inst_med_sobel_e_wait_r[37]) );
  NAND2X2 U7270 ( .A(n5482), .B(n5487), .Y(n5490) );
  OAI21X2 U7271 ( .A0(n5485), .A1(n5484), .B0(n5483), .Y(n5486) );
  NAND2X1 U7272 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .Y(n6165) );
  XNOR2X1 U7273 ( .A(n6167), .B(n5492), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N155) );
  AOI2BB2X1 U7274 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n51), .A1N(n5519), .Y(
        n5494) );
  XNOR2X1 U7275 ( .A(n5756), .B(n5496), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N115) );
  XNOR2X1 U7276 ( .A(n5749), .B(n5498), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]) );
  XNOR2X1 U7277 ( .A(n5502), .B(n5501), .Y(n5503) );
  XOR2X1 U7280 ( .A(n5787), .B(n469), .Y(n489) );
  AOI2BB2X1 U7281 ( .B0(n5509), .B1(n6880), .A0N(n5508), .A1N(n6568), .Y(n5510) );
  AOI2BB2X1 U7282 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n47), .A1N(n5516), .Y(
        n5512) );
  AND2X2 U7283 ( .A(n5514), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N177) );
  MXI2X1 U7284 ( .A(median_sobel_inst_n190), .B(n1145), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[17]) );
  AOI2BB2X1 U7285 ( .B0(n5517), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .A0N(n5516), 
        .A1N(n5515), .Y(n5518) );
  OAI21X1 U7286 ( .A0(median_sobel_inst_u_median_filter_submodule_n68), .A1(
        n5519), .B0(n5518), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[0]) );
  NAND2X1 U7287 ( .A(n5520), .B(n5523), .Y(n5526) );
  AOI21X1 U7288 ( .A0(n5524), .A1(n5523), .B0(n5522), .Y(n5525) );
  OAI21X4 U7289 ( .A0(n5527), .A1(n5526), .B0(n5525), .Y(n6091) );
  AND2X2 U7290 ( .A(n6091), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N340) );
  CLKINVX1 U7291 ( .A(n5528), .Y(n5529) );
  NOR2X1 U7292 ( .A(n5530), .B(n5529), .Y(n5531) );
  NOR2X1 U7293 ( .A(n5531), .B(cnt[3]), .Y(n5532) );
  NOR2X1 U7294 ( .A(n5533), .B(n5532), .Y(n481) );
  OA21XL U7295 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n39), .A1(
        n5535), .B0(n5534), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N990) );
  OA21XL U7296 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n26), .A1(
        n5539), .B0(n5538), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1010) );
  AOI2BB2X1 U7297 ( .B0(n5543), .B1(n6777), .A0N(sram_wen_ready_r[0]), .A1N(
        n5542), .Y(N812) );
  AOI2BB2X1 U7298 ( .B0(n5543), .B1(n6744), .A0N(sram_wen_ready_r[2]), .A1N(
        n5542), .Y(N814) );
  AOI2BB2X1 U7299 ( .B0(n5543), .B1(n6778), .A0N(sram_wen_ready_r[1]), .A1N(
        n5542), .Y(N813) );
  AOI2BB1X1 U7300 ( .A0N(n3288), .A1N(n6176), .B0(n3724), .Y(
        median_sobel_inst_u_sober_compare_submodule_N30) );
  AOI2BB2X1 U7301 ( .B0(n5552), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .A0N(n5551), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n56), .Y(n5553) );
  AO21X1 U7302 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), 
        .A1(n5560), .B0(n5559), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[7]) );
  OAI22XL U7303 ( .A0(n5918), .A1(n817), .B0(n803), .B1(n5846), .Y(n5569) );
  NAND2XL U7304 ( .A(n386), .B(n5829), .Y(n5567) );
  OAI21XL U7305 ( .A0(n5916), .A1(n6503), .B0(n5567), .Y(n5568) );
  AOI2BB2X1 U7306 ( .B0(n6002), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .A0N(n5576), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n75), .Y(n5570) );
  OAI2BB1X1 U7307 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), 
        .A1N(n6000), .B0(n5570), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[3]) );
  AOI2BB2X1 U7308 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), 
        .B1(n6002), .A0N(n5576), .A1N(
        median_sobel_inst_u_median_filter_submodule_n77), .Y(n5571) );
  OAI22XL U7309 ( .A0(n778), .A1(n5916), .B0(n7850), .B1(n5920), .Y(n5573) );
  OAI22XL U7310 ( .A0(n791), .A1(n5918), .B0(n8110), .B1(n5846), .Y(n5572) );
  OAI22XL U7311 ( .A0(n787), .A1(n5920), .B0(n804), .B1(n5846), .Y(n5575) );
  OAI22XL U7312 ( .A0(n781), .A1(n5918), .B0(n5916), .B1(n3516), .Y(n5574) );
  AOI2BB2X1 U7313 ( .B0(n6002), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .A0N(n5576), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n74), .Y(n5577) );
  OAI2BB1X1 U7314 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), 
        .A1N(n6000), .B0(n5577), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[5]) );
  MXI2X1 U7315 ( .A(median_sobel_inst_n424), .B(n6753), .S0(n5879), .Y(n6533)
         );
  AOI2BB2X4 U7316 ( .B0(n3415), .B1(
        median_sobel_inst_u_median_filter_submodule_n121), .A0N(
        median_sobel_inst_u_median_filter_submodule_n785), .A1N(n3309), .Y(
        n5585) );
  NAND2X4 U7317 ( .A(n5585), .B(n5584), .Y(n6986) );
  NAND2X1 U7318 ( .A(input_data_ready_r[31]), .B(input_data_ready_r[15]), .Y(
        n5586) );
  OR2X1 U7319 ( .A(input_data_ready_r[31]), .B(input_data_ready_r[15]), .Y(
        n5588) );
  OA21X4 U7320 ( .A0(n6233), .A1(n6534), .B0(n6232), .Y(n5592) );
  NAND2BX1 U7321 ( .AN(median_sobel_inst_u_median_filter_submodule_n96), .B(
        n5595), .Y(n5596) );
  AOI2BB2X4 U7322 ( .B0(n3415), .B1(
        median_sobel_inst_u_median_filter_submodule_n254), .A0N(n5599), .A1N(
        n3309), .Y(n5601) );
  NAND2X4 U7323 ( .A(n5601), .B(n5600), .Y(n6987) );
  NAND2X2 U7324 ( .A(n5603), .B(n5602), .Y(n5608) );
  BUFX4 U7325 ( .A(n5604), .Y(n5636) );
  NAND3X2 U7326 ( .A(n3334), .B(n5636), .C(n5605), .Y(n5607) );
  NAND2X2 U7327 ( .A(n5608), .B(n5607), .Y(conv_inst_data_bcd_w[5]) );
  AOI2BB2X4 U7328 ( .B0(n3415), .B1(
        median_sobel_inst_u_median_filter_submodule_n193), .A0N(n5609), .A1N(
        n3310), .Y(n5611) );
  NAND3X2 U7329 ( .A(n3058), .B(
        median_sobel_inst_u_median_filter_submodule_n239), .C(n3059), .Y(n5610) );
  NOR2X4 U7330 ( .A(n5614), .B(n5613), .Y(conv_inst_N235) );
  NOR2X1 U7331 ( .A(n5616), .B(n6332), .Y(n5615) );
  XOR2X2 U7332 ( .A(n5615), .B(cnt[1]), .Y(n5620) );
  NAND2X2 U7333 ( .A(n5616), .B(cnt[1]), .Y(n6328) );
  NAND2X2 U7334 ( .A(n6328), .B(n5617), .Y(n5619) );
  NOR2X1 U7335 ( .A(n6315), .B(n5623), .Y(n5618) );
  OAI21X4 U7336 ( .A0(n5619), .A1(n5618), .B0(n6428), .Y(n6334) );
  AOI2BB2X2 U7337 ( .B0(n5627), .B1(n6344), .A0N(n5626), .A1N(n5625), .Y(n1433) );
  MXI2X2 U7338 ( .A(n6504), .B(n6476), .S0(n6344), .Y(N758) );
  MXI2X2 U7339 ( .A(n6636), .B(n6508), .S0(n6344), .Y(N759) );
  MXI2X2 U7340 ( .A(n6521), .B(n6611), .S0(n6344), .Y(N760) );
  NAND2X1 U7341 ( .A(conv_inst_n47), .B(conv_inst_n54), .Y(n6264) );
  NOR3X1 U7342 ( .A(n5630), .B(n6663), .C(n6264), .Y(n5631) );
  MXI2X4 U7343 ( .A(n5632), .B(n6267), .S0(conv_inst_conv_3_r[14]), .Y(
        conv_inst_N267) );
  OA21X2 U7344 ( .A0(n2919), .A1(n3575), .B0(n5633), .Y(
        conv_inst_data_abc_w[4]) );
  OAI21X1 U7345 ( .A0(n5638), .A1(n5637), .B0(n5636), .Y(
        conv_inst_data_bcd_w[4]) );
  NOR2X2 U7346 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]), .Y(n5655) );
  NOR2X2 U7347 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .Y(n5659) );
  CLKINVX1 U7348 ( .A(n6083), .Y(n5651) );
  CLKINVX1 U7349 ( .A(n6087), .Y(n5650) );
  OAI21X2 U7350 ( .A0(n6088), .A1(n5651), .B0(n5650), .Y(n5654) );
  OAI21X1 U7351 ( .A0(n5666), .A1(n5665), .B0(n5664), .Y(n5667) );
  AOI21X4 U7352 ( .A0(n5669), .A1(n5668), .B0(n5667), .Y(n6115) );
  NOR2X2 U7353 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), .Y(n5680) );
  NOR2X2 U7354 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .Y(n5685) );
  NAND2X2 U7355 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .Y(n5686) );
  CLKINVX1 U7356 ( .A(n6112), .Y(n5675) );
  CLKINVX1 U7358 ( .A(n5680), .Y(n5682) );
  NOR2X2 U7359 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), .Y(n5705) );
  NOR2X2 U7360 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n79), .Y(n5709) );
  NOR2X2 U7361 ( .A(n5705), .B(n5709), .Y(n6120) );
  NAND2X2 U7362 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n79), .Y(n5710) );
  NAND2X1 U7363 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), .Y(n5706) );
  OAI21X2 U7364 ( .A0(n5705), .A1(n5710), .B0(n5706), .Y(n6126) );
  NAND2X1 U7365 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n57), .Y(n6122) );
  NOR2X2 U7366 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6123) );
  NAND2X1 U7367 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6121) );
  NAND2X1 U7368 ( .A(n5697), .B(n6121), .Y(n5698) );
  OAI21X1 U7369 ( .A0(n5716), .A1(n5715), .B0(n5714), .Y(n5717) );
  AOI21X4 U7370 ( .A0(n5719), .A1(n5718), .B0(n5717), .Y(n6102) );
  NOR2X2 U7371 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .Y(n5731) );
  NOR2X2 U7372 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n79), .Y(n5736) );
  NAND2X2 U7373 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n79), .Y(n5737) );
  NAND2X1 U7374 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .Y(n5732) );
  OAI21X2 U7375 ( .A0(n5731), .A1(n5737), .B0(n5732), .Y(n6099) );
  NAND2X1 U7376 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n57), .Y(n6095) );
  AOI21X1 U7377 ( .A0(n6099), .A1(n5728), .B0(n5720), .Y(n5721) );
  OAI21X2 U7378 ( .A0(n6102), .A1(n5722), .B0(n5721), .Y(n5725) );
  NOR2X2 U7379 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .Y(n6096) );
  NAND2X1 U7380 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .Y(n6094) );
  NAND2X1 U7381 ( .A(n5723), .B(n6094), .Y(n5724) );
  CLKINVX1 U7382 ( .A(n5731), .Y(n5733) );
  NAND2X1 U7383 ( .A(n5733), .B(n5732), .Y(n5734) );
  AOI21X4 U7384 ( .A0(n5742), .A1(n5741), .B0(n5740), .Y(n5746) );
  NAND2X1 U7385 ( .A(n5744), .B(n5743), .Y(n5745) );
  XOR2X2 U7386 ( .A(n5746), .B(n5745), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]) );
  AOI21X2 U7387 ( .A0(n5756), .A1(n5755), .B0(n5754), .Y(n5760) );
  NAND3BX1 U7388 ( .AN(cnt[6]), .B(cnt[4]), .C(cnt[5]), .Y(n5765) );
  OA21X4 U7389 ( .A0(n5772), .A1(cnt[8]), .B0(n5771), .Y(n476) );
  OAI21X2 U7392 ( .A0(n5777), .A1(n5776), .B0(n5775), .Y(n474) );
  XNOR2X1 U7394 ( .A(cnt[7]), .B(n437), .Y(n5781) );
  NAND4BX2 U7395 ( .AN(cnt[2]), .B(n7009), .C(n6316), .D(n5783), .Y(n5785) );
  INVX6 U7397 ( .A(n3511), .Y(n5885) );
  AOI22XL U7398 ( .A0(n386), .A1(n5806), .B0(n5829), .B1(n385), .Y(n5808) );
  NOR2X2 U7399 ( .A(n5847), .B(n5809), .Y(N687) );
  OAI22X1 U7400 ( .A0(n820), .A1(n5918), .B0(n5916), .B1(n884), .Y(n5813) );
  NOR2BX1 U7401 ( .AN(n5818), .B(n794), .Y(n5819) );
  OAI22XL U7402 ( .A0(n815), .A1(n5918), .B0(n8130), .B1(n5916), .Y(n5823) );
  AOI2BB2X1 U7403 ( .B0(n6783), .B1(n5827), .A0N(n5846), .A1N(n843), .Y(n5828)
         );
  NOR2BX1 U7404 ( .AN(n5829), .B(n779), .Y(n5830) );
  AOI2BB2X2 U7405 ( .B0(n6737), .B1(n5884), .A0N(n816), .A1N(n5888), .Y(n5833)
         );
  OAI21X1 U7406 ( .A0(n784), .A1(n5918), .B0(n5836), .Y(n5837) );
  MXI2X1 U7408 ( .A(median_sobel_inst_n181), .B(n5841), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[9]) );
  AOI2BB2X2 U7409 ( .B0(n6542), .B1(n5884), .A0N(n804), .A1N(n5888), .Y(n5845)
         );
  AOI2BB2X2 U7411 ( .B0(n5855), .B1(n5854), .A0N(n5863), .A1N(
        median_sobel_inst_data_a_r[7]), .Y(n5856) );
  OAI22X1 U7412 ( .A0(n3590), .A1(median_sobel_inst_data_g_r[6]), .B0(n5863), 
        .B1(median_sobel_inst_data_g_r[7]), .Y(n5865) );
  OAI22X4 U7413 ( .A0(n5866), .A1(n5865), .B0(n5864), .B1(
        median_sobel_inst_data_d_r[7]), .Y(
        median_sobel_inst_u_median_filter_submodule_n750) );
  AOI2BB2X2 U7414 ( .B0(n5884), .B1(n391), .A0N(n853), .A1N(n5888), .Y(n5891)
         );
  OR2X4 U7415 ( .A(median_sobel_inst_data_b_r[1]), .B(n5906), .Y(n5896) );
  NAND2X4 U7416 ( .A(median_sobel_inst_data_b_r[1]), .B(n5906), .Y(n5893) );
  INVX3 U7417 ( .A(median_sobel_inst_data_e_r[5]), .Y(n5898) );
  AOI22X2 U7418 ( .A0(n5908), .A1(median_sobel_inst_data_b_r[4]), .B0(n5898), 
        .B1(n2671), .Y(n5899) );
  OAI21X4 U7419 ( .A0(n5904), .A1(n5903), .B0(n5902), .Y(
        median_sobel_inst_u_median_filter_submodule_n749) );
  INVX3 U7420 ( .A(median_sobel_inst_data_e_r[0]), .Y(n5905) );
  OAI22X1 U7421 ( .A0(n5916), .A1(n3522), .B0(n809), .B1(n5846), .Y(n5917) );
  NAND2BX4 U7422 ( .AN(median_sobel_inst_n384), .B(n5923), .Y(n5925) );
  NAND3X6 U7423 ( .A(n5926), .B(n5925), .C(n5924), .Y(
        median_sobel_inst_data_c_r[7]) );
  MXI2X1 U7424 ( .A(median_sobel_inst_n197), .B(n6833), .S0(n5840), .Y(
        median_sobel_inst_med_sobel_e_wait_r[23]) );
  NAND2BX1 U7425 ( .AN(median_sobel_inst_n349), .B(n3478), .Y(n5932) );
  OA22X4 U7426 ( .A0(median_sobel_inst_n389), .A1(n2778), .B0(
        median_sobel_inst_n381), .B1(n5927), .Y(n5931) );
  NAND2BX1 U7427 ( .AN(median_sobel_inst_n357), .B(n3725), .Y(n5930) );
  NAND2X2 U7428 ( .A(n5944), .B(median_sobel_inst_data_f_r[3]), .Y(n5935) );
  OAI22X2 U7431 ( .A0(n5952), .A1(median_sobel_inst_data_f_r[6]), .B0(n5955), 
        .B1(median_sobel_inst_data_f_r[7]), .Y(n5941) );
  OAI2BB1X4 U7432 ( .A0N(n5947), .A1N(n5946), .B0(n5945), .Y(n5951) );
  AOI2BB2X2 U7433 ( .B0(n5949), .B1(median_sobel_inst_data_c_r[5]), .A0N(n5948), .A1N(median_sobel_inst_data_i_r[4]), .Y(n5950) );
  AOI2BB2X4 U7434 ( .B0(n5951), .B1(n5950), .A0N(n5949), .A1N(
        median_sobel_inst_data_c_r[5]), .Y(n5959) );
  OAI22X2 U7435 ( .A0(n5952), .A1(median_sobel_inst_data_i_r[6]), .B0(n5955), 
        .B1(median_sobel_inst_data_i_r[7]), .Y(n5958) );
  NAND2X2 U7436 ( .A(n5953), .B(n5954), .Y(n5956) );
  AOI2BB2X4 U7437 ( .B0(n5955), .B1(n5956), .A0N(n5954), .A1N(n5953), .Y(n5957) );
  OAI21X4 U7438 ( .A0(n5959), .A1(n5958), .B0(n5957), .Y(
        median_sobel_inst_u_median_filter_submodule_n745) );
  INVX1 U7439 ( .A(median_sobel_inst_u_median_filter_submodule_n201), .Y(n5961) );
  OAI22X1 U7440 ( .A0(median_sobel_inst_u_median_filter_submodule_n91), .A1(
        n5961), .B0(median_sobel_inst_u_median_filter_submodule_n800), .B1(
        n6497), .Y(n5967) );
  OA22X4 U7441 ( .A0(n5973), .A1(
        median_sobel_inst_u_median_filter_submodule_n235), .B0(n6489), .B1(
        median_sobel_inst_u_median_filter_submodule_n805), .Y(n5965) );
  NAND2BX2 U7442 ( .AN(median_sobel_inst_u_median_filter_submodule_n145), .B(
        median_sobel_inst_u_median_filter_submodule_n235), .Y(n5962) );
  NAND2X1 U7443 ( .A(median_sobel_inst_u_median_filter_submodule_n62), .B(
        median_sobel_inst_u_median_filter_submodule_n799), .Y(n5968) );
  NAND2BX1 U7444 ( .AN(median_sobel_inst_u_median_filter_submodule_n32), .B(
        median_sobel_inst_u_median_filter_submodule_n803), .Y(n5975) );
  NAND2BX1 U7445 ( .AN(median_sobel_inst_u_median_filter_submodule_n91), .B(
        n6646), .Y(n5980) );
  AOI21X4 U7446 ( .A0(n5981), .A1(n5980), .B0(n5979), .Y(n5985) );
  OR2X4 U7449 ( .A(n6041), .B(median_sobel_inst_u_median_filter_submodule_n794), .Y(n5999) );
  OAI2BB2X1 U7450 ( .B0(n6588), .B1(
        median_sobel_inst_u_median_filter_submodule_n235), .A0N(
        median_sobel_inst_u_median_filter_submodule_n256), .A1N(
        median_sobel_inst_u_median_filter_submodule_n800), .Y(n5986) );
  OAI2BB2X1 U7451 ( .B0(median_sobel_inst_u_median_filter_submodule_n256), 
        .B1(median_sobel_inst_u_median_filter_submodule_n800), .A0N(
        median_sobel_inst_u_median_filter_submodule_n201), .A1N(
        median_sobel_inst_u_median_filter_submodule_n797), .Y(n5988) );
  AOI2BB2X1 U7452 ( .B0(median_sobel_inst_u_median_filter_submodule_n231), 
        .B1(median_sobel_inst_u_median_filter_submodule_n799), .A0N(
        median_sobel_inst_u_median_filter_submodule_n201), .A1N(
        median_sobel_inst_u_median_filter_submodule_n797), .Y(n5987) );
  OAI21X4 U7453 ( .A0(n5989), .A1(n5988), .B0(n5987), .Y(n5991) );
  NAND2X1 U7455 ( .A(median_sobel_inst_u_median_filter_submodule_n806), .B(
        median_sobel_inst_u_median_filter_submodule_n211), .Y(n5993) );
  NAND2BX1 U7456 ( .AN(n6893), .B(
        median_sobel_inst_u_median_filter_submodule_n27), .Y(n5992) );
  AOI22X2 U7457 ( .A0(n6041), .A1(n6603), .B0(n3012), .B1(n6518), .Y(n5998) );
  OAI21X2 U7458 ( .A0(n5999), .A1(n6042), .B0(n5998), .Y(n6998) );
  NAND2X1 U7459 ( .A(n6001), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .Y(n6004) );
  NAND2X1 U7460 ( .A(n6002), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .Y(n6003) );
  AOI2BB2X4 U7461 ( .B0(n6020), .B1(
        median_sobel_inst_u_median_filter_submodule_net57730), .A0N(
        median_sobel_inst_u_median_filter_submodule_net22699), .A1N(n3032), 
        .Y(n6006) );
  OAI21X4 U7462 ( .A0(n6020), .A1(n6007), .B0(n6006), .Y(n7005) );
  AOI2BB2X1 U7463 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), 
        .B1(n6008), .A0N(median_sobel_inst_u_median_filter_submodule_n96), 
        .A1N(n4767), .Y(n6009) );
  NOR2X4 U7464 ( .A(n3032), .B(
        median_sobel_inst_u_median_filter_submodule_net22700), .Y(n6012) );
  AOI21X4 U7465 ( .A0(median_sobel_inst_u_median_filter_submodule_a5_r[6]), 
        .A1(n6020), .B0(n6012), .Y(n6013) );
  OAI21X4 U7466 ( .A0(n6022), .A1(n6895), .B0(n6013), .Y(n7003) );
  AOI2BB2X4 U7467 ( .B0(n6020), .B1(
        median_sobel_inst_u_median_filter_submodule_n280), .A0N(n3032), .A1N(
        n6587), .Y(n6014) );
  OAI21X4 U7468 ( .A0(n6022), .A1(n6577), .B0(n6014), .Y(n7006) );
  AOI2BB2X4 U7470 ( .B0(n6020), .B1(n3039), .A0N(
        median_sobel_inst_u_median_filter_submodule_net22697), .A1N(n3032), 
        .Y(n6015) );
  OAI21X4 U7471 ( .A0(n6020), .A1(n6016), .B0(n6015), .Y(n7002) );
  AOI2BB2X4 U7472 ( .B0(n3415), .B1(
        median_sobel_inst_u_median_filter_submodule_n233), .A0N(n6017), .A1N(
        n3309), .Y(n6019) );
  NAND3X2 U7473 ( .A(n3058), .B(
        median_sobel_inst_u_median_filter_submodule_n200), .C(n3311), .Y(n6018) );
  NAND2X4 U7474 ( .A(n6019), .B(n6018), .Y(n6988) );
  AOI2BB2X4 U7475 ( .B0(n6020), .B1(
        median_sobel_inst_u_median_filter_submodule_net57373), .A0N(
        median_sobel_inst_u_median_filter_submodule_net22696), .A1N(n3032), 
        .Y(n6021) );
  OAI21X4 U7476 ( .A0(n6022), .A1(n6882), .B0(n6021), .Y(n7000) );
  NAND2BX1 U7477 ( .AN(median_sobel_inst_u_median_filter_submodule_n815), .B(
        median_sobel_inst_u_median_filter_submodule_n811), .Y(n6046) );
  NAND2X1 U7478 ( .A(median_sobel_inst_u_median_filter_submodule_b1_r[5]), .B(
        median_sobel_inst_u_median_filter_submodule_n814), .Y(n6048) );
  NAND2BX1 U7479 ( .AN(median_sobel_inst_u_median_filter_submodule_n243), .B(
        median_sobel_inst_u_median_filter_submodule_n258), .Y(n6047) );
  OAI21X4 U7480 ( .A0(n6055), .A1(n6054), .B0(n6053), .Y(n6068) );
  AOI2BB1X2 U7482 ( .A0N(n6500), .A1N(
        median_sobel_inst_u_median_filter_submodule_n820), .B0(
        median_sobel_inst_u_median_filter_submodule_b5_r[0]), .Y(n6058) );
  AO21X4 U7484 ( .A0(n6062), .A1(n6061), .B0(n6060), .Y(n6064) );
  NAND2X1 U7485 ( .A(median_sobel_inst_u_median_filter_submodule_b1_r[5]), .B(
        median_sobel_inst_u_median_filter_submodule_n197), .Y(n6063) );
  OAI21X2 U7486 ( .A0(median_sobel_inst_u_median_filter_submodule_b5_r[6]), 
        .A1(n6238), .B0(n6501), .Y(n6066) );
  AOI21X1 U7487 ( .A0(median_sobel_inst_u_median_filter_submodule_b9_r[1]), 
        .A1(median_sobel_inst_u_median_filter_submodule_n152), .B0(
        median_sobel_inst_u_median_filter_submodule_n820), .Y(n6070) );
  AOI2BB2X2 U7488 ( .B0(median_sobel_inst_u_median_filter_submodule_b9_r[2]), 
        .B1(median_sobel_inst_u_median_filter_submodule_n823), .A0N(
        median_sobel_inst_u_median_filter_submodule_n815), .A1N(n6490), .Y(
        n6069) );
  AOI2BB2X1 U7489 ( .B0(median_sobel_inst_u_median_filter_submodule_n825), 
        .B1(median_sobel_inst_u_median_filter_submodule_n243), .A0N(n6583), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n814), .Y(n6075) );
  OAI22X1 U7490 ( .A0(n6495), .A1(
        median_sobel_inst_u_median_filter_submodule_b9_r[6]), .B0(
        median_sobel_inst_u_median_filter_submodule_n197), .B1(n6905), .Y(
        n6074) );
  NAND2X1 U7491 ( .A(median_sobel_inst_u_median_filter_submodule_n179), .B(
        median_sobel_inst_u_median_filter_submodule_n818), .Y(n6077) );
  OAI21X4 U7492 ( .A0(median_sobel_inst_u_median_filter_submodule_b5_r[6]), 
        .A1(n6899), .B0(n6077), .Y(n6078) );
  NAND2X8 U7493 ( .A(n6246), .B(n2868), .Y(n6250) );
  AOI2BB2X4 U7494 ( .B0(n6247), .B1(
        median_sobel_inst_u_median_filter_submodule_b5_r[0]), .A0N(n6246), 
        .A1N(n6878), .Y(n6080) );
  OAI21X4 U7495 ( .A0(n6250), .A1(n2880), .B0(n6080), .Y(
        median_sobel_inst_u_median_filter_submodule_n770) );
  NAND2X1 U7496 ( .A(n6098), .B(n6093), .Y(n6101) );
  AOI21X1 U7497 ( .A0(n6099), .A1(n6098), .B0(n6097), .Y(n6100) );
  OAI21X4 U7498 ( .A0(n6102), .A1(n6101), .B0(n6100), .Y(n6104) );
  OA21X4 U7499 ( .A0(n6104), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .B0(n6103), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]) );
  OAI21X4 U7501 ( .A0(n6115), .A1(n6114), .B0(n6113), .Y(n6117) );
  XOR2X2 U7502 ( .A(n6118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N13) );
  NOR2X1 U7503 ( .A(n6123), .B(n6119), .Y(n6125) );
  NAND2X1 U7504 ( .A(n6120), .B(n6125), .Y(n6128) );
  AOI21X1 U7505 ( .A0(n6126), .A1(n6125), .B0(n6124), .Y(n6127) );
  OAI21X4 U7506 ( .A0(n6129), .A1(n6128), .B0(n6127), .Y(n6131) );
  OA21X4 U7507 ( .A0(n6131), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .B0(n6130), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]) );
  NAND2BX1 U7508 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(n6513), .Y(n6143) );
  XOR2X1 U7510 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(n6513), .Y(n6148) );
  AOI22X2 U7511 ( .A0(n6152), .A1(n6151), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .B1(n6738), 
        .Y(n6159) );
  XOR2X1 U7512 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(n6513), .Y(n6162) );
  NOR3X2 U7513 ( .A(n6156), .B(n6155), .C(n6162), .Y(n6157) );
  NAND2BX1 U7514 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n6160)
         );
  CLKINVX1 U7515 ( .A(n6162), .Y(n6163) );
  OR2X4 U7516 ( .A(median_sobel_inst_u_sober_compare_submodule_n163), .B(n6181), .Y(n6174) );
  NOR2BX1 U7517 ( .AN(median_sobel_inst_u_sober_compare_submodule_n167), .B(
        median_sobel_inst_u_sober_compare_submodule_n47), .Y(n6172) );
  AOI22X2 U7518 ( .A0(n6175), .A1(
        median_sobel_inst_u_sober_compare_submodule_n246), .B0(n6176), .B1(
        n6172), .Y(n6173) );
  INVX3 U7519 ( .A(n6175), .Y(n6177) );
  NAND2BX1 U7521 ( .AN(median_sobel_inst_u_sober_compare_submodule_n10), .B(
        n6184), .Y(n6182) );
  AOI2BB2X2 U7522 ( .B0(n6213), .B1(n6818), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n80), .Y(n6193) );
  AOI2BB2X2 U7523 ( .B0(n6213), .B1(n6822), .A0N(n3046), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n82), .Y(n6198) );
  AOI2BB2X4 U7524 ( .B0(n3655), .B1(n6569), .A0N(n6246), .A1N(
        median_sobel_inst_u_median_filter_submodule_n810), .Y(n6218) );
  OAI21X4 U7525 ( .A0(n6250), .A1(n6886), .B0(n6218), .Y(
        median_sobel_inst_u_median_filter_submodule_n771) );
  AOI2BB2X4 U7526 ( .B0(n6247), .B1(n6615), .A0N(n6246), .A1N(
        median_sobel_inst_u_median_filter_submodule_n812), .Y(n6219) );
  OAI21X4 U7527 ( .A0(n6250), .A1(n6884), .B0(n6219), .Y(
        median_sobel_inst_u_median_filter_submodule_n772) );
  BUFX4 U7528 ( .A(n6235), .Y(n6227) );
  AOI2BB2X4 U7529 ( .B0(n3655), .B1(n6805), .A0N(n6246), .A1N(n6229), .Y(n6230) );
  OAI21X4 U7530 ( .A0(n6250), .A1(n6231), .B0(n6230), .Y(
        median_sobel_inst_u_median_filter_submodule_n774) );
  XNOR2X4 U7531 ( .A(n6233), .B(input_data_ready_r[23]), .Y(n6234) );
  AOI2BB2X4 U7532 ( .B0(n3655), .B1(n6583), .A0N(n6246), .A1N(n6904), .Y(n6236) );
  OAI21X4 U7533 ( .A0(n6237), .A1(n6247), .B0(n6236), .Y(
        median_sobel_inst_u_median_filter_submodule_n775) );
  AOI2BB2X4 U7534 ( .B0(n6247), .B1(
        median_sobel_inst_u_median_filter_submodule_b5_r[6]), .A0N(n6246), 
        .A1N(n6238), .Y(n6239) );
  OAI21X4 U7535 ( .A0(n6250), .A1(n6899), .B0(n6239), .Y(
        median_sobel_inst_u_median_filter_submodule_n776) );
  AOI21X1 U7536 ( .A0(n6242), .A1(n6241), .B0(n6240), .Y(n6244) );
  XOR2X1 U7537 ( .A(conv_inst_data_abc_1_r[10]), .B(n6650), .Y(n6243) );
  AOI2BB2X4 U7538 ( .B0(n3655), .B1(n6501), .A0N(n6246), .A1N(n6609), .Y(n6248) );
  OAI21X4 U7539 ( .A0(n6250), .A1(n6249), .B0(n6248), .Y(
        median_sobel_inst_u_median_filter_submodule_n769) );
  CLKINVX1 U7540 ( .A(n6252), .Y(n6253) );
  NAND2X2 U7541 ( .A(n6275), .B(n6269), .Y(n6255) );
  NOR2X4 U7542 ( .A(n6256), .B(n6291), .Y(conv_inst_N247) );
  NAND2X1 U7543 ( .A(n6306), .B(n6261), .Y(n6263) );
  MXI2X4 U7544 ( .A(n6263), .B(n6279), .S0(n6262), .Y(conv_inst_N283) );
  NOR2X1 U7545 ( .A(n6272), .B(conv_inst_conv_2_r[13]), .Y(n6270) );
  AOI21X4 U7546 ( .A0(n6278), .A1(n6277), .B0(n6276), .Y(conv_inst_N75) );
  CLKINVX1 U7547 ( .A(n6279), .Y(n6281) );
  NAND3X2 U7548 ( .A(n6282), .B(n6281), .C(n6280), .Y(n6285) );
  MXI2X4 U7549 ( .A(n6285), .B(n6284), .S0(conv_inst_conv_4_r[14]), .Y(
        conv_inst_N284) );
  XOR2X4 U7550 ( .A(n6286), .B(conv_inst_conv_2_r[14]), .Y(n6287) );
  NAND3X8 U7551 ( .A(n6305), .B(n6304), .C(conv_inst_conv_3_r[14]), .Y(n6290)
         );
  XOR2X4 U7552 ( .A(n6290), .B(conv_inst_conv_3_r[15]), .Y(n6292) );
  NAND3X4 U7553 ( .A(n6295), .B(n6293), .C(conv_inst_conv_2_r[14]), .Y(n6298)
         );
  NAND2X4 U7554 ( .A(n6295), .B(n6294), .Y(n6296) );
  AOI21X4 U7555 ( .A0(n6762), .A1(n6298), .B0(n6297), .Y(conv_inst_N251) );
  AND2X4 U7556 ( .A(n6309), .B(n6303), .Y(conv_inst_N77) );
  NAND3X4 U7557 ( .A(n6308), .B(conv_inst_conv_3_r[16]), .C(n6306), .Y(n6307)
         );
  OAI21X4 U7558 ( .A0(n6308), .A1(conv_inst_conv_3_r[16]), .B0(n6307), .Y(
        conv_inst_N269) );
  AOI21X4 U7559 ( .A0(n6310), .A1(n6309), .B0(conv_inst_N79), .Y(conv_inst_N78) );
  NOR2X8 U7560 ( .A(n6311), .B(n837), .Y(o_op_ready) );
  AND2X4 U7561 ( .A(n6312), .B(cnt[0]), .Y(n6313) );
  AOI21X1 U7562 ( .A0(n469), .A1(n6314), .B0(n6356), .Y(N755) );
  NAND3X2 U7563 ( .A(n6318), .B(n6317), .C(n6431), .Y(sram_addr_wait_r[31]) );
  NAND3X2 U7564 ( .A(n6320), .B(n6319), .C(n6434), .Y(sram_addr_wait_r[30]) );
  NAND3X2 U7565 ( .A(n6322), .B(n6321), .C(n6437), .Y(sram_addr_wait_r[29]) );
  NAND3X2 U7566 ( .A(n6326), .B(n6325), .C(n6441), .Y(sram_addr_wait_r[27]) );
  INVX3 U7567 ( .A(n6344), .Y(n6327) );
  XNOR2X2 U7568 ( .A(n6333), .B(n6334), .Y(n6335) );
  NAND2X1 U7569 ( .A(n6341), .B(n6335), .Y(n6340) );
  AOI2BB2X4 U7570 ( .B0(y_origin_r_2_), .B1(n6342), .A0N(n6340), .A1N(n6339), 
        .Y(n6346) );
  NAND2X2 U7571 ( .A(n6344), .B(n6343), .Y(n6345) );
  NAND3X2 U7572 ( .A(n6349), .B(n6348), .C(n6444), .Y(sram_addr_wait_r[26]) );
  NAND3X2 U7573 ( .A(n6351), .B(n6350), .C(n6447), .Y(sram_addr_wait_r[25]) );
  NAND3X2 U7574 ( .A(n6355), .B(n6354), .C(n6450), .Y(sram_addr_wait_r[24]) );
  NAND2X1 U7576 ( .A(n879), .B(n883), .Y(n6359) );
  NAND2X1 U7578 ( .A(x_r[2]), .B(n6359), .Y(n6360) );
  NAND2BX1 U7579 ( .AN(n6361), .B(n6360), .Y(n6363) );
  NOR2BX1 U7580 ( .AN(n821), .B(n800), .Y(n6391) );
  NAND2X4 U7581 ( .A(o_in_ready), .B(n6367), .Y(n6384) );
  NAND3X2 U7582 ( .A(n6369), .B(n6368), .C(n6431), .Y(sram_addr_wait_r[23]) );
  NAND3X2 U7583 ( .A(n6371), .B(n6370), .C(n6434), .Y(sram_addr_wait_r[22]) );
  NAND3X2 U7584 ( .A(n6373), .B(n6372), .C(n6437), .Y(sram_addr_wait_r[21]) );
  NAND3X2 U7585 ( .A(n6379), .B(n6378), .C(n6444), .Y(sram_addr_wait_r[18]) );
  NAND3X2 U7586 ( .A(n6381), .B(n6380), .C(n6447), .Y(sram_addr_wait_r[17]) );
  NAND3X2 U7587 ( .A(n6383), .B(n6382), .C(n6450), .Y(sram_addr_wait_r[16]) );
  OAI22X2 U7588 ( .A0(n6476), .A1(n6385), .B0(n6384), .B1(n6834), .Y(n6386) );
  NAND2X1 U7589 ( .A(n6387), .B(n818), .Y(n6390) );
  NOR2BX1 U7590 ( .AN(n6548), .B(n792), .Y(n6393) );
  OAI22X2 U7591 ( .A0(n6476), .A1(n6416), .B0(n6415), .B1(n6835), .Y(n6417) );
  AOI2BB2X1 U7594 ( .B0(n6455), .B1(n6420), .A0N(n6457), .A1N(n6548), .Y(n6425) );
  NOR2BX1 U7595 ( .AN(n883), .B(n879), .Y(n6421) );
  INVX1 U7596 ( .A(n6421), .Y(n6423) );
  AOI2BB2X2 U7597 ( .B0(n6421), .B1(n6648), .A0N(n6455), .A1N(n6548), .Y(n6422) );
  OAI2BB1X2 U7598 ( .A0N(x_r[2]), .A1N(n6423), .B0(n6422), .Y(n6424) );
  NAND3X2 U7599 ( .A(n6460), .B(n6425), .C(n6424), .Y(n6426) );
  OR2X2 U7601 ( .A(n6464), .B(n6715), .Y(n6435) );
  AND2X1 U7608 ( .A(n792), .B(n6548), .Y(n6456) );
  OAI21X1 U7609 ( .A0(n6459), .A1(n6456), .B0(n6455), .Y(n6462) );
  AOI21X1 U7610 ( .A0(n6459), .A1(x_minus_one_r_0_), .B0(n6458), .Y(n6461) );
  OAI22X2 U7611 ( .A0(n6476), .A1(n6464), .B0(n6463), .B1(n6832), .Y(n6465) );
  BUFX12 U3916 ( .A(n1153), .Y(n2775) );
  CLKAND2X3 U3902 ( .A(n3878), .B(n3469), .Y(n3302) );
  NOR2X2 U5607 ( .A(n6478), .B(n6578), .Y(n3744) );
  INVX4 U3888 ( .A(curr_state[2]), .Y(n3666) );
  NOR2X4 U3879 ( .A(n5789), .B(op_mode_r_1_), .Y(n3192) );
  INVX1 U3841 ( .A(n3865), .Y(n3866) );
  INVX1 U6530 ( .A(n5504), .Y(n4370) );
  INVX8 U5185 ( .A(n4283), .Y(n4267) );
  INVX8 U5224 ( .A(n2819), .Y(n5138) );
  INVX1 U6306 ( .A(median_sobel_inst_u_median_filter_submodule_n280), .Y(n3969) );
  CLKAND2X3 U5043 ( .A(median_sobel_inst_u_median_filter_submodule_b9_r[2]), 
        .B(median_sobel_inst_u_median_filter_submodule_n812), .Y(n2872) );
  CLKAND2X3 U4147 ( .A(conv_inst_data_abc_3_r[7]), .B(conv_inst_conv_3_r[7]), 
        .Y(n5039) );
  AOI2BB2X2 U5220 ( .B0(n3158), .B1(n6879), .A0N(
        median_sobel_inst_u_median_filter_submodule_n227), .A1N(n3157), .Y(
        n3156) );
  NAND2X2 U4927 ( .A(median_sobel_inst_n653), .B(n3479), .Y(n4470) );
  NAND2X2 U6504 ( .A(n4437), .B(n4441), .Y(n4333) );
  INVX1 U4741 ( .A(n3740), .Y(n3621) );
  NAND2X4 U4596 ( .A(n4074), .B(n4073), .Y(n2994) );
  OAI21X2 U7483 ( .A0(n6059), .A1(n6058), .B0(n6057), .Y(n6062) );
  NAND2X2 U5506 ( .A(n5784), .B(n4848), .Y(n4858) );
  OA21X2 U6034 ( .A0(n6136), .A1(n6137), .B0(n6135), .Y(n3563) );
  NAND2X6 U5250 ( .A(n4292), .B(n3204), .Y(n2671) );
  CLKINVX1 U6936 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n58), .Y(
        n4831) );
  NOR2X6 U5057 ( .A(n4269), .B(n2900), .Y(n6278) );
  AND4X4 U4181 ( .A(n4431), .B(n4434), .C(n4432), .D(n4433), .Y(n5908) );
  AND3X6 U5092 ( .A(n4109), .B(n2691), .C(n4108), .Y(n2939) );
  INVX6 U6639 ( .A(o_in_ready), .Y(n4456) );
  INVX6 U3612 ( .A(median_sobel_inst_data_b_r[2]), .Y(n3216) );
  NAND3X4 U5064 ( .A(n2913), .B(n4127), .C(median_sobel_inst_data_g_r[0]), .Y(
        n2912) );
  NAND3X4 U5244 ( .A(n3198), .B(n3624), .C(median_sobel_inst_data_g_r[0]), .Y(
        n3197) );
  CLKINVX1 U4225 ( .A(n6185), .Y(n6184) );
  NOR2X6 U5211 ( .A(n5635), .B(n3143), .Y(n3145) );
  INVX1 U6972 ( .A(n5439), .Y(n4885) );
  CLKAND2X3 U6395 ( .A(n4095), .B(n4094), .Y(n4096) );
  NAND2X6 U4924 ( .A(n5637), .B(n5638), .Y(n5604) );
  CLKINVX4 U4289 ( .A(median_sobel_inst_data_d_r[3]), .Y(n5858) );
  INVX4 U6472 ( .A(median_sobel_inst_data_f_r[3]), .Y(n5933) );
  OAI21X1 U3491 ( .A0(n5642), .A1(n5641), .B0(n5640), .Y(n2924) );
  BUFX4 U4966 ( .A(n5337), .Y(n3541) );
  AOI2BB2X2 U7520 ( .B0(n6186), .B1(
        median_sobel_inst_u_sober_compare_submodule_n44), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n167), .A1N(n6180), .Y(
        n6183) );
  NOR2X6 U6082 ( .A(n5909), .B(n2671), .Y(n3651) );
  NAND3X2 U4993 ( .A(n6241), .B(n6242), .C(n4328), .Y(n2808) );
  NAND2X2 U3487 ( .A(n2926), .B(n5427), .Y(n5643) );
  NAND2X2 U4426 ( .A(n3720), .B(n3721), .Y(n3105) );
  NAND2X4 U4445 ( .A(n4262), .B(n3718), .Y(median_sobel_inst_data_f_r[6]) );
  INVX3 U5218 ( .A(median_sobel_inst_data_c_r[6]), .Y(n5952) );
  INVX1 U6026 ( .A(median_sobel_inst_data_e_r[6]), .Y(n5911) );
  CLKINVX4 U4313 ( .A(n6212), .Y(n3042) );
  OAI2BB1X2 U5146 ( .A0N(n6893), .A1N(n6892), .B0(n5996), .Y(n3014) );
  INVX4 U5374 ( .A(n5136), .Y(n3449) );
  INVX3 U4176 ( .A(n5859), .Y(median_sobel_inst_data_g_r[3]) );
  INVX6 U3449 ( .A(median_sobel_inst_data_c_r[4]), .Y(n5948) );
  AND2X6 U5126 ( .A(n6221), .B(n6220), .Y(n3884) );
  AND2X4 U3398 ( .A(n5057), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n46), .Y(n6132) );
  OR2X4 U3396 ( .A(n5154), .B(n2891), .Y(n2889) );
  NAND2X4 U4325 ( .A(n5452), .B(n5061), .Y(n5576) );
  INVX3 U4284 ( .A(n5853), .Y(median_sobel_inst_data_a_r[6]) );
  NOR2X4 U4412 ( .A(n3470), .B(n856), .Y(n3319) );
  NAND2X4 U4437 ( .A(n3122), .B(n3121), .Y(n4472) );
  NAND2X4 U5371 ( .A(n3446), .B(n7022), .Y(n3443) );
  NAND2X4 U3957 ( .A(n5141), .B(conv_inst_conv_1_r[11]), .Y(n6257) );
  NAND2X4 U4969 ( .A(n2992), .B(n3884), .Y(n2989) );
  BUFX4 U4318 ( .A(n5191), .Y(n5356) );
  INVX8 U4264 ( .A(n3308), .Y(n3311) );
  CLKBUFX6 U4202 ( .A(n5204), .Y(n5334) );
  INVX1 U5580 ( .A(n5940), .Y(median_sobel_inst_data_f_r[7]) );
  BUFX8 U4171 ( .A(n3012), .Y(n6042) );
  NAND2X6 U5296 ( .A(n6168), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[9]), .Y(n6170)
         );
  INVX8 U4274 ( .A(n3012), .Y(n6039) );
  INVX3 U3331 ( .A(n5154), .Y(n5472) );
  CLKINVX1 U4406 ( .A(n3470), .Y(n6224) );
  CLKINVX4 U3325 ( .A(n3329), .Y(n6460) );
  CLKINVX6 U3346 ( .A(n6416), .Y(n6412) );
  CLKBUFX6 U3316 ( .A(n5204), .Y(n5357) );
  AND2X6 U5470 ( .A(n5508), .B(n6010), .Y(n5594) );
  CLKBUFX6 U3359 ( .A(n5191), .Y(n5341) );
  AOI2BB2X2 U7407 ( .B0(n6535), .B1(n5884), .A0N(n8110), .A1N(n5888), .Y(n5839) );
  AOI2BB2X1 U3305 ( .B0(n6747), .B1(n5889), .A0N(n843), .A1N(n4045), .Y(n5825)
         );
  AND2X4 U5303 ( .A(n3895), .B(n3318), .Y(n3317) );
  NAND2X4 U7469 ( .A(n3029), .B(n6623), .Y(n6016) );
  NAND2X4 U4436 ( .A(n4874), .B(n4500), .Y(n4499) );
  OAI21X2 U7357 ( .A0(n6115), .A1(n5685), .B0(n5686), .Y(n5684) );
  NOR2X2 U5308 ( .A(n6386), .B(n6466), .Y(n3324) );
  INVX1 U7216 ( .A(n5348), .Y(n5351) );
  NAND3X2 U5176 ( .A(n3060), .B(
        median_sobel_inst_u_median_filter_submodule_n246), .C(n3059), .Y(n5584) );
  NAND2X1 U6147 ( .A(n6041), .B(
        median_sobel_inst_u_median_filter_submodule_n91), .Y(n6031) );
  NAND2X2 U4268 ( .A(n6042), .B(n6879), .Y(n6036) );
  NOR2X4 U3199 ( .A(n4238), .B(n4237), .Y(n5921) );
  NOR2X2 U5996 ( .A(n4547), .B(n6291), .Y(conv_inst_N279) );
  INVX12 U3906 ( .A(n4308), .Y(n5929) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N990), .CK(i_clk), .RN(
        n6940), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .QN(n6582) );
  NOR2X1 U6493 ( .A(median_sobel_inst_n414), .B(n2681), .Y(n4309) );
  AND2X2 U5495 ( .A(n3826), .B(n3830), .Y(n3827) );
  OA22X2 U6305 ( .A0(median_sobel_inst_u_median_filter_submodule_net57373), 
        .A1(median_sobel_inst_u_median_filter_submodule_net22696), .B0(
        median_sobel_inst_u_median_filter_submodule_n130), .B1(
        median_sobel_inst_u_median_filter_submodule_net22693), .Y(n3957) );
  NAND2X4 U4467 ( .A(n3626), .B(n3625), .Y(median_sobel_inst_data_d_r[0]) );
  OAI22X2 U4955 ( .A0(n3397), .A1(median_sobel_inst_n365), .B0(n4466), .B1(
        n5880), .Y(n4134) );
  OAI21X2 U7481 ( .A0(median_sobel_inst_u_median_filter_submodule_n812), .A1(
        n6615), .B0(n6056), .Y(n6059) );
  NOR2X8 U4939 ( .A(n3183), .B(n2688), .Y(n5857) );
  NOR2X6 U5136 ( .A(n3002), .B(n2667), .Y(n3024) );
  CLKINVX1 U3766 ( .A(n6315), .Y(n6316) );
  OAI2BB1X1 U5513 ( .A0N(conv_inst_n42), .A1N(n4267), .B0(n4266), .Y(n4269) );
  BUFX2 U4733 ( .A(n3163), .Y(n2817) );
  OA22X2 U6403 ( .A0(median_sobel_inst_n373), .A1(n5928), .B0(
        median_sobel_inst_n365), .B1(n3484), .Y(n4122) );
  INVX8 U4896 ( .A(i_in_valid), .Y(n4021) );
  OR2X1 U4119 ( .A(n3858), .B(n6743), .Y(n2707) );
  CLKINVX1 U6494 ( .A(median_sobel_inst_data_b_r[1]), .Y(n4315) );
  NOR2X2 U3737 ( .A(n6612), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n4687) );
  CLKAND2X8 U5367 ( .A(n4830), .B(n3440), .Y(n3439) );
  NAND2X2 U5301 ( .A(n3316), .B(n3468), .Y(n3467) );
  NOR2X6 U5056 ( .A(n4342), .B(n6278), .Y(n3073) );
  NAND2X4 U4449 ( .A(n3069), .B(n2744), .Y(n5587) );
  NAND2X2 U3958 ( .A(n4324), .B(n4323), .Y(n6240) );
  INVX3 U3522 ( .A(median_sobel_inst_data_i_r[3]), .Y(n5942) );
  INVX3 U3518 ( .A(median_sobel_inst_data_d_r[7]), .Y(n5863) );
  NOR2X4 U4150 ( .A(n3396), .B(n3104), .Y(n3103) );
  NAND2X2 U6011 ( .A(n5109), .B(n4517), .Y(n4519) );
  NAND2X4 U4450 ( .A(n3073), .B(n6288), .Y(n6299) );
  NAND2X4 U4928 ( .A(n2784), .B(n2912), .Y(n2909) );
  NAND3X2 U4930 ( .A(n4251), .B(n4250), .C(n4249), .Y(
        median_sobel_inst_data_i_r[7]) );
  OR2X1 U6814 ( .A(n4618), .B(median_sobel_inst_u_sobel_gradient_submodule_n64), .Y(n5537) );
  CLKINVX1 U3539 ( .A(n2939), .Y(median_sobel_inst_data_a_r[4]) );
  AOI2BB2X2 U5068 ( .B0(n5942), .B1(median_sobel_inst_data_c_r[3]), .A0N(n5943), .A1N(median_sobel_inst_data_i_r[2]), .Y(n5947) );
  NAND2X4 U5127 ( .A(n4536), .B(n4535), .Y(n4912) );
  OR2X1 U6737 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .Y(n5264) );
  INVX16 U3966 ( .A(n3031), .Y(n3032) );
  NAND3X4 U3940 ( .A(n2980), .B(n3570), .C(n6159), .Y(n6164) );
  NOR2X6 U4932 ( .A(n4873), .B(n4872), .Y(n4874) );
  NAND2X4 U4029 ( .A(n5558), .B(n4811), .Y(n5516) );
  INVX1 U4326 ( .A(n5669), .Y(n5020) );
  CLKINVX3 U3498 ( .A(n2719), .Y(n5032) );
  BUFX6 U3334 ( .A(n3058), .Y(n3060) );
  INVX8 U4315 ( .A(n3045), .Y(n6213) );
  AOI2BB2X2 U6357 ( .B0(n6544), .B1(n5889), .A0N(n787), .A1N(n4045), .Y(n4047)
         );
  NAND2X1 U4307 ( .A(n6213), .B(n6819), .Y(n3047) );
  NAND2X1 U5307 ( .A(n6214), .B(n6799), .Y(n3323) );
  NAND3X2 U5356 ( .A(n3060), .B(n3311), .C(n2750), .Y(n3425) );
  NAND2X1 U5285 ( .A(n6199), .B(n6808), .Y(n6194) );
  NAND2X2 U6299 ( .A(n6262), .B(n6306), .Y(n3944) );
  NAND2X2 U3943 ( .A(n6283), .B(n6306), .Y(n6284) );
  XNOR2X1 U6038 ( .A(n3571), .B(n5123), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N220) );
  OAI21X2 U5475 ( .A0(n4245), .A1(n4244), .B0(n4243), .Y(conv_inst_N265) );
  NAND3X2 U5162 ( .A(n3036), .B(n3035), .C(n3033), .Y(n7001) );
  NOR2X2 U5449 ( .A(n6268), .B(n6267), .Y(conv_inst_N266) );
  OA21X2 U7509 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .A1(n6145), .B0(n6144), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N140) );
  NAND2X4 U6064 ( .A(input_data_ready_r[26]), .B(n893), .Y(n3605) );
  AND2X4 U4346 ( .A(median_sobel_inst_u_median_filter_submodule_n243), .B(
        n2887), .Y(n2886) );
  NOR2X2 U4385 ( .A(conv_inst_conv_4_r[7]), .B(conv_inst_data_bcd_4_r[7]), .Y(
        n3937) );
  INVX8 U6263 ( .A(n3719), .Y(n5067) );
  CLKAND2X6 U5037 ( .A(conv_inst_conv_1_r[2]), .B(conv_inst_data_abc_1_r[2]), 
        .Y(n5082) );
  NAND2X6 U3942 ( .A(n3940), .B(n3939), .Y(n3091) );
  NAND2X6 U5137 ( .A(n3003), .B(n2709), .Y(median_sobel_inst_data_b_r[1]) );
  BUFX16 U6384 ( .A(n4107), .Y(n4482) );
  NAND2X2 U6379 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), 
        .Y(n4518) );
  BUFX6 U4533 ( .A(n3601), .Y(n2937) );
  INVX4 U3837 ( .A(n5928), .Y(n4402) );
  OR2X2 U3844 ( .A(median_sobel_inst_n371), .B(n5927), .Y(n4029) );
  AND3X4 U4497 ( .A(n3863), .B(n3864), .C(n3862), .Y(n5892) );
  NOR2X4 U3925 ( .A(n4371), .B(n4969), .Y(n6337) );
  INVX4 U4146 ( .A(n5857), .Y(median_sobel_inst_data_d_r[1]) );
  NAND2X1 U6803 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n80), .Y(n4627) );
  OR2X1 U6487 ( .A(median_sobel_inst_n378), .B(n4466), .Y(n4290) );
  NAND3X4 U5042 ( .A(n2873), .B(n6046), .C(n2871), .Y(n2877) );
  NAND2X4 U5351 ( .A(n3619), .B(n3419), .Y(n2668) );
  NOR2X2 U3744 ( .A(n5927), .B(median_sobel_inst_n410), .Y(n3136) );
  INVX2 U3855 ( .A(n4430), .Y(n2915) );
  INVX4 U3667 ( .A(median_sobel_inst_data_e_r[2]), .Y(n5907) );
  INVX3 U5276 ( .A(median_sobel_inst_data_f_r[1]), .Y(n3282) );
  NAND3X4 U5329 ( .A(n4301), .B(n4302), .C(n4300), .Y(median_sobel_inst_n38)
         );
  NAND2X1 U6474 ( .A(n4265), .B(n4264), .Y(n6288) );
  INVX3 U4272 ( .A(n3589), .Y(n3202) );
  INVX3 U3511 ( .A(median_sobel_inst_data_h_r[6]), .Y(n5910) );
  NOR2X1 U6730 ( .A(n6906), .B(n4561), .Y(n5406) );
  NOR2X4 U6273 ( .A(n3911), .B(n3910), .Y(n3914) );
  NAND2X4 U5193 ( .A(n5934), .B(n3099), .Y(n3098) );
  BUFX16 U3924 ( .A(n3031), .Y(n3030) );
  NAND2BX1 U4874 ( .AN(median_sobel_inst_u_sober_compare_submodule_n41), .B(
        median_sobel_inst_u_sober_compare_submodule_n62), .Y(n5114) );
  CLKXOR2X2 U5236 ( .A(n3537), .B(n839), .Y(n3760) );
  CLKINVX8 U5161 ( .A(n3030), .Y(n3029) );
  INVX1 U3503 ( .A(n5509), .Y(n5476) );
  INVX4 U4460 ( .A(median_sobel_inst_data_c_r[7]), .Y(n5955) );
  CLKINVX1 U4821 ( .A(n5477), .Y(n5511) );
  INVXL U6146 ( .A(n5560), .Y(n4844) );
  CLKINVX1 U3705 ( .A(n3278), .Y(n6982) );
  NOR2X2 U6277 ( .A(n5212), .B(n3920), .Y(median_sobel_inst_N116) );
  DFFRHQX2 median_sobel_inst_cs_reg_1_ ( .D(median_sobel_inst_n991), .CK(i_clk), .RN(n6931), .Q(median_sobel_inst_n700) );
  DFFRHQX2 median_sobel_inst_cs_reg_0_ ( .D(median_sobel_inst_ns[0]), .CK(
        i_clk), .RN(n6931), .Q(median_sobel_inst_n718) );
  OAI21XL U2981 ( .A0(median_sobel_inst_u_median_filter_submodule_n42), .A1(
        n7011), .B0(n7010), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[0]) );
  AOI22X1 U2985 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), 
        .A1(n4771), .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), 
        .B1(n5062), .Y(n7010) );
  CLKINVX1 U3020 ( .A(n5060), .Y(n7011) );
  XNOR2X1 U3062 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n25), .B(
        n7012), .Y(median_sobel_inst_u_sobel_gradient_submodule_N98) );
  NOR2X1 U3063 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n65), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n41), .Y(n7012) );
  XNOR2X1 U3064 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n43), .B(
        n7013), .Y(median_sobel_inst_u_sobel_gradient_submodule_N67) );
  NOR2X1 U3065 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n64), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n27), .Y(n7013) );
  AOI21X1 U3066 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .A1(n4604), .B0(n5409), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N120) );
  NOR2X1 U3067 ( .A(n4604), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n5409) );
  AO21X1 U3068 ( .A0(n6331), .A1(n5198), .B0(n7014), .Y(n491) );
  OAI22XL U3069 ( .A0(n5199), .A1(n5200), .B0(n5201), .B1(n5564), .Y(n7014) );
  XOR2X1 U3070 ( .A(n4489), .B(n7015), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N108) );
  NAND2X1 U3071 ( .A(n5373), .B(n5374), .Y(n7015) );
  NAND2X1 U3077 ( .A(n4800), .B(n4801), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[6]) );
  XNOR2X1 U3082 ( .A(n2954), .B(n7016), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N138) );
  XOR2X1 U3090 ( .A(n6738), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n7016) );
  AND2X4 U3092 ( .A(n4230), .B(n4229), .Y(n2849) );
  INVXL U3093 ( .A(n7017), .Y(n4509) );
  NAND2XL U3094 ( .A(n4506), .B(n4717), .Y(n7017) );
  INVXL U3101 ( .A(n7018), .Y(n4529) );
  NAND2XL U3104 ( .A(n4526), .B(n4719), .Y(n7018) );
  OAI2BB1XL U3108 ( .A0N(n5758), .A1N(n5754), .B0(n5757), .Y(n4497) );
  OAI2BB1XL U3110 ( .A0N(n5751), .A1N(n5747), .B0(n5750), .Y(n4397) );
  OAI2BB1XL U3112 ( .A0N(n5744), .A1N(n5740), .B0(n5743), .Y(n5156) );
  NAND2X1 U3113 ( .A(n5120), .B(n5122), .Y(n4583) );
  OR2X1 U3120 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n56), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .Y(n5122) );
  NOR2X1 U3125 ( .A(n5124), .B(n5283), .Y(n5120) );
  NAND2X2 U3127 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .Y(n5691) );
  NAND2X2 U3167 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .Y(n5665) );
  NAND2X2 U3206 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .Y(n5715) );
  NAND2X2 U3207 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .Y(n5641) );
  CLKINVX1 U3215 ( .A(n893), .Y(n5841) );
  OA21X2 U3216 ( .A0(n6394), .A1(n6393), .B0(n6392), .Y(n3326) );
  CLKINVX1 U3217 ( .A(median_sobel_inst_u_median_filter_submodule_n124), .Y(
        n3857) );
  NAND2X1 U3218 ( .A(n5131), .B(n3464), .Y(n3463) );
  NOR3BX1 U3219 ( .AN(n7008), .B(n5788), .C(n6470), .Y(n5792) );
  CLKINVX1 U3220 ( .A(n6119), .Y(n5702) );
  NOR2X1 U3221 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n57), .Y(n6119) );
  INVXL U3222 ( .A(med_sobel_out_valid_w), .Y(n7023) );
  NOR2XL U3223 ( .A(median_sobel_inst_n323), .B(n7023), .Y(n7034) );
  NAND2BX1 U3257 ( .AN(n6492), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n4489) );
  NOR2BX1 U3259 ( .AN(n3902), .B(median_sobel_inst_n409), .Y(n7040) );
  NAND3X1 U3260 ( .A(x_origin_r_1_), .B(n5789), .C(n827), .Y(n5795) );
  NAND2X1 U3261 ( .A(conv_inst_data_abc_3_r[9]), .B(conv_inst_n59), .Y(n4005)
         );
  AND2X1 U3262 ( .A(conv_inst_n41), .B(conv_inst_data_abc_3_r[8]), .Y(n3985)
         );
  NAND2X2 U3264 ( .A(n3030), .B(n3034), .Y(n3033) );
  INVX1 U3284 ( .A(n5441), .Y(n7041) );
  NOR2X2 U3291 ( .A(n3278), .B(median_sobel_inst_data_f_r[1]), .Y(n3396) );
  OAI2BB1X2 U3304 ( .A0N(n7026), .A1N(n3478), .B0(n4115), .Y(n2906) );
  OR3X4 U3308 ( .A(n3848), .B(n3844), .C(n3845), .Y(n3849) );
  OAI21X1 U3330 ( .A0(n6653), .A1(n5137), .B0(n7069), .Y(n2903) );
  OR2X2 U3339 ( .A(n3999), .B(n4880), .Y(n5336) );
  OR2X4 U3363 ( .A(n4268), .B(n2902), .Y(n2900) );
  AND3X6 U3364 ( .A(n3091), .B(n3090), .C(n4032), .Y(n3088) );
  OR2X2 U3365 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        n6488), .Y(n2968) );
  NOR3BX1 U3367 ( .AN(n6257), .B(n5142), .C(n6259), .Y(conv_inst_N230) );
  INVXL U3369 ( .A(n5120), .Y(n7033) );
  OAI21X2 U3377 ( .A0(n7033), .A1(n5287), .B0(n5119), .Y(n3571) );
  NOR2BX2 U3392 ( .AN(n6273), .B(n6275), .Y(n2950) );
  AOI22X2 U3397 ( .A0(n6213), .A1(n6821), .B0(n6199), .B1(n6810), .Y(n7055) );
  AND2X2 U3399 ( .A(n5853), .B(median_sobel_inst_data_d_r[6]), .Y(n5855) );
  NAND2BX4 U3418 ( .AN(n6299), .B(n3676), .Y(n6302) );
  AND2X8 U3424 ( .A(n2719), .B(n7034), .Y(n5561) );
  INVXL U3450 ( .A(n5147), .Y(n7035) );
  OAI2BB1X1 U3454 ( .A0N(n5153), .A1N(n7035), .B0(n5150), .Y(n3778) );
  INVXL U3460 ( .A(n5026), .Y(n7036) );
  OAI2BB1X1 U3462 ( .A0N(n5024), .A1N(n7036), .B0(n5027), .Y(n4917) );
  OAI2BB1X2 U3468 ( .A0N(n5586), .A1N(n5587), .B0(n5588), .Y(n6233) );
  NOR2BX4 U3471 ( .AN(n5854), .B(n2840), .Y(n2839) );
  NOR2BX4 U3474 ( .AN(n5939), .B(n3107), .Y(n3106) );
  OR2X1 U3481 ( .A(n3450), .B(median_sobel_inst_u_sober_compare_submodule_n69), 
        .Y(n4664) );
  NAND2BX2 U3485 ( .AN(median_sobel_inst_data_c_r[6]), .B(
        median_sobel_inst_data_i_r[6]), .Y(n5953) );
  OAI21X2 U3486 ( .A0(median_sobel_inst_cnt_3_), .A1(n3919), .B0(n3913), .Y(
        n3680) );
  INVX2 U3493 ( .A(n5403), .Y(n7038) );
  OAI2BB1X4 U3495 ( .A0N(n7038), .A1N(n5406), .B0(n5404), .Y(n4742) );
  AO21X4 U3497 ( .A0(n5088), .A1(n5089), .B0(n4571), .Y(n5072) );
  OR2X6 U3499 ( .A(n5770), .B(n3732), .Y(n5786) );
  OR2X8 U3504 ( .A(n5560), .B(n4842), .Y(n5558) );
  NOR2BX4 U3529 ( .AN(median_sobel_inst_n102), .B(n3651), .Y(n3650) );
  NAND2BX2 U3533 ( .AN(median_sobel_inst_data_d_r[5]), .B(
        median_sobel_inst_data_a_r[5]), .Y(n5852) );
  OR2X4 U3534 ( .A(n5509), .B(n5477), .Y(n5508) );
  NAND2BX2 U3535 ( .AN(n3914), .B(n3683), .Y(n3682) );
  AND2X8 U3540 ( .A(n2826), .B(median_sobel_inst_data_b_r[6]), .Y(n2777) );
  AND2X8 U3544 ( .A(n5493), .B(n5114), .Y(n4585) );
  AOI2BB2X2 U3551 ( .B0(n3049), .B1(n2748), .A0N(median_sobel_inst_n376), 
        .A1N(n3484), .Y(n5924) );
  NOR2BX4 U3555 ( .AN(n2939), .B(n3696), .Y(n2940) );
  NAND2BX4 U3562 ( .AN(median_sobel_inst_data_f_r[5]), .B(
        median_sobel_inst_data_c_r[5]), .Y(n5939) );
  NAND3BX4 U3564 ( .AN(n7040), .B(n3802), .C(n3801), .Y(
        median_sobel_inst_data_i_r[6]) );
  OAI2BB1X4 U3574 ( .A0N(n7041), .A1N(n5444), .B0(n5442), .Y(n5669) );
  AO21X4 U3576 ( .A0(n4324), .A1(n2865), .B0(n4079), .Y(n2864) );
  NAND2BX2 U3586 ( .AN(median_sobel_inst_n38), .B(
        median_sobel_inst_data_b_r[7]), .Y(n3347) );
  CLKINVX1 U3594 ( .A(n4192), .Y(n7042) );
  OR2X8 U3600 ( .A(n7042), .B(n5761), .Y(n5770) );
  OR2X8 U3605 ( .A(n5629), .B(n5628), .Y(n6305) );
  NOR2BX4 U3616 ( .AN(n3566), .B(n2964), .Y(n2963) );
  OR2X4 U3617 ( .A(n2954), .B(n2982), .Y(n2980) );
  AND2X2 U3619 ( .A(n4187), .B(n4188), .Y(n3123) );
  NOR2BX2 U3621 ( .AN(n3856), .B(n3411), .Y(n3410) );
  OR2X4 U3624 ( .A(median_sobel_inst_data_i_r[2]), .B(n4263), .Y(n2999) );
  NAND2BX2 U3629 ( .AN(n5426), .B(n5429), .Y(n2926) );
  OR2X8 U3631 ( .A(n3537), .B(n5606), .Y(n3930) );
  AOI2BB2X2 U3632 ( .B0(n3724), .B1(median_sobel_inst_n654), .A0N(
        median_sobel_inst_n369), .A1N(n3484), .Y(n4298) );
  OR2X6 U3633 ( .A(n2716), .B(n5857), .Y(n3198) );
  OA22XL U3639 ( .A0(median_sobel_inst_u_median_filter_submodule_n27), .A1(
        median_sobel_inst_u_median_filter_submodule_n37), .B0(
        median_sobel_inst_u_median_filter_submodule_n211), .B1(n3083), .Y(
        n5983) );
  NAND3BX2 U3644 ( .AN(n2937), .B(n3750), .C(n3752), .Y(n3758) );
  NOR2X1 U3647 ( .A(n3733), .B(n3502), .Y(n5429) );
  NOR2BX4 U3654 ( .AN(n2668), .B(median_sobel_inst_data_f_r[0]), .Y(n3076) );
  NAND2BX2 U3655 ( .AN(n4327), .B(n2802), .Y(n4324) );
  OR2X2 U3661 ( .A(median_sobel_inst_n417), .B(n2778), .Y(n3050) );
  NOR2BX4 U3670 ( .AN(n6067), .B(n3658), .Y(n3657) );
  OR2X4 U3687 ( .A(n5804), .B(n5504), .Y(n5507) );
  AND2X8 U3703 ( .A(n2883), .B(n2882), .Y(n6055) );
  INVXL U3709 ( .A(n6639), .Y(n7045) );
  AND2X2 U3715 ( .A(n7045), .B(n2819), .Y(n4202) );
  NAND2BX4 U3722 ( .AN(n827), .B(n5829), .Y(n5804) );
  NAND2X1 U3724 ( .A(n7029), .B(n3479), .Y(n4121) );
  NOR2X6 U3726 ( .A(n3740), .B(n2918), .Y(n2917) );
  OAI2BB2X1 U3736 ( .B0(n3634), .B1(median_sobel_inst_n415), .A0N(n3902), 
        .A1N(median_sobel_inst_n715), .Y(n3159) );
  INVX1 U3752 ( .A(n4629), .Y(n7047) );
  OAI2BB1X4 U3754 ( .A0N(n4627), .A1N(n7047), .B0(n4628), .Y(n4830) );
  NAND2BX2 U3763 ( .AN(median_sobel_inst_data_a_r[0]), .B(
        median_sobel_inst_data_d_r[0]), .Y(n3685) );
  NAND2BX4 U3769 ( .AN(n6315), .B(n5049), .Y(n4043) );
  NAND2X4 U3785 ( .A(n3078), .B(n4197), .Y(median_sobel_inst_data_i_r[3]) );
  NAND3BX4 U3786 ( .AN(n4224), .B(n3021), .C(n4225), .Y(n4234) );
  INVXL U3793 ( .A(n6720), .Y(n7048) );
  OR2X4 U3794 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(n7048), .Y(n6141) );
  AOI22X1 U3797 ( .A0(n4403), .A1(n7027), .B0(n5067), .B1(n7028), .Y(n3078) );
  NAND2BX2 U3800 ( .AN(n4227), .B(conv_inst_conv_2_r[3]), .Y(n2832) );
  AOI21X2 U3806 ( .A0(conv_inst_n41), .A1(n2774), .B0(n4223), .Y(n3021) );
  CLKAND2X4 U3807 ( .A(n3478), .B(median_sobel_inst_n150), .Y(n2943) );
  NOR2BX4 U3816 ( .AN(n3940), .B(n4034), .Y(n4544) );
  NOR2BX2 U3825 ( .AN(n4430), .B(median_sobel_inst_n421), .Y(n2914) );
  INVXL U3843 ( .A(n6614), .Y(n7050) );
  AND2X2 U3851 ( .A(n2819), .B(n7050), .Y(n4224) );
  INVXL U3874 ( .A(n2698), .Y(n7051) );
  INVX1 U3877 ( .A(n6600), .Y(n7052) );
  OA22X4 U3882 ( .A0(n5927), .A1(n7052), .B0(n7051), .B1(n5928), .Y(n3279) );
  AND2X4 U3883 ( .A(n4291), .B(n4290), .Y(n3204) );
  INVXL U3901 ( .A(median_sobel_inst_u_median_filter_submodule_n233), .Y(n7053) );
  AOI22X1 U3904 ( .A0(median_sobel_inst_u_median_filter_submodule_n789), .A1(
        median_sobel_inst_u_median_filter_submodule_n176), .B0(
        median_sobel_inst_u_median_filter_submodule_n221), .B1(n7053), .Y(
        n3826) );
  OR2X8 U3908 ( .A(median_sobel_inst_n435), .B(n2778), .Y(n4026) );
  AO21X2 U3910 ( .A0(median_sobel_inst_u_median_filter_submodule_n810), .A1(
        median_sobel_inst_u_median_filter_submodule_n152), .B0(
        median_sobel_inst_u_median_filter_submodule_b9_r[1]), .Y(n2878) );
  OR2X4 U3920 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(n2968), .Y(n4602) );
  NAND3BX2 U3927 ( .AN(n3744), .B(n3579), .C(n3749), .Y(n3343) );
  AND2X4 U3930 ( .A(n4010), .B(n4011), .Y(n3626) );
  AND2X2 U3955 ( .A(n2788), .B(n6488), .Y(n2973) );
  OR2X2 U3961 ( .A(n6661), .B(n6498), .Y(n3299) );
  OR2X2 U3971 ( .A(n833), .B(n1145), .Y(n3306) );
  AND2X8 U3981 ( .A(n3745), .B(n3605), .Y(n3603) );
  XOR2X1 U3983 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n44), .B(
        n7054), .Y(median_sobel_inst_u_sobel_gradient_submodule_N690) );
  NAND2X1 U3992 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n44), .B(
        n7054), .Y(n5544) );
  NAND2X1 U3993 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .B(n5536), .Y(n7054) );
  OAI211X1 U4001 ( .A0(n3046), .A1(
        median_sobel_inst_u_sober_compare_submodule_n81), .B0(n3323), .C0(
        n7055), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[4]) );
  OAI21XL U4014 ( .A0(n5146), .A1(n5779), .B0(n5145), .Y(n485) );
  OAI2BB2XL U4017 ( .B0(n3355), .B1(median_sobel_inst_n222), .A0N(n6661), 
        .A1N(n3356), .Y(median_sobel_inst_med_sobel_e_wait_r[45]) );
  OAI2BB2XL U4019 ( .B0(n3355), .B1(n2696), .A0N(n6858), .A1N(n3356), .Y(
        median_sobel_inst_n490) );
  OAI2BB2XL U4021 ( .B0(n4481), .B1(
        median_sobel_inst_u_sober_compare_submodule_n81), .A0N(n3356), .A1N(
        n2701), .Y(median_sobel_inst_u_sober_compare_submodule_n133) );
  OAI2BB2XL U4054 ( .B0(n3355), .B1(n2762), .A0N(median_sobel_inst_angle[3]), 
        .A1N(n3356), .Y(median_sobel_inst_u_sober_compare_submodule_n93) );
  OAI2BB2XL U4058 ( .B0(n3355), .B1(
        median_sobel_inst_u_sober_compare_submodule_n146), .A0N(
        median_sobel_inst_G[19]), .A1N(n3356), .Y(
        median_sobel_inst_u_sober_compare_submodule_n111) );
  OAI2BB2XL U4070 ( .B0(n3355), .B1(
        median_sobel_inst_u_sober_compare_submodule_n72), .A0N(
        median_sobel_inst_G[10]), .A1N(n3356), .Y(
        median_sobel_inst_u_sober_compare_submodule_n124) );
  OAI2BB2XL U4109 ( .B0(n3355), .B1(
        median_sobel_inst_u_sober_compare_submodule_n156), .A0N(
        median_sobel_inst_G[30]), .A1N(n3356), .Y(
        median_sobel_inst_u_sober_compare_submodule_n101) );
  OAI2BB2XL U4116 ( .B0(n3355), .B1(n6785), .A0N(n6852), .A1N(n3356), .Y(
        median_sobel_inst_n474) );
  OAI2BB2XL U4132 ( .B0(n3355), .B1(n6786), .A0N(n6853), .A1N(n3356), .Y(
        median_sobel_inst_n470) );
  CLKINVX1 U4133 ( .A(n7056), .Y(conv_inst_N248) );
  OAI211X2 U4148 ( .A0(n6275), .A1(n6271), .B0(n2934), .C0(n2932), .Y(n7056)
         );
  NOR2X1 U4153 ( .A(n5212), .B(n3523), .Y(median_sobel_inst_N113) );
  OAI21X1 U4159 ( .A0(median_sobel_inst_u_median_filter_submodule_n84), .A1(
        n4767), .B0(n7057), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[7]) );
  AOI22X1 U4162 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), 
        .A1(n6008), .B0(n4822), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(n7057) );
  NAND2X1 U4165 ( .A(n6450), .B(n7058), .Y(sram_addr_wait_r[0]) );
  OA22X4 U4166 ( .A0(n6464), .A1(n6508), .B0(n6463), .B1(n6979), .Y(n7058) );
  NAND2X1 U4172 ( .A(n6431), .B(n7059), .Y(sram_addr_wait_r[7]) );
  OA22X4 U4177 ( .A0(n6464), .A1(n6734), .B0(n6463), .B1(n412), .Y(n7059) );
  NAND2X1 U4182 ( .A(n6444), .B(n7060), .Y(sram_addr_wait_r[2]) );
  OA22X4 U4184 ( .A0(n6464), .A1(n6477), .B0(n6463), .B1(n6978), .Y(n7060) );
  NAND2X1 U4186 ( .A(n6441), .B(n7061), .Y(sram_addr_wait_r[3]) );
  OA22X4 U4187 ( .A0(n6464), .A1(n6504), .B0(n6463), .B1(n408), .Y(n7061) );
  NAND2X1 U4194 ( .A(n6437), .B(n7062), .Y(sram_addr_wait_r[5]) );
  OA22X4 U4195 ( .A0(n6464), .A1(n6521), .B0(n6463), .B1(n6976), .Y(n7062) );
  OAI2BB2XL U4196 ( .B0(n3355), .B1(median_sobel_inst_n206), .A0N(n6498), 
        .A1N(n3356), .Y(median_sobel_inst_med_sobel_e_wait_r[31]) );
  OAI2BB2XL U4198 ( .B0(n3355), .B1(median_sobel_inst_n217), .A0N(n6625), 
        .A1N(n3356), .Y(median_sobel_inst_med_sobel_e_wait_r[41]) );
  OAI2BB1X1 U4200 ( .A0N(n5779), .A1N(n822), .B0(n5778), .Y(n486) );
  NAND4X1 U4208 ( .A(n3047), .B(n6194), .C(n3044), .D(n7063), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]) );
  NAND2X2 U4209 ( .A(n6798), .B(n6214), .Y(n7063) );
  NAND3X1 U4210 ( .A(n5330), .B(n3672), .C(n3674), .Y(out_data_wait_r[4]) );
  XNOR2X1 U4214 ( .A(n5679), .B(n5678), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]) );
  OR2X4 U4215 ( .A(n3552), .B(conv_inst_n38), .Y(n4474) );
  OR2X1 U4219 ( .A(n843), .B(n5888), .Y(n5867) );
  OR2X1 U4221 ( .A(n797), .B(n5888), .Y(n5874) );
  OAI21XL U4232 ( .A0(n3919), .A1(median_sobel_inst_n154), .B0(n3918), .Y(
        n3920) );
  OR2X1 U4234 ( .A(n6504), .B(n6385), .Y(n6377) );
  OR2X1 U4235 ( .A(n6521), .B(n6385), .Y(n6373) );
  OR2X1 U4244 ( .A(n6715), .B(n6385), .Y(n6371) );
  OR2X1 U4247 ( .A(n424), .B(n6384), .Y(n6376) );
  AOI2BB2X1 U4257 ( .B0(n6783), .B1(n5889), .A0N(n4045), .A1N(n786), .Y(n5869)
         );
  AOI2BB2X1 U4258 ( .B0(n5885), .B1(n6541), .A0N(n4045), .A1N(n791), .Y(n5838)
         );
  AO21X1 U4271 ( .A0(n5200), .A1(n7064), .B0(n5564), .Y(n5053) );
  CLKINVX1 U4283 ( .A(n5197), .Y(n7064) );
  NAND2X1 U4286 ( .A(input_data_ready_r[6]), .B(n3356), .Y(n3366) );
  NOR2X1 U4287 ( .A(n5141), .B(conv_inst_conv_1_r[11]), .Y(n5142) );
  NAND2X1 U4293 ( .A(median_sobel_inst_G[0]), .B(n3356), .Y(n3357) );
  NAND2X1 U4296 ( .A(cnt[10]), .B(n5774), .Y(n5775) );
  OAI2BB1X2 U4301 ( .A0N(n6270), .A1N(n6275), .B0(n2828), .Y(n2949) );
  OAI2BB2X1 U4308 ( .B0(n5940), .B1(median_sobel_inst_data_i_r[7]), .A0N(
        median_sobel_inst_data_f_r[6]), .A1N(n3717), .Y(n3713) );
  OR2X2 U4312 ( .A(n6430), .B(n6844), .Y(n6431) );
  NAND2BX1 U4317 ( .AN(n5786), .B(n6734), .Y(n5776) );
  NOR2X1 U4320 ( .A(n6466), .B(n6417), .Y(n6427) );
  NOR2X1 U4324 ( .A(n6466), .B(n6465), .Y(n6467) );
  NOR2X1 U4328 ( .A(n6466), .B(n3578), .Y(n3577) );
  OR2X2 U4339 ( .A(n6430), .B(n6860), .Y(n6440) );
  NAND2X1 U4349 ( .A(n3365), .B(n3356), .Y(n3364) );
  NAND2X1 U4351 ( .A(n3360), .B(n3356), .Y(n3359) );
  NAND2X2 U4359 ( .A(n2749), .B(n3030), .Y(n3026) );
  NAND3BX4 U4364 ( .AN(n6020), .B(n3032), .C(n6887), .Y(n3036) );
  CLKINVX1 U4365 ( .A(n4966), .Y(n4235) );
  NAND2BX2 U4373 ( .AN(n2770), .B(input_data_ready_r[15]), .Y(n3895) );
  OAI2BB1X2 U4376 ( .A0N(n4911), .A1N(n4912), .B0(n4537), .Y(n4540) );
  OA22X4 U4409 ( .A0(n3708), .A1(median_sobel_inst_n38), .B0(n5911), .B1(
        median_sobel_inst_data_h_r[6]), .Y(n3007) );
  OAI2BB1X2 U4411 ( .A0N(n4787), .A1N(n4788), .B0(n4520), .Y(n4523) );
  OAI2BB1X2 U4423 ( .A0N(n5786), .A1N(n6311), .B0(n5763), .Y(n5774) );
  OAI2BB1X1 U4427 ( .A0N(n4576), .A1N(n5072), .B0(n3587), .Y(n3586) );
  OAI22XL U4430 ( .A0(n818), .A1(n6359), .B0(n6392), .B1(n6548), .Y(n6361) );
  MXI2X1 U4440 ( .A(x_r[2]), .B(n6648), .S0(n7065), .Y(n6459) );
  NOR2BX1 U4451 ( .AN(n6980), .B(n879), .Y(n7065) );
  NOR2BX1 U4453 ( .AN(conv_inst_conv_1_r[15]), .B(n2700), .Y(n3165) );
  AND3X6 U4456 ( .A(n4247), .B(n4248), .C(n4246), .Y(n5940) );
  NOR2X2 U4461 ( .A(n4401), .B(n7067), .Y(conv_inst_N287) );
  NOR2BX1 U4482 ( .AN(n5138), .B(conv_inst_cs_0_), .Y(n7067) );
  OAI2BB1X2 U4485 ( .A0N(n5501), .A1N(n5502), .B0(n3987), .Y(n4487) );
  NAND2BX1 U4498 ( .AN(n2894), .B(n5153), .Y(n2893) );
  NOR2X2 U4501 ( .A(n4793), .B(n4743), .Y(n4557) );
  OA22X4 U4542 ( .A0(n5910), .A1(median_sobel_inst_data_e_r[6]), .B0(
        median_sobel_inst_data_e_r[5]), .B1(n5909), .Y(n3276) );
  AOI21X2 U4544 ( .A0(n6111), .A1(n6112), .B0(n6110), .Y(n6113) );
  NAND2X2 U4545 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n24), .B(
        n5537), .Y(n5536) );
  CLKINVX1 U4561 ( .A(median_sobel_inst_data_h_r[6]), .Y(n3171) );
  OAI2BB1X1 U4566 ( .A0N(conv_inst_cs_0_), .A1N(n2817), .B0(conv_inst_n38), 
        .Y(n4401) );
  NAND2X1 U4575 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .Y(n4794) );
  AOI2BB1X1 U4579 ( .A0N(n7024), .A1N(n802), .B0(n800), .Y(n6455) );
  AOI2BB2X4 U4595 ( .B0(median_sobel_inst_data_a_r[3]), .B1(n2854), .A0N(n5850), .A1N(median_sobel_inst_data_d_r[2]), .Y(n2855) );
  NAND2BX1 U4597 ( .AN(n6185), .B(
        median_sobel_inst_u_sober_compare_submodule_n10), .Y(n3286) );
  NOR2BX2 U4600 ( .AN(n6087), .B(n3119), .Y(n3116) );
  OR2X1 U4628 ( .A(n6086), .B(n6082), .Y(n3119) );
  CLKINVX1 U4640 ( .A(n6108), .Y(n3134) );
  OAI21X1 U4641 ( .A0(n6109), .A1(n6108), .B0(n6107), .Y(n6110) );
  AND3X2 U4651 ( .A(n4100), .B(n4098), .C(n4099), .Y(n5853) );
  NAND2BX2 U4660 ( .AN(n2894), .B(n5148), .Y(n2891) );
  NOR2X1 U4673 ( .A(n3490), .B(n3502), .Y(n5444) );
  OAI2BB1X4 U4676 ( .A0N(n5990), .A1N(n5991), .B0(n5994), .Y(n5996) );
  NAND2X2 U4684 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .Y(n5373) );
  NAND3BX2 U4687 ( .AN(n4174), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[8]), .C(n4175), 
        .Y(n4178) );
  NAND2X2 U4689 ( .A(n2667), .B(n4315), .Y(n3218) );
  OR2X2 U4694 ( .A(n5147), .B(n5151), .Y(n2894) );
  AND3X4 U4723 ( .A(n3052), .B(n3050), .C(n7068), .Y(n3718) );
  NAND2BX1 U4736 ( .AN(median_sobel_inst_n409), .B(n4584), .Y(n7068) );
  OR2X4 U4739 ( .A(n4327), .B(n4079), .Y(n2863) );
  NAND3X4 U4752 ( .A(n4462), .B(n4461), .C(n4463), .Y(
        median_sobel_inst_data_c_r[6]) );
  NAND2BX1 U4753 ( .AN(n4172), .B(n4175), .Y(n4179) );
  OAI2BB2X2 U4754 ( .B0(median_sobel_inst_n254), .B1(n5927), .A0N(n4478), 
        .A1N(median_sobel_inst_n697), .Y(n2908) );
  NOR2BX2 U4759 ( .AN(n2756), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .Y(n6086) );
  NOR2X1 U4768 ( .A(n6645), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n55), .Y(n5132) );
  NAND2BX1 U4774 ( .AN(median_sobel_inst_u_sober_compare_submodule_n44), .B(
        n6179), .Y(n3290) );
  NAND2BX2 U4786 ( .AN(n6519), .B(n3287), .Y(n6185) );
  AND3X4 U4789 ( .A(n4121), .B(n4122), .C(n4123), .Y(n5850) );
  OA22X1 U4790 ( .A0(median_sobel_inst_u_median_filter_submodule_n806), .A1(
        median_sobel_inst_u_median_filter_submodule_n211), .B0(
        median_sobel_inst_u_median_filter_submodule_n231), .B1(
        median_sobel_inst_u_median_filter_submodule_n799), .Y(n5990) );
  AOI21X1 U4797 ( .A0(n2819), .A1(conv_inst_conv_1_r[12]), .B0(n4272), .Y(
        n7069) );
  NAND2BX1 U4801 ( .AN(median_sobel_inst_n378), .B(n3725), .Y(n4087) );
  CLKINVX3 U4827 ( .A(n6179), .Y(n6178) );
  AO22X4 U4831 ( .A0(n2819), .A1(conv_inst_conv_1_r[4]), .B0(n4274), .B1(
        conv_inst_conv_2_r[4]), .Y(n4207) );
  NOR2X1 U4832 ( .A(n4828), .B(n4826), .Y(n3440) );
  NOR2BX2 U4849 ( .AN(n3479), .B(median_sobel_inst_n341), .Y(n3004) );
  NAND2X2 U4859 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), .Y(n4925) );
  NAND2BX1 U4861 ( .AN(median_sobel_inst_n380), .B(n3725), .Y(n3807) );
  NAND2X1 U4868 ( .A(n5402), .B(median_sobel_inst_n697), .Y(n3805) );
  NAND2X1 U4870 ( .A(median_sobel_inst_n690), .B(n3479), .Y(n3211) );
  AOI22X4 U4872 ( .A0(n5415), .A1(median_sobel_inst_n688), .B0(n3477), .B1(
        n7030), .Y(n3623) );
  AOI2BB2X2 U4875 ( .B0(median_sobel_inst_n711), .B1(n3479), .A0N(n5001), 
        .A1N(median_sobel_inst_n429), .Y(n3898) );
  AOI2BB2X4 U4881 ( .B0(n3725), .B1(n7031), .A0N(median_sobel_inst_n406), 
        .A1N(n3484), .Y(n3137) );
  NOR2X1 U4892 ( .A(n3634), .B(median_sobel_inst_n383), .Y(n3639) );
  OAI2BB2X2 U4901 ( .B0(median_sobel_inst_u_median_filter_submodule_a4_r_5_), 
        .B1(n3969), .A0N(median_sobel_inst_u_median_filter_submodule_n130), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net22693), .Y(n3955)
         );
  NAND2X1 U4918 ( .A(median_sobel_inst_u_median_filter_submodule_net57373), 
        .B(n6882), .Y(n3543) );
  NAND2BX1 U4919 ( .AN(median_sobel_inst_n427), .B(n4403), .Y(n4028) );
  NAND2X1 U4937 ( .A(n2693), .B(n3902), .Y(n3398) );
  XNOR2X2 U4945 ( .A(n3314), .B(n3480), .Y(n3110) );
  AOI21X2 U4946 ( .A0(n4064), .A1(n4065), .B0(n4067), .Y(n3003) );
  NAND2X1 U4954 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(n3489), .Y(n4069) );
  CLKINVX1 U4959 ( .A(median_sobel_inst_u_median_filter_submodule_n152), .Y(
        n2880) );
  NOR2X1 U4973 ( .A(median_sobel_inst_u_median_filter_submodule_n810), .B(
        median_sobel_inst_u_median_filter_submodule_n152), .Y(n2879) );
  NOR2X4 U4989 ( .A(n6561), .B(n858), .Y(n3740) );
endmodule

