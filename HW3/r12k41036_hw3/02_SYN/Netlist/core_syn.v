/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12
// Date      : Mon Nov  4 15:03:45 2024
/////////////////////////////////////////////////////////////


module core ( i_clk, i_rst_n, i_op_valid, i_op_mode, o_op_ready, i_in_valid, 
        i_in_data, o_in_ready, o_out_valid, o_out_data );
  input [3:0] i_op_mode;
  input [7:0] i_in_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_op_valid, i_in_valid;
  output o_op_ready, o_in_ready, o_out_valid;
  wire   conv_out_valid_w, conv_isFirst_signal_r, conv_calc_done_r,
         med_sobel_isFirst_signal_r, med_done_w, N118, x_minus_one_r_2_,
         sram_data_out_r_1__0_, out_valid_wait_r, x_delay_r_1__1_,
         x_delay_r_1__0_, x_delay_r_0__1_, x_delay_r_0__0_, N688, N690, N691,
         N692, N693, N694, N695, N696, N697, N698, N699, N700, N701, N702,
         N703, N704, N705, N706, N707, N708, N709, N710, N711, N713, N714,
         N715, N716, N717, N718, N726, N730, N732, N755, N756, N757, N758,
         N759, N760, N761, N762, N785, N789, N790, N811, N812, N813, N814,
         N866, n384, n412, n420, n424, n436, n437, n439, n440, n441, n442,
         n443, n447, n465, n469, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n774, n778, n784, n7850, n787, n788, n7890, n7900, n791, n792,
         n793, n794, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n8110, n816, n819, n820, n821, n822, n823, n825, n826, n831, n835,
         n837, n839, n841, n847, n854, n856, n858, n861, n863, n865, n867,
         n869, n882, n885, n889, n892, n894, n913, n914, n920, n925, n931,
         n932, n933, n938, n940, n1068, n1080, n1081, n1232, n1354, n1404,
         n1451, n1452, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1462,
         conv_inst_n110, conv_inst_n109, conv_inst_n108, conv_inst_n99,
         conv_inst_n67, conv_inst_n65, conv_inst_n64, conv_inst_n63,
         conv_inst_n62, conv_inst_n57, conv_inst_n56, conv_inst_n50,
         conv_inst_n43, conv_inst_n42, conv_inst_n37, conv_inst_n36,
         conv_inst_n30, conv_inst_n10, conv_inst_n27, conv_inst_N287,
         conv_inst_N286, conv_inst_N285, conv_inst_N283, conv_inst_N282,
         conv_inst_N280, conv_inst_N279, conv_inst_N278, conv_inst_N277,
         conv_inst_N276, conv_inst_N275, conv_inst_N274, conv_inst_N273,
         conv_inst_N272, conv_inst_N271, conv_inst_N270, conv_inst_N269,
         conv_inst_N268, conv_inst_N267, conv_inst_N266, conv_inst_N265,
         conv_inst_N264, conv_inst_N263, conv_inst_N262, conv_inst_N261,
         conv_inst_N260, conv_inst_N259, conv_inst_N258, conv_inst_N257,
         conv_inst_N256, conv_inst_N255, conv_inst_N254, conv_inst_N253,
         conv_inst_N251, conv_inst_N249, conv_inst_N248, conv_inst_N246,
         conv_inst_N245, conv_inst_N244, conv_inst_N243, conv_inst_N242,
         conv_inst_N241, conv_inst_N240, conv_inst_N239, conv_inst_N238,
         conv_inst_N237, conv_inst_N236, conv_inst_N235, conv_inst_N234,
         conv_inst_N233, conv_inst_N232, conv_inst_N231, conv_inst_N229,
         conv_inst_N228, conv_inst_N227, conv_inst_N226, conv_inst_N225,
         conv_inst_N224, conv_inst_N223, conv_inst_N222, conv_inst_N221,
         conv_inst_N220, conv_inst_N219, conv_inst_N218, conv_inst_N217,
         conv_inst_N216, conv_inst_N215, conv_inst_N214, conv_inst_N213,
         conv_inst_N212, conv_inst_N211, conv_inst_N210, conv_inst_N209,
         conv_inst_N208, conv_inst_N207, conv_inst_N206, conv_inst_N205,
         conv_inst_N204, conv_inst_N203, conv_inst_N202, conv_inst_N201,
         conv_inst_N200, conv_inst_N199, conv_inst_N198, conv_inst_N197,
         conv_inst_N145, conv_inst_N144, conv_inst_N143, conv_inst_N142,
         conv_inst_N141, conv_inst_N140, conv_inst_N139, conv_inst_N138,
         conv_inst_N137, conv_inst_N136, conv_inst_N135, conv_inst_N134,
         conv_inst_N133, conv_inst_N132, conv_inst_N131, conv_inst_N130,
         conv_inst_N129, conv_inst_N128, conv_inst_N127, conv_inst_N126,
         conv_inst_N125, conv_inst_N124, conv_inst_N79, conv_inst_N78,
         conv_inst_N77, conv_inst_N76, conv_inst_N75, conv_inst_N74,
         conv_inst_N73, conv_inst_N72, conv_inst_N71, conv_inst_N70,
         conv_inst_N69, conv_inst_N68, conv_inst_N670, conv_inst_N66,
         conv_inst_N570, conv_inst_N560, conv_inst_cnt_0_,
         median_sobel_inst_n866, median_sobel_inst_n862,
         median_sobel_inst_n861, median_sobel_inst_n860,
         median_sobel_inst_n859, median_sobel_inst_n858,
         median_sobel_inst_n857, median_sobel_inst_n856,
         median_sobel_inst_n855, median_sobel_inst_n854,
         median_sobel_inst_n853, median_sobel_inst_n852,
         median_sobel_inst_n851, median_sobel_inst_n709,
         median_sobel_inst_n661, median_sobel_inst_n660,
         median_sobel_inst_n656, median_sobel_inst_n650,
         median_sobel_inst_n645, median_sobel_inst_n640,
         median_sobel_inst_n637, median_sobel_inst_n631,
         median_sobel_inst_n629, median_sobel_inst_n627,
         median_sobel_inst_n620, median_sobel_inst_n437,
         median_sobel_inst_n390, median_sobel_inst_n381,
         median_sobel_inst_n327, median_sobel_inst_n321,
         median_sobel_inst_n153, median_sobel_inst_n146,
         median_sobel_inst_n145, median_sobel_inst_n140,
         median_sobel_inst_n139, median_sobel_inst_n135,
         median_sobel_inst_n123, median_sobel_inst_n122,
         median_sobel_inst_n100, median_sobel_inst_n99, median_sobel_inst_n98,
         median_sobel_inst_n93, median_sobel_inst_n91, median_sobel_inst_n88,
         median_sobel_inst_n87, median_sobel_inst_n86, median_sobel_inst_n85,
         median_sobel_inst_n73, median_sobel_inst_n70, median_sobel_inst_n68,
         median_sobel_inst_n64, median_sobel_inst_n63, median_sobel_inst_n53,
         median_sobel_inst_n42, median_sobel_inst_n37, median_sobel_inst_n36,
         median_sobel_inst_n35, median_sobel_inst_n30, median_sobel_inst_n28,
         median_sobel_inst_n27, median_sobel_inst_n26,
         median_sobel_inst_net64424, median_sobel_inst_net64417,
         median_sobel_inst_net62749, median_sobel_inst_net60883,
         median_sobel_inst_net43895, median_sobel_inst_n619,
         median_sobel_inst_n618, median_sobel_inst_n617,
         median_sobel_inst_n616, median_sobel_inst_n614,
         median_sobel_inst_n612, median_sobel_inst_n610,
         median_sobel_inst_n608, median_sobel_inst_n587,
         median_sobel_inst_n586, median_sobel_inst_n583,
         median_sobel_inst_n581, median_sobel_inst_n579,
         median_sobel_inst_n578, median_sobel_inst_n577,
         median_sobel_inst_n576, median_sobel_inst_n575,
         median_sobel_inst_n574, median_sobel_inst_n573,
         median_sobel_inst_n572, median_sobel_inst_n571,
         median_sobel_inst_n570, median_sobel_inst_n569,
         median_sobel_inst_n568, median_sobel_inst_n567,
         median_sobel_inst_n566, median_sobel_inst_n565,
         median_sobel_inst_n564, median_sobel_inst_n563,
         median_sobel_inst_n562, median_sobel_inst_n554,
         median_sobel_inst_n553, median_sobel_inst_n552,
         median_sobel_inst_n547, median_sobel_inst_n546,
         median_sobel_inst_n545, median_sobel_inst_n544,
         median_sobel_inst_n543, median_sobel_inst_n542,
         median_sobel_inst_n541, median_sobel_inst_n540,
         median_sobel_inst_n539, median_sobel_inst_n538,
         median_sobel_inst_n537, median_sobel_inst_n536,
         median_sobel_inst_n535, median_sobel_inst_n534,
         median_sobel_inst_n533, median_sobel_inst_n532,
         median_sobel_inst_n531, median_sobel_inst_n530,
         median_sobel_inst_n529, median_sobel_inst_n528,
         median_sobel_inst_n527, median_sobel_inst_n525,
         median_sobel_inst_n524, median_sobel_inst_n523,
         median_sobel_inst_n516, median_sobel_inst_n515,
         median_sobel_inst_n513, median_sobel_inst_n512,
         median_sobel_inst_n511, median_sobel_inst_n505,
         median_sobel_inst_n503, median_sobel_inst_n502,
         median_sobel_inst_n501, median_sobel_inst_n500,
         median_sobel_inst_n499, median_sobel_inst_n497,
         median_sobel_inst_n495, median_sobel_inst_n494,
         median_sobel_inst_n493, median_sobel_inst_n492,
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
         median_sobel_inst_n439, median_sobel_inst_n438,
         median_sobel_inst_n436, median_sobel_inst_n435,
         median_sobel_inst_n434, median_sobel_inst_n432,
         median_sobel_inst_n430, median_sobel_inst_n429,
         median_sobel_inst_n428, median_sobel_inst_n426,
         median_sobel_inst_n425, median_sobel_inst_n424,
         median_sobel_inst_n418, median_sobel_inst_n415,
         median_sobel_inst_n411, median_sobel_inst_n404,
         median_sobel_inst_n402, median_sobel_inst_n399,
         median_sobel_inst_n398, median_sobel_inst_n395,
         median_sobel_inst_n394, median_sobel_inst_n393,
         median_sobel_inst_n392, median_sobel_inst_n391,
         median_sobel_inst_n389, median_sobel_inst_n388,
         median_sobel_inst_n387, median_sobel_inst_n386,
         median_sobel_inst_n385, median_sobel_inst_n384,
         median_sobel_inst_n383, median_sobel_inst_n382,
         median_sobel_inst_n379, median_sobel_inst_n377,
         median_sobel_inst_n376, median_sobel_inst_n375,
         median_sobel_inst_n374, median_sobel_inst_n373,
         median_sobel_inst_n371, median_sobel_inst_n369,
         median_sobel_inst_n368, median_sobel_inst_n367,
         median_sobel_inst_n366, median_sobel_inst_n365,
         median_sobel_inst_n364, median_sobel_inst_n362,
         median_sobel_inst_n360, median_sobel_inst_n359,
         median_sobel_inst_n358, median_sobel_inst_n357,
         median_sobel_inst_n356, median_sobel_inst_n355,
         median_sobel_inst_n354, median_sobel_inst_n353,
         median_sobel_inst_n352, median_sobel_inst_n351,
         median_sobel_inst_n350, median_sobel_inst_n349,
         median_sobel_inst_n348, median_sobel_inst_n347,
         median_sobel_inst_n346, median_sobel_inst_n345,
         median_sobel_inst_n344, median_sobel_inst_n343,
         median_sobel_inst_n341, median_sobel_inst_n339,
         median_sobel_inst_n338, median_sobel_inst_n337,
         median_sobel_inst_n336, median_sobel_inst_n334,
         median_sobel_inst_n331, median_sobel_inst_n330,
         median_sobel_inst_n329, median_sobel_inst_n325,
         median_sobel_inst_n324, median_sobel_inst_n320,
         median_sobel_inst_n319, median_sobel_inst_n266,
         median_sobel_inst_n264, median_sobel_inst_n263,
         median_sobel_inst_n262, median_sobel_inst_n260,
         median_sobel_inst_n258, median_sobel_inst_n257,
         median_sobel_inst_n256, median_sobel_inst_n255,
         median_sobel_inst_n254, median_sobel_inst_n253,
         median_sobel_inst_n252, median_sobel_inst_n250,
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
         median_sobel_inst_n223, median_sobel_inst_n222,
         median_sobel_inst_n220, median_sobel_inst_n219,
         median_sobel_inst_n218, median_sobel_inst_n217,
         median_sobel_inst_n216, median_sobel_inst_n215,
         median_sobel_inst_n214, median_sobel_inst_n213,
         median_sobel_inst_n212, median_sobel_inst_n211,
         median_sobel_inst_n210, median_sobel_inst_n209,
         median_sobel_inst_n208, median_sobel_inst_n207,
         median_sobel_inst_n206, median_sobel_inst_n205,
         median_sobel_inst_n204, median_sobel_inst_n203,
         median_sobel_inst_n202, median_sobel_inst_n201,
         median_sobel_inst_n200, median_sobel_inst_n199,
         median_sobel_inst_n198, median_sobel_inst_n197,
         median_sobel_inst_n196, median_sobel_inst_n195,
         median_sobel_inst_n194, median_sobel_inst_n193,
         median_sobel_inst_n192, median_sobel_inst_n191,
         median_sobel_inst_n190, median_sobel_inst_n189,
         median_sobel_inst_n188, median_sobel_inst_n187,
         median_sobel_inst_n186, median_sobel_inst_n185,
         median_sobel_inst_n184, median_sobel_inst_n183,
         median_sobel_inst_n182, median_sobel_inst_n181,
         median_sobel_inst_n180, median_sobel_inst_n179,
         median_sobel_inst_n177, median_sobel_inst_n176,
         median_sobel_inst_n175, median_sobel_inst_n174,
         median_sobel_inst_n173, median_sobel_inst_n172,
         median_sobel_inst_n171, median_sobel_inst_n170,
         median_sobel_inst_n169, median_sobel_inst_n168,
         median_sobel_inst_n167, median_sobel_inst_n166,
         median_sobel_inst_n165, median_sobel_inst_n164,
         median_sobel_inst_n163, median_sobel_inst_n161,
         median_sobel_inst_n159, median_sobel_inst_n158,
         median_sobel_inst_n157, median_sobel_inst_n156,
         median_sobel_inst_n155, median_sobel_inst_n154,
         median_sobel_inst_N116, median_sobel_inst_N115,
         median_sobel_inst_N114, median_sobel_inst_N113,
         median_sobel_inst_N112, median_sobel_inst_N96,
         median_sobel_inst_ns_0_,
         median_sobel_inst_u_median_filter_submodule_n709,
         median_sobel_inst_u_median_filter_submodule_n708,
         median_sobel_inst_u_median_filter_submodule_n707,
         median_sobel_inst_u_median_filter_submodule_n706,
         median_sobel_inst_u_median_filter_submodule_n705,
         median_sobel_inst_u_median_filter_submodule_n704,
         median_sobel_inst_u_median_filter_submodule_n703,
         median_sobel_inst_u_median_filter_submodule_n702,
         median_sobel_inst_u_median_filter_submodule_n701,
         median_sobel_inst_u_median_filter_submodule_n700,
         median_sobel_inst_u_median_filter_submodule_n699,
         median_sobel_inst_u_median_filter_submodule_n698,
         median_sobel_inst_u_median_filter_submodule_n696,
         median_sobel_inst_u_median_filter_submodule_n694,
         median_sobel_inst_u_median_filter_submodule_n690,
         median_sobel_inst_u_median_filter_submodule_n689,
         median_sobel_inst_u_median_filter_submodule_n688,
         median_sobel_inst_u_median_filter_submodule_n687,
         median_sobel_inst_u_median_filter_submodule_n686,
         median_sobel_inst_u_median_filter_submodule_n685,
         median_sobel_inst_u_median_filter_submodule_n684,
         median_sobel_inst_u_median_filter_submodule_n683,
         median_sobel_inst_u_median_filter_submodule_n682,
         median_sobel_inst_u_median_filter_submodule_n680,
         median_sobel_inst_u_median_filter_submodule_n678,
         median_sobel_inst_u_median_filter_submodule_n677,
         median_sobel_inst_u_median_filter_submodule_n676,
         median_sobel_inst_u_median_filter_submodule_n675,
         median_sobel_inst_u_median_filter_submodule_n674,
         median_sobel_inst_u_median_filter_submodule_n673,
         median_sobel_inst_u_median_filter_submodule_n672,
         median_sobel_inst_u_median_filter_submodule_n671,
         median_sobel_inst_u_median_filter_submodule_n670,
         median_sobel_inst_u_median_filter_submodule_n669,
         median_sobel_inst_u_median_filter_submodule_n668,
         median_sobel_inst_u_median_filter_submodule_n667,
         median_sobel_inst_u_median_filter_submodule_n549,
         median_sobel_inst_u_median_filter_submodule_n488,
         median_sobel_inst_u_median_filter_submodule_n395,
         median_sobel_inst_u_median_filter_submodule_n390,
         median_sobel_inst_u_median_filter_submodule_n376,
         median_sobel_inst_u_median_filter_submodule_n374,
         median_sobel_inst_u_median_filter_submodule_n372,
         median_sobel_inst_u_median_filter_submodule_n370,
         median_sobel_inst_u_median_filter_submodule_n367,
         median_sobel_inst_u_median_filter_submodule_n365,
         median_sobel_inst_u_median_filter_submodule_n360,
         median_sobel_inst_u_median_filter_submodule_n358,
         median_sobel_inst_u_median_filter_submodule_n355,
         median_sobel_inst_u_median_filter_submodule_n352,
         median_sobel_inst_u_median_filter_submodule_n348,
         median_sobel_inst_u_median_filter_submodule_n292,
         median_sobel_inst_u_median_filter_submodule_n288,
         median_sobel_inst_u_median_filter_submodule_n286,
         median_sobel_inst_u_median_filter_submodule_n282,
         median_sobel_inst_u_median_filter_submodule_n281,
         median_sobel_inst_u_median_filter_submodule_n274,
         median_sobel_inst_u_median_filter_submodule_n236,
         median_sobel_inst_u_median_filter_submodule_n222,
         median_sobel_inst_u_median_filter_submodule_n219,
         median_sobel_inst_u_median_filter_submodule_n217,
         median_sobel_inst_u_median_filter_submodule_n212,
         median_sobel_inst_u_median_filter_submodule_n211,
         median_sobel_inst_u_median_filter_submodule_n204,
         median_sobel_inst_u_median_filter_submodule_n203,
         median_sobel_inst_u_median_filter_submodule_n199,
         median_sobel_inst_u_median_filter_submodule_n198,
         median_sobel_inst_u_median_filter_submodule_n197,
         median_sobel_inst_u_median_filter_submodule_n165,
         median_sobel_inst_u_median_filter_submodule_n164,
         median_sobel_inst_u_median_filter_submodule_n161,
         median_sobel_inst_u_median_filter_submodule_n150,
         median_sobel_inst_u_median_filter_submodule_n149,
         median_sobel_inst_u_median_filter_submodule_n148,
         median_sobel_inst_u_median_filter_submodule_n131,
         median_sobel_inst_u_median_filter_submodule_n129,
         median_sobel_inst_u_median_filter_submodule_n126,
         median_sobel_inst_u_median_filter_submodule_n125,
         median_sobel_inst_u_median_filter_submodule_n122,
         median_sobel_inst_u_median_filter_submodule_n119,
         median_sobel_inst_u_median_filter_submodule_n117,
         median_sobel_inst_u_median_filter_submodule_n116,
         median_sobel_inst_u_median_filter_submodule_n114,
         median_sobel_inst_u_median_filter_submodule_n113,
         median_sobel_inst_u_median_filter_submodule_n112,
         median_sobel_inst_u_median_filter_submodule_n109,
         median_sobel_inst_u_median_filter_submodule_n108,
         median_sobel_inst_u_median_filter_submodule_n107,
         median_sobel_inst_u_median_filter_submodule_n106,
         median_sobel_inst_u_median_filter_submodule_n105,
         median_sobel_inst_u_median_filter_submodule_n99,
         median_sobel_inst_u_median_filter_submodule_n98,
         median_sobel_inst_u_median_filter_submodule_n94,
         median_sobel_inst_u_median_filter_submodule_n92,
         median_sobel_inst_u_median_filter_submodule_n91,
         median_sobel_inst_u_median_filter_submodule_n90,
         median_sobel_inst_u_median_filter_submodule_n78,
         median_sobel_inst_u_median_filter_submodule_n76,
         median_sobel_inst_u_median_filter_submodule_n71,
         median_sobel_inst_u_median_filter_submodule_n67,
         median_sobel_inst_u_median_filter_submodule_n66,
         median_sobel_inst_u_median_filter_submodule_n65,
         median_sobel_inst_u_median_filter_submodule_n64,
         median_sobel_inst_u_median_filter_submodule_n61,
         median_sobel_inst_u_median_filter_submodule_n60,
         median_sobel_inst_u_median_filter_submodule_n56,
         median_sobel_inst_u_median_filter_submodule_n53,
         median_sobel_inst_u_median_filter_submodule_n51,
         median_sobel_inst_u_median_filter_submodule_n50,
         median_sobel_inst_u_median_filter_submodule_n48,
         median_sobel_inst_u_median_filter_submodule_n46,
         median_sobel_inst_u_median_filter_submodule_n45,
         median_sobel_inst_u_median_filter_submodule_n44,
         median_sobel_inst_u_median_filter_submodule_n41,
         median_sobel_inst_u_median_filter_submodule_n38,
         median_sobel_inst_u_median_filter_submodule_n37,
         median_sobel_inst_u_median_filter_submodule_n36,
         median_sobel_inst_u_median_filter_submodule_n26,
         median_sobel_inst_u_median_filter_submodule_n24,
         median_sobel_inst_u_median_filter_submodule_n22,
         median_sobel_inst_u_median_filter_submodule_n19,
         median_sobel_inst_u_median_filter_submodule_net62055,
         median_sobel_inst_u_median_filter_submodule_net61277,
         median_sobel_inst_u_median_filter_submodule_net60646,
         median_sobel_inst_u_median_filter_submodule_net58959,
         median_sobel_inst_u_median_filter_submodule_net56734,
         median_sobel_inst_u_median_filter_submodule_net56609,
         median_sobel_inst_u_median_filter_submodule_net55584,
         median_sobel_inst_u_median_filter_submodule_net55441,
         median_sobel_inst_u_median_filter_submodule_net55277,
         median_sobel_inst_u_median_filter_submodule_net55220,
         median_sobel_inst_u_median_filter_submodule_net55085,
         median_sobel_inst_u_median_filter_submodule_net54975,
         median_sobel_inst_u_median_filter_submodule_net54951,
         median_sobel_inst_u_median_filter_submodule_net54904,
         median_sobel_inst_u_median_filter_submodule_net54885,
         median_sobel_inst_u_median_filter_submodule_net54874,
         median_sobel_inst_u_median_filter_submodule_net41723,
         median_sobel_inst_u_median_filter_submodule_net34517,
         median_sobel_inst_u_median_filter_submodule_net34515,
         median_sobel_inst_u_median_filter_submodule_net34511,
         median_sobel_inst_u_median_filter_submodule_net34505,
         median_sobel_inst_u_median_filter_submodule_net22675,
         median_sobel_inst_u_median_filter_submodule_net22670,
         median_sobel_inst_u_median_filter_submodule_net22653,
         median_sobel_inst_u_median_filter_submodule_net22631,
         median_sobel_inst_u_median_filter_submodule_net22629,
         median_sobel_inst_u_median_filter_submodule_net21368,
         median_sobel_inst_u_median_filter_submodule_net21366,
         median_sobel_inst_u_median_filter_submodule_net21363,
         median_sobel_inst_u_median_filter_submodule_n159,
         median_sobel_inst_u_median_filter_submodule_n85,
         median_sobel_inst_u_median_filter_submodule_b1_r_5_,
         median_sobel_inst_u_median_filter_submodule_a4_r_5_,
         median_sobel_inst_u_median_filter_submodule_a69_w,
         median_sobel_inst_u_median_filter_submodule_a39_w,
         median_sobel_inst_u_median_filter_submodule_a36_w,
         median_sobel_inst_u_median_filter_submodule_a58_w,
         median_sobel_inst_u_median_filter_submodule_a28_w,
         median_sobel_inst_u_median_filter_submodule_a25_w,
         median_sobel_inst_u_median_filter_submodule_a47_w,
         median_sobel_inst_u_median_filter_submodule_a17_w,
         median_sobel_inst_u_median_filter_submodule_a14_w,
         median_sobel_inst_u_sobel_gradient_submodule_n174,
         median_sobel_inst_u_sobel_gradient_submodule_n173,
         median_sobel_inst_u_sobel_gradient_submodule_n143,
         median_sobel_inst_u_sobel_gradient_submodule_n138,
         median_sobel_inst_u_sobel_gradient_submodule_n137,
         median_sobel_inst_u_sobel_gradient_submodule_n136,
         median_sobel_inst_u_sobel_gradient_submodule_n133,
         median_sobel_inst_u_sobel_gradient_submodule_n131,
         median_sobel_inst_u_sobel_gradient_submodule_n130,
         median_sobel_inst_u_sobel_gradient_submodule_n128,
         median_sobel_inst_u_sobel_gradient_submodule_n127,
         median_sobel_inst_u_sobel_gradient_submodule_n124,
         median_sobel_inst_u_sobel_gradient_submodule_n123,
         median_sobel_inst_u_sobel_gradient_submodule_n120,
         median_sobel_inst_u_sobel_gradient_submodule_n113,
         median_sobel_inst_u_sobel_gradient_submodule_n110,
         median_sobel_inst_u_sobel_gradient_submodule_n109,
         median_sobel_inst_u_sobel_gradient_submodule_n108,
         median_sobel_inst_u_sobel_gradient_submodule_n102,
         median_sobel_inst_u_sobel_gradient_submodule_n101,
         median_sobel_inst_u_sobel_gradient_submodule_n99,
         median_sobel_inst_u_sobel_gradient_submodule_n73,
         median_sobel_inst_u_sobel_gradient_submodule_n69,
         median_sobel_inst_u_sobel_gradient_submodule_n63,
         median_sobel_inst_u_sobel_gradient_submodule_n62,
         median_sobel_inst_u_sobel_gradient_submodule_n61,
         median_sobel_inst_u_sobel_gradient_submodule_n60,
         median_sobel_inst_u_sobel_gradient_submodule_n59,
         median_sobel_inst_u_sobel_gradient_submodule_n58,
         median_sobel_inst_u_sobel_gradient_submodule_n57,
         median_sobel_inst_u_sobel_gradient_submodule_n56,
         median_sobel_inst_u_sobel_gradient_submodule_n55,
         median_sobel_inst_u_sobel_gradient_submodule_n52,
         median_sobel_inst_u_sobel_gradient_submodule_n51,
         median_sobel_inst_u_sobel_gradient_submodule_n50,
         median_sobel_inst_u_sobel_gradient_submodule_n48,
         median_sobel_inst_u_sobel_gradient_submodule_n46,
         median_sobel_inst_u_sobel_gradient_submodule_n37,
         median_sobel_inst_u_sobel_gradient_submodule_n34,
         median_sobel_inst_u_sobel_gradient_submodule_n33,
         median_sobel_inst_u_sobel_gradient_submodule_n32,
         median_sobel_inst_u_sobel_gradient_submodule_n31,
         median_sobel_inst_u_sobel_gradient_submodule_n30,
         median_sobel_inst_u_sobel_gradient_submodule_n29,
         median_sobel_inst_u_sobel_gradient_submodule_n28,
         median_sobel_inst_u_sobel_gradient_submodule_n20,
         median_sobel_inst_u_sobel_gradient_submodule_n7,
         median_sobel_inst_u_sobel_gradient_submodule_n5,
         median_sobel_inst_u_sobel_gradient_submodule_net64662,
         median_sobel_inst_u_sobel_gradient_submodule_net64263,
         median_sobel_inst_u_sobel_gradient_submodule_net63936,
         median_sobel_inst_u_sobel_gradient_submodule_net61937,
         median_sobel_inst_u_sobel_gradient_submodule_net61071,
         median_sobel_inst_u_sobel_gradient_submodule_net50086,
         median_sobel_inst_u_sobel_gradient_submodule_net50088,
         median_sobel_inst_u_sobel_gradient_submodule_net49311,
         median_sobel_inst_u_sobel_gradient_submodule_net49279,
         median_sobel_inst_u_sobel_gradient_submodule_net49267,
         median_sobel_inst_u_sobel_gradient_submodule_net49244,
         median_sobel_inst_u_sobel_gradient_submodule_net41157,
         median_sobel_inst_u_sobel_gradient_submodule_N47,
         median_sobel_inst_u_sobel_gradient_submodule_N480,
         median_sobel_inst_u_sobel_gradient_submodule_n65,
         median_sobel_inst_u_sobel_gradient_submodule_N176,
         median_sobel_inst_u_sobel_gradient_submodule_N175,
         median_sobel_inst_u_sobel_gradient_submodule_N1740,
         median_sobel_inst_u_sobel_gradient_submodule_N1730,
         median_sobel_inst_u_sobel_gradient_submodule_N172,
         median_sobel_inst_u_sobel_gradient_submodule_N171,
         median_sobel_inst_u_sobel_gradient_submodule_N170,
         median_sobel_inst_u_sobel_gradient_submodule_N168,
         median_sobel_inst_u_sobel_gradient_submodule_N167,
         median_sobel_inst_u_sobel_gradient_submodule_N166,
         median_sobel_inst_u_sobel_gradient_submodule_N165,
         median_sobel_inst_u_sobel_gradient_submodule_N164,
         median_sobel_inst_u_sobel_gradient_submodule_N163,
         median_sobel_inst_u_sobel_gradient_submodule_N162,
         median_sobel_inst_u_sobel_gradient_submodule_N161,
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
         median_sobel_inst_u_sobel_gradient_submodule_N141,
         median_sobel_inst_u_sobel_gradient_submodule_N140,
         median_sobel_inst_u_sobel_gradient_submodule_N139,
         median_sobel_inst_u_sobel_gradient_submodule_N1380,
         median_sobel_inst_u_sobel_gradient_submodule_N1370,
         median_sobel_inst_u_sobel_gradient_submodule_N1360,
         median_sobel_inst_u_sobel_gradient_submodule_N135,
         median_sobel_inst_u_sobel_gradient_submodule_N134,
         median_sobel_inst_u_sobel_gradient_submodule_N1330,
         median_sobel_inst_u_sobel_gradient_submodule_N132,
         median_sobel_inst_u_sobel_gradient_submodule_N1310,
         median_sobel_inst_u_sobel_gradient_submodule_N129,
         median_sobel_inst_u_sobel_gradient_submodule_N1280,
         median_sobel_inst_u_sobel_gradient_submodule_N1270,
         median_sobel_inst_u_sobel_gradient_submodule_N126,
         median_sobel_inst_u_sobel_gradient_submodule_N125,
         median_sobel_inst_u_sobel_gradient_submodule_N1240,
         median_sobel_inst_u_sobel_gradient_submodule_N1230,
         median_sobel_inst_u_sobel_gradient_submodule_N121,
         median_sobel_inst_u_sobel_gradient_submodule_N1200,
         median_sobel_inst_u_sobel_gradient_submodule_N119,
         median_sobel_inst_u_sobel_gradient_submodule_N118,
         median_sobel_inst_u_sobel_gradient_submodule_N116,
         median_sobel_inst_u_sobel_gradient_submodule_N115,
         median_sobel_inst_u_sobel_gradient_submodule_N114,
         median_sobel_inst_u_sobel_gradient_submodule_N1130,
         median_sobel_inst_u_sobel_gradient_submodule_N112,
         median_sobel_inst_u_sobel_gradient_submodule_N111,
         median_sobel_inst_u_sobel_gradient_submodule_N1100,
         median_sobel_inst_u_sobel_gradient_submodule_N1090,
         median_sobel_inst_u_sobel_gradient_submodule_N1080,
         median_sobel_inst_u_sobel_gradient_submodule_N107,
         median_sobel_inst_u_sobel_gradient_submodule_N106,
         median_sobel_inst_u_sobel_gradient_submodule_N105,
         median_sobel_inst_u_sobel_gradient_submodule_N104,
         median_sobel_inst_u_sobel_gradient_submodule_N103,
         median_sobel_inst_u_sobel_gradient_submodule_N1020,
         median_sobel_inst_u_sobel_gradient_submodule_N1010,
         median_sobel_inst_u_sobel_gradient_submodule_N100,
         median_sobel_inst_u_sobel_gradient_submodule_N990,
         median_sobel_inst_u_sobel_gradient_submodule_N98,
         median_sobel_inst_u_sobel_gradient_submodule_N75,
         median_sobel_inst_u_sobel_gradient_submodule_N74,
         median_sobel_inst_u_sobel_gradient_submodule_N730,
         median_sobel_inst_u_sobel_gradient_submodule_N72,
         median_sobel_inst_u_sobel_gradient_submodule_N71,
         median_sobel_inst_u_sobel_gradient_submodule_N70,
         median_sobel_inst_u_sobel_gradient_submodule_N690,
         median_sobel_inst_u_sobel_gradient_submodule_N68,
         median_sobel_inst_u_sobel_gradient_submodule_N67,
         median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_,
         median_sobel_inst_u_sobel_gradient_submodule_N44,
         median_sobel_inst_u_sobel_gradient_submodule_N43,
         median_sobel_inst_u_sobel_gradient_submodule_N36,
         median_sobel_inst_u_sobel_gradient_submodule_N340,
         median_sobel_inst_u_sobel_gradient_submodule_N330,
         median_sobel_inst_u_sobel_gradient_submodule_N320,
         median_sobel_inst_u_sobel_gradient_submodule_N310,
         median_sobel_inst_u_sobel_gradient_submodule_N300,
         median_sobel_inst_u_sobel_gradient_submodule_N290,
         median_sobel_inst_u_sobel_gradient_submodule_N280,
         median_sobel_inst_u_sobel_gradient_submodule_N27,
         median_sobel_inst_u_sobel_gradient_submodule_N26,
         median_sobel_inst_u_sobel_gradient_submodule_N24,
         median_sobel_inst_u_sobel_gradient_submodule_N23,
         median_sobel_inst_u_sobel_gradient_submodule_N22,
         median_sobel_inst_u_sobel_gradient_submodule_N21,
         median_sobel_inst_u_sobel_gradient_submodule_N200,
         median_sobel_inst_u_sobel_gradient_submodule_N19,
         median_sobel_inst_u_sobel_gradient_submodule_N18,
         median_sobel_inst_u_sobel_gradient_submodule_N17,
         median_sobel_inst_u_sobel_gradient_submodule_N16,
         median_sobel_inst_u_sobel_gradient_submodule_N14,
         median_sobel_inst_u_sobel_gradient_submodule_N13,
         median_sobel_inst_u_sobel_gradient_submodule_N12,
         median_sobel_inst_u_sobel_gradient_submodule_N6,
         median_sobel_inst_u_sober_compare_submodule_n219,
         median_sobel_inst_u_sober_compare_submodule_n218,
         median_sobel_inst_u_sober_compare_submodule_n217,
         median_sobel_inst_u_sober_compare_submodule_n216,
         median_sobel_inst_u_sober_compare_submodule_n215,
         median_sobel_inst_u_sober_compare_submodule_n214,
         median_sobel_inst_u_sober_compare_submodule_n213,
         median_sobel_inst_u_sober_compare_submodule_n212,
         median_sobel_inst_u_sober_compare_submodule_n211,
         median_sobel_inst_u_sober_compare_submodule_n210,
         median_sobel_inst_u_sober_compare_submodule_n209,
         median_sobel_inst_u_sober_compare_submodule_n208,
         median_sobel_inst_u_sober_compare_submodule_n207,
         median_sobel_inst_u_sober_compare_submodule_n206,
         median_sobel_inst_u_sober_compare_submodule_n205,
         median_sobel_inst_u_sober_compare_submodule_n204,
         median_sobel_inst_u_sober_compare_submodule_n203,
         median_sobel_inst_u_sober_compare_submodule_n202,
         median_sobel_inst_u_sober_compare_submodule_n201,
         median_sobel_inst_u_sober_compare_submodule_n200,
         median_sobel_inst_u_sober_compare_submodule_n198,
         median_sobel_inst_u_sober_compare_submodule_n195,
         median_sobel_inst_u_sober_compare_submodule_n184,
         median_sobel_inst_u_sober_compare_submodule_n181,
         median_sobel_inst_u_sober_compare_submodule_n26,
         median_sobel_inst_u_sober_compare_submodule_n23,
         median_sobel_inst_u_sober_compare_submodule_n21,
         median_sobel_inst_u_sober_compare_submodule_n19,
         median_sobel_inst_u_sober_compare_submodule_n16,
         median_sobel_inst_u_sober_compare_submodule_n14,
         median_sobel_inst_u_sober_compare_submodule_n13,
         median_sobel_inst_u_sober_compare_submodule_n10,
         median_sobel_inst_u_sober_compare_submodule_n9,
         median_sobel_inst_u_sober_compare_submodule_n6,
         median_sobel_inst_u_sober_compare_submodule_n4,
         median_sobel_inst_u_sober_compare_submodule_n3,
         median_sobel_inst_u_sober_compare_submodule_n2,
         median_sobel_inst_u_sober_compare_submodule_n1,
         median_sobel_inst_u_sober_compare_submodule_net62914,
         median_sobel_inst_u_sober_compare_submodule_net62112,
         median_sobel_inst_u_sober_compare_submodule_net60984,
         median_sobel_inst_u_sober_compare_submodule_net60499,
         median_sobel_inst_u_sober_compare_submodule_net60411,
         median_sobel_inst_u_sober_compare_submodule_net56546,
         median_sobel_inst_u_sober_compare_submodule_net56177,
         median_sobel_inst_u_sober_compare_submodule_n163,
         median_sobel_inst_u_sober_compare_submodule_n161,
         median_sobel_inst_u_sober_compare_submodule_n158,
         median_sobel_inst_u_sober_compare_submodule_n155,
         median_sobel_inst_u_sober_compare_submodule_n152,
         median_sobel_inst_u_sober_compare_submodule_n151,
         median_sobel_inst_u_sober_compare_submodule_n147,
         median_sobel_inst_u_sober_compare_submodule_n144,
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
         median_sobel_inst_u_sober_compare_submodule_n72,
         median_sobel_inst_u_sober_compare_submodule_n69,
         median_sobel_inst_u_sober_compare_submodule_n64,
         median_sobel_inst_u_sober_compare_submodule_n63,
         median_sobel_inst_u_sober_compare_submodule_n62,
         median_sobel_inst_u_sober_compare_submodule_n54,
         median_sobel_inst_u_sober_compare_submodule_n52,
         median_sobel_inst_u_sober_compare_submodule_N1260,
         median_sobel_inst_u_sober_compare_submodule_N1250,
         median_sobel_inst_u_sober_compare_submodule_N1240,
         median_sobel_inst_u_sober_compare_submodule_N1230,
         median_sobel_inst_u_sober_compare_submodule_N1220,
         median_sobel_inst_u_sober_compare_submodule_N1210,
         median_sobel_inst_u_sober_compare_submodule_N1200,
         median_sobel_inst_u_sober_compare_submodule_N1190,
         median_sobel_inst_u_sober_compare_submodule_N1180,
         median_sobel_inst_u_sober_compare_submodule_N1170,
         median_sobel_inst_u_sober_compare_submodule_N1160,
         median_sobel_inst_u_sober_compare_submodule_N30,
         median_sobel_inst_u_sober_compare_submodule_N29, n2699, n2701, n2705,
         n2706, n2707, n2715, n2716, n2717, n2718, n2720, n2721, n2722, n2723,
         n2724, n2725, n2726, n2727, n2728, n2729, n2730, n2731, n2732, n2733,
         n2734, n2735, n2736, n2737, n2738, n2740, n2741, n2742, n2743, n2744,
         n2745, n2747, n2748, n2749, n2750, n2751, n2752, n2753, n2754, n2755,
         n2756, n2757, n2758, n2761, n2762, n2764, n2766, n2767, n2768, n2769,
         n2770, n2771, n2772, n2773, n2775, n2778, n2779, n2780, n2781, n2782,
         n2783, n2784, n2785, n2786, n2787, n2789, n2790, n2791, n2792, n2794,
         n2795, n2796, n2797, n2798, n2799, n2800, n2801, n2802, n2803, n2804,
         n2805, n2806, n2807, n2808, n2809, n2810, n2811, n2812, n2813, n2814,
         n2815, n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823, n2824,
         n2825, n2826, n2827, n2828, n2829, n2830, n2831, n2833, n2834, n2835,
         n2836, n2837, n2838, n2840, n2841, n2842, n2843, n2844, n2845, n2846,
         n2847, n2848, n2849, n2850, n2851, n2852, n2854, n2855, n2856, n2858,
         n2859, n2860, n2861, n2862, n2863, n2864, n2865, n2866, n2868, n2869,
         n2870, n2873, n2874, n2875, n2876, n2877, n2878, n2879, n2880, n2881,
         n2884, n2885, n2886, n2887, n2888, n2889, n2890, n2892, n2893, n2895,
         n2896, n2897, n2898, n2899, n2900, n2901, n2902, n2903, n2904, n2905,
         n2906, n2907, n2908, n2909, n2910, n2911, n2912, n2913, n2915, n2916,
         n2917, n2918, n2919, n2920, n2921, n2922, n2923, n2924, n2925, n2926,
         n2927, n2928, n2929, n2930, n2931, n2932, n2933, n2934, n2935, n2936,
         n2937, n2938, n2939, n2940, n2941, n2942, n2943, n2945, n2946, n2947,
         n2948, n2949, n2950, n2951, n2952, n2953, n2954, n2955, n2956, n2957,
         n2958, n2959, n2960, n2961, n2962, n2963, n2964, n2965, n2966, n2969,
         n2970, n2971, n2972, n2973, n2975, n2976, n2977, n2979, n2980, n2981,
         n2982, n2983, n2984, n2985, n2986, n2987, n2988, n2989, n2990, n2992,
         n2993, n2994, n2995, n2996, n2997, n2998, n2999, n3000, n3001, n3002,
         n3003, n3004, n3005, n3006, n3007, n3008, n3009, n3010, n3011, n3012,
         n3013, n3014, n3015, n3016, n3017, n3018, n3020, n3021, n3022, n3024,
         n3025, n3026, n3027, n3028, n3029, n3031, n3032, n3033, n3035, n3038,
         n3039, n3040, n3041, n3042, n3043, n3045, n3046, n3047, n3048, n3049,
         n3051, n3052, n3053, n3054, n3055, n3056, n3057, n3058, n3059, n3060,
         n3061, n3062, n3063, n3064, n3065, n3066, n3067, n3068, n3069, n3070,
         n3071, n3072, n3073, n3074, n3075, n3076, n3077, n3078, n3079, n3080,
         n3081, n3082, n3083, n3084, n3085, n3086, n3087, n3088, n3091, n3092,
         n3093, n3094, n3095, n3096, n3097, n3098, n3099, n3100, n3101, n3102,
         n3103, n3104, n3105, n3106, n3107, n3108, n3109, n3110, n3111, n3112,
         n3114, n3115, n3116, n3117, n3118, n3119, n3121, n3123, n3124, n3125,
         n3126, n3127, n3128, n3130, n3131, n3132, n3133, n3134, n3135, n3136,
         n3137, n3138, n3139, n3140, n3141, n3142, n3143, n3144, n3145, n3146,
         n3147, n3150, n3151, n3152, n3153, n3154, n3159, n3161, n3163, n3164,
         n3165, n3166, n3167, n3168, n3170, n3171, n3172, n3173, n3174, n3175,
         n3176, n3177, n3178, n3179, n3180, n3181, n3182, n3183, n3184, n3185,
         n3186, n3187, n3188, n3189, n3190, n3192, n3193, n3194, n3195, n3197,
         n3199, n3200, n3201, n3202, n3203, n3204, n3206, n3207, n3208, n3210,
         n3211, n3212, n3213, n3214, n3215, n3216, n3217, n3218, n3219, n3220,
         n3222, n3224, n3225, n3226, n3228, n3229, n3230, n3231, n3232, n3233,
         n3235, n3236, n3239, n3240, n3241, n3242, n3243, n3245, n3246, n3247,
         n3249, n3250, n3251, n3252, n3253, n3254, n3255, n3256, n3257, n3258,
         n3259, n3260, n3261, n3262, n3263, n3265, n3266, n3267, n3268, n3269,
         n3271, n3272, n3273, n3274, n3275, n3276, n3277, n3278, n3280, n3281,
         n3282, n3283, n3284, n3285, n3286, n3287, n3289, n3290, n3291, n3292,
         n3293, n3294, n3295, n3297, n3299, n3300, n3302, n3303, n3305, n3306,
         n3308, n3309, n3310, n3311, n3312, n3314, n3315, n3316, n3317, n3318,
         n3319, n3320, n3321, n3322, n3323, n3324, n3326, n3327, n3328, n3329,
         n3331, n3332, n3333, n3334, n3336, n3337, n3338, n3339, n3340, n3342,
         n3343, n3344, n3345, n3347, n3348, n3349, n3350, n3351, n3352, n3355,
         n3356, n3357, n3358, n3359, n3360, n3362, n3363, n3364, n3365, n3367,
         n3368, n3369, n3370, n3371, n3372, n3373, n3374, n3375, n3376, n3377,
         n3378, n3379, n3380, n3381, n3382, n3383, n3384, n3385, n3386, n3387,
         n3388, n3389, n3390, n3392, n3393, n3394, n3395, n3396, n3397, n3398,
         n3400, n3401, n3402, n3403, n3404, n3405, n3406, n3407, n3408, n3409,
         n3410, n3411, n3412, n3413, n3415, n3417, n3418, n3420, n3421, n3422,
         n3423, n3424, n3425, n3427, n3428, n3430, n3431, n3432, n3433, n3434,
         n3435, n3436, n3437, n3438, n3439, n3440, n3442, n3443, n3445, n3446,
         n3448, n3449, n3450, n3451, n3452, n3453, n3454, n3455, n3456, n3458,
         n3459, n3461, n3462, n3464, n3465, n3466, n3468, n3469, n3470, n3471,
         n3472, n3473, n3474, n3475, n3476, n3477, n3478, n3479, n3480, n3481,
         n3482, n3483, n3484, n3485, n3486, n3487, n3488, n3491, n3492, n3493,
         n3494, n3495, n3496, n3497, n3498, n3500, n3501, n3502, n3503, n3504,
         n3505, n3507, n3508, n3509, n3510, n3511, n3512, n3513, n3514, n3515,
         n3516, n3517, n3518, n3519, n3520, n3521, n3522, n3523, n3524, n3526,
         n3527, n3528, n3529, n3530, n3531, n3532, n3533, n3534, n3535, n3536,
         n3537, n3538, n3539, n3540, n3541, n3542, n3543, n3544, n3546, n3547,
         n3548, n3549, n3550, n3551, n3554, n3555, n3556, n3557, n3558, n3559,
         n3560, n3561, n3562, n3563, n3564, n3566, n3567, n3568, n3569, n3570,
         n3571, n3573, n3574, n3575, n3576, n3577, n3578, n3579, n3580, n3581,
         n3582, n3583, n3584, n3585, n3587, n3589, n3590, n3591, n3592, n3593,
         n3594, n3595, n3596, n3599, n3600, n3601, n3603, n3605, n3606, n3609,
         n3610, n3611, n3612, n3613, n3614, n3615, n3616, n3617, n3619, n3620,
         n3621, n3622, n3623, n3624, n3625, n3626, n3627, n3628, n3629, n3630,
         n3633, n3635, n3636, n3637, n3638, n3639, n3640, n3641, n3642, n3643,
         n3644, n3645, n3646, n3647, n3648, n3649, n3651, n3652, n3653, n3655,
         n3656, n3657, n3658, n3659, n3661, n3662, n3663, n3665, n3666, n3668,
         n3669, n3670, n3671, n3672, n3673, n3674, n3675, n3676, n3677, n3678,
         n3679, n3680, n3681, n3682, n3684, n3685, n3686, n3687, n3688, n3689,
         n3690, n3691, n3692, n3693, n3694, n3695, n3696, n3700, n3705, n3706,
         n3707, n3708, n3709, n3711, n3712, n3713, n3714, n3715, n3716, n3717,
         n3718, n3719, n3720, n3721, n3722, n3723, n3724, n3725, n3726, n3727,
         n3728, n3729, n3730, n3731, n3732, n3733, n3735, n3736, n3737, n3738,
         n3739, n3740, n3741, n3742, n3744, n3745, n3746, n3747, n3748, n3749,
         n3750, n3752, n3753, n3754, n3755, n3756, n3757, n3758, n3759, n3760,
         n3761, n3762, n3763, n3764, n3766, n3768, n3769, n3770, n3771, n3772,
         n3773, n3774, n3775, n3778, n3779, n3780, n3781, n3783, n3784, n3785,
         n3786, n3787, n3788, n3789, n3790, n3792, n3793, n3794, n3795, n3796,
         n3797, n3798, n3799, n3800, n3801, n3802, n3803, n3804, n3805, n3806,
         n3807, n3808, n3809, n3810, n3811, n3812, n3813, n3814, n3815, n3817,
         n3818, n3819, n3820, n3821, n3822, n3823, n3824, n3825, n3826, n3827,
         n3828, n3829, n3830, n3831, n3832, n3833, n3834, n3836, n3837, n3838,
         n3839, n3840, n3841, n3842, n3843, n3844, n3845, n3846, n3847, n3848,
         n3849, n3850, n3851, n3852, n3853, n3854, n3855, n3856, n3857, n3858,
         n3860, n3861, n3862, n3863, n3864, n3865, n3867, n3868, n3869, n3870,
         n3871, n3872, n3873, n3874, n3875, n3876, n3877, n3878, n3879, n3881,
         n3882, n3883, n3884, n3885, n3886, n3887, n3888, n3889, n3890, n3891,
         n3892, n3893, n3894, n3895, n3896, n3897, n3898, n3899, n3900, n3903,
         n3904, n3905, n3906, n3907, n3908, n3909, n3910, n3911, n3913, n3914,
         n3915, n3916, n3917, n3918, n3919, n3921, n3922, n3923, n3924, n3925,
         n3926, n3927, n3928, n3929, n3930, n3931, n3932, n3933, n3934, n3935,
         n3936, n3937, n3938, n3939, n3940, n3941, n3942, n3943, n3944, n3945,
         n3946, n3947, n3948, n3949, n3950, n3952, n3953, n3954, n3955, n3956,
         n3959, n3960, n3961, n3962, n3963, n3964, n3965, n3966, n3967, n3968,
         n3969, n3970, n3971, n3972, n3973, n3974, n3975, n3976, n3977, n3978,
         n3979, n3980, n3981, n3982, n3983, n3984, n3985, n3986, n3987, n3988,
         n3989, n3990, n3991, n3992, n3993, n3994, n3995, n3996, n3997, n3998,
         n3999, n4000, n4001, n4002, n4003, n4006, n4007, n4008, n4010, n4011,
         n4012, n4013, n4014, n4016, n4017, n4018, n4019, n4020, n4021, n4022,
         n4023, n4024, n4025, n4026, n4027, n4028, n4029, n4030, n4031, n4032,
         n4033, n4034, n4035, n4036, n4037, n4039, n4040, n4041, n4042, n4043,
         n4044, n4045, n4046, n4047, n4048, n4049, n4050, n4051, n4053, n4054,
         n4055, n4056, n4057, n4058, n4059, n4060, n4061, n4062, n4063, n4064,
         n4065, n4066, n4067, n4068, n4069, n4070, n4071, n4072, n4073, n4074,
         n4075, n4076, n4077, n4078, n4079, n4080, n4081, n4082, n4083, n4084,
         n4085, n4086, n4087, n4088, n4090, n4092, n4093, n4094, n4095, n4096,
         n4097, n4098, n4099, n4100, n4101, n4102, n4103, n4104, n4105, n4106,
         n4107, n4108, n4109, n4110, n4111, n4112, n4113, n4114, n4115, n4116,
         n4117, n4118, n4119, n4120, n4121, n4122, n4123, n4124, n4125, n4126,
         n4127, n4128, n4129, n4130, n4131, n4132, n4133, n4134, n4135, n4136,
         n4137, n4138, n4139, n4140, n4141, n4142, n4143, n4144, n4145, n4146,
         n4147, n4148, n4149, n4150, n4151, n4152, n4153, n4154, n4155, n4156,
         n4157, n4159, n4160, n4161, n4162, n4163, n4164, n4165, n4166, n4167,
         n4168, n4169, n4170, n4171, n4172, n4173, n4174, n4175, n4176, n4178,
         n4179, n4180, n4181, n4182, n4183, n4184, n4185, n4186, n4187, n4188,
         n4189, n4190, n4191, n4192, n4193, n4194, n4195, n4196, n4197, n4198,
         n4199, n4200, n4201, n4202, n4203, n4204, n4205, n4206, n4207, n4208,
         n4209, n4210, n4211, n4212, n4213, n4214, n4215, n4216, n4217, n4218,
         n4219, n4220, n4222, n4223, n4224, n4225, n4227, n4228, n4229, n4230,
         n4231, n4232, n4233, n4234, n4235, n4236, n4237, n4238, n4239, n4240,
         n4241, n4242, n4243, n4244, n4245, n4246, n4247, n4248, n4249, n4250,
         n4251, n4252, n4253, n4254, n4255, n4256, n4257, n4258, n4259, n4260,
         n4261, n4262, n4263, n4264, n4265, n4266, n4267, n4268, n4269, n4270,
         n4271, n4272, n4273, n4274, n4275, n4276, n4277, n4278, n4279, n4280,
         n4281, n4282, n4283, n4284, n4285, n4286, n4287, n4288, n4289, n4290,
         n4291, n4292, n4293, n4294, n4295, n4296, n4297, n4299, n4300, n4301,
         n4303, n4304, n4305, n4306, n4307, n4308, n4309, n4310, n4311, n4312,
         n4313, n4314, n4315, n4316, n4317, n4318, n4319, n4320, n4321, n4323,
         n4324, n4325, n4326, n4327, n4328, n4329, n4330, n4331, n4332, n4333,
         n4334, n4335, n4336, n4337, n4338, n4339, n4340, n4341, n4342, n4343,
         n4344, n4345, n4346, n4347, n4348, n4349, n4350, n4351, n4352, n4353,
         n4354, n4355, n4356, n4357, n4359, n4360, n4361, n4362, n4363, n4364,
         n4365, n4366, n4367, n4368, n4369, n4370, n4371, n4372, n4373, n4374,
         n4375, n4376, n4377, n4378, n4379, n4380, n4381, n4382, n4383, n4384,
         n4385, n4386, n4387, n4388, n4389, n4390, n4391, n4392, n4393, n4394,
         n4395, n4396, n4397, n4398, n4399, n4400, n4401, n4402, n4403, n4404,
         n4405, n4406, n4407, n4408, n4409, n4410, n4411, n4412, n4413, n4414,
         n4415, n4416, n4417, n4418, n4419, n4420, n4421, n4422, n4423, n4424,
         n4425, n4426, n4427, n4428, n4429, n4430, n4431, n4432, n4433, n4434,
         n4435, n4436, n4437, n4438, n4439, n4440, n4441, n4442, n4443, n4444,
         n4445, n4446, n4447, n4448, n4449, n4450, n4451, n4452, n4453, n4454,
         n4455, n4456, n4458, n4459, n4460, n4461, n4462, n4463, n4464, n4465,
         n4466, n4467, n4469, n4470, n4471, n4472, n4473, n4474, n4475, n4476,
         n4477, n4478, n4479, n4480, n4481, n4482, n4483, n4484, n4485, n4486,
         n4487, n4488, n4489, n4490, n4491, n4492, n4493, n4494, n4495, n4496,
         n4497, n4498, n4499, n4500, n4501, n4502, n4503, n4504, n4505, n4506,
         n4507, n4508, n4509, n4510, n4511, n4512, n4513, n4514, n4515, n4516,
         n4517, n4518, n4519, n4520, n4521, n4522, n4523, n4524, n4525, n4526,
         n4527, n4528, n4529, n4530, n4531, n4532, n4533, n4534, n4535, n4536,
         n4537, n4538, n4539, n4540, n4542, n4543, n4544, n4545, n4546, n4547,
         n4548, n4549, n4550, n4551, n4552, n4553, n4554, n4555, n4556, n4557,
         n4558, n4559, n4560, n4561, n4562, n4563, n4564, n4565, n4566, n4567,
         n4568, n4569, n4570, n4571, n4572, n4573, n4574, n4575, n4576, n4577,
         n4578, n4579, n4580, n4581, n4582, n4583, n4584, n4585, n4586, n4587,
         n4588, n4589, n4591, n4592, n4593, n4594, n4595, n4596, n4597, n4598,
         n4599, n4600, n4601, n4602, n4603, n4604, n4605, n4606, n4607, n4608,
         n4609, n4610, n4611, n4612, n4613, n4614, n4615, n4616, n4617, n4618,
         n4619, n4620, n4621, n4622, n4623, n4624, n4625, n4626, n4627, n4628,
         n4629, n4630, n4631, n4632, n4633, n4634, n4635, n4636, n4637, n4638,
         n4639, n4640, n4641, n4642, n4643, n4644, n4645, n4646, n4647, n4648,
         n4649, n4650, n4651, n4652, n4653, n4654, n4655, n4656, n4657, n4659,
         n4660, n4661, n4662, n4663, n4664, n4665, n4666, n4667, n4668, n4669,
         n4670, n4671, n4672, n4673, n4674, n4675, n4676, n4677, n4678, n4679,
         n4680, n4681, n4682, n4683, n4684, n4685, n4686, n4687, n4688, n4689,
         n4690, n4691, n4692, n4693, n4694, n4695, n4698, n4699, n4700, n4701,
         n4702, n4703, n4704, n4705, n4706, n4707, n4708, n4709, n4710, n4711,
         n4712, n4713, n4714, n4715, n4716, n4717, n4718, n4719, n4720, n4721,
         n4722, n4723, n4724, n4725, n4726, n4727, n4728, n4729, n4730, n4731,
         n4732, n4733, n4734, n4735, n4736, n4737, n4738, n4739, n4740, n4741,
         n4742, n4743, n4744, n4745, n4746, n4747, n4748, n4749, n4750, n4751,
         n4752, n4753, n4754, n4755, n4756, n4757, n4758, n4759, n4760, n4761,
         n4762, n4763, n4764, n4765, n4766, n4767, n4768, n4769, n4770, n4771,
         n4772, n4773, n4774, n4775, n4776, n4777, n4778, n4779, n4780, n4781,
         n4782, n4783, n4784, n4785, n4786, n4787, n4788, n4789, n4790, n4791,
         n4792, n4793, n4794, n4795, n4796, n4797, n4798, n4799, n4800, n4801,
         n4802, n4803, n4804, n4805, n4806, n4807, n4808, n4809, n4810, n4811,
         n4812, n4813, n4814, n4815, n4816, n4817, n4818, n4819, n4820, n4821,
         n4822, n4823, n4824, n4825, n4826, n4827, n4828, n4829, n4831, n4832,
         n4833, n4835, n4836, n4837, n4838, n4839, n4840, n4841, n4842, n4843,
         n4844, n4845, n4846, n4849, n4850, n4851, n4852, n4853, n4854, n4855,
         n4856, n4857, n4858, n4859, n4860, n4861, n4862, n4863, n4864, n4865,
         n4866, n4867, n4868, n4869, n4870, n4871, n4872, n4873, n4874, n4875,
         n4876, n4877, n4878, n4879, n4880, n4881, n4882, n4883, n4884, n4885,
         n4886, n4887, n4888, n4889, n4890, n4891, n4892, n4893, n4894, n4895,
         n4896, n4897, n4898, n4899, n4900, n4901, n4902, n4903, n4904, n4905,
         n4906, n4907, n4908, n4909, n4910, n4911, n4912, n4913, n4914, n4915,
         n4916, n4917, n4918, n4919, n4920, n4921, n4922, n4923, n4924, n4925,
         n4926, n4927, n4928, n4929, n4930, n4931, n4932, n4933, n4934, n4935,
         n4936, n4937, n4938, n4939, n4940, n4941, n4942, n4943, n4944, n4945,
         n4946, n4947, n4948, n4949, n4950, n4951, n4952, n4953, n4954, n4955,
         n4956, n4957, n4958, n4959, n4960, n4961, n4962, n4963, n4964, n4965,
         n4966, n4967, n4968, n4969, n4970, n4972, n4973, n4974, n4975, n4976,
         n4977, n4978, n4979, n4980, n4981, n4982, n4983, n4984, n4985, n4986,
         n4987, n4988, n4989, n4990, n4991, n4992, n4993, n4994, n4995, n4996,
         n4997, n4998, n4999, n5000, n5001, n5002, n5003, n5004, n5005, n5006,
         n5007, n5008, n5009, n5010, n5011, n5012, n5013, n5014, n5015, n5016,
         n5017, n5018, n5019, n5020, n5021, n5022, n5023, n5024, n5025, n5026,
         n5027, n5028, n5029, n5030, n5031, n5032, n5033, n5034, n5035, n5036,
         n5037, n5038, n5039, n5040, n5041, n5042, n5043, n5044, n5045, n5046,
         n5047, n5048, n5049, n5050, n5051, n5052, n5053, n5054, n5055, n5056,
         n5057, n5058, n5059, n5060, n5061, n5062, n5063, n5064, n5065, n5066,
         n5067, n5068, n5069, n5070, n5071, n5072, n5073, n5074, n5075, n5076,
         n5077, n5078, n5079, n5080, n5081, n5082, n5083, n5084, n5085, n5086,
         n5087, n5088, n5089, n5090, n5091, n5092, n5093, n5094, n5095, n5096,
         n5098, n5099, n5100, n5101, n5103, n5104, n5105, n5106, n5107, n5108,
         n5109, n5110, n5111, n5113, n5114, n5115, n5116, n5117, n5118, n5119,
         n5120, n5121, n5122, n5123, n5124, n5125, n5126, n5127, n5128, n5129,
         n5130, n5131, n5132, n5133, n5134, n5135, n5136, n5137, n5138, n5139,
         n5140, n5141, n5142, n5143, n5144, n5145, n5146, n5147, n5148, n5149,
         n5150, n5151, n5152, n5153, n5154, n5155, n5156, n5157, n5158, n5161,
         n5162, n5163, n5164, n5165, n5166, n5167, n5168, n5169, n5170, n5171,
         n5172, n5173, n5174, n5175, n5176, n5177, n5178, n5179, n5180, n5181,
         n5182, n5183, n5184, n5185, n5186, n5187, n5188, n5189, n5190, n5191,
         n5193, n5194, n5195, n5196, n5197, n5198, n5199, n5200, n5201, n5202,
         n5203, n5204, n5205, n5206, n5207, n5208, n5209, n5210, n5211, n5212,
         n5213, n5214, n5215, n5216, n5217, n5218, n5219, n5220, n5221, n5222,
         n5223, n5224, n5225, n5226, n5227, n5228, n5229, n5230, n5231, n5232,
         n5233, n5234, n5235, n5236, n5237, n5238, n5239, n5240, n5241, n5242,
         n5243, n5244, n5245, n5246, n5247, n5248, n5249, n5250, n5251, n5252,
         n5253, n5254, n5255, n5256, n5257, n5258, n5259, n5260, n5261, n5262,
         n5263, n5264, n5265, n5266, n5269, n5270, n5271, n5272, n5273, n5274,
         n5277, n5278, n5279, n5280, n5281, n5282, n5283, n5284, n5285, n5286,
         n5287, n5288, n5289, n5290, n5291, n5292, n5293, n5294, n5295, n5296,
         n5297, n5298, n5299, n5300, n5301, n5302, n5303, n5304, n5305, n5306,
         n5307, n5308, n5309, n5310, n5311, n5312, n5313, n5314, n5315, n5316,
         n5317, n5318, n5319, n5320, n5321, n5322, n5323, n5324, n5325, n5326,
         n5327, n5328, n5329, n5330, n5331, n5332, n5333, n5334, n5335, n5336,
         n5337, n5338, n5339, n5340, n5341, n5342, n5343, n5344, n5345, n5346,
         n5347, n5348, n5349, n5350, n5351, n5352, n5353, n5354, n5355, n5356,
         n5357, n5358, n5359, n5360, n5361, n5362, n5363, n5364, n5365, n5366,
         n5367, n5368, n5369, n5370, n5371, n5372, n5373, n5374, n5375, n5376,
         n5377, n5378, n5379, n5380, n5381, n5382, n5383, n5384, n5385, n5386,
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
         n5497, n5498, n5499, n5500, n5501, n5502, n5503, n5504, n5505, n5506,
         n5507, n5508, n5509, n5510, n5511, n5512, n5513, n5514, n5515, n5516,
         n5517, n5518, n5519, n5520, n5521, n5522, n5523, n5524, n5525, n5526,
         n5527, n5528, n5529, n5530, n5531, n5532, n5533, n5534, n5535, n5536,
         n5537, n5538, n5539, n5540, n5541, n5542, n5543, n5544, n5545, n5546,
         n5547, n5548, n5549, n5550, n5551, n5552, n5553, n5554, n5555, n5556,
         n5557, n5558, n5559, n5560, n5561, n5563, n5564, n5565, n5566, n5567,
         n5568, n5569, n5570, n5571, n5572, n5573, n5574, n5576, n5577, n5578,
         n5579, n5580, n5581, n5582, n5583, n5584, n5585, n5586, n5587, n5588,
         n5589, n5590, n5591, n5592, n5593, n5594, n5595, n5596, n5597, n5598,
         n5599, n5600, n5601, n5602, n5603, n5604, n5606, n5607, n5608, n5609,
         n5610, n5611, n5612, n5613, n5614, n5615, n5616, n5617, n5618, n5619,
         n5620, n5621, n5622, n5623, n5624, n5625, n5626, n5627, n5628, n5629,
         n5630, n5631, n5632, n5633, n5634, n5635, n5636, n5637, n5638, n5639,
         n5640, n5641, n5642, n5643, n5644, n5645, n5646, n5647, n5648, n5649,
         n5650, n5651, n5652, n5653, n5654, n5655, n5656, n5657, n5658, n5660,
         n5661, n5662, n5663, n5664, n5665, n5666, n5667, n5668, n5669, n5670,
         n5671, n5672, n5673, n5674, n5675, n5676, n5677, n5678, n5679, n5680,
         n5681, n5682, n5683, n5684, n5685, n5686, n5687, n5688, n5689, n5690,
         n5691, n5692, n5693, n5694, n5695, n5696, n5697, n5698, n5699, n5700,
         n5701, n5702, n5703, n5704, n5705, n5706, n5707, n5708, n5709, n5710,
         n5711, n5712, n5713, n5714, n5715, n5716, n5717, n5720, n5721, n5722,
         n5723, n5724, n5725, n5726, n5727, n5728, n5729, n5730, n5731, n5732,
         n5733, n5734, n5736, n5737, n5738, n5739, n5740, n5741, n5742, n5743,
         n5744, n5745, n5746, n5747, n5748, n5749, n5750, n5751, n5753, n5754,
         n5755, n5756, n5757, n5759, n5760, n5761, n5762, n5763, n5764, n5765,
         n5766, n5767, n5768, n5769, n5770, n5771, n5772, n5773, n5774, n5775,
         n5776, n5777, n5778, n5779, n5780, n5781, n5782, n5783, n5784, n5785,
         n5786, n5787, n5788, n5789, n5790, n5791, n5792, n5793, n5794, n5796,
         n5797, n5798, n5799, n5800, n5801, n5802, n5803, n5804, n5805, n5806,
         n5807, n5808, n5809, n5810, n5811, n5812, n5813, n5814, n5815, n5816,
         n5817, n5818, n5819, n5820, n5821, n5822, n5823, n5824, n5825, n5826,
         n5827, n5828, n5829, n5830, n5831, n5832, n5833, n5834, n5835, n5836,
         n5837, n5838, n5839, n5840, n5841, n5842, n5843, n5844, n5845, n5846,
         n5847, n5848, n5849, n5850, n5851, n5852, n5853, n5854, n5855, n5856,
         n5857, n5858, n5859, n5860, n5861, n5862, n5864, n5865, n5866, n5867,
         n5868, n5869, n5870, n5871, n5872, n5873, n5874, n5875, n5876, n5877,
         n5878, n5879, n5880, n5881, n5882, n5883, n5884, n5885, n5886, n5887,
         n5888, n5889, n5890, n5891, n5892, n5893, n5894, n5895, n5896, n5899,
         n5900, n5901, n5902, n5903, n5904, n5905, n5906, n5907, n5908, n5909,
         n5910, n5911, n5912, n5913, n5914, n5915, n5916, n5917, n5918, n5919,
         n5920, n5921, n5922, n5923, n5924, n5925, n5926, n5927, n5928, n5929,
         n5930, n5931, n5932, n5933, n5934, n5935, n5936, n5937, n5938, n5939,
         n5940, n5941, n5942, n5943, n5944, n5945, n5946, n5947, n5948, n5949,
         n5950, n5951, n5952, n5953, n5954, n5955, n5956, n5957, n5958, n5959,
         n5960, n5961, n5962, n5963, n5964, n5965, n5968, n5969, n5970, n5971,
         n5972, n5973, n5974, n5975, n5976, n5979, n5980, n5981, n5982, n5983,
         n5984, n5985, n5986, n5987, n5988, n5989, n5992, n5993, n5994, n5995,
         n5996, n5997, n5998, n5999, n6000, n6001, n6002, n6003, n6004, n6005,
         n6006, n6007, n6008, n6009, n6011, n6012, n6013, n6014, n6015, n6017,
         n6018, n6019, n6020, n6021, n6022, n6023, n6024, n6025, n6026, n6027,
         n6028, n6029, n6030, n6031, n6032, n6033, n6034, n6035, n6036, n6037,
         n6038, n6039, n6040, n6041, n6042, n6043, n6044, n6046, n6048, n6049,
         n6050, n6051, n6052, n6053, n6054, n6055, n6056, n6057, n6058, n6059,
         n6060, n6061, n6062, n6063, n6064, n6065, n6066, n6069, n6070, n6071,
         n6072, n6073, n6074, n6075, n6076, n6077, n6078, n6079, n6080, n6081,
         n6082, n6083, n6084, n6085, n6086, n6087, n6088, n6089, n6090, n6091,
         n6092, n6093, n6094, n6096, n6097, n6098, n6099, n6100, n6101, n6102,
         n6103, n6104, n6105, n6106, n6107, n6108, n6109, n6110, n6111, n6112,
         n6113, n6114, n6115, n6116, n6117, n6118, n6119, n6120, n6121, n6122,
         n6123, n6124, n6125, n6126, n6127, n6128, n6129, n6130, n6131, n6132,
         n6133, n6134, n6135, n6136, n6137, n6138, n6139, n6140, n6142, n6143,
         n6146, n6147, n6148, n6149, n6150, n6151, n6152, n6153, n6154, n6155,
         n6156, n6157, n6158, n6159, n6160, n6161, n6162, n6163, n6165, n6166,
         n6168, n6169, n6170, n6171, n6172, n6173, n6174, n6175, n6176, n6177,
         n6178, n6179, n6180, n6181, n6182, n6183, n6184, n6185, n6186, n6187,
         n6188, n6189, n6190, n6191, n6192, n6194, n6195, n6196, n6197, n6198,
         n6199, n6200, n6201, n6202, n6203, n6204, n6205, n6206, n6207, n6208,
         n6209, n6210, n6211, n6212, n6213, n6214, n6215, n6216, n6217, n6219,
         n6220, n6221, n6222, n6223, n6224, n6225, n6226, n6227, n6228, n6229,
         n6230, n6231, n6232, n6233, n6234, n6235, n6236, n6237, n6238, n6239,
         n6240, n6241, n6242, n6243, n6244, n6245, n6246, n6247, n6248, n6249,
         n6250, n6251, n6252, n6253, n6254, n6255, n6256, n6257, n6258, n6259,
         n6260, n6261, n6262, n6263, n6264, n6265, n6266, n6267, n6268, n6269,
         n6270, n6271, n6272, n6273, n6274, n6275, n6276, n6277, n6278, n6279,
         n6280, n6281, n6282, n6283, n6284, n6285, n6286, n6287, n6288, n6289,
         n6290, n6291, n6292, n6293, n6294, n6295, n6296, n6297, n6298, n6299,
         n6300, n6301, n6302, n6303, n6304, n6305, n6306, n6307, n6308, n6309,
         n6310, n6311, n6312, n6313, n6314, n6315, n6316, n6317, n6318, n6319,
         n6320, n6321, n6322, n6323, n6324, n6325, n6326, n6327, n6328, n6329,
         n6330, n6331, n6332, n6333, n6334, n6335, n6336, n6337, n6338, n6339,
         n6340, n6341, n6342, n6343, n6344, n6345, n6346, n6347, n6348, n6349,
         n6350, n6351, n6352, n6353, n6354, n6355, n6356, n6357, n6358, n6359,
         n6360, n6361, n6362, n6363, n6364, n6365, n6366, n6367, n6368, n6369,
         n6370, n6371, n6372, n6373, n6374, n6375, n6376, n6377, n6378, n6380,
         n6381, n6382, n6383, n6384, n6385, n6386, n6387, n6388, n6389, n6390,
         n6391, n6392, n6393, n6394, n6395, n6396, n6397, n6398, n6399, n6400,
         n6401, n6402, n6403, n6404, n6405, n6406, n6407, n6408, n6409, n6410,
         n6411, n6412, n6413, n6414, n6415, n6416, n6417, n6418, n6419, n6420,
         n6421, n6422, n6423, n6424, n6425, n6426, n6427, n6428, n6429, n6430,
         n6431, n6432, n6433, n6434, n6435, n6436, n6437, n6438, n6439, n6440,
         n6441, n6442, n6443, n6444, n6445, n6446, n6447, n6448, n6449, n6450,
         n6451, n6452, n6453, n6454, n6455, n6456, n6457, n6458, n6459, n6460,
         n6461, n6462, n6463, n6464, n6465, n6466, n6467, n6468, n6469, n6470,
         n6471, n6472, n6473, n6474, n6475, n6476, n6477, n6478, n6479, n6480,
         n6481, n6482, n6483, n6484, n6485, n6486, n6487, n6488, n6489, n6490,
         n6491, n6492, n6493, n6494, n6495, n6496, n6497, n6498, n6499, n6500,
         n6501, n6502, n6503, n6504, n6505, n6506, n6507, n6508, n6509, n6511,
         n6512, n6513, n6514, n6515, n6516, n6517, n6518, n6519, n6520, n6521,
         n6522, n6523, n6524, n6525, n6526, n6527, n6528, n6529, n6530, n6531,
         n6532, n6533, n6534, n6535, n6536, n6537, n6538, n6539, n6540, n6542,
         n6544, n6545, n6546, n6547, n6548, n6549, n6550, n6551, n6552, n6553,
         n6554, n6555, n6556, n6557, n6558, n6559, n6560, n6561, n6562, n6563,
         n6564, n6565, n6566, n6567, n6568, n6569, n6570, n6571, n6572, n6573,
         n6574, n6575, n6576, n6577, n6578, n6579, n6580, n6581, n6582, n6583,
         n6584, n6585, n6586, n6587, n6588, n6589, n6590, n6591, n6592, n6593,
         n6594, n6595, n6596, n6597, n6598, n6599, n6600, n6601, n6602, n6603,
         n6604, n6605, n6606, n6607, n6608, n6609, n6610, n6611, n6612, n6613,
         n6614, n6615, n6616, n6617, n6618, n6619, n6620, n6621, n6622, n6623,
         n6624, n6625, n6626, n6627, n6628, n6629, n6630, n6631, n6632, n6633,
         n6634, n6635, n6636, n6637, n6638, n6639, n6640, n6641, n6642, n6643,
         n6644, n6645, n6646, n6647, n6648, n6649, n6650, n6651, n6652, n6653,
         n6654, n6655, n6656, n6657, n6658, n6659, n6660, n6661, n6662, n6663,
         n6664, n6665, n6666, n6667, n6668, n6669, n6670, n6672, n6673, n6674,
         n6675, n6676, n6677, n6678, n6679, n6680, n6681, n6682, n6683, n6684,
         n6685, n6686, n6687, n6688, n6689, n6690, n6691, n6692, n6693, n6694,
         n6695, n6696, n6697, n6698, n6699, n6700, n6701, n6702, n6703, n6704,
         n6705, n6706, n6707, n6708, n6709, n6710, n6711, n6712, n6713, n6714,
         n6715, n6716, n6717, n6718, n6719, n6720, n6721, n6722, n6723, n6724,
         n6725, n6726, n6727, n6728, n6729, n6730, n6731, n6732, n6733, n6734,
         n6735, n6736, n6737, n6738, n6739, n6740, n6741, n6742, n6743, n6744,
         n6745, n6746, n6747, n6748, n6749, n6750, n6751, n6752, n6753, n6754,
         n6755, n6756, n6757, n6758, n6759, n6760, n6761, n6762, n6763, n6764,
         n6765, n6766, n6767, n6768, n6769, n6770, n6771, n6772, n6773, n6774,
         n6775, n6776, n6777, n6778, n6779, n6780, n6781, n6782, n6783, n6784,
         n6785, n6786, n6787, n6788, n6789, n6790, n6791, n6792, n6793, n6794,
         n6795, n6796, n6797, n6798, n6799, n6800, n6801, n6802, n6803, n6804,
         n6805, n6806, n6807, n6808, n6809, n6810, n6811, n6812, n6813, n6814,
         n6815, n6816, n6817, n6818, n6819, n6820, n6821, n6822, n6823, n6824,
         n6825, n6826, n6827, n6828, n6829, n6830, n6831, n6832, n6833, n6834,
         n6835, n6836, n6837, n6838, n6839, n6840, n6841, n6842, n6843, n6844,
         n6845, n6846, n6847, n6848, n6849, n6850, n6851, n6852, n6853, n6854,
         n6855, n6856, n6857, n6858, n6859, n6860, n6861, n6862, n6863, n6864,
         n6865, n6866, n6867, n6868, n6869, n6870, n6871, n6872, n6873, n6874,
         n6875, n6876, n6877, n6878, n6879, n6880, n6881, n6882, n6883, n6884,
         n6885, n6886, n6887, n6888, n6889, n6890, n6891, n6892, n6893, n6894,
         n6895, n6896, n6897, n6898, n6899, n6900, n6901, n6902, n6903, n6904,
         n6905, n6906, n6907, n6908, n6909, n6910, n6911, n6912, n6913, n6914,
         n6915, n6916, n6917, n6918, n6919, n6920, n6921, n6922, n6923, n6924,
         n6925, n6926, n6927, n6928, n6929, n6930, n6931, n6932, n6933, n6934,
         n6935, n6936, n6937, n6938, n6939, n6940, n6941, n6942, n6943, n6944,
         n6945, n6946, n6947, n6948, n6949, n6950, n6951, n6952, n6953, n6954,
         n6955, n6956, n6958, n6959, n6960, n6962, n6963, n6964, n6966, n6967,
         n6968, n6969, n6970, n6971, n6972, n6974, n6977, n6978, n6979, n6980,
         n6982, n6983, n6984, n6985, n6986, n6987, n6988, n6989, n6990, n6991,
         n6992, n6993, n6994, n6995, n6996, n6997, n6998, n6999, n7000, n7001,
         n7002, n7003, n7004, n7005, n7006, n7007, n7008, n7009, n7010, n7011,
         n7012, n7013, n7014, n7015, n7016, n7017, n7018, n7019, n7020, n7021,
         n7022, n7023, n7024, n7025, n7027, n7028, n7029, n7030, n7031, n7032,
         n7033, n7035, n7037, n7039, n7040, n7043;
  wire   [31:0] sram_data_out_w;
  wire   [3:0] sram_wen_ready_r;
  wire   [35:0] sram_addr_w;
  wire   [7:0] in_data_r;
  wire   [10:0] conv_result_w;
  wire   [13:11] result_w;
  wire   [10:1] cnt;
  wire   [31:4] input_data_ready_r;
  wire   [3:0] op_mode_r;
  wire   [31:0] sram_addr_wait_r;
  wire   [4:1] z_r;
  wire   [2:0] y_r;
  wire   [2:0] x_r;
  wire   [2:1] x_plus_one_r;
  wire   [2:1] x_plus_two_r;
  wire   [7:0] pre_state;
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
  wire   [9:0] conv_inst_data_bcd_w;
  wire   [8:0] conv_inst_data_abc_w;
  wire   [83:0] median_sobel_inst_med_sobel_e_wait_r;
  wire   [7:0] median_sobel_inst_angle;
  wire   [43:0] median_sobel_inst_G;
  wire   [7:0] median_sobel_inst_data_i_r;
  wire   [7:0] median_sobel_inst_data_h_r;
  wire   [7:1] median_sobel_inst_data_g_r;
  wire   [7:0] median_sobel_inst_data_f_r;
  wire   [7:0] median_sobel_inst_data_e_r;
  wire   [7:1] median_sobel_inst_data_d_r;
  wire   [7:0] median_sobel_inst_data_c_r;
  wire   [7:0] median_sobel_inst_data_b_r;
  wire   [7:0] median_sobel_inst_data_a_r;
  wire   [10:0] median_sobel_inst_sobel_out_data_w;
  wire   [7:0] median_sobel_inst_out_data_w;
  wire   [3:0] median_sobel_inst_cnt;
  wire   [6:2] median_sobel_inst_u_median_filter_submodule_b9_r;
  wire   [6:0] median_sobel_inst_u_median_filter_submodule_b5_r;
  wire   [6:1] median_sobel_inst_u_median_filter_submodule_a5_r;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a9;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a6;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a3;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a8;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a5;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a2;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a7;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a4;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_a1;
  wire   [1:0] median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r;
  wire   [12:10] median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r;
  wire   [15:10] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r;
  wire   [12:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r;
  wire   [11:1] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r;
  wire   [21:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs;
  wire   [27:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay;
  wire   [3:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_delay;
  wire   [3:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_delay;
  wire   [9:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_abs;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_imm;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_imm;
  wire   [7:5] median_sobel_inst_u_sobel_gradient_submodule_Gx2_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_r;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gx1_r;
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
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p7_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p6_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p4_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p3_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p2_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p1_r;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_b;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_a;

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
  DFFRX4 input_data_ready_r_reg_29_ ( .D(N716), .CK(i_clk), .RN(n6963), .Q(
        input_data_ready_r[29]), .QN(n6634) );
  DFFRX4 input_data_ready_r_reg_21_ ( .D(N708), .CK(i_clk), .RN(n6988), .Q(
        input_data_ready_r[21]), .QN(n6546) );
  DFFRX4 input_data_ready_r_reg_13_ ( .D(N700), .CK(i_clk), .RN(n6959), .Q(
        input_data_ready_r[13]), .QN(n6545) );
  DFFRX4 input_data_ready_r_reg_8_ ( .D(N695), .CK(i_clk), .RN(n6989), .Q(
        n6558), .QN(n938) );
  DFFRX4 op_mode_r_reg_1_ ( .D(n441), .CK(i_clk), .RN(n6960), .Q(op_mode_r[1]), 
        .QN(n6941) );
  DFFRX4 input_data_ready_r_reg_9_ ( .D(N696), .CK(i_clk), .RN(n6985), .Q(
        n6926), .QN(n925) );
  DFFRX4 x_origin_r_reg_1_ ( .D(n488), .CK(i_clk), .RN(n6989), .Q(n6692), .QN(
        n1354) );
  DFFRX1 med_sobel_r_reg ( .D(n1462), .CK(i_clk), .RN(n6974), .QN(n6872) );
  DFFRX1 sram_addr_ready_r_reg_0__8_ ( .D(sram_addr_wait_r[7]), .CK(i_clk), 
        .RN(n6968), .Q(sram_addr_w[8]), .QN(n412) );
  DFFRX1 sram_addr_ready_r_reg_0__7_ ( .D(sram_addr_wait_r[6]), .CK(i_clk), 
        .RN(n6990), .Q(sram_addr_w[7]) );
  DFFRX1 sram_addr_ready_r_reg_0__6_ ( .D(sram_addr_wait_r[5]), .CK(i_clk), 
        .RN(n6972), .Q(sram_addr_w[6]) );
  DFFRX1 sram_addr_ready_r_reg_0__5_ ( .D(sram_addr_wait_r[4]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[5]) );
  DFFRX1 sram_addr_ready_r_reg_0__4_ ( .D(sram_addr_wait_r[3]), .CK(i_clk), 
        .RN(n6971), .Q(sram_addr_w[4]) );
  DFFRX1 sram_addr_ready_r_reg_0__3_ ( .D(sram_addr_wait_r[2]), .CK(i_clk), 
        .RN(n6971), .Q(sram_addr_w[3]) );
  DFFRX1 sram_addr_ready_r_reg_1__8_ ( .D(sram_addr_wait_r[15]), .CK(i_clk), 
        .RN(n6990), .Q(sram_addr_w[17]), .QN(n420) );
  DFFRX1 sram_addr_ready_r_reg_1__7_ ( .D(sram_addr_wait_r[14]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[16]) );
  DFFRX1 sram_addr_ready_r_reg_1__6_ ( .D(sram_addr_wait_r[13]), .CK(i_clk), 
        .RN(n6980), .Q(sram_addr_w[15]) );
  DFFRX1 sram_addr_ready_r_reg_1__5_ ( .D(sram_addr_wait_r[12]), .CK(i_clk), 
        .RN(n6967), .Q(sram_addr_w[14]) );
  DFFRX1 sram_addr_ready_r_reg_1__4_ ( .D(sram_addr_wait_r[11]), .CK(i_clk), 
        .RN(n6977), .Q(sram_addr_w[13]) );
  DFFRX1 sram_addr_ready_r_reg_1__3_ ( .D(sram_addr_wait_r[10]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[12]) );
  DFFRX1 sram_addr_ready_r_reg_1__1_ ( .D(sram_addr_wait_r[8]), .CK(i_clk), 
        .RN(n6969), .Q(sram_addr_w[10]) );
  DFFRX1 sram_addr_ready_r_reg_2__8_ ( .D(sram_addr_wait_r[23]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[26]) );
  DFFRX1 sram_addr_ready_r_reg_2__7_ ( .D(sram_addr_wait_r[22]), .CK(i_clk), 
        .RN(n6980), .Q(sram_addr_w[25]) );
  DFFRX1 sram_addr_ready_r_reg_2__5_ ( .D(sram_addr_wait_r[20]), .CK(i_clk), 
        .RN(n6969), .Q(sram_addr_w[23]) );
  DFFRX1 sram_addr_ready_r_reg_2__3_ ( .D(sram_addr_wait_r[18]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[21]) );
  DFFRX1 sram_addr_ready_r_reg_2__2_ ( .D(sram_addr_wait_r[17]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[20]) );
  DFFRX1 sram_addr_ready_r_reg_3__6_ ( .D(sram_addr_wait_r[29]), .CK(i_clk), 
        .RN(n6969), .Q(sram_addr_w[33]) );
  DFFRX1 sram_addr_ready_r_reg_3__4_ ( .D(sram_addr_wait_r[27]), .CK(i_clk), 
        .RN(n6966), .Q(sram_addr_w[31]) );
  DFFRX1 y_r_reg_1_ ( .D(n1454), .CK(i_clk), .RN(n6980), .Q(y_r[1]) );
  DFFRX1 x_minus_one_r_reg_2_ ( .D(N726), .CK(i_clk), .RN(n6966), .Q(
        x_minus_one_r_2_) );
  DFFSX1 sram_wen_ready_r_reg_3_ ( .D(N814), .CK(i_clk), .SN(n6982), .Q(
        sram_wen_ready_r[3]), .QN(n6800) );
  DFFSX1 sram_wen_ready_r_reg_0_ ( .D(N811), .CK(i_clk), .SN(n6982), .Q(
        sram_wen_ready_r[0]) );
  DFFSX1 sram_wen_ready_r_reg_1_ ( .D(N812), .CK(i_clk), .SN(n6982), .Q(
        sram_wen_ready_r[1]), .QN(n6816) );
  DFFSX1 sram_wen_ready_r_reg_2_ ( .D(N813), .CK(i_clk), .SN(n6982), .Q(
        sram_wen_ready_r[2]), .QN(n6817) );
  DFFRX1 x_plus_one_r_reg_2_ ( .D(n2699), .CK(i_clk), .RN(n6968), .Q(
        x_plus_one_r[2]) );
  DFFSX1 pre_state_reg_1__3_ ( .D(pre_state[3]), .CK(i_clk), .SN(n6982), .Q(
        pre_state[7]) );
  DFFRX1 pre_state_reg_1__1_ ( .D(pre_state[1]), .CK(i_clk), .RN(n6978), .Q(
        pre_state[5]), .QN(n933) );
  DFFRX1 x_plus_two_r_reg_2_ ( .D(N732), .CK(i_clk), .RN(n6978), .Q(
        x_plus_two_r[2]) );
  DFFRX1 pre_state_reg_2__0_ ( .D(pre_state[4]), .CK(i_clk), .RN(n6980), .Q(
        n931) );
  DFFRX2 cnt_reg_8_ ( .D(n476), .CK(i_clk), .RN(n6985), .Q(cnt[8]), .QN(n6547)
         );
  DFFSX1 pre_state_reg_2__2_ ( .D(pre_state[6]), .CK(i_clk), .SN(n6982), .QN(
        n1080) );
  DFFRX1 x_r_reg_2_ ( .D(N757), .CK(i_clk), .RN(n6969), .Q(x_r[2]), .QN(n6932)
         );
  DFFRX2 cnt_reg_4_ ( .D(n480), .CK(i_clk), .RN(n6991), .Q(cnt[4]), .QN(n6711)
         );
  DFFSX1 pre_state_reg_1__2_ ( .D(pre_state[2]), .CK(i_clk), .SN(n6982), .Q(
        pre_state[6]), .QN(n1081) );
  DFFRX1 pre_state_reg_1__0_ ( .D(pre_state[0]), .CK(i_clk), .RN(n6969), .Q(
        pre_state[4]) );
  DFFRX2 cnt_reg_3_ ( .D(n481), .CK(i_clk), .RN(n6991), .Q(cnt[3]), .QN(n6567)
         );
  DFFRX1 display_done_r_reg ( .D(n6997), .CK(i_clk), .RN(n6963), .QN(n384) );
  DFFRX1 x_delay_r_reg_0__1_ ( .D(x_r[1]), .CK(i_clk), .RN(n6970), .Q(
        x_delay_r_0__1_) );
  DFFRX1 in_data_r_reg_7_ ( .D(i_in_data[7]), .CK(i_clk), .RN(n6970), .Q(
        in_data_r[7]) );
  DFFRX1 in_data_r_reg_6_ ( .D(i_in_data[6]), .CK(i_clk), .RN(n6964), .Q(
        in_data_r[6]) );
  DFFRX1 in_data_r_reg_5_ ( .D(i_in_data[5]), .CK(i_clk), .RN(n6990), .Q(
        in_data_r[5]) );
  DFFRX1 in_data_r_reg_4_ ( .D(i_in_data[4]), .CK(i_clk), .RN(n6978), .Q(
        in_data_r[4]) );
  DFFRX1 in_data_r_reg_3_ ( .D(i_in_data[3]), .CK(i_clk), .RN(n6964), .Q(
        in_data_r[3]) );
  DFFRX1 in_data_r_reg_2_ ( .D(i_in_data[2]), .CK(i_clk), .RN(n6980), .Q(
        in_data_r[2]) );
  DFFRX1 in_data_r_reg_1_ ( .D(i_in_data[1]), .CK(i_clk), .RN(n6990), .Q(
        in_data_r[1]) );
  DFFRX1 in_data_r_reg_0_ ( .D(i_in_data[0]), .CK(i_clk), .RN(n6969), .Q(
        in_data_r[0]) );
  DFFSXL pre_state_reg_2__3_ ( .D(pre_state[7]), .CK(i_clk), .SN(n6982), .QN(
        n7014) );
  DFFRX1 pre_state_reg_2__1_ ( .D(pre_state[5]), .CK(i_clk), .RN(n6970), .QN(
        n932) );
  DFFRX1 x_delay_r_reg_1__0_ ( .D(x_delay_r_0__0_), .CK(i_clk), .RN(n6978), 
        .Q(x_delay_r_1__0_) );
  DFFSHQX8 curr_state_reg_2_ ( .D(n1451), .CK(i_clk), .SN(n6980), .Q(n914) );
  DFFRHQX1 out_data_ready_r_reg_7_ ( .D(out_data_wait_r[7]), .CK(i_clk), .RN(
        n6968), .Q(o_out_data[7]) );
  DFFRX4 input_data_ready_r_reg_26_ ( .D(N713), .CK(i_clk), .RN(n6987), .Q(
        n6933), .QN(n847) );
  DFFRX1 z_r_reg_4_ ( .D(N762), .CK(i_clk), .RN(n6963), .Q(z_r[4]) );
  DFFRX1 depth_ready_r_reg_1_ ( .D(n486), .CK(i_clk), .RN(n6990), .Q(n1232) );
  DFFRX1 sram_addr_ready_r_reg_0__1_ ( .D(sram_addr_wait_r[0]), .CK(i_clk), 
        .RN(n6963), .Q(sram_addr_w[1]) );
  DFFRX1 sram_addr_ready_r_reg_1__2_ ( .D(sram_addr_wait_r[9]), .CK(i_clk), 
        .RN(n6980), .Q(sram_addr_w[11]) );
  DFFRX1 sram_addr_ready_r_reg_0__2_ ( .D(sram_addr_wait_r[1]), .CK(i_clk), 
        .RN(n6991), .Q(sram_addr_w[2]) );
  DFFRX1 sram_addr_ready_r_reg_2__6_ ( .D(sram_addr_wait_r[21]), .CK(i_clk), 
        .RN(n6963), .Q(sram_addr_w[24]) );
  DFFRX1 sram_addr_ready_r_reg_3__3_ ( .D(sram_addr_wait_r[26]), .CK(i_clk), 
        .RN(n6972), .Q(sram_addr_w[30]) );
  DFFRX1 sram_addr_ready_r_reg_3__5_ ( .D(sram_addr_wait_r[28]), .CK(i_clk), 
        .RN(n6967), .Q(sram_addr_w[32]) );
  DFFRX1 sram_addr_ready_r_reg_3__7_ ( .D(sram_addr_wait_r[30]), .CK(i_clk), 
        .RN(n6967), .Q(sram_addr_w[34]) );
  DFFRX1 x_plus_one_r_reg_1_ ( .D(N118), .CK(i_clk), .RN(n6964), .Q(
        x_plus_one_r[1]), .QN(n6580) );
  DFFRX1 sram_addr_ready_r_reg_3__1_ ( .D(sram_addr_wait_r[24]), .CK(i_clk), 
        .RN(n6978), .Q(sram_addr_w[28]) );
  DFFRX1 sram_addr_ready_r_reg_3__2_ ( .D(sram_addr_wait_r[25]), .CK(i_clk), 
        .RN(n6977), .Q(sram_addr_w[29]) );
  DFFRX1 sram_addr_ready_r_reg_3__8_ ( .D(sram_addr_wait_r[31]), .CK(i_clk), 
        .RN(n6977), .Q(sram_addr_w[35]), .QN(n436) );
  DFFRX2 conv_inst_conv_2_r_reg_2_ ( .D(conv_inst_N238), .CK(i_clk), .RN(n6986), .Q(conv_inst_conv_2_r[2]) );
  DFFRHQX1 conv_inst_data_abc_r_reg_6_ ( .D(conv_inst_data_abc_w[6]), .CK(
        i_clk), .RN(n6966), .Q(conv_inst_n110) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_3_ ( .D(conv_inst_N211), .CK(i_clk), .RN(
        n6986), .Q(conv_inst_data_bcd_4_r[3]) );
  DFFRX1 conv_inst_data_bcd_r_reg_2_ ( .D(conv_inst_data_bcd_w[2]), .CK(i_clk), 
        .RN(n6969), .QN(n3740) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_2_ ( .D(conv_inst_N68), .CK(i_clk), 
        .RN(n6990), .Q(conv_result_w[2]) );
  DFFRX1 conv_inst_data_bcd_r_reg_4_ ( .D(conv_inst_data_bcd_w[4]), .CK(i_clk), 
        .RN(n6964), .QN(n3742) );
  DFFRX1 conv_inst_data_abc_r_reg_3_ ( .D(conv_inst_data_abc_w[3]), .CK(i_clk), 
        .RN(n6991), .QN(n3470) );
  DFFRX1 conv_inst_data_bcd_r_reg_1_ ( .D(conv_inst_data_bcd_w[1]), .CK(i_clk), 
        .RN(n6966), .QN(n6603) );
  DFFRX2 conv_inst_data_abc_3_r_reg_8_ ( .D(conv_inst_N205), .CK(i_clk), .RN(
        n6990), .Q(conv_inst_data_abc_3_r[8]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_7_ ( .D(conv_inst_N215), .CK(i_clk), .RN(
        n6958), .Q(conv_inst_data_bcd_4_r[7]) );
  DFFRX2 conv_inst_conv_3_r_reg_12_ ( .D(conv_inst_N265), .CK(i_clk), .RN(
        n6960), .Q(conv_inst_conv_3_r[12]), .QN(n3744) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_9_ ( .D(conv_inst_N144), .CK(i_clk), .RN(
        n6989), .Q(conv_inst_data_bcd_2_r[9]), .QN(n6934) );
  DFFRX2 conv_inst_data_abc_1_r_reg_7_ ( .D(conv_inst_N131), .CK(i_clk), .RN(
        n6988), .Q(conv_inst_data_abc_1_r[7]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_8_ ( .D(conv_inst_N216), .CK(i_clk), .RN(
        n6959), .Q(conv_inst_data_bcd_4_r[8]) );
  DFFRHQX1 conv_inst_data_bcd_2_r_reg_4_ ( .D(conv_inst_N139), .CK(i_clk), 
        .RN(n6978), .Q(conv_inst_n56) );
  DFFRX2 conv_inst_conv_4_r_reg_0_ ( .D(conv_inst_N270), .CK(i_clk), .RN(n6960), .Q(conv_inst_conv_4_r[0]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_0_ ( .D(conv_inst_N208), .CK(i_clk), .RN(
        n6962), .Q(conv_inst_data_bcd_4_r[0]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_6_ ( .D(conv_inst_N203), .CK(i_clk), .RN(
        n6989), .Q(conv_inst_data_abc_3_r[6]) );
  DFFRX2 conv_inst_conv_2_r_reg_13_ ( .D(conv_inst_N249), .CK(i_clk), .RN(
        n6960), .Q(conv_inst_conv_2_r[13]), .QN(n2755) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_7_ ( .D(conv_inst_N142), .CK(i_clk), .RN(
        n6989), .Q(conv_inst_data_bcd_2_r[7]) );
  DFFRX2 conv_inst_data_bcd_r_reg_7_ ( .D(conv_inst_data_bcd_w[7]), .CK(i_clk), 
        .RN(n6971), .QN(n6624) );
  DFFRX2 conv_inst_data_abc_3_r_reg_7_ ( .D(conv_inst_N204), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_abc_3_r[7]) );
  DFFRX2 conv_inst_conv_3_r_reg_7_ ( .D(conv_inst_N260), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_3_r[7]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_2_ ( .D(conv_inst_N137), .CK(i_clk), .RN(
        n6969), .Q(conv_inst_data_bcd_2_r[2]) );
  DFFRHQX1 conv_inst_conv_4_r_reg_13_ ( .D(conv_inst_N283), .CK(i_clk), .RN(
        n6968), .Q(conv_inst_n65) );
  DFFRX2 conv_inst_data_abc_3_r_reg_2_ ( .D(conv_inst_N199), .CK(i_clk), .RN(
        n6969), .Q(conv_inst_data_abc_3_r[2]) );
  DFFRX2 conv_inst_conv_4_r_reg_9_ ( .D(conv_inst_N279), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_4_r[9]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_8_ ( .D(conv_inst_N143), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_bcd_2_r[8]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_4_ ( .D(conv_inst_N128), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_abc_1_r[4]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_6_ ( .D(conv_inst_N130), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_abc_1_r[6]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_3_ ( .D(conv_inst_N138), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_bcd_2_r[3]) );
  DFFRX2 conv_inst_conv_4_r_reg_8_ ( .D(conv_inst_N278), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_4_r[8]) );
  DFFRX2 conv_inst_conv_3_r_reg_9_ ( .D(conv_inst_N262), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_3_r[9]), .QN(n3469) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_5_ ( .D(conv_inst_N140), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_bcd_2_r[5]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_6_ ( .D(conv_inst_N141), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_bcd_2_r[6]) );
  DFFRX2 conv_inst_conv_1_r_reg_4_ ( .D(conv_inst_N223), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_1_r[4]) );
  DFFRX2 conv_inst_conv_3_r_reg_8_ ( .D(conv_inst_N261), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_3_r[8]) );
  DFFRX2 conv_inst_conv_4_r_reg_11_ ( .D(n3475), .CK(i_clk), .RN(n6971), .Q(
        conv_inst_conv_4_r[11]) );
  DFFRX2 conv_inst_conv_4_r_reg_5_ ( .D(conv_inst_N275), .CK(i_clk), .RN(n6967), .Q(conv_inst_conv_4_r[5]) );
  DFFRX2 conv_inst_conv_4_r_reg_6_ ( .D(conv_inst_N276), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_4_r[6]), .QN(n6664) );
  DFFRX2 conv_inst_conv_2_r_reg_6_ ( .D(conv_inst_N242), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_2_r[6]) );
  DFFRX2 conv_inst_conv_3_r_reg_6_ ( .D(conv_inst_N259), .CK(i_clk), .RN(n6990), .Q(conv_inst_conv_3_r[6]), .QN(n7016) );
  DFFRX2 conv_inst_conv_1_r_reg_6_ ( .D(conv_inst_N225), .CK(i_clk), .RN(n6977), .Q(conv_inst_conv_1_r[6]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_5_ ( .D(conv_inst_N129), .CK(i_clk), .RN(
        n6986), .Q(conv_inst_data_abc_1_r[5]) );
  DFFRX2 conv_inst_conv_1_r_reg_10_ ( .D(conv_inst_N229), .CK(i_clk), .RN(
        n6978), .Q(conv_inst_conv_1_r[10]) );
  DFFRX2 conv_inst_conv_4_r_reg_10_ ( .D(conv_inst_N280), .CK(i_clk), .RN(
        n6958), .Q(conv_inst_conv_4_r[10]) );
  DFFRX2 conv_inst_conv_2_r_reg_10_ ( .D(conv_inst_N246), .CK(i_clk), .RN(
        n6970), .Q(conv_inst_conv_2_r[10]) );
  DFFRX1 conv_inst_conv_4_r_reg_15_ ( .D(conv_inst_N285), .CK(i_clk), .RN(
        n6991), .Q(conv_inst_conv_4_r[15]), .QN(n6586) );
  DFFRX1 conv_inst_i_input_done_r_reg ( .D(conv_calc_done_r), .CK(i_clk), .RN(
        n6990), .Q(conv_inst_n30) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_1_ ( .D(conv_inst_N670), .CK(i_clk), 
        .RN(n6980), .Q(conv_result_w[1]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_0_ ( .D(conv_inst_N66), .CK(i_clk), 
        .RN(n6977), .Q(conv_result_w[0]) );
  DFFRX1 conv_inst_data_abc_r_reg_1_ ( .D(conv_inst_data_abc_w[1]), .CK(i_clk), 
        .RN(n6964), .QN(n6807) );
  DFFRX1 conv_inst_data_abc_r_reg_2_ ( .D(conv_inst_data_abc_w[2]), .CK(i_clk), 
        .RN(n6969), .QN(n3486) );
  DFFRX1 conv_inst_data_abc_r_reg_0_ ( .D(conv_inst_data_abc_w[0]), .CK(i_clk), 
        .RN(n6980), .QN(n3738) );
  DFFRX1 conv_inst_data_bcd_r_reg_0_ ( .D(conv_inst_data_bcd_w[0]), .CK(i_clk), 
        .RN(n6977), .QN(conv_inst_n10) );
  DFFRX1 conv_inst_o_out_valid_ready_r_reg ( .D(conv_inst_N287), .CK(i_clk), 
        .RN(n6964), .QN(conv_out_valid_w) );
  DFFRHQX1 conv_inst_data_bcd_r_reg_9_ ( .D(conv_inst_data_bcd_w[9]), .CK(
        i_clk), .RN(n6982), .Q(conv_inst_n99) );
  DFFRX4 conv_inst_cnt_reg_0_ ( .D(conv_inst_N560), .CK(i_clk), .RN(n6962), 
        .Q(conv_inst_cnt_0_), .QN(n6929) );
  DFFRHQX1 conv_inst_o_out_data_ready_r_reg_10_ ( .D(conv_inst_N76), .CK(i_clk), .RN(n6982), .Q(conv_result_w[10]) );
  DFFRX4 conv_inst_cnt_reg_1_ ( .D(conv_inst_N570), .CK(i_clk), .RN(n6989), 
        .Q(n6642), .QN(conv_inst_n27) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__6_ ( .D(n6758), .CK(
        i_clk), .RN(n6969), .QN(median_sobel_inst_n385) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__6_ ( .D(
        median_sobel_inst_n573), .CK(i_clk), .RN(n6983), .QN(
        median_sobel_inst_n369) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__2_ ( .D(n6772), .CK(
        i_clk), .RN(n6977), .QN(median_sobel_inst_n389) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__3_ ( .D(n6761), .CK(
        i_clk), .RN(n6964), .Q(n2738), .QN(median_sobel_inst_n388) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__4_ ( .D(n6747), .CK(
        i_clk), .RN(n6969), .QN(median_sobel_inst_n331) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__1_ ( .D(
        median_sobel_inst_n562), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_n122) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__6_ ( .D(
        median_sobel_inst_n581), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_n123) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__4_ ( .D(
        median_sobel_inst_n583), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_n146) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__5_ ( .D(
        median_sobel_inst_n542), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_n402) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__3_ ( .D(
        median_sobel_inst_n568), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_n637) );
  DFFRHQX1 median_sobel_inst_cs_reg_1_ ( .D(median_sobel_inst_n866), .CK(i_clk), .RN(n6982), .Q(median_sobel_inst_n656) );
  DFFRHQX1 median_sobel_inst_med_sobel_r_reg ( .D(median_sobel_inst_n320), 
        .CK(i_clk), .RN(n6982), .Q(median_sobel_inst_n661) );
  DFFRX1 median_sobel_inst_G_reg_1__1_ ( .D(median_sobel_inst_n477), .CK(i_clk), .RN(n6980), .Q(median_sobel_inst_G[12]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__4_ ( .D(
        median_sobel_inst_n511), .CK(i_clk), .RN(n6977), .Q(
        median_sobel_inst_n30) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__4_ ( .D(n6604), .CK(
        i_clk), .RN(n6964), .Q(n7017), .QN(median_sobel_inst_n255) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__0_ ( .D(
        median_sobel_inst_n547), .CK(i_clk), .RN(n6968), .Q(
        median_sobel_inst_n53), .QN(n6819) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__4_ ( .D(n6746), .CK(
        i_clk), .RN(n6969), .Q(n2740), .QN(median_sobel_inst_n395) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__6_ ( .D(
        median_sobel_inst_n533), .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_n70), .QN(n6801) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__1_ ( .D(
        median_sobel_inst_n538), .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_n73), .QN(n6840) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__4_ ( .D(
        median_sobel_inst_n535), .CK(i_clk), .RN(n6968), .QN(
        median_sobel_inst_n411) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__2_ ( .D(
        median_sobel_inst_n577), .CK(i_clk), .RN(n6966), .QN(
        median_sobel_inst_n373) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__3_ ( .D(
        median_sobel_inst_n544), .CK(i_clk), .RN(n6967), .QN(
        median_sobel_inst_n404) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__0_ ( .D(
        median_sobel_inst_n579), .CK(i_clk), .RN(n6966), .QN(
        median_sobel_inst_n375) );
  DFFRX2 median_sobel_inst_cnt_reg_4_ ( .D(median_sobel_inst_N116), .CK(i_clk), 
        .RN(n6967), .QN(median_sobel_inst_n324) );
  DFFRX2 median_sobel_inst_cnt_reg_2_ ( .D(median_sobel_inst_N114), .CK(i_clk), 
        .RN(n6968), .Q(n3445), .QN(median_sobel_inst_n325) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__2_ ( .D(
        median_sobel_inst_n545), .CK(i_clk), .RN(n6966), .Q(
        median_sobel_inst_n68), .QN(n6803) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__1_ ( .D(
        median_sobel_inst_n578), .CK(i_clk), .RN(n6967), .QN(
        median_sobel_inst_n374) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__7_ ( .D(
        median_sobel_inst_n564), .CK(i_clk), .RN(n6968), .QN(
        median_sobel_inst_n376) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__4_ ( .D(n6771), .CK(
        i_clk), .RN(n6980), .QN(median_sobel_inst_n355) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__4_ ( .D(n6760), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n387) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__1_ ( .D(n6770), .CK(
        i_clk), .RN(n6980), .QN(median_sobel_inst_n350) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__0_ ( .D(n6775), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n343) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__5_ ( .D(n6757), .CK(
        i_clk), .RN(n6977), .QN(median_sobel_inst_n354) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__2_ ( .D(
        median_sobel_inst_n529), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n86) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__7_ ( .D(n6756), .CK(
        i_clk), .RN(n6964), .QN(median_sobel_inst_n344) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__0_ ( .D(
        median_sobel_inst_n515), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n26) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__4_ ( .D(n6769), .CK(
        i_clk), .RN(n6969), .QN(median_sobel_inst_n347) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__0_ ( .D(n6759), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n351) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__6_ ( .D(n6774), .CK(
        i_clk), .RN(n6977), .QN(median_sobel_inst_n337) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__6_ ( .D(n6755), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n345) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__6_ ( .D(n6745), .CK(
        i_clk), .RN(n6991), .Q(n2745), .QN(median_sobel_inst_n393) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__7_ ( .D(n6749), .CK(
        i_clk), .RN(n6969), .QN(median_sobel_inst_n336) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__2_ ( .D(
        median_sobel_inst_n553), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n63) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__7_ ( .D(n6778), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n384) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__5_ ( .D(n6754), .CK(
        i_clk), .RN(n6991), .Q(n7021), .QN(median_sobel_inst_n418) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__6_ ( .D(n6764), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n425) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__3_ ( .D(n6753), .CK(
        i_clk), .RN(n6991), .Q(n2731), .QN(median_sobel_inst_n348) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__6_ ( .D(
        median_sobel_inst_n525), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n36) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__3_ ( .D(
        median_sobel_inst_n552), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n437) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__5_ ( .D(n6752), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n386) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__2_ ( .D(n6744), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n341) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__5_ ( .D(n6773), .CK(
        i_clk), .RN(n6991), .Q(n2741), .QN(median_sobel_inst_n338) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__0_ ( .D(n6748), .CK(
        i_clk), .RN(n6991), .Q(n2720), .QN(median_sobel_inst_n399) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__3_ ( .D(n6743), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n364) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__5_ ( .D(n6768), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n346) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__2_ ( .D(n6742), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n365) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__3_ ( .D(n6765), .CK(
        i_clk), .RN(n6991), .Q(n7018), .QN(median_sobel_inst_n436) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__1_ ( .D(n6762), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n358) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__7_ ( .D(n6741), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n392) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__0_ ( .D(
        median_sobel_inst_n619), .CK(i_clk), .RN(n6977), .Q(
        median_sobel_inst_n99) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__4_ ( .D(n6594), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n339) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__2_ ( .D(n6575), .CK(
        i_clk), .RN(n6978), .QN(median_sobel_inst_n349) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__7_ ( .D(n6593), .CK(
        i_clk), .RN(n6990), .Q(n7019), .QN(median_sobel_inst_n424) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__6_ ( .D(n6595), .CK(
        i_clk), .RN(n6963), .QN(median_sobel_inst_n329) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__0_ ( .D(
        median_sobel_inst_n523), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n28) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__1_ ( .D(n6592), .CK(
        i_clk), .RN(n6971), .QN(median_sobel_inst_n430) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__7_ ( .D(
        median_sobel_inst_n612), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_n98) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__6_ ( .D(n6589), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n353) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__0_ ( .D(n6587), .CK(
        i_clk), .RN(n6970), .Q(n2736), .QN(median_sobel_inst_n359) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__3_ ( .D(n6590), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n356) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__6_ ( .D(
        median_sobel_inst_n501), .CK(i_clk), .RN(n6963), .Q(
        median_sobel_inst_n35) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__7_ ( .D(n6565), .CK(
        i_clk), .RN(n6990), .QN(median_sobel_inst_n360) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__1_ ( .D(n6591), .CK(
        i_clk), .RN(n6991), .Q(n2725), .QN(median_sobel_inst_n438) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__2_ ( .D(n6588), .CK(
        i_clk), .RN(n6972), .QN(median_sobel_inst_n357) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__2_ ( .D(
        median_sobel_inst_n617), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n100) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__6_ ( .D(n6596), .CK(
        i_clk), .RN(i_rst_n), .QN(median_sobel_inst_n257) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__5_ ( .D(
        median_sobel_inst_n614), .CK(i_clk), .RN(n6968), .QN(
        median_sobel_inst_n330) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__3_ ( .D(n6750), .CK(
        i_clk), .RN(n6964), .QN(median_sobel_inst_n254) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__2_ ( .D(n6751), .CK(
        i_clk), .RN(n6978), .QN(median_sobel_inst_n253) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__5_ ( .D(n6763), .CK(
        i_clk), .RN(i_rst_n), .Q(n7023), .QN(median_sobel_inst_n362) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__7_ ( .D(
        median_sobel_inst_n516), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_n258) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__3_ ( .D(n6734), .CK(
        i_clk), .RN(n6991), .QN(median_sobel_inst_n262) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__7_ ( .D(n6777), .CK(
        i_clk), .RN(n6967), .QN(median_sobel_inst_n352) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__1_ ( .D(n6714), .CK(
        i_clk), .RN(n6978), .QN(median_sobel_inst_n252) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__0_ ( .D(n6732), .CK(
        i_clk), .RN(n6978), .QN(median_sobel_inst_n439) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__5_ ( .D(n6740), .CK(
        i_clk), .RN(n6964), .Q(n7024), .QN(median_sobel_inst_n394) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__5_ ( .D(n6776), .CK(
        i_clk), .RN(n6969), .QN(median_sobel_inst_n426) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__1_ ( .D(n6731), .CK(
        i_clk), .RN(n6971), .QN(median_sobel_inst_n260) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__2_ ( .D(
        median_sobel_inst_n497), .CK(i_clk), .RN(n6978), .Q(
        median_sobel_inst_n27) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__6_ ( .D(
        median_sobel_inst_n493), .CK(i_clk), .RN(i_rst_n), .Q(
        median_sobel_inst_n85) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__0_ ( .D(
        median_sobel_inst_n499), .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_n42) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__5_ ( .D(n6815), .CK(
        i_clk), .RN(n6971), .QN(median_sobel_inst_n256) );
  DFFRX1 median_sobel_inst_G_reg_3__8_ ( .D(median_sobel_inst_n451), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[41]) );
  DFFRX1 median_sobel_inst_G_reg_1__8_ ( .D(median_sobel_inst_n449), .CK(i_clk), .RN(n6991), .Q(median_sobel_inst_G[19]) );
  DFFRX1 median_sobel_inst_G_reg_2__8_ ( .D(median_sobel_inst_n448), .CK(i_clk), .RN(n6977), .Q(median_sobel_inst_G[30]) );
  DFFRX1 median_sobel_inst_G_reg_3__7_ ( .D(median_sobel_inst_n455), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[40]) );
  DFFRX1 median_sobel_inst_G_reg_1__7_ ( .D(median_sobel_inst_n453), .CK(i_clk), .RN(n6969), .Q(median_sobel_inst_G[18]) );
  DFFRX1 median_sobel_inst_G_reg_2__7_ ( .D(median_sobel_inst_n452), .CK(i_clk), .RN(n6972), .Q(median_sobel_inst_G[29]) );
  DFFRX1 median_sobel_inst_G_reg_3__5_ ( .D(median_sobel_inst_n463), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[38]) );
  DFFRX1 median_sobel_inst_G_reg_1__5_ ( .D(median_sobel_inst_n461), .CK(i_clk), .RN(n6980), .Q(median_sobel_inst_G[16]) );
  DFFRX1 median_sobel_inst_G_reg_2__5_ ( .D(median_sobel_inst_n460), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[27]) );
  DFFRX1 median_sobel_inst_G_reg_3__4_ ( .D(median_sobel_inst_n467), .CK(i_clk), .RN(n6990), .Q(median_sobel_inst_G[37]) );
  DFFRX1 median_sobel_inst_G_reg_1__4_ ( .D(median_sobel_inst_n465), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[15]) );
  DFFRX1 median_sobel_inst_G_reg_2__4_ ( .D(median_sobel_inst_n464), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[26]) );
  DFFRX1 median_sobel_inst_G_reg_3__2_ ( .D(median_sobel_inst_n475), .CK(i_clk), .RN(n6991), .Q(median_sobel_inst_G[35]) );
  DFFRX1 median_sobel_inst_G_reg_1__2_ ( .D(median_sobel_inst_n473), .CK(i_clk), .RN(n6963), .Q(median_sobel_inst_G[13]) );
  DFFRX1 median_sobel_inst_G_reg_2__2_ ( .D(median_sobel_inst_n472), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[24]) );
  DFFRX1 median_sobel_inst_G_reg_3__1_ ( .D(median_sobel_inst_n479), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[34]) );
  DFFRX1 median_sobel_inst_G_reg_2__1_ ( .D(median_sobel_inst_n476), .CK(i_clk), .RN(n6991), .Q(median_sobel_inst_G[23]) );
  DFFRX1 median_sobel_inst_G_reg_1__0_ ( .D(median_sobel_inst_n481), .CK(i_clk), .RN(n6977), .Q(median_sobel_inst_G[11]) );
  DFFRX1 median_sobel_inst_G_reg_2__0_ ( .D(median_sobel_inst_n480), .CK(i_clk), .RN(n6991), .Q(median_sobel_inst_G[22]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[49]), .CK(i_clk), .RN(n6960), 
        .QN(median_sobel_inst_n227) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[50]), .CK(i_clk), .RN(n6971), .Q(
        n6850), .QN(median_sobel_inst_n228) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[51]), .CK(i_clk), .RN(n6970), 
        .QN(median_sobel_inst_n229) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[52]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n230) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[42]), .CK(i_clk), .RN(n6990), 
        .QN(median_sobel_inst_n219) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[45]), .CK(i_clk), .RN(n6980), .Q(
        n6784), .QN(median_sobel_inst_n222) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__7_ ( .D(median_sobel_inst_n855), .CK(i_clk), .RN(n6969), .QN(median_sobel_inst_n218) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[70]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n163) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[14]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n187) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[36]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n212) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[8]), .CK(i_clk), .RN(n6980), .Q(
        n6865), .QN(median_sobel_inst_n180) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[35]), .CK(i_clk), .RN(n6977), 
        .QN(median_sobel_inst_n211) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[7]), .CK(i_clk), .RN(n6980), .QN(
        median_sobel_inst_n179) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[73]), .CK(i_clk), .RN(n6970), 
        .QN(median_sobel_inst_n166) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__7_ ( .D(
        median_sobel_inst_n862), .CK(i_clk), .RN(n6967), .QN(
        median_sobel_inst_n170) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__7_ ( .D(median_sobel_inst_n860), .CK(i_clk), .RN(n6977), .QN(median_sobel_inst_n250) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__7_ ( .D(median_sobel_inst_n858), .CK(i_clk), .RN(n6966), .QN(median_sobel_inst_n226) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[15]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n188) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[17]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n190) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__7_ ( .D(median_sobel_inst_n854), .CK(i_clk), .RN(n6966), .QN(median_sobel_inst_n194) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__7_ ( .D(median_sobel_inst_n852), .CK(i_clk), .RN(n6968), .QN(median_sobel_inst_n186) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__7_ ( .D(
        median_sobel_inst_n861), .CK(i_clk), .RN(n6980), .Q(n6863) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__7_ ( .D(median_sobel_inst_n859), .CK(i_clk), .RN(n6980), .QN(median_sobel_inst_n242) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__7_ ( .D(median_sobel_inst_n857), .CK(i_clk), .RN(n6980), .QN(median_sobel_inst_n234) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__7_ ( .D(median_sobel_inst_n856), .CK(i_clk), .RN(n6971), .QN(median_sobel_inst_n210) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__7_ ( .D(median_sobel_inst_n853), .CK(i_clk), .RN(n6967), .QN(median_sobel_inst_n202) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__7_ ( .D(median_sobel_inst_n851), .CK(i_clk), .RN(n6980), .Q(n6864) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[76]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n169) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[48]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n225) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[38]), .CK(i_clk), .RN(n6971), .Q(
        n6798), .QN(median_sobel_inst_n214) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[39]), .CK(i_clk), .RN(n6964), 
        .QN(median_sobel_inst_n215) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[41]), .CK(i_clk), .RN(n6968), 
        .QN(median_sobel_inst_n217) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[20]), .CK(i_clk), .RN(n6970), 
        .QN(median_sobel_inst_n193) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[10]), .CK(i_clk), .RN(n6969), .Q(
        n6809), .QN(median_sobel_inst_n182) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[11]), .CK(i_clk), .RN(n6978), 
        .QN(median_sobel_inst_n183) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[13]), .CK(i_clk), .RN(n6968), 
        .QN(median_sobel_inst_n185) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[74]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n167) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[18]), .CK(i_clk), .RN(n6990), 
        .QN(median_sobel_inst_n191) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[68]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n248) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[40]), .CK(i_clk), .RN(n6980), .Q(
        n6793), .QN(median_sobel_inst_n216) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[12]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n184) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[75]), .CK(i_clk), .RN(n6980), .Q(
        n6794), .QN(median_sobel_inst_n168) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[47]), .CK(i_clk), .RN(n6980), .Q(
        n6792), .QN(median_sobel_inst_n224) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[19]), .CK(i_clk), .RN(n6966), 
        .QN(median_sobel_inst_n192) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[79]), .CK(i_clk), .RN(n6980), .Q(
        n6847), .QN(median_sobel_inst_n173) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[82]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n176) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[83]), .CK(i_clk), .RN(n6980), .Q(
        n6789), .QN(median_sobel_inst_n177) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[58]), .CK(i_clk), .RN(n6977), .Q(
        n6787), .QN(median_sobel_inst_n237) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[60]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n239) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[61]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n240) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[62]), .CK(i_clk), .RN(n6972), 
        .QN(median_sobel_inst_n241) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[54]), .CK(i_clk), .RN(n6990), 
        .QN(median_sobel_inst_n232) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[55]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n233) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[30]), .CK(i_clk), .RN(n6967), 
        .QN(median_sobel_inst_n205) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[32]), .CK(i_clk), .RN(n6963), .Q(
        n6796), .QN(median_sobel_inst_n207) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[33]), .CK(i_clk), .RN(n6963), 
        .QN(median_sobel_inst_n208) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[34]), .CK(i_clk), .RN(n6991), .Q(
        n6795), .QN(median_sobel_inst_n209) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[23]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n197) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[24]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n198) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[25]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n199) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[26]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n200) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[27]), .CK(i_clk), .RN(n6964), 
        .QN(median_sobel_inst_n201) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[2]), .CK(i_clk), .RN(n6963), .Q(
        n6791), .QN(median_sobel_inst_n157) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[4]), .CK(i_clk), .RN(n6964), .QN(
        median_sobel_inst_n159) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[6]), .CK(i_clk), .RN(n6970), .QN(
        median_sobel_inst_n161) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[57]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n236) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[59]), .CK(i_clk), .RN(n6980), .Q(
        n6788), .QN(median_sobel_inst_n238) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[29]), .CK(i_clk), .RN(n6963), 
        .QN(median_sobel_inst_n204) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[31]), .CK(i_clk), .RN(n6964), 
        .QN(median_sobel_inst_n206) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[22]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n196) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[1]), .CK(i_clk), .RN(n6990), .QN(
        median_sobel_inst_n156) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[3]), .CK(i_clk), .RN(n6966), .Q(
        n6810), .QN(median_sobel_inst_n158) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[77]), .CK(i_clk), .RN(n6991), .Q(
        n6862), .QN(median_sobel_inst_n171) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[21]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n195) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[56]), .CK(i_clk), .RN(n6983), 
        .QN(median_sobel_inst_n235) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[28]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n203) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[0]), .CK(i_clk), .RN(n6990), .Q(
        n6849), .QN(median_sobel_inst_n155) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[72]), .CK(i_clk), .RN(n6990), 
        .QN(median_sobel_inst_n165) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[37]), .CK(i_clk), .RN(n6980), 
        .QN(median_sobel_inst_n213) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[16]), .CK(i_clk), .RN(n6969), 
        .QN(median_sobel_inst_n189) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[9]), .CK(i_clk), .RN(n6980), .QN(
        median_sobel_inst_n181) );
  DFFRX1 median_sobel_inst_angle_reg_3__1_ ( .D(median_sobel_inst_n487), .CK(
        i_clk), .RN(n6980), .Q(median_sobel_inst_angle[7]) );
  DFFRX1 median_sobel_inst_angle_reg_2__1_ ( .D(median_sobel_inst_n484), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[5]) );
  DFFRX1 median_sobel_inst_angle_reg_2__0_ ( .D(median_sobel_inst_n488), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[4]) );
  DFFRX1 median_sobel_inst_angle_reg_0__0_ ( .D(median_sobel_inst_n490), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[0]) );
  DFFRX1 median_sobel_inst_angle_reg_1__0_ ( .D(median_sobel_inst_n489), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[2]) );
  DFFRX1 median_sobel_inst_G_reg_3__10_ ( .D(median_sobel_inst_n443), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_G[43]) );
  DFFRX1 median_sobel_inst_G_reg_1__10_ ( .D(median_sobel_inst_n441), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_G[21]) );
  DFFRX1 median_sobel_inst_G_reg_2__10_ ( .D(median_sobel_inst_n440), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_G[32]) );
  DFFRX1 median_sobel_inst_G_reg_2__9_ ( .D(median_sobel_inst_n444), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[31]) );
  DFFRX1 median_sobel_inst_G_reg_2__6_ ( .D(median_sobel_inst_n456), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[28]) );
  DFFRX1 median_sobel_inst_G_reg_0__10_ ( .D(median_sobel_inst_n442), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_G[10]), .QN(n6839) );
  DFFRX1 median_sobel_inst_G_reg_1__9_ ( .D(median_sobel_inst_n445), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[20]) );
  DFFRX1 median_sobel_inst_G_reg_0__9_ ( .D(median_sobel_inst_n446), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[9]), .QN(n6825) );
  DFFRX1 median_sobel_inst_G_reg_0__8_ ( .D(median_sobel_inst_n450), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[8]), .QN(n6830) );
  DFFRX1 median_sobel_inst_G_reg_0__7_ ( .D(median_sobel_inst_n454), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[7]), .QN(n6831) );
  DFFRX1 median_sobel_inst_G_reg_3__6_ ( .D(median_sobel_inst_n459), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[39]) );
  DFFRX1 median_sobel_inst_G_reg_0__6_ ( .D(median_sobel_inst_n458), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[6]), .QN(n6823) );
  DFFRX1 median_sobel_inst_G_reg_1__6_ ( .D(median_sobel_inst_n457), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[17]) );
  DFFRX1 median_sobel_inst_G_reg_0__5_ ( .D(median_sobel_inst_n462), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[5]), .QN(n6826) );
  DFFRX1 median_sobel_inst_G_reg_3__3_ ( .D(median_sobel_inst_n471), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[36]) );
  DFFRX1 median_sobel_inst_G_reg_0__3_ ( .D(median_sobel_inst_n470), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[3]), .QN(n6824) );
  DFFRX1 median_sobel_inst_G_reg_1__3_ ( .D(median_sobel_inst_n469), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[14]) );
  DFFRX1 median_sobel_inst_G_reg_2__3_ ( .D(median_sobel_inst_n468), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[25]) );
  DFFRX1 median_sobel_inst_G_reg_0__4_ ( .D(median_sobel_inst_n466), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[4]), .QN(n6829) );
  DFFRX1 median_sobel_inst_G_reg_0__2_ ( .D(median_sobel_inst_n474), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[2]), .QN(n6828) );
  DFFRX1 median_sobel_inst_G_reg_0__1_ ( .D(median_sobel_inst_n478), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[1]), .QN(n6827) );
  DFFRX1 median_sobel_inst_G_reg_3__0_ ( .D(median_sobel_inst_n483), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[33]) );
  DFFRX1 median_sobel_inst_G_reg_0__0_ ( .D(median_sobel_inst_n482), .CK(i_clk), .RN(n6979), .Q(median_sobel_inst_G[0]), .QN(n6835) );
  DFFRX1 median_sobel_inst_angle_reg_0__1_ ( .D(median_sobel_inst_n486), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[1]) );
  DFFRX1 median_sobel_inst_angle_reg_1__1_ ( .D(median_sobel_inst_n485), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[3]) );
  DFFRX1 median_sobel_inst_angle_reg_3__0_ ( .D(median_sobel_inst_n491), .CK(
        i_clk), .RN(n6979), .Q(median_sobel_inst_angle[6]) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__1_ ( .D(
        median_sobel_inst_n546), .CK(i_clk), .RN(n6986), .Q(
        median_sobel_inst_net43895), .QN(n6834) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[3]), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_median_filter_submodule_n358) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n704), .CK(i_clk), .RN(
        n6958), .Q(n6940), .QN(median_sobel_inst_u_median_filter_submodule_n91) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[4]), .CK(i_clk), .RN(
        n6963), .QN(median_sobel_inst_u_median_filter_submodule_n694) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n701), .CK(i_clk), .RN(
        n6970), .Q(median_sobel_inst_u_median_filter_submodule_b9_r[6]), .QN(
        n6947) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[0]), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_median_filter_submodule_n131) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[5]), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_median_filter_submodule_a4_r_5_) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_0_ ( .D(
        median_sobel_inst_data_a_r[0]), .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_median_filter_submodule_n204) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_6_ ( .D(
        median_sobel_inst_data_g_r[6]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .QN(n6572) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_1_ ( .D(
        median_sobel_inst_data_d_r[1]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .QN(n6954) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_0_ ( .D(
        median_sobel_inst_net60883), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[3]), .CK(i_clk), .RN(
        n6970), .Q(n6950), .QN(
        median_sobel_inst_u_median_filter_submodule_n203) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[1]), .CK(i_clk), .RN(
        n6970), .Q(median_sobel_inst_u_median_filter_submodule_n292) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[6]), .CK(i_clk), .RN(
        n6970), .Q(median_sobel_inst_u_median_filter_submodule_net56609) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net21366), .CK(i_clk), 
        .RN(n6964), .Q(median_sobel_inst_u_median_filter_submodule_b9_r[2]), 
        .QN(n6949) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[4]), .CK(i_clk), .RN(
        n6989), .Q(median_sobel_inst_u_median_filter_submodule_n355), .QN(
        n6928) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n671), .CK(i_clk), .RN(
        n6988), .Q(median_sobel_inst_u_median_filter_submodule_b5_r[0]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a17_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a17_w), .CK(i_clk), .RN(
        n6983), .QN(median_sobel_inst_u_median_filter_submodule_n199) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a69_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a69_w), .CK(i_clk), .RN(
        n6989), .Q(n3471), .QN(median_sobel_inst_u_median_filter_submodule_n85) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_1_ ( .D(
        median_sobel_inst_data_f_r[1]), .CK(i_clk), .RN(n6966), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n677), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_median_filter_submodule_b5_r[6]), .QN(
        n6938) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[4]), .CK(i_clk), .RN(
        n6966), .Q(n6859), .QN(
        median_sobel_inst_u_median_filter_submodule_n682) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[1]), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_median_filter_submodule_n370) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[6]), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_median_filter_submodule_n390) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_7_ ( .D(
        median_sobel_inst_data_i_r[7]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n61) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[7]), .CK(i_clk), .RN(
        n6979), .QN(median_sobel_inst_u_median_filter_submodule_net22675) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_5_ ( .D(
        median_sobel_inst_data_h_r[5]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .QN(n6660) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_0_ ( .D(
        median_sobel_inst_data_i_r[0]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n46) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_2_ ( .D(n2705), 
        .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n36) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_1_ ( .D(
        median_sobel_inst_data_i_r[1]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n56) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_4_ ( .D(
        median_sobel_inst_data_c_r[4]), .CK(i_clk), .RN(n6979), .QN(
        median_sobel_inst_u_median_filter_submodule_n41) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_4_ ( .D(
        median_sobel_inst_data_d_r[4]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .QN(n6637) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_3_ ( .D(
        median_sobel_inst_data_f_r[3]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .QN(n6931) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_4_ ( .D(
        median_sobel_inst_n390), .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .QN(n6573) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_6_ ( .D(
        median_sobel_inst_data_f_r[6]), .CK(i_clk), .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .QN(n6599) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_2_ ( .D(n2706), 
        .CK(i_clk), .RN(n6972), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .QN(n6946) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_7_ ( .D(
        median_sobel_inst_data_h_r[7]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .QN(n6729) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_0_ ( .D(n2707), 
        .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .QN(n6779) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_5_ ( .D(
        median_sobel_inst_data_g_r[5]), .CK(i_clk), .RN(n6977), .Q(n6805), 
        .QN(median_sobel_inst_u_median_filter_submodule_n66) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_7_ ( .D(
        median_sobel_inst_data_g_r[7]), .CK(i_clk), .RN(n6970), .Q(n6802), 
        .QN(median_sobel_inst_u_median_filter_submodule_n45) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_2_ ( .D(
        median_sobel_inst_data_b_r[2]), .CK(i_clk), .RN(n6960), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .QN(n6735) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_7_ ( .D(
        median_sobel_inst_data_b_r[7]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .QN(n6722) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_1_ ( .D(
        median_sobel_inst_data_a_r[1]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n67) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_4_ ( .D(
        median_sobel_inst_data_a_r[4]), .CK(i_clk), .RN(n6963), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n60) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_5_ ( .D(
        median_sobel_inst_data_a_r[5]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n44) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_5_ ( .D(
        median_sobel_inst_data_c_r[5]), .CK(i_clk), .RN(n6964), .QN(
        median_sobel_inst_u_median_filter_submodule_n48) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n6990), .QN(
        median_sobel_inst_u_median_filter_submodule_n38) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_0_ ( .D(
        median_sobel_inst_data_e_r[0]), .CK(i_clk), .RN(n6980), .QN(
        median_sobel_inst_u_median_filter_submodule_n116) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_2_ ( .D(
        median_sobel_inst_data_e_r[2]), .CK(i_clk), .RN(n6972), .QN(
        median_sobel_inst_u_median_filter_submodule_n122) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_4_ ( .D(
        median_sobel_inst_data_e_r[4]), .CK(i_clk), .RN(n6990), .QN(
        median_sobel_inst_u_median_filter_submodule_n71) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_5_ ( .D(
        median_sobel_inst_data_e_r[5]), .CK(i_clk), .RN(n6990), .QN(
        median_sobel_inst_u_median_filter_submodule_n106) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_6_ ( .D(
        median_sobel_inst_data_e_r[6]), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_u_median_filter_submodule_n105) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_6_ ( .D(
        median_sobel_inst_data_d_r[6]), .CK(i_clk), .RN(n6989), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .QN(n6640) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_7_ ( .D(
        median_sobel_inst_data_d_r[7]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .QN(n6723) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[0]), .CK(i_clk), .RN(
        n6969), .Q(n6625) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n6966), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n123) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N200), .CK(i_clk), .RN(
        n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]), .CK(
        i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n127) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N139), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1]), .CK(
        i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n69) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_18_ ( .D(
        n6643), .CK(i_clk), .RN(n6967), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n173) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N14), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]), .CK(i_clk), 
        .RN(i_rst_n), .QN(median_sobel_inst_u_sobel_gradient_submodule_N47) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1130), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .CK(i_clk), .RN(
        n6964), .QN(median_sobel_inst_u_sobel_gradient_submodule_net41157) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N310), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .CK(i_clk), 
        .RN(n6988), .Q(median_sobel_inst_u_sobel_gradient_submodule_n108) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .CK(i_clk), 
        .RN(n6987), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_n99) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_0_ ( .D(n6918), .CK(i_clk), .RN(n6987), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1230), .CK(i_clk), .RN(
        n6959), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]), .CK(i_clk), 
        .RN(n6988), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_5_ ( .D(n6653), 
        .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n109) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_16_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N175), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_net63936)
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]), 
        .CK(i_clk), .RN(n6970), .Q(n6673), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n20) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_7_ ( .D(
        median_sobel_inst_data_g_r[7]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n120) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]), .CK(
        i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_5_ ( .D(
        median_sobel_inst_data_c_r[5]), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n124) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N168), .CK(i_clk), 
        .RN(n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_net61937)
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N167), .CK(i_clk), 
        .RN(n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_net61071)
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N135), .CK(i_clk), .RN(
        n6977), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r[5])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r[7])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_4_ ( .D(
        median_sobel_inst_data_c_r[4]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n133) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N21), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N151), .CK(i_clk), 
        .RN(n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_n137) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]), .CK(
        i_clk), .RN(n6972), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[11]), .CK(
        i_clk), .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n138) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .CK(i_clk), 
        .RN(n6986), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1200), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1360), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]), 
        .CK(i_clk), .RN(n6966), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[22]), .QN(
        n6720) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .CK(i_clk), 
        .RN(n6966), .Q(n6716) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N121), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1370), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N70), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .CK(i_clk), 
        .RN(n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), 
        .QN(n2733) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]), .CK(i_clk), 
        .RN(n6977), .QN(median_sobel_inst_u_sobel_gradient_submodule_n62) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]), .CK(i_clk), 
        .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]), .CK(i_clk), 
        .RN(n6978), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]), .CK(
        i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]), .CK(i_clk), 
        .RN(n6977), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]), .CK(
        i_clk), .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]), .CK(i_clk), 
        .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]), .CK(
        i_clk), .RN(n6977), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]), .CK(i_clk), 
        .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]), .CK(
        i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]), .CK(
        i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]), .CK(
        i_clk), .RN(n6977), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]), .CK(i_clk), 
        .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]), .CK(
        i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]), .CK(
        i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]), .CK(
        i_clk), .RN(n6977), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]), .CK(i_clk), 
        .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]), .CK(i_clk), 
        .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .CK(i_clk), 
        .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .CK(i_clk), 
        .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .CK(i_clk), 
        .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .CK(i_clk), 
        .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .CK(i_clk), 
        .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .CK(i_clk), 
        .RN(n6967), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]), .CK(i_clk), 
        .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N148), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_N164) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N149), .CK(i_clk), .RN(
        n6977), .Q(median_sobel_inst_u_sobel_gradient_submodule_N165) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N150), .CK(i_clk), .RN(
        n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_N166) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1080), .CK(i_clk), .RN(
        n6962), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1090), .CK(i_clk), .RN(
        n6972), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N114), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_N160) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_N161) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_N162) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N163), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_net50088) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N161), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_n59) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N162), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_net50086) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n137), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_n50) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N164), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_net49311) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N171), .CK(i_clk), .RN(
        n6974), .Q(n3485), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n34) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N165), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_net49279) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]), .CK(
        i_clk), .RN(n6974), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_net49267) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N160), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_net49244) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5]), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N6), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]), .CK(i_clk), 
        .RN(n6974), .QN(n6672) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N17), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]), .CK(i_clk), 
        .RN(n6990), .Q(n6581) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]), .CK(i_clk), 
        .RN(n6974), .QN(n6669) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]), .CK(i_clk), 
        .RN(n6974), .QN(median_sobel_inst_u_sobel_gradient_submodule_n28) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .CK(
        i_clk), .RN(n6969), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n73) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]), .CK(i_clk), 
        .RN(n6980), .QN(median_sobel_inst_u_sobel_gradient_submodule_n33) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_15_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .CK(
        i_clk), .RN(n6969), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n52) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_4_ ( .D(n6705), 
        .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .CK(
        i_clk), .RN(n6968), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n60) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]), .CK(i_clk), 
        .RN(n6969), .QN(n6728) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]), .CK(i_clk), 
        .RN(n6968), .QN(n6727) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]), .CK(i_clk), 
        .RN(n6977), .Q(n6804), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n7) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]), .CK(i_clk), 
        .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N24), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N340), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N132), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1330), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]), .CK(
        i_clk), .RN(n6968), .Q(n6614) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]), .CK(
        i_clk), .RN(n6991), .Q(n6609) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]), .CK(
        i_clk), .RN(n6978), .Q(n6615) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]), .CK(
        i_clk), .RN(n6991), .Q(n6617) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]), .CK(
        i_clk), .RN(n6990), .Q(n6616) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]), .CK(
        i_clk), .RN(n6966), .Q(n6613) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]), .CK(
        i_clk), .RN(n6991), .Q(n6612) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]), .CK(
        i_clk), .RN(n6964), .Q(n6619) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]), .CK(
        i_clk), .RN(n6990), .Q(n6618) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]), .CK(
        i_clk), .RN(n6991), .Q(n6610) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1200), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_sobel_out_data_w[4]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[4]), .CK(i_clk), 
        .RN(n6990), .Q(median_sobel_inst_u_sober_compare_submodule_net62914)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n92), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sober_compare_submodule_n21) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n89), .CK(i_clk), .RN(
        n6977), .Q(median_sobel_inst_u_sober_compare_submodule_n23) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n91), .CK(i_clk), .RN(
        n6972), .Q(median_sobel_inst_u_sober_compare_submodule_n26) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]), .CK(i_clk), 
        .RN(n6971), .Q(median_sobel_inst_u_sober_compare_submodule_net62112)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n90), .CK(i_clk), .RN(
        n6978), .Q(median_sobel_inst_u_sober_compare_submodule_n181) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1240), .CK(i_clk), 
        .RN(n6966), .Q(median_sobel_inst_sobel_out_data_w[8]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sober_compare_submodule_n14), .QN(
        n6703) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n88), .CK(i_clk), .RN(
        n6963), .Q(median_sobel_inst_u_sober_compare_submodule_n184) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]), .CK(i_clk), 
        .RN(n6964), .Q(median_sobel_inst_u_sober_compare_submodule_net60499)
         );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]), .CK(i_clk), 
        .RN(n6989), .QN(median_sobel_inst_u_sober_compare_submodule_net60411)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1180), .CK(i_clk), 
        .RN(n6970), .Q(median_sobel_inst_sobel_out_data_w[2]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1160), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_sobel_out_data_w[0]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]), .CK(i_clk), 
        .RN(n6985), .Q(median_sobel_inst_u_sober_compare_submodule_n4) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]), .CK(i_clk), 
        .RN(n6960), .Q(median_sobel_inst_u_sober_compare_submodule_n3) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]), .CK(i_clk), 
        .RN(n6964), .QN(median_sobel_inst_u_sober_compare_submodule_net56546)
         );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sober_compare_submodule_n2) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]), .CK(i_clk), 
        .RN(n6991), .QN(median_sobel_inst_u_sober_compare_submodule_n54) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n93), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sober_compare_submodule_n16) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n95), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sober_compare_submodule_n13) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n94), .CK(i_clk), .RN(
        n6974), .Q(n6737), .QN(
        median_sobel_inst_u_sober_compare_submodule_n163) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]), .CK(i_clk), 
        .RN(n6974), .Q(n6814), .QN(
        median_sobel_inst_u_sober_compare_submodule_n62) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n129), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sober_compare_submodule_n77) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n130), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sober_compare_submodule_n78) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n131), .CK(i_clk), .RN(
        n6974), .QN(median_sobel_inst_u_sober_compare_submodule_n79) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n133), .CK(i_clk), .RN(
        n6990), .QN(median_sobel_inst_u_sober_compare_submodule_n81) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n134), .CK(i_clk), .RN(
        n6969), .QN(median_sobel_inst_u_sober_compare_submodule_n82) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n136), .CK(i_clk), .RN(
        n6990), .QN(median_sobel_inst_u_sober_compare_submodule_n84) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n137), .CK(i_clk), .RN(
        n6990), .QN(median_sobel_inst_u_sober_compare_submodule_n85) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n132), .CK(i_clk), .RN(
        n6969), .QN(median_sobel_inst_u_sober_compare_submodule_n80) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n135), .CK(i_clk), .RN(
        n6990), .QN(median_sobel_inst_u_sober_compare_submodule_n83) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n138), .CK(i_clk), .RN(
        n6966), .QN(median_sobel_inst_u_sober_compare_submodule_n86) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n139), .CK(i_clk), .RN(
        n6990), .QN(median_sobel_inst_u_sober_compare_submodule_n87) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n99), .CK(i_clk), .RN(
        n6968), .Q(n6606), .QN(
        median_sobel_inst_u_sober_compare_submodule_n158) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n102), .CK(i_clk), .RN(
        n6990), .Q(n6605), .QN(
        median_sobel_inst_u_sober_compare_submodule_n155) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_9_ ( .D(n6553), 
        .CK(i_clk), .RN(n6990), .Q(n6598), .QN(
        median_sobel_inst_u_sober_compare_submodule_n152) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n106), .CK(i_clk), .RN(
        n6990), .Q(n6602), .QN(
        median_sobel_inst_u_sober_compare_submodule_n151) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n96), .CK(i_clk), .RN(
        n6967), .Q(n6608), .QN(
        median_sobel_inst_u_sober_compare_submodule_n161) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n121), .CK(i_clk), .RN(
        n6990), .Q(n6600), .QN(median_sobel_inst_u_sober_compare_submodule_n69) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n124), .CK(i_clk), .RN(
        n6972), .Q(n6607), .QN(median_sobel_inst_u_sober_compare_submodule_n72) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n127), .CK(i_clk), .RN(
        n6970), .Q(n6832), .QN(median_sobel_inst_u_sober_compare_submodule_n75) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n128), .CK(i_clk), .RN(
        n6990), .Q(n6811), .QN(median_sobel_inst_u_sober_compare_submodule_n76) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n110), .CK(i_clk), .RN(
        n6991), .Q(n6821), .QN(
        median_sobel_inst_u_sober_compare_submodule_n147) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n113), .CK(i_clk), .RN(
        n6991), .Q(n6820), .QN(
        median_sobel_inst_u_sober_compare_submodule_n144) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n116), .CK(i_clk), .RN(
        n6991), .Q(n6822), .QN(
        median_sobel_inst_u_sober_compare_submodule_n141) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n117), .CK(i_clk), .RN(
        n6969), .Q(n6806), .QN(
        median_sobel_inst_u_sober_compare_submodule_n140) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n119), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n200) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n122), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n201) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n123), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n202) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n125), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n203) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n126), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n204) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n112), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sober_compare_submodule_n205) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n114), .CK(i_clk), .RN(
        n6971), .Q(median_sobel_inst_u_sober_compare_submodule_n206) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n101), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sober_compare_submodule_n207) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n118), .CK(i_clk), .RN(
        n6971), .Q(median_sobel_inst_u_sober_compare_submodule_n208) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n120), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n209) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n107), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n210) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n108), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n211) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n109), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n212) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n111), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n213) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n115), .CK(i_clk), .RN(
        n6977), .Q(median_sobel_inst_u_sober_compare_submodule_n214) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n97), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n215) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n98), .CK(i_clk), .RN(
        n6964), .Q(median_sobel_inst_u_sober_compare_submodule_n216) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n100), .CK(i_clk), .RN(
        n6971), .Q(median_sobel_inst_u_sober_compare_submodule_n217) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n103), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n218) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n104), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sober_compare_submodule_n219) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N105), .CK(i_clk), .RN(
        n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .QN(n6579) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N103), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .QN(n6725) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N100), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .QN(n6736) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_7_ ( .D(n6739), 
        .CK(i_clk), .RN(n6989), .Q(
        median_sobel_inst_u_median_filter_submodule_net55441) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a3_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[5]), .CK(i_clk), .RN(
        n6966), .QN(median_sobel_inst_u_median_filter_submodule_n352) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_0_ ( .D(n6922), .CK(i_clk), .RN(n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_N118) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N98), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_N1310), .QN(
        n6851) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[7]), .CK(i_clk), .RN(
        n6985), .Q(median_sobel_inst_u_median_filter_submodule_net55220) );
  DFFRX2 conv_inst_conv_1_r_reg_2_ ( .D(conv_inst_N221), .CK(i_clk), .RN(n6987), .Q(conv_inst_conv_1_r[2]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[4]), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_median_filter_submodule_net55277) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[5]), .CK(i_clk), .RN(
        n6989), .Q(median_sobel_inst_u_median_filter_submodule_n372) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[3]), .CK(i_clk), .RN(
        n6989), .Q(median_sobel_inst_u_median_filter_submodule_n376) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[1]), .CK(i_clk), .RN(
        n6958), .Q(median_sobel_inst_u_median_filter_submodule_n365) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_3_ ( .D(
        median_sobel_inst_data_g_r[3]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .QN(n6951) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[5]), .CK(i_clk), .RN(
        n6987), .Q(median_sobel_inst_u_median_filter_submodule_n282) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[0]), .CK(i_clk), .RN(
        n6984), .Q(median_sobel_inst_u_median_filter_submodule_n161) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[1]), .CK(i_clk), .RN(
        n6986), .Q(median_sobel_inst_u_median_filter_submodule_n374) );
  DFFRX2 conv_inst_data_abc_1_r_reg_3_ ( .D(conv_inst_N127), .CK(i_clk), .RN(
        n6962), .Q(conv_inst_data_abc_1_r[3]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[5]), .CK(i_clk), .RN(
        n6983), .Q(median_sobel_inst_u_median_filter_submodule_n236) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]), .CK(i_clk), 
        .RN(n6988), .QN(median_sobel_inst_u_sober_compare_submodule_n52) );
  DFFRX4 conv_inst_conv_2_r_reg_9_ ( .D(conv_inst_N245), .CK(i_clk), .RN(n6983), .Q(conv_inst_conv_2_r[9]), .QN(n6935) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_4_ ( .D(conv_inst_N212), .CK(i_clk), .RN(
        n6960), .Q(conv_inst_data_bcd_4_r[4]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[0]), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_median_filter_submodule_net56734) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[2]), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_net54885) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[2]), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_net54904) );
  DFFRX4 conv_inst_conv_2_r_reg_7_ ( .D(conv_inst_N243), .CK(i_clk), .RN(n6969), .Q(conv_inst_conv_2_r[7]) );
  DFFRX4 conv_inst_data_bcd_4_r_reg_2_ ( .D(conv_inst_N210), .CK(i_clk), .RN(
        n6987), .Q(conv_inst_data_bcd_4_r[2]) );
  DFFRX4 conv_inst_conv_4_r_reg_2_ ( .D(conv_inst_N272), .CK(i_clk), .RN(n6989), .Q(conv_inst_conv_4_r[2]) );
  DFFRHQX2 conv_inst_data_bcd_2_r_reg_0_ ( .D(conv_inst_N135), .CK(i_clk), 
        .RN(n6964), .Q(conv_inst_data_bcd_2_r[0]) );
  DFFRX4 conv_inst_conv_2_r_reg_1_ ( .D(conv_inst_N237), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_2_r[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]), .CK(i_clk), 
        .RN(n6974), .Q(n6922), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n32) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[80]), .CK(i_clk), .RN(n6969), .Q(
        n6921), .QN(median_sobel_inst_n174) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[78]), .CK(i_clk), .RN(i_rst_n), 
        .Q(n6920), .QN(median_sobel_inst_n172) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[81]), .CK(i_clk), .RN(n6964), .Q(
        n6919), .QN(median_sobel_inst_n175) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]), .CK(i_clk), 
        .RN(n6990), .Q(n6918), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n55) );
  DFFRX1 sram_addr_ready_r_reg_2__1_ ( .D(sram_addr_wait_r[16]), .CK(i_clk), 
        .RN(n6969), .Q(sram_addr_w[19]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[0]), .CK(i_clk), .RN(
        n6990), .Q(n6910) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]), .CK(i_clk), 
        .RN(n6972), .Q(median_sobel_inst_u_sober_compare_submodule_n195), .QN(
        n6908) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]), .CK(i_clk), 
        .RN(n6971), .Q(median_sobel_inst_u_sober_compare_submodule_n1), .QN(
        n6893) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]), .CK(
        i_clk), .RN(n6966), .Q(n6892) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]), .CK(i_clk), 
        .RN(n6991), .Q(n6890), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n48) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_1_ ( .D(
        median_sobel_inst_data_e_r[1]), .CK(i_clk), .RN(n6970), .Q(n6886), 
        .QN(median_sobel_inst_u_median_filter_submodule_n119) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sober_compare_submodule_n10), .QN(
        n6883) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]), .CK(i_clk), 
        .RN(n6990), .Q(median_sobel_inst_u_sober_compare_submodule_n9), .QN(
        n6882) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__5_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[5]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_n660), .QN(n6879) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_6_ ( .D(
        median_sobel_inst_data_i_r[6]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n65) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[0]), .CK(i_clk), .RN(
        n6972), .Q(n6876), .QN(
        median_sobel_inst_u_median_filter_submodule_n688) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n709), .CK(i_clk), .RN(
        n6966), .Q(n6874), .QN(
        median_sobel_inst_u_median_filter_submodule_n129) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_3_ ( .D(
        median_sobel_inst_data_e_r[3]), .CK(i_clk), .RN(n6970), .Q(n6873), 
        .QN(median_sobel_inst_u_median_filter_submodule_n112) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_2_ ( .D(
        median_sobel_inst_data_c_r[2]), .CK(i_clk), .RN(n6977), .Q(n6858), 
        .QN(median_sobel_inst_u_median_filter_submodule_n113) );
  DFFRX1 median_sobel_inst_G_reg_3__9_ ( .D(median_sobel_inst_n447), .CK(i_clk), .RN(n6978), .Q(median_sobel_inst_G[42]), .QN(n6856) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_7_ ( .D(
        median_sobel_inst_data_a_r[7]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n107) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_7_ ( .D(
        median_sobel_inst_data_e_r[7]), .CK(i_clk), .RN(n6977), .Q(n6837), 
        .QN(median_sobel_inst_u_median_filter_submodule_n117) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]), 
        .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[27]), .QN(
        n6833) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_0_ ( .D(
        median_sobel_inst_data_c_r[0]), .CK(i_clk), .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .QN(n6813) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_7_ ( .D(
        median_sobel_inst_data_f_r[7]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .QN(n6812) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_4_ ( .D(
        median_sobel_inst_data_b_r[4]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .QN(n6808) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]), .CK(i_clk), 
        .RN(n6967), .QN(n6790) );
  DFFRX2 median_sobel_inst_cs_reg_2_ ( .D(median_sobel_inst_n650), .CK(i_clk), 
        .RN(n6983), .Q(n6782), .QN(median_sobel_inst_n319) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]), .CK(i_clk), 
        .RN(n6969), .Q(n6767), .QN(
        median_sobel_inst_u_sober_compare_submodule_net56177) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .CK(
        i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[12]), .QN(
        n6766) );
  DFFRX1 x_delay_r_reg_2__0_ ( .D(x_delay_r_1__0_), .CK(i_clk), .RN(n6980), 
        .Q(n6936), .QN(n823) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[7]), .CK(i_clk), .RN(
        n6968), .Q(n6726), .QN(
        median_sobel_inst_u_median_filter_submodule_n686) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]), 
        .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[24]), .QN(
        n6719) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]), .CK(i_clk), 
        .RN(n6972), .Q(n6718), .QN(
        median_sobel_inst_u_sober_compare_submodule_net60984) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a8_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[7]), .CK(i_clk), .RN(
        n6979), .Q(median_sobel_inst_u_median_filter_submodule_n22), .QN(n6717) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[6]), .CK(i_clk), .RN(
        n6967), .Q(n6927), .QN(
        median_sobel_inst_u_median_filter_submodule_n683) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[3]), .CK(i_clk), .RN(
        n6968), .Q(n6709), .QN(
        median_sobel_inst_u_median_filter_submodule_n685) );
  DFFRX2 x_minus_one_r_reg_0_ ( .D(n469), .CK(i_clk), .RN(n6971), .Q(n6708), 
        .QN(n7900) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]), 
        .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[20]), .QN(
        n6706) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]), .CK(i_clk), 
        .RN(n6970), .QN(n6704) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__0_ ( .D(
        median_sobel_inst_n531), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n327), .QN(n6700) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__2_ ( .D(
        median_sobel_inst_n505), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n321) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sober_compare_submodule_n19), .QN(
        n6694) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_5_ ( .D(
        median_sobel_inst_data_d_r[5]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .QN(n6693) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__3_ ( .D(
        median_sobel_inst_n536), .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_net64424), .QN(n6691) );
  DFFRX1 median_sobel_inst_cs_reg_0_ ( .D(median_sobel_inst_ns_0_), .CK(i_clk), 
        .RN(n6970), .Q(median_sobel_inst_n153), .QN(n6686) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[3]), .CK(i_clk), .RN(
        n6966), .Q(n6683), .QN(
        median_sobel_inst_u_median_filter_submodule_n680) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]), .CK(i_clk), 
        .RN(n6966), .QN(n6682) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_cnt_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N29), .CK(i_clk), .RN(
        n6988), .Q(n6681), .QN(median_sobel_inst_u_sober_compare_submodule_n64) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[7]), .CK(i_clk), .RN(
        n6963), .Q(median_sobel_inst_u_median_filter_submodule_n360), .QN(
        n6677) );
  DFFRX1 conv_inst_conv_4_r_reg_4_ ( .D(conv_inst_N274), .CK(i_clk), .RN(n6991), .Q(conv_inst_conv_4_r[4]), .QN(n6676) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[2]), .CK(i_clk), .RN(
        n6968), .Q(n6675), .QN(
        median_sobel_inst_u_median_filter_submodule_n689) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]), .CK(i_clk), 
        .RN(n6972), .Q(n6670), .QN(
        median_sobel_inst_u_sober_compare_submodule_n198) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__7_ ( .D(
        median_sobel_inst_n540), .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_n91), .QN(n6668) );
  DFFRX2 conv_inst_conv_1_r_reg_3_ ( .D(conv_inst_N222), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_1_r[3]), .QN(n6661) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__7_ ( .D(
        median_sobel_inst_n532), .CK(i_clk), .RN(n6968), .Q(
        median_sobel_inst_n88), .QN(n6659) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[5]), .CK(i_clk), .RN(
        n6970), .Q(n6648), .QN(
        median_sobel_inst_u_median_filter_submodule_net61277) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[0]), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_median_filter_submodule_n94), .QN(n6645) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_2_ ( .D(
        median_sobel_inst_data_f_r[2]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .QN(n6611) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sober_compare_submodule_n6), .QN(
        n6584) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n678), .CK(i_clk), .RN(
        n6966), .Q(n6583), .QN(
        median_sobel_inst_u_median_filter_submodule_net60646) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]), .CK(i_clk), 
        .RN(n6970), .QN(n6578) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n672), .CK(i_clk), .RN(
        n6989), .Q(n6574), .QN(median_sobel_inst_u_median_filter_submodule_n51) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[6]), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_median_filter_submodule_n99), .QN(n6571) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_0_ ( .D(
        median_sobel_inst_data_f_r[0]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .QN(n6563) );
  DFFRX2 cnt_reg_5_ ( .D(n479), .CK(i_clk), .RN(n6962), .Q(cnt[5]), .QN(n6550)
         );
  DFFRHQX1 x_r_reg_1_ ( .D(N756), .CK(i_clk), .RN(n6991), .Q(x_r[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .CK(i_clk), 
        .RN(n6963), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]) );
  DFFRHQX1 conv_inst_o_out_data_ready_r_reg_8_ ( .D(conv_inst_N74), .CK(i_clk), 
        .RN(n6982), .Q(conv_result_w[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]), .CK(
        i_clk), .RN(n6977), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]) );
  DFFRX1 x_r_reg_0_ ( .D(N755), .CK(i_clk), .RN(n6969), .Q(x_r[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_10_ ( .D(n6639), .CK(i_clk), .RN(n6989), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N111), .CK(i_clk), .RN(
        n6983), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .CK(i_clk), 
        .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]), .CK(
        i_clk), .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .CK(i_clk), 
        .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .CK(i_clk), 
        .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_0_ ( .D(
        median_sobel_inst_data_a_r[0]), .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .CK(i_clk), 
        .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]), .CK(
        i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]), .CK(
        i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]), .CK(
        i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]), .CK(
        i_clk), .RN(n6966), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[65]), .CK(i_clk), .RN(n6969), 
        .QN(median_sobel_inst_n245) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__6_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[69]), .CK(i_clk), .RN(n6990), 
        .QN(median_sobel_inst_n249) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[66]), .CK(i_clk), .RN(n6970), 
        .QN(median_sobel_inst_n246) );
  DFFRX1 x_delay_r_reg_1__1_ ( .D(x_delay_r_0__1_), .CK(i_clk), .RN(n6969), 
        .Q(x_delay_r_1__1_) );
  DFFRX1 x_delay_r_reg_0__0_ ( .D(x_r[0]), .CK(i_clk), .RN(n6964), .Q(
        x_delay_r_0__0_) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]), .CK(i_clk), 
        .RN(n6984), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]), .CK(
        i_clk), .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]), .CK(i_clk), 
        .RN(n6958), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]), .CK(i_clk), 
        .RN(n6986), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]), .CK(i_clk), 
        .RN(n6985), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]), .CK(
        i_clk), .RN(n6987), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]), .CK(i_clk), 
        .RN(n6959), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]), .CK(i_clk), 
        .RN(n6988), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]), .CK(i_clk), 
        .RN(n6989), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]), .CK(i_clk), 
        .RN(n6989), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[63]), .CK(i_clk), .RN(n6971), 
        .QN(median_sobel_inst_n243) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[67]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n247) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_4_ ( .D(
        n6570), .CK(i_clk), .RN(n6978), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]) );
  DFFRX1 pre_state_reg_0__0_ ( .D(n889), .CK(i_clk), .RN(n6990), .Q(
        pre_state[0]) );
  DFFRX1 pre_state_reg_0__1_ ( .D(n825), .CK(i_clk), .RN(n6978), .Q(
        pre_state[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]), .CK(
        i_clk), .RN(n6966), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]), .CK(
        i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n113), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N147), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_N163) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N107), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1310), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1])
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1260), .CK(i_clk), 
        .RN(n6972), .Q(median_sobel_inst_sobel_out_data_w[10]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1250), .CK(i_clk), 
        .RN(n6990), .Q(median_sobel_inst_sobel_out_data_w[9]) );
  DFFRX2 conv_inst_data_bcd_r_reg_6_ ( .D(conv_inst_data_bcd_w[6]), .CK(i_clk), 
        .RN(n6972), .QN(n6554) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_3_ ( .D(conv_inst_N69), .CK(i_clk), 
        .RN(n6969), .Q(conv_result_w[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_11_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N129), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11])
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1170), .CK(i_clk), 
        .RN(n6978), .Q(median_sobel_inst_sobel_out_data_w[1]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1210), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_sobel_out_data_w[5]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_7_ ( .D(conv_inst_N73), .CK(i_clk), 
        .RN(n6963), .Q(conv_result_w[7]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[64]), .CK(i_clk), .RN(n6978), 
        .QN(median_sobel_inst_n244) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[71]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n164) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[46]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n223) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[43]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n220) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[0]), .CK(
        i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n130) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1190), .CK(i_clk), 
        .RN(n6972), .Q(median_sobel_inst_sobel_out_data_w[3]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1220), .CK(i_clk), 
        .RN(n6963), .Q(median_sobel_inst_sobel_out_data_w[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N44), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[44]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n620) );
  DFFRX1 conv_inst_data_abc_r_reg_4_ ( .D(conv_inst_data_abc_w[4]), .CK(i_clk), 
        .RN(n6971), .QN(n6623) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_c2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net34505), .CK(i_clk), 
        .RN(n6968), .Q(median_sobel_inst_out_data_w[7]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__4_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[53]), .CK(i_clk), .RN(n6991), 
        .QN(median_sobel_inst_n231) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_2_ ( .D(
        median_sobel_inst_data_a_r[2]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n114) );
  DFFRX1 sram_addr_ready_r_reg_2__4_ ( .D(sram_addr_wait_r[19]), .CK(i_clk), 
        .RN(n6990), .Q(sram_addr_w[22]), .QN(n424) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1230), .CK(i_clk), 
        .RN(n6978), .Q(median_sobel_inst_sobel_out_data_w[7]) );
  DFFRX1 z_r_reg_0_ ( .D(N758), .CK(i_clk), .RN(n6980), .Q(n774) );
  DFFRX1 z_r_reg_1_ ( .D(N759), .CK(i_clk), .RN(n6991), .Q(z_r[1]) );
  DFFRX1 z_r_reg_3_ ( .D(N761), .CK(i_clk), .RN(n6991), .Q(z_r[3]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_6_ ( .D(
        median_sobel_inst_data_a_r[6]), .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n109) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_3_ ( .D(
        median_sobel_inst_data_a_r[3]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n76) );
  DFFRX1 conv_inst_data_bcd_r_reg_3_ ( .D(conv_inst_data_bcd_w[3]), .CK(i_clk), 
        .RN(n6971), .QN(n6875) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1270), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[9])
         );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_5_ ( .D(
        median_sobel_inst_data_i_r[5]), .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n78) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]), .CK(i_clk), 
        .RN(n6969), .Q(n6621), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n63) );
  DFFRX2 x_origin_r_reg_2_ ( .D(n487), .CK(i_clk), .RN(n6984), .Q(n6601), .QN(
        n1068) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_5_ ( .D(
        median_sobel_inst_data_g_r[5]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n143) );
  DFFRHQX1 conv_inst_conv_4_r_reg_12_ ( .D(conv_inst_N282), .CK(i_clk), .RN(
        n6969), .Q(conv_inst_n37) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]), 
        .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[25]), .QN(
        n6730) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__4_ ( .D(
        median_sobel_inst_n495), .CK(i_clk), .RN(n6971), .QN(
        median_sobel_inst_n263) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_6_ ( .D(
        median_sobel_inst_data_h_r[6]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .QN(n6733) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__3_ ( .D(
        median_sobel_inst_n616), .CK(i_clk), .RN(n6971), .Q(
        median_sobel_inst_n139) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__4_ ( .D(
        median_sobel_inst_n527), .CK(i_clk), .RN(n6970), .Q(
        median_sobel_inst_n381) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N67), .CK(i_clk), .RN(
        n6978), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]) );
  DFFRX1 out_valid_ready_r_reg ( .D(out_valid_wait_r), .CK(i_clk), .RN(n6963), 
        .Q(o_out_valid), .QN(n807) );
  DFFRX1 out_data_ready_r_reg_8_ ( .D(out_data_wait_r[8]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[8]) );
  DFFRX1 out_data_ready_r_reg_9_ ( .D(out_data_wait_r[9]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[9]) );
  DFFRX1 out_data_ready_r_reg_10_ ( .D(out_data_wait_r[10]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[10]) );
  DFFRX1 out_data_ready_r_reg_11_ ( .D(out_data_wait_r[11]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[11]) );
  DFFRX1 out_data_ready_r_reg_12_ ( .D(out_data_wait_r[12]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[12]) );
  DFFRX1 out_data_ready_r_reg_13_ ( .D(out_data_wait_r[13]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[13]) );
  DFFRX1 out_data_ready_r_reg_1_ ( .D(out_data_wait_r[1]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[1]) );
  DFFRX1 out_data_ready_r_reg_2_ ( .D(out_data_wait_r[2]), .CK(i_clk), .RN(
        n6964), .Q(o_out_data[2]) );
  DFFRX1 out_data_ready_r_reg_4_ ( .D(out_data_wait_r[4]), .CK(i_clk), .RN(
        n6977), .Q(o_out_data[4]) );
  DFFRX1 out_data_ready_r_reg_5_ ( .D(out_data_wait_r[5]), .CK(i_clk), .RN(
        n6963), .Q(o_out_data[5]) );
  DFFRX1 conv_inst_data_abc_3_r_reg_10_ ( .D(conv_inst_N207), .CK(i_clk), .RN(
        n6990), .Q(conv_inst_data_abc_3_r[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_11_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N170), .CK(i_clk), .RN(
        n6980), .QN(median_sobel_inst_u_sobel_gradient_submodule_net64662) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__4_ ( .D(
        median_sobel_inst_n503), .CK(i_clk), .RN(n6963), .QN(
        median_sobel_inst_n435) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__4_ ( .D(
        median_sobel_inst_n543), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n64), .QN(n6710) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__7_ ( .D(
        median_sobel_inst_n492), .CK(i_clk), .RN(n6990), .QN(
        median_sobel_inst_n266) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_6_ ( .D(n6630), 
        .CK(i_clk), .RN(n6963), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]), 
        .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[26]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]), .CK(i_clk), 
        .RN(n6990), .Q(n3746), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n61) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N22), .CK(i_clk), .RN(
        n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__3_ ( .D(
        median_sobel_inst_n528), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_n93) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N75), .CK(i_clk), .RN(
        n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]), .CK(i_clk), 
        .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N320), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N12), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__5_ ( .D(
        median_sobel_inst_n566), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_n645) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__5_ ( .D(
        median_sobel_inst_n534), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_n627) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__2_ ( .D(
        median_sobel_inst_n513), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_n429) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .CK(i_clk), 
        .RN(n6987), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4])
         );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__5_ ( .D(
        median_sobel_inst_n574), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_n631) );
  DFFRX1 out_data_ready_r_reg_6_ ( .D(out_data_wait_r[6]), .CK(i_clk), .RN(
        n6972), .Q(o_out_data[6]) );
  DFFRX1 out_data_ready_r_reg_0_ ( .D(out_data_wait_r[0]), .CK(i_clk), .RN(
        n6971), .Q(o_out_data[0]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[0]), .CK(i_clk), .RN(
        n6969), .QN(median_sobel_inst_u_median_filter_submodule_n687) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__6_ ( .D(
        median_sobel_inst_n541), .CK(i_clk), .RN(n6966), .Q(
        median_sobel_inst_n87), .QN(n6695) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N106), .CK(i_clk), .RN(
        n6978), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .QN(n6902) );
  DFFRX1 conv_inst_data_abc_1_r_reg_9_ ( .D(conv_inst_N133), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_abc_1_r[9]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[7]), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_n197) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]), 
        .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[23]), .QN(
        n6582) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__1_ ( .D(
        median_sobel_inst_n554), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_n398) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6])
         );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__5_ ( .D(
        median_sobel_inst_n502), .CK(i_clk), .RN(n6990), .QN(
        median_sobel_inst_n434) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]), .CK(i_clk), 
        .RN(n6980), .QN(median_sobel_inst_u_sobel_gradient_submodule_n57) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__1_ ( .D(
        median_sobel_inst_n610), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n629) );
  DFFRX2 input_data_ready_r_reg_23_ ( .D(N710), .CK(i_clk), .RN(n6964), .Q(
        input_data_ready_r[23]), .QN(n6715) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__3_ ( .D(
        median_sobel_inst_n608), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_n140) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__3_ ( .D(
        median_sobel_inst_n512), .CK(i_clk), .RN(n6969), .QN(
        median_sobel_inst_n428) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__7_ ( .D(
        median_sobel_inst_n500), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_n432) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_4_ ( .D(n6713), 
        .CK(i_clk), .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N290), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__1_ ( .D(
        median_sobel_inst_n530), .CK(i_clk), .RN(n6964), .Q(
        median_sobel_inst_n135) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]), .CK(i_clk), 
        .RN(n6978), .QN(n3748) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__1_ ( .D(
        median_sobel_inst_n618), .CK(i_clk), .RN(n6972), .QN(
        median_sobel_inst_n334) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N300), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__0_ ( .D(
        median_sobel_inst_n587), .CK(i_clk), .RN(n6991), .QN(
        median_sobel_inst_n367) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]), .CK(i_clk), 
        .RN(n6970), .QN(median_sobel_inst_u_sobel_gradient_submodule_n56) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_6_ ( .D(
        median_sobel_inst_data_b_r[6]), .CK(i_clk), .RN(n6964), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .QN(n6818) );
  DFFRX1 conv_inst_data_abc_1_r_reg_10_ ( .D(conv_inst_N134), .CK(i_clk), .RN(
        n6970), .Q(conv_inst_data_abc_1_r[10]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_2_ ( .D(
        median_sobel_inst_data_c_r[2]), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n136) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]), .CK(i_clk), 
        .RN(n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]), .CK(i_clk), 
        .RN(n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]), .CK(i_clk), 
        .RN(n6990), .QN(n3736) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N126), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[5]), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_median_filter_submodule_n126) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_3_ ( .D(
        median_sobel_inst_data_d_r[3]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .QN(n6631) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__0_ ( .D(
        median_sobel_inst_n563), .CK(i_clk), .RN(n6963), .QN(
        median_sobel_inst_n391) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_0_ ( .D(
        median_sobel_inst_data_h_r[0]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .QN(n6844) );
  DFFRX2 conv_inst_conv_2_r_reg_12_ ( .D(conv_inst_N248), .CK(i_clk), .RN(
        n6968), .Q(conv_inst_conv_2_r[12]), .QN(n6861) );
  DFFRHQX1 conv_inst_data_abc_3_r_reg_3_ ( .D(conv_inst_N200), .CK(i_clk), 
        .RN(n6969), .Q(conv_inst_n62) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .CK(i_clk), 
        .RN(n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[0]), 
        .QN(n6641) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]), .CK(i_clk), 
        .RN(n6974), .QN(n6636) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]), .CK(i_clk), 
        .RN(n6974), .QN(n6644) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .CK(i_clk), 
        .RN(n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), 
        .QN(n6560) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]), .CK(i_clk), 
        .RN(n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .CK(i_clk), 
        .RN(n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), 
        .QN(n6559) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N36), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_13_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N156), .CK(i_clk), 
        .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .CK(i_clk), 
        .RN(n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[0]), 
        .QN(n6638) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_2_ ( .D(n6786), 
        .CK(i_clk), .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N27), .CK(i_clk), .RN(
        n6977), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]), .CK(i_clk), 
        .RN(n6978), .QN(n6569) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4])
         );
  DFFRX2 conv_inst_data_abc_1_r_reg_2_ ( .D(conv_inst_N126), .CK(i_clk), .RN(
        n6958), .Q(conv_inst_data_abc_1_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]), .CK(i_clk), 
        .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n676), .CK(i_clk), .RN(
        n6989), .Q(n6566), .QN(
        median_sobel_inst_u_median_filter_submodule_net22631) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N18), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]), .CK(i_clk), 
        .RN(n6969), .Q(n6551) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_3_ ( .D(n6707), 
        .CK(i_clk), .RN(n6971), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N280), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]) );
  DFFRX2 conv_inst_cs_reg_0_ ( .D(conv_inst_ns[0]), .CK(i_clk), .RN(n6989), 
        .QN(conv_inst_n67) );
  DFFRX2 input_data_ready_r_reg_30_ ( .D(N717), .CK(i_clk), .RN(n6969), .Q(
        input_data_ready_r[30]), .QN(n6860) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N125), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7])
         );
  DFFRX2 conv_inst_conv_1_r_reg_5_ ( .D(conv_inst_N224), .CK(i_clk), .RN(n6962), .Q(conv_inst_conv_1_r[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N26), .CK(i_clk), .RN(
        n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[3]), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_n150) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]), .CK(i_clk), 
        .RN(n6990), .Q(n6576) );
  DFFRX2 conv_inst_conv_3_r_reg_5_ ( .D(conv_inst_N258), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_3_r[5]) );
  DFFRX2 conv_inst_conv_3_r_reg_2_ ( .D(conv_inst_N255), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_3_r[2]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[5]), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_median_filter_submodule_n286) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n675), .CK(i_clk), .RN(
        n6988), .QN(median_sobel_inst_u_median_filter_submodule_net22629) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1240), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N140), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N16), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_0_ ( .D(conv_inst_N197), .CK(i_clk), .RN(
        n6984), .Q(conv_inst_data_abc_3_r[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1010), .CK(i_clk), .RN(
        n6966), .Q(n6570), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n110) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .CK(i_clk), 
        .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]) );
  DFFRX2 conv_inst_conv_1_r_reg_0_ ( .D(conv_inst_N219), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_1_r[0]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_0_ ( .D(conv_inst_N124), .CK(i_clk), .RN(
        n6986), .Q(conv_inst_data_abc_1_r[0]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_1_ ( .D(conv_inst_N209), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_bcd_4_r[1]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_4_ ( .D(conv_inst_N201), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_abc_3_r[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n698), .CK(i_clk), .RN(
        n6969), .Q(n6665), .QN(median_sobel_inst_u_median_filter_submodule_n98) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_1_ ( .D(
        median_sobel_inst_data_g_r[1]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[1]), .QN(n6889) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[1]), .CK(i_clk), .RN(
        n6983), .Q(n6663), .QN(median_sobel_inst_u_median_filter_submodule_n92) );
  DFFRX1 conv_calc_done_r_reg ( .D(n439), .CK(i_clk), .RN(n6990), .Q(
        conv_calc_done_r), .QN(n6884) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N134), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4])
         );
  DFFRX2 conv_inst_conv_3_r_reg_1_ ( .D(conv_inst_N254), .CK(i_clk), .RN(n6958), .Q(conv_inst_conv_3_r[1]) );
  DFFRX2 conv_inst_conv_2_r_reg_4_ ( .D(conv_inst_N240), .CK(i_clk), .RN(n6972), .Q(conv_inst_conv_2_r[4]), .QN(n6627) );
  DFFRX2 conv_inst_data_abc_3_r_reg_1_ ( .D(conv_inst_N198), .CK(i_clk), .RN(
        n6990), .Q(conv_inst_data_abc_3_r[1]) );
  DFFRX2 conv_inst_conv_3_r_reg_3_ ( .D(conv_inst_N256), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_3_r[3]) );
  DFFRHQX4 op_mode_r_reg_0_ ( .D(n440), .CK(i_clk), .RN(n6963), .Q(
        op_mode_r[0]) );
  DFFRHQX4 op_mode_r_reg_2_ ( .D(n442), .CK(i_clk), .RN(n6969), .Q(n869) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[7]), .CK(i_clk), .RN(
        n6967), .Q(n6939), .QN(
        median_sobel_inst_u_median_filter_submodule_n684) );
  DFFRX2 cnt_reg_6_ ( .D(n478), .CK(i_clk), .RN(n6989), .Q(cnt[6]), .QN(n6870)
         );
  DFFRX1 input_data_ready_r_reg_31_ ( .D(N718), .CK(i_clk), .RN(n6971), .Q(
        input_data_ready_r[31]), .QN(n6797) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_3_ ( .D(
        median_sobel_inst_data_b_r[3]), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .QN(n6901) );
  DFFRX1 input_data_ready_r_reg_6_ ( .D(N693), .CK(i_clk), .RN(n6977), .Q(
        input_data_ready_r[6]), .QN(n6841) );
  DFFRX2 input_data_ready_r_reg_4_ ( .D(N691), .CK(i_clk), .RN(n6980), .Q(
        input_data_ready_r[4]), .QN(n6953) );
  DFFRX2 conv_inst_data_bcd_r_reg_5_ ( .D(conv_inst_data_bcd_w[5]), .CK(i_clk), 
        .RN(n6969), .QN(n6880) );
  DFFRX4 input_data_ready_r_reg_27_ ( .D(N714), .CK(i_clk), .RN(n6963), .QN(
        n861) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net34511), .CK(i_clk), 
        .RN(n6977), .Q(median_sobel_inst_out_data_w[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net34517), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_out_data_w[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n669), .CK(i_clk), .RN(
        n6972), .Q(median_sobel_inst_out_data_w[5]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n670), .CK(i_clk), .RN(
        n6960), .Q(median_sobel_inst_out_data_w[6]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a28_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a28_w), .CK(i_clk), .RN(
        n6987), .Q(n6724), .QN(
        median_sobel_inst_u_median_filter_submodule_n395) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a25_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a25_w), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_median_filter_submodule_n164) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net34515), .CK(i_clk), 
        .RN(n6964), .Q(median_sobel_inst_out_data_w[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a58_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a58_w), .CK(i_clk), .RN(
        n6960), .QN(median_sobel_inst_u_median_filter_submodule_n165) );
  DFFRX4 input_data_ready_r_reg_20_ ( .D(N707), .CK(i_clk), .RN(n6963), .Q(
        input_data_ready_r[20]), .QN(n6846) );
  DFFRX2 y_r_reg_2_ ( .D(n1460), .CK(i_clk), .RN(n6985), .Q(y_r[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n668), .CK(i_clk), .RN(
        n6960), .Q(median_sobel_inst_out_data_w[3]) );
  DFFRX4 input_data_ready_r_reg_24_ ( .D(N711), .CK(i_clk), .RN(n6960), .Q(
        n6857), .QN(n839) );
  DFFRX2 conv_inst_data_bcd_r_reg_8_ ( .D(n6996), .CK(i_clk), .RN(n6969), .QN(
        n6895) );
  DFFRHQX8 median_sobel_inst_cnt_reg_1_ ( .D(median_sobel_inst_N113), .CK(
        i_clk), .RN(n6969), .Q(median_sobel_inst_net62749) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .CK(i_clk), 
        .RN(n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7])
         );
  DFFRX4 x_origin_r_reg_0_ ( .D(n489), .CK(i_clk), .RN(n6987), .Q(N730), .QN(
        n469) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n667), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_out_data_w[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .CK(i_clk), 
        .RN(n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), 
        .QN(n2748) );
  DFFRX4 input_data_ready_r_reg_12_ ( .D(N699), .CK(i_clk), .RN(n6983), .Q(
        n6555), .QN(n837) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1280), .CK(i_clk), .RN(
        n6980), .Q(n3487), .QN(n6866) );
  DFFRX4 conv_inst_data_abc_1_r_reg_1_ ( .D(conv_inst_N125), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_abc_1_r[1]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[6]), .CK(i_clk), .RN(
        n6989), .Q(median_sobel_inst_u_median_filter_submodule_n212) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N43), .CK(i_clk), .RN(
        n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p8_r_reg_3_ ( .D(
        median_sobel_inst_data_h_r[3]), .CK(i_clk), .RN(n6979), .Q(n3443), 
        .QN(n6666) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n699), .CK(i_clk), .RN(
        n6962), .Q(n6945), .QN(median_sobel_inst_u_median_filter_submodule_n53) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n700), .CK(i_clk), .RN(
        n6970), .Q(n6635), .QN(
        median_sobel_inst_u_median_filter_submodule_net58959) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[6]), .CK(i_clk), .RN(
        n6979), .Q(median_sobel_inst_u_median_filter_submodule_a5_r[6]), .QN(
        n6930) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n707), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_median_filter_submodule_b1_r_5_), .QN(
        n6662) );
  DFFRX2 median_sobel_inst_cnt_reg_3_ ( .D(median_sobel_inst_N115), .CK(i_clk), 
        .RN(n6989), .Q(median_sobel_inst_cnt[3]), .QN(median_sobel_inst_n154)
         );
  DFFRX4 input_data_ready_r_reg_1_ ( .D(N688), .CK(i_clk), .RN(n6987), .Q(
        n6937), .QN(n882) );
  DFFRX2 med_sobel_isFirst_signal_r_reg ( .D(N790), .CK(i_clk), .RN(n6978), 
        .Q(med_sobel_isFirst_signal_r) );
  DFFRX2 conv_isFirst_signal_r_reg ( .D(N789), .CK(i_clk), .RN(n6990), .Q(
        conv_isFirst_signal_r) );
  DFFRX2 sram_addr_ready_r_reg_0__0_ ( .D(n1459), .CK(i_clk), .RN(n6962), .Q(
        sram_addr_w[0]), .QN(n821) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N112), .CK(i_clk), .RN(
        n6960), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_6_ ( .D(conv_inst_N72), .CK(i_clk), 
        .RN(n6983), .Q(conv_result_w[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N690), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n705), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_net54874) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_12_ ( .D(conv_inst_N78), .CK(i_clk), 
        .RN(n6971), .Q(result_w[12]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_10_ ( .D(conv_inst_N218), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_bcd_4_r[10]) );
  DFFRX2 conv_inst_conv_1_r_reg_15_ ( .D(conv_inst_N234), .CK(i_clk), .RN(
        n6989), .Q(conv_inst_conv_1_r[15]) );
  DFFRX4 input_data_ready_r_reg_18_ ( .D(N705), .CK(i_clk), .RN(n6958), .Q(
        n6948), .QN(n867) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n703), .CK(i_clk), .RN(
        n6962), .QN(n6688) );
  DFFRX4 input_data_ready_r_reg_28_ ( .D(N715), .CK(i_clk), .RN(n6963), .Q(
        input_data_ready_r[28]), .QN(n6633) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[4]), .CK(i_clk), .RN(
        n6958), .Q(median_sobel_inst_u_median_filter_submodule_a5_r[4]), .QN(
        n6702) );
  DFFRX2 out_data_ready_r_reg_3_ ( .D(out_data_wait_r[3]), .CK(i_clk), .RN(
        n6969), .Q(o_out_data[3]) );
  DFFRX2 x_delay_r_reg_2__1_ ( .D(x_delay_r_1__1_), .CK(i_clk), .RN(n6988), 
        .Q(n2715), .QN(n6955) );
  DFFRX4 input_data_ready_r_reg_3_ ( .D(N690), .CK(i_clk), .RN(n6962), .Q(
        n6952), .QN(n858) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N119), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_15_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N158), .CK(i_clk), 
        .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .QN(
        n3480) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__2_ ( .D(
        median_sobel_inst_n569), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_net64417) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a36_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a36_w), .CK(i_clk), .RN(
        n6959), .QN(median_sobel_inst_u_median_filter_submodule_n549) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n674), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_median_filter_submodule_n24), .QN(n6944) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[1]), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_median_filter_submodule_a5_r[1]) );
  DFFRX4 conv_inst_conv_2_r_reg_8_ ( .D(conv_inst_N244), .CK(i_clk), .RN(n6959), .Q(conv_inst_conv_2_r[8]) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__3_ ( .D(
        median_sobel_inst_n576), .CK(i_clk), .RN(n6982), .Q(
        median_sobel_inst_n640) );
  DFFRX2 sram_addr_ready_r_reg_1__0_ ( .D(n1458), .CK(i_clk), .RN(n6987), .Q(
        sram_addr_w[9]), .QN(n822) );
  DFFRX2 conv_inst_data_abc_r_reg_5_ ( .D(conv_inst_data_abc_w[5]), .CK(i_clk), 
        .RN(n6972), .QN(n6896) );
  DFFRX2 conv_inst_conv_1_r_reg_13_ ( .D(conv_inst_N232), .CK(i_clk), .RN(
        n6959), .Q(conv_inst_conv_1_r[13]), .QN(n6868) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N330), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p2_r_reg_1_ ( .D(
        median_sobel_inst_data_b_r[1]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p3_r_reg_1_ ( .D(
        median_sobel_inst_data_c_r[1]), .CK(i_clk), .RN(n6978), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .QN(n6701) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]), .CK(i_clk), 
        .RN(n6987), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1380), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net21363), .CK(i_clk), 
        .RN(n6959), .Q(median_sobel_inst_u_median_filter_submodule_b9_r[5]), 
        .QN(n6655) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[4]), .CK(i_clk), .RN(
        n6968), .Q(n6900), .QN(
        median_sobel_inst_u_median_filter_submodule_net22653) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]), .CK(i_clk), 
        .RN(n6989), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6])
         );
  DFFRX2 cnt_reg_9_ ( .D(n475), .CK(i_clk), .RN(n6990), .Q(cnt[9]), .QN(n6685)
         );
  DFFRX2 median_sobel_inst_out_done_r_reg ( .D(median_sobel_inst_N96), .CK(
        i_clk), .RN(n6989), .Q(med_done_w) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a7_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[1]), .CK(i_clk), .RN(
        n6986), .Q(median_sobel_inst_u_median_filter_submodule_n288) );
  DFFRX4 conv_inst_conv_4_r_reg_7_ ( .D(conv_inst_N277), .CK(i_clk), .RN(n6988), .Q(conv_inst_conv_4_r[7]) );
  DFFRX2 conv_inst_conv_2_r_reg_15_ ( .D(conv_inst_N251), .CK(i_clk), .RN(
        n6985), .Q(conv_inst_conv_2_r[15]), .QN(n3749) );
  DFFRX4 conv_inst_data_bcd_2_r_reg_1_ ( .D(conv_inst_N136), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_bcd_2_r[1]) );
  DFFRX4 conv_inst_conv_2_r_reg_5_ ( .D(conv_inst_N241), .CK(i_clk), .RN(n6985), .Q(conv_inst_conv_2_r[5]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_5_ ( .D(conv_inst_N71), .CK(i_clk), 
        .RN(n6969), .Q(conv_result_w[5]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_5_ ( .D(conv_inst_N202), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_data_abc_3_r[5]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N23), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p3_r_reg_3_ ( .D(
        median_sobel_inst_n709), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .QN(n6721) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[2]), .CK(i_clk), .RN(
        n6964), .Q(median_sobel_inst_u_median_filter_submodule_n348), .QN(
        n6698) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]), .CK(i_clk), 
        .RN(n6989), .QN(median_sobel_inst_u_sobel_gradient_submodule_N480) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N115), .CK(i_clk), .RN(
        n6991), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N68), .CK(i_clk), .RN(
        n6990), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a39_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a39_w), .CK(i_clk), .RN(
        n6968), .QN(median_sobel_inst_u_median_filter_submodule_n222) );
  DFFRHQX8 curr_state_reg_1_ ( .D(n1455), .CK(i_clk), .RN(n6963), .Q(n825) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]), .CK(i_clk), 
        .RN(n6964), .QN(median_sobel_inst_u_sobel_gradient_submodule_n31) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]), .CK(i_clk), 
        .RN(n6969), .QN(median_sobel_inst_u_sobel_gradient_submodule_n37) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]), .CK(i_clk), 
        .RN(n6977), .QN(median_sobel_inst_u_sobel_gradient_submodule_n46) );
  DFFRX2 conv_inst_conv_3_r_reg_15_ ( .D(conv_inst_N268), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_conv_3_r[15]), .QN(n3745) );
  DFFRX4 input_data_ready_r_reg_16_ ( .D(N703), .CK(i_clk), .RN(n6989), .Q(
        n6942), .QN(n885) );
  DFFRHQX8 median_sobel_inst_cnt_reg_0_ ( .D(median_sobel_inst_N112), .CK(
        i_clk), .RN(n6977), .Q(median_sobel_inst_cnt[0]) );
  DFFRX2 conv_inst_conv_3_r_reg_16_ ( .D(conv_inst_N269), .CK(i_clk), .RN(
        n6986), .Q(conv_inst_conv_3_r[16]) );
  DFFRX2 x_plus_two_r_reg_1_ ( .D(n1354), .CK(i_clk), .RN(n6978), .Q(
        x_plus_two_r[1]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_11_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N141), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11])
         );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[3]), .CK(i_clk), .RN(
        n6967), .QN(median_sobel_inst_u_median_filter_submodule_n696) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1020), .CK(i_clk), .RN(
        n6982), .Q(median_sobel_inst_u_sobel_gradient_submodule_n113) );
  DFFRX2 conv_inst_data_abc_3_r_reg_9_ ( .D(conv_inst_N206), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_data_abc_3_r[9]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_5_ ( .D(conv_inst_N213), .CK(i_clk), .RN(
        n6962), .Q(conv_inst_data_bcd_4_r[5]) );
  DFFRX4 input_data_ready_r_reg_15_ ( .D(N702), .CK(i_clk), .RN(n6969), .Q(
        input_data_ready_r[15]), .QN(n6738) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[7]), .CK(i_clk), .RN(
        n6970), .Q(n6871), .QN(
        median_sobel_inst_u_median_filter_submodule_n148) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[6]), .CK(i_clk), .RN(
        n6967), .Q(n6696), .QN(
        median_sobel_inst_u_median_filter_submodule_n217) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0])
         );
  DFFRHQX2 map_load_done_r_reg ( .D(N866), .CK(i_clk), .RN(n6964), .Q(n831) );
  DFFRX2 sram_addr_ready_r_reg_3__0_ ( .D(n1456), .CK(i_clk), .RN(n6989), .Q(
        sram_addr_w[27]), .QN(n1404) );
  DFFRX2 conv_inst_data_abc_r_reg_9_ ( .D(n6995), .CK(i_clk), .RN(n6980), .QN(
        n6891) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N172), .CK(i_clk), .RN(
        n6980), .QN(median_sobel_inst_u_sobel_gradient_submodule_n5) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1730), .CK(i_clk), .RN(
        n6980), .QN(n6783) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_15_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1740), .CK(i_clk), .RN(
        n6969), .QN(median_sobel_inst_u_sobel_gradient_submodule_n128) );
  DFFRX2 conv_inst_conv_3_r_reg_11_ ( .D(conv_inst_N264), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_conv_3_r[11]), .QN(n6690) );
  DFFRX2 conv_inst_conv_3_r_reg_13_ ( .D(conv_inst_N266), .CK(i_clk), .RN(
        n6972), .Q(conv_inst_conv_3_r[13]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[2]), .CK(i_clk), .RN(
        n6969), .Q(n6568), .QN(
        median_sobel_inst_u_median_filter_submodule_n690) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N104), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]) );
  DFFRX2 conv_inst_conv_1_r_reg_12_ ( .D(conv_inst_N231), .CK(i_clk), .RN(
        n6971), .Q(conv_inst_conv_1_r[12]), .QN(n6894) );
  DFFRX4 conv_inst_conv_1_r_reg_1_ ( .D(conv_inst_N220), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_1_r[1]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[3]), .CK(i_clk), .RN(
        n6983), .Q(median_sobel_inst_u_median_filter_submodule_n274), .QN(
        n6646) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1100), .CK(i_clk), .RN(
        n6989), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]), .CK(i_clk), 
        .RN(n6969), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N72), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_4_ ( .D(
        n6689), .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]) );
  DFFRX4 input_data_ready_r_reg_10_ ( .D(N697), .CK(i_clk), .RN(n6960), .Q(
        n6785), .QN(n856) );
  DFFRHQX2 conv_inst_conv_4_r_reg_3_ ( .D(conv_inst_N273), .CK(i_clk), .RN(
        n6969), .Q(conv_inst_n36) );
  DFFRX4 input_data_ready_r_reg_11_ ( .D(N698), .CK(i_clk), .RN(n6984), .Q(
        n6836), .QN(n920) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[2]), .CK(i_clk), .RN(
        n6962), .Q(n6680), .QN(median_sobel_inst_u_median_filter_submodule_n26) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[4]), .CK(i_clk), .RN(
        n6969), .Q(n6697) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n706), .CK(i_clk), .RN(
        n6986), .Q(n3488), .QN(
        median_sobel_inst_u_median_filter_submodule_net62055) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[6]), .CK(i_clk), .RN(
        n6970), .QN(median_sobel_inst_u_median_filter_submodule_n90) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N71), .CK(i_clk), .RN(
        n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3])
         );
  DFFRX4 input_data_ready_r_reg_22_ ( .D(N709), .CK(i_clk), .RN(n6964), .Q(
        input_data_ready_r[22]), .QN(n6852) );
  DFFSX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_10_ ( .D(
        n3735), .CK(i_clk), .SN(n6969), .Q(n6992), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_net64263) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]), .CK(i_clk), 
        .RN(n6990), .Q(n6544) );
  DFFSRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_10_ ( 
        .D(n6548), .CK(i_clk), .SN(1'b1), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_) );
  DFFRHQX1 conv_inst_conv_3_r_reg_0_ ( .D(conv_inst_N253), .CK(i_clk), .RN(
        n6969), .Q(conv_inst_conv_3_r[0]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a8_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[6]), .CK(i_clk), .RN(
        n6990), .Q(n6848) );
  DFFSX4 input_data_ready_r_reg_0_ ( .D(n6538), .CK(i_clk), .SN(n6958), .Q(
        n865), .QN(n6943) );
  DFFSX1 pre_state_reg_0__2_ ( .D(n914), .CK(i_clk), .SN(n6982), .Q(
        pre_state[2]) );
  DFFRHQX1 z_r_reg_2_ ( .D(N760), .CK(i_clk), .RN(n6991), .Q(n835) );
  DFFRHQX1 conv_inst_conv_1_r_reg_14_ ( .D(conv_inst_N233), .CK(i_clk), .RN(
        n6963), .Q(conv_inst_conv_1_r[14]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_10_ ( .D(
        n6667), .CK(i_clk), .RN(n6970), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n65) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[2]), .CK(i_clk), .RN(
        n6963), .Q(n6657), .QN(
        median_sobel_inst_u_median_filter_submodule_n211) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_14_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N157), .CK(i_clk), 
        .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]) );
  DFFRX4 sram_data_out_r_reg_3__4_ ( .D(sram_data_out_w[28]), .CK(i_clk), .RN(
        n6960), .Q(n6906), .QN(n805) );
  DFFRX4 sram_data_out_r_reg_2__2_ ( .D(sram_data_out_w[18]), .CK(i_clk), .RN(
        n6984), .Q(n6917), .QN(n787) );
  DFFRX4 sram_data_out_r_reg_2__4_ ( .D(sram_data_out_w[20]), .CK(i_clk), .RN(
        n6985), .Q(n6916), .QN(n791) );
  DFFRX4 sram_data_out_r_reg_3__1_ ( .D(sram_data_out_w[25]), .CK(i_clk), .RN(
        n6989), .Q(n6905), .QN(n802) );
  DFFRX4 sram_data_out_r_reg_2__1_ ( .D(sram_data_out_w[17]), .CK(i_clk), .RN(
        n6989), .Q(n6909), .QN(n784) );
  DFFRX4 sram_data_out_r_reg_3__6_ ( .D(sram_data_out_w[30]), .CK(i_clk), .RN(
        n6989), .Q(n6904), .QN(n808) );
  DFFRX4 sram_data_out_r_reg_3__2_ ( .D(sram_data_out_w[26]), .CK(i_clk), .RN(
        n6959), .Q(n6913), .QN(n804) );
  DFFRX4 sram_data_out_r_reg_0__5_ ( .D(sram_data_out_w[5]), .CK(i_clk), .RN(
        n6988), .Q(n6885), .QN(n801) );
  DFFRX4 sram_data_out_r_reg_2__6_ ( .D(sram_data_out_w[22]), .CK(i_clk), .RN(
        n6983), .Q(n6914), .QN(n792) );
  DFFRX4 sram_data_out_r_reg_2__3_ ( .D(sram_data_out_w[19]), .CK(i_clk), .RN(
        n6989), .Q(n6907), .QN(n809) );
  DFFRX4 sram_data_out_r_reg_2__0_ ( .D(sram_data_out_w[16]), .CK(i_clk), .RN(
        n6987), .Q(n6912), .QN(n8110) );
  DFFRX4 sram_data_out_r_reg_3__3_ ( .D(sram_data_out_w[27]), .CK(i_clk), .RN(
        n6972), .Q(n6903), .QN(n778) );
  DFFRX4 sram_data_out_r_reg_2__5_ ( .D(sram_data_out_w[21]), .CK(i_clk), .RN(
        n6984), .Q(n6877), .QN(n819) );
  DFFRX4 sram_data_out_r_reg_3__5_ ( .D(sram_data_out_w[29]), .CK(i_clk), .RN(
        n6960), .Q(n6878), .QN(n7890) );
  DFFRX4 sram_data_out_r_reg_3__0_ ( .D(sram_data_out_w[24]), .CK(i_clk), .RN(
        n6980), .Q(n6911), .QN(n793) );
  DFFRX4 sram_data_out_r_reg_0__2_ ( .D(sram_data_out_w[2]), .CK(i_clk), .RN(
        n6977), .Q(n6899) );
  DFFRX4 sram_data_out_r_reg_0__1_ ( .D(sram_data_out_w[1]), .CK(i_clk), .RN(
        n6989), .Q(n6897) );
  DFFRX4 sram_data_out_r_reg_0__4_ ( .D(sram_data_out_w[4]), .CK(i_clk), .RN(
        n6960), .Q(n6898) );
  DFFRX4 sram_data_out_r_reg_2__7_ ( .D(sram_data_out_w[23]), .CK(i_clk), .RN(
        n6962), .Q(n6915), .QN(n806) );
  DFFRX4 sram_data_out_r_reg_3__7_ ( .D(sram_data_out_w[31]), .CK(i_clk), .RN(
        n6958), .Q(n6620), .QN(n794) );
  DFFRX4 sram_data_out_r_reg_1__3_ ( .D(sram_data_out_w[11]), .CK(i_clk), .RN(
        n6985), .Q(n6622) );
  DFFRX4 sram_data_out_r_reg_0__3_ ( .D(sram_data_out_w[3]), .CK(i_clk), .RN(
        n6984), .Q(n6887) );
  DFFRX4 sram_data_out_r_reg_1__6_ ( .D(sram_data_out_w[14]), .CK(i_clk), .RN(
        n6959), .Q(n6888) );
  DFFRX4 sram_data_out_r_reg_0__6_ ( .D(sram_data_out_w[6]), .CK(i_clk), .RN(
        n6988), .Q(n6881) );
  DFFRX4 sram_data_out_r_reg_1__5_ ( .D(sram_data_out_w[13]), .CK(i_clk), .RN(
        n6960), .Q(n6845), .QN(n7850) );
  DFFRX4 sram_data_out_r_reg_1__2_ ( .D(sram_data_out_w[10]), .CK(i_clk), .RN(
        n6989), .Q(n6843), .QN(n803) );
  DFFRX4 sram_data_out_r_reg_0__0_ ( .D(sram_data_out_w[0]), .CK(i_clk), .RN(
        n6986), .Q(n6869) );
  DFFRX4 sram_data_out_r_reg_0__7_ ( .D(sram_data_out_w[7]), .CK(i_clk), .RN(
        n6983), .Q(n6867) );
  DFFRX4 sram_data_out_r_reg_1__4_ ( .D(sram_data_out_w[12]), .CK(i_clk), .RN(
        n6958), .Q(n6855) );
  DFFRX4 sram_data_out_r_reg_1__1_ ( .D(sram_data_out_w[9]), .CK(i_clk), .RN(
        n6986), .Q(n6854) );
  DFFRX4 sram_data_out_r_reg_1__0_ ( .D(sram_data_out_w[8]), .CK(i_clk), .RN(
        n6960), .Q(sram_data_out_r_1__0_) );
  DFFRX4 sram_data_out_r_reg_1__7_ ( .D(sram_data_out_w[15]), .CK(i_clk), .RN(
        n6991), .Q(n6799), .QN(n788) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[3]), .CK(i_clk), .RN(
        n6968), .Q(median_sobel_inst_u_median_filter_submodule_net41723), .QN(
        n6654) );
  DFFRHQX1 conv_inst_conv_2_r_reg_11_ ( .D(n6656), .CK(i_clk), .RN(n6969), .Q(
        conv_inst_n43) );
  DFFRHQX1 conv_inst_conv_2_r_reg_14_ ( .D(n6626), .CK(i_clk), .RN(n6969), .Q(
        conv_inst_n64) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[1]), .CK(i_clk), .RN(
        n6985), .Q(median_sobel_inst_u_median_filter_submodule_n219) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net21368), .CK(i_clk), 
        .RN(n6985), .Q(n6549), .QN(
        median_sobel_inst_u_median_filter_submodule_n19) );
  DFFRHQX4 curr_state_reg_3_ ( .D(n3528), .CK(i_clk), .RN(n6969), .Q(n6539) );
  DFFRX2 conv_inst_conv_3_r_reg_4_ ( .D(conv_inst_N257), .CK(i_clk), .RN(n6989), .Q(conv_inst_conv_3_r[4]), .QN(n3474) );
  DFFRX2 op_mode_r_reg_3_ ( .D(n443), .CK(i_clk), .RN(n6963), .Q(op_mode_r[3]), 
        .QN(n6925) );
  DFFSX1 pre_state_reg_0__3_ ( .D(n894), .CK(i_clk), .SN(n6982), .Q(
        pre_state[3]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__6_ ( .D(
        median_sobel_inst_n565), .CK(i_clk), .RN(n6958), .QN(
        median_sobel_inst_n377) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__4_ ( .D(
        median_sobel_inst_n575), .CK(i_clk), .RN(n6984), .QN(
        median_sobel_inst_n371) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__4_ ( .D(
        median_sobel_inst_n567), .CK(i_clk), .RN(n6960), .QN(
        median_sobel_inst_n379) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__7_ ( .D(
        median_sobel_inst_n572), .CK(i_clk), .RN(n6962), .Q(n6678), .QN(
        median_sobel_inst_n368) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__0_ ( .D(
        median_sobel_inst_n539), .CK(i_clk), .RN(n6988), .QN(
        median_sobel_inst_n415) );
  DFFRX1 conv_inst_conv_2_r_reg_0_ ( .D(conv_inst_N236), .CK(i_clk), .RN(n6958), .Q(conv_inst_conv_2_r[0]), .QN(n6628) );
  DFFRHQX4 input_data_ready_r_reg_19_ ( .D(N706), .CK(i_clk), .RN(n6964), .Q(
        n913) );
  DFFRHQX1 conv_inst_data_abc_r_reg_8_ ( .D(conv_inst_data_abc_w[8]), .CK(
        i_clk), .RN(n6964), .Q(conv_inst_n108) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[4]), .CK(i_clk), .RN(
        n6988), .Q(median_sobel_inst_u_median_filter_submodule_net54951) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[1]), .CK(i_clk), .RN(
        n6959), .Q(median_sobel_inst_u_median_filter_submodule_n367) );
  DFFRX1 conv_inst_conv_4_r_reg_16_ ( .D(conv_inst_N286), .CK(i_clk), .RN(
        n6984), .Q(conv_inst_conv_4_r[16]) );
  DFFRX2 sram_addr_ready_r_reg_2__0_ ( .D(n1457), .CK(i_clk), .RN(n6986), .Q(
        sram_addr_w[18]), .QN(n820) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_4_ ( .D(
        median_sobel_inst_data_g_r[4]), .CK(i_clk), .RN(n6986), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .QN(n6556) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n673), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_median_filter_submodule_net55584) );
  DFFRHQX1 conv_inst_conv_4_r_reg_14_ ( .D(n2756), .CK(i_clk), .RN(n6969), .Q(
        conv_inst_n63) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[7]), .CK(i_clk), .RN(
        n6967), .Q(median_sobel_inst_u_median_filter_submodule_n50), .QN(n6712) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_b1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n702), .CK(i_clk), .RN(
        n6978), .Q(median_sobel_inst_u_median_filter_submodule_net55085) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N116), .CK(i_clk), .RN(
        n6959), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1])
         );
  DFFRX2 conv_inst_conv_1_r_reg_11_ ( .D(n6564), .CK(i_clk), .RN(n6964), .Q(
        conv_inst_conv_1_r[11]), .QN(n6838) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]), .CK(i_clk), 
        .RN(n6978), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2])
         );
  DFFRHQX1 conv_inst_o_out_data_ready_r_reg_9_ ( .D(conv_inst_N75), .CK(i_clk), 
        .RN(n6982), .Q(conv_result_w[9]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[1]), .CK(
        i_clk), .RN(n6982), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n131) );
  DFFRHQX1 conv_inst_conv_3_r_reg_14_ ( .D(conv_inst_N267), .CK(i_clk), .RN(
        n6969), .Q(conv_inst_n42) );
  DFFRX2 input_data_ready_r_reg_5_ ( .D(N692), .CK(i_clk), .RN(n6977), .Q(
        input_data_ready_r[5]), .QN(n6650) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_12_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N155), .CK(i_clk), 
        .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N153), .CK(i_clk), 
        .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_2_ ( .D(
        median_sobel_inst_data_g_r[2]), .CK(i_clk), .RN(n6962), .QN(
        median_sobel_inst_u_median_filter_submodule_n37) );
  DFFRHQX1 conv_inst_o_out_data_ready_r_reg_11_ ( .D(conv_inst_N77), .CK(i_clk), .RN(n6977), .Q(result_w[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N19), .CK(i_clk), .RN(
        n6985), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[2]), .CK(i_clk), .RN(
        n6969), .Q(median_sobel_inst_u_median_filter_submodule_n125), .QN(
        n2750) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[5]), .CK(i_clk), .RN(
        n6984), .Q(n6684), .QN(
        median_sobel_inst_u_median_filter_submodule_net22670) );
  DFFRX2 conv_inst_conv_1_r_reg_8_ ( .D(conv_inst_N227), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_1_r[8]) );
  DFFSHQX4 input_data_ready_r_reg_2_ ( .D(n3741), .CK(i_clk), .SN(i_rst_n), 
        .Q(n6993) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N730), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]) );
  DFFRHQX8 median_sobel_inst_u_median_filter_submodule_a6_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[4]), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_n281) );
  DFFRHQX4 input_data_ready_r_reg_17_ ( .D(N704), .CK(i_clk), .RN(n6963), .Q(
        n940) );
  DFFRX2 x_plus_two_r_reg_0_ ( .D(N730), .CK(i_clk), .RN(n6958), .Q(n3737), 
        .QN(n863) );
  DFFRHQX4 y_origin_r_reg_1_ ( .D(n491), .CK(i_clk), .RN(n6977), .Q(n841) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p2_r_reg_5_ ( .D(
        median_sobel_inst_data_b_r[5]), .CK(i_clk), .RN(n6991), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .QN(n6842) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p8_r_reg_4_ ( .D(
        median_sobel_inst_data_h_r[4]), .CK(i_clk), .RN(n6963), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .QN(n6552) );
  DFFRHQX1 cnt_reg_2_ ( .D(n482), .CK(i_clk), .RN(n6963), .Q(n3454) );
  DFFRX4 conv_inst_conv_4_r_reg_1_ ( .D(conv_inst_N271), .CK(i_clk), .RN(n6985), .Q(conv_inst_conv_4_r[1]) );
  DFFRHQX1 cnt_reg_0_ ( .D(n484), .CK(i_clk), .RN(n6969), .Q(n826) );
  DFFRHQX2 y_origin_r_reg_2_ ( .D(n490), .CK(i_clk), .RN(n6977), .Q(n3446) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_3_ ( .D(n6699), 
        .CK(i_clk), .RN(n6967), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]) );
  DFFRX4 cnt_reg_1_ ( .D(n483), .CK(i_clk), .RN(n6983), .Q(cnt[1]), .QN(n6561)
         );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a47_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a47_w), .CK(i_clk), .RN(
        n6989), .Q(n3438), .QN(
        median_sobel_inst_u_median_filter_submodule_n159) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a14_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a14_w), .CK(i_clk), .RN(
        n6983), .Q(n3437), .QN(
        median_sobel_inst_u_median_filter_submodule_n488) );
  DFFRX4 cnt_reg_7_ ( .D(n477), .CK(i_clk), .RN(n6960), .Q(cnt[7]), .QN(n6853)
         );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), .CK(i_clk), 
        .RN(n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N74), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .CK(i_clk), 
        .RN(n6958), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6])
         );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .CK(i_clk), 
        .RN(n6959), .Q(median_sobel_inst_u_sobel_gradient_submodule_n102) );
  DFFRX2 conv_inst_conv_3_r_reg_10_ ( .D(conv_inst_N263), .CK(i_clk), .RN(
        n6984), .Q(conv_inst_conv_3_r[10]) );
  DFFRX4 conv_inst_conv_1_r_reg_7_ ( .D(conv_inst_N226), .CK(i_clk), .RN(n6984), .Q(conv_inst_conv_1_r[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_7_ ( .D(n6651), 
        .CK(i_clk), .RN(n6980), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_6_ ( .D(n6652), 
        .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]) );
  DFFRX2 conv_inst_conv_1_r_reg_9_ ( .D(conv_inst_N228), .CK(i_clk), .RN(n6990), .Q(conv_inst_conv_1_r[9]) );
  DFFRX2 conv_inst_conv_2_r_reg_3_ ( .D(conv_inst_N239), .CK(i_clk), .RN(n6971), .Q(conv_inst_conv_2_r[3]), .QN(n2737) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__1_ ( .D(
        median_sobel_inst_n570), .CK(i_clk), .RN(n6959), .Q(n2728), .QN(
        median_sobel_inst_n382) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N13), .CK(i_clk), .RN(
        n6985), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]) );
  DFFRHQX2 conv_inst_data_abc_r_reg_7_ ( .D(conv_inst_data_abc_w[7]), .CK(
        i_clk), .RN(n6963), .Q(conv_inst_n109) );
  DFFRX2 y_r_reg_0_ ( .D(N785), .CK(i_clk), .RN(n6990), .Q(y_r[0]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[0]), .CK(i_clk), .RN(
        n6978), .Q(median_sobel_inst_u_median_filter_submodule_n149) );
  DFFSRHQX4 input_data_ready_r_reg_25_ ( .D(n6542), .CK(i_clk), .SN(n6963), 
        .RN(1'b1), .Q(n6923) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__2_ ( .D(
        median_sobel_inst_n537), .CK(i_clk), .RN(n6968), .Q(
        median_sobel_inst_n145), .QN(n6649) );
  DFFRX1 med_done_r_reg ( .D(med_done_w), .CK(i_clk), .RN(n6989), .Q(n6658) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[2]), .CK(i_clk), .RN(
        n6984), .Q(median_sobel_inst_u_median_filter_submodule_n198) );
  DFFRHQX1 conv_inst_data_bcd_4_r_reg_6_ ( .D(conv_inst_N214), .CK(i_clk), 
        .RN(n6969), .Q(conv_inst_n50) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N166), .CK(i_clk), 
        .RN(n6974), .Q(n3453) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]), .CK(i_clk), 
        .RN(n6974), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0])
         );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__1_ ( .D(
        median_sobel_inst_n586), .CK(i_clk), .RN(n6989), .QN(
        median_sobel_inst_n366) );
  DFFRHQX4 y_origin_r_reg_0_ ( .D(n492), .CK(i_clk), .RN(n6977), .Q(n892) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .CK(i_clk), 
        .RN(n6967), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), 
        .QN(n3478) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__0_ ( .D(
        median_sobel_inst_n571), .CK(i_clk), .RN(n6991), .Q(n2735), .QN(
        median_sobel_inst_n383) );
  DFFRX1 input_data_ready_r_reg_14_ ( .D(N701), .CK(i_clk), .RN(n6969), .Q(
        n6679), .QN(n854) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_12_ ( .D(
        n6557), .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__5_ ( .D(
        median_sobel_inst_n494), .CK(i_clk), .RN(n6977), .Q(n3435), .QN(
        median_sobel_inst_n264) );
  DFFRX4 median_sobel_inst_u_sober_compare_submodule_cnt_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N30), .CK(i_clk), .RN(
        n6972), .QN(median_sobel_inst_u_sober_compare_submodule_n63) );
  DFFRX1 conv_inst_data_bcd_4_r_reg_9_ ( .D(conv_inst_N217), .CK(i_clk), .RN(
        n6987), .Q(conv_inst_data_bcd_4_r[9]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]), .CK(i_clk), 
        .RN(n6974), .Q(n3432) );
  DFFRHQX2 conv_inst_cs_reg_1_ ( .D(conv_inst_ns[1]), .CK(i_clk), .RN(n6969), 
        .Q(conv_inst_n57) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]), .CK(i_clk), 
        .RN(n6980), .Q(n3427) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__7_ ( .D(
        median_sobel_inst_n524), .CK(i_clk), .RN(n6964), .Q(
        median_sobel_inst_n37) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]), 
        .CK(i_clk), .RN(n6966), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .QN(
        n6924) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]), .CK(i_clk), 
        .RN(n6964), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), 
        .QN(n3431) );
  DFFRX1 conv_inst_data_bcd_2_r_reg_10_ ( .D(conv_inst_N145), .CK(i_clk), .RN(
        n6987), .Q(conv_inst_data_bcd_2_r[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_5_ ( .D(n6629), 
        .CK(i_clk), .RN(n6990), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]), .CK(i_clk), 
        .RN(n6968), .Q(n3450), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n30) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]), .CK(i_clk), 
        .RN(n6970), .QN(median_sobel_inst_u_sobel_gradient_submodule_n29) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]), .CK(i_clk), 
        .RN(n6972), .QN(n6674) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]), .CK(i_clk), 
        .RN(n6974), .Q(n3430), .QN(n6647) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]), .CK(i_clk), 
        .RN(n6991), .QN(n6687) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .CK(
        i_clk), .RN(n6974), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[10]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N152), .CK(i_clk), 
        .RN(n6962), .Q(median_sobel_inst_u_sobel_gradient_submodule_n101) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_2_ ( .D(n6780), 
        .CK(i_clk), .RN(n6968), .Q(n3440) );
  DFFSX2 depth_ready_r_reg_2_ ( .D(n447), .CK(i_clk), .SN(n6980), .QN(n437) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]), 
        .CK(i_clk), .RN(n6966), .Q(n6585), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n58) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .CK(i_clk), 
        .RN(n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), 
        .QN(n3433) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N154), .CK(i_clk), 
        .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[11]), .QN(
        n2753) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_1_ ( .D(
        median_sobel_inst_data_h_r[1]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .QN(n3476) );
  DFFRX1 input_data_ready_r_reg_7_ ( .D(N694), .CK(i_clk), .RN(n6984), .Q(
        input_data_ready_r[7]), .QN(n6577) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .CK(i_clk), 
        .RN(n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), 
        .QN(n3477) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_5_ ( .D(
        median_sobel_inst_data_f_r[5]), .CK(i_clk), .RN(n6966), .Q(n3456) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_2_ ( .D(
        median_sobel_inst_data_d_r[2]), .CK(i_clk), .RN(n6977), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .QN(n6632) );
  DFFRX1 depth_ready_r_reg_0_ ( .D(n485), .CK(i_clk), .RN(n6959), .QN(n465) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_0_ ( .D(
        median_sobel_inst_data_b_r[0]), .CK(i_clk), .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .QN(n6562) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]), .CK(i_clk), 
        .RN(n6969), .QN(median_sobel_inst_u_sobel_gradient_submodule_n51) );
  DFFRHQX4 conv_inst_conv_1_r_reg_16_ ( .D(conv_inst_N235), .CK(i_clk), .RN(
        n6977), .Q(conv_inst_conv_1_r[16]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_7_ ( .D(
        median_sobel_inst_data_c_r[7]), .CK(i_clk), .RN(n6969), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .QN(n6781) );
  DFFRX1 x_minus_one_r_reg_1_ ( .D(n2701), .CK(i_clk), .RN(n6964), .Q(n3739), 
        .QN(n816) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_17_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N176), .CK(i_clk), .RN(
        n6980), .QN(median_sobel_inst_u_sobel_gradient_submodule_n174) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]), .CK(i_clk), 
        .RN(n6970), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9])
         );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_4_ ( .D(conv_inst_N70), .CK(i_clk), 
        .RN(n6971), .Q(conv_result_w[4]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_4_ ( .D(
        median_sobel_inst_data_i_r[4]), .CK(i_clk), .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n108) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_3_ ( .D(
        median_sobel_inst_data_i_r[3]), .CK(i_clk), .RN(n6979), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n64) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_13_ ( .D(conv_inst_N79), .CK(i_clk), 
        .RN(n6972), .Q(result_w[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .CK(i_clk), 
        .RN(n6968), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]) );
  BUFX20 U2927 ( .A(n6990), .Y(n6969) );
  BUFX20 U2928 ( .A(i_rst_n), .Y(n6991) );
  BUFX20 U2929 ( .A(n6989), .Y(n6980) );
  CLKMX2X2 U2930 ( .A(median_sobel_inst_n660), .B(input_data_ready_r[5]), .S0(
        n6136), .Y(median_sobel_inst_med_sobel_e_wait_r[5]) );
  CLKMX2X2 U2931 ( .A(median_sobel_inst_G[30]), .B(n6618), .S0(n4476), .Y(
        median_sobel_inst_n448) );
  OR2X1 U2932 ( .A(n5533), .B(median_sobel_inst_u_median_filter_submodule_n50), 
        .Y(n6739) );
  OAI21XL U2933 ( .A0(n6435), .A1(n6433), .B0(n5558), .Y(
        conv_inst_data_bcd_w[3]) );
  OAI22XL U2934 ( .A0(n5549), .A1(conv_inst_n10), .B0(n6603), .B1(n5548), .Y(
        conv_inst_N136) );
  AO21X1 U2935 ( .A0(n5692), .A1(n5508), .B0(n5507), .Y(n6639) );
  OAI21XL U2937 ( .A0(n4589), .A1(n4588), .B0(n5003), .Y(N811) );
  OAI21XL U2938 ( .A0(n5455), .A1(
        median_sobel_inst_u_median_filter_submodule_n60), .B0(n4704), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[4]) );
  CLKAND2X3 U2939 ( .A(n5147), .B(n3653), .Y(n6656) );
  OAI21XL U2940 ( .A0(n5455), .A1(
        median_sobel_inst_u_median_filter_submodule_n109), .B0(n4725), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[6]) );
  CLKMX2X2 U2941 ( .A(median_sobel_inst_n98), .B(n6864), .S0(n4476), .Y(
        median_sobel_inst_n612) );
  OAI21XL U2942 ( .A0(n5455), .A1(
        median_sobel_inst_u_median_filter_submodule_n76), .B0(n4750), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[3]) );
  CLKMX2X2 U2943 ( .A(median_sobel_inst_n36), .B(n6789), .S0(n4881), .Y(
        median_sobel_inst_n525) );
  OR2X1 U2944 ( .A(n4388), .B(n4387), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]) );
  AOI2BB1X1 U2945 ( .A0N(n5589), .A1N(cnt[4]), .B0(n5712), .Y(n480) );
  CLKINVX1 U2946 ( .A(n6107), .Y(median_sobel_inst_data_d_r[2]) );
  NOR2X2 U2947 ( .A(n2926), .B(n2925), .Y(conv_inst_N235) );
  NAND2X2 U2948 ( .A(n5609), .B(n5608), .Y(
        median_sobel_inst_u_median_filter_submodule_n668) );
  NAND2X2 U2949 ( .A(n4193), .B(n4192), .Y(
        median_sobel_inst_u_median_filter_submodule_net34517) );
  NOR2X2 U2950 ( .A(n5603), .B(n4504), .Y(median_sobel_inst_N113) );
  NAND2X2 U2951 ( .A(n6286), .B(n2809), .Y(
        median_sobel_inst_u_median_filter_submodule_n698) );
  NAND2X2 U2952 ( .A(n6295), .B(n2808), .Y(
        median_sobel_inst_u_median_filter_submodule_n701) );
  OA21XL U2953 ( .A0(n6469), .A1(N730), .B0(n6468), .Y(N755) );
  AND3X2 U2954 ( .A(n5485), .B(n6458), .C(n3600), .Y(n6564) );
  NAND2X2 U2955 ( .A(n5579), .B(n5578), .Y(
        median_sobel_inst_u_median_filter_submodule_n672) );
  NOR2X2 U2956 ( .A(n4135), .B(n4294), .Y(conv_inst_N560) );
  OA21X2 U2957 ( .A0(n6324), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .B0(n6323), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]) );
  AND3X2 U2958 ( .A(n5707), .B(n5705), .C(n5704), .Y(conv_inst_N79) );
  NOR2X1 U2960 ( .A(n3961), .B(n3960), .Y(conv_inst_N277) );
  OAI21X2 U2961 ( .A0(n6284), .A1(n6276), .B0(n3494), .Y(
        median_sobel_inst_u_median_filter_submodule_n707) );
  NOR2X2 U2962 ( .A(n3392), .B(n5576), .Y(conv_inst_N269) );
  OAI21X2 U2963 ( .A0(n6698), .A1(n6284), .B0(n6277), .Y(
        median_sobel_inst_u_median_filter_submodule_n704) );
  NOR2X1 U2964 ( .A(n3000), .B(n5385), .Y(conv_inst_N218) );
  NOR2X1 U2965 ( .A(n6105), .B(n6031), .Y(N693) );
  NOR2X2 U2966 ( .A(n5732), .B(n5731), .Y(n475) );
  AND2X2 U2967 ( .A(n5723), .B(n5717), .Y(n478) );
  NOR2X4 U2968 ( .A(n6557), .B(n3204), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N141) );
  NOR2X1 U2969 ( .A(n3094), .B(conv_inst_n10), .Y(conv_inst_N208) );
  NOR2X1 U2970 ( .A(n3094), .B(n3738), .Y(conv_inst_N197) );
  NOR2X1 U2971 ( .A(n3161), .B(n5839), .Y(N717) );
  NOR2X1 U2972 ( .A(n5368), .B(n5619), .Y(conv_inst_N246) );
  AND2X2 U2974 ( .A(n4822), .B(n3300), .Y(N757) );
  NAND4X1 U2975 ( .A(n5938), .B(n5937), .C(n5936), .D(n5935), .Y(N698) );
  NAND4X1 U2976 ( .A(n5827), .B(n5826), .C(n5825), .D(n5824), .Y(N704) );
  NAND4X1 U2977 ( .A(n5907), .B(n5906), .C(n5905), .D(n5904), .Y(N696) );
  NAND4X1 U2978 ( .A(n5911), .B(n5910), .C(n5909), .D(n5908), .Y(N697) );
  NAND4X1 U2979 ( .A(n5769), .B(n5768), .C(n5767), .D(n5766), .Y(N709) );
  NAND4X1 U2980 ( .A(n5843), .B(n5842), .C(n5841), .D(n5840), .Y(N705) );
  NAND4X1 U2981 ( .A(n5789), .B(n5788), .C(n5787), .D(n5786), .Y(N707) );
  NAND4X1 U2982 ( .A(n5953), .B(n5952), .C(n5951), .D(n5950), .Y(N699) );
  OAI22X1 U2983 ( .A0(n3094), .A1(n3740), .B0(n6603), .B1(n3000), .Y(
        conv_inst_N210) );
  NAND4X1 U2984 ( .A(n5757), .B(n5756), .C(n5755), .D(n5754), .Y(N710) );
  MXI2X1 U2985 ( .A(n5711), .B(n5710), .S0(n6567), .Y(n481) );
  OAI21X1 U2986 ( .A0(n6269), .A1(
        median_sobel_inst_u_median_filter_submodule_n61), .B0(n3724), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[7]) );
  OAI21XL U2987 ( .A0(n6267), .A1(n6844), .B0(n3370), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[0]) );
  NAND3X1 U2993 ( .A(n6255), .B(n6254), .C(n6253), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[6]) );
  MXI2X2 U2994 ( .A(n6853), .B(n6567), .S0(n2946), .Y(N759) );
  NAND4X1 U2995 ( .A(n5890), .B(n5889), .C(n5888), .D(n5887), .Y(N701) );
  OAI22X1 U2996 ( .A0(n3094), .A1(n5385), .B0(n6895), .B1(n3000), .Y(
        conv_inst_N217) );
  NAND3X1 U2997 ( .A(n6475), .B(n6474), .C(n6520), .Y(sram_addr_wait_r[25]) );
  OAI22XL U2998 ( .A0(n3094), .A1(n6880), .B0(n3742), .B1(n3000), .Y(
        conv_inst_N213) );
  OAI22XL U2999 ( .A0(n3094), .A1(n6624), .B0(n6554), .B1(n3000), .Y(
        conv_inst_N215) );
  OAI22XL U3000 ( .A0(n3094), .A1(n6891), .B0(n4503), .B1(n3000), .Y(
        conv_inst_N206) );
  OAI22XL U3001 ( .A0(n3094), .A1(n4414), .B0(n6896), .B1(n3000), .Y(
        conv_inst_N203) );
  OAI22XL U3002 ( .A0(n3094), .A1(n6895), .B0(n6624), .B1(n3000), .Y(
        conv_inst_N216) );
  OAI22XL U3003 ( .A0(n3094), .A1(n6875), .B0(n3740), .B1(n3000), .Y(
        conv_inst_N211) );
  OAI22XL U3004 ( .A0(n3094), .A1(n3742), .B0(n6875), .B1(n3000), .Y(
        conv_inst_N212) );
  OAI22XL U3005 ( .A0(n3094), .A1(n4413), .B0(n4414), .B1(n3000), .Y(
        conv_inst_N204) );
  OAI22XL U3006 ( .A0(n3094), .A1(n3486), .B0(n6807), .B1(n3000), .Y(
        conv_inst_N199) );
  OAI22XL U3007 ( .A0(n3094), .A1(n6807), .B0(n3738), .B1(n3000), .Y(
        conv_inst_N198) );
  OAI22XL U3008 ( .A0(n3094), .A1(n6623), .B0(n3470), .B1(n3000), .Y(
        conv_inst_N201) );
  OAI22XL U3009 ( .A0(n3094), .A1(n6603), .B0(conv_inst_n10), .B1(n3000), .Y(
        conv_inst_N209) );
  NAND3X4 U3010 ( .A(n2837), .B(n2836), .C(n2834), .Y(
        median_sobel_inst_u_median_filter_submodule_net21363) );
  NOR3X2 U3011 ( .A(n5195), .B(n5601), .C(n5604), .Y(conv_inst_N267) );
  MXI2X2 U3012 ( .A(n6597), .B(n6870), .S0(n2946), .Y(N762) );
  MXI2X2 U3013 ( .A(n6685), .B(n6550), .S0(n2946), .Y(N761) );
  XNOR2X2 U3014 ( .A(n5663), .B(n5662), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N320) );
  XOR2X1 U3015 ( .A(n5515), .B(n3568), .Y(n6651) );
  XNOR2X2 U3016 ( .A(n6311), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N43) );
  XNOR2X1 U3017 ( .A(n5678), .B(n5677), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N290) );
  XNOR2X1 U3018 ( .A(n4986), .B(n4985), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N19) );
  XOR2X2 U3019 ( .A(n3136), .B(n4907), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]) );
  XOR2X2 U3020 ( .A(n3306), .B(n4880), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]) );
  XNOR2X2 U3022 ( .A(n6363), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]) );
  XOR2X1 U3023 ( .A(n3178), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n62), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N75) );
  NAND3X2 U3024 ( .A(n6304), .B(n6303), .C(n6302), .Y(
        median_sobel_inst_u_median_filter_submodule_n667) );
  XNOR2X1 U3025 ( .A(n3130), .B(n6350), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N200) );
  XNOR2X1 U3026 ( .A(n5656), .B(n5655), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N21) );
  AND2X6 U3027 ( .A(n5582), .B(n4868), .Y(o_op_ready) );
  BUFX16 U3028 ( .A(i_rst_n), .Y(n6990) );
  NAND2X6 U3029 ( .A(n4282), .B(n6929), .Y(n3094) );
  OAI21XL U3030 ( .A0(n3459), .A1(n3959), .B0(n3600), .Y(n3961) );
  CLKINVX1 U3031 ( .A(conv_inst_n109), .Y(n4413) );
  CLKINVX1 U3032 ( .A(conv_inst_n108), .Y(n4503) );
  NAND2X6 U3033 ( .A(n6296), .B(n2821), .Y(n2810) );
  CLKINVX1 U3034 ( .A(conv_inst_n99), .Y(n5385) );
  CLKBUFX8 U3035 ( .A(n6060), .Y(n6416) );
  INVX3 U3036 ( .A(n6267), .Y(n3442) );
  NAND2X2 U3037 ( .A(n3132), .B(
        median_sobel_inst_u_median_filter_submodule_b5_r[0]), .Y(n6303) );
  NAND2X6 U3038 ( .A(n3408), .B(n3406), .Y(n6311) );
  NAND3X2 U3039 ( .A(n2840), .B(n2841), .C(n6945), .Y(n5608) );
  NAND3X2 U3040 ( .A(n2840), .B(n2841), .C(n6665), .Y(n4192) );
  CLKINVX1 U3041 ( .A(n4067), .Y(n4121) );
  OR2X2 U3042 ( .A(n2992), .B(n3317), .Y(n3316) );
  NAND3X2 U3043 ( .A(n6296), .B(n2821), .C(
        median_sobel_inst_u_median_filter_submodule_n288), .Y(n2809) );
  NOR2X1 U3044 ( .A(n6457), .B(conv_inst_conv_1_r[15]), .Y(n3814) );
  NAND2X4 U3046 ( .A(n4344), .B(n5700), .Y(n5549) );
  NAND2X2 U3047 ( .A(n2835), .B(n6648), .Y(n2834) );
  OR2X1 U3048 ( .A(n6268), .B(median_sobel_inst_u_median_filter_submodule_n113), .Y(n5201) );
  OR2X1 U3049 ( .A(n6268), .B(median_sobel_inst_u_median_filter_submodule_n41), 
        .Y(n6273) );
  OR2X1 U3050 ( .A(n6268), .B(median_sobel_inst_u_median_filter_submodule_n38), 
        .Y(n5230) );
  CLKINVX1 U3051 ( .A(n3665), .Y(n5037) );
  OAI21XL U3052 ( .A0(n788), .A1(n6103), .B0(n5749), .Y(n5750) );
  NOR2X4 U3053 ( .A(n3515), .B(n3733), .Y(n3732) );
  AOI2BB1X1 U3056 ( .A0N(n792), .A1N(n6103), .B0(n6030), .Y(n6031) );
  NAND3X2 U3057 ( .A(n6296), .B(n2821), .C(
        median_sobel_inst_u_median_filter_submodule_net56609), .Y(n2808) );
  OAI21X2 U3058 ( .A0(n3481), .A1(n892), .B0(n6477), .Y(n6484) );
  AOI2BB1X1 U3059 ( .A0N(n791), .A1N(n6103), .B0(n6087), .Y(n6088) );
  INVXL U3060 ( .A(n5615), .Y(n3960) );
  BUFX8 U3061 ( .A(n4530), .Y(n3275) );
  NAND3X2 U3062 ( .A(n2840), .B(n3133), .C(n6549), .Y(n6304) );
  OR2X1 U3063 ( .A(n6260), .B(median_sobel_inst_u_median_filter_submodule_n109), .Y(n6254) );
  OAI21X2 U3065 ( .A0(n6350), .A1(n5657), .B0(n5658), .Y(n5656) );
  NAND4X1 U3066 ( .A(n6182), .B(n6181), .C(n6180), .D(
        median_sobel_inst_data_g_r[5]), .Y(n6183) );
  OR2X1 U3067 ( .A(n6269), .B(median_sobel_inst_u_median_filter_submodule_n36), 
        .Y(n5200) );
  OR2X1 U3068 ( .A(n6269), .B(median_sobel_inst_u_median_filter_submodule_n108), .Y(n6272) );
  OR2X1 U3069 ( .A(n6269), .B(median_sobel_inst_u_median_filter_submodule_n65), 
        .Y(n5229) );
  AOI21X2 U3070 ( .A0(n5692), .A1(n5202), .B0(n5204), .Y(n5115) );
  NAND2X4 U3071 ( .A(n6364), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .Y(n6363) );
  NAND2X2 U3072 ( .A(n5710), .B(n5733), .Y(n5711) );
  OAI21X2 U3074 ( .A0(n6350), .A1(n3521), .B0(n3520), .Y(n3519) );
  OR2X1 U3075 ( .A(n6260), .B(median_sobel_inst_u_median_filter_submodule_n67), 
        .Y(n5175) );
  OR2X1 U3076 ( .A(n6260), .B(median_sobel_inst_u_median_filter_submodule_n76), 
        .Y(n5186) );
  OR2X1 U3077 ( .A(n6260), .B(median_sobel_inst_u_median_filter_submodule_n60), 
        .Y(n5189) );
  OR2X1 U3078 ( .A(n6260), .B(n5235), .Y(n5166) );
  OR2X1 U3079 ( .A(n6260), .B(median_sobel_inst_u_median_filter_submodule_n44), 
        .Y(n5172) );
  OAI21X1 U3082 ( .A0(n5716), .A1(n6550), .B0(n6870), .Y(n5717) );
  NOR2X1 U3083 ( .A(n6533), .B(n3843), .Y(n3846) );
  NAND2X4 U3084 ( .A(n6457), .B(n3380), .Y(n6458) );
  BUFX3 U3085 ( .A(n5447), .Y(n3696) );
  AOI2BB1X2 U3086 ( .A0N(n4905), .A1N(n6362), .B0(n6358), .Y(n3136) );
  NOR2X1 U3087 ( .A(n4526), .B(n4525), .Y(n4527) );
  NOR2XL U3088 ( .A(n2904), .B(n4717), .Y(n4718) );
  NAND2X1 U3089 ( .A(n6405), .B(
        median_sobel_inst_u_sober_compare_submodule_n218), .Y(n4115) );
  NAND2X1 U3091 ( .A(n6405), .B(
        median_sobel_inst_u_sober_compare_submodule_n215), .Y(n6396) );
  NAND2X1 U3092 ( .A(n6405), .B(
        median_sobel_inst_u_sober_compare_submodule_n217), .Y(n6399) );
  NAND2X1 U3093 ( .A(n6405), .B(n6606), .Y(n6402) );
  NAND2X1 U3094 ( .A(n6405), .B(n6598), .Y(n6414) );
  NAND2X4 U3095 ( .A(n3385), .B(n3663), .Y(n3662) );
  OAI21X1 U3096 ( .A0(n6362), .A1(n5053), .B0(n5054), .Y(n3240) );
  OAI21X1 U3097 ( .A0(n6372), .A1(n4014), .B0(n4013), .Y(n4017) );
  OAI21X2 U3098 ( .A0(n6310), .A1(n5521), .B0(n5522), .Y(n5520) );
  NOR2X2 U3099 ( .A(n5600), .B(conv_inst_conv_3_r[12]), .Y(n3605) );
  NAND2X4 U3100 ( .A(n2838), .B(n2722), .Y(n2837) );
  OAI21X1 U3101 ( .A0(n5673), .A1(n5672), .B0(n5671), .Y(n5678) );
  NAND2X2 U3102 ( .A(n3329), .B(n6461), .Y(n3328) );
  NAND2X2 U3104 ( .A(n4439), .B(n3955), .Y(n3384) );
  OAI21X2 U3105 ( .A0(n3331), .A1(n3336), .B0(n3332), .Y(n3815) );
  NAND2X1 U3106 ( .A(n5933), .B(n6907), .Y(n5936) );
  NAND2X1 U3107 ( .A(n5933), .B(n6914), .Y(n5888) );
  NAND2X1 U3108 ( .A(n5949), .B(n6905), .Y(n5904) );
  NAND2X1 U3109 ( .A(n5949), .B(n6906), .Y(n5950) );
  NAND2X1 U3110 ( .A(n5949), .B(n6881), .Y(n5766) );
  NAND2X1 U3111 ( .A(n5949), .B(n6898), .Y(n5786) );
  NAND2X1 U3112 ( .A(n5949), .B(n6899), .Y(n5840) );
  NAND2X1 U3113 ( .A(n5934), .B(n6903), .Y(n5935) );
  NAND2X1 U3114 ( .A(n5934), .B(n6904), .Y(n5887) );
  NAND2XL U3115 ( .A(n5934), .B(n6897), .Y(n5824) );
  NAND2XL U3116 ( .A(n5933), .B(n6905), .Y(n5825) );
  NAND2XL U3117 ( .A(n5934), .B(n6913), .Y(n5908) );
  NAND2XL U3118 ( .A(n5934), .B(n6867), .Y(n5754) );
  NAND2X2 U3119 ( .A(n4531), .B(n3655), .Y(n2786) );
  NAND2X1 U3120 ( .A(n5931), .B(n6909), .Y(n5827) );
  NAND2X1 U3121 ( .A(n5931), .B(n6843), .Y(n5911) );
  NAND2X1 U3122 ( .A(n5931), .B(n6622), .Y(n5938) );
  NAND2X1 U3123 ( .A(n5931), .B(n6888), .Y(n5890) );
  AOI21X2 U3125 ( .A0(n6393), .A1(n6804), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[9]), .Y(n6394) );
  NAND2X1 U3126 ( .A(n5932), .B(n6799), .Y(n5756) );
  NAND2X1 U3127 ( .A(n5932), .B(n6887), .Y(n5937) );
  NAND2X1 U3128 ( .A(n5932), .B(n6881), .Y(n5889) );
  NAND3X4 U3129 ( .A(n3285), .B(n3284), .C(n3283), .Y(n3287) );
  NAND2X1 U3130 ( .A(n5934), .B(n6885), .Y(n5776) );
  NAND2XL U3131 ( .A(n5949), .B(n6869), .Y(n5816) );
  NAND2XL U3132 ( .A(n5949), .B(n6620), .Y(n5893) );
  NAND2XL U3133 ( .A(n5933), .B(n6877), .Y(n5901) );
  NAND2X1 U3134 ( .A(n5948), .B(n6904), .Y(n5767) );
  NAND2X1 U3135 ( .A(n5948), .B(n6906), .Y(n5787) );
  NAND2X1 U3136 ( .A(n5948), .B(n6913), .Y(n5841) );
  NAND2X1 U3137 ( .A(n5948), .B(n6909), .Y(n5905) );
  NAND2X1 U3138 ( .A(n5948), .B(n6916), .Y(n5951) );
  NAND2X1 U3139 ( .A(n5946), .B(n6914), .Y(n5769) );
  NAND2X1 U3140 ( .A(n5946), .B(n6916), .Y(n5789) );
  NAND2X1 U3141 ( .A(n5946), .B(n6917), .Y(n5843) );
  NAND2X1 U3142 ( .A(n5946), .B(n6855), .Y(n5953) );
  NAND2X1 U3143 ( .A(n6259), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .Y(n6255) );
  AND2X2 U3144 ( .A(n6385), .B(n5480), .Y(n6557) );
  NOR2X2 U3145 ( .A(n5569), .B(conv_inst_conv_3_r[16]), .Y(n5576) );
  AOI21X2 U3146 ( .A0(n5146), .A1(n3689), .B0(n3813), .Y(n3653) );
  AOI21X1 U3147 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), 
        .A1(n6270), .B0(n3725), .Y(n3724) );
  NAND3X1 U3148 ( .A(n4821), .B(n4820), .C(n4819), .Y(n3300) );
  NAND2X1 U3149 ( .A(n5931), .B(n6877), .Y(n5779) );
  NOR2X1 U3150 ( .A(n6491), .B(n436), .Y(n5450) );
  NAND2X1 U3151 ( .A(n5947), .B(n6888), .Y(n5768) );
  NAND2X1 U3152 ( .A(n5947), .B(n6855), .Y(n5788) );
  NAND2X1 U3153 ( .A(n5947), .B(n6843), .Y(n5842) );
  NAND2X1 U3154 ( .A(n5947), .B(n6897), .Y(n5906) );
  NAND2X1 U3155 ( .A(n5947), .B(n6898), .Y(n5952) );
  NAND2XL U3156 ( .A(n5932), .B(n6885), .Y(n5902) );
  NAND2X1 U3157 ( .A(n5946), .B(n6912), .Y(n5819) );
  NAND2X1 U3158 ( .A(n5946), .B(n6799), .Y(n5896) );
  NOR2X1 U3159 ( .A(n6533), .B(n6532), .Y(n6536) );
  NOR2X1 U3160 ( .A(n6533), .B(n6492), .Y(n6495) );
  XOR2X2 U3161 ( .A(n3611), .B(n4402), .Y(n4403) );
  NAND2X1 U3163 ( .A(n5947), .B(n6867), .Y(n5895) );
  NAND2X1 U3164 ( .A(n5947), .B(n6869), .Y(n5922) );
  OAI21X1 U3165 ( .A0(n5365), .A1(n5364), .B0(n5363), .Y(n3178) );
  AOI21X1 U3166 ( .A0(n5323), .A1(n5321), .B0(n4900), .Y(n3550) );
  XOR2X1 U3167 ( .A(n4723), .B(n4722), .Y(n4724) );
  BUFX4 U3168 ( .A(n5764), .Y(n5948) );
  OR2X1 U3169 ( .A(n6727), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n5679) );
  OR2X1 U3170 ( .A(n6728), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n5215) );
  OR2X1 U3172 ( .A(n3748), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n4836) );
  OR2X1 U3173 ( .A(n6790), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n5682) );
  INVX6 U3174 ( .A(n5243), .Y(n6265) );
  CLKINVX2 U3175 ( .A(n5303), .Y(n6198) );
  CLKINVX1 U3176 ( .A(n6937), .Y(n5610) );
  XOR2X1 U3177 ( .A(n5803), .B(n1068), .Y(N726) );
  CLKINVX1 U3179 ( .A(n6929), .Y(n4294) );
  OR2X6 U3180 ( .A(n6309), .B(n6310), .Y(n3408) );
  INVX6 U3181 ( .A(n6507), .Y(n6498) );
  INVX6 U3182 ( .A(n6490), .Y(n6471) );
  CLKINVX6 U3183 ( .A(n6530), .Y(n6518) );
  INVX6 U3185 ( .A(n6531), .Y(n6519) );
  INVX6 U3186 ( .A(n6508), .Y(n6497) );
  CLKINVX6 U3187 ( .A(n6491), .Y(n6472) );
  INVX4 U3188 ( .A(n5572), .Y(n5569) );
  INVX4 U3190 ( .A(n2985), .Y(n6441) );
  INVX3 U3191 ( .A(n3320), .Y(n3493) );
  INVX1 U3192 ( .A(n5225), .Y(n5673) );
  NAND2X6 U3193 ( .A(n3411), .B(n3410), .Y(n5217) );
  NAND2X2 U3194 ( .A(n3585), .B(n841), .Y(n3527) );
  INVXL U3196 ( .A(n6115), .Y(n3067) );
  NOR2X1 U3197 ( .A(median_sobel_inst_data_b_r[6]), .B(
        median_sobel_inst_data_b_r[7]), .Y(n5971) );
  INVX1 U3198 ( .A(n6347), .Y(n3520) );
  BUFX8 U3199 ( .A(n4970), .Y(n3668) );
  NAND2X1 U3201 ( .A(median_sobel_inst_data_d_r[7]), .B(
        median_sobel_inst_data_d_r[5]), .Y(n3069) );
  INVX1 U3202 ( .A(n5601), .Y(n3655) );
  INVX1 U3203 ( .A(n6437), .Y(n3422) );
  CLKINVX1 U3204 ( .A(n4132), .Y(n4969) );
  OAI21XL U3205 ( .A0(n6101), .A1(n788), .B0(n6100), .Y(n6102) );
  AND2X2 U3206 ( .A(n4821), .B(cnt[1]), .Y(n3481) );
  NAND2X6 U3207 ( .A(n4785), .B(n4501), .Y(n4530) );
  NOR2X4 U3208 ( .A(n5998), .B(n3082), .Y(n3081) );
  INVX3 U3209 ( .A(n5180), .Y(n6190) );
  OAI22XL U3210 ( .A0(n6103), .A1(n803), .B0(n787), .B1(n5803), .Y(n5836) );
  INVX1 U3211 ( .A(n4329), .Y(n4419) );
  INVX1 U3212 ( .A(n3665), .Y(n3386) );
  INVX1 U3213 ( .A(n4920), .Y(n4698) );
  CLKINVX1 U3214 ( .A(n4616), .Y(n4647) );
  NOR2X4 U3215 ( .A(n3282), .B(n2917), .Y(n3290) );
  CLKINVX1 U3216 ( .A(n4595), .Y(n4677) );
  INVX1 U3217 ( .A(n6343), .Y(n3521) );
  NOR2X2 U3218 ( .A(n4686), .B(n4405), .Y(n3716) );
  NAND2X4 U3219 ( .A(n3784), .B(n3783), .Y(n5839) );
  NAND2X1 U3220 ( .A(n6003), .B(median_sobel_inst_data_b_r[6]), .Y(n2811) );
  OAI21X2 U3221 ( .A0(n4637), .A1(n4401), .B0(n4400), .Y(n3611) );
  BUFX4 U3222 ( .A(n5762), .Y(n5946) );
  INVX4 U3224 ( .A(n6445), .Y(n6440) );
  CLKINVX1 U3227 ( .A(n4804), .Y(n4666) );
  INVX4 U3228 ( .A(n4202), .Y(n5329) );
  INVX1 U3229 ( .A(n5556), .Y(n5557) );
  NAND2X1 U3230 ( .A(n4078), .B(n4077), .Y(n4723) );
  INVX6 U3231 ( .A(n3203), .Y(median_sobel_inst_data_g_r[7]) );
  INVX1 U3232 ( .A(n2928), .Y(n2927) );
  NAND2X2 U3233 ( .A(n4316), .B(n4315), .Y(median_sobel_inst_n650) );
  NAND3X1 U3234 ( .A(n5703), .B(n5702), .C(n5701), .Y(n5708) );
  NAND2X4 U3235 ( .A(n6457), .B(n6456), .Y(n6459) );
  NAND2X4 U3236 ( .A(n4315), .B(n3691), .Y(median_sobel_inst_ns_0_) );
  AOI21X2 U3237 ( .A0(n5692), .A1(n3202), .B0(n3201), .Y(n3200) );
  INVX4 U3238 ( .A(n5763), .Y(n5947) );
  NAND2X4 U3239 ( .A(n2884), .B(n2881), .Y(n2880) );
  NOR2X1 U3240 ( .A(n6268), .B(n6781), .Y(n3725) );
  NAND2X2 U3241 ( .A(n5503), .B(n5498), .Y(n5506) );
  AND2X4 U3243 ( .A(n2965), .B(n5733), .Y(n5723) );
  BUFX12 U3244 ( .A(n3320), .Y(n6301) );
  NAND2X4 U3245 ( .A(n4532), .B(n3657), .Y(n4442) );
  CLKINVX1 U3246 ( .A(n5214), .Y(n4835) );
  OAI21X1 U3250 ( .A0(n3210), .A1(n5206), .B0(n5205), .Y(n5207) );
  NAND2BX1 U3251 ( .AN(n4567), .B(n4557), .Y(n3491) );
  AOI21X1 U3253 ( .A0(n5467), .A1(n5011), .B0(n5010), .Y(n5012) );
  NAND2X2 U3256 ( .A(n5588), .B(n5587), .Y(n5716) );
  NOR2BX1 U3257 ( .AN(n5481), .B(n6838), .Y(n3380) );
  OAI22XL U3258 ( .A0(n6783), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[25]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n5), .B1(n6585), .Y(n4374) );
  XOR2X1 U3259 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n4007)
         );
  INVX12 U3260 ( .A(n2845), .Y(n6279) );
  OR2X6 U3261 ( .A(n4203), .B(n4202), .Y(n3410) );
  INVX2 U3262 ( .A(n5753), .Y(n3784) );
  INVX8 U3263 ( .A(n5003), .Y(n6473) );
  CLKAND2X8 U3264 ( .A(n3225), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n46), .Y(n5386) );
  OR2X6 U3265 ( .A(n2948), .B(n6340), .Y(n2797) );
  NOR2X1 U3267 ( .A(cnt[9]), .B(cnt[8]), .Y(n5744) );
  OA22X1 U3268 ( .A0(n5106), .A1(n8110), .B0(n5105), .B1(n793), .Y(n5075) );
  NAND2X1 U3269 ( .A(median_sobel_inst_u_sober_compare_submodule_n62), .B(
        median_sobel_inst_u_sober_compare_submodule_n2), .Y(n4501) );
  NAND2X2 U3270 ( .A(n6430), .B(input_data_ready_r[15]), .Y(n4264) );
  INVX8 U3271 ( .A(n2887), .Y(n2888) );
  INVX1 U3273 ( .A(n5999), .Y(n2766) );
  NOR2X6 U3274 ( .A(n2716), .B(n3633), .Y(n5111) );
  INVX1 U3275 ( .A(median_sobel_inst_data_d_r[7]), .Y(n3061) );
  INVX1 U3276 ( .A(n4510), .Y(n4512) );
  INVX1 U3277 ( .A(n6352), .Y(n4906) );
  INVX1 U3278 ( .A(n4200), .Y(n3984) );
  INVX1 U3279 ( .A(n6374), .Y(n5029) );
  INVX1 U3280 ( .A(n6333), .Y(n5047) );
  CLKINVX1 U3281 ( .A(n4873), .Y(n4641) );
  OR2X1 U3282 ( .A(n3813), .B(n3334), .Y(n3333) );
  NAND2X2 U3283 ( .A(n5294), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .Y(n5293) );
  INVX1 U3284 ( .A(n4819), .Y(n3783) );
  INVX1 U3285 ( .A(n4788), .Y(n4892) );
  NOR2X2 U3286 ( .A(n5497), .B(n5501), .Y(n5503) );
  NOR2X6 U3287 ( .A(n4130), .B(n4129), .Y(n4532) );
  NAND2BX1 U3288 ( .AN(input_data_ready_r[31]), .B(n6738), .Y(n4059) );
  AND3X2 U3289 ( .A(n4372), .B(n4373), .C(n4371), .Y(n2963) );
  NOR2X2 U3290 ( .A(n5672), .B(n5674), .Y(n4137) );
  NOR2X2 U3291 ( .A(n4932), .B(n4934), .Y(n4012) );
  AOI21X2 U3292 ( .A0(n4510), .A1(n4411), .B0(n4410), .Y(n3671) );
  OR2X1 U3293 ( .A(n5803), .B(n808), .Y(n6027) );
  OR2X1 U3294 ( .A(n5803), .B(n805), .Y(n6084) );
  OR2X1 U3295 ( .A(n5803), .B(n802), .Y(n6055) );
  NAND2X4 U3296 ( .A(n6482), .B(n3844), .Y(n6493) );
  INVX6 U3299 ( .A(n6189), .Y(n5547) );
  AND2X1 U3300 ( .A(n3445), .B(n3461), .Y(n5538) );
  NAND2X4 U3301 ( .A(n5003), .B(n4954), .Y(n6508) );
  AOI21X2 U3302 ( .A0(n6359), .A1(n6358), .B0(n6357), .Y(n6360) );
  OAI2BB1X1 U3303 ( .A0N(n6730), .A1N(n4359), .B0(n4360), .Y(n3591) );
  NAND2X4 U3305 ( .A(n5003), .B(n5714), .Y(n6490) );
  NAND2X4 U3307 ( .A(n3436), .B(n5429), .Y(n5431) );
  NAND2X4 U3308 ( .A(n5003), .B(n3841), .Y(n5441) );
  NAND2BX1 U3310 ( .AN(n6902), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n6390) );
  OAI21XL U3311 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[26]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n128), .B0(n4377), .Y(
        n4378) );
  NAND2X1 U3312 ( .A(n6359), .B(n6353), .Y(n6361) );
  NAND2X2 U3313 ( .A(n5422), .B(n4770), .Y(n4769) );
  NOR2X2 U3314 ( .A(n3018), .B(median_sobel_inst_data_d_r[7]), .Y(n3017) );
  NOR2X2 U3315 ( .A(n3812), .B(n6462), .Y(n6460) );
  NAND2X4 U3316 ( .A(n5003), .B(n4953), .Y(n6507) );
  NAND2X1 U3317 ( .A(n3484), .B(n4855), .Y(n5155) );
  NAND2X4 U3318 ( .A(n3544), .B(n4450), .Y(n4814) );
  NAND2X4 U3319 ( .A(n5581), .B(n5580), .Y(n5588) );
  OR2X1 U3320 ( .A(n5803), .B(n6601), .Y(n3755) );
  AOI22X2 U3321 ( .A0(n5997), .A1(median_sobel_inst_data_h_r[4]), .B0(n5996), 
        .B1(median_sobel_inst_data_h_r[3]), .Y(n3084) );
  NOR2X6 U3322 ( .A(n2781), .B(n2780), .Y(n3282) );
  AOI21X1 U3323 ( .A0(n4979), .A1(n4978), .B0(n4977), .Y(n4980) );
  OAI21X1 U3324 ( .A0(n5501), .A1(n5500), .B0(n5499), .Y(n5502) );
  INVX3 U3325 ( .A(n3436), .Y(n4311) );
  NAND2X2 U3326 ( .A(n5003), .B(n4939), .Y(n6530) );
  AOI2BB2X2 U3327 ( .B0(n5867), .B1(median_sobel_inst_data_i_r[3]), .A0N(
        median_sobel_inst_data_c_r[4]), .A1N(n5882), .Y(n3013) );
  XOR2X1 U3328 ( .A(n4062), .B(n4050), .Y(n4055) );
  OR2X6 U3329 ( .A(n5892), .B(n2762), .Y(median_sobel_inst_data_h_r[6]) );
  OR2X6 U3330 ( .A(median_sobel_inst_u_median_filter_submodule_n222), .B(
        median_sobel_inst_u_median_filter_submodule_n549), .Y(n5178) );
  OR2X1 U3331 ( .A(n6562), .B(n6701), .Y(n3451) );
  INVX6 U3332 ( .A(median_sobel_inst_data_a_r[3]), .Y(n6168) );
  OAI22XL U3333 ( .A0(n6766), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[24]), .B0(
        n4353), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[23]), .Y(
        n4356) );
  INVX4 U3334 ( .A(median_sobel_inst_data_b_r[6]), .Y(n6022) );
  INVX4 U3335 ( .A(n3397), .Y(n5629) );
  OR2X1 U3336 ( .A(median_sobel_inst_n661), .B(median_sobel_inst_n319), .Y(
        n3633) );
  OR2X1 U3337 ( .A(n5803), .B(n1068), .Y(n4271) );
  INVX4 U3338 ( .A(median_sobel_inst_data_a_r[5]), .Y(n6180) );
  INVX4 U3339 ( .A(median_sobel_inst_data_d_r[5]), .Y(n6158) );
  INVX3 U3340 ( .A(n6173), .Y(median_sobel_inst_data_a_r[4]) );
  NAND2X6 U3341 ( .A(n4993), .B(n6197), .Y(n6194) );
  NOR2BX2 U3343 ( .AN(n6902), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .Y(n5501) );
  NOR2X2 U3345 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n136), .Y(n5336) );
  NAND2X1 U3346 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n136), .Y(n5289) );
  NAND2BX2 U3347 ( .AN(n2715), .B(n823), .Y(n5104) );
  NAND2BX2 U3349 ( .AN(median_sobel_inst_u_median_filter_submodule_n488), .B(
        median_sobel_inst_u_median_filter_submodule_n159), .Y(n4748) );
  INVX6 U3350 ( .A(n5299), .Y(n4829) );
  NOR2X2 U3351 ( .A(n3456), .B(n3439), .Y(n5652) );
  NAND2X4 U3352 ( .A(n5982), .B(n5983), .Y(median_sobel_inst_data_h_r[4]) );
  INVX8 U3353 ( .A(n3726), .Y(n5599) );
  INVX1 U3354 ( .A(n4939), .Y(n5741) );
  NAND2X1 U3355 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .Y(n6344) );
  INVX6 U3356 ( .A(median_sobel_inst_data_e_r[4]), .Y(n5997) );
  NAND2X1 U3357 ( .A(n3456), .B(n3439), .Y(n5653) );
  INVX4 U3358 ( .A(n5870), .Y(median_sobel_inst_data_c_r[6]) );
  CLKINVX1 U3359 ( .A(n3818), .Y(n3819) );
  INVX1 U3360 ( .A(n5219), .Y(n2937) );
  NOR2X4 U3361 ( .A(n5715), .B(n2966), .Y(n5725) );
  NOR2X4 U3362 ( .A(n4915), .B(n4917), .Y(n4921) );
  INVX1 U3363 ( .A(n5714), .Y(n5739) );
  INVX3 U3364 ( .A(n4970), .Y(n3627) );
  NOR2X2 U3365 ( .A(n6356), .B(n6352), .Y(n6359) );
  NAND2X2 U3366 ( .A(median_sobel_inst_data_f_r[5]), .B(n5883), .Y(n3115) );
  NOR2X2 U3367 ( .A(n6312), .B(n6316), .Y(n6319) );
  NAND2X4 U3368 ( .A(n2999), .B(n2998), .Y(n2997) );
  NOR2X2 U3369 ( .A(n4648), .B(n4646), .Y(n3242) );
  NOR2X4 U3371 ( .A(n2825), .B(n2824), .Y(n2823) );
  NAND2X2 U3374 ( .A(n4772), .B(n5363), .Y(n5422) );
  CLKINVX6 U3376 ( .A(median_sobel_inst_data_f_r[6]), .Y(n3452) );
  NAND2X4 U3377 ( .A(n3203), .B(median_sobel_inst_data_d_r[7]), .Y(n6160) );
  OAI21X1 U3378 ( .A0(n6356), .A1(n6355), .B0(n6354), .Y(n6357) );
  NOR2X1 U3379 ( .A(n4976), .B(n4975), .Y(n4977) );
  NAND2X4 U3380 ( .A(n3179), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n51), .Y(n5365) );
  INVX3 U3382 ( .A(n3293), .Y(n2780) );
  NAND3X4 U3383 ( .A(n3079), .B(n6013), .C(n6012), .Y(n2886) );
  NAND3X4 U3384 ( .A(n5865), .B(n5864), .C(n3016), .Y(n3015) );
  AND3X4 U3385 ( .A(n4125), .B(n4126), .C(cnt[1]), .Y(n3278) );
  NAND2X2 U3386 ( .A(median_sobel_inst_data_g_r[1]), .B(n2859), .Y(n2863) );
  NOR2X2 U3387 ( .A(n5693), .B(n5684), .Y(n5498) );
  NOR2X2 U3388 ( .A(n3576), .B(n2706), .Y(n3088) );
  OAI22X1 U3389 ( .A0(n4303), .A1(n4306), .B0(n6686), .B1(n4305), .Y(n3692) );
  INVX3 U3390 ( .A(n5871), .Y(median_sobel_inst_data_f_r[5]) );
  INVX3 U3391 ( .A(median_sobel_inst_n709), .Y(n5867) );
  OR2X1 U3392 ( .A(n6638), .B(n6560), .Y(n3798) );
  INVX3 U3393 ( .A(median_sobel_inst_data_e_r[3]), .Y(n5996) );
  INVX3 U3396 ( .A(n2705), .Y(n5878) );
  INVX3 U3399 ( .A(median_sobel_inst_data_d_r[3]), .Y(n6149) );
  CLKBUFX3 U3400 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n123), .Y(
        n3439) );
  CLKINVX1 U3401 ( .A(median_sobel_inst_n656), .Y(n4613) );
  NOR2X2 U3402 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .Y(n4862) );
  OR2X1 U3403 ( .A(n6711), .B(n6567), .Y(n2966) );
  NOR2X4 U3404 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n5693)
         );
  NAND2X1 U3405 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .Y(n6315) );
  NOR2X2 U3406 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .Y(n6316) );
  OAI2BB2XL U3407 ( .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[12]), .B1(
        n6719), .A0N(n6585), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n73), .Y(n4354) );
  NOR2X1 U3408 ( .A(n6660), .B(n6572), .Y(n5516) );
  INVX3 U3410 ( .A(n3623), .Y(n2825) );
  INVX2 U3411 ( .A(n2706), .Y(n3077) );
  NOR2X4 U3412 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[2]), .Y(n4915) );
  NAND2X1 U3413 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .Y(n6314) );
  INVX3 U3414 ( .A(median_sobel_inst_data_i_r[7]), .Y(n5886) );
  AOI2BB2XL U3415 ( .B0(median_sobel_inst_u_sober_compare_submodule_net60984), 
        .B1(median_sobel_inst_u_sober_compare_submodule_n1), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n2), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n62), .Y(n4500) );
  NAND2X6 U3416 ( .A(n2879), .B(median_sobel_inst_data_e_r[5]), .Y(n5970) );
  CLKINVX1 U3418 ( .A(median_sobel_inst_data_e_r[0]), .Y(n5992) );
  NAND2X6 U3422 ( .A(n3472), .B(n6126), .Y(median_sobel_inst_data_g_r[2]) );
  NAND2X1 U3423 ( .A(n6552), .B(n5512), .Y(n5522) );
  NOR2X1 U3424 ( .A(n6552), .B(n5512), .Y(n5521) );
  NAND2BX2 U3425 ( .AN(n3477), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .Y(n5265) );
  INVX1 U3426 ( .A(n5262), .Y(n4623) );
  NAND2BX2 U3427 ( .AN(n3433), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .Y(n4645) );
  NAND2X4 U3428 ( .A(n6421), .B(n6785), .Y(n5627) );
  INVX1 U3429 ( .A(n4284), .Y(n3388) );
  OAI21X2 U3430 ( .A0(n4489), .A1(n4488), .B0(n4487), .Y(n4493) );
  OA21X2 U3431 ( .A0(n4803), .A1(n4802), .B0(n4801), .Y(n2905) );
  NAND3X6 U3432 ( .A(n2732), .B(n5945), .C(n3075), .Y(
        median_sobel_inst_data_b_r[3]) );
  NOR2X4 U3433 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n5684)
         );
  NAND2BX1 U3434 ( .AN(n2748), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .Y(n6335) );
  OAI21X2 U3436 ( .A0(n4304), .A1(median_sobel_inst_n324), .B0(n3712), .Y(
        n3711) );
  NAND2X4 U3437 ( .A(n3126), .B(n3127), .Y(n3125) );
  OAI21X2 U3438 ( .A0(n3538), .A1(n6250), .B0(n6249), .Y(n3537) );
  NOR2X2 U3439 ( .A(n5024), .B(n4878), .Y(n6375) );
  NOR2X2 U3440 ( .A(n6333), .B(n6337), .Y(n6338) );
  BUFX4 U3442 ( .A(n6150), .Y(n2859) );
  AND2X4 U3443 ( .A(n5848), .B(n3495), .Y(n5884) );
  NOR2X2 U3444 ( .A(n4826), .B(n4910), .Y(n4828) );
  NAND3X4 U3445 ( .A(n5854), .B(n5853), .C(n5852), .Y(
        median_sobel_inst_data_i_r[3]) );
  NAND2X4 U3446 ( .A(n3041), .B(n3351), .Y(n3040) );
  NOR2X2 U3447 ( .A(n3928), .B(n3925), .Y(n4909) );
  INVX3 U3448 ( .A(n3946), .Y(n3813) );
  CLKXOR2X2 U3449 ( .A(n4054), .B(input_data_ready_r[31]), .Y(n2769) );
  NAND3X4 U3450 ( .A(n6034), .B(n6033), .C(n6032), .Y(
        median_sobel_inst_data_a_r[6]) );
  NAND2X4 U3451 ( .A(n5472), .B(n5471), .Y(n5479) );
  NAND3X1 U3452 ( .A(n4306), .B(n4305), .C(n3714), .Y(n3713) );
  NAND3X4 U3454 ( .A(n5150), .B(n5149), .C(n5148), .Y(
        median_sobel_inst_data_c_r[7]) );
  AOI2BB2X2 U3455 ( .B0(n2754), .B1(
        median_sobel_inst_u_sober_compare_submodule_n181), .A0N(n3262), .A1N(
        n3261), .Y(n3260) );
  AOI21X2 U3456 ( .A0(n4586), .A1(n4396), .B0(n4395), .Y(n4548) );
  INVX6 U3457 ( .A(n3398), .Y(n6040) );
  NOR2X1 U3458 ( .A(n6563), .B(n6701), .Y(n5291) );
  INVX8 U3459 ( .A(n3371), .Y(n4714) );
  OR2X2 U3460 ( .A(n469), .B(n1354), .Y(n3398) );
  CLKAND2X3 U3461 ( .A(n469), .B(n1354), .Y(n3754) );
  OR2X1 U3462 ( .A(input_data_ready_r[6]), .B(input_data_ready_r[22]), .Y(
        n4242) );
  OR2X1 U3463 ( .A(n6679), .B(input_data_ready_r[30]), .Y(n2742) );
  OR2X1 U3464 ( .A(median_sobel_inst_n376), .B(n6064), .Y(n5152) );
  OR2X2 U3465 ( .A(n3430), .B(n3431), .Y(n5281) );
  OR2X1 U3466 ( .A(median_sobel_inst_n371), .B(n6064), .Y(n5958) );
  OR2X1 U3467 ( .A(median_sobel_inst_n379), .B(n5834), .Y(n5957) );
  AND2X6 U3469 ( .A(n3573), .B(n3074), .Y(n6014) );
  CLKBUFX3 U3470 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n124), .Y(
        n3095) );
  INVX4 U3471 ( .A(median_sobel_inst_data_c_r[2]), .Y(n5862) );
  AND2X6 U3474 ( .A(n4368), .B(n3564), .Y(n3563) );
  OA22X2 U3475 ( .A0(median_sobel_inst_n352), .A1(n5834), .B0(
        median_sobel_inst_n376), .B1(n6135), .Y(n5148) );
  NAND2X6 U3476 ( .A(n3078), .B(n5976), .Y(n2706) );
  INVX1 U3477 ( .A(n3450), .Y(n3226) );
  NOR2X2 U3478 ( .A(conv_inst_data_bcd_2_r[10]), .B(conv_inst_conv_2_r[10]), 
        .Y(n4429) );
  NOR2X4 U3479 ( .A(n4296), .B(n6686), .Y(n4306) );
  NOR2X2 U3480 ( .A(conv_inst_data_bcd_4_r[10]), .B(conv_inst_conv_4_r[10]), 
        .Y(n4129) );
  NAND2BX1 U3481 ( .AN(median_sobel_inst_u_median_filter_submodule_n50), .B(
        median_sobel_inst_u_median_filter_submodule_net22675), .Y(n2827) );
  OR2X1 U3482 ( .A(median_sobel_inst_u_sober_compare_submodule_n26), .B(
        median_sobel_inst_u_sober_compare_submodule_n181), .Y(n3267) );
  OR2X1 U3483 ( .A(median_sobel_inst_n411), .B(n6048), .Y(n5959) );
  NOR2X1 U3484 ( .A(n6584), .B(n6767), .Y(n4497) );
  NAND2BX1 U3485 ( .AN(median_sobel_inst_n345), .B(n6089), .Y(n5963) );
  NAND2BX1 U3486 ( .AN(median_sobel_inst_n347), .B(n6089), .Y(n5955) );
  NAND3X1 U3487 ( .A(conv_inst_conv_4_r[11]), .B(conv_inst_n37), .C(
        conv_inst_n65), .Y(n3954) );
  INVX3 U3488 ( .A(n5143), .Y(n5363) );
  NAND2X1 U3489 ( .A(median_sobel_inst_n437), .B(n6136), .Y(n6137) );
  AOI21X1 U3490 ( .A0(median_sobel_inst_u_median_filter_submodule_n197), .A1(
        median_sobel_inst_u_median_filter_submodule_n148), .B0(n4215), .Y(
        n4216) );
  NAND2BX1 U3491 ( .AN(median_sobel_inst_n344), .B(n6090), .Y(n5149) );
  NAND2BX1 U3492 ( .AN(median_sobel_inst_n436), .B(n6140), .Y(n5854) );
  NAND2X1 U3493 ( .A(median_sobel_inst_n88), .B(n5944), .Y(n5151) );
  NAND2BX1 U3494 ( .AN(median_sobel_inst_n339), .B(n6146), .Y(n5956) );
  NAND2BX1 U3495 ( .AN(median_sobel_inst_n339), .B(n6089), .Y(n6093) );
  INVX3 U3496 ( .A(n5993), .Y(median_sobel_inst_data_e_r[1]) );
  AOI22X2 U3497 ( .A0(n4047), .A1(n6634), .B0(n4046), .B1(n6545), .Y(n4048) );
  NAND2X1 U3499 ( .A(median_sobel_inst_n93), .B(n6077), .Y(n5852) );
  NOR2X2 U3500 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n5062)
         );
  NAND2X1 U3501 ( .A(median_sobel_inst_n37), .B(n3462), .Y(n5154) );
  NOR2X4 U3502 ( .A(n3666), .B(n3665), .Y(n3359) );
  NAND2X6 U3503 ( .A(n3390), .B(n5847), .Y(median_sobel_inst_data_i_r[5]) );
  NAND2X1 U3504 ( .A(median_sobel_inst_n63), .B(n6069), .Y(n6072) );
  NOR2X6 U3505 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), 
        .B(n6570), .Y(n5206) );
  NAND2BX2 U3506 ( .AN(median_sobel_inst_n344), .B(n6089), .Y(n5545) );
  INVX3 U3507 ( .A(n4088), .Y(n4426) );
  INVX1 U3508 ( .A(n5473), .Y(n5471) );
  NAND2X1 U3509 ( .A(n5796), .B(median_sobel_inst_n70), .Y(n5891) );
  NAND2BX2 U3511 ( .AN(median_sobel_inst_n336), .B(n6146), .Y(n5544) );
  NAND2X1 U3512 ( .A(n5944), .B(median_sobel_inst_n91), .Y(n5899) );
  AND3X6 U3513 ( .A(n5771), .B(n5772), .C(n5770), .Y(n5870) );
  NAND2X6 U3514 ( .A(n5975), .B(n5974), .Y(median_sobel_inst_data_h_r[5]) );
  CLKINVX1 U3515 ( .A(n6117), .Y(n2908) );
  INVX2 U3516 ( .A(median_sobel_inst_data_b_r[2]), .Y(n2778) );
  NAND2BX2 U3517 ( .AN(n3478), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .Y(n4802) );
  NAND2BX1 U3519 ( .AN(median_sobel_inst_n329), .B(n6146), .Y(n6032) );
  NOR2X4 U3520 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n5064)
         );
  AND2X4 U3521 ( .A(median_sobel_inst_u_median_filter_submodule_n165), .B(
        median_sobel_inst_u_median_filter_submodule_n164), .Y(n3371) );
  NAND2X2 U3522 ( .A(n4851), .B(n4939), .Y(n3530) );
  AND2X2 U3523 ( .A(n2893), .B(n2892), .Y(n4191) );
  NOR2BX2 U3524 ( .AN(n6071), .B(n2989), .Y(n2988) );
  NAND2X2 U3525 ( .A(n6947), .B(n3717), .Y(n4190) );
  AOI22X1 U3526 ( .A0(median_sobel_inst_n85), .A1(n4881), .B0(n6140), .B1(
        median_sobel_inst_n35), .Y(n5848) );
  NAND2BX2 U3528 ( .AN(n6736), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n5065) );
  AOI2BB2X2 U3529 ( .B0(n6089), .B1(median_sobel_inst_n53), .A0N(n3045), .A1N(
        median_sobel_inst_n399), .Y(n6130) );
  NAND3X2 U3530 ( .A(n3377), .B(n2773), .C(n3375), .Y(n2772) );
  NAND2X4 U3531 ( .A(n5594), .B(n2947), .Y(n2705) );
  NAND2X4 U3532 ( .A(n4595), .B(n2897), .Y(n2896) );
  INVX3 U3533 ( .A(n6150), .Y(median_sobel_inst_data_d_r[1]) );
  NAND2X2 U3534 ( .A(n3046), .B(median_sobel_inst_n100), .Y(n4141) );
  NOR2X2 U3535 ( .A(n4803), .B(n4800), .Y(n2907) );
  NOR2X2 U3536 ( .A(n4495), .B(n3268), .Y(n4498) );
  NAND2BX1 U3537 ( .AN(median_sobel_inst_n384), .B(n6089), .Y(n5153) );
  AND2X2 U3538 ( .A(n5799), .B(n5798), .Y(n3014) );
  NOR2X2 U3539 ( .A(n5129), .B(n3556), .Y(n3418) );
  OAI22X1 U3542 ( .A0(n3895), .A1(n3894), .B0(
        median_sobel_inst_u_median_filter_submodule_net61277), .B1(n6684), .Y(
        n3620) );
  CLKXOR2X2 U3543 ( .A(input_data_ready_r[6]), .B(n3257), .Y(n4238) );
  NAND3X6 U3544 ( .A(n5965), .B(n2764), .C(n5968), .Y(
        median_sobel_inst_data_e_r[6]) );
  AOI22X1 U3545 ( .A0(n5700), .A1(conv_inst_conv_2_r[12]), .B0(n5699), .B1(
        conv_inst_conv_1_r[12]), .Y(n3679) );
  AOI2BB1X2 U3547 ( .A0N(median_sobel_inst_n254), .A1N(n6135), .B0(n6134), .Y(
        n6138) );
  INVX3 U3548 ( .A(median_sobel_inst_data_b_r[2]), .Y(n3039) );
  CLKINVX3 U3549 ( .A(median_sobel_inst_data_c_r[5]), .Y(n3033) );
  NAND3X6 U3550 ( .A(n2804), .B(n3886), .C(n2803), .Y(n3623) );
  OAI21X2 U3551 ( .A0(n5254), .A1(n4609), .B0(n5255), .Y(n4804) );
  AND2X2 U3552 ( .A(n3898), .B(n3247), .Y(n3246) );
  NAND2BX1 U3554 ( .AN(median_sobel_inst_n348), .B(n6089), .Y(n5945) );
  NAND2X1 U3555 ( .A(n3046), .B(median_sobel_inst_n98), .Y(n5390) );
  XOR2X1 U3558 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n113), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n110), .Y(n4003) );
  OR2X1 U3559 ( .A(median_sobel_inst_u_median_filter_submodule_n129), .B(
        median_sobel_inst_u_median_filter_submodule_net55441), .Y(n2892) );
  OR2X1 U3560 ( .A(median_sobel_inst_u_sober_compare_submodule_n4), .B(n6703), 
        .Y(n3268) );
  INVX1 U3562 ( .A(median_sobel_inst_u_median_filter_submodule_n197), .Y(n4417) );
  NAND2BX1 U3565 ( .AN(median_sobel_inst_u_median_filter_submodule_n126), .B(
        n6648), .Y(n2803) );
  OR2X1 U3566 ( .A(median_sobel_inst_u_median_filter_submodule_n50), .B(n6717), 
        .Y(n3247) );
  INVX4 U3567 ( .A(n3557), .Y(n3404) );
  INVX1 U3568 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r[7]), .Y(
        n3987) );
  NAND2X6 U3569 ( .A(n3076), .B(n5915), .Y(median_sobel_inst_data_b_r[2]) );
  INVX3 U3570 ( .A(median_sobel_inst_data_e_r[0]), .Y(n3042) );
  OA22X2 U3571 ( .A0(median_sobel_inst_n353), .A1(n2792), .B0(
        median_sobel_inst_n377), .B1(n6135), .Y(n5770) );
  NAND2X1 U3572 ( .A(median_sobel_inst_n64), .B(n6089), .Y(n6142) );
  NAND2BX1 U3573 ( .AN(median_sobel_inst_n386), .B(n6089), .Y(n5784) );
  NOR2BX2 U3574 ( .AN(n3478), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .Y(n4800) );
  NAND2BX1 U3575 ( .AN(median_sobel_inst_n394), .B(n6146), .Y(n6121) );
  NAND2BX1 U3576 ( .AN(median_sobel_inst_n385), .B(n6089), .Y(n5419) );
  NAND2BX1 U3579 ( .AN(median_sobel_inst_n345), .B(n6146), .Y(n5772) );
  NAND2BX1 U3580 ( .AN(median_sobel_inst_n360), .B(n6146), .Y(n5567) );
  NAND2X6 U3581 ( .A(n5595), .B(n2779), .Y(median_sobel_inst_data_c_r[2]) );
  CLKINVX1 U3582 ( .A(n4463), .Y(n3216) );
  AND2X2 U3583 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n55), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n33), .Y(n4672) );
  CLKBUFX8 U3584 ( .A(n6133), .Y(n6053) );
  NAND2X6 U3585 ( .A(n3523), .B(n5423), .Y(n6956) );
  NAND2BX1 U3586 ( .AN(median_sobel_inst_n385), .B(n3434), .Y(n5771) );
  NAND2BX1 U3587 ( .AN(median_sobel_inst_n418), .B(n3434), .Y(n5785) );
  AOI22X2 U3590 ( .A0(n6128), .A1(median_sobel_inst_n321), .B0(
        median_sobel_inst_n145), .B1(n6089), .Y(n3078) );
  NAND2BX1 U3591 ( .AN(median_sobel_inst_n347), .B(n6146), .Y(n5799) );
  INVX3 U3592 ( .A(n3454), .Y(n3455) );
  AOI22X1 U3593 ( .A0(n5700), .A1(conv_inst_conv_2_r[8]), .B0(
        conv_inst_conv_1_r[8]), .B1(n5699), .Y(n3853) );
  NAND2X1 U3594 ( .A(n5796), .B(median_sobel_inst_n68), .Y(n6124) );
  NAND2BX1 U3595 ( .AN(median_sobel_inst_n337), .B(n6146), .Y(n5964) );
  NAND2BX1 U3596 ( .AN(median_sobel_inst_n365), .B(n6090), .Y(n6071) );
  NAND2BX1 U3597 ( .AN(median_sobel_inst_n392), .B(n6146), .Y(n6117) );
  NAND2X1 U3598 ( .A(n3468), .B(conv_inst_conv_4_r[11]), .Y(n3685) );
  NAND2BXL U3599 ( .AN(n4340), .B(median_sobel_inst_n26), .Y(n6129) );
  INVX1 U3603 ( .A(n5257), .Y(n4609) );
  NAND2BX2 U3604 ( .AN(median_sobel_inst_u_sober_compare_submodule_n1), .B(
        n6718), .Y(n4496) );
  OAI21X2 U3605 ( .A0(n5834), .A1(median_sobel_inst_n373), .B0(n6070), .Y(
        n2989) );
  NAND2BX1 U3606 ( .AN(median_sobel_inst_n395), .B(n6146), .Y(n6143) );
  CLKXOR2X2 U3607 ( .A(input_data_ready_r[28]), .B(n3412), .Y(n4019) );
  NAND2X1 U3608 ( .A(n6146), .B(n2745), .Y(n3091) );
  AOI22X1 U3609 ( .A0(median_sobel_inst_u_median_filter_submodule_a5_r[6]), 
        .A1(n3195), .B0(median_sobel_inst_u_median_filter_submodule_n372), 
        .B1(n3194), .Y(n3193) );
  XOR2X1 U3610 ( .A(input_data_ready_r[20]), .B(input_data_ready_r[13]), .Y(
        n4040) );
  NAND2X2 U3611 ( .A(n5127), .B(n5121), .Y(n5129) );
  AOI2BB1X2 U3612 ( .A0N(n3045), .A1N(median_sobel_inst_n364), .B0(n4143), .Y(
        n4145) );
  AND3X6 U3613 ( .A(n3860), .B(n3861), .C(n3862), .Y(n3666) );
  NAND2X2 U3614 ( .A(n3382), .B(n3381), .Y(n3950) );
  NAND3X2 U3617 ( .A(n4183), .B(n4182), .C(n4181), .Y(n4188) );
  NAND2X1 U3618 ( .A(n4476), .B(median_sobel_inst_n27), .Y(n2947) );
  NOR2X1 U3619 ( .A(median_sobel_inst_u_sober_compare_submodule_net56177), .B(
        median_sobel_inst_u_sober_compare_submodule_n6), .Y(n4495) );
  NOR2X6 U3620 ( .A(n2868), .B(n2898), .Y(n6150) );
  AOI2BB2X2 U3621 ( .B0(median_sobel_inst_n68), .B1(n6146), .A0N(
        median_sobel_inst_n429), .A1N(n6147), .Y(n5976) );
  NOR2X2 U3622 ( .A(n4676), .B(n4678), .Y(n2897) );
  AOI22X1 U3623 ( .A0(n5700), .A1(conv_inst_conv_2_r[13]), .B0(n5699), .B1(
        conv_inst_conv_1_r[13]), .Y(n3687) );
  NAND2X1 U3625 ( .A(n6122), .B(n2720), .Y(n2953) );
  AOI22X1 U3626 ( .A0(n5700), .A1(conv_inst_n43), .B0(n5699), .B1(
        conv_inst_conv_1_r[11]), .Y(n3684) );
  AOI2BB2X2 U3627 ( .B0(n6049), .B1(median_sobel_inst_n91), .A0N(
        median_sobel_inst_n368), .A1N(n2792), .Y(n3073) );
  INVX3 U3628 ( .A(n3584), .Y(n4579) );
  AOI2BB2X2 U3630 ( .B0(n4166), .B1(n4169), .A0N(
        median_sobel_inst_u_median_filter_submodule_net60646), .A1N(
        median_sobel_inst_u_median_filter_submodule_net55441), .Y(n3128) );
  INVX4 U3632 ( .A(n4659), .Y(n4425) );
  NOR2X2 U3635 ( .A(n4790), .B(n4895), .Y(n4791) );
  AND3X4 U3636 ( .A(n4286), .B(n4285), .C(n2923), .Y(n2922) );
  NOR2X4 U3637 ( .A(n3837), .B(op_mode_r[3]), .Y(n4844) );
  NAND2X1 U3638 ( .A(n6089), .B(median_sobel_inst_n87), .Y(n3092) );
  NAND2X1 U3640 ( .A(n6089), .B(n7021), .Y(n3390) );
  OR2X1 U3641 ( .A(median_sobel_inst_u_median_filter_submodule_net55277), .B(
        median_sobel_inst_u_median_filter_submodule_net22653), .Y(n3868) );
  OR2X2 U3642 ( .A(median_sobel_inst_n374), .B(n6096), .Y(n6061) );
  OR2X2 U3643 ( .A(conv_inst_data_abc_1_r[10]), .B(conv_inst_conv_1_r[10]), 
        .Y(n5481) );
  AND2X6 U3646 ( .A(n3058), .B(n3059), .Y(n2767) );
  NOR2BX1 U3649 ( .AN(median_sobel_inst_u_median_filter_submodule_b9_r[5]), 
        .B(median_sobel_inst_u_median_filter_submodule_b1_r_5_), .Y(n4186) );
  NOR2X1 U3650 ( .A(n6690), .B(n3744), .Y(n5231) );
  NAND2X2 U3651 ( .A(conv_inst_data_bcd_4_r[5]), .B(conv_inst_conv_4_r[5]), 
        .Y(n3956) );
  NAND2X6 U3652 ( .A(n3937), .B(n3938), .Y(n4631) );
  INVXL U3653 ( .A(n889), .Y(n3218) );
  OAI2BB1X2 U3654 ( .A0N(n4335), .A1N(n4331), .B0(n4337), .Y(n3616) );
  CLKINVX6 U3655 ( .A(n3349), .Y(n3344) );
  NOR2X1 U3657 ( .A(n3045), .B(median_sobel_inst_n379), .Y(n3054) );
  NOR2X1 U3658 ( .A(n3045), .B(median_sobel_inst_n367), .Y(n3053) );
  INVX3 U3659 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), 
        .Y(n5143) );
  OAI22X2 U3661 ( .A0(n6132), .A1(median_sobel_inst_n434), .B0(n3080), .B1(
        median_sobel_inst_n402), .Y(n5973) );
  NAND2BX1 U3662 ( .AN(median_sobel_inst_n430), .B(n4630), .Y(n5642) );
  OAI2BB1X2 U3663 ( .A0N(median_sobel_inst_n321), .A1N(n5592), .B0(n5591), .Y(
        n5593) );
  NOR2X2 U3664 ( .A(n4251), .B(n6650), .Y(n4230) );
  NAND3BX1 U3665 ( .AN(median_sobel_inst_u_median_filter_submodule_b9_r[2]), 
        .B(n6940), .C(n4179), .Y(n4183) );
  OAI21X2 U3666 ( .A0(n4212), .A1(
        median_sobel_inst_u_median_filter_submodule_n281), .B0(n6702), .Y(
        n4214) );
  NOR2X1 U3667 ( .A(n3080), .B(median_sobel_inst_n404), .Y(n3574) );
  NAND2X6 U3668 ( .A(n6039), .B(n6038), .Y(median_sobel_inst_data_d_r[6]) );
  NAND2BXL U3669 ( .AN(n4340), .B(median_sobel_inst_n36), .Y(n5420) );
  NOR2X1 U3671 ( .A(n4752), .B(median_sobel_inst_n428), .Y(n3575) );
  NAND2BX2 U3672 ( .AN(median_sobel_inst_n346), .B(n6089), .Y(n5542) );
  NAND2BX2 U3673 ( .AN(median_sobel_inst_n349), .B(n6089), .Y(n5915) );
  NAND2BX1 U3675 ( .AN(median_sobel_inst_n424), .B(n4881), .Y(n6118) );
  NAND2XL U3676 ( .A(median_sobel_inst_n93), .B(n3462), .Y(n5813) );
  NOR2X4 U3677 ( .A(n5985), .B(n2849), .Y(n3294) );
  BUFX16 U3678 ( .A(n5944), .Y(n5979) );
  NAND3X2 U3679 ( .A(n3363), .B(n3372), .C(n3373), .Y(n3213) );
  NAND2X1 U3681 ( .A(n6090), .B(n2718), .Y(n3001) );
  AOI22X2 U3682 ( .A0(median_sobel_inst_n627), .A1(n5541), .B0(n3435), .B1(
        n3461), .Y(n5846) );
  NOR2X2 U3683 ( .A(n3057), .B(n3056), .Y(n5641) );
  NOR2X2 U3684 ( .A(n4788), .B(n4896), .Y(n4789) );
  NAND2X1 U3685 ( .A(n6636), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n5270) );
  NOR2X2 U3686 ( .A(n3497), .B(n4173), .Y(n2984) );
  AND2X2 U3688 ( .A(n5596), .B(n5597), .Y(n2779) );
  AND2X4 U3693 ( .A(n5913), .B(n5914), .Y(n3076) );
  OAI21X2 U3694 ( .A0(n5124), .A1(n5123), .B0(n5122), .Y(n5125) );
  NOR2X4 U3695 ( .A(n3026), .B(n3025), .Y(n3024) );
  AND2X2 U3696 ( .A(n5781), .B(n5782), .Y(n3291) );
  NAND3X6 U3698 ( .A(n5554), .B(n5553), .C(n5552), .Y(
        median_sobel_inst_data_f_r[1]) );
  OAI21X2 U3699 ( .A0(median_sobel_inst_u_median_filter_submodule_net54975), 
        .A1(n6938), .B0(n4174), .Y(n3187) );
  XNOR2X2 U3700 ( .A(conv_inst_data_bcd_4_r[9]), .B(conv_inst_conv_4_r[9]), 
        .Y(n5617) );
  AND2X2 U3702 ( .A(n5929), .B(n5930), .Y(n3043) );
  NAND3X4 U3703 ( .A(n3029), .B(n5820), .C(n5821), .Y(
        median_sobel_inst_data_c_r[0]) );
  NAND2X2 U3704 ( .A(n7020), .B(n3208), .Y(n4327) );
  NOR2X4 U3708 ( .A(n3048), .B(n3047), .Y(n6062) );
  NAND3X4 U3709 ( .A(n4280), .B(n4279), .C(n4278), .Y(
        median_sobel_inst_data_h_r[1]) );
  BUFX8 U3710 ( .A(n4881), .Y(n6049) );
  NAND3X2 U3711 ( .A(n2951), .B(n5746), .C(n2950), .Y(n2949) );
  BUFX4 U3712 ( .A(n6122), .Y(n5984) );
  AND2X2 U3713 ( .A(median_sobel_inst_u_median_filter_submodule_a5_r[1]), .B(
        median_sobel_inst_u_median_filter_submodule_n92), .Y(n3473) );
  OR2X1 U3715 ( .A(median_sobel_inst_u_median_filter_submodule_net22631), .B(
        median_sobel_inst_u_median_filter_submodule_net54874), .Y(n4173) );
  OR2X1 U3716 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_net55584), .Y(n4157) );
  OR2X2 U3717 ( .A(n6559), .B(n6641), .Y(n3640) );
  OR2X1 U3718 ( .A(n6655), .B(
        median_sobel_inst_u_median_filter_submodule_net54975), .Y(n3719) );
  CLKBUFX8 U3719 ( .A(n826), .Y(n3448) );
  INVX12 U3720 ( .A(n3590), .Y(n5700) );
  INVX3 U3721 ( .A(n3833), .Y(n3220) );
  OR2X1 U3722 ( .A(median_sobel_inst_n366), .B(n3080), .Y(n6066) );
  OR2X2 U3723 ( .A(median_sobel_inst_n398), .B(n6135), .Y(n6065) );
  INVX1 U3724 ( .A(n6561), .Y(n3271) );
  NAND2X2 U3725 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(n4710) );
  NOR2X4 U3726 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n4896)
         );
  NOR2X2 U3727 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n113), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n4788) );
  NOR2X2 U3728 ( .A(n6634), .B(n6545), .Y(n4053) );
  NOR2X2 U3729 ( .A(n6633), .B(n837), .Y(n4045) );
  INVX16 U3730 ( .A(n3357), .Y(n5699) );
  NOR2X4 U3731 ( .A(conv_inst_data_bcd_2_r[8]), .B(conv_inst_conv_2_r[8]), .Y(
        n3771) );
  OAI2BB1X2 U3732 ( .A0N(median_sobel_inst_u_median_filter_submodule_net61277), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n126), .B0(n3881), 
        .Y(n2805) );
  NOR2BX1 U3733 ( .AN(median_sobel_inst_u_median_filter_submodule_net54904), 
        .B(median_sobel_inst_u_median_filter_submodule_n125), .Y(n3883) );
  NAND2X1 U3734 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), .Y(n5122)
         );
  NOR2X2 U3735 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), .Y(
        n4899) );
  OAI22X2 U3736 ( .A0(conv_inst_data_bcd_2_r[6]), .A1(conv_inst_conv_2_r[6]), 
        .B0(conv_inst_data_bcd_2_r[5]), .B1(conv_inst_conv_2_r[5]), .Y(n3769)
         );
  AND2X2 U3737 ( .A(conv_inst_data_abc_1_r[6]), .B(conv_inst_conv_1_r[6]), .Y(
        n4284) );
  NOR2X2 U3738 ( .A(n4213), .B(median_sobel_inst_u_median_filter_submodule_n26), .Y(n4212) );
  BUFX2 U3739 ( .A(n3080), .Y(n5986) );
  NOR2X4 U3741 ( .A(n6135), .B(median_sobel_inst_n366), .Y(n3047) );
  NAND3X1 U3742 ( .A(median_sobel_inst_u_median_filter_submodule_n694), .B(
        median_sobel_inst_u_median_filter_submodule_n281), .C(n3170), .Y(n3165) );
  NAND2BX1 U3743 ( .AN(median_sobel_inst_n343), .B(n6146), .Y(n5929) );
  NAND2X1 U3744 ( .A(n4463), .B(n889), .Y(n2950) );
  NAND2BX2 U3746 ( .AN(n2733), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .Y(n4591) );
  NAND2BX1 U3749 ( .AN(median_sobel_inst_n386), .B(n3458), .Y(n5782) );
  NAND2X1 U3750 ( .A(n5551), .B(n5829), .Y(n5554) );
  INVX1 U3751 ( .A(n3249), .Y(n2801) );
  NAND2X4 U3754 ( .A(n4566), .B(n3759), .Y(n3529) );
  NOR2X2 U3755 ( .A(n6037), .B(n6036), .Y(n6038) );
  AOI2BB2X2 U3757 ( .B0(median_sobel_inst_u_median_filter_submodule_n92), .B1(
        median_sobel_inst_u_median_filter_submodule_n149), .A0N(
        median_sobel_inst_u_median_filter_submodule_n150), .A1N(n6654), .Y(
        n3646) );
  NAND2X1 U3758 ( .A(n6146), .B(n2741), .Y(n3059) );
  NOR2X6 U3759 ( .A(n3595), .B(n3594), .Y(n3593) );
  CLKBUFX8 U3761 ( .A(n4752), .Y(n6127) );
  BUFX4 U3762 ( .A(n4752), .Y(n6147) );
  NAND2X2 U3763 ( .A(n3311), .B(n3310), .Y(n3309) );
  NAND3X4 U3764 ( .A(n6215), .B(n6571), .C(n6214), .Y(n6221) );
  NAND2X4 U3765 ( .A(n4687), .B(n3549), .Y(n3548) );
  OAI21X2 U3766 ( .A0(median_sobel_inst_n358), .A1(n5834), .B0(n5835), .Y(
        n3400) );
  NAND2X4 U3767 ( .A(n4178), .B(n6688), .Y(n3139) );
  BUFX12 U3768 ( .A(n4340), .Y(n6048) );
  NAND2X2 U3769 ( .A(n6089), .B(n2736), .Y(n3029) );
  BUFX8 U3770 ( .A(n6060), .Y(n6077) );
  NOR3X2 U3771 ( .A(n6211), .B(n6207), .C(n6206), .Y(n6208) );
  NOR2X4 U3772 ( .A(n5639), .B(median_sobel_inst_n252), .Y(n3057) );
  BUFX16 U3773 ( .A(n4340), .Y(n6132) );
  BUFX12 U3774 ( .A(n4630), .Y(n6044) );
  AND2X6 U3775 ( .A(conv_inst_data_abc_1_r[5]), .B(conv_inst_conv_1_r[5]), .Y(
        n3809) );
  OR2X2 U3776 ( .A(median_sobel_inst_u_median_filter_submodule_net55220), .B(
        median_sobel_inst_u_median_filter_submodule_n148), .Y(n4223) );
  BUFX16 U3777 ( .A(n5541), .Y(n6146) );
  INVX16 U3778 ( .A(n4752), .Y(n6140) );
  INVX1 U3779 ( .A(median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(
        n5590) );
  BUFX4 U3780 ( .A(n4424), .Y(n2792) );
  OR2X1 U3781 ( .A(median_sobel_inst_u_median_filter_submodule_n203), .B(
        median_sobel_inst_u_median_filter_submodule_n150), .Y(n3172) );
  NOR2X2 U3782 ( .A(median_sobel_inst_u_median_filter_submodule_n292), .B(
        median_sobel_inst_u_median_filter_submodule_n94), .Y(n2807) );
  OAI21X2 U3783 ( .A0(median_sobel_inst_u_median_filter_submodule_n161), .A1(
        median_sobel_inst_u_median_filter_submodule_n219), .B0(n3177), .Y(
        n3176) );
  INVX2 U3784 ( .A(n3760), .Y(n3595) );
  BUFX16 U3787 ( .A(n2899), .Y(n6081) );
  INVX1 U3788 ( .A(n6212), .Y(n6211) );
  NOR2BX2 U3789 ( .AN(n2728), .B(n3355), .Y(n5551) );
  NOR2BX2 U3790 ( .AN(conv_inst_data_abc_1_r[3]), .B(n6661), .Y(n4521) );
  INVX3 U3791 ( .A(n3045), .Y(n3046) );
  NAND3BX2 U3792 ( .AN(n6927), .B(n6216), .C(
        median_sobel_inst_u_median_filter_submodule_n355), .Y(n6215) );
  NAND2X6 U3793 ( .A(n3554), .B(n5277), .Y(n4687) );
  NOR2X1 U3794 ( .A(n4559), .B(n889), .Y(n3764) );
  BUFX2 U3795 ( .A(n3505), .Y(n3504) );
  INVX1 U3796 ( .A(n4124), .Y(n4562) );
  NOR2X2 U3798 ( .A(n3766), .B(n3837), .Y(n3310) );
  INVX16 U3799 ( .A(n5985), .Y(n5796) );
  CLKINVX1 U3800 ( .A(n4021), .Y(n4022) );
  BUFX16 U3802 ( .A(n4881), .Y(n4476) );
  OAI22X2 U3803 ( .A0(n6649), .A1(n4752), .B0(n3080), .B1(n4146), .Y(n4147) );
  XNOR2X2 U3804 ( .A(conv_inst_data_abc_3_r[5]), .B(conv_inst_conv_3_r[5]), 
        .Y(n4402) );
  BUFX12 U3805 ( .A(n5944), .Y(n6069) );
  BUFX8 U3806 ( .A(n6122), .Y(n6094) );
  INVX16 U3807 ( .A(n3105), .Y(n4630) );
  BUFX8 U3808 ( .A(n4444), .Y(n5534) );
  INVX8 U3809 ( .A(n3105), .Y(n3462) );
  NAND2X6 U3810 ( .A(n3763), .B(n825), .Y(n4599) );
  NAND2X2 U3811 ( .A(median_sobel_inst_u_median_filter_submodule_net22653), 
        .B(median_sobel_inst_u_median_filter_submodule_net54951), .Y(n3884) );
  NAND2X2 U3812 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .Y(n5277) );
  NOR2X4 U3813 ( .A(conv_inst_data_bcd_2_r[2]), .B(conv_inst_conv_2_r[2]), .Y(
        n5313) );
  NOR2X2 U3814 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), .Y(
        n4727) );
  NOR2X6 U3815 ( .A(n839), .B(n938), .Y(n5643) );
  INVX16 U3817 ( .A(n5832), .Y(n5944) );
  BUFX16 U3818 ( .A(n4424), .Y(n5985) );
  NAND2X6 U3819 ( .A(n3760), .B(n3482), .Y(n5746) );
  NOR2X4 U3820 ( .A(n5369), .B(n5308), .Y(n3613) );
  NAND2X4 U3822 ( .A(n5278), .B(n3555), .Y(n3554) );
  NAND2X2 U3823 ( .A(n3763), .B(n894), .Y(n4559) );
  XOR2X2 U3824 ( .A(op_mode_r[1]), .B(n4981), .Y(n3766) );
  NAND4BX2 U3825 ( .AN(n3761), .B(n2721), .C(n4868), .D(op_mode_r[0]), .Y(
        n3762) );
  NAND2X2 U3826 ( .A(n889), .B(n3482), .Y(n5747) );
  BUFX8 U3827 ( .A(n2954), .Y(n2900) );
  INVX12 U3828 ( .A(n4752), .Y(n6122) );
  INVX3 U3829 ( .A(n6539), .Y(n894) );
  INVX6 U3831 ( .A(op_mode_r[0]), .Y(n4981) );
  BUFX16 U3832 ( .A(n925), .Y(n6419) );
  NAND2X4 U3833 ( .A(conv_inst_data_bcd_4_r[0]), .B(conv_inst_conv_4_r[0]), 
        .Y(n5332) );
  INVX3 U3834 ( .A(n869), .Y(n4382) );
  NOR2X4 U3835 ( .A(n3805), .B(n5341), .Y(n3644) );
  INVX3 U3836 ( .A(n914), .Y(n3763) );
  NAND2X6 U3841 ( .A(n867), .B(n6993), .Y(n3505) );
  INVX3 U3842 ( .A(n2717), .Y(n2718) );
  INVX8 U3843 ( .A(n4505), .Y(n3458) );
  INVX4 U3844 ( .A(n825), .Y(n4560) );
  INVX4 U3845 ( .A(median_sobel_inst_net62749), .Y(n3578) );
  INVX16 U3847 ( .A(n3103), .Y(n3105) );
  BUFX4 U3848 ( .A(n4505), .Y(n3104) );
  INVX6 U3850 ( .A(median_sobel_inst_cnt[0]), .Y(n5829) );
  INVX6 U3851 ( .A(median_sobel_inst_cnt[0]), .Y(n2942) );
  BUFX12 U3852 ( .A(median_sobel_inst_net62749), .Y(n3355) );
  OA21X4 U3853 ( .A0(n4675), .A1(n4678), .B0(n4679), .Y(n2895) );
  AND3X8 U3854 ( .A(n5783), .B(n5784), .C(n5785), .Y(n5871) );
  NAND3X6 U3855 ( .A(n5312), .B(n5314), .C(n5311), .Y(n2785) );
  NAND2XL U3860 ( .A(n5932), .B(n6854), .Y(n5826) );
  NAND2XL U3861 ( .A(n5931), .B(n6845), .Y(n5903) );
  NAND2XL U3862 ( .A(n5934), .B(n6878), .Y(n5900) );
  AOI2BB2X1 U3863 ( .B0(n6040), .B1(n6877), .A0N(n7890), .A1N(n5803), .Y(n6041) );
  NAND4XL U3864 ( .A(n5779), .B(n5778), .C(n5777), .D(n5776), .Y(N708) );
  NAND2X6 U3865 ( .A(n5476), .B(n5475), .Y(n5478) );
  AOI21X1 U3866 ( .A0(n4793), .A1(n5476), .B0(n5472), .Y(n4795) );
  NAND3X6 U3867 ( .A(n5478), .B(n5479), .C(n5477), .Y(n6385) );
  NAND2X6 U3868 ( .A(n4329), .B(n4328), .Y(n5476) );
  NOR2X2 U3869 ( .A(n5603), .B(n3152), .Y(median_sobel_inst_N112) );
  AOI2BB2X4 U3870 ( .B0(n5845), .B1(median_sobel_inst_data_c_r[4]), .A0N(n5867), .A1N(median_sobel_inst_data_f_r[3]), .Y(n2996) );
  NAND2X4 U3871 ( .A(n2916), .B(median_sobel_inst_data_i_r[6]), .Y(n2915) );
  AND2X4 U3874 ( .A(n5814), .B(n5813), .Y(n3004) );
  NAND2X6 U3875 ( .A(n5357), .B(n5358), .Y(n3806) );
  AOI21X4 U3877 ( .A0(n6586), .A1(n3662), .B0(n4412), .Y(conv_inst_N285) );
  OR2X6 U3879 ( .A(median_sobel_inst_u_median_filter_submodule_n286), .B(
        median_sobel_inst_u_median_filter_submodule_n352), .Y(n6212) );
  NOR2X4 U3880 ( .A(n3670), .B(n5619), .Y(conv_inst_N286) );
  NAND2X4 U3881 ( .A(n2787), .B(n3671), .Y(n4443) );
  NAND2X4 U3883 ( .A(n6679), .B(input_data_ready_r[30]), .Y(n3377) );
  AND3X4 U3885 ( .A(n6093), .B(n6091), .C(n6092), .Y(n6173) );
  OAI21X4 U3886 ( .A0(n6289), .A1(n2810), .B0(n6288), .Y(
        median_sobel_inst_u_median_filter_submodule_net21366) );
  NAND2X1 U3887 ( .A(n6900), .B(n3250), .Y(n3249) );
  AOI2BB2X2 U3888 ( .B0(n6279), .B1(
        median_sobel_inst_u_median_filter_submodule_a5_r[1]), .A0N(n2844), 
        .A1N(n5577), .Y(n5579) );
  AOI2BB2X2 U3889 ( .B0(n6279), .B1(
        median_sobel_inst_u_median_filter_submodule_a5_r[6]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n217), .A1N(n2844), .Y(
        n6275) );
  AOI2BB2X2 U3890 ( .B0(n6279), .B1(
        median_sobel_inst_u_median_filter_submodule_net41723), .A0N(n2844), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n203), .Y(n3367) );
  AOI2BB2X2 U3891 ( .B0(median_sobel_inst_u_median_filter_submodule_a5_r[4]), 
        .B1(n6279), .A0N(n2844), .A1N(
        median_sobel_inst_u_median_filter_submodule_n694), .Y(n5638) );
  NOR2X8 U3892 ( .A(n3501), .B(n7014), .Y(n2716) );
  NOR2X6 U3894 ( .A(n6191), .B(n3239), .Y(n6189) );
  CLKINVX1 U3896 ( .A(median_sobel_inst_n631), .Y(n2717) );
  INVX3 U3897 ( .A(median_sobel_inst_data_f_r[1]), .Y(n3008) );
  NOR2X2 U3900 ( .A(median_sobel_inst_u_sober_compare_submodule_n23), .B(n4425), .Y(n4096) );
  NOR2X4 U3903 ( .A(n4235), .B(n4234), .Y(n4250) );
  NAND2X1 U3904 ( .A(median_sobel_inst_n68), .B(n3461), .Y(n6070) );
  NAND2X2 U3905 ( .A(n5885), .B(median_sobel_inst_data_f_r[6]), .Y(n2916) );
  OAI22X1 U3906 ( .A0(n4225), .A1(
        median_sobel_inst_u_median_filter_submodule_n197), .B0(
        median_sobel_inst_u_median_filter_submodule_n217), .B1(
        median_sobel_inst_u_median_filter_submodule_n212), .Y(n3365) );
  INVXL U3907 ( .A(n5313), .Y(n5316) );
  NAND2X1 U3908 ( .A(median_sobel_inst_data_d_r[7]), .B(
        median_sobel_inst_data_d_r[6]), .Y(n6114) );
  NAND2XL U3909 ( .A(op_mode_r[0]), .B(n892), .Y(n4849) );
  NAND2X2 U3910 ( .A(n6456), .B(conv_inst_conv_1_r[13]), .Y(n3812) );
  NAND2X1 U3911 ( .A(n6338), .B(n6334), .Y(n6340) );
  AND2X4 U3912 ( .A(n3397), .B(n3396), .Y(n5561) );
  INVXL U3914 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n99), .Y(n4671) );
  NAND2XL U3915 ( .A(n5714), .B(n3303), .Y(n3302) );
  NAND2XL U3916 ( .A(n6099), .B(n6904), .Y(n5760) );
  OAI2BB1X1 U3918 ( .A0N(n6307), .A1N(n6308), .B0(n6306), .Y(n3407) );
  OAI21X2 U3919 ( .A0(n5684), .A1(n5694), .B0(n5685), .Y(n5504) );
  NOR2X2 U3920 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n123), .Y(n5666) );
  AND2X2 U3921 ( .A(conv_inst_data_bcd_4_r[9]), .B(conv_inst_conv_4_r[9]), .Y(
        n4511) );
  INVXL U3922 ( .A(n4072), .Y(n3944) );
  AND2X1 U3923 ( .A(median_sobel_inst_n661), .B(n6782), .Y(n3500) );
  NAND2X2 U3924 ( .A(n889), .B(n6539), .Y(n3232) );
  INVXL U3925 ( .A(n4286), .Y(n4289) );
  NAND2BX1 U3927 ( .AN(n2733), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .Y(n5255) );
  INVXL U3928 ( .A(n6200), .Y(n4815) );
  NAND2XL U3930 ( .A(n5461), .B(n5011), .Y(n5013) );
  INVX3 U3931 ( .A(n3219), .Y(n2869) );
  NAND2X1 U3932 ( .A(n6704), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n4911) );
  NOR2XL U3933 ( .A(n791), .B(n5803), .Y(n5794) );
  NOR2X1 U3934 ( .A(n3575), .B(n3574), .Y(n3573) );
  INVXL U3935 ( .A(median_sobel_inst_data_b_r[7]), .Y(n6019) );
  INVXL U3936 ( .A(n4743), .Y(n4745) );
  INVXL U3937 ( .A(n4859), .Y(n4624) );
  INVXL U3938 ( .A(n6365), .Y(n4014) );
  INVXL U3939 ( .A(n5492), .Y(n5494) );
  INVXL U3940 ( .A(n5206), .Y(n5113) );
  OAI21X2 U3941 ( .A0(n4648), .A1(n4645), .B0(n4649), .Y(n3241) );
  INVXL U3943 ( .A(n5288), .Y(n5290) );
  INVXL U3944 ( .A(n5062), .Y(n5301) );
  INVXL U3945 ( .A(n4840), .Y(n4842) );
  INVXL U3946 ( .A(median_sobel_inst_u_median_filter_submodule_n204), .Y(n5235) );
  OAI22X1 U3947 ( .A0(median_sobel_inst_n375), .A1(n6132), .B0(
        median_sobel_inst_n367), .B1(n4752), .Y(n6052) );
  NAND2X1 U3948 ( .A(conv_inst_conv_2_r[12]), .B(conv_inst_n43), .Y(n4433) );
  NOR2BX2 U3949 ( .AN(n4844), .B(n4269), .Y(n4272) );
  CLKINVX1 U3950 ( .A(n831), .Y(n3838) );
  OAI21X1 U3951 ( .A0(n4518), .A1(n4289), .B0(n4288), .Y(n4292) );
  NAND2XL U3952 ( .A(n5458), .B(n5363), .Y(n5145) );
  NAND2X1 U3953 ( .A(n4854), .B(n841), .Y(n4856) );
  NAND2XL U3954 ( .A(n6189), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .Y(n5119) );
  NAND2XL U3955 ( .A(n6259), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[1]), .Y(n5176) );
  INVXL U3956 ( .A(n6259), .Y(n6263) );
  NAND2XL U3957 ( .A(n5282), .B(n5281), .Y(n5284) );
  NAND2XL U3958 ( .A(n5933), .B(n6917), .Y(n5909) );
  NAND2BX2 U3959 ( .AN(n5574), .B(n3393), .Y(n3392) );
  NAND2X1 U3960 ( .A(n5830), .B(n3152), .Y(n4084) );
  NOR2XL U3961 ( .A(n778), .B(n5803), .Y(n6075) );
  NOR2X4 U3962 ( .A(n3517), .B(n3515), .Y(n3516) );
  NOR2XL U3964 ( .A(n8110), .B(n5803), .Y(n4208) );
  NAND2XL U3965 ( .A(i_op_valid), .B(i_op_mode[2]), .Y(n4381) );
  NAND2BX2 U3966 ( .AN(n2844), .B(n2934), .Y(n2933) );
  OAI21X1 U3967 ( .A0(n6382), .A1(n5024), .B0(n5025), .Y(n4876) );
  NAND2XL U3968 ( .A(n5933), .B(n6620), .Y(n5755) );
  INVXL U3969 ( .A(conv_inst_n37), .Y(n4131) );
  NAND2X1 U3970 ( .A(n6405), .B(
        median_sobel_inst_u_sober_compare_submodule_n219), .Y(n6408) );
  NAND2XL U3971 ( .A(n4660), .B(
        median_sobel_inst_u_sober_compare_submodule_n202), .Y(n4580) );
  NAND2XL U3972 ( .A(n6497), .B(sram_addr_w[19]), .Y(n5001) );
  NAND2XL U3973 ( .A(n4660), .B(
        median_sobel_inst_u_sober_compare_submodule_n201), .Y(n4544) );
  NAND2X2 U3974 ( .A(n6324), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .Y(n6323) );
  NAND2XL U3975 ( .A(n5290), .B(n5289), .Y(n5292) );
  NAND2XL U3976 ( .A(n5321), .B(n5320), .Y(n5322) );
  NAND2XL U3977 ( .A(n5488), .B(n5490), .Y(n5489) );
  NAND2X1 U3979 ( .A(median_sobel_inst_n37), .B(n6089), .Y(n5860) );
  NAND2XL U3980 ( .A(n6189), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .Y(n6188) );
  CLKINVX1 U3982 ( .A(conv_inst_n110), .Y(n4414) );
  NAND2XL U3983 ( .A(n6471), .B(cnt[3]), .Y(n5045) );
  NAND2XL U3984 ( .A(n6519), .B(sram_addr_w[1]), .Y(n5022) );
  NAND2X2 U3985 ( .A(n3585), .B(n3281), .Y(n3277) );
  NAND2XL U3986 ( .A(n6498), .B(cnt[9]), .Y(n5137) );
  NAND2XL U3987 ( .A(n6514), .B(cnt[9]), .Y(n5133) );
  NAND2XL U3988 ( .A(n5949), .B(n6911), .Y(n5920) );
  NOR2XL U3989 ( .A(n6105), .B(n6043), .Y(N692) );
  NOR2XL U3990 ( .A(n5619), .B(n5331), .Y(conv_inst_N253) );
  NOR2XL U3991 ( .A(n5601), .B(n4584), .Y(conv_inst_N220) );
  NAND2X1 U3992 ( .A(n3917), .B(n3916), .Y(conv_inst_ns[1]) );
  OAI22XL U3993 ( .A0(n3094), .A1(n6896), .B0(n6623), .B1(n3000), .Y(
        conv_inst_N202) );
  NAND3X4 U3994 ( .A(n4084), .B(n4083), .C(n4082), .Y(
        median_sobel_inst_data_b_r[1]) );
  NAND2XL U3995 ( .A(n5074), .B(n5073), .Y(out_data_wait_r[3]) );
  NOR2XL U3996 ( .A(n4587), .B(n5619), .Y(conv_inst_N255) );
  NOR2XL U3998 ( .A(n3000), .B(n6891), .Y(conv_inst_N207) );
  NOR2X1 U3999 ( .A(n3275), .B(n6703), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1230) );
  XOR2X2 U4000 ( .A(n3515), .B(n4121), .Y(conv_inst_N73) );
  NOR2XL U4002 ( .A(n5362), .B(n5619), .Y(conv_inst_N222) );
  NAND3XL U4003 ( .A(n4577), .B(n4576), .C(n4575), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]) );
  NAND3XL U4004 ( .A(n5170), .B(n5169), .C(n5168), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[7]) );
  MX2X1 U4005 ( .A(n6806), .B(median_sobel_inst_G[32]), .S0(n5796), .Y(
        median_sobel_inst_u_sober_compare_submodule_n117) );
  MX2X1 U4006 ( .A(n6821), .B(median_sobel_inst_G[25]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n110) );
  AND2X2 U4007 ( .A(n3518), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N340) );
  NAND2XL U4008 ( .A(n4608), .B(n4607), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1080) );
  XNOR2X1 U4009 ( .A(n4843), .B(n3240), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]) );
  XOR2X1 U4010 ( .A(n3971), .B(n3970), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N154) );
  NAND2X6 U4011 ( .A(n3024), .B(n6046), .Y(median_sobel_inst_data_a_r[5]) );
  MX2X1 U4012 ( .A(median_sobel_inst_angle[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n130), .S0(n6136), .Y(
        median_sobel_inst_n491) );
  MX2X1 U4013 ( .A(median_sobel_inst_G[39]), .B(n6612), .S0(n6136), .Y(
        median_sobel_inst_n459) );
  MX2X1 U4014 ( .A(median_sobel_inst_angle[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n131), .S0(n4881), .Y(
        median_sobel_inst_n484) );
  MXI2X1 U4015 ( .A(median_sobel_inst_n207), .B(n6953), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[32]) );
  MX2X1 U4016 ( .A(n6864), .B(input_data_ready_r[7]), .S0(n2899), .Y(
        median_sobel_inst_n851) );
  OAI2BB1X1 U4017 ( .A0N(median_sobel_inst_G[23]), .A1N(n4340), .B0(n3143), 
        .Y(median_sobel_inst_n476) );
  MX2X1 U4018 ( .A(median_sobel_inst_G[26]), .B(n6616), .S0(n4476), .Y(
        median_sobel_inst_n464) );
  OAI21XL U4019 ( .A0(median_sobel_inst_n360), .A1(n3141), .B0(n3142), .Y(
        n6565) );
  MX2X1 U4020 ( .A(median_sobel_inst_n99), .B(n6849), .S0(n6049), .Y(
        median_sobel_inst_n619) );
  MX2X1 U4021 ( .A(median_sobel_inst_n63), .B(n6787), .S0(n3461), .Y(
        median_sobel_inst_n553) );
  NOR3X2 U4022 ( .A(n4135), .B(n3918), .C(n3468), .Y(conv_inst_N570) );
  OAI22XL U4023 ( .A0(n3094), .A1(n4503), .B0(n4413), .B1(n3000), .Y(
        conv_inst_N205) );
  NAND2XL U4024 ( .A(n4999), .B(n4998), .Y(out_data_wait_r[7]) );
  NAND3XL U4025 ( .A(n5009), .B(n5008), .C(n5007), .Y(sram_addr_wait_r[29]) );
  NAND3XL U4026 ( .A(n5133), .B(n5132), .C(n5162), .Y(sram_addr_wait_r[14]) );
  AND2X8 U4027 ( .A(n3243), .B(n6539), .Y(n2721) );
  AND2X4 U4028 ( .A(n6296), .B(n6684), .Y(n2722) );
  AND2X2 U4029 ( .A(n6298), .B(n6683), .Y(n2723) );
  AND2X2 U4031 ( .A(n4881), .B(median_sobel_inst_n645), .Y(n2726) );
  AOI21X2 U4033 ( .A0(n6441), .A1(n6440), .B0(n6446), .Y(n2729) );
  AND2X2 U4034 ( .A(n5917), .B(n5918), .Y(n2730) );
  NAND2X4 U4035 ( .A(n3760), .B(n2721), .Y(n3837) );
  INVXL U4036 ( .A(n2902), .Y(n5324) );
  OR2X4 U4037 ( .A(n6628), .B(n2903), .Y(n2902) );
  AND2X2 U4038 ( .A(n3532), .B(n3531), .Y(n2732) );
  NAND2X6 U4039 ( .A(n3578), .B(median_sobel_inst_cnt[0]), .Y(n4424) );
  BUFX4 U4040 ( .A(n4423), .Y(n5242) );
  OAI21X2 U4041 ( .A0(n384), .A1(n4599), .B0(n3764), .Y(n2734) );
  INVX12 U4042 ( .A(n3105), .Y(n4881) );
  CLKBUFX8 U4043 ( .A(n3458), .Y(n3141) );
  NAND3X4 U4045 ( .A(n5955), .B(n5956), .C(n5954), .Y(
        median_sobel_inst_data_b_r[4]) );
  AND2X2 U4046 ( .A(n5964), .B(n5962), .Y(n2743) );
  AND3X2 U4047 ( .A(n3012), .B(n3254), .C(n5868), .Y(n2744) );
  AND2X2 U4049 ( .A(n6380), .B(n6375), .Y(n2747) );
  INVXL U4050 ( .A(median_sobel_inst_u_median_filter_submodule_n288), .Y(n6287) );
  NAND3X2 U4051 ( .A(n2794), .B(n3035), .C(n5899), .Y(
        median_sobel_inst_data_e_r[7]) );
  NAND2X1 U4052 ( .A(median_sobel_inst_u_median_filter_submodule_n148), .B(
        median_sobel_inst_u_median_filter_submodule_net55220), .Y(n2749) );
  INVX3 U4053 ( .A(n6191), .Y(n5392) );
  NOR2X4 U4054 ( .A(median_sobel_inst_u_median_filter_submodule_n164), .B(
        median_sobel_inst_u_median_filter_submodule_n165), .Y(n6191) );
  AND2X2 U4055 ( .A(conv_inst_conv_1_r[12]), .B(conv_inst_conv_1_r[11]), .Y(
        n2751) );
  NAND2X2 U4056 ( .A(n6724), .B(
        median_sobel_inst_u_median_filter_submodule_n164), .Y(n5180) );
  OR2X4 U4057 ( .A(median_sobel_inst_u_median_filter_submodule_n274), .B(
        median_sobel_inst_u_median_filter_submodule_n696), .Y(n2752) );
  INVX3 U4058 ( .A(n4768), .Y(n5624) );
  NAND2X1 U4059 ( .A(n6727), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n5377) );
  INVXL U4060 ( .A(n5377), .Y(n2919) );
  NOR2X2 U4062 ( .A(n5286), .B(n4711), .Y(n4889) );
  AND2X2 U4063 ( .A(n3584), .B(median_sobel_inst_u_sober_compare_submodule_n26), .Y(n2754) );
  AND3X2 U4064 ( .A(n3384), .B(n3600), .C(n3662), .Y(n2756) );
  NOR2X1 U4065 ( .A(n4532), .B(conv_inst_conv_4_r[11]), .Y(n2757) );
  INVX3 U4067 ( .A(n6470), .Y(n3280) );
  INVX3 U4072 ( .A(n3254), .Y(n3255) );
  INVX3 U4075 ( .A(median_sobel_inst_net60883), .Y(n2952) );
  CLKMX2X2 U4079 ( .A(median_sobel_inst_G[10]), .B(n6610), .S0(n6416), .Y(
        median_sobel_inst_n442) );
  CLKMX2X2 U4080 ( .A(median_sobel_inst_n26), .B(n6558), .S0(n6139), .Y(
        median_sobel_inst_n515) );
  CLKMX2X2 U4081 ( .A(median_sobel_inst_G[7]), .B(n6619), .S0(n6416), .Y(
        median_sobel_inst_n454) );
  CLKMX2X2 U4082 ( .A(median_sobel_inst_G[8]), .B(n6618), .S0(n6416), .Y(
        median_sobel_inst_n450) );
  CLKMX2X2 U4083 ( .A(median_sobel_inst_G[31]), .B(n6892), .S0(n6128), .Y(
        median_sobel_inst_n444) );
  CLKMX2X2 U4084 ( .A(median_sobel_inst_G[6]), .B(n6612), .S0(n6416), .Y(
        median_sobel_inst_n458) );
  CLKMX2X2 U4085 ( .A(median_sobel_inst_G[9]), .B(n6892), .S0(n6416), .Y(
        median_sobel_inst_n446) );
  CLKMX2X2 U4086 ( .A(median_sobel_inst_angle[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n131), .S0(n6416), .Y(
        median_sobel_inst_n486) );
  CLKMX2X2 U4087 ( .A(median_sobel_inst_G[0]), .B(n6614), .S0(n6416), .Y(
        median_sobel_inst_n482) );
  CLKMX2X2 U4088 ( .A(median_sobel_inst_G[33]), .B(n6614), .S0(n6081), .Y(
        median_sobel_inst_n483) );
  CLKMX2X2 U4089 ( .A(median_sobel_inst_n437), .B(n6788), .S0(n6044), .Y(
        median_sobel_inst_n552) );
  CLKMX2X2 U4090 ( .A(median_sobel_inst_G[1]), .B(n6609), .S0(n6416), .Y(
        median_sobel_inst_n478) );
  CLKMX2X2 U4091 ( .A(median_sobel_inst_G[2]), .B(n6615), .S0(n6416), .Y(
        median_sobel_inst_n474) );
  CLKMX2X2 U4092 ( .A(median_sobel_inst_G[4]), .B(n6616), .S0(n6416), .Y(
        median_sobel_inst_n466) );
  CLKMX2X2 U4093 ( .A(median_sobel_inst_G[3]), .B(n6617), .S0(n6416), .Y(
        median_sobel_inst_n470) );
  CLKMX2X2 U4094 ( .A(median_sobel_inst_G[36]), .B(n6617), .S0(n6081), .Y(
        median_sobel_inst_n471) );
  CLKMX2X2 U4095 ( .A(median_sobel_inst_G[5]), .B(n6613), .S0(n6416), .Y(
        median_sobel_inst_n462) );
  CLKMX2X2 U4096 ( .A(median_sobel_inst_G[35]), .B(n6615), .S0(n6081), .Y(
        median_sobel_inst_n475) );
  CLKMX2X2 U4097 ( .A(median_sobel_inst_n620), .B(n6948), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[44]) );
  CLKMX2X2 U4098 ( .A(median_sobel_inst_angle[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n130), .S0(n6416), .Y(
        median_sobel_inst_n490) );
  CLKMX2X2 U4099 ( .A(median_sobel_inst_angle[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n130), .S0(n6139), .Y(
        median_sobel_inst_n488) );
  CLKMX2X2 U4100 ( .A(median_sobel_inst_G[41]), .B(n6618), .S0(n6081), .Y(
        median_sobel_inst_n451) );
  CLKMX2X2 U4101 ( .A(median_sobel_inst_n37), .B(n6863), .S0(n5534), .Y(
        median_sobel_inst_n524) );
  NAND3X4 U4102 ( .A(n3682), .B(n3680), .C(n3679), .Y(n4122) );
  CLKMX2X2 U4103 ( .A(median_sobel_inst_angle[0]), .B(n6737), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n94) );
  INVX1 U4107 ( .A(n3813), .Y(n2929) );
  INVX3 U4108 ( .A(n3246), .Y(n2824) );
  INVX3 U4109 ( .A(n2830), .Y(n2822) );
  INVX1 U4111 ( .A(n4327), .Y(n3207) );
  AOI22X1 U4112 ( .A0(n6190), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .B0(n6191), 
        .B1(n6873), .Y(n4949) );
  INVX1 U4114 ( .A(n5521), .Y(n5523) );
  INVX1 U4116 ( .A(n4344), .Y(n4295) );
  INVX1 U4117 ( .A(n4910), .Y(n4912) );
  INVX1 U4118 ( .A(n6377), .Y(n5028) );
  INVX1 U4119 ( .A(n6355), .Y(n3799) );
  INVX1 U4120 ( .A(n5124), .Y(n3969) );
  CLKINVX1 U4121 ( .A(n2890), .Y(n2843) );
  INVX1 U4122 ( .A(n6336), .Y(n5046) );
  INVX1 U4123 ( .A(n5590), .Y(n2934) );
  INVX1 U4127 ( .A(median_sobel_inst_u_sober_compare_submodule_n210), .Y(n4619) );
  INVX1 U4129 ( .A(n6566), .Y(n2890) );
  INVX3 U4133 ( .A(n3255), .Y(n2958) );
  INVX8 U4134 ( .A(n4950), .Y(n6514) );
  INVX2 U4138 ( .A(median_sobel_inst_data_e_r[7]), .Y(n6000) );
  INVX3 U4139 ( .A(median_sobel_inst_data_c_r[7]), .Y(n3101) );
  INVX3 U4140 ( .A(median_sobel_inst_data_c_r[7]), .Y(n3100) );
  NAND2X6 U4141 ( .A(n4078), .B(n3727), .Y(n3726) );
  NAND2X6 U4143 ( .A(n2743), .B(n5963), .Y(median_sobel_inst_data_b_r[6]) );
  NOR2X4 U4149 ( .A(n3045), .B(median_sobel_inst_n330), .Y(n3051) );
  CLKMX2X2 U4150 ( .A(n6820), .B(median_sobel_inst_G[28]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n113) );
  CLKMX2X2 U4151 ( .A(n6822), .B(median_sobel_inst_G[31]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n116) );
  CLKMX2X2 U4153 ( .A(median_sobel_inst_G[42]), .B(n6892), .S0(n6081), .Y(
        median_sobel_inst_n447) );
  CLKMX2X2 U4155 ( .A(n6606), .B(median_sobel_inst_G[36]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n99) );
  CLKMX2X2 U4156 ( .A(n6605), .B(median_sobel_inst_G[39]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n102) );
  CLKMX2X2 U4157 ( .A(median_sobel_inst_n85), .B(input_data_ready_r[30]), .S0(
        n3141), .Y(median_sobel_inst_n493) );
  CLKMX2X2 U4158 ( .A(median_sobel_inst_n42), .B(n6857), .S0(n6128), .Y(
        median_sobel_inst_n499) );
  CLKMX2X2 U4159 ( .A(n6608), .B(median_sobel_inst_G[33]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n96) );
  CLKMX2X2 U4160 ( .A(n6600), .B(median_sobel_inst_G[14]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n121) );
  CLKMX2X2 U4161 ( .A(n6607), .B(median_sobel_inst_G[17]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n124) );
  CLKMX2X2 U4162 ( .A(n6832), .B(median_sobel_inst_G[20]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n127) );
  CLKMX2X2 U4163 ( .A(n6811), .B(median_sobel_inst_G[21]), .S0(n5796), .Y(
        median_sobel_inst_u_sober_compare_submodule_n128) );
  NAND2X2 U4164 ( .A(n6081), .B(median_sobel_inst_n140), .Y(n3075) );
  NOR2X4 U4165 ( .A(n5753), .B(n6103), .Y(n5765) );
  NOR2X4 U4166 ( .A(n5753), .B(n6101), .Y(n5764) );
  NOR2X4 U4168 ( .A(n5753), .B(n3750), .Y(n5762) );
  XNOR2X2 U4169 ( .A(n6373), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N13) );
  NAND2X6 U4171 ( .A(n3530), .B(n3269), .Y(n5753) );
  NAND2X1 U4172 ( .A(n4820), .B(n6692), .Y(n4818) );
  NAND2BX1 U4173 ( .AN(n3141), .B(median_sobel_inst_n327), .Y(n3146) );
  NAND2BX1 U4174 ( .AN(n3141), .B(median_sobel_inst_n139), .Y(n3144) );
  AOI22X1 U4175 ( .A0(n6083), .A1(n6869), .B0(n6040), .B1(
        sram_data_out_r_1__0_), .Y(n4206) );
  AOI22X1 U4176 ( .A0(n6083), .A1(n6887), .B0(n6040), .B1(n6622), .Y(n5804) );
  NAND2BX1 U4177 ( .AN(n3141), .B(median_sobel_inst_n140), .Y(n3145) );
  NAND2X1 U4178 ( .A(n5406), .B(n6315), .Y(n5403) );
  NAND2X1 U4179 ( .A(n3922), .B(n3927), .Y(n3923) );
  NAND2X1 U4180 ( .A(n5232), .B(n5231), .Y(n5233) );
  INVX2 U4181 ( .A(n5138), .Y(n5139) );
  INVX1 U4182 ( .A(n5652), .Y(n5654) );
  NAND2X1 U4183 ( .A(n4680), .B(n4679), .Y(n4681) );
  AND2X2 U4184 ( .A(n4889), .B(n4892), .Y(n4894) );
  CLKINVX1 U4185 ( .A(n6390), .Y(n5480) );
  INVX3 U4186 ( .A(n5180), .Y(n3239) );
  INVX1 U4187 ( .A(n5666), .Y(n5668) );
  INVX1 U4188 ( .A(n5464), .Y(n5010) );
  NOR2X1 U4189 ( .A(n5616), .B(n5611), .Y(n5613) );
  INVX1 U4190 ( .A(n5684), .Y(n5686) );
  INVX1 U4191 ( .A(n5264), .Y(n5266) );
  INVX4 U4193 ( .A(n6099), .Y(n3750) );
  INVX1 U4194 ( .A(n5429), .Y(n4758) );
  INVX1 U4195 ( .A(n4901), .Y(n4903) );
  INVXL U4196 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .Y(n6278) );
  INVX3 U4197 ( .A(median_sobel_inst_u_median_filter_submodule_n219), .Y(n5577) );
  INVX1 U4198 ( .A(median_sobel_inst_u_sober_compare_submodule_net60499), .Y(
        n4502) );
  INVX1 U4199 ( .A(median_sobel_inst_u_median_filter_submodule_net55085), .Y(
        n3134) );
  NAND2X4 U4201 ( .A(n5880), .B(n5879), .Y(n3121) );
  NAND2X4 U4203 ( .A(n2930), .B(n2927), .Y(n2926) );
  NOR2X4 U4204 ( .A(n2757), .B(n2786), .Y(n3475) );
  NOR2X4 U4207 ( .A(n2878), .B(n2877), .Y(n2876) );
  NAND2X4 U4208 ( .A(n2886), .B(n2885), .Y(n2884) );
  NAND3X2 U4209 ( .A(n2761), .B(n6015), .C(n2758), .Y(n6001) );
  NAND3X2 U4210 ( .A(n2935), .B(n2933), .C(n2932), .Y(
        median_sobel_inst_u_median_filter_submodule_n676) );
  NAND3X2 U4211 ( .A(n3723), .B(n3722), .C(n3721), .Y(
        median_sobel_inst_u_median_filter_submodule_net34511) );
  NAND2X6 U4216 ( .A(n5003), .B(n3842), .Y(n4950) );
  NAND2X2 U4217 ( .A(n6000), .B(median_sobel_inst_data_b_r[7]), .Y(n2812) );
  INVX3 U4218 ( .A(median_sobel_inst_n709), .Y(n3005) );
  NAND2X2 U4219 ( .A(n3033), .B(median_sobel_inst_data_i_r[5]), .Y(n3032) );
  NAND2X2 U4220 ( .A(n5862), .B(n2705), .Y(n3016) );
  INVX3 U4222 ( .A(n2781), .Y(n3286) );
  INVX4 U4223 ( .A(median_sobel_inst_n390), .Y(n5845) );
  INVX3 U4225 ( .A(median_sobel_inst_data_f_r[0]), .Y(n5872) );
  NAND2X2 U4226 ( .A(n2705), .B(n5873), .Y(n5876) );
  INVX3 U4227 ( .A(median_sobel_inst_data_d_r[4]), .Y(n6151) );
  INVX3 U4228 ( .A(median_sobel_inst_data_a_r[7]), .Y(n3097) );
  NAND2X2 U4229 ( .A(n5882), .B(median_sobel_inst_n390), .Y(n3114) );
  NAND2X6 U4231 ( .A(n5391), .B(n5390), .Y(median_sobel_inst_data_a_r[7]) );
  INVX3 U4232 ( .A(median_sobel_inst_data_g_r[3]), .Y(n2861) );
  INVX3 U4233 ( .A(median_sobel_inst_data_b_r[4]), .Y(n2817) );
  CLKINVX1 U4234 ( .A(median_sobel_inst_data_e_r[3]), .Y(n2816) );
  INVX3 U4237 ( .A(median_sobel_inst_data_f_r[2]), .Y(n5873) );
  INVX3 U4238 ( .A(median_sobel_inst_data_a_r[6]), .Y(n6179) );
  INVX3 U4239 ( .A(median_sobel_inst_data_c_r[0]), .Y(n3028) );
  XOR2X1 U4241 ( .A(n4904), .B(n3550), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N152) );
  NOR2X4 U4242 ( .A(n3055), .B(n3054), .Y(n5801) );
  NAND4X4 U4243 ( .A(n5943), .B(n5942), .C(n5941), .D(n5940), .Y(
        median_sobel_inst_data_e_r[3]) );
  NAND2X6 U4244 ( .A(n6138), .B(n6137), .Y(median_sobel_inst_data_g_r[3]) );
  AND2X4 U4246 ( .A(n6131), .B(n6129), .Y(n3352) );
  AND3X4 U4247 ( .A(n5417), .B(n5418), .C(n5420), .Y(n3010) );
  NAND2X2 U4248 ( .A(n3006), .B(n2941), .Y(n2940) );
  NOR2X4 U4249 ( .A(n5346), .B(n4469), .Y(n4471) );
  NOR2X4 U4251 ( .A(n3053), .B(n3052), .Y(n6051) );
  NAND3X4 U4252 ( .A(n5536), .B(n5537), .C(n5535), .Y(
        median_sobel_inst_data_h_r[0]) );
  NAND2X2 U4253 ( .A(n3046), .B(n2735), .Y(n5822) );
  CLKMX2X2 U4254 ( .A(median_sobel_inst_n35), .B(input_data_ready_r[22]), .S0(
        n6049), .Y(median_sobel_inst_n501) );
  NOR2X2 U4255 ( .A(n6147), .B(median_sobel_inst_n257), .Y(n3093) );
  CLKMX2X2 U4256 ( .A(median_sobel_inst_G[38]), .B(n6613), .S0(n6136), .Y(
        median_sobel_inst_n463) );
  CLKMX2X2 U4257 ( .A(median_sobel_inst_G[37]), .B(n6616), .S0(n6136), .Y(
        median_sobel_inst_n467) );
  NOR2X2 U4258 ( .A(n6127), .B(median_sobel_inst_n411), .Y(n3055) );
  XOR2X2 U4259 ( .A(n4017), .B(n4016), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N12) );
  NAND2X2 U4262 ( .A(n6081), .B(median_sobel_inst_n139), .Y(n2990) );
  CLKMX2X2 U4263 ( .A(median_sobel_inst_G[40]), .B(n6619), .S0(n6136), .Y(
        median_sobel_inst_n455) );
  NAND2X2 U4264 ( .A(median_sobel_inst_n629), .B(n6136), .Y(n4082) );
  NAND2X2 U4266 ( .A(n6044), .B(n2738), .Y(n3006) );
  NAND3X4 U4267 ( .A(n2980), .B(n2981), .C(n2982), .Y(n2979) );
  NOR3X4 U4268 ( .A(n3187), .B(n2984), .C(n2983), .Y(n2982) );
  CLKMX2X2 U4269 ( .A(n6798), .B(median_sobel_inst_n640), .S0(n6132), .Y(
        median_sobel_inst_n576) );
  CLKMX2X2 U4270 ( .A(n6784), .B(median_sobel_inst_n637), .S0(n6132), .Y(
        median_sobel_inst_n568) );
  INVX3 U4271 ( .A(n3407), .Y(n3406) );
  AND2X4 U4272 ( .A(n4171), .B(n3128), .Y(n3127) );
  CLKMX2X2 U4274 ( .A(median_sobel_inst_angle[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n131), .S0(n6090), .Y(
        median_sobel_inst_n487) );
  NOR2X4 U4276 ( .A(n3251), .B(n2750), .Y(n2802) );
  NAND2X4 U4277 ( .A(n4855), .B(n5714), .Y(n3269) );
  NAND2BX1 U4278 ( .AN(n3141), .B(median_sobel_inst_n86), .Y(n3147) );
  NAND3X2 U4279 ( .A(n4155), .B(n4154), .C(n4153), .Y(n5706) );
  NAND2X1 U4280 ( .A(n5422), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n5421) );
  INVX20 U4281 ( .A(n6461), .Y(n5619) );
  NAND2X1 U4282 ( .A(n5251), .B(n5250), .Y(n5252) );
  AOI22X1 U4283 ( .A0(n6099), .A1(n6887), .B0(n6083), .B1(n6622), .Y(n6073) );
  NAND2X6 U4285 ( .A(n5180), .B(n6200), .Y(n5243) );
  NAND2BX1 U4286 ( .AN(median_sobel_inst_n210), .B(n3141), .Y(n3142) );
  INVX16 U4287 ( .A(n2900), .Y(n6090) );
  AOI22X1 U4288 ( .A0(n6099), .A1(n6620), .B0(n6083), .B1(n6867), .Y(n5749) );
  INVX1 U4289 ( .A(n4851), .Y(n4852) );
  INVX1 U4290 ( .A(n6369), .Y(n4013) );
  CLKINVX1 U4291 ( .A(n5658), .Y(n3131) );
  NAND2X1 U4295 ( .A(n5211), .B(n5210), .Y(n5212) );
  NAND2X1 U4296 ( .A(n6313), .B(n5406), .Y(n5408) );
  NAND2X1 U4297 ( .A(n6561), .B(n6479), .Y(n4127) );
  NAND2X1 U4298 ( .A(n4688), .B(n4726), .Y(n4689) );
  XNOR2X1 U4299 ( .A(n4310), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n33), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N67) );
  INVX1 U4300 ( .A(n3795), .Y(n5253) );
  NAND2X1 U4301 ( .A(conv_inst_conv_3_r[16]), .B(n5573), .Y(n5571) );
  BUFX12 U4302 ( .A(n3946), .Y(n6461) );
  NAND2X1 U4303 ( .A(n4892), .B(n4890), .Y(n4712) );
  INVX1 U4304 ( .A(n5121), .Y(n3965) );
  INVX1 U4305 ( .A(n5126), .Y(n3966) );
  NAND2X1 U4307 ( .A(n6334), .B(n5047), .Y(n5049) );
  NOR2X4 U4308 ( .A(n3753), .B(n841), .Y(n4851) );
  NOR2X1 U4311 ( .A(n4819), .B(n4551), .Y(N732) );
  INVX1 U4312 ( .A(n4334), .Y(n4336) );
  NOR2X1 U4313 ( .A(n5143), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n55), .Y(n4310) );
  AND2X2 U4315 ( .A(n5215), .B(n4836), .Y(n4838) );
  INVX8 U4316 ( .A(n3448), .Y(n6476) );
  NAND2X1 U4317 ( .A(n6191), .B(n6886), .Y(n6186) );
  NAND2X2 U4318 ( .A(n4477), .B(n4284), .Y(n2923) );
  NOR2X4 U4319 ( .A(n4291), .B(n4287), .Y(n2920) );
  INVX1 U4320 ( .A(n3928), .Y(n3922) );
  NAND2X1 U4321 ( .A(n5215), .B(n5214), .Y(n5216) );
  INVX1 U4323 ( .A(n4729), .Y(n4731) );
  NOR2X1 U4325 ( .A(n5303), .B(n6666), .Y(n5304) );
  INVX1 U4326 ( .A(n5397), .Y(n4866) );
  INVX1 U4329 ( .A(n5369), .Y(n5372) );
  INVX1 U4330 ( .A(n5370), .Y(n5371) );
  AND2X2 U4332 ( .A(n465), .B(n869), .Y(n4978) );
  INVX1 U4335 ( .A(median_sobel_inst_u_median_filter_submodule_net55220), .Y(
        n4225) );
  INVX2 U4338 ( .A(conv_inst_data_bcd_2_r[0]), .Y(n2903) );
  NOR2X4 U4339 ( .A(conv_inst_conv_2_r[1]), .B(conv_inst_data_bcd_2_r[1]), .Y(
        n2901) );
  NAND2X1 U4340 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N480), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N47), .Y(n5364) );
  INVX3 U4341 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n143), .Y(
        n5512) );
  NAND2X1 U4342 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n173), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n174), .Y(n4375) );
  INVX3 U4343 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n120), .Y(
        n5514) );
  NAND2X1 U4344 ( .A(n6572), .B(n6693), .Y(n5493) );
  NAND2X2 U4345 ( .A(median_sobel_inst_u_median_filter_submodule_n129), .B(
        median_sobel_inst_u_median_filter_submodule_net55441), .Y(n4189) );
  NAND3X2 U4347 ( .A(n6185), .B(n6184), .C(n6183), .Y(
        median_sobel_inst_u_median_filter_submodule_a17_w) );
  NAND2X4 U4348 ( .A(n3071), .B(n6116), .Y(n3070) );
  NAND2X4 U4349 ( .A(n3118), .B(n3112), .Y(n3111) );
  NAND2X4 U4350 ( .A(n2959), .B(n2955), .Y(
        median_sobel_inst_u_median_filter_submodule_a39_w) );
  NAND2X4 U4351 ( .A(n3289), .B(n3287), .Y(
        median_sobel_inst_u_median_filter_submodule_a36_w) );
  NAND2X4 U4352 ( .A(n3121), .B(n3119), .Y(n3118) );
  NAND2X4 U4353 ( .A(n2960), .B(n2744), .Y(n2959) );
  NAND2X4 U4354 ( .A(n2880), .B(n2876), .Y(n6025) );
  NAND2X6 U4355 ( .A(n3083), .B(n3081), .Y(n6009) );
  NAND4X4 U4356 ( .A(n2814), .B(n2813), .C(n2812), .D(n2811), .Y(n3342) );
  NAND2X4 U4357 ( .A(n2961), .B(n3013), .Y(n2960) );
  NAND2X4 U4360 ( .A(n5972), .B(n6022), .Y(n3339) );
  NAND3X1 U4361 ( .A(n5036), .B(n5035), .C(n5043), .Y(sram_addr_wait_r[8]) );
  NAND2X4 U4363 ( .A(n2818), .B(n2815), .Y(n2814) );
  NAND2X4 U4364 ( .A(n2862), .B(n2860), .Y(n6153) );
  NAND2X4 U4366 ( .A(n5866), .B(n3015), .Y(n2961) );
  NAND2X2 U4367 ( .A(n3368), .B(n3367), .Y(
        median_sobel_inst_u_median_filter_submodule_n674) );
  NOR2X2 U4368 ( .A(n4519), .B(n5619), .Y(conv_inst_N227) );
  NAND2X4 U4369 ( .A(n2820), .B(n2819), .Y(n2818) );
  NAND2X1 U4370 ( .A(n6514), .B(cnt[4]), .Y(n6517) );
  NAND2X1 U4371 ( .A(n6498), .B(cnt[4]), .Y(n6499) );
  NOR2X4 U4372 ( .A(n3577), .B(n3088), .Y(n3087) );
  NAND2X6 U4374 ( .A(n3395), .B(n5631), .Y(n3273) );
  NAND2X1 U4375 ( .A(n6498), .B(cnt[10]), .Y(n4958) );
  NAND2X2 U4376 ( .A(n5638), .B(n5637), .Y(
        median_sobel_inst_u_median_filter_submodule_n675) );
  NAND2X1 U4377 ( .A(n6519), .B(sram_addr_w[7]), .Y(n5164) );
  NAND2X4 U4378 ( .A(n3098), .B(n3099), .Y(n3284) );
  NAND2X4 U4379 ( .A(n6274), .B(n3466), .Y(n3641) );
  NAND2X4 U4380 ( .A(n3107), .B(n3102), .Y(n3106) );
  NAND2X1 U4381 ( .A(n6518), .B(cnt[4]), .Y(n6522) );
  NAND2X1 U4382 ( .A(n6471), .B(cnt[4]), .Y(n6475) );
  NAND2X4 U4383 ( .A(n4532), .B(conv_inst_conv_4_r[11]), .Y(n4531) );
  NOR2X1 U4384 ( .A(n5441), .B(n420), .Y(n5443) );
  INVX3 U4385 ( .A(n2936), .Y(n5223) );
  NOR2X1 U4386 ( .A(n6508), .B(n424), .Y(n5453) );
  NAND2X4 U4387 ( .A(n6158), .B(median_sobel_inst_data_a_r[5]), .Y(n6113) );
  NAND4X1 U4388 ( .A(n5810), .B(n5809), .C(n5808), .D(n5807), .Y(N706) );
  NAND2X4 U4389 ( .A(n3032), .B(n5884), .Y(n3031) );
  INVX1 U4390 ( .A(n4716), .Y(n4719) );
  NAND2X6 U4391 ( .A(n6478), .B(n6480), .Y(n4128) );
  NAND2X2 U4392 ( .A(n6155), .B(median_sobel_inst_data_g_r[6]), .Y(n6156) );
  NAND2X4 U4395 ( .A(n6469), .B(N730), .Y(n6468) );
  NAND4X1 U4396 ( .A(n5903), .B(n5902), .C(n5901), .D(n5900), .Y(N700) );
  NAND3X2 U4397 ( .A(n6403), .B(n6402), .C(n6401), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]) );
  NAND3X2 U4398 ( .A(n3583), .B(n3582), .C(n3581), .Y(n3580) );
  NAND2X6 U4400 ( .A(n3459), .B(n3959), .Y(n5615) );
  NAND2X4 U4401 ( .A(median_sobel_inst_data_i_r[0]), .B(n3028), .Y(n3027) );
  NAND3X2 U4402 ( .A(n6415), .B(n6414), .C(n6413), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]) );
  NAND4X1 U4404 ( .A(n4604), .B(n4603), .C(n4602), .D(n4601), .Y(n1455) );
  NAND2X6 U4406 ( .A(n5412), .B(n4007), .Y(n6391) );
  NAND2X4 U4407 ( .A(n4060), .B(n4059), .Y(n6450) );
  NAND2X4 U4409 ( .A(n2904), .B(n4717), .Y(n4716) );
  NOR2X6 U4411 ( .A(median_sobel_inst_data_b_r[0]), .B(n3042), .Y(n3041) );
  NAND2X6 U4412 ( .A(n4603), .B(n4558), .Y(n6478) );
  NAND2X1 U4413 ( .A(n5947), .B(sram_data_out_r_1__0_), .Y(n5818) );
  NAND2X1 U4414 ( .A(n5932), .B(n6845), .Y(n5778) );
  NAND2X1 U4415 ( .A(n5932), .B(n6622), .Y(n5809) );
  NAND2X6 U4416 ( .A(n2858), .B(n5640), .Y(median_sobel_inst_data_g_r[1]) );
  NAND2X4 U4417 ( .A(n4478), .B(n4477), .Y(n3387) );
  INVX8 U4418 ( .A(n6956), .Y(n4557) );
  NOR2X1 U4419 ( .A(n6105), .B(n6059), .Y(N688) );
  NOR2X1 U4420 ( .A(n5839), .B(n5838), .Y(N713) );
  NOR2X1 U4421 ( .A(n5356), .B(n5619), .Y(conv_inst_N223) );
  NAND2X6 U4422 ( .A(n6342), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .Y(n6341) );
  NAND2X6 U4423 ( .A(n2924), .B(n2922), .Y(n2921) );
  NAND2X1 U4424 ( .A(n5934), .B(n6887), .Y(n5807) );
  NAND2X1 U4425 ( .A(n5933), .B(n6903), .Y(n5808) );
  NAND2X1 U4426 ( .A(n5933), .B(n6878), .Y(n5777) );
  NAND2X1 U4427 ( .A(n5931), .B(n6907), .Y(n5810) );
  NOR2X1 U4429 ( .A(n6105), .B(n6088), .Y(N691) );
  NOR2X1 U4432 ( .A(n5347), .B(n5619), .Y(conv_inst_N240) );
  NAND3X4 U4433 ( .A(n5823), .B(n5822), .C(n3401), .Y(
        median_sobel_inst_data_f_r[0]) );
  INVX1 U4434 ( .A(n4598), .Y(n4602) );
  NAND2X1 U4435 ( .A(n5946), .B(n6854), .Y(n5907) );
  NAND2X1 U4436 ( .A(n5946), .B(sram_data_out_r_1__0_), .Y(n5923) );
  NAND2X6 U4438 ( .A(n3309), .B(n3308), .Y(n4568) );
  NAND2X6 U4439 ( .A(n4249), .B(n4248), .Y(n2874) );
  NAND2X4 U4441 ( .A(n5459), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N480), .Y(n5458) );
  NAND2X6 U4442 ( .A(n5780), .B(n3291), .Y(median_sobel_inst_data_c_r[5]) );
  NAND2X6 U4443 ( .A(n3043), .B(n5928), .Y(median_sobel_inst_data_b_r[0]) );
  NAND2X6 U4446 ( .A(n3770), .B(n4447), .Y(n4809) );
  NAND2X6 U4448 ( .A(n2979), .B(n2977), .Y(n2976) );
  NOR2X1 U4449 ( .A(n5381), .B(n5619), .Y(conv_inst_N274) );
  NAND2X6 U4450 ( .A(n2797), .B(n2795), .Y(n6342) );
  NAND2X6 U4451 ( .A(n5797), .B(n3014), .Y(median_sobel_inst_data_c_r[4]) );
  AOI21X1 U4452 ( .A0(n5432), .A1(n4784), .B0(n4783), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1010) );
  NAND2X6 U4453 ( .A(n4144), .B(n4145), .Y(median_sobel_inst_data_d_r[3]) );
  NAND2X4 U4454 ( .A(n2800), .B(n2798), .Y(n2804) );
  NAND2X6 U4455 ( .A(n3211), .B(n3360), .Y(n2847) );
  NOR3X4 U4456 ( .A(n2802), .B(n2805), .C(n2801), .Y(n2800) );
  NAND3X1 U4457 ( .A(n4663), .B(n4662), .C(n4661), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]) );
  NAND3X1 U4458 ( .A(n4656), .B(n4655), .C(n4654), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]) );
  NAND3X1 U4459 ( .A(n6188), .B(n6187), .C(n6186), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[1]) );
  NAND2X6 U4460 ( .A(n2822), .B(n2829), .Y(n2828) );
  NAND2X6 U4461 ( .A(n2789), .B(n4335), .Y(n3617) );
  NOR2X1 U4462 ( .A(n5344), .B(n5619), .Y(conv_inst_N221) );
  NAND3X1 U4463 ( .A(n4622), .B(n4621), .C(n4620), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]) );
  XOR2X2 U4464 ( .A(n5496), .B(n5495), .Y(n6630) );
  NAND2X2 U4465 ( .A(n6081), .B(median_sobel_inst_n73), .Y(n3123) );
  NAND2X6 U4466 ( .A(n4122), .B(n4067), .Y(n5413) );
  NAND2X6 U4467 ( .A(n2971), .B(n2970), .Y(n4785) );
  NAND3X1 U4468 ( .A(n5119), .B(n5118), .C(n5117), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[2]) );
  NOR2X1 U4469 ( .A(n5720), .B(n5384), .Y(N866) );
  NOR2X1 U4472 ( .A(n5619), .B(n5325), .Y(conv_inst_N236) );
  NAND3X1 U4473 ( .A(n5230), .B(n5229), .C(n5228), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[6]) );
  NAND2X1 U4474 ( .A(i_in_valid), .B(n5424), .Y(n5425) );
  NOR2X1 U4475 ( .A(n5350), .B(n5619), .Y(conv_inst_N238) );
  NAND2X2 U4476 ( .A(n5440), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n29), .Y(n5439) );
  CLKMX2X2 U4477 ( .A(median_sobel_inst_G[43]), .B(n6610), .S0(n6146), .Y(
        median_sobel_inst_n443) );
  NOR2X1 U4478 ( .A(n5619), .B(n4757), .Y(conv_inst_N237) );
  NOR2X1 U4479 ( .A(conv_inst_n10), .B(n5548), .Y(conv_inst_N135) );
  OAI2BB1X1 U4480 ( .A0N(n3909), .A1N(n3910), .B0(n2929), .Y(n2928) );
  NAND3X4 U4481 ( .A(n6210), .B(n6209), .C(n6208), .Y(n6222) );
  NOR2X1 U4482 ( .A(n5310), .B(n5619), .Y(conv_inst_N272) );
  INVX1 U4483 ( .A(n2701), .Y(N118) );
  INVX1 U4484 ( .A(n5423), .Y(n5424) );
  NAND2X2 U4485 ( .A(n2731), .B(n6146), .Y(n2941) );
  NAND3X1 U4486 ( .A(n4573), .B(n4572), .C(n4571), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]) );
  NAND3X1 U4487 ( .A(n4546), .B(n4545), .C(n4544), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]) );
  OAI2BB1X1 U4488 ( .A0N(n6862), .A1N(n3141), .B0(n3146), .Y(
        median_sobel_inst_n531) );
  OAI2BB1X1 U4489 ( .A0N(n6847), .A1N(n3141), .B0(n3147), .Y(
        median_sobel_inst_n529) );
  CLKMX2X2 U4490 ( .A(median_sobel_inst_G[34]), .B(n6609), .S0(n6146), .Y(
        median_sobel_inst_n479) );
  INVX1 U4491 ( .A(n3666), .Y(n4787) );
  NOR2X1 U4493 ( .A(n5837), .B(n5836), .Y(n5838) );
  MXI2X1 U4494 ( .A(median_sobel_inst_n404), .B(median_sobel_inst_n246), .S0(
        n3434), .Y(median_sobel_inst_n544) );
  INVX4 U4495 ( .A(n4333), .Y(n2789) );
  NAND2X6 U4496 ( .A(n3950), .B(n3949), .Y(n4510) );
  NAND3X1 U4497 ( .A(n4582), .B(n4581), .C(n4580), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]) );
  NOR2X1 U4498 ( .A(n5548), .B(n3738), .Y(conv_inst_N124) );
  NOR2X1 U4499 ( .A(n5619), .B(n4509), .Y(conv_inst_N271) );
  NOR2X1 U4500 ( .A(n5245), .B(n6925), .Y(n1462) );
  OAI2BB1X1 U4501 ( .A0N(n6810), .A1N(n3141), .B0(n3144), .Y(
        median_sobel_inst_n616) );
  NOR2X1 U4502 ( .A(n4549), .B(n5619), .Y(conv_inst_N256) );
  NAND3X1 U4503 ( .A(n3787), .B(n3786), .C(n3785), .Y(n3788) );
  INVX1 U4504 ( .A(n4797), .Y(n4783) );
  NOR2X1 U4505 ( .A(n3793), .B(n3792), .Y(n3794) );
  NOR2X1 U4506 ( .A(n5619), .B(n5342), .Y(conv_inst_N219) );
  NOR2X1 U4507 ( .A(n5619), .B(n5333), .Y(conv_inst_N270) );
  OAI2BB1X1 U4508 ( .A0N(n6809), .A1N(n3141), .B0(n3145), .Y(
        median_sobel_inst_n608) );
  NAND2X4 U4509 ( .A(n3612), .B(n4399), .Y(n4637) );
  NAND2X1 U4510 ( .A(n3828), .B(n5499), .Y(n3829) );
  NAND2X2 U4511 ( .A(n4563), .B(n4562), .Y(n2951) );
  NAND2X4 U4512 ( .A(n2907), .B(n4804), .Y(n2906) );
  NAND2X1 U4513 ( .A(n5301), .B(n5300), .Y(n5302) );
  NOR2X4 U4514 ( .A(n3882), .B(n2807), .Y(n2799) );
  NAND3X2 U4515 ( .A(n4156), .B(n4157), .C(n3637), .Y(n3636) );
  AOI21X1 U4516 ( .A0(n6198), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .B0(n4765), .Y(
        n4766) );
  NAND2X1 U4517 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(n5165) );
  OAI2BB1X1 U4518 ( .A0N(n5624), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .B0(n5623), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[0]) );
  NOR2X1 U4519 ( .A(n5549), .B(n6891), .Y(conv_inst_N134) );
  NOR3X1 U4520 ( .A(n5601), .B(n4455), .C(n4454), .Y(n4456) );
  NAND2BX2 U4523 ( .AN(n3218), .B(n3834), .Y(n3217) );
  NAND2X1 U4524 ( .A(n4842), .B(n4841), .Y(n4843) );
  NAND3X4 U4525 ( .A(n3852), .B(n3851), .C(n3853), .Y(n4133) );
  NAND2X6 U4526 ( .A(n4762), .B(n3838), .Y(n5423) );
  NOR2X1 U4528 ( .A(n5305), .B(n5304), .Y(n5306) );
  NAND2X1 U4529 ( .A(n4610), .B(n4802), .Y(n4611) );
  NAND2X1 U4530 ( .A(n5261), .B(n5260), .Y(n5263) );
  NAND2X1 U4531 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(n5168) );
  NAND2X1 U4532 ( .A(n6368), .B(n6366), .Y(n4016) );
  NAND2X1 U4533 ( .A(n3977), .B(n3982), .Y(n3978) );
  NAND2X1 U4534 ( .A(n6365), .B(n6368), .Y(n6371) );
  NAND2X1 U4535 ( .A(n3988), .B(n4196), .Y(n3989) );
  NOR2X1 U4536 ( .A(n5601), .B(n4665), .Y(conv_inst_N254) );
  INVX1 U4537 ( .A(n5244), .Y(n5245) );
  NAND2BX2 U4538 ( .AN(n4827), .B(n3510), .Y(n3509) );
  NAND2X1 U4539 ( .A(n4699), .B(n4916), .Y(n4700) );
  XNOR2X1 U4540 ( .A(n5258), .B(n5257), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]) );
  NOR2X1 U4541 ( .A(n5549), .B(n5385), .Y(conv_inst_N145) );
  AND2X4 U4543 ( .A(n4499), .B(n4500), .Y(n2970) );
  NAND2X1 U4544 ( .A(n4627), .B(n4860), .Y(n4628) );
  NAND2X1 U4545 ( .A(n5256), .B(n5255), .Y(n5258) );
  INVX1 U4546 ( .A(n6366), .Y(n6367) );
  NAND2X1 U4547 ( .A(n3468), .B(conv_inst_conv_4_r[15]), .Y(n4153) );
  INVX1 U4548 ( .A(n3983), .Y(n3977) );
  NAND2X1 U4549 ( .A(n5327), .B(n5326), .Y(n5328) );
  INVX1 U4550 ( .A(n4979), .Y(n4845) );
  INVX1 U4551 ( .A(n4197), .Y(n3988) );
  NAND2X1 U4553 ( .A(n5695), .B(n5694), .Y(n5696) );
  NAND2X1 U4554 ( .A(n4912), .B(n4911), .Y(n4913) );
  NAND2X1 U4555 ( .A(n5409), .B(n6314), .Y(n5410) );
  NOR2X1 U4556 ( .A(n4714), .B(
        median_sobel_inst_u_median_filter_submodule_n112), .Y(n5305) );
  NAND2X1 U4557 ( .A(n3555), .B(n5277), .Y(n5279) );
  NOR2X1 U4559 ( .A(n5248), .B(n5247), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N107) );
  INVX1 U4560 ( .A(n5300), .Y(n5063) );
  INVX1 U4561 ( .A(n3661), .Y(n3658) );
  NAND2X1 U4562 ( .A(n4617), .B(n4645), .Y(n4618) );
  NAND2X1 U4563 ( .A(n5271), .B(n5270), .Y(n5273) );
  NAND2X1 U4564 ( .A(n5011), .B(n5464), .Y(n4929) );
  NAND2X1 U4565 ( .A(n4922), .B(n4925), .Y(n4923) );
  NAND2X1 U4566 ( .A(n5055), .B(n5054), .Y(n5056) );
  CLKINVX1 U4567 ( .A(n4659), .Y(n3262) );
  NAND2X1 U4569 ( .A(n4667), .B(n4801), .Y(n4668) );
  NAND2X1 U4570 ( .A(n3802), .B(n6354), .Y(n3803) );
  INVX3 U4571 ( .A(n3253), .Y(n2806) );
  NAND2X1 U4572 ( .A(n5032), .B(n6376), .Y(n5033) );
  INVX1 U4573 ( .A(n4694), .Y(n4342) );
  NAND2X1 U4574 ( .A(n4706), .B(n4709), .Y(n4707) );
  NAND2X6 U4575 ( .A(n3613), .B(n3614), .Y(n2791) );
  NAND2X1 U4576 ( .A(n4972), .B(n5646), .Y(n4973) );
  NAND2X1 U4577 ( .A(n4593), .B(n4871), .Y(n4594) );
  NAND2X1 U4579 ( .A(n4866), .B(n5400), .Y(n4867) );
  INVX1 U4580 ( .A(n6334), .Y(n4886) );
  NAND2X1 U4581 ( .A(n4984), .B(n5645), .Y(n4985) );
  INVX16 U4582 ( .A(n3458), .Y(n4340) );
  NAND2X1 U4583 ( .A(n4138), .B(n5664), .Y(n4139) );
  NAND2X1 U4584 ( .A(n4615), .B(median_sobel_inst_n661), .Y(n4614) );
  INVX1 U4586 ( .A(n4800), .Y(n4610) );
  NAND2X1 U4587 ( .A(n5026), .B(n5025), .Y(n5027) );
  NAND2X1 U4588 ( .A(n5297), .B(n5296), .Y(n5298) );
  NAND2X1 U4589 ( .A(n5394), .B(n5398), .Y(n5395) );
  NAND2X1 U4590 ( .A(n4624), .B(n4861), .Y(n4625) );
  NAND2X1 U4591 ( .A(n5050), .B(n6335), .Y(n5051) );
  NAND2X1 U4593 ( .A(n5057), .B(n5123), .Y(n5058) );
  NOR2X1 U4594 ( .A(n4714), .B(
        median_sobel_inst_u_median_filter_submodule_n117), .Y(n4765) );
  NAND2X1 U4595 ( .A(n3468), .B(conv_inst_conv_4_r[16]), .Y(n5701) );
  AOI22X1 U4596 ( .A0(n6190), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .B0(n6191), 
        .B1(n6837), .Y(n5546) );
  INVX1 U4597 ( .A(n6313), .Y(n5402) );
  INVX1 U4598 ( .A(n6318), .Y(n5401) );
  NAND2X1 U4599 ( .A(n4639), .B(n4776), .Y(n4640) );
  INVX1 U4600 ( .A(n4411), .Y(n3672) );
  INVX1 U4601 ( .A(n6479), .Y(n4125) );
  INVX1 U4602 ( .A(n5693), .Y(n5695) );
  NOR2X1 U4604 ( .A(n4672), .B(n5143), .Y(n4556) );
  AND2X2 U4605 ( .A(n6696), .B(n4223), .Y(n4224) );
  INVX1 U4606 ( .A(n6378), .Y(n5032) );
  INVX1 U4607 ( .A(n4331), .Y(n4332) );
  NAND2X1 U4608 ( .A(n5679), .B(n5377), .Y(n5378) );
  INVX1 U4610 ( .A(n5665), .Y(n4138) );
  INVX1 U4611 ( .A(n4404), .Y(n4405) );
  INVX1 U4612 ( .A(n5326), .Y(n3975) );
  INVX1 U4614 ( .A(n3980), .Y(n5327) );
  AND2X2 U4615 ( .A(n6240), .B(n6939), .Y(
        median_sobel_inst_u_median_filter_submodule_n709) );
  INVX1 U4616 ( .A(n4711), .Y(n4706) );
  INVX1 U4617 ( .A(n5528), .Y(n5530) );
  INVX1 U4618 ( .A(n5286), .Y(n4705) );
  NOR2X1 U4619 ( .A(n4341), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4343) );
  INVX1 U4621 ( .A(n4862), .Y(n4627) );
  INVX1 U4622 ( .A(n4778), .Y(n4639) );
  INVX1 U4623 ( .A(n4710), .Y(n5285) );
  INVX1 U4624 ( .A(n5280), .Y(n5282) );
  INVX1 U4625 ( .A(n6197), .Y(n4991) );
  INVX1 U4626 ( .A(n5296), .Y(n3921) );
  INVX1 U4628 ( .A(n4826), .Y(n3932) );
  NOR3X4 U4629 ( .A(n4433), .B(n4429), .C(n2755), .Y(n5138) );
  AND2X2 U4630 ( .A(n5679), .B(n5682), .Y(n4832) );
  NOR2X1 U4631 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N47), .B(
        n5143), .Y(n5144) );
  INVX1 U4632 ( .A(n5209), .Y(n5211) );
  NAND2X1 U4634 ( .A(n6941), .B(n4819), .Y(n4270) );
  INVX1 U4635 ( .A(n6356), .Y(n3802) );
  NAND2X1 U4636 ( .A(n3987), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), .Y(n4196) );
  NAND2X2 U4637 ( .A(n3939), .B(n4632), .Y(n4070) );
  INVX1 U4638 ( .A(median_sobel_inst_n661), .Y(n3714) );
  INVX1 U4639 ( .A(n4803), .Y(n4667) );
  INVX1 U4640 ( .A(n5254), .Y(n5256) );
  INVX1 U4641 ( .A(n4869), .Y(n4593) );
  INVX1 U4642 ( .A(n4676), .Y(n4596) );
  AND2X4 U4643 ( .A(conv_inst_n56), .B(n3324), .Y(n4469) );
  INVX1 U4644 ( .A(n5644), .Y(n4972) );
  NOR2X1 U4646 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n51), .B(
        n5143), .Y(n4774) );
  INVX1 U4647 ( .A(n6337), .Y(n5050) );
  INVX1 U4648 ( .A(n4727), .Y(n4688) );
  INVX1 U4649 ( .A(n5399), .Y(n5394) );
  NAND2X1 U4650 ( .A(n6733), .B(n5514), .Y(n6306) );
  INVX1 U4651 ( .A(n5178), .Y(n5622) );
  INVX1 U4652 ( .A(n5269), .Y(n5271) );
  INVX1 U4653 ( .A(n5482), .Y(n5483) );
  NAND2X1 U4654 ( .A(n5729), .B(cnt[10]), .Y(n5384) );
  INVX1 U4655 ( .A(n5672), .Y(n5226) );
  INVX1 U4656 ( .A(n6344), .Y(n6345) );
  INVX1 U4657 ( .A(n4987), .Y(n4989) );
  INVX1 U4659 ( .A(n5039), .Y(n5041) );
  NAND2X1 U4660 ( .A(n5283), .B(n4538), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]) );
  NAND2X1 U4662 ( .A(n6387), .B(n6386), .Y(n5131) );
  INVX1 U4663 ( .A(n5064), .Y(n5066) );
  INVX1 U4665 ( .A(n4045), .Y(n4039) );
  INVX1 U4666 ( .A(n5454), .Y(n4749) );
  INVX1 U4667 ( .A(n5024), .Y(n5026) );
  INVX1 U4668 ( .A(n4899), .Y(n5321) );
  INVX1 U4669 ( .A(n5320), .Y(n4900) );
  INVX1 U4670 ( .A(n6240), .Y(n6241) );
  INVX1 U4671 ( .A(n3925), .Y(n5297) );
  INVX1 U4672 ( .A(n4878), .Y(n4874) );
  NOR2X1 U4674 ( .A(n4896), .B(n4895), .Y(n4897) );
  INVX1 U4675 ( .A(n6316), .Y(n5409) );
  INVX1 U4676 ( .A(conv_inst_n65), .Y(n4441) );
  NOR2X6 U4677 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), .Y(
        n5308) );
  INVX1 U4678 ( .A(n6627), .Y(n3324) );
  XOR2X1 U4679 ( .A(conv_inst_data_bcd_2_r[10]), .B(conv_inst_conv_2_r[10]), 
        .Y(n5366) );
  NAND2X4 U4680 ( .A(median_sobel_inst_u_median_filter_submodule_n211), .B(
        median_sobel_inst_u_median_filter_submodule_n198), .Y(n3374) );
  INVX2 U4681 ( .A(median_sobel_inst_u_median_filter_submodule_n367), .Y(n6224) );
  NAND2X6 U4682 ( .A(conv_inst_data_abc_1_r[0]), .B(conv_inst_conv_1_r[0]), 
        .Y(n5341) );
  INVX1 U4684 ( .A(n885), .Y(n5626) );
  INVX1 U4685 ( .A(conv_inst_conv_1_r[16]), .Y(n3909) );
  NOR2X1 U4686 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n46), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n4798) );
  NAND2X1 U4687 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n6354) );
  INVX1 U4688 ( .A(conv_inst_n63), .Y(n3955) );
  AND2X2 U4689 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net50088), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_net49244), .Y(n2972)
         );
  AND4X2 U4690 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net50086), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_net49279), .C(
        median_sobel_inst_u_sobel_gradient_submodule_net49267), .D(
        median_sobel_inst_u_sobel_gradient_submodule_net49311), .Y(n2973) );
  INVX1 U4691 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net63936), .Y(
        n4377) );
  NAND2X1 U4693 ( .A(n6660), .B(n6572), .Y(n5517) );
  INVX1 U4694 ( .A(median_sobel_inst_u_median_filter_submodule_net55441), .Y(
        n4507) );
  INVX1 U4695 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r[5]), .Y(
        n3976) );
  NAND2X1 U4696 ( .A(n3748), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n4833) );
  AND2X2 U4697 ( .A(conv_inst_data_abc_1_r[10]), .B(conv_inst_conv_1_r[10]), 
        .Y(n5482) );
  NAND2X2 U4699 ( .A(median_sobel_inst_u_median_filter_submodule_n91), .B(
        median_sobel_inst_u_median_filter_submodule_b9_r[2]), .Y(n3138) );
  CLKINVX1 U4700 ( .A(n6545), .Y(n3396) );
  INVX1 U4703 ( .A(conv_inst_n43), .Y(n3689) );
  NAND2X1 U4704 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), .Y(n6386)
         );
  INVX1 U4705 ( .A(median_sobel_inst_u_sober_compare_submodule_n21), .Y(n4094)
         );
  INVX1 U4706 ( .A(median_sobel_inst_u_sober_compare_submodule_n184), .Y(n4095) );
  NAND2X1 U4707 ( .A(n6790), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n5681) );
  NOR2X1 U4708 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n65), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n30), .Y(n4784) );
  AOI22X1 U4709 ( .A0(median_sobel_inst_u_sober_compare_submodule_net56546), 
        .A1(median_sobel_inst_u_sober_compare_submodule_n10), .B0(
        median_sobel_inst_u_sober_compare_submodule_n9), .B1(
        median_sobel_inst_u_sober_compare_submodule_net60411), .Y(n4494) );
  NOR2X1 U4711 ( .A(n6579), .B(n6725), .Y(n4895) );
  NAND2X1 U4713 ( .A(i_op_valid), .B(i_op_mode[1]), .Y(n4385) );
  NAND2X1 U4714 ( .A(i_op_valid), .B(i_op_mode[3]), .Y(n4384) );
  NAND2X1 U4715 ( .A(i_op_valid), .B(i_op_mode[0]), .Y(n4383) );
  NAND2X8 U4716 ( .A(n3185), .B(n3180), .Y(n6424) );
  NAND2X1 U4717 ( .A(n6674), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n4825) );
  NAND2X6 U4718 ( .A(n4467), .B(n4446), .Y(n3770) );
  AND2X4 U4719 ( .A(n5484), .B(n5224), .Y(conv_inst_N229) );
  INVX4 U4720 ( .A(n3673), .Y(n3674) );
  NOR2X4 U4722 ( .A(conv_inst_conv_1_r[2]), .B(conv_inst_data_abc_1_r[2]), .Y(
        n5359) );
  NAND3X6 U4723 ( .A(n6234), .B(n6233), .C(n6232), .Y(n6236) );
  NAND2X8 U4724 ( .A(n3807), .B(n3806), .Y(n4520) );
  NAND2X4 U4725 ( .A(n3327), .B(n4283), .Y(n3389) );
  NAND3X2 U4726 ( .A(n6163), .B(n6162), .C(n6161), .Y(
        median_sobel_inst_u_median_filter_submodule_a47_w) );
  NAND2X2 U4728 ( .A(n6005), .B(median_sobel_inst_data_h_r[6]), .Y(n2761) );
  NAND2X4 U4730 ( .A(n6002), .B(median_sobel_inst_data_e_r[6]), .Y(n6005) );
  NAND2X6 U4731 ( .A(n5999), .B(median_sobel_inst_data_h_r[5]), .Y(n6002) );
  AOI2BB2X4 U4732 ( .B0(n5997), .B1(median_sobel_inst_data_b_r[4]), .A0N(n2879), .A1N(n2766), .Y(n2813) );
  INVX12 U4733 ( .A(median_sobel_inst_data_b_r[5]), .Y(n2879) );
  NAND3X4 U4735 ( .A(n3339), .B(median_sobel_inst_data_b_r[7]), .C(n2768), .Y(
        n3338) );
  AOI2BB2X4 U4736 ( .B0(n5972), .B1(n5971), .A0N(n2768), .A1N(
        median_sobel_inst_data_b_r[7]), .Y(n3340) );
  XNOR2X4 U4737 ( .A(n4058), .B(n2769), .Y(n4063) );
  NAND3X6 U4738 ( .A(n2772), .B(n2742), .C(n2770), .Y(n4058) );
  NAND2X4 U4739 ( .A(n2771), .B(n3348), .Y(n2770) );
  NAND2X2 U4741 ( .A(n5796), .B(median_sobel_inst_n135), .Y(n5849) );
  NAND2X2 U4742 ( .A(n5796), .B(median_sobel_inst_net64417), .Y(n5916) );
  NAND2X2 U4743 ( .A(n2706), .B(n2778), .Y(n6012) );
  AOI22X4 U4744 ( .A0(n3576), .A1(n2706), .B0(n5993), .B1(
        median_sobel_inst_data_h_r[1]), .Y(n3086) );
  AOI2BB2X4 U4745 ( .B0(n5878), .B1(median_sobel_inst_data_c_r[2]), .A0N(n5867), .A1N(median_sobel_inst_data_i_r[3]), .Y(n5866) );
  NAND2X6 U4746 ( .A(median_sobel_inst_data_f_r[6]), .B(n5870), .Y(n3293) );
  NAND2X8 U4747 ( .A(n5419), .B(n3010), .Y(median_sobel_inst_data_f_r[6]) );
  NAND2X1 U4750 ( .A(n2782), .B(n4683), .Y(n4684) );
  NAND2X6 U4751 ( .A(n3942), .B(n3941), .Y(n2782) );
  XNOR2X4 U4752 ( .A(n2976), .B(n3135), .Y(n2889) );
  XNOR2X4 U4753 ( .A(n3125), .B(n2976), .Y(n2887) );
  AOI21X4 U4754 ( .A0(n5367), .A1(n5140), .B0(n5139), .Y(n2992) );
  NOR2BX4 U4756 ( .AN(n2737), .B(conv_inst_data_bcd_2_r[3]), .Y(n2783) );
  OR2X6 U4758 ( .A(n2901), .B(n2902), .Y(n5312) );
  NAND2X8 U4759 ( .A(n2785), .B(n2784), .Y(n4467) );
  AND2X4 U4760 ( .A(conv_inst_data_bcd_4_r[8]), .B(conv_inst_conv_4_r[8]), .Y(
        n5612) );
  XOR2X4 U4761 ( .A(n4443), .B(conv_inst_conv_4_r[16]), .Y(n3670) );
  NAND2X4 U4763 ( .A(n4408), .B(n4407), .Y(n4513) );
  NAND2X6 U4764 ( .A(n2791), .B(n2790), .Y(n4333) );
  AOI21X2 U4765 ( .A0(n6339), .A1(n6338), .B0(n2796), .Y(n2795) );
  OAI21X1 U4766 ( .A0(n6336), .A1(n6337), .B0(n6335), .Y(n2796) );
  AND2X8 U4767 ( .A(n2906), .B(n2905), .Y(n2948) );
  NOR2X4 U4769 ( .A(n6165), .B(median_sobel_inst_data_g_r[1]), .Y(n6166) );
  NAND3BX4 U4770 ( .AN(n3883), .B(n2806), .C(n2799), .Y(n2798) );
  OAI21X4 U4771 ( .A0(n6291), .A1(n2810), .B0(n6290), .Y(
        median_sobel_inst_u_median_filter_submodule_n699) );
  OAI21X4 U4772 ( .A0(n6294), .A1(n2810), .B0(n6293), .Y(
        median_sobel_inst_u_median_filter_submodule_n700) );
  AOI2BB2X4 U4773 ( .B0(n2817), .B1(median_sobel_inst_data_e_r[4]), .A0N(
        median_sobel_inst_data_b_r[3]), .A1N(n2816), .Y(n2815) );
  AOI22X4 U4774 ( .A0(n3576), .A1(median_sobel_inst_data_b_r[2]), .B0(
        median_sobel_inst_data_b_r[3]), .B1(n5996), .Y(n2819) );
  NAND3X6 U4775 ( .A(n3040), .B(n5969), .C(n3038), .Y(n2820) );
  BUFX6 U4776 ( .A(n6285), .Y(n2821) );
  NOR2X8 U4777 ( .A(n6285), .B(n2823), .Y(n6297) );
  NAND2BX4 U4779 ( .AN(median_sobel_inst_u_median_filter_submodule_n22), .B(
        n2827), .Y(n2826) );
  OAI21X4 U4780 ( .A0(n3878), .A1(n3879), .B0(n3877), .Y(n2829) );
  OAI22X2 U4781 ( .A0(n2831), .A1(
        median_sobel_inst_u_median_filter_submodule_n292), .B0(
        median_sobel_inst_u_median_filter_submodule_n94), .B1(n6287), .Y(n3875) );
  INVX20 U4783 ( .A(n2833), .Y(n6296) );
  INVX3 U4784 ( .A(n6296), .Y(n2835) );
  NAND2X2 U4785 ( .A(n6297), .B(
        median_sobel_inst_u_median_filter_submodule_n126), .Y(n2836) );
  AND3X8 U4786 ( .A(n3621), .B(n3903), .C(n3619), .Y(n2833) );
  INVX3 U4787 ( .A(n6297), .Y(n2838) );
  BUFX20 U4788 ( .A(n2888), .Y(n2840) );
  OAI21X4 U4790 ( .A0(n6467), .A1(n6655), .B0(n2842), .Y(
        median_sobel_inst_u_median_filter_submodule_n669) );
  AOI2BB2X4 U4791 ( .B0(n3132), .B1(n2843), .A0N(n2841), .A1N(n6662), .Y(n2842) );
  NAND2X8 U4792 ( .A(n2840), .B(n2841), .Y(n6467) );
  BUFX20 U4799 ( .A(n2931), .Y(n2844) );
  XOR2X4 U4800 ( .A(n2846), .B(n2847), .Y(n2931) );
  OAI22X4 U4801 ( .A0(n3215), .A1(n3365), .B0(
        median_sobel_inst_u_median_filter_submodule_net55220), .B1(n4417), .Y(
        n2846) );
  XNOR2X4 U4802 ( .A(n2848), .B(n2847), .Y(n2845) );
  AOI2BB2X4 U4803 ( .B0(n3192), .B1(n4216), .A0N(
        median_sobel_inst_u_median_filter_submodule_n148), .A1N(
        median_sobel_inst_u_median_filter_submodule_n197), .Y(n2848) );
  INVX3 U4804 ( .A(median_sobel_inst_n627), .Y(n2849) );
  AOI21X4 U4805 ( .A0(median_sobel_inst_data_d_r[3]), .A1(n2861), .B0(n2850), 
        .Y(n2860) );
  NOR2X4 U4806 ( .A(median_sobel_inst_data_g_r[2]), .B(n6107), .Y(n2850) );
  AOI2BB2X4 U4807 ( .B0(n6168), .B1(median_sobel_inst_data_d_r[3]), .A0N(
        median_sobel_inst_data_a_r[4]), .A1N(n6151), .Y(n3064) );
  CLKAND2X8 U4808 ( .A(median_sobel_inst_u_median_filter_submodule_n683), .B(
        n6216), .Y(n6213) );
  NAND2X4 U4809 ( .A(median_sobel_inst_u_median_filter_submodule_n352), .B(
        median_sobel_inst_u_median_filter_submodule_n286), .Y(n6216) );
  OAI2BB1X4 U4810 ( .A0N(median_sobel_inst_u_median_filter_submodule_n219), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n161), .B0(n6663), 
        .Y(n3177) );
  NAND2X2 U4811 ( .A(n2851), .B(
        median_sobel_inst_u_median_filter_submodule_n684), .Y(n6238) );
  OAI2BB1X4 U4812 ( .A0N(n6939), .A1N(n6241), .B0(n2851), .Y(n3540) );
  OAI21X4 U4813 ( .A0(n2851), .A1(n6223), .B0(n6726), .Y(n6239) );
  NAND2X8 U4814 ( .A(n3541), .B(n6222), .Y(n2851) );
  BUFX6 U4815 ( .A(n3505), .Y(n2854) );
  NOR2X8 U4816 ( .A(n2856), .B(n2855), .Y(n4233) );
  AND2X8 U4817 ( .A(n3505), .B(n4255), .Y(n2855) );
  NOR2X8 U4818 ( .A(n882), .B(n5828), .Y(n4255) );
  INVX12 U4819 ( .A(n940), .Y(n5828) );
  NOR2X6 U4821 ( .A(n867), .B(n6993), .Y(n4256) );
  NAND2X4 U4822 ( .A(n6066), .B(n6065), .Y(n2868) );
  INVX6 U4823 ( .A(median_sobel_inst_data_g_r[2]), .Y(n6169) );
  NAND3X6 U4824 ( .A(n2865), .B(n2864), .C(n2863), .Y(n2862) );
  NAND2X2 U4825 ( .A(median_sobel_inst_data_g_r[2]), .B(n6107), .Y(n2864) );
  NOR2BX4 U4829 ( .AN(n2753), .B(n6576), .Y(n4917) );
  NOR2X8 U4830 ( .A(n2949), .B(n2869), .Y(n4603) );
  NAND2X4 U4834 ( .A(n5636), .B(n5939), .Y(n6425) );
  XNOR2X4 U4835 ( .A(n2875), .B(n2874), .Y(n2873) );
  XOR2X4 U4836 ( .A(n3690), .B(input_data_ready_r[20]), .Y(n2875) );
  OAI21X4 U4837 ( .A0(median_sobel_inst_data_h_r[4]), .A1(n2817), .B0(n6021), 
        .Y(n2877) );
  OAI22X4 U4838 ( .A0(n6022), .A1(median_sobel_inst_data_h_r[6]), .B0(
        median_sobel_inst_data_h_r[5]), .B1(n2879), .Y(n2878) );
  AOI22X4 U4841 ( .A0(n3077), .A1(median_sobel_inst_data_b_r[2]), .B0(n6014), 
        .B1(median_sobel_inst_data_b_r[3]), .Y(n2885) );
  INVX12 U4842 ( .A(n2888), .Y(n3132) );
  OAI21X4 U4845 ( .A0(n3919), .A1(n5269), .B0(n5270), .Y(n4595) );
  OAI21X4 U4846 ( .A0(median_sobel_inst_data_d_r[1]), .A1(n6165), .B0(
        median_sobel_inst_net60883), .Y(n6106) );
  BUFX12 U4847 ( .A(n5541), .Y(n2899) );
  INVX20 U4848 ( .A(n2954), .Y(n5541) );
  NAND2X8 U4849 ( .A(n2942), .B(n2943), .Y(n2954) );
  OAI2BB1X1 U4850 ( .A0N(n2899), .A1N(median_sobel_inst_n87), .B0(n5891), .Y(
        n5892) );
  OAI21X1 U4851 ( .A0(n2948), .A1(n5039), .B0(n5040), .Y(n4807) );
  NAND2BX4 U4853 ( .AN(n6098), .B(n2910), .Y(median_sobel_inst_data_d_r[4]) );
  NAND3X6 U4856 ( .A(n2915), .B(n2913), .C(n5886), .Y(n3107) );
  OAI22X4 U4858 ( .A0(n3101), .A1(median_sobel_inst_data_f_r[7]), .B0(
        median_sobel_inst_data_f_r[6]), .B1(n5870), .Y(n2917) );
  XOR2X4 U4859 ( .A(n2918), .B(n5683), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]) );
  AOI21X4 U4860 ( .A0(n5680), .A1(n5679), .B0(n2919), .Y(n2918) );
  OR2X8 U4861 ( .A(n3508), .B(n3509), .Y(n5680) );
  NAND2X8 U4862 ( .A(n2921), .B(n2920), .Y(n5220) );
  XNOR2X4 U4863 ( .A(conv_inst_data_abc_1_r[9]), .B(conv_inst_conv_1_r[9]), 
        .Y(n4291) );
  NAND3X6 U4864 ( .A(n3327), .B(n4477), .C(n4283), .Y(n2924) );
  AOI21X4 U4865 ( .A0(n4533), .A1(n4524), .B0(n3810), .Y(n4283) );
  NAND2X6 U4866 ( .A(n4520), .B(n3808), .Y(n3327) );
  NAND2X8 U4868 ( .A(n6457), .B(n3908), .Y(n6463) );
  NAND2X2 U4869 ( .A(n6279), .B(
        median_sobel_inst_u_median_filter_submodule_n372), .Y(n2932) );
  NAND3BX4 U4870 ( .AN(n6279), .B(
        median_sobel_inst_u_median_filter_submodule_n282), .C(n2844), .Y(n2935) );
  NAND2X4 U4871 ( .A(n2936), .B(n5221), .Y(n5484) );
  NAND2X6 U4872 ( .A(n5220), .B(n2937), .Y(n2936) );
  AOI21X4 U4874 ( .A0(n4075), .A1(n3603), .B0(n3601), .Y(n2938) );
  NAND2X2 U4876 ( .A(conv_inst_data_abc_3_r[5]), .B(conv_inst_conv_3_r[5]), 
        .Y(n4632) );
  AOI21X4 U4877 ( .A0(median_sobel_inst_u_median_filter_submodule_n149), .A1(
        n5577), .B0(median_sobel_inst_u_median_filter_submodule_a5_r[1]), .Y(
        n4218) );
  NAND2BX4 U4878 ( .AN(n2940), .B(n5812), .Y(median_sobel_inst_n709) );
  NAND2X8 U4882 ( .A(n4598), .B(n3836), .Y(n6482) );
  XNOR2X4 U4883 ( .A(n6341), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]) );
  NOR2X4 U4884 ( .A(n4599), .B(n6539), .Y(n4463) );
  NAND3X6 U4885 ( .A(n6050), .B(n6051), .C(n2953), .Y(
        median_sobel_inst_net60883) );
  NAND2BX1 U4886 ( .AN(n2900), .B(median_sobel_inst_n145), .Y(n5591) );
  AOI21X4 U4887 ( .A0(n5869), .A1(n2958), .B0(n2956), .Y(n2955) );
  OAI2BB1X4 U4888 ( .A0N(median_sobel_inst_data_i_r[7]), .A1N(n3256), .B0(
        n2957), .Y(n2956) );
  NAND3X6 U4891 ( .A(n2962), .B(n4379), .C(n4380), .Y(n4438) );
  OAI21X4 U4892 ( .A0(n2964), .A1(n4374), .B0(n2963), .Y(n2962) );
  AOI2BB2X4 U4893 ( .B0(n3558), .B1(n3464), .A0N(n3485), .A1N(n6719), .Y(n2964) );
  OAI21X4 U4894 ( .A0(n5723), .A1(n5722), .B0(cnt[8]), .Y(n5724) );
  OAI2BB1X4 U4899 ( .A0N(n4493), .A1N(n4494), .B0(n4492), .Y(n2971) );
  NAND4BX4 U4900 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n59), .B(
        n3567), .C(n2973), .D(n2972), .Y(n4363) );
  NAND3X6 U4901 ( .A(n6120), .B(n6121), .C(n6119), .Y(
        median_sobel_inst_data_g_r[5]) );
  NOR3X4 U4903 ( .A(n4021), .B(n2975), .C(n4020), .Y(n4018) );
  NOR2X8 U4904 ( .A(n5939), .B(n861), .Y(n2975) );
  OAI21X4 U4906 ( .A0(n6566), .A1(n3186), .B0(n6662), .Y(n2981) );
  NOR2BX4 U4907 ( .AN(median_sobel_inst_u_median_filter_submodule_n129), .B(
        median_sobel_inst_u_median_filter_submodule_net60646), .Y(n2983) );
  MXI2X4 U4908 ( .A(n2985), .B(n6852), .S0(n4063), .Y(n6447) );
  NOR2X6 U4909 ( .A(n5540), .B(input_data_ready_r[21]), .Y(n2985) );
  XOR2X4 U4910 ( .A(n4062), .B(n2986), .Y(n5540) );
  XOR2X4 U4911 ( .A(n4061), .B(input_data_ready_r[30]), .Y(n2986) );
  AOI22X4 U4912 ( .A0(n6149), .A1(median_sobel_inst_data_a_r[3]), .B0(n6107), 
        .B1(median_sobel_inst_data_a_r[2]), .Y(n6108) );
  AND2X8 U4914 ( .A(n6072), .B(n2988), .Y(n6107) );
  NAND3BX4 U4915 ( .AN(n6080), .B(n6082), .C(n2990), .Y(
        median_sobel_inst_data_a_r[3]) );
  OAI21X4 U4916 ( .A0(n3451), .A1(n5336), .B0(n5337), .Y(n5225) );
  NOR2X6 U4917 ( .A(n4809), .B(n3774), .Y(n2994) );
  NOR2X8 U4918 ( .A(n2994), .B(n2993), .Y(n5367) );
  OAI21X4 U4919 ( .A0(n3774), .A1(n4808), .B0(n3773), .Y(n2993) );
  NAND2X6 U4920 ( .A(n2995), .B(n3293), .Y(n3292) );
  NAND2X6 U4921 ( .A(n2997), .B(n2996), .Y(n2995) );
  NAND3X4 U4922 ( .A(n5844), .B(n3007), .C(n3009), .Y(n2998) );
  AOI22X4 U4923 ( .A0(n5862), .A1(median_sobel_inst_data_f_r[2]), .B0(
        median_sobel_inst_data_f_r[3]), .B1(n3005), .Y(n2999) );
  NAND2X4 U4924 ( .A(median_sobel_inst_data_i_r[7]), .B(n3452), .Y(n3110) );
  NAND2X8 U4925 ( .A(n4282), .B(n3681), .Y(n3000) );
  NAND3X6 U4927 ( .A(n3003), .B(n3002), .C(n3001), .Y(
        median_sobel_inst_data_e_r[5]) );
  NAND2X2 U4928 ( .A(n6077), .B(median_sobel_inst_n645), .Y(n3002) );
  AOI2BB2X2 U4929 ( .B0(median_sobel_inst_n627), .B1(n4881), .A0N(n4752), 
        .A1N(median_sobel_inst_n402), .Y(n3003) );
  OAI22X4 U4930 ( .A0(n5872), .A1(median_sobel_inst_data_c_r[0]), .B0(
        median_sobel_inst_data_c_r[1]), .B1(n3008), .Y(n3007) );
  NAND3X6 U4931 ( .A(n3092), .B(n3091), .C(n3011), .Y(
        median_sobel_inst_data_g_r[6]) );
  NOR2BX4 U4932 ( .AN(n6148), .B(n3093), .Y(n3011) );
  AOI22X4 U4933 ( .A0(n5882), .A1(median_sobel_inst_data_c_r[4]), .B0(
        median_sobel_inst_data_c_r[5]), .B1(n5883), .Y(n3012) );
  NAND2X4 U4935 ( .A(n3020), .B(n3017), .Y(n3071) );
  NOR2X6 U4936 ( .A(n6155), .B(median_sobel_inst_data_a_r[5]), .Y(n6115) );
  NAND2X4 U4937 ( .A(n6179), .B(n3021), .Y(n3020) );
  NAND2BX4 U4939 ( .AN(n3027), .B(n5861), .Y(n5865) );
  INVX1 U4941 ( .A(median_sobel_inst_data_c_r[7]), .Y(n3256) );
  NAND3X8 U4942 ( .A(n5545), .B(n5544), .C(n5543), .Y(
        median_sobel_inst_data_b_r[7]) );
  NAND2X2 U4943 ( .A(n3039), .B(median_sobel_inst_data_e_r[2]), .Y(n3038) );
  BUFX20 U4944 ( .A(n3080), .Y(n3045) );
  NOR2X4 U4945 ( .A(n3045), .B(median_sobel_inst_n398), .Y(n3056) );
  AOI21X4 U4946 ( .A0(n6069), .A1(n2718), .B0(n2726), .Y(n3058) );
  OAI21X4 U4947 ( .A0(n3061), .A1(n3060), .B0(n6114), .Y(n3068) );
  NAND3X4 U4948 ( .A(n3063), .B(n6111), .C(n3062), .Y(n3072) );
  OAI21X4 U4949 ( .A0(n6110), .A1(n6109), .B0(n6108), .Y(n3065) );
  NAND3X6 U4950 ( .A(n3072), .B(n3070), .C(n3066), .Y(
        median_sobel_inst_u_median_filter_submodule_a14_w) );
  AOI2BB2X4 U4951 ( .B0(n3068), .B1(n6179), .A0N(n3069), .A1N(n3067), .Y(n3066) );
  AND3X8 U4952 ( .A(n5567), .B(n5568), .C(n3073), .Y(n3356) );
  NAND3BX4 U4953 ( .AN(median_sobel_inst_data_b_r[0]), .B(n6011), .C(
        median_sobel_inst_data_h_r[0]), .Y(n3079) );
  INVX20 U4954 ( .A(n5541), .Y(n3080) );
  OAI2BB1X4 U4955 ( .A0N(n3087), .A1N(n3085), .B0(n3084), .Y(n3083) );
  OAI21X4 U4956 ( .A0(n5994), .A1(n5995), .B0(n3086), .Y(n3085) );
  ACHCONX2 U4957 ( .A(n3097), .B(median_sobel_inst_data_g_r[7]), .CI(n3096), 
        .CON(n6184) );
  NOR2BX4 U4960 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), 
        .B(n6951), .Y(n4932) );
  NOR2BX4 U4961 ( .AN(n3480), .B(n6581), .Y(n5463) );
  NAND3X4 U4962 ( .A(n3293), .B(n3286), .C(n3099), .Y(n3283) );
  CLKINVX1 U4964 ( .A(median_sobel_inst_data_f_r[7]), .Y(n3102) );
  NAND2X8 U4966 ( .A(median_sobel_inst_net62749), .B(median_sobel_inst_cnt[0]), 
        .Y(n4505) );
  NAND3X6 U4967 ( .A(n3111), .B(n3108), .C(n3106), .Y(
        median_sobel_inst_u_median_filter_submodule_a69_w) );
  AOI2BB2X4 U4968 ( .B0(n3109), .B1(median_sobel_inst_data_i_r[6]), .A0N(n5885), .A1N(n3110), .Y(n3108) );
  OAI21X4 U4969 ( .A0(n5886), .A1(n5885), .B0(n3110), .Y(n3109) );
  NAND2X2 U4970 ( .A(median_sobel_inst_data_f_r[6]), .B(n5884), .Y(n3116) );
  NAND3X6 U4972 ( .A(n3124), .B(n5849), .C(n3123), .Y(
        median_sobel_inst_data_i_r[1]) );
  OAI2BB1X4 U4973 ( .A0N(n4161), .A1N(n3635), .B0(n4164), .Y(n3126) );
  NAND2X2 U4974 ( .A(n3132), .B(n4205), .Y(n3722) );
  BUFX12 U4975 ( .A(n2889), .Y(n3133) );
  OR2X4 U4976 ( .A(n3133), .B(n3134), .Y(n6302) );
  NAND3X6 U4977 ( .A(n3707), .B(n4190), .C(n4191), .Y(n3135) );
  AOI21X4 U4979 ( .A0(n3132), .A1(
        median_sobel_inst_u_median_filter_submodule_net55584), .B0(n3137), .Y(
        n6464) );
  NOR2X4 U4980 ( .A(n2841), .B(median_sobel_inst_u_median_filter_submodule_n91), .Y(n3137) );
  NAND4X4 U4981 ( .A(n3139), .B(n4179), .C(n4180), .D(n3138), .Y(n4181) );
  NOR2BX4 U4983 ( .AN(median_sobel_inst_u_median_filter_submodule_n19), .B(
        n6665), .Y(n3140) );
  NOR2X8 U4984 ( .A(n4307), .B(median_sobel_inst_ns_0_), .Y(n5603) );
  NAND2BX1 U4985 ( .AN(n4340), .B(n6609), .Y(n3143) );
  AOI2BB2X2 U4987 ( .B0(n6140), .B1(median_sobel_inst_net43895), .A0N(n6840), 
        .A1N(n4340), .Y(n4086) );
  INVX3 U4988 ( .A(n6021), .Y(n6017) );
  NAND2X4 U4989 ( .A(n6015), .B(median_sobel_inst_data_b_r[7]), .Y(n6021) );
  NOR2X8 U4990 ( .A(n3151), .B(n3150), .Y(n6015) );
  BUFX2 U4991 ( .A(median_sobel_inst_cnt[0]), .Y(n3152) );
  NAND2X1 U4997 ( .A(n6026), .B(n6881), .Y(n3163) );
  INVX12 U4999 ( .A(n3356), .Y(median_sobel_inst_data_d_r[7]) );
  AOI21X4 U5000 ( .A0(n3173), .A1(n3168), .B0(n3164), .Y(n3215) );
  NAND2X2 U5001 ( .A(n3166), .B(n3165), .Y(n3164) );
  AOI21X2 U5002 ( .A0(median_sobel_inst_u_median_filter_submodule_n217), .A1(
        median_sobel_inst_u_median_filter_submodule_n212), .B0(n3167), .Y(
        n3166) );
  NOR2BX1 U5003 ( .AN(median_sobel_inst_u_median_filter_submodule_n282), .B(
        median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n3167) );
  NAND2BX2 U5005 ( .AN(median_sobel_inst_u_median_filter_submodule_n282), .B(
        median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n3170) );
  OAI2BB1X4 U5007 ( .A0N(median_sobel_inst_u_median_filter_submodule_n203), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n150), .B0(n3174), 
        .Y(n3173) );
  OAI22X4 U5008 ( .A0(n3176), .A1(n3587), .B0(n3175), .B1(n6680), .Y(n3174) );
  INVX1 U5009 ( .A(n6657), .Y(n3175) );
  OAI21X4 U5010 ( .A0(n4771), .A1(n4772), .B0(n5363), .Y(n3179) );
  OA21X4 U5011 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n56), .A1(
        n5143), .B0(median_sobel_inst_u_sobel_gradient_submodule_n48), .Y(
        n4770) );
  BUFX6 U5013 ( .A(n3628), .Y(n3181) );
  NAND3X6 U5014 ( .A(n6424), .B(n3182), .C(n5627), .Y(n3272) );
  XOR2X4 U5016 ( .A(n3184), .B(n3183), .Y(n3628) );
  XOR2X4 U5017 ( .A(n3629), .B(input_data_ready_r[5]), .Y(n3183) );
  AOI21X4 U5018 ( .A0(n4249), .A1(n4250), .B0(n3630), .Y(n3184) );
  MX2X6 U5019 ( .A(n6417), .B(n6926), .S0(n6418), .Y(n3185) );
  XOR2X4 U5020 ( .A(n3514), .B(n3512), .Y(n6418) );
  XNOR2X4 U5021 ( .A(n4263), .B(n4262), .Y(n6421) );
  OAI21X4 U5022 ( .A0(n3497), .A1(
        median_sobel_inst_u_median_filter_submodule_net54874), .B0(n4172), .Y(
        n3186) );
  NAND2X2 U5023 ( .A(n4769), .B(n5363), .Y(n5440) );
  OAI21X4 U5024 ( .A0(n3188), .A1(n3197), .B0(n3193), .Y(n3192) );
  NAND4BX4 U5025 ( .AN(n3190), .B(n4214), .C(n3648), .D(n3189), .Y(n3188) );
  NOR2X2 U5026 ( .A(n3652), .B(n3647), .Y(n3190) );
  INVX1 U5028 ( .A(median_sobel_inst_u_median_filter_submodule_n282), .Y(n3194) );
  INVX1 U5029 ( .A(median_sobel_inst_u_median_filter_submodule_n212), .Y(n3195) );
  AOI22X1 U5032 ( .A0(n4377), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[27]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n128), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[26]), .Y(
        n4372) );
  XNOR2X4 U5034 ( .A(n3199), .B(n5687), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N114) );
  OAI21X4 U5035 ( .A0(n5689), .A1(n5693), .B0(n3200), .Y(n3199) );
  CLKINVX1 U5036 ( .A(n5694), .Y(n3201) );
  NOR2X2 U5037 ( .A(n5688), .B(n5693), .Y(n3202) );
  NOR2X8 U5038 ( .A(n3821), .B(n3822), .Y(n5689) );
  NAND2X4 U5040 ( .A(n3203), .B(median_sobel_inst_data_a_r[7]), .Y(n6182) );
  OAI22X2 U5044 ( .A0(n4330), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n110), .B0(n5476), .B1(
        n3207), .Y(median_sobel_inst_u_sobel_gradient_submodule_N134) );
  OAI21X4 U5046 ( .A0(n5064), .A1(n5300), .B0(n5065), .Y(n5204) );
  INVX1 U5047 ( .A(n5204), .Y(n3210) );
  OAI2BB1X4 U5048 ( .A0N(n3214), .A1N(n3213), .B0(n3212), .Y(n3211) );
  OAI21X4 U5049 ( .A0(n4222), .A1(n3362), .B0(n2749), .Y(n3212) );
  NOR2X4 U5051 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(n5286) );
  NAND4X8 U5052 ( .A(n2734), .B(n3529), .C(n3220), .D(n3219), .Y(n3836) );
  NAND2BX1 U5053 ( .AN(n6708), .B(n3739), .Y(n3222) );
  BUFX16 U5054 ( .A(n5698), .Y(n3224) );
  NAND2X8 U5055 ( .A(n6642), .B(conv_inst_cnt_0_), .Y(n5698) );
  OR2X4 U5056 ( .A(n5386), .B(median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n5387) );
  OAI21X4 U5057 ( .A0(n4797), .A1(n4796), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n3225)
         );
  OAI2BB1X4 U5058 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n3449), .B0(n3226), .Y(n4797) );
  INVX20 U5059 ( .A(n3228), .Y(n6298) );
  AOI2BB2X4 U5060 ( .B0(n3312), .B1(n6697), .A0N(n6298), .A1N(n6928), .Y(n3314) );
  AND2X8 U5061 ( .A(n3492), .B(n3537), .Y(n3228) );
  BUFX4 U5062 ( .A(n3589), .Y(n3229) );
  NAND2X8 U5064 ( .A(n3624), .B(n3627), .Y(n3589) );
  XNOR2X4 U5065 ( .A(n3230), .B(n5706), .Y(conv_inst_N77) );
  NAND2X2 U5066 ( .A(n5704), .B(n5707), .Y(n3230) );
  INVX2 U5067 ( .A(n3232), .Y(n4563) );
  NOR2X1 U5068 ( .A(n3232), .B(n914), .Y(n5580) );
  NOR2X8 U5070 ( .A(n3233), .B(n3276), .Y(n6382) );
  OAI21X4 U5071 ( .A0(n4592), .A1(n3640), .B0(n4591), .Y(n4873) );
  NAND2BX4 U5072 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_), .Y(n5272)
         );
  NAND2X6 U5073 ( .A(n6384), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .Y(n6383) );
  NAND3X6 U5074 ( .A(n3236), .B(n3318), .C(n3235), .Y(n6384) );
  AOI21X4 U5078 ( .A0(n3242), .A1(n4616), .B0(n3241), .Y(n6362) );
  OAI21X4 U5079 ( .A0(n5264), .A1(n3798), .B0(n5265), .Y(n4616) );
  NOR2X4 U5080 ( .A(n6539), .B(n3243), .Y(n3482) );
  AOI2BB2X4 U5082 ( .B0(n6297), .B1(
        median_sobel_inst_u_median_filter_submodule_n292), .A0N(n6296), .A1N(
        n3245), .Y(n6286) );
  INVX1 U5083 ( .A(median_sobel_inst_u_median_filter_submodule_n370), .Y(n3245) );
  INVX1 U5088 ( .A(median_sobel_inst_u_median_filter_submodule_net54951), .Y(
        n3250) );
  NAND3X2 U5089 ( .A(n2752), .B(n3884), .C(n3252), .Y(n3251) );
  INVX1 U5090 ( .A(median_sobel_inst_u_median_filter_submodule_net54904), .Y(
        n3252) );
  AOI21X2 U5091 ( .A0(median_sobel_inst_u_median_filter_submodule_n292), .A1(
        median_sobel_inst_u_median_filter_submodule_n94), .B0(n3245), .Y(n3253) );
  XNOR2X1 U5092 ( .A(input_data_ready_r[22]), .B(input_data_ready_r[13]), .Y(
        n3257) );
  XOR2X4 U5093 ( .A(n3258), .B(n5414), .Y(conv_inst_N75) );
  NOR2X4 U5094 ( .A(n3229), .B(n5413), .Y(n3258) );
  NAND2X6 U5095 ( .A(n3259), .B(n6429), .Y(n6432) );
  NAND2X1 U5096 ( .A(n5566), .B(n3259), .Y(conv_inst_data_abc_w[7]) );
  NAND2X8 U5097 ( .A(n5565), .B(n3394), .Y(n3259) );
  CLKINVX2 U5098 ( .A(n3224), .Y(n3681) );
  OAI21X4 U5099 ( .A0(median_sobel_inst_u_sober_compare_submodule_n13), .A1(
        n4098), .B0(n3260), .Y(n6411) );
  NAND2BX1 U5100 ( .AN(median_sobel_inst_u_sober_compare_submodule_n184), .B(
        median_sobel_inst_u_sober_compare_submodule_n23), .Y(n3261) );
  NOR2X8 U5101 ( .A(median_sobel_inst_u_sober_compare_submodule_n63), .B(
        median_sobel_inst_u_sober_compare_submodule_n64), .Y(n4659) );
  AOI21X4 U5103 ( .A0(n4094), .A1(n4097), .B0(n3266), .Y(n3265) );
  NAND3X8 U5105 ( .A(n3273), .B(n3272), .C(n5629), .Y(n3394) );
  BUFX8 U5106 ( .A(n3394), .Y(n3274) );
  AOI22X4 U5110 ( .A0(n3280), .A1(n3585), .B0(n3277), .B1(n841), .Y(n1454) );
  NAND2X8 U5111 ( .A(n3278), .B(n3231), .Y(n3585) );
  NAND2X6 U5112 ( .A(n3281), .B(n5437), .Y(n6470) );
  OR2X8 U5113 ( .A(n4128), .B(n4127), .Y(n3281) );
  NAND2X4 U5115 ( .A(n3292), .B(n3290), .Y(n3289) );
  AOI22X2 U5117 ( .A0(n6081), .A1(median_sobel_inst_n70), .B0(
        median_sobel_inst_n36), .B1(n6404), .Y(n3495) );
  NAND3X2 U5118 ( .A(median_sobel_inst_data_i_r[0]), .B(n5872), .C(n3295), .Y(
        n5877) );
  NOR2BX4 U5120 ( .AN(n4844), .B(n4980), .Y(n5060) );
  NOR2BX1 U5122 ( .AN(n6567), .B(n3454), .Y(n3303) );
  XNOR2X2 U5125 ( .A(n1232), .B(cnt[6]), .Y(n3305) );
  OAI21X4 U5126 ( .A0(n4878), .A1(n5025), .B0(n4877), .Y(n6381) );
  OAI21X4 U5127 ( .A0(n5615), .A1(n5616), .B0(n5614), .Y(n5618) );
  AOI21X4 U5128 ( .A0(n4408), .A1(n3659), .B0(n3658), .Y(n3459) );
  BUFX12 U5129 ( .A(n3320), .Y(n3312) );
  OAI21X4 U5130 ( .A0(n6301), .A1(n3315), .B0(n3314), .Y(
        median_sobel_inst_u_median_filter_submodule_n706) );
  AND3X8 U5131 ( .A(n6237), .B(n6238), .C(n6239), .Y(n3320) );
  INVX3 U5133 ( .A(n2992), .Y(n6453) );
  AND3X4 U5134 ( .A(n3316), .B(n5487), .C(n3600), .Y(n6626) );
  CLKINVX1 U5136 ( .A(n5486), .Y(n3317) );
  XNOR2X4 U5137 ( .A(n6383), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]) );
  INVX3 U5138 ( .A(n6301), .Y(n3319) );
  OAI2BB1X4 U5139 ( .A0N(n3319), .A1N(n2723), .B0(n3321), .Y(
        median_sobel_inst_u_median_filter_submodule_n705) );
  AOI2BB2X4 U5140 ( .B0(n3312), .B1(
        median_sobel_inst_u_median_filter_submodule_n358), .A0N(n6298), .A1N(
        median_sobel_inst_u_median_filter_submodule_n685), .Y(n3321) );
  NAND2X2 U5141 ( .A(n5414), .B(n5415), .Y(n3686) );
  NAND3BX4 U5142 ( .AN(n3322), .B(n4151), .C(n4152), .Y(n5415) );
  OAI21X2 U5143 ( .A0(n4150), .A1(n6462), .B0(n3522), .Y(n3322) );
  INVX3 U5144 ( .A(conv_inst_conv_1_r[14]), .Y(n6462) );
  NAND2BX4 U5145 ( .AN(n3323), .B(n4068), .Y(n5414) );
  OAI2BB1X2 U5146 ( .A0N(conv_inst_n65), .A1N(n3468), .B0(n3687), .Y(n3323) );
  NOR2X2 U5147 ( .A(n6928), .B(n6697), .Y(n6207) );
  AOI21X4 U5148 ( .A0(n6459), .A1(n6868), .B0(n3326), .Y(conv_inst_N232) );
  NAND2X8 U5150 ( .A(n5220), .B(n3811), .Y(n6457) );
  AOI21X2 U5152 ( .A0(n6462), .A1(n6463), .B0(n3328), .Y(conv_inst_N233) );
  NAND2X4 U5153 ( .A(n6457), .B(n6460), .Y(n3329) );
  AOI2BB1X2 U5155 ( .A0N(n3908), .A1N(conv_inst_conv_1_r[15]), .B0(n3333), .Y(
        n3332) );
  NAND2X4 U5158 ( .A(n6457), .B(conv_inst_conv_1_r[15]), .Y(n3336) );
  NAND3X6 U5159 ( .A(n3342), .B(n3340), .C(n3337), .Y(
        median_sobel_inst_u_median_filter_submodule_a25_w) );
  NAND2X4 U5160 ( .A(n3338), .B(median_sobel_inst_data_e_r[7]), .Y(n3337) );
  OAI2BB1X4 U5161 ( .A0N(n3350), .A1N(n3343), .B0(n4039), .Y(n3347) );
  NOR2X4 U5162 ( .A(n3344), .B(n4046), .Y(n3343) );
  NOR2X8 U5164 ( .A(n3378), .B(n3345), .Y(n3349) );
  XNOR2X4 U5167 ( .A(n3347), .B(n3420), .Y(n6439) );
  NAND2X2 U5168 ( .A(n5993), .B(median_sobel_inst_data_b_r[1]), .Y(n3351) );
  OAI21X4 U5169 ( .A0(n3795), .A1(n5249), .B0(n5250), .Y(n4920) );
  NAND2X2 U5170 ( .A(n3356), .B(median_sobel_inst_data_a_r[7]), .Y(n6112) );
  NAND2X4 U5171 ( .A(n4294), .B(n4344), .Y(n5548) );
  NAND2X8 U5172 ( .A(conv_inst_cnt_0_), .B(conv_inst_n27), .Y(n3357) );
  NAND3X6 U5173 ( .A(n3359), .B(n4786), .C(n5038), .Y(n4970) );
  NAND2X4 U5174 ( .A(n3358), .B(n3865), .Y(n4786) );
  AND2X4 U5175 ( .A(n3863), .B(n3864), .Y(n3358) );
  AND2X2 U5177 ( .A(median_sobel_inst_u_median_filter_submodule_a5_r[6]), .B(
        median_sobel_inst_u_median_filter_submodule_n217), .Y(n3362) );
  NAND2BX4 U5178 ( .AN(n4219), .B(n3364), .Y(n3363) );
  NOR2X4 U5179 ( .A(n4217), .B(n4218), .Y(n3364) );
  AND2X4 U5182 ( .A(n2844), .B(
        median_sobel_inst_u_median_filter_submodule_n150), .Y(n3369) );
  NOR2BX4 U5184 ( .AN(n2733), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .Y(n4592) );
  AOI2BB2X4 U5185 ( .B0(median_sobel_inst_u_median_filter_submodule_n694), 
        .B1(median_sobel_inst_u_median_filter_submodule_a5_r[4]), .A0N(n3374), 
        .A1N(n6950), .Y(n3372) );
  OAI2BB1X2 U5186 ( .A0N(n3374), .A1N(n6950), .B0(
        median_sobel_inst_u_median_filter_submodule_net41723), .Y(n3373) );
  INVX1 U5188 ( .A(n4053), .Y(n3375) );
  NOR2X1 U5189 ( .A(input_data_ready_r[29]), .B(input_data_ready_r[13]), .Y(
        n3376) );
  NOR2X4 U5190 ( .A(n4053), .B(n4045), .Y(n4051) );
  AOI21X4 U5191 ( .A0(n6894), .A1(n6458), .B0(n3379), .Y(conv_inst_N231) );
  NAND2X4 U5192 ( .A(n6459), .B(n3600), .Y(n3379) );
  NAND2X2 U5193 ( .A(n3661), .B(n3959), .Y(n3381) );
  XOR2X4 U5194 ( .A(conv_inst_data_bcd_4_r[7]), .B(conv_inst_conv_4_r[7]), .Y(
        n3959) );
  INVX3 U5195 ( .A(n5611), .Y(n3383) );
  NAND2X6 U5196 ( .A(n3385), .B(n4409), .Y(n4439) );
  NAND2X4 U5199 ( .A(n3387), .B(n4285), .Y(n4518) );
  NAND2X6 U5200 ( .A(n3389), .B(n3388), .Y(n4478) );
  OAI22X4 U5202 ( .A0(n6106), .A1(median_sobel_inst_data_a_r[0]), .B0(n2859), 
        .B1(median_sobel_inst_data_a_r[1]), .Y(n6110) );
  OAI2BB1X4 U5203 ( .A0N(median_sobel_inst_n99), .A1N(n6090), .B0(n6054), .Y(
        median_sobel_inst_data_a_r[0]) );
  NAND2X4 U5205 ( .A(n6428), .B(n6555), .Y(n5631) );
  NAND2X4 U5206 ( .A(n6425), .B(n3181), .Y(n3395) );
  NOR2X8 U5207 ( .A(n5561), .B(n5563), .Y(n5565) );
  XOR2X4 U5208 ( .A(n4247), .B(n4245), .Y(n5563) );
  NAND2X6 U5209 ( .A(n4242), .B(n4243), .Y(n4247) );
  XOR2X4 U5210 ( .A(n4237), .B(n4238), .Y(n3397) );
  NOR2X8 U5211 ( .A(n6692), .B(n469), .Y(n6099) );
  AOI2BB2X4 U5212 ( .B0(n5534), .B1(median_sobel_inst_n327), .A0N(n5834), 
        .A1N(median_sobel_inst_n391), .Y(n3401) );
  INVX1 U5213 ( .A(median_sobel_inst_n122), .Y(n5831) );
  INVX6 U5214 ( .A(n3669), .Y(n6435) );
  XOR2X4 U5215 ( .A(n3496), .B(n3402), .Y(n3669) );
  XNOR2X4 U5216 ( .A(n4027), .B(n5939), .Y(n3402) );
  NAND2X8 U5217 ( .A(n6433), .B(n6435), .Y(n5558) );
  NAND2X8 U5218 ( .A(n3405), .B(n3403), .Y(n6433) );
  NAND2X6 U5219 ( .A(n3404), .B(n5828), .Y(n3403) );
  XNOR2X4 U5221 ( .A(n4036), .B(n4037), .Y(n3557) );
  XOR2X4 U5222 ( .A(n3409), .B(n4204), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]) );
  AOI21X4 U5223 ( .A0(n5217), .A1(n5215), .B0(n4835), .Y(n3409) );
  AOI21X4 U5224 ( .A0(n4201), .A1(n4200), .B0(n4199), .Y(n3411) );
  INVX3 U5225 ( .A(n4248), .Y(n4234) );
  NAND2X4 U5226 ( .A(n858), .B(n5811), .Y(n4248) );
  NOR2BX4 U5227 ( .AN(n3477), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n5259) );
  NAND2BX2 U5228 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n3982)
         );
  XNOR2X2 U5229 ( .A(n837), .B(n913), .Y(n3412) );
  NAND3X6 U5231 ( .A(n3417), .B(n3413), .C(n6386), .Y(n6388) );
  NAND2X2 U5238 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), .Y(n5123)
         );
  XOR2X2 U5239 ( .A(n3421), .B(n6439), .Y(conv_inst_data_bcd_w[5]) );
  XNOR2X4 U5240 ( .A(n4040), .B(input_data_ready_r[29]), .Y(n3420) );
  NAND2X4 U5242 ( .A(n3424), .B(n6438), .Y(n3423) );
  OAI2BB1X4 U5243 ( .A0N(n6435), .A1N(n6434), .B0(n3425), .Y(n3424) );
  NAND3X1 U5246 ( .A(n6506), .B(n6528), .C(n6505), .Y(n6513) );
  NAND2X1 U5247 ( .A(n6375), .B(n5029), .Y(n5031) );
  INVX3 U5248 ( .A(n6296), .Y(n3904) );
  BUFX8 U5249 ( .A(n6439), .Y(n3428) );
  NAND2X6 U5250 ( .A(n3523), .B(n5423), .Y(o_in_ready) );
  NAND3X8 U5251 ( .A(n3593), .B(n6925), .C(n3484), .Y(n3523) );
  NAND2BX2 U5252 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[22]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net64263), .Y(n4367) );
  NAND2X1 U5253 ( .A(median_sobel_inst_n381), .B(n6077), .Y(n5857) );
  OAI21X2 U5254 ( .A0(n6310), .A1(n3570), .B0(n3569), .Y(n3568) );
  CLKINVX1 U5255 ( .A(n6308), .Y(n3569) );
  CLKINVX1 U5256 ( .A(n4305), .Y(n4300) );
  INVX4 U5257 ( .A(n3628), .Y(n6428) );
  NOR2X1 U5258 ( .A(n4479), .B(n5619), .Y(conv_inst_N226) );
  OAI2BB1X1 U5259 ( .A0N(n3442), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .B0(n6256), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[6]) );
  NOR2X2 U5260 ( .A(n4724), .B(n5619), .Y(conv_inst_N263) );
  AOI21X1 U5261 ( .A0(n3455), .A1(n5709), .B0(n5711), .Y(n482) );
  NAND2X4 U5262 ( .A(n6470), .B(n3527), .Y(n3526) );
  NAND3X2 U5263 ( .A(n4603), .B(n4558), .C(n5434), .Y(n4126) );
  AOI21X1 U5264 ( .A0(n5323), .A1(n5121), .B0(n5126), .Y(n5059) );
  NAND2X6 U5265 ( .A(n3548), .B(n3546), .Y(n5323) );
  OR2X4 U5266 ( .A(n6439), .B(n6846), .Y(n4043) );
  NAND2X4 U5267 ( .A(n3428), .B(n6437), .Y(n4042) );
  AOI22X1 U5268 ( .A0(n5145), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_N47), .B0(n5144), .B1(
        n5458), .Y(median_sobel_inst_u_sobel_gradient_submodule_N74) );
  NOR2BX2 U5269 ( .AN(n3433), .B(n3440), .Y(n4859) );
  NAND3X4 U5270 ( .A(n5736), .B(cnt[10]), .C(n5733), .Y(n5734) );
  BUFX16 U5273 ( .A(n5698), .Y(n3507) );
  NAND2X1 U5274 ( .A(n6325), .B(n6328), .Y(n6331) );
  OR2X4 U5275 ( .A(median_sobel_inst_u_median_filter_submodule_n85), .B(
        median_sobel_inst_u_median_filter_submodule_n222), .Y(n6197) );
  CLKINVX1 U5276 ( .A(n5629), .Y(n5632) );
  INVX20 U5277 ( .A(n4081), .Y(n4752) );
  XNOR2X1 U5278 ( .A(cnt[7]), .B(n437), .Y(n5738) );
  NOR2X8 U5279 ( .A(n3836), .B(n4568), .Y(n3528) );
  NAND2X4 U5280 ( .A(n2721), .B(n4382), .Y(n3594) );
  INVX12 U5281 ( .A(n4340), .Y(n3434) );
  INVX12 U5282 ( .A(n4340), .Y(n4444) );
  OAI2BB1X1 U5283 ( .A0N(n3442), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .B0(n5550), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[1]) );
  OAI21X1 U5284 ( .A0(n4983), .A1(n5644), .B0(n5646), .Y(n4986) );
  NAND2BX2 U5285 ( .AN(n3437), .B(n3438), .Y(n3436) );
  NAND2X4 U5286 ( .A(n5003), .B(n5739), .Y(n6491) );
  NOR2X2 U5287 ( .A(n5526), .B(n5528), .Y(n5510) );
  OAI21X2 U5288 ( .A0(n5528), .A1(n5525), .B0(n5529), .Y(n3536) );
  CLKINVX1 U5289 ( .A(median_sobel_inst_u_median_filter_submodule_net54874), 
        .Y(n3709) );
  NAND2X2 U5290 ( .A(n6156), .B(median_sobel_inst_data_d_r[7]), .Y(n6157) );
  XNOR2X4 U5291 ( .A(n6546), .B(n5961), .Y(n4061) );
  INVX3 U5294 ( .A(n5689), .Y(n5690) );
  NOR2X1 U5295 ( .A(n5182), .B(n5181), .Y(n5183) );
  AOI2BB2X2 U5297 ( .B0(n6140), .B1(median_sobel_inst_n146), .A0N(
        median_sobel_inst_n371), .A1N(n6096), .Y(n6092) );
  OAI2BB1X1 U5298 ( .A0N(n3442), .A1N(n3443), .B0(n6266), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[3]) );
  OAI21X2 U5299 ( .A0(n6267), .A1(n6946), .B0(n6258), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[2]) );
  AOI2BB2X1 U5300 ( .B0(median_sobel_inst_u_median_filter_submodule_n53), .B1(
        median_sobel_inst_u_median_filter_submodule_net54874), .A0N(n6635), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net62055), .Y(n4182)
         );
  OAI21X1 U5301 ( .A0(n5130), .A1(n5129), .B0(n5128), .Y(n3551) );
  NOR2X4 U5302 ( .A(n6449), .B(n6440), .Y(n6443) );
  NAND2X1 U5303 ( .A(n6441), .B(n6446), .Y(n6442) );
  NAND4X4 U5304 ( .A(n5960), .B(n5959), .C(n5958), .D(n5957), .Y(
        median_sobel_inst_data_e_r[4]) );
  NAND2X2 U5307 ( .A(n6139), .B(median_sobel_inst_n637), .Y(n3532) );
  CLKINVX1 U5309 ( .A(n6387), .Y(n3556) );
  XOR2X2 U5310 ( .A(n847), .B(n940), .Y(n4035) );
  XNOR2X2 U5311 ( .A(n6430), .B(input_data_ready_r[15]), .Y(n6431) );
  NAND2X2 U5312 ( .A(n2752), .B(n3884), .Y(n3882) );
  OA22X2 U5313 ( .A0(median_sobel_inst_n377), .A1(n6132), .B0(
        median_sobel_inst_n369), .B1(n6135), .Y(n5962) );
  XOR2X4 U5314 ( .A(n6926), .B(n6993), .Y(n3513) );
  NAND2X4 U5315 ( .A(conv_inst_data_bcd_4_r[1]), .B(conv_inst_conv_4_r[1]), 
        .Y(n5307) );
  NAND3X2 U5316 ( .A(n4782), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n57), .Y(n3449) );
  NAND2X2 U5317 ( .A(n4438), .B(n4437), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[1]) );
  NAND2X2 U5318 ( .A(n4436), .B(n4435), .Y(n4437) );
  NOR2X1 U5319 ( .A(n5286), .B(n5285), .Y(n5287) );
  AOI2BB2X2 U5320 ( .B0(n6279), .B1(
        median_sobel_inst_u_median_filter_submodule_n198), .A0N(
        median_sobel_inst_u_median_filter_submodule_n211), .A1N(n2844), .Y(
        n4229) );
  NAND3BX4 U5321 ( .AN(n6279), .B(
        median_sobel_inst_u_median_filter_submodule_n281), .C(n2844), .Y(n5637) );
  INVX3 U5322 ( .A(n5460), .Y(n5011) );
  INVX1 U5323 ( .A(n6315), .Y(n5405) );
  OAI21X1 U5324 ( .A0(n6316), .A1(n6315), .B0(n6314), .Y(n6317) );
  OAI21X1 U5325 ( .A0(n6101), .A1(n7850), .B0(n6041), .Y(n6042) );
  NAND2X2 U5326 ( .A(n4229), .B(n4228), .Y(
        median_sobel_inst_u_median_filter_submodule_n673) );
  AND2X4 U5327 ( .A(n5389), .B(n5388), .Y(n5391) );
  AOI2BB2X2 U5328 ( .B0(n6678), .B1(n6049), .A0N(median_sobel_inst_n336), 
        .A1N(n2792), .Y(n5389) );
  OAI21X2 U5329 ( .A0(n5492), .A1(n5490), .B0(n5493), .Y(n6369) );
  NAND2X2 U5330 ( .A(n6637), .B(n5512), .Y(n5490) );
  NAND2X2 U5331 ( .A(median_sobel_inst_n140), .B(n6077), .Y(n6079) );
  INVX3 U5332 ( .A(n4074), .Y(n4075) );
  NOR2X4 U5333 ( .A(n4074), .B(n4070), .Y(n4071) );
  NAND2X2 U5334 ( .A(n4404), .B(n4069), .Y(n4074) );
  NAND2X1 U5335 ( .A(median_sobel_inst_n640), .B(n4630), .Y(n6078) );
  NOR2X2 U5336 ( .A(n6638), .B(n6559), .Y(n5257) );
  NAND2X4 U5338 ( .A(n4526), .B(n4525), .Y(n4534) );
  AOI2BB1X4 U5339 ( .A0N(n5355), .A1N(n4523), .B0(n4524), .Y(n4526) );
  AOI2BB2X4 U5340 ( .B0(n6128), .B1(median_sobel_inst_net64417), .A0N(
        median_sobel_inst_n373), .A1N(n6135), .Y(n5913) );
  BUFX12 U5341 ( .A(n4444), .Y(n6128) );
  OA22X4 U5342 ( .A0(median_sobel_inst_n435), .A1(n6135), .B0(
        median_sobel_inst_n263), .B1(n6096), .Y(n5856) );
  BUFX20 U5343 ( .A(n3104), .Y(n6096) );
  NAND2X2 U5344 ( .A(n6319), .B(n6313), .Y(n6321) );
  NAND2X2 U5345 ( .A(median_sobel_inst_net64424), .B(n6139), .Y(n5943) );
  NAND2X6 U5347 ( .A(n5643), .B(n4023), .Y(n4034) );
  NAND2X4 U5348 ( .A(n6923), .B(n6419), .Y(n4023) );
  AOI2BB2X2 U5349 ( .B0(n6265), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .A0N(n6264), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n106), .Y(n6257) );
  NAND3X2 U5350 ( .A(n5484), .B(n5483), .C(n6838), .Y(n5485) );
  NOR2X8 U5351 ( .A(n3952), .B(n3953), .Y(n4130) );
  OAI21X1 U5352 ( .A0(n6372), .A1(n5491), .B0(n5490), .Y(n5496) );
  AOI21X4 U5353 ( .A0(n4012), .A1(n4753), .B0(n4011), .Y(n6372) );
  AOI22X1 U5354 ( .A0(n5700), .A1(conv_inst_conv_2_r[16]), .B0(
        conv_inst_conv_1_r[16]), .B1(n5699), .Y(n5702) );
  CLKINVX1 U5355 ( .A(n4521), .Y(n4522) );
  NAND2X2 U5356 ( .A(median_sobel_inst_u_median_filter_submodule_net62055), 
        .B(n4205), .Y(n4172) );
  NAND3X2 U5358 ( .A(n6513), .B(n6512), .C(n6511), .Y(n1457) );
  OR2X4 U5359 ( .A(median_sobel_inst_u_median_filter_submodule_n165), .B(
        median_sobel_inst_u_median_filter_submodule_n395), .Y(n5303) );
  AOI21X4 U5360 ( .A0(n5692), .A1(n3827), .B0(n3826), .Y(n3830) );
  NOR2X2 U5361 ( .A(n5688), .B(n3825), .Y(n3827) );
  AOI21X1 U5362 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n50), .B0(n4346), .Y(
        n4345) );
  AND2X2 U5363 ( .A(n6673), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net41157), .Y(n4346) );
  AOI22X2 U5365 ( .A0(n6149), .A1(median_sobel_inst_data_g_r[3]), .B0(n6151), 
        .B1(median_sobel_inst_data_g_r[4]), .Y(n6154) );
  XOR2X4 U5368 ( .A(n6432), .B(n6431), .Y(conv_inst_data_abc_w[8]) );
  XOR2X4 U5369 ( .A(input_data_ready_r[7]), .B(n4244), .Y(n4245) );
  XNOR2X2 U5370 ( .A(input_data_ready_r[23]), .B(n5961), .Y(n4244) );
  OAI22X1 U5371 ( .A0(n6502), .A1(n6501), .B0(n863), .B1(x_r[2]), .Y(n6503) );
  AOI21X1 U5372 ( .A0(x_plus_two_r[1]), .A1(n863), .B0(n6932), .Y(n6501) );
  NAND2X1 U5373 ( .A(n5700), .B(conv_inst_n64), .Y(n3522) );
  NAND2X4 U5374 ( .A(n5428), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n37), .Y(n5427) );
  NAND2X4 U5375 ( .A(n4797), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5428)
         );
  INVX3 U5376 ( .A(n5643), .Y(n4029) );
  INVX12 U5378 ( .A(n3105), .Y(n3461) );
  NOR2X1 U5379 ( .A(n6533), .B(n6509), .Y(n6512) );
  OAI22X1 U5380 ( .A0(n820), .A1(n6508), .B0(n6507), .B1(n3455), .Y(n6509) );
  INVX3 U5381 ( .A(median_sobel_inst_u_median_filter_submodule_net54975), .Y(
        n6465) );
  NOR2X4 U5382 ( .A(n5569), .B(conv_inst_n42), .Y(n5195) );
  AOI22X2 U5383 ( .A0(n6173), .A1(median_sobel_inst_data_g_r[4]), .B0(n6168), 
        .B1(median_sobel_inst_data_g_r[3]), .Y(n6178) );
  NAND2X2 U5384 ( .A(n6274), .B(n4227), .Y(n4228) );
  AOI21X2 U5385 ( .A0(n6319), .A1(n6318), .B0(n6317), .Y(n6320) );
  CLKINVX1 U5386 ( .A(median_sobel_inst_u_median_filter_submodule_n281), .Y(
        n3647) );
  OAI21X4 U5387 ( .A0(n3825), .A1(n5689), .B0(n3824), .Y(n3826) );
  AOI21X2 U5388 ( .A0(n3998), .A1(n5504), .B0(n3823), .Y(n3824) );
  NAND2X2 U5390 ( .A(n5498), .B(n3998), .Y(n3825) );
  INVX3 U5391 ( .A(n5497), .Y(n3998) );
  INVX8 U5392 ( .A(n3528), .Y(n6480) );
  NAND2X2 U5394 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n5685)
         );
  OAI21X4 U5395 ( .A0(n6350), .A1(n6349), .B0(n6348), .Y(n6351) );
  NAND2X1 U5396 ( .A(n6343), .B(n6346), .Y(n6349) );
  AOI21X2 U5397 ( .A0(n6347), .A1(n6346), .B0(n6345), .Y(n6348) );
  OAI21X4 U5398 ( .A0(n6322), .A1(n6321), .B0(n6320), .Y(n6324) );
  NAND2X4 U5399 ( .A(n4175), .B(
        median_sobel_inst_u_median_filter_submodule_n24), .Y(n3497) );
  NOR2X2 U5400 ( .A(n5993), .B(median_sobel_inst_data_h_r[1]), .Y(n5995) );
  NAND2X2 U5401 ( .A(n4189), .B(n3719), .Y(n3718) );
  NAND2X4 U5402 ( .A(n882), .B(n5828), .Y(n4254) );
  NAND2X4 U5403 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), 
        .Y(n4391) );
  NOR2X4 U5404 ( .A(n4408), .B(n4510), .Y(n3953) );
  OAI21X2 U5406 ( .A0(n4884), .A1(n5040), .B0(n4883), .Y(n6339) );
  NAND2X6 U5407 ( .A(median_sobel_inst_u_sober_compare_submodule_n63), .B(
        n6681), .Y(n4550) );
  NAND2X4 U5408 ( .A(n4768), .B(n5178), .Y(n5621) );
  NOR2X4 U5409 ( .A(n6195), .B(n5624), .Y(n6270) );
  NAND2X4 U5410 ( .A(n3540), .B(n3542), .Y(n3492) );
  NAND4X2 U5411 ( .A(n6160), .B(n6159), .C(n6158), .D(
        median_sobel_inst_data_g_r[5]), .Y(n6161) );
  NAND2BX2 U5412 ( .AN(median_sobel_inst_u_median_filter_submodule_n689), .B(
        median_sobel_inst_u_median_filter_submodule_n690), .Y(n6202) );
  NAND2X2 U5413 ( .A(n3533), .B(n3534), .Y(n3498) );
  NOR2X2 U5414 ( .A(median_sobel_inst_u_median_filter_submodule_net41723), .B(
        median_sobel_inst_u_median_filter_submodule_n203), .Y(n4217) );
  NAND2X6 U5416 ( .A(n4132), .B(n4133), .Y(n3673) );
  NOR2X2 U5417 ( .A(n6569), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n3925) );
  NAND2X2 U5418 ( .A(conv_inst_data_bcd_2_r[7]), .B(conv_inst_conv_2_r[7]), 
        .Y(n4450) );
  CLKINVX1 U5419 ( .A(n5283), .Y(n3972) );
  NOR2X4 U5420 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), .Y(n5120) );
  NOR2X4 U5421 ( .A(n4899), .B(n4901), .Y(n5121) );
  NAND2BX1 U5422 ( .AN(n3480), .B(n6581), .Y(n5462) );
  INVXL U5423 ( .A(n5461), .Y(n4928) );
  OAI22X1 U5424 ( .A0(n6487), .A1(n6486), .B0(n7900), .B1(n6580), .Y(n6489) );
  AOI21XL U5425 ( .A0(n6485), .A1(x_r[2]), .B0(n6502), .Y(n6487) );
  NAND2XL U5426 ( .A(n6504), .B(n6708), .Y(n6488) );
  NOR2X2 U5427 ( .A(n6687), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n4194) );
  NAND2X1 U5428 ( .A(n6687), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n4198) );
  NOR3XL U5429 ( .A(n4599), .B(n889), .C(n869), .Y(n4600) );
  NOR2X2 U5430 ( .A(n6704), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n4910) );
  NOR2X2 U5431 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .Y(n6337) );
  NAND2X2 U5432 ( .A(n3678), .B(n3677), .Y(n3676) );
  NAND2X1 U5433 ( .A(conv_inst_conv_4_r[9]), .B(n3468), .Y(n3677) );
  NAND3X2 U5434 ( .A(n3849), .B(n3850), .C(n3848), .Y(n4119) );
  NAND2XL U5435 ( .A(n6526), .B(n7900), .Y(n6527) );
  CLKINVX1 U5437 ( .A(n6002), .Y(n6004) );
  OAI22X1 U5438 ( .A0(median_sobel_inst_n411), .A1(n6133), .B0(
        median_sobel_inst_n435), .B1(n6132), .Y(n5981) );
  INVXL U5439 ( .A(n4393), .Y(n4396) );
  INVX1 U5440 ( .A(n4394), .Y(n4395) );
  NAND2X2 U5441 ( .A(n4327), .B(n6570), .Y(n4328) );
  OAI21X2 U5443 ( .A0(n4392), .A1(n5330), .B0(n4391), .Y(n4586) );
  OR2X2 U5444 ( .A(n6410), .B(median_sobel_inst_u_sober_compare_submodule_n77), 
        .Y(n3583) );
  NOR2X1 U5445 ( .A(n6562), .B(n6701), .Y(n5339) );
  NAND2X1 U5446 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n136), .Y(n5337) );
  NAND2X2 U5447 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(n4746) );
  NAND2BX2 U5449 ( .AN(n3477), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n5260) );
  INVXL U5450 ( .A(median_sobel_inst_n640), .Y(n4142) );
  INVX1 U5451 ( .A(n4287), .Y(n4288) );
  NOR2X2 U5452 ( .A(n6682), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n4678) );
  NAND2X1 U5453 ( .A(n6682), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n4679) );
  NOR2X1 U5454 ( .A(n6556), .B(n6666), .Y(n5528) );
  NOR2X1 U5455 ( .A(n6951), .B(n6946), .Y(n5526) );
  NAND2BX1 U5456 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), 
        .B(n6946), .Y(n5525) );
  NAND2XL U5457 ( .A(n6556), .B(n6666), .Y(n5529) );
  NAND2X2 U5458 ( .A(n4770), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n29), .Y(n4771) );
  NOR2X1 U5460 ( .A(n892), .B(n3448), .Y(n6479) );
  INVXL U5461 ( .A(median_sobel_inst_u_sober_compare_submodule_n214), .Y(n4653) );
  CLKINVX1 U5462 ( .A(n4865), .Y(n4626) );
  CLKINVX1 U5463 ( .A(n6312), .Y(n5406) );
  NAND2X2 U5464 ( .A(median_sobel_inst_n640), .B(n6136), .Y(n5941) );
  NAND2X2 U5465 ( .A(n6569), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n5296) );
  NAND2X4 U5466 ( .A(n5547), .B(n5303), .Y(n6267) );
  INVXL U5467 ( .A(median_sobel_inst_u_sober_compare_submodule_n212), .Y(n4657) );
  CLKINVX2 U5468 ( .A(n4550), .Y(n4660) );
  CLKINVX1 U5469 ( .A(n4690), .Y(n4736) );
  NAND2X2 U5470 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n127), .Y(n4988) );
  NOR2X4 U5471 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), .Y(
        n4729) );
  NAND2X4 U5473 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N1310), .Y(n4694) );
  NAND2X1 U5474 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(n4420) );
  NOR2X2 U5475 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6378) );
  NAND2X1 U5476 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6376) );
  NOR2X2 U5477 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n6356) );
  NAND2X1 U5478 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n108), .Y(n4841) );
  NAND2X1 U5479 ( .A(median_sobel_inst_n64), .B(n5979), .Y(n5960) );
  INVX3 U5480 ( .A(n6195), .Y(n4993) );
  NAND2X4 U5481 ( .A(n5303), .B(n4714), .Y(n6200) );
  NOR2BX2 U5482 ( .AN(median_sobel_inst_n319), .B(median_sobel_inst_n153), .Y(
        n4612) );
  OAI21X2 U5483 ( .A0(n4055), .A1(n6546), .B0(n6446), .Y(n4056) );
  NAND2X1 U5484 ( .A(input_data_ready_r[31]), .B(input_data_ready_r[15]), .Y(
        n4057) );
  AOI22X2 U5485 ( .A0(n5699), .A1(conv_inst_conv_1_r[4]), .B0(
        conv_inst_conv_2_r[4]), .B1(n5700), .Y(n3861) );
  XOR2X1 U5486 ( .A(conv_inst_data_abc_1_r[10]), .B(conv_inst_conv_1_r[10]), 
        .Y(n5221) );
  AND2X2 U5487 ( .A(conv_inst_conv_4_r[11]), .B(conv_inst_n37), .Y(n3657) );
  NAND2X2 U5488 ( .A(n4259), .B(n4258), .Y(n3514) );
  NAND2X1 U5489 ( .A(n5312), .B(n5311), .Y(n5349) );
  CLKINVX1 U5490 ( .A(n3842), .Y(n3841) );
  NOR2X1 U5491 ( .A(n793), .B(n5803), .Y(n3757) );
  OAI21XL U5492 ( .A0(n8110), .A1(n6103), .B0(n3752), .Y(n3756) );
  NOR2X2 U5493 ( .A(n6099), .B(n6026), .Y(n2701) );
  NAND2BX1 U5495 ( .AN(median_sobel_inst_n253), .B(n6122), .Y(n6125) );
  NOR2X1 U5496 ( .A(n3491), .B(n4568), .Y(n4569) );
  AOI2BB2X2 U5497 ( .B0(n6140), .B1(median_sobel_inst_n637), .A0N(
        median_sobel_inst_n356), .A1N(n5834), .Y(n5812) );
  MX2X1 U5499 ( .A(median_sobel_inst_n620), .B(median_sobel_inst_net64417), 
        .S0(n6096), .Y(median_sobel_inst_n569) );
  AOI2BB2X1 U5500 ( .B0(n6265), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .A0N(n6264), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n105), .Y(n6256) );
  NAND2X1 U5501 ( .A(n6270), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .Y(n5228) );
  AOI22X2 U5502 ( .A0(n5979), .A1(median_sobel_inst_n627), .B0(
        median_sobel_inst_n645), .B1(n5541), .Y(n5783) );
  MXI2X1 U5503 ( .A(n5740), .B(n6884), .S0(n5746), .Y(n439) );
  NAND2X1 U5504 ( .A(median_sobel_inst_net43895), .B(n6077), .Y(n5640) );
  NAND2BX1 U5505 ( .AN(median_sobel_inst_n439), .B(n3434), .Y(n5535) );
  NAND2X1 U5506 ( .A(median_sobel_inst_n26), .B(n6069), .Y(n5537) );
  AOI2BB2X2 U5507 ( .B0(median_sobel_inst_n53), .B1(n6146), .A0N(
        median_sobel_inst_n415), .A1N(n5834), .Y(n5536) );
  MX2X1 U5508 ( .A(median_sobel_inst_n135), .B(n6920), .S0(n6139), .Y(
        median_sobel_inst_n530) );
  NAND2BX1 U5509 ( .AN(median_sobel_inst_n351), .B(n6060), .Y(n5930) );
  OA22X2 U5510 ( .A0(median_sobel_inst_n383), .A1(n6048), .B0(
        median_sobel_inst_n375), .B1(n6147), .Y(n5928) );
  OR2X2 U5511 ( .A(median_sobel_inst_n415), .B(n6135), .Y(n5823) );
  NAND4X4 U5512 ( .A(n5154), .B(n5153), .C(n5152), .D(n5151), .Y(
        median_sobel_inst_data_f_r[7]) );
  NAND2BX1 U5513 ( .AN(median_sobel_inst_n351), .B(n6090), .Y(n5821) );
  OA22X2 U5514 ( .A0(median_sobel_inst_n383), .A1(n6135), .B0(
        median_sobel_inst_n391), .B1(n4340), .Y(n5820) );
  NAND2BX1 U5515 ( .AN(median_sobel_inst_n360), .B(n6122), .Y(n5388) );
  NAND2BX1 U5516 ( .AN(median_sobel_inst_n389), .B(n4630), .Y(n5597) );
  AOI2BB2X2 U5517 ( .B0(n6140), .B1(median_sobel_inst_net64417), .A0N(
        median_sobel_inst_n357), .A1N(n2792), .Y(n5595) );
  NAND2BX2 U5518 ( .AN(median_sobel_inst_n349), .B(n6146), .Y(n5596) );
  NAND3X2 U5519 ( .A(n5857), .B(n5856), .C(n5855), .Y(
        median_sobel_inst_data_i_r[4]) );
  OR2X2 U5520 ( .A(median_sobel_inst_n374), .B(n6064), .Y(n4085) );
  MX2X1 U5521 ( .A(median_sobel_inst_G[40]), .B(
        median_sobel_inst_u_sober_compare_submodule_n218), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n103) );
  MX2X1 U5522 ( .A(median_sobel_inst_G[37]), .B(
        median_sobel_inst_u_sober_compare_submodule_n217), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n100) );
  MX2X1 U5523 ( .A(median_sobel_inst_G[35]), .B(
        median_sobel_inst_u_sober_compare_submodule_n216), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n98) );
  MX2X1 U5524 ( .A(median_sobel_inst_G[13]), .B(
        median_sobel_inst_u_sober_compare_submodule_n209), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n120) );
  MX2X1 U5525 ( .A(median_sobel_inst_G[18]), .B(
        median_sobel_inst_u_sober_compare_submodule_n203), .S0(n5985), .Y(
        median_sobel_inst_u_sober_compare_submodule_n125) );
  MX2X1 U5526 ( .A(median_sobel_inst_G[15]), .B(
        median_sobel_inst_u_sober_compare_submodule_n201), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n122) );
  MXI2X1 U5527 ( .A(median_sobel_inst_u_sober_compare_submodule_n81), .B(n6829), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n133) );
  MXI2X1 U5528 ( .A(median_sobel_inst_u_sober_compare_submodule_n79), .B(n6828), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n131) );
  NAND2BX1 U5529 ( .AN(median_sobel_inst_n392), .B(n6140), .Y(n5568) );
  OR2X2 U5530 ( .A(median_sobel_inst_n377), .B(n6064), .Y(n5418) );
  NAND2X1 U5531 ( .A(median_sobel_inst_n70), .B(n5944), .Y(n5417) );
  OA22X2 U5532 ( .A0(median_sobel_inst_n355), .A1(n2792), .B0(
        median_sobel_inst_n379), .B1(n6147), .Y(n5797) );
  AOI2BB2X2 U5533 ( .B0(n6279), .B1(
        median_sobel_inst_u_median_filter_submodule_n149), .A0N(n2931), .A1N(
        n6278), .Y(n6280) );
  INVX3 U5534 ( .A(n6274), .Y(n3643) );
  NAND2XL U5535 ( .A(n437), .B(n465), .Y(n5061) );
  INVX1 U5536 ( .A(n4463), .Y(n4465) );
  NOR2X1 U5537 ( .A(n5710), .B(n6567), .Y(n5589) );
  NAND2X2 U5538 ( .A(median_sobel_inst_u_median_filter_submodule_net22629), 
        .B(n3488), .Y(n4175) );
  OR2X2 U5539 ( .A(median_sobel_inst_u_median_filter_submodule_n53), .B(
        median_sobel_inst_u_median_filter_submodule_net54874), .Y(n4179) );
  OAI2BB2X2 U5540 ( .B0(median_sobel_inst_u_median_filter_submodule_n24), .B1(
        n3709), .A0N(median_sobel_inst_u_median_filter_submodule_net22631), 
        .A1N(median_sobel_inst_u_median_filter_submodule_b1_r_5_), .Y(n4176)
         );
  NAND2BX2 U5542 ( .AN(median_sobel_inst_u_sober_compare_submodule_net60499), 
        .B(median_sobel_inst_u_sober_compare_submodule_n19), .Y(n4484) );
  NAND2X4 U5543 ( .A(median_sobel_inst_u_median_filter_submodule_a5_r[4]), .B(
        n3647), .Y(n3651) );
  NOR2X1 U5544 ( .A(median_sobel_inst_u_median_filter_submodule_n126), .B(
        median_sobel_inst_u_median_filter_submodule_net22670), .Y(n3876) );
  NOR2X1 U5545 ( .A(median_sobel_inst_u_median_filter_submodule_n685), .B(
        median_sobel_inst_u_median_filter_submodule_n358), .Y(n6206) );
  OA22X1 U5546 ( .A0(n6697), .A1(
        median_sobel_inst_u_median_filter_submodule_n682), .B0(
        median_sobel_inst_u_median_filter_submodule_n358), .B1(
        median_sobel_inst_u_median_filter_submodule_n680), .Y(n6228) );
  INVX1 U5547 ( .A(median_sobel_inst_u_median_filter_submodule_n286), .Y(n6230) );
  AND2X4 U5548 ( .A(n3636), .B(n3638), .Y(n3635) );
  NAND2BX1 U5549 ( .AN(n4159), .B(n4160), .Y(n3638) );
  NAND2X2 U5550 ( .A(n3563), .B(n3560), .Y(n3559) );
  INVX1 U5551 ( .A(n4369), .Y(n3560) );
  AOI2BB2X1 U5552 ( .B0(n6694), .B1(
        median_sobel_inst_u_sober_compare_submodule_net60499), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n3), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n54), .Y(n4480) );
  INVX3 U5553 ( .A(n6848), .Y(n3885) );
  AOI2BB2X1 U5554 ( .B0(median_sobel_inst_u_median_filter_submodule_n689), 
        .B1(median_sobel_inst_u_median_filter_submodule_n348), .A0N(n6709), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n680), .Y(n6242) );
  NAND2XL U5555 ( .A(median_sobel_inst_u_median_filter_submodule_n352), .B(
        median_sobel_inst_u_median_filter_submodule_n236), .Y(n6245) );
  NOR2X4 U5557 ( .A(n5912), .B(n847), .Y(n4021) );
  NOR2X4 U5558 ( .A(n6923), .B(n6419), .Y(n4020) );
  NOR2X1 U5559 ( .A(n4124), .B(n889), .Y(n3759) );
  NOR2X4 U5560 ( .A(conv_inst_conv_4_r[2]), .B(conv_inst_data_bcd_4_r[2]), .Y(
        n5369) );
  NAND2X2 U5561 ( .A(conv_inst_data_bcd_4_r[2]), .B(conv_inst_conv_4_r[2]), 
        .Y(n5370) );
  NOR2X4 U5562 ( .A(n5120), .B(n5124), .Y(n5127) );
  OR2X2 U5563 ( .A(n3507), .B(n3469), .Y(n3678) );
  NOR2X4 U5564 ( .A(conv_inst_data_abc_3_r[2]), .B(conv_inst_conv_3_r[2]), .Y(
        n4393) );
  AND2X4 U5565 ( .A(conv_inst_data_bcd_2_r[3]), .B(conv_inst_conv_2_r[3]), .Y(
        n4466) );
  CLKINVX1 U5566 ( .A(n3900), .Y(n3622) );
  AND2X2 U5568 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n32), .B(
        n5274), .Y(n4782) );
  NOR2X2 U5569 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), .Y(
        n4524) );
  OAI21X2 U5570 ( .A0(n5516), .A1(n5522), .B0(n5517), .Y(n6308) );
  NAND2BX2 U5571 ( .AN(n3625), .B(n3729), .Y(n4132) );
  NAND2X2 U5572 ( .A(n3728), .B(n3730), .Y(n3625) );
  NAND2X2 U5573 ( .A(conv_inst_conv_3_r[7]), .B(n3731), .Y(n3730) );
  AND2X2 U5574 ( .A(n6686), .B(n6782), .Y(n3712) );
  NAND2BX1 U5575 ( .AN(median_sobel_inst_n325), .B(n4305), .Y(n4304) );
  NOR2X1 U5576 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .Y(n6352) );
  NOR2BX1 U5578 ( .AN(median_sobel_inst_u_median_filter_submodule_n212), .B(
        median_sobel_inst_u_median_filter_submodule_a5_r[6]), .Y(n4215) );
  NAND2BX1 U5579 ( .AN(n6939), .B(n6726), .Y(n3542) );
  OAI22XL U5580 ( .A0(n6571), .A1(
        median_sobel_inst_u_median_filter_submodule_n390), .B0(
        median_sobel_inst_u_median_filter_submodule_n352), .B1(
        median_sobel_inst_u_median_filter_submodule_n236), .Y(n6250) );
  NAND2X2 U5581 ( .A(n4458), .B(n4450), .Y(n3772) );
  NAND2X2 U5582 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), 
        .Y(n4394) );
  NAND2X2 U5583 ( .A(n4391), .B(n5330), .Y(n3706) );
  NAND2X2 U5584 ( .A(conv_inst_conv_3_r[3]), .B(conv_inst_n62), .Y(n4397) );
  NAND2X2 U5585 ( .A(conv_inst_data_abc_3_r[7]), .B(conv_inst_conv_3_r[7]), 
        .Y(n4404) );
  NAND2X1 U5586 ( .A(conv_inst_data_abc_3_r[6]), .B(conv_inst_conv_3_r[6]), 
        .Y(n3939) );
  NOR2X4 U5587 ( .A(n5556), .B(n5559), .Y(n4041) );
  OR2X2 U5588 ( .A(n933), .B(n932), .Y(n3700) );
  INVX3 U5589 ( .A(n889), .Y(n4868) );
  NAND2X6 U5590 ( .A(n5367), .B(n5140), .Y(n4432) );
  NAND2XL U5591 ( .A(n6040), .B(n6854), .Y(n3785) );
  NAND2XL U5592 ( .A(n6026), .B(n6897), .Y(n3786) );
  NAND2XL U5593 ( .A(n6099), .B(n6905), .Y(n3787) );
  NOR2X2 U5594 ( .A(n6647), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .Y(n5280) );
  NAND2XL U5595 ( .A(conv_inst_conv_1_r[15]), .B(conv_inst_conv_1_r[14]), .Y(
        n3910) );
  NAND2X1 U5596 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .Y(n6355) );
  OR2X2 U5597 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), .Y(
        n6387) );
  NOR2X6 U5598 ( .A(n3915), .B(n5601), .Y(n4282) );
  NAND3XL U5599 ( .A(n4561), .B(n4868), .C(n4560), .Y(n4565) );
  INVXL U5600 ( .A(n4559), .Y(n4561) );
  NAND2X2 U5601 ( .A(n5884), .B(median_sobel_inst_data_c_r[6]), .Y(n5868) );
  INVXL U5602 ( .A(n5500), .Y(n3823) );
  NAND2XL U5603 ( .A(median_sobel_inst_n661), .B(n4318), .Y(n4319) );
  OAI22XL U5604 ( .A0(n863), .A1(n6523), .B0(n7900), .B1(x_plus_one_r[1]), .Y(
        n3832) );
  NAND2XL U5605 ( .A(n6526), .B(n6708), .Y(n3839) );
  NAND2XL U5606 ( .A(n6099), .B(n6906), .Y(n5792) );
  NAND2XL U5607 ( .A(n6026), .B(n6898), .Y(n5791) );
  NAND2XL U5608 ( .A(n6040), .B(n6855), .Y(n5790) );
  OAI21XL U5609 ( .A0(n6580), .A1(n6708), .B0(n6503), .Y(n6506) );
  NAND3X1 U5610 ( .A(n5745), .B(n5744), .C(n5743), .Y(n5748) );
  NOR2BX1 U5611 ( .AN(n6715), .B(input_data_ready_r[7]), .Y(n4246) );
  INVX3 U5612 ( .A(n6101), .Y(n6026) );
  NAND2XL U5613 ( .A(n6099), .B(n6881), .Y(n6029) );
  NAND2X1 U5614 ( .A(n5944), .B(median_sobel_inst_n640), .Y(n3531) );
  NAND2XL U5617 ( .A(n6040), .B(n6888), .Y(n5759) );
  NOR2X1 U5619 ( .A(n5666), .B(n5665), .Y(n6325) );
  NOR2X2 U5620 ( .A(n5652), .B(n5657), .Y(n6343) );
  NOR2X2 U5621 ( .A(n5521), .B(n5516), .Y(n6305) );
  CLKINVX1 U5622 ( .A(n5513), .Y(n6307) );
  INVXL U5626 ( .A(median_sobel_inst_net64417), .Y(n4146) );
  NOR2X1 U5628 ( .A(n4318), .B(n4300), .Y(n4301) );
  CLKINVX1 U5629 ( .A(n4299), .Y(n3695) );
  INVX1 U5631 ( .A(n5314), .Y(n5315) );
  NAND2X2 U5632 ( .A(conv_inst_data_bcd_2_r[6]), .B(conv_inst_conv_2_r[6]), 
        .Y(n4808) );
  NOR2XL U5633 ( .A(n4459), .B(n4458), .Y(n4455) );
  NOR2XL U5634 ( .A(n4453), .B(n4452), .Y(n4454) );
  BUFX12 U5635 ( .A(n4424), .Y(n5834) );
  CLKINVX1 U5636 ( .A(median_sobel_inst_u_sober_compare_submodule_net62112), 
        .Y(n4529) );
  NOR2X2 U5637 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .Y(n4648) );
  NAND2X2 U5638 ( .A(n4695), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n4001) );
  INVX1 U5639 ( .A(n5688), .Y(n5691) );
  NAND2X2 U5640 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n5694)
         );
  OAI21X2 U5641 ( .A0(n6372), .A1(n6371), .B0(n6370), .Y(n6373) );
  NOR2X4 U5642 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), .Y(n5124) );
  OAI21XL U5643 ( .A0(n3966), .A1(n5120), .B0(n5123), .Y(n3967) );
  NOR2XL U5644 ( .A(n3965), .B(n5120), .Y(n3968) );
  INVX1 U5646 ( .A(median_sobel_inst_n123), .Y(n6035) );
  AND2X4 U5648 ( .A(n5431), .B(n5454), .Y(n6259) );
  NAND2X2 U5649 ( .A(n5455), .B(n5429), .Y(n6260) );
  BUFX8 U5651 ( .A(n856), .Y(n5912) );
  BUFX6 U5652 ( .A(n4752), .Y(n5639) );
  BUFX8 U5653 ( .A(n920), .Y(n5939) );
  CLKINVX2 U5656 ( .A(n5699), .Y(n4150) );
  AND2X2 U5657 ( .A(n4409), .B(conv_inst_n63), .Y(n3663) );
  XNOR2X2 U5658 ( .A(conv_inst_data_abc_3_r[9]), .B(conv_inst_conv_3_r[9]), 
        .Y(n4073) );
  OA22X2 U5659 ( .A0(n5106), .A1(n806), .B0(n5105), .B1(n794), .Y(n4994) );
  NAND2X2 U5660 ( .A(n5588), .B(n5584), .Y(n5710) );
  NAND2X1 U5661 ( .A(n5716), .B(n5733), .Y(n5712) );
  AOI21XL U5662 ( .A0(n4579), .A1(n4550), .B0(n6089), .Y(
        median_sobel_inst_u_sober_compare_submodule_N30) );
  OAI21X1 U5663 ( .A0(n6263), .A1(
        median_sobel_inst_u_median_filter_submodule_n37), .B0(n6262), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[2]) );
  AOI2BB2X1 U5664 ( .B0(n6261), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n114), .A1N(n6260), .Y(
        n6262) );
  OAI21XL U5665 ( .A0(n5547), .A1(n6733), .B0(n5393), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[6]) );
  XNOR2X1 U5666 ( .A(n5284), .B(n5283), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]) );
  OAI22XL U5667 ( .A0(n6103), .A1(n787), .B0(n804), .B1(n5803), .Y(n3792) );
  XNOR2X1 U5668 ( .A(n4698), .B(n3797), .Y(n3735) );
  INVX1 U5669 ( .A(n4915), .Y(n3796) );
  OAI21X1 U5670 ( .A0(n4666), .A1(n4800), .B0(n4802), .Y(n4669) );
  XOR2X1 U5671 ( .A(n4518), .B(n4517), .Y(n4519) );
  XOR2X1 U5672 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]) );
  OAI21XL U5673 ( .A0(n4768), .A1(n6599), .B0(n4767), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[6]) );
  NAND2XL U5674 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), 
        .B(n6190), .Y(n5118) );
  OAI21XL U5675 ( .A0(n6200), .A1(n6808), .B0(n5295), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[4]) );
  INVX1 U5676 ( .A(n5647), .Y(n4984) );
  NAND2XL U5678 ( .A(n5066), .B(n5065), .Y(n5067) );
  OAI21XL U5679 ( .A0(n5547), .A1(n6666), .B0(n4949), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[3]) );
  OAI21XL U5680 ( .A0(n6735), .A1(n6200), .B0(n4764), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[2]) );
  INVXL U5681 ( .A(n5120), .Y(n5057) );
  XNOR2X1 U5682 ( .A(n5131), .B(n3551), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N155) );
  NAND2XL U5683 ( .A(n5014), .B(n5462), .Y(n5015) );
  INVX1 U5684 ( .A(n5463), .Y(n5014) );
  INVXL U5685 ( .A(n5467), .Y(n4927) );
  INVXL U5686 ( .A(n4926), .Y(n4922) );
  AOI2BB1X1 U5687 ( .A0N(n801), .A1N(n3750), .B0(n6042), .Y(n6043) );
  OA21XL U5689 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n37), .A1(
        n5428), .B0(n5427), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1020) );
  OAI21XL U5690 ( .A0(n6721), .A1(n5178), .B0(n5177), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[3]) );
  NOR2X2 U5691 ( .A(n5604), .B(conv_inst_conv_3_r[15]), .Y(n5607) );
  XOR2X1 U5694 ( .A(n3990), .B(n3989), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]) );
  XOR2X1 U5695 ( .A(n3979), .B(n3978), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]) );
  XOR2X1 U5696 ( .A(n3993), .B(n3992), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]) );
  NAND2XL U5697 ( .A(n3991), .B(n4198), .Y(n3992) );
  INVXL U5698 ( .A(n4194), .Y(n3991) );
  NAND2X1 U5699 ( .A(n3998), .B(n5500), .Y(n3999) );
  NOR2X1 U5700 ( .A(n5688), .B(n3995), .Y(n3997) );
  XOR2X1 U5701 ( .A(n3830), .B(n3829), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N116) );
  INVX1 U5702 ( .A(n5501), .Y(n3828) );
  XOR2X1 U5703 ( .A(n3924), .B(n3923), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]) );
  AOI21X1 U5704 ( .A0(n5299), .A1(n4909), .B0(n4908), .Y(n4914) );
  OAI21XL U5705 ( .A0(median_sobel_inst_u_median_filter_submodule_n37), .A1(
        n5454), .B0(n4293), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[2]) );
  XOR2X1 U5706 ( .A(n6351), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N23) );
  NOR3X1 U5707 ( .A(n4719), .B(n4718), .C(n5601), .Y(conv_inst_N241) );
  CLKINVX1 U5708 ( .A(n5736), .Y(n5731) );
  OAI21X2 U5709 ( .A0(n5728), .A1(cnt[9]), .B0(n5733), .Y(n5732) );
  OAI21X1 U5710 ( .A0(n2948), .A1(n4886), .B0(n4885), .Y(n4888) );
  INVX1 U5711 ( .A(n6339), .Y(n4885) );
  OAI21XL U5712 ( .A0(n5621), .A1(
        median_sobel_inst_u_median_filter_submodule_n61), .B0(n4674), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[7]) );
  AOI21X1 U5713 ( .A0(n5476), .A1(n4894), .B0(n4893), .Y(n4898) );
  XOR2X2 U5714 ( .A(n3518), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N330) );
  AND2X2 U5715 ( .A(n5706), .B(n5708), .Y(n5705) );
  NOR2X1 U5716 ( .A(n3543), .B(n5619), .Y(conv_inst_N244) );
  XOR2X1 U5717 ( .A(n4814), .B(n4813), .Y(n3543) );
  AOI2BB1X1 U5718 ( .A0N(n6075), .A1N(n6074), .B0(n6105), .Y(N690) );
  OAI21XL U5719 ( .A0(n809), .A1(n6103), .B0(n6073), .Y(n6074) );
  NAND3X1 U5720 ( .A(n5071), .B(n5070), .C(n5069), .Y(n5072) );
  OAI21X2 U5721 ( .A0(n6284), .A1(n6283), .B0(n6282), .Y(
        median_sobel_inst_u_median_filter_submodule_n703) );
  NAND2X1 U5722 ( .A(n3674), .B(n4117), .Y(n4118) );
  NOR2X2 U5723 ( .A(n5748), .B(n5746), .Y(N789) );
  AOI2BB1X1 U5724 ( .A0N(n784), .A1N(n6103), .B0(n6058), .Y(n6059) );
  NAND2XL U5725 ( .A(n6083), .B(n6854), .Y(n6056) );
  OAI22XL U5726 ( .A0(median_sobel_inst_u_median_filter_submodule_n119), .A1(
        n4714), .B0(n5303), .B1(n3476), .Y(n4817) );
  NAND2XL U5727 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), 
        .B(n4815), .Y(n4816) );
  OAI21XL U5728 ( .A0(n4768), .A1(n6573), .B0(n4751), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[4]) );
  OAI22XL U5729 ( .A0(n5549), .A1(n3738), .B0(n6807), .B1(n5548), .Y(
        conv_inst_N125) );
  AOI2BB1X1 U5730 ( .A0N(n4208), .A1N(n4207), .B0(n5839), .Y(N711) );
  OAI21XL U5731 ( .A0(n793), .A1(n3750), .B0(n4206), .Y(n4207) );
  NAND3X1 U5732 ( .A(n6004), .B(n6003), .C(median_sobel_inst_data_h_r[7]), .Y(
        n6007) );
  NAND3X1 U5733 ( .A(n6005), .B(median_sobel_inst_data_h_r[7]), .C(
        median_sobel_inst_data_h_r[6]), .Y(n6006) );
  NAND2X2 U5734 ( .A(n6001), .B(n6000), .Y(n6008) );
  NAND3X2 U5735 ( .A(n2840), .B(n2841), .C(n6635), .Y(n3723) );
  AOI2BB1X1 U5736 ( .A0N(n5806), .A1N(n5805), .B0(n5839), .Y(N714) );
  NOR2X1 U5737 ( .A(n809), .B(n5803), .Y(n5806) );
  OAI21XL U5738 ( .A0(n778), .A1(n3750), .B0(n5804), .Y(n5805) );
  AOI2BB1X1 U5739 ( .A0N(n5751), .A1N(n5750), .B0(n5839), .Y(N718) );
  NOR2X1 U5740 ( .A(n806), .B(n5803), .Y(n5751) );
  NAND2X1 U5741 ( .A(median_sobel_inst_n30), .B(n5979), .Y(n5983) );
  NOR2X2 U5742 ( .A(n5981), .B(n5980), .Y(n5982) );
  OAI21XL U5743 ( .A0(median_sobel_inst_u_median_filter_submodule_n61), .A1(
        n6197), .B0(n6196), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[7]) );
  OAI21XL U5744 ( .A0(median_sobel_inst_u_median_filter_submodule_n56), .A1(
        n6269), .B0(n5116), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[1]) );
  XOR2X1 U5745 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N16) );
  OAI21XL U5746 ( .A0(n6842), .A1(n6200), .B0(n6199), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[5]) );
  NAND3X1 U5747 ( .A(n6273), .B(n6272), .C(n6271), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[4]) );
  XOR2X1 U5749 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N26) );
  NOR3X1 U5750 ( .A(n4528), .B(n4527), .C(n5601), .Y(conv_inst_N224) );
  INVX1 U5751 ( .A(n4534), .Y(n4528) );
  NAND2XL U5752 ( .A(n5226), .B(n5671), .Y(n5227) );
  INVX1 U5753 ( .A(n4932), .Y(n4754) );
  NAND2X2 U5754 ( .A(n3579), .B(
        median_sobel_inst_u_sober_compare_submodule_n208), .Y(n3581) );
  NAND2XL U5755 ( .A(n5338), .B(n5337), .Y(n5340) );
  INVX1 U5756 ( .A(n5336), .Y(n5338) );
  NAND2XL U5757 ( .A(n4745), .B(n4744), .Y(n4747) );
  XOR2X1 U5758 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N36) );
  INVXL U5759 ( .A(n5259), .Y(n5261) );
  INVX1 U5761 ( .A(n4592), .Y(n4540) );
  NAND2X1 U5762 ( .A(median_sobel_inst_n437), .B(n5979), .Y(n4144) );
  NAND2XL U5764 ( .A(n4874), .B(n4877), .Y(n4875) );
  OA21XL U5765 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_N480), .A1(
        n5459), .B0(n5458), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N730) );
  NAND2XL U5766 ( .A(n5220), .B(n6461), .Y(n4290) );
  NAND2XL U5767 ( .A(n4779), .B(n5525), .Y(n4780) );
  INVXL U5768 ( .A(n5526), .Y(n4779) );
  INVX1 U5769 ( .A(n4678), .Y(n4680) );
  XOR2X1 U5770 ( .A(n6332), .B(n4139), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N300) );
  NAND2XL U5771 ( .A(n5530), .B(n5529), .Y(n5531) );
  MX2X1 U5772 ( .A(median_sobel_inst_n629), .B(n6865), .S0(n4630), .Y(
        median_sobel_inst_n610) );
  NAND2XL U5773 ( .A(n4739), .B(n4738), .Y(n4740) );
  INVXL U5774 ( .A(n4737), .Y(n4739) );
  NAND2XL U5775 ( .A(n5029), .B(n6377), .Y(n4880) );
  INVXL U5776 ( .A(n6375), .Y(n4879) );
  OAI22XL U5777 ( .A0(n6194), .A1(n6813), .B0(
        median_sobel_inst_u_median_filter_submodule_n46), .B1(n6197), .Y(n5625) );
  MX2X1 U5778 ( .A(n6793), .B(n2718), .S0(n6096), .Y(median_sobel_inst_n574)
         );
  MX2X1 U5779 ( .A(n6794), .B(median_sobel_inst_n627), .S0(n6048), .Y(
        median_sobel_inst_n534) );
  MX2X1 U5780 ( .A(median_sobel_inst_n93), .B(n6921), .S0(n4630), .Y(
        median_sobel_inst_n528) );
  INVXL U5781 ( .A(n4917), .Y(n4699) );
  AND2X2 U5782 ( .A(n5446), .B(result_w[13]), .Y(out_data_wait_r[13]) );
  AND2X2 U5783 ( .A(n5446), .B(result_w[12]), .Y(out_data_wait_r[12]) );
  AND2X2 U5784 ( .A(n5446), .B(result_w[11]), .Y(out_data_wait_r[11]) );
  NAND3X1 U5785 ( .A(n5446), .B(median_sobel_inst_n319), .C(conv_out_valid_w), 
        .Y(out_valid_wait_r) );
  MX2X1 U5786 ( .A(median_sobel_inst_n381), .B(n6919), .S0(n3462), .Y(
        median_sobel_inst_n527) );
  NAND2BX1 U5787 ( .AN(median_sobel_inst_n364), .B(n6140), .Y(n6082) );
  NAND2X2 U5788 ( .A(n6079), .B(n6078), .Y(n6080) );
  AOI2BB2X2 U5789 ( .B0(n6122), .B1(median_sobel_inst_n123), .A0N(
        median_sobel_inst_n369), .A1N(n6132), .Y(n6033) );
  MXI2X1 U5790 ( .A(median_sobel_inst_n231), .B(n6633), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[53]) );
  NOR2X1 U5791 ( .A(n2969), .B(n6882), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1220) );
  MXI2X1 U5792 ( .A(median_sobel_inst_n220), .B(n5828), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[43]) );
  MXI2X1 U5793 ( .A(median_sobel_inst_n223), .B(n6846), .S0(n6077), .Y(
        median_sobel_inst_med_sobel_e_wait_r[46]) );
  NOR2X1 U5794 ( .A(n3275), .B(n6883), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1210) );
  NOR2X1 U5795 ( .A(n3275), .B(n6908), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1170) );
  NOR2X1 U5796 ( .A(n3275), .B(n6893), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1250) );
  AND2X2 U5797 ( .A(n4785), .B(n6814), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1260) );
  INVXL U5798 ( .A(n5246), .Y(n5247) );
  MXI2X1 U5799 ( .A(n837), .B(median_sobel_inst_n247), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[67]) );
  OAI21XL U5800 ( .A0(n6599), .A1(n4993), .B0(n4992), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[6]) );
  INVXL U5801 ( .A(n5053), .Y(n5055) );
  NAND2X1 U5802 ( .A(n4660), .B(
        median_sobel_inst_u_sober_compare_submodule_n204), .Y(n4654) );
  OAI21XL U5803 ( .A0(n5547), .A1(n6844), .B0(n4942), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[0]) );
  OAI21XL U5804 ( .A0(median_sobel_inst_u_median_filter_submodule_n48), .A1(
        n5178), .B0(n4761), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[5]) );
  NAND3X2 U5805 ( .A(n6397), .B(n6396), .C(n6395), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]) );
  OAI21XL U5806 ( .A0(n4993), .A1(n6611), .B0(n4858), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[2]) );
  OA22X1 U5807 ( .A0(n6194), .A1(
        median_sobel_inst_u_median_filter_submodule_n113), .B0(
        median_sobel_inst_u_median_filter_submodule_n36), .B1(n6197), .Y(n4858) );
  OAI22XL U5808 ( .A0(n5455), .A1(
        median_sobel_inst_u_median_filter_submodule_n107), .B0(
        median_sobel_inst_u_median_filter_submodule_n45), .B1(n5454), .Y(n5456) );
  MX2X1 U5809 ( .A(median_sobel_inst_n321), .B(n6948), .S0(n3434), .Y(
        median_sobel_inst_n505) );
  OAI21XL U5810 ( .A0(n6721), .A1(n6194), .B0(n5555), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[3]) );
  OAI21XL U5811 ( .A0(n6200), .A1(n6818), .B0(n4715), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[6]) );
  OAI21XL U5812 ( .A0(n5547), .A1(n6729), .B0(n5546), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[7]) );
  OAI21XL U5813 ( .A0(n6722), .A1(n6200), .B0(n4766), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[7]) );
  XNOR2X2 U5814 ( .A(n6323), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]) );
  OA22X2 U5815 ( .A0(median_sobel_inst_n379), .A1(n6096), .B0(
        median_sobel_inst_n371), .B1(n6135), .Y(n5954) );
  OR2X2 U5816 ( .A(median_sobel_inst_n404), .B(n6135), .Y(n5942) );
  NAND2X2 U5817 ( .A(median_sobel_inst_n637), .B(n6077), .Y(n5940) );
  OAI21XL U5818 ( .A0(n6200), .A1(n6562), .B0(n4781), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[0]) );
  OAI21X2 U5819 ( .A0(n5736), .A1(cnt[10]), .B0(n5734), .Y(n474) );
  NAND2X1 U5820 ( .A(n4660), .B(
        median_sobel_inst_u_sober_compare_submodule_n200), .Y(n4575) );
  OAI21XL U5821 ( .A0(n5454), .A1(n6779), .B0(n5236), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[0]) );
  NAND2BX1 U5822 ( .AN(n3432), .B(n3427), .Y(n4538) );
  OAI21XL U5823 ( .A0(n6611), .A1(n4768), .B0(n4742), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[2]) );
  OAI21XL U5824 ( .A0(n6889), .A1(n5454), .B0(n4824), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[1]) );
  OAI21XL U5825 ( .A0(median_sobel_inst_u_median_filter_submodule_n78), .A1(
        n6269), .B0(n5184), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[5]) );
  OAI21XL U5826 ( .A0(median_sobel_inst_u_median_filter_submodule_n56), .A1(
        n6197), .B0(n4974), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[1]) );
  OAI21XL U5827 ( .A0(median_sobel_inst_u_median_filter_submodule_n60), .A1(
        n5429), .B0(n4823), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[4]) );
  OAI21XL U5828 ( .A0(median_sobel_inst_u_median_filter_submodule_n48), .A1(
        n6194), .B0(n5334), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[5]) );
  MXI2X1 U5829 ( .A(n3746), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .S0(n5387), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N105) );
  MX2X1 U5830 ( .A(median_sobel_inst_G[41]), .B(
        median_sobel_inst_u_sober_compare_submodule_n219), .S0(n5985), .Y(
        median_sobel_inst_u_sober_compare_submodule_n104) );
  MX2X1 U5831 ( .A(median_sobel_inst_G[30]), .B(
        median_sobel_inst_u_sober_compare_submodule_n214), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n115) );
  MX2X1 U5832 ( .A(median_sobel_inst_G[26]), .B(
        median_sobel_inst_u_sober_compare_submodule_n213), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n111) );
  MX2X1 U5833 ( .A(median_sobel_inst_G[24]), .B(
        median_sobel_inst_u_sober_compare_submodule_n212), .S0(n6053), .Y(
        median_sobel_inst_u_sober_compare_submodule_n109) );
  MX2X1 U5834 ( .A(median_sobel_inst_G[23]), .B(
        median_sobel_inst_u_sober_compare_submodule_n211), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n108) );
  MX2X1 U5835 ( .A(median_sobel_inst_G[22]), .B(
        median_sobel_inst_u_sober_compare_submodule_n210), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n107) );
  MX2X1 U5836 ( .A(median_sobel_inst_G[11]), .B(
        median_sobel_inst_u_sober_compare_submodule_n208), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n118) );
  MX2X1 U5837 ( .A(median_sobel_inst_G[38]), .B(
        median_sobel_inst_u_sober_compare_submodule_n207), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n101) );
  MX2X1 U5838 ( .A(median_sobel_inst_G[29]), .B(
        median_sobel_inst_u_sober_compare_submodule_n206), .S0(n5985), .Y(
        median_sobel_inst_u_sober_compare_submodule_n114) );
  MX2X1 U5839 ( .A(median_sobel_inst_G[27]), .B(
        median_sobel_inst_u_sober_compare_submodule_n205), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n112) );
  MX2X1 U5840 ( .A(median_sobel_inst_G[19]), .B(
        median_sobel_inst_u_sober_compare_submodule_n204), .S0(n5985), .Y(
        median_sobel_inst_u_sober_compare_submodule_n126) );
  MX2X1 U5841 ( .A(median_sobel_inst_G[16]), .B(
        median_sobel_inst_u_sober_compare_submodule_n202), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n123) );
  MX2X1 U5842 ( .A(n6602), .B(median_sobel_inst_G[43]), .S0(n6404), .Y(
        median_sobel_inst_u_sober_compare_submodule_n106) );
  MXI2X1 U5843 ( .A(median_sobel_inst_u_sober_compare_submodule_n80), .B(n6824), .S0(n6416), .Y(median_sobel_inst_u_sober_compare_submodule_n132) );
  MXI2X1 U5844 ( .A(median_sobel_inst_u_sober_compare_submodule_n82), .B(n6826), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n134) );
  MXI2X1 U5845 ( .A(median_sobel_inst_u_sober_compare_submodule_n78), .B(n6827), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n130) );
  MX2X1 U5846 ( .A(median_sobel_inst_u_sober_compare_submodule_n13), .B(
        median_sobel_inst_angle[1]), .S0(n6416), .Y(
        median_sobel_inst_u_sober_compare_submodule_n95) );
  MX2X1 U5847 ( .A(median_sobel_inst_u_sober_compare_submodule_n16), .B(
        median_sobel_inst_angle[3]), .S0(n5796), .Y(
        median_sobel_inst_u_sober_compare_submodule_n93) );
  NAND2X1 U5848 ( .A(n4660), .B(
        median_sobel_inst_u_sober_compare_submodule_n209), .Y(n4661) );
  NOR2X1 U5849 ( .A(n2969), .B(median_sobel_inst_u_sober_compare_submodule_n52), .Y(median_sobel_inst_u_sober_compare_submodule_N1160) );
  NOR2X1 U5850 ( .A(n2969), .B(median_sobel_inst_u_sober_compare_submodule_n54), .Y(median_sobel_inst_u_sober_compare_submodule_N1180) );
  MX2X1 U5851 ( .A(median_sobel_inst_angle[6]), .B(
        median_sobel_inst_u_sober_compare_submodule_n184), .S0(n6133), .Y(
        median_sobel_inst_u_sober_compare_submodule_n88) );
  NAND2X1 U5852 ( .A(n4660), .B(
        median_sobel_inst_u_sober_compare_submodule_n203), .Y(n4571) );
  NOR2X1 U5853 ( .A(n2969), .B(n6584), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1240) );
  MX2X1 U5854 ( .A(median_sobel_inst_angle[4]), .B(
        median_sobel_inst_u_sober_compare_submodule_n181), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n90) );
  MX2X1 U5855 ( .A(median_sobel_inst_angle[5]), .B(
        median_sobel_inst_u_sober_compare_submodule_n26), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n91) );
  MX2X1 U5856 ( .A(median_sobel_inst_angle[7]), .B(
        median_sobel_inst_u_sober_compare_submodule_n23), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n89) );
  NOR2X1 U5857 ( .A(n2969), .B(n4529), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1200) );
  XOR2X1 U5858 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N132) );
  AND2X2 U5859 ( .A(n6351), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N24) );
  XNOR2X1 U5860 ( .A(n5273), .B(n5272), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]) );
  NAND2XL U5861 ( .A(n4691), .B(n4734), .Y(n4692) );
  INVXL U5862 ( .A(n4735), .Y(n4691) );
  INVXL U5863 ( .A(n4646), .Y(n4617) );
  XOR2X1 U5864 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N6) );
  XOR2X1 U5865 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]) );
  NAND2XL U5866 ( .A(n4989), .B(n4988), .Y(n4990) );
  INVXL U5867 ( .A(n4605), .Y(n4608) );
  NAND2XL U5868 ( .A(n4731), .B(n4730), .Y(n4732) );
  OAI21XL U5869 ( .A0(n4728), .A1(n4727), .B0(n4726), .Y(n4733) );
  NAND2X1 U5870 ( .A(n4695), .B(n4694), .Y(n4539) );
  XNOR2X1 U5871 ( .A(n3804), .B(n3803), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]) );
  INVX1 U5872 ( .A(n4884), .Y(n4805) );
  NAND2XL U5873 ( .A(n4596), .B(n4675), .Y(n4597) );
  XOR2X1 U5874 ( .A(n5697), .B(n5696), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1130) );
  AOI21X2 U5875 ( .A0(n5692), .A1(n5691), .B0(n5690), .Y(n5697) );
  INVX1 U5876 ( .A(n5491), .Y(n5488) );
  NAND2X1 U5878 ( .A(median_sobel_inst_n68), .B(n5944), .Y(n5919) );
  NAND4X4 U5879 ( .A(n5927), .B(n5926), .C(n5925), .D(n5924), .Y(
        median_sobel_inst_data_e_r[0]) );
  OR2X2 U5880 ( .A(median_sobel_inst_n383), .B(n2792), .Y(n5924) );
  OR2X2 U5881 ( .A(median_sobel_inst_n415), .B(n6132), .Y(n5926) );
  NAND2BX1 U5882 ( .AN(median_sobel_inst_n346), .B(n6090), .Y(n5781) );
  NAND2BX1 U5883 ( .AN(median_sobel_inst_n341), .B(n5541), .Y(n5914) );
  NAND2BX1 U5884 ( .AN(n6127), .B(median_sobel_inst_n28), .Y(n6131) );
  NOR2X1 U5885 ( .A(n6710), .B(n3105), .Y(n6097) );
  OAI21XL U5886 ( .A0(n6723), .A1(n3436), .B0(n4759), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[7]) );
  NAND2X4 U5887 ( .A(n6275), .B(n3641), .Y(
        median_sobel_inst_u_median_filter_submodule_n677) );
  OAI21XL U5888 ( .A0(n6573), .A1(n4993), .B0(n4839), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[4]) );
  NAND2XL U5889 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), 
        .B(n6190), .Y(n6187) );
  NAND2X1 U5890 ( .A(median_sobel_inst_n53), .B(n3462), .Y(n6050) );
  NAND2BX1 U5892 ( .AN(median_sobel_inst_n425), .B(n4630), .Y(n6148) );
  AOI2BB1X2 U5893 ( .A0N(median_sobel_inst_n343), .A1N(n6053), .B0(n6052), .Y(
        n6054) );
  OAI21XL U5894 ( .A0(median_sobel_inst_u_median_filter_submodule_n46), .A1(
        n6269), .B0(n5218), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[0]) );
  OAI21XL U5895 ( .A0(n6200), .A1(n6901), .B0(n5306), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[3]) );
  MX2X1 U5896 ( .A(median_sobel_inst_angle[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n131), .S0(n6069), .Y(
        median_sobel_inst_n485) );
  MX2X1 U5897 ( .A(median_sobel_inst_G[14]), .B(n6617), .S0(n6140), .Y(
        median_sobel_inst_n469) );
  MX2X1 U5898 ( .A(median_sobel_inst_G[17]), .B(n6612), .S0(n6069), .Y(
        median_sobel_inst_n457) );
  MX2X1 U5899 ( .A(median_sobel_inst_G[20]), .B(n6892), .S0(n6140), .Y(
        median_sobel_inst_n445) );
  MX2X1 U5900 ( .A(median_sobel_inst_G[28]), .B(n6612), .S0(n6139), .Y(
        median_sobel_inst_n456) );
  MX2X1 U5901 ( .A(median_sobel_inst_G[32]), .B(n6610), .S0(n3434), .Y(
        median_sobel_inst_n440) );
  MX2X1 U5902 ( .A(median_sobel_inst_G[21]), .B(n6610), .S0(n5979), .Y(
        median_sobel_inst_n441) );
  MXI2X1 U5903 ( .A(median_sobel_inst_n181), .B(n5912), .S0(n6136), .Y(
        median_sobel_inst_med_sobel_e_wait_r[9]) );
  MXI2X1 U5904 ( .A(median_sobel_inst_n213), .B(n5912), .S0(n6077), .Y(
        median_sobel_inst_med_sobel_e_wait_r[37]) );
  MXI2X1 U5905 ( .A(median_sobel_inst_n195), .B(n839), .S0(n5541), .Y(
        median_sobel_inst_med_sobel_e_wait_r[21]) );
  MXI2X1 U5906 ( .A(median_sobel_inst_n206), .B(n6076), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[31]) );
  MXI2X1 U5907 ( .A(median_sobel_inst_n204), .B(n5610), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[29]) );
  MXI2X1 U5908 ( .A(median_sobel_inst_n201), .B(n6860), .S0(n6136), .Y(
        median_sobel_inst_med_sobel_e_wait_r[27]) );
  MXI2X1 U5909 ( .A(median_sobel_inst_n205), .B(n6993), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[30]) );
  MXI2X1 U5910 ( .A(median_sobel_inst_n233), .B(n6860), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[55]) );
  MXI2X1 U5911 ( .A(median_sobel_inst_n232), .B(n6634), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[54]) );
  MXI2X1 U5912 ( .A(median_sobel_inst_n224), .B(n6546), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[47]) );
  MXI2X1 U5913 ( .A(median_sobel_inst_n183), .B(n837), .S0(n6081), .Y(
        median_sobel_inst_med_sobel_e_wait_r[11]) );
  MXI2X1 U5914 ( .A(median_sobel_inst_n182), .B(n5939), .S0(n6136), .Y(
        median_sobel_inst_med_sobel_e_wait_r[10]) );
  MXI2X1 U5915 ( .A(median_sobel_inst_n215), .B(n837), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[39]) );
  MXI2X1 U5916 ( .A(median_sobel_inst_n214), .B(n5939), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[38]) );
  MXI2X1 U5917 ( .A(median_sobel_inst_n225), .B(n6852), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[48]) );
  MXI2X1 U5918 ( .A(median_sobel_inst_n194), .B(n6715), .S0(n6136), .Y(
        median_sobel_inst_n854) );
  MXI2X1 U5919 ( .A(median_sobel_inst_n226), .B(n6715), .S0(n5796), .Y(
        median_sobel_inst_n858) );
  MXI2X1 U5920 ( .A(median_sobel_inst_n211), .B(n938), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[35]) );
  MXI2X1 U5921 ( .A(median_sobel_inst_n212), .B(n6419), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[36]) );
  MXI2X1 U5922 ( .A(median_sobel_inst_n187), .B(n885), .S0(n6081), .Y(
        median_sobel_inst_med_sobel_e_wait_r[14]) );
  MXI2X1 U5923 ( .A(n885), .B(median_sobel_inst_n163), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[70]) );
  MXI2X1 U5924 ( .A(median_sobel_inst_n218), .B(n6738), .S0(n6404), .Y(
        median_sobel_inst_n855) );
  MXI2X1 U5925 ( .A(median_sobel_inst_n222), .B(n5811), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[45]) );
  MXI2X1 U5926 ( .A(median_sobel_inst_n219), .B(n885), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[42]) );
  MXI2X1 U5927 ( .A(median_sobel_inst_n228), .B(n6923), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[50]) );
  MXI2X1 U5928 ( .A(median_sobel_inst_n227), .B(n839), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[49]) );
  MX2X1 U5929 ( .A(median_sobel_inst_G[13]), .B(n6615), .S0(n6140), .Y(
        median_sobel_inst_n473) );
  MX2X1 U5930 ( .A(median_sobel_inst_G[15]), .B(n6616), .S0(n5979), .Y(
        median_sobel_inst_n465) );
  MX2X1 U5931 ( .A(median_sobel_inst_G[27]), .B(n6613), .S0(n3462), .Y(
        median_sobel_inst_n460) );
  MX2X1 U5932 ( .A(median_sobel_inst_G[16]), .B(n6613), .S0(n6069), .Y(
        median_sobel_inst_n461) );
  MX2X1 U5933 ( .A(median_sobel_inst_G[29]), .B(n6619), .S0(n4630), .Y(
        median_sobel_inst_n452) );
  MX2X1 U5934 ( .A(median_sobel_inst_G[18]), .B(n6619), .S0(n5979), .Y(
        median_sobel_inst_n453) );
  MX2X1 U5935 ( .A(median_sobel_inst_G[19]), .B(n6618), .S0(n6140), .Y(
        median_sobel_inst_n449) );
  MX2X1 U5936 ( .A(median_sobel_inst_n27), .B(n6933), .S0(n3434), .Y(
        median_sobel_inst_n497) );
  MXI2X1 U5937 ( .A(median_sobel_inst_n260), .B(n6923), .S0(n3434), .Y(n6731)
         );
  MXI2X1 U5938 ( .A(median_sobel_inst_n426), .B(n6545), .S0(n6044), .Y(n6776)
         );
  MXI2X1 U5939 ( .A(n6841), .B(median_sobel_inst_n257), .S0(n6132), .Y(n6596)
         );
  MX2X1 U5940 ( .A(median_sobel_inst_n100), .B(n6791), .S0(n4630), .Y(
        median_sobel_inst_n617) );
  MXI2X1 U5941 ( .A(median_sobel_inst_n359), .B(median_sobel_inst_n195), .S0(
        n6139), .Y(n6587) );
  MXI2X1 U5942 ( .A(median_sobel_inst_n430), .B(n6419), .S0(n3434), .Y(n6592)
         );
  MXI2X1 U5943 ( .A(median_sobel_inst_n376), .B(median_sobel_inst_n226), .S0(
        n4630), .Y(median_sobel_inst_n564) );
  MXI2X1 U5944 ( .A(median_sobel_inst_n373), .B(median_sobel_inst_n213), .S0(
        n3141), .Y(median_sobel_inst_n577) );
  MX2X1 U5945 ( .A(median_sobel_inst_n30), .B(n6555), .S0(n3141), .Y(
        median_sobel_inst_n511) );
  NAND4X1 U5946 ( .A(n4306), .B(n4613), .C(median_sobel_inst_n661), .D(n4305), 
        .Y(n4297) );
  MXI2X1 U5947 ( .A(median_sobel_inst_n379), .B(median_sobel_inst_n223), .S0(
        n4630), .Y(median_sobel_inst_n567) );
  MX2X1 U5948 ( .A(n6796), .B(median_sobel_inst_n146), .S0(n6096), .Y(
        median_sobel_inst_n583) );
  INVX1 U5949 ( .A(n5698), .Y(n3918) );
  INVX1 U5950 ( .A(n6450), .Y(n4064) );
  OAI2BB1X2 U5951 ( .A0N(n6715), .A1N(n6450), .B0(n6447), .Y(n4065) );
  XOR2X1 U5952 ( .A(n4515), .B(n4514), .Y(n4516) );
  INVX1 U5953 ( .A(n5221), .Y(n5222) );
  XNOR2X1 U5954 ( .A(conv_inst_data_abc_3_r[10]), .B(conv_inst_conv_3_r[10]), 
        .Y(n4722) );
  NAND2X1 U5955 ( .A(n4408), .B(n3956), .Y(n5352) );
  AOI2BB1X2 U5956 ( .A0N(n6455), .A1N(conv_inst_conv_2_r[13]), .B0(n6454), .Y(
        conv_inst_N249) );
  AND2X2 U5957 ( .A(n6424), .B(n6423), .Y(conv_inst_data_abc_w[3]) );
  XOR2X1 U5958 ( .A(n3596), .B(n5038), .Y(conv_inst_N68) );
  NAND3X2 U5959 ( .A(n3181), .B(n5635), .C(n5628), .Y(n5633) );
  NAND2X1 U5960 ( .A(n6472), .B(sram_addr_w[29]), .Y(n6474) );
  NAND3X1 U5961 ( .A(n6522), .B(n6521), .C(n6520), .Y(sram_addr_wait_r[1]) );
  NAND2X1 U5962 ( .A(n6519), .B(sram_addr_w[2]), .Y(n6521) );
  NAND2X1 U5963 ( .A(n6515), .B(sram_addr_w[11]), .Y(n6516) );
  OAI21XL U5964 ( .A0(sram_wen_ready_r[3]), .A1(n5581), .B0(n889), .Y(n4588)
         );
  NAND3X1 U5965 ( .A(n6500), .B(n6499), .C(n6520), .Y(sram_addr_wait_r[17]) );
  NAND4X1 U5966 ( .A(n5923), .B(n5922), .C(n5921), .D(n5920), .Y(N695) );
  AOI2BB1X1 U5967 ( .A0N(n7850), .A1N(n6103), .B0(n5774), .Y(n5775) );
  NAND2XL U5968 ( .A(n6941), .B(n4981), .Y(n3524) );
  OA22X1 U5969 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[23]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_net64662), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[24]), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n34), .Y(n3464) );
  AND2X8 U5970 ( .A(n6942), .B(n6943), .Y(n3465) );
  AND2X4 U5971 ( .A(n2844), .B(
        median_sobel_inst_u_median_filter_submodule_n212), .Y(n3466) );
  BUFX20 U5973 ( .A(n6060), .Y(n6089) );
  BUFX20 U5974 ( .A(n6090), .Y(n6136) );
  AND3X4 U5975 ( .A(n6125), .B(n6124), .C(n6123), .Y(n3472) );
  NOR2X4 U5976 ( .A(n3686), .B(n5413), .Y(n5707) );
  AND2X2 U5977 ( .A(conv_inst_data_abc_1_r[1]), .B(conv_inst_conv_1_r[1]), .Y(
        n3479) );
  OA22X4 U5978 ( .A0(n6583), .A1(
        median_sobel_inst_u_median_filter_submodule_n129), .B0(
        median_sobel_inst_u_median_filter_submodule_b5_r[6]), .B1(n6465), .Y(
        n3483) );
  NOR2X1 U5979 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net61937), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n20), .Y(n4364) );
  CLKINVX1 U5980 ( .A(n4364), .Y(n4365) );
  CLKINVX1 U5981 ( .A(conv_inst_n64), .Y(n5486) );
  CLKINVX1 U5982 ( .A(n6948), .Y(n6436) );
  CLKBUFX8 U5983 ( .A(n6977), .Y(n6978) );
  OAI21XL U5984 ( .A0(n6101), .A1(n801), .B0(n5773), .Y(n5774) );
  CLKBUFX8 U5985 ( .A(n6970), .Y(n6964) );
  CLKBUFX8 U5986 ( .A(i_rst_n), .Y(n6977) );
  BUFX4 U5987 ( .A(i_rst_n), .Y(n6960) );
  CLKBUFX8 U5988 ( .A(n6986), .Y(n6963) );
  CLKBUFX8 U5989 ( .A(n6989), .Y(n6966) );
  CLKBUFX8 U5990 ( .A(n6989), .Y(n6968) );
  CLKBUFX8 U5991 ( .A(n6985), .Y(n6967) );
  CLKBUFX8 U5992 ( .A(n6959), .Y(n6972) );
  CLKBUFX8 U5993 ( .A(n6988), .Y(n6971) );
  CLKBUFX8 U5994 ( .A(n6984), .Y(n6970) );
  MX2X1 U5995 ( .A(n6792), .B(median_sobel_inst_n645), .S0(n6096), .Y(
        median_sobel_inst_n566) );
  OAI21XL U5996 ( .A0(n4615), .A1(n6872), .B0(n4614), .Y(
        median_sobel_inst_n320) );
  CLKXOR2X2 U5997 ( .A(n6450), .B(input_data_ready_r[23]), .Y(n6451) );
  NAND2BX4 U5998 ( .AN(n5746), .B(conv_calc_done_r), .Y(n4566) );
  NAND2X8 U5999 ( .A(n3493), .B(n6298), .Y(n6284) );
  AOI2BB2X4 U6000 ( .B0(n3312), .B1(
        median_sobel_inst_u_median_filter_submodule_n286), .A0N(n6298), .A1N(
        median_sobel_inst_u_median_filter_submodule_n352), .Y(n3494) );
  NAND2X2 U6001 ( .A(n4439), .B(n3600), .Y(n4440) );
  NAND2BX4 U6002 ( .AN(n3427), .B(n3432), .Y(n5283) );
  XOR2X4 U6003 ( .A(n6392), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N158) );
  NOR3X6 U6005 ( .A(n4466), .B(n3768), .C(n4469), .Y(n4446) );
  AOI2BB2X4 U6008 ( .B0(n4025), .B1(n4026), .A0N(n4029), .A1N(n4024), .Y(n3496) );
  AND2X8 U6009 ( .A(n5446), .B(n3500), .Y(n5447) );
  NAND4BBX4 U6010 ( .AN(n931), .BN(pre_state[4]), .C(n3502), .D(pre_state[7]), 
        .Y(n3501) );
  NAND3X6 U6012 ( .A(n3465), .B(n4254), .C(n2854), .Y(n4232) );
  CLKINVX1 U6014 ( .A(n4167), .Y(n4168) );
  NOR2X4 U6015 ( .A(median_sobel_inst_u_median_filter_submodule_b9_r[5]), .B(
        median_sobel_inst_u_median_filter_submodule_net22631), .Y(n4167) );
  NOR2X4 U6016 ( .A(n3511), .B(n4829), .Y(n3508) );
  NAND2X2 U6017 ( .A(n4908), .B(n4828), .Y(n3510) );
  NAND2X2 U6018 ( .A(n4909), .B(n4828), .Y(n3511) );
  XOR2X4 U6019 ( .A(n3513), .B(n6948), .Y(n3512) );
  NAND2X4 U6020 ( .A(n3465), .B(n4254), .Y(n4259) );
  NOR2X8 U6021 ( .A(n4560), .B(n889), .Y(n3760) );
  BUFX12 U6022 ( .A(n3589), .Y(n3515) );
  XOR2X4 U6023 ( .A(n3516), .B(n5708), .Y(conv_inst_N78) );
  NAND2X2 U6024 ( .A(n5707), .B(n5706), .Y(n3517) );
  AOI2BB2X4 U6025 ( .B0(n3132), .B1(n6574), .A0N(n3133), .A1N(n6688), .Y(n4193) );
  OAI21X4 U6026 ( .A0(n6332), .A1(n6331), .B0(n6330), .Y(n3518) );
  NAND2BX4 U6028 ( .AN(conv_inst_n27), .B(n6929), .Y(n3590) );
  OAI21X4 U6029 ( .A0(n4623), .A1(n5259), .B0(n5260), .Y(n4865) );
  XNOR2X4 U6030 ( .A(n3526), .B(n3446), .Y(n1460) );
  NAND2X8 U6031 ( .A(n5829), .B(n3355), .Y(n4423) );
  AOI22X2 U6032 ( .A0(n6574), .A1(
        median_sobel_inst_u_median_filter_submodule_b5_r[0]), .B0(
        median_sobel_inst_u_median_filter_submodule_net55584), .B1(
        median_sobel_inst_u_median_filter_submodule_n91), .Y(n3533) );
  OAI21X2 U6033 ( .A0(n6574), .A1(
        median_sobel_inst_u_median_filter_submodule_b5_r[0]), .B0(n6688), .Y(
        n3534) );
  AOI21X4 U6035 ( .A0(n5510), .A1(n5511), .B0(n3536), .Y(n6310) );
  NAND2BX4 U6036 ( .AN(median_sobel_inst_u_median_filter_submodule_n85), .B(
        median_sobel_inst_u_median_filter_submodule_n549), .Y(n4768) );
  AOI21X4 U6037 ( .A0(n3539), .A1(n6247), .B0(n6246), .Y(n3538) );
  OAI21X2 U6038 ( .A0(n6244), .A1(n6243), .B0(n6242), .Y(n3539) );
  AND3X8 U6039 ( .A(n6221), .B(n6219), .C(n6220), .Y(n3541) );
  NAND2X4 U6040 ( .A(n3348), .B(n4051), .Y(n4049) );
  XOR2X4 U6041 ( .A(n3348), .B(n4019), .Y(n5559) );
  AND2X4 U6045 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .Y(
        n5278) );
  XOR2X1 U6048 ( .A(n4760), .B(n3557), .Y(conv_inst_data_bcd_w[2]) );
  INVX6 U6049 ( .A(median_sobel_inst_data_e_r[2]), .Y(n3576) );
  NAND3X6 U6050 ( .A(n2730), .B(n5919), .C(n5916), .Y(
        median_sobel_inst_data_e_r[2]) );
  AOI22X1 U6052 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[23]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_net64662), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[22]), .B1(
        n6992), .Y(n3561) );
  NAND2X2 U6053 ( .A(n3566), .B(n3563), .Y(n3562) );
  NAND2X1 U6054 ( .A(n3453), .B(n6706), .Y(n3567) );
  CLKINVX1 U6055 ( .A(n6305), .Y(n3570) );
  INVX12 U6059 ( .A(n4423), .Y(n4081) );
  BUFX12 U6061 ( .A(n6411), .Y(n3579) );
  NAND2X2 U6063 ( .A(n6405), .B(n6608), .Y(n3582) );
  NOR2BX4 U6066 ( .AN(n3478), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .Y(n4869) );
  NOR2BX2 U6067 ( .AN(n6680), .B(n6657), .Y(n3587) );
  OAI21X4 U6068 ( .A0(n5326), .A1(n3983), .B0(n3982), .Y(n4200) );
  NAND2X2 U6069 ( .A(n5704), .B(n4067), .Y(n4123) );
  OAI21X4 U6070 ( .A0(n3592), .A1(n3591), .B0(n4361), .Y(n4436) );
  OA21X4 U6071 ( .A0(n4357), .A1(n4356), .B0(n4355), .Y(n3592) );
  NAND2X4 U6072 ( .A(n5365), .B(n5363), .Y(n5459) );
  OAI21XL U6074 ( .A0(n5573), .A1(conv_inst_conv_3_r[16]), .B0(n3600), .Y(
        n5574) );
  NAND2X1 U6075 ( .A(n3599), .B(n3600), .Y(n5142) );
  NAND2X2 U6076 ( .A(n2992), .B(n5141), .Y(n3599) );
  NAND2X2 U6077 ( .A(n4443), .B(n3600), .Y(n4412) );
  NAND2X1 U6078 ( .A(n6453), .B(n3600), .Y(n6454) );
  NAND2X1 U6079 ( .A(n4430), .B(n3600), .Y(n4434) );
  NAND2X4 U6080 ( .A(n4442), .B(n3600), .Y(n3656) );
  XNOR2X4 U6082 ( .A(conv_inst_data_abc_3_r[7]), .B(conv_inst_conv_3_r[7]), 
        .Y(n4683) );
  NOR2X6 U6085 ( .A(n5599), .B(n4080), .Y(n5600) );
  NAND2X4 U6086 ( .A(n3610), .B(n3609), .Y(n3936) );
  INVX2 U6087 ( .A(n4401), .Y(n3609) );
  NOR2BX4 U6088 ( .AN(n3474), .B(conv_inst_data_abc_3_r[4]), .Y(n4401) );
  NAND2X4 U6089 ( .A(n4400), .B(n4398), .Y(n3610) );
  NOR2X4 U6090 ( .A(conv_inst_conv_3_r[3]), .B(conv_inst_n62), .Y(n4398) );
  NAND2BX4 U6091 ( .AN(n3474), .B(conv_inst_data_abc_3_r[4]), .Y(n4400) );
  NAND2X4 U6092 ( .A(n4520), .B(n4522), .Y(n5355) );
  NAND2X2 U6093 ( .A(n4548), .B(n4397), .Y(n3612) );
  NAND2X4 U6094 ( .A(conv_inst_data_abc_3_r[0]), .B(conv_inst_conv_3_r[0]), 
        .Y(n5330) );
  NOR2X4 U6095 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), .Y(
        n4392) );
  NAND2X4 U6096 ( .A(n5307), .B(n5332), .Y(n3614) );
  NAND2X8 U6097 ( .A(n3617), .B(n3615), .Y(n4408) );
  OAI2BB1X4 U6098 ( .A0N(n3620), .A1N(n3897), .B0(n3896), .Y(n3619) );
  OR2X8 U6099 ( .A(n3623), .B(n3622), .Y(n3621) );
  NOR2X6 U6100 ( .A(n3626), .B(n3673), .Y(n3624) );
  NAND2X4 U6101 ( .A(n4119), .B(n4117), .Y(n3626) );
  AOI22X2 U6103 ( .A0(n5699), .A1(conv_inst_conv_1_r[5]), .B0(n5700), .B1(
        conv_inst_conv_2_r[5]), .Y(n3855) );
  XNOR2X4 U6104 ( .A(input_data_ready_r[21]), .B(n6555), .Y(n3629) );
  AND2X4 U6105 ( .A(n4160), .B(n4180), .Y(n3637) );
  OAI21X4 U6106 ( .A0(n3643), .A1(n3642), .B0(n6280), .Y(
        median_sobel_inst_u_median_filter_submodule_n671) );
  NAND2X2 U6107 ( .A(n2844), .B(
        median_sobel_inst_u_median_filter_submodule_n131), .Y(n3642) );
  NOR2X8 U6108 ( .A(n3644), .B(n3479), .Y(n5358) );
  NAND4BX2 U6109 ( .AN(n3473), .B(n4210), .C(n3651), .D(n3646), .Y(n3645) );
  NAND2BX4 U6110 ( .AN(n4209), .B(n3649), .Y(n3648) );
  NAND2BX4 U6112 ( .AN(n4213), .B(n6680), .Y(n3652) );
  AOI21X2 U6113 ( .A0(n5487), .A1(n3749), .B0(n5142), .Y(conv_inst_N251) );
  AOI22X2 U6114 ( .A0(n5700), .A1(conv_inst_conv_2_r[6]), .B0(
        conv_inst_conv_1_r[6]), .B1(n5699), .Y(n3858) );
  NAND2X2 U6115 ( .A(conv_inst_conv_2_r[1]), .B(conv_inst_data_bcd_2_r[1]), 
        .Y(n5311) );
  NAND2X4 U6116 ( .A(n4432), .B(n4431), .Y(n5146) );
  NAND2BX4 U6118 ( .AN(n6676), .B(conv_inst_data_bcd_4_r[4]), .Y(n4335) );
  AOI21X4 U6119 ( .A0(n4531), .A1(n4131), .B0(n3656), .Y(conv_inst_N282) );
  XOR2X4 U6120 ( .A(conv_inst_data_bcd_4_r[5]), .B(conv_inst_conv_4_r[5]), .Y(
        n4337) );
  NAND2BX1 U6122 ( .AN(n3668), .B(n3674), .Y(n3867) );
  OAI2BB1X4 U6123 ( .A0N(n5699), .A1N(conv_inst_conv_1_r[9]), .B0(n3675), .Y(
        n4117) );
  AOI21X4 U6124 ( .A0(n5700), .A1(conv_inst_conv_2_r[9]), .B0(n3676), .Y(n3675) );
  NAND2X2 U6125 ( .A(n3681), .B(conv_inst_conv_3_r[12]), .Y(n3680) );
  NAND2X1 U6126 ( .A(n3468), .B(conv_inst_n37), .Y(n3682) );
  NAND2X2 U6128 ( .A(n5147), .B(n6861), .Y(n4430) );
  NAND2X4 U6129 ( .A(n4432), .B(n3688), .Y(n5147) );
  NOR2BX4 U6130 ( .AN(n4431), .B(n3689), .Y(n3688) );
  XOR2X4 U6131 ( .A(n6953), .B(n5939), .Y(n3690) );
  NAND2X1 U6132 ( .A(n3692), .B(n4613), .Y(n3691) );
  AOI2BB2X4 U6133 ( .B0(n3695), .B1(n3694), .A0N(n4301), .A1N(n3693), .Y(n4315) );
  NAND2X4 U6135 ( .A(n3706), .B(n3705), .Y(n3935) );
  NOR2X4 U6136 ( .A(n4392), .B(n4393), .Y(n3705) );
  NAND2X4 U6137 ( .A(n4188), .B(n3708), .Y(n3707) );
  NOR2X4 U6138 ( .A(n4187), .B(n4186), .Y(n3708) );
  NOR2X4 U6139 ( .A(n3715), .B(n5619), .Y(conv_inst_N261) );
  XOR2X4 U6140 ( .A(n3716), .B(n4406), .Y(n3715) );
  NOR2X4 U6141 ( .A(n3720), .B(n3718), .Y(n3717) );
  NOR2BX2 U6142 ( .AN(n6465), .B(
        median_sobel_inst_u_median_filter_submodule_b1_r_5_), .Y(n3720) );
  NAND2X8 U6144 ( .A(n6194), .B(n5178), .Y(n6268) );
  NOR2X8 U6145 ( .A(n3471), .B(
        median_sobel_inst_u_median_filter_submodule_n549), .Y(n6195) );
  NAND2X2 U6146 ( .A(conv_inst_data_abc_3_r[8]), .B(conv_inst_conv_3_r[8]), 
        .Y(n4069) );
  NOR2BX4 U6148 ( .AN(n4077), .B(n4079), .Y(n3727) );
  NAND2X2 U6149 ( .A(n3468), .B(conv_inst_conv_4_r[7]), .Y(n3728) );
  AOI22X1 U6150 ( .A0(n5699), .A1(conv_inst_conv_1_r[7]), .B0(
        conv_inst_conv_2_r[7]), .B1(n5700), .Y(n3729) );
  XNOR2X4 U6151 ( .A(n3732), .B(n5416), .Y(conv_inst_N76) );
  NOR2X1 U6152 ( .A(n4896), .B(n4890), .Y(n4790) );
  NAND2X2 U6153 ( .A(n6297), .B(
        median_sobel_inst_u_median_filter_submodule_n94), .Y(n3907) );
  XNOR2X1 U6154 ( .A(n4134), .B(n4133), .Y(conv_inst_N70) );
  NOR2X6 U6155 ( .A(n5599), .B(n5194), .Y(n5604) );
  AND2X4 U6159 ( .A(n4100), .B(n4099), .Y(n3747) );
  OAI22X1 U6161 ( .A0(median_sobel_inst_u_median_filter_submodule_n374), .A1(
        n6224), .B0(median_sobel_inst_u_median_filter_submodule_n690), .B1(
        median_sobel_inst_u_median_filter_submodule_n348), .Y(n6226) );
  NOR3X2 U6162 ( .A(n4165), .B(n4163), .C(n4162), .Y(n4164) );
  OR2X2 U6163 ( .A(median_sobel_inst_u_median_filter_submodule_n286), .B(n6276), .Y(n6231) );
  AOI21X1 U6164 ( .A0(n4481), .A1(
        median_sobel_inst_u_sober_compare_submodule_n198), .B0(
        median_sobel_inst_u_sober_compare_submodule_n195), .Y(n4482) );
  NOR2BX2 U6165 ( .AN(median_sobel_inst_u_sober_compare_submodule_n16), .B(
        n4550), .Y(n4097) );
  XNOR2X1 U6166 ( .A(input_data_ready_r[22]), .B(input_data_ready_r[15]), .Y(
        n4054) );
  OAI21XL U6167 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n73), .A1(
        n6585), .B0(median_sobel_inst_u_sobel_gradient_submodule_n60), .Y(
        n4359) );
  NOR2X4 U6168 ( .A(conv_inst_data_bcd_4_r[8]), .B(conv_inst_conv_4_r[8]), .Y(
        n5616) );
  NAND2XL U6169 ( .A(n3796), .B(n4918), .Y(n3797) );
  NOR2X2 U6170 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .Y(n5644) );
  NOR2X2 U6171 ( .A(conv_inst_data_abc_3_r[10]), .B(conv_inst_conv_3_r[10]), 
        .Y(n5598) );
  NAND2XL U6172 ( .A(n6504), .B(n7900), .Y(n6505) );
  NAND2X1 U6173 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(n5210) );
  NAND2X4 U6174 ( .A(n5392), .B(n4714), .Y(n6264) );
  INVXL U6175 ( .A(median_sobel_inst_u_sober_compare_submodule_n213), .Y(n4543) );
  NOR2X2 U6176 ( .A(n6695), .B(n6096), .Y(n6036) );
  NAND3XL U6177 ( .A(n1232), .B(n5060), .C(n4981), .Y(n4982) );
  NAND2X1 U6178 ( .A(n6270), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .Y(n5199) );
  NAND2X1 U6179 ( .A(n5932), .B(n6899), .Y(n5910) );
  NAND2XL U6180 ( .A(i_op_valid), .B(n5582), .Y(n4604) );
  OA22X1 U6181 ( .A0(n5392), .A1(
        median_sobel_inst_u_median_filter_submodule_n71), .B0(n5180), .B1(
        n6808), .Y(n5179) );
  NAND3X1 U6182 ( .A(n6529), .B(n6528), .C(n6527), .Y(n6537) );
  INVXL U6183 ( .A(median_sobel_inst_u_median_filter_submodule_net55277), .Y(
        n6294) );
  AOI2BB2X1 U6184 ( .B0(n6265), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .A0N(n6264), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n112), .Y(n6266) );
  NAND2XL U6185 ( .A(n5041), .B(n5040), .Y(n5042) );
  NAND2X1 U6186 ( .A(n5931), .B(n6915), .Y(n5757) );
  NAND2XL U6187 ( .A(n4805), .B(n4883), .Y(n4806) );
  OR2X2 U6188 ( .A(median_sobel_inst_n377), .B(n5834), .Y(n5965) );
  OR2X2 U6189 ( .A(median_sobel_inst_n375), .B(n6064), .Y(n5925) );
  AOI2BB1X1 U6190 ( .A0N(n806), .A1N(n6103), .B0(n6102), .Y(n6104) );
  OAI21XL U6191 ( .A0(median_sobel_inst_u_median_filter_submodule_n66), .A1(
        n5431), .B0(n4670), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[5]) );
  OA21X2 U6192 ( .A0(n6342), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .B0(n6341), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]) );
  NAND4X1 U6193 ( .A(n5896), .B(n5895), .C(n5894), .D(n5893), .Y(N702) );
  NAND4X1 U6194 ( .A(n5819), .B(n5818), .C(n5817), .D(n5816), .Y(N703) );
  XOR2X1 U6195 ( .A(n4000), .B(n3999), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N115) );
  XNOR2X2 U6196 ( .A(n4120), .B(n4119), .Y(conv_inst_N72) );
  XOR2X1 U6197 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]) );
  AOI21X1 U6198 ( .A0(n4292), .A1(n4291), .B0(n4290), .Y(conv_inst_N228) );
  NOR2X1 U6199 ( .A(n3275), .B(n4502), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1190) );
  MXI2X1 U6200 ( .A(n6692), .B(n1354), .S0(n6468), .Y(N756) );
  OAI21XL U6201 ( .A0(n6267), .A1(n6660), .B0(n6257), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[5]) );
  MX2X1 U6202 ( .A(median_sobel_inst_G[34]), .B(
        median_sobel_inst_u_sober_compare_submodule_n215), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n97) );
  MX2X1 U6203 ( .A(median_sobel_inst_G[12]), .B(
        median_sobel_inst_u_sober_compare_submodule_n200), .S0(n4693), .Y(
        median_sobel_inst_u_sober_compare_submodule_n119) );
  MXI2X1 U6204 ( .A(median_sobel_inst_u_sober_compare_submodule_n86), .B(n6825), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n138) );
  NAND3X2 U6205 ( .A(n6400), .B(n6399), .C(n6398), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[4]) );
  XOR2X1 U6206 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]) );
  XNOR2X2 U6207 ( .A(n5670), .B(n5669), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N310) );
  MX2X1 U6208 ( .A(median_sobel_inst_angle[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n130), .S0(n5979), .Y(
        median_sobel_inst_n489) );
  MXI2X1 U6209 ( .A(median_sobel_inst_n158), .B(n6076), .S0(n6090), .Y(
        median_sobel_inst_med_sobel_e_wait_r[3]) );
  MXI2X1 U6210 ( .A(median_sobel_inst_n209), .B(n6841), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[34]) );
  MXI2X1 U6211 ( .A(median_sobel_inst_n216), .B(n6545), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[40]) );
  MXI2X1 U6212 ( .A(median_sobel_inst_n234), .B(n6797), .S0(n5796), .Y(
        median_sobel_inst_n857) );
  MX2X1 U6213 ( .A(median_sobel_inst_G[22]), .B(n6614), .S0(n5534), .Y(
        median_sobel_inst_n480) );
  MX2X1 U6214 ( .A(median_sobel_inst_G[12]), .B(n6609), .S0(n6069), .Y(
        median_sobel_inst_n477) );
  MXI2X1 U6215 ( .A(median_sobel_inst_n371), .B(median_sobel_inst_n215), .S0(
        n6049), .Y(median_sobel_inst_n575) );
  NAND3X1 U6216 ( .A(n6517), .B(n6516), .C(n6520), .Y(sram_addr_wait_r[9]) );
  XNOR2X1 U6217 ( .A(n6040), .B(n1068), .Y(n2699) );
  INVX8 U6218 ( .A(n3754), .Y(n5803) );
  INVX6 U6219 ( .A(n6040), .Y(n6103) );
  AOI22X1 U6221 ( .A0(n6099), .A1(n6869), .B0(n6083), .B1(
        sram_data_out_r_1__0_), .Y(n3752) );
  NOR2X4 U6222 ( .A(cnt[1]), .B(n3448), .Y(n4939) );
  AOI2BB1X1 U6223 ( .A0N(n3757), .A1N(n3756), .B0(n6105), .Y(n3758) );
  CLKINVX1 U6224 ( .A(n3758), .Y(n6538) );
  NAND2X2 U6225 ( .A(n825), .B(n914), .Y(n4124) );
  NAND2X1 U6226 ( .A(n825), .B(n869), .Y(n3761) );
  NOR3X4 U6227 ( .A(n3762), .B(op_mode_r[3]), .C(n6941), .Y(n3833) );
  NOR2X4 U6228 ( .A(conv_inst_conv_2_r[4]), .B(conv_inst_n56), .Y(n4470) );
  INVX4 U6229 ( .A(n3768), .Y(n4472) );
  AOI21X4 U6230 ( .A0(n4470), .A1(n4472), .B0(n3769), .Y(n4447) );
  XOR2X4 U6231 ( .A(conv_inst_data_bcd_2_r[9]), .B(conv_inst_conv_2_r[9]), .Y(
        n4453) );
  XOR2X4 U6232 ( .A(conv_inst_data_bcd_2_r[7]), .B(conv_inst_conv_2_r[7]), .Y(
        n4810) );
  INVX3 U6233 ( .A(n3771), .Y(n4452) );
  NAND3X6 U6234 ( .A(n4453), .B(n4810), .C(n4452), .Y(n3774) );
  NOR2X6 U6235 ( .A(n4459), .B(n3771), .Y(n4451) );
  NAND2X4 U6236 ( .A(conv_inst_data_bcd_2_r[8]), .B(conv_inst_conv_2_r[8]), 
        .Y(n4458) );
  AOI2BB2X4 U6237 ( .B0(n4451), .B1(n3772), .A0N(n6934), .A1N(n6935), .Y(n3773) );
  NAND2X1 U6238 ( .A(conv_inst_data_bcd_2_r[10]), .B(conv_inst_conv_2_r[10]), 
        .Y(n5140) );
  NOR3X1 U6239 ( .A(n3749), .B(n5486), .C(n6994), .Y(n3775) );
  NAND3X1 U6240 ( .A(n4432), .B(n5138), .C(n3775), .Y(n3779) );
  NOR2X2 U6241 ( .A(n3749), .B(n5486), .Y(n5141) );
  NAND2X2 U6244 ( .A(n3779), .B(n3778), .Y(n3781) );
  NOR2X1 U6245 ( .A(n4432), .B(conv_inst_conv_2_r[16]), .Y(n3780) );
  NOR2X2 U6249 ( .A(n1068), .B(n1354), .Y(n4819) );
  NOR2X1 U6250 ( .A(n784), .B(n5803), .Y(n3789) );
  OAI2BB2XL U6253 ( .B0(n6101), .B1(n803), .A0N(n6099), .A1N(n6899), .Y(n3793)
         );
  NAND2X1 U6254 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n69), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .Y(n5250) );
  NAND2X4 U6255 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[2]), .Y(n4918) );
  NOR2X2 U6256 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), .Y(n5264) );
  NOR2X2 U6257 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n4646) );
  NAND2X1 U6258 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .Y(n4649) );
  NOR2X2 U6259 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n102), .Y(n5053) );
  NOR2X2 U6260 ( .A(n5053), .B(n4840), .Y(n6353) );
  NAND2X1 U6261 ( .A(n4906), .B(n6353), .Y(n3801) );
  NAND2X2 U6262 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n102), .Y(n5054) );
  AOI21X2 U6263 ( .A0(n6358), .A1(n4906), .B0(n3799), .Y(n3800) );
  OAI21X1 U6264 ( .A0(n6362), .A1(n3801), .B0(n3800), .Y(n3804) );
  AOI2BB1X2 U6265 ( .A0N(conv_inst_data_abc_1_r[3]), .A1N(
        conv_inst_conv_1_r[3]), .B0(n5359), .Y(n3807) );
  NAND2X2 U6266 ( .A(conv_inst_conv_1_r[2]), .B(conv_inst_data_abc_1_r[2]), 
        .Y(n5357) );
  NOR2X2 U6267 ( .A(conv_inst_conv_1_r[1]), .B(conv_inst_data_abc_1_r[1]), .Y(
        n3805) );
  NOR3X4 U6268 ( .A(n4523), .B(n3809), .C(n4521), .Y(n3808) );
  CLKXOR2X4 U6269 ( .A(conv_inst_data_abc_1_r[7]), .B(conv_inst_conv_1_r[7]), 
        .Y(n4477) );
  INVX3 U6270 ( .A(n3809), .Y(n4533) );
  OAI22X2 U6271 ( .A0(conv_inst_conv_1_r[5]), .A1(conv_inst_data_abc_1_r[5]), 
        .B0(conv_inst_data_abc_1_r[6]), .B1(conv_inst_conv_1_r[6]), .Y(n3810)
         );
  NAND2X1 U6272 ( .A(conv_inst_data_abc_1_r[8]), .B(conv_inst_conv_1_r[8]), 
        .Y(n4286) );
  NAND2X1 U6273 ( .A(conv_inst_data_abc_1_r[7]), .B(conv_inst_conv_1_r[7]), 
        .Y(n4285) );
  NOR2X2 U6274 ( .A(n5482), .B(n5219), .Y(n3811) );
  NOR2X2 U6275 ( .A(n3815), .B(n3814), .Y(conv_inst_N234) );
  NAND2X2 U6276 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n5246) );
  NAND2BX2 U6277 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_N1310), 
        .B(n5246), .Y(n3818) );
  NAND2X4 U6278 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N1310), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(n4324) );
  NAND2X4 U6281 ( .A(n3818), .B(n3817), .Y(n4606) );
  NOR2X4 U6282 ( .A(n4606), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .Y(n4605) );
  NOR2X8 U6283 ( .A(n4605), .B(n3819), .Y(n5692) );
  NOR2X4 U6284 ( .A(n5062), .B(n5064), .Y(n5202) );
  NOR2X4 U6285 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(n5209) );
  NOR2X2 U6287 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n5497)
         );
  NAND2X2 U6288 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), 
        .B(n6570), .Y(n5205) );
  OAI21X4 U6289 ( .A0(n5209), .A1(n5205), .B0(n5210), .Y(n3822) );
  AND2X4 U6290 ( .A(n3820), .B(n5204), .Y(n3821) );
  NAND2X2 U6291 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n5500)
         );
  NAND2X1 U6292 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(n5499)
         );
  NAND2BX2 U6293 ( .AN(x_plus_two_r[1]), .B(x_plus_two_r[2]), .Y(n6523) );
  OAI21XL U6294 ( .A0(x_plus_two_r[1]), .A1(n863), .B0(x_r[2]), .Y(n3831) );
  NAND2BX1 U6295 ( .AN(n3832), .B(n3831), .Y(n3840) );
  OAI22X2 U6296 ( .A0(n4599), .A1(n831), .B0(n6658), .B1(n4124), .Y(n3834) );
  INVX20 U6297 ( .A(n4557), .Y(n5003) );
  AND2X4 U6298 ( .A(n6482), .B(n6473), .Y(n6528) );
  OAI21X1 U6299 ( .A0(x_plus_one_r[1]), .A1(x_plus_one_r[2]), .B0(n3739), .Y(
        n6526) );
  NAND3X1 U6300 ( .A(n3840), .B(n6528), .C(n3839), .Y(n3847) );
  NOR2X2 U6301 ( .A(cnt[1]), .B(n6476), .Y(n3842) );
  OAI22X1 U6302 ( .A0(n822), .A1(n5441), .B0(n4950), .B1(n3455), .Y(n3843) );
  NOR2BX2 U6303 ( .AN(x_minus_one_r_2_), .B(n5003), .Y(n3844) );
  NOR2X4 U6304 ( .A(n6493), .B(n3739), .Y(n6534) );
  NAND3X2 U6306 ( .A(n3847), .B(n3846), .C(n3845), .Y(n1458) );
  NAND2BX1 U6307 ( .AN(n3224), .B(conv_inst_conv_3_r[10]), .Y(n3850) );
  AOI22X1 U6308 ( .A0(n5700), .A1(conv_inst_conv_2_r[10]), .B0(
        conv_inst_conv_1_r[10]), .B1(n5699), .Y(n3849) );
  NAND2X1 U6309 ( .A(n3468), .B(conv_inst_conv_4_r[10]), .Y(n3848) );
  NAND2BX1 U6310 ( .AN(n3224), .B(conv_inst_conv_3_r[8]), .Y(n3852) );
  NAND2X1 U6311 ( .A(n3468), .B(conv_inst_conv_4_r[8]), .Y(n3851) );
  NAND2BX2 U6312 ( .AN(n3224), .B(conv_inst_conv_3_r[5]), .Y(n3856) );
  NAND2X1 U6313 ( .A(n3468), .B(conv_inst_conv_4_r[5]), .Y(n3854) );
  NAND2X1 U6315 ( .A(n3468), .B(conv_inst_conv_4_r[6]), .Y(n3857) );
  NAND2BX2 U6316 ( .AN(n3507), .B(conv_inst_conv_3_r[4]), .Y(n3862) );
  NAND2X1 U6317 ( .A(n3468), .B(conv_inst_conv_4_r[4]), .Y(n3860) );
  AOI22X1 U6318 ( .A0(n5700), .A1(conv_inst_conv_2_r[3]), .B0(
        conv_inst_conv_1_r[3]), .B1(n5699), .Y(n3865) );
  NAND2BX1 U6319 ( .AN(n5698), .B(conv_inst_conv_3_r[3]), .Y(n3864) );
  NAND2X1 U6320 ( .A(n3468), .B(conv_inst_n36), .Y(n3863) );
  XNOR2X2 U6322 ( .A(n3867), .B(n4117), .Y(conv_inst_N71) );
  NAND2X1 U6323 ( .A(median_sobel_inst_u_median_filter_submodule_n126), .B(
        median_sobel_inst_u_median_filter_submodule_net22670), .Y(n3870) );
  NAND3BX1 U6324 ( .AN(median_sobel_inst_u_median_filter_submodule_n376), .B(
        n3872), .C(median_sobel_inst_u_median_filter_submodule_n274), .Y(n3869) );
  NAND4X2 U6325 ( .A(n3871), .B(n3870), .C(n3869), .D(n3868), .Y(n3879) );
  INVX3 U6326 ( .A(median_sobel_inst_u_median_filter_submodule_net54885), .Y(
        n6289) );
  NOR2X4 U6327 ( .A(n3875), .B(n3874), .Y(n3878) );
  AOI21X2 U6328 ( .A0(n3885), .A1(
        median_sobel_inst_u_median_filter_submodule_net56609), .B0(n3876), .Y(
        n3877) );
  NAND3X1 U6330 ( .A(n3884), .B(
        median_sobel_inst_u_median_filter_submodule_n696), .C(
        median_sobel_inst_u_median_filter_submodule_n274), .Y(n3881) );
  NAND2BX1 U6331 ( .AN(median_sobel_inst_u_median_filter_submodule_n90), .B(
        n3885), .Y(n3886) );
  NAND2BX2 U6332 ( .AN(median_sobel_inst_u_median_filter_submodule_n22), .B(
        median_sobel_inst_u_median_filter_submodule_n50), .Y(n3900) );
  AOI2BB2X1 U6333 ( .B0(median_sobel_inst_u_median_filter_submodule_n90), .B1(
        median_sobel_inst_u_median_filter_submodule_net56609), .A0N(n6648), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net22670), .Y(n3897)
         );
  NAND2BX2 U6334 ( .AN(median_sobel_inst_u_median_filter_submodule_net56734), 
        .B(median_sobel_inst_u_median_filter_submodule_n288), .Y(n3887) );
  NAND2X1 U6335 ( .A(n3887), .B(
        median_sobel_inst_u_median_filter_submodule_n370), .Y(n3890) );
  NAND2BX1 U6336 ( .AN(median_sobel_inst_u_median_filter_submodule_net54885), 
        .B(median_sobel_inst_u_median_filter_submodule_net54904), .Y(n3889) );
  NAND2BX1 U6337 ( .AN(median_sobel_inst_u_median_filter_submodule_n288), .B(
        median_sobel_inst_u_median_filter_submodule_net56734), .Y(n3888) );
  NAND3X2 U6338 ( .A(n3890), .B(n3889), .C(n3888), .Y(n3893) );
  AOI2BB2X1 U6339 ( .B0(median_sobel_inst_u_median_filter_submodule_n696), 
        .B1(median_sobel_inst_u_median_filter_submodule_n376), .A0N(n6289), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net54904), .Y(n3892)
         );
  CLKINVX1 U6340 ( .A(median_sobel_inst_u_median_filter_submodule_net54951), 
        .Y(n6292) );
  OAI22X1 U6341 ( .A0(median_sobel_inst_u_median_filter_submodule_net55277), 
        .A1(n6292), .B0(median_sobel_inst_u_median_filter_submodule_n376), 
        .B1(median_sobel_inst_u_median_filter_submodule_n696), .Y(n3891) );
  AOI21X2 U6342 ( .A0(n3893), .A1(n3892), .B0(n3891), .Y(n3895) );
  NOR2BX1 U6343 ( .AN(median_sobel_inst_u_median_filter_submodule_net55277), 
        .B(median_sobel_inst_u_median_filter_submodule_net54951), .Y(n3894) );
  AOI2BB2X1 U6344 ( .B0(median_sobel_inst_u_median_filter_submodule_n50), .B1(
        median_sobel_inst_u_median_filter_submodule_net22675), .A0N(
        median_sobel_inst_u_median_filter_submodule_net56609), .A1N(
        median_sobel_inst_u_median_filter_submodule_n90), .Y(n3896) );
  CLKINVX1 U6345 ( .A(n3898), .Y(n3899) );
  NAND2X2 U6346 ( .A(n3904), .B(
        median_sobel_inst_u_median_filter_submodule_net56734), .Y(n3906) );
  NAND3X2 U6347 ( .A(n6296), .B(n6285), .C(n6625), .Y(n3905) );
  NAND3X2 U6348 ( .A(n3907), .B(n3906), .C(n3905), .Y(
        median_sobel_inst_u_median_filter_submodule_net21368) );
  NAND3X1 U6349 ( .A(conv_inst_conv_1_r[15]), .B(conv_inst_conv_1_r[14]), .C(
        conv_inst_conv_1_r[16]), .Y(n3911) );
  OAI21X1 U6350 ( .A0(n4150), .A1(conv_inst_n67), .B0(n4295), .Y(n3917) );
  AOI21X2 U6351 ( .A0(n4150), .A1(conv_inst_n67), .B0(n3917), .Y(
        conv_inst_N287) );
  NAND2BX1 U6352 ( .AN(conv_inst_n67), .B(n4344), .Y(n3913) );
  OR2X4 U6355 ( .A(conv_inst_N287), .B(n3914), .Y(conv_inst_ns[0]) );
  NAND2X1 U6356 ( .A(n4282), .B(conv_inst_n30), .Y(n3916) );
  NOR2X4 U6357 ( .A(conv_inst_ns[0]), .B(conv_inst_ns[1]), .Y(n4135) );
  NOR2X2 U6358 ( .A(n6636), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n5269) );
  INVX3 U6359 ( .A(n5272), .Y(n3919) );
  NOR2X4 U6360 ( .A(n3736), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n4676) );
  NAND2X2 U6361 ( .A(n3736), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n4675) );
  AOI21X1 U6362 ( .A0(n5299), .A1(n5297), .B0(n3921), .Y(n3924) );
  NOR2X2 U6363 ( .A(n6644), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n3928) );
  NAND2X1 U6364 ( .A(n6644), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n3927) );
  CLKINVX1 U6365 ( .A(n4909), .Y(n3926) );
  NOR2X1 U6366 ( .A(n3926), .B(n4910), .Y(n3931) );
  OAI21X4 U6367 ( .A0(n3928), .A1(n5296), .B0(n3927), .Y(n4908) );
  CLKINVX1 U6368 ( .A(n4908), .Y(n3929) );
  OAI21X1 U6369 ( .A0(n3929), .A1(n4910), .B0(n4911), .Y(n3930) );
  AOI21X1 U6370 ( .A0(n5299), .A1(n3931), .B0(n3930), .Y(n3934) );
  NOR2X2 U6371 ( .A(n6674), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n4826) );
  NAND2X1 U6372 ( .A(n3932), .B(n4825), .Y(n3933) );
  XOR2X2 U6373 ( .A(n3934), .B(n3933), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]) );
  NAND4X4 U6374 ( .A(n3935), .B(n4400), .C(n4394), .D(n4397), .Y(n3938) );
  NOR2X4 U6375 ( .A(n3936), .B(n4402), .Y(n3937) );
  NAND2X2 U6377 ( .A(n4631), .B(n3940), .Y(n3942) );
  NOR2X2 U6379 ( .A(conv_inst_data_abc_3_r[8]), .B(conv_inst_conv_3_r[8]), .Y(
        n4072) );
  OAI21XL U6380 ( .A0(n4072), .A1(n4404), .B0(n4069), .Y(n3943) );
  AOI21X4 U6381 ( .A0(n4686), .A1(n3944), .B0(n3943), .Y(n3945) );
  XNOR2X2 U6382 ( .A(n3945), .B(n4073), .Y(n3947) );
  NOR2X4 U6383 ( .A(n3947), .B(n5619), .Y(conv_inst_N262) );
  NOR2X2 U6384 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_n36), .Y(n4331)
         );
  NAND2X2 U6385 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_n36), .Y(n3948)
         );
  NAND2X4 U6386 ( .A(conv_inst_data_bcd_4_r[7]), .B(conv_inst_conv_4_r[7]), 
        .Y(n5611) );
  NOR2X4 U6387 ( .A(n5617), .B(n5616), .Y(n3949) );
  AOI21X4 U6389 ( .A0(conv_inst_data_bcd_4_r[10]), .A1(conv_inst_conv_4_r[10]), 
        .B0(n4511), .Y(n4411) );
  OAI21X4 U6390 ( .A0(n4510), .A1(n4407), .B0(n4411), .Y(n3952) );
  NOR2X4 U6391 ( .A(n4129), .B(n3954), .Y(n4409) );
  NAND2X2 U6392 ( .A(n5615), .B(n5611), .Y(n3963) );
  XNOR2X1 U6393 ( .A(conv_inst_data_bcd_4_r[8]), .B(conv_inst_conv_4_r[8]), 
        .Y(n3962) );
  XOR2X4 U6394 ( .A(n3963), .B(n3962), .Y(n3964) );
  NOR2X2 U6395 ( .A(n3964), .B(n5619), .Y(conv_inst_N278) );
  NAND2X1 U6396 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), .Y(n4730) );
  NOR2X4 U6397 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), .Y(
        n4901) );
  NAND2X4 U6398 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), .Y(n5320) );
  NAND2X2 U6399 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), .Y(n4902) );
  OAI21X4 U6400 ( .A0(n4901), .A1(n5320), .B0(n4902), .Y(n5126) );
  AOI21X1 U6401 ( .A0(n5323), .A1(n3968), .B0(n3967), .Y(n3971) );
  NAND2X1 U6402 ( .A(n3969), .B(n5122), .Y(n3970) );
  OAI21X4 U6403 ( .A0(n5280), .A1(n3972), .B0(n5281), .Y(n4690) );
  NOR2X2 U6404 ( .A(n6672), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n4735) );
  NOR2X2 U6405 ( .A(n6669), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n4737) );
  NOR2X1 U6406 ( .A(n4735), .B(n4737), .Y(n3974) );
  NAND2X2 U6407 ( .A(n6672), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n4734) );
  NAND2X1 U6408 ( .A(n6669), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n4738) );
  OAI21X1 U6409 ( .A0(n4737), .A1(n4734), .B0(n4738), .Y(n3973) );
  AOI21X4 U6410 ( .A0(n4690), .A1(n3974), .B0(n3973), .Y(n4202) );
  NOR2X2 U6411 ( .A(n6578), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n3980) );
  NAND2X2 U6412 ( .A(n6578), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n5326) );
  AOI21X1 U6413 ( .A0(n5329), .A1(n5327), .B0(n3975), .Y(n3979) );
  NOR2X4 U6414 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), 
        .B(n3976), .Y(n3983) );
  NOR2X4 U6415 ( .A(n3980), .B(n3983), .Y(n4195) );
  CLKINVX1 U6416 ( .A(n4195), .Y(n3981) );
  NOR2X1 U6417 ( .A(n3981), .B(n4194), .Y(n3986) );
  OAI21X1 U6418 ( .A0(n3984), .A1(n4194), .B0(n4198), .Y(n3985) );
  AOI21X1 U6419 ( .A0(n5329), .A1(n3986), .B0(n3985), .Y(n3990) );
  NOR2X2 U6420 ( .A(n3987), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), .Y(n4197) );
  AOI21X1 U6421 ( .A0(n5329), .A1(n4195), .B0(n4200), .Y(n3993) );
  INVX2 U6422 ( .A(n5498), .Y(n3995) );
  INVX1 U6423 ( .A(n5504), .Y(n3994) );
  OAI21X2 U6424 ( .A0(n5689), .A1(n3995), .B0(n3994), .Y(n3996) );
  AOI21X2 U6425 ( .A0(n5692), .A1(n3997), .B0(n3996), .Y(n4000) );
  NAND2BX1 U6426 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(n4694), .Y(n4002) );
  MXI2X4 U6428 ( .A(n4002), .B(n4001), .S0(
        median_sobel_inst_u_sobel_gradient_submodule_n110), .Y(n4317) );
  XOR2X1 U6430 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n4006)
         );
  OAI21XL U6431 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .A1(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .B0(n6390), .Y(n4008) );
  NOR2X2 U6433 ( .A(n6556), .B(n6631), .Y(n4934) );
  OAI21X4 U6434 ( .A0(n4743), .A1(n4010), .B0(n4744), .Y(n4753) );
  NAND2X1 U6435 ( .A(n6951), .B(n6632), .Y(n4931) );
  NAND2X1 U6436 ( .A(n6556), .B(n6631), .Y(n4935) );
  OAI21X2 U6437 ( .A0(n4934), .A1(n4931), .B0(n4935), .Y(n4011) );
  NOR2X2 U6438 ( .A(n6572), .B(n6693), .Y(n5492) );
  NOR2X2 U6439 ( .A(n6637), .B(n5512), .Y(n5491) );
  NOR2X2 U6440 ( .A(n5492), .B(n5491), .Y(n6365) );
  NAND2X1 U6441 ( .A(n6640), .B(n5514), .Y(n6366) );
  NAND2X6 U6442 ( .A(n5912), .B(n847), .Y(n4026) );
  INVX3 U6443 ( .A(n4020), .Y(n4033) );
  NAND2X2 U6444 ( .A(n4033), .B(n4022), .Y(n4025) );
  XOR2X2 U6446 ( .A(n867), .B(n861), .Y(n4027) );
  XNOR2X4 U6447 ( .A(n6923), .B(n6419), .Y(n4030) );
  NAND2X2 U6448 ( .A(n4030), .B(n839), .Y(n4028) );
  OAI21X4 U6449 ( .A0(n4030), .A1(n4029), .B0(n4028), .Y(n4032) );
  AO21X4 U6450 ( .A0(n4030), .A1(n938), .B0(n885), .Y(n4031) );
  NAND2X2 U6453 ( .A(n4034), .B(n4033), .Y(n4037) );
  XNOR2X4 U6454 ( .A(n4035), .B(n5912), .Y(n4036) );
  NOR2X6 U6455 ( .A(input_data_ready_r[28]), .B(n6555), .Y(n4046) );
  NAND3X6 U6456 ( .A(n4041), .B(n5558), .C(n3428), .Y(n4044) );
  INVX6 U6457 ( .A(n5559), .Y(n6438) );
  NOR2X8 U6458 ( .A(n6438), .B(n5811), .Y(n6437) );
  NAND3X8 U6459 ( .A(n4044), .B(n4043), .C(n4042), .Y(n6449) );
  XNOR2X1 U6461 ( .A(input_data_ready_r[30]), .B(n5961), .Y(n4050) );
  NOR2X4 U6462 ( .A(n6449), .B(n4056), .Y(n4066) );
  NAND2X2 U6463 ( .A(n4058), .B(n4057), .Y(n4060) );
  OAI2BB2X4 U6464 ( .B0(n4066), .B1(n4065), .A0N(input_data_ready_r[23]), 
        .A1N(n4064), .Y(conv_inst_data_bcd_w[9]) );
  NAND2BX1 U6465 ( .AN(n3507), .B(conv_inst_conv_3_r[13]), .Y(n4068) );
  NAND2X1 U6466 ( .A(conv_inst_data_abc_3_r[9]), .B(conv_inst_conv_3_r[9]), 
        .Y(n4077) );
  AND2X2 U6467 ( .A(conv_inst_data_abc_3_r[10]), .B(conv_inst_conv_3_r[10]), 
        .Y(n4079) );
  INVX3 U6468 ( .A(n5598), .Y(n5232) );
  NAND2X1 U6469 ( .A(n5232), .B(conv_inst_conv_3_r[11]), .Y(n4080) );
  NOR2X1 U6470 ( .A(median_sobel_inst_n350), .B(median_sobel_inst_net62749), 
        .Y(n5830) );
  OA22X4 U6471 ( .A0(median_sobel_inst_n382), .A1(n6132), .B0(
        median_sobel_inst_n374), .B1(n4752), .Y(n4083) );
  NAND2X1 U6472 ( .A(n5551), .B(median_sobel_inst_cnt[0]), .Y(n4087) );
  BUFX20 U6473 ( .A(n3080), .Y(n6064) );
  AND2X4 U6474 ( .A(median_sobel_inst_u_sober_compare_submodule_n63), .B(
        median_sobel_inst_u_sober_compare_submodule_n64), .Y(n4088) );
  NAND2X4 U6475 ( .A(n4088), .B(
        median_sobel_inst_u_sober_compare_submodule_n163), .Y(n4098) );
  NAND2X2 U6479 ( .A(n4096), .B(
        median_sobel_inst_u_sober_compare_submodule_n184), .Y(n4090) );
  AOI2BB2X1 U6481 ( .B0(n3579), .B1(n6607), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n83), .Y(n4103) );
  NAND2X1 U6482 ( .A(n6405), .B(n6605), .Y(n4102) );
  NAND2BX2 U6484 ( .AN(n4098), .B(
        median_sobel_inst_u_sober_compare_submodule_n13), .Y(n4099) );
  INVX4 U6485 ( .A(n3747), .Y(n6412) );
  NAND2X1 U6486 ( .A(n6412), .B(n6820), .Y(n4101) );
  NAND3X2 U6487 ( .A(n4103), .B(n4102), .C(n4101), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]) );
  AOI2BB2X1 U6488 ( .B0(n3579), .B1(
        median_sobel_inst_u_sober_compare_submodule_n209), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n79), .Y(n4106) );
  NAND2X1 U6489 ( .A(n6405), .B(
        median_sobel_inst_u_sober_compare_submodule_n216), .Y(n4105) );
  NAND2X1 U6490 ( .A(n6412), .B(
        median_sobel_inst_u_sober_compare_submodule_n212), .Y(n4104) );
  NAND3X2 U6491 ( .A(n4106), .B(n4105), .C(n4104), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]) );
  AOI2BB2X1 U6492 ( .B0(n3579), .B1(n6811), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n87), .Y(n4109) );
  NAND2X1 U6493 ( .A(n6405), .B(n6602), .Y(n4108) );
  NAND2X1 U6495 ( .A(n6406), .B(n6806), .Y(n4107) );
  NAND3X2 U6496 ( .A(n4109), .B(n4108), .C(n4107), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]) );
  NAND2X1 U6497 ( .A(n6406), .B(
        median_sobel_inst_u_sober_compare_submodule_n210), .Y(n4110) );
  AOI2BB2X1 U6498 ( .B0(n6411), .B1(
        median_sobel_inst_u_sober_compare_submodule_n202), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n82), .Y(n4113) );
  NAND2X1 U6499 ( .A(n6405), .B(
        median_sobel_inst_u_sober_compare_submodule_n207), .Y(n4112) );
  NAND2X1 U6500 ( .A(n6406), .B(
        median_sobel_inst_u_sober_compare_submodule_n205), .Y(n4111) );
  NAND3X2 U6501 ( .A(n4113), .B(n4112), .C(n4111), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]) );
  AOI2BB2X1 U6502 ( .B0(n6411), .B1(
        median_sobel_inst_u_sober_compare_submodule_n203), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n84), .Y(n4116) );
  NAND2X1 U6503 ( .A(n6406), .B(
        median_sobel_inst_u_sober_compare_submodule_n206), .Y(n4114) );
  NAND3X2 U6504 ( .A(n4116), .B(n4115), .C(n4114), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]) );
  OR2X4 U6505 ( .A(n4118), .B(n3668), .Y(n4120) );
  XNOR2X4 U6506 ( .A(n4123), .B(n4122), .Y(conv_inst_N74) );
  OR2X4 U6507 ( .A(n3668), .B(n4969), .Y(n4134) );
  NOR2X4 U6508 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .Y(n5672) );
  NOR2X4 U6509 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n133), .Y(n5674) );
  NAND2X2 U6510 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .Y(n5671) );
  NAND2X2 U6511 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n133), .Y(n5675) );
  OAI21X4 U6512 ( .A0(n5674), .A1(n5671), .B0(n5675), .Y(n4136) );
  AOI21X4 U6513 ( .A0(n5225), .A1(n4137), .B0(n4136), .Y(n6332) );
  NOR2X2 U6514 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n124), .Y(n5665) );
  NAND2X1 U6515 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), 
        .B(n3095), .Y(n5664) );
  NAND2BX2 U6516 ( .AN(median_sobel_inst_n365), .B(n6140), .Y(n4140) );
  BUFX12 U6517 ( .A(n4424), .Y(n6133) );
  OAI22X2 U6518 ( .A0(median_sobel_inst_n404), .A1(n6096), .B0(n6133), .B1(
        n4142), .Y(n4143) );
  BUFX12 U6519 ( .A(n4423), .Y(n5832) );
  AOI2BB1X4 U6520 ( .A0N(median_sobel_inst_n389), .A1N(n4693), .B0(n4147), .Y(
        n4149) );
  NAND2X2 U6521 ( .A(median_sobel_inst_n86), .B(n4476), .Y(n4148) );
  NAND2X6 U6522 ( .A(n4149), .B(n4148), .Y(median_sobel_inst_data_f_r[2]) );
  NAND2BX1 U6523 ( .AN(n5698), .B(conv_inst_n42), .Y(n4152) );
  NAND2X1 U6524 ( .A(n3468), .B(conv_inst_n63), .Y(n4151) );
  NAND2BX1 U6525 ( .AN(n5698), .B(conv_inst_conv_3_r[15]), .Y(n4155) );
  AOI22X1 U6526 ( .A0(conv_inst_conv_1_r[15]), .A1(n5699), .B0(
        conv_inst_conv_2_r[15]), .B1(n5700), .Y(n4154) );
  NAND2X2 U6527 ( .A(n4178), .B(
        median_sobel_inst_u_median_filter_submodule_n51), .Y(n4156) );
  OR2X2 U6528 ( .A(median_sobel_inst_u_median_filter_submodule_n98), .B(
        median_sobel_inst_u_median_filter_submodule_n19), .Y(n4180) );
  NAND2X2 U6529 ( .A(n6945), .B(n6944), .Y(n4160) );
  AOI22X1 U6530 ( .A0(median_sobel_inst_u_median_filter_submodule_n24), .A1(
        median_sobel_inst_u_median_filter_submodule_n53), .B0(
        median_sobel_inst_u_median_filter_submodule_net58959), .B1(n4205), .Y(
        n4161) );
  AND2X2 U6531 ( .A(median_sobel_inst_u_median_filter_submodule_net55441), .B(
        median_sobel_inst_u_median_filter_submodule_net60646), .Y(n4165) );
  OAI22X1 U6532 ( .A0(median_sobel_inst_u_median_filter_submodule_net58959), 
        .A1(n4205), .B0(n6566), .B1(n6655), .Y(n4163) );
  NOR2X1 U6533 ( .A(median_sobel_inst_u_median_filter_submodule_b5_r[6]), .B(
        n6947), .Y(n4162) );
  INVX3 U6534 ( .A(n4165), .Y(n4169) );
  NOR2BX2 U6535 ( .AN(n4167), .B(
        median_sobel_inst_u_median_filter_submodule_b9_r[6]), .Y(n4166) );
  NAND2X2 U6536 ( .A(median_sobel_inst_u_median_filter_submodule_b9_r[6]), .B(
        n4168), .Y(n4170) );
  NAND3X2 U6538 ( .A(median_sobel_inst_u_median_filter_submodule_net62055), 
        .B(n4205), .C(n6566), .Y(n4174) );
  NAND2X2 U6539 ( .A(median_sobel_inst_u_median_filter_submodule_b9_r[6]), .B(
        n6465), .Y(n4185) );
  NAND2BX1 U6540 ( .AN(median_sobel_inst_u_median_filter_submodule_net58959), 
        .B(median_sobel_inst_u_median_filter_submodule_net62055), .Y(n4184) );
  NAND3X2 U6541 ( .A(n4185), .B(n4189), .C(n4184), .Y(n4187) );
  NOR2X2 U6542 ( .A(n4194), .B(n4197), .Y(n4201) );
  NAND2X2 U6543 ( .A(n4201), .B(n4195), .Y(n4203) );
  OAI21X1 U6544 ( .A0(n4198), .A1(n4197), .B0(n4196), .Y(n4199) );
  NAND2X1 U6545 ( .A(n6728), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n5214) );
  NAND2X1 U6546 ( .A(n4836), .B(n4833), .Y(n4204) );
  AOI2BB1X1 U6547 ( .A0N(median_sobel_inst_u_median_filter_submodule_n198), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n26), .B0(
        median_sobel_inst_u_median_filter_submodule_n150), .Y(n4209) );
  NAND2X1 U6548 ( .A(median_sobel_inst_u_median_filter_submodule_a5_r[1]), .B(
        median_sobel_inst_u_median_filter_submodule_n149), .Y(n4210) );
  NAND2XL U6549 ( .A(median_sobel_inst_u_median_filter_submodule_n198), .B(
        median_sobel_inst_u_median_filter_submodule_n26), .Y(n4211) );
  NAND2BX4 U6550 ( .AN(median_sobel_inst_u_median_filter_submodule_n198), .B(
        median_sobel_inst_u_median_filter_submodule_n150), .Y(n4213) );
  OAI22X2 U6551 ( .A0(median_sobel_inst_u_median_filter_submodule_n198), .A1(
        median_sobel_inst_u_median_filter_submodule_n211), .B0(
        median_sobel_inst_u_median_filter_submodule_n149), .B1(n5577), .Y(
        n4219) );
  OAI22X2 U6552 ( .A0(median_sobel_inst_u_median_filter_submodule_n372), .A1(
        n5590), .B0(median_sobel_inst_u_median_filter_submodule_n694), .B1(
        median_sobel_inst_u_median_filter_submodule_a5_r[4]), .Y(n4220) );
  NAND2X4 U6555 ( .A(input_data_ready_r[4]), .B(input_data_ready_r[20]), .Y(
        n4251) );
  NOR2X6 U6557 ( .A(n4231), .B(n4230), .Y(n4241) );
  NAND2X8 U6558 ( .A(n4233), .B(n4232), .Y(n4249) );
  NOR2X4 U6559 ( .A(input_data_ready_r[4]), .B(input_data_ready_r[20]), .Y(
        n4235) );
  OR2X2 U6560 ( .A(input_data_ready_r[5]), .B(input_data_ready_r[21]), .Y(
        n4236) );
  NAND3X4 U6561 ( .A(n4249), .B(n4250), .C(n4236), .Y(n4240) );
  NAND2X2 U6562 ( .A(n4241), .B(n4240), .Y(n4237) );
  NAND2X1 U6563 ( .A(input_data_ready_r[6]), .B(input_data_ready_r[22]), .Y(
        n4239) );
  NAND3X4 U6564 ( .A(n4241), .B(n4240), .C(n4239), .Y(n4243) );
  OAI22X4 U6565 ( .A0(n4247), .A1(n4246), .B0(n6577), .B1(n6715), .Y(n6430) );
  AND2X4 U6566 ( .A(n5565), .B(n4264), .Y(n4268) );
  XOR2X2 U6567 ( .A(n882), .B(n940), .Y(n4252) );
  XOR2X2 U6568 ( .A(n3465), .B(n4252), .Y(n4253) );
  NOR2X4 U6569 ( .A(n4253), .B(n938), .Y(n6417) );
  INVX3 U6570 ( .A(n4255), .Y(n4258) );
  NAND3X2 U6571 ( .A(n4259), .B(n4258), .C(n4257), .Y(n4260) );
  XNOR2X2 U6573 ( .A(n4261), .B(n5912), .Y(n4262) );
  NAND2X6 U6574 ( .A(n5563), .B(n5961), .Y(n6429) );
  OA21X4 U6575 ( .A0(n6430), .A1(input_data_ready_r[15]), .B0(n6429), .Y(n4266) );
  INVX2 U6576 ( .A(n4264), .Y(n4265) );
  NOR2X4 U6577 ( .A(n4266), .B(n4265), .Y(n4267) );
  AOI21X4 U6578 ( .A0(n4268), .A1(n3274), .B0(n4267), .Y(n6995) );
  NOR2X4 U6579 ( .A(op_mode_r[1]), .B(n4981), .Y(n4979) );
  NAND2X2 U6580 ( .A(n4981), .B(n4382), .Y(n4846) );
  NOR2X4 U6581 ( .A(n6941), .B(n4846), .Y(n5244) );
  AOI21X1 U6582 ( .A0(n4979), .A1(n4382), .B0(n5244), .Y(n4269) );
  NAND2X2 U6583 ( .A(n4272), .B(n4270), .Y(n4555) );
  NAND2X2 U6584 ( .A(n4555), .B(n6692), .Y(n4276) );
  NAND2X1 U6585 ( .A(n5244), .B(n6040), .Y(n4274) );
  NAND3X2 U6586 ( .A(n4276), .B(n4275), .C(n4274), .Y(n488) );
  CLKINVX1 U6587 ( .A(N726), .Y(n4277) );
  AOI2BB2X4 U6588 ( .B0(n488), .B1(n4277), .A0N(n6040), .A1N(n6601), .Y(n487)
         );
  NAND2BX2 U6589 ( .AN(median_sobel_inst_n430), .B(n6140), .Y(n4280) );
  NAND2BX2 U6590 ( .AN(median_sobel_inst_n438), .B(n3434), .Y(n4279) );
  AOI22X2 U6591 ( .A0(n6060), .A1(median_sobel_inst_n73), .B0(
        median_sobel_inst_net43895), .B1(n2899), .Y(n4278) );
  XOR2X1 U6592 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n137), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N167) );
  MX2X1 U6593 ( .A(median_sobel_inst_G[11]), .B(n6614), .S0(n5979), .Y(
        median_sobel_inst_n481) );
  NAND2X2 U6594 ( .A(n5427), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n4281)
         );
  NAND2X2 U6595 ( .A(n4281), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n31), .Y(n4799) );
  OA21X2 U6596 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n31), .A1(
        n4281), .B0(n4799), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N103) );
  NOR2XL U6597 ( .A(n5796), .B(n6681), .Y(
        median_sobel_inst_u_sober_compare_submodule_N29) );
  OR2X4 U6598 ( .A(median_sobel_inst_u_median_filter_submodule_n159), .B(
        median_sobel_inst_u_median_filter_submodule_n199), .Y(n5454) );
  NAND2X4 U6599 ( .A(n4748), .B(n5454), .Y(n5455) );
  AOI2BB2X1 U6600 ( .B0(n5457), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .A0N(n5455), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n114), .Y(n4293) );
  NAND2X2 U6601 ( .A(n4612), .B(median_sobel_inst_n656), .Y(n4299) );
  AND2X8 U6602 ( .A(n3462), .B(median_sobel_inst_n154), .Y(n4305) );
  NAND3BX2 U6603 ( .AN(median_sobel_inst_n325), .B(median_sobel_inst_n324), 
        .C(median_sobel_inst_n319), .Y(n4296) );
  OAI21X4 U6604 ( .A0(n4299), .A1(n3694), .B0(n4297), .Y(
        median_sobel_inst_n866) );
  NAND2X1 U6605 ( .A(median_sobel_inst_n324), .B(median_sobel_inst_n325), .Y(
        n4318) );
  OAI21X1 U6606 ( .A0(median_sobel_inst_n153), .A1(med_sobel_isFirst_signal_r), 
        .B0(median_sobel_inst_n319), .Y(n4303) );
  NAND2BX4 U6607 ( .AN(median_sobel_inst_n866), .B(n4316), .Y(n4307) );
  NAND2X1 U6608 ( .A(n5538), .B(median_sobel_inst_cnt[3]), .Y(n4308) );
  XNOR2X1 U6609 ( .A(n4308), .B(median_sobel_inst_n324), .Y(n4309) );
  NOR2X2 U6610 ( .A(n5603), .B(n4309), .Y(median_sobel_inst_N116) );
  NOR2X1 U6611 ( .A(median_sobel_inst_u_median_filter_submodule_n686), .B(
        n6677), .Y(n6240) );
  OR2X4 U6612 ( .A(median_sobel_inst_u_median_filter_submodule_n488), .B(
        median_sobel_inst_u_median_filter_submodule_n199), .Y(n5429) );
  AOI2BB2X1 U6613 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n67), .A1N(n5429), .Y(
        n4312) );
  OAI21XL U6614 ( .A0(n6889), .A1(n5431), .B0(n4312), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[1]) );
  OA22X1 U6615 ( .A0(n4748), .A1(n6693), .B0(
        median_sobel_inst_u_median_filter_submodule_n66), .B1(n5454), .Y(n4313) );
  OAI21XL U6616 ( .A0(n5455), .A1(
        median_sobel_inst_u_median_filter_submodule_n44), .B0(n4313), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[5]) );
  AOI2BB2X1 U6617 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .A0N(n5429), 
        .A1N(n5235), .Y(n4314) );
  OAI21XL U6618 ( .A0(n5431), .A1(n6779), .B0(n4314), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[0]) );
  MXI2XL U6619 ( .A(n6953), .B(median_sobel_inst_n255), .S0(n6096), .Y(n6604)
         );
  MX2X1 U6620 ( .A(n6850), .B(median_sobel_inst_n122), .S0(n6048), .Y(
        median_sobel_inst_n562) );
  XOR2X1 U6621 ( .A(n4317), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1230) );
  MXI2X1 U6622 ( .A(median_sobel_inst_n402), .B(median_sobel_inst_n248), .S0(
        n3434), .Y(median_sobel_inst_n542) );
  CLKINVX1 U6623 ( .A(n6952), .Y(n6076) );
  AOI2BB1X1 U6624 ( .A0N(median_sobel_inst_n324), .A1N(median_sobel_inst_n325), 
        .B0(median_sobel_inst_n661), .Y(n4320) );
  NAND4BX1 U6625 ( .AN(n4320), .B(median_sobel_inst_n154), .C(n4319), .D(n6069), .Y(n4321) );
  MX2X1 U6627 ( .A(n6795), .B(median_sobel_inst_n123), .S0(n6096), .Y(
        median_sobel_inst_n581) );
  AOI2BB2X1 U6628 ( .B0(n5624), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .A0N(n5178), 
        .A1N(n6701), .Y(n4323) );
  OAI21XL U6629 ( .A0(median_sobel_inst_u_median_filter_submodule_n56), .A1(
        n5621), .B0(n4323), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[1]) );
  XOR2X2 U6630 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N1310), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N119) );
  NAND2X2 U6631 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N119), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n4325) );
  NAND2X2 U6632 ( .A(n4325), .B(n4324), .Y(n4326) );
  NAND2X4 U6633 ( .A(n4326), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4329) );
  NOR2X1 U6634 ( .A(n4419), .B(n4328), .Y(n4330) );
  NAND2X2 U6635 ( .A(n4333), .B(n4332), .Y(n5380) );
  OAI21X1 U6636 ( .A0(n5380), .A1(n4336), .B0(n4335), .Y(n4338) );
  XNOR2X1 U6637 ( .A(n4338), .B(n4337), .Y(n4339) );
  NOR2X1 U6638 ( .A(n4339), .B(n5619), .Y(conv_inst_N275) );
  NOR2XL U6639 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        n6851), .Y(n4341) );
  OAI21XL U6640 ( .A0(n4343), .A1(n4342), .B0(n4420), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1200) );
  MXI2X1 U6641 ( .A(median_sobel_inst_n189), .B(n6436), .S0(n5541), .Y(
        median_sobel_inst_med_sobel_e_wait_r[16]) );
  MXI2X1 U6642 ( .A(median_sobel_inst_n155), .B(n865), .S0(n6090), .Y(
        median_sobel_inst_med_sobel_e_wait_r[0]) );
  MXI2X1 U6643 ( .A(median_sobel_inst_u_sober_compare_submodule_n83), .B(n6823), .S0(n5796), .Y(median_sobel_inst_u_sober_compare_submodule_n135) );
  OAI22XL U6644 ( .A0(n5549), .A1(n4413), .B0(n4503), .B1(n5548), .Y(
        conv_inst_N132) );
  OAI22XL U6645 ( .A0(n5549), .A1(n3486), .B0(n3470), .B1(n5548), .Y(
        conv_inst_N127) );
  OAI22XL U6646 ( .A0(n5549), .A1(n6895), .B0(n5385), .B1(n5548), .Y(
        conv_inst_N144) );
  MXI2X1 U6647 ( .A(median_sobel_inst_n330), .B(n6879), .S0(n3461), .Y(
        median_sobel_inst_n614) );
  NAND2BX1 U6648 ( .AN(n3453), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[20]), .Y(
        n4369) );
  NOR3X1 U6650 ( .A(n4346), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n50), .C(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .Y(
        n4349) );
  NOR2BX1 U6651 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[10]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[22]), .Y(
        n4348) );
  NOR2BX1 U6652 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n20), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net41157), .Y(n4347) );
  NOR3X2 U6653 ( .A(n4349), .B(n4348), .C(n4347), .Y(n4351) );
  OAI22XL U6654 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r[10]), .A1(
        n6720), .B0(median_sobel_inst_u_sobel_gradient_submodule_n138), .B1(
        n6582), .Y(n4350) );
  AOI21X2 U6655 ( .A0(n4352), .A1(n4351), .B0(n4350), .Y(n4357) );
  INVXL U6656 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n138), .Y(
        n4353) );
  AOI21X1 U6657 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[25]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n60), .B0(n4354), .Y(
        n4355) );
  AOI21X1 U6660 ( .A0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[26]), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n52), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[27]), .Y(
        n4361) );
  NOR2XL U6661 ( .A(n6924), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net61071), .Y(n4362) );
  NAND3BX2 U6662 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[21]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net61071), .C(n4365), .Y(
        n4368) );
  NAND2XL U6663 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net61937), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n20), .Y(n4366) );
  AND2X2 U6664 ( .A(n6585), .B(median_sobel_inst_u_sobel_gradient_submodule_n5), .Y(n4370) );
  OAI21X1 U6665 ( .A0(n4370), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[25]), .B0(
        n6783), .Y(n4373) );
  NAND2XL U6666 ( .A(n4370), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[25]), .Y(
        n4371) );
  NOR2X1 U6667 ( .A(n4376), .B(n4375), .Y(n4380) );
  NAND2X1 U6668 ( .A(n4378), .B(n6833), .Y(n4379) );
  OAI21XL U6669 ( .A0(i_op_valid), .A1(n4382), .B0(n4381), .Y(n442) );
  OAI21XL U6670 ( .A0(i_op_valid), .A1(n4981), .B0(n4383), .Y(n440) );
  OAI21XL U6671 ( .A0(i_op_valid), .A1(n6925), .B0(n4384), .Y(n443) );
  OAI21XL U6672 ( .A0(i_op_valid), .A1(n6941), .B0(n4385), .Y(n441) );
  AOI2BB2X1 U6673 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n109), .A1N(n5429), .Y(
        n4386) );
  OAI21XL U6674 ( .A0(n5431), .A1(n6572), .B0(n4386), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[6]) );
  OAI22XL U6675 ( .A0(n4425), .A1(
        median_sobel_inst_u_sober_compare_submodule_n151), .B0(
        median_sobel_inst_u_sober_compare_submodule_n140), .B1(n4579), .Y(
        n4388) );
  OAI22XL U6676 ( .A0(median_sobel_inst_u_sober_compare_submodule_n76), .A1(
        n4550), .B0(median_sobel_inst_u_sober_compare_submodule_n87), .B1(
        n4426), .Y(n4387) );
  OAI22XL U6677 ( .A0(n4425), .A1(
        median_sobel_inst_u_sober_compare_submodule_n152), .B0(
        median_sobel_inst_u_sober_compare_submodule_n141), .B1(n4579), .Y(
        n4390) );
  OAI22XL U6678 ( .A0(median_sobel_inst_u_sober_compare_submodule_n75), .A1(
        n4550), .B0(median_sobel_inst_u_sober_compare_submodule_n86), .B1(
        n4426), .Y(n4389) );
  OR2X1 U6679 ( .A(n4390), .B(n4389), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]) );
  MXI2X1 U6680 ( .A(median_sobel_inst_n156), .B(n5610), .S0(n5541), .Y(
        median_sobel_inst_med_sobel_e_wait_r[1]) );
  MXI2X1 U6681 ( .A(median_sobel_inst_n177), .B(n6860), .S0(n5984), .Y(
        median_sobel_inst_med_sobel_e_wait_r[83]) );
  MXI2X1 U6682 ( .A(median_sobel_inst_n366), .B(median_sobel_inst_n204), .S0(
        n3434), .Y(median_sobel_inst_n586) );
  MXI2X1 U6683 ( .A(median_sobel_inst_n176), .B(n6634), .S0(n6094), .Y(
        median_sobel_inst_med_sobel_e_wait_r[82]) );
  CLKINVX1 U6684 ( .A(n4398), .Y(n4399) );
  NOR2X2 U6685 ( .A(n4403), .B(n5619), .Y(conv_inst_N258) );
  XOR2X1 U6686 ( .A(conv_inst_data_abc_3_r[8]), .B(conv_inst_conv_3_r[8]), .Y(
        n4406) );
  MXI2X1 U6687 ( .A(median_sobel_inst_n210), .B(n6577), .S0(n5796), .Y(
        median_sobel_inst_n856) );
  NAND3X2 U6688 ( .A(n4409), .B(conv_inst_n63), .C(conv_inst_conv_4_r[15]), 
        .Y(n4410) );
  MXI2X1 U6689 ( .A(n6993), .B(median_sobel_inst_n237), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[58]) );
  MXI2X1 U6690 ( .A(n6076), .B(median_sobel_inst_n238), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[59]) );
  OAI22XL U6691 ( .A0(n5549), .A1(n3470), .B0(n6623), .B1(n5548), .Y(
        conv_inst_N128) );
  OAI22XL U6692 ( .A0(n5549), .A1(n6603), .B0(n3740), .B1(n5548), .Y(
        conv_inst_N137) );
  OAI22XL U6693 ( .A0(n5549), .A1(n6807), .B0(n3486), .B1(n5548), .Y(
        conv_inst_N126) );
  OAI22XL U6694 ( .A0(n5549), .A1(n6896), .B0(n4414), .B1(n5548), .Y(
        conv_inst_N130) );
  OAI22XL U6695 ( .A0(n5549), .A1(n4414), .B0(n4413), .B1(n5548), .Y(
        conv_inst_N131) );
  OAI22XL U6696 ( .A0(n5549), .A1(n6875), .B0(n3742), .B1(n5548), .Y(
        conv_inst_N139) );
  AO21X1 U6697 ( .A0(median_sobel_inst_n325), .A1(n6048), .B0(n5538), .Y(n4415) );
  NOR2X2 U6698 ( .A(n5603), .B(n4415), .Y(median_sobel_inst_N114) );
  MXI2X1 U6699 ( .A(median_sobel_inst_n161), .B(n6841), .S0(n6081), .Y(
        median_sobel_inst_med_sobel_e_wait_r[6]) );
  OAI21XL U6700 ( .A0(median_sobel_inst_u_median_filter_submodule_n197), .A1(
        n6871), .B0(median_sobel_inst_u_median_filter_submodule_net55220), .Y(
        n4416) );
  OAI21XL U6701 ( .A0(median_sobel_inst_u_median_filter_submodule_n148), .A1(
        n4417), .B0(n4416), .Y(
        median_sobel_inst_u_median_filter_submodule_n678) );
  MXI2X1 U6702 ( .A(median_sobel_inst_n415), .B(median_sobel_inst_n163), .S0(
        n6044), .Y(median_sobel_inst_n539) );
  MXI2X1 U6703 ( .A(median_sobel_inst_n368), .B(median_sobel_inst_n218), .S0(
        n4476), .Y(median_sobel_inst_n572) );
  XOR2X1 U6704 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N1310), .Y(n4418) );
  MXI2X1 U6705 ( .A(n4420), .B(n4419), .S0(n4418), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1330) );
  OAI22XL U6706 ( .A0(n4425), .A1(
        median_sobel_inst_u_sober_compare_submodule_n158), .B0(
        median_sobel_inst_u_sober_compare_submodule_n147), .B1(n4579), .Y(
        n4422) );
  OAI22XL U6707 ( .A0(median_sobel_inst_u_sober_compare_submodule_n69), .A1(
        n4550), .B0(median_sobel_inst_u_sober_compare_submodule_n80), .B1(
        n4426), .Y(n4421) );
  OR2X1 U6708 ( .A(n4422), .B(n4421), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]) );
  BUFX12 U6709 ( .A(n4423), .Y(n6135) );
  MXI2X1 U6710 ( .A(n5939), .B(median_sobel_inst_n246), .S0(n6135), .Y(
        median_sobel_inst_med_sobel_e_wait_r[66]) );
  MX2X1 U6711 ( .A(median_sobel_inst_angle[2]), .B(
        median_sobel_inst_u_sober_compare_submodule_n21), .S0(n5834), .Y(
        median_sobel_inst_u_sober_compare_submodule_n92) );
  MXI2X1 U6712 ( .A(median_sobel_inst_n240), .B(n6650), .S0(n6122), .Y(
        median_sobel_inst_med_sobel_e_wait_r[61]) );
  MXI2X1 U6713 ( .A(median_sobel_inst_n170), .B(n6715), .S0(n6122), .Y(
        median_sobel_inst_n862) );
  MXI2X1 U6714 ( .A(median_sobel_inst_n157), .B(n6993), .S0(n6146), .Y(
        median_sobel_inst_med_sobel_e_wait_r[2]) );
  MXI2X1 U6715 ( .A(median_sobel_inst_n200), .B(n6634), .S0(n5541), .Y(
        median_sobel_inst_med_sobel_e_wait_r[26]) );
  MXI2X1 U6716 ( .A(median_sobel_inst_n190), .B(n5811), .S0(n6090), .Y(
        median_sobel_inst_med_sobel_e_wait_r[17]) );
  MXI2X1 U6717 ( .A(median_sobel_inst_n192), .B(n6546), .S0(n6136), .Y(
        median_sobel_inst_med_sobel_e_wait_r[19]) );
  MXI2X1 U6718 ( .A(median_sobel_inst_n193), .B(n6852), .S0(n6146), .Y(
        median_sobel_inst_med_sobel_e_wait_r[20]) );
  MXI2X1 U6719 ( .A(median_sobel_inst_n159), .B(n6953), .S0(n5541), .Y(
        median_sobel_inst_med_sobel_e_wait_r[4]) );
  MXI2X1 U6720 ( .A(median_sobel_inst_n199), .B(n6633), .S0(n6090), .Y(
        median_sobel_inst_med_sobel_e_wait_r[25]) );
  OAI22XL U6721 ( .A0(n4425), .A1(
        median_sobel_inst_u_sober_compare_submodule_n155), .B0(
        median_sobel_inst_u_sober_compare_submodule_n144), .B1(n4579), .Y(
        n4428) );
  OAI22XL U6722 ( .A0(median_sobel_inst_u_sober_compare_submodule_n72), .A1(
        n4550), .B0(median_sobel_inst_u_sober_compare_submodule_n83), .B1(
        n4426), .Y(n4427) );
  OR2X1 U6723 ( .A(n4428), .B(n4427), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]) );
  MXI2X1 U6724 ( .A(median_sobel_inst_n202), .B(n6797), .S0(n6090), .Y(
        median_sobel_inst_n853) );
  MXI2X1 U6725 ( .A(median_sobel_inst_n184), .B(n6545), .S0(n6136), .Y(
        median_sobel_inst_med_sobel_e_wait_r[12]) );
  MXI2X1 U6726 ( .A(median_sobel_inst_n241), .B(n6841), .S0(n6122), .Y(
        median_sobel_inst_med_sobel_e_wait_r[62]) );
  MXI2X1 U6727 ( .A(median_sobel_inst_n168), .B(n6546), .S0(n5984), .Y(
        median_sobel_inst_med_sobel_e_wait_r[75]) );
  MXI2X1 U6728 ( .A(median_sobel_inst_n167), .B(n6846), .S0(n5984), .Y(
        median_sobel_inst_med_sobel_e_wait_r[74]) );
  MXI2X1 U6729 ( .A(median_sobel_inst_n375), .B(median_sobel_inst_n211), .S0(
        n6049), .Y(median_sobel_inst_n579) );
  MXI2X1 U6730 ( .A(median_sobel_inst_n239), .B(n6953), .S0(n6094), .Y(
        median_sobel_inst_med_sobel_e_wait_r[60]) );
  MXI2X1 U6731 ( .A(median_sobel_inst_n175), .B(n6633), .S0(n6094), .Y(
        median_sobel_inst_med_sobel_e_wait_r[81]) );
  MXI2X1 U6732 ( .A(median_sobel_inst_n434), .B(n6546), .S0(n5534), .Y(
        median_sobel_inst_n502) );
  CLKINVX1 U6733 ( .A(n4429), .Y(n4431) );
  NOR2X4 U6734 ( .A(n5146), .B(n4433), .Y(n6455) );
  NOR2X2 U6735 ( .A(n4434), .B(n6455), .Y(conv_inst_N248) );
  MXI2X1 U6736 ( .A(n5811), .B(median_sobel_inst_n166), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[73]) );
  XOR2X1 U6737 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]), .Y(n4435) );
  OAI22XL U6738 ( .A0(n5549), .A1(n6623), .B0(n6896), .B1(n5548), .Y(
        conv_inst_N129) );
  OAI22XL U6739 ( .A0(n5549), .A1(n6880), .B0(n6554), .B1(n5548), .Y(
        conv_inst_N141) );
  AOI21X2 U6740 ( .A0(n4442), .A1(n4441), .B0(n4440), .Y(conv_inst_N283) );
  OAI22XL U6741 ( .A0(n5549), .A1(n3742), .B0(n6880), .B1(n5548), .Y(
        conv_inst_N140) );
  OAI22XL U6742 ( .A0(n5549), .A1(n3740), .B0(n6875), .B1(n5548), .Y(
        conv_inst_N138) );
  OAI22XL U6743 ( .A0(n5549), .A1(n6624), .B0(n6895), .B1(n5548), .Y(
        conv_inst_N143) );
  MXI2X1 U6744 ( .A(median_sobel_inst_n411), .B(median_sobel_inst_n167), .S0(
        n4881), .Y(median_sobel_inst_n535) );
  MX2X1 U6745 ( .A(input_data_ready_r[31]), .B(n6863), .S0(n5832), .Y(
        median_sobel_inst_n861) );
  MXI2X1 U6746 ( .A(median_sobel_inst_n165), .B(n6649), .S0(n6096), .Y(
        median_sobel_inst_n537) );
  MXI2X1 U6747 ( .A(median_sobel_inst_n249), .B(n6695), .S0(n6096), .Y(
        median_sobel_inst_n541) );
  MXI2X1 U6748 ( .A(median_sobel_inst_n432), .B(n6715), .S0(n4630), .Y(
        median_sobel_inst_n500) );
  MXI2X1 U6749 ( .A(median_sobel_inst_n170), .B(n6659), .S0(n6096), .Y(
        median_sobel_inst_n532) );
  MXI2X1 U6750 ( .A(median_sobel_inst_n169), .B(n6852), .S0(n6122), .Y(
        median_sobel_inst_med_sobel_e_wait_r[76]) );
  MXI2X1 U6751 ( .A(median_sobel_inst_n250), .B(n6738), .S0(n5944), .Y(
        median_sobel_inst_n860) );
  AOI2BB2X1 U6752 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n114), .A1N(n5429), .Y(
        n4445) );
  OAI21XL U6753 ( .A0(median_sobel_inst_u_median_filter_submodule_n37), .A1(
        n5431), .B0(n4445), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[2]) );
  NAND3X1 U6754 ( .A(n4467), .B(n4446), .C(n4808), .Y(n4449) );
  NAND2BX2 U6755 ( .AN(n4447), .B(n4808), .Y(n4448) );
  NAND2X1 U6758 ( .A(n4459), .B(n4458), .Y(n4460) );
  NOR2X1 U6759 ( .A(n4814), .B(n4460), .Y(n4461) );
  NOR2X2 U6760 ( .A(n4462), .B(n4461), .Y(conv_inst_N245) );
  CLKINVX1 U6761 ( .A(n6478), .Y(n4464) );
  OAI21XL U6762 ( .A0(n384), .A1(n4465), .B0(n4464), .Y(n1451) );
  MXI2X1 U6763 ( .A(median_sobel_inst_n369), .B(median_sobel_inst_n217), .S0(
        n3434), .Y(median_sobel_inst_n573) );
  MXI2X1 U6764 ( .A(median_sobel_inst_n382), .B(median_sobel_inst_n220), .S0(
        n5534), .Y(median_sobel_inst_n570) );
  MXI2X1 U6765 ( .A(median_sobel_inst_n383), .B(median_sobel_inst_n219), .S0(
        n3141), .Y(median_sobel_inst_n571) );
  MXI2X1 U6766 ( .A(n5912), .B(median_sobel_inst_n245), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[65]) );
  XOR2X1 U6767 ( .A(conv_inst_data_bcd_2_r[5]), .B(conv_inst_conv_2_r[5]), .Y(
        n4717) );
  NAND2X2 U6768 ( .A(n4716), .B(n4472), .Y(n4474) );
  XNOR2X1 U6769 ( .A(conv_inst_data_bcd_2_r[6]), .B(conv_inst_conv_2_r[6]), 
        .Y(n4473) );
  XOR2X1 U6770 ( .A(n4474), .B(n4473), .Y(n4475) );
  NOR2X2 U6771 ( .A(n4475), .B(n5619), .Y(conv_inst_N242) );
  MXI2X1 U6772 ( .A(median_sobel_inst_n264), .B(n6634), .S0(n3461), .Y(
        median_sobel_inst_n494) );
  MXI2X1 U6773 ( .A(median_sobel_inst_n334), .B(median_sobel_inst_n156), .S0(
        n6128), .Y(median_sobel_inst_n618) );
  MXI2X1 U6774 ( .A(median_sobel_inst_n398), .B(median_sobel_inst_n236), .S0(
        n6044), .Y(median_sobel_inst_n554) );
  MXI2X1 U6775 ( .A(median_sobel_inst_n258), .B(n6577), .S0(n4630), .Y(
        median_sobel_inst_n516) );
  MXI2X1 U6776 ( .A(median_sobel_inst_n435), .B(n6846), .S0(n3434), .Y(
        median_sobel_inst_n503) );
  MXI2X1 U6777 ( .A(median_sobel_inst_n263), .B(n6633), .S0(n3461), .Y(
        median_sobel_inst_n495) );
  MXI2X1 U6778 ( .A(median_sobel_inst_n377), .B(median_sobel_inst_n225), .S0(
        n4630), .Y(median_sobel_inst_n565) );
  XNOR2X1 U6779 ( .A(n4478), .B(n4477), .Y(n4479) );
  OAI21X4 U6780 ( .A0(median_sobel_inst_u_sober_compare_submodule_net62914), 
        .A1(n4529), .B0(n4480), .Y(n4489) );
  NAND2X1 U6781 ( .A(n6551), .B(
        median_sobel_inst_u_sober_compare_submodule_n52), .Y(n4481) );
  NOR2X4 U6782 ( .A(n4483), .B(n4482), .Y(n4488) );
  NAND2X2 U6783 ( .A(n4484), .B(
        median_sobel_inst_u_sober_compare_submodule_net62112), .Y(n4486) );
  OAI22X2 U6784 ( .A0(n4484), .A1(
        median_sobel_inst_u_sober_compare_submodule_net62112), .B0(
        median_sobel_inst_u_sober_compare_submodule_n10), .B1(
        median_sobel_inst_u_sober_compare_submodule_net56546), .Y(n4485) );
  AOI21X4 U6785 ( .A0(median_sobel_inst_u_sober_compare_submodule_net62914), 
        .A1(n4486), .B0(n4485), .Y(n4487) );
  NOR2BX1 U6786 ( .AN(median_sobel_inst_u_sober_compare_submodule_n4), .B(
        median_sobel_inst_u_sober_compare_submodule_n14), .Y(n4491) );
  NOR3X2 U6787 ( .A(n4491), .B(n4490), .C(n4495), .Y(n4492) );
  OAI21X4 U6788 ( .A0(n4498), .A1(n4497), .B0(n4496), .Y(n4499) );
  OAI22XL U6789 ( .A0(n5549), .A1(n6554), .B0(n6624), .B1(n5548), .Y(
        conv_inst_N142) );
  MXI2X1 U6790 ( .A(median_sobel_inst_n266), .B(n6797), .S0(n6044), .Y(
        median_sobel_inst_n492) );
  OAI22XL U6791 ( .A0(n5549), .A1(n4503), .B0(n6891), .B1(n5548), .Y(
        conv_inst_N133) );
  NOR2X1 U6792 ( .A(n5944), .B(n6077), .Y(n4504) );
  CLKBUFX3 U6793 ( .A(i_rst_n), .Y(n6985) );
  CLKBUFX3 U6794 ( .A(i_rst_n), .Y(n6984) );
  CLKBUFX3 U6795 ( .A(i_rst_n), .Y(n6986) );
  CLKBUFX3 U6796 ( .A(i_rst_n), .Y(n6962) );
  CLKBUFX3 U6797 ( .A(i_rst_n), .Y(n6983) );
  CLKBUFX3 U6798 ( .A(i_rst_n), .Y(n6959) );
  CLKBUFX3 U6799 ( .A(i_rst_n), .Y(n6958) );
  CLKBUFX3 U6800 ( .A(i_rst_n), .Y(n6988) );
  CLKBUFX8 U6801 ( .A(i_rst_n), .Y(n6989) );
  CLKBUFX3 U6802 ( .A(i_rst_n), .Y(n6987) );
  CLKBUFX8 U6803 ( .A(n6991), .Y(n6974) );
  BUFX4 U6804 ( .A(n6972), .Y(n6982) );
  CLKBUFX8 U6805 ( .A(n6990), .Y(n6979) );
  MXI2X1 U6806 ( .A(median_sobel_inst_n244), .B(n6834), .S0(n6096), .Y(
        median_sobel_inst_n546) );
  OAI21XL U6807 ( .A0(median_sobel_inst_u_median_filter_submodule_net55441), 
        .A1(n6583), .B0(n6874), .Y(n4506) );
  OAI21XL U6808 ( .A0(median_sobel_inst_u_median_filter_submodule_net60646), 
        .A1(n4507), .B0(n4506), .Y(
        median_sobel_inst_u_median_filter_submodule_net34505) );
  MXI2X1 U6809 ( .A(n5961), .B(median_sobel_inst_n249), .S0(n5832), .Y(
        median_sobel_inst_med_sobel_e_wait_r[69]) );
  MXI2X1 U6810 ( .A(median_sobel_inst_n243), .B(n6819), .S0(n6048), .Y(
        median_sobel_inst_n547) );
  MXI2X1 U6811 ( .A(median_sobel_inst_n242), .B(n6577), .S0(n5984), .Y(
        median_sobel_inst_n859) );
  MXI2X1 U6812 ( .A(median_sobel_inst_n248), .B(n6545), .S0(n6094), .Y(
        median_sobel_inst_med_sobel_e_wait_r[68]) );
  XOR2X1 U6813 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), .Y(
        n4508) );
  XOR2X1 U6814 ( .A(n4508), .B(n5332), .Y(n4509) );
  AOI21X2 U6815 ( .A0(n4513), .A1(n4512), .B0(n4511), .Y(n4515) );
  XOR2X1 U6816 ( .A(conv_inst_data_bcd_4_r[10]), .B(conv_inst_conv_4_r[10]), 
        .Y(n4514) );
  NOR2X2 U6817 ( .A(n4516), .B(n5619), .Y(conv_inst_N280) );
  XNOR2X1 U6818 ( .A(conv_inst_data_abc_1_r[8]), .B(conv_inst_conv_1_r[8]), 
        .Y(n4517) );
  XOR2X1 U6819 ( .A(conv_inst_data_abc_1_r[5]), .B(conv_inst_conv_1_r[5]), .Y(
        n4525) );
  NAND2X2 U6820 ( .A(n4534), .B(n4533), .Y(n4536) );
  XNOR2X1 U6821 ( .A(conv_inst_data_abc_1_r[6]), .B(conv_inst_conv_1_r[6]), 
        .Y(n4535) );
  XOR2X2 U6822 ( .A(n4536), .B(n4535), .Y(n4537) );
  NOR2X2 U6823 ( .A(n4537), .B(n5619), .Y(conv_inst_N225) );
  XOR2X1 U6824 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N147) );
  XOR2X1 U6825 ( .A(n4539), .B(n6736), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N121) );
  NAND2BX1 U6826 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_0_), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), .Y(n4542)
         );
  NAND2XL U6827 ( .A(n5272), .B(n4542), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]) );
  MXI2X1 U6828 ( .A(median_sobel_inst_n180), .B(n6419), .S0(n6146), .Y(
        median_sobel_inst_med_sobel_e_wait_r[8]) );
  MXI2X1 U6829 ( .A(median_sobel_inst_n186), .B(n6738), .S0(n6146), .Y(
        median_sobel_inst_n852) );
  AOI2BB2X1 U6830 ( .B0(n4659), .B1(
        median_sobel_inst_u_sober_compare_submodule_n217), .A0N(n4579), .A1N(
        n4543), .Y(n4546) );
  NAND2BX1 U6831 ( .AN(median_sobel_inst_u_sober_compare_submodule_n81), .B(
        n4088), .Y(n4545) );
  XOR2X1 U6832 ( .A(conv_inst_conv_3_r[3]), .B(conv_inst_n62), .Y(n4547) );
  XOR2X1 U6833 ( .A(n4548), .B(n4547), .Y(n4549) );
  OAI21XL U6835 ( .A0(n4979), .A1(n4552), .B0(n469), .Y(n4554) );
  NAND2X1 U6836 ( .A(n4555), .B(N730), .Y(n4553) );
  OAI21X1 U6837 ( .A0(n4555), .A1(n4554), .B0(n4553), .Y(n489) );
  MXI2X1 U6838 ( .A(median_sobel_inst_n250), .B(n6668), .S0(n6096), .Y(
        median_sobel_inst_n540) );
  XOR2X1 U6839 ( .A(n4556), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n99), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N68) );
  MXI2X1 U6840 ( .A(median_sobel_inst_n247), .B(n6710), .S0(n6048), .Y(
        median_sobel_inst_n543) );
  AND2X4 U6841 ( .A(n2721), .B(n4560), .Y(n5582) );
  INVX4 U6842 ( .A(n5582), .Y(n5733) );
  NAND3XL U6843 ( .A(n4563), .B(n4562), .C(n807), .Y(n4564) );
  NAND3X1 U6844 ( .A(n4566), .B(n4565), .C(n4564), .Y(n4567) );
  OAI21X1 U6845 ( .A0(i_op_valid), .A1(n5733), .B0(n4569), .Y(n1452) );
  INVXL U6846 ( .A(median_sobel_inst_u_sober_compare_submodule_n206), .Y(n4570) );
  AOI2BB2X1 U6847 ( .B0(n4659), .B1(
        median_sobel_inst_u_sober_compare_submodule_n218), .A0N(n4579), .A1N(
        n4570), .Y(n4573) );
  NAND2BX1 U6848 ( .AN(median_sobel_inst_u_sober_compare_submodule_n84), .B(
        n4088), .Y(n4572) );
  INVXL U6849 ( .A(median_sobel_inst_u_sober_compare_submodule_n211), .Y(n4574) );
  AOI2BB2X1 U6850 ( .B0(n4659), .B1(
        median_sobel_inst_u_sober_compare_submodule_n215), .A0N(n4579), .A1N(
        n4574), .Y(n4577) );
  NAND2BX1 U6851 ( .AN(median_sobel_inst_u_sober_compare_submodule_n78), .B(
        n4088), .Y(n4576) );
  INVXL U6852 ( .A(median_sobel_inst_u_sober_compare_submodule_n205), .Y(n4578) );
  AOI2BB2X1 U6853 ( .B0(n4659), .B1(
        median_sobel_inst_u_sober_compare_submodule_n207), .A0N(n4579), .A1N(
        n4578), .Y(n4582) );
  NAND2BX1 U6854 ( .AN(median_sobel_inst_u_sober_compare_submodule_n82), .B(
        n4088), .Y(n4581) );
  XOR2X1 U6855 ( .A(conv_inst_conv_1_r[1]), .B(conv_inst_data_abc_1_r[1]), .Y(
        n4583) );
  XOR2X1 U6856 ( .A(n4583), .B(n5341), .Y(n4584) );
  XNOR2X1 U6857 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), 
        .Y(n4585) );
  XOR2X1 U6858 ( .A(n4586), .B(n4585), .Y(n4587) );
  NOR2X1 U6859 ( .A(i_in_valid), .B(sram_wen_ready_r[0]), .Y(n4589) );
  NAND2X2 U6860 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .Y(n4871) );
  XOR2X1 U6861 ( .A(n4641), .B(n4594), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]) );
  XOR2X1 U6862 ( .A(n4677), .B(n4597), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]) );
  NAND2X1 U6863 ( .A(n3484), .B(n4600), .Y(n4601) );
  NAND2XL U6864 ( .A(n4606), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .Y(n4607) );
  NOR2X2 U6865 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .Y(n5254) );
  XOR2X1 U6866 ( .A(n4666), .B(n4611), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]) );
  NAND2X1 U6867 ( .A(n4613), .B(n4612), .Y(n4615) );
  XOR2X1 U6868 ( .A(n4647), .B(n4618), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]) );
  NAND2BX1 U6869 ( .AN(median_sobel_inst_u_sober_compare_submodule_n77), .B(
        n4088), .Y(n4622) );
  NAND2BX1 U6870 ( .AN(median_sobel_inst_u_sober_compare_submodule_n161), .B(
        n4659), .Y(n4621) );
  AOI2BB2X1 U6871 ( .B0(n4660), .B1(
        median_sobel_inst_u_sober_compare_submodule_n208), .A0N(n4579), .A1N(
        n4619), .Y(n4620) );
  NOR2X2 U6872 ( .A(n6641), .B(n6560), .Y(n5262) );
  NAND2X2 U6873 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), 
        .B(n3440), .Y(n4861) );
  XOR2X1 U6874 ( .A(n4626), .B(n4625), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]) );
  OAI21X1 U6875 ( .A0(n4626), .A1(n4859), .B0(n4861), .Y(n4629) );
  NAND2X1 U6876 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .Y(n4860) );
  XNOR2X1 U6877 ( .A(n4629), .B(n4628), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]) );
  MXI2X1 U6878 ( .A(median_sobel_inst_n384), .B(median_sobel_inst_n234), .S0(
        n3434), .Y(n6778) );
  MXI2X1 U6879 ( .A(median_sobel_inst_n352), .B(median_sobel_inst_n202), .S0(
        n3434), .Y(n6777) );
  NAND2XL U6880 ( .A(n4632), .B(n4631), .Y(n4634) );
  XNOR2X1 U6881 ( .A(conv_inst_data_abc_3_r[6]), .B(conv_inst_conv_3_r[6]), 
        .Y(n4633) );
  XOR2X1 U6882 ( .A(n4634), .B(n4633), .Y(n4635) );
  NOR2X1 U6883 ( .A(n4635), .B(n5619), .Y(conv_inst_N259) );
  XOR2X1 U6884 ( .A(conv_inst_data_abc_3_r[4]), .B(conv_inst_conv_3_r[4]), .Y(
        n4636) );
  XOR2X1 U6885 ( .A(n4637), .B(n4636), .Y(n4638) );
  NOR2X1 U6886 ( .A(n4638), .B(n5619), .Y(conv_inst_N257) );
  NAND2X2 U6888 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n4775) );
  XOR2X1 U6889 ( .A(n4640), .B(n4775), .Y(n6780) );
  CLKINVX1 U6891 ( .A(n4872), .Y(n4642) );
  NAND2X1 U6892 ( .A(n4642), .B(n4870), .Y(n4643) );
  XNOR2X1 U6893 ( .A(n4644), .B(n4643), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]) );
  OAI21X1 U6894 ( .A0(n4647), .A1(n4646), .B0(n4645), .Y(n4652) );
  CLKINVX1 U6895 ( .A(n4648), .Y(n4650) );
  NAND2X1 U6896 ( .A(n4650), .B(n4649), .Y(n4651) );
  XNOR2X1 U6897 ( .A(n4652), .B(n4651), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]) );
  AOI2BB2X1 U6898 ( .B0(n4659), .B1(
        median_sobel_inst_u_sober_compare_submodule_n219), .A0N(n4579), .A1N(
        n4653), .Y(n4656) );
  NAND2BX1 U6899 ( .AN(median_sobel_inst_u_sober_compare_submodule_n85), .B(
        n4088), .Y(n4655) );
  AOI2BB2X1 U6900 ( .B0(n4659), .B1(
        median_sobel_inst_u_sober_compare_submodule_n216), .A0N(n4579), .A1N(
        n4657), .Y(n4663) );
  NAND2BX1 U6901 ( .AN(median_sobel_inst_u_sober_compare_submodule_n79), .B(
        n4088), .Y(n4662) );
  XOR2X1 U6902 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), .Y(
        n4664) );
  XOR2X1 U6903 ( .A(n4664), .B(n5330), .Y(n4665) );
  NOR2X2 U6904 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n4803) );
  NAND2X1 U6905 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n4801) );
  XNOR2X1 U6906 ( .A(n4669), .B(n4668), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]) );
  AOI2BB2X1 U6907 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n44), .A1N(n5429), .Y(
        n4670) );
  NAND2X2 U6908 ( .A(n4672), .B(n4671), .Y(n4772) );
  NAND3X1 U6909 ( .A(n5421), .B(n5363), .C(n6890), .Y(n4673) );
  AND2X2 U6910 ( .A(n4673), .B(n4769), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N70) );
  AOI2BB2X1 U6911 ( .B0(n5622), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .A0N(n6812), 
        .A1N(n4768), .Y(n4674) );
  MXI2X1 U6912 ( .A(median_sobel_inst_u_sober_compare_submodule_n77), .B(n6835), .S0(n6077), .Y(median_sobel_inst_u_sober_compare_submodule_n129) );
  MXI2X1 U6913 ( .A(median_sobel_inst_n389), .B(median_sobel_inst_n229), .S0(
        n3462), .Y(n6772) );
  OAI21X1 U6914 ( .A0(n4677), .A1(n4676), .B0(n4675), .Y(n4682) );
  XNOR2X1 U6915 ( .A(n4682), .B(n4681), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]) );
  MXI2X1 U6916 ( .A(median_sobel_inst_n179), .B(n938), .S0(n6136), .Y(
        median_sobel_inst_med_sobel_e_wait_r[7]) );
  NAND2X1 U6917 ( .A(n4684), .B(n6461), .Y(n4685) );
  NOR2X1 U6918 ( .A(n4686), .B(n4685), .Y(conv_inst_N260) );
  INVX3 U6919 ( .A(n4687), .Y(n4728) );
  XOR2X1 U6920 ( .A(n4728), .B(n4689), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N149) );
  XOR2X1 U6921 ( .A(n4736), .B(n4692), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]) );
  MXI2X1 U6923 ( .A(n6856), .B(
        median_sobel_inst_u_sober_compare_submodule_n152), .S0(n5985), .Y(
        n6553) );
  MXI2X1 U6924 ( .A(n6650), .B(median_sobel_inst_n256), .S0(n6048), .Y(n6815)
         );
  OAI21X1 U6925 ( .A0(n4698), .A1(n4915), .B0(n4918), .Y(n4701) );
  NAND2X2 U6926 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[11]), .B(
        n6576), .Y(n4916) );
  XNOR2X1 U6927 ( .A(n4701), .B(n4700), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N170) );
  XOR2X1 U6928 ( .A(n885), .B(n6419), .Y(n4702) );
  XNOR2X1 U6929 ( .A(n4702), .B(n6923), .Y(n4703) );
  XOR2X1 U6930 ( .A(n5643), .B(n4703), .Y(conv_inst_data_bcd_w[1]) );
  AOI2BB2X1 U6931 ( .B0(n4749), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .A0N(n6637), 
        .A1N(n4748), .Y(n4704) );
  AOI21X1 U6932 ( .A0(n5476), .A1(n4705), .B0(n5285), .Y(n4708) );
  NOR2BX4 U6933 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n110), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n4711) );
  NAND2X2 U6934 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .B(n6570), .Y(n4709) );
  XOR2X1 U6935 ( .A(n4708), .B(n4707), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1360) );
  OAI21X4 U6936 ( .A0(n4711), .A1(n4710), .B0(n4709), .Y(n4891) );
  AOI21X1 U6937 ( .A0(n5476), .A1(n4889), .B0(n4891), .Y(n4713) );
  NAND2X2 U6938 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(n4890) );
  XOR2X1 U6939 ( .A(n4713), .B(n4712), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1370) );
  AOI2BB2X1 U6940 ( .B0(n6198), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .A0N(n4714), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n105), .Y(n4715) );
  XOR2X1 U6941 ( .A(n3465), .B(n5610), .Y(n4721) );
  XOR2X1 U6942 ( .A(n938), .B(n940), .Y(n4720) );
  XOR2X1 U6943 ( .A(n4721), .B(n4720), .Y(conv_inst_data_abc_w[1]) );
  AOI2BB2X1 U6944 ( .B0(n4749), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .A0N(n6640), 
        .A1N(n4748), .Y(n4725) );
  XNOR2X1 U6945 ( .A(n4733), .B(n4732), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N150) );
  OAI21X1 U6946 ( .A0(n4736), .A1(n4735), .B0(n4734), .Y(n4741) );
  XNOR2X1 U6947 ( .A(n4741), .B(n4740), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]) );
  AOI2BB2X1 U6948 ( .B0(n5622), .B1(n6858), .A0N(n5621), .A1N(
        median_sobel_inst_u_median_filter_submodule_n36), .Y(n4742) );
  XOR2X1 U6949 ( .A(n4747), .B(n4746), .Y(n6786) );
  MXI2X1 U6950 ( .A(n865), .B(median_sobel_inst_n235), .S0(n5639), .Y(
        median_sobel_inst_med_sobel_e_wait_r[56]) );
  AOI2BB2X1 U6951 ( .B0(n4749), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .A0N(n4748), 
        .A1N(n6631), .Y(n4750) );
  OA22X1 U6952 ( .A0(n5621), .A1(
        median_sobel_inst_u_median_filter_submodule_n108), .B0(
        median_sobel_inst_u_median_filter_submodule_n41), .B1(n5178), .Y(n4751) );
  MXI2X1 U6953 ( .A(n839), .B(median_sobel_inst_n171), .S0(n6127), .Y(
        median_sobel_inst_med_sobel_e_wait_r[77]) );
  INVX3 U6954 ( .A(n4753), .Y(n4933) );
  NAND2XL U6955 ( .A(n4754), .B(n4931), .Y(n4755) );
  XNOR2X1 U6956 ( .A(n4933), .B(n4755), .Y(n6707) );
  XNOR2X1 U6957 ( .A(conv_inst_data_bcd_2_r[1]), .B(conv_inst_conv_2_r[1]), 
        .Y(n4756) );
  XOR2X1 U6958 ( .A(n4756), .B(n5324), .Y(n4757) );
  AOI2BB2X1 U6959 ( .B0(n4758), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .A0N(n5431), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n45), .Y(n4759) );
  AOI2BB2X1 U6960 ( .B0(n5624), .B1(n3456), .A0N(n5621), .A1N(
        median_sobel_inst_u_median_filter_submodule_n78), .Y(n4761) );
  NAND2X4 U6962 ( .A(n5726), .B(n5733), .Y(n5721) );
  OAI22X1 U6963 ( .A0(n5721), .A1(n6476), .B0(n5582), .B1(n6561), .Y(n4763) );
  AND2X2 U6964 ( .A(n4763), .B(n5709), .Y(n483) );
  AOI2BB2X1 U6965 ( .B0(n6198), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .A0N(n4714), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n122), .Y(n4764) );
  OA22X1 U6966 ( .A0(n5621), .A1(
        median_sobel_inst_u_median_filter_submodule_n65), .B0(
        median_sobel_inst_u_median_filter_submodule_n38), .B1(n5178), .Y(n4767) );
  CLKINVX1 U6967 ( .A(n5365), .Y(n4773) );
  AOI21X1 U6968 ( .A0(n5439), .A1(n4774), .B0(n4773), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N72) );
  INVX3 U6969 ( .A(n4775), .Y(n4777) );
  OAI21X4 U6970 ( .A0(n4778), .A1(n4777), .B0(n4776), .Y(n5511) );
  INVX3 U6971 ( .A(n5511), .Y(n5527) );
  XNOR2X1 U6972 ( .A(n5527), .B(n4780), .Y(n6699) );
  AOI2BB2X1 U6973 ( .B0(n6198), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .A0N(n4714), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n116), .Y(n4781) );
  OR2X2 U6974 ( .A(n4782), .B(median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n5294) );
  NAND2X2 U6975 ( .A(n5293), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5433)
         );
  NAND2X2 U6976 ( .A(n5433), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n57), .Y(n5432) );
  XOR2X1 U6977 ( .A(n4787), .B(n4786), .Y(conv_inst_N66) );
  CLKINVX1 U6979 ( .A(n5474), .Y(n4793) );
  NAND2X2 U6980 ( .A(n4891), .B(n4789), .Y(n4792) );
  NOR2X2 U6981 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n5473)
         );
  NAND2X1 U6982 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n5477)
         );
  NAND2X1 U6983 ( .A(n5471), .B(n5477), .Y(n4794) );
  XOR2X1 U6984 ( .A(n4795), .B(n4794), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N139) );
  NAND2X1 U6985 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n31), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n37), .Y(n4796) );
  AOI21X1 U6986 ( .A0(n4799), .A1(n4798), .B0(n5386), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N104) );
  NOR2X2 U6987 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4]), .Y(n5039) );
  NAND2X2 U6988 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4]), .Y(n5040) );
  NOR2X2 U6989 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        n6716), .Y(n4884) );
  NAND2X1 U6990 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        n6716), .Y(n4883) );
  XNOR2X1 U6991 ( .A(n4807), .B(n4806), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]) );
  NAND2X1 U6992 ( .A(n4809), .B(n4808), .Y(n4811) );
  XNOR2X1 U6993 ( .A(n4811), .B(n4810), .Y(n4812) );
  NOR2X1 U6994 ( .A(n4812), .B(n5619), .Y(conv_inst_N243) );
  XNOR2X1 U6995 ( .A(conv_inst_data_bcd_2_r[8]), .B(conv_inst_conv_2_r[8]), 
        .Y(n4813) );
  NAND2BX1 U6996 ( .AN(n4817), .B(n4816), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[1]) );
  NOR2X1 U6997 ( .A(n469), .B(n6476), .Y(n4820) );
  OAI21X1 U6998 ( .A0(n6482), .A1(n4818), .B0(n1068), .Y(n4822) );
  AOI2BB2X1 U6999 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .A0N(n5431), 
        .A1N(n6556), .Y(n4823) );
  MXI2X1 U7000 ( .A(n5610), .B(median_sobel_inst_n236), .S0(n5639), .Y(
        median_sobel_inst_med_sobel_e_wait_r[57]) );
  AOI2BB2X1 U7001 ( .B0(n5457), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .A0N(n5455), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n67), .Y(n4824) );
  OAI21X1 U7002 ( .A0(n4826), .A1(n4911), .B0(n4825), .Y(n4827) );
  AOI21X1 U7004 ( .A0(n5680), .A1(n4832), .B0(n4831), .Y(n6548) );
  XNOR2X1 U7005 ( .A(n6417), .B(n6418), .Y(conv_inst_data_abc_w[2]) );
  AOI21X1 U7007 ( .A0(n5217), .A1(n4838), .B0(n4837), .Y(n6667) );
  AOI2BB2X1 U7008 ( .B0(n4991), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .A0N(n6194), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n41), .Y(n4839) );
  NAND2X1 U7009 ( .A(op_mode_r[1]), .B(n869), .Y(n4976) );
  NOR2X1 U7013 ( .A(n3524), .B(n892), .Y(n4850) );
  NOR2X4 U7014 ( .A(n5435), .B(n4850), .Y(n4853) );
  NAND3X1 U7015 ( .A(n4853), .B(n5437), .C(n4852), .Y(n4857) );
  INVX3 U7016 ( .A(n4853), .Y(n4854) );
  NAND3X1 U7017 ( .A(n4857), .B(n4856), .C(n5155), .Y(n491) );
  MXI2X1 U7018 ( .A(n6923), .B(median_sobel_inst_n172), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[78]) );
  MXI2X1 U7019 ( .A(n938), .B(median_sobel_inst_n243), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[63]) );
  MXI2X1 U7020 ( .A(n6436), .B(median_sobel_inst_n165), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[72]) );
  NOR2X2 U7021 ( .A(n4859), .B(n4862), .Y(n4864) );
  OAI21X2 U7022 ( .A0(n4862), .A1(n4861), .B0(n4860), .Y(n4863) );
  AOI21X4 U7023 ( .A0(n4865), .A1(n4864), .B0(n4863), .Y(n6322) );
  NOR2X2 U7024 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n102), .Y(n5397) );
  NAND2X2 U7025 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n102), .Y(n5400) );
  XOR2X1 U7026 ( .A(n6322), .B(n4867), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]) );
  NOR2X2 U7027 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4]), .Y(n5024) );
  NAND2X2 U7028 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4]), .Y(n5025) );
  NOR2X4 U7029 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .B(
        n6716), .Y(n4878) );
  NAND2X1 U7030 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .B(
        n6716), .Y(n4877) );
  XNOR2X1 U7031 ( .A(n4876), .B(n4875), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]) );
  NOR2X2 U7032 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n6374) );
  NAND2X1 U7033 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n6377) );
  MX2X1 U7034 ( .A(median_sobel_inst_n28), .B(n6943), .S0(n3462), .Y(
        median_sobel_inst_n523) );
  XOR2X1 U7035 ( .A(n4882), .B(n5037), .Y(conv_inst_N670) );
  NOR2X2 U7037 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n6333) );
  NAND2X1 U7038 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n6336) );
  NAND2XL U7039 ( .A(n5047), .B(n6336), .Y(n4887) );
  XNOR2X1 U7040 ( .A(n4888), .B(n4887), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]) );
  OAI2BB1X1 U7041 ( .A0N(n4892), .A1N(n4891), .B0(n4890), .Y(n4893) );
  XNOR2X1 U7042 ( .A(n4898), .B(n4897), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1380) );
  NAND2X1 U7043 ( .A(n4903), .B(n4902), .Y(n4904) );
  CLKINVX1 U7044 ( .A(n6353), .Y(n4905) );
  NAND2X1 U7045 ( .A(n4906), .B(n6355), .Y(n4907) );
  XOR2X1 U7046 ( .A(n4914), .B(n4913), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]) );
  OAI21X4 U7047 ( .A0(n4918), .A1(n4917), .B0(n4916), .Y(n4919) );
  AOI21X4 U7048 ( .A0(n4921), .A1(n4920), .B0(n4919), .Y(n5470) );
  NOR2X4 U7049 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n127), .Y(n4987) );
  OAI21X1 U7050 ( .A0(n5470), .A1(n4987), .B0(n4988), .Y(n4924) );
  NOR2X4 U7051 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .Y(
        n4926) );
  NAND2X2 U7052 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .Y(
        n4925) );
  XNOR2X1 U7053 ( .A(n4924), .B(n4923), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N172) );
  NOR2X4 U7054 ( .A(n4926), .B(n4987), .Y(n5461) );
  OAI21X4 U7055 ( .A0(n4926), .A1(n4988), .B0(n4925), .Y(n5467) );
  OAI21X1 U7056 ( .A0(n5470), .A1(n4928), .B0(n4927), .Y(n4930) );
  NOR2X2 U7057 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .Y(
        n5460) );
  NAND2X2 U7058 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .Y(
        n5464) );
  XNOR2X1 U7059 ( .A(n4930), .B(n4929), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1730) );
  OAI21X1 U7060 ( .A0(n4933), .A1(n4932), .B0(n4931), .Y(n4938) );
  CLKINVX1 U7061 ( .A(n4934), .Y(n4936) );
  NAND2X1 U7062 ( .A(n4936), .B(n4935), .Y(n4937) );
  XOR2X1 U7063 ( .A(n4938), .B(n4937), .Y(n6705) );
  NAND2X4 U7064 ( .A(n5003), .B(n5741), .Y(n6531) );
  NAND2X1 U7065 ( .A(n6519), .B(sram_addr_w[6]), .Y(n4941) );
  NAND2X1 U7066 ( .A(n6518), .B(cnt[8]), .Y(n4940) );
  NAND2X2 U7067 ( .A(n6473), .B(n835), .Y(n5007) );
  NAND3X1 U7068 ( .A(n4941), .B(n4940), .C(n5007), .Y(sram_addr_wait_r[5]) );
  AOI2BB2X1 U7069 ( .B0(n6190), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .A0N(n5392), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n116), .Y(n4942) );
  NAND2X1 U7070 ( .A(n6519), .B(sram_addr_w[3]), .Y(n4944) );
  NAND2X1 U7071 ( .A(n6518), .B(cnt[5]), .Y(n4943) );
  NAND2X2 U7072 ( .A(n6473), .B(y_r[2]), .Y(n5004) );
  NAND3X1 U7073 ( .A(n4944), .B(n4943), .C(n5004), .Y(sram_addr_wait_r[2]) );
  NAND2X1 U7074 ( .A(n6519), .B(sram_addr_w[4]), .Y(n4946) );
  NAND2X1 U7075 ( .A(n6518), .B(cnt[6]), .Y(n4945) );
  NAND2X2 U7076 ( .A(n6473), .B(n774), .Y(n5451) );
  NAND3X1 U7077 ( .A(n4946), .B(n4945), .C(n5451), .Y(sram_addr_wait_r[3]) );
  NAND2X1 U7078 ( .A(n6519), .B(sram_addr_w[5]), .Y(n4948) );
  NAND2X1 U7079 ( .A(n6518), .B(cnt[7]), .Y(n4947) );
  NAND2X2 U7080 ( .A(n6473), .B(z_r[1]), .Y(n5019) );
  NAND3X1 U7081 ( .A(n4948), .B(n4947), .C(n5019), .Y(sram_addr_wait_r[4]) );
  NAND2X1 U7082 ( .A(n6514), .B(cnt[8]), .Y(n4952) );
  INVX8 U7083 ( .A(n5441), .Y(n6515) );
  NAND2X1 U7084 ( .A(n6515), .B(sram_addr_w[15]), .Y(n4951) );
  NAND3X1 U7085 ( .A(n4952), .B(n4951), .C(n5007), .Y(sram_addr_wait_r[13]) );
  NAND2X1 U7088 ( .A(n6498), .B(cnt[8]), .Y(n4956) );
  NAND2X1 U7089 ( .A(n6497), .B(sram_addr_w[24]), .Y(n4955) );
  NAND3X1 U7090 ( .A(n4956), .B(n4955), .C(n5007), .Y(sram_addr_wait_r[21]) );
  NAND2X1 U7091 ( .A(n6497), .B(sram_addr_w[26]), .Y(n4957) );
  NAND2X2 U7092 ( .A(n6473), .B(z_r[4]), .Y(n5448) );
  NAND3X1 U7093 ( .A(n4958), .B(n4957), .C(n5448), .Y(sram_addr_wait_r[23]) );
  NAND2X1 U7094 ( .A(n6514), .B(cnt[5]), .Y(n4960) );
  NAND2X1 U7095 ( .A(n6515), .B(sram_addr_w[12]), .Y(n4959) );
  NAND3X1 U7096 ( .A(n4960), .B(n4959), .C(n5004), .Y(sram_addr_wait_r[10]) );
  NAND2X1 U7097 ( .A(n6498), .B(cnt[5]), .Y(n4962) );
  NAND2X1 U7098 ( .A(n6497), .B(sram_addr_w[21]), .Y(n4961) );
  NAND3X1 U7099 ( .A(n4962), .B(n4961), .C(n5004), .Y(sram_addr_wait_r[18]) );
  NAND2X1 U7100 ( .A(n6514), .B(cnt[6]), .Y(n4964) );
  NAND2X1 U7101 ( .A(n6515), .B(sram_addr_w[13]), .Y(n4963) );
  NAND3X1 U7102 ( .A(n4964), .B(n4963), .C(n5451), .Y(sram_addr_wait_r[11]) );
  NAND2X1 U7103 ( .A(n6514), .B(cnt[7]), .Y(n4966) );
  NAND2X1 U7104 ( .A(n6515), .B(sram_addr_w[14]), .Y(n4965) );
  NAND3X1 U7105 ( .A(n4966), .B(n4965), .C(n5019), .Y(sram_addr_wait_r[12]) );
  NAND2X1 U7106 ( .A(n6498), .B(cnt[7]), .Y(n4968) );
  NAND2X1 U7107 ( .A(n6497), .B(sram_addr_w[23]), .Y(n4967) );
  NAND3X1 U7108 ( .A(n4968), .B(n4967), .C(n5019), .Y(sram_addr_wait_r[20]) );
  XOR2X1 U7109 ( .A(n3668), .B(n4969), .Y(conv_inst_N69) );
  NOR2X2 U7110 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n136), .Y(n5288) );
  NAND2X2 U7114 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .Y(n5646) );
  XOR2X1 U7115 ( .A(n4983), .B(n4973), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N18) );
  AOI2BB2X1 U7116 ( .B0(n6195), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .A0N(n6194), 
        .A1N(n6701), .Y(n4974) );
  NAND2X1 U7117 ( .A(n437), .B(n4981), .Y(n4975) );
  OAI21X1 U7118 ( .A0(n437), .A1(n5060), .B0(n4982), .Y(n447) );
  NOR2X4 U7119 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n133), .Y(n5647) );
  XOR2X1 U7120 ( .A(n5470), .B(n4990), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N171) );
  AOI2BB2X1 U7121 ( .B0(n4991), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .A0N(n6194), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n38), .Y(n4992) );
  NAND2X4 U7122 ( .A(n6936), .B(n6955), .Y(n5103) );
  NAND2BX1 U7123 ( .AN(n5103), .B(n6799), .Y(n4996) );
  NAND2BX1 U7124 ( .AN(n5104), .B(n6867), .Y(n4995) );
  OR2X6 U7125 ( .A(n6936), .B(n6955), .Y(n5106) );
  OR2X4 U7126 ( .A(n6955), .B(n823), .Y(n5105) );
  NAND3X1 U7127 ( .A(n4996), .B(n4995), .C(n4994), .Y(n4997) );
  MXI2X1 U7128 ( .A(n4997), .B(conv_result_w[7]), .S0(n5446), .Y(n4999) );
  AOI22X1 U7129 ( .A0(n5111), .A1(median_sobel_inst_out_data_w[7]), .B0(n5447), 
        .B1(median_sobel_inst_sobel_out_data_w[7]), .Y(n4998) );
  NAND3X1 U7130 ( .A(n1232), .B(n5060), .C(op_mode_r[0]), .Y(n5000) );
  OAI21X1 U7131 ( .A0(n465), .A1(n5060), .B0(n5000), .Y(n485) );
  NAND2X1 U7132 ( .A(n6498), .B(cnt[3]), .Y(n5002) );
  NAND2X2 U7133 ( .A(n6473), .B(y_r[0]), .Y(n5043) );
  NAND3X1 U7134 ( .A(n5002), .B(n5001), .C(n5043), .Y(sram_addr_wait_r[16]) );
  NAND2X1 U7135 ( .A(n6471), .B(cnt[5]), .Y(n5006) );
  NAND2X1 U7136 ( .A(n6472), .B(sram_addr_w[30]), .Y(n5005) );
  NAND3X1 U7137 ( .A(n5006), .B(n5005), .C(n5004), .Y(sram_addr_wait_r[26]) );
  NAND2X1 U7138 ( .A(n6471), .B(cnt[8]), .Y(n5009) );
  NAND2X1 U7139 ( .A(n6472), .B(sram_addr_w[33]), .Y(n5008) );
  OAI21X1 U7140 ( .A0(n5470), .A1(n5013), .B0(n5012), .Y(n5016) );
  XNOR2X1 U7141 ( .A(n5016), .B(n5015), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1740) );
  NAND2X1 U7142 ( .A(n6471), .B(cnt[6]), .Y(n5018) );
  NAND2X1 U7143 ( .A(n6472), .B(sram_addr_w[31]), .Y(n5017) );
  NAND3X1 U7144 ( .A(n5018), .B(n5017), .C(n5451), .Y(sram_addr_wait_r[27]) );
  NAND2X1 U7145 ( .A(n6471), .B(cnt[7]), .Y(n5021) );
  NAND2X1 U7146 ( .A(n6472), .B(sram_addr_w[32]), .Y(n5020) );
  NAND3X1 U7147 ( .A(n5021), .B(n5020), .C(n5019), .Y(sram_addr_wait_r[28]) );
  NAND2X1 U7148 ( .A(n6518), .B(cnt[3]), .Y(n5023) );
  NAND3X1 U7149 ( .A(n5023), .B(n5022), .C(n5043), .Y(sram_addr_wait_r[0]) );
  XOR2X1 U7150 ( .A(n6382), .B(n5027), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]) );
  AOI21X1 U7151 ( .A0(n6381), .A1(n5029), .B0(n5028), .Y(n5030) );
  OAI21X1 U7152 ( .A0(n6382), .A1(n5031), .B0(n5030), .Y(n5034) );
  XNOR2X1 U7153 ( .A(n5034), .B(n5033), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]) );
  NAND2X1 U7154 ( .A(n6515), .B(sram_addr_w[10]), .Y(n5036) );
  NAND2X1 U7155 ( .A(n6514), .B(cnt[3]), .Y(n5035) );
  XOR2X1 U7156 ( .A(n2948), .B(n5042), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]) );
  NAND2X1 U7157 ( .A(n6472), .B(sram_addr_w[28]), .Y(n5044) );
  NAND3X1 U7158 ( .A(n5045), .B(n5044), .C(n5043), .Y(sram_addr_wait_r[24]) );
  AOI21X1 U7159 ( .A0(n6339), .A1(n5047), .B0(n5046), .Y(n5048) );
  OAI21X1 U7160 ( .A0(n2948), .A1(n5049), .B0(n5048), .Y(n5052) );
  XNOR2X1 U7161 ( .A(n5052), .B(n5051), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]) );
  XOR2X1 U7162 ( .A(n6362), .B(n5056), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]) );
  XOR2X1 U7163 ( .A(n5059), .B(n5058), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N153) );
  CLKMX2X2 U7164 ( .A(n1232), .B(n5061), .S0(n5060), .Y(n486) );
  AOI21X1 U7165 ( .A0(n5692), .A1(n5301), .B0(n5063), .Y(n5068) );
  XOR2X1 U7166 ( .A(n5068), .B(n5067), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1100) );
  NAND2BX1 U7167 ( .AN(n5103), .B(n6622), .Y(n5071) );
  NAND2BX1 U7168 ( .AN(n5104), .B(n6887), .Y(n5070) );
  OA22X2 U7169 ( .A0(n5106), .A1(n809), .B0(n5105), .B1(n778), .Y(n5069) );
  MXI2X1 U7170 ( .A(n5072), .B(conv_result_w[3]), .S0(n5446), .Y(n5074) );
  AOI22X1 U7171 ( .A0(n5111), .A1(median_sobel_inst_out_data_w[3]), .B0(n5447), 
        .B1(median_sobel_inst_sobel_out_data_w[3]), .Y(n5073) );
  NAND2BX1 U7172 ( .AN(n5103), .B(sram_data_out_r_1__0_), .Y(n5077) );
  NAND2BX1 U7173 ( .AN(n5104), .B(n6869), .Y(n5076) );
  NAND3X2 U7174 ( .A(n5077), .B(n5076), .C(n5075), .Y(n5078) );
  MXI2X1 U7175 ( .A(n5078), .B(conv_result_w[0]), .S0(n5446), .Y(n5080) );
  AOI22X1 U7176 ( .A0(n5111), .A1(median_sobel_inst_out_data_w[0]), .B0(n5447), 
        .B1(median_sobel_inst_sobel_out_data_w[0]), .Y(n5079) );
  NAND2X1 U7177 ( .A(n5080), .B(n5079), .Y(out_data_wait_r[0]) );
  NAND2BX1 U7178 ( .AN(n5103), .B(n6843), .Y(n5083) );
  NAND2BX1 U7179 ( .AN(n5104), .B(n6899), .Y(n5082) );
  OA22X2 U7180 ( .A0(n5106), .A1(n787), .B0(n5105), .B1(n804), .Y(n5081) );
  NAND3X1 U7181 ( .A(n5083), .B(n5082), .C(n5081), .Y(n5084) );
  MXI2X1 U7182 ( .A(n5084), .B(conv_result_w[2]), .S0(n5446), .Y(n5086) );
  AOI22X1 U7183 ( .A0(n5111), .A1(median_sobel_inst_out_data_w[2]), .B0(n5447), 
        .B1(median_sobel_inst_sobel_out_data_w[2]), .Y(n5085) );
  NAND2X1 U7184 ( .A(n5086), .B(n5085), .Y(out_data_wait_r[2]) );
  NAND2BX1 U7185 ( .AN(n5103), .B(n6854), .Y(n5089) );
  NAND2BX1 U7186 ( .AN(n5104), .B(n6897), .Y(n5088) );
  OA22X2 U7187 ( .A0(n5106), .A1(n784), .B0(n5105), .B1(n802), .Y(n5087) );
  NAND3X1 U7188 ( .A(n5089), .B(n5088), .C(n5087), .Y(n5090) );
  MXI2X1 U7189 ( .A(n5090), .B(conv_result_w[1]), .S0(n5446), .Y(n5092) );
  AOI22X1 U7190 ( .A0(n5111), .A1(median_sobel_inst_out_data_w[1]), .B0(n5447), 
        .B1(median_sobel_inst_sobel_out_data_w[1]), .Y(n5091) );
  NAND2X1 U7191 ( .A(n5092), .B(n5091), .Y(out_data_wait_r[1]) );
  NAND2BX1 U7192 ( .AN(n5103), .B(n6845), .Y(n5095) );
  NAND2BX1 U7193 ( .AN(n5104), .B(n6885), .Y(n5094) );
  OA22X2 U7194 ( .A0(n5106), .A1(n819), .B0(n5105), .B1(n7890), .Y(n5093) );
  NAND3X1 U7195 ( .A(n5095), .B(n5094), .C(n5093), .Y(n5096) );
  NAND2BX1 U7197 ( .AN(n5103), .B(n6855), .Y(n5100) );
  NAND2BX1 U7198 ( .AN(n5104), .B(n6898), .Y(n5099) );
  OA22X2 U7199 ( .A0(n5106), .A1(n791), .B0(n5105), .B1(n805), .Y(n5098) );
  NAND3X1 U7200 ( .A(n5100), .B(n5099), .C(n5098), .Y(n5101) );
  NAND2BX1 U7202 ( .AN(n5103), .B(n6888), .Y(n5109) );
  NAND2BX1 U7203 ( .AN(n5104), .B(n6881), .Y(n5108) );
  OA22X2 U7204 ( .A0(n5106), .A1(n792), .B0(n5105), .B1(n808), .Y(n5107) );
  NAND3X1 U7205 ( .A(n5109), .B(n5108), .C(n5107), .Y(n5110) );
  NAND2X1 U7207 ( .A(n5113), .B(n5205), .Y(n5114) );
  XOR2X1 U7208 ( .A(n5115), .B(n5114), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N111) );
  NAND2X4 U7209 ( .A(n5621), .B(n6197), .Y(n6269) );
  AOI2BB2X1 U7210 ( .B0(n6270), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .A0N(n6268), 
        .A1N(n6701), .Y(n5116) );
  NAND2BX1 U7211 ( .AN(median_sobel_inst_u_median_filter_submodule_n122), .B(
        n6191), .Y(n5117) );
  CLKMX2X2 U7212 ( .A(median_sobel_inst_G[24]), .B(n6615), .S0(n4476), .Y(
        median_sobel_inst_n472) );
  CLKMX2X2 U7213 ( .A(median_sobel_inst_G[25]), .B(n6617), .S0(n3461), .Y(
        median_sobel_inst_n468) );
  MXI2X1 U7214 ( .A(median_sobel_inst_n349), .B(median_sobel_inst_n189), .S0(
        n6128), .Y(n6575) );
  MXI2X1 U7215 ( .A(median_sobel_inst_n343), .B(median_sobel_inst_n179), .S0(
        n6139), .Y(n6775) );
  MXI2X1 U7216 ( .A(median_sobel_inst_n338), .B(median_sobel_inst_n184), .S0(
        n4630), .Y(n6773) );
  MXI2X1 U7217 ( .A(median_sobel_inst_n337), .B(median_sobel_inst_n185), .S0(
        n3434), .Y(n6774) );
  MXI2X1 U7218 ( .A(median_sobel_inst_n262), .B(n861), .S0(n4881), .Y(n6734)
         );
  NAND2X1 U7219 ( .A(n6515), .B(sram_addr_w[16]), .Y(n5132) );
  NAND2X2 U7220 ( .A(n6473), .B(z_r[3]), .Y(n5162) );
  NAND2X1 U7221 ( .A(n6471), .B(cnt[9]), .Y(n5135) );
  NAND2X1 U7222 ( .A(n6472), .B(sram_addr_w[34]), .Y(n5134) );
  NAND3X1 U7223 ( .A(n5135), .B(n5134), .C(n5162), .Y(sram_addr_wait_r[30]) );
  NAND2X1 U7224 ( .A(n6497), .B(sram_addr_w[25]), .Y(n5136) );
  NAND3X1 U7225 ( .A(n5137), .B(n5136), .C(n5162), .Y(sram_addr_wait_r[22]) );
  MXI2X1 U7226 ( .A(median_sobel_inst_n336), .B(median_sobel_inst_n186), .S0(
        n5534), .Y(n6749) );
  MXI2X1 U7227 ( .A(median_sobel_inst_n362), .B(median_sobel_inst_n208), .S0(
        n4630), .Y(n6763) );
  MXI2X1 U7228 ( .A(median_sobel_inst_n438), .B(n5828), .S0(n4630), .Y(n6591)
         );
  MXI2X1 U7229 ( .A(median_sobel_inst_n341), .B(median_sobel_inst_n181), .S0(
        n3462), .Y(n6744) );
  MXI2X1 U7230 ( .A(median_sobel_inst_n339), .B(median_sobel_inst_n183), .S0(
        n5534), .Y(n6594) );
  MXI2X1 U7231 ( .A(median_sobel_inst_n425), .B(n5961), .S0(n6049), .Y(n6764)
         );
  MXI2X1 U7232 ( .A(median_sobel_inst_n252), .B(n5610), .S0(n6139), .Y(n6714)
         );
  MXI2X1 U7233 ( .A(median_sobel_inst_n436), .B(n5811), .S0(n6139), .Y(n6765)
         );
  MXI2X1 U7234 ( .A(median_sobel_inst_n329), .B(median_sobel_inst_n161), .S0(
        n3461), .Y(n6595) );
  MXI2X1 U7235 ( .A(median_sobel_inst_n424), .B(n6738), .S0(n6049), .Y(n6593)
         );
  NAND2BX2 U7236 ( .AN(median_sobel_inst_n384), .B(n6044), .Y(n5150) );
  NAND2X1 U7237 ( .A(n5158), .B(n5155), .Y(n5156) );
  NOR3X1 U7238 ( .A(n3484), .B(n3446), .C(n841), .Y(n5157) );
  OAI21X1 U7241 ( .A0(n6721), .A1(n6268), .B0(n5161), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[3]) );
  NAND2X1 U7242 ( .A(n6518), .B(cnt[9]), .Y(n5163) );
  NAND3X1 U7243 ( .A(n5164), .B(n5163), .C(n5162), .Y(sram_addr_wait_r[6]) );
  NAND2X1 U7244 ( .A(n6259), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .Y(n5167) );
  NAND3X1 U7245 ( .A(n5167), .B(n5166), .C(n5165), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[0]) );
  NAND2X1 U7246 ( .A(n6259), .B(n6802), .Y(n5170) );
  OR2X2 U7247 ( .A(n6260), .B(median_sobel_inst_u_median_filter_submodule_n107), .Y(n5169) );
  NAND2X1 U7248 ( .A(n6259), .B(n6805), .Y(n5173) );
  NAND2X1 U7249 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n5171) );
  NAND3X1 U7250 ( .A(n5173), .B(n5172), .C(n5171), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[5]) );
  NAND2X1 U7251 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .Y(n5174) );
  NAND3X1 U7252 ( .A(n5176), .B(n5175), .C(n5174), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[1]) );
  AOI2BB2X1 U7253 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), 
        .B1(n5624), .A0N(median_sobel_inst_u_median_filter_submodule_n64), 
        .A1N(n5621), .Y(n5177) );
  OAI21XL U7254 ( .A0(n5547), .A1(n6552), .B0(n5179), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[4]) );
  NOR2X1 U7255 ( .A(n6264), .B(
        median_sobel_inst_u_median_filter_submodule_n117), .Y(n5182) );
  NOR2X1 U7256 ( .A(n5243), .B(n6722), .Y(n5181) );
  OAI21X1 U7257 ( .A0(n6267), .A1(n6729), .B0(n5183), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[7]) );
  AOI2BB2X1 U7258 ( .B0(n6270), .B1(n3456), .A0N(
        median_sobel_inst_u_median_filter_submodule_n48), .A1N(n6268), .Y(
        n5184) );
  NAND2X1 U7259 ( .A(n6259), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[3]), .Y(n5187) );
  NAND2X1 U7260 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .Y(n5185) );
  NAND3X1 U7261 ( .A(n5187), .B(n5186), .C(n5185), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[3]) );
  NAND2X1 U7262 ( .A(n6259), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .Y(n5190) );
  NAND2X1 U7263 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .Y(n5188) );
  NAND3X1 U7264 ( .A(n5190), .B(n5189), .C(n5188), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[4]) );
  NAND2X1 U7265 ( .A(n5231), .B(conv_inst_conv_3_r[13]), .Y(n5191) );
  NOR2X2 U7266 ( .A(n5598), .B(n5191), .Y(n5193) );
  NAND2X1 U7268 ( .A(n5193), .B(conv_inst_n42), .Y(n5194) );
  NOR2X1 U7269 ( .A(n6264), .B(median_sobel_inst_u_median_filter_submodule_n71), .Y(n5197) );
  NOR2X1 U7270 ( .A(n5243), .B(n6808), .Y(n5196) );
  NOR2X1 U7271 ( .A(n5197), .B(n5196), .Y(n5198) );
  OAI21X1 U7272 ( .A0(n6267), .A1(n6552), .B0(n5198), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[4]) );
  NAND3X1 U7273 ( .A(n5201), .B(n5200), .C(n5199), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[2]) );
  CLKINVX1 U7274 ( .A(n5202), .Y(n5203) );
  NOR2X1 U7275 ( .A(n5203), .B(n5206), .Y(n5208) );
  AOI21X1 U7276 ( .A0(n5692), .A1(n5208), .B0(n5207), .Y(n5213) );
  XOR2X1 U7277 ( .A(n5213), .B(n5212), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N112) );
  XNOR2X1 U7278 ( .A(n5217), .B(n5216), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]) );
  AOI2BB2X1 U7279 ( .B0(n6270), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .A0N(n6268), 
        .A1N(n6813), .Y(n5218) );
  AOI21X1 U7280 ( .A0(n5223), .A1(n5222), .B0(n5619), .Y(n5224) );
  XOR2X1 U7281 ( .A(n5673), .B(n5227), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N280) );
  MXI2X1 U7282 ( .A(median_sobel_inst_n203), .B(n865), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[28]) );
  MXI2X1 U7283 ( .A(median_sobel_inst_n253), .B(n6993), .S0(n6044), .Y(n6751)
         );
  MXI2X1 U7284 ( .A(median_sobel_inst_n399), .B(median_sobel_inst_n235), .S0(
        n4630), .Y(n6748) );
  MXI2X1 U7285 ( .A(median_sobel_inst_n364), .B(median_sobel_inst_n206), .S0(
        n6128), .Y(n6743) );
  MXI2X1 U7286 ( .A(median_sobel_inst_n365), .B(median_sobel_inst_n205), .S0(
        n5534), .Y(n6742) );
  MXI2X1 U7287 ( .A(median_sobel_inst_n331), .B(median_sobel_inst_n159), .S0(
        n4881), .Y(n6747) );
  MXI2X1 U7288 ( .A(median_sobel_inst_n254), .B(n6076), .S0(n3141), .Y(n6750)
         );
  AOI2BB1X2 U7289 ( .A0N(n5599), .A1N(n5233), .B0(conv_inst_conv_3_r[13]), .Y(
        n5234) );
  NOR3X2 U7290 ( .A(n5234), .B(n5569), .C(n5601), .Y(conv_inst_N266) );
  MXI2X1 U7291 ( .A(median_sobel_inst_n394), .B(median_sobel_inst_n240), .S0(
        n3461), .Y(n6740) );
  MXI2X1 U7292 ( .A(median_sobel_inst_n393), .B(median_sobel_inst_n241), .S0(
        n6139), .Y(n6745) );
  MXI2X1 U7293 ( .A(median_sobel_inst_n395), .B(median_sobel_inst_n239), .S0(
        n3434), .Y(n6746) );
  MXI2X1 U7294 ( .A(median_sobel_inst_n392), .B(median_sobel_inst_n242), .S0(
        n5534), .Y(n6741) );
  AOI2BB2X1 U7295 ( .B0(n5457), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .A0N(n5455), 
        .A1N(n5235), .Y(n5236) );
  CLKINVX1 U7296 ( .A(n5386), .Y(n5237) );
  NAND3X1 U7297 ( .A(n5237), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .C(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n5241)
         );
  NAND3X1 U7298 ( .A(n5386), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .C(n6621), .Y(n5240) );
  OAI21XL U7299 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n61), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .Y(n5238) );
  OAI21XL U7300 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n65), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .B0(n5238), .Y(
        n5239) );
  NAND3X1 U7301 ( .A(n5241), .B(n5240), .C(n5239), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N106) );
  MXI2X1 U7302 ( .A(n861), .B(median_sobel_inst_n174), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[80]) );
  MXI2X1 U7303 ( .A(n847), .B(median_sobel_inst_n173), .S0(n5242), .Y(
        median_sobel_inst_med_sobel_e_wait_r[79]) );
  NOR2XL U7304 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n5248) );
  XNOR2X1 U7305 ( .A(n5253), .B(n5252), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N168) );
  XNOR2X1 U7306 ( .A(n5263), .B(n5262), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]) );
  XNOR2X1 U7309 ( .A(n5279), .B(n5278), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N148) );
  MXI2X1 U7310 ( .A(median_sobel_inst_n245), .B(n6803), .S0(n6048), .Y(
        median_sobel_inst_n545) );
  MXI2X1 U7311 ( .A(median_sobel_inst_n169), .B(n6801), .S0(n6096), .Y(
        median_sobel_inst_n533) );
  MXI2X1 U7312 ( .A(median_sobel_inst_n164), .B(n6840), .S0(n6048), .Y(
        median_sobel_inst_n538) );
  MXI2X1 U7313 ( .A(n5828), .B(median_sobel_inst_n164), .S0(n6135), .Y(
        median_sobel_inst_med_sobel_e_wait_r[71]) );
  MXI2X1 U7314 ( .A(median_sobel_inst_n166), .B(n6691), .S0(n6096), .Y(
        median_sobel_inst_n536) );
  XOR2X1 U7315 ( .A(n5476), .B(n5287), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N135) );
  MXI2X1 U7316 ( .A(n5721), .B(n5726), .S0(n3448), .Y(n484) );
  XNOR2X1 U7317 ( .A(n5292), .B(n5291), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N17) );
  OA21XL U7318 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n28), .A1(
        n5294), .B0(n5293), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N990) );
  AOI2BB2X1 U7319 ( .B0(n6198), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .A0N(n4714), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n71), .Y(n5295) );
  XNOR2X1 U7320 ( .A(n5299), .B(n5298), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]) );
  MXI2X1 U7321 ( .A(n6419), .B(median_sobel_inst_n244), .S0(n6127), .Y(
        median_sobel_inst_med_sobel_e_wait_r[64]) );
  XNOR2X1 U7322 ( .A(n5692), .B(n5302), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1090) );
  OAI21X1 U7323 ( .A0(n5308), .A1(n5332), .B0(n5307), .Y(n5373) );
  XNOR2X1 U7324 ( .A(conv_inst_conv_4_r[2]), .B(conv_inst_data_bcd_4_r[2]), 
        .Y(n5309) );
  XOR2X1 U7325 ( .A(n5373), .B(n5309), .Y(n5310) );
  AOI21X1 U7326 ( .A0(n5349), .A1(n5316), .B0(n5315), .Y(n5318) );
  XOR2X1 U7327 ( .A(conv_inst_data_bcd_2_r[3]), .B(conv_inst_conv_2_r[3]), .Y(
        n5317) );
  XOR2X1 U7328 ( .A(n5318), .B(n5317), .Y(n5319) );
  NOR2X1 U7329 ( .A(n5319), .B(n5619), .Y(conv_inst_N239) );
  XNOR2X1 U7330 ( .A(n5323), .B(n5322), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N151) );
  OAI21XL U7331 ( .A0(conv_inst_conv_2_r[0]), .A1(conv_inst_data_bcd_2_r[0]), 
        .B0(n2902), .Y(n5325) );
  XNOR2X1 U7332 ( .A(n5329), .B(n5328), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]) );
  OAI21XL U7333 ( .A0(conv_inst_conv_3_r[0]), .A1(conv_inst_data_abc_3_r[0]), 
        .B0(n5330), .Y(n5331) );
  OAI21XL U7334 ( .A0(conv_inst_conv_4_r[0]), .A1(conv_inst_data_bcd_4_r[0]), 
        .B0(n5332), .Y(n5333) );
  AOI2BB2X1 U7335 ( .B0(n6195), .B1(n3456), .A0N(
        median_sobel_inst_u_median_filter_submodule_n78), .A1N(n6197), .Y(
        n5334) );
  XOR2X1 U7336 ( .A(n5335), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1240) );
  XNOR2X1 U7337 ( .A(n5340), .B(n5339), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N27) );
  OAI21XL U7338 ( .A0(conv_inst_conv_1_r[0]), .A1(conv_inst_data_abc_1_r[0]), 
        .B0(n5341), .Y(n5342) );
  XOR2X1 U7339 ( .A(conv_inst_conv_1_r[2]), .B(n5358), .Y(n5343) );
  XOR2X1 U7340 ( .A(n5343), .B(conv_inst_data_abc_1_r[2]), .Y(n5344) );
  XNOR2X1 U7341 ( .A(conv_inst_conv_2_r[4]), .B(conv_inst_n56), .Y(n5345) );
  XOR2X1 U7342 ( .A(n5346), .B(n5345), .Y(n5347) );
  XNOR2X1 U7343 ( .A(conv_inst_conv_2_r[2]), .B(conv_inst_data_bcd_2_r[2]), 
        .Y(n5348) );
  XOR2X1 U7344 ( .A(n5349), .B(n5348), .Y(n5350) );
  XNOR2X1 U7345 ( .A(conv_inst_conv_4_r[6]), .B(conv_inst_n50), .Y(n5351) );
  XOR2X1 U7346 ( .A(n5352), .B(n5351), .Y(n5353) );
  NOR2X1 U7347 ( .A(n5353), .B(n5619), .Y(conv_inst_N276) );
  XNOR2X1 U7348 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), 
        .Y(n5354) );
  XOR2X1 U7349 ( .A(n5355), .B(n5354), .Y(n5356) );
  OAI21X1 U7350 ( .A0(n5359), .A1(n5358), .B0(n5357), .Y(n5361) );
  XNOR2X1 U7351 ( .A(conv_inst_data_abc_1_r[3]), .B(conv_inst_conv_1_r[3]), 
        .Y(n5360) );
  XOR2X1 U7352 ( .A(n5361), .B(n5360), .Y(n5362) );
  XOR2X1 U7353 ( .A(n5367), .B(n5366), .Y(n5368) );
  AOI21X1 U7354 ( .A0(n5373), .A1(n5372), .B0(n5371), .Y(n5375) );
  XOR2X1 U7355 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_n36), .Y(n5374)
         );
  XOR2X1 U7356 ( .A(n5375), .B(n5374), .Y(n5376) );
  NOR2X1 U7357 ( .A(n5376), .B(n5619), .Y(conv_inst_N273) );
  XNOR2X1 U7358 ( .A(n5680), .B(n5378), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]) );
  XOR2X1 U7359 ( .A(conv_inst_data_bcd_4_r[4]), .B(conv_inst_conv_4_r[4]), .Y(
        n5379) );
  XOR2X1 U7360 ( .A(n5380), .B(n5379), .Y(n5381) );
  XNOR2X1 U7361 ( .A(n5382), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N125) );
  NAND2X1 U7362 ( .A(cnt[4]), .B(cnt[3]), .Y(n5586) );
  NOR2X4 U7363 ( .A(n6550), .B(n3455), .Y(n5713) );
  NAND4X1 U7364 ( .A(n5714), .B(n5713), .C(cnt[6]), .D(cnt[7]), .Y(n5383) );
  OR2X4 U7365 ( .A(n5586), .B(n5383), .Y(n5720) );
  NOR2X1 U7366 ( .A(n6685), .B(n6547), .Y(n5729) );
  AOI2BB2X1 U7367 ( .B0(n6190), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .A0N(n5392), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n105), .Y(n5393) );
  OAI21X1 U7368 ( .A0(n6322), .A1(n5397), .B0(n5400), .Y(n5396) );
  NOR2X2 U7369 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n109), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n108), .Y(n5399) );
  NAND2X1 U7370 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n109), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n108), .Y(n5398) );
  XNOR2X1 U7371 ( .A(n5396), .B(n5395), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]) );
  NOR2X4 U7372 ( .A(n5397), .B(n5399), .Y(n6313) );
  OAI21X4 U7373 ( .A0(n5400), .A1(n5399), .B0(n5398), .Y(n6318) );
  OAI21X1 U7374 ( .A0(n6322), .A1(n5402), .B0(n5401), .Y(n5404) );
  NOR2X2 U7375 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .Y(n6312) );
  XNOR2X1 U7376 ( .A(n5404), .B(n5403), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]) );
  AOI21X1 U7377 ( .A0(n6318), .A1(n5406), .B0(n5405), .Y(n5407) );
  OAI21X1 U7378 ( .A0(n6322), .A1(n5408), .B0(n5407), .Y(n5411) );
  XNOR2X1 U7379 ( .A(n5411), .B(n5410), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]) );
  MXI2X1 U7380 ( .A(median_sobel_inst_n391), .B(median_sobel_inst_n227), .S0(
        n3434), .Y(median_sobel_inst_n563) );
  MXI2X1 U7381 ( .A(median_sobel_inst_n428), .B(n5939), .S0(n3434), .Y(
        median_sobel_inst_n512) );
  MXI2X1 U7382 ( .A(median_sobel_inst_n429), .B(n5912), .S0(n3462), .Y(
        median_sobel_inst_n513) );
  MXI2X1 U7383 ( .A(median_sobel_inst_n367), .B(median_sobel_inst_n203), .S0(
        n4630), .Y(median_sobel_inst_n587) );
  XNOR2X1 U7384 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(n5412), .Y(median_sobel_inst_u_sobel_gradient_submodule_N126) );
  MXI2X1 U7385 ( .A(median_sobel_inst_n188), .B(n5828), .S0(n6146), .Y(
        median_sobel_inst_med_sobel_e_wait_r[15]) );
  MXI2X1 U7386 ( .A(median_sobel_inst_n185), .B(n5961), .S0(n6081), .Y(
        median_sobel_inst_med_sobel_e_wait_r[13]) );
  CLKINVX1 U7387 ( .A(n5415), .Y(n5416) );
  OA21XL U7388 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n56), .A1(
        n5422), .B0(n5421), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N690) );
  NOR2X2 U7389 ( .A(n5726), .B(n831), .Y(n5426) );
  AOI2BB2X1 U7390 ( .B0(n5426), .B1(n6800), .A0N(sram_wen_ready_r[2]), .A1N(
        n5425), .Y(N814) );
  AOI2BB2X1 U7391 ( .B0(n5426), .B1(n6817), .A0N(sram_wen_ready_r[1]), .A1N(
        n5425), .Y(N813) );
  AOI2BB2X1 U7392 ( .B0(n5426), .B1(n6816), .A0N(sram_wen_ready_r[0]), .A1N(
        n5425), .Y(N812) );
  AOI2BB2X1 U7393 ( .B0(n4311), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n76), .A1N(n5429), .Y(
        n5430) );
  OAI21XL U7394 ( .A0(n5431), .A1(n6951), .B0(n5430), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[3]) );
  OA21XL U7395 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n57), .A1(
        n5433), .B0(n5432), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N100) );
  OAI21X1 U7396 ( .A0(n5435), .A1(n3484), .B0(n3446), .Y(n5438) );
  NOR2X1 U7397 ( .A(n5435), .B(n5434), .Y(n5436) );
  AOI2BB2X1 U7398 ( .B0(n5438), .B1(n5437), .A0N(n3446), .A1N(n5436), .Y(n490)
         );
  OA21XL U7399 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n29), .A1(
        n5440), .B0(n5439), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N71) );
  NAND2X1 U7400 ( .A(n6514), .B(cnt[10]), .Y(n5442) );
  NAND3BX1 U7401 ( .AN(n5443), .B(n5442), .C(n5448), .Y(sram_addr_wait_r[15])
         );
  NOR2X1 U7402 ( .A(n6531), .B(n412), .Y(n5445) );
  NAND2X1 U7403 ( .A(n6518), .B(cnt[10]), .Y(n5444) );
  NAND3BX1 U7404 ( .AN(n5445), .B(n5444), .C(n5448), .Y(sram_addr_wait_r[7])
         );
  AO22X2 U7405 ( .A0(n3696), .A1(median_sobel_inst_sobel_out_data_w[10]), .B0(
        conv_result_w[10]), .B1(n5446), .Y(out_data_wait_r[10]) );
  AO22X2 U7406 ( .A0(n3696), .A1(median_sobel_inst_sobel_out_data_w[8]), .B0(
        conv_result_w[8]), .B1(n5446), .Y(out_data_wait_r[8]) );
  AO22X2 U7407 ( .A0(n3696), .A1(median_sobel_inst_sobel_out_data_w[9]), .B0(
        conv_result_w[9]), .B1(n5446), .Y(out_data_wait_r[9]) );
  NAND2X1 U7408 ( .A(n6471), .B(cnt[10]), .Y(n5449) );
  NAND3BX1 U7409 ( .AN(n5450), .B(n5449), .C(n5448), .Y(sram_addr_wait_r[31])
         );
  NAND2X1 U7410 ( .A(n6498), .B(cnt[6]), .Y(n5452) );
  NAND3BX1 U7411 ( .AN(n5453), .B(n5452), .C(n5451), .Y(sram_addr_wait_r[19])
         );
  AO21X1 U7412 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), 
        .A1(n5457), .B0(n5456), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[7]) );
  NOR2X2 U7413 ( .A(n5460), .B(n5463), .Y(n5466) );
  NAND2X1 U7414 ( .A(n5461), .B(n5466), .Y(n5469) );
  OAI21X1 U7415 ( .A0(n5464), .A1(n5463), .B0(n5462), .Y(n5465) );
  AOI21X2 U7416 ( .A0(n5467), .A1(n5466), .B0(n5465), .Y(n5468) );
  OAI21X4 U7417 ( .A0(n5470), .A1(n5469), .B0(n5468), .Y(n6393) );
  AOI2BB2X1 U7418 ( .B0(n6393), .B1(n6804), .A0N(n6393), .A1N(n6804), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N175) );
  NOR2X4 U7419 ( .A(n5474), .B(n5473), .Y(n5475) );
  MXI2X1 U7420 ( .A(median_sobel_inst_n357), .B(median_sobel_inst_n197), .S0(
        n3141), .Y(n6588) );
  MXI2X1 U7421 ( .A(median_sobel_inst_n353), .B(median_sobel_inst_n201), .S0(
        n3141), .Y(n6589) );
  MXI2X1 U7422 ( .A(median_sobel_inst_n356), .B(median_sobel_inst_n198), .S0(
        n6128), .Y(n6590) );
  XNOR2X1 U7423 ( .A(n6372), .B(n5489), .Y(n6629) );
  NAND2X1 U7424 ( .A(n5494), .B(n5493), .Y(n5495) );
  NOR2X1 U7425 ( .A(n5506), .B(n5688), .Y(n5508) );
  AOI21X2 U7426 ( .A0(n5504), .A1(n5503), .B0(n5502), .Y(n5505) );
  OAI21X1 U7427 ( .A0(n5689), .A1(n5506), .B0(n5505), .Y(n5507) );
  NOR2BX1 U7428 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[9]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n7), .Y(n5509) );
  AND2X4 U7429 ( .A(n6393), .B(n5509), .Y(n6643) );
  NOR2X1 U7430 ( .A(n6733), .B(n5514), .Y(n5513) );
  NAND2X1 U7431 ( .A(n6307), .B(n6306), .Y(n5515) );
  CLKINVX1 U7432 ( .A(n5516), .Y(n5518) );
  NAND2X1 U7433 ( .A(n5518), .B(n5517), .Y(n5519) );
  XOR2X1 U7434 ( .A(n5520), .B(n5519), .Y(n6652) );
  NAND2X1 U7435 ( .A(n5523), .B(n5522), .Y(n5524) );
  XNOR2X1 U7436 ( .A(n6310), .B(n5524), .Y(n6653) );
  OAI21X1 U7437 ( .A0(n5527), .A1(n5526), .B0(n5525), .Y(n5532) );
  XOR2X1 U7438 ( .A(n5532), .B(n5531), .Y(n6713) );
  MXI2X1 U7439 ( .A(median_sobel_inst_n439), .B(n885), .S0(n4476), .Y(n6732)
         );
  MXI2X1 U7440 ( .A(median_sobel_inst_n386), .B(median_sobel_inst_n232), .S0(
        n6044), .Y(n6752) );
  MXI2X1 U7441 ( .A(median_sobel_inst_n348), .B(median_sobel_inst_n190), .S0(
        n6044), .Y(n6753) );
  MXI2X1 U7442 ( .A(median_sobel_inst_n418), .B(median_sobel_inst_n176), .S0(
        n6049), .Y(n6754) );
  MXI2X1 U7443 ( .A(median_sobel_inst_n345), .B(median_sobel_inst_n193), .S0(
        n3141), .Y(n6755) );
  MXI2X1 U7444 ( .A(median_sobel_inst_n344), .B(median_sobel_inst_n194), .S0(
        n6049), .Y(n6756) );
  MXI2X1 U7445 ( .A(median_sobel_inst_n354), .B(median_sobel_inst_n200), .S0(
        n6044), .Y(n6757) );
  MXI2X1 U7446 ( .A(median_sobel_inst_n385), .B(median_sobel_inst_n233), .S0(
        n4476), .Y(n6758) );
  MXI2X1 U7447 ( .A(median_sobel_inst_n351), .B(median_sobel_inst_n187), .S0(
        n5534), .Y(n6759) );
  MXI2X1 U7448 ( .A(median_sobel_inst_n387), .B(median_sobel_inst_n231), .S0(
        n4630), .Y(n6760) );
  MXI2X1 U7449 ( .A(median_sobel_inst_n388), .B(median_sobel_inst_n230), .S0(
        n6128), .Y(n6761) );
  MXI2X1 U7450 ( .A(median_sobel_inst_n358), .B(median_sobel_inst_n196), .S0(
        n3141), .Y(n6762) );
  MXI2X1 U7451 ( .A(median_sobel_inst_n346), .B(median_sobel_inst_n192), .S0(
        n3434), .Y(n6768) );
  MXI2X1 U7452 ( .A(median_sobel_inst_n347), .B(median_sobel_inst_n191), .S0(
        n6128), .Y(n6769) );
  MXI2X1 U7453 ( .A(median_sobel_inst_n350), .B(median_sobel_inst_n188), .S0(
        n3141), .Y(n6770) );
  MXI2X1 U7454 ( .A(median_sobel_inst_n355), .B(median_sobel_inst_n199), .S0(
        n5534), .Y(n6771) );
  MXI2X2 U7455 ( .A(n6870), .B(n3455), .S0(n2946), .Y(N758) );
  MXI2X2 U7456 ( .A(n6547), .B(n6711), .S0(n2946), .Y(N760) );
  XNOR2X1 U7457 ( .A(n5538), .B(median_sobel_inst_cnt[3]), .Y(n5539) );
  NOR2X2 U7458 ( .A(n5603), .B(n5539), .Y(median_sobel_inst_N115) );
  BUFX4 U7459 ( .A(n5540), .Y(n6445) );
  AO21X4 U7460 ( .A0(n6440), .A1(n6449), .B0(n6443), .Y(
        conv_inst_data_bcd_w[6]) );
  OA22X4 U7461 ( .A0(median_sobel_inst_n376), .A1(n6048), .B0(
        median_sobel_inst_n368), .B1(n6135), .Y(n5543) );
  AOI2BB2X1 U7462 ( .B0(n6265), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .A0N(n6264), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n119), .Y(n5550) );
  AOI22X4 U7463 ( .A0(n4476), .A1(median_sobel_inst_n135), .B0(
        median_sobel_inst_n73), .B1(n6122), .Y(n5553) );
  AOI2BB2X1 U7464 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), 
        .B1(n6195), .A0N(median_sobel_inst_u_median_filter_submodule_n64), 
        .A1N(n6197), .Y(n5555) );
  NAND2X1 U7465 ( .A(n5558), .B(n5557), .Y(n5560) );
  XOR2X1 U7466 ( .A(n5560), .B(n5559), .Y(conv_inst_data_bcd_w[4]) );
  NAND2X4 U7468 ( .A(n5564), .B(n5563), .Y(n5566) );
  INVX1 U7469 ( .A(conv_inst_n42), .Y(n5570) );
  NOR2X1 U7470 ( .A(n3745), .B(n5570), .Y(n5573) );
  NAND3BX4 U7471 ( .AN(n6279), .B(n2844), .C(n6663), .Y(n5578) );
  NOR2X2 U7472 ( .A(n3455), .B(n5582), .Y(n5583) );
  NAND2X2 U7473 ( .A(n5714), .B(n5583), .Y(n5585) );
  CLKINVX1 U7474 ( .A(n5585), .Y(n5584) );
  NOR2X2 U7475 ( .A(n5586), .B(n5585), .Y(n5587) );
  CLKINVX1 U7476 ( .A(n5832), .Y(n5592) );
  AOI21X4 U7477 ( .A0(median_sobel_inst_n86), .A1(n6089), .B0(n5593), .Y(n5594) );
  AOI2BB1X2 U7478 ( .A0N(n5599), .A1N(n5598), .B0(conv_inst_conv_3_r[11]), .Y(
        n5602) );
  NOR3X2 U7479 ( .A(n5602), .B(n5601), .C(n5600), .Y(conv_inst_N264) );
  NOR3X4 U7480 ( .A(n5607), .B(n5606), .C(n5619), .Y(conv_inst_N268) );
  MXI2X1 U7481 ( .A(median_sobel_inst_n196), .B(n6923), .S0(n6081), .Y(
        median_sobel_inst_med_sobel_e_wait_r[22]) );
  MXI2X1 U7482 ( .A(median_sobel_inst_n198), .B(n861), .S0(n6081), .Y(
        median_sobel_inst_med_sobel_e_wait_r[24]) );
  MXI2X1 U7483 ( .A(median_sobel_inst_n230), .B(n861), .S0(n5796), .Y(
        median_sobel_inst_med_sobel_e_wait_r[52]) );
  MXI2X1 U7484 ( .A(median_sobel_inst_n197), .B(n847), .S0(n6146), .Y(
        median_sobel_inst_med_sobel_e_wait_r[23]) );
  MXI2X1 U7485 ( .A(median_sobel_inst_n229), .B(n847), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[51]) );
  AOI2BB2X4 U7486 ( .B0(n3132), .B1(
        median_sobel_inst_u_median_filter_submodule_n24), .A0N(n2841), .A1N(
        n3709), .Y(n5609) );
  NOR2X1 U7487 ( .A(n5613), .B(n5612), .Y(n5614) );
  XOR2X4 U7488 ( .A(n5618), .B(n5617), .Y(n5620) );
  NOR2X4 U7489 ( .A(n5620), .B(n5619), .Y(conv_inst_N279) );
  AOI2BB2X1 U7490 ( .B0(n5622), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .A0N(n5621), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n46), .Y(n5623) );
  AO21X1 U7491 ( .A0(n6195), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .B0(n5625), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[0]) );
  AOI2BB1X1 U7492 ( .A0N(n6943), .A1N(n5626), .B0(n3465), .Y(
        conv_inst_data_abc_w[0]) );
  NAND2X6 U7493 ( .A(n6424), .B(n5627), .Y(n5635) );
  NAND3X2 U7494 ( .A(n5636), .B(n3181), .C(n6836), .Y(n5630) );
  NAND4X2 U7495 ( .A(n5633), .B(n5632), .C(n5631), .D(n5630), .Y(n5634) );
  CLKAND2X3 U7496 ( .A(n3274), .B(n5634), .Y(conv_inst_data_abc_w[6]) );
  OR2X4 U7497 ( .A(n5635), .B(n5636), .Y(n6426) );
  OAI2BB1X1 U7498 ( .A0N(n5636), .A1N(n5635), .B0(n6426), .Y(
        conv_inst_data_abc_w[4]) );
  AOI2BB1X1 U7499 ( .A0N(n6558), .A1N(n6857), .B0(n5643), .Y(
        conv_inst_data_bcd_w[0]) );
  NOR2X4 U7500 ( .A(n5644), .B(n5647), .Y(n5649) );
  OAI21X4 U7501 ( .A0(n5647), .A1(n5646), .B0(n5645), .Y(n5648) );
  AOI21X4 U7502 ( .A0(n5650), .A1(n5649), .B0(n5648), .Y(n6350) );
  NOR2X2 U7503 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .B(
        n3095), .Y(n5657) );
  OR2X2 U7504 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .Y(n6346) );
  NAND2X1 U7505 ( .A(n6346), .B(n6344), .Y(n5651) );
  NAND2X1 U7506 ( .A(n5654), .B(n5653), .Y(n5655) );
  CLKINVX1 U7507 ( .A(n6325), .Y(n5661) );
  NAND2X1 U7508 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), 
        .B(n3439), .Y(n5667) );
  OAI21X4 U7509 ( .A0(n5666), .A1(n5664), .B0(n5667), .Y(n6329) );
  CLKINVX1 U7510 ( .A(n6329), .Y(n5660) );
  OAI21X4 U7511 ( .A0(n5661), .A1(n6332), .B0(n5660), .Y(n5663) );
  OR2X2 U7512 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .Y(n6328) );
  NAND2X1 U7513 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .Y(n6326) );
  NAND2X1 U7514 ( .A(n6328), .B(n6326), .Y(n5662) );
  OAI21X4 U7515 ( .A0(n6332), .A1(n5665), .B0(n5664), .Y(n5670) );
  NAND2X1 U7516 ( .A(n5668), .B(n5667), .Y(n5669) );
  CLKINVX1 U7517 ( .A(n5674), .Y(n5676) );
  NAND2X1 U7518 ( .A(n5676), .B(n5675), .Y(n5677) );
  NAND2X1 U7519 ( .A(n5682), .B(n5681), .Y(n5683) );
  NAND2X1 U7520 ( .A(n5686), .B(n5685), .Y(n5687) );
  NAND2BX1 U7521 ( .AN(n5698), .B(conv_inst_conv_3_r[16]), .Y(n5703) );
  MXI2X2 U7522 ( .A(n5712), .B(n5716), .S0(n6550), .Y(n479) );
  NAND4X2 U7523 ( .A(n5714), .B(n5713), .C(cnt[6]), .D(n5733), .Y(n5715) );
  OAI2BB1X1 U7525 ( .A0N(n5730), .A1N(n6547), .B0(n5724), .Y(n476) );
  NAND3X2 U7526 ( .A(n5726), .B(cnt[8]), .C(n5725), .Y(n5727) );
  NAND2X6 U7528 ( .A(n5730), .B(n5729), .Y(n5736) );
  XNOR2X1 U7529 ( .A(cnt[5]), .B(n465), .Y(n5737) );
  NOR2X1 U7530 ( .A(cnt[10]), .B(cnt[4]), .Y(n5745) );
  NOR4X1 U7531 ( .A(cnt[6]), .B(n3455), .C(cnt[5]), .D(cnt[7]), .Y(n5742) );
  NOR3BX1 U7532 ( .AN(n5742), .B(cnt[3]), .C(n5741), .Y(n5743) );
  NOR2X2 U7533 ( .A(n5748), .B(n5747), .Y(N790) );
  NOR2X1 U7534 ( .A(n792), .B(n5803), .Y(n5761) );
  AOI2BB2X1 U7535 ( .B0(n6099), .B1(n6878), .A0N(n819), .A1N(n5803), .Y(n5773)
         );
  NOR2X2 U7536 ( .A(n5839), .B(n5775), .Y(N716) );
  AOI2BB2X2 U7537 ( .B0(n6140), .B1(median_sobel_inst_n645), .A0N(
        median_sobel_inst_n354), .A1N(n5834), .Y(n5780) );
  MXI2X1 U7538 ( .A(median_sobel_inst_n191), .B(n6846), .S0(n6146), .Y(
        median_sobel_inst_med_sobel_e_wait_r[18]) );
  NAND3X1 U7539 ( .A(n5792), .B(n5791), .C(n5790), .Y(n5793) );
  NAND2BX1 U7541 ( .AN(median_sobel_inst_n387), .B(n3461), .Y(n5798) );
  NAND2X2 U7543 ( .A(median_sobel_inst_n381), .B(n3141), .Y(n5800) );
  NAND3X6 U7544 ( .A(n5802), .B(n5801), .C(n5800), .Y(median_sobel_inst_n390)
         );
  AOI22X4 U7546 ( .A0(median_sobel_inst_net64424), .A1(n6140), .B0(n6081), 
        .B1(median_sobel_inst_n637), .Y(n5814) );
  OAI2BB2XL U7549 ( .B0(n3750), .B1(n804), .A0N(n6083), .A1N(n6899), .Y(n5837)
         );
  INVX3 U7550 ( .A(median_sobel_inst_data_f_r[1]), .Y(n5874) );
  NAND2X2 U7551 ( .A(n5874), .B(median_sobel_inst_data_c_r[1]), .Y(n5844) );
  OA21X4 U7552 ( .A0(median_sobel_inst_n434), .A1(n6147), .B0(n5846), .Y(n5847) );
  OAI22X2 U7553 ( .A0(n6700), .A1(n6133), .B0(median_sobel_inst_n415), .B1(
        n3080), .Y(n5850) );
  AOI2BB1X2 U7554 ( .A0N(median_sobel_inst_n439), .A1N(n6135), .B0(n5850), .Y(
        n5851) );
  OAI2BB1X4 U7555 ( .A0N(n6049), .A1N(median_sobel_inst_n42), .B0(n5851), .Y(
        median_sobel_inst_data_i_r[0]) );
  AOI2BB2X2 U7556 ( .B0(n6146), .B1(median_sobel_inst_net64424), .A0N(
        median_sobel_inst_n262), .A1N(n6096), .Y(n5853) );
  OR2X2 U7557 ( .A(median_sobel_inst_n411), .B(n6064), .Y(n5855) );
  OAI22X2 U7558 ( .A0(median_sobel_inst_n432), .A1(n4752), .B0(
        median_sobel_inst_n266), .B1(n6096), .Y(n5858) );
  AOI21X2 U7559 ( .A0(n6081), .A1(median_sobel_inst_n88), .B0(n5858), .Y(n5859) );
  NAND2BX2 U7560 ( .AN(median_sobel_inst_data_i_r[1]), .B(
        median_sobel_inst_data_c_r[1]), .Y(n5861) );
  NOR3X2 U7562 ( .A(n5883), .B(n5884), .C(median_sobel_inst_data_c_r[5]), .Y(
        n5869) );
  NAND2X2 U7563 ( .A(n5874), .B(median_sobel_inst_data_i_r[1]), .Y(n5875) );
  NAND3X4 U7564 ( .A(n5877), .B(n5876), .C(n5875), .Y(n5880) );
  AOI2BB2X4 U7565 ( .B0(n5878), .B1(median_sobel_inst_data_f_r[2]), .A0N(n5881), .A1N(median_sobel_inst_data_i_r[3]), .Y(n5879) );
  MXI2X1 U7568 ( .A(median_sobel_inst_n374), .B(median_sobel_inst_n212), .S0(
        n4881), .Y(median_sobel_inst_n578) );
  OR2X4 U7570 ( .A(median_sobel_inst_n373), .B(n6064), .Y(n5917) );
  NAND2X2 U7572 ( .A(median_sobel_inst_n53), .B(n6069), .Y(n5927) );
  MXI2X1 U7573 ( .A(median_sobel_inst_n217), .B(n5961), .S0(n6404), .Y(
        median_sobel_inst_med_sobel_e_wait_r[41]) );
  NAND2X2 U7574 ( .A(median_sobel_inst_n87), .B(n5979), .Y(n5968) );
  NAND2BX4 U7576 ( .AN(median_sobel_inst_data_b_r[1]), .B(
        median_sobel_inst_data_e_r[1]), .Y(n5969) );
  NOR2X1 U7579 ( .A(n6710), .B(n5986), .Y(n5980) );
  NOR2X2 U7582 ( .A(n6668), .B(n5986), .Y(n5987) );
  NAND2X2 U7584 ( .A(median_sobel_inst_data_h_r[0]), .B(n5992), .Y(n5994) );
  OAI22X4 U7585 ( .A0(median_sobel_inst_data_h_r[6]), .A1(n6003), .B0(
        median_sobel_inst_data_h_r[4]), .B1(n5997), .Y(n5998) );
  NAND4X4 U7586 ( .A(n6009), .B(n6008), .C(n6007), .D(n6006), .Y(
        median_sobel_inst_u_median_filter_submodule_a58_w) );
  NAND2BX2 U7589 ( .AN(median_sobel_inst_data_b_r[1]), .B(
        median_sobel_inst_data_h_r[1]), .Y(n6013) );
  NAND2X2 U7590 ( .A(n6020), .B(median_sobel_inst_data_h_r[6]), .Y(n6018) );
  AOI2BB2X4 U7591 ( .B0(n6019), .B1(median_sobel_inst_data_h_r[7]), .A0N(n6018), .A1N(n6017), .Y(n6024) );
  NAND2X1 U7593 ( .A(n6026), .B(n6888), .Y(n6028) );
  NAND3X1 U7594 ( .A(n6029), .B(n6028), .C(n6027), .Y(n6030) );
  NAND2BX1 U7595 ( .AN(median_sobel_inst_n337), .B(n6060), .Y(n6034) );
  NAND2BX4 U7596 ( .AN(median_sobel_inst_n393), .B(n6094), .Y(n6039) );
  OAI22X2 U7597 ( .A0(median_sobel_inst_n369), .A1(n6133), .B0(n3080), .B1(
        n6035), .Y(n6037) );
  MXI2X1 U7598 ( .A(median_sobel_inst_n208), .B(n6650), .S0(n6416), .Y(
        median_sobel_inst_med_sobel_e_wait_r[33]) );
  NAND2X1 U7600 ( .A(n6099), .B(n6897), .Y(n6057) );
  NAND3X1 U7601 ( .A(n6057), .B(n6056), .C(n6055), .Y(n6058) );
  NAND2X2 U7602 ( .A(median_sobel_inst_n629), .B(n6060), .Y(n6063) );
  NAND3X6 U7603 ( .A(n6063), .B(n6062), .C(n6061), .Y(
        median_sobel_inst_data_a_r[1]) );
  NAND2X1 U7604 ( .A(n6099), .B(n6898), .Y(n6086) );
  NAND2X1 U7605 ( .A(n6083), .B(n6855), .Y(n6085) );
  NAND3X1 U7606 ( .A(n6086), .B(n6085), .C(n6084), .Y(n6087) );
  NAND2BX1 U7607 ( .AN(median_sobel_inst_n331), .B(n6090), .Y(n6091) );
  AOI2BB2X1 U7608 ( .B0(n6099), .B1(n6867), .A0N(n794), .A1N(n5803), .Y(n6100)
         );
  NOR2X2 U7609 ( .A(n6105), .B(n6104), .Y(N694) );
  INVX4 U7610 ( .A(median_sobel_inst_data_a_r[1]), .Y(n6165) );
  NOR2X2 U7611 ( .A(n6107), .B(median_sobel_inst_data_a_r[2]), .Y(n6109) );
  AOI2BB2X2 U7612 ( .B0(n6155), .B1(median_sobel_inst_data_a_r[6]), .A0N(n6173), .A1N(median_sobel_inst_data_d_r[4]), .Y(n6111) );
  NAND2BX1 U7613 ( .AN(median_sobel_inst_n426), .B(n4630), .Y(n6120) );
  OR2X4 U7615 ( .A(median_sobel_inst_n429), .B(n6048), .Y(n6123) );
  OAI22X2 U7616 ( .A0(median_sobel_inst_n404), .A1(n6133), .B0(
        median_sobel_inst_n428), .B1(n6048), .Y(n6134) );
  OAI2BB1X4 U7617 ( .A0N(n6154), .A1N(n6153), .B0(n6152), .Y(n6163) );
  AOI2BB2X2 U7618 ( .B0(n6157), .B1(median_sobel_inst_data_g_r[7]), .A0N(n6156), .A1N(median_sobel_inst_data_d_r[7]), .Y(n6162) );
  AOI2BB2X4 U7620 ( .B0(median_sobel_inst_data_a_r[2]), .B1(n6169), .A0N(n6168), .A1N(median_sobel_inst_data_g_r[3]), .Y(n6170) );
  OAI21X4 U7621 ( .A0(n6172), .A1(n6171), .B0(n6170), .Y(n6177) );
  NAND2X4 U7622 ( .A(n3153), .B(median_sobel_inst_data_a_r[6]), .Y(n6181) );
  OAI21X4 U7623 ( .A0(n6180), .A1(median_sobel_inst_data_g_r[5]), .B0(n6181), 
        .Y(n6174) );
  NOR2X4 U7624 ( .A(n6175), .B(n6174), .Y(n6176) );
  OAI2BB1X4 U7625 ( .A0N(n6178), .A1N(n6177), .B0(n6176), .Y(n6185) );
  NAND2BX1 U7626 ( .AN(median_sobel_inst_u_median_filter_submodule_n106), .B(
        n6191), .Y(n6192) );
  AOI2BB2X1 U7627 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), 
        .B1(n6195), .A0N(n6194), .A1N(n6781), .Y(n6196) );
  AOI2BB2X1 U7628 ( .B0(n6198), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .A0N(n4714), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n106), .Y(n6199) );
  INVXL U7629 ( .A(median_sobel_inst_u_median_filter_submodule_n390), .Y(n6252) );
  OAI21X1 U7630 ( .A0(n6224), .A1(
        median_sobel_inst_u_median_filter_submodule_n365), .B0(
        median_sobel_inst_u_median_filter_submodule_n688), .Y(n6203) );
  NAND2BX1 U7631 ( .AN(median_sobel_inst_u_median_filter_submodule_n367), .B(
        median_sobel_inst_u_median_filter_submodule_n365), .Y(n6201) );
  NAND3X2 U7632 ( .A(n6203), .B(n6202), .C(n6201), .Y(n6205) );
  AOI2BB2X1 U7633 ( .B0(median_sobel_inst_u_median_filter_submodule_n685), 
        .B1(median_sobel_inst_u_median_filter_submodule_n358), .A0N(n6675), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n690), .Y(n6204) );
  NAND2X2 U7634 ( .A(n6205), .B(n6204), .Y(n6210) );
  NAND2X1 U7635 ( .A(median_sobel_inst_u_median_filter_submodule_n99), .B(
        median_sobel_inst_u_median_filter_submodule_n683), .Y(n6209) );
  NAND2X4 U7636 ( .A(n6697), .B(n6212), .Y(n6217) );
  NAND2X4 U7637 ( .A(n6217), .B(n6213), .Y(n6214) );
  OR2X2 U7638 ( .A(n6216), .B(median_sobel_inst_u_median_filter_submodule_n683), .Y(n6220) );
  NAND2BX1 U7640 ( .AN(median_sobel_inst_u_median_filter_submodule_n684), .B(
        median_sobel_inst_u_median_filter_submodule_n360), .Y(n6223) );
  INVX3 U7641 ( .A(median_sobel_inst_u_median_filter_submodule_n374), .Y(n6283) );
  AOI2BB1X1 U7642 ( .A0N(n6283), .A1N(
        median_sobel_inst_u_median_filter_submodule_n367), .B0(
        median_sobel_inst_u_median_filter_submodule_n688), .Y(n6225) );
  OAI22X2 U7643 ( .A0(n6226), .A1(n6225), .B0(n6568), .B1(n6698), .Y(n6227) );
  OAI2BB1X4 U7644 ( .A0N(median_sobel_inst_u_median_filter_submodule_n680), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n358), .B0(n6227), 
        .Y(n6229) );
  CLKINVX1 U7645 ( .A(median_sobel_inst_u_median_filter_submodule_n236), .Y(
        n6276) );
  NAND3X6 U7646 ( .A(n6229), .B(n6228), .C(n6231), .Y(n6234) );
  OA22X1 U7647 ( .A0(n6230), .A1(
        median_sobel_inst_u_median_filter_submodule_n236), .B0(
        median_sobel_inst_u_median_filter_submodule_n390), .B1(
        median_sobel_inst_u_median_filter_submodule_n683), .Y(n6233) );
  NAND3X2 U7648 ( .A(n6231), .B(n6697), .C(
        median_sobel_inst_u_median_filter_submodule_n682), .Y(n6232) );
  AOI22X1 U7649 ( .A0(median_sobel_inst_u_median_filter_submodule_n686), .A1(
        median_sobel_inst_u_median_filter_submodule_n360), .B0(
        median_sobel_inst_u_median_filter_submodule_n683), .B1(
        median_sobel_inst_u_median_filter_submodule_n390), .Y(n6235) );
  NAND2X4 U7650 ( .A(n6236), .B(n6235), .Y(n6237) );
  CLKINVX1 U7651 ( .A(median_sobel_inst_u_median_filter_submodule_n365), .Y(
        n6281) );
  OAI22X1 U7652 ( .A0(median_sobel_inst_u_median_filter_submodule_n374), .A1(
        n6281), .B0(median_sobel_inst_u_median_filter_submodule_n689), .B1(
        median_sobel_inst_u_median_filter_submodule_n348), .Y(n6244) );
  AOI2BB1X1 U7653 ( .A0N(n6283), .A1N(
        median_sobel_inst_u_median_filter_submodule_n365), .B0(
        median_sobel_inst_u_median_filter_submodule_n687), .Y(n6243) );
  AOI2BB2X1 U7654 ( .B0(median_sobel_inst_u_median_filter_submodule_n355), 
        .B1(median_sobel_inst_u_median_filter_submodule_n682), .A0N(
        median_sobel_inst_u_median_filter_submodule_n685), .A1N(n6683), .Y(
        n6247) );
  OAI21X1 U7655 ( .A0(median_sobel_inst_u_median_filter_submodule_n355), .A1(
        median_sobel_inst_u_median_filter_submodule_n682), .B0(n6245), .Y(
        n6246) );
  NOR2BX1 U7656 ( .AN(median_sobel_inst_u_median_filter_submodule_n390), .B(
        median_sobel_inst_u_median_filter_submodule_n99), .Y(n6248) );
  AOI21X1 U7657 ( .A0(median_sobel_inst_u_median_filter_submodule_n360), .A1(
        median_sobel_inst_u_median_filter_submodule_n684), .B0(n6248), .Y(
        n6249) );
  AOI2BB2X4 U7658 ( .B0(n6301), .B1(n6927), .A0N(n6298), .A1N(n6571), .Y(n6251) );
  OAI21X4 U7659 ( .A0(n6252), .A1(n6284), .B0(n6251), .Y(
        median_sobel_inst_u_median_filter_submodule_n708) );
  NAND2X1 U7660 ( .A(n6261), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .Y(n6253) );
  AOI2BB2X1 U7661 ( .B0(n6265), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .A0N(n6264), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n122), .Y(n6258) );
  NAND2X1 U7662 ( .A(n6270), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n6271) );
  INVX12 U7663 ( .A(n6279), .Y(n6274) );
  AOI2BB2X4 U7664 ( .B0(n3312), .B1(n6568), .A0N(n6298), .A1N(
        median_sobel_inst_u_median_filter_submodule_n689), .Y(n6277) );
  AOI2BB2X4 U7665 ( .B0(n3312), .B1(
        median_sobel_inst_u_median_filter_submodule_n367), .A0N(n6298), .A1N(
        n6281), .Y(n6282) );
  AOI2BB2X4 U7666 ( .B0(median_sobel_inst_u_median_filter_submodule_n125), 
        .B1(n6297), .A0N(n6296), .A1N(n3252), .Y(n6288) );
  INVXL U7667 ( .A(median_sobel_inst_u_median_filter_submodule_n376), .Y(n6291) );
  AOI2BB2X4 U7668 ( .B0(n6297), .B1(
        median_sobel_inst_u_median_filter_submodule_n274), .A0N(n6296), .A1N(
        median_sobel_inst_u_median_filter_submodule_n696), .Y(n6290) );
  AOI2BB2X4 U7669 ( .B0(n6297), .B1(n6900), .A0N(n6296), .A1N(n6292), .Y(n6293) );
  AOI2BB2X4 U7670 ( .B0(n6297), .B1(n6848), .A0N(n6296), .A1N(
        median_sobel_inst_u_median_filter_submodule_n90), .Y(n6295) );
  NAND2X2 U7671 ( .A(n6298), .B(n6910), .Y(n6300) );
  AOI2BB2X4 U7672 ( .B0(n6301), .B1(n6876), .A0N(n6298), .A1N(
        median_sobel_inst_u_median_filter_submodule_n687), .Y(n6299) );
  OAI21X4 U7673 ( .A0(n6301), .A1(n6300), .B0(n6299), .Y(
        median_sobel_inst_u_median_filter_submodule_n702) );
  MXI2X1 U7674 ( .A(median_sobel_inst_u_sober_compare_submodule_n87), .B(n6839), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n139) );
  NOR2X4 U7676 ( .A(n6311), .B(n6729), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N44) );
  CLKINVX1 U7677 ( .A(n6326), .Y(n6327) );
  AOI21X4 U7678 ( .A0(n6329), .A1(n6328), .B0(n6327), .Y(n6330) );
  OAI21X4 U7679 ( .A0(n6362), .A1(n6361), .B0(n6360), .Y(n6364) );
  AOI21X1 U7681 ( .A0(n6369), .A1(n6368), .B0(n6367), .Y(n6370) );
  OA21X4 U7682 ( .A0(n6384), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .B0(n6383), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]) );
  XNOR2X4 U7683 ( .A(n6391), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1270) );
  OA21X4 U7684 ( .A0(n6388), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[9]), .B0(n6389), 
        .Y(median_sobel_inst_u_sobel_gradient_submodule_N156) );
  NOR2X4 U7685 ( .A(n6394), .B(n6643), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N176) );
  AOI2BB2X2 U7686 ( .B0(n3579), .B1(
        median_sobel_inst_u_sober_compare_submodule_n200), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n78), .Y(n6397) );
  NAND2X2 U7687 ( .A(n6412), .B(
        median_sobel_inst_u_sober_compare_submodule_n211), .Y(n6395) );
  AOI2BB2X2 U7688 ( .B0(n3579), .B1(
        median_sobel_inst_u_sober_compare_submodule_n201), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n81), .Y(n6400) );
  NAND2X2 U7689 ( .A(n6406), .B(
        median_sobel_inst_u_sober_compare_submodule_n213), .Y(n6398) );
  AOI2BB2X2 U7690 ( .B0(n3579), .B1(n6600), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n80), .Y(n6403) );
  NAND2X2 U7691 ( .A(n6412), .B(n6821), .Y(n6401) );
  MXI2X1 U7692 ( .A(median_sobel_inst_u_sober_compare_submodule_n85), .B(n6830), .S0(n6404), .Y(median_sobel_inst_u_sober_compare_submodule_n137) );
  AOI2BB2X2 U7693 ( .B0(n3579), .B1(
        median_sobel_inst_u_sober_compare_submodule_n204), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n85), .Y(n6409) );
  NAND2X2 U7694 ( .A(n6406), .B(
        median_sobel_inst_u_sober_compare_submodule_n214), .Y(n6407) );
  NAND3X2 U7695 ( .A(n6409), .B(n6408), .C(n6407), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]) );
  AOI2BB2X2 U7696 ( .B0(n3579), .B1(n6832), .A0N(n6410), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n86), .Y(n6415) );
  NAND2X2 U7697 ( .A(n6412), .B(n6822), .Y(n6413) );
  MXI2X1 U7698 ( .A(median_sobel_inst_u_sober_compare_submodule_n84), .B(n6831), .S0(n6077), .Y(median_sobel_inst_u_sober_compare_submodule_n136) );
  INVX1 U7699 ( .A(n6417), .Y(n6420) );
  MX2X1 U7700 ( .A(n6420), .B(n6419), .S0(n6418), .Y(n6422) );
  NAND2XL U7701 ( .A(n6422), .B(n6421), .Y(n6423) );
  NAND2X4 U7702 ( .A(n6426), .B(n6425), .Y(n6427) );
  XOR2X4 U7703 ( .A(n6428), .B(n6427), .Y(conv_inst_data_abc_w[5]) );
  CLKINVX1 U7704 ( .A(n6433), .Y(n6434) );
  NAND2X4 U7705 ( .A(n6449), .B(n6441), .Y(n6444) );
  AOI2BB2X4 U7706 ( .B0(n2729), .B1(n6444), .A0N(n6443), .A1N(n6442), .Y(
        conv_inst_data_bcd_w[7]) );
  NAND2X2 U7707 ( .A(n6446), .B(n6445), .Y(n6448) );
  OAI21X4 U7708 ( .A0(n6449), .A1(n6448), .B0(n6447), .Y(n6452) );
  XOR2X4 U7709 ( .A(n6452), .B(n6451), .Y(n6996) );
  OAI21X4 U7710 ( .A0(n6467), .A1(n6949), .B0(n6464), .Y(
        median_sobel_inst_u_median_filter_submodule_net34515) );
  AOI2BB2X4 U7711 ( .B0(n3132), .B1(
        median_sobel_inst_u_median_filter_submodule_b5_r[6]), .A0N(n3133), 
        .A1N(n6465), .Y(n6466) );
  OAI21X4 U7712 ( .A0(n6467), .A1(n6947), .B0(n6466), .Y(
        median_sobel_inst_u_median_filter_submodule_n670) );
  NAND2X2 U7713 ( .A(n6473), .B(y_r[1]), .Y(n6520) );
  NAND3X1 U7714 ( .A(n6480), .B(n6476), .C(n6478), .Y(n6477) );
  NAND3X1 U7715 ( .A(n6480), .B(n6479), .C(n6478), .Y(n6483) );
  NAND2XL U7716 ( .A(cnt[1]), .B(n892), .Y(n6481) );
  AOI2BB2X2 U7717 ( .B0(n6484), .B1(n6483), .A0N(n6482), .A1N(n6481), .Y(N785)
         );
  NAND2BX1 U7718 ( .AN(n863), .B(x_plus_two_r[1]), .Y(n6485) );
  AND2X1 U7719 ( .A(x_plus_two_r[1]), .B(x_plus_two_r[2]), .Y(n6502) );
  NOR2BX1 U7720 ( .AN(n863), .B(x_r[2]), .Y(n6486) );
  OAI21X1 U7721 ( .A0(n6580), .A1(x_plus_one_r[2]), .B0(n816), .Y(n6504) );
  NAND3X2 U7722 ( .A(n6489), .B(n6528), .C(n6488), .Y(n6496) );
  OAI22X1 U7723 ( .A0(n1404), .A1(n6491), .B0(n6490), .B1(n3455), .Y(n6492) );
  NAND2X1 U7725 ( .A(n6497), .B(sram_addr_w[20]), .Y(n6500) );
  OAI21XL U7727 ( .A0(x_plus_two_r[1]), .A1(n3737), .B0(x_r[2]), .Y(n6524) );
  NAND2BX1 U7728 ( .AN(n6525), .B(n6524), .Y(n6529) );
  OAI22X1 U7729 ( .A0(n821), .A1(n6531), .B0(n6530), .B1(n3455), .Y(n6532) );
  NAND3X2 U7731 ( .A(n6537), .B(n6536), .C(n6535), .Y(n1459) );
  INVX4 U4879 ( .A(median_sobel_inst_net62749), .Y(n2943) );
  INVX8 U4965 ( .A(n4505), .Y(n3103) );
  INVX4 U3840 ( .A(n914), .Y(n3243) );
  NAND2X4 U4757 ( .A(conv_inst_data_bcd_2_r[2]), .B(conv_inst_conv_2_r[2]), 
        .Y(n5314) );
  INVX12 U6156 ( .A(n4424), .Y(n6060) );
  BUFX8 U4284 ( .A(n6133), .Y(n4693) );
  NOR2X4 U4755 ( .A(n5313), .B(n2783), .Y(n2784) );
  INVX1 U5377 ( .A(n4256), .Y(n4257) );
  INVX3 U4982 ( .A(n3140), .Y(n4178) );
  NOR2X2 U3785 ( .A(n3837), .B(op_mode_r[0]), .Y(n2870) );
  INVX3 U5357 ( .A(median_sobel_inst_u_median_filter_submodule_net22629), .Y(
        n4205) );
  AND2X2 U5151 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), .Y(
        n4523) );
  OR2X2 U5006 ( .A(median_sobel_inst_u_median_filter_submodule_n694), .B(
        median_sobel_inst_u_median_filter_submodule_n281), .Y(n3171) );
  AND2X6 U6006 ( .A(conv_inst_data_bcd_2_r[5]), .B(conv_inst_conv_2_r[5]), .Y(
        n3768) );
  NAND2X1 U6445 ( .A(n4026), .B(n4023), .Y(n4024) );
  AND2X4 U3714 ( .A(n6941), .B(n4981), .Y(n3484) );
  INVX3 U3858 ( .A(n4251), .Y(n3630) );
  INVX3 U4721 ( .A(n3507), .Y(n3731) );
  INVX6 U3859 ( .A(n4453), .Y(n4459) );
  BUFX12 U5308 ( .A(n4444), .Y(n6139) );
  NOR2X4 U6451 ( .A(n4032), .B(n4031), .Y(n4760) );
  AOI21X2 U6556 ( .A0(n4251), .A1(n6650), .B0(n6546), .Y(n4231) );
  AND2X4 U4828 ( .A(n5641), .B(n5642), .Y(n2858) );
  NOR2X4 U6011 ( .A(n3503), .B(n3700), .Y(n3502) );
  AND3X4 U3624 ( .A(n3854), .B(n3855), .C(n3856), .Y(n3665) );
  NAND3BX2 U4905 ( .AN(n4176), .B(n3535), .C(n3498), .Y(n2980) );
  NAND2X2 U6978 ( .A(n4889), .B(n4789), .Y(n5474) );
  AND3X4 U3600 ( .A(n4086), .B(n4087), .C(n4085), .Y(n5993) );
  NAND2BX2 U4798 ( .AN(median_sobel_inst_u_median_filter_submodule_n22), .B(
        median_sobel_inst_u_median_filter_submodule_net22675), .Y(n5533) );
  NOR2X2 U3602 ( .A(n5973), .B(n3294), .Y(n5974) );
  AND2X2 U3578 ( .A(n3377), .B(n4051), .Y(n2771) );
  NAND2X6 U4740 ( .A(n3350), .B(n3349), .Y(n3348) );
  INVX3 U3601 ( .A(conv_inst_n57), .Y(n4344) );
  CLKBUFX6 U5654 ( .A(n854), .Y(n5961) );
  OAI21X1 U4192 ( .A0(median_sobel_inst_u_sober_compare_submodule_n9), .A1(
        median_sobel_inst_u_sober_compare_submodule_net60411), .B0(n4496), .Y(
        n4490) );
  AOI21X2 U4854 ( .A0(n6094), .A1(n2740), .B0(n6097), .Y(n2910) );
  INVX1 U6376 ( .A(n4070), .Y(n3940) );
  NAND2X4 U4926 ( .A(conv_inst_n67), .B(n4344), .Y(n3946) );
  INVX6 U3518 ( .A(median_sobel_inst_data_e_r[5]), .Y(n5999) );
  NOR2X4 U4852 ( .A(n2727), .B(n2908), .Y(n3203) );
  NAND3X4 U4913 ( .A(n4140), .B(n2987), .C(n4141), .Y(
        median_sobel_inst_data_a_r[2]) );
  NAND2X4 U4447 ( .A(n4049), .B(n4048), .Y(n4062) );
  NOR2X4 U6286 ( .A(n5209), .B(n5206), .Y(n3820) );
  NAND2X6 U4844 ( .A(n2895), .B(n2896), .Y(n5299) );
  INVX4 U4235 ( .A(n6014), .Y(median_sobel_inst_data_h_r[3]) );
  NOR2X2 U3409 ( .A(n3476), .B(median_sobel_inst_u_median_filter_submodule_n37), .Y(n4778) );
  INVX2 U3398 ( .A(median_sobel_inst_data_g_r[4]), .Y(n2911) );
  INVX3 U4428 ( .A(median_sobel_inst_data_i_r[4]), .Y(n5882) );
  INVX4 U7577 ( .A(median_sobel_inst_data_e_r[6]), .Y(n6003) );
  NAND2X2 U4393 ( .A(n2911), .B(median_sobel_inst_data_d_r[4]), .Y(n2909) );
  NAND3X4 U6051 ( .A(n3562), .B(n3561), .C(n3559), .Y(n3558) );
  NAND3X4 U4826 ( .A(n2866), .B(n2707), .C(n2952), .Y(n2865) );
  OAI21X2 U4978 ( .A0(n5054), .A1(n4840), .B0(n4841), .Y(n6358) );
  NAND2X2 U4359 ( .A(n3022), .B(n6155), .Y(n3021) );
  INVX12 U3893 ( .A(n2716), .Y(n5446) );
  NOR2X4 U3373 ( .A(n4471), .B(n4470), .Y(n2904) );
  INVX1 U5296 ( .A(n4746), .Y(n4010) );
  NAND2X2 U4748 ( .A(n5871), .B(median_sobel_inst_data_c_r[5]), .Y(n2781) );
  INVX2 U4470 ( .A(n3812), .Y(n3908) );
  NAND2X6 U4778 ( .A(n2828), .B(n2826), .Y(n6285) );
  NOR2X2 U3344 ( .A(n6954), .B(median_sobel_inst_u_median_filter_submodule_n37), .Y(n4743) );
  INVX4 U4106 ( .A(n3813), .Y(n3600) );
  OAI21X2 U6027 ( .A0(n5652), .A1(n5658), .B0(n5653), .Y(n6347) );
  OAI2BB1X2 U3884 ( .A0N(median_sobel_inst_data_a_r[4]), .A1N(n2911), .B0(
        n6182), .Y(n6175) );
  NAND2X4 U3272 ( .A(n5725), .B(n5726), .Y(n2965) );
  NAND2X4 U4963 ( .A(median_sobel_inst_data_f_r[7]), .B(n3100), .Y(n3099) );
  NOR2X6 U4749 ( .A(n2782), .B(n4683), .Y(n4686) );
  NAND2X2 U4795 ( .A(n6180), .B(median_sobel_inst_data_d_r[5]), .Y(n3060) );
  NAND2X6 U5102 ( .A(n3265), .B(n3263), .Y(n6405) );
  INVX6 U5197 ( .A(n4130), .Y(n3385) );
  BUFX16 U4789 ( .A(n2889), .Y(n2841) );
  INVX6 U3882 ( .A(n4063), .Y(n6446) );
  AND2X4 U3189 ( .A(n6113), .B(n6112), .Y(n3062) );
  NOR2X2 U7527 ( .A(n5727), .B(n6853), .Y(n5728) );
  NAND2X4 U4445 ( .A(n3784), .B(n3755), .Y(n6105) );
  NAND2X4 U4362 ( .A(n3065), .B(n3064), .Y(n3063) );
  INVX1 U5154 ( .A(n6460), .Y(n3331) );
  NAND2X2 U3226 ( .A(n2917), .B(n3099), .Y(n3285) );
  NOR2X4 U5436 ( .A(n6482), .B(n6932), .Y(n6533) );
  NOR2X4 U4895 ( .A(n2965), .B(cnt[7]), .Y(n5722) );
  INVX6 U5063 ( .A(n3589), .Y(n5704) );
  CLKBUFX6 U3184 ( .A(n5762), .Y(n5931) );
  INVX4 U3178 ( .A(n6015), .Y(median_sobel_inst_data_h_r[7]) );
  AOI2BB2X2 U5183 ( .B0(n6265), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .A0N(n6264), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n116), .Y(n3370) );
  NOR2X2 U4867 ( .A(n6463), .B(n3911), .Y(n2925) );
  NAND2X2 U5241 ( .A(n3423), .B(n3422), .Y(n3421) );
  BUFX8 U4898 ( .A(n4530), .Y(n2969) );
  CLKAND2X3 U5198 ( .A(n4882), .B(n3386), .Y(n3596) );
  BUFX8 U4132 ( .A(n3231), .Y(n2946) );
  NOR2X2 U6083 ( .A(n3606), .B(n3605), .Y(conv_inst_N265) );
  OA21X2 U7680 ( .A0(n6364), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .B0(n6363), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]) );
  OAI22XL U2992 ( .A0(n3094), .A1(n3470), .B0(n3486), .B1(n3000), .Y(
        conv_inst_N200) );
  OAI22XL U2991 ( .A0(n3094), .A1(n6554), .B0(n6880), .B1(n3000), .Y(
        conv_inst_N214) );
  CLKAND2X8 U4890 ( .A(n4438), .B(n4436), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[0]) );
  DFFRHQX8 curr_state_reg_0_ ( .D(n1452), .CK(i_clk), .RN(n6963), .Q(n889) );
  NOR2X6 U4902 ( .A(n4026), .B(n2975), .Y(n3378) );
  CLKAND2X3 U4328 ( .A(n3948), .B(n5370), .Y(n2790) );
  NAND2X4 U4265 ( .A(n3311), .B(n2870), .Y(n3219) );
  NAND2X2 U5472 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(n4726) );
  NAND2X1 U5087 ( .A(n6646), .B(
        median_sobel_inst_u_median_filter_submodule_n376), .Y(n3873) );
  NAND2X2 U5086 ( .A(median_sobel_inst_u_median_filter_submodule_net22653), 
        .B(median_sobel_inst_u_median_filter_submodule_net55277), .Y(n3872) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N990), .CK(i_clk), .RN(
        n6966), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .QN(n7020) );
  NOR2BX2 U5050 ( .AN(n2749), .B(n4220), .Y(n3214) );
  NAND2BX2 U6427 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(n4324), .Y(n4695) );
  NAND2X4 U5163 ( .A(n4018), .B(n4034), .Y(n3350) );
  NAND2X1 U5045 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N1310), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n3208) );
  NOR2X1 U6044 ( .A(n4727), .B(n4729), .Y(n3549) );
  NAND2X1 U4996 ( .A(n6146), .B(n7023), .Y(n3159) );
  NAND2X1 U3588 ( .A(n6089), .B(n2718), .Y(n3154) );
  NOR2X1 U7580 ( .A(median_sobel_inst_n432), .B(n6132), .Y(n5989) );
  INVX4 U4430 ( .A(n4568), .Y(n4558) );
  NOR2X4 U5108 ( .A(n6681), .B(median_sobel_inst_u_sober_compare_submodule_n63), .Y(n3584) );
  INVX6 U4938 ( .A(median_sobel_inst_data_d_r[6]), .Y(n6155) );
  NAND3X6 U4797 ( .A(n2724), .B(n3154), .C(n3159), .Y(
        median_sobel_inst_data_d_r[5]) );
  NAND2X4 U4875 ( .A(n4071), .B(n4631), .Y(n2939) );
  CLKAND2X3 U6043 ( .A(n4730), .B(n3547), .Y(n3546) );
  NAND2X6 U3873 ( .A(n5815), .B(n3004), .Y(median_sobel_inst_data_f_r[3]) );
  INVX3 U5012 ( .A(n6421), .Y(n3180) );
  NAND2X2 U4613 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .Y(n5300)
         );
  CLKINVX1 U4833 ( .A(n5636), .Y(n5628) );
  NAND2X1 U6887 ( .A(n3476), .B(
        median_sobel_inst_u_median_filter_submodule_n37), .Y(n4776) );
  INVX6 U3435 ( .A(n3946), .Y(n5601) );
  INVX4 U6961 ( .A(i_in_valid), .Y(n5581) );
  AND2X6 U6007 ( .A(n3669), .B(n6436), .Y(n5556) );
  NAND2X6 U3540 ( .A(n5859), .B(n5860), .Y(median_sobel_inst_data_i_r[7]) );
  NAND2X4 U4542 ( .A(n5202), .B(n3820), .Y(n5688) );
  NAND2X6 U4881 ( .A(n4128), .B(n6482), .Y(n3231) );
  NAND2X1 U5448 ( .A(n6954), .B(
        median_sobel_inst_u_median_filter_submodule_n37), .Y(n4744) );
  INVX4 U6220 ( .A(n6101), .Y(n6083) );
  MXI2X1 U5272 ( .A(n4271), .B(n2701), .S0(n4979), .Y(n4273) );
  NAND3X2 U4889 ( .A(n3031), .B(n3254), .C(n5870), .Y(n2957) );
  NOR2X4 U3309 ( .A(n5721), .B(n5720), .Y(n5730) );
  NOR2X6 U6064 ( .A(n4092), .B(n4093), .Y(n6410) );
  NOR2X1 U6251 ( .A(n3789), .B(n3788), .Y(n3790) );
  NAND2X4 U4437 ( .A(n5382), .B(n4006), .Y(n5412) );
  NAND2X1 U5271 ( .A(n4273), .B(n4272), .Y(n4275) );
  INVX1 U7113 ( .A(n5650), .Y(n4983) );
  NOR2X4 U5625 ( .A(n6482), .B(n6476), .Y(n6469) );
  CLKINVX1 U5346 ( .A(median_sobel_inst_data_a_r[7]), .Y(n6116) );
  NAND2X4 U5043 ( .A(n6385), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n3206) );
  NAND2X6 U5230 ( .A(n6388), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[9]), .Y(n6389)
         );
  INVX4 U6494 ( .A(n3747), .Y(n6406) );
  BUFX6 U4144 ( .A(n5764), .Y(n5933) );
  BUFX6 U4145 ( .A(n5765), .Y(n5934) );
  INVX6 U4076 ( .A(n5763), .Y(n5932) );
  NAND2X1 U7730 ( .A(n6534), .B(n7900), .Y(n6535) );
  NAND3X2 U4358 ( .A(n2775), .B(n6022), .C(n6021), .Y(n6023) );
  NAND2X2 U5181 ( .A(n6274), .B(n3369), .Y(n3368) );
  NAND2X2 U5149 ( .A(n6463), .B(n6461), .Y(n3326) );
  NAND2X1 U6305 ( .A(n6534), .B(n6708), .Y(n3845) );
  NAND2X2 U5135 ( .A(n2992), .B(conv_inst_n64), .Y(n5487) );
  NAND3X1 U5688 ( .A(n6496), .B(n6495), .C(n6494), .Y(n1456) );
  AOI21X2 U5039 ( .A0(n6391), .A1(n6390), .B0(n6902), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N129) );
  INVX6 U3849 ( .A(n913), .Y(n5811) );
  NAND2X1 U7548 ( .A(n5830), .B(n5829), .Y(n5835) );
  NAND2X2 U5119 ( .A(n6122), .B(n2725), .Y(n3299) );
  NOR2X6 U5069 ( .A(n4599), .B(n3232), .Y(n4762) );
  NOR2X4 U3689 ( .A(n5612), .B(n3383), .Y(n3382) );
  OAI22X1 U3753 ( .A0(median_sobel_inst_n382), .A1(n5832), .B0(n6096), .B1(
        n5831), .Y(n5833) );
  NAND2BX1 U6117 ( .AN(conv_inst_data_bcd_4_r[4]), .B(n6676), .Y(n4334) );
  NAND2BX1 U3697 ( .AN(median_sobel_inst_n338), .B(n6089), .Y(n6046) );
  INVX12 U3801 ( .A(n5985), .Y(n6404) );
  NAND2X6 U4734 ( .A(n2767), .B(n5542), .Y(median_sobel_inst_data_b_r[5]) );
  NAND2BX1 U7578 ( .AN(median_sobel_inst_n426), .B(n6140), .Y(n5975) );
  NOR2X2 U4334 ( .A(conv_inst_data_abc_1_r[8]), .B(conv_inst_conv_1_r[8]), .Y(
        n4287) );
  AND2X2 U4333 ( .A(conv_inst_data_abc_1_r[9]), .B(conv_inst_conv_1_r[9]), .Y(
        n5219) );
  CLKINVX1 U4336 ( .A(n892), .Y(n5434) );
  NOR2X1 U3453 ( .A(n6374), .B(n6378), .Y(n6380) );
  OAI21X2 U5109 ( .A0(n4872), .A1(n4871), .B0(n4870), .Y(n3276) );
  NAND2X4 U4240 ( .A(n3352), .B(n6130), .Y(n2707) );
  NAND2X2 U3541 ( .A(n4792), .B(n4791), .Y(n5472) );
  NOR2X4 U5234 ( .A(n5125), .B(n3415), .Y(n5128) );
  NAND2X6 U4873 ( .A(n2939), .B(n2938), .Y(n4078) );
  INVX2 U3397 ( .A(median_sobel_inst_data_g_r[6]), .Y(n3153) );
  INVX2 U3872 ( .A(median_sobel_inst_data_f_r[3]), .Y(n5881) );
  NAND2X6 U4857 ( .A(n5871), .B(median_sobel_inst_data_i_r[5]), .Y(n5885) );
  OA22X2 U7614 ( .A0(median_sobel_inst_n256), .A1(n6127), .B0(
        median_sobel_inst_n402), .B1(n5834), .Y(n6119) );
  NAND2X4 U4131 ( .A(n5970), .B(n6003), .Y(n5972) );
  NOR2X4 U4492 ( .A(n4317), .B(n4003), .Y(n5335) );
  INVX3 U3342 ( .A(n5884), .Y(median_sobel_inst_data_i_r[6]) );
  INVX3 U3395 ( .A(median_sobel_inst_data_i_r[5]), .Y(n5883) );
  NAND2X2 U3381 ( .A(n5886), .B(median_sobel_inst_data_f_r[7]), .Y(n3117) );
  INVX3 U3266 ( .A(n6482), .Y(n4821) );
  INVX1 U3644 ( .A(n841), .Y(n5437) );
  NAND2X4 U3876 ( .A(n6463), .B(n3909), .Y(n2930) );
  CLKINVX1 U4327 ( .A(n4748), .Y(n5457) );
  CLKBUFX6 U4146 ( .A(n5765), .Y(n5949) );
  NOR2X6 U6004 ( .A(n6389), .B(n6866), .Y(n6392) );
  NAND3X2 U7592 ( .A(n6025), .B(n6024), .C(n6023), .Y(
        median_sobel_inst_u_median_filter_submodule_a28_w) );
  NOR2X2 U6056 ( .A(n3571), .B(n6392), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N157) );
  DFFSX2 conv_inst_conv_2_r_reg_16_ ( .D(n6540), .CK(i_clk), .SN(n6969), .Q(
        n6994), .QN(conv_inst_conv_2_r[16]) );
  DFFRX1 conv_inst_data_abc_1_r_reg_8_ ( .D(conv_inst_N132), .CK(i_clk), .RN(
        n6983), .Q(conv_inst_data_abc_1_r[8]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n708), .CK(i_clk), .RN(
        n6980), .Q(median_sobel_inst_u_median_filter_submodule_net54975) );
  INVX12 U4832 ( .A(n2873), .Y(n5636) );
  DFFRX2 cnt_reg_10_ ( .D(n474), .CK(i_clk), .RN(n6991), .Q(cnt[10]), .QN(
        n6597) );
  XNOR2X1 U2936 ( .A(n6998), .B(n5274), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N98) );
  CLKINVX1 U2959 ( .A(n6544), .Y(n5274) );
  NOR2X1 U2973 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n65), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n32), .Y(n6998) );
  XOR2X1 U2988 ( .A(n6570), .B(n6999), .Y(n6689) );
  MXI2X1 U2989 ( .A(n4695), .B(n4694), .S0(n6736), .Y(n6999) );
  NAND2X1 U2990 ( .A(n7001), .B(n7000), .Y(out_data_wait_r[6]) );
  AOI22X1 U3021 ( .A0(n5447), .A1(median_sobel_inst_sobel_out_data_w[6]), .B0(
        n5111), .B1(median_sobel_inst_out_data_w[6]), .Y(n7000) );
  MXI2X1 U3045 ( .A(n5110), .B(conv_result_w[6]), .S0(n5446), .Y(n7001) );
  NAND2X1 U3054 ( .A(n7003), .B(n7002), .Y(out_data_wait_r[5]) );
  AOI22X1 U3055 ( .A0(n5447), .A1(median_sobel_inst_sobel_out_data_w[5]), .B0(
        n5111), .B1(median_sobel_inst_out_data_w[5]), .Y(n7002) );
  MXI2X1 U3064 ( .A(n5096), .B(conv_result_w[5]), .S0(n5446), .Y(n7003) );
  NAND2X1 U3073 ( .A(n7005), .B(n7004), .Y(out_data_wait_r[4]) );
  AOI22X1 U3080 ( .A0(n5447), .A1(median_sobel_inst_sobel_out_data_w[4]), .B0(
        n5111), .B1(median_sobel_inst_out_data_w[4]), .Y(n7004) );
  MXI2X1 U3081 ( .A(n5101), .B(conv_result_w[4]), .S0(n5446), .Y(n7005) );
  NAND2X1 U3090 ( .A(n6192), .B(n7006), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[5]) );
  AOI22X1 U3103 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), 
        .A1(n6189), .B0(n6190), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n7006) );
  AOI21X1 U3124 ( .A0(n5157), .A1(n5158), .B0(n7007), .Y(n492) );
  XOR2X1 U3162 ( .A(n5156), .B(n892), .Y(n7007) );
  XOR2X1 U3171 ( .A(n3640), .B(n7008), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]) );
  NAND2X1 U3195 ( .A(n4591), .B(n4540), .Y(n7008) );
  XOR2X1 U3200 ( .A(n3798), .B(n7009), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]) );
  NAND2X1 U3223 ( .A(n5265), .B(n5266), .Y(n7009) );
  NOR2X1 U3225 ( .A(n5761), .B(n7010), .Y(n3161) );
  NAND3X1 U3242 ( .A(n3163), .B(n5759), .C(n5760), .Y(n7010) );
  OAI2BB1XL U3247 ( .A0N(n5682), .A1N(n2919), .B0(n5681), .Y(n4831) );
  OAI2BB1XL U3248 ( .A0N(n4836), .A1N(n4835), .B0(n4833), .Y(n4837) );
  NOR2XL U3249 ( .A(n5657), .B(n3131), .Y(n3130) );
  CLKINVX1 U3252 ( .A(n4552), .Y(n4551) );
  NAND2X1 U3254 ( .A(n1068), .B(n1354), .Y(n4552) );
  INVXL U3255 ( .A(n5249), .Y(n5251) );
  NOR2X1 U3297 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n69), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .Y(n5249) );
  NOR3BX1 U3298 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_net63936), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[26]), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n128), .Y(n4376) );
  AOI2BB2X1 U3304 ( .B0(n7011), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n58), .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_n52), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[26]), .Y(
        n4360) );
  NOR2X1 U3306 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n73), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n60), .Y(n7011) );
  INVX3 U3348 ( .A(n4954), .Y(n4953) );
  NAND2X1 U3370 ( .A(n6476), .B(cnt[1]), .Y(n4954) );
  NAND2X1 U3372 ( .A(median_sobel_inst_n153), .B(n7012), .Y(n3693) );
  NOR2X1 U3375 ( .A(median_sobel_inst_n656), .B(median_sobel_inst_n319), .Y(
        n7012) );
  NOR2X1 U3394 ( .A(conv_inst_conv_1_r[15]), .B(conv_inst_conv_1_r[14]), .Y(
        n3334) );
  INVXL U3417 ( .A(median_sobel_inst_n324), .Y(n7013) );
  AND3X2 U3419 ( .A(n7013), .B(n4305), .C(median_sobel_inst_n325), .Y(n3694)
         );
  XNOR2X1 U3420 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n113), .Y(n7028) );
  CLKINVX1 U3421 ( .A(n4076), .Y(n3941) );
  NOR2X1 U3441 ( .A(conv_inst_data_abc_3_r[6]), .B(conv_inst_conv_3_r[6]), .Y(
        n4076) );
  AND2X1 U3468 ( .A(n3956), .B(n7035), .Y(n3659) );
  OAI2BB1X1 U3472 ( .A0N(median_sobel_inst_u_sober_compare_submodule_n54), 
        .A1N(median_sobel_inst_u_sober_compare_submodule_n3), .B0(n7015), .Y(
        n4483) );
  NAND3X1 U3473 ( .A(n6670), .B(n6551), .C(
        median_sobel_inst_u_sober_compare_submodule_n52), .Y(n7015) );
  NAND2BX1 U3498 ( .AN(n6664), .B(conv_inst_n50), .Y(n7035) );
  AOI2BB2X2 U3510 ( .B0(n6140), .B1(n7024), .A0N(median_sobel_inst_n402), 
        .A1N(n6132), .Y(n2724) );
  INVXL U3527 ( .A(median_sobel_inst_u_median_filter_submodule_n372), .Y(n7022) );
  NAND2X1 U3546 ( .A(median_sobel_inst_u_median_filter_submodule_n282), .B(
        n7022), .Y(n3189) );
  NOR2X1 U3553 ( .A(n6645), .B(
        median_sobel_inst_u_median_filter_submodule_n288), .Y(n2831) );
  NAND2X1 U3556 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_net55584), .Y(n4159) );
  OR2X6 U3557 ( .A(n5753), .B(n5803), .Y(n5763) );
  OR2X6 U3561 ( .A(n5335), .B(n7028), .Y(n5382) );
  AOI2BB2X2 U3563 ( .B0(median_sobel_inst_data_h_r[4]), .B1(n2817), .A0N(n6014), .A1N(median_sobel_inst_data_b_r[3]), .Y(n2881) );
  AOI2BB2X1 U3564 ( .B0(n4881), .B1(n7018), .A0N(n6691), .A1N(n5985), .Y(n3074) );
  AND2X4 U3577 ( .A(n3299), .B(n3297), .Y(n3124) );
  CLKAND2X3 U3589 ( .A(n3461), .B(n2718), .Y(n3049) );
  CLKAND2X8 U3615 ( .A(op_mode_r[3]), .B(n4382), .Y(n3311) );
  NAND2BX2 U3616 ( .AN(n858), .B(n913), .Y(n2852) );
  INVXL U3629 ( .A(n6931), .Y(n7025) );
  AOI2BB2X1 U3631 ( .B0(n6270), .B1(n7025), .A0N(
        median_sobel_inst_u_median_filter_submodule_n64), .A1N(n6269), .Y(
        n5161) );
  OR2X4 U3633 ( .A(n3133), .B(
        median_sobel_inst_u_median_filter_submodule_net62055), .Y(n3721) );
  AOI2BB1X2 U3634 ( .A0N(n4879), .A1N(n6382), .B0(n6381), .Y(n3306) );
  OR2X1 U3639 ( .A(n5839), .B(n3790), .Y(n6542) );
  NOR2BX1 U3645 ( .AN(median_sobel_inst_data_g_r[6]), .B(
        median_sobel_inst_data_a_r[6]), .Y(n3096) );
  NAND2BX4 U3647 ( .AN(n5561), .B(n3394), .Y(n5564) );
  NAND2BX2 U3648 ( .AN(n5413), .B(n5414), .Y(n3733) );
  AND2X2 U3656 ( .A(n4748), .B(n3436), .Y(n6261) );
  OR2X1 U3660 ( .A(n6493), .B(n3222), .Y(n6511) );
  OR2X4 U3670 ( .A(n5571), .B(n5572), .Y(n3393) );
  CLKINVX1 U3674 ( .A(median_sobel_inst_data_a_r[1]), .Y(n7027) );
  OAI2BB2X4 U3680 ( .B0(n6169), .B1(median_sobel_inst_data_a_r[2]), .A0N(
        median_sobel_inst_data_g_r[1]), .A1N(n7027), .Y(n6172) );
  NOR3BX4 U3687 ( .AN(n2707), .B(n6166), .C(median_sobel_inst_data_a_r[0]), 
        .Y(n6171) );
  NAND2BX4 U3690 ( .AN(n6382), .B(n2747), .Y(n3236) );
  CLKINVX2 U3691 ( .A(median_sobel_inst_data_i_r[3]), .Y(n7029) );
  OA22X4 U3692 ( .A0(median_sobel_inst_data_f_r[3]), .A1(n7029), .B0(n5882), 
        .B1(median_sobel_inst_n390), .Y(n3119) );
  NAND2BX4 U3701 ( .AN(n5970), .B(median_sobel_inst_data_e_r[6]), .Y(n2768) );
  NAND2BX2 U3705 ( .AN(n5885), .B(n3452), .Y(n2913) );
  AND2X2 U3706 ( .A(n5138), .B(n5141), .Y(n7040) );
  NOR2BX4 U3707 ( .AN(median_sobel_inst_data_h_r[5]), .B(
        median_sobel_inst_data_b_r[5]), .Y(n6020) );
  OR2X8 U3740 ( .A(n3672), .B(n4513), .Y(n2787) );
  INVX3 U3745 ( .A(n5288), .Y(n7030) );
  OAI2BB1X4 U3747 ( .A0N(n7030), .A1N(n5291), .B0(n5289), .Y(n5650) );
  AND2X4 U3748 ( .A(n2844), .B(n6680), .Y(n4227) );
  OR2X4 U3752 ( .A(n6002), .B(median_sobel_inst_data_e_r[6]), .Y(n2758) );
  NAND2X4 U3756 ( .A(n5193), .B(n3726), .Y(n5572) );
  NAND3X2 U3760 ( .A(n4810), .B(n4449), .C(n4448), .Y(n3544) );
  AND4X4 U3786 ( .A(n2945), .B(n6159), .C(n2909), .D(n6160), .Y(n6152) );
  AND4X4 U3797 ( .A(n3117), .B(n3116), .C(n3115), .D(n3114), .Y(n3112) );
  NAND2BX4 U3816 ( .AN(median_sobel_inst_data_i_r[7]), .B(
        median_sobel_inst_data_c_r[7]), .Y(n3254) );
  NAND2BX2 U3821 ( .AN(median_sobel_inst_data_g_r[6]), .B(
        median_sobel_inst_data_d_r[6]), .Y(n6159) );
  AND2X2 U3830 ( .A(median_sobel_inst_data_e_r[3]), .B(n6014), .Y(n3577) );
  NAND2BX2 U3837 ( .AN(median_sobel_inst_data_g_r[5]), .B(
        median_sobel_inst_data_d_r[5]), .Y(n2945) );
  OA21X2 U3838 ( .A0(n6378), .A1(n6377), .B0(n6376), .Y(n3318) );
  INVXL U3839 ( .A(n6387), .Y(n7031) );
  OR2X4 U3846 ( .A(n5128), .B(n7031), .Y(n3413) );
  INVXL U3856 ( .A(median_sobel_inst_u_sober_compare_submodule_n181), .Y(n7032) );
  OAI2BB1X4 U3857 ( .A0N(n2754), .A1N(n7032), .B0(n4090), .Y(n4092) );
  OA22X4 U3878 ( .A0(n5845), .A1(median_sobel_inst_data_c_r[4]), .B0(n5871), 
        .B1(median_sobel_inst_data_c_r[5]), .Y(n3098) );
  NAND2BX4 U3895 ( .AN(median_sobel_inst_data_a_r[5]), .B(
        median_sobel_inst_data_d_r[5]), .Y(n3022) );
  INVXL U3898 ( .A(n4762), .Y(n7033) );
  OR2X8 U3899 ( .A(n7033), .B(i_in_valid), .Y(n5726) );
  NOR3BX2 U3901 ( .AN(n4088), .B(
        median_sobel_inst_u_sober_compare_submodule_n13), .C(
        median_sobel_inst_u_sober_compare_submodule_n163), .Y(n3266) );
  NAND2X2 U3902 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n137), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r[0]), .Y(n3795) );
  CLKAND2X4 U3913 ( .A(n6115), .B(median_sobel_inst_data_d_r[5]), .Y(n3018) );
  OR2X1 U3917 ( .A(n5834), .B(median_sobel_inst_n376), .Y(n3035) );
  NOR2BX4 U3926 ( .AN(n3628), .B(n5636), .Y(n3182) );
  OR2X4 U3929 ( .A(median_sobel_inst_data_g_r[1]), .B(n6150), .Y(n2866) );
  OAI2BB2X1 U3942 ( .B0(median_sobel_inst_n371), .B1(n6133), .A0N(n5541), 
        .A1N(median_sobel_inst_n146), .Y(n6098) );
  NAND2BX4 U3963 ( .AN(n4760), .B(n3557), .Y(n3405) );
  NAND2BX2 U3978 ( .AN(median_sobel_inst_data_f_r[2]), .B(
        median_sobel_inst_data_c_r[2]), .Y(n3009) );
  NAND2BX4 U3981 ( .AN(median_sobel_inst_data_h_r[1]), .B(
        median_sobel_inst_data_b_r[1]), .Y(n6011) );
  OA22X2 U3997 ( .A0(median_sobel_inst_n373), .A1(n4340), .B0(n5834), .B1(
        median_sobel_inst_n341), .Y(n2987) );
  NAND2BX2 U4001 ( .AN(n4466), .B(n4467), .Y(n5346) );
  NAND3BX4 U4030 ( .AN(n3833), .B(n3217), .C(n3216), .Y(n4598) );
  NAND2BX4 U4032 ( .AN(median_sobel_inst_data_i_r[1]), .B(
        median_sobel_inst_data_f_r[1]), .Y(n3295) );
  AND3X4 U4044 ( .A(n3382), .B(n7035), .C(n3956), .Y(n4407) );
  OR2X6 U4048 ( .A(N730), .B(n1354), .Y(n6101) );
  NAND2X4 U4061 ( .A(n6930), .B(n4224), .Y(n3360) );
  NOR2BX4 U4066 ( .AN(n4334), .B(n3616), .Y(n3615) );
  NOR2BX4 U4068 ( .AN(n4211), .B(n3645), .Y(n3197) );
  NAND2BX2 U4069 ( .AN(n4046), .B(input_data_ready_r[13]), .Y(n4047) );
  NAND2X1 U4070 ( .A(n6848), .B(
        median_sobel_inst_u_median_filter_submodule_n90), .Y(n3898) );
  NAND4X2 U4071 ( .A(n6655), .B(
        median_sobel_inst_u_median_filter_submodule_net54975), .C(
        median_sobel_inst_u_median_filter_submodule_b1_r_5_), .D(n4189), .Y(
        n2893) );
  CLKAND2X3 U4073 ( .A(n7019), .B(n5984), .Y(n3150) );
  OR2X4 U4074 ( .A(n4076), .B(n4683), .Y(n3603) );
  INVXL U4077 ( .A(median_sobel_inst_n388), .Y(n7037) );
  NAND2X1 U4078 ( .A(n7037), .B(n6089), .Y(n5815) );
  AND2X2 U4104 ( .A(n3446), .B(n841), .Y(n4855) );
  OR2X2 U4105 ( .A(n4072), .B(n4073), .Y(n3601) );
  AND2X4 U4110 ( .A(n4873), .B(n3639), .Y(n3233) );
  OR2X2 U4113 ( .A(n3376), .B(n4046), .Y(n2773) );
  OR2X2 U4115 ( .A(n4729), .B(n4726), .Y(n3547) );
  CLKAND2X8 U4124 ( .A(n3448), .B(n3271), .Y(n5714) );
  OR2X2 U4125 ( .A(n3446), .B(n892), .Y(n3753) );
  NAND2X4 U4126 ( .A(n3504), .B(n4260), .Y(n4263) );
  OR2X8 U4128 ( .A(n3400), .B(n5833), .Y(median_sobel_inst_data_c_r[1]) );
  NAND3BX2 U4130 ( .AN(n6217), .B(n6928), .C(n6927), .Y(n6219) );
  AND2X4 U4135 ( .A(n5127), .B(n5126), .Y(n3415) );
  CLKAND2X3 U4136 ( .A(n6122), .B(n7023), .Y(n3025) );
  NAND2BX2 U4137 ( .AN(n5985), .B(median_sobel_inst_n122), .Y(n5552) );
  NOR2BX4 U4142 ( .AN(n3651), .B(
        median_sobel_inst_u_median_filter_submodule_net41723), .Y(n3649) );
  INVXL U4147 ( .A(median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(
        n7039) );
  OAI2BB1X1 U4148 ( .A0N(n7039), .A1N(
        median_sobel_inst_u_median_filter_submodule_n372), .B0(n4223), .Y(
        n4222) );
  NOR2X4 U4152 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .Y(n4872) );
  OR2X2 U4154 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .Y(
        n3555) );
  OR2X2 U4167 ( .A(conv_inst_conv_4_r[6]), .B(conv_inst_n50), .Y(n3661) );
  OR2X2 U4170 ( .A(n5747), .B(n6658), .Y(n3308) );
  OR2X4 U4200 ( .A(n3051), .B(n3049), .Y(n3026) );
  AND2X8 U4202 ( .A(conv_inst_n27), .B(n6929), .Y(n3468) );
  CLKAND2X4 U4205 ( .A(n5939), .B(n861), .Y(n3345) );
  NAND2BX4 U4206 ( .AN(n4256), .B(n2852), .Y(n2856) );
  OR2X4 U4212 ( .A(n6096), .B(median_sobel_inst_n260), .Y(n3297) );
  OR2X1 U4213 ( .A(n3794), .B(n6105), .Y(n3741) );
  NOR2X1 U4214 ( .A(n6373), .B(n6723), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N14) );
  OR2X4 U4215 ( .A(n3780), .B(n3781), .Y(n6540) );
  OA21X4 U4221 ( .A0(n6385), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .B0(n3206), 
        .Y(median_sobel_inst_u_sobel_gradient_submodule_N140) );
  AOI2BB1X1 U4224 ( .A0N(n5794), .A1N(n5793), .B0(n5839), .Y(N715) );
  NAND2BX2 U4230 ( .AN(n3580), .B(n4110), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]) );
  NOR2BX1 U4236 ( .AN(median_sobel_inst_n650), .B(n4321), .Y(
        median_sobel_inst_N96) );
  NOR2BX2 U4245 ( .AN(n6391), .B(n4008), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1280) );
  AO21X1 U4250 ( .A0(cnt[7]), .A1(n5723), .B0(n5722), .Y(n477) );
  XNOR2X1 U4260 ( .A(n5651), .B(n3519), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N22) );
  CLKAND2X8 U4261 ( .A(n6902), .B(n3206), .Y(n3204) );
  NAND3BX2 U4273 ( .AN(n6493), .B(n6708), .C(n3739), .Y(n6494) );
  NOR2BX4 U4275 ( .AN(n5604), .B(n3745), .Y(n5606) );
  NOR2BX4 U4292 ( .AN(n6389), .B(n3487), .Y(n3571) );
  NAND2X1 U4293 ( .A(n6915), .B(n5948), .Y(n5894) );
  NAND2X1 U4294 ( .A(n6912), .B(n5948), .Y(n5921) );
  NAND2X1 U4306 ( .A(n6911), .B(n5948), .Y(n5817) );
  OAI2BB1X4 U4309 ( .A0N(conv_inst_conv_3_r[12]), .A1N(n5600), .B0(n3655), .Y(
        n3606) );
  OAI2BB1X1 U4310 ( .A0N(n4451), .A1N(n4814), .B0(n4456), .Y(n4462) );
  OAI21X1 U4314 ( .A0(n4869), .A1(n4641), .B0(n4871), .Y(n4644) );
  NAND2X1 U4322 ( .A(n5714), .B(n5726), .Y(n5709) );
  NAND4BX1 U4324 ( .AN(n3302), .B(n5744), .C(n6997), .D(n5745), .Y(n5740) );
  NAND2X2 U4331 ( .A(n6298), .B(n6859), .Y(n3315) );
  NOR3BX4 U4337 ( .AN(n3305), .B(n5737), .C(n5738), .Y(n6997) );
  NOR2BX2 U4346 ( .AN(n4786), .B(n3666), .Y(n4882) );
  OR2X2 U4365 ( .A(median_sobel_inst_data_h_r[6]), .B(n6020), .Y(n2775) );
  OAI22XL U4373 ( .A0(n3737), .A1(n6523), .B0(x_plus_one_r[1]), .B1(n6708), 
        .Y(n6525) );
  OAI2BB2X1 U4394 ( .B0(conv_inst_n30), .B1(n3913), .A0N(n5601), .A1N(
        conv_isFirst_signal_r), .Y(n3914) );
  AOI2BB1X1 U4399 ( .A0N(conv_inst_conv_2_r[16]), .A1N(n7040), .B0(n5601), .Y(
        n3778) );
  OR2X1 U4403 ( .A(n5514), .B(n6640), .Y(n6368) );
  NAND2X2 U4405 ( .A(n6380), .B(n6381), .Y(n3235) );
  OAI2BB2X2 U4408 ( .B0(n5999), .B1(median_sobel_inst_data_h_r[5]), .A0N(n6015), .A1N(median_sobel_inst_data_e_r[7]), .Y(n3082) );
  OAI2BB1X2 U4410 ( .A0N(n3711), .A1N(n3713), .B0(n4613), .Y(n4316) );
  NAND2X1 U4431 ( .A(n6307), .B(n6305), .Y(n6309) );
  NAND2X2 U4440 ( .A(n3095), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n5658) );
  NAND2X2 U4444 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n133), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .Y(n5645) );
  NAND2X2 U4471 ( .A(n4849), .B(n5158), .Y(n5435) );
  NOR3X2 U4521 ( .A(n4550), .B(median_sobel_inst_u_sober_compare_submodule_n16), .C(median_sobel_inst_u_sober_compare_submodule_n21), .Y(n4093) );
  AOI22X1 U4522 ( .A0(median_sobel_inst_u_sober_compare_submodule_n21), .A1(
        n4097), .B0(n4095), .B1(n4096), .Y(n4100) );
  OR2X4 U4527 ( .A(n6436), .B(n6435), .Y(n3425) );
  OR2X4 U4552 ( .A(n4579), .B(n3267), .Y(n3263) );
  AOI22X2 U4558 ( .A0(n6712), .A1(n5533), .B0(n3899), .B1(n3900), .Y(n3903) );
  NOR2X2 U4568 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n108), .Y(n4840) );
  OAI2BB2X1 U4578 ( .B0(median_sobel_inst_n425), .B1(n6135), .A0N(n6128), 
        .A1N(median_sobel_inst_n35), .Y(n2762) );
  NAND2BX2 U4585 ( .AN(median_sobel_inst_data_c_r[1]), .B(
        median_sobel_inst_data_i_r[1]), .Y(n5864) );
  NOR2BX1 U4592 ( .AN(conv_inst_n57), .B(conv_inst_n67), .Y(n3915) );
  AND4X4 U4603 ( .A(n4846), .B(n4976), .C(n4844), .D(n4845), .Y(n5158) );
  NAND3X1 U4609 ( .A(n4345), .B(n4363), .C(n4369), .Y(n4352) );
  NOR2X2 U4620 ( .A(n5039), .B(n4884), .Y(n6334) );
  OAI211X4 U4627 ( .A0(n3507), .A1(n6690), .B0(n3684), .C0(n3685), .Y(n4067)
         );
  NAND2X2 U4633 ( .A(n3418), .B(n5323), .Y(n3417) );
  NAND2X1 U4645 ( .A(n6136), .B(median_sobel_inst_n63), .Y(n6126) );
  NAND2BX2 U4658 ( .AN(n4324), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n3817) );
  OAI211X2 U4661 ( .A0(n5242), .A1(median_sobel_inst_n258), .B0(n6118), .C0(
        n7043), .Y(n2727) );
  NAND2X1 U4664 ( .A(median_sobel_inst_n91), .B(n6089), .Y(n7043) );
  NAND3X4 U4673 ( .A(n2912), .B(n6143), .C(n6142), .Y(
        median_sobel_inst_data_g_r[4]) );
  OAI211X2 U4683 ( .A0(n3224), .A1(n7016), .B0(n3858), .C0(n3857), .Y(n5038)
         );
  AOI2BB2X2 U4692 ( .B0(n4630), .B1(median_sobel_inst_n88), .A0N(
        median_sobel_inst_n368), .A1N(n6064), .Y(n2794) );
  AND2X4 U4698 ( .A(n5481), .B(n2751), .Y(n6456) );
  OR2X4 U4701 ( .A(n3483), .B(n2983), .Y(n2977) );
  NAND3BX1 U4702 ( .AN(n4362), .B(n4363), .C(n4365), .Y(n3566) );
  INVX3 U4710 ( .A(n5323), .Y(n5130) );
  OR3X4 U4712 ( .A(n5987), .B(n5989), .C(n5988), .Y(n3151) );
  AOI22X2 U4727 ( .A0(n3434), .A1(median_sobel_inst_n30), .B0(n6140), .B1(
        n7017), .Y(n2912) );
  AOI2BB2X2 U4729 ( .B0(median_sobel_inst_n70), .B1(n3462), .A0N(
        median_sobel_inst_n369), .A1N(n6064), .Y(n2764) );
  OAI2BB2X1 U4762 ( .B0(median_sobel_inst_u_median_filter_submodule_net56609), 
        .B1(n3885), .A0N(median_sobel_inst_u_median_filter_submodule_n22), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net22675), .Y(n2830)
         );
  NAND3X1 U4768 ( .A(n4170), .B(n4169), .C(
        median_sobel_inst_u_median_filter_submodule_b5_r[6]), .Y(n4171) );
  NAND2X1 U4782 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n4870) );
  NAND2BX1 U4793 ( .AN(median_sobel_inst_n387), .B(n6089), .Y(n5802) );
  AND2X2 U4794 ( .A(n4367), .B(n4366), .Y(n3564) );
  OA21X2 U4796 ( .A0(median_sobel_inst_u_median_filter_submodule_net55584), 
        .A1(median_sobel_inst_u_median_filter_submodule_n91), .B0(n4175), .Y(
        n3535) );
  OAI2BB2X2 U4820 ( .B0(median_sobel_inst_n374), .B1(n6133), .A0N(
        median_sobel_inst_net43895), .A1N(n4630), .Y(n2898) );
  NOR2X1 U4827 ( .A(n5834), .B(median_sobel_inst_n375), .Y(n3052) );
  NAND2X1 U4831 ( .A(n3461), .B(median_sobel_inst_n145), .Y(n5918) );
  NOR2X2 U4839 ( .A(n4872), .B(n4869), .Y(n3639) );
  OAI211X1 U4840 ( .A0(median_sobel_inst_u_median_filter_submodule_n125), .A1(
        n6289), .B0(n3872), .C0(n3873), .Y(n3874) );
  NOR2X1 U4843 ( .A(n6659), .B(n5985), .Y(n5988) );
  NAND2X2 U4855 ( .A(n1080), .B(n1081), .Y(n3503) );
  NAND4X1 U4880 ( .A(n3872), .B(n6289), .C(n3873), .D(
        median_sobel_inst_u_median_filter_submodule_n125), .Y(n3871) );
  AND3X4 U4896 ( .A(n3171), .B(n3170), .C(n3172), .Y(n3168) );
  NOR2X1 U4897 ( .A(n3080), .B(median_sobel_inst_n334), .Y(n3048) );
  XOR2X1 U4934 ( .A(n858), .B(n913), .Y(n4261) );
endmodule

