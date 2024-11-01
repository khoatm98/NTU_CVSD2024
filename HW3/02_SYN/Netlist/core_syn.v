/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Fri Nov  1 20:57:50 2024
/////////////////////////////////////////////////////////////


module core ( i_clk, i_rst_n, i_op_valid, i_op_mode, o_op_ready, i_in_valid, 
        i_in_data, o_in_ready, o_out_valid, o_out_data );
  input [3:0] i_op_mode;
  input [7:0] i_in_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_op_valid, i_in_valid;
  output o_op_ready, o_in_ready, o_out_valid;
  wire   conv_out_valid_w, x_origin_r_1_, conv_isFirst_signal_r,
         conv_calc_done_r, med_sobel_isFirst_signal_r, med_sobel_r, med_done_w,
         op_mode_r_2_, N125, x_plus_two_r_2_, x_delay_r_2__1_, x_delay_r_2__0_,
         x_delay_r_1__1_, x_delay_r_1__0_, x_delay_r_0__1_, x_delay_r_0__0_,
         N717, N718, N719, N720, N721, N722, N723, N724, N725, N726, N727,
         N728, N729, N730, N731, N732, N733, N734, N735, N736, N737, N738,
         N739, N740, N741, N742, N743, N744, N745, N746, N747, N748, N756,
         N760, N762, N785, N786, N787, N788, N789, N790, N791, N792, N815,
         N817, N819, N820, N841, N842, N843, N844, N896, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n418, n419,
         n420, n429, n430, n431, n432, n433, n434, n435, n436, n439, n440,
         n441, n442, n443, n445, n486, n487, n488, n489, n490, n491, n492,
         net34858, net46722, net52777, net29710, n765, n768, n7850, n7880,
         n7910, n793, n849, n857, n859, n861, n863, n865, n867, n869, n871,
         n877, n878, n881, n887, n913, n915, n1345, n1347, n1855, n1856, n1858,
         n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1874,
         n1876, n1879, n1889, n1890, n1891, n1892, n1898, n1899, n1900, n1901,
         n1902, n1903, n1904, n1905, n1906, n1907, n1914, n1915, n1923, n1924,
         n1930, n1935, n1938, n1955, n1961, n1969, n1971, n1977, n1978, n1999,
         n2036, n2150, n2151, n2152, n2153, n2189, n2240, n2250, n2251, n2252,
         n2258, n2259, n2260, n2261, n2262, n2263, n2264, n2265, n2266, n2267,
         n2268, n2269, n2270, n2271, n2272, conv_inst_n292, conv_inst_n200,
         conv_inst_n199, conv_inst_n198, conv_inst_n191, conv_inst_n187,
         conv_inst_n184, conv_inst_n182, conv_inst_n181, conv_inst_n180,
         conv_inst_n179, conv_inst_n168, conv_inst_n165, conv_inst_n162,
         conv_inst_n161, conv_inst_n278, conv_inst_n277, conv_inst_n276,
         conv_inst_n274, conv_inst_n272, conv_inst_n271, conv_inst_n270,
         conv_inst_n269, conv_inst_n267, conv_inst_n266, conv_inst_n264,
         conv_inst_n263, conv_inst_n260, conv_inst_n259, conv_inst_n258,
         conv_inst_n257, conv_inst_n256, conv_inst_n255, conv_inst_n254,
         conv_inst_n253, conv_inst_n252, conv_inst_n251, conv_inst_n250,
         conv_inst_n249, conv_inst_n248, conv_inst_n247, conv_inst_n246,
         conv_inst_n245, conv_inst_n244, conv_inst_n243, conv_inst_n242,
         conv_inst_n241, conv_inst_n240, conv_inst_n239, conv_inst_n238,
         conv_inst_n237, conv_inst_n236, conv_inst_n235, conv_inst_n234,
         conv_inst_n233, conv_inst_n232, conv_inst_n106, conv_inst_n102,
         conv_inst_n44, conv_inst_n43, conv_inst_n41, conv_inst_n40,
         conv_inst_n39, conv_inst_n38, conv_inst_n37, conv_inst_n22,
         conv_inst_n21, conv_inst_n20, conv_inst_n19, conv_inst_n18,
         conv_inst_n16, conv_inst_n13, conv_inst_n12, conv_inst_n10,
         conv_inst_n25, conv_inst_N286, conv_inst_N285, conv_inst_N284,
         conv_inst_N283, conv_inst_N282, conv_inst_N281, conv_inst_N280,
         conv_inst_N279, conv_inst_N2780, conv_inst_N2770, conv_inst_N2760,
         conv_inst_N275, conv_inst_N2740, conv_inst_N273, conv_inst_N2720,
         conv_inst_N2710, conv_inst_N2700, conv_inst_N2690, conv_inst_N268,
         conv_inst_N2670, conv_inst_N2660, conv_inst_N265, conv_inst_N2640,
         conv_inst_N2630, conv_inst_N262, conv_inst_N261, conv_inst_N2600,
         conv_inst_N2590, conv_inst_N2580, conv_inst_N2570, conv_inst_N2560,
         conv_inst_N2550, conv_inst_N2540, conv_inst_N2530, conv_inst_N2520,
         conv_inst_N2510, conv_inst_N2500, conv_inst_N2490, conv_inst_N2480,
         conv_inst_N2470, conv_inst_N2460, conv_inst_N2450, conv_inst_N2440,
         conv_inst_N2430, conv_inst_N2420, conv_inst_N2410, conv_inst_N2400,
         conv_inst_N2390, conv_inst_N2380, conv_inst_N2370, conv_inst_N2360,
         conv_inst_N2350, conv_inst_N2340, conv_inst_N2330, conv_inst_N2320,
         conv_inst_N231, conv_inst_N230, conv_inst_N229, conv_inst_N228,
         conv_inst_N227, conv_inst_N226, conv_inst_N225, conv_inst_N224,
         conv_inst_N223, conv_inst_N222, conv_inst_N221, conv_inst_N220,
         conv_inst_N219, conv_inst_N218, conv_inst_N217, conv_inst_N216,
         conv_inst_N215, conv_inst_N214, conv_inst_N213, conv_inst_N212,
         conv_inst_N211, conv_inst_N210, conv_inst_N209, conv_inst_N208,
         conv_inst_N207, conv_inst_N206, conv_inst_N205, conv_inst_N204,
         conv_inst_N203, conv_inst_N202, conv_inst_N201, conv_inst_N2000,
         conv_inst_N1990, conv_inst_N1980, conv_inst_N197, conv_inst_N145,
         conv_inst_N144, conv_inst_N143, conv_inst_N142, conv_inst_N141,
         conv_inst_N140, conv_inst_N139, conv_inst_N138, conv_inst_N137,
         conv_inst_N136, conv_inst_N135, conv_inst_N134, conv_inst_N133,
         conv_inst_N132, conv_inst_N131, conv_inst_N130, conv_inst_N129,
         conv_inst_N128, conv_inst_N127, conv_inst_N126, conv_inst_N125,
         conv_inst_N124, conv_inst_N79, conv_inst_N78, conv_inst_N77,
         conv_inst_N76, conv_inst_N75, conv_inst_N74, conv_inst_N73,
         conv_inst_N72, conv_inst_N71, conv_inst_N70, conv_inst_N69,
         conv_inst_N68, conv_inst_N67, conv_inst_N66, conv_inst_N57,
         conv_inst_N56, conv_inst_ns_0_, median_sobel_inst_n1287,
         median_sobel_inst_n1286, median_sobel_inst_n1285,
         median_sobel_inst_n1284, median_sobel_inst_n1283,
         median_sobel_inst_n1282, median_sobel_inst_n1281,
         median_sobel_inst_n1280, median_sobel_inst_n1279,
         median_sobel_inst_n1278, median_sobel_inst_n1277,
         median_sobel_inst_n1276, median_sobel_inst_n1275,
         median_sobel_inst_n1274, median_sobel_inst_n1273,
         median_sobel_inst_n1272, median_sobel_inst_n1271,
         median_sobel_inst_n1270, median_sobel_inst_n1269,
         median_sobel_inst_n1268, median_sobel_inst_n1267,
         median_sobel_inst_n1266, median_sobel_inst_n1265,
         median_sobel_inst_n1264, median_sobel_inst_n1263,
         median_sobel_inst_n1262, median_sobel_inst_n1261,
         median_sobel_inst_n1260, median_sobel_inst_n1259,
         median_sobel_inst_n1258, median_sobel_inst_n1257,
         median_sobel_inst_n1256, median_sobel_inst_n1255,
         median_sobel_inst_n1254, median_sobel_inst_n1253,
         median_sobel_inst_n1252, median_sobel_inst_n1251,
         median_sobel_inst_n1250, median_sobel_inst_n1249,
         median_sobel_inst_n1248, median_sobel_inst_n1247,
         median_sobel_inst_n1246, median_sobel_inst_n1245,
         median_sobel_inst_n1244, median_sobel_inst_n1243,
         median_sobel_inst_n1242, median_sobel_inst_n1241,
         median_sobel_inst_n1240, median_sobel_inst_n1239,
         median_sobel_inst_n1238, median_sobel_inst_n1237,
         median_sobel_inst_n1236, median_sobel_inst_n1235,
         median_sobel_inst_n1234, median_sobel_inst_n1233,
         median_sobel_inst_n1232, median_sobel_inst_n1216,
         median_sobel_inst_n1211, median_sobel_inst_n1173,
         median_sobel_inst_n1161, median_sobel_inst_n1159,
         median_sobel_inst_n1157, median_sobel_inst_n1156,
         median_sobel_inst_n1154, median_sobel_inst_n1153,
         median_sobel_inst_n1152, median_sobel_inst_n1151,
         median_sobel_inst_n1149, median_sobel_inst_n1147,
         median_sobel_inst_n1144, median_sobel_inst_n1142,
         median_sobel_inst_n1137, median_sobel_inst_n1132,
         median_sobel_inst_n1127, median_sobel_inst_n1099,
         median_sobel_inst_n1070, median_sobel_inst_n1068,
         median_sobel_inst_n1056, median_sobel_inst_n1054,
         median_sobel_inst_n1051, median_sobel_inst_n1050,
         median_sobel_inst_n1045, median_sobel_inst_n1039,
         median_sobel_inst_n1035, median_sobel_inst_n1027,
         median_sobel_inst_n1026, median_sobel_inst_n1022,
         median_sobel_inst_n1015, median_sobel_inst_n1011,
         median_sobel_inst_n1008, median_sobel_inst_n1007,
         median_sobel_inst_n994, median_sobel_inst_n989,
         median_sobel_inst_n984, median_sobel_inst_n983,
         median_sobel_inst_n982, median_sobel_inst_n980,
         median_sobel_inst_n974, median_sobel_inst_n972,
         median_sobel_inst_n971, median_sobel_inst_n967,
         median_sobel_inst_n964, median_sobel_inst_n963,
         median_sobel_inst_n962, median_sobel_inst_n960,
         median_sobel_inst_n958, median_sobel_inst_n955,
         median_sobel_inst_n951, median_sobel_inst_n948,
         median_sobel_inst_n945, median_sobel_inst_n941,
         median_sobel_inst_n939, median_sobel_inst_n937,
         median_sobel_inst_n936, median_sobel_inst_n935,
         median_sobel_inst_n934, median_sobel_inst_n932,
         median_sobel_inst_net90977, median_sobel_inst_net88785,
         median_sobel_inst_net87821, median_sobel_inst_net86439,
         median_sobel_inst_net86174, median_sobel_inst_net84226,
         median_sobel_inst_net82615, median_sobel_inst_net67714,
         median_sobel_inst_n981, median_sobel_inst_n978,
         median_sobel_inst_n976, median_sobel_inst_n975,
         median_sobel_inst_n779, median_sobel_inst_n773,
         median_sobel_inst_n759, median_sobel_inst_n749,
         median_sobel_inst_n864, median_sobel_inst_n836,
         median_sobel_inst_n701, median_sobel_inst_n695,
         median_sobel_inst_n654, median_sobel_inst_n164,
         median_sobel_inst_n159, median_sobel_inst_n144,
         median_sobel_inst_n142, median_sobel_inst_n125,
         median_sobel_inst_n118, median_sobel_inst_n116, median_sobel_inst_n97,
         median_sobel_inst_n96, median_sobel_inst_n94, median_sobel_inst_n91,
         median_sobel_inst_n84, median_sobel_inst_n82, median_sobel_inst_n73,
         median_sobel_inst_n70, median_sobel_inst_n69, median_sobel_inst_n63,
         median_sobel_inst_n62, median_sobel_inst_n60, median_sobel_inst_n59,
         median_sobel_inst_n56, median_sobel_inst_n55, median_sobel_inst_n54,
         median_sobel_inst_n52, median_sobel_inst_n51, median_sobel_inst_n50,
         median_sobel_inst_n47, median_sobel_inst_n46, median_sobel_inst_n45,
         median_sobel_inst_n43, median_sobel_inst_n42, median_sobel_inst_n41,
         median_sobel_inst_n40, median_sobel_inst_n39, median_sobel_inst_n38,
         median_sobel_inst_n37, median_sobel_inst_n36, median_sobel_inst_n33,
         median_sobel_inst_n8, median_sobel_inst_n7, median_sobel_inst_n647,
         median_sobel_inst_n646, median_sobel_inst_n642,
         median_sobel_inst_n639, median_sobel_inst_n638,
         median_sobel_inst_n634, median_sobel_inst_n633,
         median_sobel_inst_n629, median_sobel_inst_n628,
         median_sobel_inst_n625, median_sobel_inst_n622,
         median_sobel_inst_n618, median_sobel_inst_n615,
         median_sobel_inst_n614, median_sobel_inst_n613,
         median_sobel_inst_n612, median_sobel_inst_n611,
         median_sobel_inst_n610, median_sobel_inst_n609,
         median_sobel_inst_n607, median_sobel_inst_n606,
         median_sobel_inst_n605, median_sobel_inst_n604,
         median_sobel_inst_n603, median_sobel_inst_n602,
         median_sobel_inst_n601, median_sobel_inst_n600,
         median_sobel_inst_n599, median_sobel_inst_n598,
         median_sobel_inst_n597, median_sobel_inst_n596,
         median_sobel_inst_n595, median_sobel_inst_n594,
         median_sobel_inst_n593, median_sobel_inst_n592,
         median_sobel_inst_n590, median_sobel_inst_n589,
         median_sobel_inst_n588, median_sobel_inst_n587,
         median_sobel_inst_n584, median_sobel_inst_n583,
         median_sobel_inst_n582, median_sobel_inst_n581,
         median_sobel_inst_n580, median_sobel_inst_n576,
         median_sobel_inst_n575, median_sobel_inst_n574,
         median_sobel_inst_n573, median_sobel_inst_n572,
         median_sobel_inst_n571, median_sobel_inst_n570,
         median_sobel_inst_n569, median_sobel_inst_n568,
         median_sobel_inst_n567, median_sobel_inst_n566,
         median_sobel_inst_n565, median_sobel_inst_n564,
         median_sobel_inst_n563, median_sobel_inst_n562,
         median_sobel_inst_n561, median_sobel_inst_n560,
         median_sobel_inst_n559, median_sobel_inst_n558,
         median_sobel_inst_n556, median_sobel_inst_n555,
         median_sobel_inst_n554, median_sobel_inst_n553,
         median_sobel_inst_n552, median_sobel_inst_n549,
         median_sobel_inst_n543, median_sobel_inst_n542,
         median_sobel_inst_n541, median_sobel_inst_n540,
         median_sobel_inst_n535, median_sobel_inst_n534,
         median_sobel_inst_n532, median_sobel_inst_n531,
         median_sobel_inst_n528, median_sobel_inst_n526,
         median_sobel_inst_n525, median_sobel_inst_n521,
         median_sobel_inst_n519, median_sobel_inst_n518,
         median_sobel_inst_n517, median_sobel_inst_n516,
         median_sobel_inst_n515, median_sobel_inst_n514,
         median_sobel_inst_n513, median_sobel_inst_n512,
         median_sobel_inst_n511, median_sobel_inst_n510,
         median_sobel_inst_n509, median_sobel_inst_n508,
         median_sobel_inst_n507, median_sobel_inst_n506,
         median_sobel_inst_n505, median_sobel_inst_n504,
         median_sobel_inst_n503, median_sobel_inst_n502,
         median_sobel_inst_n501, median_sobel_inst_n500,
         median_sobel_inst_n499, median_sobel_inst_n498,
         median_sobel_inst_n497, median_sobel_inst_n496,
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
         median_sobel_inst_n465, median_sobel_inst_n451,
         median_sobel_inst_n448, median_sobel_inst_n442,
         median_sobel_inst_n441, median_sobel_inst_n439,
         median_sobel_inst_n423, median_sobel_inst_n419,
         median_sobel_inst_n400, median_sobel_inst_n399,
         median_sobel_inst_n395, median_sobel_inst_n394,
         median_sobel_inst_n339, median_sobel_inst_n324,
         median_sobel_inst_n323, median_sobel_inst_n322,
         median_sobel_inst_n321, median_sobel_inst_n314,
         median_sobel_inst_n312, median_sobel_inst_n303,
         median_sobel_inst_n300, median_sobel_inst_n296,
         median_sobel_inst_n277, median_sobel_inst_n276,
         median_sobel_inst_n275, median_sobel_inst_n274,
         median_sobel_inst_n273, median_sobel_inst_n272,
         median_sobel_inst_n271, median_sobel_inst_n270,
         median_sobel_inst_n269, median_sobel_inst_n268,
         median_sobel_inst_n267, median_sobel_inst_n266,
         median_sobel_inst_n265, median_sobel_inst_n264,
         median_sobel_inst_n263, median_sobel_inst_n262,
         median_sobel_inst_n261, median_sobel_inst_n260,
         median_sobel_inst_n259, median_sobel_inst_n258,
         median_sobel_inst_n257, median_sobel_inst_n256,
         median_sobel_inst_n255, median_sobel_inst_n254,
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
         median_sobel_inst_n223, median_sobel_inst_n222,
         median_sobel_inst_n221, median_sobel_inst_n220,
         median_sobel_inst_n219, median_sobel_inst_n218,
         median_sobel_inst_n217, median_sobel_inst_n216,
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
         median_sobel_inst_N114, median_sobel_inst_N113,
         median_sobel_inst_N112, median_sobel_inst_N111,
         median_sobel_inst_N110, median_sobel_inst_N109,
         median_sobel_inst_cnt_4_,
         median_sobel_inst_u_median_filter_submodule_n1595,
         median_sobel_inst_u_median_filter_submodule_n1592,
         median_sobel_inst_u_median_filter_submodule_n1588,
         median_sobel_inst_u_median_filter_submodule_n1584,
         median_sobel_inst_u_median_filter_submodule_n1583,
         median_sobel_inst_u_median_filter_submodule_n1582,
         median_sobel_inst_u_median_filter_submodule_n1581,
         median_sobel_inst_u_median_filter_submodule_n1580,
         median_sobel_inst_u_median_filter_submodule_n1579,
         median_sobel_inst_u_median_filter_submodule_n1578,
         median_sobel_inst_u_median_filter_submodule_n1517,
         median_sobel_inst_u_median_filter_submodule_n1513,
         median_sobel_inst_u_median_filter_submodule_n1512,
         median_sobel_inst_u_median_filter_submodule_n1435,
         median_sobel_inst_u_median_filter_submodule_n1433,
         median_sobel_inst_u_median_filter_submodule_n1309,
         median_sobel_inst_u_median_filter_submodule_n1303,
         median_sobel_inst_u_median_filter_submodule_n1244,
         median_sobel_inst_u_median_filter_submodule_n1227,
         median_sobel_inst_u_median_filter_submodule_n1224,
         median_sobel_inst_u_median_filter_submodule_n1219,
         median_sobel_inst_u_median_filter_submodule_n1216,
         median_sobel_inst_u_median_filter_submodule_n1214,
         median_sobel_inst_u_median_filter_submodule_n1212,
         median_sobel_inst_u_median_filter_submodule_n1209,
         median_sobel_inst_u_median_filter_submodule_n1154,
         median_sobel_inst_u_median_filter_submodule_n1138,
         median_sobel_inst_u_median_filter_submodule_n1131,
         median_sobel_inst_u_median_filter_submodule_n1107,
         median_sobel_inst_u_median_filter_submodule_n1103,
         median_sobel_inst_u_median_filter_submodule_n1095,
         median_sobel_inst_u_median_filter_submodule_n1093,
         median_sobel_inst_u_median_filter_submodule_n1091,
         median_sobel_inst_u_median_filter_submodule_n1080,
         median_sobel_inst_u_median_filter_submodule_n1078,
         median_sobel_inst_u_median_filter_submodule_n1076,
         median_sobel_inst_u_median_filter_submodule_n995,
         median_sobel_inst_u_median_filter_submodule_n993,
         median_sobel_inst_u_median_filter_submodule_n966,
         median_sobel_inst_u_median_filter_submodule_n965,
         median_sobel_inst_u_median_filter_submodule_n963,
         median_sobel_inst_u_median_filter_submodule_n962,
         median_sobel_inst_u_median_filter_submodule_n961,
         median_sobel_inst_u_median_filter_submodule_n960,
         median_sobel_inst_u_median_filter_submodule_n959,
         median_sobel_inst_u_median_filter_submodule_n958,
         median_sobel_inst_u_median_filter_submodule_n957,
         median_sobel_inst_u_median_filter_submodule_n956,
         median_sobel_inst_u_median_filter_submodule_n955,
         median_sobel_inst_u_median_filter_submodule_n954,
         median_sobel_inst_u_median_filter_submodule_n953,
         median_sobel_inst_u_median_filter_submodule_n952,
         median_sobel_inst_u_median_filter_submodule_n951,
         median_sobel_inst_u_median_filter_submodule_n950,
         median_sobel_inst_u_median_filter_submodule_n949,
         median_sobel_inst_u_median_filter_submodule_n948,
         median_sobel_inst_u_median_filter_submodule_n947,
         median_sobel_inst_u_median_filter_submodule_n946,
         median_sobel_inst_u_median_filter_submodule_n945,
         median_sobel_inst_u_median_filter_submodule_n944,
         median_sobel_inst_u_median_filter_submodule_n943,
         median_sobel_inst_u_median_filter_submodule_n942,
         median_sobel_inst_u_median_filter_submodule_n941,
         median_sobel_inst_u_median_filter_submodule_n940,
         median_sobel_inst_u_median_filter_submodule_n939,
         median_sobel_inst_u_median_filter_submodule_n937,
         median_sobel_inst_u_median_filter_submodule_n934,
         median_sobel_inst_u_median_filter_submodule_n930,
         median_sobel_inst_u_median_filter_submodule_n926,
         median_sobel_inst_u_median_filter_submodule_n920,
         median_sobel_inst_u_median_filter_submodule_n919,
         median_sobel_inst_u_median_filter_submodule_n918,
         median_sobel_inst_u_median_filter_submodule_n917,
         median_sobel_inst_u_median_filter_submodule_n916,
         median_sobel_inst_u_median_filter_submodule_n915,
         median_sobel_inst_u_median_filter_submodule_n914,
         median_sobel_inst_u_median_filter_submodule_n913,
         median_sobel_inst_u_median_filter_submodule_n912,
         median_sobel_inst_u_median_filter_submodule_n911,
         median_sobel_inst_u_median_filter_submodule_n910,
         median_sobel_inst_u_median_filter_submodule_n909,
         median_sobel_inst_u_median_filter_submodule_n908,
         median_sobel_inst_u_median_filter_submodule_n907,
         median_sobel_inst_u_median_filter_submodule_n906,
         median_sobel_inst_u_median_filter_submodule_n905,
         median_sobel_inst_u_median_filter_submodule_n904,
         median_sobel_inst_u_median_filter_submodule_n903,
         median_sobel_inst_u_median_filter_submodule_n902,
         median_sobel_inst_u_median_filter_submodule_n901,
         median_sobel_inst_u_median_filter_submodule_n900,
         median_sobel_inst_u_median_filter_submodule_n899,
         median_sobel_inst_u_median_filter_submodule_n898,
         median_sobel_inst_u_median_filter_submodule_n897,
         median_sobel_inst_u_median_filter_submodule_n896,
         median_sobel_inst_u_median_filter_submodule_n894,
         median_sobel_inst_u_median_filter_submodule_n893,
         median_sobel_inst_u_median_filter_submodule_n892,
         median_sobel_inst_u_median_filter_submodule_n889,
         median_sobel_inst_u_median_filter_submodule_n888,
         median_sobel_inst_u_median_filter_submodule_n887,
         median_sobel_inst_u_median_filter_submodule_n886,
         median_sobel_inst_u_median_filter_submodule_n885,
         median_sobel_inst_u_median_filter_submodule_n884,
         median_sobel_inst_u_median_filter_submodule_n883,
         median_sobel_inst_u_median_filter_submodule_n882,
         median_sobel_inst_u_median_filter_submodule_n881,
         median_sobel_inst_u_median_filter_submodule_n880,
         median_sobel_inst_u_median_filter_submodule_n879,
         median_sobel_inst_u_median_filter_submodule_n878,
         median_sobel_inst_u_median_filter_submodule_n877,
         median_sobel_inst_u_median_filter_submodule_n876,
         median_sobel_inst_u_median_filter_submodule_n875,
         median_sobel_inst_u_median_filter_submodule_n874,
         median_sobel_inst_u_median_filter_submodule_n873,
         median_sobel_inst_u_median_filter_submodule_n872,
         median_sobel_inst_u_median_filter_submodule_n871,
         median_sobel_inst_u_median_filter_submodule_n867,
         median_sobel_inst_u_median_filter_submodule_net87846,
         median_sobel_inst_u_median_filter_submodule_net87818,
         median_sobel_inst_u_median_filter_submodule_net87617,
         median_sobel_inst_u_median_filter_submodule_net86856,
         median_sobel_inst_u_median_filter_submodule_net84247,
         median_sobel_inst_u_median_filter_submodule_net84165,
         median_sobel_inst_u_median_filter_submodule_net84111,
         median_sobel_inst_u_median_filter_submodule_net83841,
         median_sobel_inst_u_median_filter_submodule_net83073,
         median_sobel_inst_u_median_filter_submodule_n860,
         median_sobel_inst_u_median_filter_submodule_n859,
         median_sobel_inst_u_median_filter_submodule_n858,
         median_sobel_inst_u_median_filter_submodule_n857,
         median_sobel_inst_u_median_filter_submodule_n856,
         median_sobel_inst_u_median_filter_submodule_n855,
         median_sobel_inst_u_median_filter_submodule_n854,
         median_sobel_inst_u_median_filter_submodule_n853,
         median_sobel_inst_u_median_filter_submodule_n852,
         median_sobel_inst_u_median_filter_submodule_n844,
         median_sobel_inst_u_median_filter_submodule_n842,
         median_sobel_inst_u_median_filter_submodule_n841,
         median_sobel_inst_u_median_filter_submodule_n840,
         median_sobel_inst_u_median_filter_submodule_n839,
         median_sobel_inst_u_median_filter_submodule_n838,
         median_sobel_inst_u_median_filter_submodule_n836,
         median_sobel_inst_u_median_filter_submodule_n835,
         median_sobel_inst_u_median_filter_submodule_n834,
         median_sobel_inst_u_median_filter_submodule_n833,
         median_sobel_inst_u_median_filter_submodule_n832,
         median_sobel_inst_u_median_filter_submodule_n831,
         median_sobel_inst_u_median_filter_submodule_n830,
         median_sobel_inst_u_median_filter_submodule_n829,
         median_sobel_inst_u_median_filter_submodule_n827,
         median_sobel_inst_u_median_filter_submodule_n824,
         median_sobel_inst_u_median_filter_submodule_n822,
         median_sobel_inst_u_median_filter_submodule_n821,
         median_sobel_inst_u_median_filter_submodule_n818,
         median_sobel_inst_u_median_filter_submodule_n814,
         median_sobel_inst_u_median_filter_submodule_n810,
         median_sobel_inst_u_median_filter_submodule_n807,
         median_sobel_inst_u_median_filter_submodule_n800,
         median_sobel_inst_u_median_filter_submodule_n796,
         median_sobel_inst_u_median_filter_submodule_n793,
         median_sobel_inst_u_median_filter_submodule_n790,
         median_sobel_inst_u_median_filter_submodule_n787,
         median_sobel_inst_u_median_filter_submodule_n783,
         median_sobel_inst_u_median_filter_submodule_n781,
         median_sobel_inst_u_median_filter_submodule_n780,
         median_sobel_inst_u_median_filter_submodule_n779,
         median_sobel_inst_u_median_filter_submodule_n778,
         median_sobel_inst_u_median_filter_submodule_n777,
         median_sobel_inst_u_median_filter_submodule_n776,
         median_sobel_inst_u_median_filter_submodule_n658,
         median_sobel_inst_u_median_filter_submodule_n653,
         median_sobel_inst_u_median_filter_submodule_n652,
         median_sobel_inst_u_median_filter_submodule_n317,
         median_sobel_inst_u_median_filter_submodule_n234,
         median_sobel_inst_u_median_filter_submodule_n232,
         median_sobel_inst_u_median_filter_submodule_n229,
         median_sobel_inst_u_median_filter_submodule_n224,
         median_sobel_inst_u_median_filter_submodule_n222,
         median_sobel_inst_u_median_filter_submodule_n219,
         median_sobel_inst_u_median_filter_submodule_n216,
         median_sobel_inst_u_median_filter_submodule_n214,
         median_sobel_inst_u_median_filter_submodule_n200,
         median_sobel_inst_u_median_filter_submodule_n197,
         median_sobel_inst_u_median_filter_submodule_n190,
         median_sobel_inst_u_median_filter_submodule_n182,
         median_sobel_inst_u_median_filter_submodule_n176,
         median_sobel_inst_u_median_filter_submodule_n168,
         median_sobel_inst_u_median_filter_submodule_n166,
         median_sobel_inst_u_median_filter_submodule_n151,
         median_sobel_inst_u_median_filter_submodule_n146,
         median_sobel_inst_u_median_filter_submodule_n161,
         median_sobel_inst_u_median_filter_submodule_n159,
         median_sobel_inst_u_median_filter_submodule_a69_w,
         median_sobel_inst_u_median_filter_submodule_a39_w,
         median_sobel_inst_u_median_filter_submodule_a36_w,
         median_sobel_inst_u_median_filter_submodule_a58_w,
         median_sobel_inst_u_median_filter_submodule_a28_w,
         median_sobel_inst_u_median_filter_submodule_a25_w,
         median_sobel_inst_u_median_filter_submodule_a47_w,
         median_sobel_inst_u_median_filter_submodule_a17_w,
         median_sobel_inst_u_median_filter_submodule_a14_w,
         median_sobel_inst_u_sobel_gradient_submodule_n613,
         median_sobel_inst_u_sobel_gradient_submodule_n608,
         median_sobel_inst_u_sobel_gradient_submodule_n592,
         median_sobel_inst_u_sobel_gradient_submodule_n456,
         median_sobel_inst_u_sobel_gradient_submodule_n399,
         median_sobel_inst_u_sobel_gradient_submodule_n398,
         median_sobel_inst_u_sobel_gradient_submodule_n396,
         median_sobel_inst_u_sobel_gradient_submodule_n384,
         median_sobel_inst_u_sobel_gradient_submodule_n375,
         median_sobel_inst_u_sobel_gradient_submodule_n372,
         median_sobel_inst_u_sobel_gradient_submodule_n371,
         median_sobel_inst_u_sobel_gradient_submodule_n370,
         median_sobel_inst_u_sobel_gradient_submodule_n369,
         median_sobel_inst_u_sobel_gradient_submodule_n366,
         median_sobel_inst_u_sobel_gradient_submodule_n364,
         median_sobel_inst_u_sobel_gradient_submodule_n360,
         median_sobel_inst_u_sobel_gradient_submodule_n359,
         median_sobel_inst_u_sobel_gradient_submodule_n358,
         median_sobel_inst_u_sobel_gradient_submodule_n355,
         median_sobel_inst_u_sobel_gradient_submodule_n354,
         median_sobel_inst_u_sobel_gradient_submodule_n347,
         median_sobel_inst_u_sobel_gradient_submodule_n346,
         median_sobel_inst_u_sobel_gradient_submodule_n344,
         median_sobel_inst_u_sobel_gradient_submodule_n342,
         median_sobel_inst_u_sobel_gradient_submodule_n341,
         median_sobel_inst_u_sobel_gradient_submodule_n335,
         median_sobel_inst_u_sobel_gradient_submodule_n333,
         median_sobel_inst_u_sobel_gradient_submodule_n332,
         median_sobel_inst_u_sobel_gradient_submodule_n329,
         median_sobel_inst_u_sobel_gradient_submodule_n325,
         median_sobel_inst_u_sobel_gradient_submodule_n322,
         median_sobel_inst_u_sobel_gradient_submodule_n320,
         median_sobel_inst_u_sobel_gradient_submodule_n319,
         median_sobel_inst_u_sobel_gradient_submodule_n318,
         median_sobel_inst_u_sobel_gradient_submodule_n312,
         median_sobel_inst_u_sobel_gradient_submodule_n645,
         median_sobel_inst_u_sobel_gradient_submodule_n644,
         median_sobel_inst_u_sobel_gradient_submodule_n643,
         median_sobel_inst_u_sobel_gradient_submodule_n640,
         median_sobel_inst_u_sobel_gradient_submodule_n638,
         median_sobel_inst_u_sobel_gradient_submodule_n636,
         median_sobel_inst_u_sobel_gradient_submodule_n634,
         median_sobel_inst_u_sobel_gradient_submodule_n630,
         median_sobel_inst_u_sobel_gradient_submodule_n629,
         median_sobel_inst_u_sobel_gradient_submodule_n627,
         median_sobel_inst_u_sobel_gradient_submodule_n624,
         median_sobel_inst_u_sobel_gradient_submodule_n623,
         median_sobel_inst_u_sobel_gradient_submodule_n618,
         median_sobel_inst_u_sobel_gradient_submodule_n617,
         median_sobel_inst_u_sobel_gradient_submodule_n276,
         median_sobel_inst_u_sobel_gradient_submodule_n119,
         median_sobel_inst_u_sobel_gradient_submodule_n106,
         median_sobel_inst_u_sobel_gradient_submodule_n104,
         median_sobel_inst_u_sobel_gradient_submodule_n103,
         median_sobel_inst_u_sobel_gradient_submodule_n81,
         median_sobel_inst_u_sobel_gradient_submodule_n72,
         median_sobel_inst_u_sobel_gradient_submodule_n71,
         median_sobel_inst_u_sobel_gradient_submodule_n70,
         median_sobel_inst_u_sobel_gradient_submodule_n68,
         median_sobel_inst_u_sobel_gradient_submodule_n67,
         median_sobel_inst_u_sobel_gradient_submodule_n66,
         median_sobel_inst_u_sobel_gradient_submodule_n63,
         median_sobel_inst_u_sobel_gradient_submodule_n61,
         median_sobel_inst_u_sobel_gradient_submodule_n60,
         median_sobel_inst_u_sobel_gradient_submodule_n59,
         median_sobel_inst_u_sobel_gradient_submodule_n58,
         median_sobel_inst_u_sobel_gradient_submodule_n56,
         median_sobel_inst_u_sobel_gradient_submodule_n54,
         median_sobel_inst_u_sobel_gradient_submodule_n52,
         median_sobel_inst_u_sobel_gradient_submodule_n51,
         median_sobel_inst_u_sobel_gradient_submodule_n50,
         median_sobel_inst_u_sobel_gradient_submodule_n49,
         median_sobel_inst_u_sobel_gradient_submodule_n48,
         median_sobel_inst_u_sobel_gradient_submodule_n44,
         median_sobel_inst_u_sobel_gradient_submodule_n38,
         median_sobel_inst_u_sobel_gradient_submodule_n35,
         median_sobel_inst_u_sobel_gradient_submodule_n33,
         median_sobel_inst_u_sobel_gradient_submodule_n32,
         median_sobel_inst_u_sobel_gradient_submodule_n31,
         median_sobel_inst_u_sobel_gradient_submodule_n28,
         median_sobel_inst_u_sobel_gradient_submodule_n24,
         median_sobel_inst_u_sobel_gradient_submodule_n22,
         median_sobel_inst_u_sobel_gradient_submodule_n8,
         median_sobel_inst_u_sobel_gradient_submodule_n4,
         median_sobel_inst_u_sobel_gradient_submodule_n2,
         median_sobel_inst_u_sobel_gradient_submodule_n1,
         median_sobel_inst_u_sobel_gradient_submodule_N78,
         median_sobel_inst_u_sobel_gradient_submodule_N79,
         median_sobel_inst_u_sobel_gradient_submodule_N46,
         median_sobel_inst_u_sobel_gradient_submodule_n65,
         median_sobel_inst_u_sobel_gradient_submodule_n64,
         median_sobel_inst_u_sobel_gradient_submodule_N177,
         median_sobel_inst_u_sobel_gradient_submodule_N176,
         median_sobel_inst_u_sobel_gradient_submodule_N175,
         median_sobel_inst_u_sobel_gradient_submodule_N174,
         median_sobel_inst_u_sobel_gradient_submodule_N173,
         median_sobel_inst_u_sobel_gradient_submodule_N172,
         median_sobel_inst_u_sobel_gradient_submodule_N171,
         median_sobel_inst_u_sobel_gradient_submodule_N170,
         median_sobel_inst_u_sobel_gradient_submodule_N169,
         median_sobel_inst_u_sobel_gradient_submodule_N168,
         median_sobel_inst_u_sobel_gradient_submodule_N167,
         median_sobel_inst_u_sobel_gradient_submodule_N166,
         median_sobel_inst_u_sobel_gradient_submodule_N165,
         median_sobel_inst_u_sobel_gradient_submodule_N164,
         median_sobel_inst_u_sobel_gradient_submodule_N163,
         median_sobel_inst_u_sobel_gradient_submodule_N162,
         median_sobel_inst_u_sobel_gradient_submodule_N161,
         median_sobel_inst_u_sobel_gradient_submodule_N160,
         median_sobel_inst_u_sobel_gradient_submodule_N159,
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
         median_sobel_inst_u_sobel_gradient_submodule_N129,
         median_sobel_inst_u_sobel_gradient_submodule_N128,
         median_sobel_inst_u_sobel_gradient_submodule_N127,
         median_sobel_inst_u_sobel_gradient_submodule_N126,
         median_sobel_inst_u_sobel_gradient_submodule_N125,
         median_sobel_inst_u_sobel_gradient_submodule_N124,
         median_sobel_inst_u_sobel_gradient_submodule_N123,
         median_sobel_inst_u_sobel_gradient_submodule_N122,
         median_sobel_inst_u_sobel_gradient_submodule_N121,
         median_sobel_inst_u_sobel_gradient_submodule_N120,
         median_sobel_inst_u_sobel_gradient_submodule_N1190,
         median_sobel_inst_u_sobel_gradient_submodule_N118,
         median_sobel_inst_u_sobel_gradient_submodule_N117,
         median_sobel_inst_u_sobel_gradient_submodule_N116,
         median_sobel_inst_u_sobel_gradient_submodule_N115,
         median_sobel_inst_u_sobel_gradient_submodule_N114,
         median_sobel_inst_u_sobel_gradient_submodule_N113,
         median_sobel_inst_u_sobel_gradient_submodule_N112,
         median_sobel_inst_u_sobel_gradient_submodule_N110,
         median_sobel_inst_u_sobel_gradient_submodule_N109,
         median_sobel_inst_u_sobel_gradient_submodule_N108,
         median_sobel_inst_u_sobel_gradient_submodule_N107,
         median_sobel_inst_u_sobel_gradient_submodule_N1060,
         median_sobel_inst_u_sobel_gradient_submodule_N105,
         median_sobel_inst_u_sobel_gradient_submodule_N1040,
         median_sobel_inst_u_sobel_gradient_submodule_N1030,
         median_sobel_inst_u_sobel_gradient_submodule_N102,
         median_sobel_inst_u_sobel_gradient_submodule_N101,
         median_sobel_inst_u_sobel_gradient_submodule_N100,
         median_sobel_inst_u_sobel_gradient_submodule_N98,
         median_sobel_inst_u_sobel_gradient_submodule_N75,
         median_sobel_inst_u_sobel_gradient_submodule_N74,
         median_sobel_inst_u_sobel_gradient_submodule_N73,
         median_sobel_inst_u_sobel_gradient_submodule_N720,
         median_sobel_inst_u_sobel_gradient_submodule_N710,
         median_sobel_inst_u_sobel_gradient_submodule_N700,
         median_sobel_inst_u_sobel_gradient_submodule_N69,
         median_sobel_inst_u_sobel_gradient_submodule_N680,
         median_sobel_inst_u_sobel_gradient_submodule_N670,
         median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_5_,
         median_sobel_inst_u_sobel_gradient_submodule_N440,
         median_sobel_inst_u_sobel_gradient_submodule_N43,
         median_sobel_inst_u_sobel_gradient_submodule_N42,
         median_sobel_inst_u_sobel_gradient_submodule_N41,
         median_sobel_inst_u_sobel_gradient_submodule_N40,
         median_sobel_inst_u_sobel_gradient_submodule_N39,
         median_sobel_inst_u_sobel_gradient_submodule_N380,
         median_sobel_inst_u_sobel_gradient_submodule_N37,
         median_sobel_inst_u_sobel_gradient_submodule_N36,
         median_sobel_inst_u_sobel_gradient_submodule_N34,
         median_sobel_inst_u_sobel_gradient_submodule_N330,
         median_sobel_inst_u_sobel_gradient_submodule_N321,
         median_sobel_inst_u_sobel_gradient_submodule_N310,
         median_sobel_inst_u_sobel_gradient_submodule_N30,
         median_sobel_inst_u_sobel_gradient_submodule_N29,
         median_sobel_inst_u_sobel_gradient_submodule_N280,
         median_sobel_inst_u_sobel_gradient_submodule_N27,
         median_sobel_inst_u_sobel_gradient_submodule_N26,
         median_sobel_inst_u_sobel_gradient_submodule_N240,
         median_sobel_inst_u_sobel_gradient_submodule_N23,
         median_sobel_inst_u_sobel_gradient_submodule_N220,
         median_sobel_inst_u_sobel_gradient_submodule_N210,
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
         median_sobel_inst_u_sobel_gradient_submodule_N80,
         median_sobel_inst_u_sobel_gradient_submodule_N7,
         median_sobel_inst_u_sobel_gradient_submodule_N6,
         median_sobel_inst_u_sober_compare_submodule_n414,
         median_sobel_inst_u_sober_compare_submodule_n413,
         median_sobel_inst_u_sober_compare_submodule_n412,
         median_sobel_inst_u_sober_compare_submodule_n411,
         median_sobel_inst_u_sober_compare_submodule_n410,
         median_sobel_inst_u_sober_compare_submodule_n409,
         median_sobel_inst_u_sober_compare_submodule_n408,
         median_sobel_inst_u_sober_compare_submodule_n407,
         median_sobel_inst_u_sober_compare_submodule_n406,
         median_sobel_inst_u_sober_compare_submodule_n405,
         median_sobel_inst_u_sober_compare_submodule_n404,
         median_sobel_inst_u_sober_compare_submodule_n403,
         median_sobel_inst_u_sober_compare_submodule_n401,
         median_sobel_inst_u_sober_compare_submodule_n399,
         median_sobel_inst_u_sober_compare_submodule_n398,
         median_sobel_inst_u_sober_compare_submodule_n397,
         median_sobel_inst_u_sober_compare_submodule_n377,
         median_sobel_inst_u_sober_compare_submodule_n367,
         median_sobel_inst_u_sober_compare_submodule_n366,
         median_sobel_inst_u_sober_compare_submodule_n365,
         median_sobel_inst_u_sober_compare_submodule_n363,
         median_sobel_inst_u_sober_compare_submodule_n362,
         median_sobel_inst_u_sober_compare_submodule_n356,
         median_sobel_inst_u_sober_compare_submodule_n354,
         median_sobel_inst_u_sober_compare_submodule_n353,
         median_sobel_inst_u_sober_compare_submodule_n352,
         median_sobel_inst_u_sober_compare_submodule_n351,
         median_sobel_inst_u_sober_compare_submodule_n322,
         median_sobel_inst_u_sober_compare_submodule_n321,
         median_sobel_inst_u_sober_compare_submodule_n320,
         median_sobel_inst_u_sober_compare_submodule_n300,
         median_sobel_inst_u_sober_compare_submodule_n295,
         median_sobel_inst_u_sober_compare_submodule_n274,
         median_sobel_inst_u_sober_compare_submodule_n270,
         median_sobel_inst_u_sober_compare_submodule_n267,
         median_sobel_inst_u_sober_compare_submodule_n266,
         median_sobel_inst_u_sober_compare_submodule_n265,
         median_sobel_inst_u_sober_compare_submodule_n262,
         median_sobel_inst_u_sober_compare_submodule_n261,
         median_sobel_inst_u_sober_compare_submodule_n260,
         median_sobel_inst_u_sober_compare_submodule_n259,
         median_sobel_inst_u_sober_compare_submodule_n256,
         median_sobel_inst_u_sober_compare_submodule_n255,
         median_sobel_inst_u_sober_compare_submodule_n252,
         median_sobel_inst_u_sober_compare_submodule_n250,
         median_sobel_inst_u_sober_compare_submodule_n302,
         median_sobel_inst_u_sober_compare_submodule_n299,
         median_sobel_inst_u_sober_compare_submodule_n297,
         median_sobel_inst_u_sober_compare_submodule_n278,
         median_sobel_inst_u_sober_compare_submodule_n276,
         median_sobel_inst_u_sober_compare_submodule_n273,
         median_sobel_inst_u_sober_compare_submodule_n272,
         median_sobel_inst_u_sober_compare_submodule_n201,
         median_sobel_inst_u_sober_compare_submodule_n44,
         median_sobel_inst_u_sober_compare_submodule_n43,
         median_sobel_inst_u_sober_compare_submodule_n41,
         median_sobel_inst_u_sober_compare_submodule_n40,
         median_sobel_inst_u_sober_compare_submodule_n33,
         median_sobel_inst_u_sober_compare_submodule_n21,
         median_sobel_inst_u_sober_compare_submodule_n20,
         median_sobel_inst_u_sober_compare_submodule_n19,
         median_sobel_inst_u_sober_compare_submodule_n17,
         median_sobel_inst_u_sober_compare_submodule_n150,
         median_sobel_inst_u_sober_compare_submodule_n149,
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
         median_sobel_inst_u_sober_compare_submodule_n71,
         median_sobel_inst_u_sober_compare_submodule_n70,
         median_sobel_inst_u_sober_compare_submodule_n68,
         median_sobel_inst_u_sober_compare_submodule_n67,
         median_sobel_inst_u_sober_compare_submodule_n66,
         median_sobel_inst_u_sober_compare_submodule_n65,
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
         median_sobel_inst_u_sober_compare_submodule_N29, conv_inst_N32, n3505,
         n3506, n3507, n3508, n3509, n3510, n3511, n3512, n3513, n3514, n3515,
         n3523, n3526, n3527, n3528, n3530, n3532, n3533, n3534, n3535, n3536,
         n3537, n3538, n3539, n3540, n3541, n3542, n3543, n3544, n3545, n3546,
         n3547, n3548, n3549, n3550, n3551, n3552, n3553, n3554, n3555, n3556,
         n3557, n3558, n3559, n3560, n3561, n3562, n3563, n3564, n3565, n3566,
         n3567, n3568, n3569, n3570, n3571, n3572, n3573, n3574, n3575, n3576,
         n3577, n3578, n3579, n3580, n3581, n3582, n3583, n3584, n3585, n3586,
         n3587, n3588, n3589, n3590, n3591, n3592, n3593, n3594, n3595, n3596,
         n3597, n3598, n3599, n3600, n3601, n3602, n3603, n3604, n3605, n3606,
         n3607, n3608, n3609, n3610, n3612, n3613, n3614, n3615, n3616, n3617,
         n3618, n3619, n3620, n3622, n3623, n3624, n3625, n3626, n3627, n3628,
         n3629, n3630, n3631, n3632, n3633, n3634, n3635, n3636, n3637, n3638,
         n3639, n3640, n3641, n3642, n3643, n3645, n3646, n3647, n3648, n3649,
         n3650, n3651, n3652, n3653, n3654, n3655, n3656, n3657, n3658, n3659,
         n3660, n3661, n3662, n3663, n3664, n3665, n3666, n3667, n3668, n3669,
         n3670, n3671, n3672, n3673, n3674, n3675, n3676, n3677, n3678, n3679,
         n3680, n3681, n3682, n3683, n3684, n3685, n3686, n3687, n3688, n3689,
         n3690, n3691, n3692, n3693, n3694, n3695, n3696, n3697, n3698, n3699,
         n3700, n3701, n3702, n3703, n3704, n3705, n3706, n3707, n3708, n3709,
         n3710, n3711, n3712, n3713, n3714, n3715, n3716, n3717, n3718, n3719,
         n3720, n3721, n3722, n3723, n3724, n3725, n3726, n3727, n3728, n3729,
         n3730, n3731, n3732, n3733, n3734, n3735, n3736, n3737, n3738, n3739,
         n3740, n3741, n3742, n3743, n3744, n3745, n3746, n3747, n3748, n3749,
         n3750, n3751, n3752, n3753, n3754, n3755, n3756, n3757, n3758, n3759,
         n3760, n3762, n3763, n3764, n3765, n3766, n3767, n3768, n3769, n3770,
         n3771, n3772, n3773, n3774, n3775, n3776, n3777, n3778, n3779, n3780,
         n3781, n3782, n3783, n3784, n3785, n3786, n3787, n3788, n3789, n3790,
         n3791, n3792, n3793, n3794, n3795, n3796, n3797, n3798, n3799, n3800,
         n3801, n3802, n3803, n3804, n3805, n3806, n3807, n3808, n3809, n3810,
         n3811, n3812, n3813, n3814, n3815, n3816, n3817, n3818, n3819, n3820,
         n3821, n3822, n3823, n3824, n3825, n3826, n3827, n3828, n3829, n3830,
         n3831, n3832, n3833, n3834, n3835, n3836, n3837, n3838, n3839, n3840,
         n3841, n3842, n3843, n3844, n3845, n3846, n3847, n3848, n3849, n3850,
         n3851, n3852, n3853, n3854, n3855, n3856, n3857, n3858, n3859, n3860,
         n3861, n3862, n3863, n3864, n3865, n3866, n3867, n3868, n3869, n3870,
         n3871, n3872, n3873, n3874, n3875, n3876, n3877, n3878, n3879, n3880,
         n3881, n3882, n3883, n3884, n3885, n3886, n3887, n3888, n3889, n3890,
         n3891, n3892, n3893, n3895, n3896, n3897, n3898, n3899, n3900, n3901,
         n3902, n3903, n3904, n3905, n3906, n3907, n3908, n3909, n3910, n3911,
         n3912, n3913, n3914, n3915, n3916, n3917, n3918, n3919, n3920, n3921,
         n3922, n3923, n3924, n3925, n3926, n3927, n3928, n3929, n3930, n3931,
         n3932, n3933, n3934, n3935, n3936, n3937, n3938, n3939, n3940, n3941,
         n3942, n3943, n3944, n3945, n3946, n3947, n3948, n3949, n3950, n3951,
         n3952, n3953, n3954, n3955, n3956, n3957, n3958, n3959, n3960, n3961,
         n3962, n3963, n3964, n3965, n3966, n3967, n3968, n3969, n3970, n3971,
         n3972, n3973, n3974, n3975, n3976, n3977, n3978, n3979, n3980, n3981,
         n3982, n3983, n3984, n3985, n3986, n3987, n3988, n3989, n3990, n3991,
         n3992, n3993, n3994, n3995, n3996, n3997, n3998, n3999, n4000, n4001,
         n4002, n4003, n4004, n4005, n4006, n4007, n4008, n4009, n4010, n4011,
         n4012, n4013, n4014, n4015, n4016, n4017, n4018, n4019, n4020, n4021,
         n4022, n4023, n4024, n4025, n4026, n4027, n4028, n4029, n4030, n4031,
         n4032, n4033, n4034, n4035, n4036, n4037, n4038, n4039, n4040, n4041,
         n4042, n4043, n4044, n4045, n4046, n4047, n4048, n4049, n4050, n4051,
         n4052, n4053, n4054, n4055, n4056, n4057, n4058, n4059, n4060, n4061,
         n4062, n4063, n4064, n4065, n4066, n4067, n4068, n4069, n4070, n4071,
         n4072, n4073, n4074, n4075, n4076, n4077, n4078, n4079, n4080, n4081,
         n4082, n4083, n4084, n4085, n4086, n4087, n4088, n4089, n4090, n4091,
         n4092, n4093, n4094, n4095, n4096, n4097, n4098, n4099, n4100, n4101,
         n4102, n4103, n4104, n4105, n4106, n4107, n4108, n4109, n4110, n4112,
         n4113, n4114, n4115, n4116, n4117, n4118, n4119, n4120, n4121, n4122,
         n4123, n4124, n4125, n4126, n4127, n4128, n4130, n4131, n4132, n4133,
         n4134, n4135, n4136, n4137, n4138, n4139, n4140, n4141, n4142, n4143,
         n4144, n4145, n4146, n4147, n4148, n4149, n4150, n4151, n4152, n4153,
         n4154, n4155, n4156, n4157, n4158, n4159, n4160, n4161, n4162, n4163,
         n4164, n4165, n4166, n4167, n4168, n4169, n4170, n4171, n4172, n4173,
         n4174, n4175, n4176, n4177, n4178, n4179, n4180, n4181, n4182, n4183,
         n4184, n4185, n4186, n4187, n4188, n4189, n4190, n4191, n4192, n4193,
         n4194, n4195, n4196, n4197, n4198, n4199, n4200, n4201, n4202, n4203,
         n4204, n4205, n4206, n4207, n4208, n4209, n4210, n4211, n4212, n4213,
         n4214, n4215, n4216, n4217, n4218, n4219, n4220, n4221, n4222, n4223,
         n4224, n4225, n4226, n4227, n4228, n4229, n4230, n4231, n4233, n4234,
         n4235, n4236, n4237, n4238, n4239, n4240, n4241, n4242, n4243, n4244,
         n4245, n4246, n4247, n4248, n4249, n4250, n4251, n4252, n4253, n4254,
         n4255, n4256, n4257, n4258, n4259, n4260, n4261, n4262, n4263, n4264,
         n4265, n4266, n4267, n4268, n4269, n4270, n4271, n4272, n4273, n4274,
         n4275, n4276, n4277, n4278, n4279, n4280, n4281, n4282, n4283, n4284,
         n4285, n4286, n4287, n4288, n4289, n4290, n4291, n4292, n4293, n4294,
         n4295, n4296, n4297, n4298, n4299, n4300, n4301, n4302, n4303, n4304,
         n4305, n4306, n4307, n4308, n4309, n4310, n4311, n4312, n4313, n4314,
         n4315, n4316, n4317, n4318, n4319, n4320, n4321, n4322, n4323, n4324,
         n4325, n4326, n4327, n4328, n4329, n4330, n4331, n4332, n4333, n4334,
         n4336, n4337, n4338, n4339, n4340, n4341, n4342, n4343, n4344, n4345,
         n4346, n4347, n4348, n4349, n4350, n4351, n4352, n4353, n4354, n4355,
         n4356, n4357, n4358, n4359, n4360, n4361, n4362, n4363, n4364, n4365,
         n4366, n4367, n4368, n4369, n4370, n4371, n4372, n4373, n4374, n4375,
         n4376, n4377, n4378, n4379, n4380, n4381, n4382, n4383, n4384, n4385,
         n4386, n4387, n4388, n4389, n4390, n4391, n4392, n4393, n4394, n4395,
         n4396, n4397, n4398, n4399, n4400, n4401, n4402, n4403, n4404, n4405,
         n4406, n4407, n4408, n4409, n4410, n4411, n4412, n4413, n4414, n4415,
         n4416, n4417, n4419, n4420, n4421, n4422, n4423, n4424, n4425, n4426,
         n4427, n4428, n4429, n4430, n4431, n4432, n4433, n4434, n4435, n4436,
         n4437, n4438, n4439, n4440, n4441, n4442, n4443, n4444, n4445, n4446,
         n4447, n4448, n4449, n4450, n4451, n4452, n4453, n4454, n4455, n4456,
         n4457, n4458, n4459, n4460, n4461, n4462, n4463, n4464, n4465, n4466,
         n4467, n4468, n4469, n4470, n4471, n4472, n4473, n4474, n4475, n4476,
         n4477, n4478, n4479, n4480, n4481, n4482, n4483, n4484, n4485, n4486,
         n4487, n4488, n4489, n4490, n4491, n4492, n4493, n4494, n4495, n4496,
         n4497, n4498, n4499, n4500, n4501, n4502, n4503, n4504, n4505, n4507,
         n4508, n4509, n4510, n4511, n4512, n4513, n4514, n4515, n4516, n4517,
         n4518, n4519, n4520, n4521, n4522, n4523, n4524, n4525, n4526, n4527,
         n4528, n4530, n4531, n4532, n4533, n4534, n4535, n4536, n4537, n4538,
         n4539, n4540, n4541, n4542, n4543, n4544, n4545, n4546, n4547, n4548,
         n4549, n4550, n4551, n4552, n4553, n4554, n4555, n4556, n4557, n4558,
         n4559, n4560, n4561, n4562, n4563, n4564, n4565, n4566, n4567, n4568,
         n4569, n4570, n4571, n4572, n4573, n4574, n4575, n4576, n4577, n4578,
         n4579, n4580, n4581, n4582, n4583, n4584, n4585, n4586, n4587, n4588,
         n4589, n4590, n4591, n4592, n4593, n4594, n4595, n4596, n4597, n4598,
         n4599, n4600, n4601, n4602, n4603, n4604, n4605, n4606, n4607, n4608,
         n4609, n4610, n4611, n4612, n4613, n4614, n4615, n4616, n4617, n4618,
         n4619, n4620, n4621, n4622, n4623, n4624, n4625, n4626, n4627, n4628,
         n4629, n4630, n4631, n4632, n4633, n4634, n4635, n4636, n4637, n4638,
         n4639, n4640, n4641, n4642, n4643, n4644, n4645, n4646, n4647, n4648,
         n4649, n4650, n4651, n4652, n4653, n4654, n4655, n4656, n4657, n4658,
         n4659, n4660, n4661, n4662, n4663, n4664, n4665, n4666, n4667, n4668,
         n4669, n4670, n4671, n4672, n4673, n4674, n4675, n4676, n4677, n4678,
         n4679, n4680, n4681, n4682, n4683, n4684, n4685, n4686, n4687, n4688,
         n4689, n4690, n4691, n4692, n4693, n4694, n4695, n4696, n4697, n4698,
         n4699, n4700, n4701, n4702, n4703, n4704, n4705, n4706, n4707, n4708,
         n4709, n4710, n4711, n4712, n4713, n4714, n4715, n4716, n4717, n4718,
         n4719, n4720, n4721, n4722, n4723, n4724, n4725, n4726, n4727, n4728,
         n4729, n4730, n4731, n4732, n4733, n4734, n4735, n4736, n4737, n4738,
         n4739, n4740, n4741, n4742, n4743, n4744, n4745, n4746, n4747, n4748,
         n4749, n4750, n4751, n4752, n4753, n4754, n4755, n4756, n4757, n4758,
         n4759, n4760, n4761, n4762, n4763, n4764, n4765, n4766, n4767, n4768,
         n4769, n4770, n4771, n4772, n4773, n4774, n4775, n4776, n4777, n4778,
         n4779, n4780, n4781, n4782, n4783, n4784, n4785, n4786, n4787, n4788,
         n4789, n4790, n4791, n4792, n4793, n4794, n4795, n4796, n4797, n4798,
         n4799, n4800, n4801, n4802, n4803, n4804, n4805, n4806, n4807, n4808,
         n4809, n4810, n4811, n4812, n4813, n4814, n4815, n4816, n4817, n4818,
         n4819, n4820, n4821, n4822, n4823, n4824, n4825, n4826, n4827, n4828,
         n4829, n4830, n4831, n4832, n4833, n4834, n4835, n4836, n4837, n4838,
         n4839, n4840, n4841, n4842, n4843, n4844, n4845, n4846, n4847, n4848,
         n4849, n4850, n4851, n4852, n4853, n4854, n4855, n4856, n4857, n4858,
         n4859, n4860, n4861, n4862, n4863, n4864, n4865, n4866, n4867, n4868,
         n4869, n4870, n4871, n4872, n4873, n4874, n4875, n4876, n4877, n4878,
         n4879, n4880, n4881, n4882, n4883, n4884, n4885, n4886, n4887, n4888,
         n4889, n4890, n4891, n4892, n4893, n4894, n4895, n4896, n4897, n4898,
         n4899, n4900, n4901, n4902, n4903, n4904, n4905, n4906, n4907, n4908,
         n4909, n4910, n4911, n4912, n4913, n4914, n4915, n4916, n4917, n4918,
         n4919, n4920, n4921, n4922, n4923, n4924, n4925, n4926, n4927, n4928,
         n4929, n4930, n4931, n4932, n4933, n4934, n4935, n4936, n4937, n4938,
         n4939, n4940, n4941, n4942, n4943, n4944, n4945, n4946, n4947, n4948,
         n4949, n4950, n4951, n4952, n4953, n4954, n4955, n4956, n4957, n4958,
         n4959, n4960, n4961, n4962, n4963, n4964, n4965, n4966, n4967, n4968,
         n4969, n4970, n4971, n4972, n4973, n4974, n4975, n4976, n4977, n4978,
         n4979, n4980, n4981, n4982, n4983, n4984, n4985, n4986, n4987, n4988,
         n4989, n4990, n4991, n4992, n4993, n4994, n4995, n4996, n4997, n4998,
         n4999, n5000, n5001, n5002, n5003, n5004, n5005, n5006, n5007, n5008,
         n5009, n5010, n5011, n5012, n5013, n5014, n5015, n5016, n5017, n5018,
         n5019, n5020, n5021, n5022, n5023, n5024, n5025, n5026, n5027, n5028,
         n5029, n5030, n5031, n5032, n5033, n5034, n5035, n5036, n5037, n5038,
         n5039, n5040, n5041, n5042, n5043, n5044, n5045, n5046, n5047, n5048,
         n5049, n5050, n5051, n5052, n5053, n5054, n5055, n5056, n5057, n5058,
         n5059, n5060, n5061, n5062, n5063, n5064, n5065, n5066, n5067, n5068,
         n5069, n5070, n5071, n5072, n5073, n5074, n5075, n5076, n5077, n5078,
         n5079, n5080, n5081, n5082, n5083, n5084, n5085, n5086, n5087, n5088,
         n5089, n5090, n5091, n5092, n5093, n5094, n5095, n5096, n5097, n5098,
         n5099, n5100, n5101, n5102, n5103, n5104, n5105, n5106, n5107, n5108,
         n5109, n5110, n5111, n5112, n5113, n5114, n5115, n5116, n5117, n5118,
         n5119, n5120, n5121, n5122, n5123, n5124, n5125, n5126, n5127, n5128,
         n5129, n5130, n5131, n5132, n5133, n5134, n5135, n5136, n5137, n5138,
         n5139, n5140, n5141, n5142, n5143, n5144, n5145, n5146, n5147, n5148,
         n5149, n5150, n5151, n5152, n5153, n5154, n5155, n5156, n5157, n5158,
         n5159, n5160, n5161, n5162, n5163, n5164, n5165, n5166, n5167, n5168,
         n5169, n5170, n5171, n5172, n5173, n5174, n5175, n5176, n5177, n5178,
         n5179, n5180, n5181, n5182, n5183, n5184, n5185, n5186, n5187, n5188,
         n5189, n5190, n5191, n5192, n5193, n5194, n5195, n5196, n5197, n5198,
         n5199, n5200, n5201, n5202, n5203, n5204, n5205, n5206, n5207, n5208,
         n5209, n5210, n5211, n5212, n5213, n5214, n5215, n5216, n5217, n5218,
         n5219, n5220, n5221, n5222, n5223, n5224, n5225, n5226, n5227, n5228,
         n5229, n5230, n5231, n5232, n5233, n5234, n5235, n5236, n5237, n5238,
         n5239, n5240, n5241, n5242, n5243, n5244, n5245, n5246, n5247, n5248,
         n5249, n5250, n5251, n5252, n5253, n5254, n5255, n5256, n5257, n5258,
         n5259, n5260, n5261, n5262, n5263, n5264, n5265, n5266, n5267, n5268,
         n5269, n5270, n5271, n5272, n5273, n5274, n5275, n5276, n5277, n5278,
         n5279, n5280, n5281, n5282, n5283, n5284, n5285, n5286, n5287, n5288,
         n5289, n5290, n5291, n5292, n5293, n5294, n5295, n5296, n5297, n5298,
         n5299, n5300, n5301, n5302, n5303, n5304, n5305, n5306, n5307, n5308,
         n5309, n5310, n5311, n5312, n5313, n5314, n5315, n5316, n5317, n5318,
         n5319, n5320, n5321, n5322, n5323, n5324, n5325, n5326, n5327, n5328,
         n5329, n5330, n5331, n5332, n5333, n5334, n5335, n5336, n5337, n5338,
         n5339, n5340, n5341, n5342, n5343, n5344, n5345, n5346, n5347, n5348,
         n5349, n5350, n5351, n5352, n5353, n5354, n5355, n5356, n5357, n5358,
         n5359, n5360, n5361, n5362, n5363, n5364, n5365, n5366, n5367, n5368,
         n5369, n5370, n5371, n5372, n5373, n5374, n5375, n5376, n5377, n5378,
         n5379, n5380, n5381, n5382, n5383, n5384, n5385, n5386, n5387, n5388,
         n5389, n5390, n5391, n5392, n5393, n5394, n5395, n5396, n5397, n5398,
         n5399, n5400, n5401, n5402, n5403, n5404, n5405, n5406, n5407, n5408,
         n5409, n5410, n5411, n5412, n5413, n5414, n5415, n5416, n5417, n5418,
         n5419, n5420, n5421, n5422, n5423, n5424, n5425, n5426, n5427, n5428,
         n5429, n5430, n5431, n5432, n5433, n5434, n5435, n5436, n5437, n5438,
         n5439, n5440, n5441, n5442, n5443, n5444, n5445, n5446, n5447, n5448,
         n5449, n5450, n5451, n5452, n5453, n5454, n5455, n5456, n5457, n5458,
         n5459, n5460, n5461, n5462, n5463, n5464, n5465, n5466, n5467, n5468,
         n5469, n5470, n5471, n5472, n5473, n5474, n5475, n5476, n5477, n5478,
         n5479, n5480, n5481, n5482, n5483, n5484, n5485, n5486, n5487, n5488,
         n5489, n5490, n5491, n5492, n5493, n5494, n5495, n5496, n5497, n5498,
         n5499, n5500, n5501, n5502, n5503, n5504, n5505, n5506, n5507, n5508,
         n5509, n5510, n5511, n5512, n5513, n5514, n5515, n5516, n5517, n5518,
         n5519, n5520, n5521, n5522, n5523, n5524, n5525, n5526, n5527, n5528,
         n5529, n5530, n5531, n5532, n5533, n5534, n5535, n5536, n5537, n5538,
         n5539, n5540, n5541, n5542, n5543, n5544, n5545, n5546, n5547, n5548,
         n5549, n5550, n5551, n5552, n5553, n5554, n5555, n5556, n5557, n5558,
         n5559, n5560, n5561, n5562, n5563, n5564, n5565, n5566, n5567, n5568,
         n5569, n5570, n5571, n5572, n5573, n5574, n5575, n5576, n5577, n5578,
         n5579, n5580, n5581, n5582, n5583, n5584, n5585, n5586, n5587, n5588,
         n5589, n5590, n5591, n5592, n5593, n5594, n5595, n5596, n5597, n5598,
         n5599, n5600, n5601, n5602, n5603, n5604, n5605, n5606, n5607, n5608,
         n5609, n5610, n5611, n5612, n5613, n5614, n5615, n5616, n5617, n5618,
         n5619, n5620, n5621, n5622, n5623, n5624, n5625, n5626, n5627, n5628,
         n5629, n5630, n5631, n5632, n5633, n5634, n5635, n5636, n5637, n5638,
         n5639, n5640, n5641, n5642, n5643, n5644, n5645, n5646, n5647, n5648,
         n5649, n5650, n5651, n5652, n5653, n5654, n5655, n5656, n5657, n5658,
         n5659, n5660, n5661, n5662, n5663, n5664, n5665, n5666, n5667, n5668,
         n5669, n5670, n5671, n5672, n5673, n5674, n5675, n5676, n5677, n5678,
         n5679, n5680, n5681, n5682, n5683, n5684, n5685, n5686, n5687, n5688,
         n5689, n5690, n5691, n5692, n5693, n5694, n5695, n5696, n5697, n5698,
         n5699, n5700, n5701, n5702, n5703, n5704, n5705, n5706, n5707, n5708,
         n5709, n5710, n5711, n5712, n5713, n5714, n5715, n5716, n5717, n5718,
         n5719, n5720, n5721, n5722, n5723, n5724, n5725, n5726, n5727, n5728,
         n5729, n5730, n5731, n5732, n5733, n5734, n5735, n5736, n5737, n5738,
         n5739, n5740, n5741, n5742, n5743, n5744, n5745, n5746, n5747, n5748,
         n5749, n5750, n5751, n5752, n5753, n5754, n5755, n5756, n5757, n5758,
         n5759, n5760, n5761, n5762, n5763, n5764, n5765, n5766, n5767, n5768,
         n5769, n5770, n5771, n5772, n5773, n5774, n5775, n5776, n5777, n5778,
         n5779, n5780, n5781, n5782, n5783, n5784, n5785, n5786, n5787, n5788,
         n5789, n5790, n5791, n5792, n5793, n5794, n5795, n5796, n5797, n5798,
         n5799, n5800, n5801, n5802, n5803, n5804, n5805, n5806, n5807, n5808,
         n5809, n5810, n5811, n5812, n5813, n5814, n5815, n5816, n5817, n5818,
         n5819, n5821, n5822, n5823, n5824, n5825, n5826, n5827, n5828, n5829,
         n5830, n5831, n5832, n5833, n5834, n5835, n5836, n5837, n5838, n5839,
         n5840, n5841, n5842, n5843, n5844, n5845, n5846, n5847, n5848, n5849,
         n5850, n5851, n5852, n5853, n5854, n5855, n5856, n5857, n5858, n5859,
         n5860, n5861, n5862, n5863, n5864, n5865, n5866, n5867, n5868, n5869,
         n5870, n5871, n5872, n5873, n5874, n5875, n5876, n5877, n5878, n5879,
         n5880, n5881, n5882, n5883, n5884, n5885, n5886, n5887, n5888, n5889,
         n5890, n5891, n5892, n5893, n5894, n5895, n5896, n5897, n5898, n5899,
         n5900, n5901, n5902, n5903, n5904, n5905, n5906, n5907, n5908, n5909,
         n5910, n5911, n5912, n5913, n5914, n5915, n5916, n5917, n5918, n5919,
         n5920, n5921, n5922, n5923, n5924, n5925, n5926, n5927, n5928, n5929,
         n5930, n5931, n5932, n5933, n5934, n5935, n5936, n5937, n5938, n5939,
         n5940, n5941, n5942, n5943, n5944, n5945, n5946, n5947, n5948, n5949,
         n5950, n5951, n5952, n5953, n5954, n5955, n5956, n5957, n5958, n5959,
         n5960, n5961, n5962, n5963, n5964, n5965, n5966, n5967, n5968, n5969,
         n5970, n5971, n5972, n5973, n5974, n5975, n5976, n5977, n5978, n5979,
         n5980, n5981, n5982, n5983, n5984, n5985, n5986, n5987, n5988, n5989,
         n5990, n5991, n5992, n5993, n5994, n5995, n5996, n5997, n5998, n5999,
         n6000, n6001, n6002, n6003, n6004, n6005, n6006, n6007, n6008, n6009,
         n6010, n6011, n6012, n6013, n6014, n6015, n6016, n6017, n6018, n6019,
         n6020, n6021, n6022, n6023, n6024, n6025, n6026, n6027, n6028, n6029,
         n6030, n6031, n6032, n6033, n6034, n6035, n6036, n6037, n6038, n6039,
         n6040, n6041, n6042, n6043, n6044, n6045, n6046, n6047, n6048, n6049,
         n6050, n6051, n6052, n6053, n6054, n6055, n6056, n6057, n6058, n6059,
         n6060, n6061, n6062, n6063, n6064, n6065, n6066, n6067, n6068, n6069,
         n6070, n6071, n6072, n6073, n6074, n6075, n6076, n6077, n6078, n6079,
         n6080, n6081, n6082, n6083, n6084, n6085, n6086, n6087, n6088, n6089,
         n6090, n6091, n6092, n6093, n6094, n6095, n6096, n6097, n6098, n6099,
         n6100, n6101, n6102, n6103, n6104, n6105, n6106, n6107, n6108, n6109,
         n6110, n6111, n6112, n6113, n6114, n6115, n6116, n6117, n6118, n6119,
         n6120, n6121, n6122, n6123, n6124, n6125, n6126, n6127, n6128, n6129,
         n6130, n6131, n6132, n6133, n6134, n6135, n6136, n6137, n6138, n6139,
         n6140, n6141, n6142, n6143, n6144, n6145, n6146, n6147, n6148, n6149,
         n6150, n6151, n6152, n6153, n6154, n6155, n6156, n6157, n6158, n6159,
         n6160, n6161, n6162, n6163, n6164, n6165, n6166, n6167, n6168, n6169,
         n6170, n6171, n6172, n6173, n6174, n6175, n6176, n6177, n6178, n6179,
         n6180, n6181, n6182, n6183, n6184, n6185, n6186, n6187, n6188, n6189,
         n6190, n6191, n6192, n6193, n6194, n6195, n6196, n6197, n6198, n6199,
         n6200, n6201, n6202, n6203, n6204, n6205, n6206, n6207, n6208, n6209,
         n6210, n6211, n6212, n6213, n6214, n6215, n6216, n6217, n6218, n6219,
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
         n6370, n6371, n6372, n6373, n6374, n6375, n6376, n6377, n6378, n6379,
         n6380, n6381, n6382, n6383, n6384, n6385, n6386, n6387, n6388, n6389,
         n6390, n6391, n6392, n6393, n6394, n6395, n6396, n6397, n6398, n6399,
         n6400, n6401, n6402, n6403, n6404, n6405, n6406, n6407, n6408, n6409,
         n6410, n6411, n6412, n6413, n6414, n6415, n6416, n6417, n6418, n6419,
         n6420, n6421, n6422, n6423, n6424, n6425, n6426, n6427, n6428, n6429,
         n6430, n6431, n6432, n6433, n6434, n6435, n6436, n6437, n6438, n6439,
         n6440, n6441, n6442, n6443, n6444, n6445, n6446, n6447, n6448, n6449,
         n6450, n6451, n6452, n6453, n6454, n6455, n6456, n6457, n6458, n6459,
         n6460, n6461, n6462, n6463, n6464, n6465, n6466, n6467, n6468, n6469,
         n6470, n6471, n6472, n6473, n6474, n6475, n6476, n6477, n6478, n6479,
         n6480, n6481, n6482, n6483, n6484, n6485, n6486, n6487, n6488, n6489,
         n6490, n6491, n6492, n6493, n6494, n6495, n6496, n6497, n6498, n6499,
         n6500, n6501, n6502, n6503, n6504, n6505, n6506, n6507, n6508, n6509,
         n6510, n6511, n6512, n6513, n6514, n6515, n6516, n6517, n6518, n6519,
         n6520, n6521, n6522, n6523, n6524, n6525, n6526, n6527, n6528, n6529,
         n6530, n6531, n6532, n6533, n6534, n6535, n6536, n6537, n6538, n6539,
         n6540, n6541, n6542, n6543, n6544, n6545, n6546, n6547, n6548, n6549,
         n6550, n6551, n6552, n6553, n6554, n6555, n6556, n6557, n6558, n6559,
         n6560, n6561, n6562, n6563, n6564, n6565, n6566, n6567, n6568, n6569,
         n6570, n6571, n6572, n6573, n6574, n6575, n6576, n6577, n6578, n6579,
         n6580, n6581, n6582, n6583, n6584, n6585, n6586, n6587, n6588, n6589,
         n6590, n6591, n6592, n6593, n6594, n6595, n6596, n6597, n6598, n6599,
         n6600, n6601, n6602, n6603, n6604, n6605, n6606, n6607, n6608, n6609,
         n6610, n6611, n6612, n6613, n6614, n6615, n6616, n6617, n6618, n6619,
         n6620, n6621, n6622, n6623, n6624, n6625, n6626, n6627, n6628, n6629,
         n6630, n6631, n6632, n6633, n6634, n6635, n6636, n6637, n6638, n6639,
         n6640, n6641, n6642, n6643, n6644, n6645, n6646, n6647, n6648, n6649,
         n6650, n6651, n6652, n6653, n6654, n6655, n6656, n6657, n6658, n6659,
         n6660, n6661, n6662, n6663, n6664, n6665, n6666, n6667, n6668, n6669,
         n6670, n6671, n6672, n6673, n6674, n6675, n6676, n6677, n6678, n6679,
         n6680, n6681, n6682, n6683, n6684, n6685, n6686, n6687, n6688, n6689,
         n6690, n6691, n6692, n6693, n6694, n6695, n6696, n6697, n6698, n6699,
         n6700, n6701, n6702, n6703, n6704, n6705, n6706, n6707, n6708, n6709,
         n6710, n6711, n6712, n6713, n6714, n6715, n6716, n6717, n6718, n6719,
         n6720, n6721, n6722, n6723, n6724, n6725, n6726, n6727, n6728, n6729,
         n6730, n6731, n6732, n6733, n6734, n6735, n6736, n6737, n6738, n6739,
         n6740, n6741, n6742, n6743, n6744, n6745, n6746, n6747, n6748, n6749,
         n6750, n6751, n6752, n6753, n6754, n6755, n6756, n6757, n6758, n6759,
         n6760, n6761, n6762, n6763, n6764, n6765, n6766, n6767, n6768, n6769,
         n6770, n6771, n6772, n6773, n6774, n6775, n6776, n6777, n6778, n6779,
         n6780, n6781, n6782, n6783, n6784, n6785, n6786, n6787, n6788, n6789,
         n6790, n6791, n6792, n6793, n6794, n6795, n6796, n6797, n6798, n6799,
         n6800, n6801, n6802, n6803, n6804, n6805, n6806, n6807, n6808, n6809,
         n6810, n6811, n6812, n6813, n6814, n6815, n6816, n6817, n6818, n6819,
         n6820, n6821, n6822, n6823, n6824, n6825, n6826, n6827, n6828, n6829,
         n6830, n6831, n6832, n6833, n6834, n6835, n6836, n6837, n6838, n6839,
         n6840, n6841, n6842, n6843, n6844, n6845, n6846, n6847, n6848, n6849,
         n6850, n6851, n6852, n6853, n6854, n6855, n6856, n6857, n6858, n6859,
         n6860, n6861, n6862, n6863, n6864, n6865, n6866, n6867, n6868, n6869,
         n6870, n6871, n6872, n6873, n6874, n6875, n6876, n6877, n6878, n6879,
         n6880, n6881, n6882, n6883, n6884, n6885, n6886, n6887, n6888, n6889,
         n6890, n6891, n6892, n6893, n6894, n6895, n6896, n6897, n6898, n6899,
         n6900, n6901, n6902, n6903, n6904, n6905, n6906, n6907, n6908, n6909,
         n6910, n6911, n6912, n6913, n6914, n6915, n6916, n6917, n6918, n6919,
         n6920, n6921, n6922, n6923, n6924, n6925, n6926, n6927, n6928, n6929,
         n6930, n6931, n6932, n6933, n6934, n6935, n6936, n6937, n6938, n6939,
         n6940, n6941, n6942, n6943, n6944, n6945, n6946, n6947, n6948, n6949,
         n6950, n6951, n6952, n6953, n6954, n6955, n6956, n6957, n6958, n6959,
         n6960, n6961, n6962, n6963, n6964, n6965, n6966, n6967, n6968, n6969,
         n6970, n6971, n6972, n6973, n6974, n6975, n6976, n6977, n6978, n6979,
         n6980, n6981, n6982, n6983, n6984, n6985, n6986, n6987, n6988, n6989,
         n6990, n6991, n6992, n6993, n6994, n6995, n6996, n6997, n6998, n6999,
         n7000, n7001, n7002, n7003, n7004, n7005, n7006, n7007, n7008, n7009,
         n7010, n7011, n7012, n7013, n7014, n7015, n7016, n7017, n7018, n7019,
         n7020, n7021, n7022, n7023, n7024, n7025, n7026, n7027, n7028, n7029,
         n7030, n7031, n7032, n7033, n7034, n7035, n7036, n7037, n7038, n7039,
         n7040, n7041, n7042, n7043, n7044, n7045, n7046, n7047, n7048, n7049,
         n7050, n7051, n7052, n7053, n7054, n7055, n7056, n7057, n7058, n7059,
         n7060, n7061, n7062, n7063, n7064, n7065, n7066, n7067, n7068, n7069,
         n7070, n7071, n7072, n7073, n7074, n7075, n7076, n7077, n7078, n7079,
         n7080, n7081, n7082, n7083, n7084, n7085, n7086, n7087, n7088, n7089,
         n7090, n7091, n7092, n7093, n7094, n7095, n7096, n7097, n7098, n7099,
         n7100, n7101, n7102, n7103, n7104, n7105, n7106, n7107, n7108, n7109,
         n7110, n7111, n7112, n7113, n7114, n7115, n7116, n7117, n7118, n7119,
         n7120, n7121, n7122, n7123, n7124, n7125, n7126, n7127, n7128, n7129,
         n7130, n7131, n7132, n7133, n7134, n7135, n7136, n7137, n7138, n7139,
         n7140, n7141, n7142, n7143, n7144, n7145, n7146, n7147, n7148, n7149,
         n7150, n7151, n7152, n7153, n7154, n7155, n7156, n7157, n7158, n7159,
         n7160, n7161, n7162, n7163, n7164, n7165, n7166, n7167, n7168, n7169,
         n7170, n7171, n7172, n7173, n7174, n7175, n7176, n7177, n7178, n7179,
         n7180, n7181, n7182, n7183, n7184, n7185, n7186, n7187, n7188, n7189,
         n7190, n7191, n7192, n7193, n7194, n7195, n7196, n7197, n7198, n7199,
         n7200, n7201, n7202, n7203, n7204, n7205, n7206, n7207, n7208, n7209,
         n7210, n7211, n7212, n7213, n7214, n7215, n7216, n7217, n7218, n7219,
         n7220, n7221, n7222, n7223, n7224, n7225, n7226, n7227, n7228, n7229,
         n7230, n7231, n7232, n7233, n7234, n7235, n7236, n7237, n7238, n7239,
         n7240, n7241, n7242, n7243, n7244, n7245, n7246, n7247, n7248, n7249,
         n7250, n7251, n7252, n7253, n7254, n7255, n7256, n7257, n7258, n7259,
         n7260, n7261, n7262, n7263, n7264, n7265, n7266, n7267, n7268, n7269,
         n7270, n7271, n7272, n7273, n7274, n7275, n7276, n7277, n7278, n7279,
         n7280, n7281, n7282, n7283, n7284, n7285, n7286, n7287, n7288, n7289,
         n7290, n7291, n7292, n7293, n7294, n7295, n7296, n7297, n7298, n7299,
         n7300, n7301, n7302, n7303, n7304, n7305, n7306, n7307, n7308, n7309,
         n7310, n7311, n7312, n7313, n7314, n7315, n7316, n7317, n7318, n7319,
         n7320, n7321, n7322, n7323, n7324, n7325, n7326, n7327, n7328, n7329,
         n7330, n7331, n7332, n7333, n7334, n7335, n7336, n7337, n7338, n7339,
         n7340, n7341, n7342, n7343, n7344, n7345, n7346, n7347, n7348, n7349,
         n7350, n7351, n7352, n7353, n7354, n7355, n7356, n7357, n7358, n7359,
         n7360, n7361, n7362, n7365, n7366, n7368, n7369, n7370, n7371, n7372,
         n7373, n7374, n7375, n7376, n7377, n7378, n7379, n7380, n7381, n7382,
         n7383, n7384, n7385, n7386, n7387, n7388, n7389, n7390, n7392, n7393,
         n7394, n7395, n7396, n7397, n7398, n7399, n7400, n7401, n7402, n7403,
         n7404, n7405, n7406, n7407, n7408, n7409, n7410, n7411, n7412, n7413,
         n7414, n7415, n7416, n7417, n7418, n7419, n7420, n7421, n7422, n7423,
         n7424, n7425, n7426, n7427, n7428, n7429, n7430, n7431, n7432, n7433,
         n7434, n7435, n7436, n7437, n7438, n7439, n7440, n7441, n7442, n7443,
         n7444, n7445, n7446, n7447, n7448, n7449, n7450, n7451, n7452, n7453,
         n7454, n7455, n7456, n7457, n7458, n7459, n7460, n7461, n7462, n7463,
         n7464, n7465, n7466, n7467, n7468, n7469, n7470, n7471, n7472, n7473,
         n7474, n7475, n7476, n7477, n7478, n7479, n7480, n7481, n7482, n7483,
         n7484, n7485, n7487, n7488, n7489, n7490, n7491, n7492, n7493, n7494,
         n7495, n7496, n7497, n7498, n7499, n7500, n7501, n7502, n7503, n7505,
         n7506, n7507, n7508, n7509, n7510, n7511, n7512, n7513, n7514, n7515,
         n7516, n7517, n7518, n7519, n7520, n7521, n7522, n7523, n7524, n7525,
         n7526, n7527, n7528, n7529, n7530, n7531, n7532, n7533, n7534, n7535,
         n7536, n7537, n7538, n7539, n7540, n7541, n7542, n7543, n7544, n7545,
         n7546, n7547, n7548, n7549, n7550, n7551, n7552, n7553, n7554, n7555,
         n7556, n7557, n7558, n7559, n7560, n7561, n7562, n7563, n7564, n7565,
         n7566, n7567, n7568, n7569, n7570, n7571, n7572, n7573, n7574, n7575,
         n7576, n7577, n7578, n7579, n7580, n7581, n7582, n7583, n7584, n7585,
         n7586, n7587, n7588, n7589, n7590, n7591, n7592, n7593, n7594, n7595,
         n7596, n7597, n7598, n7599, n7600, n7601, n7602, n7603, n7604, n7605,
         n7606, n7607, n7608, n7609, n7610, n7611, n7612, n7613, n7614, n7615,
         n7616, n7617, n7618, n7619, n7620, n7621, n7622, n7623, n7624, n7625,
         n7626, n7628, n7629, n7631, n7632, n7634, n7635, n7636, n7638, n7639,
         n7641, n7643, n7645, n7647, n7648, n7649, n7650, n7653, n7654, n7655,
         n7656, n7657, n7658, n7659, n7660, n7661, n7662, n7663, n7664, n7665,
         n7666, n7667, n7668, n7669, n7670, n7671, n7672, n7673, n7674, n7675,
         n7676;
  wire   [31:0] sram_data_out_w;
  wire   [3:0] sram_wen_ready_r;
  wire   [23:0] sram_addr_w;
  wire   [7:0] in_data_r;
  wire   [10:0] conv_result_w;
  wire   [13:11] result_w;
  wire   [3:1] curr_state;
  wire   [10:0] cnt;
  wire   [31:0] input_data_ready_r;
  wire   [35:0] sram_addr_wait_r;
  wire   [4:0] z_r;
  wire   [1:0] y_r;
  wire   [2:0] x_r;
  wire   [2:0] x_minus_one_r;
  wire   [2:1] x_plus_one_r;
  wire   [7:0] pre_state;
  wire   [13:0] out_data_wait_r;
  wire   [10:0] conv_inst_data_bcd_4_r;
  wire   [16:0] conv_inst_conv_4_r;
  wire   [10:0] conv_inst_data_abc_3_r;
  wire   [16:0] conv_inst_conv_3_r;
  wire   [10:1] conv_inst_data_bcd_2_r;
  wire   [16:0] conv_inst_conv_2_r;
  wire   [10:0] conv_inst_data_abc_1_r;
  wire   [16:0] conv_inst_conv_1_r;
  wire   [9:1] conv_inst_data_bcd_w;
  wire   [9:2] conv_inst_data_abc_w;
  wire   [2:0] median_sobel_inst_ns;
  wire   [37:0] median_sobel_inst_med_sobel_e_wait_r;
  wire   [6:0] median_sobel_inst_angle;
  wire   [43:0] median_sobel_inst_G;
  wire   [1:0] median_sobel_inst_angle_w;
  wire   [10:0] median_sobel_inst_sobel_data_w;
  wire   [7:1] median_sobel_inst_data_i_r;
  wire   [7:0] median_sobel_inst_data_h_r;
  wire   [7:0] median_sobel_inst_data_g_r;
  wire   [5:0] median_sobel_inst_data_f_r;
  wire   [7:0] median_sobel_inst_data_e_r;
  wire   [5:1] median_sobel_inst_data_d_r;
  wire   [7:0] median_sobel_inst_data_c_r;
  wire   [7:0] median_sobel_inst_data_b_r;
  wire   [2:0] median_sobel_inst_data_a_r;
  wire   [10:0] median_sobel_inst_sobel_out_data_w;
  wire   [7:0] median_sobel_inst_out_data_w;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_c2;
  wire   [7:0] median_sobel_inst_u_median_filter_submodule_b5;
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
  wire   [17:15] median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r;
  wire   [14:9] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r;
  wire   [12:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r;
  wire   [11:1] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r;
  wire   [21:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs;
  wire   [19:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay;
  wire   [3:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_delay;
  wire   [2:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_delay;
  wire   [9:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_abs;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_imm;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_imm;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy2_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx2_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1_w;
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p9_d_r;
  wire   [7:2] median_sobel_inst_u_sobel_gradient_submodule_p1_d_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy2;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gx2;
  wire   [8:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gx1;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p9_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p8_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p7_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p6_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p4_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p3_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p2_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p1_r;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_b;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_a;
  wire   [4:3] median_sobel_inst_u_sober_compare_submodule_temp_b_r;
  wire   [9:4] median_sobel_inst_u_sober_compare_submodule_temp_a_r;

  sram_512x8 SRAM_inst_loop_0__u_sram ( .Q(sram_data_out_w[7:0]), .A(
        sram_addr_w[8:0]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[0]) );
  sram_512x8 SRAM_inst_loop_1__u_sram ( .Q(sram_data_out_w[15:8]), .A({
        sram_addr_w[15:13], n7850, sram_addr_w[12:9], n793}), .D(in_data_r), 
        .CLK(i_clk), .CEN(1'b0), .WEN(sram_wen_ready_r[1]) );
  sram_512x8 SRAM_inst_loop_2__u_sram ( .Q(sram_data_out_w[23:16]), .A({n863, 
        n859, n865, n871, n869, n867, n857, n861, n7910}), .D(in_data_r), 
        .CLK(i_clk), .CEN(1'b0), .WEN(sram_wen_ready_r[2]) );
  sram_512x8 SRAM_inst_loop_3__u_sram ( .Q(sram_data_out_w[31:24]), .A({
        sram_addr_w[23:16], n7880}), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), 
        .WEN(sram_wen_ready_r[3]) );
  DFFRX4 input_data_ready_r_reg_21_ ( .D(N738), .CK(i_clk), .RN(n7626), .Q(
        input_data_ready_r[21]), .QN(n7581) );
  DFFRX4 input_data_ready_r_reg_20_ ( .D(N737), .CK(i_clk), .RN(n7660), .Q(
        input_data_ready_r[20]), .QN(n7612) );
  DFFRX4 input_data_ready_r_reg_13_ ( .D(N730), .CK(i_clk), .RN(n7671), .Q(
        input_data_ready_r[13]), .QN(n7582) );
  DFFRX4 input_data_ready_r_reg_11_ ( .D(N728), .CK(i_clk), .RN(n7669), .Q(
        n4546), .QN(n1930) );
  DFFRX4 input_data_ready_r_reg_10_ ( .D(N727), .CK(i_clk), .RN(i_rst_n), .Q(
        n4545), .QN(n1924) );
  DFFRX4 cnt_reg_0_ ( .D(n3505), .CK(i_clk), .RN(n7626), .Q(cnt[0]), .QN(n7488) );
  DFFRX4 input_data_ready_r_reg_12_ ( .D(N729), .CK(i_clk), .RN(n7668), .Q(
        input_data_ready_r[12]), .QN(n7428) );
  DFFRX4 cnt_reg_1_ ( .D(n3515), .CK(i_clk), .RN(n7667), .Q(cnt[1]), .QN(n7378) );
  DFFSXL pre_state_reg_0__2_ ( .D(curr_state[2]), .CK(i_clk), .SN(n7671), .Q(
        pre_state[2]) );
  DFFRHQX1 x_r_reg_0_ ( .D(N785), .CK(i_clk), .RN(n7660), .Q(x_r[0]) );
  DFFRX4 input_data_ready_r_reg_19_ ( .D(N736), .CK(i_clk), .RN(n7664), .QN(
        n1961) );
  DFFRX4 input_data_ready_r_reg_18_ ( .D(N735), .CK(i_clk), .RN(n7658), .Q(
        n3553), .QN(n1879) );
  DFFRX4 input_data_ready_r_reg_8_ ( .D(N725), .CK(i_clk), .RN(n7670), .Q(
        n7372), .QN(n1915) );
  DFFRX4 input_data_ready_r_reg_16_ ( .D(N733), .CK(i_clk), .RN(n7653), .Q(
        n7382), .QN(n1971) );
  DFFRX4 input_data_ready_r_reg_9_ ( .D(N726), .CK(i_clk), .RN(n7666), .Q(
        n4599), .QN(n1935) );
  DFFRX1 med_sobel_r_reg ( .D(n1345), .CK(i_clk), .RN(n7634), .Q(med_sobel_r)
         );
  DFFRHQX1 sram_addr_ready_r_reg_1__5_ ( .D(sram_addr_wait_r[14]), .CK(i_clk), 
        .RN(n7647), .Q(n7850) );
  DFFRX1 sram_addr_ready_r_reg_1__8_ ( .D(sram_addr_wait_r[17]), .CK(i_clk), 
        .RN(n7641), .Q(sram_addr_w[15]), .QN(n420) );
  DFFRX1 sram_addr_ready_r_reg_1__4_ ( .D(sram_addr_wait_r[13]), .CK(i_clk), 
        .RN(n7639), .Q(sram_addr_w[12]), .QN(n416) );
  DFFRX1 sram_addr_ready_r_reg_1__2_ ( .D(sram_addr_wait_r[11]), .CK(i_clk), 
        .RN(n7639), .Q(sram_addr_w[10]), .QN(n414) );
  DFFRX1 sram_addr_ready_r_reg_1__1_ ( .D(sram_addr_wait_r[10]), .CK(i_clk), 
        .RN(n7639), .Q(sram_addr_w[9]), .QN(n413) );
  DFFRX1 sram_addr_ready_r_reg_1__6_ ( .D(sram_addr_wait_r[15]), .CK(i_clk), 
        .RN(n7639), .Q(sram_addr_w[13]), .QN(n418) );
  DFFRX1 sram_addr_ready_r_reg_1__7_ ( .D(sram_addr_wait_r[16]), .CK(i_clk), 
        .RN(n7639), .Q(sram_addr_w[14]), .QN(n419) );
  DFFSX1 pre_state_reg_2__3_ ( .D(pre_state[7]), .CK(i_clk), .SN(n7671), .Q(
        n1977) );
  DFFRX1 pre_state_reg_2__1_ ( .D(pre_state[5]), .CK(i_clk), .RN(n7639), .Q(
        n1978) );
  DFFSX1 sram_wen_ready_r_reg_1_ ( .D(N842), .CK(i_clk), .SN(n7671), .Q(
        sram_wen_ready_r[1]), .QN(n2151) );
  DFFSX1 sram_wen_ready_r_reg_2_ ( .D(N843), .CK(i_clk), .SN(n7671), .Q(
        sram_wen_ready_r[2]), .QN(n2153) );
  DFFSX1 sram_wen_ready_r_reg_3_ ( .D(N844), .CK(i_clk), .SN(n7671), .Q(
        sram_wen_ready_r[3]), .QN(n2152) );
  DFFSX1 sram_wen_ready_r_reg_0_ ( .D(N841), .CK(i_clk), .SN(n7671), .Q(
        sram_wen_ready_r[0]), .QN(n2150) );
  DFFRX1 x_minus_one_r_reg_2_ ( .D(N756), .CK(i_clk), .RN(n7639), .Q(
        x_minus_one_r[2]) );
  DFFRX1 x_plus_one_r_reg_2_ ( .D(n7674), .CK(i_clk), .RN(n7639), .Q(
        x_plus_one_r[2]) );
  DFFRX1 pre_state_reg_1__1_ ( .D(pre_state[1]), .CK(i_clk), .RN(n7639), .Q(
        pre_state[5]), .QN(n915) );
  DFFSX1 pre_state_reg_1__3_ ( .D(pre_state[3]), .CK(i_clk), .SN(n7671), .Q(
        pre_state[7]), .QN(n1856) );
  DFFRX1 x_plus_two_r_reg_2_ ( .D(N762), .CK(i_clk), .RN(n7639), .Q(
        x_plus_two_r_2_) );
  DFFSX1 pre_state_reg_1__2_ ( .D(pre_state[2]), .CK(i_clk), .SN(n7671), .Q(
        pre_state[6]), .QN(n2036) );
  DFFSX1 depth_ready_r_reg_2_ ( .D(n2252), .CK(i_clk), .SN(n7671), .QN(n1999)
         );
  DFFRX1 pre_state_reg_1__0_ ( .D(pre_state[0]), .CK(i_clk), .RN(n7639), .Q(
        pre_state[4]), .QN(n1892) );
  DFFRX1 x_plus_one_r_reg_1_ ( .D(N125), .CK(i_clk), .RN(n7639), .Q(
        x_plus_one_r[1]) );
  DFFRX1 depth_ready_r_reg_0_ ( .D(n2251), .CK(i_clk), .RN(n7639), .Q(n1858), 
        .QN(n7507) );
  DFFSX1 pre_state_reg_2__2_ ( .D(pre_state[6]), .CK(i_clk), .SN(n7671), .Q(
        n1855) );
  DFFRX1 pre_state_reg_2__0_ ( .D(pre_state[4]), .CK(i_clk), .RN(n7660), .Q(
        n913) );
  DFFSXL pre_state_reg_0__3_ ( .D(curr_state[3]), .CK(i_clk), .SN(n7671), .Q(
        pre_state[3]) );
  DFFRX1 x_delay_r_reg_0__1_ ( .D(x_r[1]), .CK(i_clk), .RN(n7660), .Q(
        x_delay_r_0__1_) );
  DFFRX1 x_delay_r_reg_1__1_ ( .D(x_delay_r_0__1_), .CK(i_clk), .RN(n7660), 
        .Q(x_delay_r_1__1_) );
  DFFRX1 x_delay_r_reg_0__0_ ( .D(x_r[0]), .CK(i_clk), .RN(n7660), .Q(
        x_delay_r_0__0_) );
  DFFRX1 x_delay_r_reg_1__0_ ( .D(x_delay_r_0__0_), .CK(i_clk), .RN(n7660), 
        .Q(x_delay_r_1__0_) );
  DFFRX1 in_data_r_reg_7_ ( .D(i_in_data[7]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[7]) );
  DFFRX1 in_data_r_reg_6_ ( .D(i_in_data[6]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[6]) );
  DFFRX1 in_data_r_reg_5_ ( .D(i_in_data[5]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[5]) );
  DFFRX1 in_data_r_reg_4_ ( .D(i_in_data[4]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[4]) );
  DFFRX1 in_data_r_reg_3_ ( .D(i_in_data[3]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[3]) );
  DFFRX1 in_data_r_reg_2_ ( .D(i_in_data[2]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[2]) );
  DFFRX1 in_data_r_reg_1_ ( .D(i_in_data[1]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[1]) );
  DFFRX1 in_data_r_reg_0_ ( .D(i_in_data[0]), .CK(i_clk), .RN(n7660), .Q(
        in_data_r[0]) );
  DFFRX1 pre_state_reg_0__0_ ( .D(n4542), .CK(i_clk), .RN(n7660), .Q(
        pre_state[0]) );
  DFFRX4 input_data_ready_r_reg_29_ ( .D(N746), .CK(i_clk), .RN(n7656), .Q(
        input_data_ready_r[29]), .QN(n7599) );
  DFFRX4 cnt_reg_3_ ( .D(n3513), .CK(i_clk), .RN(n7657), .Q(cnt[3]), .QN(n7536) );
  DFFRHQX4 y_origin_r_reg_1_ ( .D(n491), .CK(i_clk), .RN(n7668), .Q(n878) );
  DFFRHQX4 input_data_ready_r_reg_25_ ( .D(N742), .CK(i_clk), .RN(n7659), .Q(
        n1923) );
  DFFRX1 sram_addr_ready_r_reg_3__3_ ( .D(sram_addr_wait_r[30]), .CK(i_clk), 
        .RN(n7660), .Q(sram_addr_w[18]), .QN(n431) );
  DFFRX1 med_sobel_isFirst_signal_r_reg ( .D(N820), .CK(i_clk), .RN(n7626), 
        .Q(med_sobel_isFirst_signal_r) );
  DFFRX1 conv_isFirst_signal_r_reg ( .D(N819), .CK(i_clk), .RN(n7660), .Q(
        conv_isFirst_signal_r) );
  DFFRX1 sram_addr_ready_r_reg_1__3_ ( .D(sram_addr_wait_r[12]), .CK(i_clk), 
        .RN(n7641), .Q(sram_addr_w[11]), .QN(n415) );
  DFFRX1 sram_addr_ready_r_reg_3__5_ ( .D(sram_addr_wait_r[32]), .CK(i_clk), 
        .RN(n7641), .Q(sram_addr_w[20]), .QN(n433) );
  DFFRX1 sram_addr_ready_r_reg_3__2_ ( .D(sram_addr_wait_r[29]), .CK(i_clk), 
        .RN(n7641), .Q(sram_addr_w[17]), .QN(n430) );
  DFFRX1 x_plus_two_r_reg_0_ ( .D(N760), .CK(i_clk), .RN(n7641), .Q(n7388), 
        .QN(n1898) );
  DFFRX1 x_plus_two_r_reg_1_ ( .D(n7675), .CK(i_clk), .RN(n7641), .Q(n7479), 
        .QN(n1889) );
  DFFRHQX1 x_r_reg_2_ ( .D(N787), .CK(i_clk), .RN(n7647), .Q(x_r[2]) );
  DFFRX1 x_minus_one_r_reg_1_ ( .D(n3523), .CK(i_clk), .RN(n7641), .QN(n1914)
         );
  DFFRX2 conv_inst_conv_4_r_reg_8_ ( .D(conv_inst_N2780), .CK(i_clk), .RN(
        n7669), .Q(conv_inst_conv_4_r[8]), .QN(conv_inst_n236) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_8_ ( .D(conv_inst_N143), .CK(i_clk), .RN(
        n7632), .Q(conv_inst_data_bcd_2_r[8]) );
  DFFRHQX2 conv_inst_conv_4_r_reg_5_ ( .D(conv_inst_N275), .CK(i_clk), .RN(
        n7654), .Q(conv_inst_n44) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_9_ ( .D(conv_inst_N217), .CK(i_clk), .RN(
        n7632), .Q(conv_inst_data_bcd_4_r[9]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_2_ ( .D(conv_inst_N68), .CK(i_clk), 
        .RN(n7641), .Q(conv_result_w[2]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_0_ ( .D(conv_inst_N66), .CK(i_clk), 
        .RN(n7671), .Q(conv_result_w[0]) );
  DFFRX1 conv_inst_conv_4_r_reg_16_ ( .D(conv_inst_N286), .CK(i_clk), .RN(
        n7660), .Q(conv_inst_conv_4_r[16]), .QN(conv_inst_n277) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_1_ ( .D(conv_inst_N67), .CK(i_clk), 
        .RN(n7643), .Q(conv_result_w[1]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_2_ ( .D(conv_inst_N126), .CK(i_clk), .RN(
        n7656), .Q(conv_inst_data_abc_1_r[2]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_0_ ( .D(conv_inst_N208), .CK(i_clk), .RN(
        n7658), .Q(conv_inst_data_bcd_4_r[0]) );
  DFFRX2 conv_inst_conv_3_r_reg_6_ ( .D(conv_inst_N2590), .CK(i_clk), .RN(
        n7655), .Q(conv_inst_conv_3_r[6]), .QN(conv_inst_n243) );
  DFFRHQX1 conv_inst_data_abc_1_r_reg_3_ ( .D(conv_inst_N127), .CK(i_clk), 
        .RN(n7671), .Q(conv_inst_n161) );
  DFFRHQX1 conv_inst_conv_1_r_reg_2_ ( .D(conv_inst_N221), .CK(i_clk), .RN(
        n7662), .Q(conv_inst_n162) );
  DFFRX2 conv_inst_data_abc_1_r_reg_0_ ( .D(conv_inst_N124), .CK(i_clk), .RN(
        n7666), .Q(conv_inst_data_abc_1_r[0]) );
  DFFRX2 conv_inst_conv_1_r_reg_0_ ( .D(conv_inst_N219), .CK(i_clk), .RN(n7670), .Q(conv_inst_conv_1_r[0]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_10_ ( .D(conv_inst_N134), .CK(i_clk), .RN(
        n7631), .Q(conv_inst_data_abc_1_r[10]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_4_ ( .D(conv_inst_N128), .CK(i_clk), .RN(
        n7631), .Q(conv_inst_data_abc_1_r[4]) );
  DFFRX2 conv_inst_conv_1_r_reg_4_ ( .D(conv_inst_N223), .CK(i_clk), .RN(n7631), .Q(conv_inst_conv_1_r[4]), .QN(conv_inst_n247) );
  DFFRHQX1 conv_inst_conv_1_r_reg_9_ ( .D(conv_inst_N228), .CK(i_clk), .RN(
        n7662), .Q(conv_inst_n168) );
  DFFRX2 conv_inst_conv_2_r_reg_6_ ( .D(conv_inst_N2420), .CK(i_clk), .RN(
        n7631), .Q(conv_inst_conv_2_r[6]), .QN(conv_inst_n244) );
  DFFRX2 conv_inst_conv_2_r_reg_0_ ( .D(conv_inst_N2360), .CK(i_clk), .RN(
        n7669), .Q(conv_inst_conv_2_r[0]) );
  DFFRX2 conv_inst_conv_3_r_reg_8_ ( .D(conv_inst_N261), .CK(i_clk), .RN(n7669), .Q(conv_inst_conv_3_r[8]), .QN(conv_inst_n250) );
  DFFRX2 conv_inst_conv_1_r_reg_10_ ( .D(conv_inst_N229), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_1_r[10]), .QN(conv_inst_n251) );
  DFFRX2 conv_inst_conv_3_r_reg_1_ ( .D(conv_inst_N2540), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_3_r[1]) );
  DFFRX2 conv_inst_conv_2_r_reg_4_ ( .D(conv_inst_N2400), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_2_r[4]), .QN(conv_inst_n248) );
  DFFRHQX1 conv_inst_data_bcd_2_r_reg_4_ ( .D(conv_inst_N139), .CK(i_clk), 
        .RN(n7671), .Q(conv_inst_n179) );
  DFFRHQX1 conv_inst_data_bcd_2_r_reg_0_ ( .D(conv_inst_N135), .CK(i_clk), 
        .RN(n4602), .Q(conv_inst_n180) );
  DFFRX2 conv_inst_conv_3_r_reg_5_ ( .D(conv_inst_N2580), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_3_r[5]), .QN(conv_inst_n10) );
  DFFRX2 conv_inst_conv_2_r_reg_10_ ( .D(conv_inst_N2460), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_2_r[10]), .QN(conv_inst_n240) );
  DFFRX2 conv_inst_data_abc_3_r_reg_5_ ( .D(conv_inst_N202), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_data_abc_3_r[5]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_6_ ( .D(conv_inst_N141), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_data_bcd_2_r[6]) );
  DFFRX2 conv_inst_conv_3_r_reg_2_ ( .D(conv_inst_N2550), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_3_r[2]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_2_ ( .D(conv_inst_N1990), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_data_abc_3_r[2]) );
  DFFRX2 conv_inst_conv_2_r_reg_5_ ( .D(conv_inst_N2410), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_conv_2_r[5]), .QN(conv_inst_n18) );
  DFFRX2 conv_inst_conv_4_r_reg_2_ ( .D(conv_inst_N2720), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_conv_4_r[2]) );
  DFFRX2 conv_inst_conv_1_r_reg_1_ ( .D(conv_inst_N220), .CK(i_clk), .RN(n7635), .Q(conv_inst_conv_1_r[1]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_1_ ( .D(conv_inst_N125), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_data_abc_1_r[1]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_5_ ( .D(conv_inst_N140), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_data_bcd_2_r[5]) );
  DFFRHQX1 conv_inst_data_bcd_2_r_reg_7_ ( .D(conv_inst_N142), .CK(i_clk), 
        .RN(n7662), .Q(conv_inst_n181) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_2_ ( .D(conv_inst_N210), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_data_bcd_4_r[2]) );
  DFFRX2 conv_inst_conv_4_r_reg_9_ ( .D(conv_inst_N279), .CK(i_clk), .RN(n7635), .Q(conv_inst_conv_4_r[9]), .QN(conv_inst_n21) );
  DFFRX2 conv_inst_conv_4_r_reg_0_ ( .D(conv_inst_N2700), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_conv_4_r[0]) );
  DFFRX2 conv_inst_conv_4_r_reg_4_ ( .D(conv_inst_N2740), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_conv_4_r[4]), .QN(conv_inst_n245) );
  DFFRX2 conv_inst_data_abc_3_r_reg_1_ ( .D(conv_inst_N1980), .CK(i_clk), .RN(
        n7656), .Q(conv_inst_data_abc_3_r[1]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_4_ ( .D(conv_inst_N212), .CK(i_clk), .RN(
        n7655), .Q(conv_inst_data_bcd_4_r[4]) );
  DFFRHQX1 conv_inst_data_abc_3_r_reg_3_ ( .D(conv_inst_N2000), .CK(i_clk), 
        .RN(n7665), .Q(conv_inst_n182) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_7_ ( .D(conv_inst_N215), .CK(i_clk), .RN(
        n7664), .Q(conv_inst_data_bcd_4_r[7]), .QN(n4521) );
  DFFRX2 conv_inst_conv_4_r_reg_11_ ( .D(conv_inst_N281), .CK(i_clk), .RN(
        n7665), .Q(conv_inst_conv_4_r[11]), .QN(conv_inst_n232) );
  DFFRX2 conv_inst_conv_1_r_reg_3_ ( .D(conv_inst_N222), .CK(i_clk), .RN(n7654), .Q(conv_inst_conv_1_r[3]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_3_ ( .D(conv_inst_N138), .CK(i_clk), .RN(
        n7667), .Q(conv_inst_data_bcd_2_r[3]) );
  DFFRX2 conv_inst_conv_2_r_reg_3_ ( .D(conv_inst_N2390), .CK(i_clk), .RN(
        n7670), .Q(conv_inst_conv_2_r[3]), .QN(conv_inst_n249) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_10_ ( .D(conv_inst_N145), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_data_bcd_2_r[10]) );
  DFFRX4 conv_inst_data_bcd_4_r_reg_3_ ( .D(conv_inst_N211), .CK(i_clk), .RN(
        n7655), .Q(conv_inst_data_bcd_4_r[3]) );
  DFFRX4 conv_inst_conv_4_r_reg_3_ ( .D(conv_inst_N273), .CK(i_clk), .RN(n7654), .Q(conv_inst_conv_4_r[3]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_5_ ( .D(conv_inst_N129), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_data_abc_1_r[5]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_10_ ( .D(conv_inst_N218), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_data_bcd_4_r[10]) );
  DFFRX2 conv_inst_conv_4_r_reg_10_ ( .D(conv_inst_N280), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_conv_4_r[10]), .QN(conv_inst_n235) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_1_ ( .D(conv_inst_N209), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_data_bcd_4_r[1]) );
  DFFRX2 conv_inst_conv_4_r_reg_1_ ( .D(conv_inst_N2710), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_conv_4_r[1]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_6_ ( .D(conv_inst_N214), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_data_bcd_4_r[6]) );
  DFFRX2 conv_inst_conv_4_r_reg_6_ ( .D(conv_inst_N2760), .CK(i_clk), .RN(
        n7626), .Q(conv_inst_conv_4_r[6]), .QN(conv_inst_n234) );
  DFFRX2 conv_inst_conv_1_r_reg_14_ ( .D(conv_inst_N2330), .CK(i_clk), .RN(
        n7649), .Q(conv_inst_conv_1_r[14]), .QN(n7580) );
  DFFRX2 conv_inst_conv_1_r_reg_5_ ( .D(conv_inst_N224), .CK(i_clk), .RN(n7660), .Q(conv_inst_conv_1_r[5]) );
  DFFRHQX1 conv_inst_conv_3_r_reg_4_ ( .D(conv_inst_N2570), .CK(i_clk), .RN(
        n7662), .Q(conv_inst_n41) );
  DFFRX1 conv_inst_data_abc_3_r_reg_0_ ( .D(conv_inst_N197), .CK(i_clk), .RN(
        n7638), .Q(conv_inst_data_abc_3_r[0]), .QN(n4519) );
  DFFRX1 conv_inst_conv_3_r_reg_0_ ( .D(conv_inst_N2530), .CK(i_clk), .RN(
        n7638), .Q(conv_inst_conv_3_r[0]), .QN(n4508) );
  DFFRX1 conv_inst_data_abc_r_reg_2_ ( .D(conv_inst_data_abc_w[2]), .CK(i_clk), 
        .RN(n7638), .QN(conv_inst_n256) );
  DFFRX1 conv_inst_data_abc_r_reg_0_ ( .D(n7613), .CK(i_clk), .RN(n7638), .QN(
        conv_inst_n271) );
  DFFRX1 conv_inst_data_bcd_r_reg_0_ ( .D(conv_inst_N32), .CK(i_clk), .RN(
        n7638), .QN(conv_inst_n272) );
  DFFRX1 conv_inst_data_abc_r_reg_1_ ( .D(n7400), .CK(i_clk), .RN(n7638), .QN(
        conv_inst_n255) );
  DFFRX1 conv_inst_data_bcd_r_reg_1_ ( .D(conv_inst_data_bcd_w[1]), .CK(i_clk), 
        .RN(n7638), .QN(conv_inst_n263) );
  DFFRHQX1 conv_inst_conv_3_r_reg_10_ ( .D(conv_inst_N2630), .CK(i_clk), .RN(
        n4602), .Q(conv_inst_n37) );
  DFFRX1 conv_inst_o_out_valid_ready_r_reg ( .D(n7390), .CK(i_clk), .RN(n7663), 
        .Q(conv_out_valid_w) );
  DFFRX4 conv_inst_cnt_reg_0_ ( .D(conv_inst_N56), .CK(i_clk), .RN(n7668), .Q(
        conv_inst_n292), .QN(n7443) );
  DFFRX2 median_sobel_inst_cs_reg_2_ ( .D(median_sobel_inst_ns[2]), .CK(i_clk), 
        .RN(n7667), .Q(median_sobel_inst_n46), .QN(n7398) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__1_ ( .D(
        median_sobel_inst_n638), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_n164) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__0_ ( .D(
        median_sobel_inst_n639), .CK(i_clk), .RN(n7665), .Q(
        median_sobel_inst_n144) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__7_ ( .D(
        median_sobel_inst_n592), .CK(i_clk), .RN(n7658), .Q(
        median_sobel_inst_n60), .QN(n7432) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__2_ ( .D(
        median_sobel_inst_n605), .CK(i_clk), .RN(n7634), .Q(n4592), .QN(
        median_sobel_inst_n960) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__5_ ( .D(
        median_sobel_inst_n602), .CK(i_clk), .RN(n7634), .QN(
        median_sobel_inst_n967) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__0_ ( .D(
        median_sobel_inst_n567), .CK(i_clk), .RN(n7634), .QN(
        median_sobel_inst_n451) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__0_ ( .D(
        median_sobel_inst_n599), .CK(i_clk), .RN(n7661), .QN(
        median_sobel_inst_n125) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__7_ ( .D(n7418), .CK(
        i_clk), .RN(n7671), .Q(n4555), .QN(median_sobel_inst_n1216) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__4_ ( .D(n7422), .CK(
        i_clk), .RN(n7626), .Q(n4554), .QN(median_sobel_inst_n1173) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__0_ ( .D(n7421), .CK(
        i_clk), .RN(n7660), .Q(n4587), .QN(median_sobel_inst_n1147) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__1_ ( .D(n7420), .CK(
        i_clk), .RN(n7669), .Q(n4589), .QN(median_sobel_inst_n1149) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__3_ ( .D(n7516), .CK(
        i_clk), .RN(n7639), .QN(median_sobel_inst_n1151) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__0_ ( .D(n7413), .CK(
        i_clk), .RN(n7639), .QN(median_sobel_inst_n1127) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__4_ ( .D(n7375), .CK(
        i_clk), .RN(n7669), .QN(median_sobel_inst_n1132) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__6_ ( .D(
        median_sobel_inst_n521), .CK(i_clk), .RN(n7648), .Q(
        median_sobel_inst_n976), .QN(n4571) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__7_ ( .D(n7412), .CK(
        i_clk), .RN(n7649), .QN(median_sobel_inst_n1137) );
  DFFRX1 median_sobel_inst_G_reg_2__10_ ( .D(median_sobel_inst_n468), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_G[32]), .QN(n7550) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__4_ ( .D(n7419), .CK(
        i_clk), .RN(n7649), .QN(median_sobel_inst_n1152) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__5_ ( .D(n7425), .CK(
        i_clk), .RN(n7647), .Q(n4579), .QN(median_sobel_inst_n1154) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__6_ ( .D(n7424), .CK(
        i_clk), .RN(n4602), .Q(n4585), .QN(median_sobel_inst_n1157) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__7_ ( .D(n7416), .CK(
        i_clk), .RN(n7648), .Q(n4591), .QN(median_sobel_inst_n1159) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__5_ ( .D(n7427), .CK(
        i_clk), .RN(n7648), .Q(n4586), .QN(median_sobel_inst_n1156) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__7_ ( .D(n7423), .CK(
        i_clk), .RN(n7649), .QN(median_sobel_inst_n1161) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__6_ ( .D(n7409), .CK(
        i_clk), .RN(n4602), .QN(median_sobel_inst_n1144) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__0_ ( .D(n7522), .CK(
        i_clk), .RN(n7650), .QN(median_sobel_inst_n38) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__2_ ( .D(n7515), .CK(
        i_clk), .RN(n7647), .QN(median_sobel_inst_n45) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__4_ ( .D(n7514), .CK(
        i_clk), .RN(n7648), .QN(median_sobel_inst_n42) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__5_ ( .D(
        median_sobel_inst_n642), .CK(i_clk), .RN(n7649), .Q(
        median_sobel_inst_n1211), .QN(n7586) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__6_ ( .D(n7513), .CK(
        i_clk), .RN(n4602), .QN(median_sobel_inst_n52) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__7_ ( .D(n7512), .CK(
        i_clk), .RN(n7649), .QN(median_sobel_inst_n51) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__0_ ( .D(n7532), .CK(
        i_clk), .RN(n7647), .Q(n4572), .QN(median_sobel_inst_n8) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__2_ ( .D(n7506), .CK(
        i_clk), .RN(n7647), .QN(median_sobel_inst_n465) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__1_ ( .D(
        median_sobel_inst_n542), .CK(i_clk), .RN(n4602), .Q(
        median_sobel_inst_n1022) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__0_ ( .D(
        median_sobel_inst_n583), .CK(i_clk), .RN(n7648), .Q(
        median_sobel_inst_net88785) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__5_ ( .D(
        median_sobel_inst_n570), .CK(i_clk), .RN(n7648), .Q(
        median_sobel_inst_n1027) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__1_ ( .D(
        median_sobel_inst_n534), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_net87821) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__1_ ( .D(
        median_sobel_inst_n590), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_n1045) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_14__4_ ( .D(
        median_sobel_inst_n531), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_n73) );
  DFFRHQX1 median_sobel_inst_cs_reg_1_ ( .D(median_sobel_inst_ns[1]), .CK(
        i_clk), .RN(n7671), .Q(median_sobel_inst_n1054) );
  DFFRHQX1 median_sobel_inst_med_sobel_r_reg ( .D(median_sobel_inst_n395), 
        .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_n1068) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__3_ ( .D(
        median_sobel_inst_n564), .CK(i_clk), .RN(n7626), .Q(n4793), .QN(
        median_sobel_inst_n448) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__3_ ( .D(
        median_sobel_inst_n540), .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_n1070) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__5_ ( .D(n7511), .CK(
        i_clk), .RN(n7650), .Q(n4559), .QN(median_sobel_inst_n934) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__7_ ( .D(n7524), .CK(
        i_clk), .RN(n4602), .Q(n4582), .QN(median_sobel_inst_n951) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__3_ ( .D(
        median_sobel_inst_n612), .CK(i_clk), .RN(n7649), .Q(
        median_sobel_inst_n96), .QN(n7498) );
  DFFRX4 median_sobel_inst_cnt_reg_0_ ( .D(median_sobel_inst_N109), .CK(i_clk), 
        .RN(n7665), .Q(median_sobel_inst_net82615), .QN(n7624) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__5_ ( .D(
        median_sobel_inst_n554), .CK(i_clk), .RN(n7650), .Q(
        median_sobel_inst_n323), .QN(n7505) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__3_ ( .D(
        median_sobel_inst_n628), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_n118) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__5_ ( .D(n7414), .CK(
        i_clk), .RN(n7648), .QN(median_sobel_inst_n1142) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__6_ ( .D(n7426), .CK(
        i_clk), .RN(n4602), .Q(n4576), .QN(median_sobel_inst_n1099) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__0_ ( .D(
        median_sobel_inst_n647), .CK(i_clk), .RN(n7650), .Q(
        median_sobel_inst_n941), .QN(n7540) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__3_ ( .D(n7415), .CK(
        i_clk), .RN(n7647), .QN(median_sobel_inst_n955) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__1_ ( .D(
        median_sobel_inst_n646), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_n948), .QN(n7541) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__6_ ( .D(n7510), .CK(
        i_clk), .RN(n7649), .Q(n4577), .QN(median_sobel_inst_n939) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__1_ ( .D(
        median_sobel_inst_n526), .CK(i_clk), .RN(n7649), .QN(n7392) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__4_ ( .D(n7534), .CK(
        i_clk), .RN(n7660), .Q(n4590), .QN(median_sobel_inst_n1153) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__6_ ( .D(n7520), .CK(
        i_clk), .RN(n7671), .QN(median_sobel_inst_n54) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__2_ ( .D(
        median_sobel_inst_n525), .CK(i_clk), .RN(n7649), .Q(
        median_sobel_inst_n82) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__7_ ( .D(n7518), .CK(
        i_clk), .RN(n7648), .QN(median_sobel_inst_n43) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__4_ ( .D(n7533), .CK(
        i_clk), .RN(n7669), .QN(median_sobel_inst_n41) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__7_ ( .D(n7523), .CK(
        i_clk), .RN(n7649), .Q(n4578), .QN(median_sobel_inst_n50) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__6_ ( .D(n7530), .CK(
        i_clk), .RN(n7665), .QN(median_sobel_inst_n39) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__3_ ( .D(n7521), .CK(
        i_clk), .RN(n7660), .QN(median_sobel_inst_n975) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__5_ ( .D(n7411), .CK(
        i_clk), .RN(n7671), .QN(median_sobel_inst_n339) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__2_ ( .D(n7535), .CK(
        i_clk), .RN(n7634), .QN(median_sobel_inst_n47) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__5_ ( .D(
        median_sobel_inst_n618), .CK(i_clk), .RN(n7660), .Q(
        median_sobel_inst_n994), .QN(n7548) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__4_ ( .D(n7517), .CK(
        i_clk), .RN(n7667), .QN(median_sobel_inst_n36) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__3_ ( .D(n7509), .CK(
        i_clk), .RN(n7653), .Q(n4584), .QN(median_sobel_inst_n864) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__2_ ( .D(n7529), .CK(
        i_clk), .RN(n7649), .QN(median_sobel_inst_n37) );
  DFFRX1 median_sobel_inst_G_reg_3__8_ ( .D(median_sobel_inst_n479), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[41]), .QN(n7576) );
  DFFRX1 median_sobel_inst_G_reg_3__7_ ( .D(median_sobel_inst_n483), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[40]), .QN(n7564) );
  DFFRX1 median_sobel_inst_G_reg_3__4_ ( .D(median_sobel_inst_n495), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[37]), .QN(n7572) );
  DFFRX1 median_sobel_inst_G_reg_3__2_ ( .D(median_sobel_inst_n503), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[35]), .QN(n7555) );
  DFFRX1 median_sobel_inst_G_reg_3__1_ ( .D(median_sobel_inst_n507), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[34]) );
  DFFRX1 median_sobel_inst_G_reg_3__10_ ( .D(median_sobel_inst_n471), .CK(
        i_clk), .RN(n7650), .Q(median_sobel_inst_G[43]), .QN(n7554) );
  DFFRX1 median_sobel_inst_G_reg_3__6_ ( .D(median_sobel_inst_n487), .CK(i_clk), .RN(n7663), .Q(median_sobel_inst_G[39]), .QN(n7575) );
  DFFRX1 median_sobel_inst_G_reg_3__3_ ( .D(median_sobel_inst_n499), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[36]), .QN(n7573) );
  DFFRX1 median_sobel_inst_G_reg_3__0_ ( .D(median_sobel_inst_n511), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[33]), .QN(n7552) );
  DFFRX1 median_sobel_inst_angle_reg_2__1_ ( .D(median_sobel_inst_n512), .CK(
        i_clk), .RN(n7671), .Q(median_sobel_inst_angle[4]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[4]), .CK(i_clk), .RN(n7647), .QN(
        median_sobel_inst_n206) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[5]), .CK(i_clk), .RN(n7649), .QN(
        median_sobel_inst_n207) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[18]), .CK(i_clk), .RN(n7649), 
        .QN(median_sobel_inst_n240) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[31]), .CK(i_clk), .RN(n7649), 
        .QN(median_sobel_inst_n272) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__4_ ( .D(
        median_sobel_inst_n1276), .CK(i_clk), .RN(n7647), .QN(
        median_sobel_inst_n274) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[35]), .CK(i_clk), .RN(n7663), 
        .QN(median_sobel_inst_n192) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[36]), .CK(i_clk), .RN(n7669), 
        .QN(median_sobel_inst_n193) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[34]), .CK(i_clk), .RN(n7660), 
        .QN(median_sobel_inst_n191) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__4_ ( .D(
        median_sobel_inst_n1239), .CK(i_clk), .RN(n7650), .QN(
        median_sobel_inst_n210) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__6_ ( .D(
        median_sobel_inst_n1274), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n276) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__6_ ( .D(
        median_sobel_inst_n1237), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n212) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__6_ ( .D(
        median_sobel_inst_n1243), .CK(i_clk), .RN(n7634), .QN(
        median_sobel_inst_n220) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__5_ ( .D(
        median_sobel_inst_n1275), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n275) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__5_ ( .D(
        median_sobel_inst_n1245), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n219) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__5_ ( .D(
        median_sobel_inst_n1238), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n211) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__7_ ( .D(
        median_sobel_inst_n1236), .CK(i_clk), .RN(n7626), .QN(
        median_sobel_inst_n213) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__7_ ( .D(
        median_sobel_inst_n1273), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n277) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__7_ ( .D(
        median_sobel_inst_n1241), .CK(i_clk), .RN(n7647), .QN(
        median_sobel_inst_n221) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__5_ ( .D(
        median_sobel_inst_n1234), .CK(i_clk), .RN(n7662), .QN(
        median_sobel_inst_n187) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__4_ ( .D(
        median_sobel_inst_n1235), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n186) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__6_ ( .D(
        median_sobel_inst_n1233), .CK(i_clk), .RN(n7669), .QN(
        median_sobel_inst_n188) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__4_ ( .D(
        median_sobel_inst_n1272), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n266) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__6_ ( .D(
        median_sobel_inst_n1270), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n268) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__5_ ( .D(
        median_sobel_inst_n1244), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n227) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__7_ ( .D(
        median_sobel_inst_n1232), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n189) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__5_ ( .D(
        median_sobel_inst_n1271), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n267) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__7_ ( .D(
        median_sobel_inst_n1269), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n269) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[33]), .CK(i_clk), .RN(n7645), 
        .QN(median_sobel_inst_n190) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__2_ ( .D(
        median_sobel_inst_n1286), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n200) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__4_ ( .D(
        median_sobel_inst_n1246), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n226) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__6_ ( .D(
        median_sobel_inst_n1242), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n228) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[6]), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n209) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__3_ ( .D(
        median_sobel_inst_n1285), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n201) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__7_ ( .D(
        median_sobel_inst_n1240), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n229) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__1_ ( .D(
        median_sobel_inst_n1287), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n199) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[26]), .CK(i_clk), .RN(n7645), 
        .QN(median_sobel_inst_n263) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[27]), .CK(i_clk), .RN(n7671), 
        .QN(median_sobel_inst_n264) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[1]), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n183) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[2]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n184) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[25]), .CK(i_clk), .RN(n7645), 
        .QN(median_sobel_inst_n262) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[28]), .CK(i_clk), .RN(n7671), 
        .QN(median_sobel_inst_n265) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[37]), .CK(i_clk), .RN(n7645), 
        .QN(median_sobel_inst_n198) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[0]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n182) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[3]), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_n185) );
  DFFRX1 median_sobel_inst_G_reg_2__8_ ( .D(median_sobel_inst_n476), .CK(i_clk), .RN(n7671), .Q(median_sobel_inst_G[30]) );
  DFFRX1 median_sobel_inst_G_reg_2__7_ ( .D(median_sobel_inst_n480), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[29]) );
  DFFRX1 median_sobel_inst_G_reg_3__5_ ( .D(median_sobel_inst_n491), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[38]), .QN(n7574) );
  DFFRX1 median_sobel_inst_G_reg_2__5_ ( .D(median_sobel_inst_n488), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[27]) );
  DFFRX1 median_sobel_inst_G_reg_2__4_ ( .D(median_sobel_inst_n492), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[26]) );
  DFFRX1 median_sobel_inst_G_reg_2__2_ ( .D(median_sobel_inst_n500), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[24]), .QN(n7551) );
  DFFRX1 median_sobel_inst_angle_reg_3__1_ ( .D(median_sobel_inst_n515), .CK(
        i_clk), .RN(n4602), .Q(median_sobel_inst_angle[6]), .QN(n4552) );
  DFFRX1 median_sobel_inst_angle_reg_2__0_ ( .D(median_sobel_inst_n516), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_angle[3]) );
  DFFRX1 median_sobel_inst_angle_reg_0__0_ ( .D(median_sobel_inst_n518), .CK(
        i_clk), .RN(n7649), .Q(median_sobel_inst_angle[0]) );
  DFFRX1 median_sobel_inst_angle_reg_1__0_ ( .D(median_sobel_inst_n517), .CK(
        i_clk), .RN(n7647), .QN(n7539) );
  DFFRX1 median_sobel_inst_G_reg_0__10_ ( .D(median_sobel_inst_n470), .CK(
        i_clk), .RN(n4602), .Q(median_sobel_inst_G[10]), .QN(n7557) );
  DFFRX1 median_sobel_inst_G_reg_3__9_ ( .D(median_sobel_inst_n475), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[42]), .QN(n7571) );
  DFFRX1 median_sobel_inst_G_reg_0__9_ ( .D(median_sobel_inst_n474), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[9]), .QN(n7565) );
  DFFRX1 median_sobel_inst_G_reg_2__9_ ( .D(median_sobel_inst_n472), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[31]) );
  DFFRX1 median_sobel_inst_G_reg_0__8_ ( .D(median_sobel_inst_n478), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[8]), .QN(n7570) );
  DFFRX1 median_sobel_inst_G_reg_0__7_ ( .D(median_sobel_inst_n482), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[7]), .QN(n7563) );
  DFFRX1 median_sobel_inst_G_reg_0__6_ ( .D(median_sobel_inst_n486), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[6]), .QN(n7569) );
  DFFRX1 median_sobel_inst_G_reg_2__6_ ( .D(median_sobel_inst_n484), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[28]) );
  DFFRX1 median_sobel_inst_G_reg_0__5_ ( .D(median_sobel_inst_n490), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[5]), .QN(n7568) );
  DFFRX1 median_sobel_inst_G_reg_0__4_ ( .D(median_sobel_inst_n494), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[4]), .QN(n7566) );
  DFFRX1 median_sobel_inst_G_reg_0__3_ ( .D(median_sobel_inst_n498), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[3]), .QN(n7567) );
  DFFRX1 median_sobel_inst_G_reg_2__3_ ( .D(median_sobel_inst_n496), .CK(i_clk), .RN(n7650), .Q(median_sobel_inst_G[25]) );
  DFFRX1 median_sobel_inst_G_reg_0__2_ ( .D(median_sobel_inst_n502), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[2]), .QN(n7558) );
  DFFRX1 median_sobel_inst_G_reg_0__1_ ( .D(median_sobel_inst_n506), .CK(i_clk), .RN(n7650), .Q(median_sobel_inst_G[1]) );
  DFFRX1 median_sobel_inst_G_reg_0__0_ ( .D(median_sobel_inst_n510), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[0]), .QN(n7556) );
  DFFRX1 median_sobel_inst_angle_reg_0__1_ ( .D(median_sobel_inst_n514), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_angle[1]) );
  DFFRX1 median_sobel_inst_angle_reg_1__1_ ( .D(median_sobel_inst_n513), .CK(
        i_clk), .RN(n7649), .Q(median_sobel_inst_angle[2]) );
  DFFRX1 median_sobel_inst_angle_reg_3__0_ ( .D(median_sobel_inst_n519), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_angle[5]), .QN(n4598) );
  DFFRX1 median_sobel_inst_G_reg_1__7_ ( .D(median_sobel_inst_n481), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[18]) );
  DFFRX1 median_sobel_inst_G_reg_1__5_ ( .D(median_sobel_inst_n489), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[16]), .QN(n7587) );
  DFFRX1 median_sobel_inst_G_reg_1__4_ ( .D(median_sobel_inst_n493), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[15]), .QN(n7560) );
  DFFRX1 median_sobel_inst_G_reg_1__2_ ( .D(median_sobel_inst_n501), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[13]), .QN(n7590) );
  DFFRX1 median_sobel_inst_G_reg_1__1_ ( .D(median_sobel_inst_n505), .CK(i_clk), .RN(n7649), .Q(median_sobel_inst_G[12]), .QN(n7592) );
  DFFRX1 median_sobel_inst_G_reg_2__1_ ( .D(median_sobel_inst_n504), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[23]), .QN(n7591) );
  DFFRX1 median_sobel_inst_G_reg_1__0_ ( .D(median_sobel_inst_n509), .CK(i_clk), .RN(n7650), .Q(median_sobel_inst_G[11]), .QN(n7588) );
  DFFRX1 median_sobel_inst_G_reg_2__0_ ( .D(median_sobel_inst_n508), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[22]), .QN(n7589) );
  DFFRX1 median_sobel_inst_G_reg_1__8_ ( .D(median_sobel_inst_n477), .CK(i_clk), .RN(n4602), .Q(median_sobel_inst_G[19]), .QN(n7562) );
  DFFRX1 median_sobel_inst_G_reg_1__10_ ( .D(median_sobel_inst_n469), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_G[21]), .QN(n7553) );
  DFFRX1 median_sobel_inst_G_reg_1__9_ ( .D(median_sobel_inst_n473), .CK(i_clk), .RN(n7650), .Q(median_sobel_inst_G[20]), .QN(n7559) );
  DFFRX1 median_sobel_inst_G_reg_1__6_ ( .D(median_sobel_inst_n485), .CK(i_clk), .RN(n7648), .Q(median_sobel_inst_G[17]), .QN(n7585) );
  DFFRX1 median_sobel_inst_G_reg_1__3_ ( .D(median_sobel_inst_n497), .CK(i_clk), .RN(n7647), .Q(median_sobel_inst_G[14]), .QN(n7561) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n856), .CK(i_clk), .RN(
        n7657), .QN(median_sobel_inst_u_median_filter_submodule_n827) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n855), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_u_median_filter_submodule_n893), .QN(
        n7459) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[0]), .CK(i_clk), .RN(
        n7648), .QN(median_sobel_inst_u_median_filter_submodule_n800) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_2_ ( .D(
        median_sobel_inst_data_d_r[2]), .CK(i_clk), .RN(n7634), .Q(
        median_sobel_inst_u_median_filter_submodule_n1078) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[4]), .CK(i_clk), .RN(
        n7658), .Q(median_sobel_inst_out_data_w[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[2]), .CK(i_clk), .RN(
        n7628), .QN(median_sobel_inst_u_median_filter_submodule_n841) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n860), .CK(i_clk), .RN(
        n7628), .Q(median_sobel_inst_u_median_filter_submodule_n920), .QN(
        n7468) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[7]), .CK(i_clk), .RN(
        n7628), .Q(n7384), .QN(
        median_sobel_inst_u_median_filter_submodule_n836) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a8_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[7]), .CK(i_clk), .RN(
        n7650), .Q(median_sobel_inst_u_median_filter_submodule_n1214) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[7]), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_median_filter_submodule_n1216) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[5]), .CK(i_clk), .RN(
        n7628), .Q(n7381), .QN(
        median_sobel_inst_u_median_filter_submodule_n776) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[1]), .CK(i_clk), .RN(
        n7629), .QN(median_sobel_inst_u_median_filter_submodule_n818) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_1_ ( .D(
        median_sobel_inst_data_f_r[1]), .CK(i_clk), .RN(n7650), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n943) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_1_ ( .D(
        median_sobel_inst_data_g_r[1]), .CK(i_clk), .RN(n7645), .QN(
        median_sobel_inst_u_median_filter_submodule_n882) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[4]), .CK(i_clk), .RN(
        n7629), .Q(n7383), .QN(
        median_sobel_inst_u_median_filter_submodule_n844) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a69_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a69_w), .CK(i_clk), .RN(
        n7629), .Q(median_sobel_inst_u_median_filter_submodule_n1433) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n857), .CK(i_clk), .RN(
        n7628), .Q(n7379), .QN(
        median_sobel_inst_u_median_filter_submodule_n830) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[6]), .CK(i_clk), .RN(
        n7635), .Q(median_sobel_inst_u_median_filter_submodule_n182) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a36_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a36_w), .CK(i_clk), .RN(
        n7668), .Q(median_sobel_inst_u_median_filter_submodule_n658) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[7]), .CK(i_clk), .RN(
        n7645), .Q(n7453), .QN(
        median_sobel_inst_u_median_filter_submodule_n778) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_1_ ( .D(
        median_sobel_inst_data_c_r[1]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_u_median_filter_submodule_n873) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_5_ ( .D(
        median_sobel_inst_data_e_r[5]), .CK(i_clk), .RN(n7645), .Q(n3559), 
        .QN(median_sobel_inst_u_median_filter_submodule_n905) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_1_ ( .D(
        median_sobel_inst_data_e_r[1]), .CK(i_clk), .RN(n7671), .Q(n3552), 
        .QN(median_sobel_inst_u_median_filter_submodule_n939) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_4_ ( .D(
        median_sobel_inst_n779), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n875) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_0_ ( .D(
        median_sobel_inst_data_e_r[0]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_u_median_filter_submodule_n906) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_6_ ( .D(
        median_sobel_inst_data_e_r[6]), .CK(i_clk), .RN(n7671), .Q(n3562), 
        .QN(median_sobel_inst_u_median_filter_submodule_n912) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_0_ ( .D(
        median_sobel_inst_n981), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n911) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_3_ ( .D(
        median_sobel_inst_data_f_r[3]), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n908) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_2_ ( .D(
        median_sobel_inst_data_i_r[2]), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n899) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_4_ ( .D(n3528), 
        .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n917) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_6_ ( .D(n5298), 
        .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n919) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_4_ ( .D(
        median_sobel_inst_data_e_r[4]), .CK(i_clk), .RN(n7671), .Q(n3541), 
        .QN(median_sobel_inst_u_median_filter_submodule_n940) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_7_ ( .D(
        median_sobel_inst_data_e_r[7]), .CK(i_clk), .RN(n7671), .Q(n3567), 
        .QN(median_sobel_inst_u_median_filter_submodule_n944) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[0]), .CK(i_clk), .RN(
        n7645), .QN(median_sobel_inst_u_median_filter_submodule_n810) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[1]), .CK(i_clk), .RN(
        n7656), .QN(median_sobel_inst_u_median_filter_submodule_n1592) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a3_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[3]), .CK(i_clk), .RN(
        n7657), .Q(n7464), .QN(
        median_sobel_inst_u_median_filter_submodule_n777) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[4]), .CK(i_clk), .RN(
        n7664), .Q(median_sobel_inst_u_median_filter_submodule_n892), .QN(
        n7374) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[3]), .CK(i_clk), .RN(
        n7665), .QN(median_sobel_inst_u_median_filter_submodule_n781) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N138), .CK(i_clk), .RN(
        n7628), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N127), .CK(i_clk), .RN(
        n7671), .QN(n7401) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N110), .CK(i_clk), .RN(
        n7643), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N10), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N113), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N80), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N440), .CK(i_clk), .RN(
        n7643), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N34), .CK(i_clk), .RN(
        n7669), .QN(n3568) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N220), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N240), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N117), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N164), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_n629) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]), .CK(i_clk), 
        .RN(n7671), .QN(median_sobel_inst_u_sobel_gradient_submodule_n22) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_16_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N175), .CK(i_clk), .RN(
        n7647), .Q(n7502), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n645) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .CK(
        i_clk), .RN(n7647), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n613), .QN(n4795) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]), .CK(i_clk), 
        .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_n608) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5]), .CK(i_clk), 
        .RN(n7669), .Q(n7377) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]), .CK(i_clk), 
        .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N128), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N42), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]), 
        .CK(i_clk), .RN(n7653), .Q(n7467), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n66) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1190), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N135), .CK(i_clk), .RN(
        n7631), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N69), .CK(i_clk), .RN(
        n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .CK(i_clk), 
        .RN(n7661), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), 
        .QN(n4561) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N160), .CK(i_clk), 
        .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_n341) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N680), .CK(i_clk), .RN(
        n7658), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N720), .CK(i_clk), .RN(
        n7635), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N700), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_n364) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N126), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N123), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N139), .CK(i_clk), .RN(
        n7653), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]), .CK(i_clk), 
        .RN(n7648), .Q(median_sobel_inst_u_sobel_gradient_submodule_n366) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_n369) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N136), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N120), .CK(i_clk), .RN(
        n7628), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .CK(i_clk), 
        .RN(n7653), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .CK(i_clk), 
        .RN(n7668), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), 
        .QN(n4558) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_4_ ( .D(
        median_sobel_inst_data_c_r[4]), .CK(i_clk), .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n909) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_4_ ( .D(
        median_sobel_inst_data_g_r[4]), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n956) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .CK(i_clk), 
        .RN(n7649), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_6_ ( .D(
        median_sobel_inst_data_b_r[6]), .CK(i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n883) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .CK(i_clk), 
        .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]), .CK(
        i_clk), .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]), .CK(i_clk), 
        .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]), .CK(
        i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]), .CK(i_clk), 
        .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]), .CK(i_clk), 
        .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]), .CK(
        i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .CK(i_clk), 
        .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .CK(i_clk), 
        .RN(n7662), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .CK(i_clk), 
        .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .CK(i_clk), 
        .RN(n7634), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .CK(i_clk), 
        .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .CK(i_clk), 
        .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N148), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_N164) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N149), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_N165) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n319), .CK(i_clk), .RN(
        n7666), .Q(median_sobel_inst_u_sobel_gradient_submodule_N118) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_1_ ( .D(
        median_sobel_inst_data_i_r[1]), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n897) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N147), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_N163) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_N159) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1]), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_N160) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_N161) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_N162) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N107), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N108), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_6_ ( .D(
        median_sobel_inst_data_i_r[6]), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n880) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .CK(
        i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n49) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N154), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_n70) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N160), .CK(i_clk), .RN(
        n7669), .QN(median_sobel_inst_u_sobel_gradient_submodule_n396) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1]), .CK(
        i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n61) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_n70), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_n51) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N168), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sobel_gradient_submodule_n71) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .CK(
        i_clk), .RN(n7660), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n640) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .CK(
        i_clk), .RN(n7662), .Q(n7494), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n638) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N169), .CK(i_clk), .RN(
        n7663), .QN(median_sobel_inst_u_sobel_gradient_submodule_n634) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N171), .CK(i_clk), .RN(
        n7649), .QN(median_sobel_inst_u_sobel_gradient_submodule_n644) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n366), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]), .CK(i_clk), 
        .RN(n7634), .QN(n7470) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]), .CK(i_clk), 
        .RN(n7669), .QN(n7448) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N17), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N73), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N41), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_4_ ( .D(
        median_sobel_inst_data_h_r[4]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n877) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p4_r_reg_1_ ( .D(n4525), .CK(i_clk), .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_n50)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]), 
        .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n312), .QN(n4794) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]), .CK(i_clk), 
        .RN(n7660), .QN(median_sobel_inst_u_sobel_gradient_submodule_n1) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_4_ ( .D(n5531), 
        .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n951) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]), .CK(i_clk), 
        .RN(n7663), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]), .CK(i_clk), 
        .RN(n7647), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_15_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N174), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]), 
        .CK(i_clk), .RN(n7660), .Q(n7499), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n33) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]), 
        .CK(i_clk), .RN(n7671), .Q(n7393), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n31) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N74), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_n320) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_sobel_data_w[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]), .CK(
        i_clk), .RN(n7643), .Q(median_sobel_inst_sobel_data_w[10]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_17_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N176), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]), .CK(i_clk), 
        .RN(n7643), .QN(median_sobel_inst_u_sobel_gradient_submodule_N78) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]), .CK(i_clk), 
        .RN(n7643), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]), .CK(i_clk), 
        .RN(n7643), .Q(n7593) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_7_ ( .D(
        median_sobel_inst_data_h_r[7]), .CK(i_clk), .RN(n7643), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n898) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_7_ ( .D(
        median_sobel_inst_data_b_r[7]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n874) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]), .CK(
        i_clk), .RN(n7671), .Q(median_sobel_inst_sobel_data_w[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]), .CK(
        i_clk), .RN(n7663), .Q(median_sobel_inst_sobel_data_w[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]), .CK(i_clk), 
        .RN(n7669), .QN(median_sobel_inst_u_sobel_gradient_submodule_n627) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]), .CK(i_clk), 
        .RN(n7671), .QN(median_sobel_inst_u_sobel_gradient_submodule_n618) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N132), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N133), .CK(i_clk), .RN(
        n7649), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N129), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N137), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_1_ ( .D(
        median_sobel_inst_data_g_r[1]), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n59) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n110), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_sober_compare_submodule_n297) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n111), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sober_compare_submodule_n201) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n112), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sober_compare_submodule_n17) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n113), .CK(i_clk), .RN(
        n7641), .Q(median_sobel_inst_u_sober_compare_submodule_n299) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n132), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n354) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n133), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n365) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n109), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n356) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n96), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n362) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n100), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n401) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n101), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n398) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n103), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n397) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n105), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n406) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n106), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n405) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n126), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n411) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n128), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n409) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n129), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n363) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n134), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n353) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n135), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n366) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n136), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n351) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n137), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n414) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n139), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n352) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sober_compare_submodule_n276) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n122), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n70) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n124), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n412) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n127), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n410) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n117), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n408) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n121), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n413) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n94), .CK(i_clk), .RN(
        n7641), .Q(n7478), .QN(
        median_sobel_inst_u_sober_compare_submodule_n404) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n90), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sober_compare_submodule_n265) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n93), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sober_compare_submodule_n266) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n89), .CK(i_clk), .RN(
        n7649), .Q(median_sobel_inst_u_sober_compare_submodule_n267) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]), .CK(i_clk), 
        .RN(n7659), .QN(median_sobel_inst_u_sober_compare_submodule_n270) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]), .CK(i_clk), 
        .RN(n7671), .QN(median_sobel_inst_u_sober_compare_submodule_n321) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]), .CK(i_clk), 
        .RN(n7663), .Q(median_sobel_inst_u_sober_compare_submodule_n41) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sober_compare_submodule_temp_a_r[7]), .QN(n7402) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]), .CK(i_clk), 
        .RN(n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n322) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n91), .CK(i_clk), .RN(
        n4602), .Q(median_sobel_inst_u_sober_compare_submodule_n33) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n99), .CK(i_clk), .RN(
        n7639), .QN(median_sobel_inst_u_sober_compare_submodule_n259) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n116), .CK(i_clk), .RN(
        n7639), .Q(median_sobel_inst_u_sober_compare_submodule_n302) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n114), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sober_compare_submodule_n19) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n115), .CK(i_clk), .RN(
        n7639), .Q(median_sobel_inst_u_sober_compare_submodule_n20) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N159), .CK(i_clk), .RN(
        n7668), .Q(median_sobel_inst_u_sobel_gradient_submodule_n636) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N101), .CK(i_clk), .RN(
        n7655), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n44) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1030), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n8) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_1_ ( .D(
        median_sobel_inst_data_b_r[1]), .CK(i_clk), .RN(n7632), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n871) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__4_ ( .D(
        median_sobel_inst_n563), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_n159) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__3_ ( .D(
        median_sobel_inst_n596), .CK(i_clk), .RN(n7650), .Q(
        median_sobel_inst_n1015) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__3_ ( .D(
        median_sobel_inst_n572), .CK(i_clk), .RN(n7653), .Q(
        median_sobel_inst_n1035) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[6]), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_median_filter_submodule_net84247) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[1]), .CK(i_clk), .RN(
        n7650), .Q(median_sobel_inst_u_median_filter_submodule_n1244) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N163), .CK(i_clk), .RN(
        n7665), .QN(median_sobel_inst_u_sobel_gradient_submodule_n106) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[2]), .CK(i_clk), .RN(
        n7656), .Q(median_sobel_inst_u_median_filter_submodule_n1138) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[2]), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_median_filter_submodule_net84165) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_0_ ( .D(
        median_sobel_inst_data_c_r[0]), .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n915) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__1_ ( .D(
        median_sobel_inst_n622), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_n303), .QN(n7620) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__2_ ( .D(
        median_sobel_inst_n581), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_n94), .QN(n7618) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__6_ ( .D(
        median_sobel_inst_n553), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_n324), .QN(n7617) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__2_ ( .D(
        median_sobel_inst_n589), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_n312), .QN(n7614) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__1_ ( .D(
        median_sobel_inst_n582), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_n63), .QN(n7611) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__3_ ( .D(
        median_sobel_inst_n556), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_n321), .QN(n7605) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .CK(
        i_clk), .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n360), .QN(n7542) );
  DFFRX1 conv_inst_i_input_done_r_reg ( .D(conv_calc_done_r), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_n187), .QN(n7503) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_11_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N170), .CK(i_clk), .RN(
        n7628), .Q(n7489), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n624) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[1]), .CK(i_clk), .RN(
        n7647), .Q(median_sobel_inst_u_median_filter_submodule_n222), .QN(
        n7487) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__6_ ( .D(
        median_sobel_inst_n561), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_n1050), .QN(n7484) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]), .CK(i_clk), 
        .RN(n7645), .QN(n7481) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]), .CK(i_clk), 
        .RN(n7626), .QN(n7471) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_0_ ( .D(
        median_sobel_inst_data_g_r[0]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n886) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1040), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_n375) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__3_ ( .D(
        median_sobel_inst_n588), .CK(i_clk), .RN(n7665), .Q(
        median_sobel_inst_n1011), .QN(n7435) );
  DFFRX2 cnt_reg_7_ ( .D(n3509), .CK(i_clk), .RN(n7667), .Q(cnt[7]), .QN(n7405) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[9]), .CK(
        i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n617), .QN(n7395) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N150), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_N166) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]), .CK(
        i_clk), .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[19]), .CK(i_clk), .RN(n7662), 
        .QN(median_sobel_inst_n241) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .CK(i_clk), 
        .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .CK(i_clk), 
        .RN(n7670), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .CK(i_clk), .RN(
        n7661), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), .CK(i_clk), 
        .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[29]), .CK(i_clk), .RN(n7661), 
        .QN(median_sobel_inst_n270) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__6_ ( .D(
        median_sobel_inst_n1262), .CK(i_clk), .RN(n7669), .QN(
        median_sobel_inst_n252) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__4_ ( .D(
        median_sobel_inst_n1266), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n250) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__7_ ( .D(
        median_sobel_inst_n1251), .CK(i_clk), .RN(n4602), .QN(
        median_sobel_inst_n245) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__7_ ( .D(
        median_sobel_inst_n1260), .CK(i_clk), .RN(n7647), .QN(
        median_sobel_inst_n253) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[12]), .CK(i_clk), .RN(n7669), 
        .QN(median_sobel_inst_n230) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[14]), .CK(i_clk), .RN(n7660), 
        .QN(median_sobel_inst_n232) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__5_ ( .D(
        median_sobel_inst_n1256), .CK(i_clk), .RN(n7626), .QN(
        median_sobel_inst_n235) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__6_ ( .D(
        median_sobel_inst_n1254), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n236) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__5_ ( .D(
        median_sobel_inst_n1264), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n251) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__6_ ( .D(
        median_sobel_inst_n1280), .CK(i_clk), .RN(n7662), .QN(
        median_sobel_inst_n196) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__5_ ( .D(
        median_sobel_inst_n1282), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n195) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[16]), .CK(i_clk), .RN(n7671), 
        .QN(median_sobel_inst_n238) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__5_ ( .D(
        median_sobel_inst_n1255), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n243) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__4_ ( .D(
        median_sobel_inst_n1258), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n234) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__4_ ( .D(
        median_sobel_inst_n1283), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n202) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__7_ ( .D(
        median_sobel_inst_n1259), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n261) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__7_ ( .D(
        median_sobel_inst_n1277), .CK(i_clk), .RN(n7626), .QN(
        median_sobel_inst_n205) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__7_ ( .D(
        median_sobel_inst_n1278), .CK(i_clk), .RN(n7649), .QN(
        median_sobel_inst_n197) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__6_ ( .D(
        median_sobel_inst_n1253), .CK(i_clk), .RN(n7669), .QN(
        median_sobel_inst_n244) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[13]), .CK(i_clk), .RN(n7626), 
        .QN(median_sobel_inst_n231) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[20]), .CK(i_clk), .RN(n7669), 
        .QN(median_sobel_inst_n246) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[30]), .CK(i_clk), .RN(n7663), 
        .QN(median_sobel_inst_n271) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[9]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n216) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[21]), .CK(i_clk), .RN(n7648), 
        .QN(median_sobel_inst_n247) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__4_ ( .D(
        median_sobel_inst_n1265), .CK(i_clk), .RN(n7669), .QN(
        median_sobel_inst_n258) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[32]), .CK(i_clk), .RN(n7669), 
        .QN(median_sobel_inst_n273) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[17]), .CK(i_clk), .RN(n7660), 
        .QN(median_sobel_inst_n239) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[23]), .CK(i_clk), .RN(n7671), 
        .QN(median_sobel_inst_n249) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[10]), .CK(i_clk), .RN(n7649), 
        .QN(median_sobel_inst_n217) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]), .CK(
        i_clk), .RN(n7635), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]), .CK(
        i_clk), .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__2_ ( .D(
        median_sobel_inst_net67714), .CK(i_clk), .RN(n7669), .QN(
        median_sobel_inst_n256) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__4_ ( .D(
        median_sobel_inst_n1257), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n242) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__4_ ( .D(
        median_sobel_inst_n1284), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n194) );
  DFFRX1 x_r_reg_1_ ( .D(N786), .CK(i_clk), .RN(n7669), .Q(x_r[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N109), .CK(i_clk), .RN(
        n7629), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .CK(i_clk), 
        .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .CK(i_clk), 
        .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N115), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__6_ ( .D(
        median_sobel_inst_n1279), .CK(i_clk), .RN(n7626), .QN(
        median_sobel_inst_n204) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__3_ ( .D(
        median_sobel_inst_n1267), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_n257) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__1_ ( .D(
        median_sobel_inst_n1268), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n255) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__5_ ( .D(
        median_sobel_inst_n1281), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n203) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__2_ ( .D(
        median_sobel_inst_n1249), .CK(i_clk), .RN(n7662), .QN(
        median_sobel_inst_n224) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__1_ ( .D(
        median_sobel_inst_n1250), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n223) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[15]), .CK(i_clk), .RN(n7669), 
        .QN(median_sobel_inst_n233) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1260), .CK(i_clk), 
        .RN(n7632), .Q(median_sobel_inst_sobel_out_data_w[10]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__6_ ( .D(
        median_sobel_inst_n1261), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n260) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__5_ ( .D(
        median_sobel_inst_n1263), .CK(i_clk), .RN(n7634), .QN(
        median_sobel_inst_n259) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[11]), .CK(i_clk), .RN(n7660), 
        .QN(median_sobel_inst_n222) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__3_ ( .D(
        median_sobel_inst_n1248), .CK(i_clk), .RN(n7662), .QN(
        median_sobel_inst_n225) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__7_ ( .D(
        median_sobel_inst_n1252), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n237) );
  DFFRHQX1 y_r_reg_0_ ( .D(N815), .CK(i_clk), .RN(n7625), .Q(y_r[0]) );
  DFFRHQX1 sram_addr_ready_r_reg_2__2_ ( .D(sram_addr_wait_r[20]), .CK(i_clk), 
        .RN(n7626), .Q(n857) );
  DFFRHQX1 sram_addr_ready_r_reg_2__4_ ( .D(sram_addr_wait_r[22]), .CK(i_clk), 
        .RN(n7660), .Q(n869) );
  DFFRHQX1 sram_addr_ready_r_reg_2__5_ ( .D(sram_addr_wait_r[23]), .CK(i_clk), 
        .RN(n7649), .Q(n871) );
  DFFRHQX1 sram_addr_ready_r_reg_2__1_ ( .D(sram_addr_wait_r[19]), .CK(i_clk), 
        .RN(n7625), .Q(n861) );
  DFFRHQX1 sram_addr_ready_r_reg_2__3_ ( .D(sram_addr_wait_r[21]), .CK(i_clk), 
        .RN(n7660), .Q(n867) );
  DFFRHQX1 sram_addr_ready_r_reg_2__7_ ( .D(sram_addr_wait_r[25]), .CK(i_clk), 
        .RN(n7625), .Q(n859) );
  DFFRHQX1 sram_addr_ready_r_reg_2__6_ ( .D(sram_addr_wait_r[24]), .CK(i_clk), 
        .RN(n7634), .Q(n865) );
  DFFRHQX1 sram_addr_ready_r_reg_2__8_ ( .D(sram_addr_wait_r[26]), .CK(i_clk), 
        .RN(n7625), .Q(n863) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[22]), .CK(i_clk), .RN(n7654), 
        .QN(median_sobel_inst_n248) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[7]), .CK(i_clk), .RN(n7669), .QN(
        median_sobel_inst_n214) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__1_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[8]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n215) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__4_ ( .D(
        median_sobel_inst_n1247), .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_n218) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_6_ ( .D(conv_inst_N72), .CK(i_clk), 
        .RN(n7649), .Q(conv_result_w[6]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__2_ ( .D(median_sobel_inst_n945), .CK(i_clk), .RN(n7626), .QN(median_sobel_inst_n208) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_2_ ( .D(
        median_sobel_inst_data_e_r[2]), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_u_median_filter_submodule_n959) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_3_ ( .D(
        median_sobel_inst_data_e_r[3]), .CK(i_clk), .RN(n7671), .Q(n3554), 
        .QN(median_sobel_inst_u_median_filter_submodule_n957) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_5_ ( .D(n4063), 
        .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_u_median_filter_submodule_n889) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[24]), .CK(i_clk), .RN(n7664), 
        .QN(median_sobel_inst_n254) );
  DFFRX1 sram_addr_ready_r_reg_0__1_ ( .D(sram_addr_wait_r[1]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[1]), .QN(n405) );
  DFFRX1 sram_addr_ready_r_reg_0__5_ ( .D(sram_addr_wait_r[5]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[5]), .QN(n409) );
  DFFRX1 sram_addr_ready_r_reg_0__2_ ( .D(sram_addr_wait_r[2]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[2]), .QN(n406) );
  DFFRX1 sram_addr_ready_r_reg_0__6_ ( .D(sram_addr_wait_r[6]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[6]), .QN(n410) );
  DFFRX1 sram_addr_ready_r_reg_0__8_ ( .D(sram_addr_wait_r[8]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[8]), .QN(n412) );
  DFFRX1 sram_addr_ready_r_reg_0__7_ ( .D(sram_addr_wait_r[7]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[7]), .QN(n411) );
  DFFRX1 sram_addr_ready_r_reg_0__4_ ( .D(sram_addr_wait_r[4]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[4]), .QN(n408) );
  DFFRX1 sram_addr_ready_r_reg_0__3_ ( .D(sram_addr_wait_r[3]), .CK(i_clk), 
        .RN(n7671), .Q(sram_addr_w[3]), .QN(n407) );
  DFFRX1 sram_addr_ready_r_reg_3__1_ ( .D(sram_addr_wait_r[28]), .CK(i_clk), 
        .RN(n7669), .Q(sram_addr_w[16]), .QN(n429) );
  DFFRX1 sram_addr_ready_r_reg_3__4_ ( .D(sram_addr_wait_r[31]), .CK(i_clk), 
        .RN(n7660), .Q(sram_addr_w[19]), .QN(n432) );
  DFFRX1 sram_addr_ready_r_reg_3__7_ ( .D(sram_addr_wait_r[34]), .CK(i_clk), 
        .RN(n7663), .Q(sram_addr_w[22]), .QN(n435) );
  DFFRX1 sram_addr_ready_r_reg_3__8_ ( .D(sram_addr_wait_r[35]), .CK(i_clk), 
        .RN(n7662), .Q(sram_addr_w[23]), .QN(n436) );
  DFFRX1 sram_addr_ready_r_reg_3__6_ ( .D(sram_addr_wait_r[33]), .CK(i_clk), 
        .RN(n7634), .Q(sram_addr_w[21]), .QN(n434) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[0]), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_median_filter_submodule_n965) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_3_ ( .D(
        median_sobel_inst_data_g_r[3]), .CK(i_clk), .RN(n7628), .QN(
        median_sobel_inst_u_median_filter_submodule_n913) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_3_ ( .D(conv_inst_N69), .CK(i_clk), 
        .RN(n7631), .Q(conv_result_w[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_1_ ( .D(
        median_sobel_inst_n773), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n910) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_3_ ( .D(
        median_sobel_inst_data_c_r[3]), .CK(i_clk), .RN(n7634), .QN(
        median_sobel_inst_u_median_filter_submodule_n884) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n7660), .QN(
        median_sobel_inst_u_median_filter_submodule_n902) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_2_ ( .D(n3527), 
        .CK(i_clk), .RN(n7663), .QN(
        median_sobel_inst_u_median_filter_submodule_n945) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_7_ ( .D(
        median_sobel_inst_n749), .CK(i_clk), .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n876) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_2_ ( .D(
        median_sobel_inst_data_a_r[2]), .CK(i_clk), .RN(n7631), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n900) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_5_ ( .D(
        median_sobel_inst_data_i_r[5]), .CK(i_clk), .RN(n7628), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n916) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_4_ ( .D(
        median_sobel_inst_data_i_r[4]), .CK(i_clk), .RN(n7657), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n879) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_7_ ( .D(n5530), 
        .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n961) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_6_ ( .D(
        median_sobel_inst_n759), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n1517) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_5_ ( .D(n7622), 
        .CK(i_clk), .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n901) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_0_ ( .D(
        median_sobel_inst_data_a_r[0]), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n948) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_3_ ( .D(
        median_sobel_inst_data_i_r[3]), .CK(i_clk), .RN(n7668), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n949) );
  DFFRX1 conv_inst_data_bcd_r_reg_3_ ( .D(conv_inst_data_bcd_w[3]), .CK(i_clk), 
        .RN(n7631), .QN(n7616) );
  DFFRX1 conv_inst_data_bcd_r_reg_2_ ( .D(conv_inst_data_bcd_w[2]), .CK(i_clk), 
        .RN(n7631), .QN(conv_inst_n264) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n119), .CK(i_clk), .RN(
        n7632), .QN(median_sobel_inst_u_sober_compare_submodule_n67) );
  DFFRX1 conv_inst_data_abc_r_reg_3_ ( .D(conv_inst_data_abc_w[3]), .CK(i_clk), 
        .RN(n7635), .QN(conv_inst_n257) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_0_ ( .D(
        median_sobel_inst_n701), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n1595) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n107), .CK(i_clk), .RN(
        n7669), .QN(median_sobel_inst_u_sober_compare_submodule_n150) );
  DFFRX1 z_r_reg_4_ ( .D(N792), .CK(i_clk), .RN(n7634), .Q(z_r[4]) );
  DFFRX1 z_r_reg_2_ ( .D(N790), .CK(i_clk), .RN(n7634), .Q(z_r[2]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n118), .CK(i_clk), .RN(
        n7632), .QN(median_sobel_inst_u_sober_compare_submodule_n66) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]), .CK(i_clk), 
        .RN(n7648), .Q(median_sobel_inst_u_sobel_gradient_submodule_n358) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n130), .CK(i_clk), .RN(
        n7632), .Q(median_sobel_inst_u_sober_compare_submodule_n278) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n120), .CK(i_clk), .RN(
        n7632), .QN(median_sobel_inst_u_sober_compare_submodule_n68) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n97), .CK(i_clk), .RN(
        n7632), .Q(median_sobel_inst_u_sober_compare_submodule_n21), .QN(n4597) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_18_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N177), .CK(i_clk), .RN(
        n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_n384) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n125), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sober_compare_submodule_n300) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n108), .CK(i_clk), .RN(
        n7669), .QN(median_sobel_inst_u_sober_compare_submodule_n149) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_15_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n592), .CK(i_clk), .RN(
        n7626), .QN(median_sobel_inst_u_sobel_gradient_submodule_n643) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[10]), .CK(i_clk), 
        .RN(n7632), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n65) );
  DFFRX1 conv_inst_conv_2_r_reg_16_ ( .D(conv_inst_N2520), .CK(i_clk), .RN(
        n7671), .Q(conv_inst_conv_2_r[16]), .QN(conv_inst_n278) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[10]), .CK(i_clk), 
        .RN(n4602), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n64) );
  DFFRHQX1 x_origin_r_reg_2_ ( .D(n487), .CK(i_clk), .RN(n7635), .Q(n887) );
  DFFRX1 out_data_ready_r_reg_8_ ( .D(out_data_wait_r[8]), .CK(i_clk), .RN(
        n7671), .Q(o_out_data[8]) );
  DFFRX1 out_data_ready_r_reg_9_ ( .D(out_data_wait_r[9]), .CK(i_clk), .RN(
        n7663), .Q(o_out_data[9]) );
  DFFRX1 out_data_ready_r_reg_11_ ( .D(out_data_wait_r[11]), .CK(i_clk), .RN(
        n7649), .Q(o_out_data[11]) );
  DFFRX1 out_data_ready_r_reg_12_ ( .D(out_data_wait_r[12]), .CK(i_clk), .RN(
        n7660), .Q(o_out_data[12]) );
  DFFRX1 out_data_ready_r_reg_13_ ( .D(out_data_wait_r[13]), .CK(i_clk), .RN(
        n7669), .Q(o_out_data[13]) );
  DFFRX1 out_data_ready_r_reg_10_ ( .D(out_data_wait_r[10]), .CK(i_clk), .RN(
        n7671), .Q(o_out_data[10]) );
  DFFRX2 cnt_reg_9_ ( .D(n3507), .CK(i_clk), .RN(n7670), .Q(cnt[9]), .QN(n4790) );
  DFFRX2 cnt_reg_8_ ( .D(n3508), .CK(i_clk), .RN(n7654), .Q(cnt[8]), .QN(n7417) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_n329) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_n318) );
  DFFRX1 median_sobel_inst_cnt_reg_4_ ( .D(median_sobel_inst_N113), .CK(i_clk), 
        .RN(n7661), .Q(median_sobel_inst_cnt_4_), .QN(median_sobel_inst_n399)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N75), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]), .CK(i_clk), 
        .RN(n7669), .QN(n7387) );
  DFFRX2 conv_inst_cs_reg_1_ ( .D(n3526), .CK(i_clk), .RN(n7658), .Q(n7399), 
        .QN(conv_inst_n25) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__2_ ( .D(
        median_sobel_inst_n549), .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_n91) );
  DFFRX2 cnt_reg_5_ ( .D(n3511), .CK(i_clk), .RN(n7634), .Q(cnt[5]), .QN(n7538) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n88), .CK(i_clk), .RN(
        n7660), .Q(n7386), .QN(median_sobel_inst_u_sober_compare_submodule_n65) );
  DFFRX1 median_sobel_inst_cnt_reg_2_ ( .D(median_sobel_inst_N111), .CK(i_clk), 
        .RN(n7661), .Q(n7480), .QN(median_sobel_inst_n400) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]), .CK(i_clk), 
        .RN(n7649), .Q(n7403) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]), .CK(i_clk), 
        .RN(n7653), .Q(median_sobel_inst_u_sober_compare_submodule_n272), .QN(
        n7406) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__7_ ( .D(
        median_sobel_inst_n600), .CK(i_clk), .RN(n7669), .Q(n7469), .QN(
        median_sobel_inst_n984) );
  DFFRX1 median_sobel_inst_cnt_reg_5_ ( .D(median_sobel_inst_N114), .CK(i_clk), 
        .RN(n7659), .QN(median_sobel_inst_n180) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[1]), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_median_filter_submodule_n234) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__0_ ( .D(
        median_sobel_inst_n559), .CK(i_clk), .RN(n7655), .QN(
        median_sobel_inst_n1039) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_12_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N155), .CK(i_clk), 
        .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]) );
  DFFRX1 conv_inst_cs_reg_0_ ( .D(conv_inst_ns_0_), .CK(i_clk), .RN(n7660), 
        .Q(n7501), .QN(conv_inst_n16) );
  DFFRX1 conv_inst_conv_1_r_reg_15_ ( .D(conv_inst_N2340), .CK(i_clk), .RN(
        n7671), .QN(conv_inst_n165) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]), .CK(i_clk), 
        .RN(n7669), .Q(n3547), .QN(n7466) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a8_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[6]), .CK(i_clk), .RN(
        n7636), .Q(median_sobel_inst_u_median_filter_submodule_n216) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__2_ ( .D(
        median_sobel_inst_n613), .CK(i_clk), .RN(n7658), .Q(
        median_sobel_inst_n989), .QN(n7436) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]), .CK(i_clk), 
        .RN(n7631), .Q(median_sobel_inst_u_sobel_gradient_submodule_n335) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_13_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N156), .CK(i_clk), 
        .RN(n7647), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[7]), .CK(i_clk), .RN(
        n7628), .QN(median_sobel_inst_u_median_filter_submodule_n1209) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]), 
        .CK(i_clk), .RN(n7636), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n54) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__5_ ( .D(
        median_sobel_inst_n562), .CK(i_clk), .RN(n7649), .Q(
        median_sobel_inst_n1056), .QN(n7547) );
  DFFRHQX2 median_sobel_inst_u_sober_compare_submodule_cnt_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N29), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sober_compare_submodule_n44) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__7_ ( .D(
        median_sobel_inst_n576), .CK(i_clk), .RN(n7666), .Q(n7376), .QN(
        median_sobel_inst_n1026) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_0_ ( .D(
        median_sobel_inst_data_f_r[0]), .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n960) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__6_ ( .D(
        median_sobel_inst_n625), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_n300), .QN(n7408) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__4_ ( .D(
        median_sobel_inst_n587), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_n314), .QN(n7609) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]), .CK(i_clk), 
        .RN(n7671), .QN(n7463) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__4_ ( .D(
        median_sobel_inst_n555), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_n322), .QN(n7607) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__0_ ( .D(
        median_sobel_inst_n615), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_n982), .QN(n7615) );
  DFFRX1 median_sobel_inst_cs_reg_0_ ( .D(median_sobel_inst_ns[0]), .CK(i_clk), 
        .RN(n7669), .Q(n7491), .QN(median_sobel_inst_n394) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]), .CK(i_clk), 
        .RN(n7643), .QN(n7457) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__5_ ( .D(
        median_sobel_inst_n634), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_net90977), .QN(n7500) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sober_compare_submodule_temp_a_r[4]), .QN(n7477) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N105), .CK(i_clk), .RN(
        n7657), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n35) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[2]), .CK(i_clk), .RN(
        n7666), .Q(median_sobel_inst_u_median_filter_submodule_n151), .QN(
        n7600) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__6_ ( .D(
        median_sobel_inst_n609), .CK(i_clk), .RN(n7656), .Q(
        median_sobel_inst_n84), .QN(n7437) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N166), .CK(i_clk), .RN(
        n7669), .Q(n7397), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n623) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__3_ ( .D(
        median_sobel_inst_n580), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_n70), .QN(n7606) );
  DFFRHQX2 x_origin_r_reg_1_ ( .D(n488), .CK(i_clk), .RN(n7625), .Q(
        x_origin_r_1_) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_0_ ( .D(
        median_sobel_inst_data_h_r[0]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n946) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p4_r_reg_3_ ( .D(
        median_sobel_inst_data_d_r[3]), .CK(i_clk), .RN(n7629), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n950) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[2]), .CK(i_clk), .RN(
        n7625), .Q(median_sobel_inst_u_median_filter_submodule_n176) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__1_ ( .D(
        median_sobel_inst_n614), .CK(i_clk), .RN(n7669), .Q(n4550), .QN(
        median_sobel_inst_n963) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]), .CK(i_clk), 
        .RN(n7663), .Q(median_sobel_inst_u_sobel_gradient_submodule_n399), 
        .QN(n4510) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__3_ ( .D(
        median_sobel_inst_n532), .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_n962) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N40), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__6_ ( .D(
        median_sobel_inst_n593), .CK(i_clk), .RN(n7659), .Q(
        median_sobel_inst_n56), .QN(n7431) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]), 
        .CK(i_clk), .RN(n7671), .Q(n7451), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n119) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_5_ ( .D(
        median_sobel_inst_data_f_r[5]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n954) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N39), .CK(i_clk), .RN(
        n7631), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N20), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N167), .CK(i_clk), 
        .RN(n7657), .Q(median_sobel_inst_u_sobel_gradient_submodule_n52) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__1_ ( .D(
        median_sobel_inst_n558), .CK(i_clk), .RN(n7626), .Q(n3538), .QN(
        median_sobel_inst_net86439) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__7_ ( .D(
        median_sobel_inst_n584), .CK(i_clk), .RN(n7626), .QN(
        median_sobel_inst_n7) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]), 
        .CK(i_clk), .RN(n7659), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n67) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[5]), .CK(i_clk), .RN(
        n7667), .Q(median_sobel_inst_u_median_filter_submodule_n993) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__5_ ( .D(
        median_sobel_inst_n594), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_n1051), .QN(n7577) );
  DFFRX1 display_done_r_reg ( .D(n7676), .CK(i_clk), .RN(n7671), .Q(n4533), 
        .QN(n1890) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[3]), .CK(i_clk), 
        .RN(n7636), .Q(median_sobel_inst_u_sobel_gradient_submodule_n72) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N161), .CK(i_clk), .RN(
        n7664), .Q(n7444), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n398) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N19), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N30), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_5_ ( .D(
        median_sobel_inst_data_b_r[5]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n885) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_2_ ( .D(
        median_sobel_inst_data_b_r[2]), .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n888) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1579), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_median_filter_submodule_n1076) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__4_ ( .D(
        median_sobel_inst_n603), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_n142) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__0_ ( .D(
        median_sobel_inst_n535), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_n62) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__5_ ( .D(
        median_sobel_inst_n610), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_n97), .QN(n7608) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]), .CK(i_clk), 
        .RN(n7663), .QN(n7438) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__6_ ( .D(
        median_sobel_inst_n633), .CK(i_clk), .RN(n7634), .Q(n4574), .QN(
        median_sobel_inst_n971) );
  DFFRX2 input_data_ready_r_reg_22_ ( .D(N739), .CK(i_clk), .RN(n7625), .Q(
        input_data_ready_r[22]), .QN(n7579) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__0_ ( .D(
        median_sobel_inst_n543), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_n1008) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p4_r_reg_2_ ( .D(
        median_sobel_inst_data_d_r[2]), .CK(i_clk), .RN(n7663), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]), 
        .CK(i_clk), .RN(n7668), .Q(n7490), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n103) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_6_ ( .D(n5526), 
        .CK(i_clk), .RN(n7629), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n942) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N36), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_1_ ( .D(
        median_sobel_inst_data_h_r[1]), .CK(i_clk), .RN(n7626), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n896) );
  DFFRX2 conv_inst_conv_2_r_reg_8_ ( .D(conv_inst_N2440), .CK(i_clk), .RN(
        n7657), .Q(conv_inst_conv_2_r[8]), .QN(conv_inst_n252) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_b9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n852), .CK(i_clk), .RN(
        n7663), .Q(n7447), .QN(
        median_sobel_inst_u_median_filter_submodule_n831) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .CK(i_clk), 
        .RN(n7635), .Q(median_sobel_inst_u_sobel_gradient_submodule_n332) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p3_r_reg_2_ ( .D(
        median_sobel_inst_data_c_r[2]), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n1513) );
  DFFRHQX2 op_mode_r_reg_0_ ( .D(n440), .CK(i_clk), .RN(n7625), .Q(n765) );
  DFFRHQX4 median_sobel_inst_cnt_reg_1_ ( .D(median_sobel_inst_N110), .CK(
        i_clk), .RN(n7647), .Q(median_sobel_inst_n654) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2])
         );
  DFFRX1 x_minus_one_r_reg_0_ ( .D(n7673), .CK(i_clk), .RN(n7671), .Q(
        x_minus_one_r[0]), .QN(n7485) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[3]), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_median_filter_submodule_net87818) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1583), .CK(i_clk), .RN(
        n7655), .Q(n7458), .QN(
        median_sobel_inst_u_median_filter_submodule_n833) );
  DFFRX2 cnt_reg_10_ ( .D(n3506), .CK(i_clk), .RN(n7634), .Q(cnt[10]), .QN(
        n7492) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__1_ ( .D(
        median_sobel_inst_n566), .CK(i_clk), .RN(n7634), .Q(
        median_sobel_inst_n964), .QN(n7544) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a17_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a17_w), .CK(i_clk), .RN(
        n7656), .Q(median_sobel_inst_u_median_filter_submodule_n1435) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__2_ ( .D(
        median_sobel_inst_n565), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_net84226), .QN(n7545) );
  DFFRX2 conv_inst_data_bcd_r_reg_8_ ( .D(conv_inst_data_bcd_w[8]), .CK(i_clk), 
        .RN(n7635), .QN(conv_inst_n269) );
  DFFRX4 input_data_ready_r_reg_26_ ( .D(N743), .CK(i_clk), .RN(n7669), .Q(
        n7446), .QN(n1907) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[5]), .CK(i_clk), .RN(
        n7628), .Q(n7472), .QN(
        median_sobel_inst_u_median_filter_submodule_n814) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[5]), .CK(i_clk), .RN(
        n7628), .QN(median_sobel_inst_u_median_filter_submodule_n842) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[0]), .CK(i_clk), .RN(
        n7659), .Q(median_sobel_inst_out_data_w[0]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[2]), .CK(i_clk), .RN(
        n7629), .Q(median_sobel_inst_out_data_w[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[6]), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_out_data_w[6]) );
  DFFRX2 input_data_ready_r_reg_6_ ( .D(N723), .CK(i_clk), .RN(n7671), .Q(
        input_data_ready_r[6]), .QN(n7596) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]), 
        .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n38) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[1]), .CK(
        i_clk), .RN(n7641), .Q(median_sobel_inst_angle_w[1]), .QN(n4600) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a47_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a47_w), .CK(i_clk), .RN(
        n7628), .Q(n7495), .QN(
        median_sobel_inst_u_median_filter_submodule_n159) );
  DFFRX2 sram_addr_ready_r_reg_0__0_ ( .D(sram_addr_wait_r[0]), .CK(i_clk), 
        .RN(n7634), .Q(sram_addr_w[0]), .QN(n1906) );
  DFFRX4 op_mode_r_reg_2_ ( .D(n442), .CK(i_clk), .RN(n7664), .Q(op_mode_r_2_), 
        .QN(n7380) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]), .CK(i_clk), 
        .RN(n7666), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9])
         );
  DFFRX4 input_data_ready_r_reg_2_ ( .D(N719), .CK(i_clk), .RN(n7669), .Q(
        n7442), .QN(n1874) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[2]), .CK(i_clk), .RN(
        n7650), .Q(median_sobel_inst_u_median_filter_submodule_n1103) );
  DFFRX2 out_data_ready_r_reg_3_ ( .D(out_data_wait_r[3]), .CK(i_clk), .RN(
        n7665), .Q(o_out_data[3]) );
  DFFRX2 out_data_ready_r_reg_6_ ( .D(out_data_wait_r[6]), .CK(i_clk), .RN(
        n7664), .Q(o_out_data[6]) );
  DFFRX2 out_data_ready_r_reg_7_ ( .D(out_data_wait_r[7]), .CK(i_clk), .RN(
        n7655), .Q(o_out_data[7]) );
  DFFRX2 out_data_ready_r_reg_4_ ( .D(out_data_wait_r[4]), .CK(i_clk), .RN(
        n7653), .Q(o_out_data[4]) );
  DFFRX4 input_data_ready_r_reg_23_ ( .D(N740), .CK(i_clk), .RN(n7662), .Q(
        input_data_ready_r[23]), .QN(n7604) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_9_ ( .D(conv_inst_N144), .CK(i_clk), .RN(
        n7659), .Q(conv_inst_data_bcd_2_r[9]) );
  DFFRX2 conv_inst_conv_2_r_reg_12_ ( .D(conv_inst_N2480), .CK(i_clk), .RN(
        n7632), .Q(conv_inst_conv_2_r[12]), .QN(conv_inst_n242) );
  DFFRX2 y_r_reg_1_ ( .D(n1347), .CK(i_clk), .RN(n7656), .Q(y_r[1]) );
  DFFRX2 out_data_ready_r_reg_5_ ( .D(out_data_wait_r[5]), .CK(i_clk), .RN(
        n7668), .Q(o_out_data[5]) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_3_ ( .D(
        median_sobel_inst_data_c_r[3]), .CK(i_clk), .RN(n7660), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n372) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[3]), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_median_filter_submodule_n1107) );
  DFFRX2 conv_inst_conv_2_r_reg_13_ ( .D(conv_inst_N2490), .CK(i_clk), .RN(
        n7631), .Q(conv_inst_conv_2_r[13]), .QN(conv_inst_n20) );
  DFFRX2 sram_addr_ready_r_reg_3__0_ ( .D(sram_addr_wait_r[27]), .CK(i_clk), 
        .RN(n7668), .Q(n7880), .QN(n2189) );
  DFFRX2 conv_inst_data_bcd_r_reg_7_ ( .D(conv_inst_data_bcd_w[7]), .CK(i_clk), 
        .RN(n7661), .QN(conv_inst_n270) );
  DFFRX4 input_data_ready_r_reg_3_ ( .D(N720), .CK(i_clk), .RN(n7648), .Q(
        input_data_ready_r[3]), .QN(n1876) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]), .CK(i_clk), 
        .RN(n7669), .QN(n7473) );
  DFFRX2 conv_inst_data_bcd_r_reg_9_ ( .D(conv_inst_data_bcd_w[9]), .CK(i_clk), 
        .RN(n7659), .QN(conv_inst_n254) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[3]), .CK(i_clk), .RN(
        n7631), .Q(n7461), .QN(
        median_sobel_inst_u_median_filter_submodule_n840) );
  DFFRX4 input_data_ready_r_reg_30_ ( .D(N747), .CK(i_clk), .RN(n7659), .Q(
        input_data_ready_r[30]), .QN(n7619) );
  DFFRX4 median_sobel_inst_u_sober_compare_submodule_cnt_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N30), .CK(i_clk), .RN(
        n7655), .Q(median_sobel_inst_u_sober_compare_submodule_n256), .QN(
        n3533) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1060), .CK(i_clk), .RN(
        n7667), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n58) );
  DFFRX2 conv_inst_conv_3_r_reg_14_ ( .D(conv_inst_N2670), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_conv_3_r[14]), .QN(conv_inst_n274) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[3]), .CK(i_clk), .RN(
        n7629), .QN(median_sobel_inst_u_median_filter_submodule_n790) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[4]), .CK(i_clk), .RN(
        n7629), .Q(n3563), .QN(
        median_sobel_inst_u_median_filter_submodule_n930) );
  DFFRX2 conv_inst_conv_3_r_reg_16_ ( .D(conv_inst_N2690), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_conv_3_r[16]), .QN(conv_inst_n276) );
  DFFRX2 conv_inst_conv_3_r_reg_11_ ( .D(conv_inst_N2640), .CK(i_clk), .RN(
        n7670), .Q(conv_inst_conv_3_r[11]), .QN(conv_inst_n239) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n854), .CK(i_clk), .RN(
        n7626), .Q(median_sobel_inst_u_median_filter_submodule_n867) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[5]), .CK(i_clk), .RN(
        n7629), .Q(n3569), .QN(
        median_sobel_inst_u_median_filter_submodule_n821) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a3_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[4]), .CK(i_clk), .RN(
        n7636), .Q(median_sobel_inst_u_median_filter_submodule_n146) );
  DFFRX2 conv_inst_conv_4_r_reg_13_ ( .D(conv_inst_N283), .CK(i_clk), .RN(
        n7631), .Q(conv_inst_conv_4_r[13]), .QN(conv_inst_n22) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]), .CK(i_clk), 
        .RN(n7669), .QN(median_sobel_inst_u_sobel_gradient_submodule_N46) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]), .CK(i_clk), 
        .RN(n7667), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6])
         );
  DFFRHQX4 sram_addr_ready_r_reg_1__0_ ( .D(sram_addr_wait_r[9]), .CK(i_clk), 
        .RN(n7634), .Q(n793) );
  DFFRX4 input_data_ready_r_reg_27_ ( .D(N744), .CK(i_clk), .RN(n4602), .Q(
        input_data_ready_r[27]), .QN(n7598) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[6]), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_median_filter_submodule_net87617) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[4]), .CK(i_clk), .RN(
        n7666), .Q(median_sobel_inst_u_median_filter_submodule_n168) );
  DFFRX2 conv_inst_data_abc_r_reg_6_ ( .D(conv_inst_data_abc_w[6]), .CK(i_clk), 
        .RN(n7635), .QN(conv_inst_n260) );
  DFFRX2 conv_inst_conv_3_r_reg_12_ ( .D(conv_inst_N265), .CK(i_clk), .RN(
        n7635), .Q(conv_inst_conv_3_r[12]), .QN(conv_inst_n241) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]), .CK(i_clk), 
        .RN(n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n377) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[2]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_median_filter_submodule_net83073) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]), .CK(i_clk), 
        .RN(n7668), .QN(n7474) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]), .CK(i_clk), 
        .RN(n7643), .QN(n7465) );
  DFFRX4 input_data_ready_r_reg_24_ ( .D(N741), .CK(i_clk), .RN(n7634), .Q(
        input_data_ready_r[24]), .QN(n7601) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[5]), .CK(i_clk), .RN(
        n7628), .Q(n4798), .QN(
        median_sobel_inst_u_median_filter_submodule_n796) );
  DFFRHQX4 x_origin_r_reg_0_ ( .D(n489), .CK(i_clk), .RN(n7625), .Q(N760) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]), .CK(i_clk), 
        .RN(n7657), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]), .CK(i_clk), 
        .RN(n7669), .QN(n7454) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .CK(i_clk), 
        .RN(n7655), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]) );
  DFFRX2 conv_inst_data_abc_r_reg_5_ ( .D(conv_inst_data_abc_w[5]), .CK(i_clk), 
        .RN(n7664), .QN(conv_inst_n259) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a3_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[2]), .CK(i_clk), .RN(
        n7647), .QN(median_sobel_inst_u_median_filter_submodule_n926) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[4]), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_median_filter_submodule_n1080) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[7]), .CK(i_clk), .RN(
        n7659), .Q(n3564), .QN(
        median_sobel_inst_u_median_filter_submodule_n787) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_12_ ( .D(conv_inst_N78), .CK(i_clk), 
        .RN(n7661), .Q(result_w[12]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[7]), .CK(i_clk), .RN(
        n7628), .Q(median_sobel_inst_u_median_filter_submodule_n966), .QN(
        n4797) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N330), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]) );
  DFFRHQX4 sram_addr_ready_r_reg_2__0_ ( .D(sram_addr_wait_r[18]), .CK(i_clk), 
        .RN(n7625), .Q(n7910) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]), .CK(i_clk), 
        .RN(n7653), .Q(n3570), .QN(n7450) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[0]), .CK(i_clk), .RN(
        n7670), .Q(median_sobel_inst_u_median_filter_submodule_n1227) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_5_ ( .D(
        median_sobel_inst_data_g_r[5]), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n881) );
  DFFRX2 conv_inst_data_abc_r_reg_9_ ( .D(conv_inst_data_abc_w[9]), .CK(i_clk), 
        .RN(n7635), .QN(conv_inst_n253) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]), .CK(i_clk), 
        .RN(n7643), .Q(n3576), .QN(n7462) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]), .CK(i_clk), 
        .RN(n7669), .QN(n7456) );
  DFFRX2 input_data_ready_r_reg_7_ ( .D(N724), .CK(i_clk), .RN(n7669), .Q(
        input_data_ready_r[7]), .QN(n7595) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a39_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a39_w), .CK(i_clk), .RN(
        n7670), .Q(median_sobel_inst_u_median_filter_submodule_n1154) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_b9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1582), .CK(i_clk), .RN(
        n7628), .Q(median_sobel_inst_u_median_filter_submodule_n1091) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_10_ ( .D(conv_inst_N76), .CK(i_clk), 
        .RN(n7631), .Q(conv_result_w[10]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[4]), .CK(i_clk), .RN(
        n7629), .Q(median_sobel_inst_u_median_filter_submodule_n894) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[4]), .CK(i_clk), .RN(
        n7629), .Q(n7452), .QN(
        median_sobel_inst_u_median_filter_submodule_n793) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N151), .CK(i_clk), 
        .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_n60) );
  DFFRX2 conv_inst_data_abc_3_r_reg_4_ ( .D(conv_inst_N201), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_data_abc_3_r[4]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]), .CK(i_clk), 
        .RN(n7643), .Q(median_sobel_inst_u_sobel_gradient_submodule_n322) );
  DFFRX2 conv_inst_conv_3_r_reg_13_ ( .D(conv_inst_N2660), .CK(i_clk), .RN(
        n7631), .Q(conv_inst_conv_3_r[13]), .QN(conv_inst_n12) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__6_ ( .D(
        median_sobel_inst_n569), .CK(i_clk), .RN(n7634), .Q(n4581), .QN(
        median_sobel_inst_n974) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[4]), .CK(i_clk), .RN(
        n7629), .Q(n7441), .QN(
        median_sobel_inst_u_median_filter_submodule_n807) );
  DFFRX2 conv_inst_conv_4_r_reg_12_ ( .D(conv_inst_N282), .CK(i_clk), .RN(
        n7658), .Q(conv_inst_conv_4_r[12]), .QN(conv_inst_n237) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]), .CK(i_clk), 
        .RN(n7626), .QN(median_sobel_inst_u_sobel_gradient_submodule_n32) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_8_ ( .D(conv_inst_N216), .CK(i_clk), .RN(
        n7670), .Q(conv_inst_data_bcd_4_r[8]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N114), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[1]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_median_filter_submodule_n1219) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_b9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1581), .CK(i_clk), .RN(
        n7667), .QN(median_sobel_inst_u_median_filter_submodule_n834) );
  DFFRHQX2 conv_inst_conv_2_r_reg_7_ ( .D(conv_inst_N2430), .CK(i_clk), .RN(
        n7655), .Q(conv_inst_n39) );
  DFFRX2 conv_inst_conv_2_r_reg_9_ ( .D(conv_inst_N2450), .CK(i_clk), .RN(
        n7667), .Q(conv_inst_conv_2_r[9]), .QN(conv_inst_n13) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N380), .CK(i_clk), .RN(
        n7661), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[3]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_median_filter_submodule_n1131) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n853), .CK(i_clk), .RN(
        n7628), .Q(n7371) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[7]), .CK(i_clk), .RN(
        n7671), .Q(n7455), .QN(
        median_sobel_inst_u_median_filter_submodule_n934) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[1]), .CK(i_clk), .RN(
        n7629), .QN(median_sobel_inst_u_median_filter_submodule_n839) );
  DFFRX2 conv_inst_data_bcd_r_reg_4_ ( .D(conv_inst_data_bcd_w[4]), .CK(i_clk), 
        .RN(n7658), .QN(conv_inst_n266) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[6]), .CK(i_clk), .RN(
        n7658), .Q(median_sobel_inst_u_median_filter_submodule_net84111) );
  DFFRHQX2 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]), .CK(i_clk), 
        .RN(n7654), .Q(median_sobel_inst_u_sober_compare_submodule_n274) );
  DFFRX2 conv_inst_data_abc_r_reg_4_ ( .D(conv_inst_data_abc_w[4]), .CK(i_clk), 
        .RN(n7655), .QN(conv_inst_n258) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N23), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_8_ ( .D(conv_inst_N74), .CK(i_clk), 
        .RN(n7636), .Q(conv_result_w[8]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_9_ ( .D(conv_inst_N75), .CK(i_clk), 
        .RN(n7661), .Q(conv_result_w[9]) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[0]), .CK(i_clk), .RN(
        n7670), .Q(n7621), .QN(
        median_sobel_inst_u_median_filter_submodule_n780) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N152), .CK(i_clk), .RN(
        n7634), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[9]), .QN(n7394) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_13_ ( .D(conv_inst_N79), .CK(i_clk), 
        .RN(n7636), .Q(result_w[13]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N134), .CK(i_clk), .RN(
        n7661), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4])
         );
  DFFRX2 conv_inst_data_abc_3_r_reg_8_ ( .D(conv_inst_N205), .CK(i_clk), .RN(
        n7638), .Q(conv_inst_data_abc_3_r[8]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N670), .CK(i_clk), .RN(
        n7661), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_7_ ( .D(conv_inst_N204), .CK(i_clk), .RN(
        n7669), .Q(conv_inst_data_abc_3_r[7]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_11_ ( .D(conv_inst_N77), .CK(i_clk), 
        .RN(n7632), .Q(result_w[11]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]), .CK(i_clk), 
        .RN(n7632), .Q(median_sobel_inst_u_sober_compare_submodule_n262) );
  DFFRX2 conv_inst_conv_3_r_reg_7_ ( .D(conv_inst_N2600), .CK(i_clk), .RN(
        n7653), .Q(conv_inst_conv_3_r[7]), .QN(conv_inst_n38) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[0]), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_median_filter_submodule_n219) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]), .CK(i_clk), 
        .RN(n7656), .Q(n3571) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n858), .CK(i_clk), .RN(
        n7661), .Q(n7460), .QN(
        median_sobel_inst_u_median_filter_submodule_n829) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N43), .CK(i_clk), .RN(
        n7643), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N321), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]), .CK(i_clk), 
        .RN(n7643), .Q(median_sobel_inst_u_sobel_gradient_submodule_n456) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[3]), .CK(i_clk), .RN(
        n7656), .Q(median_sobel_inst_u_median_filter_submodule_net83841) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]), .CK(i_clk), 
        .RN(n7632), .QN(median_sobel_inst_u_sober_compare_submodule_n261) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n95), .CK(i_clk), .RN(
        n7657), .Q(median_sobel_inst_u_sober_compare_submodule_n255) );
  DFFRX2 sram_data_out_r_reg_3__5_ ( .D(sram_data_out_w[29]), .CK(i_clk), .RN(
        n7639), .QN(n2268) );
  DFFRX2 sram_data_out_r_reg_3__3_ ( .D(sram_data_out_w[27]), .CK(i_clk), .RN(
        n7660), .QN(n2263) );
  DFFRX2 sram_data_out_r_reg_1__6_ ( .D(sram_data_out_w[14]), .CK(i_clk), .RN(
        n7660), .QN(n2262) );
  DFFRX2 sram_data_out_r_reg_1__5_ ( .D(sram_data_out_w[13]), .CK(i_clk), .RN(
        n7639), .QN(n2261) );
  DFFRX2 sram_data_out_r_reg_1__3_ ( .D(sram_data_out_w[11]), .CK(i_clk), .RN(
        n7660), .QN(n2260) );
  DFFRX2 sram_data_out_r_reg_1__2_ ( .D(sram_data_out_w[10]), .CK(i_clk), .RN(
        n7639), .QN(n2259) );
  DFFRX2 sram_data_out_r_reg_0__7_ ( .D(sram_data_out_w[7]), .CK(i_clk), .RN(
        n7660), .QN(n2267) );
  DFFRX2 sram_data_out_r_reg_0__6_ ( .D(sram_data_out_w[6]), .CK(i_clk), .RN(
        n7639), .QN(n2266) );
  DFFRX2 sram_data_out_r_reg_0__5_ ( .D(sram_data_out_w[5]), .CK(i_clk), .RN(
        n7660), .QN(n2269) );
  DFFRX2 sram_data_out_r_reg_0__4_ ( .D(sram_data_out_w[4]), .CK(i_clk), .RN(
        n7659), .QN(n2265) );
  DFFRX2 sram_data_out_r_reg_0__3_ ( .D(sram_data_out_w[3]), .CK(i_clk), .RN(
        n7653), .QN(n2272) );
  DFFRX2 sram_data_out_r_reg_0__2_ ( .D(sram_data_out_w[2]), .CK(i_clk), .RN(
        n7668), .QN(n2270) );
  DFFRX2 sram_data_out_r_reg_0__1_ ( .D(sram_data_out_w[1]), .CK(i_clk), .RN(
        n7667), .QN(n2264) );
  DFFRX2 sram_data_out_r_reg_0__0_ ( .D(sram_data_out_w[0]), .CK(i_clk), .RN(
        n7670), .QN(n2271) );
  DFFRX2 sram_data_out_r_reg_3__6_ ( .D(sram_data_out_w[30]), .CK(i_clk), .RN(
        n7654), .QN(n1865) );
  DFFRX2 sram_data_out_r_reg_3__2_ ( .D(sram_data_out_w[26]), .CK(i_clk), .RN(
        n7641), .QN(n1867) );
  DFFRX2 sram_data_out_r_reg_2__2_ ( .D(sram_data_out_w[18]), .CK(i_clk), .RN(
        n7641), .QN(n1870) );
  DFFRX2 sram_data_out_r_reg_3__0_ ( .D(sram_data_out_w[24]), .CK(i_clk), .RN(
        n7639), .Q(n7404), .QN(n2258) );
  DFFRX2 sram_data_out_r_reg_3__7_ ( .D(sram_data_out_w[31]), .CK(i_clk), .RN(
        n7666), .Q(n7407), .QN(n1864) );
  DFFRX2 sram_data_out_r_reg_2__5_ ( .D(sram_data_out_w[21]), .CK(i_clk), .RN(
        n7669), .QN(n1902) );
  DFFRX2 sram_data_out_r_reg_1__1_ ( .D(sram_data_out_w[9]), .CK(i_clk), .RN(
        n7634), .Q(n7537), .QN(n1899) );
  DFFRX2 sram_data_out_r_reg_1__4_ ( .D(sram_data_out_w[12]), .CK(i_clk), .RN(
        n7649), .Q(n7546), .QN(n1901) );
  DFFRX2 sram_data_out_r_reg_3__1_ ( .D(sram_data_out_w[25]), .CK(i_clk), .RN(
        n7634), .Q(n3544), .QN(n1872) );
  DFFRX2 sram_data_out_r_reg_3__4_ ( .D(sram_data_out_w[28]), .CK(i_clk), .RN(
        n7626), .QN(n1866) );
  DFFRX2 sram_data_out_r_reg_2__1_ ( .D(sram_data_out_w[17]), .CK(i_clk), .RN(
        n7634), .Q(n3532), .QN(n1871) );
  DFFRX2 sram_data_out_r_reg_2__0_ ( .D(sram_data_out_w[16]), .CK(i_clk), .RN(
        n7634), .QN(n1905) );
  DFFRX2 sram_data_out_r_reg_2__3_ ( .D(sram_data_out_w[19]), .CK(i_clk), .RN(
        n7669), .QN(n1904) );
  DFFRX2 sram_data_out_r_reg_2__7_ ( .D(sram_data_out_w[23]), .CK(i_clk), .RN(
        n7647), .QN(n1868) );
  DFFRX2 sram_data_out_r_reg_2__6_ ( .D(sram_data_out_w[22]), .CK(i_clk), .RN(
        n7634), .QN(n1869) );
  DFFRX2 sram_data_out_r_reg_2__4_ ( .D(sram_data_out_w[20]), .CK(i_clk), .RN(
        n7669), .QN(n1938) );
  DFFRX2 sram_data_out_r_reg_1__0_ ( .D(sram_data_out_w[8]), .CK(i_clk), .RN(
        n7669), .QN(n1891) );
  DFFRX2 sram_data_out_r_reg_1__7_ ( .D(sram_data_out_w[15]), .CK(i_clk), .RN(
        n7656), .QN(n1903) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1580), .CK(i_clk), .RN(
        n7653), .Q(n7475), .QN(
        median_sobel_inst_u_median_filter_submodule_n317) );
  DFFRX2 z_r_reg_3_ ( .D(N791), .CK(i_clk), .RN(n7634), .Q(z_r[3]) );
  DFFRX2 z_r_reg_0_ ( .D(N788), .CK(i_clk), .RN(n7634), .Q(z_r[0]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a14_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a14_w), .CK(i_clk), .RN(
        n7625), .Q(median_sobel_inst_u_median_filter_submodule_n652) );
  DFFRX4 input_data_ready_r_reg_28_ ( .D(N745), .CK(i_clk), .RN(n7665), .Q(
        input_data_ready_r[28]), .QN(n7602) );
  DFFRHQX4 conv_inst_conv_1_r_reg_11_ ( .D(conv_inst_N230), .CK(i_clk), .RN(
        n7636), .Q(conv_inst_n43) );
  DFFRX2 cnt_reg_6_ ( .D(n3510), .CK(i_clk), .RN(n7634), .Q(cnt[6]), .QN(n7373) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[7]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_median_filter_submodule_net86856) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N116), .CK(i_clk), .RN(
        n7631), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]), 
        .CK(i_clk), .RN(n4602), .Q(n7370), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n354) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__5_ ( .D(n7519), .CK(
        i_clk), .RN(n7669), .Q(n7369), .QN(median_sobel_inst_n836) );
  DFFSRX1 x_delay_r_reg_2__1_ ( .D(x_delay_r_1__1_), .CK(i_clk), .SN(1'b1), 
        .RN(n7663), .Q(x_delay_r_2__1_), .QN(n7440) );
  DFFSX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_8_ ( .D(
        n7366), .CK(i_clk), .SN(n7625), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n63) );
  DFFSX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_4_ ( .D(n4789), 
        .CK(i_clk), .SN(n7671), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]) );
  DFFSX1 pre_state_reg_0__1_ ( .D(n7672), .CK(i_clk), .SN(n7669), .QN(
        pre_state[1]) );
  DFFSHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_2_ ( .D(
        n4573), .CK(i_clk), .SN(n7625), .Q(n7365) );
  DFFRX2 conv_inst_data_bcd_r_reg_5_ ( .D(conv_inst_data_bcd_w[5]), .CK(i_clk), 
        .RN(n7636), .QN(conv_inst_n267) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[7]), .CK(i_clk), .RN(
        n7635), .Q(median_sobel_inst_out_data_w[7]) );
  DFFRX2 depth_ready_r_reg_1_ ( .D(n486), .CK(i_clk), .RN(n7650), .Q(n1955) );
  DFFRHQX1 conv_inst_data_abc_1_r_reg_7_ ( .D(conv_inst_N131), .CK(i_clk), 
        .RN(n7631), .Q(conv_inst_data_abc_1_r[7]) );
  DFFSRX1 median_sobel_inst_u_median_filter_submodule_c2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[5]), .CK(i_clk), .SN(
        1'b1), .RN(n7635), .Q(median_sobel_inst_out_data_w[5]) );
  DFFSRX1 median_sobel_inst_u_median_filter_submodule_c2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[1]), .CK(i_clk), .SN(
        1'b1), .RN(n7650), .Q(median_sobel_inst_out_data_w[1]) );
  DFFSHQX4 curr_state_reg_3_ ( .D(n7623), .CK(i_clk), .SN(n7636), .Q(
        curr_state[3]) );
  DFFSHQX4 curr_state_reg_2_ ( .D(n445), .CK(i_clk), .SN(n7636), .Q(
        curr_state[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2])
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sober_compare_submodule_n43) );
  DFFRX2 out_data_ready_r_reg_0_ ( .D(out_data_wait_r[0]), .CK(i_clk), .RN(
        n7667), .Q(o_out_data[0]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[6]), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_median_filter_submodule_n190) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n859), .CK(i_clk), .RN(
        n7629), .Q(n7449), .QN(
        median_sobel_inst_u_median_filter_submodule_n824) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]), .CK(i_clk), 
        .RN(n7649), .QN(n4792) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]), .CK(i_clk), 
        .RN(n7669), .QN(n4787) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a25_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a25_w), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_u_median_filter_submodule_n653) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a28_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a28_w), .CK(i_clk), .RN(
        n7629), .Q(median_sobel_inst_u_median_filter_submodule_n937) );
  DFFRX2 conv_inst_data_abc_3_r_reg_9_ ( .D(conv_inst_N206), .CK(i_clk), .RN(
        n7638), .Q(conv_inst_data_abc_3_r[9]) );
  DFFRHQX4 conv_inst_cnt_reg_1_ ( .D(conv_inst_N57), .CK(i_clk), .RN(n7660), 
        .Q(conv_inst_n191) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N153), .CK(i_clk), 
        .RN(n7626), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]) );
  DFFRX2 conv_calc_done_r_reg ( .D(n439), .CK(i_clk), .RN(n7641), .Q(
        conv_calc_done_r) );
  DFFRX1 med_done_r_reg ( .D(med_done_w), .CK(i_clk), .RN(n7671), .QN(n1900)
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[0]), .CK(
        i_clk), .RN(n7666), .Q(median_sobel_inst_angle_w[0]), .QN(n4601) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[4]), .CK(i_clk), .RN(
        n7629), .Q(n7483), .QN(
        median_sobel_inst_u_median_filter_submodule_n822) );
  DFFRX2 input_data_ready_r_reg_14_ ( .D(N731), .CK(i_clk), .RN(n7635), .Q(
        input_data_ready_r[14]), .QN(n7583) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__2_ ( .D(n7410), .CK(
        i_clk), .RN(n7653), .Q(n4596), .QN(median_sobel_inst_n40) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[6]), .CK(i_clk), .RN(
        n7629), .Q(n4583), .QN(
        median_sobel_inst_u_median_filter_submodule_n835) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N100), .CK(i_clk), .RN(
        n7625), .Q(median_sobel_inst_u_sobel_gradient_submodule_n347) );
  DFFRX1 median_sobel_inst_cnt_reg_3_ ( .D(median_sobel_inst_N112), .CK(i_clk), 
        .RN(n7664), .Q(n4560), .QN(median_sobel_inst_n181) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__7_ ( .D(
        median_sobel_inst_n568), .CK(i_clk), .RN(n7656), .Q(
        median_sobel_inst_n55), .QN(n7433) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__6_ ( .D(
        median_sobel_inst_n601), .CK(i_clk), .RN(n7669), .Q(n4551), .QN(
        median_sobel_inst_n972) );
  DFFRHQX2 input_data_ready_r_reg_0_ ( .D(N717), .CK(i_clk), .RN(n7657), .Q(
        input_data_ready_r[0]) );
  DFFRHQX2 input_data_ready_r_reg_1_ ( .D(N718), .CK(i_clk), .RN(n7667), .Q(
        input_data_ready_r[1]) );
  DFFRX2 cnt_reg_4_ ( .D(n3512), .CK(i_clk), .RN(n7659), .Q(cnt[4]), .QN(n7508) );
  DFFRHQX1 map_load_done_r_reg ( .D(N896), .CK(i_clk), .RN(n7664), .Q(net34858) );
  DFFRX2 conv_inst_conv_1_r_reg_8_ ( .D(conv_inst_N227), .CK(i_clk), .RN(n7653), .Q(conv_inst_conv_1_r[8]) );
  DFFRX2 conv_inst_conv_2_r_reg_2_ ( .D(conv_inst_N2380), .CK(i_clk), .RN(
        n7666), .Q(conv_inst_conv_2_r[2]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_6_ ( .D(conv_inst_N130), .CK(i_clk), .RN(
        n7658), .Q(conv_inst_data_abc_1_r[6]) );
  DFFRX2 conv_inst_conv_1_r_reg_6_ ( .D(conv_inst_N225), .CK(i_clk), .RN(n7664), .Q(conv_inst_conv_1_r[6]) );
  DFFRX2 conv_inst_conv_2_r_reg_1_ ( .D(conv_inst_N2370), .CK(i_clk), .RN(
        n7670), .Q(conv_inst_conv_2_r[1]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_1_ ( .D(conv_inst_N136), .CK(i_clk), .RN(
        n7667), .Q(conv_inst_data_bcd_2_r[1]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__2_ ( .D(
        median_sobel_inst_n629), .CK(i_clk), .RN(n7654), .Q(
        median_sobel_inst_n296), .QN(n7434) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__7_ ( .D(
        median_sobel_inst_n528), .CK(i_clk), .RN(n7666), .Q(
        median_sobel_inst_n978) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__2_ ( .D(
        median_sobel_inst_n541), .CK(i_clk), .RN(n7670), .Q(
        median_sobel_inst_n69) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1578), .CK(i_clk), .RN(
        n7653), .Q(median_sobel_inst_u_median_filter_submodule_n1093) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[6]), .CK(i_clk), .RN(
        n7658), .QN(median_sobel_inst_u_median_filter_submodule_n783) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N125), .CK(i_clk), .RN(
        n7670), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_3_ ( .D(
        median_sobel_inst_data_b_r[3]), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n904) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N165), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_u_sobel_gradient_submodule_n630) );
  DFFRX1 out_data_ready_r_reg_2_ ( .D(out_data_wait_r[2]), .CK(i_clk), .RN(
        n7666), .Q(o_out_data[2]) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__1_ ( .D(
        median_sobel_inst_n598), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_n1007), .QN(n7549) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n1584), .CK(i_clk), .RN(
        n7628), .Q(n7385), .QN(
        median_sobel_inst_u_median_filter_submodule_n832) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), 
        .QN(n4512) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]), .CK(i_clk), 
        .RN(n7665), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7])
         );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1220), .CK(i_clk), 
        .RN(n7632), .Q(median_sobel_inst_sobel_out_data_w[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), 
        .QN(n3530) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1180), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[2]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[1]), .CK(i_clk), .RN(
        n7650), .Q(median_sobel_inst_u_median_filter_submodule_n995) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__3_ ( .D(
        median_sobel_inst_n604), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_net86174), .QN(n7578) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1240), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[8]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1190), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[3]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1200), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[4]) );
  DFFRX2 x_delay_r_reg_2__0_ ( .D(x_delay_r_1__0_), .CK(i_clk), .RN(n7634), 
        .Q(x_delay_r_2__0_), .QN(n3545) );
  DFFRX2 conv_inst_data_abc_1_r_reg_8_ ( .D(conv_inst_N132), .CK(i_clk), .RN(
        n7638), .Q(conv_inst_data_abc_1_r[8]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_c2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_c2[3]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_out_data_w[3]) );
  DFFRHQX2 conv_inst_conv_2_r_reg_11_ ( .D(conv_inst_N2470), .CK(i_clk), .RN(
        n7664), .Q(conv_inst_n40) );
  DFFRX2 y_r_reg_2_ ( .D(N817), .CK(i_clk), .RN(n7659), .Q(n849) );
  DFFRHQX1 op_mode_r_reg_3_ ( .D(n443), .CK(i_clk), .RN(n7625), .Q(n768) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]), .CK(i_clk), 
        .RN(n7656), .QN(median_sobel_inst_u_sobel_gradient_submodule_n4) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_4_ ( .D(conv_inst_N70), .CK(i_clk), 
        .RN(n7631), .Q(conv_result_w[4]) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[3]), .CK(i_clk), .RN(
        n7647), .Q(median_sobel_inst_u_median_filter_submodule_n1303) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N13), .CK(i_clk), .RN(
        n7664), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]) );
  DFFRHQX1 conv_inst_data_abc_r_reg_7_ ( .D(conv_inst_data_abc_w[7]), .CK(
        i_clk), .RN(n7634), .Q(conv_inst_n198) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1170), .CK(i_clk), 
        .RN(n7632), .QN(n3542) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[1]), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_median_filter_submodule_n232) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a58_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a58_w), .CK(i_clk), .RN(
        n7629), .Q(n7493), .QN(
        median_sobel_inst_u_median_filter_submodule_n161) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[0]), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_median_filter_submodule_n1095) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_5_ ( .D(n4063), .CK(i_clk), .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_n56)
         );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[6]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_median_filter_submodule_n229) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]), .CK(i_clk), 
        .RN(n7655), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5])
         );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__2_ ( .D(
        median_sobel_inst_n597), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_n116) );
  DFFRX2 out_data_ready_r_reg_1_ ( .D(out_data_wait_r[1]), .CK(i_clk), .RN(
        n7666), .Q(o_out_data[1]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_9_ ( .D(conv_inst_N133), .CK(i_clk), .RN(
        n7653), .Q(conv_inst_data_abc_1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_n346) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]), .CK(i_clk), 
        .RN(n7658), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1])
         );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[3]), .CK(i_clk), .RN(
        n7635), .Q(median_sobel_inst_u_median_filter_submodule_n224) );
  DFFRX1 conv_inst_conv_4_r_reg_14_ ( .D(conv_inst_N284), .CK(i_clk), .RN(
        n7668), .Q(conv_inst_conv_4_r[14]), .QN(conv_inst_n238) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N710), .CK(i_clk), .RN(
        n7657), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_5_ ( .D(
        median_sobel_inst_data_d_r[5]), .CK(i_clk), .RN(n7667), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n962) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[5]), .CK(i_clk), .RN(
        n7662), .Q(median_sobel_inst_u_median_filter_submodule_n197) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_3_ ( .D(
        median_sobel_inst_data_g_r[3]), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n370) );
  DFFRX2 input_data_ready_r_reg_4_ ( .D(N721), .CK(i_clk), .RN(n7661), .Q(
        input_data_ready_r[4]), .QN(n7594) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]), .CK(i_clk), 
        .RN(n7670), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N140), .CK(i_clk), 
        .RN(n7662), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]), .CK(i_clk), 
        .RN(n7662), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_5_)
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n359) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_15_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N158), .CK(i_clk), 
        .RN(n7657), .Q(median_sobel_inst_u_sobel_gradient_submodule_n592) );
  DFFRX2 input_data_ready_r_reg_5_ ( .D(N722), .CK(i_clk), .RN(n7663), .Q(
        input_data_ready_r[5]), .QN(n7597) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1250), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[9]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1210), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[5]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1160), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[0]) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1230), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_sobel_out_data_w[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]), .CK(i_clk), 
        .RN(n7659), .QN(median_sobel_inst_u_sobel_gradient_submodule_N79) );
  DFFRHQX1 conv_inst_conv_2_r_reg_15_ ( .D(conv_inst_N2510), .CK(i_clk), .RN(
        n7666), .Q(conv_inst_conv_2_r[15]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_1_ ( .D(
        median_sobel_inst_data_c_r[1]), .CK(i_clk), .RN(n7662), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n68) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[7]), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_median_filter_submodule_n963), .QN(
        n7476) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N162), .CK(i_clk), .RN(
        n7666), .QN(median_sobel_inst_u_sobel_gradient_submodule_n104) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]), .CK(i_clk), 
        .RN(n7657), .QN(median_sobel_inst_u_sobel_gradient_submodule_n28) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]), .CK(i_clk), 
        .RN(n7659), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_n325) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N122), .CK(i_clk), .RN(
        n7654), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4])
         );
  DFFRHQX4 op_mode_r_reg_1_ ( .D(n441), .CK(i_clk), .RN(n7625), .Q(net46722)
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_2_ ( .D(n3527), .CK(i_clk), .RN(n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_n48)
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n98), .CK(i_clk), .RN(
        n7665), .QN(median_sobel_inst_u_sober_compare_submodule_n252) );
  DFFRX1 conv_inst_conv_4_r_reg_15_ ( .D(conv_inst_N285), .CK(i_clk), .RN(
        n7654), .Q(conv_inst_conv_4_r[15]), .QN(conv_inst_n106) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N173), .CK(i_clk), .RN(
        n7667), .Q(n7396), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n276) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N172), .CK(i_clk), .RN(
        n7661), .Q(median_sobel_inst_u_sobel_gradient_submodule_n355), .QN(
        n7496) );
  DFFRX1 conv_inst_conv_3_r_reg_15_ ( .D(conv_inst_N268), .CK(i_clk), .RN(
        n7656), .QN(conv_inst_n102) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[5]), .CK(i_clk), .RN(
        n7664), .Q(median_sobel_inst_u_median_filter_submodule_n1309), .QN(
        n7482) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N141), .CK(i_clk), 
        .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N102), .CK(i_clk), .RN(
        n7625), .Q(median_sobel_inst_u_sobel_gradient_submodule_n81) );
  DFFRX4 input_data_ready_r_reg_17_ ( .D(N734), .CK(i_clk), .RN(n7634), .Q(
        n7439), .QN(n1969) );
  DFFRHQX1 curr_state_reg_0_ ( .D(net29710), .CK(i_clk), .RN(n7625), .Q(
        net52777) );
  DFFRHQX1 cnt_reg_2_ ( .D(n3514), .CK(i_clk), .RN(n7625), .Q(n881) );
  DFFRX2 conv_inst_conv_3_r_reg_9_ ( .D(conv_inst_N262), .CK(i_clk), .RN(n7634), .Q(conv_inst_conv_3_r[9]), .QN(conv_inst_n19) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_n371) );
  DFFRHQX1 y_origin_r_reg_2_ ( .D(n490), .CK(i_clk), .RN(n7625), .Q(n877) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N98), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_N131) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]), .CK(i_clk), 
        .RN(n7663), .Q(median_sobel_inst_u_sobel_gradient_submodule_n342) );
  DFFRHQX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]), .CK(i_clk), 
        .RN(n7632), .Q(n4504) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N121), .CK(i_clk), .RN(
        n7671), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N112), .CK(i_clk), .RN(
        n7643), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[5]), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_median_filter_submodule_net87846) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_b5[0]), .CK(i_clk), .RN(
        n7628), .QN(median_sobel_inst_u_median_filter_submodule_n838) );
  DFFRX1 conv_inst_conv_2_r_reg_14_ ( .D(conv_inst_N2500), .CK(i_clk), .RN(
        n7665), .Q(conv_inst_conv_2_r[14]) );
  DFFRHQX2 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]), .CK(i_clk), 
        .RN(n7671), .Q(median_sobel_inst_u_sober_compare_submodule_n295) );
  DFFRX1 conv_inst_conv_1_r_reg_16_ ( .D(conv_inst_N2350), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_conv_1_r[16]), .QN(n7543) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__7_ ( .D(
        median_sobel_inst_n560), .CK(i_clk), .RN(n7657), .Q(
        median_sobel_inst_n59), .QN(n7430) );
  DFFRX2 input_data_ready_r_reg_15_ ( .D(N732), .CK(i_clk), .RN(n7669), .Q(
        input_data_ready_r[15]), .QN(n7584) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .CK(i_clk), 
        .RN(n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), 
        .QN(n4549) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N9), .CK(i_clk), .RN(
        n7658), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]) );
  DFFRHQX4 curr_state_reg_1_ ( .D(n2240), .CK(i_clk), .RN(n7649), .Q(
        curr_state[1]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[0]), .CK(i_clk), .RN(
        n7649), .Q(median_sobel_inst_u_median_filter_submodule_n166) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__3_ ( .D(n7526), .CK(
        i_clk), .RN(n7649), .Q(n4594), .QN(median_sobel_inst_n932) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__4_ ( .D(
        median_sobel_inst_n595), .CK(i_clk), .RN(n7647), .Q(n7445), .QN(
        median_sobel_inst_n423) );
  DFFRX1 input_data_ready_r_reg_31_ ( .D(N748), .CK(i_clk), .RN(n7664), .Q(
        input_data_ready_r[31]), .QN(n7603) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[0]), .CK(i_clk), .RN(
        n7629), .QN(median_sobel_inst_u_median_filter_submodule_n779) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[6]), .CK(i_clk), .RN(
        n7665), .Q(median_sobel_inst_u_median_filter_submodule_n200) );
  DFFRX2 conv_inst_conv_3_r_reg_3_ ( .D(conv_inst_N2560), .CK(i_clk), .RN(
        n7656), .Q(conv_inst_conv_3_r[3]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__7_ ( .D(
        median_sobel_inst_n552), .CK(i_clk), .RN(n7626), .QN(
        median_sobel_inst_n980) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__1_ ( .D(
        median_sobel_inst_n574), .CK(i_clk), .RN(n7626), .Q(n4788), .QN(
        median_sobel_inst_n442) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__1_ ( .D(
        median_sobel_inst_n606), .CK(i_clk), .RN(n7634), .Q(n4575), .QN(
        median_sobel_inst_n983) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[2]), .CK(i_clk), .RN(
        n7655), .Q(median_sobel_inst_u_median_filter_submodule_n1212) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]), .CK(i_clk), 
        .RN(n7665), .Q(median_sobel_inst_u_sober_compare_submodule_n40) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[1]), .CK(i_clk), .RN(
        n7625), .Q(median_sobel_inst_u_median_filter_submodule_n214) );
  DFFRX2 conv_inst_data_abc_3_r_reg_6_ ( .D(conv_inst_N203), .CK(i_clk), .RN(
        n7668), .Q(conv_inst_data_abc_3_r[6]) );
  DFFRHQX2 conv_inst_data_bcd_2_r_reg_2_ ( .D(conv_inst_N137), .CK(i_clk), 
        .RN(n7648), .Q(conv_inst_n184) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N37), .CK(i_clk), .RN(
        n7631), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__0_ ( .D(n7528), .CK(
        i_clk), .RN(n7648), .Q(n4595), .QN(median_sobel_inst_n33) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__4_ ( .D(n7531), .CK(
        i_clk), .RN(n7647), .QN(median_sobel_inst_n936) );
  DFFRX1 conv_inst_conv_1_r_reg_7_ ( .D(conv_inst_N226), .CK(i_clk), .RN(n7631), .Q(conv_inst_conv_1_r[7]), .QN(conv_inst_n246) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__4_ ( .D(
        median_sobel_inst_n611), .CK(i_clk), .RN(n7665), .Q(n7389), .QN(
        median_sobel_inst_n958) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__0_ ( .D(
        median_sobel_inst_n607), .CK(i_clk), .RN(n7634), .Q(n4568), .QN(
        median_sobel_inst_n419) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__4_ ( .D(
        median_sobel_inst_n571), .CK(i_clk), .RN(n7626), .Q(n3556), .QN(
        median_sobel_inst_n439) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .CK(i_clk), 
        .RN(n7635), .Q(median_sobel_inst_u_sobel_gradient_submodule_n333) );
  DFFRX2 conv_inst_data_abc_3_r_reg_10_ ( .D(conv_inst_N207), .CK(i_clk), .RN(
        n7670), .Q(conv_inst_data_abc_3_r[10]) );
  DFFRX2 conv_inst_conv_1_r_reg_12_ ( .D(conv_inst_N231), .CK(i_clk), .RN(
        n7655), .Q(conv_inst_conv_1_r[12]), .QN(n7610) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__5_ ( .D(n7525), .CK(
        i_clk), .RN(n4602), .Q(n3558), .QN(median_sobel_inst_n937) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]), .CK(i_clk), 
        .RN(n7632), .Q(n4517), .QN(
        median_sobel_inst_u_sober_compare_submodule_n250) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]), .CK(i_clk), 
        .RN(n7669), .QN(median_sobel_inst_u_sobel_gradient_submodule_n2) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_n319), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n24) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__0_ ( .D(
        median_sobel_inst_n575), .CK(i_clk), .RN(n7655), .Q(
        median_sobel_inst_n695), .QN(n7429) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N29), .CK(i_clk), .RN(
        n7625), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]) );
  DFFRX1 conv_inst_conv_1_r_reg_13_ ( .D(conv_inst_N2320), .CK(i_clk), .RN(
        n7661), .Q(conv_inst_conv_1_r[13]), .QN(n7497) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a7_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[5]), .CK(i_clk), .RN(
        n7658), .Q(median_sobel_inst_u_median_filter_submodule_n1224) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]), .CK(i_clk), 
        .RN(n7669), .Q(n3546), .QN(
        median_sobel_inst_u_sober_compare_submodule_n320) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[4]), .CK(i_clk), 
        .RN(n7632), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[4]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]), .CK(i_clk), 
        .RN(n7632), .Q(median_sobel_inst_u_sober_compare_submodule_n273), .QN(
        n3551) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__1_ ( .D(n7527), .CK(
        i_clk), .RN(n7648), .Q(n4593), .QN(median_sobel_inst_n935) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), .QN(n4518) );
  DFFRX2 conv_inst_conv_4_r_reg_7_ ( .D(conv_inst_N2770), .CK(i_clk), .RN(
        n7666), .Q(conv_inst_conv_4_r[7]), .QN(conv_inst_n233) );
  DFFRHQX2 y_origin_r_reg_0_ ( .D(n492), .CK(i_clk), .RN(n7647), .Q(n4514) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_5_ ( .D(conv_inst_N213), .CK(i_clk), .RN(
        n7657), .Q(conv_inst_data_bcd_4_r[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N7), .CK(i_clk), .RN(
        n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N280), .CK(i_clk), .RN(
        n7656), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N6), .CK(i_clk), .RN(
        n7663), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N27), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N210), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__2_ ( .D(
        median_sobel_inst_n573), .CK(i_clk), .RN(n7626), .Q(n4588), .QN(
        median_sobel_inst_n441) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[2]), .CK(i_clk), .RN(
        n7629), .Q(n3565), .QN(
        median_sobel_inst_u_median_filter_submodule_n1588) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .CK(i_clk), 
        .RN(n7634), .Q(n4527) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_6_ ( .D(
        median_sobel_inst_data_g_r[6]), .CK(i_clk), .RN(n7668), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n958) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N26), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_2_ ( .D(
        median_sobel_inst_data_f_r[2]), .CK(i_clk), .RN(n7638), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n941) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N310), .CK(i_clk), .RN(
        n7660), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N18), .CK(i_clk), .RN(
        n7634), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N16), .CK(i_clk), .RN(
        n7631), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N12), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .QN(
        n4511) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_14_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N157), .CK(i_clk), 
        .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .QN(
        n3573) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N11), .CK(i_clk), .RN(
        n7660), .Q(n4526) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N124), .CK(i_clk), .RN(
        n7668), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_0_ ( .D(
        median_sobel_inst_data_b_r[0]), .CK(i_clk), .RN(n7669), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n872) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_4_ ( .D(
        median_sobel_inst_data_b_r[4]), .CK(i_clk), .RN(n7636), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n903) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_2_ ( .D(
        median_sobel_inst_data_h_r[2]), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n918) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_5_ ( .D(
        median_sobel_inst_data_h_r[5]), .CK(i_clk), .RN(n7628), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n947) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]), .CK(i_clk), 
        .RN(n7632), .Q(median_sobel_inst_u_sober_compare_submodule_temp_a_r[9]), .QN(n3574) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_7_ ( .D(
        median_sobel_inst_data_c_r[7]), .CK(i_clk), .RN(n7661), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n907) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_3_ ( .D(
        median_sobel_inst_data_h_r[3]), .CK(i_clk), .RN(n7634), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n1512) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N142), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12])
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n92), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n403) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_7_ ( .D(
        median_sobel_inst_data_g_r[7]), .CK(i_clk), .RN(n7647), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n914) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_6_ ( .D(
        median_sobel_inst_data_h_r[6]), .CK(i_clk), .RN(n7634), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n955) );
  DFFRX1 out_valid_ready_r_reg ( .D(n2250), .CK(i_clk), .RN(n7669), .Q(
        o_out_valid) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]), .CK(i_clk), 
        .RN(n7626), .Q(median_sobel_inst_u_sobel_gradient_submodule_n344) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]), .CK(i_clk), 
        .RN(n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9])
         );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_7_ ( .D(conv_inst_N73), .CK(i_clk), 
        .RN(n7641), .Q(conv_result_w[7]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n131), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n260) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n102), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n407) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n104), .CK(i_clk), .RN(
        n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n399) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n138), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n367) );
  DFFRX1 z_r_reg_1_ ( .D(N789), .CK(i_clk), .RN(n7634), .Q(z_r[1]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n123), .CK(i_clk), .RN(
        n7660), .QN(median_sobel_inst_u_sober_compare_submodule_n71) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_5_ ( .D(conv_inst_N71), .CK(i_clk), 
        .RN(n7632), .Q(conv_result_w[5]) );
  DFFRHQX4 conv_inst_data_abc_r_reg_8_ ( .D(conv_inst_data_abc_w[8]), .CK(
        i_clk), .RN(n7664), .Q(conv_inst_n199) );
  DFFRHQX4 conv_inst_data_bcd_r_reg_6_ ( .D(conv_inst_data_bcd_w[6]), .CK(
        i_clk), .RN(n7660), .Q(conv_inst_n200) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N14), .CK(i_clk), .RN(
        n7669), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_7_ ( .D(
        median_sobel_inst_data_i_r[7]), .CK(i_clk), .RN(n7671), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n878) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_1_ ( .D(n4525), 
        .CK(i_clk), .RN(n7671), .QN(
        median_sobel_inst_u_median_filter_submodule_n952) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p4_r_reg_7_ ( .D(n3661), 
        .CK(i_clk), .RN(n7643), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n953) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_3_ ( .D(n7368), 
        .CK(i_clk), .RN(n7628), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n887) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N131), .CK(i_clk), .RN(
        n7649), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[1])
         );
  CLKBUFX8 U3411 ( .A(i_rst_n), .Y(n7662) );
  BUFX20 U3412 ( .A(i_rst_n), .Y(n7660) );
  BUFX20 U3413 ( .A(i_rst_n), .Y(n7671) );
  CLKBUFX8 U3414 ( .A(i_rst_n), .Y(n7661) );
  BUFX4 U3415 ( .A(n7669), .Y(n7628) );
  OAI222XL U3416 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n901), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n881), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n962), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[5]) );
  OAI222XL U3417 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n947), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n885), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n905), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[5]) );
  OAI22XL U3418 ( .A0(n5690), .A1(n5880), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n44), .B1(n5689), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N122) );
  OAI222XL U3419 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n885), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n947), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n905), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[5]) );
  OA21XL U3420 ( .A0(n6610), .A1(n6609), .B0(n6617), .Y(N720) );
  OA21XL U3421 ( .A0(n6604), .A1(n6603), .B0(n6617), .Y(N719) );
  OAI222XL U3422 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n896), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n871), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n939), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[1]) );
  OAI222XL U3423 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n946), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n872), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n906), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[0]) );
  OAI222XL U3424 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n1512), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n904), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n957), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[3]) );
  OAI222XL U3425 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n877), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n903), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n940), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[4]) );
  CLKMX2X2 U3426 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[17]), .S0(n4719), .Y(median_sobel_inst_n485) );
  CLKMX2X2 U3427 ( .A(median_sobel_inst_sobel_data_w[9]), .B(
        median_sobel_inst_G[20]), .S0(n4719), .Y(median_sobel_inst_n473) );
  CLKMX2X2 U3428 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[15]), .S0(n4719), .Y(median_sobel_inst_n493) );
  CLKMX2X2 U3429 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[19]), .S0(n4719), .Y(median_sobel_inst_n477) );
  CLKMX2X2 U3430 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[11]), .S0(n4719), .Y(median_sobel_inst_n509) );
  CLKMX2X2 U3431 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[18]), .S0(n4719), .Y(median_sobel_inst_n481) );
  OA21XL U3432 ( .A0(n6612), .A1(n6611), .B0(n6613), .Y(N747) );
  OA21XL U3433 ( .A0(n5829), .A1(n5828), .B0(n6613), .Y(N746) );
  OA21XL U3434 ( .A0(n6606), .A1(n6605), .B0(n6613), .Y(N743) );
  OA21XL U3435 ( .A0(n6615), .A1(n6614), .B0(n6613), .Y(N744) );
  OR2X2 U3436 ( .A(n7102), .B(n7101), .Y(N734) );
  OR2X2 U3437 ( .A(n7108), .B(n7107), .Y(N736) );
  OR2X2 U3438 ( .A(n7104), .B(n7103), .Y(N733) );
  OR2X2 U3439 ( .A(n7124), .B(n7123), .Y(N725) );
  OAI222XL U3440 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n915), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n1595), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n960), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[0]) );
  OR2X2 U3441 ( .A(n7114), .B(n7113), .Y(N740) );
  OR2X2 U3442 ( .A(n7120), .B(n7119), .Y(N726) );
  OAI222XL U3443 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n902), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n880), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n942), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[6]) );
  OAI222XL U3444 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n1513), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n899), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n941), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[2]) );
  OR2X2 U3445 ( .A(n7110), .B(n7109), .Y(N738) );
  OR2X2 U3446 ( .A(n7126), .B(n7125), .Y(N730) );
  OR2X2 U3447 ( .A(n7134), .B(n7133), .Y(N729) );
  OR2X2 U3448 ( .A(n7100), .B(n7099), .Y(N735) );
  OR2X2 U3449 ( .A(n7122), .B(n7121), .Y(N727) );
  OR2X2 U3450 ( .A(n7106), .B(n7105), .Y(N737) );
  OR2X2 U3451 ( .A(n7128), .B(n7127), .Y(N728) );
  OAI222XL U3452 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n909), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n879), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n951), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[4]) );
  OAI222XL U3453 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n889), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n916), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n954), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[5]) );
  AND2X2 U3454 ( .A(n7066), .B(n7358), .Y(conv_inst_N265) );
  OAI222XL U3455 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n955), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n883), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n912), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[6]) );
  OAI222XL U3456 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n910), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n882), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n952), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[1]) );
  OAI222XL U3457 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n875), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n956), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n917), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[4]) );
  OAI222XL U3458 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n872), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n946), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n906), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[0]) );
  OAI222XL U3459 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n871), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n896), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n939), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[1]) );
  OAI222XL U3460 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n888), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n918), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n959), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[2]) );
  OAI222XL U3461 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n904), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n1512), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n957), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[3]) );
  OAI222XL U3462 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n903), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n877), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n940), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[4]) );
  OAI222XL U3463 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n887), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n913), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n950), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[3]) );
  OAI222XL U3464 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n898), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n874), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n944), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[7]) );
  OAI222XL U3465 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n883), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n955), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n912), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[6]) );
  OAI222XL U3466 ( .A0(n5801), .A1(
        median_sobel_inst_u_median_filter_submodule_n874), .B0(n5800), .B1(
        median_sobel_inst_u_median_filter_submodule_n898), .C0(n5799), .C1(
        median_sobel_inst_u_median_filter_submodule_n944), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[7]) );
  OAI222XL U3467 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n948), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n886), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n911), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[0]) );
  OAI222XL U3468 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n876), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n914), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n953), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[7]) );
  OAI222XL U3469 ( .A0(n7154), .A1(n7148), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n945), .C0(n7152), .C1(
        median_sobel_inst_u_median_filter_submodule_n900), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[2]) );
  OR2X2 U3470 ( .A(n7118), .B(n7117), .Y(N731) );
  OR2X2 U3471 ( .A(n7116), .B(n7115), .Y(N732) );
  OR2X2 U3472 ( .A(n7112), .B(n7111), .Y(N739) );
  XOR2X1 U3473 ( .A(n3797), .B(n6874), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N40) );
  OAI22XL U3474 ( .A0(conv_inst_n258), .A1(n6087), .B0(conv_inst_n257), .B1(
        n5861), .Y(conv_inst_N128) );
  OAI22XL U3475 ( .A0(conv_inst_n263), .A1(n6087), .B0(conv_inst_n272), .B1(
        n5861), .Y(conv_inst_N136) );
  OAI22XL U3476 ( .A0(conv_inst_n255), .A1(n6087), .B0(conv_inst_n271), .B1(
        n5861), .Y(conv_inst_N125) );
  OAI22XL U3477 ( .A0(conv_inst_n259), .A1(n6087), .B0(conv_inst_n258), .B1(
        n5861), .Y(conv_inst_N129) );
  OAI22XL U3478 ( .A0(conv_inst_n266), .A1(n5861), .B0(conv_inst_n267), .B1(
        n6087), .Y(conv_inst_N140) );
  OAI22XL U3479 ( .A0(conv_inst_n259), .A1(n5861), .B0(conv_inst_n260), .B1(
        n6087), .Y(conv_inst_N130) );
  OAI22XL U3480 ( .A0(conv_inst_n263), .A1(n5861), .B0(conv_inst_n264), .B1(
        n6087), .Y(conv_inst_N137) );
  OAI22XL U3481 ( .A0(conv_inst_n267), .A1(n5861), .B0(n6087), .B1(n5798), .Y(
        conv_inst_N141) );
  OAI22XL U3482 ( .A0(conv_inst_n264), .A1(n5861), .B0(n6087), .B1(n7616), .Y(
        conv_inst_N138) );
  OAI22XL U3483 ( .A0(conv_inst_n269), .A1(n5861), .B0(n6087), .B1(
        conv_inst_n254), .Y(conv_inst_N144) );
  OAI22XL U3484 ( .A0(n5831), .A1(n5861), .B0(n6087), .B1(conv_inst_n253), .Y(
        conv_inst_N133) );
  OAI22XL U3485 ( .A0(conv_inst_n270), .A1(n5861), .B0(n6087), .B1(
        conv_inst_n269), .Y(conv_inst_N143) );
  OAI22XL U3486 ( .A0(n5802), .A1(n5861), .B0(n6087), .B1(n5831), .Y(
        conv_inst_N132) );
  OAI22XL U3487 ( .A0(n5798), .A1(n5861), .B0(n6087), .B1(conv_inst_n270), .Y(
        conv_inst_N142) );
  OAI22XL U3488 ( .A0(conv_inst_n256), .A1(n5861), .B0(conv_inst_n257), .B1(
        n6087), .Y(conv_inst_N127) );
  OAI22XL U3489 ( .A0(conv_inst_n260), .A1(n5861), .B0(n6087), .B1(n5802), .Y(
        conv_inst_N131) );
  OAI21XL U3490 ( .A0(n5890), .A1(n5889), .B0(n5888), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N123) );
  CLKMX2X2 U3491 ( .A(median_sobel_inst_angle[2]), .B(
        median_sobel_inst_angle_w[1]), .S0(n5809), .Y(median_sobel_inst_n513)
         );
  OR2X2 U3492 ( .A(n5758), .B(n5757), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]) );
  OAI21XL U3493 ( .A0(n7141), .A1(n5895), .B0(n6015), .Y(N756) );
  OR2X2 U3494 ( .A(n5872), .B(n5871), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]) );
  CLKINVX1 U3495 ( .A(n5394), .Y(median_sobel_inst_data_g_r[6]) );
  CLKINVX1 U3496 ( .A(n5453), .Y(median_sobel_inst_data_i_r[5]) );
  OAI2BB1X2 U3497 ( .A0N(median_sobel_inst_u_median_filter_submodule_n867), 
        .A1N(n5380), .B0(n5379), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[1]) );
  OAI2BB1X2 U3498 ( .A0N(median_sobel_inst_u_median_filter_submodule_n893), 
        .A1N(n5493), .B0(n5492), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[2]) );
  OAI2BB1X2 U3499 ( .A0N(n7449), .A1N(n5493), .B0(n5494), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[6]) );
  NOR2X2 U3500 ( .A(n3575), .B(
        median_sobel_inst_u_sober_compare_submodule_n377), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1220) );
  OR2X1 U3501 ( .A(n5822), .B(n5821), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]) );
  OR2X1 U3502 ( .A(n5811), .B(n5810), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]) );
  OR2X1 U3503 ( .A(n5824), .B(n5823), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]) );
  NOR2X2 U3504 ( .A(n3575), .B(n7477), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1200) );
  NOR2X2 U3505 ( .A(n3575), .B(
        median_sobel_inst_u_sober_compare_submodule_n320), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1180) );
  NOR2X2 U3506 ( .A(n3575), .B(
        median_sobel_inst_u_sober_compare_submodule_n322), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1240) );
  CLKINVX1 U3507 ( .A(n4106), .Y(N724) );
  NAND2X2 U3508 ( .A(n4674), .B(n4623), .Y(sram_addr_wait_r[18]) );
  OA21X2 U3509 ( .A0(n5362), .A1(n7593), .B0(n6588), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N175) );
  OAI21X1 U3510 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n881), .B0(n3978), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[5]) );
  NAND2X1 U3511 ( .A(n4439), .B(n4438), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[6]) );
  NAND2X1 U3512 ( .A(n4437), .B(n4436), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[3]) );
  NAND2X1 U3513 ( .A(n4431), .B(n4429), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[2]) );
  NAND2X1 U3514 ( .A(n4427), .B(n4426), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[5]) );
  MXI2X1 U3515 ( .A(median_sobel_inst_n217), .B(n1961), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[10]) );
  NAND2X1 U3516 ( .A(n4444), .B(n4443), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[7]) );
  NOR2X2 U3517 ( .A(n6988), .B(n5125), .Y(median_sobel_inst_N114) );
  NAND3X2 U3518 ( .A(n7315), .B(n7314), .C(n7347), .Y(sram_addr_wait_r[9]) );
  MXI2X1 U3519 ( .A(n7583), .B(median_sobel_inst_n276), .S0(n5807), .Y(
        median_sobel_inst_n1274) );
  OAI2BB1X2 U3520 ( .A0N(n7371), .A1N(n5001), .B0(n5490), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[0]) );
  OAI2BB1X2 U3521 ( .A0N(n5636), .A1N(n5380), .B0(n5635), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[5]) );
  NAND2X2 U3522 ( .A(n6963), .B(n6962), .Y(conv_inst_N78) );
  NAND2X1 U3523 ( .A(n4193), .B(n4190), .Y(
        median_sobel_inst_u_median_filter_submodule_n1579) );
  NOR2X2 U3524 ( .A(n3575), .B(
        median_sobel_inst_u_sober_compare_submodule_n250), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1190) );
  NOR2X1 U3525 ( .A(n3640), .B(n3639), .Y(N741) );
  OAI2BB1X1 U3526 ( .A0N(n6470), .A1N(n4507), .B0(n7186), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N141) );
  OAI21X2 U3527 ( .A0(n7177), .A1(n4462), .B0(n4458), .Y(
        median_sobel_inst_u_median_filter_submodule_n858) );
  NOR2BX2 U3528 ( .AN(n7052), .B(n4333), .Y(conv_inst_N2320) );
  NAND2X1 U3529 ( .A(n4434), .B(n4433), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[1]) );
  NOR2X1 U3530 ( .A(n3823), .B(n3822), .Y(conv_inst_N2590) );
  NAND2X2 U3531 ( .A(n6915), .B(n6914), .Y(conv_inst_N70) );
  NAND2X2 U3532 ( .A(n7201), .B(n4663), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]) );
  NAND2X1 U3533 ( .A(n4442), .B(n4440), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[0]) );
  AND2X2 U3534 ( .A(n6909), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N14) );
  AOI2BB1X2 U3535 ( .A0N(n7235), .A1N(N760), .B0(n7237), .Y(N785) );
  NOR2X2 U3536 ( .A(n4102), .B(n4101), .Y(conv_inst_N228) );
  CLKINVX1 U3537 ( .A(n5294), .Y(n4525) );
  NAND2X1 U3538 ( .A(n3984), .B(n3981), .Y(
        median_sobel_inst_u_median_filter_submodule_b5[3]) );
  OAI22X2 U3539 ( .A0(n7237), .A1(n7675), .B0(n7236), .B1(n7269), .Y(N786) );
  OAI21X1 U3540 ( .A0(n7180), .A1(
        median_sobel_inst_u_median_filter_submodule_n800), .B0(n7179), .Y(
        median_sobel_inst_u_median_filter_submodule_b5[0]) );
  MXI2X1 U3541 ( .A(n7595), .B(median_sobel_inst_n269), .S0(n5807), .Y(
        median_sobel_inst_n1269) );
  OAI21X2 U3542 ( .A0(n7230), .A1(n7229), .B0(n7228), .Y(out_data_wait_r[5])
         );
  MXI2X1 U3543 ( .A(median_sobel_inst_n125), .B(median_sobel_inst_n246), .S0(
        n5857), .Y(median_sobel_inst_n599) );
  NAND2BX2 U3544 ( .AN(n5463), .B(n4104), .Y(n488) );
  MXI2X1 U3545 ( .A(median_sobel_inst_n216), .B(n1879), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[9]) );
  OAI21X1 U3546 ( .A0(n7230), .A1(n5237), .B0(n5236), .Y(out_data_wait_r[4])
         );
  OAI21X1 U3547 ( .A0(n7230), .A1(n5242), .B0(n5241), .Y(out_data_wait_r[6])
         );
  OAI21X1 U3548 ( .A0(n7230), .A1(n5247), .B0(n5246), .Y(out_data_wait_r[7])
         );
  NOR2X1 U3549 ( .A(n6988), .B(n6583), .Y(median_sobel_inst_N110) );
  XNOR2X1 U3550 ( .A(n4264), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N140) );
  OAI21X1 U3551 ( .A0(n7211), .A1(n7207), .B0(n7206), .Y(out_data_wait_r[0])
         );
  OAI21X1 U3552 ( .A0(n7211), .A1(n5232), .B0(n5231), .Y(out_data_wait_r[3])
         );
  MXI2X1 U3553 ( .A(median_sobel_inst_n256), .B(n1907), .S0(n4366), .Y(
        median_sobel_inst_net67714) );
  MXI2X1 U3554 ( .A(median_sobel_inst_n246), .B(n1971), .S0(n4366), .Y(
        median_sobel_inst_med_sobel_e_wait_r[20]) );
  MXI2X1 U3555 ( .A(median_sobel_inst_n257), .B(n7598), .S0(n5848), .Y(
        median_sobel_inst_n1267) );
  MXI2X1 U3556 ( .A(median_sobel_inst_n242), .B(n7428), .S0(n5848), .Y(
        median_sobel_inst_n1257) );
  MXI2X1 U3557 ( .A(median_sobel_inst_n258), .B(n7602), .S0(n5848), .Y(
        median_sobel_inst_n1265) );
  MXI2X1 U3558 ( .A(median_sobel_inst_n247), .B(n1969), .S0(n5848), .Y(
        median_sobel_inst_med_sobel_e_wait_r[21]) );
  MXI2X1 U3559 ( .A(median_sobel_inst_u_sober_compare_submodule_n68), .B(n7590), .S0(n5848), .Y(median_sobel_inst_u_sober_compare_submodule_n120) );
  MXI2X1 U3560 ( .A(median_sobel_inst_u_sober_compare_submodule_n67), .B(n7592), .S0(n5848), .Y(median_sobel_inst_u_sober_compare_submodule_n119) );
  MXI2X1 U3561 ( .A(n4598), .B(n4601), .S0(n4146), .Y(median_sobel_inst_n519)
         );
  OAI2BB1X1 U3562 ( .A0N(n5135), .A1N(n6857), .B0(n5134), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N117) );
  MXI2X2 U3563 ( .A(n7373), .B(n7008), .S0(n4130), .Y(N788) );
  XNOR2X1 U3564 ( .A(n6986), .B(n3613), .Y(conv_inst_data_bcd_w[4]) );
  MXI2X2 U3565 ( .A(n7492), .B(n7373), .S0(n4130), .Y(N792) );
  MXI2X2 U3566 ( .A(n7417), .B(n7508), .S0(n4130), .Y(N790) );
  XOR2X2 U3567 ( .A(n3923), .B(n5522), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]) );
  XOR2X2 U3568 ( .A(n6951), .B(n3881), .Y(conv_inst_N72) );
  XOR2X2 U3569 ( .A(n6920), .B(n3647), .Y(conv_inst_N71) );
  XOR2X1 U3570 ( .A(n5138), .B(n3990), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N220) );
  XNOR2X2 U3571 ( .A(n6946), .B(n6945), .Y(conv_inst_N77) );
  XOR2X1 U3572 ( .A(n6537), .B(n6536), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N113) );
  XOR2X1 U3573 ( .A(n4607), .B(n5280), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]) );
  XOR2X2 U3574 ( .A(n6972), .B(n4407), .Y(conv_inst_data_bcd_w[5]) );
  XNOR2X2 U3575 ( .A(n5275), .B(n5274), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]) );
  XNOR2X2 U3576 ( .A(n4079), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N157) );
  XOR2X1 U3577 ( .A(n7192), .B(n7191), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N139) );
  XNOR2X1 U3578 ( .A(n6097), .B(n4225), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N173) );
  NAND3X2 U3579 ( .A(n4281), .B(n4280), .C(n4278), .Y(
        median_sobel_inst_u_median_filter_submodule_n857) );
  AOI2BB2X1 U3580 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_N46), 
        .B1(n7362), .A0N(median_sobel_inst_u_sobel_gradient_submodule_N46), 
        .A1N(n7362), .Y(median_sobel_inst_u_sobel_gradient_submodule_N75) );
  CLKBUFX3 U3581 ( .A(n6238), .Y(n3788) );
  INVX1 U3582 ( .A(conv_inst_n199), .Y(n5831) );
  INVX1 U3583 ( .A(conv_inst_n200), .Y(n5798) );
  INVX6 U3584 ( .A(n7297), .Y(n7291) );
  INVX1 U3585 ( .A(input_data_ready_r[1]), .Y(n6571) );
  OR2X1 U3586 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), .Y(
        n5892) );
  OA22X1 U3587 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n71), .B0(
        median_sobel_inst_u_sober_compare_submodule_n398), .B1(n5972), .Y(
        n5787) );
  OR2X1 U3588 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n59), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n5775) );
  INVX1 U3589 ( .A(conv_inst_n198), .Y(n5802) );
  NAND2X2 U3590 ( .A(n5799), .B(n5801), .Y(n5800) );
  INVX3 U3591 ( .A(n4296), .Y(n6705) );
  OA21X2 U3592 ( .A0(cnt[1]), .A1(n445), .B0(n4228), .Y(n7266) );
  BUFX4 U3593 ( .A(n5859), .Y(n5849) );
  CLKBUFX8 U3594 ( .A(n6238), .Y(n3789) );
  OR2X1 U3595 ( .A(n6356), .B(n6085), .Y(n6086) );
  NAND2X1 U3596 ( .A(n4945), .B(cnt[3]), .Y(n7305) );
  BUFX8 U3597 ( .A(n6217), .Y(n5873) );
  INVX3 U3598 ( .A(n4282), .Y(n4281) );
  NAND2X1 U3599 ( .A(n7277), .B(cnt[3]), .Y(n7267) );
  INVX4 U3600 ( .A(n7313), .Y(n7306) );
  AOI22X2 U3601 ( .A0(n3988), .A1(
        median_sobel_inst_u_median_filter_submodule_n993), .B0(
        median_sobel_inst_u_median_filter_submodule_net87846), .B1(n5574), .Y(
        n6409) );
  NOR2X4 U3602 ( .A(n3654), .B(n6955), .Y(n3655) );
  NAND2X1 U3603 ( .A(n4945), .B(cnt[8]), .Y(n7301) );
  NAND2X1 U3604 ( .A(n4945), .B(cnt[9]), .Y(n7300) );
  NAND2X1 U3605 ( .A(n5729), .B(
        median_sobel_inst_u_median_filter_submodule_net83841), .Y(n3984) );
  OAI22X1 U3606 ( .A0(n7172), .A1(
        median_sobel_inst_u_median_filter_submodule_n821), .B0(n4171), .B1(
        median_sobel_inst_u_median_filter_submodule_n814), .Y(n7163) );
  AND2X2 U3607 ( .A(n6997), .B(n6996), .Y(n7002) );
  NAND2X1 U3608 ( .A(n5729), .B(
        median_sobel_inst_u_median_filter_submodule_n966), .Y(n3943) );
  NAND2X1 U3609 ( .A(n6977), .B(n6976), .Y(n6978) );
  AOI22X1 U3610 ( .A0(n3988), .A1(
        median_sobel_inst_u_median_filter_submodule_n1227), .B0(n5574), .B1(
        median_sobel_inst_u_median_filter_submodule_n166), .Y(n7179) );
  INVX1 U3611 ( .A(n7358), .Y(n3696) );
  NAND2X1 U3612 ( .A(n7277), .B(cnt[8]), .Y(n7242) );
  NAND2X1 U3613 ( .A(n7277), .B(cnt[7]), .Y(n7243) );
  NAND2X1 U3614 ( .A(n7277), .B(cnt[9]), .Y(n7241) );
  NAND2X1 U3615 ( .A(n5589), .B(
        median_sobel_inst_u_median_filter_submodule_n197), .Y(n4462) );
  INVX1 U3616 ( .A(n7358), .Y(n3700) );
  INVX1 U3617 ( .A(n7358), .Y(n3701) );
  INVX1 U3618 ( .A(n7358), .Y(n4374) );
  INVX1 U3619 ( .A(n7358), .Y(n4037) );
  NAND2X2 U3620 ( .A(n7335), .B(z_r[1]), .Y(n7325) );
  NAND2X2 U3621 ( .A(n7335), .B(z_r[4]), .Y(n7319) );
  NAND2X2 U3622 ( .A(n7335), .B(z_r[2]), .Y(n7323) );
  NAND2X2 U3623 ( .A(n7335), .B(z_r[0]), .Y(n7327) );
  NAND2X2 U3624 ( .A(n7335), .B(y_r[1]), .Y(n7331) );
  NAND2X2 U3625 ( .A(n7335), .B(y_r[0]), .Y(n7333) );
  INVX1 U3626 ( .A(n4945), .Y(n4947) );
  OA21X2 U3627 ( .A0(n6322), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n58), .Y(n6230) );
  CLKBUFX8 U3628 ( .A(n5699), .Y(n5979) );
  NOR2X2 U3629 ( .A(n6947), .B(n6949), .Y(n6920) );
  NAND2X1 U3630 ( .A(n4448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n4437) );
  NAND2X1 U3631 ( .A(n4448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n4447) );
  NAND2X1 U3632 ( .A(n4448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .Y(n4439) );
  AOI2BB2X2 U3633 ( .B0(n4114), .B1(
        median_sobel_inst_u_median_filter_submodule_n176), .A0N(n5588), .A1N(
        median_sobel_inst_u_median_filter_submodule_n926), .Y(n4117) );
  OAI211X1 U3634 ( .A0(cnt[7]), .A1(cnt[6]), .B0(n6999), .C0(n6990), .Y(n6991)
         );
  NAND2X2 U3635 ( .A(n4246), .B(n6855), .Y(n4245) );
  AOI2BB2X2 U3636 ( .B0(n4114), .B1(
        median_sobel_inst_u_median_filter_submodule_n182), .A0N(n5588), .A1N(
        median_sobel_inst_u_median_filter_submodule_n783), .Y(n4116) );
  AOI22X1 U3637 ( .A0(n4311), .A1(n7483), .B0(n4411), .B1(
        median_sobel_inst_u_median_filter_submodule_n1080), .Y(n4412) );
  NOR2X6 U3638 ( .A(n7269), .B(n7673), .Y(n7237) );
  AOI2BB2X2 U3639 ( .B0(n4114), .B1(n7453), .A0N(n5588), .A1N(
        median_sobel_inst_u_median_filter_submodule_n934), .Y(n4115) );
  NAND2X1 U3640 ( .A(n5671), .B(n6706), .Y(n6707) );
  NAND2X1 U3641 ( .A(n4114), .B(
        median_sobel_inst_u_median_filter_submodule_n892), .Y(n4280) );
  INVXL U3642 ( .A(n6998), .Y(n4140) );
  AOI21X2 U3643 ( .A0(n6739), .A1(n6738), .B0(n6737), .Y(n4079) );
  AOI2BB2X2 U3644 ( .B0(n7215), .B1(
        median_sobel_inst_u_median_filter_submodule_n1091), .A0N(n4537), .A1N(
        median_sobel_inst_u_median_filter_submodule_n844), .Y(n7216) );
  NOR2X6 U3645 ( .A(n7269), .B(n7268), .Y(n7270) );
  NAND2X2 U3646 ( .A(n7177), .B(n4279), .Y(n4278) );
  NAND2BX1 U3647 ( .AN(n6327), .B(n6326), .Y(n6232) );
  OAI2BB1X2 U3648 ( .A0N(n4240), .A1N(n6867), .B0(n4237), .Y(n4236) );
  NAND2X1 U3649 ( .A(n6853), .B(n6852), .Y(n6854) );
  INVX1 U3650 ( .A(n6613), .Y(n3639) );
  AOI2BB2X2 U3651 ( .B0(n7177), .B1(
        median_sobel_inst_u_median_filter_submodule_n232), .A0N(n5589), .A1N(
        median_sobel_inst_u_median_filter_submodule_n1592), .Y(n5177) );
  NAND2X2 U3652 ( .A(n4475), .B(n5442), .Y(n4474) );
  NOR2X2 U3653 ( .A(n4174), .B(n4173), .Y(n4172) );
  OAI21X2 U3654 ( .A0(n4263), .A1(n4261), .B0(n4259), .Y(n4264) );
  INVXL U3655 ( .A(n6596), .Y(n6597) );
  AOI2BB2X2 U3656 ( .B0(n4311), .B1(
        median_sobel_inst_u_median_filter_submodule_n222), .A0N(n7172), .A1N(
        median_sobel_inst_u_median_filter_submodule_n818), .Y(n7160) );
  OAI21X2 U3657 ( .A0(n7345), .A1(n7344), .B0(n7343), .Y(n7349) );
  NAND3X2 U3658 ( .A(n3713), .B(n6797), .C(n3712), .Y(n3711) );
  NAND2X2 U3659 ( .A(n4114), .B(n7621), .Y(n5591) );
  OAI21X2 U3660 ( .A0(n6484), .A1(n6483), .B0(n6482), .Y(n6495) );
  NOR2X6 U3661 ( .A(n3585), .B(n3584), .Y(n3592) );
  NAND2X1 U3662 ( .A(n4672), .B(n7610), .Y(n4669) );
  NAND2X1 U3663 ( .A(n5116), .B(conv_inst_n276), .Y(n5119) );
  OAI21X1 U3664 ( .A0(n5266), .A1(n6976), .B0(n5265), .Y(n5224) );
  AOI21X2 U3665 ( .A0(n6739), .A1(n6728), .B0(n6718), .Y(n6719) );
  OAI21X2 U3666 ( .A0(n6982), .A1(n3614), .B0(n6981), .Y(n3613) );
  NAND2BX1 U3667 ( .AN(n7143), .B(n6617), .Y(n4106) );
  NAND2X2 U3668 ( .A(n7049), .B(n7048), .Y(n7050) );
  NAND2X1 U3669 ( .A(n6999), .B(n4142), .Y(n4141) );
  NAND2X1 U3670 ( .A(n6857), .B(n6858), .Y(n6862) );
  AOI2BB2X1 U3671 ( .B0(n3980), .B1(n3979), .A0N(n7156), .A1N(
        median_sobel_inst_u_median_filter_submodule_n901), .Y(n3978) );
  NAND2X1 U3672 ( .A(n4105), .B(n5815), .Y(n4104) );
  AOI22X1 U3673 ( .A0(n4541), .A1(n4945), .B0(n7313), .B1(n793), .Y(n7314) );
  CLKINVX1 U3674 ( .A(n7142), .Y(n4265) );
  NAND2X1 U3675 ( .A(n4945), .B(cnt[10]), .Y(n7299) );
  NAND2XL U3676 ( .A(n6882), .B(n6880), .Y(n6874) );
  AO21X1 U3677 ( .A0(n6360), .A1(n6754), .B0(n6278), .Y(n4381) );
  NAND2X1 U3678 ( .A(n7277), .B(cnt[10]), .Y(n7240) );
  NAND2X4 U3679 ( .A(n3929), .B(n6959), .Y(n6963) );
  OAI21X2 U3680 ( .A0(n4196), .A1(n4195), .B0(n7230), .Y(n5355) );
  AOI2BB2X1 U3681 ( .B0(n4446), .B1(n3552), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n871), .Y(n4433) );
  AOI2BB2X1 U3682 ( .B0(n4446), .B1(n3559), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n885), .Y(n4426) );
  AOI2BB2X1 U3683 ( .B0(n4446), .B1(n4430), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n888), .Y(n4429) );
  AOI2BB2X1 U3684 ( .B0(n4446), .B1(n3567), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n874), .Y(n4443) );
  AOI2BB2X1 U3685 ( .B0(n4446), .B1(n3554), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n904), .Y(n4436) );
  AOI2BB2X1 U3686 ( .B0(n4446), .B1(n3562), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n883), .Y(n4438) );
  AOI2BB2X1 U3687 ( .B0(n4446), .B1(n3541), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n903), .Y(n4445) );
  NAND2X1 U3688 ( .A(n7296), .B(n863), .Y(n7283) );
  NAND2X1 U3689 ( .A(n7296), .B(n859), .Y(n7284) );
  NAND2X1 U3690 ( .A(n7296), .B(n865), .Y(n7285) );
  NAND2X1 U3691 ( .A(n7296), .B(n871), .Y(n7286) );
  NAND2X1 U3692 ( .A(n7296), .B(n869), .Y(n7287) );
  NAND2X1 U3693 ( .A(n7296), .B(n867), .Y(n7288) );
  NAND2X1 U3694 ( .A(n7296), .B(n861), .Y(n7290) );
  NAND2X1 U3695 ( .A(n4448), .B(n4428), .Y(n4427) );
  NAND2X1 U3696 ( .A(n4448), .B(n4432), .Y(n4431) );
  NAND2X1 U3697 ( .A(n4448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(n4444) );
  NAND2X1 U3698 ( .A(n4448), .B(n4435), .Y(n4434) );
  AOI2BB2X1 U3699 ( .B0(n4446), .B1(n4441), .A0N(n6638), .A1N(
        median_sobel_inst_u_median_filter_submodule_n872), .Y(n4440) );
  XOR2X2 U3700 ( .A(n4502), .B(conv_inst_n102), .Y(n4501) );
  CLKBUFX3 U3701 ( .A(n5289), .Y(n5868) );
  AOI2BB1X2 U3702 ( .A0N(n7197), .A1N(n4597), .B0(n4664), .Y(n4663) );
  XOR2X2 U3703 ( .A(n6511), .B(conv_inst_conv_2_r[12]), .Y(n6512) );
  XOR2X2 U3704 ( .A(n3693), .B(conv_inst_conv_2_r[14]), .Y(n3692) );
  NAND2X1 U3705 ( .A(n6911), .B(n6916), .Y(n6915) );
  NAND2X2 U3706 ( .A(n6913), .B(n6912), .Y(n6914) );
  NAND2X2 U3707 ( .A(n6860), .B(n6859), .Y(n6861) );
  NAND2BX2 U3708 ( .AN(n5487), .B(n5486), .Y(n5488) );
  AOI21X1 U3709 ( .A0(n6779), .A1(n6529), .B0(n6528), .Y(n6534) );
  AOI2BB2X2 U3710 ( .B0(n7277), .B1(n4541), .A0N(n2189), .A1N(n7276), .Y(n7278) );
  NOR2X1 U3711 ( .A(n4714), .B(n5848), .Y(n6583) );
  OAI21XL U3712 ( .A0(n5230), .A1(n5229), .B0(n7230), .Y(n5231) );
  OAI21XL U3713 ( .A0(n7205), .A1(n7204), .B0(n7230), .Y(n7206) );
  OAI21XL U3714 ( .A0(n5235), .A1(n5234), .B0(n7230), .Y(n5236) );
  OAI21XL U3715 ( .A0(n5240), .A1(n5239), .B0(n7230), .Y(n5241) );
  OAI21XL U3716 ( .A0(n5245), .A1(n5244), .B0(n7230), .Y(n5246) );
  BUFX6 U3717 ( .A(n5796), .Y(n5861) );
  NAND2X1 U3718 ( .A(n7200), .B(
        median_sobel_inst_u_sober_compare_submodule_n278), .Y(n7201) );
  AOI211X1 U3719 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[2]), .B0(
        conv_result_w[2]), .C0(n5354), .Y(n5356) );
  AOI2BB2X2 U3720 ( .B0(n7318), .B1(n4541), .A0N(n1906), .A1N(n7346), .Y(n7348) );
  NOR2X1 U3721 ( .A(n7233), .B(n7232), .Y(n3888) );
  NOR3XL U3722 ( .A(n4292), .B(conv_result_w[1]), .C(n4291), .Y(n7210) );
  OAI21X1 U3723 ( .A0(n6173), .A1(n4227), .B0(n4226), .Y(n4225) );
  AND3X4 U3724 ( .A(n7298), .B(n7347), .C(n4624), .Y(n4623) );
  XOR2X2 U3725 ( .A(n4334), .B(n7497), .Y(n4333) );
  NOR2X1 U3726 ( .A(n3983), .B(n3982), .Y(n3981) );
  XOR2X2 U3727 ( .A(n3703), .B(conv_inst_n20), .Y(n3702) );
  NAND2X2 U3728 ( .A(n6961), .B(n6960), .Y(n6962) );
  BUFX12 U3729 ( .A(n4228), .Y(n4130) );
  XNOR2X2 U3730 ( .A(n7089), .B(n7088), .Y(n7090) );
  MXI2X1 U3731 ( .A(n2152), .B(n2153), .S0(i_in_valid), .Y(n5841) );
  MXI2X1 U3732 ( .A(n2153), .B(n2151), .S0(i_in_valid), .Y(n5842) );
  MXI2X1 U3733 ( .A(n2151), .B(n2150), .S0(i_in_valid), .Y(n5843) );
  XNOR2X1 U3734 ( .A(n5782), .B(n5781), .Y(n5784) );
  XOR2X1 U3735 ( .A(n4658), .B(n6436), .Y(n6437) );
  INVX6 U3736 ( .A(n4171), .Y(n4311) );
  BUFX16 U3737 ( .A(n7092), .Y(n7129) );
  BUFX16 U3738 ( .A(n7098), .Y(n7132) );
  OR2X1 U3739 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .Y(n6853)
         );
  OR2X1 U3740 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n58), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .Y(n6471) );
  OR2X1 U3741 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .Y(n6110) );
  OR2X1 U3742 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n4956) );
  OR2X1 U3743 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .Y(
        n6745) );
  OR2XL U3744 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n371), .Y(n6350) );
  OR2XL U3745 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), .Y(
        n5914) );
  OR2X1 U3746 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), .Y(n6816) );
  OR2X1 U3747 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n372), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .Y(n6239) );
  OR2XL U3748 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n371), .Y(n5026) );
  OR2XL U3749 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6833) );
  OR2XL U3750 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), .Y(n6792) );
  OR2XL U3751 ( .A(n7463), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n6033) );
  OR2XL U3752 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n4884) );
  OR2XL U3753 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .Y(
        n6724) );
  OAI2BB1X2 U3754 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_n35), 
        .A1N(median_sobel_inst_u_sobel_gradient_submodule_n8), .B0(n7187), .Y(
        n4263) );
  INVX3 U3755 ( .A(n6637), .Y(n4446) );
  AO21XL U3756 ( .A0(n6298), .A1(n6291), .B0(n6292), .Y(n6018) );
  AO21XL U3757 ( .A0(n6402), .A1(n6310), .B0(n6309), .Y(n6315) );
  INVX3 U3758 ( .A(n6483), .Y(n6499) );
  INVX6 U3759 ( .A(n7198), .Y(n6519) );
  INVX4 U3760 ( .A(n6353), .Y(n6779) );
  BUFX3 U3761 ( .A(n7178), .Y(n3988) );
  AO21X1 U3762 ( .A0(n6298), .A1(n6297), .B0(n6296), .Y(n6303) );
  AND2X2 U3763 ( .A(n5574), .B(
        median_sobel_inst_u_median_filter_submodule_net87818), .Y(n3982) );
  AO21X1 U3764 ( .A0(n6208), .A1(n5739), .B0(n5740), .Y(n5718) );
  AO21X1 U3765 ( .A0(n6298), .A1(n6186), .B0(n6185), .Y(n6191) );
  OAI2BB1X2 U3766 ( .A0N(n7045), .A1N(n4679), .B0(n7043), .Y(n4334) );
  NAND2X4 U3767 ( .A(n7342), .B(x_r[2]), .Y(n7347) );
  INVXL U3768 ( .A(median_sobel_inst_data_h_r[7]), .Y(n5487) );
  CLKINVX6 U3769 ( .A(n7177), .Y(n4113) );
  INVX6 U3770 ( .A(n7176), .Y(n5589) );
  OAI22XL U3771 ( .A0(n1891), .A1(n7138), .B0(n1905), .B1(n7268), .Y(n7135) );
  INVX3 U3772 ( .A(n6593), .Y(n7211) );
  CLKINVX1 U3773 ( .A(n6952), .Y(n6964) );
  INVX1 U3774 ( .A(n6980), .Y(n3614) );
  BUFX4 U3775 ( .A(n5783), .Y(n7052) );
  NOR2X2 U3776 ( .A(n7166), .B(
        median_sobel_inst_u_median_filter_submodule_n790), .Y(n3983) );
  INVX6 U3777 ( .A(n4207), .Y(n7318) );
  OAI2BB1X2 U3778 ( .A0N(n7356), .A1N(n6468), .B0(n6467), .Y(n3957) );
  INVX1 U3779 ( .A(n6959), .Y(n6960) );
  INVXL U3780 ( .A(n7199), .Y(n7200) );
  NAND2XL U3781 ( .A(n6927), .B(conv_inst_n25), .Y(n5796) );
  INVX4 U3782 ( .A(n6961), .Y(n3929) );
  INVX1 U3783 ( .A(n7256), .Y(n4522) );
  INVX1 U3784 ( .A(n7152), .Y(n7150) );
  NAND3X4 U3785 ( .A(n5353), .B(n6637), .C(n5801), .Y(n6638) );
  NOR2BX2 U3786 ( .AN(n5680), .B(n5679), .Y(n7676) );
  CLKINVX1 U3787 ( .A(n6006), .Y(n6224) );
  INVX3 U3788 ( .A(n6617), .Y(n7142) );
  BUFX8 U3789 ( .A(n3889), .Y(n3654) );
  INVX1 U3790 ( .A(median_sobel_inst_n749), .Y(n3745) );
  INVX1 U3791 ( .A(n6969), .Y(n6971) );
  NAND2XL U3792 ( .A(median_sobel_inst_cnt_4_), .B(n6586), .Y(n5124) );
  INVX1 U3793 ( .A(n7153), .Y(n7151) );
  INVX3 U3794 ( .A(n3619), .Y(n3987) );
  NAND2X4 U3795 ( .A(n3926), .B(n3925), .Y(n6458) );
  NOR2X2 U3796 ( .A(n4763), .B(n3811), .Y(n4762) );
  AOI21X2 U3797 ( .A0(n7356), .A1(n3694), .B0(n7036), .Y(n3693) );
  INVX1 U3798 ( .A(n5903), .Y(n5920) );
  AOI21X2 U3799 ( .A0(n5997), .A1(n5894), .B0(n4933), .Y(n6595) );
  CLKINVX3 U3800 ( .A(n3902), .Y(n3901) );
  NOR3X6 U3801 ( .A(n3540), .B(n3619), .C(n3728), .Y(n3727) );
  INVX3 U3802 ( .A(n6231), .Y(n6328) );
  NOR2X2 U3803 ( .A(n4171), .B(n4308), .Y(n4174) );
  NAND2X4 U3804 ( .A(n3732), .B(n3731), .Y(n3730) );
  NAND2X2 U3805 ( .A(median_sobel_inst_u_median_filter_submodule_n1435), .B(
        n7495), .Y(n5788) );
  NAND2X1 U3806 ( .A(n5441), .B(median_sobel_inst_data_b_r[7]), .Y(n5442) );
  OA21X2 U3807 ( .A0(n7226), .A1(n7225), .B0(n7230), .Y(n7227) );
  AOI21X2 U3808 ( .A0(n7029), .A1(n5343), .B0(n5342), .Y(n5344) );
  AOI22X2 U3809 ( .A0(n5294), .A1(median_sobel_inst_data_g_r[1]), .B0(n5086), 
        .B1(median_sobel_inst_data_g_r[0]), .Y(n5088) );
  NOR2X1 U3810 ( .A(n4869), .B(median_sobel_inst_data_e_r[6]), .Y(n3620) );
  OAI2BB1X1 U3811 ( .A0N(n7260), .A1N(n5328), .B0(n7246), .Y(n7255) );
  NAND2BX2 U3812 ( .AN(n4867), .B(n4866), .Y(n4868) );
  NAND2X2 U3813 ( .A(n3940), .B(n6956), .Y(n3939) );
  NAND2X1 U3814 ( .A(n6903), .B(n6906), .Y(n5387) );
  NOR2X2 U3815 ( .A(n4150), .B(n4149), .Y(n4523) );
  INVX3 U3816 ( .A(n4108), .Y(n4112) );
  CLKBUFX3 U3817 ( .A(n6846), .Y(n4256) );
  NOR2BX2 U3818 ( .AN(n7003), .B(cnt[10]), .Y(n7010) );
  NOR2X4 U3819 ( .A(n7335), .B(n6581), .Y(n7313) );
  OAI21X1 U3820 ( .A0(n2259), .A1(n7224), .B0(n4197), .Y(n4196) );
  NOR2BX2 U3821 ( .AN(n5456), .B(n3812), .Y(n3681) );
  INVX1 U3822 ( .A(n6478), .Y(n6762) );
  AND2X2 U3823 ( .A(n6738), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]), .Y(n6715)
         );
  BUFX12 U3824 ( .A(n7239), .Y(n7277) );
  AOI21X1 U3825 ( .A0(n6864), .A1(n4239), .B0(n4238), .Y(n4237) );
  NAND2BX2 U3826 ( .AN(n4733), .B(n5480), .Y(n4732) );
  AOI21X1 U3827 ( .A0(n6830), .A1(n6842), .B0(n4301), .Y(n4300) );
  NOR2X4 U3828 ( .A(n7091), .B(n5894), .Y(n6613) );
  NOR2X4 U3829 ( .A(n4229), .B(n4749), .Y(n4355) );
  NAND2BX2 U3830 ( .AN(n3646), .B(n6948), .Y(n6950) );
  NOR3X4 U3831 ( .A(n3778), .B(n3811), .C(n4063), .Y(n3777) );
  NOR3X2 U3832 ( .A(n4677), .B(n7342), .C(n4676), .Y(n4675) );
  BUFX12 U3833 ( .A(n5783), .Y(n7358) );
  CLKINVX6 U3834 ( .A(n4043), .Y(n4042) );
  INVX6 U3835 ( .A(n6593), .Y(n7230) );
  OR2X1 U3836 ( .A(conv_inst_conv_1_r[8]), .B(conv_inst_data_abc_1_r[8]), .Y(
        n6318) );
  OR2X1 U3837 ( .A(n4526), .B(n4527), .Y(n6842) );
  OR2X1 U3838 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .Y(n6906) );
  OR2X1 U3839 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n6488) );
  OR2X1 U3840 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n372), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .Y(n6236) );
  INVX6 U3841 ( .A(n7178), .Y(n7166) );
  OR2X1 U3842 ( .A(n4515), .B(n878), .Y(n3550) );
  INVX1 U3843 ( .A(median_sobel_inst_u_median_filter_submodule_n937), .Y(n4465) );
  INVX12 U3844 ( .A(n5588), .Y(n7177) );
  OR2X2 U3845 ( .A(n5394), .B(median_sobel_inst_n759), .Y(n4125) );
  INVX6 U3846 ( .A(n3826), .Y(n6701) );
  INVX3 U3847 ( .A(n5715), .Y(n6208) );
  OAI22XL U3848 ( .A0(n2261), .A1(n7224), .B0(n2269), .B1(n7223), .Y(n7225) );
  NAND2X4 U3849 ( .A(median_sobel_inst_u_median_filter_submodule_n652), .B(
        median_sobel_inst_u_median_filter_submodule_n1435), .Y(n7152) );
  INVX1 U3850 ( .A(median_sobel_inst_data_h_r[6]), .Y(n3947) );
  OR2X6 U3851 ( .A(n5272), .B(n5038), .Y(n4276) );
  INVX1 U3852 ( .A(n3528), .Y(n5296) );
  NAND2BX1 U3853 ( .AN(n3571), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n6454) );
  INVX3 U3854 ( .A(n4351), .Y(n4618) );
  INVX3 U3855 ( .A(n5363), .Y(n6065) );
  INVX3 U3856 ( .A(n4780), .Y(n4763) );
  NAND2BX1 U3857 ( .AN(median_sobel_inst_u_median_filter_submodule_n1435), .B(
        n7147), .Y(n7153) );
  INVX4 U3858 ( .A(n7188), .Y(n6470) );
  CLKINVX1 U3859 ( .A(n6947), .Y(n6948) );
  NOR4X1 U3860 ( .A(cnt[9]), .B(cnt[8]), .C(cnt[4]), .D(cnt[3]), .Y(n7003) );
  INVX1 U3861 ( .A(n6937), .Y(n4273) );
  AND2X1 U3862 ( .A(n6796), .B(n6785), .Y(n4315) );
  INVX1 U3863 ( .A(n6581), .Y(n4944) );
  CLKINVX1 U3864 ( .A(median_sobel_inst_data_f_r[5]), .Y(n3776) );
  INVX1 U3865 ( .A(n7056), .Y(n7057) );
  NAND2BX1 U3866 ( .AN(median_sobel_inst_data_e_r[7]), .B(
        median_sobel_inst_data_h_r[7]), .Y(n3985) );
  NOR2X2 U3867 ( .A(n6357), .B(n6893), .Y(n5592) );
  BUFX2 U3868 ( .A(n6620), .Y(n6703) );
  BUFX8 U3869 ( .A(n3898), .Y(n7316) );
  NAND2BX1 U3870 ( .AN(conv_inst_n16), .B(conv_inst_n187), .Y(n3931) );
  CLKINVX1 U3871 ( .A(n6955), .Y(n3940) );
  NOR2X2 U3872 ( .A(n3606), .B(median_sobel_inst_data_h_r[2]), .Y(n3605) );
  INVX1 U3873 ( .A(n6969), .Y(n4402) );
  BUFX3 U3874 ( .A(n6868), .Y(n4240) );
  CLKINVX1 U3875 ( .A(n5957), .Y(n6136) );
  CLKINVX1 U3876 ( .A(n5938), .Y(n6057) );
  NAND2X4 U3877 ( .A(median_sobel_inst_n46), .B(median_sobel_inst_n1068), .Y(
        n7218) );
  INVX4 U3878 ( .A(n3779), .Y(n3778) );
  CLKINVX1 U3879 ( .A(n4565), .Y(n5534) );
  OAI2BB1X2 U3880 ( .A0N(n4289), .A1N(n6890), .B0(n6894), .Y(n5595) );
  CLKINVX1 U3881 ( .A(n3932), .Y(n3610) );
  NOR2BX2 U3882 ( .AN(n6498), .B(n6480), .Y(n6486) );
  OA21X2 U3883 ( .A0(n6385), .A1(n5993), .B0(n6266), .Y(n6029) );
  OR2X4 U3884 ( .A(n4298), .B(n7583), .Y(n3857) );
  NOR2X6 U3885 ( .A(n4107), .B(n7091), .Y(n6617) );
  AOI21X2 U3886 ( .A0(n5520), .A1(n6773), .B0(n5519), .Y(n3925) );
  NOR2BX1 U3887 ( .AN(n4556), .B(n5678), .Y(n5680) );
  NOR3X6 U3888 ( .A(n3770), .B(n3811), .C(n3768), .Y(n3767) );
  NOR2X1 U3889 ( .A(n5438), .B(median_sobel_inst_data_h_r[5]), .Y(n4702) );
  NAND2X4 U3890 ( .A(n3954), .B(n3951), .Y(n3950) );
  NOR2BX1 U3891 ( .AN(n3571), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n6452) );
  NAND3X4 U3892 ( .A(n3588), .B(n3661), .C(n5298), .Y(n3586) );
  BUFX3 U3893 ( .A(n7176), .Y(n4108) );
  OAI21X1 U3894 ( .A0(n7294), .A1(x_plus_one_r[2]), .B0(n7335), .Y(n4676) );
  BUFX8 U3895 ( .A(n7282), .Y(n7296) );
  NAND2X4 U3896 ( .A(n7097), .B(n7094), .Y(n7095) );
  OAI21X2 U3897 ( .A0(n6480), .A1(n6496), .B0(n6500), .Y(n6485) );
  NAND2BX2 U3898 ( .AN(n6805), .B(n6790), .Y(n4252) );
  OAI2BB1X2 U3899 ( .A0N(n3934), .A1N(n5097), .B0(n7501), .Y(n3933) );
  NOR2X6 U3900 ( .A(n7335), .B(n7280), .Y(n7297) );
  NOR2X4 U3901 ( .A(n7335), .B(n7238), .Y(n7239) );
  NAND3X4 U3902 ( .A(n4230), .B(n4747), .C(n4746), .Y(n4229) );
  NOR2X2 U3903 ( .A(n5082), .B(n4656), .Y(n5083) );
  NOR2X1 U3904 ( .A(n4199), .B(n4198), .Y(n4197) );
  NOR2X1 U3905 ( .A(n4472), .B(n5312), .Y(n6103) );
  NOR2X1 U3906 ( .A(n7013), .B(conv_inst_n22), .Y(n7012) );
  NAND2BX1 U3907 ( .AN(n7011), .B(n4380), .Y(n4379) );
  NOR2X4 U3908 ( .A(n3930), .B(n3889), .Y(n6961) );
  OA21X2 U3909 ( .A0(median_sobel_inst_u_sober_compare_submodule_n321), .A1(
        n7232), .B0(median_sobel_inst_u_sober_compare_submodule_n276), .Y(
        n6634) );
  NAND2X2 U3910 ( .A(n4110), .B(n3563), .Y(n4109) );
  NOR2X2 U3911 ( .A(n6727), .B(n7401), .Y(n6737) );
  NAND2X1 U3912 ( .A(n7138), .B(n7236), .Y(N125) );
  OR2X1 U3913 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        n4527), .Y(n6785) );
  OR2X1 U3914 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .Y(n6877) );
  OR2X1 U3915 ( .A(x_plus_one_r[1]), .B(n7485), .Y(n7310) );
  INVX6 U3916 ( .A(n6942), .Y(n6949) );
  OR2X6 U3917 ( .A(x_origin_r_1_), .B(n7673), .Y(n7236) );
  BUFX6 U3918 ( .A(median_sobel_inst_data_i_r[7]), .Y(n3858) );
  OR2X2 U3919 ( .A(conv_inst_n25), .B(n6931), .Y(n3934) );
  INVX4 U3920 ( .A(median_sobel_inst_data_e_r[7]), .Y(n5441) );
  INVX1 U3921 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n5830) );
  AND2X6 U3922 ( .A(n6973), .B(n6977), .Y(n3964) );
  INVX8 U3923 ( .A(n5109), .Y(n7084) );
  NAND2X2 U3924 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .B(
        median_sobel_inst_u_median_filter_submodule_n653), .Y(n5812) );
  NAND2BX1 U3925 ( .AN(median_sobel_inst_u_median_filter_submodule_n937), .B(
        n5350), .Y(n5353) );
  NAND2X6 U3926 ( .A(n5059), .B(n5058), .Y(median_sobel_inst_data_g_r[1]) );
  CLKINVX1 U3927 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(
        n7190) );
  CLKINVX1 U3928 ( .A(median_sobel_inst_data_a_r[2]), .Y(n4368) );
  INVX1 U3929 ( .A(median_sobel_inst_u_median_filter_submodule_n658), .Y(n5844) );
  BUFX6 U3930 ( .A(n6973), .Y(n3967) );
  NAND2X6 U3931 ( .A(n4298), .B(n7583), .Y(n6702) );
  INVX3 U3932 ( .A(median_sobel_inst_data_h_r[6]), .Y(n4869) );
  NAND2BX1 U3933 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n35), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n4262) );
  INVX6 U3934 ( .A(n4257), .Y(n6846) );
  CLKAND2X3 U3935 ( .A(n4691), .B(median_sobel_inst_data_h_r[6]), .Y(n4731) );
  INVX1 U3936 ( .A(n7622), .Y(n4120) );
  NAND2X4 U3937 ( .A(n7440), .B(x_delay_r_2__0_), .Y(n7224) );
  INVX3 U3938 ( .A(median_sobel_inst_data_b_r[7]), .Y(n5486) );
  CLKINVX1 U3939 ( .A(n5529), .Y(median_sobel_inst_data_f_r[2]) );
  NAND2X1 U3940 ( .A(n3872), .B(median_sobel_inst_data_h_r[4]), .Y(n3733) );
  OR2X1 U3941 ( .A(median_sobel_inst_u_sober_compare_submodule_n262), .B(
        median_sobel_inst_u_sober_compare_submodule_n322), .Y(n4384) );
  NAND2X6 U3942 ( .A(n7623), .B(n7234), .Y(n7261) );
  INVX4 U3943 ( .A(n5390), .Y(n3527) );
  NOR2X1 U3944 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .Y(n5381) );
  INVX4 U3945 ( .A(n6987), .Y(n6584) );
  NAND2X4 U3946 ( .A(median_sobel_inst_u_median_filter_submodule_n937), .B(
        median_sobel_inst_u_median_filter_submodule_n653), .Y(n5801) );
  OAI2BB1X2 U3947 ( .A0N(median_sobel_inst_data_i_r[3]), .A1N(n5533), .B0(
        n4930), .Y(n4358) );
  INVX6 U3948 ( .A(n5474), .Y(median_sobel_inst_data_h_r[3]) );
  CLKAND2X3 U3949 ( .A(n6803), .B(n6804), .Y(n4251) );
  NAND2X1 U3950 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .Y(n6876) );
  OR2X4 U3951 ( .A(n7440), .B(x_delay_r_2__0_), .Y(n7222) );
  INVX1 U3952 ( .A(median_sobel_inst_data_c_r[2]), .Y(n5447) );
  INVX1 U3953 ( .A(n7281), .Y(n7280) );
  NAND2X6 U3954 ( .A(n4833), .B(n4832), .Y(median_sobel_inst_data_e_r[6]) );
  NOR2X2 U3955 ( .A(n5533), .B(median_sobel_inst_data_i_r[3]), .Y(n4754) );
  INVX6 U3956 ( .A(n5909), .Y(n5977) );
  NOR2BX2 U3957 ( .AN(n3800), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .Y(n5927) );
  INVX3 U3958 ( .A(n4530), .Y(n6998) );
  INVX1 U3959 ( .A(median_sobel_inst_data_c_r[6]), .Y(n4782) );
  NAND2X1 U3960 ( .A(median_sobel_inst_data_e_r[4]), .B(
        median_sobel_inst_data_e_r[5]), .Y(n4776) );
  INVX6 U3961 ( .A(n3682), .Y(n5456) );
  NAND2X1 U3962 ( .A(median_sobel_inst_data_b_r[4]), .B(n3872), .Y(n5433) );
  NOR2X4 U3963 ( .A(n7335), .B(n7281), .Y(n7282) );
  NOR2X4 U3964 ( .A(n6732), .B(n6710), .Y(n6712) );
  OR2X2 U3965 ( .A(median_sobel_inst_u_median_filter_submodule_n159), .B(
        median_sobel_inst_u_median_filter_submodule_n652), .Y(n7148) );
  CLKINVX1 U3966 ( .A(n4541), .Y(n7008) );
  NOR2X2 U3967 ( .A(median_sobel_inst_u_sober_compare_submodule_temp_a_r[9]), 
        .B(median_sobel_inst_u_sober_compare_submodule_n270), .Y(n7232) );
  NAND2X6 U3968 ( .A(n3783), .B(n3780), .Y(n3779) );
  BUFX4 U3969 ( .A(n4531), .Y(n3898) );
  OR2X1 U3970 ( .A(median_sobel_inst_u_median_filter_submodule_n958), .B(
        median_sobel_inst_u_median_filter_submodule_n947), .Y(n6884) );
  NAND2X2 U3971 ( .A(median_sobel_inst_u_median_filter_submodule_n159), .B(
        median_sobel_inst_u_median_filter_submodule_n652), .Y(n7149) );
  INVXL U3972 ( .A(n6891), .Y(n6357) );
  INVX1 U3973 ( .A(n6504), .Y(n7350) );
  INVX1 U3974 ( .A(n7028), .Y(n7019) );
  INVX4 U3975 ( .A(n5448), .Y(median_sobel_inst_data_c_r[1]) );
  NAND2X4 U3976 ( .A(n4492), .B(median_sobel_inst_data_e_r[1]), .Y(n4491) );
  NOR2X1 U3977 ( .A(n5916), .B(n5904), .Y(n5359) );
  NOR2X2 U3978 ( .A(n5454), .B(n5526), .Y(n4351) );
  NOR2X6 U3979 ( .A(n3830), .B(n3829), .Y(n3664) );
  BUFX2 U3980 ( .A(n6873), .Y(n4539) );
  AND2X4 U3981 ( .A(n5783), .B(n5099), .Y(n4948) );
  OA21X2 U3982 ( .A0(n5136), .A1(n6410), .B0(n6413), .Y(n3991) );
  CLKINVX3 U3983 ( .A(n3874), .Y(n4091) );
  INVX1 U3984 ( .A(n4933), .Y(n4934) );
  INVX1 U3985 ( .A(n7317), .Y(n4208) );
  OAI21X1 U3986 ( .A0(n5904), .A1(n5917), .B0(n5905), .Y(n5358) );
  NOR2X6 U3987 ( .A(n3953), .B(n3952), .Y(n3951) );
  NAND2X1 U3988 ( .A(n6341), .B(n5036), .Y(n5038) );
  OAI21X1 U3989 ( .A0(n7338), .A1(x_plus_one_r[2]), .B0(n7335), .Y(n7340) );
  NAND2BX2 U3990 ( .AN(n5684), .B(n4179), .Y(n3801) );
  OAI21X1 U3991 ( .A0(n6755), .A1(n6749), .B0(n6756), .Y(n4394) );
  NOR2X2 U3992 ( .A(n4123), .B(n4122), .Y(n4119) );
  OR2X1 U3993 ( .A(n6801), .B(n6800), .Y(n6802) );
  OAI21X1 U3994 ( .A0(n4061), .A1(n6774), .B0(n6780), .Y(n5519) );
  CLKINVX1 U3995 ( .A(n7268), .Y(n7094) );
  NAND2X1 U3996 ( .A(n5251), .B(n6832), .Y(n5252) );
  NAND2X1 U3997 ( .A(n6987), .B(n4657), .Y(n5847) );
  NOR2X1 U3998 ( .A(n6831), .B(n5250), .Y(n5253) );
  NAND2X6 U3999 ( .A(x_origin_r_1_), .B(N760), .Y(n7268) );
  OR2X1 U4000 ( .A(n4511), .B(n4512), .Y(n6832) );
  OR2X2 U4001 ( .A(conv_inst_n16), .B(conv_inst_n25), .Y(n5099) );
  OR2X1 U4002 ( .A(x_minus_one_r[0]), .B(x_plus_one_r[1]), .Y(n7338) );
  INVX4 U4003 ( .A(median_sobel_inst_data_h_r[4]), .Y(n5481) );
  INVX4 U4004 ( .A(median_sobel_inst_data_h_r[5]), .Y(n5483) );
  INVXL U4005 ( .A(median_sobel_inst_u_median_filter_submodule_n653), .Y(n5350) );
  INVX1 U4006 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n359), .Y(
        n4304) );
  OR2X1 U4007 ( .A(n7051), .B(conv_inst_n102), .Y(n5113) );
  OR2X1 U4008 ( .A(n7395), .B(median_sobel_inst_u_sobel_gradient_submodule_n54), .Y(n6675) );
  NOR2X2 U4009 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .B(
        n7377), .Y(n6092) );
  NOR2X4 U4010 ( .A(n5485), .B(median_sobel_inst_data_h_r[4]), .Y(n3952) );
  INVX6 U4011 ( .A(n3635), .Y(n5671) );
  NAND2X2 U4012 ( .A(input_data_ready_r[23]), .B(n5223), .Y(n5265) );
  NAND2X2 U4013 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n342), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .Y(
        n5917) );
  NAND2BX2 U4014 ( .AN(n3545), .B(x_delay_r_2__1_), .Y(n7221) );
  NAND4BXL U4015 ( .AN(median_sobel_inst_n180), .B(median_sobel_inst_n399), 
        .C(median_sobel_inst_n181), .D(median_sobel_inst_n400), .Y(n3709) );
  INVX1 U4016 ( .A(n5298), .Y(n4711) );
  NAND2BX1 U4017 ( .AN(n3570), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n6756) );
  NOR2BX1 U4018 ( .AN(median_sobel_inst_u_median_filter_submodule_n1209), .B(
        median_sobel_inst_u_median_filter_submodule_n1214), .Y(n5684) );
  NAND2X2 U4019 ( .A(n7457), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n6527) );
  NAND2X1 U4020 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .B(
        n7377), .Y(n6093) );
  INVX3 U4021 ( .A(n3661), .Y(n4222) );
  NOR2X2 U4022 ( .A(n6384), .B(n7365), .Y(n6264) );
  NAND2X6 U4023 ( .A(median_sobel_inst_data_b_r[5]), .B(n3602), .Y(n3601) );
  NAND2X2 U4024 ( .A(n4937), .B(n5816), .Y(n4933) );
  OR2X2 U4025 ( .A(n6929), .B(n6928), .Y(n6958) );
  NAND2X1 U4026 ( .A(n6229), .B(median_sobel_inst_n978), .Y(n4819) );
  INVX1 U4027 ( .A(n5759), .Y(n5837) );
  OAI21X2 U4028 ( .A0(n4969), .A1(n4544), .B0(n7384), .Y(n4654) );
  INVX1 U4029 ( .A(n3528), .Y(n4218) );
  NOR2BX2 U4030 ( .AN(n4051), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), .Y(n6710)
         );
  NAND2X6 U4031 ( .A(n4383), .B(n4382), .Y(n6754) );
  NAND2X6 U4032 ( .A(n4007), .B(n5184), .Y(n3682) );
  INVX2 U4033 ( .A(n3814), .Y(n3813) );
  NAND2X6 U4034 ( .A(n4049), .B(n6076), .Y(n6231) );
  OAI21X1 U4035 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n103), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n51), .B0(n6682), .Y(
        n6683) );
  NOR2X4 U4036 ( .A(n5474), .B(median_sobel_inst_data_e_r[3]), .Y(n4488) );
  NAND2X1 U4037 ( .A(n5357), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .Y(n6546) );
  AND3X2 U4038 ( .A(n5911), .B(median_sobel_inst_u_sober_compare_submodule_n65), .C(median_sobel_inst_u_sober_compare_submodule_n267), .Y(n5012) );
  AOI22X2 U4039 ( .A0(n4147), .A1(median_sobel_inst_n55), .B0(
        median_sobel_inst_n59), .B1(n4145), .Y(n4820) );
  NOR2X4 U4040 ( .A(median_sobel_inst_data_d_r[3]), .B(n3626), .Y(n4645) );
  INVX1 U4041 ( .A(n5631), .Y(n4309) );
  INVX1 U4042 ( .A(n5297), .Y(n4643) );
  NOR2X6 U4043 ( .A(n6969), .B(n4423), .Y(n6973) );
  NOR2BX1 U4044 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), 
        .B(n4561), .Y(n4605) );
  NAND2X1 U4045 ( .A(conv_inst_conv_2_r[13]), .B(conv_inst_conv_2_r[14]), .Y(
        n6466) );
  INVX1 U4046 ( .A(n5393), .Y(n3753) );
  INVX1 U4047 ( .A(n5393), .Y(n4219) );
  INVX3 U4048 ( .A(n5005), .Y(n5909) );
  CLKINVX1 U4049 ( .A(n4712), .Y(n4214) );
  OR2X1 U4050 ( .A(n6822), .B(n6821), .Y(n6824) );
  INVX1 U4051 ( .A(n5760), .Y(n5833) );
  CLKINVX1 U4052 ( .A(n6384), .Y(n6550) );
  OR2X1 U4053 ( .A(n7043), .B(n7497), .Y(n3649) );
  NOR2BX1 U4054 ( .AN(n1978), .B(n1855), .Y(n4318) );
  AOI21X2 U4055 ( .A0(n5660), .A1(n5666), .B0(n5659), .Y(n5661) );
  NOR2X1 U4056 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n325), .Y(n6836) );
  NAND2X4 U4057 ( .A(n4615), .B(n7455), .Y(n5176) );
  INVX1 U4058 ( .A(n7018), .Y(n7031) );
  NAND2X4 U4059 ( .A(n5393), .B(median_sobel_inst_data_g_r[4]), .Y(n4123) );
  NOR2BX2 U4060 ( .AN(n5057), .B(n5056), .Y(n5058) );
  NOR2X1 U4061 ( .A(n6344), .B(n5034), .Y(n5036) );
  NAND2X4 U4062 ( .A(n6298), .B(n4052), .Y(n4054) );
  NAND2BX2 U4063 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), 
        .B(n4277), .Y(n6891) );
  NOR2X1 U4064 ( .A(n6795), .B(n6798), .Y(n6803) );
  NOR2BX2 U4065 ( .AN(n6689), .B(n6688), .Y(n6690) );
  NAND2BX1 U4066 ( .AN(n3573), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n329), .Y(n6167) );
  INVX4 U4067 ( .A(n6620), .Y(n3637) );
  NOR2X1 U4068 ( .A(n6080), .B(n4950), .Y(n4953) );
  AND3X4 U4069 ( .A(n5068), .B(n5069), .C(n5067), .Y(n5390) );
  NAND3X4 U4070 ( .A(n5410), .B(n5409), .C(n5408), .Y(
        median_sobel_inst_data_b_r[7]) );
  NOR3BX2 U4071 ( .AN(n1977), .B(n4321), .C(n4320), .Y(n4319) );
  INVX3 U4072 ( .A(n6704), .Y(n3827) );
  NAND2X4 U4073 ( .A(n3604), .B(n4496), .Y(n4495) );
  NOR2BX1 U4074 ( .AN(n4796), .B(n4387), .Y(n4386) );
  NAND3X4 U4075 ( .A(n5283), .B(n3890), .C(n3566), .Y(median_sobel_inst_n749)
         );
  OR2X1 U4076 ( .A(median_sobel_inst_u_median_filter_submodule_n966), .B(
        median_sobel_inst_u_median_filter_submodule_n787), .Y(n3578) );
  OR2X6 U4077 ( .A(n4066), .B(n4234), .Y(median_sobel_inst_data_c_r[2]) );
  INVX3 U4078 ( .A(median_sobel_inst_data_c_r[4]), .Y(n4744) );
  NOR2X2 U4079 ( .A(cnt[0]), .B(cnt[1]), .Y(n7004) );
  NAND2X6 U4080 ( .A(n5221), .B(input_data_ready_r[20]), .Y(n6970) );
  INVX1 U4081 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n4277) );
  NOR2X4 U4082 ( .A(n5672), .B(input_data_ready_r[13]), .Y(n3635) );
  CLKINVX3 U4083 ( .A(n4002), .Y(n3999) );
  NAND2BX1 U4084 ( .AN(n915), .B(n1892), .Y(n4320) );
  NAND2BX1 U4085 ( .AN(n1856), .B(n2036), .Y(n4321) );
  CLKAND2X3 U4086 ( .A(n4828), .B(n4827), .Y(n3949) );
  NAND2X1 U4087 ( .A(cnt[7]), .B(cnt[6]), .Y(n4151) );
  NAND2X1 U4088 ( .A(n5419), .B(median_sobel_inst_net84226), .Y(n4851) );
  NAND2X1 U4089 ( .A(n5886), .B(median_sobel_inst_n59), .Y(n4823) );
  NAND2X1 U4090 ( .A(n5419), .B(median_sobel_inst_n60), .Y(n4824) );
  NAND2X2 U4091 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), .Y(n6099) );
  NAND2X1 U4092 ( .A(n4722), .B(n4576), .Y(n4826) );
  INVX3 U4093 ( .A(median_sobel_inst_data_a_r[2]), .Y(n3581) );
  INVX3 U4094 ( .A(n3528), .Y(n4209) );
  BUFX8 U4095 ( .A(n4215), .Y(n3661) );
  NAND2X6 U4096 ( .A(n4728), .B(n4724), .Y(median_sobel_inst_data_i_r[6]) );
  CLKINVX1 U4097 ( .A(n4850), .Y(n4852) );
  CLKINVX1 U4098 ( .A(n6781), .Y(n4061) );
  INVX3 U4099 ( .A(n4397), .Y(n4382) );
  NAND2X6 U4100 ( .A(n6952), .B(n6953), .Y(n6955) );
  NAND2BX2 U4101 ( .AN(n4560), .B(median_sobel_inst_n180), .Y(n6219) );
  INVX3 U4102 ( .A(net46722), .Y(n5998) );
  INVX3 U4103 ( .A(n5041), .Y(n3892) );
  INVX3 U4104 ( .A(n6984), .Y(n4324) );
  INVX1 U4105 ( .A(n4371), .Y(n4145) );
  NAND2BX1 U4106 ( .AN(median_sobel_inst_n51), .B(n5683), .Y(n5283) );
  INVX4 U4107 ( .A(median_sobel_inst_data_e_r[5]), .Y(n3602) );
  AOI22X2 U4108 ( .A0(n5424), .A1(median_sobel_inst_n60), .B0(n4647), .B1(
        n7469), .Y(n5410) );
  NOR2X6 U4109 ( .A(n4403), .B(n4490), .Y(n5474) );
  NAND2X6 U4110 ( .A(n5048), .B(n4029), .Y(median_sobel_inst_data_d_r[3]) );
  NOR2BX1 U4111 ( .AN(median_sobel_inst_u_sober_compare_submodule_temp_b_r[4]), 
        .B(median_sobel_inst_u_sober_compare_submodule_temp_a_r[4]), .Y(n4391)
         );
  NAND2X1 U4112 ( .A(n4714), .B(n4555), .Y(n3890) );
  AOI22X1 U4113 ( .A0(median_sobel_inst_n91), .A1(n4722), .B0(n5414), .B1(
        median_sobel_inst_n69), .Y(n5069) );
  AOI21X2 U4114 ( .A0(median_sobel_inst_u_sober_compare_submodule_temp_a_r[7]), 
        .A1(median_sobel_inst_u_sober_compare_submodule_n261), .B0(n6624), .Y(
        n4390) );
  NOR2X4 U4115 ( .A(n6981), .B(n6983), .Y(n4325) );
  NOR2X2 U4116 ( .A(n4189), .B(n5628), .Y(n4188) );
  NOR2BX2 U4117 ( .AN(n4558), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .Y(n4940) );
  NAND2X2 U4118 ( .A(n4148), .B(n4551), .Y(n4831) );
  NAND2X1 U4119 ( .A(n4647), .B(n4589), .Y(n5057) );
  NOR2BX2 U4120 ( .AN(n6073), .B(n6071), .Y(n5517) );
  INVX8 U4121 ( .A(n3596), .Y(n5973) );
  NAND2X2 U4122 ( .A(n4147), .B(n4582), .Y(n5408) );
  NOR2X2 U4123 ( .A(n6420), .B(n7085), .Y(n7075) );
  OAI21X2 U4124 ( .A0(n6205), .A1(n5733), .B0(n5734), .Y(n5740) );
  NAND2X4 U4125 ( .A(n5670), .B(input_data_ready_r[12]), .Y(n6620) );
  NAND2BX2 U4126 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), 
        .B(n3530), .Y(n6848) );
  INVX1 U4127 ( .A(n5761), .Y(n5832) );
  NAND2BX2 U4128 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), 
        .B(n3795), .Y(n6789) );
  NAND2X4 U4129 ( .A(n6402), .B(n5259), .Y(n3652) );
  NAND2X4 U4130 ( .A(n3647), .B(n3881), .Y(n6941) );
  NAND2X2 U4131 ( .A(n3561), .B(n4003), .Y(n3998) );
  NAND2X4 U4132 ( .A(n6539), .B(n6538), .Y(n3838) );
  OR2X4 U4133 ( .A(n5202), .B(n5641), .Y(n5200) );
  AOI2BB2X2 U4134 ( .B0(n4647), .B1(median_sobel_inst_n1007), .A0N(n3706), 
        .A1N(n3794), .Y(n4757) );
  OAI21X2 U4135 ( .A0(n5967), .A1(n5970), .B0(n5968), .Y(n6179) );
  NAND4X4 U4136 ( .A(n4849), .B(n4848), .C(n4847), .D(n4846), .Y(
        median_sobel_inst_data_e_r[2]) );
  OAI21X1 U4137 ( .A0(n5668), .A1(n5664), .B0(n5669), .Y(n5659) );
  OAI21X2 U4138 ( .A0(n6423), .A1(n6426), .B0(n6427), .Y(n4303) );
  NAND2X1 U4139 ( .A(n6525), .B(n6522), .Y(n5130) );
  INVX3 U4140 ( .A(n5526), .Y(n3860) );
  NOR2X1 U4141 ( .A(n5466), .B(n7030), .Y(n5467) );
  OAI21X2 U4142 ( .A0(n3928), .A1(n6180), .B0(n6072), .Y(n5516) );
  NAND2X4 U4143 ( .A(n4363), .B(n4361), .Y(median_sobel_inst_data_h_r[0]) );
  NOR2X4 U4144 ( .A(n4567), .B(n4738), .Y(n5388) );
  NAND2X1 U4145 ( .A(n5055), .B(n5054), .Y(n5056) );
  INVX8 U4146 ( .A(i_in_valid), .Y(n4152) );
  NAND4X4 U4147 ( .A(n4838), .B(n4837), .C(n4836), .D(n4835), .Y(
        median_sobel_inst_data_h_r[5]) );
  NOR2X4 U4148 ( .A(n4906), .B(n4011), .Y(n5523) );
  INVX6 U4149 ( .A(n3653), .Y(n7141) );
  NAND2X2 U4150 ( .A(n4050), .B(n4599), .Y(n6076) );
  NAND2X2 U4151 ( .A(n4148), .B(n4581), .Y(n3948) );
  AND2X4 U4152 ( .A(n5416), .B(n4364), .Y(n5475) );
  NAND4X6 U4153 ( .A(n4923), .B(n4922), .C(n4921), .D(n4920), .Y(
        median_sobel_inst_data_i_r[3]) );
  NAND3X4 U4154 ( .A(n5071), .B(n4644), .C(n5073), .Y(median_sobel_inst_n981)
         );
  NOR2X1 U4155 ( .A(n5505), .B(n7351), .Y(n5506) );
  NAND2X1 U4156 ( .A(n4148), .B(median_sobel_inst_n1056), .Y(n4745) );
  OAI2BB2X1 U4157 ( .B0(n6631), .B1(n4388), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n262), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n322), .Y(n4387) );
  CLKBUFX3 U4158 ( .A(n6090), .Y(n4538) );
  NAND2X1 U4159 ( .A(n4040), .B(n4596), .Y(n5406) );
  NAND2X2 U4160 ( .A(n5600), .B(n5760), .Y(n7042) );
  NOR2X1 U4161 ( .A(n4943), .B(n4135), .Y(n3686) );
  OA22X1 U4162 ( .A0(median_sobel_inst_u_median_filter_submodule_n776), .A1(
        median_sobel_inst_u_median_filter_submodule_n197), .B0(
        median_sobel_inst_u_median_filter_submodule_n229), .B1(
        median_sobel_inst_u_median_filter_submodule_n783), .Y(n5169) );
  OR2X1 U4163 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .Y(n6414) );
  OR2X1 U4164 ( .A(median_sobel_inst_u_sober_compare_submodule_n261), .B(n4505), .Y(n4388) );
  INVX1 U4165 ( .A(n3553), .Y(n3615) );
  CLKBUFX3 U4166 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(
        n4534) );
  INVX6 U4167 ( .A(n5222), .Y(n3817) );
  NAND2X1 U4168 ( .A(input_data_ready_r[7]), .B(input_data_ready_r[23]), .Y(
        n5669) );
  CLKAND2X3 U4169 ( .A(n4982), .B(n4981), .Y(n4651) );
  INVX1 U4170 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n325), .Y(
        n3795) );
  INVXL U4171 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n68), .Y(n3993) );
  NOR2BX2 U4172 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n8), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .Y(n6866) );
  INVX3 U4173 ( .A(n5201), .Y(n3616) );
  NAND2X2 U4174 ( .A(conv_inst_data_bcd_2_r[10]), .B(conv_inst_conv_2_r[10]), 
        .Y(n7351) );
  NAND2X2 U4175 ( .A(conv_inst_conv_4_r[4]), .B(conv_inst_data_bcd_4_r[4]), 
        .Y(n6205) );
  NAND2X1 U4176 ( .A(n5859), .B(median_sobel_inst_n321), .Y(n4920) );
  NAND2X1 U4177 ( .A(n878), .B(n877), .Y(n7249) );
  AND2X2 U4178 ( .A(conv_inst_n233), .B(n4521), .Y(n5746) );
  NAND2BX1 U4179 ( .AN(median_sobel_inst_n441), .B(n5699), .Y(n4848) );
  NAND2X1 U4180 ( .A(n4647), .B(median_sobel_inst_net84226), .Y(n4685) );
  NAND2X1 U4181 ( .A(median_sobel_inst_n1056), .B(n5859), .Y(n4838) );
  NAND2X1 U4182 ( .A(n4148), .B(median_sobel_inst_n982), .Y(n5073) );
  NAND2X1 U4183 ( .A(n5683), .B(median_sobel_inst_n159), .Y(n4924) );
  NAND2X1 U4184 ( .A(n5859), .B(median_sobel_inst_n1027), .Y(n4871) );
  NAND2BX1 U4185 ( .AN(median_sobel_inst_n955), .B(n5414), .Y(n4922) );
  NOR2BX2 U4186 ( .AN(n4549), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n5921) );
  NAND2BX1 U4187 ( .AN(median_sobel_inst_n960), .B(n3645), .Y(n5066) );
  NAND2X1 U4188 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), .Y(n6193) );
  AOI22X1 U4189 ( .A0(median_sobel_inst_u_median_filter_submodule_n827), .A1(
        n7461), .B0(n7383), .B1(
        median_sobel_inst_u_median_filter_submodule_n830), .Y(n3676) );
  NAND2X6 U4190 ( .A(n3997), .B(n4344), .Y(median_sobel_inst_n759) );
  NAND2X1 U4191 ( .A(n4793), .B(n4905), .Y(n4923) );
  NAND2BX1 U4192 ( .AN(median_sobel_inst_n441), .B(n5825), .Y(n5065) );
  NAND2BX1 U4193 ( .AN(median_sobel_inst_n47), .B(n4913), .Y(n4580) );
  NAND2X2 U4194 ( .A(n5884), .B(median_sobel_inst_net86174), .Y(n4812) );
  NAND2X1 U4195 ( .A(n5859), .B(median_sobel_inst_n322), .Y(n4925) );
  NAND2X6 U4196 ( .A(n4861), .B(n4497), .Y(median_sobel_inst_data_h_r[1]) );
  AO21X2 U4197 ( .A0(n6648), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n67), .B0(n6647), .Y(
        n6650) );
  INVX3 U4198 ( .A(n4030), .Y(n4029) );
  OAI22X2 U4199 ( .A0(median_sobel_inst_n451), .A1(n5807), .B0(n5808), .B1(
        median_sobel_inst_n125), .Y(n4906) );
  NAND2X2 U4200 ( .A(n4997), .B(n4996), .Y(n3679) );
  CLKINVX1 U4201 ( .A(n3764), .Y(n5071) );
  AOI22X1 U4202 ( .A0(n5346), .A1(median_sobel_inst_n116), .B0(
        median_sobel_inst_n312), .B1(n5859), .Y(n4901) );
  NOR2X4 U4203 ( .A(n5110), .B(n7068), .Y(n5112) );
  NAND2BX1 U4204 ( .AN(median_sobel_inst_n1132), .B(n5414), .Y(n4927) );
  NAND2X1 U4205 ( .A(n5699), .B(n4579), .Y(n4683) );
  INVX1 U4206 ( .A(n5667), .Y(n3815) );
  NAND2BX1 U4207 ( .AN(median_sobel_inst_n984), .B(n5225), .Y(n5284) );
  NAND2X2 U4208 ( .A(n4148), .B(median_sobel_inst_n96), .Y(n5048) );
  NOR2X1 U4209 ( .A(n6385), .B(n6384), .Y(n6389) );
  INVX4 U4210 ( .A(n4514), .Y(n4515) );
  AND2X2 U4211 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(n6387) );
  NAND2BX1 U4212 ( .AN(median_sobel_inst_n1151), .B(n5699), .Y(n5046) );
  NOR2X4 U4213 ( .A(n5162), .B(n5163), .Y(n4286) );
  NAND2BX1 U4214 ( .AN(n5289), .B(median_sobel_inst_n82), .Y(n4904) );
  NAND2X1 U4215 ( .A(n5858), .B(n4592), .Y(n5405) );
  INVX6 U4216 ( .A(median_sobel_inst_data_f_r[3]), .Y(n5533) );
  CLKINVX1 U4217 ( .A(n5270), .Y(n4062) );
  NOR2BX1 U4218 ( .AN(n4322), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .Y(n4951) );
  NOR2X6 U4219 ( .A(n5202), .B(n5641), .Y(n6983) );
  NAND2X1 U4220 ( .A(n5681), .B(median_sobel_inst_n1035), .Y(n5044) );
  NOR2X6 U4221 ( .A(n3537), .B(n4124), .Y(n5393) );
  OAI21X2 U4222 ( .A0(n5289), .A1(median_sobel_inst_n419), .B0(n5288), .Y(
        n4738) );
  NAND2X1 U4223 ( .A(n5225), .B(median_sobel_inst_n1070), .Y(n5043) );
  NAND3X6 U4224 ( .A(n5428), .B(n5427), .C(n5426), .Y(
        median_sobel_inst_data_b_r[4]) );
  AND2X2 U4225 ( .A(n5072), .B(n5070), .Y(n4644) );
  OR2X2 U4226 ( .A(x_origin_r_1_), .B(N760), .Y(n3653) );
  NAND2X2 U4227 ( .A(n3843), .B(n3839), .Y(n6538) );
  OAI21X2 U4228 ( .A0(n6312), .A1(n5723), .B0(n5724), .Y(n3651) );
  NAND2X1 U4229 ( .A(n5346), .B(n4578), .Y(n5186) );
  AOI21X2 U4230 ( .A0(n4572), .A1(n5424), .B0(n3760), .Y(n3759) );
  OAI21X2 U4231 ( .A0(n5987), .A1(n6150), .B0(n5988), .Y(n4625) );
  NOR2X2 U4232 ( .A(n6132), .B(n5958), .Y(n5334) );
  AND3X6 U4233 ( .A(n4810), .B(n4811), .C(n4813), .Y(n3871) );
  NOR2BX2 U4234 ( .AN(n4863), .B(n3548), .Y(n4363) );
  NAND2X4 U4235 ( .A(n4647), .B(n4590), .Y(n3721) );
  NOR2X2 U4236 ( .A(n5964), .B(n6200), .Y(n4398) );
  NAND2X4 U4237 ( .A(n6925), .B(n3936), .Y(n6957) );
  NAND2X4 U4238 ( .A(n6939), .B(n3882), .Y(n3881) );
  NAND2X1 U4239 ( .A(n4040), .B(n4577), .Y(n4003) );
  NAND2BX2 U4240 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), 
        .B(n3576), .Y(n6781) );
  NAND2BX1 U4241 ( .AN(median_sobel_inst_n951), .B(n3645), .Y(n5285) );
  NAND3X4 U4242 ( .A(n5227), .B(n3958), .C(n5226), .Y(
        median_sobel_inst_data_b_r[6]) );
  OAI21X2 U4243 ( .A0(n6200), .A1(n6197), .B0(n6201), .Y(n4397) );
  NOR2X2 U4244 ( .A(n5761), .B(n5599), .Y(n5600) );
  NAND2X1 U4245 ( .A(n5346), .B(n4594), .Y(n4888) );
  NAND2X4 U4246 ( .A(n3922), .B(n3919), .Y(n6956) );
  NAND3X4 U4247 ( .A(n3848), .B(n3845), .C(n3844), .Y(n6539) );
  NAND2X1 U4248 ( .A(n4040), .B(median_sobel_inst_n989), .Y(n5064) );
  AND2X4 U4249 ( .A(n5378), .B(n4144), .Y(n4143) );
  CLKINVX3 U4250 ( .A(n4817), .Y(n4490) );
  NAND4X6 U4251 ( .A(n5096), .B(n4709), .C(n3897), .D(n3896), .Y(n7622) );
  NOR2X4 U4252 ( .A(n5753), .B(n4332), .Y(n5760) );
  NAND4X6 U4253 ( .A(n4857), .B(n4856), .C(n4855), .D(n4854), .Y(
        median_sobel_inst_data_e_r[1]) );
  CLKAND2X4 U4254 ( .A(n7256), .B(n4532), .Y(n5102) );
  AOI2BB2X2 U4255 ( .B0(n5884), .B1(n7376), .A0N(n4755), .A1N(n7433), .Y(n5041) );
  AOI22X2 U4256 ( .A0(n4040), .A1(n4574), .B0(median_sobel_inst_n300), .B1(
        n5419), .Y(n3958) );
  NAND2X6 U4257 ( .A(cnt[0]), .B(cnt[1]), .Y(n7238) );
  AND2X6 U4258 ( .A(n4959), .B(n4536), .Y(n4544) );
  INVX1 U4259 ( .A(n878), .Y(n4532) );
  AOI2BB2X1 U4260 ( .B0(median_sobel_inst_u_median_filter_submodule_n776), 
        .B1(median_sobel_inst_u_median_filter_submodule_n197), .A0N(
        median_sobel_inst_u_median_filter_submodule_n930), .A1N(
        median_sobel_inst_u_median_filter_submodule_n146), .Y(n5167) );
  NOR2X4 U4261 ( .A(conv_inst_conv_2_r[9]), .B(conv_inst_data_bcd_2_r[9]), .Y(
        n5778) );
  NAND2X2 U4262 ( .A(n5346), .B(n4575), .Y(n4857) );
  NAND2X2 U4263 ( .A(n4722), .B(median_sobel_inst_n97), .Y(n3897) );
  NAND2X1 U4264 ( .A(n5419), .B(median_sobel_inst_n1007), .Y(n4855) );
  NAND2X2 U4265 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), 
        .Y(n6150) );
  NAND2X2 U4266 ( .A(conv_inst_conv_4_r[8]), .B(conv_inst_data_bcd_4_r[8]), 
        .Y(n6443) );
  INVX1 U4267 ( .A(median_sobel_inst_u_median_filter_submodule_n229), .Y(n7175) );
  NAND2X2 U4268 ( .A(conv_inst_conv_4_r[11]), .B(conv_inst_conv_4_r[12]), .Y(
        n5466) );
  NAND2X1 U4269 ( .A(n7448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n6197) );
  NOR2X4 U4270 ( .A(conv_inst_data_abc_3_r[2]), .B(conv_inst_conv_3_r[2]), .Y(
        n6149) );
  NOR2X4 U4271 ( .A(conv_inst_conv_2_r[6]), .B(conv_inst_data_bcd_2_r[6]), .Y(
        n6294) );
  NAND2X2 U4272 ( .A(n5883), .B(median_sobel_inst_n1011), .Y(n5443) );
  CLKAND2X3 U4273 ( .A(n5375), .B(n5376), .Y(n4144) );
  NAND2BX1 U4274 ( .AN(median_sobel_inst_n423), .B(n5699), .Y(n5348) );
  NAND2X2 U4275 ( .A(conv_inst_conv_1_r[12]), .B(conv_inst_n43), .Y(n5599) );
  NAND2X2 U4276 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n24), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n2), .Y(n6564) );
  NAND2X1 U4277 ( .A(n5419), .B(median_sobel_inst_n164), .Y(n4735) );
  NAND2X1 U4278 ( .A(n5419), .B(median_sobel_inst_n1015), .Y(n4811) );
  NAND2BX2 U4279 ( .AN(median_sobel_inst_n967), .B(n5699), .Y(n5420) );
  NAND2BX2 U4280 ( .AN(median_sobel_inst_n967), .B(n6229), .Y(n5096) );
  NAND2X1 U4281 ( .A(n4610), .B(conv_inst_n44), .Y(n3844) );
  NAND2X1 U4282 ( .A(n5225), .B(median_sobel_inst_n55), .Y(n4704) );
  NAND2X4 U4283 ( .A(n5884), .B(median_sobel_inst_net90977), .Y(n5423) );
  NAND2X1 U4284 ( .A(n6931), .B(conv_inst_conv_1_r[3]), .Y(n3854) );
  OR2X1 U4285 ( .A(n4329), .B(median_sobel_inst_n8), .Y(n4027) );
  NAND2X1 U4286 ( .A(n5699), .B(median_sobel_inst_n1008), .Y(n4862) );
  INVX3 U4287 ( .A(n4006), .Y(n4005) );
  NAND2X2 U4288 ( .A(n4520), .B(conv_inst_conv_3_r[0]), .Y(n6256) );
  NAND2BX2 U4289 ( .AN(median_sobel_inst_u_median_filter_submodule_n894), .B(
        n5567), .Y(n5569) );
  NAND2BX2 U4290 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), 
        .B(n3547), .Y(n6073) );
  NAND2X2 U4291 ( .A(n4148), .B(n4369), .Y(n3583) );
  AOI22X2 U4292 ( .A0(n6931), .A1(conv_inst_conv_1_r[14]), .B0(
        conv_inst_conv_2_r[14]), .B1(n3937), .Y(n3936) );
  NOR2X2 U4293 ( .A(n5658), .B(n5668), .Y(n5660) );
  NAND2X2 U4294 ( .A(n4715), .B(median_sobel_inst_n989), .Y(n3582) );
  NAND2X2 U4295 ( .A(n4715), .B(n4551), .Y(n5227) );
  NAND2X2 U4296 ( .A(n5653), .B(n3835), .Y(n3834) );
  NOR2X6 U4297 ( .A(n4759), .B(n4553), .Y(n5524) );
  AO21X2 U4298 ( .A0(n4986), .A1(n4536), .B0(n4985), .Y(n4988) );
  BUFX8 U4299 ( .A(n5825), .Y(n3786) );
  NOR2X2 U4300 ( .A(n4158), .B(n4157), .Y(n4160) );
  NOR2X2 U4301 ( .A(n3921), .B(n3920), .Y(n3919) );
  AND2X2 U4302 ( .A(n5642), .B(n3862), .Y(n4557) );
  INVX3 U4303 ( .A(n3792), .Y(n4842) );
  OA22X2 U4304 ( .A0(n6930), .A1(conv_inst_n274), .B0(n6936), .B1(
        conv_inst_n238), .Y(n6925) );
  NOR2X2 U4305 ( .A(n3847), .B(n3846), .Y(n3845) );
  NAND2X2 U4306 ( .A(n4148), .B(median_sobel_inst_n1035), .Y(n4817) );
  NAND2X2 U4307 ( .A(n3945), .B(n3944), .Y(n5556) );
  NAND2BX1 U4308 ( .AN(n4329), .B(median_sobel_inst_n994), .Y(n5271) );
  NAND2X2 U4309 ( .A(n5346), .B(n3558), .Y(n4065) );
  NOR2X2 U4310 ( .A(n4873), .B(n4872), .Y(n4874) );
  NOR2X2 U4311 ( .A(n6053), .B(n5939), .Y(n5502) );
  OAI21X2 U4312 ( .A0(n5289), .A1(n4571), .B0(n4726), .Y(n4725) );
  NOR2X4 U4313 ( .A(conv_inst_conv_4_r[10]), .B(conv_inst_data_bcd_4_r[10]), 
        .Y(n7018) );
  NOR2X4 U4314 ( .A(conv_inst_conv_2_r[10]), .B(conv_inst_data_bcd_2_r[10]), 
        .Y(n7352) );
  NAND2BX1 U4315 ( .AN(median_sobel_inst_n935), .B(n5681), .Y(n5401) );
  INVX4 U4316 ( .A(n3856), .Y(n3855) );
  NAND2BX1 U4317 ( .AN(median_sobel_inst_n936), .B(n5346), .Y(n5426) );
  NOR2BX2 U4318 ( .AN(n6938), .B(n3883), .Y(n3882) );
  NOR2X2 U4319 ( .A(n3853), .B(n3850), .Y(n3849) );
  INVX1 U4320 ( .A(n4013), .Y(n4012) );
  NAND2X2 U4321 ( .A(n4737), .B(n5061), .Y(n3632) );
  OAI21X1 U4322 ( .A0(n7452), .A1(
        median_sobel_inst_u_median_filter_submodule_n807), .B0(n3875), .Y(
        n5583) );
  NOR3BX2 U4323 ( .AN(median_sobel_inst_u_median_filter_submodule_n222), .B(
        n4170), .C(n5628), .Y(n4169) );
  NAND3X2 U4324 ( .A(n4032), .B(n5047), .C(n4031), .Y(n4030) );
  NAND3X4 U4325 ( .A(n5291), .B(n5290), .C(n5292), .Y(n4124) );
  NAND2BX2 U4326 ( .AN(n5840), .B(median_sobel_inst_n303), .Y(n5373) );
  AND3X4 U4327 ( .A(n5400), .B(n5399), .C(n5398), .Y(n5402) );
  NOR2X2 U4328 ( .A(n5980), .B(n6403), .Y(n6310) );
  AND3X4 U4329 ( .A(n4858), .B(n4859), .C(n4860), .Y(n4497) );
  NAND3X4 U4330 ( .A(n4681), .B(n5052), .C(n4706), .Y(n4331) );
  NAND4X6 U4331 ( .A(n5081), .B(n5078), .C(n5079), .D(n3893), .Y(n5298) );
  NOR3X2 U4332 ( .A(n3915), .B(n3914), .C(n3913), .Y(n3912) );
  NOR2X1 U4333 ( .A(n5807), .B(n3765), .Y(n3764) );
  AOI2BB2X1 U4334 ( .B0(n5699), .B1(median_sobel_inst_n982), .A0N(n5840), 
        .A1N(n4752), .Y(n5288) );
  BUFX12 U4335 ( .A(n4905), .Y(n4040) );
  NOR3X2 U4336 ( .A(n3842), .B(n3841), .C(n3840), .Y(n3839) );
  BUFX16 U4337 ( .A(n5805), .Y(n5807) );
  CLKBUFX3 U4338 ( .A(n7372), .Y(n5978) );
  INVX3 U4339 ( .A(n5647), .Y(n5640) );
  CLKBUFX3 U4340 ( .A(n7382), .Y(n6356) );
  AOI2BB2X1 U4341 ( .B0(median_sobel_inst_u_median_filter_submodule_n790), 
        .B1(median_sobel_inst_u_median_filter_submodule_net83841), .A0N(
        median_sobel_inst_u_median_filter_submodule_n993), .A1N(
        median_sobel_inst_u_median_filter_submodule_n796), .Y(n3875) );
  INVX1 U4342 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n4235) );
  NAND2X2 U4343 ( .A(n4524), .B(median_sobel_inst_n84), .Y(n5078) );
  NOR2X2 U4344 ( .A(conv_inst_conv_1_r[4]), .B(conv_inst_data_abc_1_r[4]), .Y(
        n5980) );
  NOR2X2 U4345 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(n5029) );
  OAI21X2 U4346 ( .A0(n5555), .A1(
        median_sobel_inst_u_median_filter_submodule_net86856), .B0(
        median_sobel_inst_u_median_filter_submodule_n787), .Y(n3944) );
  NOR2X6 U4347 ( .A(conv_inst_data_abc_1_r[5]), .B(conv_inst_conv_1_r[5]), .Y(
        n6403) );
  CLKINVX1 U4348 ( .A(n5807), .Y(n4346) );
  NOR2X2 U4349 ( .A(median_sobel_inst_u_median_filter_submodule_n818), .B(
        n5618), .Y(n5628) );
  NOR2X4 U4350 ( .A(n3557), .B(n5654), .Y(n5663) );
  NAND2X2 U4351 ( .A(n4089), .B(n4528), .Y(n4088) );
  NOR2BX2 U4352 ( .AN(median_sobel_inst_net90977), .B(n5840), .Y(n4753) );
  CLKINVX1 U4353 ( .A(n5220), .Y(n5212) );
  CLKINVX1 U4354 ( .A(n5645), .Y(n5642) );
  INVX1 U4355 ( .A(n5205), .Y(n4034) );
  BUFX16 U4356 ( .A(n4722), .Y(n4715) );
  NOR2X4 U4357 ( .A(n4128), .B(n4126), .Y(n4469) );
  INVX1 U4358 ( .A(n3790), .Y(n4859) );
  AND2X2 U4359 ( .A(n4166), .B(n4165), .Y(n4164) );
  NOR2X4 U4360 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(n6382) );
  NOR2X6 U4361 ( .A(n5312), .B(n4473), .Y(n4470) );
  NAND2X4 U4362 ( .A(n3878), .B(n3876), .Y(n3818) );
  NAND2X1 U4363 ( .A(n5699), .B(median_sobel_inst_n1022), .Y(n4858) );
  NOR2X2 U4364 ( .A(n6241), .B(n5951), .Y(n4667) );
  CLKBUFX8 U4365 ( .A(n6305), .Y(n6927) );
  NOR2X2 U4366 ( .A(n6936), .B(conv_inst_n236), .Y(n3913) );
  NOR2X2 U4367 ( .A(n6936), .B(conv_inst_n234), .Y(n3841) );
  NOR2X2 U4368 ( .A(n6935), .B(conv_inst_n244), .Y(n3842) );
  INVX3 U4369 ( .A(n4943), .Y(n3685) );
  NOR2X4 U4370 ( .A(conv_inst_data_abc_1_r[6]), .B(conv_inst_conv_1_r[6]), .Y(
        n6311) );
  NOR2X6 U4371 ( .A(n4135), .B(n3684), .Y(n3683) );
  NOR2X2 U4372 ( .A(n6930), .B(conv_inst_n250), .Y(n3915) );
  NOR2X2 U4373 ( .A(n6930), .B(conv_inst_n243), .Y(n3840) );
  BUFX16 U4374 ( .A(n4347), .Y(n4329) );
  BUFX4 U4375 ( .A(n881), .Y(n4541) );
  NAND2X1 U4376 ( .A(n5699), .B(median_sobel_inst_n1070), .Y(n4815) );
  NAND2X1 U4377 ( .A(n3645), .B(n3737), .Y(n3736) );
  NOR2X2 U4378 ( .A(n6935), .B(conv_inst_n18), .Y(n3847) );
  NOR2X2 U4379 ( .A(n6935), .B(conv_inst_n249), .Y(n3853) );
  AND2X2 U4380 ( .A(n5062), .B(n5060), .Y(n4737) );
  NAND3X2 U4381 ( .A(n4914), .B(n4915), .C(n4018), .Y(n4759) );
  NAND2X1 U4382 ( .A(n3852), .B(n3851), .Y(n3850) );
  NOR2BX2 U4383 ( .AN(n3918), .B(conv_inst_n20), .Y(n3921) );
  NOR2X1 U4384 ( .A(n5806), .B(median_sobel_inst_n1026), .Y(n4872) );
  INVX16 U4385 ( .A(n6940), .Y(n6931) );
  BUFX8 U4386 ( .A(n5825), .Y(n5857) );
  INVX6 U4387 ( .A(n4347), .Y(n5785) );
  INVX3 U4388 ( .A(median_sobel_inst_u_median_filter_submodule_n993), .Y(n5578) );
  INVX8 U4389 ( .A(n6937), .Y(n6930) );
  INVX1 U4390 ( .A(median_sobel_inst_u_median_filter_submodule_net84165), .Y(
        n5562) );
  AND2X2 U4391 ( .A(n5618), .B(
        median_sobel_inst_u_median_filter_submodule_n818), .Y(n5627) );
  OR2X1 U4392 ( .A(n4347), .B(median_sobel_inst_n971), .Y(n5287) );
  INVX1 U4393 ( .A(median_sobel_inst_u_sober_compare_submodule_n274), .Y(n7208) );
  NAND2X1 U4394 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .Y(n6109) );
  INVX3 U4395 ( .A(n5191), .Y(n4044) );
  NOR2X4 U4396 ( .A(conv_inst_conv_1_r[3]), .B(conv_inst_n161), .Y(n5951) );
  NOR2X1 U4397 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[1]), .Y(n4802) );
  INVX1 U4398 ( .A(median_sobel_inst_u_median_filter_submodule_n814), .Y(n4159) );
  AND2X6 U4399 ( .A(n3877), .B(n5217), .Y(n3876) );
  NAND2X2 U4400 ( .A(conv_inst_data_abc_1_r[0]), .B(conv_inst_conv_1_r[0]), 
        .Y(n6158) );
  INVX4 U4401 ( .A(n5658), .Y(n5665) );
  NAND2X2 U4402 ( .A(input_data_ready_r[6]), .B(input_data_ready_r[22]), .Y(
        n5664) );
  NAND2X6 U4403 ( .A(n3623), .B(n3622), .Y(n4271) );
  NAND2X6 U4404 ( .A(n4937), .B(n6114), .Y(n4528) );
  NAND2BX1 U4405 ( .AN(median_sobel_inst_u_median_filter_submodule_n1107), .B(
        median_sobel_inst_u_median_filter_submodule_n1131), .Y(n4166) );
  INVX3 U4406 ( .A(n5203), .Y(n5204) );
  BUFX4 U4407 ( .A(n5289), .Y(n3706) );
  NAND2X1 U4408 ( .A(n5809), .B(median_sobel_inst_n964), .Y(n4914) );
  NAND2BX1 U4409 ( .AN(median_sobel_inst_n451), .B(n4524), .Y(n4908) );
  INVX8 U4410 ( .A(n5289), .Y(n6238) );
  NAND2X1 U4411 ( .A(n3538), .B(n4913), .Y(n4018) );
  NAND2BX1 U4412 ( .AN(median_sobel_inst_n54), .B(n5425), .Y(n4897) );
  NAND2X2 U4413 ( .A(n3833), .B(n5639), .Y(n3832) );
  INVX12 U4414 ( .A(n5289), .Y(n5825) );
  BUFX16 U4415 ( .A(n4329), .Y(n5840) );
  AOI2BB2X2 U4416 ( .B0(n7381), .B1(n5144), .A0N(
        median_sobel_inst_u_median_filter_submodule_n182), .A1N(
        median_sobel_inst_u_median_filter_submodule_n783), .Y(n5145) );
  NOR2X4 U4417 ( .A(n4127), .B(n6104), .Y(n4126) );
  INVX1 U4418 ( .A(n5560), .Y(n5541) );
  NOR2X2 U4419 ( .A(n3946), .B(
        median_sobel_inst_u_median_filter_submodule_net84111), .Y(n5555) );
  NOR2X2 U4420 ( .A(n5289), .B(median_sobel_inst_n974), .Y(n5080) );
  CLKBUFX8 U4421 ( .A(n5419), .Y(n4366) );
  BUFX12 U4422 ( .A(n4722), .Y(n4714) );
  OAI21X1 U4423 ( .A0(n4992), .A1(n4970), .B0(n4991), .Y(n4971) );
  NAND3X1 U4424 ( .A(n5547), .B(n5546), .C(n5545), .Y(n5549) );
  NOR2X2 U4425 ( .A(n4814), .B(n4058), .Y(n4057) );
  INVX6 U4426 ( .A(n7365), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]) );
  NOR2X4 U4427 ( .A(input_data_ready_r[6]), .B(input_data_ready_r[22]), .Y(
        n5658) );
  BUFX8 U4428 ( .A(n4913), .Y(n5424) );
  BUFX6 U4429 ( .A(n5197), .Y(n5190) );
  NAND2X2 U4430 ( .A(n5317), .B(curr_state[2]), .Y(n6104) );
  NAND2BX2 U4431 ( .AN(n7619), .B(input_data_ready_r[14]), .Y(n5217) );
  NAND2X4 U4432 ( .A(input_data_ready_r[20]), .B(input_data_ready_r[4]), .Y(
        n5653) );
  NAND2BX2 U4433 ( .AN(n7581), .B(input_data_ready_r[5]), .Y(n5652) );
  CLKINVX1 U4434 ( .A(n3828), .Y(n3833) );
  NOR2BX2 U4435 ( .AN(n5687), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n4609) );
  BUFX8 U4436 ( .A(n5179), .Y(n5225) );
  BUFX12 U4437 ( .A(n5425), .Y(n3645) );
  INVX1 U4438 ( .A(n5196), .Y(n5192) );
  NAND2BX2 U4439 ( .AN(n4533), .B(n5313), .Y(n4134) );
  NOR2X6 U4440 ( .A(n3809), .B(n5317), .Y(n5322) );
  AND2X6 U4441 ( .A(n6558), .B(n7380), .Y(n4132) );
  INVX2 U4442 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(
        n5687) );
  CLKINVX1 U4443 ( .A(median_sobel_inst_u_median_filter_submodule_n146), .Y(
        n7173) );
  INVX2 U4444 ( .A(n5198), .Y(n4045) );
  INVX16 U4445 ( .A(n6989), .Y(n4913) );
  INVX16 U4446 ( .A(n4905), .Y(n4834) );
  NOR2X4 U4447 ( .A(n5896), .B(n5199), .Y(n4046) );
  INVX8 U4448 ( .A(n5809), .Y(n4721) );
  INVX1 U4449 ( .A(conv_inst_n191), .Y(n3911) );
  INVX2 U4450 ( .A(n5214), .Y(n5213) );
  INVX12 U4451 ( .A(n4905), .Y(n4814) );
  NAND2X6 U4452 ( .A(input_data_ready_r[28]), .B(input_data_ready_r[12]), .Y(
        n5205) );
  NAND2X6 U4453 ( .A(n7446), .B(n4545), .Y(n5196) );
  NAND2X2 U4454 ( .A(input_data_ready_r[29]), .B(input_data_ready_r[13]), .Y(
        n5208) );
  INVX6 U4455 ( .A(n4135), .Y(n4139) );
  NOR2X4 U4456 ( .A(n5203), .B(n5207), .Y(n5215) );
  NAND2X4 U4457 ( .A(n7382), .B(input_data_ready_r[0]), .Y(n5877) );
  NAND2X6 U4458 ( .A(n4932), .B(n5317), .Y(n4943) );
  OAI21X2 U4459 ( .A0(n5199), .A1(n5896), .B0(n5198), .Y(n3866) );
  INVX4 U4460 ( .A(n5315), .Y(n5309) );
  BUFX12 U4461 ( .A(n3968), .Y(n3810) );
  INVX3 U4462 ( .A(conv_inst_n191), .Y(n5795) );
  INVX4 U4463 ( .A(n3973), .Y(n3972) );
  OR2X6 U4464 ( .A(n4666), .B(n1935), .Y(n5198) );
  INVX1 U4465 ( .A(n7619), .Y(n4416) );
  NOR2X4 U4466 ( .A(input_data_ready_r[28]), .B(input_data_ready_r[12]), .Y(
        n5203) );
  INVX8 U4467 ( .A(n1961), .Y(n5641) );
  NOR2X6 U4468 ( .A(n7446), .B(n4545), .Y(n5197) );
  NOR2X6 U4469 ( .A(n7624), .B(median_sobel_inst_n654), .Y(n3643) );
  BUFX16 U4470 ( .A(n7439), .Y(n4543) );
  NAND2X4 U4471 ( .A(curr_state[3]), .B(curr_state[2]), .Y(n5315) );
  INVX8 U4472 ( .A(curr_state[2]), .Y(n4932) );
  BUFX6 U4473 ( .A(n768), .Y(n3867) );
  INVX8 U4474 ( .A(median_sobel_inst_n654), .Y(n4806) );
  BUFX20 U4475 ( .A(i_rst_n), .Y(n7669) );
  OAI2BB1X2 U4476 ( .A0N(median_sobel_inst_u_median_filter_submodule_n1227), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n1244), .B0(n4083), 
        .Y(n4082) );
  NOR2XL U4477 ( .A(median_sobel_inst_u_median_filter_submodule_n168), .B(
        median_sobel_inst_u_median_filter_submodule_n1224), .Y(n4178) );
  OR2X2 U4478 ( .A(median_sobel_inst_u_median_filter_submodule_n822), .B(
        median_sobel_inst_u_median_filter_submodule_n1080), .Y(n5620) );
  INVXL U4479 ( .A(n6656), .Y(n6658) );
  AOI2BB1X2 U4480 ( .A0N(n4505), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n295), .B0(
        median_sobel_inst_u_sober_compare_submodule_n377), .Y(n6628) );
  INVX3 U4481 ( .A(median_sobel_inst_u_median_filter_submodule_net87617), .Y(
        n3946) );
  CLKINVX1 U4482 ( .A(n3645), .Y(n4028) );
  INVX3 U4483 ( .A(n3604), .Y(n4492) );
  OAI2BB2XL U4484 ( .B0(median_sobel_inst_u_median_filter_submodule_n190), 
        .B1(n7171), .A0N(median_sobel_inst_u_median_filter_submodule_n1209), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n1214), .Y(n5631) );
  NAND2X2 U4485 ( .A(n4976), .B(n4977), .Y(n4653) );
  NAND2X1 U4486 ( .A(n3977), .B(n7380), .Y(n3976) );
  NOR3X4 U4487 ( .A(n3628), .B(n3627), .C(n4645), .Y(n3625) );
  NAND2X2 U4488 ( .A(n5204), .B(n5205), .Y(n3906) );
  NAND3X2 U4489 ( .A(n5147), .B(n5145), .C(n5146), .Y(n4616) );
  NOR2X1 U4490 ( .A(n5289), .B(median_sobel_inst_n1039), .Y(n4013) );
  NOR3X1 U4491 ( .A(n6386), .B(n6387), .C(n6264), .Y(n6265) );
  CLKINVX2 U4492 ( .A(median_sobel_inst_data_i_r[2]), .Y(n5449) );
  NOR2X1 U4493 ( .A(n7035), .B(conv_inst_n20), .Y(n3694) );
  NAND2X1 U4494 ( .A(n3698), .B(n3697), .Y(n6467) );
  NOR2XL U4495 ( .A(n7223), .B(n2264), .Y(n4201) );
  INVXL U4496 ( .A(n6311), .Y(n6313) );
  AND2X1 U4497 ( .A(n4712), .B(n3710), .Y(n3539) );
  CLKINVX1 U4498 ( .A(median_sobel_inst_u_median_filter_submodule_n168), .Y(
        n5634) );
  NAND2X2 U4499 ( .A(n3816), .B(n4415), .Y(n3902) );
  NOR2XL U4500 ( .A(n5328), .B(n7245), .Y(n5329) );
  INVX3 U4501 ( .A(n3632), .Y(n3631) );
  OAI21X1 U4502 ( .A0(n6174), .A1(n6167), .B0(n6175), .Y(n4317) );
  NAND2X1 U4503 ( .A(n5425), .B(n4328), .Y(n4327) );
  NAND2X2 U4504 ( .A(n3672), .B(n7468), .Y(n3671) );
  NAND2X1 U4505 ( .A(n5198), .B(n4665), .Y(n5187) );
  NOR2X2 U4506 ( .A(n5731), .B(n5733), .Y(n5739) );
  INVXL U4507 ( .A(n6132), .Y(n6134) );
  INVXL U4508 ( .A(n5707), .Y(n6063) );
  INVXL U4509 ( .A(n5765), .Y(n6444) );
  CLKINVX1 U4510 ( .A(n5321), .Y(n3684) );
  NAND2BX1 U4511 ( .AN(median_sobel_inst_n1144), .B(n5424), .Y(n4827) );
  OAI22XL U4512 ( .A0(n6559), .A1(n6558), .B0(n6557), .B1(n6556), .Y(n6560) );
  NAND2XL U4513 ( .A(n7087), .B(n7086), .Y(n7088) );
  NAND2BX2 U4514 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n329), .B(
        n3573), .Y(n6169) );
  AND2X1 U4515 ( .A(n6737), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]), .Y(n6714)
         );
  AOI2BB2X2 U4516 ( .B0(n7029), .B1(n7012), .A0N(n7014), .A1N(conv_inst_n22), 
        .Y(n4039) );
  CLKINVX1 U4517 ( .A(n7262), .Y(n7252) );
  NAND2X1 U4518 ( .A(n6804), .B(n6785), .Y(n3712) );
  NAND2XL U4519 ( .A(n6318), .B(n6317), .Y(n6319) );
  AOI21X2 U4520 ( .A0(n6902), .A1(n6906), .B0(n5384), .Y(n5385) );
  INVXL U4521 ( .A(n5126), .Y(n6523) );
  INVXL U4522 ( .A(n6869), .Y(n6871) );
  NOR2BX2 U4523 ( .AN(n5456), .B(n5455), .Y(n5460) );
  NAND2X2 U4524 ( .A(n5672), .B(input_data_ready_r[13]), .Y(n6706) );
  INVXL U4525 ( .A(n6764), .Y(n6766) );
  NOR2X4 U4526 ( .A(median_sobel_inst_n1068), .B(n7398), .Y(n7220) );
  NAND2XL U4527 ( .A(n1914), .B(n7485), .Y(n7344) );
  NOR2XL U4528 ( .A(n2267), .B(n7138), .Y(n6493) );
  NAND2X1 U4529 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .Y(n6727) );
  INVXL U4530 ( .A(n6277), .Y(n6360) );
  NAND2XL U4531 ( .A(n7473), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n6453) );
  NAND2X4 U4532 ( .A(n5201), .B(n3553), .Y(n6981) );
  INVXL U4533 ( .A(median_sobel_inst_n960), .Y(n4372) );
  NAND2BX1 U4534 ( .AN(median_sobel_inst_n836), .B(n5414), .Y(n5269) );
  NOR2X2 U4535 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n342), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .Y(
        n5916) );
  INVXL U4536 ( .A(n6452), .Y(n6418) );
  INVXL U4537 ( .A(n6119), .Y(n6121) );
  INVXL U4538 ( .A(n6387), .Y(n6028) );
  INVXL U4539 ( .A(n5967), .Y(n5969) );
  INVXL U4540 ( .A(n6071), .Y(n6181) );
  NOR2X2 U4541 ( .A(n7177), .B(n4109), .Y(n4282) );
  AND2X1 U4542 ( .A(median_sobel_inst_n1054), .B(median_sobel_inst_n394), .Y(
        n5121) );
  NAND2XL U4543 ( .A(n6134), .B(n6133), .Y(n6135) );
  AOI2BB1X1 U4544 ( .A0N(n5363), .A1N(n3825), .B0(n5701), .Y(n3824) );
  NAND2XL U4545 ( .A(n5735), .B(n5734), .Y(n5736) );
  BUFX4 U4546 ( .A(n4498), .Y(n3899) );
  INVXL U4547 ( .A(n7358), .Y(n3691) );
  NAND2X1 U4548 ( .A(n6229), .B(median_sobel_inst_n1015), .Y(n4886) );
  NAND2XL U4549 ( .A(n4513), .B(conv_calc_done_r), .Y(n4074) );
  NAND2XL U4550 ( .A(n4448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n4442) );
  NAND2XL U4551 ( .A(n6845), .B(n6837), .Y(n6838) );
  NAND2XL U4552 ( .A(n6934), .B(n3868), .Y(n6943) );
  NOR2X4 U4553 ( .A(n3654), .B(n3939), .Y(n3938) );
  NOR2BX1 U4554 ( .AN(n3641), .B(n6491), .Y(n3640) );
  OAI21X2 U4555 ( .A0(n4633), .A1(conv_inst_n274), .B0(n4632), .Y(n4631) );
  AOI22X2 U4556 ( .A0(n5699), .A1(median_sobel_inst_n1056), .B0(
        median_sobel_inst_n323), .B1(n6238), .Y(n4895) );
  NAND2X1 U4557 ( .A(n6338), .B(n5120), .Y(n6441) );
  NAND2XL U4558 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n299), .Y(n6521) );
  OR2X4 U4559 ( .A(n6993), .B(n4151), .Y(n4530) );
  NAND2XL U4560 ( .A(n6762), .B(n6760), .Y(n6479) );
  NAND2X2 U4561 ( .A(n5346), .B(median_sobel_inst_n1211), .Y(n3896) );
  AOI2BB2X2 U4562 ( .B0(n5886), .B1(n4372), .A0N(median_sobel_inst_n40), .A1N(
        n4371), .Y(n4370) );
  CLKINVX1 U4563 ( .A(n6917), .Y(n6910) );
  NAND2BX1 U4564 ( .AN(median_sobel_inst_n960), .B(n5683), .Y(n4849) );
  OAI2BB2X1 U4565 ( .B0(median_sobel_inst_u_sober_compare_submodule_n321), 
        .B1(median_sobel_inst_u_sober_compare_submodule_n276), .A0N(
        median_sobel_inst_u_sober_compare_submodule_temp_a_r[9]), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n270), .Y(n7231) );
  NAND2XL U4566 ( .A(n5681), .B(median_sobel_inst_n695), .Y(n5075) );
  NAND2XL U4567 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n302), .Y(n6518) );
  INVXL U4568 ( .A(n6551), .Y(n6543) );
  AND2X4 U4569 ( .A(n5688), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n44), .Y(n5889) );
  OAI21X1 U4570 ( .A0(n3797), .A1(n3543), .B0(n3798), .Y(n6879) );
  NAND2XL U4571 ( .A(n6900), .B(n6899), .Y(n6901) );
  NAND2X4 U4572 ( .A(n3785), .B(n3777), .Y(n4760) );
  XNOR2X1 U4573 ( .A(n4103), .B(n5756), .Y(n4102) );
  NAND2X6 U4574 ( .A(n4948), .B(n7443), .Y(n5870) );
  NAND2X2 U4575 ( .A(n7335), .B(n849), .Y(n7329) );
  INVX4 U4576 ( .A(n7096), .Y(n7138) );
  NAND2X2 U4577 ( .A(n7335), .B(z_r[3]), .Y(n7321) );
  OAI21XL U4578 ( .A0(n6581), .A1(n7281), .B0(n6999), .Y(n6582) );
  XNOR2X1 U4579 ( .A(n4241), .B(n6526), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N112) );
  XNOR2X1 U4580 ( .A(n3572), .B(n6095), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N172) );
  OAI21XL U4581 ( .A0(n7211), .A1(n7210), .B0(n7209), .Y(out_data_wait_r[1])
         );
  OA21XL U4582 ( .A0(n6014), .A1(n4266), .B0(n4265), .Y(N718) );
  OAI222XL U4583 ( .A0(n7152), .A1(
        median_sobel_inst_u_median_filter_submodule_n1517), .B0(n5869), .B1(
        median_sobel_inst_u_median_filter_submodule_n958), .C0(n7148), .C1(
        median_sobel_inst_u_median_filter_submodule_n919), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[6]) );
  XOR2X1 U4584 ( .A(n6898), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N23) );
  XNOR2X1 U4585 ( .A(n4236), .B(n6872), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N114) );
  OAI21XL U4586 ( .A0(n5791), .A1(n6995), .B0(n5790), .Y(n2240) );
  AND2X2 U4587 ( .A(n7017), .B(n7358), .Y(conv_inst_N283) );
  XNOR2X2 U4588 ( .A(n4634), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]) );
  NAND2XL U4589 ( .A(n5684), .B(n4179), .Y(
        median_sobel_inst_u_median_filter_submodule_n852) );
  OAI222XL U4590 ( .A0(n5814), .A1(
        median_sobel_inst_u_median_filter_submodule_n918), .B0(n5813), .B1(
        median_sobel_inst_u_median_filter_submodule_n888), .C0(n5812), .C1(
        median_sobel_inst_u_median_filter_submodule_n959), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[2]) );
  INVXL U4591 ( .A(n5523), .Y(median_sobel_inst_data_f_r[0]) );
  NAND3BX2 U4592 ( .AN(n3610), .B(n5098), .C(n3933), .Y(conv_inst_ns_0_) );
  INVXL U4593 ( .A(n5388), .Y(median_sobel_inst_data_a_r[0]) );
  NAND2X6 U4594 ( .A(n4812), .B(n3871), .Y(median_sobel_inst_data_e_r[3]) );
  OAI211XL U4595 ( .A0(n7291), .A1(n7508), .B0(n7289), .C0(n7331), .Y(
        sram_addr_wait_r[20]) );
  MXI2X1 U4596 ( .A(median_sobel_inst_n251), .B(n7581), .S0(n5848), .Y(
        median_sobel_inst_n1264) );
  OAI222XL U4597 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n873), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n897), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n943), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[1]) );
  MX2X1 U4598 ( .A(median_sobel_inst_angle[6]), .B(
        median_sobel_inst_u_sober_compare_submodule_n267), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n89) );
  MX2X1 U4599 ( .A(median_sobel_inst_G[28]), .B(
        median_sobel_inst_u_sober_compare_submodule_n299), .S0(n5840), .Y(
        median_sobel_inst_u_sober_compare_submodule_n113) );
  MX2X1 U4600 ( .A(median_sobel_inst_G[27]), .B(
        median_sobel_inst_u_sober_compare_submodule_n17), .S0(n5840), .Y(
        median_sobel_inst_u_sober_compare_submodule_n112) );
  AND2X1 U4601 ( .A(n5885), .B(n6111), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N107) );
  NAND2XL U4602 ( .A(n5875), .B(n6551), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N120) );
  OAI21XL U4603 ( .A0(n6470), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .B0(n6394), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N138) );
  OAI222XL U4604 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n907), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n878), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n961), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[7]) );
  MX2X1 U4605 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[21]), .S0(n4719), .Y(median_sobel_inst_n469) );
  MX2X1 U4606 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[2]), .S0(n5840), .Y(median_sobel_inst_n502) );
  MX2X1 U4607 ( .A(median_sobel_inst_angle[3]), .B(
        median_sobel_inst_angle_w[0]), .S0(n3789), .Y(median_sobel_inst_n516)
         );
  MX2X1 U4608 ( .A(median_sobel_inst_angle[4]), .B(
        median_sobel_inst_angle_w[1]), .S0(n3789), .Y(median_sobel_inst_n512)
         );
  MX2X1 U4609 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[35]), .S0(n5808), .Y(median_sobel_inst_n503) );
  MX2X1 U4610 ( .A(median_sobel_inst_n82), .B(n7446), .S0(n5873), .Y(
        median_sobel_inst_n525) );
  MX2X1 U4611 ( .A(median_sobel_inst_n1022), .B(n4599), .S0(n3789), .Y(
        median_sobel_inst_n542) );
  MX2X1 U4612 ( .A(median_sobel_inst_n976), .B(input_data_ready_r[30]), .S0(
        n5883), .Y(median_sobel_inst_n521) );
  NAND3XL U4613 ( .A(n6440), .B(n6340), .C(n6339), .Y(median_sobel_inst_ns[2])
         );
  AND2X1 U4614 ( .A(n6259), .B(n7358), .Y(conv_inst_N2530) );
  AND2X1 U4615 ( .A(n6154), .B(n7358), .Y(conv_inst_N2550) );
  AND2X1 U4616 ( .A(n6019), .B(n7358), .Y(conv_inst_N2420) );
  OAI22XL U4617 ( .A0(conv_inst_n256), .A1(n6087), .B0(conv_inst_n255), .B1(
        n5861), .Y(conv_inst_N126) );
  CLKINVX1 U4618 ( .A(x_origin_r_1_), .Y(n7675) );
  NAND2X6 U4619 ( .A(n5325), .B(n4498), .Y(o_in_ready) );
  OR2X2 U4620 ( .A(n3706), .B(n3709), .Y(n3534) );
  CLKBUFX8 U4621 ( .A(n5785), .Y(n5848) );
  CLKBUFX3 U4622 ( .A(n4347), .Y(n6553) );
  AND2X2 U4623 ( .A(median_sobel_inst_n701), .B(n3758), .Y(n3535) );
  AND4X2 U4624 ( .A(n3968), .B(n4932), .C(n5876), .D(n5317), .Y(n3536) );
  AND2X2 U4625 ( .A(n6229), .B(n4603), .Y(n3537) );
  AND2X4 U4626 ( .A(n4869), .B(median_sobel_inst_data_e_r[6]), .Y(n3540) );
  NAND2XL U4627 ( .A(n6882), .B(n6885), .Y(n3543) );
  AND2X2 U4628 ( .A(n5419), .B(n4367), .Y(n3548) );
  NAND2X4 U4629 ( .A(n3968), .B(n5309), .Y(n4513) );
  INVXL U4630 ( .A(n4513), .Y(n4078) );
  NAND2X6 U4631 ( .A(n445), .B(n7623), .Y(n7262) );
  AND2X4 U4632 ( .A(n7380), .B(n6114), .Y(n3549) );
  BUFX12 U4633 ( .A(n5179), .Y(n6229) );
  BUFX12 U4634 ( .A(n5179), .Y(n5883) );
  INVX3 U4635 ( .A(n5289), .Y(n5852) );
  CLKINVX1 U4636 ( .A(n5300), .Y(median_sobel_inst_data_d_r[5]) );
  NAND2BX1 U4637 ( .AN(median_sobel_inst_u_median_filter_submodule_n881), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .Y(n6899) );
  NOR2X4 U4638 ( .A(n4274), .B(n4273), .Y(n4791) );
  INVXL U4639 ( .A(median_sobel_inst_net88785), .Y(n3765) );
  INVXL U4640 ( .A(median_sobel_inst_n1045), .Y(n3794) );
  NAND2X6 U4641 ( .A(n4073), .B(n4005), .Y(n5530) );
  INVXL U4642 ( .A(n3899), .Y(n4499) );
  INVX12 U4643 ( .A(n3867), .Y(n5876) );
  NOR2X4 U4644 ( .A(n3892), .B(n3891), .Y(n5397) );
  CLKINVX1 U4645 ( .A(n5397), .Y(n3744) );
  CLKINVX1 U4646 ( .A(n3705), .Y(n6788) );
  AND2X2 U4647 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n325), .Y(n3705) );
  INVX3 U4648 ( .A(N760), .Y(n7673) );
  INVXL U4649 ( .A(median_sobel_inst_n118), .Y(n5860) );
  INVXL U4650 ( .A(median_sobel_inst_n1015), .Y(n4723) );
  AND2X2 U4651 ( .A(n4707), .B(n4642), .Y(n3555) );
  NOR2X4 U4652 ( .A(n5670), .B(input_data_ready_r[12]), .Y(n6704) );
  NOR2X4 U4653 ( .A(input_data_ready_r[20]), .B(input_data_ready_r[4]), .Y(
        n3557) );
  NAND4X6 U4654 ( .A(n4842), .B(n4841), .C(n4840), .D(n4839), .Y(
        median_sobel_inst_data_e_r[5]) );
  AND2X2 U4655 ( .A(n5650), .B(n5652), .Y(n3560) );
  NAND2X4 U4656 ( .A(n4896), .B(n4895), .Y(median_sobel_inst_data_f_r[5]) );
  NAND2X1 U4657 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n56), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n6889) );
  NAND2XL U4658 ( .A(n6229), .B(n4576), .Y(n3561) );
  NAND2X2 U4659 ( .A(n5209), .B(n5208), .Y(n5211) );
  NAND2X1 U4660 ( .A(n5225), .B(median_sobel_inst_n56), .Y(n5226) );
  NOR2X1 U4661 ( .A(n4526), .B(n4527), .Y(n6831) );
  NOR2XL U4662 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        n4527), .Y(n6795) );
  AND2X2 U4663 ( .A(n5284), .B(n5285), .Y(n3566) );
  AND2X2 U4664 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), .Y(n6522)
         );
  INVXL U4665 ( .A(n6522), .Y(n5129) );
  INVXL U4666 ( .A(n6855), .Y(n6851) );
  OAI21X1 U4667 ( .A0(n6173), .A1(n6119), .B0(n6120), .Y(n3572) );
  NAND2X8 U4668 ( .A(n6636), .B(n6635), .Y(n3575) );
  AND2X8 U4669 ( .A(n7172), .B(n4171), .Y(n3577) );
  CLKINVX1 U4670 ( .A(n6435), .Y(n7353) );
  AND2X2 U4671 ( .A(n6435), .B(n5507), .Y(n3579) );
  CLKINVX1 U4672 ( .A(n7035), .Y(n3690) );
  NOR2X4 U4673 ( .A(n5468), .B(n5467), .Y(n7014) );
  NOR2X4 U4674 ( .A(n5223), .B(input_data_ready_r[23]), .Y(n5266) );
  INVX8 U4675 ( .A(median_sobel_inst_data_c_r[6]), .Y(n5527) );
  NAND2X6 U4676 ( .A(n4900), .B(n4899), .Y(n5526) );
  NAND2BX2 U4677 ( .AN(n7295), .B(n4675), .Y(n4674) );
  INVX3 U4678 ( .A(n4763), .Y(n3785) );
  INVX3 U4679 ( .A(n5395), .Y(n3748) );
  INVX3 U4680 ( .A(n5268), .Y(n4409) );
  INVX3 U4681 ( .A(n5532), .Y(n3766) );
  INVX3 U4682 ( .A(n4119), .Y(n3742) );
  NAND2X4 U4683 ( .A(n4415), .B(n5265), .Y(n5268) );
  INVX3 U4684 ( .A(n5266), .Y(n4415) );
  NAND2X2 U4685 ( .A(n4343), .B(n5297), .Y(n4336) );
  INVX3 U4686 ( .A(median_sobel_inst_data_f_r[1]), .Y(n4020) );
  INVX3 U4687 ( .A(n5293), .Y(n4223) );
  INVX3 U4688 ( .A(median_sobel_inst_data_c_r[3]), .Y(n5525) );
  INVX3 U4689 ( .A(median_sobel_inst_data_c_r[3]), .Y(n4742) );
  NAND2X2 U4690 ( .A(n4671), .B(conv_inst_conv_1_r[12]), .Y(n4670) );
  INVX4 U4691 ( .A(median_sobel_inst_data_d_r[2]), .Y(n5295) );
  OAI2BB1X2 U4692 ( .A0N(n7183), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_N78), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n7184)
         );
  INVX3 U4693 ( .A(n5531), .Y(n4055) );
  NAND2X2 U4694 ( .A(n4240), .B(n6523), .Y(n4242) );
  CLKINVX1 U4695 ( .A(n5531), .Y(n4750) );
  INVX3 U4696 ( .A(n3699), .Y(n3698) );
  NAND4X4 U4697 ( .A(n5064), .B(n5065), .C(n5066), .D(n3618), .Y(
        median_sobel_inst_data_d_r[2]) );
  INVX3 U4698 ( .A(n3763), .Y(n5181) );
  XNOR2X1 U4699 ( .A(n5706), .B(n3824), .Y(n3823) );
  OAI211X1 U4700 ( .A0(median_sobel_inst_u_sober_compare_submodule_n351), .A1(
        n5977), .B0(n5794), .C0(n5793), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]) );
  INVX2 U4701 ( .A(n4028), .Y(n4000) );
  CLKINVX1 U4702 ( .A(n6568), .Y(n5890) );
  NOR2X6 U4703 ( .A(n5506), .B(n3579), .Y(n3699) );
  INVX3 U4704 ( .A(n3762), .Y(n4919) );
  OAI211X1 U4705 ( .A0(median_sobel_inst_u_sober_compare_submodule_n353), .A1(
        n5977), .B0(n5787), .C0(n5786), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]) );
  OAI211X1 U4706 ( .A0(median_sobel_inst_u_sober_compare_submodule_n365), .A1(
        n5977), .B0(n5698), .C0(n5697), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]) );
  OAI211X1 U4707 ( .A0(median_sobel_inst_u_sober_compare_submodule_n414), .A1(
        n5977), .B0(n5696), .C0(n5695), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]) );
  CLKMX2X2 U4708 ( .A(median_sobel_inst_angle[2]), .B(
        median_sobel_inst_u_sober_compare_submodule_n266), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n93) );
  NAND2X6 U4709 ( .A(n3992), .B(n3991), .Y(n6892) );
  NOR2X4 U4710 ( .A(n5807), .B(median_sobel_inst_n448), .Y(n3762) );
  OAI211X1 U4711 ( .A0(median_sobel_inst_u_sober_compare_submodule_n354), .A1(
        n5977), .B0(n5976), .C0(n5975), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]) );
  NOR2X4 U4712 ( .A(n3935), .B(conv_inst_n252), .Y(n3914) );
  CLKINVX1 U4713 ( .A(n5889), .Y(n5690) );
  OAI211X1 U4714 ( .A0(median_sobel_inst_u_sober_compare_submodule_n367), .A1(
        n5977), .B0(n5694), .C0(n5693), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]) );
  OAI211X1 U4715 ( .A0(median_sobel_inst_u_sober_compare_submodule_n366), .A1(
        n5977), .B0(n5692), .C0(n5691), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]) );
  INVX2 U4716 ( .A(n3935), .Y(n3937) );
  INVX3 U4717 ( .A(n4057), .Y(n4056) );
  INVX3 U4718 ( .A(n7052), .Y(n4668) );
  INVX3 U4719 ( .A(n5031), .Y(n4606) );
  INVX3 U4720 ( .A(n4952), .Y(n4314) );
  INVX2 U4721 ( .A(n4183), .Y(n4071) );
  INVX3 U4722 ( .A(n4948), .Y(n4274) );
  CLKMX2X2 U4723 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[4]), .S0(n6553), .Y(median_sobel_inst_n494) );
  INVX6 U4724 ( .A(n5876), .Y(n4138) );
  INVX1 U4725 ( .A(n7155), .Y(n3980) );
  INVX3 U4726 ( .A(n4968), .Y(n3667) );
  AND2X2 U4727 ( .A(n7483), .B(n4178), .Y(n4177) );
  INVX3 U4728 ( .A(n7247), .Y(n5328) );
  OAI2BB1X2 U4729 ( .A0N(n5321), .A1N(n4932), .B0(n5320), .Y(n5323) );
  INVX1 U4730 ( .A(n6466), .Y(n3697) );
  CLKINVX1 U4731 ( .A(n4312), .Y(n4313) );
  INVX3 U4732 ( .A(curr_state[1]), .Y(n4133) );
  CLKINVX1 U4733 ( .A(median_sobel_inst_u_median_filter_submodule_n1078), .Y(
        n7154) );
  OR2X1 U4734 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n68), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(n5882) );
  OR2X1 U4735 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n68), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .Y(n5682) );
  NAND2X4 U4736 ( .A(conv_inst_data_bcd_4_r[0]), .B(conv_inst_conv_4_r[0]), 
        .Y(n6146) );
  NOR2X4 U4737 ( .A(input_data_ready_r[15]), .B(input_data_ready_r[31]), .Y(
        n5218) );
  INVX1 U4738 ( .A(median_sobel_inst_u_median_filter_submodule_n1103), .Y(
        n4192) );
  XNOR2X1 U4739 ( .A(n1858), .B(cnt[5]), .Y(n4556) );
  INVX3 U4740 ( .A(n3681), .Y(n5536) );
  NAND2X2 U4741 ( .A(n3745), .B(n3744), .Y(n3743) );
  NAND2X4 U4742 ( .A(n5523), .B(n4022), .Y(n4021) );
  INVX3 U4743 ( .A(n5392), .Y(n3755) );
  NOR2X4 U4744 ( .A(n3581), .B(median_sobel_inst_data_d_r[2]), .Y(n3628) );
  INVX3 U4745 ( .A(n3986), .Y(n3725) );
  INVX3 U4746 ( .A(n3985), .Y(n3723) );
  INVX3 U4747 ( .A(n6976), .Y(n3962) );
  INVX2 U4748 ( .A(n6704), .Y(n3996) );
  NAND2X6 U4749 ( .A(n5063), .B(n3631), .Y(median_sobel_inst_data_d_r[1]) );
  NAND2X2 U4750 ( .A(n4123), .B(n4122), .Y(n4121) );
  INVX3 U4751 ( .A(median_sobel_inst_n749), .Y(n4221) );
  INVX4 U4752 ( .A(median_sobel_inst_n759), .Y(n4712) );
  NAND2X6 U4753 ( .A(n4247), .B(n4205), .Y(n6857) );
  INVX2 U4754 ( .A(n5530), .Y(n3812) );
  INVX3 U4755 ( .A(n3782), .Y(n5532) );
  NAND2X2 U4756 ( .A(n4020), .B(median_sobel_inst_data_i_r[1]), .Y(n4019) );
  NAND2X4 U4757 ( .A(n3854), .B(n3849), .Y(n6321) );
  INVX4 U4758 ( .A(n5393), .Y(median_sobel_inst_n779) );
  NAND2X4 U4759 ( .A(n4248), .B(n4206), .Y(n4205) );
  NAND2X2 U4760 ( .A(n4242), .B(n5129), .Y(n4241) );
  INVX3 U4761 ( .A(median_sobel_inst_data_c_r[0]), .Y(n3758) );
  INVX4 U4762 ( .A(n4284), .Y(n4283) );
  INVX3 U4763 ( .A(n5127), .Y(n4248) );
  INVX3 U4764 ( .A(n5529), .Y(n4233) );
  INVX3 U4765 ( .A(median_sobel_inst_data_e_r[0]), .Y(n3734) );
  AND2X6 U4766 ( .A(n4385), .B(n4384), .Y(n7233) );
  INVX3 U4767 ( .A(n5524), .Y(n4017) );
  INVX3 U4768 ( .A(median_sobel_inst_data_g_r[3]), .Y(n5391) );
  NAND2X4 U4769 ( .A(n4098), .B(n4100), .Y(n4096) );
  INVX3 U4770 ( .A(n5373), .Y(n4016) );
  INVX3 U4771 ( .A(n5080), .Y(n3893) );
  NAND2X1 U4772 ( .A(n3599), .B(n3597), .Y(n6284) );
  NAND2X2 U4773 ( .A(n6229), .B(median_sobel_inst_n964), .Y(n4854) );
  NAND2X2 U4774 ( .A(n5858), .B(median_sobel_inst_n94), .Y(n3618) );
  NOR2X4 U4775 ( .A(n5807), .B(n5853), .Y(n3763) );
  NOR2X2 U4776 ( .A(n7211), .B(n7218), .Y(n6594) );
  CLKINVX1 U4777 ( .A(n6839), .Y(n4255) );
  OAI222X1 U4778 ( .A0(n7154), .A1(n7155), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n900), .C0(n7157), .C1(
        median_sobel_inst_u_median_filter_submodule_n945), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[2]) );
  NOR2X1 U4779 ( .A(n4204), .B(n4203), .Y(n4202) );
  INVX1 U4780 ( .A(n4201), .Y(n4200) );
  INVX2 U4781 ( .A(n7052), .Y(n4101) );
  NAND2X4 U4782 ( .A(n5211), .B(n4034), .Y(n4033) );
  NAND2X1 U4783 ( .A(n5948), .B(n6020), .Y(n5949) );
  CLKINVX1 U4784 ( .A(n6882), .Y(n3799) );
  CLKINVX1 U4785 ( .A(n7358), .Y(n3822) );
  XOR2X1 U4786 ( .A(n6005), .B(n6234), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N27) );
  CLKINVX1 U4787 ( .A(n7358), .Y(n4092) );
  CLKINVX1 U4788 ( .A(n6166), .Y(n4227) );
  NOR2X4 U4789 ( .A(n5505), .B(n7352), .Y(n5507) );
  CLKINVX1 U4790 ( .A(n6170), .Y(n4226) );
  OAI2BB2X2 U4791 ( .B0(n5627), .B1(
        median_sobel_inst_u_median_filter_submodule_n214), .A0N(
        median_sobel_inst_u_median_filter_submodule_n1588), .A1N(
        median_sobel_inst_u_median_filter_submodule_n1103), .Y(n4189) );
  INVX2 U4792 ( .A(n5620), .Y(n4155) );
  OAI222X1 U4793 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n882), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n910), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n952), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[1]) );
  NAND2X1 U4794 ( .A(n6248), .B(n6247), .Y(n6249) );
  OAI222X1 U4795 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n958), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n1517), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n919), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[6]) );
  OAI222X1 U4796 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n913), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n887), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n950), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[3]) );
  INVX3 U4797 ( .A(n3557), .Y(n3835) );
  INVX3 U4798 ( .A(n3862), .Y(n3837) );
  INVX3 U4799 ( .A(n5215), .Y(n3880) );
  NAND3X2 U4800 ( .A(n5568), .B(
        median_sobel_inst_u_median_filter_submodule_net87846), .C(n5578), .Y(
        n3945) );
  OAI222X1 U4801 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n881), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n901), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n962), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[5]) );
  INVX1 U4802 ( .A(n5634), .Y(n4414) );
  CLKINVX1 U4803 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n48), .Y(
        n3800) );
  INVX1 U4804 ( .A(n7173), .Y(n4279) );
  NAND2X6 U4805 ( .A(n7149), .B(n7148), .Y(n7155) );
  INVX2 U4806 ( .A(n5856), .Y(n4603) );
  NOR2X1 U4807 ( .A(n6478), .B(n6764), .Y(n5413) );
  INVX1 U4808 ( .A(n7268), .Y(n4268) );
  CLKINVX1 U4809 ( .A(n3598), .Y(n3597) );
  CLKINVX1 U4810 ( .A(n5801), .Y(n5351) );
  INVX1 U4811 ( .A(n6247), .Y(n5777) );
  NAND2X4 U4812 ( .A(n5812), .B(n5799), .Y(n6637) );
  OR2X1 U4813 ( .A(n6356), .B(input_data_ready_r[0]), .Y(n5878) );
  NAND2X2 U4814 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n68), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(n6234) );
  INVX2 U4815 ( .A(median_sobel_inst_u_median_filter_submodule_n1219), .Y(
        n4084) );
  OR2X1 U4816 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(n5930) );
  INVX1 U4817 ( .A(median_sobel_inst_u_median_filter_submodule_n1309), .Y(
        n4459) );
  AND2X2 U4818 ( .A(cnt[8]), .B(n4790), .Y(n4142) );
  CLKINVX1 U4819 ( .A(median_sobel_inst_u_median_filter_submodule_n652), .Y(
        n7147) );
  NAND2X2 U4820 ( .A(cnt[1]), .B(n878), .Y(n7247) );
  OR2X1 U4821 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n5885) );
  OR2X1 U4822 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(n5893) );
  INVX1 U4823 ( .A(median_sobel_inst_u_median_filter_submodule_n962), .Y(n3979) );
  NAND2X4 U4824 ( .A(n3754), .B(n3747), .Y(n3746) );
  NOR2X4 U4825 ( .A(n3749), .B(n3748), .Y(n3747) );
  NAND2X2 U4826 ( .A(n3577), .B(n3565), .Y(n4193) );
  INVX3 U4827 ( .A(n6696), .Y(n6698) );
  INVX3 U4828 ( .A(n4409), .Y(n4406) );
  NAND2X6 U4829 ( .A(n3767), .B(n3766), .Y(n4768) );
  NAND2X4 U4830 ( .A(n3633), .B(n3630), .Y(n3629) );
  INVX3 U4831 ( .A(n3826), .Y(n3666) );
  INVX3 U4832 ( .A(n4780), .Y(n5535) );
  INVX3 U4833 ( .A(n4645), .Y(n4641) );
  NOR2X4 U4834 ( .A(n4777), .B(n3535), .Y(n5452) );
  NAND2X2 U4835 ( .A(n4121), .B(n4120), .Y(n3741) );
  NAND2X4 U4836 ( .A(n6857), .B(n6856), .Y(n4246) );
  INVX3 U4837 ( .A(n4691), .Y(n3953) );
  NOR2X4 U4838 ( .A(n3702), .B(n3701), .Y(conv_inst_N2490) );
  NOR2X4 U4839 ( .A(n3687), .B(n3700), .Y(conv_inst_N2520) );
  NAND4X4 U4840 ( .A(n5396), .B(n4336), .C(n3751), .D(n3750), .Y(n3749) );
  NAND2X2 U4841 ( .A(n5389), .B(median_sobel_inst_data_d_r[1]), .Y(n3630) );
  NOR2X2 U4842 ( .A(n7172), .B(n7171), .Y(n4173) );
  INVX3 U4843 ( .A(n6703), .Y(n3995) );
  INVX3 U4844 ( .A(n4702), .Y(n3729) );
  NAND2X4 U4845 ( .A(n4209), .B(median_sobel_inst_data_g_r[4]), .Y(n3720) );
  NAND2X2 U4846 ( .A(n4219), .B(n4218), .Y(n4217) );
  NOR2X4 U4847 ( .A(n3692), .B(n3691), .Y(conv_inst_N2500) );
  NAND2X2 U4848 ( .A(n3753), .B(n3752), .Y(n3751) );
  NOR2X2 U4849 ( .A(median_sobel_inst_data_a_r[2]), .B(n5295), .Y(n4640) );
  INVX3 U4850 ( .A(n5297), .Y(n3626) );
  INVX3 U4851 ( .A(median_sobel_inst_n701), .Y(n4023) );
  NAND2X6 U4852 ( .A(n5189), .B(n6473), .Y(n6272) );
  INVX4 U4853 ( .A(n5530), .Y(n4004) );
  NAND2X4 U4854 ( .A(n3580), .B(n4310), .Y(n4072) );
  INVX3 U4855 ( .A(median_sobel_inst_data_c_r[2]), .Y(n3771) );
  NOR2X4 U4856 ( .A(n4038), .B(n4037), .Y(conv_inst_N284) );
  CLKINVX1 U4857 ( .A(n5475), .Y(median_sobel_inst_data_b_r[0]) );
  INVX3 U4858 ( .A(median_sobel_inst_data_g_r[5]), .Y(n3719) );
  INVX3 U4859 ( .A(median_sobel_inst_data_g_r[5]), .Y(n4122) );
  NAND2X2 U4860 ( .A(median_sobel_inst_data_h_r[0]), .B(n3734), .Y(n4494) );
  INVX4 U4861 ( .A(n5574), .Y(n7164) );
  INVX4 U4862 ( .A(median_sobel_inst_data_e_r[2]), .Y(n5432) );
  NAND2X4 U4863 ( .A(n3534), .B(n3707), .Y(n6334) );
  NAND4X6 U4864 ( .A(n5444), .B(n5443), .C(n4564), .D(n5445), .Y(
        median_sobel_inst_data_c_r[3]) );
  INVX3 U4865 ( .A(n5531), .Y(n3784) );
  NAND2X2 U4866 ( .A(n4075), .B(n4074), .Y(n439) );
  NAND2X8 U4867 ( .A(n4528), .B(n3899), .Y(n4531) );
  INVX3 U4868 ( .A(n4096), .Y(n4095) );
  INVX3 U4869 ( .A(n5298), .Y(n5293) );
  INVX3 U4870 ( .A(n6078), .Y(n3994) );
  OAI22X1 U4871 ( .A0(conv_inst_n264), .A1(n6036), .B0(n5870), .B1(n7616), .Y(
        conv_inst_N211) );
  OAI22X1 U4872 ( .A0(conv_inst_n272), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n263), .Y(conv_inst_N209) );
  OAI22X1 U4873 ( .A0(conv_inst_n255), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n256), .Y(conv_inst_N1990) );
  NAND3X2 U4874 ( .A(n4389), .B(n6633), .C(n4386), .Y(n4385) );
  OAI22X1 U4875 ( .A0(conv_inst_n267), .A1(n6036), .B0(n5870), .B1(n5798), .Y(
        conv_inst_N214) );
  OAI22X1 U4876 ( .A0(conv_inst_n269), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n254), .Y(conv_inst_N217) );
  OAI22X1 U4877 ( .A0(conv_inst_n258), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n259), .Y(conv_inst_N202) );
  NAND2X2 U4878 ( .A(n5286), .B(n5287), .Y(n4001) );
  NAND4X4 U4879 ( .A(n5046), .B(n5045), .C(n5044), .D(n5043), .Y(
        median_sobel_inst_data_g_r[3]) );
  OAI22X1 U4880 ( .A0(conv_inst_n271), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n255), .Y(conv_inst_N1980) );
  NAND3X2 U4881 ( .A(n3660), .B(n5664), .C(n3659), .Y(n3658) );
  OAI22X1 U4882 ( .A0(conv_inst_n256), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n257), .Y(conv_inst_N2000) );
  OAI22X1 U4883 ( .A0(conv_inst_n270), .A1(n5870), .B0(n6036), .B1(n5798), .Y(
        conv_inst_N215) );
  NAND2X2 U4884 ( .A(n5883), .B(median_sobel_inst_n1035), .Y(n4032) );
  INVX3 U4885 ( .A(median_sobel_inst_data_g_r[4]), .Y(n3752) );
  CLKMX2X2 U4886 ( .A(median_sobel_inst_net87821), .B(n4543), .S0(n3789), .Y(
        median_sobel_inst_n534) );
  NAND2X2 U4887 ( .A(n4027), .B(n4012), .Y(n4011) );
  OAI22X1 U4888 ( .A0(conv_inst_n257), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n258), .Y(conv_inst_N201) );
  NAND2X4 U4889 ( .A(n5180), .B(n5181), .Y(n4234) );
  NAND3X2 U4890 ( .A(n7676), .B(n7010), .C(n4076), .Y(n4075) );
  OAI22X1 U4891 ( .A0(n6036), .A1(n5802), .B0(n5870), .B1(n5831), .Y(
        conv_inst_N205) );
  INVX3 U4892 ( .A(n6868), .Y(n5127) );
  OAI22X1 U4893 ( .A0(conv_inst_n260), .A1(n6036), .B0(n5870), .B1(n5802), .Y(
        conv_inst_N204) );
  NOR2X4 U4894 ( .A(n4098), .B(n4100), .Y(n4097) );
  NAND2X4 U4895 ( .A(n4928), .B(n4929), .Y(n4006) );
  OAI22X1 U4896 ( .A0(conv_inst_n259), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n260), .Y(conv_inst_N203) );
  OAI22X1 U4897 ( .A0(conv_inst_n270), .A1(n6036), .B0(n5870), .B1(
        conv_inst_n269), .Y(conv_inst_N216) );
  INVX6 U4898 ( .A(n4791), .Y(n6036) );
  CLKMX2X2 U4899 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[24]), .S0(n5868), .Y(median_sobel_inst_n500) );
  CLKMX2X2 U4900 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[30]), .S0(n5868), .Y(median_sobel_inst_n476) );
  INVX3 U4901 ( .A(n5053), .Y(n4706) );
  NOR2BX2 U4902 ( .AN(n7009), .B(n4077), .Y(n4076) );
  NAND2X2 U4903 ( .A(n3738), .B(n3736), .Y(n3735) );
  INVX4 U4904 ( .A(n4662), .Y(n4471) );
  CLKMX2X2 U4905 ( .A(median_sobel_inst_u_sober_compare_submodule_n255), .B(
        median_sobel_inst_angle[1]), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n95) );
  CLKMX2X2 U4906 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[22]), .S0(n5868), .Y(median_sobel_inst_n508) );
  NOR2X4 U4907 ( .A(n7187), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .Y(n7188) );
  NOR2X4 U4908 ( .A(n6802), .B(n4251), .Y(n4250) );
  NOR2X4 U4909 ( .A(n6575), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n456), .Y(n7181) );
  NAND2X6 U4910 ( .A(n3989), .B(n4099), .Y(n4098) );
  CLKMX2X2 U4911 ( .A(median_sobel_inst_n73), .B(input_data_ready_r[20]), .S0(
        n5883), .Y(median_sobel_inst_n531) );
  CLKMX2X2 U4912 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[41]), .S0(n5808), .Y(median_sobel_inst_n479) );
  CLKMX2X2 U4913 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[43]), .S0(n5808), .Y(median_sobel_inst_n471) );
  CLKMX2X2 U4914 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[33]), .S0(n5808), .Y(median_sobel_inst_n511) );
  CLKMX2X2 U4915 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[39]), .S0(n5808), .Y(median_sobel_inst_n487) );
  NOR2X4 U4916 ( .A(n4071), .B(n4070), .Y(n4069) );
  CLKMX2X2 U4917 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[40]), .S0(n5808), .Y(median_sobel_inst_n483) );
  CLKMX2X2 U4918 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[36]), .S0(n5808), .Y(median_sobel_inst_n499) );
  CLKMX2X2 U4919 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[37]), .S0(n5808), .Y(median_sobel_inst_n495) );
  CLKMX2X2 U4920 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[34]), .S0(n5808), .Y(median_sobel_inst_n507) );
  CLKMX2X2 U4921 ( .A(median_sobel_inst_G[30]), .B(
        median_sobel_inst_u_sober_compare_submodule_n20), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n115) );
  CLKMX2X2 U4922 ( .A(median_sobel_inst_G[29]), .B(
        median_sobel_inst_u_sober_compare_submodule_n19), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n114) );
  CLKMX2X2 U4923 ( .A(median_sobel_inst_angle[5]), .B(n7386), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n88) );
  AND2X4 U4924 ( .A(n5611), .B(n4175), .Y(n3804) );
  CLKMX2X2 U4925 ( .A(median_sobel_inst_G[31]), .B(
        median_sobel_inst_u_sober_compare_submodule_n302), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n116) );
  CLKMX2X2 U4926 ( .A(median_sobel_inst_angle[0]), .B(n7478), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n94) );
  NAND2X2 U4927 ( .A(n4167), .B(n4164), .Y(n4163) );
  AND2X4 U4928 ( .A(n5619), .B(n4154), .Y(n5624) );
  CLKMX2X2 U4929 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[0]), .S0(n5819), .Y(median_sobel_inst_n510) );
  CLKMX2X2 U4930 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[8]), .S0(n5819), .Y(median_sobel_inst_n478) );
  CLKMX2X2 U4931 ( .A(median_sobel_inst_sobel_data_w[9]), .B(
        median_sobel_inst_G[9]), .S0(n5819), .Y(median_sobel_inst_n474) );
  CLKMX2X2 U4932 ( .A(median_sobel_inst_sobel_data_w[9]), .B(
        median_sobel_inst_G[42]), .S0(n5808), .Y(median_sobel_inst_n475) );
  CLKMX2X2 U4933 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[10]), .S0(n5819), .Y(median_sobel_inst_n470) );
  AOI211X1 U4934 ( .A0(n7451), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n638), .B0(n6684), .C0(
        n6683), .Y(n6685) );
  CLKMX2X2 U4935 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[38]), .S0(n5808), .Y(median_sobel_inst_n491) );
  OAI222X1 U4936 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n956), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n875), .C0(n7155), .C1(
        median_sobel_inst_u_median_filter_submodule_n917), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[4]) );
  CLKMX2X2 U4937 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[14]), .S0(n5807), .Y(median_sobel_inst_n497) );
  NAND2X4 U4938 ( .A(n5554), .B(n5553), .Y(n3989) );
  OAI222X1 U4939 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n958), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n1517), .C0(n7155), .C1(
        median_sobel_inst_u_median_filter_submodule_n919), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[6]) );
  OAI222X1 U4940 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n882), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n910), .C0(n7155), .C1(
        median_sobel_inst_u_median_filter_submodule_n952), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[1]) );
  CLKMX2X2 U4941 ( .A(median_sobel_inst_G[18]), .B(
        median_sobel_inst_u_sober_compare_submodule_n300), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n125) );
  AND2X4 U4942 ( .A(n5132), .B(n6863), .Y(n4206) );
  INVX3 U4943 ( .A(n6754), .Y(n6251) );
  NOR2X2 U4944 ( .A(n5807), .B(median_sobel_inst_n125), .Y(n3760) );
  NAND2X1 U4945 ( .A(n6566), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n6565)
         );
  NAND2X1 U4946 ( .A(n4269), .B(n4267), .Y(n4266) );
  NOR2X4 U4947 ( .A(n6566), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n608), .Y(n6577) );
  NOR2X1 U4948 ( .A(n6557), .B(n4514), .Y(n6115) );
  NOR2X1 U4949 ( .A(n6544), .B(n6543), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N132) );
  NOR2X4 U4950 ( .A(n4061), .B(n6775), .Y(n5520) );
  NAND2BX1 U4951 ( .AN(o_out_valid), .B(n4139), .Y(n4194) );
  NAND3X2 U4952 ( .A(n4155), .B(n7472), .C(n5621), .Y(n4154) );
  NAND2X2 U4953 ( .A(n5627), .B(n4168), .Y(n4167) );
  INVX3 U4954 ( .A(n4803), .Y(n4244) );
  NAND2X1 U4955 ( .A(n6535), .B(n6865), .Y(n6536) );
  NOR2X2 U4956 ( .A(n6930), .B(conv_inst_n276), .Y(n4611) );
  NOR2X2 U4957 ( .A(n6930), .B(conv_inst_n10), .Y(n3846) );
  NOR2X4 U4958 ( .A(n4513), .B(conv_calc_done_r), .Y(n4128) );
  INVX3 U4959 ( .A(n4988), .Y(n3680) );
  INVX3 U4960 ( .A(n6015), .Y(n4107) );
  NAND2X1 U4961 ( .A(n6811), .B(n6810), .Y(n6812) );
  NAND3X2 U4962 ( .A(n4161), .B(n4162), .C(n5621), .Y(n4158) );
  INVX3 U4963 ( .A(n4967), .Y(n3674) );
  INVX4 U4964 ( .A(n4539), .Y(n6882) );
  OAI222X1 U4965 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n914), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n876), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n953), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[7]) );
  INVX1 U4966 ( .A(n6167), .Y(n6168) );
  OAI222X1 U4967 ( .A0(n7154), .A1(n7149), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n900), .C0(n5788), .C1(
        median_sobel_inst_u_median_filter_submodule_n945), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[2]) );
  NAND2X1 U4968 ( .A(n5716), .B(n5741), .Y(n5717) );
  NAND2X1 U4969 ( .A(n6025), .B(n6024), .Y(n6026) );
  OAI222X1 U4970 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n956), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n875), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n917), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[4]) );
  AND2X4 U4971 ( .A(n6310), .B(n5260), .Y(n5259) );
  NAND2X1 U4972 ( .A(n6401), .B(n6399), .Y(n5981) );
  INVX2 U4973 ( .A(n6073), .Y(n3928) );
  NAND2X1 U4974 ( .A(n6405), .B(n6404), .Y(n6406) );
  NAND2X1 U4975 ( .A(n6498), .B(n6496), .Y(n6365) );
  CLKINVX1 U4976 ( .A(n6179), .Y(n6183) );
  NAND2X1 U4977 ( .A(n6094), .B(n6093), .Y(n6095) );
  INVX1 U4978 ( .A(n6899), .Y(n4180) );
  NOR2X1 U4979 ( .A(n6452), .B(n6455), .Y(n6457) );
  OAI222X1 U4980 ( .A0(n5788), .A1(
        median_sobel_inst_u_median_filter_submodule_n886), .B0(n5789), .B1(
        median_sobel_inst_u_median_filter_submodule_n948), .C0(n7149), .C1(
        median_sobel_inst_u_median_filter_submodule_n911), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[0]) );
  INVX3 U4981 ( .A(n4943), .Y(n5314) );
  NAND2X2 U4982 ( .A(n5664), .B(n5665), .Y(n5656) );
  INVX3 U4983 ( .A(n6525), .Y(n5128) );
  AND2X2 U4984 ( .A(n6211), .B(n6210), .Y(n6068) );
  NAND2X1 U4985 ( .A(n6121), .B(n6120), .Y(n6122) );
  NAND2X1 U4986 ( .A(n6157), .B(n6156), .Y(n6159) );
  CLKINVX1 U4987 ( .A(n5353), .Y(n5352) );
  INVX6 U4988 ( .A(n4665), .Y(n5199) );
  NOR2X1 U4989 ( .A(n7223), .B(n2270), .Y(n4199) );
  AOI22X1 U4990 ( .A0(n7141), .A1(n3544), .B0(n4268), .B1(n3532), .Y(n4267) );
  INVX3 U4991 ( .A(n5192), .Y(n3910) );
  NAND2X1 U4992 ( .A(n6937), .B(conv_inst_conv_3_r[3]), .Y(n3851) );
  NAND2X1 U4993 ( .A(n7096), .B(n7537), .Y(n4269) );
  NAND2X1 U4994 ( .A(n6690), .B(n4621), .Y(n4620) );
  NOR2X1 U4995 ( .A(n6579), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n6580) );
  CLKINVX1 U4996 ( .A(n6198), .Y(n5966) );
  NAND2X1 U4997 ( .A(n6199), .B(n6197), .Y(n5965) );
  INVX3 U4998 ( .A(n6848), .Y(n5249) );
  CLKINVX1 U4999 ( .A(n6454), .Y(n3924) );
  INVX1 U5000 ( .A(n5702), .Y(n3825) );
  MXI2X1 U5001 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(n6544), .S0(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(
        n5875) );
  NAND2X4 U5002 ( .A(n5814), .B(n5812), .Y(n5813) );
  NAND2X1 U5003 ( .A(n4884), .B(n6821), .Y(n4885) );
  INVX3 U5004 ( .A(n4373), .Y(n6498) );
  INVX3 U5005 ( .A(median_sobel_inst_u_median_filter_submodule_n224), .Y(n7146) );
  INVX1 U5006 ( .A(n6067), .Y(n6211) );
  NOR2X1 U5007 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6544) );
  NOR2X2 U5008 ( .A(n6382), .B(median_sobel_inst_u_sobel_gradient_submodule_n8), .Y(n4254) );
  NAND2X1 U5009 ( .A(n7259), .B(n7245), .Y(n7246) );
  INVX1 U5010 ( .A(median_sobel_inst_u_median_filter_submodule_n896), .Y(n4435) );
  NOR2X4 U5011 ( .A(n7378), .B(cnt[0]), .Y(n7281) );
  INVX1 U5012 ( .A(median_sobel_inst_n116), .Y(n5853) );
  CLKINVX1 U5013 ( .A(n7445), .Y(n4058) );
  CLKINVX1 U5014 ( .A(median_sobel_inst_n159), .Y(n3774) );
  CLKINVX1 U5015 ( .A(median_sobel_inst_u_sober_compare_submodule_n295), .Y(
        n4392) );
  INVX1 U5016 ( .A(median_sobel_inst_u_sober_compare_submodule_n41), .Y(n3884)
         );
  INVX1 U5017 ( .A(median_sobel_inst_u_median_filter_submodule_n200), .Y(n4308) );
  INVX1 U5018 ( .A(median_sobel_inst_n125), .Y(n3737) );
  CLKINVX1 U5019 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), 
        .Y(n4182) );
  NAND2X1 U5020 ( .A(n7387), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n6760) );
  NAND2X1 U5021 ( .A(median_sobel_inst_u_median_filter_submodule_n814), .B(
        median_sobel_inst_u_median_filter_submodule_n1224), .Y(n5607) );
  INVX3 U5022 ( .A(median_sobel_inst_u_median_filter_submodule_n214), .Y(n7162) );
  INVX1 U5023 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), 
        .Y(n3895) );
  INVX1 U5024 ( .A(median_sobel_inst_u_median_filter_submodule_n182), .Y(n5150) );
  INVX1 U5025 ( .A(median_sobel_inst_u_median_filter_submodule_n1107), .Y(
        n5629) );
  INVX2 U5026 ( .A(median_sobel_inst_u_median_filter_submodule_n1216), .Y(
        n4179) );
  OR2X1 U5027 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n369), .Y(n5862) );
  CLKINVX1 U5028 ( .A(input_data_ready_r[23]), .Y(n3657) );
  NAND2X1 U5029 ( .A(median_sobel_inst_u_median_filter_submodule_n920), .B(
        median_sobel_inst_u_median_filter_submodule_n831), .Y(n4981) );
  BUFX8 U5030 ( .A(n4583), .Y(n4536) );
  NAND2X2 U5031 ( .A(n4784), .B(n4786), .Y(n4783) );
  NAND2X4 U5032 ( .A(n3591), .B(n3590), .Y(n3589) );
  NAND3X2 U5033 ( .A(n7349), .B(n7348), .C(n7347), .Y(sram_addr_wait_r[0]) );
  NAND2X6 U5034 ( .A(n3950), .B(n3947), .Y(n4690) );
  NOR3X4 U5035 ( .A(n4768), .B(n4767), .C(n4766), .Y(n4765) );
  NAND4X4 U5036 ( .A(n3730), .B(n3729), .C(n4868), .D(n3727), .Y(n3726) );
  NAND2X2 U5037 ( .A(n4413), .B(n4412), .Y(
        median_sobel_inst_u_median_filter_submodule_n1582) );
  NAND2X6 U5038 ( .A(n3587), .B(n3586), .Y(n3585) );
  NOR2X4 U5039 ( .A(n4769), .B(n4478), .Y(n4477) );
  NAND2X4 U5040 ( .A(n4021), .B(n4019), .Y(n4751) );
  NOR2X4 U5041 ( .A(n4770), .B(n4771), .Y(n4486) );
  CLKINVX3 U5042 ( .A(n4401), .Y(n4407) );
  NAND3X4 U5043 ( .A(n3740), .B(n5396), .C(n5395), .Y(n3739) );
  NAND2X6 U5044 ( .A(n3593), .B(n4221), .Y(n3587) );
  NAND2X4 U5045 ( .A(n3629), .B(n3625), .Y(n4213) );
  NAND2X2 U5046 ( .A(n4641), .B(n4640), .Y(n4639) );
  INVX3 U5047 ( .A(n4931), .Y(n4348) );
  NAND2X2 U5048 ( .A(n3577), .B(n4414), .Y(n4413) );
  NAND2X2 U5049 ( .A(n3943), .B(n3942), .Y(
        median_sobel_inst_u_median_filter_submodule_b5[7]) );
  NAND2X2 U5050 ( .A(n4717), .B(n4718), .Y(n4716) );
  NAND2X2 U5051 ( .A(n4774), .B(n4772), .Y(n4771) );
  INVX6 U5052 ( .A(n7172), .Y(n4411) );
  INVX3 U5053 ( .A(n5439), .Y(n4717) );
  NAND2X6 U5054 ( .A(n5661), .B(n3813), .Y(n5673) );
  NOR2X4 U5055 ( .A(n4779), .B(n4010), .Y(n4767) );
  NAND2X4 U5056 ( .A(n3637), .B(n5671), .Y(n3636) );
  NOR2X4 U5057 ( .A(conv_inst_ns_0_), .B(n3526), .Y(n6592) );
  INVX6 U5058 ( .A(n7169), .Y(n5729) );
  NAND2X2 U5059 ( .A(n3528), .B(n4708), .Y(n4707) );
  NAND3X2 U5060 ( .A(n4220), .B(n4710), .C(n4217), .Y(n4216) );
  NOR2X4 U5061 ( .A(n3860), .B(median_sobel_inst_data_i_r[6]), .Y(n3859) );
  NAND2X4 U5062 ( .A(n4495), .B(n4494), .Y(n4493) );
  NOR2X4 U5063 ( .A(n3720), .B(n3719), .Y(n3717) );
  INVX6 U5064 ( .A(n3601), .Y(n5436) );
  NAND2X4 U5065 ( .A(n3720), .B(n3719), .Y(n3718) );
  NOR2X4 U5066 ( .A(n4233), .B(n3771), .Y(n3770) );
  NAND2X4 U5067 ( .A(n5394), .B(median_sobel_inst_n759), .Y(n5396) );
  INVX3 U5068 ( .A(n7217), .Y(n5493) );
  NAND2X6 U5069 ( .A(n4627), .B(n6321), .Y(n6540) );
  NAND2X1 U5070 ( .A(n6474), .B(n6473), .Y(n6476) );
  AND2X4 U5071 ( .A(n4631), .B(n7358), .Y(conv_inst_N2670) );
  NAND2X6 U5072 ( .A(n3616), .B(n3615), .Y(n6980) );
  NOR3X4 U5073 ( .A(n4014), .B(median_sobel_inst_data_c_r[0]), .C(n5523), .Y(
        n4010) );
  NAND2X6 U5074 ( .A(n3916), .B(n3912), .Y(n6916) );
  NAND2X6 U5075 ( .A(n3955), .B(n5483), .Y(n3954) );
  INVX3 U5076 ( .A(median_sobel_inst_data_b_r[2]), .Y(n5431) );
  NAND4X4 U5077 ( .A(n4825), .B(n4824), .C(n4823), .D(n4822), .Y(
        median_sobel_inst_data_e_r[7]) );
  NOR2X1 U5078 ( .A(n7185), .B(n6471), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N142) );
  NAND2X6 U5079 ( .A(n5388), .B(median_sobel_inst_n981), .Y(n3633) );
  NAND2BX2 U5080 ( .AN(n3698), .B(n3704), .Y(n3703) );
  XNOR2X2 U5081 ( .A(n7184), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n322), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1060) );
  AND2X2 U5082 ( .A(n6250), .B(n7358), .Y(conv_inst_N2440) );
  INVX4 U5083 ( .A(n6330), .Y(n3829) );
  INVX1 U5084 ( .A(n6958), .Y(n6945) );
  NAND2X6 U5085 ( .A(n4909), .B(n4024), .Y(median_sobel_inst_n701) );
  XNOR2X2 U5086 ( .A(n5256), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]) );
  AND2X2 U5087 ( .A(n6446), .B(n7358), .Y(conv_inst_N2780) );
  NAND2X6 U5088 ( .A(n4650), .B(n4649), .Y(n4999) );
  NOR2X4 U5089 ( .A(n4342), .B(n4338), .Y(n4337) );
  NOR2X4 U5090 ( .A(n6470), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n7185) );
  NAND2X2 U5091 ( .A(n7356), .B(n3690), .Y(n3689) );
  CLKINVX1 U5092 ( .A(median_sobel_inst_data_g_r[3]), .Y(n4343) );
  AND2X2 U5093 ( .A(n6192), .B(n7358), .Y(conv_inst_N2410) );
  AND2X2 U5094 ( .A(n6320), .B(n7052), .Y(conv_inst_N227) );
  NAND2X6 U5095 ( .A(n5407), .B(n5406), .Y(median_sobel_inst_data_b_r[2]) );
  NAND2X6 U5096 ( .A(n6077), .B(n3994), .Y(n4049) );
  INVX3 U5097 ( .A(n4672), .Y(n4671) );
  OAI22X2 U5098 ( .A0(n7002), .A1(n4790), .B0(n4141), .B1(n4140), .Y(n3507) );
  NAND3X4 U5099 ( .A(n3821), .B(n3820), .C(n3819), .Y(n5223) );
  AND2X2 U5100 ( .A(n6422), .B(n7358), .Y(conv_inst_N261) );
  AND3X6 U5101 ( .A(n5405), .B(n5404), .C(n5403), .Y(n5407) );
  NAND2X6 U5102 ( .A(n5362), .B(n7593), .Y(n6588) );
  NOR2X1 U5103 ( .A(n6036), .B(conv_inst_n254), .Y(conv_inst_N218) );
  AND2X2 U5104 ( .A(n5865), .B(n6078), .Y(n7400) );
  NAND3X6 U5105 ( .A(n4705), .B(n4874), .C(n4704), .Y(n4215) );
  NAND2X6 U5106 ( .A(n4395), .B(n4393), .Y(n6763) );
  AND2X2 U5107 ( .A(n6408), .B(n7358), .Y(conv_inst_N224) );
  AND2X2 U5108 ( .A(n6066), .B(n7358), .Y(conv_inst_N2570) );
  CLKMX2X2 U5109 ( .A(median_sobel_inst_n1008), .B(n5978), .S0(n3788), .Y(
        median_sobel_inst_n543) );
  AND2X2 U5110 ( .A(n5946), .B(n7358), .Y(conv_inst_N2400) );
  NOR2X4 U5111 ( .A(n5508), .B(n3699), .Y(n5509) );
  AND2X2 U5112 ( .A(n7181), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N79), .Y(n7183) );
  AND2X2 U5113 ( .A(n6209), .B(n7358), .Y(conv_inst_N2740) );
  NAND2X6 U5114 ( .A(n4252), .B(n4250), .Y(n3796) );
  CLKMX2X2 U5115 ( .A(median_sobel_inst_n62), .B(n6356), .S0(n3788), .Y(
        median_sobel_inst_n535) );
  AND2X2 U5116 ( .A(n5728), .B(n7052), .Y(conv_inst_N226) );
  NOR2X2 U5117 ( .A(n3699), .B(conv_inst_n20), .Y(n7036) );
  NOR2X2 U5118 ( .A(n5103), .B(n6515), .Y(N745) );
  AND3X4 U5119 ( .A(n4907), .B(n4908), .C(n4910), .Y(n4024) );
  XNOR2X2 U5120 ( .A(n4258), .B(n6843), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]) );
  AND2X2 U5121 ( .A(n5992), .B(n7358), .Y(conv_inst_N2560) );
  NAND2X4 U5122 ( .A(n4290), .B(n4287), .Y(n6898) );
  AND2X2 U5123 ( .A(n6316), .B(n7052), .Y(conv_inst_N225) );
  NOR2X1 U5124 ( .A(n6036), .B(conv_inst_n253), .Y(conv_inst_N207) );
  NAND3X4 U5125 ( .A(n5269), .B(n5271), .C(n4065), .Y(n4064) );
  NAND2X4 U5126 ( .A(n6217), .B(n3556), .Y(n4210) );
  NAND2X4 U5127 ( .A(n5185), .B(n4009), .Y(n4008) );
  NAND2X6 U5128 ( .A(n4244), .B(n4243), .Y(n6868) );
  AND2X4 U5129 ( .A(n4809), .B(n4327), .Y(n3873) );
  INVX6 U5130 ( .A(n4662), .Y(n4661) );
  INVX3 U5131 ( .A(n6353), .Y(n3927) );
  NAND4X4 U5132 ( .A(n4548), .B(n4736), .C(n4735), .D(n4569), .Y(
        median_sobel_inst_n773) );
  NAND2X2 U5133 ( .A(n6632), .B(n7402), .Y(n6633) );
  MXI2X1 U5134 ( .A(median_sobel_inst_n255), .B(n6572), .S0(n5848), .Y(
        median_sobel_inst_n1268) );
  AND2X2 U5135 ( .A(n6086), .B(n6475), .Y(conv_inst_data_bcd_w[1]) );
  AND2X2 U5136 ( .A(n5944), .B(n7358), .Y(conv_inst_N2390) );
  AND2X2 U5137 ( .A(n5963), .B(n7358), .Y(conv_inst_N273) );
  AND2X2 U5138 ( .A(n5982), .B(n7052), .Y(conv_inst_N223) );
  NAND2X6 U5139 ( .A(n5864), .B(n5978), .Y(n6078) );
  NOR2X1 U5140 ( .A(n5861), .B(conv_inst_n253), .Y(conv_inst_N134) );
  NAND2X6 U5141 ( .A(n4638), .B(n4635), .Y(n6828) );
  NOR2X1 U5142 ( .A(n5861), .B(conv_inst_n254), .Y(conv_inst_N145) );
  XNOR2X2 U5143 ( .A(n6282), .B(n4381), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]) );
  NAND2X2 U5144 ( .A(n4447), .B(n4445), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[4]) );
  NAND2X6 U5145 ( .A(n4616), .B(n5148), .Y(n5173) );
  BUFX16 U5146 ( .A(n5414), .Y(n5886) );
  AND2X2 U5147 ( .A(n6246), .B(n7358), .Y(conv_inst_N221) );
  CLKMX2X2 U5148 ( .A(median_sobel_inst_G[26]), .B(
        median_sobel_inst_u_sober_compare_submodule_n201), .S0(n5840), .Y(
        median_sobel_inst_u_sober_compare_submodule_n111) );
  CLKMX2X2 U5149 ( .A(median_sobel_inst_G[25]), .B(
        median_sobel_inst_u_sober_compare_submodule_n297), .S0(n4329), .Y(
        median_sobel_inst_u_sober_compare_submodule_n110) );
  NOR2X1 U5150 ( .A(n5870), .B(conv_inst_n272), .Y(conv_inst_N208) );
  INVX6 U5151 ( .A(n6846), .Y(n6835) );
  AND2X2 U5152 ( .A(n6142), .B(n7358), .Y(conv_inst_N2540) );
  OAI222X1 U5153 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n886), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n948), .C0(n7155), .C1(
        median_sobel_inst_u_median_filter_submodule_n911), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[0]) );
  AND2X2 U5154 ( .A(n6160), .B(n7358), .Y(conv_inst_N220) );
  CLKMX2X2 U5155 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[1]), .S0(n5840), .Y(median_sobel_inst_n506) );
  CLKMX2X2 U5156 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[3]), .S0(n4329), .Y(median_sobel_inst_n498) );
  NOR2X4 U5157 ( .A(n5807), .B(n3774), .Y(n3773) );
  AND2X2 U5158 ( .A(n6137), .B(n7358), .Y(conv_inst_N2720) );
  CLKMX2X2 U5159 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[5]), .S0(n4329), .Y(median_sobel_inst_n490) );
  CLKMX2X2 U5160 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[6]), .S0(n5840), .Y(median_sobel_inst_n486) );
  CLKMX2X2 U5161 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[7]), .S0(n5840), .Y(median_sobel_inst_n482) );
  OAI222X1 U5162 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n913), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n887), .C0(n7155), .C1(
        median_sobel_inst_u_median_filter_submodule_n950), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[3]) );
  AND2X2 U5163 ( .A(n6148), .B(n7358), .Y(conv_inst_N2710) );
  AOI211X1 U5164 ( .A0(n7096), .A1(n7546), .B0(n6060), .C0(n6059), .Y(n6061)
         );
  OAI2BB1X2 U5165 ( .A0N(n4202), .A1N(n4200), .B0(n7230), .Y(n7209) );
  NAND2X4 U5166 ( .A(n4804), .B(n6006), .Y(n4243) );
  NOR3X1 U5167 ( .A(n7007), .B(n5310), .C(n5315), .Y(N820) );
  CLKMX2X2 U5168 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[13]), .S0(n5806), .Y(median_sobel_inst_n501) );
  NAND2X1 U5169 ( .A(n4078), .B(n7008), .Y(n4077) );
  OAI211X1 U5170 ( .A0(n4505), .A1(n6631), .B0(n6630), .C0(
        median_sobel_inst_u_sober_compare_submodule_n261), .Y(n6632) );
  NOR2X1 U5171 ( .A(n5870), .B(conv_inst_n271), .Y(conv_inst_N197) );
  AOI21X1 U5172 ( .A0(n7093), .A1(n7404), .B0(n3642), .Y(n3641) );
  CLKMX2X2 U5173 ( .A(median_sobel_inst_G[34]), .B(
        median_sobel_inst_u_sober_compare_submodule_n21), .S0(n4329), .Y(
        median_sobel_inst_u_sober_compare_submodule_n97) );
  OAI222X1 U5174 ( .A0(n7157), .A1(
        median_sobel_inst_u_median_filter_submodule_n914), .B0(n7156), .B1(
        median_sobel_inst_u_median_filter_submodule_n876), .C0(n7155), .C1(
        median_sobel_inst_u_median_filter_submodule_n953), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[7]) );
  CLKMX2X2 U5175 ( .A(median_sobel_inst_G[1]), .B(
        median_sobel_inst_u_sober_compare_submodule_n278), .S0(n4329), .Y(
        median_sobel_inst_u_sober_compare_submodule_n130) );
  INVX6 U5176 ( .A(n4131), .Y(n4087) );
  NAND2X2 U5177 ( .A(n6712), .B(n6731), .Y(n4081) );
  INVX1 U5178 ( .A(n6258), .Y(n6259) );
  AND2X2 U5179 ( .A(n6131), .B(n7358), .Y(conv_inst_N2360) );
  NAND2X1 U5180 ( .A(n6431), .B(n7538), .Y(n3600) );
  NAND2X1 U5181 ( .A(n6007), .B(n6222), .Y(n6008) );
  NAND2X1 U5182 ( .A(n5304), .B(n5382), .Y(n5305) );
  INVX1 U5183 ( .A(n7042), .Y(n4679) );
  NOR2X1 U5184 ( .A(n5833), .B(n5836), .Y(n5839) );
  AND2X2 U5185 ( .A(n6011), .B(n7052), .Y(conv_inst_N2700) );
  INVX1 U5186 ( .A(n5898), .Y(conv_inst_N32) );
  NAND2X1 U5187 ( .A(n6547), .B(n6546), .Y(n6548) );
  NAND2X2 U5188 ( .A(n5666), .B(n5665), .Y(n3659) );
  NAND2X6 U5189 ( .A(n5647), .B(n3624), .Y(n3623) );
  CLKINVX1 U5190 ( .A(n6830), .Y(n6839) );
  NAND2X1 U5191 ( .A(n5984), .B(n6041), .Y(n5985) );
  NOR2X1 U5192 ( .A(n7019), .B(n7021), .Y(n7024) );
  NAND2X6 U5193 ( .A(n3669), .B(n3668), .Y(n3677) );
  NAND2X6 U5194 ( .A(n5258), .B(n5257), .Y(n6402) );
  INVX3 U5195 ( .A(n4987), .Y(n3670) );
  AND2X2 U5196 ( .A(n6127), .B(n7358), .Y(conv_inst_N219) );
  INVX1 U5197 ( .A(n7013), .Y(n7015) );
  CLKMX2X2 U5198 ( .A(median_sobel_inst_angle[1]), .B(
        median_sobel_inst_angle_w[1]), .S0(n5785), .Y(median_sobel_inst_n514)
         );
  AOI211X2 U5199 ( .A0(n6643), .A1(n7496), .B0(n6642), .C0(n6641), .Y(n6663)
         );
  NAND2X1 U5200 ( .A(n6055), .B(n6054), .Y(n6056) );
  NAND2X1 U5201 ( .A(n6169), .B(n6167), .Y(n6097) );
  CLKINVX1 U5202 ( .A(n6858), .Y(n6859) );
  NAND2X1 U5203 ( .A(n5725), .B(n5724), .Y(n5726) );
  NOR2X1 U5204 ( .A(n2267), .B(n7236), .Y(n7140) );
  NAND2X1 U5205 ( .A(n6243), .B(n6242), .Y(n6244) );
  NAND2X1 U5206 ( .A(n6728), .B(n6727), .Y(n6729) );
  NAND2X1 U5207 ( .A(n6781), .B(n6780), .Y(n6782) );
  NAND2X1 U5208 ( .A(n5273), .B(n6343), .Y(n5274) );
  NAND2X1 U5209 ( .A(n6532), .B(n6531), .Y(n6533) );
  INVX1 U5210 ( .A(n6223), .Y(n6007) );
  INVX1 U5211 ( .A(n5950), .Y(n6245) );
  NAND2X1 U5212 ( .A(n6176), .B(n6175), .Y(n6177) );
  AND2X2 U5213 ( .A(n6877), .B(n6885), .Y(n4535) );
  NOR2X1 U5214 ( .A(conv_inst_n271), .B(n6087), .Y(conv_inst_N124) );
  NAND2X1 U5215 ( .A(n6050), .B(n6049), .Y(n6051) );
  INVX1 U5216 ( .A(n6126), .Y(n6127) );
  NAND2X1 U5217 ( .A(n6004), .B(n6233), .Y(n6005) );
  AND2X2 U5218 ( .A(n5878), .B(n5877), .Y(n7613) );
  NAND2X1 U5219 ( .A(n6766), .B(n6765), .Y(n6767) );
  NAND2X1 U5220 ( .A(n6815), .B(n4941), .Y(n4942) );
  NAND2X1 U5221 ( .A(n5755), .B(n5754), .Y(n5756) );
  AND2X2 U5222 ( .A(n6424), .B(n6423), .Y(n6108) );
  NAND2X1 U5223 ( .A(n6789), .B(n6788), .Y(n6784) );
  NAND2X1 U5224 ( .A(n6529), .B(n6527), .Y(n6355) );
  INVX1 U5225 ( .A(n5921), .Y(n5923) );
  NOR2X1 U5226 ( .A(n6550), .B(n6549), .Y(n6552) );
  INVX1 U5227 ( .A(n7236), .Y(n7093) );
  CLKINVX1 U5228 ( .A(n6875), .Y(n3798) );
  NAND2X1 U5229 ( .A(n6016), .B(n6293), .Y(n6017) );
  NAND2X1 U5230 ( .A(n6313), .B(n6312), .Y(n6314) );
  NOR2X2 U5231 ( .A(n5549), .B(n5548), .Y(n5550) );
  INVX1 U5232 ( .A(n6130), .Y(n6131) );
  NAND2X1 U5233 ( .A(n6181), .B(n6180), .Y(n6182) );
  NAND2X1 U5234 ( .A(n6428), .B(n6427), .Y(n6429) );
  NAND2X1 U5235 ( .A(n6140), .B(n6139), .Y(n6141) );
  INVX1 U5236 ( .A(n5301), .Y(n5984) );
  NAND2X1 U5237 ( .A(n6769), .B(n6774), .Y(n6770) );
  CLKINVX1 U5238 ( .A(n5383), .Y(n4181) );
  NAND2X1 U5239 ( .A(n6757), .B(n6756), .Y(n6758) );
  INVX1 U5240 ( .A(n6866), .Y(n4239) );
  NAND2X1 U5241 ( .A(n6301), .B(n6300), .Y(n6302) );
  NOR2X1 U5242 ( .A(conv_inst_n272), .B(n6087), .Y(conv_inst_N135) );
  NAND2X1 U5243 ( .A(n6206), .B(n6205), .Y(n6207) );
  NAND2X1 U5244 ( .A(n6523), .B(n5129), .Y(n4805) );
  INVX1 U5245 ( .A(n6010), .Y(n6011) );
  INVX1 U5246 ( .A(n6021), .Y(n5948) );
  NAND2X1 U5247 ( .A(n6379), .B(n6378), .Y(n6381) );
  NAND2X1 U5248 ( .A(n5769), .B(n5768), .Y(n5770) );
  NAND2X1 U5249 ( .A(n5918), .B(n5917), .Y(n5919) );
  NAND3X6 U5250 ( .A(n7153), .B(n7155), .C(n7152), .Y(n7156) );
  INVX1 U5251 ( .A(n6266), .Y(n5899) );
  AOI21X1 U5252 ( .A0(n7232), .A1(
        median_sobel_inst_u_sober_compare_submodule_n321), .B0(n6634), .Y(
        n6635) );
  NAND2X1 U5253 ( .A(n6100), .B(n6099), .Y(n6102) );
  NAND2X1 U5254 ( .A(n6253), .B(n6749), .Y(n6254) );
  NAND2X1 U5255 ( .A(n6151), .B(n6150), .Y(n6152) );
  NAND2X1 U5256 ( .A(n6895), .B(n6894), .Y(n6896) );
  NAND2X1 U5257 ( .A(n5906), .B(n5905), .Y(n5907) );
  NOR2X1 U5258 ( .A(n2271), .B(n7236), .Y(n7136) );
  INVX1 U5259 ( .A(n6690), .Y(n4622) );
  NOR2X1 U5260 ( .A(n2264), .B(n7236), .Y(n6014) );
  NAND2X1 U5261 ( .A(n6189), .B(n6188), .Y(n6190) );
  NAND2X1 U5262 ( .A(n6374), .B(n6373), .Y(n6375) );
  NAND2X1 U5263 ( .A(n5989), .B(n5988), .Y(n5990) );
  NAND2X1 U5264 ( .A(n6214), .B(n6213), .Y(n6215) );
  NOR2X1 U5265 ( .A(n2265), .B(n7236), .Y(n6060) );
  OAI2BB1X2 U5266 ( .A0N(n5615), .A1N(n4177), .B0(n5616), .Y(n4176) );
  CLKINVX1 U5267 ( .A(n7189), .Y(n4261) );
  OAI2BB1X1 U5268 ( .A0N(n6179), .A1N(n6181), .B0(n6180), .Y(n6075) );
  NAND2X1 U5269 ( .A(n6734), .B(n6733), .Y(n6735) );
  NAND2X1 U5270 ( .A(n7083), .B(n7081), .Y(n6421) );
  INVX1 U5271 ( .A(n6773), .Y(n6776) );
  NAND2X1 U5272 ( .A(n6110), .B(n6109), .Y(n6112) );
  NAND2X1 U5273 ( .A(n6350), .B(n6349), .Y(n6351) );
  NAND2X1 U5274 ( .A(n5594), .B(n5593), .Y(n5138) );
  AND2X2 U5275 ( .A(n5775), .B(n5928), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N36) );
  INVX3 U5276 ( .A(n6414), .Y(n5136) );
  INVX1 U5277 ( .A(n5980), .Y(n6401) );
  INVX1 U5278 ( .A(n6880), .Y(n6881) );
  INVX1 U5279 ( .A(n6496), .Y(n6497) );
  INVX1 U5280 ( .A(n6372), .Y(n6374) );
  INVX1 U5281 ( .A(n6200), .Y(n6202) );
  NAND2X1 U5282 ( .A(n5914), .B(n6285), .Y(n5915) );
  AND2X2 U5283 ( .A(n5685), .B(n6039), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N6) );
  INVX1 U5284 ( .A(n6236), .Y(n6371) );
  INVX1 U5285 ( .A(n6708), .Y(n6742) );
  INVX1 U5286 ( .A(n6455), .Y(n5521) );
  INVX1 U5287 ( .A(n5987), .Y(n5989) );
  INVX1 U5288 ( .A(n6876), .Y(n5513) );
  INVX1 U5289 ( .A(n5723), .Y(n5725) );
  NAND2X1 U5290 ( .A(n6236), .B(n6369), .Y(n6237) );
  INVX1 U5291 ( .A(n6760), .Y(n6761) );
  INVX1 U5292 ( .A(n5703), .Y(n5705) );
  INVX1 U5293 ( .A(n6377), .Y(n6379) );
  INVX1 U5294 ( .A(n6080), .Y(n6194) );
  NAND2X1 U5295 ( .A(n6785), .B(n6797), .Y(n6786) );
  AND2X2 U5296 ( .A(n5862), .B(n6164), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]) );
  INVX1 U5297 ( .A(n6174), .Y(n6176) );
  INVX1 U5298 ( .A(n6354), .Y(n6529) );
  NAND2X1 U5299 ( .A(median_sobel_inst_u_median_filter_submodule_n822), .B(
        median_sobel_inst_u_median_filter_submodule_n1080), .Y(n4162) );
  NAND2X1 U5300 ( .A(n6239), .B(n6410), .Y(n6240) );
  AND2X2 U5301 ( .A(n5893), .B(n5924), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]) );
  INVX1 U5302 ( .A(n6344), .Y(n5273) );
  INVX1 U5303 ( .A(n6241), .Y(n6243) );
  INVX1 U5304 ( .A(n5276), .Y(n6275) );
  INVX3 U5305 ( .A(n4963), .Y(n3668) );
  INVX1 U5306 ( .A(n6023), .Y(n6025) );
  INVX1 U5307 ( .A(n6205), .Y(n5732) );
  AND2X2 U5308 ( .A(n6856), .B(n6853), .Y(n5135) );
  INVX1 U5309 ( .A(n5916), .Y(n5918) );
  INVX1 U5310 ( .A(n5731), .Y(n6206) );
  INVX1 U5311 ( .A(n6836), .Y(n6845) );
  INVX1 U5312 ( .A(n5733), .Y(n5735) );
  NOR2X1 U5313 ( .A(n6798), .B(n6797), .Y(n6801) );
  INVX1 U5314 ( .A(n5964), .Y(n6199) );
  INVX1 U5315 ( .A(n6852), .Y(n5133) );
  INVX1 U5316 ( .A(n6799), .Y(n6800) );
  NOR2X1 U5317 ( .A(input_data_ready_r[24]), .B(n5978), .Y(n5897) );
  AND2X2 U5318 ( .A(n5930), .B(n6101), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]) );
  INVX1 U5319 ( .A(n5742), .Y(n5716) );
  NAND2X1 U5320 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n58), .B(
        n7190), .Y(n7189) );
  INVX1 U5321 ( .A(n4262), .Y(n4260) );
  CLKINVX1 U5322 ( .A(n4516), .Y(n6627) );
  INVX1 U5323 ( .A(n7085), .Y(n7087) );
  NAND2X1 U5324 ( .A(n6833), .B(n6832), .Y(n6834) );
  INVX1 U5325 ( .A(n7081), .Y(n7082) );
  INVX1 U5326 ( .A(n6098), .Y(n6100) );
  INVX1 U5327 ( .A(n6143), .Y(n6145) );
  INVX1 U5328 ( .A(n5367), .Y(n5369) );
  INVX1 U5329 ( .A(n6889), .Y(n6890) );
  INVX1 U5330 ( .A(n7259), .Y(n7260) );
  INVX1 U5331 ( .A(n5709), .Y(n5711) );
  NAND2X1 U5332 ( .A(n6792), .B(n6791), .Y(n6793) );
  NAND2X1 U5333 ( .A(n6488), .B(n6487), .Y(n6489) );
  INVX1 U5334 ( .A(n6420), .Y(n7083) );
  NAND2X1 U5335 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .B(n6564), .Y(n4801) );
  INVX1 U5336 ( .A(n6443), .Y(n5766) );
  INVX1 U5337 ( .A(n5746), .Y(n5748) );
  INVX1 U5338 ( .A(n5958), .Y(n5960) );
  NAND2X1 U5339 ( .A(conv_inst_n25), .B(n7503), .Y(n5097) );
  NAND2X1 U5340 ( .A(n4956), .B(n6799), .Y(n4957) );
  AND2X6 U5341 ( .A(n7673), .B(x_origin_r_1_), .Y(n7096) );
  NOR2X1 U5342 ( .A(n7222), .B(n1870), .Y(n4195) );
  INVX1 U5343 ( .A(n6750), .Y(n6253) );
  INVX1 U5344 ( .A(n6138), .Y(n6140) );
  INVX1 U5345 ( .A(n5951), .Y(n5953) );
  NOR2X6 U5346 ( .A(n5723), .B(n6311), .Y(n5260) );
  INVX1 U5347 ( .A(n6107), .Y(n6424) );
  INVX1 U5348 ( .A(n6149), .Y(n6151) );
  NAND2X1 U5349 ( .A(n6082), .B(n6081), .Y(n6083) );
  INVX1 U5350 ( .A(n6043), .Y(n6045) );
  NOR2X1 U5351 ( .A(n4509), .B(conv_inst_data_abc_3_r[0]), .Y(n6257) );
  INVX1 U5352 ( .A(n5904), .Y(n5906) );
  INVX1 U5353 ( .A(n5381), .Y(n6900) );
  INVX1 U5354 ( .A(n6426), .Y(n6428) );
  INVX1 U5355 ( .A(n6732), .Y(n6734) );
  NOR2X4 U5356 ( .A(n6755), .B(n6750), .Y(n4396) );
  INVX1 U5357 ( .A(n6155), .Y(n6157) );
  INVX1 U5358 ( .A(n6755), .Y(n6757) );
  NAND2X1 U5359 ( .A(n6906), .B(n6905), .Y(n6907) );
  INVX1 U5360 ( .A(n6527), .Y(n6528) );
  INVX1 U5361 ( .A(n6865), .Y(n4238) );
  INVX1 U5362 ( .A(n6530), .Y(n6532) );
  NAND2X1 U5363 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p6_r[3]), .Y(n6413) );
  NAND2X2 U5364 ( .A(conv_inst_conv_1_r[7]), .B(conv_inst_data_abc_1_r[7]), 
        .Y(n5724) );
  NAND2X1 U5365 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n359), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n6894) );
  NOR2X6 U5366 ( .A(conv_inst_conv_1_r[7]), .B(conv_inst_data_abc_1_r[7]), .Y(
        n5723) );
  NOR2X1 U5367 ( .A(conv_inst_conv_1_r[0]), .B(conv_inst_data_abc_1_r[0]), .Y(
        n6125) );
  OR2X4 U5368 ( .A(n4797), .B(
        median_sobel_inst_u_median_filter_submodule_net86856), .Y(n4099) );
  INVX1 U5369 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), 
        .Y(n4051) );
  NAND2X1 U5370 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .Y(n6852)
         );
  NAND2X1 U5371 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .Y(n5593) );
  NAND2X1 U5372 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .Y(n6855)
         );
  INVX1 U5373 ( .A(median_sobel_inst_u_median_filter_submodule_n1212), .Y(
        n7158) );
  INVX1 U5374 ( .A(median_sobel_inst_n1068), .Y(n6337) );
  INVX1 U5375 ( .A(median_sobel_inst_u_median_filter_submodule_n906), .Y(n4441) );
  NOR2X1 U5376 ( .A(conv_inst_conv_4_r[0]), .B(conv_inst_data_bcd_4_r[0]), .Y(
        n6009) );
  CLKINVX1 U5377 ( .A(median_sobel_inst_n45), .Y(n4369) );
  CLKINVX1 U5378 ( .A(median_sobel_inst_n52), .Y(n4345) );
  INVX1 U5379 ( .A(median_sobel_inst_n1056), .Y(n3793) );
  INVX1 U5380 ( .A(median_sobel_inst_u_median_filter_submodule_n947), .Y(n4428) );
  INVX3 U5381 ( .A(net34858), .Y(n5321) );
  NAND2X1 U5382 ( .A(n7454), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n6765) );
  INVX1 U5383 ( .A(median_sobel_inst_u_median_filter_submodule_net86856), .Y(
        n5730) );
  INVX1 U5384 ( .A(median_sobel_inst_u_median_filter_submodule_n776), .Y(n4460) );
  INVX1 U5385 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n64), .Y(n4604) );
  INVX3 U5386 ( .A(median_sobel_inst_n142), .Y(n5856) );
  INVX1 U5387 ( .A(median_sobel_inst_n164), .Y(n5850) );
  INVX1 U5388 ( .A(median_sobel_inst_n144), .Y(n4752) );
  NOR2X1 U5389 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n65), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n24), .Y(n6574) );
  INVX1 U5390 ( .A(median_sobel_inst_u_median_filter_submodule_n918), .Y(n4432) );
  INVX1 U5391 ( .A(median_sobel_inst_u_median_filter_submodule_n959), .Y(n4430) );
  NAND2X1 U5392 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .Y(n6905) );
  INVX1 U5393 ( .A(median_sobel_inst_u_median_filter_submodule_n829), .Y(n5636) );
  INVX1 U5394 ( .A(median_sobel_inst_n1035), .Y(n5855) );
  INVX1 U5395 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n60), .Y(n7366) );
  INVX1 U5396 ( .A(median_sobel_inst_n159), .Y(n5851) );
  INVX1 U5397 ( .A(conv_inst_conv_2_r[15]), .Y(n6469) );
  NAND2X2 U5398 ( .A(conv_inst_n182), .B(conv_inst_conv_3_r[3]), .Y(n5988) );
  OR2X1 U5399 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n59), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(n5685) );
  INVX1 U5400 ( .A(median_sobel_inst_net87821), .Y(n3791) );
  INVX1 U5401 ( .A(median_sobel_inst_u_median_filter_submodule_n168), .Y(n4184) );
  INVX1 U5402 ( .A(median_sobel_inst_u_median_filter_submodule_n1107), .Y(
        n4187) );
  CLKINVX1 U5403 ( .A(conv_inst_n40), .Y(n3695) );
  INVX2 U5404 ( .A(median_sobel_inst_u_median_filter_submodule_n1138), .Y(
        n4156) );
  NOR2X1 U5405 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n31), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n360), .Y(n6691) );
  OR2X1 U5406 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n369), .Y(n5891) );
  NAND2BX2 U5407 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_5_), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n6531)
         );
  NAND2X1 U5408 ( .A(i_op_valid), .B(i_op_mode[3]), .Y(n5804) );
  INVX1 U5409 ( .A(i_op_valid), .Y(n5791) );
  NAND2X1 U5410 ( .A(i_op_valid), .B(i_op_mode[0]), .Y(n5803) );
  NAND2BX4 U5411 ( .AN(n5633), .B(n3806), .Y(n3580) );
  AND3X8 U5412 ( .A(n5625), .B(n5623), .C(n5624), .Y(n3806) );
  NAND3X6 U5413 ( .A(n4370), .B(n3583), .C(n3582), .Y(
        median_sobel_inst_data_a_r[2]) );
  NAND3X6 U5414 ( .A(n6431), .B(cnt[5]), .C(cnt[4]), .Y(n6993) );
  NOR2X8 U5415 ( .A(n6283), .B(n7238), .Y(n6431) );
  NOR2BX4 U5416 ( .AN(n3539), .B(n4703), .Y(n3584) );
  NAND2BX4 U5417 ( .AN(n4224), .B(n4214), .Y(n3588) );
  NAND2X4 U5418 ( .A(n3592), .B(n3589), .Y(
        median_sobel_inst_u_median_filter_submodule_a14_w) );
  AOI21X4 U5419 ( .A0(n5300), .A1(n7622), .B0(n4216), .Y(n3590) );
  NAND3X4 U5420 ( .A(n4213), .B(n4639), .C(n3555), .Y(n3591) );
  NAND3X6 U5421 ( .A(n4222), .B(n3595), .C(n3594), .Y(n3593) );
  OAI21X4 U5422 ( .A0(n4224), .A1(n4223), .B0(n4712), .Y(n3594) );
  NAND2X2 U5423 ( .A(n4224), .B(n4223), .Y(n3595) );
  AND2X8 U5424 ( .A(median_sobel_inst_u_sober_compare_submodule_n44), .B(n3533), .Y(n3596) );
  NOR2X4 U5425 ( .A(conv_inst_data_abc_1_r[9]), .B(conv_inst_n168), .Y(n5753)
         );
  NOR2X1 U5426 ( .A(cnt[5]), .B(cnt[4]), .Y(n3598) );
  NAND2X1 U5427 ( .A(n3600), .B(cnt[4]), .Y(n3599) );
  OAI21X4 U5428 ( .A0(n5482), .A1(median_sobel_inst_data_h_r[4]), .B0(n3603), 
        .Y(n3955) );
  OAI22X4 U5429 ( .A0(n5482), .A1(n5484), .B0(n4691), .B1(n3603), .Y(n4689) );
  INVX4 U5430 ( .A(median_sobel_inst_data_b_r[5]), .Y(n3603) );
  BUFX16 U5431 ( .A(median_sobel_inst_data_h_r[1]), .Y(n3604) );
  OAI2BB2X4 U5432 ( .B0(n3607), .B1(n3605), .A0N(median_sobel_inst_data_h_r[2]), .A1N(n5479), .Y(n4734) );
  CLKINVX1 U5433 ( .A(median_sobel_inst_data_b_r[2]), .Y(n3606) );
  AOI22X4 U5434 ( .A0(n5476), .A1(n3608), .B0(n5478), .B1(n3604), .Y(n3607) );
  INVX3 U5435 ( .A(n3609), .Y(n3608) );
  NOR2X4 U5436 ( .A(n5477), .B(median_sobel_inst_data_h_r[1]), .Y(n3609) );
  NAND2X1 U5437 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n370), .Y(n6020) );
  AOI2BB1X4 U5438 ( .A0N(n3797), .A1N(n3799), .B0(n6881), .Y(n6887) );
  OAI21X4 U5439 ( .A0(n5515), .A1(n3797), .B0(n5514), .Y(n6888) );
  AOI21X4 U5440 ( .A0(n5947), .A1(n5512), .B0(n5511), .Y(n3797) );
  NOR2X1 U5441 ( .A(n6592), .B(n5797), .Y(conv_inst_N56) );
  NAND2X8 U5442 ( .A(n5797), .B(n3911), .Y(n6940) );
  INVX1 U5443 ( .A(n3612), .Y(n5194) );
  NOR2X4 U5444 ( .A(n5197), .B(n3612), .Y(n3864) );
  OA21X4 U5445 ( .A0(n3612), .A1(n5196), .B0(n5195), .Y(n3865) );
  NOR2X8 U5446 ( .A(input_data_ready_r[27]), .B(n4546), .Y(n3612) );
  INVX3 U5447 ( .A(n3617), .Y(n5450) );
  NAND2X4 U5448 ( .A(n4741), .B(n3617), .Y(n4740) );
  NAND2X6 U5449 ( .A(n4744), .B(median_sobel_inst_data_i_r[4]), .Y(n3617) );
  AND2X4 U5450 ( .A(n3987), .B(n3620), .Y(n4870) );
  NOR2X8 U5451 ( .A(n5441), .B(median_sobel_inst_data_h_r[7]), .Y(n3619) );
  OAI21X4 U5452 ( .A0(n3828), .A1(n5877), .B0(n5639), .Y(n5647) );
  INVX12 U5453 ( .A(n4271), .Y(n5667) );
  AOI2BB1X4 U5454 ( .A0N(n5645), .A1N(n5646), .B0(n3837), .Y(n3622) );
  NOR2X4 U5455 ( .A(n5645), .B(n5644), .Y(n3624) );
  NOR2BX4 U5456 ( .AN(median_sobel_inst_n773), .B(
        median_sobel_inst_data_d_r[1]), .Y(n3627) );
  BUFX4 U5457 ( .A(n4648), .Y(n3634) );
  NAND2X8 U5458 ( .A(n3636), .B(n6706), .Y(n4648) );
  XOR2X4 U5459 ( .A(n4270), .B(n5657), .Y(n5672) );
  INVX20 U5460 ( .A(n3638), .Y(n6989) );
  INVX12 U5461 ( .A(n6989), .Y(n5179) );
  NOR2X8 U5462 ( .A(n7624), .B(n4806), .Y(n3638) );
  OAI22X1 U5463 ( .A0(n6616), .A1(n1905), .B0(n1891), .B1(n7268), .Y(n3642) );
  INVX20 U5464 ( .A(n3643), .Y(n4347) );
  INVX12 U5465 ( .A(n4347), .Y(n5425) );
  CLKINVX1 U5466 ( .A(n3647), .Y(n3646) );
  NAND2BX4 U5467 ( .AN(n3648), .B(n6918), .Y(n3647) );
  OAI21X4 U5468 ( .A0(conv_inst_n19), .A1(n6930), .B0(n6919), .Y(n3648) );
  OAI21X4 U5469 ( .A0(n6403), .A1(n6399), .B0(n6404), .Y(n6309) );
  OAI2BB1X4 U5470 ( .A0N(n7045), .A1N(n7044), .B0(n3649), .Y(n7046) );
  AOI2BB2X4 U5471 ( .B0(n5759), .B1(n5600), .A0N(n5599), .A1N(n5834), .Y(n7043) );
  OAI21X4 U5472 ( .A0(n6317), .A1(n5753), .B0(n5754), .Y(n5759) );
  NAND2X8 U5473 ( .A(n3652), .B(n3650), .Y(n7045) );
  AOI21X4 U5474 ( .A0(n6309), .A1(n5260), .B0(n3651), .Y(n3650) );
  NAND2X4 U5475 ( .A(median_sobel_inst_data_e_r[4]), .B(
        median_sobel_inst_data_e_r[3]), .Y(n5439) );
  AOI21X2 U5476 ( .A0(n5474), .A1(median_sobel_inst_data_e_r[3]), .B0(
        median_sobel_inst_data_e_r[4]), .Y(n4867) );
  INVX12 U5477 ( .A(n3872), .Y(median_sobel_inst_data_e_r[4]) );
  AND3X8 U5478 ( .A(n3873), .B(n4807), .C(n4808), .Y(n3872) );
  XOR2X4 U5479 ( .A(n3655), .B(n6956), .Y(conv_inst_N75) );
  NAND2X8 U5480 ( .A(n3917), .B(n6942), .Y(n3889) );
  XOR2X4 U5481 ( .A(n3658), .B(n3656), .Y(n4298) );
  NAND2BX2 U5482 ( .AN(n5668), .B(n5669), .Y(n3656) );
  NOR2BX4 U5483 ( .AN(n3657), .B(input_data_ready_r[7]), .Y(n5668) );
  NAND3X2 U5484 ( .A(n4271), .B(n5663), .C(n5665), .Y(n3660) );
  INVX6 U5485 ( .A(n4215), .Y(n5299) );
  NAND3X6 U5486 ( .A(n3663), .B(n3662), .C(n3857), .Y(n6700) );
  NAND2X4 U5487 ( .A(n4648), .B(n6702), .Y(n3662) );
  NAND3X6 U5488 ( .A(n3666), .B(n6702), .C(n4296), .Y(n3663) );
  NAND2X8 U5489 ( .A(n3665), .B(n3664), .Y(n4296) );
  NAND2X6 U5490 ( .A(n3831), .B(n6231), .Y(n3665) );
  NAND2X6 U5491 ( .A(n3827), .B(n5671), .Y(n3826) );
  NOR2X8 U5492 ( .A(n4965), .B(n4964), .Y(n3669) );
  XOR2X4 U5493 ( .A(n5000), .B(n4629), .Y(n7214) );
  NAND3X6 U5494 ( .A(n3673), .B(n4654), .C(n3671), .Y(n4629) );
  NAND2BX4 U5495 ( .AN(n4969), .B(n4960), .Y(n3672) );
  NAND3X6 U5496 ( .A(n3667), .B(n3675), .C(n3674), .Y(n3673) );
  NAND2X4 U5497 ( .A(n3677), .B(n3676), .Y(n3675) );
  NAND2X6 U5498 ( .A(n3678), .B(n4998), .Y(n5000) );
  NAND3X6 U5499 ( .A(n3670), .B(n3680), .C(n3679), .Y(n3678) );
  AOI22X2 U5500 ( .A0(n7460), .A1(
        median_sobel_inst_u_median_filter_submodule_n842), .B0(
        median_sobel_inst_u_median_filter_submodule_n920), .B1(
        median_sobel_inst_u_median_filter_submodule_n836), .Y(n4966) );
  INVXL U5501 ( .A(n5456), .Y(median_sobel_inst_data_c_r[7]) );
  NAND2X6 U5502 ( .A(n3682), .B(n4004), .Y(n4780) );
  NAND2X8 U5503 ( .A(n3685), .B(n3683), .Y(n4498) );
  NAND2X8 U5504 ( .A(n4152), .B(n3686), .Y(n6997) );
  XOR2X4 U5505 ( .A(n3688), .B(conv_inst_conv_2_r[16]), .Y(n3687) );
  AOI2BB1X4 U5506 ( .A0N(n5508), .A1N(n3689), .B0(n5509), .Y(n3688) );
  NAND2X8 U5507 ( .A(n4054), .B(n4053), .Y(n7356) );
  NAND2BX4 U5508 ( .AN(n3695), .B(conv_inst_conv_2_r[12]), .Y(n5505) );
  NOR2BX4 U5509 ( .AN(n7359), .B(n3696), .Y(conv_inst_N2470) );
  NAND2X1 U5510 ( .A(n7356), .B(n3690), .Y(n3704) );
  NOR2BX4 U5511 ( .AN(n7491), .B(n3708), .Y(n3707) );
  NAND2BX1 U5512 ( .AN(median_sobel_inst_n1054), .B(median_sobel_inst_n46), 
        .Y(n3708) );
  INVX3 U5513 ( .A(n7622), .Y(n3710) );
  XNOR2X4 U5514 ( .A(n3711), .B(n4957), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]) );
  NAND2X2 U5515 ( .A(n4315), .B(n6790), .Y(n3713) );
  OAI2BB1X4 U5516 ( .A0N(n6195), .A1N(n4953), .B0(n4314), .Y(n6790) );
  NAND2X2 U5517 ( .A(conv_inst_data_bcd_2_r[1]), .B(conv_inst_conv_2_r[1]), 
        .Y(n6049) );
  INVX12 U5518 ( .A(n4347), .Y(n5859) );
  AOI22X4 U5519 ( .A0(n4307), .A1(n3744), .B0(n3715), .B1(n3714), .Y(n5091) );
  INVX3 U5520 ( .A(n4305), .Y(n3714) );
  NAND2BX4 U5521 ( .AN(n5090), .B(n3716), .Y(n3715) );
  AOI21X4 U5522 ( .A0(n3718), .A1(n5300), .B0(n3717), .Y(n3716) );
  NAND4X8 U5523 ( .A(n3721), .B(n4845), .C(n4843), .D(n4844), .Y(
        median_sobel_inst_data_h_r[4]) );
  OR2X4 U5524 ( .A(median_sobel_inst_data_b_r[4]), .B(n5481), .Y(n4563) );
  NAND3BX4 U5525 ( .AN(n4870), .B(n3726), .C(n3722), .Y(
        median_sobel_inst_u_median_filter_submodule_a58_w) );
  AOI21X4 U5526 ( .A0(n3987), .A1(n3724), .B0(n3723), .Y(n3722) );
  NOR2X4 U5527 ( .A(n3540), .B(n3725), .Y(n3724) );
  NOR2X4 U5528 ( .A(n5439), .B(median_sobel_inst_data_h_r[3]), .Y(n3728) );
  NAND3BX4 U5529 ( .AN(n4730), .B(n4493), .C(n4491), .Y(n3731) );
  AND2X4 U5530 ( .A(n4487), .B(n3733), .Y(n3732) );
  NAND3BX4 U5531 ( .AN(n3735), .B(n4864), .C(n4865), .Y(
        median_sobel_inst_data_e_r[0]) );
  NAND2X2 U5532 ( .A(n5346), .B(n4568), .Y(n3738) );
  INVX3 U5533 ( .A(n4063), .Y(n3769) );
  OR2X8 U5534 ( .A(n4064), .B(n4062), .Y(n4063) );
  NAND3X6 U5535 ( .A(n3746), .B(n3743), .C(n3739), .Y(
        median_sobel_inst_u_median_filter_submodule_a17_w) );
  NAND3X4 U5536 ( .A(n3742), .B(n3741), .C(n4125), .Y(n3740) );
  NAND2BX2 U5537 ( .AN(median_sobel_inst_data_g_r[5]), .B(n7622), .Y(n3750) );
  OAI21X4 U5538 ( .A0(n3757), .A1(n3756), .B0(n3755), .Y(n3754) );
  OAI22X4 U5539 ( .A0(n5389), .A1(median_sobel_inst_data_g_r[1]), .B0(n4368), 
        .B1(n3527), .Y(n3756) );
  AOI22X4 U5540 ( .A0(n5389), .A1(median_sobel_inst_data_g_r[1]), .B0(n5388), 
        .B1(median_sobel_inst_data_g_r[0]), .Y(n3757) );
  NAND3X6 U5541 ( .A(n5374), .B(n4778), .C(n3759), .Y(
        median_sobel_inst_data_c_r[0]) );
  NOR2X4 U5542 ( .A(n3769), .B(median_sobel_inst_data_f_r[5]), .Y(n3768) );
  NOR2X8 U5543 ( .A(n5527), .B(n5526), .Y(n3811) );
  NAND2X8 U5544 ( .A(n4056), .B(n3772), .Y(n5531) );
  NOR2BX4 U5545 ( .AN(n3775), .B(n3773), .Y(n3772) );
  AOI22X2 U5546 ( .A0(n5179), .A1(median_sobel_inst_n322), .B0(n5859), .B1(
        median_sobel_inst_n314), .Y(n3775) );
  OAI21X4 U5547 ( .A0(n3780), .A1(n3776), .B0(n4566), .Y(n4764) );
  NAND2X6 U5548 ( .A(n3781), .B(n3782), .Y(n3780) );
  NOR2X6 U5549 ( .A(n5533), .B(median_sobel_inst_data_c_r[3]), .Y(n3781) );
  NAND2X4 U5550 ( .A(n4055), .B(median_sobel_inst_data_c_r[4]), .Y(n3782) );
  NOR2X4 U5551 ( .A(n4565), .B(median_sobel_inst_data_f_r[5]), .Y(n3783) );
  NOR2X4 U5552 ( .A(median_sobel_inst_data_c_r[4]), .B(n3784), .Y(n4565) );
  AND2X4 U5553 ( .A(n5347), .B(n3787), .Y(n4059) );
  NAND2X2 U5554 ( .A(n5825), .B(median_sobel_inst_n314), .Y(n3787) );
  NOR2X2 U5555 ( .A(n5289), .B(n3791), .Y(n3790) );
  NOR2X4 U5556 ( .A(n3706), .B(n3793), .Y(n3792) );
  OAI2BB1X4 U5557 ( .A0N(median_sobel_inst_n324), .A1N(n6238), .B0(n4897), .Y(
        n4898) );
  NOR2BX4 U5558 ( .AN(n6789), .B(n4954), .Y(n6796) );
  NAND2X4 U5559 ( .A(n3796), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .Y(n4249) );
  XOR2X4 U5560 ( .A(n3796), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]) );
  NAND3X6 U5561 ( .A(n3805), .B(n3802), .C(n3801), .Y(n4171) );
  OAI21X4 U5562 ( .A0(n3804), .A1(n5612), .B0(n3803), .Y(n3802) );
  NOR2BX4 U5563 ( .AN(n5617), .B(n4176), .Y(n3803) );
  NAND2BX4 U5564 ( .AN(n5626), .B(n3806), .Y(n3805) );
  INVX20 U5565 ( .A(n3807), .Y(n7342) );
  NAND2X8 U5566 ( .A(n7342), .B(cnt[0]), .Y(n7269) );
  NAND3BX2 U5567 ( .AN(n7275), .B(n4785), .C(n3808), .Y(n4784) );
  CLKINVX6 U5568 ( .A(n7342), .Y(n3808) );
  NAND2X8 U5569 ( .A(n3869), .B(n7234), .Y(n3807) );
  INVX8 U5570 ( .A(n3810), .Y(n3809) );
  INVX12 U5571 ( .A(n3810), .Y(n4127) );
  NOR2X8 U5572 ( .A(n4542), .B(n4133), .Y(n3968) );
  NAND2BX4 U5573 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n644), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n119), .Y(n6656) );
  OAI22X4 U5574 ( .A0(n3858), .A1(n5456), .B0(n5527), .B1(
        median_sobel_inst_data_i_r[6]), .Y(n5458) );
  OAI21X4 U5575 ( .A0(n5457), .A1(n5456), .B0(n3858), .Y(n5459) );
  NOR2X8 U5576 ( .A(n5673), .B(input_data_ready_r[15]), .Y(n6696) );
  NOR2BX4 U5577 ( .AN(n3815), .B(n5662), .Y(n3814) );
  OAI21X4 U5578 ( .A0(n5205), .A1(n5207), .B0(n5208), .Y(n5220) );
  NAND2X4 U5579 ( .A(n5213), .B(n5220), .Y(n3877) );
  NOR2X8 U5580 ( .A(input_data_ready_r[29]), .B(input_data_ready_r[13]), .Y(
        n5207) );
  NOR2X6 U5581 ( .A(n4416), .B(input_data_ready_r[14]), .Y(n5214) );
  BUFX6 U5582 ( .A(n6977), .Y(n3816) );
  NAND2X8 U5583 ( .A(n3817), .B(n7579), .Y(n6977) );
  XOR2X4 U5584 ( .A(n3818), .B(n4463), .Y(n5222) );
  NOR2X8 U5585 ( .A(n4425), .B(input_data_ready_r[21]), .Y(n4423) );
  XNOR2X4 U5586 ( .A(n4419), .B(n4417), .Y(n4425) );
  NOR2X8 U5587 ( .A(n5221), .B(input_data_ready_r[20]), .Y(n6969) );
  NAND3X8 U5588 ( .A(n4036), .B(n4033), .C(n4035), .Y(n5221) );
  NAND2X2 U5589 ( .A(n5220), .B(n5219), .Y(n3819) );
  OA21X2 U5590 ( .A0(n5217), .A1(n5218), .B0(n5216), .Y(n3820) );
  NAND3X2 U5591 ( .A(n5219), .B(n4680), .C(n5215), .Y(n3821) );
  OR2X8 U5592 ( .A(n4050), .B(n4599), .Y(n6077) );
  XOR2X4 U5593 ( .A(n5638), .B(n5640), .Y(n4050) );
  NOR2X8 U5594 ( .A(n4543), .B(input_data_ready_r[1]), .Y(n3828) );
  NAND2X6 U5595 ( .A(n4296), .B(n6701), .Y(n4295) );
  NOR2X6 U5596 ( .A(n6329), .B(n6326), .Y(n3830) );
  NOR2X6 U5597 ( .A(n6327), .B(n6329), .Y(n3831) );
  XOR2X4 U5598 ( .A(n3832), .B(n5877), .Y(n5864) );
  XOR2X4 U5599 ( .A(n5667), .B(n3834), .Y(n5649) );
  XOR2X4 U5600 ( .A(n3836), .B(n6707), .Y(conv_inst_data_abc_w[6]) );
  AOI21X4 U5601 ( .A0(n3996), .A1(n4296), .B0(n3995), .Y(n3836) );
  NAND2X6 U5602 ( .A(n3553), .B(n7442), .Y(n5646) );
  NOR2X8 U5603 ( .A(n5641), .B(input_data_ready_r[3]), .Y(n5645) );
  NOR2X8 U5604 ( .A(n3553), .B(n7442), .Y(n5644) );
  NAND2X6 U5605 ( .A(n4543), .B(input_data_ready_r[1]), .Y(n5639) );
  NOR2X8 U5606 ( .A(n6540), .B(n3838), .Y(n6942) );
  NAND2X1 U5607 ( .A(n6931), .B(conv_inst_conv_1_r[6]), .Y(n3843) );
  NAND2X2 U5608 ( .A(n6931), .B(conv_inst_conv_1_r[5]), .Y(n3848) );
  NAND2X1 U5609 ( .A(n6308), .B(conv_inst_conv_4_r[3]), .Y(n3852) );
  NAND2BX4 U5610 ( .AN(n4628), .B(n3855), .Y(n4627) );
  NAND2X6 U5611 ( .A(n6307), .B(n6306), .Y(n3856) );
  NOR2X8 U5612 ( .A(n5649), .B(n4546), .Y(n6329) );
  NOR2X8 U5613 ( .A(n3861), .B(n3859), .Y(n4747) );
  NOR2X4 U5614 ( .A(n3812), .B(median_sobel_inst_data_i_r[7]), .Y(n3861) );
  NAND3BX4 U5615 ( .AN(n4748), .B(n4891), .C(n4892), .Y(
        median_sobel_inst_data_i_r[7]) );
  NAND2X4 U5616 ( .A(n5641), .B(input_data_ready_r[3]), .Y(n3862) );
  NAND2X8 U5617 ( .A(n3865), .B(n3863), .Y(n4680) );
  NAND2X6 U5618 ( .A(n3866), .B(n3864), .Y(n3863) );
  NAND2X4 U5619 ( .A(input_data_ready_r[27]), .B(n4546), .Y(n5195) );
  NAND2X6 U5620 ( .A(n4680), .B(n5215), .Y(n4420) );
  INVX3 U5621 ( .A(n3868), .Y(n6944) );
  NOR2X8 U5622 ( .A(n6926), .B(n6955), .Y(n3868) );
  NAND2X4 U5623 ( .A(n3868), .B(n6958), .Y(n3930) );
  OAI22X2 U5624 ( .A0(n6936), .A1(conv_inst_n22), .B0(n6930), .B1(
        conv_inst_n12), .Y(n3920) );
  INVX12 U5625 ( .A(n4085), .Y(n7623) );
  NOR2X8 U5626 ( .A(n4085), .B(n4467), .Y(n3869) );
  INVX12 U5627 ( .A(n4399), .Y(n7234) );
  OAI2BB1X4 U5628 ( .A0N(n4483), .A1N(n3870), .B0(n5435), .Y(n4482) );
  AOI21X4 U5629 ( .A0(n3872), .A1(n5437), .B0(n5436), .Y(n3870) );
  NAND2X4 U5630 ( .A(n5434), .B(median_sobel_inst_data_e_r[3]), .Y(n5437) );
  XOR2X4 U5631 ( .A(n3874), .B(n4100), .Y(n7178) );
  AND2X8 U5632 ( .A(n5573), .B(n5572), .Y(n4100) );
  NAND2X8 U5633 ( .A(n4094), .B(n3578), .Y(n3874) );
  INVX3 U5634 ( .A(n3858), .Y(n4617) );
  NOR2X4 U5635 ( .A(n3880), .B(n5214), .Y(n3879) );
  NAND2X4 U5636 ( .A(n4680), .B(n3879), .Y(n3878) );
  NOR2X1 U5637 ( .A(n6940), .B(conv_inst_n251), .Y(n3883) );
  OAI21X4 U5638 ( .A0(n3885), .A1(n4391), .B0(n4390), .Y(n4389) );
  AOI2BB2X4 U5639 ( .B0(n3886), .B1(n6627), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n250), .A1N(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), .Y(n3885) );
  OAI2BB1X2 U5640 ( .A0N(n3884), .A1N(n3546), .B0(n3887), .Y(n3886) );
  OAI22X2 U5641 ( .A0(n6626), .A1(
        median_sobel_inst_u_sober_compare_submodule_n273), .B0(
        median_sobel_inst_u_sober_compare_submodule_n274), .B1(n6625), .Y(
        n3887) );
  AOI2BB1X2 U5642 ( .A0N(n3888), .A1N(n7231), .B0(
        median_sobel_inst_u_sober_compare_submodule_n321), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1260) );
  NOR2X1 U5643 ( .A(n6943), .B(n3889), .Y(conv_inst_N79) );
  NAND2X4 U5644 ( .A(n5397), .B(median_sobel_inst_n749), .Y(n5395) );
  NAND2X4 U5645 ( .A(n5042), .B(n5040), .Y(n3891) );
  OR2X6 U5646 ( .A(n5049), .B(n5050), .Y(median_sobel_inst_data_g_r[4]) );
  NAND2BX2 U5647 ( .AN(n3895), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .Y(n6847) );
  NAND2X2 U5648 ( .A(n5394), .B(n5298), .Y(n4306) );
  NOR2X8 U5649 ( .A(n3998), .B(n3999), .Y(n5394) );
  NAND2BX4 U5650 ( .AN(n5224), .B(n3900), .Y(conv_inst_data_bcd_w[9]) );
  NAND2X4 U5651 ( .A(n3903), .B(n3901), .Y(n3900) );
  NAND2X6 U5652 ( .A(n3905), .B(n3904), .Y(n3903) );
  NAND2X4 U5653 ( .A(n3967), .B(n4401), .Y(n3904) );
  INVX4 U5654 ( .A(n4422), .Y(n3905) );
  XNOR2X4 U5655 ( .A(n4680), .B(n3906), .Y(n5202) );
  XOR2X4 U5656 ( .A(n3909), .B(n3907), .Y(n5201) );
  NAND2BX4 U5657 ( .AN(n3908), .B(n5194), .Y(n3907) );
  CLKINVX1 U5658 ( .A(n5195), .Y(n3908) );
  NOR2BX4 U5659 ( .AN(n3910), .B(n5193), .Y(n3909) );
  INVX12 U5660 ( .A(n6308), .Y(n6936) );
  NOR2X8 U5661 ( .A(conv_inst_n292), .B(conv_inst_n191), .Y(n6308) );
  INVX12 U5662 ( .A(n6305), .Y(n6935) );
  NOR2X8 U5663 ( .A(conv_inst_n292), .B(n5795), .Y(n6305) );
  NAND2X2 U5664 ( .A(n6931), .B(conv_inst_conv_1_r[8]), .Y(n3916) );
  NOR2X8 U5665 ( .A(n6941), .B(n6947), .Y(n3917) );
  OAI21X4 U5666 ( .A0(n6530), .A1(n6527), .B0(n6531), .Y(n6773) );
  NOR2BX4 U5667 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_5_), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n6530)
         );
  CLKINVX1 U5668 ( .A(n6935), .Y(n3918) );
  NAND2X1 U5669 ( .A(n6931), .B(conv_inst_conv_1_r[13]), .Y(n3922) );
  AOI21X4 U5670 ( .A0(n6458), .A1(n6418), .B0(n3924), .Y(n3923) );
  NAND2BX4 U5671 ( .AN(n5518), .B(n3927), .Y(n3926) );
  AOI2BB2X4 U5672 ( .B0(conv_inst_n25), .B1(n3931), .A0N(n5099), .A1N(n6940), 
        .Y(n3526) );
  NAND2BX2 U5673 ( .AN(n5783), .B(conv_isFirst_signal_r), .Y(n3932) );
  NAND2BX4 U5674 ( .AN(n7399), .B(conv_inst_n16), .Y(n5783) );
  BUFX4 U5675 ( .A(n6935), .Y(n3935) );
  XOR2X4 U5676 ( .A(n3938), .B(n6957), .Y(conv_inst_N76) );
  BUFX2 U5677 ( .A(n7178), .Y(n3941) );
  AOI2BB2X2 U5678 ( .B0(n3941), .B1(n3564), .A0N(n7164), .A1N(n5730), .Y(n3942) );
  XOR2X4 U5679 ( .A(n4098), .B(n4100), .Y(n5574) );
  AOI2BB2X4 U5680 ( .B0(n3946), .B1(
        median_sobel_inst_u_median_filter_submodule_net84111), .A0N(
        median_sobel_inst_u_median_filter_submodule_n787), .A1N(
        median_sobel_inst_u_median_filter_submodule_net86856), .Y(n5568) );
  XOR2X4 U5681 ( .A(n5651), .B(n3560), .Y(n5670) );
  NAND3X6 U5682 ( .A(n3949), .B(n4826), .C(n3948), .Y(
        median_sobel_inst_data_h_r[6]) );
  NAND2X6 U5683 ( .A(median_sobel_inst_data_b_r[4]), .B(
        median_sobel_inst_data_b_r[5]), .Y(n5485) );
  NOR2BX4 U5684 ( .AN(n7358), .B(n3956), .Y(conv_inst_N2510) );
  XOR2X4 U5685 ( .A(n3957), .B(n6469), .Y(n3956) );
  INVX6 U5686 ( .A(n6977), .Y(n3965) );
  NAND2X6 U5687 ( .A(n3959), .B(n4406), .Y(n4405) );
  NAND3X6 U5688 ( .A(n3961), .B(n4408), .C(n3960), .Y(n3959) );
  NAND2X4 U5689 ( .A(n3966), .B(n6977), .Y(n3960) );
  NAND2X6 U5690 ( .A(n3964), .B(n4401), .Y(n4408) );
  NOR2X4 U5691 ( .A(n3963), .B(n3962), .Y(n3961) );
  NAND2X4 U5692 ( .A(n4422), .B(n3816), .Y(n4410) );
  NAND2X8 U5693 ( .A(n4424), .B(n6965), .Y(n4422) );
  NOR2X4 U5694 ( .A(n6965), .B(n3965), .Y(n3963) );
  NAND2X8 U5695 ( .A(n4323), .B(n4326), .Y(n4401) );
  INVX4 U5696 ( .A(n4424), .Y(n3966) );
  NAND3X6 U5697 ( .A(n3970), .B(n3810), .C(n3969), .Y(n4089) );
  NOR2X4 U5698 ( .A(curr_state[3]), .B(curr_state[2]), .Y(n3969) );
  OAI21X4 U5699 ( .A0(n3976), .A1(n5876), .B0(n3971), .Y(n3970) );
  NAND2X4 U5700 ( .A(n5876), .B(n3972), .Y(n3971) );
  NAND2X6 U5701 ( .A(n5997), .B(n3974), .Y(n3973) );
  NOR2X8 U5702 ( .A(n7380), .B(n3975), .Y(n3974) );
  INVX4 U5703 ( .A(net46722), .Y(n3975) );
  INVX3 U5704 ( .A(n5997), .Y(n3977) );
  OAI21X2 U5705 ( .A0(n5327), .A1(n3550), .B0(n7623), .Y(n5326) );
  NOR2X4 U5706 ( .A(n7438), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n6200) );
  XOR2X2 U5707 ( .A(n6768), .B(n6767), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]) );
  OAI21X4 U5708 ( .A0(n6696), .A1(n3857), .B0(n6697), .Y(n5674) );
  NAND2X4 U5709 ( .A(n5202), .B(n5641), .Y(n6984) );
  OAI21X2 U5710 ( .A0(i_op_valid), .A1(n6995), .B0(n6106), .Y(net29710) );
  NOR2X6 U5711 ( .A(n4325), .B(n4324), .Y(n4323) );
  OAI21X1 U5712 ( .A0(n6104), .A1(n4194), .B0(n6103), .Y(n6105) );
  INVX20 U5713 ( .A(n4721), .Y(n4722) );
  NOR2X1 U5714 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n6873) );
  AND2X2 U5715 ( .A(n6888), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N440) );
  AOI222X2 U5716 ( .A0(n5574), .A1(
        median_sobel_inst_u_median_filter_submodule_n995), .B0(
        median_sobel_inst_u_median_filter_submodule_n1219), .B1(n5729), .C0(
        n3988), .C1(median_sobel_inst_u_median_filter_submodule_n1244), .Y(
        n5606) );
  OAI22X2 U5717 ( .A0(n5566), .A1(
        median_sobel_inst_u_median_filter_submodule_n793), .B0(
        median_sobel_inst_u_median_filter_submodule_net87846), .B1(n5578), .Y(
        n5571) );
  OR2X4 U5718 ( .A(median_sobel_inst_u_median_filter_submodule_n790), .B(
        median_sobel_inst_u_median_filter_submodule_net87818), .Y(n5566) );
  NOR2X2 U5719 ( .A(n5483), .B(median_sobel_inst_data_e_r[5]), .Y(n3986) );
  AOI21X4 U5720 ( .A0(n6892), .A1(n5592), .B0(n5595), .Y(n3990) );
  OR2X8 U5721 ( .A(n6412), .B(n5137), .Y(n3992) );
  NAND2BX4 U5722 ( .AN(n3993), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[0]), .Y(n6380) );
  NOR2X8 U5723 ( .A(n4043), .B(op_mode_r_2_), .Y(n4937) );
  AOI21X4 U5724 ( .A0(n4346), .A1(median_sobel_inst_n84), .B0(n4001), .Y(n3997) );
  AOI22X4 U5725 ( .A0(n4647), .A1(n4585), .B0(n4581), .B1(n4000), .Y(n4002) );
  NOR2BX4 U5726 ( .AN(n5186), .B(n4008), .Y(n4007) );
  NAND2X2 U5727 ( .A(n4647), .B(median_sobel_inst_n60), .Y(n4009) );
  NOR2X4 U5728 ( .A(n4017), .B(n5448), .Y(n4014) );
  AND2X8 U5729 ( .A(n4757), .B(n4015), .Y(n5448) );
  NOR2BX4 U5730 ( .AN(n4758), .B(n4016), .Y(n4015) );
  NOR2X6 U5731 ( .A(n4025), .B(n4023), .Y(n4022) );
  NOR2X4 U5732 ( .A(n5524), .B(median_sobel_inst_data_i_r[1]), .Y(n4025) );
  NAND2X8 U5733 ( .A(n4026), .B(n4912), .Y(median_sobel_inst_data_i_r[1]) );
  NAND2X4 U5734 ( .A(n4714), .B(median_sobel_inst_net87821), .Y(n4026) );
  NAND2X2 U5735 ( .A(n4722), .B(median_sobel_inst_n70), .Y(n4031) );
  NAND3X6 U5736 ( .A(n5206), .B(n5210), .C(n5205), .Y(n4035) );
  OR2X8 U5737 ( .A(n5206), .B(n5210), .Y(n4036) );
  XOR2X4 U5738 ( .A(n4039), .B(conv_inst_conv_4_r[14]), .Y(n4038) );
  INVX12 U5739 ( .A(n5341), .Y(n7029) );
  INVX20 U5740 ( .A(n4041), .Y(n4905) );
  OR2X8 U5741 ( .A(median_sobel_inst_net82615), .B(median_sobel_inst_n654), 
        .Y(n4041) );
  NAND2X6 U5742 ( .A(n4042), .B(n3549), .Y(n5325) );
  NAND2X8 U5743 ( .A(n4136), .B(n3968), .Y(n4043) );
  NOR2X6 U5744 ( .A(n5188), .B(n4543), .Y(n6472) );
  XOR2X4 U5745 ( .A(n4047), .B(n4044), .Y(n5188) );
  NOR2X8 U5746 ( .A(n4046), .B(n4045), .Y(n5191) );
  NOR2X4 U5747 ( .A(n5190), .B(n4048), .Y(n4047) );
  INVX2 U5748 ( .A(n5196), .Y(n4048) );
  AND2X4 U5749 ( .A(n5501), .B(n6291), .Y(n4052) );
  NAND2BX4 U5750 ( .AN(n5503), .B(n5504), .Y(n6298) );
  AOI21X4 U5751 ( .A0(n5501), .A1(n6292), .B0(n5499), .Y(n4053) );
  AOI21X4 U5752 ( .A0(n7355), .A1(n7356), .B0(n7354), .Y(n7357) );
  INVX20 U5753 ( .A(n4814), .Y(n5346) );
  NAND3X6 U5754 ( .A(n4060), .B(n4059), .C(n5348), .Y(
        median_sobel_inst_data_c_r[4]) );
  INVX3 U5755 ( .A(n4720), .Y(n4060) );
  NAND2X2 U5756 ( .A(n5183), .B(n5182), .Y(n4066) );
  NAND2X8 U5757 ( .A(n4072), .B(n4067), .Y(n7172) );
  OAI2BB1X4 U5758 ( .A0N(n4068), .A1N(n5632), .B0(n4309), .Y(n4067) );
  OAI21X4 U5759 ( .A0(n4188), .A1(n4185), .B0(n4069), .Y(n4068) );
  OA21X4 U5760 ( .A0(n5630), .A1(n5634), .B0(
        median_sobel_inst_u_median_filter_submodule_n1080), .Y(n4070) );
  AOI2BB2X4 U5761 ( .B0(n4722), .B1(median_sobel_inst_n59), .A0N(
        median_sobel_inst_n7), .A1N(n6553), .Y(n4073) );
  OAI21X4 U5762 ( .A0(n6713), .A1(n4081), .B0(n4080), .Y(n6739) );
  AOI21X4 U5763 ( .A0(n6730), .A1(n6712), .B0(n6711), .Y(n4080) );
  AOI21X4 U5764 ( .A0(n6450), .A1(n6461), .B0(n6449), .Y(n6713) );
  NAND2BX4 U5765 ( .AN(n4082), .B(n5575), .Y(n5577) );
  OAI21X2 U5766 ( .A0(median_sobel_inst_u_median_filter_submodule_n1227), .A1(
        median_sobel_inst_u_median_filter_submodule_n1244), .B0(n4084), .Y(
        n4083) );
  CLKINVX1 U5767 ( .A(n4468), .Y(n4472) );
  AND4X8 U5768 ( .A(n4469), .B(n4468), .C(n4470), .D(n4089), .Y(n4085) );
  NAND4X8 U5769 ( .A(n4661), .B(n5318), .C(n5319), .D(n4086), .Y(n4467) );
  NAND2X8 U5770 ( .A(n4087), .B(n4673), .Y(n4086) );
  NOR2X8 U5771 ( .A(n4090), .B(n4088), .Y(n4399) );
  NAND2X4 U5772 ( .A(n5324), .B(n4471), .Y(n4090) );
  MXI2X4 U5773 ( .A(n4095), .B(n4097), .S0(n4091), .Y(n7169) );
  AOI21X4 U5774 ( .A0(n5248), .A1(n6425), .B0(n4303), .Y(n4257) );
  OAI21X4 U5775 ( .A0(n6164), .A1(n6161), .B0(n6162), .Y(n6425) );
  NAND2X2 U5776 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n332), .Y(n6162) );
  NOR2X4 U5777 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n332), .Y(n6161) );
  AOI21X4 U5778 ( .A0(n4093), .A1(n5605), .B0(n4092), .Y(conv_inst_N2350) );
  OR2X4 U5779 ( .A(n5604), .B(n7543), .Y(n4093) );
  NAND2X6 U5780 ( .A(n5586), .B(n5585), .Y(n4094) );
  AOI21X2 U5781 ( .A0(n7045), .A1(n6318), .B0(n5752), .Y(n4103) );
  OAI21X2 U5782 ( .A0(n5462), .A1(n6616), .B0(n7268), .Y(n4105) );
  AOI22X4 U5783 ( .A0(n5154), .A1(
        median_sobel_inst_u_median_filter_submodule_n151), .B0(
        median_sobel_inst_u_median_filter_submodule_n781), .B1(
        median_sobel_inst_u_median_filter_submodule_n1303), .Y(n5155) );
  AOI2BB2X4 U5784 ( .B0(n6555), .B1(n7238), .A0N(n7004), .A1N(n6556), .Y(n7091) );
  INVX2 U5785 ( .A(n7176), .Y(n4110) );
  NAND2X8 U5786 ( .A(n4113), .B(n4112), .Y(n4118) );
  BUFX16 U5787 ( .A(n7176), .Y(n4114) );
  OAI21X4 U5788 ( .A0(n4118), .A1(n7476), .B0(n4115), .Y(
        median_sobel_inst_u_median_filter_submodule_n860) );
  OAI21X4 U5789 ( .A0(n4118), .A1(n7175), .B0(n4116), .Y(
        median_sobel_inst_u_median_filter_submodule_n859) );
  OAI21X4 U5790 ( .A0(n4118), .A1(n7600), .B0(n4117), .Y(
        median_sobel_inst_u_median_filter_submodule_n855) );
  OAI21X4 U5791 ( .A0(n5282), .A1(n4118), .B0(n5281), .Y(
        median_sobel_inst_u_median_filter_submodule_n856) );
  NAND3X6 U5792 ( .A(n4932), .B(n5317), .C(n7672), .Y(n6995) );
  NOR2X4 U5793 ( .A(n6995), .B(n4542), .Y(o_op_ready) );
  NOR2X6 U5794 ( .A(n4127), .B(n5876), .Y(n4673) );
  NOR2X8 U5795 ( .A(n4134), .B(n4127), .Y(n4473) );
  NAND2X8 U5796 ( .A(n7262), .B(n7261), .Y(n4228) );
  INVX12 U5797 ( .A(n4467), .Y(n7248) );
  NAND2X6 U5798 ( .A(n5314), .B(n4132), .Y(n4131) );
  NOR2X4 U5799 ( .A(n5317), .B(curr_state[2]), .Y(n5313) );
  NAND2X8 U5800 ( .A(n4542), .B(curr_state[1]), .Y(n4135) );
  INVX3 U5801 ( .A(n4542), .Y(n5310) );
  NOR2X8 U5802 ( .A(n4138), .B(n4137), .Y(n4136) );
  NAND2X6 U5803 ( .A(n4932), .B(n5317), .Y(n4137) );
  NAND3X2 U5804 ( .A(n4943), .B(n4139), .C(n5315), .Y(n5316) );
  AOI21X4 U5805 ( .A0(n5323), .A1(n4139), .B0(n5322), .Y(n5324) );
  INVX12 U5806 ( .A(n7001), .Y(n6999) );
  NAND2X8 U5807 ( .A(n6997), .B(n6995), .Y(n7001) );
  NAND2X8 U5808 ( .A(n4143), .B(n5377), .Y(median_sobel_inst_data_c_r[6]) );
  BUFX2 U5809 ( .A(n4148), .Y(n4146) );
  BUFX6 U5810 ( .A(n5346), .Y(n4147) );
  BUFX20 U5811 ( .A(n5346), .Y(n4148) );
  NAND2X4 U5812 ( .A(n4147), .B(n7389), .Y(n4212) );
  NAND2X4 U5813 ( .A(n4148), .B(median_sobel_inst_n1050), .Y(n4728) );
  NAND2X4 U5814 ( .A(n4148), .B(n4788), .Y(n4861) );
  INVX12 U5815 ( .A(curr_state[3]), .Y(n5317) );
  CLKINVX1 U5816 ( .A(n6997), .Y(n4149) );
  NOR2X4 U5817 ( .A(n7001), .B(n6998), .Y(n4150) );
  NAND4BX4 U5818 ( .AN(n4852), .B(n4853), .C(n4851), .D(n4153), .Y(
        median_sobel_inst_data_h_r[2]) );
  NAND2X4 U5819 ( .A(n4647), .B(median_sobel_inst_n69), .Y(n4153) );
  NAND2BX2 U5820 ( .AN(median_sobel_inst_u_median_filter_submodule_n200), .B(
        median_sobel_inst_u_median_filter_submodule_n216), .Y(n5621) );
  NOR2BX4 U5821 ( .AN(n3569), .B(n4159), .Y(n4157) );
  OAI21X4 U5822 ( .A0(n4169), .A1(n4163), .B0(n4160), .Y(n5625) );
  NAND2BX1 U5823 ( .AN(median_sobel_inst_u_median_filter_submodule_n1131), .B(
        median_sobel_inst_u_median_filter_submodule_n1107), .Y(n4161) );
  NAND2BX1 U5824 ( .AN(median_sobel_inst_u_median_filter_submodule_n1103), .B(
        median_sobel_inst_u_median_filter_submodule_n1138), .Y(n4165) );
  INVX3 U5825 ( .A(n4170), .Y(n4168) );
  AND2X4 U5826 ( .A(median_sobel_inst_u_median_filter_submodule_n1103), .B(
        n4156), .Y(n4170) );
  OAI21X4 U5827 ( .A0(n7161), .A1(n4313), .B0(n4172), .Y(
        median_sobel_inst_u_median_filter_submodule_n1580) );
  AOI22X1 U5828 ( .A0(n7146), .A1(
        median_sobel_inst_u_median_filter_submodule_n1131), .B0(
        median_sobel_inst_u_median_filter_submodule_n1138), .B1(
        median_sobel_inst_u_median_filter_submodule_n1588), .Y(n4175) );
  OAI2BB1X4 U5829 ( .A0N(n4181), .A1N(n4180), .B0(n5382), .Y(n6902) );
  NOR2BX4 U5830 ( .AN(n4182), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n5383) );
  AOI2BB2X2 U5831 ( .B0(n5630), .B1(n4184), .A0N(
        median_sobel_inst_u_median_filter_submodule_n821), .A1N(
        median_sobel_inst_u_median_filter_submodule_n1224), .Y(n4183) );
  OAI21X2 U5832 ( .A0(n5634), .A1(
        median_sobel_inst_u_median_filter_submodule_n1080), .B0(n4186), .Y(
        n4185) );
  AOI2BB2X2 U5833 ( .B0(median_sobel_inst_u_median_filter_submodule_n224), 
        .B1(n4187), .A0N(median_sobel_inst_u_median_filter_submodule_n1103), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n1588), .Y(n4186) );
  NOR2X2 U5834 ( .A(n7172), .B(n4192), .Y(n4191) );
  INVX12 U5835 ( .A(n3577), .Y(n7161) );
  AOI21X2 U5836 ( .A0(n4311), .A1(
        median_sobel_inst_u_median_filter_submodule_n1138), .B0(n4191), .Y(
        n4190) );
  CLKINVX2 U5837 ( .A(n6997), .Y(n6432) );
  NOR2X1 U5838 ( .A(n7221), .B(n1867), .Y(n4198) );
  NAND2BX4 U5839 ( .AN(x_delay_r_2__1_), .B(n3545), .Y(n7223) );
  NOR2X1 U5840 ( .A(n7221), .B(n1872), .Y(n4203) );
  OAI22X1 U5841 ( .A0(n7224), .A1(n1899), .B0(n1871), .B1(n7222), .Y(n4204) );
  INVX20 U5842 ( .A(n4531), .Y(n7335) );
  NAND2X2 U5843 ( .A(n3898), .B(n4208), .Y(n4207) );
  NAND3X6 U5844 ( .A(n4212), .B(n4211), .C(n4210), .Y(n3528) );
  AOI22X4 U5845 ( .A0(n4647), .A1(n4554), .B0(median_sobel_inst_n142), .B1(
        n5859), .Y(n4211) );
  NAND2X4 U5846 ( .A(n5299), .B(median_sobel_inst_n749), .Y(n4220) );
  NOR2X8 U5847 ( .A(n7622), .B(n5300), .Y(n4224) );
  AOI21X4 U5848 ( .A0(n5903), .A1(n5359), .B0(n5358), .Y(n6173) );
  NAND3X2 U5849 ( .A(n4231), .B(n5531), .C(median_sobel_inst_data_f_r[3]), .Y(
        n4230) );
  INVX3 U5850 ( .A(median_sobel_inst_data_i_r[3]), .Y(n4231) );
  INVX12 U5851 ( .A(n4646), .Y(n5805) );
  NAND2BX4 U5852 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), 
        .B(n4235), .Y(n6525) );
  XNOR2X4 U5853 ( .A(n4245), .B(n6854), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N116) );
  AOI21X4 U5854 ( .A0(n6864), .A1(n5132), .B0(n5131), .Y(n4247) );
  XOR2X4 U5855 ( .A(n4249), .B(n3568), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]) );
  OAI21X4 U5856 ( .A0(n4949), .A1(n4538), .B0(n6088), .Y(n6195) );
  NAND2BX4 U5857 ( .AN(n4253), .B(n6383), .Y(n6391) );
  OAI22X2 U5858 ( .A0(n4254), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n4253) );
  AO21X4 U5859 ( .A0(n6840), .A1(n4256), .B0(n4255), .Y(n4258) );
  NAND2X1 U5860 ( .A(n4263), .B(n4262), .Y(n7192) );
  AOI22X2 U5861 ( .A0(n7189), .A1(n4260), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n4259) );
  INVX12 U5862 ( .A(n7141), .Y(n6616) );
  OAI2BB1X4 U5863 ( .A0N(n5663), .A1N(n4271), .B0(n5655), .Y(n4270) );
  NAND2X4 U5864 ( .A(n5675), .B(n6701), .Y(n5677) );
  NOR2X6 U5865 ( .A(n4272), .B(n6696), .Y(n5675) );
  INVX3 U5866 ( .A(n6702), .Y(n4272) );
  OAI21X4 U5867 ( .A0(n5653), .A1(n5654), .B0(n5652), .Y(n5666) );
  NAND2X4 U5868 ( .A(n4275), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .Y(n5039) );
  XOR2X4 U5869 ( .A(n4275), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]) );
  NAND2X8 U5870 ( .A(n4276), .B(n5037), .Y(n4275) );
  NAND3X8 U5871 ( .A(n5176), .B(n5174), .C(n5175), .Y(n5588) );
  NOR2X8 U5872 ( .A(n4285), .B(n4283), .Y(n7176) );
  OAI22X4 U5873 ( .A0(n5149), .A1(n5173), .B0(
        median_sobel_inst_u_median_filter_submodule_n934), .B1(n7453), .Y(
        n4284) );
  NOR2BX4 U5874 ( .AN(n5161), .B(n4286), .Y(n4285) );
  AOI21X4 U5875 ( .A0(n5594), .A1(n5595), .B0(n4288), .Y(n4287) );
  CLKINVX1 U5876 ( .A(n5593), .Y(n4288) );
  CLKINVX1 U5877 ( .A(n6893), .Y(n4289) );
  NAND3X6 U5878 ( .A(n6892), .B(n5594), .C(n5592), .Y(n4290) );
  NOR2X1 U5879 ( .A(n7218), .B(n3542), .Y(n4291) );
  AND2X2 U5880 ( .A(median_sobel_inst_out_data_w[1]), .B(n7220), .Y(n4292) );
  XNOR2X4 U5881 ( .A(n4293), .B(n4297), .Y(conv_inst_data_abc_w[7]) );
  NAND2X4 U5882 ( .A(n4295), .B(n4294), .Y(n4293) );
  INVX4 U5883 ( .A(n4648), .Y(n4294) );
  NAND2X2 U5884 ( .A(n3857), .B(n6702), .Y(n4297) );
  XNOR2X2 U5885 ( .A(n4299), .B(n6834), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]) );
  OAI21X1 U5886 ( .A0(n6835), .A1(n4302), .B0(n4300), .Y(n4299) );
  INVX1 U5887 ( .A(n6841), .Y(n4301) );
  NAND2BX2 U5888 ( .AN(n6831), .B(n6840), .Y(n4302) );
  NAND2BX2 U5889 ( .AN(n4304), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n6500) );
  NAND2X1 U5890 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n6496) );
  NOR2BX4 U5891 ( .AN(n4304), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n6480) );
  OAI22X4 U5892 ( .A0(median_sobel_inst_data_c_r[1]), .A1(n5524), .B0(n5529), 
        .B1(median_sobel_inst_data_c_r[2]), .Y(n4779) );
  NOR2X4 U5893 ( .A(n4305), .B(n5083), .Y(n5085) );
  OAI21X4 U5894 ( .A0(n5299), .A1(median_sobel_inst_data_g_r[7]), .B0(n4306), 
        .Y(n4305) );
  INVX1 U5895 ( .A(n3661), .Y(n4307) );
  NAND2BX2 U5896 ( .AN(median_sobel_inst_u_median_filter_submodule_n200), .B(
        median_sobel_inst_u_median_filter_submodule_n190), .Y(n5615) );
  NAND2X2 U5897 ( .A(n4179), .B(
        median_sobel_inst_u_median_filter_submodule_n1214), .Y(n4310) );
  BUFX2 U5898 ( .A(median_sobel_inst_u_median_filter_submodule_n190), .Y(n4312) );
  INVX3 U5899 ( .A(n6169), .Y(n6096) );
  OAI21X4 U5900 ( .A0(n5361), .A1(n6173), .B0(n4316), .Y(n5362) );
  AOI21X4 U5901 ( .A0(n5360), .A1(n6170), .B0(n4317), .Y(n4316) );
  OAI21X4 U5902 ( .A0(n6092), .A1(n6120), .B0(n6093), .Y(n6170) );
  NOR2X4 U5903 ( .A(n6174), .B(n6096), .Y(n5360) );
  NAND3BX4 U5904 ( .AN(n913), .B(n4319), .C(n4318), .Y(n6593) );
  INVX1 U5905 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n333), .Y(
        n4322) );
  NAND3X6 U5906 ( .A(n6272), .B(n5200), .C(n6980), .Y(n4326) );
  INVX1 U5907 ( .A(median_sobel_inst_n423), .Y(n4328) );
  INVX3 U5908 ( .A(n5051), .Y(n4330) );
  NOR2X8 U5909 ( .A(n4330), .B(n4331), .Y(n5300) );
  NOR2X2 U5910 ( .A(conv_inst_data_abc_1_r[8]), .B(conv_inst_conv_1_r[8]), .Y(
        n4332) );
  NOR2X4 U5911 ( .A(conv_inst_conv_1_r[10]), .B(conv_inst_data_abc_1_r[10]), 
        .Y(n5761) );
  INVX3 U5912 ( .A(median_sobel_inst_data_d_r[3]), .Y(n4656) );
  NAND2X2 U5913 ( .A(median_sobel_inst_data_d_r[3]), .B(n4643), .Y(n4642) );
  NAND2X1 U5914 ( .A(n5419), .B(median_sobel_inst_net86174), .Y(n5047) );
  NAND2X1 U5915 ( .A(n5419), .B(median_sobel_inst_n1045), .Y(n4915) );
  MXI2X1 U5916 ( .A(median_sobel_inst_n248), .B(n1879), .S0(n5848), .Y(
        median_sobel_inst_med_sobel_e_wait_r[22]) );
  NAND2X6 U5917 ( .A(n4876), .B(n4337), .Y(n5297) );
  NAND2X2 U5918 ( .A(n4341), .B(n4339), .Y(n4338) );
  NAND2X2 U5919 ( .A(n3645), .B(n4340), .Y(n4339) );
  INVX1 U5920 ( .A(median_sobel_inst_n932), .Y(n4340) );
  NAND2X2 U5921 ( .A(n5225), .B(median_sobel_inst_net86174), .Y(n4341) );
  INVX3 U5922 ( .A(n4875), .Y(n4342) );
  NAND2X4 U5923 ( .A(n5884), .B(n4345), .Y(n4344) );
  NAND3X6 U5924 ( .A(n4354), .B(n4349), .C(n4348), .Y(
        median_sobel_inst_u_median_filter_submodule_a69_w) );
  AOI21X4 U5925 ( .A0(n4747), .A1(n4352), .B0(n4350), .Y(n4349) );
  AOI21X4 U5926 ( .A0(n4618), .A1(n4617), .B0(n5530), .Y(n4350) );
  NOR2X2 U5927 ( .A(n5453), .B(median_sobel_inst_data_f_r[5]), .Y(n4352) );
  AND3X8 U5928 ( .A(n4745), .B(n4353), .C(n4894), .Y(n5453) );
  AND2X4 U5929 ( .A(n4570), .B(n4893), .Y(n4353) );
  NAND2X4 U5930 ( .A(n4356), .B(n4355), .Y(n4354) );
  NAND2X4 U5931 ( .A(n4359), .B(n4357), .Y(n4356) );
  AOI21X2 U5932 ( .A0(n4750), .A1(median_sobel_inst_data_i_r[4]), .B0(n4358), 
        .Y(n4357) );
  OAI2BB1X4 U5933 ( .A0N(n5449), .A1N(median_sobel_inst_data_f_r[2]), .B0(
        n4751), .Y(n4359) );
  INVX3 U5934 ( .A(n4360), .Y(n5476) );
  NAND2X2 U5935 ( .A(n5475), .B(median_sobel_inst_data_h_r[0]), .Y(n4360) );
  AND2X4 U5936 ( .A(n4862), .B(n4362), .Y(n4361) );
  NAND2X2 U5937 ( .A(n5346), .B(median_sobel_inst_n695), .Y(n4362) );
  NOR2BX4 U5938 ( .AN(n5417), .B(n4365), .Y(n4364) );
  OAI2BB1X4 U5939 ( .A0N(n4568), .A1N(n4647), .B0(n5418), .Y(n4365) );
  INVX1 U5940 ( .A(median_sobel_inst_n451), .Y(n4367) );
  NAND2X2 U5941 ( .A(median_sobel_inst_n296), .B(n4366), .Y(n5403) );
  NAND2X2 U5942 ( .A(n4366), .B(median_sobel_inst_n964), .Y(n4860) );
  NAND2X2 U5943 ( .A(n4366), .B(median_sobel_inst_n1051), .Y(n4841) );
  NAND2X2 U5944 ( .A(n4366), .B(median_sobel_inst_n116), .Y(n4847) );
  NOR2X1 U5945 ( .A(n4366), .B(median_sobel_inst_u_sober_compare_submodule_n44), .Y(median_sobel_inst_u_sober_compare_submodule_N29) );
  AOI2BB2X4 U5946 ( .B0(n5699), .B1(median_sobel_inst_net86174), .A0N(n4371), 
        .A1N(n5860), .Y(n4887) );
  INVX3 U5947 ( .A(n5419), .Y(n4371) );
  NAND2X2 U5948 ( .A(conv_inst_data_bcd_4_r[5]), .B(conv_inst_n44), .Y(n5734)
         );
  NOR2X1 U5949 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n4373) );
  NOR2X4 U5950 ( .A(n4375), .B(n4374), .Y(conv_inst_N285) );
  XOR2X4 U5951 ( .A(n4376), .B(conv_inst_n106), .Y(n4375) );
  OAI21X2 U5952 ( .A0(n4379), .A1(n5341), .B0(n4377), .Y(n4376) );
  NAND2BX2 U5953 ( .AN(n7011), .B(n4378), .Y(n4377) );
  INVX2 U5954 ( .A(n7014), .Y(n4378) );
  CLKINVX1 U5955 ( .A(n7013), .Y(n4380) );
  NAND2X4 U5956 ( .A(n4398), .B(n6198), .Y(n4383) );
  NOR2X2 U5957 ( .A(n3575), .B(n7208), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1170) );
  NOR2X2 U5958 ( .A(n3575), .B(n7402), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1230) );
  NOR2X2 U5959 ( .A(n3575), .B(n3574), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1250) );
  NOR2X2 U5960 ( .A(n3575), .B(n3551), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1160) );
  NOR2X2 U5961 ( .A(n3575), .B(n4392), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1210) );
  AOI21X4 U5962 ( .A0(n6252), .A1(n4396), .B0(n4394), .Y(n4393) );
  NAND3BX4 U5963 ( .AN(n6251), .B(n4396), .C(n6748), .Y(n4395) );
  OAI21X4 U5964 ( .A0(n5411), .A1(n6034), .B0(n6032), .Y(n6198) );
  NAND2X2 U5965 ( .A(n7234), .B(cnt[1]), .Y(n5327) );
  NAND2X4 U5966 ( .A(n4400), .B(n6970), .Y(n6968) );
  NAND2X2 U5967 ( .A(n4401), .B(n4402), .Y(n4400) );
  NAND2BX4 U5968 ( .AN(n4489), .B(n4816), .Y(n4403) );
  INVX12 U5969 ( .A(n5859), .Y(n5819) );
  NAND2X4 U5970 ( .A(n4405), .B(n4404), .Y(conv_inst_data_bcd_w[8]) );
  NAND4X4 U5971 ( .A(n5267), .B(n4408), .C(n4410), .D(n6976), .Y(n4404) );
  NOR2X4 U5972 ( .A(n5218), .B(n5214), .Y(n5219) );
  NAND2X2 U5973 ( .A(n5213), .B(n5217), .Y(n4417) );
  NAND2X4 U5974 ( .A(n4420), .B(n5212), .Y(n4419) );
  INVX8 U5975 ( .A(n4421), .Y(n6965) );
  AND2X4 U5976 ( .A(n4425), .B(input_data_ready_r[21]), .Y(n4421) );
  OR2X8 U5977 ( .A(n6970), .B(n4423), .Y(n4424) );
  OA21X4 U5978 ( .A0(n5351), .A1(n5352), .B0(n6637), .Y(n4448) );
  OAI21X4 U5979 ( .A0(n4453), .A1(n4450), .B0(n4449), .Y(n5168) );
  AOI2BB2X2 U5980 ( .B0(median_sobel_inst_u_median_filter_submodule_n930), 
        .B1(median_sobel_inst_u_median_filter_submodule_n146), .A0N(
        median_sobel_inst_u_median_filter_submodule_n1303), .A1N(
        median_sobel_inst_u_median_filter_submodule_n777), .Y(n4449) );
  OAI2BB1X2 U5981 ( .A0N(median_sobel_inst_u_median_filter_submodule_n926), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n151), .B0(n4451), 
        .Y(n4450) );
  NAND2BX2 U5982 ( .AN(n4452), .B(
        median_sobel_inst_u_median_filter_submodule_n1303), .Y(n4451) );
  INVXL U5983 ( .A(median_sobel_inst_u_median_filter_submodule_n777), .Y(n4452) );
  NOR2X4 U5984 ( .A(n4456), .B(n4454), .Y(n4453) );
  NOR2BX2 U5985 ( .AN(n4455), .B(
        median_sobel_inst_u_median_filter_submodule_n151), .Y(n4454) );
  INVXL U5986 ( .A(median_sobel_inst_u_median_filter_submodule_n926), .Y(n4455) );
  NOR2X4 U5987 ( .A(n5166), .B(n4457), .Y(n4456) );
  OA21X4 U5988 ( .A0(median_sobel_inst_u_median_filter_submodule_n779), .A1(
        n5165), .B0(median_sobel_inst_u_median_filter_submodule_n234), .Y(
        n4457) );
  INVX2 U5989 ( .A(median_sobel_inst_u_median_filter_submodule_n232), .Y(n5165) );
  AOI2BB2X4 U5990 ( .B0(n4461), .B1(n4460), .A0N(n5589), .A1N(n4459), .Y(n4458) );
  CLKINVX1 U5991 ( .A(n5588), .Y(n4461) );
  INVX12 U5992 ( .A(n4040), .Y(n5808) );
  NOR2X4 U5993 ( .A(n4464), .B(n5218), .Y(n4463) );
  INVX3 U5994 ( .A(n5216), .Y(n4464) );
  NAND2BX2 U5995 ( .AN(n7584), .B(input_data_ready_r[31]), .Y(n5216) );
  NAND2BX4 U5996 ( .AN(n4465), .B(n7493), .Y(n5814) );
  AOI21X4 U5997 ( .A0(n4466), .A1(n4477), .B0(n4474), .Y(
        median_sobel_inst_u_median_filter_submodule_a25_w) );
  AOI21X4 U5998 ( .A0(n4486), .A1(n4484), .B0(n4482), .Y(n4466) );
  INVX12 U5999 ( .A(n7248), .Y(n445) );
  OR2X8 U6000 ( .A(op_mode_r_2_), .B(n5308), .Y(n4468) );
  NAND2X4 U6001 ( .A(n5440), .B(n4476), .Y(n4475) );
  NOR2X2 U6002 ( .A(n4691), .B(median_sobel_inst_data_e_r[6]), .Y(n4476) );
  NAND3X4 U6003 ( .A(n4481), .B(n4716), .C(n4479), .Y(n4478) );
  INVX3 U6004 ( .A(n4480), .Y(n4479) );
  NOR2X4 U6005 ( .A(n5438), .B(median_sobel_inst_data_b_r[5]), .Y(n4480) );
  OR2X4 U6006 ( .A(n4776), .B(n5437), .Y(n4481) );
  CLKINVX1 U6007 ( .A(median_sobel_inst_data_b_r[4]), .Y(n4483) );
  AOI21X4 U6008 ( .A0(n4485), .A1(n4775), .B0(n5436), .Y(n4484) );
  AOI22X4 U6009 ( .A0(n5431), .A1(median_sobel_inst_data_e_r[2]), .B0(
        median_sobel_inst_data_e_r[1]), .B1(n5477), .Y(n4485) );
  AOI21X4 U6010 ( .A0(n4729), .A1(median_sobel_inst_data_h_r[2]), .B0(n4488), 
        .Y(n4487) );
  NAND2X2 U6011 ( .A(n4815), .B(n4818), .Y(n4489) );
  INVX3 U6012 ( .A(median_sobel_inst_data_e_r[1]), .Y(n4496) );
  NAND2BX1 U6013 ( .AN(n5841), .B(n4499), .Y(N844) );
  NAND2BX1 U6014 ( .AN(n5842), .B(n4499), .Y(N843) );
  NAND2BX1 U6015 ( .AN(n5843), .B(n4499), .Y(N842) );
  NOR2X4 U6016 ( .A(n4501), .B(n4500), .Y(conv_inst_N268) );
  CLKINVX1 U6017 ( .A(n7052), .Y(n4500) );
  OAI22X2 U6018 ( .A0(n5109), .A1(n4503), .B0(n7051), .B1(n7056), .Y(n4502) );
  OR2X2 U6019 ( .A(n7055), .B(n7051), .Y(n4503) );
  NOR2X6 U6020 ( .A(conv_inst_n37), .B(conv_inst_data_abc_3_r[10]), .Y(n7068)
         );
  NAND2X2 U6021 ( .A(conv_inst_conv_3_r[12]), .B(conv_inst_conv_3_r[11]), .Y(
        n5110) );
  AOI21X2 U6022 ( .A0(n4240), .A1(n6863), .B0(n6864), .Y(n6537) );
  INVX3 U6023 ( .A(n4504), .Y(n4505) );
  OAI22X1 U6024 ( .A0(n1938), .A1(n7268), .B0(n1866), .B1(n6616), .Y(n6059) );
  NOR2X1 U6025 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n640), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n38), .Y(n6679) );
  OAI22X2 U6026 ( .A0(median_sobel_inst_data_g_r[4]), .A1(n5296), .B0(n5300), 
        .B1(median_sobel_inst_data_g_r[5]), .Y(n5084) );
  NAND2X2 U6027 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n325), .Y(n6837) );
  INVX20 U6028 ( .A(n5805), .Y(n5699) );
  AND3X2 U6029 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n375), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n58), .Y(n4507) );
  INVX1 U6030 ( .A(n4508), .Y(n4509) );
  NOR2BX2 U6031 ( .AN(n4510), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n70), .Y(n5904) );
  NOR2X4 U6032 ( .A(conv_inst_conv_4_r[3]), .B(conv_inst_data_bcd_4_r[3]), .Y(
        n5958) );
  NAND3X4 U6033 ( .A(n5173), .B(n7453), .C(
        median_sobel_inst_u_median_filter_submodule_n963), .Y(n4615) );
  AO21X2 U6034 ( .A0(n3577), .A1(
        median_sobel_inst_u_median_filter_submodule_n1224), .B0(n7163), .Y(
        median_sobel_inst_u_median_filter_submodule_n1584) );
  OAI2BB2X1 U6035 ( .B0(n4517), .B1(n4518), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n41), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n320), .Y(n4516) );
  BUFX20 U6036 ( .A(n5809), .Y(n4647) );
  NOR2X1 U6037 ( .A(n7137), .B(n7142), .Y(N717) );
  AOI211X1 U6038 ( .A0(n7404), .A1(n7141), .B0(n7136), .C0(n7135), .Y(n7137)
         );
  CLKINVX1 U6039 ( .A(n4519), .Y(n4520) );
  INVX3 U6040 ( .A(n877), .Y(n7256) );
  NAND2X2 U6041 ( .A(n4782), .B(n5526), .Y(n4566) );
  OAI21X2 U6042 ( .A0(median_sobel_inst_u_sober_compare_submodule_n377), .A1(
        median_sobel_inst_u_sober_compare_submodule_n272), .B0(n6623), .Y(
        n6624) );
  NAND4X2 U6043 ( .A(n6218), .B(n6217), .C(median_sobel_inst_n400), .D(
        median_sobel_inst_cnt_4_), .Y(n6335) );
  OR2X4 U6044 ( .A(n4523), .B(n7417), .Y(n6994) );
  INVX20 U6045 ( .A(n4834), .Y(n4524) );
  INVX12 U6046 ( .A(n4834), .Y(n5415) );
  NAND2X2 U6047 ( .A(median_sobel_inst_data_d_r[5]), .B(n3661), .Y(n4703) );
  XNOR2X1 U6048 ( .A(n6586), .B(median_sobel_inst_cnt_4_), .Y(n6417) );
  OAI21X2 U6049 ( .A0(n7211), .A1(n5356), .B0(n5355), .Y(out_data_wait_r[2])
         );
  INVX6 U6050 ( .A(median_sobel_inst_data_d_r[1]), .Y(n5294) );
  OAI21X2 U6051 ( .A0(median_sobel_inst_u_median_filter_submodule_n827), .A1(
        n7217), .B0(n7212), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[3]) );
  OA22X4 U6052 ( .A0(median_sobel_inst_u_median_filter_submodule_n833), .A1(
        n4540), .B0(n4537), .B1(
        median_sobel_inst_u_median_filter_submodule_n840), .Y(n7212) );
  OR2X4 U6053 ( .A(n7340), .B(n7339), .Y(n7341) );
  NAND2BX4 U6054 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n366), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n4), .Y(n5931) );
  OAI21X4 U6055 ( .A0(n4802), .A1(n6111), .B0(n6109), .Y(n6006) );
  NAND2X2 U6056 ( .A(n5683), .B(median_sobel_inst_n296), .Y(n5182) );
  NAND2BX4 U6057 ( .AN(n7231), .B(n7233), .Y(n6636) );
  INVXL U6058 ( .A(median_sobel_inst_u_sober_compare_submodule_n43), .Y(n6625)
         );
  AOI21X1 U6059 ( .A0(median_sobel_inst_u_median_filter_submodule_n1224), .A1(
        median_sobel_inst_u_median_filter_submodule_n168), .B0(
        median_sobel_inst_u_median_filter_submodule_n814), .Y(n5614) );
  OR2X4 U6060 ( .A(n4719), .B(n4723), .Y(n4564) );
  BUFX16 U6061 ( .A(n5805), .Y(n4719) );
  INVX16 U6062 ( .A(n4347), .Y(n5419) );
  INVX6 U6063 ( .A(n7091), .Y(n7097) );
  OAI21X1 U6064 ( .A0(n6042), .A1(n5301), .B0(n6041), .Y(n6047) );
  AND2X4 U6065 ( .A(n4756), .B(median_sobel_inst_n941), .Y(n4567) );
  BUFX12 U6066 ( .A(n5425), .Y(n5681) );
  NAND2X4 U6067 ( .A(n5788), .B(n7149), .Y(n5789) );
  AOI22X2 U6068 ( .A0(n4411), .A1(
        median_sobel_inst_u_median_filter_submodule_n219), .B0(
        median_sobel_inst_u_median_filter_submodule_n1095), .B1(n4311), .Y(
        n7144) );
  AOI21X1 U6069 ( .A0(n6853), .A1(n6851), .B0(n5133), .Y(n5134) );
  AOI2BB1X2 U6070 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n44), .Y(n6388) );
  NOR2X4 U6071 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(n6549) );
  AOI21X1 U6072 ( .A0(n6830), .A1(n5253), .B0(n5252), .Y(n5254) );
  NOR2X4 U6073 ( .A(n5432), .B(median_sobel_inst_data_h_r[2]), .Y(n4730) );
  NAND3X1 U6074 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n640), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n38), .C(n6681), .Y(n6682) );
  INVX2 U6075 ( .A(n6680), .Y(n6681) );
  NAND2X2 U6076 ( .A(conv_inst_conv_3_r[6]), .B(conv_inst_data_abc_3_r[6]), 
        .Y(n5704) );
  AOI2BB2X2 U6077 ( .B0(n7487), .B1(n5609), .A0N(
        median_sobel_inst_u_median_filter_submodule_n1095), .A1N(n7162), .Y(
        n5610) );
  NAND2X1 U6078 ( .A(median_sobel_inst_u_median_filter_submodule_n1095), .B(
        n7162), .Y(n5609) );
  OA22X4 U6079 ( .A0(n4540), .A1(n5489), .B0(n4537), .B1(
        median_sobel_inst_u_median_filter_submodule_n838), .Y(n5490) );
  NOR2X4 U6080 ( .A(median_sobel_inst_u_median_filter_submodule_n842), .B(
        n7460), .Y(n4959) );
  INVX3 U6081 ( .A(n6883), .Y(n6885) );
  AOI21X1 U6082 ( .A0(n4880), .A1(n6815), .B0(n6814), .Y(n6818) );
  NAND2X2 U6083 ( .A(n5153), .B(n5152), .Y(n5157) );
  XOR2X2 U6084 ( .A(n6783), .B(n6782), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]) );
  AOI21X1 U6085 ( .A0(n6779), .A1(n6778), .B0(n6777), .Y(n6783) );
  XOR2X2 U6086 ( .A(n6534), .B(n6533), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]) );
  BUFX20 U6087 ( .A(n5809), .Y(n5858) );
  INVX20 U6088 ( .A(n5805), .Y(n5809) );
  INVX20 U6089 ( .A(n4834), .Y(n5683) );
  BUFX12 U6090 ( .A(net52777), .Y(n4542) );
  NAND3X1 U6091 ( .A(n7252), .B(n7256), .C(n7255), .Y(n7253) );
  BUFX12 U6092 ( .A(n5415), .Y(n5884) );
  NAND2X1 U6093 ( .A(n6505), .B(conv_inst_n40), .Y(n6506) );
  INVX3 U6094 ( .A(n7352), .Y(n6505) );
  NAND2X4 U6095 ( .A(conv_inst_n37), .B(conv_inst_data_abc_3_r[10]), .Y(n7076)
         );
  NOR2X4 U6096 ( .A(n5466), .B(n7018), .Y(n5465) );
  AOI21X2 U6097 ( .A0(n6904), .A1(n6900), .B0(n4180), .Y(n5306) );
  OAI21X2 U6098 ( .A0(n5023), .A1(n6819), .B0(n6821), .Y(n5024) );
  INVX3 U6099 ( .A(n6827), .Y(n5023) );
  OAI21X1 U6100 ( .A0(median_sobel_inst_u_median_filter_submodule_n1588), .A1(
        median_sobel_inst_u_median_filter_submodule_n1138), .B0(n5610), .Y(
        n5611) );
  AOI21X2 U6101 ( .A0(n6790), .A1(n6789), .B0(n3705), .Y(n6794) );
  AND2X2 U6102 ( .A(n7090), .B(n7358), .Y(conv_inst_N262) );
  OAI21X2 U6103 ( .A0(n7208), .A1(
        median_sobel_inst_u_sober_compare_submodule_n43), .B0(
        median_sobel_inst_u_sober_compare_submodule_n40), .Y(n6626) );
  XOR2X2 U6104 ( .A(n6794), .B(n6793), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]) );
  OAI21X4 U6105 ( .A0(n6155), .A1(n6158), .B0(n6156), .Y(n5950) );
  NOR2X4 U6106 ( .A(conv_inst_data_abc_1_r[1]), .B(conv_inst_conv_1_r[1]), .Y(
        n6155) );
  BUFX20 U6107 ( .A(n7214), .Y(n4537) );
  NOR2X2 U6108 ( .A(n5110), .B(n7076), .Y(n5111) );
  AOI2BB2X2 U6109 ( .B0(n4505), .B1(
        median_sobel_inst_u_sober_compare_submodule_n295), .A0N(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[4]), .A1N(n7477), 
        .Y(n6623) );
  INVX3 U6110 ( .A(n6911), .Y(n6913) );
  OR2X8 U6111 ( .A(n6949), .B(n6910), .Y(n6911) );
  XNOR2X2 U6112 ( .A(n6716), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N158) );
  AOI21X2 U6113 ( .A0(n6739), .A1(n6715), .B0(n6714), .Y(n6716) );
  NOR2X4 U6114 ( .A(median_sobel_inst_u_median_filter_submodule_n834), .B(
        n5489), .Y(n4992) );
  AND2X4 U6115 ( .A(n4913), .B(n7480), .Y(n6987) );
  NOR2X2 U6116 ( .A(n6219), .B(median_sobel_inst_n399), .Y(n4657) );
  NAND2X1 U6117 ( .A(median_sobel_inst_u_median_filter_submodule_n200), .B(
        n7171), .Y(n5619) );
  INVX3 U6118 ( .A(median_sobel_inst_u_median_filter_submodule_n216), .Y(n7171) );
  OAI21X2 U6119 ( .A0(n6883), .A1(n6880), .B0(n6884), .Y(n6875) );
  NAND2X2 U6120 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n6880) );
  BUFX20 U6121 ( .A(n7213), .Y(n4540) );
  NOR2X2 U6122 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), .Y(n5276) );
  NAND2X2 U6123 ( .A(n5151), .B(n5164), .Y(n5153) );
  NAND2X2 U6124 ( .A(n5151), .B(n5165), .Y(n5139) );
  NAND2X2 U6125 ( .A(median_sobel_inst_u_median_filter_submodule_n1592), .B(
        median_sobel_inst_u_median_filter_submodule_n780), .Y(n5151) );
  INVX4 U6126 ( .A(n7249), .Y(n6556) );
  OAI21X2 U6127 ( .A0(n6710), .A1(n6733), .B0(n6723), .Y(n6711) );
  NOR3X4 U6128 ( .A(n4530), .B(n7417), .C(n4790), .Y(n7006) );
  OAI21X1 U6129 ( .A0(n4530), .A1(n7417), .B0(n6995), .Y(n6996) );
  OAI31X1 U6130 ( .A0(cnt[8]), .A1(n7001), .A2(n4530), .B0(n6994), .Y(n3508)
         );
  NOR2X1 U6131 ( .A(n6717), .B(n7401), .Y(n6738) );
  NAND2X4 U6132 ( .A(n5857), .B(median_sobel_inst_n159), .Y(n4807) );
  OAI21X1 U6133 ( .A0(n7353), .A1(n7352), .B0(n7351), .Y(n7354) );
  OR2X4 U6134 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .B(
        median_sobel_inst_u_median_filter_submodule_n653), .Y(n5799) );
  NAND3X2 U6135 ( .A(n7010), .B(n7005), .C(n7538), .Y(n7007) );
  OA22X4 U6136 ( .A0(n4540), .A1(n5491), .B0(n4537), .B1(
        median_sobel_inst_u_median_filter_submodule_n841), .Y(n5492) );
  OA22X4 U6137 ( .A0(median_sobel_inst_u_median_filter_submodule_n317), .A1(
        n4540), .B0(n4537), .B1(
        median_sobel_inst_u_median_filter_submodule_n835), .Y(n5494) );
  NAND2X4 U6138 ( .A(n6577), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .Y(n6575) );
  OAI21X2 U6139 ( .A0(n7161), .A1(
        median_sobel_inst_u_median_filter_submodule_n810), .B0(n7144), .Y(
        median_sobel_inst_u_median_filter_submodule_n1578) );
  OAI211X1 U6140 ( .A0(n7256), .A1(n7255), .B0(n7254), .C0(n7253), .Y(N817) );
  NAND2X2 U6141 ( .A(n4535), .B(n6882), .Y(n5515) );
  NAND2BX4 U6142 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n346), .B(
        n6012), .Y(n6123) );
  NOR2X6 U6143 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n318), .B(
        n5933), .Y(n6012) );
  OAI2BB1X4 U6144 ( .A0N(n6848), .A1N(n6844), .B0(n6847), .Y(n6830) );
  OAI2BB2X2 U6145 ( .B0(n4522), .B1(n7251), .A0N(n7250), .A1N(n4228), .Y(n7254) );
  NOR3X2 U6146 ( .A(n7261), .B(n4515), .C(n7247), .Y(n7251) );
  NAND2X2 U6147 ( .A(median_sobel_inst_u_median_filter_submodule_n834), .B(
        n5489), .Y(n4991) );
  INVX3 U6148 ( .A(median_sobel_inst_u_median_filter_submodule_n1093), .Y(
        n5489) );
  NOR4X2 U6149 ( .A(cnt[6]), .B(n7317), .C(cnt[7]), .D(n7008), .Y(n7005) );
  INVX3 U6150 ( .A(n6837), .Y(n6844) );
  INVX2 U6151 ( .A(median_sobel_inst_u_median_filter_submodule_n219), .Y(n5618) );
  NAND2X4 U6152 ( .A(n6579), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n1), .Y(n6566) );
  NOR2BX2 U6153 ( .AN(median_sobel_inst_u_median_filter_submodule_n840), .B(
        median_sobel_inst_u_median_filter_submodule_n827), .Y(n4965) );
  AND2X2 U6154 ( .A(median_sobel_inst_u_median_filter_submodule_n893), .B(
        median_sobel_inst_u_median_filter_submodule_n841), .Y(n4963) );
  NOR2X4 U6155 ( .A(conv_inst_n182), .B(conv_inst_conv_3_r[3]), .Y(n5987) );
  NAND2XL U6156 ( .A(x_plus_one_r[1]), .B(n7485), .Y(n7294) );
  NAND2X4 U6157 ( .A(n5102), .B(n4515), .Y(n6555) );
  NAND2X4 U6158 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(n6384) );
  NAND2X1 U6159 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6266)
         );
  NAND2X2 U6160 ( .A(median_sobel_inst_n759), .B(n4711), .Y(n4710) );
  NOR2X4 U6161 ( .A(n5450), .B(n4700), .Y(n4699) );
  NOR2X4 U6162 ( .A(n5458), .B(n4739), .Y(n5461) );
  NAND2X2 U6163 ( .A(n4743), .B(n4740), .Y(n4739) );
  NAND2X2 U6164 ( .A(n7345), .B(n7295), .Y(n4624) );
  CLKINVX1 U6165 ( .A(n5391), .Y(n4655) );
  NAND2X1 U6166 ( .A(n4787), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n6359) );
  INVX4 U6167 ( .A(n6713), .Y(n6743) );
  OR2X4 U6168 ( .A(n5528), .B(n5535), .Y(n4766) );
  MXI2X1 U6169 ( .A(median_sobel_inst_n935), .B(median_sobel_inst_n215), .S0(
        n3789), .Y(n7527) );
  NAND2X2 U6170 ( .A(n4722), .B(median_sobel_inst_n1035), .Y(n4810) );
  OAI21X1 U6171 ( .A0(median_sobel_inst_u_median_filter_submodule_n839), .A1(
        median_sobel_inst_u_median_filter_submodule_n867), .B0(
        median_sobel_inst_u_median_filter_submodule_n838), .Y(n4962) );
  INVX3 U6172 ( .A(median_sobel_inst_n779), .Y(n4708) );
  NAND2X1 U6173 ( .A(n5683), .B(median_sobel_inst_n97), .Y(n5051) );
  NAND2X2 U6174 ( .A(n4559), .B(n4647), .Y(n4681) );
  INVX3 U6175 ( .A(n5656), .Y(n5657) );
  NAND3X2 U6176 ( .A(n6677), .B(n6676), .C(n6675), .Y(n6686) );
  AND2X1 U6177 ( .A(n7370), .B(n4795), .Y(n4621) );
  NOR2BX1 U6178 ( .AN(n6694), .B(n6693), .Y(n6695) );
  NAND2BX1 U6179 ( .AN(n7499), .B(n6692), .Y(n6693) );
  OAI21XL U6180 ( .A0(n6691), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n643), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n312), .Y(n6694) );
  NAND3XL U6181 ( .A(n7393), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n643), .C(n7542), .Y(
        n6692) );
  NOR2X1 U6182 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6067) );
  CLKINVX1 U6183 ( .A(n5681), .Y(n4755) );
  NAND2BX1 U6184 ( .AN(median_sobel_inst_n1161), .B(n6229), .Y(n5042) );
  OAI21X2 U6185 ( .A0(n4609), .A1(n6222), .B0(n6225), .Y(n4803) );
  NOR2X1 U6186 ( .A(n5301), .B(n6043), .Y(n5303) );
  NAND3X2 U6187 ( .A(n5622), .B(
        median_sobel_inst_u_median_filter_submodule_n821), .C(n5621), .Y(n5623) );
  NOR2X2 U6188 ( .A(conv_inst_n41), .B(conv_inst_data_abc_3_r[4]), .Y(n5707)
         );
  NOR2X4 U6189 ( .A(n6149), .B(n5987), .Y(n4626) );
  NAND2X1 U6190 ( .A(conv_inst_conv_3_r[13]), .B(conv_inst_conv_3_r[14]), .Y(
        n7051) );
  CLKINVX1 U6191 ( .A(median_sobel_inst_data_b_r[3]), .Y(n4733) );
  INVX3 U6192 ( .A(n5440), .Y(n4769) );
  INVX2 U6193 ( .A(median_sobel_inst_data_e_r[5]), .Y(n5438) );
  NAND3X2 U6194 ( .A(n5430), .B(n5475), .C(median_sobel_inst_data_e_r[0]), .Y(
        n4775) );
  INVX3 U6195 ( .A(n7217), .Y(n5380) );
  NAND2X1 U6196 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n5382) );
  INVX1 U6197 ( .A(n6299), .Y(n6301) );
  INVXL U6198 ( .A(n6359), .Y(n6278) );
  AND2X2 U6199 ( .A(n7293), .B(n7294), .Y(n4677) );
  NOR2X1 U6200 ( .A(n5276), .B(n5033), .Y(n6341) );
  NAND2X2 U6201 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        n4527), .Y(n6797) );
  NAND2X2 U6202 ( .A(n7335), .B(x_minus_one_r[2]), .Y(n4678) );
  OAI22X2 U6203 ( .A0(median_sobel_inst_data_g_r[1]), .A1(n5294), .B0(n5295), 
        .B1(n3527), .Y(n5089) );
  INVXL U6204 ( .A(n6114), .Y(n6557) );
  INVX1 U6205 ( .A(n5776), .Y(n6248) );
  INVX1 U6206 ( .A(n4940), .Y(n6815) );
  NAND2BX1 U6207 ( .AN(n4549), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n5922) );
  INVX1 U6208 ( .A(n4877), .Y(n6807) );
  NOR2X4 U6209 ( .A(n5648), .B(n4545), .Y(n6327) );
  NAND2X2 U6210 ( .A(n4647), .B(median_sobel_inst_n56), .Y(n5377) );
  NAND2XL U6211 ( .A(conv_inst_n37), .B(n6937), .Y(n6938) );
  OA22X2 U6212 ( .A0(conv_inst_n235), .A1(n6936), .B0(n6935), .B1(
        conv_inst_n240), .Y(n6939) );
  NAND2X2 U6213 ( .A(median_sobel_inst_n164), .B(n4524), .Y(n5398) );
  NAND2X1 U6214 ( .A(n6166), .B(n6169), .Y(n6172) );
  OAI21X2 U6215 ( .A0(n5921), .A1(n5924), .B0(n5922), .Y(n6212) );
  OAI21XL U6216 ( .A0(n6720), .A1(n6732), .B0(n6733), .Y(n6721) );
  OAI21X2 U6217 ( .A0(n6287), .A1(n6286), .B0(n6285), .Y(n6461) );
  NOR2X4 U6218 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n364), .B(
        n5931), .Y(n5846) );
  NAND2X2 U6219 ( .A(n4588), .B(n5346), .Y(n4850) );
  OR2X2 U6220 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .Y(n6856)
         );
  NOR2X1 U6221 ( .A(n5381), .B(n5383), .Y(n6903) );
  NAND2X2 U6222 ( .A(n5130), .B(n6524), .Y(n6864) );
  NAND2X1 U6223 ( .A(n4647), .B(n4581), .Y(n4830) );
  NAND2X2 U6224 ( .A(n6336), .B(n6334), .Y(n5122) );
  NAND2X4 U6225 ( .A(n6441), .B(n6340), .Y(n5123) );
  NOR2BX2 U6226 ( .AN(median_sobel_inst_n394), .B(median_sobel_inst_n1054), 
        .Y(n6070) );
  NAND2X6 U6227 ( .A(input_data_ready_r[24]), .B(n7372), .Y(n5896) );
  INVX1 U6228 ( .A(n6399), .Y(n6400) );
  INVX1 U6229 ( .A(n6403), .Y(n6405) );
  INVX1 U6230 ( .A(n5767), .Y(n5769) );
  NAND2X2 U6231 ( .A(conv_inst_data_abc_1_r[1]), .B(conv_inst_conv_1_r[1]), 
        .Y(n6156) );
  INVX1 U6232 ( .A(n6184), .Y(n6185) );
  INVX1 U6233 ( .A(n6187), .Y(n6189) );
  CLKINVX1 U6234 ( .A(n5986), .Y(n6153) );
  NOR2X4 U6235 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), .Y(
        n6138) );
  NAND2X4 U6236 ( .A(conv_inst_conv_2_r[0]), .B(conv_inst_n180), .Y(n6128) );
  INVX1 U6237 ( .A(n6294), .Y(n6016) );
  INVX1 U6238 ( .A(n6317), .Y(n5752) );
  INVX1 U6239 ( .A(n5753), .Y(n5755) );
  NOR2X4 U6240 ( .A(conv_inst_data_abc_1_r[2]), .B(conv_inst_n162), .Y(n6241)
         );
  INVX3 U6241 ( .A(n6613), .Y(n6515) );
  MXI2X1 U6242 ( .A(net46722), .B(op_mode_r_2_), .S0(n5997), .Y(n6000) );
  NAND2X2 U6243 ( .A(n5997), .B(net46722), .Y(n6558) );
  INVXL U6244 ( .A(n5997), .Y(n5815) );
  MXI2X1 U6245 ( .A(median_sobel_inst_n40), .B(median_sobel_inst_n208), .S0(
        n3789), .Y(n7410) );
  NAND3X1 U6246 ( .A(n6999), .B(n6433), .C(n7373), .Y(n6434) );
  INVX1 U6247 ( .A(n6993), .Y(n6433) );
  OAI2BB1X1 U6248 ( .A0N(n6754), .A1N(n6748), .B0(n6751), .Y(n6255) );
  OAI21XL U6249 ( .A0(n5899), .A1(n6385), .B0(n5901), .Y(n5900) );
  NAND2XL U6250 ( .A(n6745), .B(n6744), .Y(n6746) );
  AOI21X1 U6251 ( .A0(n6743), .A1(n6742), .B0(n6741), .Y(n6747) );
  NAND2XL U6252 ( .A(n6089), .B(n6088), .Y(n6091) );
  MXI2X1 U6253 ( .A(median_sobel_inst_n936), .B(median_sobel_inst_n210), .S0(
        n3789), .Y(n7531) );
  MXI2X1 U6254 ( .A(median_sobel_inst_n937), .B(median_sobel_inst_n219), .S0(
        n3789), .Y(n7525) );
  MXI2X1 U6255 ( .A(median_sobel_inst_n33), .B(median_sobel_inst_n214), .S0(
        n3789), .Y(n7528) );
  NAND2X4 U6256 ( .A(n4697), .B(n4695), .Y(
        median_sobel_inst_u_median_filter_submodule_a39_w) );
  NOR2X4 U6257 ( .A(n4696), .B(n5460), .Y(n4695) );
  NAND2X4 U6258 ( .A(n4698), .B(n5461), .Y(n4697) );
  AOI22X2 U6259 ( .A0(n4524), .A1(median_sobel_inst_n1051), .B0(n3645), .B1(
        n7369), .Y(n4896) );
  NAND2XL U6260 ( .A(n6360), .B(n6359), .Y(n6361) );
  AOI21X1 U6261 ( .A0(n6763), .A1(n5413), .B0(n5412), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[10]) );
  NAND2X1 U6262 ( .A(n4524), .B(median_sobel_inst_n948), .Y(n4736) );
  NAND2XL U6263 ( .A(n4905), .B(median_sobel_inst_net88785), .Y(n5076) );
  NAND2X1 U6264 ( .A(n4647), .B(n4587), .Y(n5077) );
  NAND2X1 U6265 ( .A(n4889), .B(n4890), .Y(n4748) );
  NAND2X1 U6266 ( .A(n4905), .B(n4593), .Y(n4758) );
  OAI21X2 U6267 ( .A0(n7180), .A1(
        median_sobel_inst_u_median_filter_submodule_n807), .B0(n5587), .Y(
        median_sobel_inst_u_median_filter_submodule_b5[4]) );
  MXI2X1 U6268 ( .A(n6290), .B(n6289), .S0(cnt[4]), .Y(n3512) );
  NAND2X1 U6269 ( .A(n6431), .B(n6999), .Y(n6290) );
  NOR2XL U6270 ( .A(n7238), .B(cnt[3]), .Y(n6395) );
  NOR2X2 U6271 ( .A(n6648), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n67), .Y(n6646) );
  NAND2X2 U6272 ( .A(n6656), .B(n7490), .Y(n6639) );
  INVXL U6273 ( .A(median_sobel_inst_u_median_filter_submodule_n867), .Y(n4970) );
  NAND2X2 U6274 ( .A(median_sobel_inst_u_median_filter_submodule_n824), .B(
        n7475), .Y(n4980) );
  NAND2XL U6275 ( .A(median_sobel_inst_u_median_filter_submodule_n839), .B(
        median_sobel_inst_u_median_filter_submodule_n867), .Y(n4961) );
  AND2X2 U6276 ( .A(median_sobel_inst_u_median_filter_submodule_n839), .B(
        n4991), .Y(n4994) );
  NOR2BX2 U6277 ( .AN(median_sobel_inst_u_median_filter_submodule_n842), .B(
        median_sobel_inst_u_median_filter_submodule_n832), .Y(n4990) );
  NAND2X1 U6278 ( .A(median_sobel_inst_u_median_filter_submodule_n926), .B(
        median_sobel_inst_u_median_filter_submodule_n176), .Y(n5140) );
  OAI21X2 U6279 ( .A0(n7464), .A1(
        median_sobel_inst_u_median_filter_submodule_n781), .B0(n4614), .Y(
        n4613) );
  OR2X2 U6280 ( .A(n7374), .B(median_sobel_inst_u_median_filter_submodule_n146), .Y(n4614) );
  INVXL U6281 ( .A(n6671), .Y(n6672) );
  INVXL U6282 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n67), .Y(n6674) );
  AND2X2 U6283 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n51), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n103), .Y(n6680) );
  OAI21X1 U6284 ( .A0(n6655), .A1(n6654), .B0(n6653), .Y(n6660) );
  INVX1 U6285 ( .A(n6652), .Y(n6655) );
  NOR2X1 U6286 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6798) );
  OR2X4 U6287 ( .A(median_sobel_inst_u_median_filter_submodule_net87846), .B(
        median_sobel_inst_u_median_filter_submodule_n796), .Y(n5546) );
  NAND2X1 U6288 ( .A(n5555), .B(
        median_sobel_inst_u_median_filter_submodule_net86856), .Y(n5557) );
  OAI21X1 U6289 ( .A0(n7385), .A1(
        median_sobel_inst_u_median_filter_submodule_n829), .B0(n7475), .Y(
        n4978) );
  NOR2X1 U6290 ( .A(median_sobel_inst_u_median_filter_submodule_n824), .B(
        n4536), .Y(n4968) );
  OAI2BB1X2 U6291 ( .A0N(n7379), .A1N(
        median_sobel_inst_u_median_filter_submodule_n844), .B0(n4966), .Y(
        n4967) );
  OAI21X1 U6292 ( .A0(n7385), .A1(
        median_sobel_inst_u_median_filter_submodule_n842), .B0(n7475), .Y(
        n4986) );
  NOR2X4 U6293 ( .A(median_sobel_inst_u_median_filter_submodule_n892), .B(
        n7173), .Y(n5144) );
  INVX3 U6294 ( .A(n1923), .Y(n4666) );
  NAND2X1 U6295 ( .A(n1900), .B(curr_state[3]), .Y(n5320) );
  NAND2X2 U6296 ( .A(n5525), .B(median_sobel_inst_data_i_r[3]), .Y(n4701) );
  NAND2BX2 U6297 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), 
        .B(n4561), .Y(n4882) );
  NAND2BX1 U6298 ( .AN(conv_inst_n277), .B(n4610), .Y(n4612) );
  OR2X4 U6299 ( .A(n5029), .B(n6210), .Y(n5030) );
  INVX1 U6300 ( .A(n5654), .Y(n5650) );
  CLKINVX1 U6301 ( .A(n6826), .Y(n4637) );
  NOR2X2 U6302 ( .A(n5581), .B(n5580), .Y(n5582) );
  AOI21X2 U6303 ( .A0(n5579), .A1(n5578), .B0(n4798), .Y(n5580) );
  OR2X4 U6304 ( .A(median_sobel_inst_u_median_filter_submodule_n793), .B(n7441), .Y(n5579) );
  OAI21XL U6305 ( .A0(n5034), .A1(n6343), .B0(n6349), .Y(n5035) );
  CLKINVX1 U6306 ( .A(median_sobel_inst_u_sober_compare_submodule_n266), .Y(
        n5015) );
  AND2X2 U6307 ( .A(n5544), .B(n5543), .Y(n5551) );
  NAND3X1 U6308 ( .A(n5615), .B(n5614), .C(n5613), .Y(n5617) );
  NAND2X1 U6309 ( .A(median_sobel_inst_u_median_filter_submodule_n822), .B(
        median_sobel_inst_u_median_filter_submodule_n1224), .Y(n5613) );
  AOI2BB2X1 U6310 ( .B0(median_sobel_inst_u_median_filter_submodule_n1216), 
        .B1(median_sobel_inst_u_median_filter_submodule_n1209), .A0N(n7170), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n190), .Y(n5616) );
  AOI2BB2X1 U6311 ( .B0(median_sobel_inst_u_median_filter_submodule_n778), 
        .B1(median_sobel_inst_u_median_filter_submodule_n963), .A0N(
        median_sobel_inst_u_median_filter_submodule_n182), .A1N(n7175), .Y(
        n5161) );
  NAND2X1 U6312 ( .A(n5637), .B(n5646), .Y(n5638) );
  NOR2X4 U6313 ( .A(conv_inst_conv_2_r[3]), .B(conv_inst_data_bcd_2_r[3]), .Y(
        n5939) );
  OAI21X1 U6314 ( .A0(n6299), .A1(n6293), .B0(n6300), .Y(n5499) );
  NOR2X2 U6315 ( .A(n5703), .B(n5367), .Y(n5106) );
  NOR2X4 U6316 ( .A(conv_inst_conv_3_r[9]), .B(conv_inst_data_abc_3_r[9]), .Y(
        n7085) );
  BUFX4 U6317 ( .A(n6308), .Y(n4610) );
  NOR2X2 U6318 ( .A(n5742), .B(n5746), .Y(n5338) );
  NAND2XL U6319 ( .A(conv_inst_conv_4_r[13]), .B(conv_inst_conv_4_r[14]), .Y(
        n7011) );
  OAI22X1 U6320 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n67), .B0(n7198), .B1(
        median_sobel_inst_u_sober_compare_submodule_n149), .Y(n4664) );
  INVXL U6321 ( .A(median_sobel_inst_u_median_filter_submodule_n200), .Y(n7170) );
  NAND2X1 U6322 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n6487) );
  INVX1 U6323 ( .A(n6740), .Y(n6741) );
  NAND2X4 U6324 ( .A(n5649), .B(n4546), .Y(n6330) );
  INVX1 U6325 ( .A(n5778), .Y(n5780) );
  NAND2X1 U6326 ( .A(n4526), .B(n4527), .Y(n6841) );
  NAND2XL U6327 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n371), .Y(n6823) );
  NOR2X1 U6328 ( .A(n2271), .B(n7138), .Y(n6491) );
  NAND2X1 U6329 ( .A(n7077), .B(conv_inst_conv_3_r[11]), .Y(n7062) );
  CLKINVX1 U6330 ( .A(median_sobel_inst_u_median_filter_submodule_n234), .Y(
        n5164) );
  CLKINVX1 U6331 ( .A(n7074), .Y(n7069) );
  NOR2X1 U6332 ( .A(n7055), .B(n5113), .Y(n5115) );
  NOR2X1 U6333 ( .A(n7056), .B(n5113), .Y(n5114) );
  CLKINVX1 U6334 ( .A(n7053), .Y(n4630) );
  OAI21XL U6335 ( .A0(n4515), .A1(n7249), .B0(n7248), .Y(n7250) );
  NOR2X1 U6336 ( .A(n7350), .B(n7352), .Y(n7355) );
  NAND2BX1 U6337 ( .AN(n7273), .B(n7274), .Y(n4785) );
  AND2X2 U6338 ( .A(n7338), .B(n7337), .Y(n7339) );
  NOR2X1 U6339 ( .A(n5394), .B(n5298), .Y(n5090) );
  AND2X2 U6340 ( .A(n6695), .B(n4620), .Y(n4619) );
  CLKINVX1 U6341 ( .A(median_sobel_inst_u_median_filter_submodule_n1076), .Y(
        n5491) );
  INVXL U6342 ( .A(n6555), .Y(n6559) );
  INVX1 U6343 ( .A(n7238), .Y(n7009) );
  NAND2XL U6344 ( .A(n5998), .B(n5997), .Y(n4935) );
  NAND2X2 U6345 ( .A(n4714), .B(median_sobel_inst_n62), .Y(n4909) );
  INVX3 U6346 ( .A(n6272), .Y(n6982) );
  NAND2X2 U6347 ( .A(n4715), .B(median_sobel_inst_n73), .Y(n4926) );
  NAND2X2 U6348 ( .A(n4647), .B(median_sobel_inst_n96), .Y(n4876) );
  INVX1 U6349 ( .A(n6382), .Y(n6267) );
  NOR2X1 U6350 ( .A(n6553), .B(median_sobel_inst_n984), .Y(n4873) );
  NAND2BX2 U6351 ( .AN(median_sobel_inst_n439), .B(n4524), .Y(n4845) );
  NOR2X1 U6352 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .Y(n6883) );
  NAND2X4 U6353 ( .A(n4714), .B(n4591), .Y(n5040) );
  NAND2X2 U6354 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n6591) );
  NAND2X1 U6355 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n48), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .Y(n5926) );
  AOI21X1 U6356 ( .A0(n6875), .A1(n6877), .B0(n5513), .Y(n5514) );
  INVX3 U6357 ( .A(n4609), .Y(n6226) );
  NOR4X4 U6358 ( .A(n6389), .B(n6388), .C(n6387), .D(n6386), .Y(n6390) );
  NAND2X1 U6359 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n8), .B(
        n6382), .Y(n6383) );
  NAND2BX1 U6360 ( .AN(median_sobel_inst_n451), .B(n5414), .Y(n4865) );
  NAND2BX2 U6361 ( .AN(median_sobel_inst_n442), .B(n5858), .Y(n4856) );
  NAND2X1 U6362 ( .A(n5809), .B(median_sobel_inst_n978), .Y(n4890) );
  NAND2BX1 U6363 ( .AN(median_sobel_inst_n442), .B(n5414), .Y(n5062) );
  NAND2BX1 U6364 ( .AN(median_sobel_inst_n983), .B(n3645), .Y(n5060) );
  NAND2X4 U6365 ( .A(n6261), .B(n6260), .Y(n5863) );
  BUFX4 U6366 ( .A(n5805), .Y(n5806) );
  NAND2BX2 U6367 ( .AN(median_sobel_inst_n46), .B(n5121), .Y(n6336) );
  INVX1 U6368 ( .A(n6219), .Y(n6218) );
  NAND3X2 U6369 ( .A(n6070), .B(median_sobel_inst_n46), .C(n5847), .Y(n6340)
         );
  BUFX8 U6370 ( .A(conv_inst_n292), .Y(n5797) );
  INVX1 U6371 ( .A(n5939), .Y(n5941) );
  OAI21X1 U6372 ( .A0(n7022), .A1(n7018), .B0(n7030), .Y(n5342) );
  NAND2X1 U6373 ( .A(conv_inst_conv_4_r[7]), .B(conv_inst_data_bcd_4_r[7]), 
        .Y(n5747) );
  INVXL U6374 ( .A(n6062), .Y(n5708) );
  AND2X1 U6375 ( .A(conv_inst_conv_4_r[14]), .B(conv_inst_conv_4_r[15]), .Y(
        n5464) );
  NOR2X1 U6376 ( .A(n7014), .B(n5469), .Y(n5470) );
  INVX1 U6377 ( .A(n887), .Y(n5895) );
  NAND2X1 U6378 ( .A(n6584), .B(median_sobel_inst_n181), .Y(n6585) );
  AO21X1 U6379 ( .A0(n6743), .A1(n6731), .B0(n6730), .Y(n6736) );
  INVX1 U6380 ( .A(n6092), .Y(n6094) );
  NAND2XL U6381 ( .A(n6275), .B(n6274), .Y(n6276) );
  AND2X1 U6382 ( .A(n6807), .B(n6806), .Y(n6477) );
  MX2X1 U6383 ( .A(net46722), .B(i_op_mode[1]), .S0(i_op_valid), .Y(n441) );
  XOR2X1 U6384 ( .A(n5306), .B(n5305), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N11) );
  INVX1 U6385 ( .A(n5383), .Y(n5304) );
  OAI2BB1X1 U6386 ( .A0N(n6425), .A1N(n6424), .B0(n6423), .Y(n6430) );
  AND2X2 U6387 ( .A(n5372), .B(n7358), .Y(conv_inst_N2600) );
  AOI21X1 U6388 ( .A0(n6065), .A1(n5366), .B0(n5365), .Y(n5371) );
  XNOR2X1 U6389 ( .A(n6846), .B(n6838), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]) );
  OAI22XL U6390 ( .A0(n2261), .A1(n7138), .B0(n2268), .B1(n6616), .Y(n6608) );
  OAI211XL U6391 ( .A0(median_sobel_inst_u_sober_compare_submodule_n67), .A1(
        n5973), .B0(n5913), .C0(n5912), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]) );
  NAND2BX1 U6392 ( .AN(n4605), .B(n6816), .Y(n6817) );
  NAND2XL U6393 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n302), .Y(n5693) );
  NOR2X1 U6394 ( .A(n6061), .B(n7142), .Y(N721) );
  AND2X2 U6395 ( .A(n6304), .B(n7358), .Y(conv_inst_N2430) );
  AND2X2 U6396 ( .A(n7026), .B(n7358), .Y(conv_inst_N282) );
  NAND2XL U6397 ( .A(n6281), .B(n6280), .Y(n6282) );
  INVXL U6398 ( .A(n6279), .Y(n6281) );
  NAND2XL U6399 ( .A(n6742), .B(n6740), .Y(n6451) );
  NAND2BX1 U6400 ( .AN(median_sobel_inst_n125), .B(n5414), .Y(n5417) );
  NAND2X1 U6401 ( .A(n5683), .B(median_sobel_inst_n144), .Y(n5416) );
  MXI2X1 U6402 ( .A(median_sobel_inst_n932), .B(median_sobel_inst_n209), .S0(
        n3789), .Y(n7526) );
  AOI211X1 U6403 ( .A0(n7407), .A1(n7141), .B0(n7140), .C0(n7139), .Y(n7143)
         );
  XOR2X1 U6404 ( .A(n4608), .B(n4885), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]) );
  AOI21X1 U6405 ( .A0(n4880), .A1(n6820), .B0(n6827), .Y(n4608) );
  XOR2X1 U6406 ( .A(n5028), .B(n5027), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]) );
  NAND2XL U6407 ( .A(n5026), .B(n6823), .Y(n5027) );
  AOI21X1 U6408 ( .A0(n4880), .A1(n5025), .B0(n5024), .Y(n5028) );
  AND2X2 U6409 ( .A(n5891), .B(n4538), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]) );
  NAND2XL U6410 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n299), .Y(n5691) );
  INVX1 U6411 ( .A(n6916), .Y(n6912) );
  AND2X2 U6412 ( .A(n6966), .B(n6965), .Y(n6967) );
  CLKINVX1 U6413 ( .A(n4423), .Y(n6966) );
  OAI22XL U6414 ( .A0(n2263), .A1(n7236), .B0(n1904), .B1(n6616), .Y(n6614) );
  OAI22XL U6415 ( .A0(n2260), .A1(n7268), .B0(n2272), .B1(n7138), .Y(n6615) );
  AOI21XL U6416 ( .A0(n5973), .A1(n5910), .B0(n5681), .Y(
        median_sobel_inst_u_sober_compare_submodule_N30) );
  OAI22XL U6417 ( .A0(n1865), .A1(n7236), .B0(n1869), .B1(n6616), .Y(n6611) );
  OAI22XL U6418 ( .A0(n2262), .A1(n7268), .B0(n2266), .B1(n7138), .Y(n6612) );
  XNOR2X1 U6419 ( .A(n7357), .B(conv_inst_n40), .Y(n7359) );
  OAI22XL U6420 ( .A0(n2260), .A1(n7138), .B0(n2263), .B1(n6616), .Y(n6610) );
  NAND2X4 U6421 ( .A(n4401), .B(n3967), .Y(n6974) );
  NAND2XL U6422 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n297), .Y(n5975) );
  OAI22XL U6423 ( .A0(n2270), .A1(n7236), .B0(n1867), .B1(n6616), .Y(n6604) );
  OAI22XL U6424 ( .A0(n2259), .A1(n7138), .B0(n1870), .B1(n7268), .Y(n6603) );
  MX2X1 U6425 ( .A(op_mode_r_2_), .B(i_op_mode[2]), .S0(i_op_valid), .Y(n442)
         );
  OAI22XL U6426 ( .A0(n2262), .A1(n7138), .B0(n1865), .B1(n6616), .Y(n6619) );
  OAI21X1 U6427 ( .A0(n7180), .A1(
        median_sobel_inst_u_median_filter_submodule_n796), .B0(n6409), .Y(
        median_sobel_inst_u_median_filter_submodule_b5[5]) );
  OAI22XL U6428 ( .A0(n1870), .A1(n6616), .B0(n1867), .B1(n7236), .Y(n6606) );
  OAI22XL U6429 ( .A0(n2259), .A1(n7268), .B0(n2270), .B1(n7138), .Y(n6605) );
  NAND2BX1 U6430 ( .AN(median_sobel_inst_n962), .B(n5424), .Y(n4816) );
  OAI2BB1XL U6431 ( .A0N(n6212), .A1N(n6211), .B0(n6210), .Y(n6216) );
  NAND2X1 U6432 ( .A(n4913), .B(median_sobel_inst_n116), .Y(n5404) );
  NAND2BX1 U6433 ( .AN(median_sobel_inst_n937), .B(n5419), .Y(n5421) );
  NAND2X1 U6434 ( .A(median_sobel_inst_n1051), .B(n4913), .Y(n5422) );
  XOR2X1 U6435 ( .A(cnt[6]), .B(n1955), .Y(n5679) );
  XOR2X1 U6436 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n60), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N167) );
  NAND2X1 U6437 ( .A(n5225), .B(median_sobel_inst_n62), .Y(n4863) );
  NAND2XL U6438 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n201), .Y(n5697) );
  NAND2XL U6439 ( .A(n5923), .B(n5922), .Y(n5925) );
  NAND2XL U6440 ( .A(n6202), .B(n6201), .Y(n6203) );
  OAI2BB1X1 U6441 ( .A0N(n6199), .A1N(n6198), .B0(n6197), .Y(n6204) );
  NAND2X2 U6442 ( .A(n5346), .B(median_sobel_inst_n300), .Y(n5378) );
  OAI211X1 U6443 ( .A0(n7276), .A1(n434), .B0(n7242), .C0(n7323), .Y(
        sram_addr_wait_r[33]) );
  OAI211X1 U6444 ( .A0(n7276), .A1(n436), .B0(n7240), .C0(n7319), .Y(
        sram_addr_wait_r[35]) );
  OAI211X1 U6445 ( .A0(n7276), .A1(n435), .B0(n7241), .C0(n7321), .Y(
        sram_addr_wait_r[34]) );
  OAI211X1 U6446 ( .A0(n7276), .A1(n432), .B0(n7244), .C0(n7327), .Y(
        sram_addr_wait_r[31]) );
  OAI211X1 U6447 ( .A0(n7276), .A1(n429), .B0(n7267), .C0(n7333), .Y(
        sram_addr_wait_r[28]) );
  OAI211X1 U6448 ( .A0(n7346), .A1(n407), .B0(n7330), .C0(n7329), .Y(
        sram_addr_wait_r[3]) );
  OAI211X1 U6449 ( .A0(n7346), .A1(n408), .B0(n7328), .C0(n7327), .Y(
        sram_addr_wait_r[4]) );
  OAI211X1 U6450 ( .A0(n7346), .A1(n411), .B0(n7322), .C0(n7321), .Y(
        sram_addr_wait_r[7]) );
  OAI211X1 U6451 ( .A0(n7346), .A1(n412), .B0(n7320), .C0(n7319), .Y(
        sram_addr_wait_r[8]) );
  OAI211X1 U6452 ( .A0(n7346), .A1(n410), .B0(n7324), .C0(n7323), .Y(
        sram_addr_wait_r[6]) );
  OAI211X1 U6453 ( .A0(n7346), .A1(n406), .B0(n7332), .C0(n7331), .Y(
        sram_addr_wait_r[2]) );
  OAI211X1 U6454 ( .A0(n7346), .A1(n409), .B0(n7326), .C0(n7325), .Y(
        sram_addr_wait_r[5]) );
  OAI211X1 U6455 ( .A0(n7346), .A1(n405), .B0(n7334), .C0(n7333), .Y(
        sram_addr_wait_r[1]) );
  NAND2X1 U6456 ( .A(n5225), .B(median_sobel_inst_net84226), .Y(n4846) );
  OAI211X1 U6457 ( .A0(n7291), .A1(n7492), .B0(n7283), .C0(n7319), .Y(
        sram_addr_wait_r[26]) );
  OAI211X1 U6458 ( .A0(n7291), .A1(n7417), .B0(n7285), .C0(n7323), .Y(
        sram_addr_wait_r[24]) );
  OAI211X1 U6459 ( .A0(n7291), .A1(n4790), .B0(n7284), .C0(n7321), .Y(
        sram_addr_wait_r[25]) );
  OAI211X1 U6460 ( .A0(n7291), .A1(n7538), .B0(n7329), .C0(n7288), .Y(
        sram_addr_wait_r[21]) );
  OAI211X1 U6461 ( .A0(n7291), .A1(n7536), .B0(n7290), .C0(n7333), .Y(
        sram_addr_wait_r[19]) );
  OAI211X1 U6462 ( .A0(n7291), .A1(n7405), .B0(n7286), .C0(n7325), .Y(
        sram_addr_wait_r[23]) );
  OAI211X1 U6463 ( .A0(n7291), .A1(n7373), .B0(n7287), .C0(n7327), .Y(
        sram_addr_wait_r[22]) );
  OAI21X2 U6464 ( .A0(n7266), .A1(n4515), .B0(n7265), .Y(N815) );
  OAI21XL U6465 ( .A0(n4515), .A1(n7488), .B0(n7260), .Y(n7264) );
  MXI2X1 U6466 ( .A(median_sobel_inst_n233), .B(n1876), .S0(n5849), .Y(
        median_sobel_inst_med_sobel_e_wait_r[15]) );
  MXI2X1 U6467 ( .A(median_sobel_inst_n239), .B(n1935), .S0(n5848), .Y(
        median_sobel_inst_med_sobel_e_wait_r[17]) );
  NAND2XL U6468 ( .A(n6463), .B(n6462), .Y(n6464) );
  OAI2BB1XL U6469 ( .A0N(n6461), .A1N(n6460), .B0(n6459), .Y(n6465) );
  NAND2X1 U6470 ( .A(n4905), .B(n4595), .Y(n4778) );
  NAND2X1 U6471 ( .A(n4913), .B(median_sobel_inst_n1007), .Y(n5399) );
  NAND2XL U6472 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n20), .Y(n5695) );
  NAND2XL U6473 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n19), .Y(n5793) );
  NAND2XL U6474 ( .A(n5974), .B(
        median_sobel_inst_u_sober_compare_submodule_n17), .Y(n5786) );
  OR2X2 U6475 ( .A(n5774), .B(n5773), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]) );
  NAND2XL U6476 ( .A(n6073), .B(n6072), .Y(n6074) );
  INVX1 U6477 ( .A(n6545), .Y(n6547) );
  NAND2X1 U6478 ( .A(n6724), .B(n6723), .Y(n6725) );
  NOR2X2 U6479 ( .A(n4719), .B(median_sobel_inst_n1144), .Y(n4727) );
  XOR2X1 U6480 ( .A(n6112), .B(n6111), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N108) );
  AND2X2 U6481 ( .A(n5892), .B(n6286), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N147) );
  AND2X1 U6482 ( .A(n6460), .B(n6459), .Y(n6288) );
  NAND2BX2 U6483 ( .AN(median_sobel_inst_n41), .B(n3645), .Y(n5427) );
  INVX6 U6484 ( .A(n5397), .Y(median_sobel_inst_data_g_r[7]) );
  INVX3 U6485 ( .A(n5349), .Y(n4720) );
  XNOR2X1 U6486 ( .A(n7470), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]) );
  XOR2X1 U6487 ( .A(n5867), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N126) );
  NAND2XL U6488 ( .A(n5933), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n5934)
         );
  OAI2BB1X1 U6489 ( .A0N(n6194), .A1N(n6195), .B0(n6193), .Y(n6084) );
  OAI21X1 U6490 ( .A0(n6371), .A1(n6370), .B0(n6369), .Y(n6376) );
  NAND2XL U6491 ( .A(n6123), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n6013)
         );
  NAND2XL U6492 ( .A(n5931), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n5932)
         );
  NOR2X1 U6493 ( .A(n5935), .B(n6569), .Y(n5937) );
  NAND2XL U6494 ( .A(n6163), .B(n6162), .Y(n6165) );
  INVX1 U6495 ( .A(n6161), .Y(n6163) );
  NAND2BX1 U6496 ( .AN(median_sobel_inst_n465), .B(n5825), .Y(n4853) );
  NAND2XL U6497 ( .A(n5969), .B(n5968), .Y(n5971) );
  XNOR2X1 U6498 ( .A(n7481), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]) );
  INVXL U6499 ( .A(n6235), .Y(n6004) );
  AND2X2 U6500 ( .A(n5682), .B(n6380), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N16) );
  AND2X2 U6501 ( .A(n6194), .B(n6193), .Y(n6196) );
  INVX1 U6502 ( .A(n6866), .Y(n6535) );
  NAND2X1 U6503 ( .A(n6525), .B(n6524), .Y(n6526) );
  XOR2X1 U6504 ( .A(n6325), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N127) );
  NAND2X2 U6505 ( .A(n4715), .B(median_sobel_inst_n55), .Y(n4822) );
  NAND2X1 U6506 ( .A(n5179), .B(median_sobel_inst_n321), .Y(n4917) );
  AND3X4 U6507 ( .A(n4831), .B(n4830), .C(n4829), .Y(n4833) );
  NAND2X1 U6508 ( .A(n5809), .B(median_sobel_inst_n695), .Y(n4864) );
  NAND2X2 U6509 ( .A(n5699), .B(median_sobel_inst_n1027), .Y(n4839) );
  INVX3 U6510 ( .A(n5524), .Y(median_sobel_inst_data_f_r[1]) );
  INVX3 U6511 ( .A(n4540), .Y(n7215) );
  MX2X1 U6512 ( .A(median_sobel_inst_n69), .B(n4545), .S0(n6238), .Y(
        median_sobel_inst_n541) );
  MXI2X1 U6513 ( .A(n7539), .B(n4601), .S0(n4715), .Y(median_sobel_inst_n517)
         );
  MXI2X1 U6514 ( .A(n4552), .B(n4600), .S0(n5346), .Y(median_sobel_inst_n515)
         );
  MXI2X1 U6515 ( .A(median_sobel_inst_n265), .B(n1876), .S0(n4713), .Y(
        median_sobel_inst_med_sobel_e_wait_r[28]) );
  MXI2X1 U6516 ( .A(median_sobel_inst_n277), .B(n7584), .S0(n4713), .Y(
        median_sobel_inst_n1273) );
  MXI2X1 U6517 ( .A(median_sobel_inst_n192), .B(n1879), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[35]) );
  MXI2X1 U6518 ( .A(median_sobel_inst_n240), .B(n1924), .S0(n5849), .Y(
        median_sobel_inst_med_sobel_e_wait_r[18]) );
  MXI2X1 U6519 ( .A(median_sobel_inst_n36), .B(median_sobel_inst_n226), .S0(
        n5883), .Y(n7517) );
  MXI2X1 U6520 ( .A(median_sobel_inst_n975), .B(median_sobel_inst_n225), .S0(
        n5883), .Y(n7521) );
  MXI2X1 U6521 ( .A(median_sobel_inst_n43), .B(median_sobel_inst_n229), .S0(
        n5883), .Y(n7518) );
  MX2X1 U6522 ( .A(median_sobel_inst_n978), .B(input_data_ready_r[23]), .S0(
        n5883), .Y(median_sobel_inst_n528) );
  MX2X1 U6523 ( .A(median_sobel_inst_n1070), .B(n4546), .S0(n3789), .Y(
        median_sobel_inst_n540) );
  OAI211XL U6524 ( .A0(n6070), .A1(n6337), .B0(n6069), .C0(n7218), .Y(
        median_sobel_inst_n395) );
  MXI2X1 U6525 ( .A(median_sobel_inst_n1157), .B(n7596), .S0(n3789), .Y(n7424)
         );
  MXI2X1 U6526 ( .A(median_sobel_inst_n1154), .B(n7597), .S0(n3789), .Y(n7425)
         );
  MXI2X1 U6527 ( .A(median_sobel_inst_n1151), .B(n1876), .S0(n3789), .Y(n7516)
         );
  CLKBUFX8 U6528 ( .A(i_rst_n), .Y(n7663) );
  AND2X2 U6529 ( .A(conv_inst_ns_0_), .B(n3526), .Y(n7390) );
  NAND2XL U6530 ( .A(n6063), .B(n6062), .Y(n6064) );
  NAND2XL U6531 ( .A(n6145), .B(n6144), .Y(n6147) );
  AND2X2 U6532 ( .A(n6052), .B(n7358), .Y(conv_inst_N2370) );
  INVX1 U6533 ( .A(n6048), .Y(n6050) );
  AND2X2 U6534 ( .A(n7034), .B(n7052), .Y(conv_inst_N280) );
  NAND2X1 U6535 ( .A(n7031), .B(n7030), .Y(n7032) );
  XNOR2X2 U6536 ( .A(n5771), .B(n5770), .Y(n5772) );
  NAND2X1 U6537 ( .A(n6186), .B(n6184), .Y(n5945) );
  NAND2X1 U6538 ( .A(n5832), .B(n5834), .Y(n5762) );
  NOR2XL U6539 ( .A(conv_inst_conv_2_r[0]), .B(conv_inst_n180), .Y(n6129) );
  AND2X2 U6540 ( .A(n6058), .B(n7358), .Y(conv_inst_N2380) );
  INVX1 U6541 ( .A(n6053), .Y(n6055) );
  NAND2XL U6542 ( .A(n5705), .B(n5704), .Y(n5706) );
  XOR2X1 U6543 ( .A(n6321), .B(n4627), .Y(conv_inst_N66) );
  AND2X2 U6544 ( .A(n7006), .B(cnt[10]), .Y(N896) );
  OAI211X1 U6545 ( .A0(n7276), .A1(n430), .B0(n7258), .C0(n7331), .Y(
        sram_addr_wait_r[29]) );
  OAI211X1 U6546 ( .A0(n7276), .A1(n433), .B0(n7243), .C0(n7325), .Y(
        sram_addr_wait_r[32]) );
  OAI211X1 U6547 ( .A0(n7306), .A1(n415), .B0(n7303), .C0(n7329), .Y(
        sram_addr_wait_r[12]) );
  NOR2X1 U6548 ( .A(n7007), .B(n4513), .Y(N819) );
  OAI211X1 U6549 ( .A0(n7276), .A1(n431), .B0(n7257), .C0(n7329), .Y(
        sram_addr_wait_r[30]) );
  NOR2X1 U6550 ( .A(n2264), .B(n7138), .Y(n6514) );
  NOR2XL U6551 ( .A(n6558), .B(n7256), .Y(n6113) );
  OAI22XL U6552 ( .A0(n2268), .A1(n7236), .B0(n1902), .B1(n6616), .Y(n5828) );
  OAI22XL U6553 ( .A0(n2261), .A1(n7268), .B0(n2269), .B1(n7138), .Y(n5829) );
  NAND2XL U6554 ( .A(n1955), .B(n5997), .Y(n5854) );
  NAND2XL U6555 ( .A(n1955), .B(n5815), .Y(n5818) );
  OAI2BB1XL U6556 ( .A0N(n4542), .A1N(n6622), .B0(n7316), .Y(N841) );
  OAI211X1 U6557 ( .A0(n7306), .A1(n419), .B0(n7321), .C0(n7300), .Y(
        sram_addr_wait_r[16]) );
  OAI211X1 U6558 ( .A0(n7306), .A1(n418), .B0(n7323), .C0(n7301), .Y(
        sram_addr_wait_r[15]) );
  OAI211X1 U6559 ( .A0(n7306), .A1(n413), .B0(n7333), .C0(n7305), .Y(
        sram_addr_wait_r[10]) );
  OAI211X1 U6560 ( .A0(n7306), .A1(n414), .B0(n7331), .C0(n7304), .Y(
        sram_addr_wait_r[11]) );
  OAI211X1 U6561 ( .A0(n7306), .A1(n416), .B0(n7327), .C0(n7302), .Y(
        sram_addr_wait_r[13]) );
  NOR4XL U6562 ( .A(op_mode_r_2_), .B(n5997), .C(n5998), .D(n5876), .Y(n1345)
         );
  INVX3 U6563 ( .A(n7269), .Y(n7235) );
  BUFX20 U6564 ( .A(n5825), .Y(n6217) );
  OA22X4 U6565 ( .A0(n5474), .A1(median_sobel_inst_data_b_r[3]), .B0(n5483), 
        .B1(median_sobel_inst_data_b_r[5]), .Y(n4547) );
  OR2X2 U6566 ( .A(n5807), .B(median_sobel_inst_n963), .Y(n4548) );
  NAND4X4 U6567 ( .A(n4927), .B(n4924), .C(n4926), .D(n4925), .Y(
        median_sobel_inst_data_i_r[4]) );
  AND2X4 U6568 ( .A(n5884), .B(median_sobel_inst_n1007), .Y(n4553) );
  NAND3X6 U6569 ( .A(n4888), .B(n4887), .C(n4886), .Y(
        median_sobel_inst_data_b_r[3]) );
  NAND4X6 U6570 ( .A(n4684), .B(n4871), .C(n4683), .D(n4682), .Y(
        median_sobel_inst_data_g_r[5]) );
  BUFX12 U6571 ( .A(n5415), .Y(n4756) );
  OR2X2 U6572 ( .A(n5453), .B(n4063), .Y(n4562) );
  NAND2X6 U6573 ( .A(n6917), .B(n6916), .Y(n6947) );
  OR2X2 U6574 ( .A(n5289), .B(median_sobel_inst_n983), .Y(n4569) );
  OR2X2 U6575 ( .A(n4719), .B(median_sobel_inst_n1142), .Y(n4570) );
  XNOR2X1 U6576 ( .A(n4801), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n22), .Y(n4573) );
  BUFX4 U6577 ( .A(n7649), .Y(n7625) );
  BUFX4 U6578 ( .A(n7660), .Y(n7635) );
  CLKBUFX8 U6579 ( .A(n7655), .Y(n7626) );
  BUFX4 U6580 ( .A(n7663), .Y(n4602) );
  CLKBUFX8 U6581 ( .A(n7657), .Y(n7649) );
  CLKBUFX8 U6582 ( .A(n7659), .Y(n7647) );
  BUFX4 U6583 ( .A(n7663), .Y(n7631) );
  CLKBUFX8 U6584 ( .A(n7658), .Y(n7634) );
  BUFX4 U6585 ( .A(n7663), .Y(n7632) );
  NAND2XL U6586 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n366), .B(
        n4604), .Y(n7360) );
  NAND2BX4 U6587 ( .AN(n4605), .B(n4883), .Y(n6827) );
  CLKINVX3 U6588 ( .A(n6348), .Y(n5272) );
  AOI21X1 U6589 ( .A0(n6348), .A1(n6275), .B0(n5277), .Y(n4607) );
  OAI2BB1X4 U6590 ( .A0N(n5032), .A1N(n6212), .B0(n4606), .Y(n6348) );
  XOR2X4 U6591 ( .A(n5643), .B(n4557), .Y(n5648) );
  INVX3 U6592 ( .A(n4882), .Y(n4881) );
  NOR2BX4 U6593 ( .AN(n6226), .B(n6223), .Y(n4804) );
  NOR2BX4 U6594 ( .AN(n4612), .B(n4611), .Y(n6933) );
  AOI21X2 U6595 ( .A0(median_sobel_inst_u_median_filter_submodule_n1309), .A1(
        median_sobel_inst_u_median_filter_submodule_n776), .B0(n4613), .Y(
        n5141) );
  NOR2X4 U6596 ( .A(n4618), .B(n4617), .Y(n4931) );
  OAI21X4 U6597 ( .A0(n6687), .A1(n4622), .B0(n4619), .Y(n7194) );
  NAND2X2 U6598 ( .A(n7194), .B(n7193), .Y(n7195) );
  NAND3X2 U6599 ( .A(n5588), .B(
        median_sobel_inst_u_median_filter_submodule_n965), .C(n5589), .Y(n5590) );
  NOR2X8 U6600 ( .A(n7342), .B(n4678), .Y(n7345) );
  AOI21X4 U6601 ( .A0(n5986), .A1(n4626), .B0(n4625), .Y(n5363) );
  OAI21X4 U6602 ( .A0(n6256), .A1(n6138), .B0(n6139), .Y(n5986) );
  NOR2X1 U6603 ( .A(n6940), .B(conv_inst_n247), .Y(n4628) );
  XNOR2X4 U6604 ( .A(n4999), .B(n4629), .Y(n7217) );
  NAND2X2 U6605 ( .A(n4633), .B(conv_inst_n274), .Y(n4632) );
  OAI2BB1X4 U6606 ( .A0N(n7054), .A1N(n7084), .B0(n4630), .Y(n4633) );
  OAI22X2 U6607 ( .A0(n7129), .A1(n2262), .B0(n1869), .B1(n7130), .Y(n7112) );
  OR2X8 U6608 ( .A(n7091), .B(n7236), .Y(n7130) );
  NAND2X4 U6609 ( .A(n6828), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .Y(n4634) );
  NAND2X4 U6610 ( .A(n4880), .B(n4636), .Y(n4635) );
  NOR2BX4 U6611 ( .AN(n6820), .B(n4637), .Y(n4636) );
  AOI21X4 U6612 ( .A0(n6827), .A1(n6826), .B0(n6825), .Y(n4638) );
  NOR2X6 U6613 ( .A(median_sobel_inst_net82615), .B(n4806), .Y(n4646) );
  NAND2X1 U6614 ( .A(n5809), .B(median_sobel_inst_n1051), .Y(n5270) );
  NAND2X2 U6615 ( .A(n4647), .B(median_sobel_inst_n63), .Y(n5061) );
  NOR2X4 U6616 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        n4534), .Y(n6809) );
  AOI21X4 U6617 ( .A0(n3634), .A1(n5675), .B0(n5674), .Y(n5676) );
  NAND2X2 U6618 ( .A(n5857), .B(median_sobel_inst_n1008), .Y(n5074) );
  NAND2X2 U6619 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), .Y(n6285) );
  NAND2X2 U6620 ( .A(n7047), .B(conv_inst_conv_1_r[14]), .Y(n7048) );
  NAND2X2 U6621 ( .A(n4524), .B(median_sobel_inst_n70), .Y(n5045) );
  INVX3 U6622 ( .A(n5391), .Y(n5082) );
  INVX3 U6623 ( .A(n5433), .Y(n4770) );
  NAND3X4 U6624 ( .A(n5565), .B(n5564), .C(n5563), .Y(n5570) );
  INVX3 U6625 ( .A(median_sobel_inst_data_b_r[3]), .Y(n5434) );
  NAND2X4 U6626 ( .A(n6975), .B(n6974), .Y(n6979) );
  AND2X4 U6627 ( .A(n5473), .B(n7358), .Y(conv_inst_N286) );
  NAND2X4 U6628 ( .A(n5168), .B(n5167), .Y(n5170) );
  INVX4 U6629 ( .A(n5972), .Y(n5911) );
  OA22X2 U6630 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n70), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n365), .Y(n5094) );
  AOI211X1 U6631 ( .A0(median_sobel_inst_n400), .A1(n6989), .B0(n6988), .C0(
        n6987), .Y(median_sobel_inst_N111) );
  OR2X4 U6632 ( .A(median_sobel_inst_u_median_filter_submodule_n920), .B(
        median_sobel_inst_u_median_filter_submodule_n831), .Y(n4649) );
  NAND3X6 U6633 ( .A(n4652), .B(n4983), .C(n4651), .Y(n4650) );
  NAND2BX4 U6634 ( .AN(n4975), .B(n4653), .Y(n4652) );
  AOI22X4 U6635 ( .A0(n4656), .A1(n4655), .B0(n5295), .B1(n3527), .Y(n5087) );
  NAND2X2 U6636 ( .A(n4659), .B(n7353), .Y(n4658) );
  NAND2X2 U6637 ( .A(n7356), .B(n6504), .Y(n4659) );
  NAND2X4 U6638 ( .A(conv_inst_n184), .B(conv_inst_conv_2_r[2]), .Y(n6054) );
  INVX12 U6639 ( .A(n5910), .Y(n5974) );
  NAND2X8 U6640 ( .A(median_sobel_inst_u_sober_compare_submodule_n256), .B(
        n4660), .Y(n5910) );
  INVX4 U6641 ( .A(median_sobel_inst_u_sober_compare_submodule_n44), .Y(n4660)
         );
  NAND2X6 U6642 ( .A(n5316), .B(n4513), .Y(n4662) );
  NOR2X8 U6643 ( .A(n5004), .B(n5003), .Y(n7197) );
  NAND2X4 U6644 ( .A(n1935), .B(n4666), .Y(n4665) );
  AND2X2 U6645 ( .A(median_sobel_inst_u_median_filter_submodule_n779), .B(
        n5165), .Y(n5166) );
  INVX6 U6646 ( .A(median_sobel_inst_data_b_r[6]), .Y(n4691) );
  NAND2X6 U6647 ( .A(n5481), .B(median_sobel_inst_data_b_r[6]), .Y(n5484) );
  NAND2X4 U6648 ( .A(n5950), .B(n4667), .Y(n5258) );
  AOI21X4 U6649 ( .A0(n4670), .A1(n4669), .B0(n4668), .Y(conv_inst_N231) );
  AO21X4 U6650 ( .A0(n5839), .A1(n7045), .B0(n5838), .Y(n4672) );
  NAND2X6 U6651 ( .A(n4680), .B(n5204), .Y(n5206) );
  NAND2X4 U6652 ( .A(n3786), .B(n4586), .Y(n4682) );
  NAND2X2 U6653 ( .A(n5683), .B(n4559), .Y(n4684) );
  AND3X8 U6654 ( .A(n4901), .B(n4685), .C(n4580), .Y(n5529) );
  OAI21X4 U6655 ( .A0(n4692), .A1(n4686), .B0(n5488), .Y(
        median_sobel_inst_u_median_filter_submodule_a28_w) );
  NAND2X4 U6656 ( .A(n4690), .B(n4687), .Y(n4686) );
  AOI21X4 U6657 ( .A0(n4689), .A1(n5483), .B0(n4688), .Y(n4687) );
  OAI22X4 U6658 ( .A0(n5484), .A1(n5485), .B0(median_sobel_inst_data_h_r[7]), 
        .B1(n5486), .Y(n4688) );
  AOI21X4 U6659 ( .A0(n4734), .A1(n4732), .B0(n4693), .Y(n4692) );
  NAND3X4 U6660 ( .A(n4547), .B(n4694), .C(n4563), .Y(n4693) );
  INVX3 U6661 ( .A(n4731), .Y(n4694) );
  OAI21X4 U6662 ( .A0(n5458), .A1(n4562), .B0(n5459), .Y(n4696) );
  OAI21X4 U6663 ( .A0(n5451), .A1(n5452), .B0(n4699), .Y(n4698) );
  OAI21X4 U6664 ( .A0(n5449), .A1(median_sobel_inst_data_c_r[2]), .B0(n4701), 
        .Y(n4700) );
  NAND3X6 U6665 ( .A(n4821), .B(n4819), .C(n4820), .Y(
        median_sobel_inst_data_h_r[7]) );
  NAND2X6 U6666 ( .A(n4756), .B(n4555), .Y(n4705) );
  INVX3 U6667 ( .A(n4753), .Y(n4709) );
  BUFX2 U6668 ( .A(n4714), .Y(n4713) );
  NAND2X2 U6669 ( .A(n4715), .B(median_sobel_inst_n1050), .Y(n4900) );
  NOR2X2 U6670 ( .A(median_sobel_inst_data_b_r[5]), .B(
        median_sobel_inst_data_b_r[3]), .Y(n4718) );
  NOR2X4 U6671 ( .A(n4727), .B(n4725), .Y(n4724) );
  NAND2X2 U6672 ( .A(n5681), .B(median_sobel_inst_n324), .Y(n4726) );
  INVX3 U6673 ( .A(median_sobel_inst_data_e_r[2]), .Y(n4729) );
  NOR2X4 U6674 ( .A(n4742), .B(median_sobel_inst_data_i_r[3]), .Y(n4741) );
  AOI2BB2X4 U6675 ( .B0(n5453), .B1(n4063), .A0N(median_sobel_inst_data_i_r[4]), .A1N(n4744), .Y(n4743) );
  NAND2X6 U6676 ( .A(n4756), .B(n4550), .Y(n5063) );
  NAND2X2 U6677 ( .A(n4524), .B(n4584), .Y(n4875) );
  NAND2X2 U6678 ( .A(n5453), .B(median_sobel_inst_data_f_r[5]), .Y(n4746) );
  AOI2BB1X4 U6679 ( .A0N(n4754), .A1N(n5531), .B0(
        median_sobel_inst_data_i_r[4]), .Y(n4749) );
  NAND4BX4 U6680 ( .AN(n4765), .B(n4761), .C(n4760), .D(n5536), .Y(
        median_sobel_inst_u_median_filter_submodule_a36_w) );
  OAI21X4 U6681 ( .A0(n4781), .A1(n4764), .B0(n4762), .Y(n4761) );
  NAND2X2 U6682 ( .A(n5858), .B(n4575), .Y(n5400) );
  NAND2X2 U6683 ( .A(n5858), .B(n4586), .Y(n4837) );
  NAND2X2 U6684 ( .A(n4773), .B(median_sobel_inst_data_b_r[3]), .Y(n4772) );
  INVX3 U6685 ( .A(median_sobel_inst_data_e_r[3]), .Y(n4773) );
  NAND2X2 U6686 ( .A(n5432), .B(median_sobel_inst_data_b_r[2]), .Y(n4774) );
  NOR2BX4 U6687 ( .AN(n5448), .B(n5446), .Y(n4777) );
  NOR2BX4 U6688 ( .AN(median_sobel_inst_data_f_r[5]), .B(n5534), .Y(n4781) );
  NAND2X2 U6689 ( .A(x_plus_one_r[1]), .B(x_minus_one_r[0]), .Y(n7272) );
  OAI21X4 U6690 ( .A0(n7345), .A1(n4786), .B0(n4783), .Y(n7279) );
  OAI222X1 U6691 ( .A0(n7169), .A1(n7168), .B0(n7167), .B1(n7166), .C0(n7165), 
        .C1(n7164), .Y(median_sobel_inst_u_median_filter_submodule_b5[6]) );
  OAI222X1 U6692 ( .A0(n7169), .A1(n7159), .B0(n5562), .B1(n7166), .C0(n7158), 
        .C1(n7164), .Y(median_sobel_inst_u_median_filter_submodule_b5[2]) );
  NAND2BX1 U6693 ( .AN(median_sobel_inst_u_median_filter_submodule_net83073), 
        .B(median_sobel_inst_u_median_filter_submodule_net84165), .Y(n5575) );
  NOR2X2 U6694 ( .A(n3889), .B(n6944), .Y(n6946) );
  INVX1 U6695 ( .A(n6983), .Y(n6985) );
  OR2X2 U6696 ( .A(n1914), .B(n7485), .Y(n4786) );
  XOR2X1 U6697 ( .A(n6868), .B(n4805), .Y(n4789) );
  NAND3X4 U6698 ( .A(n4904), .B(n4903), .C(n4902), .Y(
        median_sobel_inst_data_i_r[2]) );
  OR3X2 U6699 ( .A(n6628), .B(median_sobel_inst_u_sober_compare_submodule_n261), .C(n7406), .Y(n4796) );
  OA22X4 U6700 ( .A0(median_sobel_inst_u_median_filter_submodule_n841), .A1(
        median_sobel_inst_u_median_filter_submodule_n1076), .B0(
        median_sobel_inst_u_median_filter_submodule_n840), .B1(n7458), .Y(
        n4799) );
  OA22X4 U6701 ( .A0(median_sobel_inst_u_median_filter_submodule_n836), .A1(
        n4537), .B0(n4540), .B1(
        median_sobel_inst_u_median_filter_submodule_n831), .Y(n4800) );
  INVX3 U6702 ( .A(n7217), .Y(n5001) );
  NAND3BX2 U6703 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n636), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n106), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n396), .Y(n6669) );
  OAI22X2 U6704 ( .A0(n6673), .A1(n6672), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n63), .B1(n6674), .Y(
        n6677) );
  NAND2X1 U6705 ( .A(n5620), .B(
        median_sobel_inst_u_median_filter_submodule_n814), .Y(n5622) );
  OR2X2 U6706 ( .A(median_sobel_inst_u_median_filter_submodule_n1592), .B(
        median_sobel_inst_u_median_filter_submodule_n780), .Y(n5152) );
  OAI21X1 U6707 ( .A0(n7272), .A1(x_plus_one_r[2]), .B0(n7335), .Y(n7275) );
  NAND2X4 U6708 ( .A(n5112), .B(n7075), .Y(n7055) );
  NAND2X2 U6709 ( .A(n5465), .B(n7028), .Y(n7013) );
  NAND2X1 U6710 ( .A(n5016), .B(n5911), .Y(n5019) );
  NAND2X1 U6711 ( .A(n6229), .B(median_sobel_inst_n1022), .Y(n5054) );
  OAI22XL U6712 ( .A0(n1938), .A1(n6616), .B0(n1866), .B1(n7236), .Y(n5100) );
  INVX1 U6713 ( .A(n6775), .Y(n6769) );
  NAND2XL U6714 ( .A(n5369), .B(n5368), .Y(n5370) );
  NAND2XL U6715 ( .A(n1914), .B(x_minus_one_r[0]), .Y(n7311) );
  INVX3 U6716 ( .A(n4422), .Y(n6975) );
  AND2X1 U6717 ( .A(n6556), .B(n6114), .Y(n6001) );
  INVXL U6718 ( .A(n6809), .Y(n6811) );
  NOR3X2 U6719 ( .A(n5013), .B(n5012), .C(n5011), .Y(n5014) );
  NAND2X1 U6720 ( .A(n5419), .B(median_sobel_inst_n159), .Y(n4843) );
  INVX1 U6721 ( .A(n6447), .Y(n6460) );
  NAND2XL U6722 ( .A(n5960), .B(n5959), .Y(n5961) );
  NAND2XL U6723 ( .A(n6444), .B(n6443), .Y(n6445) );
  NAND2XL U6724 ( .A(n6045), .B(n6044), .Y(n6046) );
  AOI21X2 U6725 ( .A0(n6348), .A1(n6347), .B0(n6346), .Y(n6352) );
  NAND2XL U6726 ( .A(n6033), .B(n6032), .Y(n6035) );
  NAND2X1 U6727 ( .A(n6848), .B(n6847), .Y(n6849) );
  NAND2X1 U6728 ( .A(n6414), .B(n6413), .Y(n6415) );
  NAND2BX2 U6729 ( .AN(median_sobel_inst_n7), .B(n6217), .Y(n5184) );
  NAND2X2 U6730 ( .A(median_sobel_inst_u_median_filter_submodule_n1433), .B(
        median_sobel_inst_u_median_filter_submodule_n1154), .Y(n5826) );
  CLKINVX1 U6731 ( .A(median_sobel_inst_u_median_filter_submodule_net83073), 
        .Y(n7159) );
  INVX1 U6732 ( .A(median_sobel_inst_u_median_filter_submodule_n1303), .Y(
        n5282) );
  INVX1 U6733 ( .A(n6335), .Y(n6221) );
  OAI2BB1X2 U6734 ( .A0N(median_sobel_inst_u_median_filter_submodule_n920), 
        .A1N(n5001), .B0(n4800), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[7]) );
  AND2X2 U6735 ( .A(n5882), .B(n6234), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N26) );
  OAI21XL U6736 ( .A0(n5902), .A1(n5901), .B0(n5900), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N134) );
  OAI31XL U6737 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n64), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n346), .A2(n6012), .B0(
        n5700), .Y(median_sobel_inst_u_sobel_gradient_submodule_N710) );
  OAI2BB1X2 U6738 ( .A0N(n5178), .A1N(n5588), .B0(n5177), .Y(
        median_sobel_inst_u_median_filter_submodule_n854) );
  XNOR2X1 U6739 ( .A(n7182), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N78), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N105) );
  OAI21X1 U6740 ( .A0(n6992), .A1(n7405), .B0(n6991), .Y(n3509) );
  XNOR2X1 U6741 ( .A(n6790), .B(n6784), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]) );
  MXI2X1 U6742 ( .A(median_sobel_inst_n864), .B(median_sobel_inst_n185), .S0(
        n3789), .Y(n7509) );
  MXI2X1 U6743 ( .A(median_sobel_inst_n41), .B(median_sobel_inst_n218), .S0(
        n5873), .Y(n7533) );
  CLKAND2X3 U6744 ( .A(n7080), .B(n7358), .Y(conv_inst_N2630) );
  AOI21XL U6745 ( .A0(n7675), .A1(n5895), .B0(n5894), .Y(N762) );
  OAI211X1 U6746 ( .A0(n7306), .A1(n420), .B0(n7319), .C0(n7299), .Y(
        sram_addr_wait_r[17]) );
  NAND2X2 U6749 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n6111) );
  NOR2X2 U6750 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .Y(n6223)
         );
  NAND2X2 U6751 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .Y(n6222)
         );
  NAND2X1 U6752 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n347), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n6225) );
  NOR2X1 U6753 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .Y(n5126)
         );
  NAND2BX2 U6755 ( .AN(median_sobel_inst_n439), .B(n5699), .Y(n4809) );
  NAND2X2 U6756 ( .A(n5683), .B(median_sobel_inst_n142), .Y(n4808) );
  BUFX20 U6757 ( .A(n6989), .Y(n5289) );
  NAND2BX2 U6758 ( .AN(median_sobel_inst_n448), .B(n5424), .Y(n4813) );
  NAND2BX1 U6759 ( .AN(median_sobel_inst_n448), .B(n5419), .Y(n4818) );
  NAND2BX1 U6760 ( .AN(median_sobel_inst_n1161), .B(n5699), .Y(n4821) );
  NAND2BX2 U6761 ( .AN(median_sobel_inst_n984), .B(n5884), .Y(n4825) );
  BUFX20 U6762 ( .A(n4913), .Y(n5414) );
  NAND2X1 U6763 ( .A(median_sobel_inst_n1050), .B(n5859), .Y(n4828) );
  NAND2X1 U6764 ( .A(n5859), .B(median_sobel_inst_n56), .Y(n4829) );
  NAND2X1 U6765 ( .A(median_sobel_inst_n1050), .B(n5825), .Y(n4832) );
  NAND2BX4 U6766 ( .AN(median_sobel_inst_n1142), .B(n3786), .Y(n4836) );
  NAND2X2 U6767 ( .A(n4524), .B(median_sobel_inst_n1027), .Y(n4835) );
  NAND2BX2 U6768 ( .AN(median_sobel_inst_n967), .B(n4524), .Y(n4840) );
  NAND2X2 U6769 ( .A(n5225), .B(median_sobel_inst_n73), .Y(n4844) );
  CLKINVX1 U6770 ( .A(median_sobel_inst_data_h_r[4]), .Y(n4866) );
  BUFX4 U6771 ( .A(n5297), .Y(n7368) );
  NOR2X2 U6772 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), .Y(n6098) );
  NAND2X2 U6773 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(n6101) );
  OAI21X2 U6774 ( .A0(n6098), .A1(n6101), .B0(n6099), .Y(n6808) );
  NOR2X1 U6775 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n4877) );
  NOR2X1 U6776 ( .A(n4877), .B(n6809), .Y(n4879) );
  NAND2X1 U6777 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6806) );
  NAND2X1 U6778 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        n4534), .Y(n6810) );
  OA21X4 U6779 ( .A0(n6809), .A1(n6806), .B0(n6810), .Y(n4878) );
  OAI2BB1X4 U6780 ( .A0N(n6808), .A1N(n4879), .B0(n4878), .Y(n4880) );
  NOR2X2 U6781 ( .A(n4940), .B(n4881), .Y(n6820) );
  NAND2X2 U6782 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), .Y(n4941) );
  INVX3 U6783 ( .A(n4941), .Y(n6814) );
  NAND2X2 U6784 ( .A(n4882), .B(n6814), .Y(n4883) );
  NAND2X1 U6785 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6821) );
  NAND2BX1 U6786 ( .AN(median_sobel_inst_n1137), .B(n5424), .Y(n4892) );
  NAND2X1 U6787 ( .A(n5683), .B(median_sobel_inst_n59), .Y(n4891) );
  NAND2BX1 U6788 ( .AN(median_sobel_inst_n980), .B(n5419), .Y(n4889) );
  NAND2X1 U6789 ( .A(median_sobel_inst_n323), .B(n5785), .Y(n4894) );
  NAND2BX1 U6790 ( .AN(median_sobel_inst_n339), .B(n6229), .Y(n4893) );
  AOI21X4 U6791 ( .A0(n5683), .A1(median_sobel_inst_n56), .B0(n4898), .Y(n4899) );
  AOI2BB2X2 U6792 ( .B0(n4905), .B1(median_sobel_inst_net84226), .A0N(n5840), 
        .A1N(median_sobel_inst_n47), .Y(n4903) );
  NAND2BX2 U6793 ( .AN(median_sobel_inst_n465), .B(n5858), .Y(n4902) );
  NAND2BX1 U6794 ( .AN(median_sobel_inst_n1039), .B(n5681), .Y(n4910) );
  NAND2BX1 U6795 ( .AN(median_sobel_inst_n1127), .B(n5424), .Y(n4907) );
  OAI22X4 U6796 ( .A0(n5289), .A1(n7392), .B0(n5819), .B1(
        median_sobel_inst_net86439), .Y(n4911) );
  AOI21X4 U6797 ( .A0(n4905), .A1(median_sobel_inst_n964), .B0(n4911), .Y(
        n4912) );
  NAND2X2 U6798 ( .A(n5683), .B(median_sobel_inst_n1015), .Y(n4918) );
  NAND2X2 U6799 ( .A(n5681), .B(median_sobel_inst_n1011), .Y(n4916) );
  NAND4X4 U6800 ( .A(n4919), .B(n4918), .C(n4917), .D(n4916), .Y(
        median_sobel_inst_data_f_r[3]) );
  NAND2BX2 U6801 ( .AN(median_sobel_inst_n962), .B(n4647), .Y(n4921) );
  NAND2BX2 U6802 ( .AN(median_sobel_inst_n980), .B(n5424), .Y(n4929) );
  NAND2X4 U6803 ( .A(n5683), .B(median_sobel_inst_n60), .Y(n4928) );
  INVX4 U6804 ( .A(median_sobel_inst_data_i_r[6]), .Y(n5454) );
  NAND2X2 U6805 ( .A(n5529), .B(median_sobel_inst_data_i_r[2]), .Y(n4930) );
  INVX3 U6806 ( .A(curr_state[1]), .Y(n7672) );
  BUFX20 U6807 ( .A(n765), .Y(n5997) );
  AND2X4 U6808 ( .A(n887), .B(x_origin_r_1_), .Y(n5894) );
  XOR2X4 U6809 ( .A(n765), .B(net46722), .Y(n5816) );
  NAND2BX2 U6810 ( .AN(n887), .B(n7141), .Y(n6015) );
  NAND2X1 U6811 ( .A(n4934), .B(n6015), .Y(n5462) );
  NOR2X1 U6812 ( .A(n5894), .B(n4935), .Y(n4936) );
  NAND2X2 U6813 ( .A(n4937), .B(n4936), .Y(n6596) );
  OAI21X2 U6814 ( .A0(n5462), .A1(n5997), .B0(n6596), .Y(n4938) );
  NAND2X1 U6815 ( .A(n4938), .B(n7673), .Y(n4939) );
  OAI21X2 U6816 ( .A0(n6595), .A1(n7673), .B0(n4939), .Y(n489) );
  XNOR2X1 U6817 ( .A(n4880), .B(n4942), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]) );
  NOR2X8 U6818 ( .A(n5997), .B(net46722), .Y(n6114) );
  NOR2X4 U6819 ( .A(n7488), .B(cnt[1]), .Y(n6581) );
  NOR2X8 U6820 ( .A(n7335), .B(n4944), .Y(n4945) );
  NAND2X1 U6821 ( .A(n7313), .B(n7850), .Y(n4946) );
  OAI211X1 U6822 ( .A0(n4947), .A1(n7405), .B0(n7325), .C0(n4946), .Y(
        sram_addr_wait_r[14]) );
  NOR2X8 U6823 ( .A(n7443), .B(n5795), .Y(n6937) );
  NOR2X1 U6824 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n332), .Y(n4949) );
  NAND2X1 U6825 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n369), .Y(n6090) );
  NAND2X1 U6826 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n332), .Y(n6088) );
  NOR2X1 U6827 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), .Y(n6080) );
  OR2X2 U6828 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n333), .Y(n6082) );
  CLKINVX1 U6829 ( .A(n6082), .Y(n4950) );
  NAND2X1 U6830 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n333), .Y(n6081) );
  OAI21X1 U6831 ( .A0(n4951), .A1(n6193), .B0(n6081), .Y(n4952) );
  NOR2X2 U6832 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), .Y(n4954) );
  OR2X4 U6833 ( .A(n4954), .B(n6788), .Y(n4955) );
  NAND2X1 U6834 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[5]), .Y(n6791) );
  NAND2X4 U6835 ( .A(n4955), .B(n6791), .Y(n6804) );
  NAND2X1 U6836 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n6799) );
  NOR2X4 U6837 ( .A(n4959), .B(n4536), .Y(n4958) );
  NOR2X8 U6838 ( .A(n4958), .B(n7449), .Y(n4969) );
  NOR2X4 U6839 ( .A(n4544), .B(n7384), .Y(n4960) );
  AOI2BB2X4 U6840 ( .B0(n4962), .B1(n4961), .A0N(
        median_sobel_inst_u_median_filter_submodule_n893), .A1N(
        median_sobel_inst_u_median_filter_submodule_n841), .Y(n4964) );
  NOR2X1 U6841 ( .A(n7459), .B(
        median_sobel_inst_u_median_filter_submodule_n1076), .Y(n4972) );
  OAI22X2 U6842 ( .A0(n4972), .A1(n4971), .B0(
        median_sobel_inst_u_median_filter_submodule_n893), .B1(n5491), .Y(
        n4977) );
  NAND2BX1 U6843 ( .AN(median_sobel_inst_u_median_filter_submodule_n827), .B(
        median_sobel_inst_u_median_filter_submodule_n833), .Y(n4976) );
  NAND2X1 U6844 ( .A(median_sobel_inst_u_median_filter_submodule_n1091), .B(
        median_sobel_inst_u_median_filter_submodule_n830), .Y(n4974) );
  NAND2BX2 U6845 ( .AN(median_sobel_inst_u_median_filter_submodule_n832), .B(
        median_sobel_inst_u_median_filter_submodule_n829), .Y(n4979) );
  NAND2X1 U6846 ( .A(median_sobel_inst_u_median_filter_submodule_n827), .B(
        n7458), .Y(n4973) );
  NAND4X2 U6847 ( .A(n4974), .B(n4979), .C(n4980), .D(n4973), .Y(n4975) );
  NAND2X2 U6848 ( .A(median_sobel_inst_u_median_filter_submodule_n832), .B(
        median_sobel_inst_u_median_filter_submodule_n317), .Y(n4984) );
  AOI2BB2X4 U6849 ( .B0(n4978), .B1(n7449), .A0N(
        median_sobel_inst_u_median_filter_submodule_n829), .A1N(n4984), .Y(
        n4983) );
  NAND4BX2 U6850 ( .AN(median_sobel_inst_u_median_filter_submodule_n1091), .B(
        n7379), .C(n4980), .D(n4979), .Y(n4982) );
  OAI22X2 U6851 ( .A0(median_sobel_inst_u_median_filter_submodule_n842), .A1(
        n4984), .B0(n7447), .B1(
        median_sobel_inst_u_median_filter_submodule_n836), .Y(n4985) );
  NOR2X4 U6852 ( .A(n4536), .B(
        median_sobel_inst_u_median_filter_submodule_n317), .Y(n4989) );
  NOR4X2 U6853 ( .A(n4990), .B(n4989), .C(
        median_sobel_inst_u_median_filter_submodule_n844), .D(
        median_sobel_inst_u_median_filter_submodule_n1091), .Y(n4987) );
  AOI211X2 U6854 ( .A0(median_sobel_inst_u_median_filter_submodule_n840), .A1(
        n7458), .B0(n4990), .C0(n4989), .Y(n4997) );
  AOI21X2 U6855 ( .A0(median_sobel_inst_u_median_filter_submodule_n1076), .A1(
        median_sobel_inst_u_median_filter_submodule_n841), .B0(n4992), .Y(
        n4993) );
  NAND2BX4 U6856 ( .AN(n4994), .B(n4993), .Y(n4995) );
  AOI22X4 U6857 ( .A0(n4799), .A1(n4995), .B0(
        median_sobel_inst_u_median_filter_submodule_n1091), .B1(
        median_sobel_inst_u_median_filter_submodule_n844), .Y(n4996) );
  NAND2BX1 U6858 ( .AN(n7384), .B(n7447), .Y(n4998) );
  XNOR2X4 U6859 ( .A(n5000), .B(n4999), .Y(n7213) );
  INVX6 U6860 ( .A(n5973), .Y(n5792) );
  NAND3X2 U6861 ( .A(n5792), .B(
        median_sobel_inst_u_sober_compare_submodule_n403), .C(
        median_sobel_inst_u_sober_compare_submodule_n266), .Y(n5002) );
  OAI31X4 U6862 ( .A0(median_sobel_inst_u_sober_compare_submodule_n33), .A1(
        median_sobel_inst_u_sober_compare_submodule_n265), .A2(n5910), .B0(
        n5002), .Y(n5004) );
  OR2X4 U6863 ( .A(median_sobel_inst_u_sober_compare_submodule_n256), .B(
        median_sobel_inst_u_sober_compare_submodule_n44), .Y(n5005) );
  NOR3X4 U6864 ( .A(median_sobel_inst_u_sober_compare_submodule_n255), .B(
        median_sobel_inst_u_sober_compare_submodule_n404), .C(n5977), .Y(n5003) );
  NOR2X4 U6865 ( .A(n5005), .B(n7478), .Y(n5009) );
  NAND2X8 U6866 ( .A(median_sobel_inst_u_sober_compare_submodule_n256), .B(
        median_sobel_inst_u_sober_compare_submodule_n44), .Y(n5972) );
  NOR3X2 U6867 ( .A(median_sobel_inst_u_sober_compare_submodule_n267), .B(
        n7386), .C(n5972), .Y(n5006) );
  AOI21X2 U6868 ( .A0(n5009), .A1(
        median_sobel_inst_u_sober_compare_submodule_n255), .B0(n5006), .Y(
        n5008) );
  NOR3X2 U6869 ( .A(n5973), .B(
        median_sobel_inst_u_sober_compare_submodule_n403), .C(n5015), .Y(n5007) );
  NOR2BX4 U6870 ( .AN(n5008), .B(n5007), .Y(n7198) );
  NAND2X1 U6871 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n297), .Y(n5022) );
  INVX3 U6872 ( .A(n5009), .Y(n5010) );
  NOR2X4 U6873 ( .A(median_sobel_inst_u_sober_compare_submodule_n255), .B(
        n5010), .Y(n5013) );
  AND3X4 U6874 ( .A(n5974), .B(median_sobel_inst_u_sober_compare_submodule_n33), .C(median_sobel_inst_u_sober_compare_submodule_n265), .Y(n5011) );
  BUFX8 U6875 ( .A(n5014), .Y(n7202) );
  NAND3X2 U6876 ( .A(n5792), .B(
        median_sobel_inst_u_sober_compare_submodule_n403), .C(n5015), .Y(n5020) );
  NOR2X1 U6877 ( .A(median_sobel_inst_u_sober_compare_submodule_n267), .B(
        median_sobel_inst_u_sober_compare_submodule_n65), .Y(n5016) );
  NOR2BX1 U6878 ( .AN(median_sobel_inst_u_sober_compare_submodule_n33), .B(
        median_sobel_inst_u_sober_compare_submodule_n265), .Y(n5017) );
  NAND2X2 U6879 ( .A(n5017), .B(n5974), .Y(n5018) );
  AND3X8 U6880 ( .A(n5020), .B(n5019), .C(n5018), .Y(n7199) );
  OA22X2 U6881 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n413), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n354), .Y(n5021) );
  OAI211X1 U6882 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n259), .B0(n5022), .C0(
        n5021), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[3]) );
  NOR2X2 U6883 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6819) );
  NOR2BX1 U6884 ( .AN(n6820), .B(n6819), .Y(n5025) );
  NOR2X2 U6885 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), .Y(n5033) );
  NOR2X2 U6886 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6344) );
  NOR2X1 U6887 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n371), .Y(n5034) );
  NAND2X2 U6888 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[0]), .Y(n5924) );
  NOR2X1 U6889 ( .A(n6067), .B(n5029), .Y(n5032) );
  NAND2X2 U6890 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6210) );
  NAND2X1 U6891 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(n6213) );
  NAND2X1 U6892 ( .A(n5030), .B(n6213), .Y(n5031) );
  INVX3 U6893 ( .A(n5033), .Y(n5279) );
  NAND2X1 U6894 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), .Y(n6274) );
  INVX3 U6895 ( .A(n6274), .Y(n5277) );
  NAND2X1 U6896 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[5]), .Y(n5278) );
  OAI2BB1X4 U6897 ( .A0N(n5279), .A1N(n5277), .B0(n5278), .Y(n6342) );
  NAND2X2 U6898 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[6]), .Y(n6343) );
  NAND2X1 U6899 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n371), .Y(n6349) );
  AOI21X2 U6900 ( .A0(n6342), .A1(n5036), .B0(n5035), .Y(n5037) );
  XNOR2X4 U6901 ( .A(n5039), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]) );
  OAI22X2 U6902 ( .A0(median_sobel_inst_n1152), .A1(n5806), .B0(n4329), .B1(
        median_sobel_inst_n439), .Y(n5050) );
  OAI22X4 U6903 ( .A0(n5808), .A1(median_sobel_inst_n1173), .B0(
        median_sobel_inst_n1153), .B1(n5289), .Y(n5049) );
  NAND2BX2 U6904 ( .AN(median_sobel_inst_n967), .B(n3645), .Y(n5052) );
  INVX2 U6905 ( .A(median_sobel_inst_n1027), .Y(n5874) );
  NOR2X2 U6906 ( .A(n5289), .B(n5874), .Y(n5053) );
  NAND2X4 U6907 ( .A(n4756), .B(median_sobel_inst_n63), .Y(n5059) );
  NAND2BX1 U6908 ( .AN(median_sobel_inst_n442), .B(n5785), .Y(n5055) );
  NAND2X1 U6909 ( .A(n5683), .B(median_sobel_inst_n94), .Y(n5068) );
  NAND2BX1 U6910 ( .AN(median_sobel_inst_n441), .B(n5785), .Y(n5067) );
  NAND2BX1 U6911 ( .AN(median_sobel_inst_n419), .B(n5785), .Y(n5070) );
  NAND2X1 U6912 ( .A(n5414), .B(median_sobel_inst_n695), .Y(n5072) );
  NAND4X2 U6913 ( .A(n5077), .B(n5076), .C(n5075), .D(n5074), .Y(
        median_sobel_inst_data_g_r[0]) );
  NAND2BX2 U6914 ( .AN(median_sobel_inst_n972), .B(n3645), .Y(n5079) );
  NAND2BX2 U6915 ( .AN(median_sobel_inst_n939), .B(n5699), .Y(n5081) );
  NOR2BX4 U6916 ( .AN(n5085), .B(n5084), .Y(n5093) );
  INVX3 U6917 ( .A(median_sobel_inst_n981), .Y(n5086) );
  OAI21X4 U6918 ( .A0(n5089), .A1(n5088), .B0(n5087), .Y(n5092) );
  OAI2BB1X4 U6919 ( .A0N(n5093), .A1N(n5092), .B0(n5091), .Y(
        median_sobel_inst_u_median_filter_submodule_a47_w) );
  NAND2X1 U6920 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n201), .Y(n5095) );
  OAI211X1 U6921 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n401), .B0(n5095), .C0(
        n5094), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[4]) );
  NAND3XL U6922 ( .A(n7399), .B(n6931), .C(conv_inst_n16), .Y(n5098) );
  NOR2X1 U6923 ( .A(n2265), .B(n7138), .Y(n5101) );
  AOI211X1 U6924 ( .A0(n7094), .A1(n7546), .B0(n5101), .C0(n5100), .Y(n5103)
         );
  NAND2X2 U6925 ( .A(conv_inst_conv_3_r[1]), .B(conv_inst_data_abc_3_r[1]), 
        .Y(n6139) );
  NOR2X4 U6926 ( .A(conv_inst_conv_3_r[5]), .B(conv_inst_data_abc_3_r[5]), .Y(
        n5709) );
  NOR2X4 U6927 ( .A(n5707), .B(n5709), .Y(n5702) );
  NOR2X4 U6928 ( .A(conv_inst_conv_3_r[6]), .B(conv_inst_data_abc_3_r[6]), .Y(
        n5703) );
  NOR2X4 U6929 ( .A(conv_inst_conv_3_r[7]), .B(conv_inst_data_abc_3_r[7]), .Y(
        n5367) );
  NAND2X2 U6930 ( .A(n5702), .B(n5106), .Y(n5108) );
  NAND2X4 U6931 ( .A(conv_inst_n41), .B(conv_inst_data_abc_3_r[4]), .Y(n6062)
         );
  NAND2X2 U6932 ( .A(conv_inst_conv_3_r[5]), .B(conv_inst_data_abc_3_r[5]), 
        .Y(n5710) );
  OAI21X4 U6933 ( .A0(n5709), .A1(n6062), .B0(n5710), .Y(n5701) );
  OR2X2 U6934 ( .A(n5367), .B(n5704), .Y(n5104) );
  NAND2X1 U6935 ( .A(conv_inst_conv_3_r[7]), .B(conv_inst_data_abc_3_r[7]), 
        .Y(n5368) );
  NAND2X2 U6936 ( .A(n5104), .B(n5368), .Y(n5105) );
  AOI21X4 U6937 ( .A0(n5701), .A1(n5106), .B0(n5105), .Y(n5107) );
  OA21X4 U6938 ( .A0(n5363), .A1(n5108), .B0(n5107), .Y(n5109) );
  NOR2X2 U6939 ( .A(conv_inst_conv_3_r[8]), .B(conv_inst_data_abc_3_r[8]), .Y(
        n6420) );
  NAND2X2 U6940 ( .A(conv_inst_conv_3_r[8]), .B(conv_inst_data_abc_3_r[8]), 
        .Y(n7081) );
  NAND2X2 U6941 ( .A(conv_inst_conv_3_r[9]), .B(conv_inst_data_abc_3_r[9]), 
        .Y(n7086) );
  OAI21X4 U6942 ( .A0(n7085), .A1(n7081), .B0(n7086), .Y(n7074) );
  AOI21X4 U6943 ( .A0(n5112), .A1(n7074), .B0(n5111), .Y(n7056) );
  AO21X4 U6944 ( .A0(n7084), .A1(n5115), .B0(n5114), .Y(n5116) );
  INVX3 U6945 ( .A(n5116), .Y(n5117) );
  NAND2X4 U6946 ( .A(n5117), .B(conv_inst_conv_3_r[16]), .Y(n5118) );
  AOI21X4 U6947 ( .A0(n5119), .A1(n5118), .B0(n4668), .Y(conv_inst_N2690) );
  NOR2X2 U6948 ( .A(median_sobel_inst_n1054), .B(median_sobel_inst_n46), .Y(
        n6338) );
  NAND2BX1 U6949 ( .AN(med_sobel_isFirst_signal_r), .B(median_sobel_inst_n394), 
        .Y(n5120) );
  NOR2X8 U6950 ( .A(n5123), .B(n5122), .Y(n6988) );
  NOR2X2 U6951 ( .A(n6584), .B(median_sobel_inst_n181), .Y(n6586) );
  XNOR2X1 U6952 ( .A(n5124), .B(median_sobel_inst_n180), .Y(n5125) );
  NOR2X2 U6953 ( .A(n5126), .B(n5128), .Y(n6863) );
  NOR2X2 U6954 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n375), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .Y(n6869) );
  NOR2X2 U6955 ( .A(n6866), .B(n6869), .Y(n5132) );
  NAND2X1 U6956 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .Y(n6524) );
  NAND2X1 U6957 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .Y(n6865)
         );
  NAND2X1 U6958 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n375), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .Y(n6870) );
  OAI21X1 U6959 ( .A0(n6869), .A1(n6865), .B0(n6870), .Y(n5131) );
  NOR2X1 U6960 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .Y(n6377) );
  NAND2X1 U6961 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .Y(n6378) );
  OA21X4 U6962 ( .A0(n6377), .A1(n6380), .B0(n6378), .Y(n6412) );
  NOR2X1 U6963 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n372), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .Y(n6411) );
  OR2X4 U6964 ( .A(n6411), .B(n5136), .Y(n5137) );
  NAND2X1 U6965 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n372), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .Y(n6410) );
  NOR2X2 U6966 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n359), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n6893) );
  OR2X4 U6967 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .Y(n5594) );
  AOI2BB2X2 U6968 ( .B0(median_sobel_inst_u_median_filter_submodule_n781), 
        .B1(n7464), .A0N(median_sobel_inst_u_median_filter_submodule_n926), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n176), .Y(n5143) );
  NAND3X2 U6969 ( .A(n5140), .B(n5139), .C(n5152), .Y(n5142) );
  OAI2BB1X4 U6970 ( .A0N(n5143), .A1N(n5142), .B0(n5141), .Y(n5147) );
  OAI21X2 U6971 ( .A0(n7381), .A1(n5144), .B0(n7482), .Y(n5146) );
  NAND2X1 U6972 ( .A(median_sobel_inst_u_median_filter_submodule_n783), .B(
        median_sobel_inst_u_median_filter_submodule_n182), .Y(n5148) );
  AOI2BB1X1 U6973 ( .A0N(median_sobel_inst_u_median_filter_submodule_n934), 
        .A1N(n7476), .B0(median_sobel_inst_u_median_filter_submodule_n778), 
        .Y(n5149) );
  OAI22X1 U6974 ( .A0(median_sobel_inst_u_median_filter_submodule_n197), .A1(
        n7482), .B0(median_sobel_inst_u_median_filter_submodule_n229), .B1(
        n5150), .Y(n5163) );
  AOI2BB2X2 U6975 ( .B0(median_sobel_inst_u_median_filter_submodule_n930), 
        .B1(median_sobel_inst_u_median_filter_submodule_n892), .A0N(
        median_sobel_inst_u_median_filter_submodule_n781), .A1N(
        median_sobel_inst_u_median_filter_submodule_n1303), .Y(n5160) );
  NOR2BX2 U6976 ( .AN(median_sobel_inst_u_median_filter_submodule_n176), .B(
        median_sobel_inst_u_median_filter_submodule_n151), .Y(n5156) );
  INVX1 U6977 ( .A(median_sobel_inst_u_median_filter_submodule_n176), .Y(n5154) );
  OAI21X4 U6978 ( .A0(n5157), .A1(n5156), .B0(n5155), .Y(n5159) );
  INVX2 U6979 ( .A(median_sobel_inst_u_median_filter_submodule_n197), .Y(n7174) );
  OAI22X2 U6980 ( .A0(median_sobel_inst_u_median_filter_submodule_n1309), .A1(
        n7174), .B0(median_sobel_inst_u_median_filter_submodule_n930), .B1(
        median_sobel_inst_u_median_filter_submodule_n892), .Y(n5158) );
  AOI21X4 U6981 ( .A0(n5160), .A1(n5159), .B0(n5158), .Y(n5162) );
  NOR2X1 U6982 ( .A(n7176), .B(n5164), .Y(n5178) );
  NAND2X4 U6983 ( .A(n5170), .B(n5169), .Y(n5172) );
  AOI22X1 U6984 ( .A0(median_sobel_inst_u_median_filter_submodule_n934), .A1(
        median_sobel_inst_u_median_filter_submodule_n963), .B0(
        median_sobel_inst_u_median_filter_submodule_n783), .B1(
        median_sobel_inst_u_median_filter_submodule_n229), .Y(n5171) );
  NAND2X6 U6985 ( .A(n5172), .B(n5171), .Y(n5175) );
  NAND2BX4 U6986 ( .AN(n5173), .B(
        median_sobel_inst_u_median_filter_submodule_n778), .Y(n5174) );
  NAND2BX1 U6987 ( .AN(median_sobel_inst_n37), .B(n5681), .Y(n5183) );
  NAND2X2 U6988 ( .A(n5883), .B(median_sobel_inst_n312), .Y(n5180) );
  NAND2BX1 U6989 ( .AN(median_sobel_inst_n43), .B(n5419), .Y(n5185) );
  XOR2X2 U6990 ( .A(n5187), .B(n5896), .Y(n6085) );
  NAND2X4 U6991 ( .A(n6356), .B(n6085), .Y(n6475) );
  OR2X4 U6992 ( .A(n6475), .B(n6472), .Y(n5189) );
  NAND2X2 U6993 ( .A(n4543), .B(n5188), .Y(n6473) );
  NOR2X4 U6994 ( .A(n5191), .B(n5190), .Y(n5193) );
  INVX3 U6995 ( .A(n5207), .Y(n5209) );
  INVX3 U6996 ( .A(n5211), .Y(n5210) );
  NAND2X4 U6997 ( .A(input_data_ready_r[22]), .B(n5222), .Y(n6976) );
  NOR2BX1 U6998 ( .AN(median_sobel_inst_sobel_out_data_w[3]), .B(n7218), .Y(
        n5228) );
  AOI211X1 U6999 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[3]), .B0(
        conv_result_w[3]), .C0(n5228), .Y(n5232) );
  OAI22XL U7000 ( .A0(n2263), .A1(n7221), .B0(n1904), .B1(n7222), .Y(n5230) );
  OAI22XL U7001 ( .A0(n2272), .A1(n7223), .B0(n2260), .B1(n7224), .Y(n5229) );
  NOR2BX1 U7002 ( .AN(median_sobel_inst_sobel_out_data_w[4]), .B(n7218), .Y(
        n5233) );
  AOI211X1 U7003 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[4]), .B0(
        conv_result_w[4]), .C0(n5233), .Y(n5237) );
  OAI22XL U7004 ( .A0(n1866), .A1(n7221), .B0(n1938), .B1(n7222), .Y(n5235) );
  OAI22XL U7005 ( .A0(n2265), .A1(n7223), .B0(n1901), .B1(n7224), .Y(n5234) );
  NOR2BX1 U7006 ( .AN(median_sobel_inst_sobel_out_data_w[6]), .B(n7218), .Y(
        n5238) );
  AOI211X1 U7007 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[6]), .B0(
        conv_result_w[6]), .C0(n5238), .Y(n5242) );
  OAI22XL U7008 ( .A0(n1865), .A1(n7221), .B0(n1869), .B1(n7222), .Y(n5240) );
  OAI22XL U7009 ( .A0(n2266), .A1(n7223), .B0(n2262), .B1(n7224), .Y(n5239) );
  NOR2BX1 U7010 ( .AN(median_sobel_inst_sobel_out_data_w[7]), .B(n7218), .Y(
        n5243) );
  AOI211X1 U7011 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[7]), .B0(
        conv_result_w[7]), .C0(n5243), .Y(n5247) );
  OAI22XL U7012 ( .A0(n1864), .A1(n7221), .B0(n1868), .B1(n7222), .Y(n5245) );
  OAI22XL U7013 ( .A0(n2267), .A1(n7223), .B0(n1903), .B1(n7224), .Y(n5244) );
  NOR2X2 U7014 ( .A(n6836), .B(n5249), .Y(n6840) );
  NOR2X2 U7015 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[7]), .Y(n5250) );
  NAND2X2 U7016 ( .A(n6840), .B(n5253), .Y(n5255) );
  NAND2X2 U7017 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n369), .Y(n6164) );
  NOR2X2 U7018 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), .Y(n6107) );
  NOR2X2 U7019 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n333), .Y(n6426) );
  NOR2X1 U7020 ( .A(n6107), .B(n6426), .Y(n5248) );
  NAND2X2 U7021 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[2]), .Y(n6423) );
  NAND2X1 U7022 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n333), .Y(n6427) );
  OR2X2 U7023 ( .A(n5250), .B(n6841), .Y(n5251) );
  OAI21X4 U7024 ( .A0(n5255), .A1(n6835), .B0(n5254), .Y(n6829) );
  NAND2X2 U7025 ( .A(n6829), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .Y(n5256) );
  NAND2X2 U7026 ( .A(conv_inst_n162), .B(conv_inst_data_abc_1_r[2]), .Y(n6242)
         );
  NAND2X2 U7027 ( .A(conv_inst_conv_1_r[3]), .B(conv_inst_n161), .Y(n5952) );
  OA21X4 U7028 ( .A0(n5951), .A1(n6242), .B0(n5952), .Y(n5257) );
  NAND2X2 U7029 ( .A(conv_inst_conv_1_r[4]), .B(conv_inst_data_abc_1_r[4]), 
        .Y(n6399) );
  NAND2X2 U7030 ( .A(conv_inst_conv_1_r[5]), .B(conv_inst_data_abc_1_r[5]), 
        .Y(n6404) );
  NAND2X2 U7031 ( .A(conv_inst_conv_1_r[6]), .B(conv_inst_data_abc_1_r[6]), 
        .Y(n6312) );
  NOR2X1 U7032 ( .A(n5833), .B(n5761), .Y(n5262) );
  NAND2X4 U7033 ( .A(conv_inst_conv_1_r[8]), .B(conv_inst_data_abc_1_r[8]), 
        .Y(n6317) );
  NAND2X2 U7034 ( .A(conv_inst_n168), .B(conv_inst_data_abc_1_r[9]), .Y(n5754)
         );
  NAND2X2 U7035 ( .A(conv_inst_conv_1_r[10]), .B(conv_inst_data_abc_1_r[10]), 
        .Y(n5834) );
  OAI21X1 U7036 ( .A0(n5837), .A1(n5761), .B0(n5834), .Y(n5261) );
  AO21X4 U7037 ( .A0(n7045), .A1(n5262), .B0(n5261), .Y(n5263) );
  XOR2X1 U7038 ( .A(n5263), .B(conv_inst_n43), .Y(n5264) );
  AND2X4 U7039 ( .A(n5264), .B(n7358), .Y(conv_inst_N230) );
  OAI22X1 U7040 ( .A0(conv_inst_n253), .A1(n5870), .B0(n6036), .B1(n5831), .Y(
        conv_inst_N206) );
  INVX3 U7041 ( .A(n5268), .Y(n5267) );
  AO21X1 U7042 ( .A0(n6348), .A1(n6341), .B0(n6342), .Y(n5275) );
  NAND2X1 U7043 ( .A(n5279), .B(n5278), .Y(n5280) );
  AOI2BB2X4 U7044 ( .B0(n7177), .B1(n7464), .A0N(n5589), .A1N(
        median_sobel_inst_u_median_filter_submodule_n781), .Y(n5281) );
  NAND2BX2 U7045 ( .AN(median_sobel_inst_n972), .B(n5414), .Y(n5286) );
  NAND2BX2 U7046 ( .AN(median_sobel_inst_n936), .B(n5681), .Y(n5292) );
  NAND2BX2 U7047 ( .AN(median_sobel_inst_n42), .B(n4524), .Y(n5291) );
  NAND2BX2 U7048 ( .AN(median_sobel_inst_n958), .B(n5858), .Y(n5290) );
  NOR2X1 U7049 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n48), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n50), .Y(n6038) );
  NAND2X2 U7050 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n59), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(n6039) );
  NAND2X1 U7051 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n48), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n50), .Y(n6037) );
  OAI21X2 U7052 ( .A0(n6038), .A1(n6039), .B0(n6037), .Y(n5983) );
  NOR2X2 U7053 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n370), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .Y(n5301) );
  NOR2X2 U7054 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .Y(n6043) );
  NAND2X2 U7055 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n370), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .Y(n6041) );
  NAND2X1 U7056 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p4_r[3]), .Y(n6044) );
  OAI21X1 U7057 ( .A0(n6043), .A1(n6041), .B0(n6044), .Y(n5302) );
  AOI21X4 U7058 ( .A0(n5983), .A1(n5303), .B0(n5302), .Y(n5386) );
  INVX3 U7059 ( .A(n5386), .Y(n6904) );
  NOR3X4 U7060 ( .A(curr_state[3]), .B(n5876), .C(n4542), .Y(n5307) );
  NAND4X2 U7061 ( .A(n5816), .B(n5307), .C(curr_state[1]), .D(n4932), .Y(n5308) );
  NAND3X4 U7062 ( .A(n5309), .B(n4542), .C(n1900), .Y(n5319) );
  NAND3X2 U7063 ( .A(n5313), .B(n7672), .C(n5310), .Y(n5311) );
  NAND2X4 U7064 ( .A(n5319), .B(n5311), .Y(n5312) );
  NAND2BX4 U7065 ( .AN(n1890), .B(n5322), .Y(n5318) );
  OAI21X1 U7066 ( .A0(n878), .A1(n7623), .B0(n5326), .Y(n5333) );
  OAI211X1 U7067 ( .A0(n5327), .A1(n4515), .B0(n7248), .C0(n878), .Y(n5332) );
  NOR2X1 U7068 ( .A(cnt[1]), .B(n878), .Y(n7245) );
  NOR2X2 U7069 ( .A(cnt[0]), .B(n4514), .Y(n7259) );
  XOR2X1 U7070 ( .A(n5329), .B(n7259), .Y(n5330) );
  NAND3X1 U7071 ( .A(n7623), .B(n5330), .C(n445), .Y(n5331) );
  NAND3X2 U7072 ( .A(n5333), .B(n5332), .C(n5331), .Y(n1347) );
  NOR2X4 U7073 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), .Y(
        n6143) );
  NAND2X2 U7074 ( .A(conv_inst_conv_4_r[1]), .B(conv_inst_data_bcd_4_r[1]), 
        .Y(n6144) );
  OAI21X4 U7075 ( .A0(n6143), .A1(n6146), .B0(n6144), .Y(n5957) );
  NOR2X4 U7076 ( .A(conv_inst_conv_4_r[2]), .B(conv_inst_data_bcd_4_r[2]), .Y(
        n6132) );
  NAND2X2 U7077 ( .A(n5957), .B(n5334), .Y(n5336) );
  NAND2X2 U7078 ( .A(conv_inst_conv_4_r[2]), .B(conv_inst_data_bcd_4_r[2]), 
        .Y(n6133) );
  NAND2X1 U7079 ( .A(conv_inst_conv_4_r[3]), .B(conv_inst_data_bcd_4_r[3]), 
        .Y(n5959) );
  OA21X4 U7080 ( .A0(n5958), .A1(n6133), .B0(n5959), .Y(n5335) );
  AND2X4 U7081 ( .A(n5336), .B(n5335), .Y(n5715) );
  NOR2X2 U7082 ( .A(conv_inst_conv_4_r[4]), .B(conv_inst_data_bcd_4_r[4]), .Y(
        n5731) );
  NOR2X4 U7083 ( .A(conv_inst_n44), .B(conv_inst_data_bcd_4_r[5]), .Y(n5733)
         );
  NOR2X4 U7084 ( .A(conv_inst_conv_4_r[6]), .B(conv_inst_data_bcd_4_r[6]), .Y(
        n5742) );
  NAND2X2 U7085 ( .A(n5739), .B(n5338), .Y(n5340) );
  NAND2X2 U7086 ( .A(conv_inst_conv_4_r[6]), .B(conv_inst_data_bcd_4_r[6]), 
        .Y(n5741) );
  OAI21X1 U7087 ( .A0(n5746), .A1(n5741), .B0(n5747), .Y(n5337) );
  AOI21X4 U7088 ( .A0(n5740), .A1(n5338), .B0(n5337), .Y(n5339) );
  OA21X4 U7089 ( .A0(n5715), .A1(n5340), .B0(n5339), .Y(n5341) );
  NOR2X2 U7090 ( .A(conv_inst_conv_4_r[8]), .B(conv_inst_data_bcd_4_r[8]), .Y(
        n5765) );
  NOR2X4 U7091 ( .A(conv_inst_conv_4_r[9]), .B(conv_inst_data_bcd_4_r[9]), .Y(
        n5767) );
  NOR2X4 U7092 ( .A(n5765), .B(n5767), .Y(n7028) );
  NOR2X1 U7093 ( .A(n7019), .B(n7018), .Y(n5343) );
  NAND2X2 U7094 ( .A(conv_inst_data_bcd_4_r[9]), .B(conv_inst_conv_4_r[9]), 
        .Y(n5768) );
  OAI21X4 U7095 ( .A0(n5767), .A1(n6443), .B0(n5768), .Y(n7027) );
  CLKINVX1 U7096 ( .A(n7027), .Y(n7022) );
  NAND2X2 U7097 ( .A(conv_inst_conv_4_r[10]), .B(conv_inst_data_bcd_4_r[10]), 
        .Y(n7030) );
  XNOR2X2 U7098 ( .A(n5344), .B(conv_inst_conv_4_r[11]), .Y(n5345) );
  AND2X2 U7099 ( .A(n5345), .B(n7358), .Y(conv_inst_N281) );
  NAND2BX2 U7100 ( .AN(median_sobel_inst_n41), .B(n5346), .Y(n5349) );
  NAND2BX2 U7101 ( .AN(median_sobel_inst_n36), .B(n5681), .Y(n5347) );
  NOR2BX1 U7102 ( .AN(median_sobel_inst_sobel_out_data_w[2]), .B(n7218), .Y(
        n5354) );
  AND2X2 U7103 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n60), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n5357) );
  NOR2X2 U7104 ( .A(n5357), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .Y(n6545) );
  OAI21X2 U7105 ( .A0(n6545), .A1(n7394), .B0(n6546), .Y(n5903) );
  NAND2X1 U7106 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n399), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n70), .Y(n5905) );
  NOR2X2 U7107 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n320), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n592), .Y(n6174) );
  NOR2X2 U7108 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .B(
        n7403), .Y(n6119) );
  NOR2X4 U7109 ( .A(n6119), .B(n6092), .Y(n6166) );
  NAND2X2 U7110 ( .A(n5360), .B(n6166), .Y(n5361) );
  NAND2X2 U7111 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .B(
        n7403), .Y(n6120) );
  NAND2X1 U7112 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n320), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n592), .Y(n6175) );
  NOR2BX1 U7113 ( .AN(n5702), .B(n5703), .Y(n5366) );
  CLKINVX1 U7114 ( .A(n5701), .Y(n5364) );
  OAI21X1 U7115 ( .A0(n5364), .A1(n5703), .B0(n5704), .Y(n5365) );
  XOR2X1 U7116 ( .A(n5371), .B(n5370), .Y(n5372) );
  NAND2BX1 U7117 ( .AN(median_sobel_inst_n38), .B(n5681), .Y(n5374) );
  NAND2BX2 U7118 ( .AN(median_sobel_inst_n39), .B(n5681), .Y(n5376) );
  NAND2BX2 U7119 ( .AN(median_sobel_inst_n54), .B(n5414), .Y(n5375) );
  OA22X4 U7120 ( .A0(median_sobel_inst_u_median_filter_submodule_n834), .A1(
        n4540), .B0(n4537), .B1(
        median_sobel_inst_u_median_filter_submodule_n839), .Y(n5379) );
  INVX1 U7121 ( .A(n6905), .Y(n5384) );
  OAI21X4 U7122 ( .A0(n5387), .A1(n5386), .B0(n5385), .Y(n6909) );
  INVX3 U7123 ( .A(median_sobel_inst_n773), .Y(n5389) );
  OAI22X2 U7124 ( .A0(n5391), .A1(n7368), .B0(n5390), .B1(
        median_sobel_inst_data_a_r[2]), .Y(n5392) );
  NAND2X6 U7125 ( .A(n5402), .B(n5401), .Y(median_sobel_inst_data_b_r[1]) );
  NAND2BX1 U7126 ( .AN(median_sobel_inst_n50), .B(n5681), .Y(n5409) );
  NOR2X1 U7127 ( .A(n7463), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n5411) );
  NOR2X1 U7128 ( .A(n7470), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), .Y(n6034) );
  NAND2X1 U7129 ( .A(n7463), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n6032) );
  NOR2X1 U7130 ( .A(n7448), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n5964) );
  NAND2X1 U7131 ( .A(n7438), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n6201) );
  NOR2X1 U7132 ( .A(n4787), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n6277) );
  NOR2X2 U7133 ( .A(n7465), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n6279) );
  NOR2X2 U7134 ( .A(n6277), .B(n6279), .Y(n6748) );
  NOR2X2 U7135 ( .A(n7474), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n6750) );
  NOR2X2 U7136 ( .A(n7450), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n6755) );
  NAND2X1 U7137 ( .A(n7465), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n6280) );
  OAI21X2 U7138 ( .A0(n6279), .A1(n6359), .B0(n6280), .Y(n6252) );
  NAND2X1 U7139 ( .A(n7474), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n6749) );
  NOR2X1 U7140 ( .A(n7387), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n6478) );
  NOR2X1 U7141 ( .A(n7454), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n6764) );
  OAI21XL U7142 ( .A0(n6764), .A1(n6760), .B0(n6765), .Y(n5412) );
  NAND2BX2 U7143 ( .AN(median_sobel_inst_n33), .B(n5681), .Y(n5418) );
  NAND4X8 U7144 ( .A(n5423), .B(n5422), .C(n5421), .D(n5420), .Y(
        median_sobel_inst_data_b_r[5]) );
  AOI22X4 U7145 ( .A0(n7445), .A1(n5424), .B0(n4647), .B1(
        median_sobel_inst_n142), .Y(n5428) );
  INVX4 U7146 ( .A(median_sobel_inst_data_e_r[1]), .Y(n5429) );
  NAND2X2 U7147 ( .A(median_sobel_inst_data_b_r[1]), .B(n5429), .Y(n5430) );
  INVX4 U7148 ( .A(median_sobel_inst_data_b_r[1]), .Y(n5477) );
  NAND2X2 U7149 ( .A(n4691), .B(median_sobel_inst_data_e_r[6]), .Y(n5435) );
  OR2X4 U7150 ( .A(n5441), .B(median_sobel_inst_data_b_r[7]), .Y(n5440) );
  NAND2BX2 U7151 ( .AN(median_sobel_inst_n975), .B(n5681), .Y(n5445) );
  NAND2X2 U7152 ( .A(n4524), .B(median_sobel_inst_n118), .Y(n5444) );
  CLKINVX1 U7153 ( .A(median_sobel_inst_data_i_r[1]), .Y(n5446) );
  OAI22X2 U7154 ( .A0(median_sobel_inst_data_i_r[1]), .A1(n5448), .B0(n5447), 
        .B1(median_sobel_inst_data_i_r[2]), .Y(n5451) );
  NOR2X4 U7155 ( .A(n5454), .B(median_sobel_inst_data_c_r[6]), .Y(n5457) );
  INVX3 U7156 ( .A(n5457), .Y(n5455) );
  INVX3 U7157 ( .A(N125), .Y(n3523) );
  OAI22X1 U7158 ( .A0(n6595), .A1(n7675), .B0(n3523), .B1(n6596), .Y(n5463) );
  NAND2BX1 U7159 ( .AN(conv_inst_n22), .B(n5464), .Y(n5469) );
  NOR2X1 U7160 ( .A(n7013), .B(n5469), .Y(n5471) );
  AND2X2 U7161 ( .A(n7027), .B(n5465), .Y(n5468) );
  AO21X4 U7162 ( .A0(n7029), .A1(n5471), .B0(n5470), .Y(n5472) );
  XOR2X4 U7163 ( .A(n5472), .B(conv_inst_conv_4_r[16]), .Y(n5473) );
  CLKINVX1 U7164 ( .A(median_sobel_inst_data_h_r[3]), .Y(n5480) );
  CLKINVX1 U7165 ( .A(median_sobel_inst_data_b_r[2]), .Y(n5479) );
  CLKINVX1 U7166 ( .A(median_sobel_inst_data_b_r[1]), .Y(n5478) );
  INVX3 U7167 ( .A(median_sobel_inst_data_b_r[4]), .Y(n5482) );
  NAND2X1 U7168 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n17), .Y(n5496) );
  OA22X1 U7169 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n71), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n353), .Y(n5495) );
  OAI211X1 U7170 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n398), .B0(n5496), .C0(
        n5495), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[5]) );
  NAND2X1 U7171 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n20), .Y(n5498) );
  OA22X1 U7172 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n411), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n414), .Y(n5497) );
  OAI211X1 U7173 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n399), .B0(n5498), .C0(
        n5497), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[8]) );
  NOR2X4 U7174 ( .A(conv_inst_conv_2_r[5]), .B(conv_inst_data_bcd_2_r[5]), .Y(
        n6187) );
  NAND2X2 U7175 ( .A(conv_inst_conv_2_r[4]), .B(conv_inst_n179), .Y(n6184) );
  NAND2X2 U7176 ( .A(conv_inst_conv_2_r[5]), .B(conv_inst_data_bcd_2_r[5]), 
        .Y(n6188) );
  OAI21X4 U7177 ( .A0(n6187), .A1(n6184), .B0(n6188), .Y(n6292) );
  NOR2X2 U7178 ( .A(conv_inst_n39), .B(conv_inst_n181), .Y(n6299) );
  NOR2X2 U7179 ( .A(n6294), .B(n6299), .Y(n5501) );
  NAND2X2 U7180 ( .A(conv_inst_conv_2_r[6]), .B(conv_inst_data_bcd_2_r[6]), 
        .Y(n6293) );
  NAND2X1 U7181 ( .A(conv_inst_n39), .B(conv_inst_n181), .Y(n6300) );
  OR2X4 U7182 ( .A(conv_inst_conv_2_r[4]), .B(conv_inst_n179), .Y(n6186) );
  INVX3 U7183 ( .A(n6186), .Y(n5500) );
  NOR2X4 U7184 ( .A(n5500), .B(n6187), .Y(n6291) );
  NOR2X4 U7185 ( .A(conv_inst_conv_2_r[1]), .B(conv_inst_data_bcd_2_r[1]), .Y(
        n6048) );
  OAI21X4 U7186 ( .A0(n6048), .A1(n6128), .B0(n6049), .Y(n5938) );
  NOR2X4 U7187 ( .A(conv_inst_conv_2_r[2]), .B(conv_inst_n184), .Y(n6053) );
  NAND2X4 U7188 ( .A(n5938), .B(n5502), .Y(n5504) );
  NAND2X2 U7189 ( .A(conv_inst_conv_2_r[3]), .B(conv_inst_data_bcd_2_r[3]), 
        .Y(n5940) );
  OAI21X2 U7190 ( .A0(n5939), .A1(n6054), .B0(n5940), .Y(n5503) );
  NOR2X4 U7191 ( .A(conv_inst_conv_2_r[8]), .B(conv_inst_data_bcd_2_r[8]), .Y(
        n5776) );
  NOR2X4 U7192 ( .A(n5776), .B(n5778), .Y(n6504) );
  NAND2X2 U7193 ( .A(n5507), .B(n6504), .Y(n7035) );
  OR2X2 U7194 ( .A(n6466), .B(n6469), .Y(n5508) );
  NAND2X4 U7195 ( .A(conv_inst_conv_2_r[8]), .B(conv_inst_data_bcd_2_r[8]), 
        .Y(n6247) );
  NAND2X2 U7196 ( .A(conv_inst_conv_2_r[9]), .B(conv_inst_data_bcd_2_r[9]), 
        .Y(n5779) );
  OAI21X4 U7197 ( .A0(n5778), .A1(n6247), .B0(n5779), .Y(n6435) );
  NAND2X2 U7198 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n59), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n5928) );
  OAI21X4 U7199 ( .A0(n5927), .A1(n5928), .B0(n5926), .Y(n5947) );
  NOR2X1 U7200 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n370), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .Y(n5510) );
  BUFX4 U7201 ( .A(n5510), .Y(n6021) );
  NOR2X2 U7202 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n6023) );
  NOR2X2 U7203 ( .A(n6021), .B(n6023), .Y(n5512) );
  NAND2X1 U7204 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n6024) );
  OAI21X2 U7205 ( .A0(n6023), .A1(n6020), .B0(n6024), .Y(n5511) );
  NOR2X2 U7206 ( .A(n7457), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n6354) );
  NOR2X2 U7207 ( .A(n6354), .B(n6530), .Y(n6772) );
  NOR2X2 U7208 ( .A(n7456), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n6775) );
  NAND2X1 U7209 ( .A(n6772), .B(n5520), .Y(n5518) );
  NOR2X2 U7210 ( .A(n7471), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .Y(n5967) );
  NOR2X2 U7211 ( .A(n7481), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0]), .Y(n5970) );
  NAND2X1 U7212 ( .A(n7471), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .Y(n5968) );
  NOR2X2 U7213 ( .A(n4792), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n6071) );
  NAND2X2 U7214 ( .A(n4792), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n6180) );
  NAND2X1 U7215 ( .A(n7466), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n6072) );
  AOI21X4 U7216 ( .A0(n6179), .A1(n5517), .B0(n5516), .Y(n6353) );
  NAND2X1 U7217 ( .A(n7456), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n6774) );
  NAND2X1 U7218 ( .A(n7462), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), .Y(n6780) );
  NOR2X1 U7219 ( .A(n7473), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n6455) );
  NAND2X1 U7220 ( .A(n5521), .B(n6453), .Y(n5522) );
  NOR2X2 U7221 ( .A(n5525), .B(median_sobel_inst_data_f_r[3]), .Y(n5528) );
  NAND2BX1 U7222 ( .AN(median_sobel_inst_u_median_filter_submodule_n966), .B(
        median_sobel_inst_u_median_filter_submodule_net86856), .Y(n5540) );
  NAND2BX4 U7223 ( .AN(median_sobel_inst_u_median_filter_submodule_net87617), 
        .B(median_sobel_inst_u_median_filter_submodule_net84247), .Y(n5547) );
  NAND3X1 U7224 ( .A(n5547), .B(
        median_sobel_inst_u_median_filter_submodule_net87846), .C(
        median_sobel_inst_u_median_filter_submodule_n796), .Y(n5539) );
  NAND4X1 U7225 ( .A(n5547), .B(n5546), .C(
        median_sobel_inst_u_median_filter_submodule_n894), .D(
        median_sobel_inst_u_median_filter_submodule_n807), .Y(n5538) );
  NAND2BX1 U7226 ( .AN(median_sobel_inst_u_median_filter_submodule_net84247), 
        .B(median_sobel_inst_u_median_filter_submodule_net87617), .Y(n5537) );
  AND4X4 U7227 ( .A(n5540), .B(n5539), .C(n5538), .D(n5537), .Y(n5554) );
  NAND2X4 U7228 ( .A(median_sobel_inst_u_median_filter_submodule_n166), .B(
        median_sobel_inst_u_median_filter_submodule_n995), .Y(n5558) );
  OAI2BB2X2 U7229 ( .B0(median_sobel_inst_u_median_filter_submodule_n1212), 
        .B1(n7159), .A0N(median_sobel_inst_u_median_filter_submodule_n1219), 
        .A1N(n5558), .Y(n5542) );
  OR2X4 U7230 ( .A(median_sobel_inst_u_median_filter_submodule_n166), .B(
        median_sobel_inst_u_median_filter_submodule_n995), .Y(n5560) );
  OR2X4 U7231 ( .A(n5542), .B(n5541), .Y(n5552) );
  NAND2BX1 U7232 ( .AN(median_sobel_inst_u_median_filter_submodule_net83073), 
        .B(median_sobel_inst_u_median_filter_submodule_n1212), .Y(n5544) );
  NAND2BX1 U7233 ( .AN(median_sobel_inst_u_median_filter_submodule_net83841), 
        .B(median_sobel_inst_u_median_filter_submodule_net87818), .Y(n5543) );
  NAND2BX1 U7234 ( .AN(median_sobel_inst_u_median_filter_submodule_net87818), 
        .B(median_sobel_inst_u_median_filter_submodule_net83841), .Y(n5545) );
  NOR2X1 U7235 ( .A(median_sobel_inst_u_median_filter_submodule_n894), .B(
        median_sobel_inst_u_median_filter_submodule_n807), .Y(n5548) );
  OAI2BB1X4 U7236 ( .A0N(n5552), .A1N(n5551), .B0(n5550), .Y(n5553) );
  NOR2BX4 U7237 ( .AN(n5557), .B(n5556), .Y(n5573) );
  NAND2BX1 U7238 ( .AN(median_sobel_inst_u_median_filter_submodule_n1212), .B(
        median_sobel_inst_u_median_filter_submodule_net84165), .Y(n5561) );
  NAND2X2 U7239 ( .A(n5558), .B(
        median_sobel_inst_u_median_filter_submodule_n1244), .Y(n5559) );
  NAND3X2 U7240 ( .A(n5561), .B(n5560), .C(n5559), .Y(n5565) );
  AOI22X2 U7241 ( .A0(median_sobel_inst_u_median_filter_submodule_n790), .A1(
        median_sobel_inst_u_median_filter_submodule_net87818), .B0(
        median_sobel_inst_u_median_filter_submodule_n1212), .B1(n5562), .Y(
        n5564) );
  NAND2X2 U7242 ( .A(median_sobel_inst_u_median_filter_submodule_n894), .B(
        median_sobel_inst_u_median_filter_submodule_n793), .Y(n5563) );
  NAND2X2 U7243 ( .A(n5566), .B(
        median_sobel_inst_u_median_filter_submodule_n793), .Y(n5567) );
  NAND4BX4 U7244 ( .AN(n5571), .B(n5570), .C(n5569), .D(n5568), .Y(n5572) );
  NAND2BX1 U7245 ( .AN(median_sobel_inst_u_median_filter_submodule_net84165), 
        .B(median_sobel_inst_u_median_filter_submodule_net83073), .Y(n5576) );
  AOI2BB2X4 U7246 ( .B0(n5577), .B1(n5576), .A0N(
        median_sobel_inst_u_median_filter_submodule_net83841), .A1N(
        median_sobel_inst_u_median_filter_submodule_n790), .Y(n5584) );
  CLKINVX1 U7247 ( .A(median_sobel_inst_u_median_filter_submodule_net84111), 
        .Y(n7167) );
  OAI22X2 U7248 ( .A0(n5579), .A1(n5578), .B0(
        median_sobel_inst_u_median_filter_submodule_net84247), .B1(n7167), .Y(
        n5581) );
  OAI21X4 U7249 ( .A0(n5584), .A1(n5583), .B0(n5582), .Y(n5586) );
  CLKINVX1 U7250 ( .A(median_sobel_inst_u_median_filter_submodule_net84247), 
        .Y(n7168) );
  AOI2BB2X2 U7251 ( .B0(median_sobel_inst_u_median_filter_submodule_n966), 
        .B1(median_sobel_inst_u_median_filter_submodule_n787), .A0N(n7168), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net84111), .Y(n5585)
         );
  BUFX8 U7252 ( .A(n7169), .Y(n7180) );
  AOI2BB2X1 U7253 ( .B0(median_sobel_inst_u_median_filter_submodule_n894), 
        .B1(n5574), .A0N(n7166), .A1N(
        median_sobel_inst_u_median_filter_submodule_n793), .Y(n5587) );
  OAI211X1 U7254 ( .A0(n5588), .A1(
        median_sobel_inst_u_median_filter_submodule_n779), .B0(n5591), .C0(
        n5590), .Y(median_sobel_inst_u_median_filter_submodule_n853) );
  AND2X2 U7255 ( .A(n6898), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N240) );
  NAND2X1 U7256 ( .A(n6519), .B(
        median_sobel_inst_u_sober_compare_submodule_n19), .Y(n5598) );
  CLKINVX1 U7257 ( .A(n7202), .Y(n5596) );
  AOI2BB2X2 U7258 ( .B0(n5596), .B1(
        median_sobel_inst_u_sober_compare_submodule_n300), .A0N(n7199), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n351), .Y(n5597) );
  OAI211X1 U7259 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n397), .B0(n5598), .C0(
        n5597), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[7]) );
  NAND2X1 U7260 ( .A(conv_inst_conv_1_r[13]), .B(conv_inst_conv_1_r[14]), .Y(
        n7037) );
  OR2X2 U7261 ( .A(n7037), .B(conv_inst_n165), .Y(n5601) );
  NOR2X1 U7262 ( .A(n7042), .B(n5601), .Y(n5603) );
  NOR2X1 U7263 ( .A(n7043), .B(n5601), .Y(n5602) );
  AO21X4 U7264 ( .A0(n7045), .A1(n5603), .B0(n5602), .Y(n5604) );
  NAND2X4 U7265 ( .A(n5604), .B(n7543), .Y(n5605) );
  INVX3 U7266 ( .A(n5606), .Y(
        median_sobel_inst_u_median_filter_submodule_b5[1]) );
  AOI2BB2X2 U7267 ( .B0(median_sobel_inst_u_median_filter_submodule_n168), 
        .B1(median_sobel_inst_u_median_filter_submodule_n822), .A0N(
        median_sobel_inst_u_median_filter_submodule_n1131), .A1N(n7146), .Y(
        n5608) );
  NAND3X2 U7268 ( .A(n5608), .B(n5615), .C(n5607), .Y(n5612) );
  NOR2BX1 U7269 ( .AN(median_sobel_inst_u_median_filter_submodule_n1216), .B(
        median_sobel_inst_u_median_filter_submodule_n1214), .Y(n5626) );
  NOR2X4 U7270 ( .A(n5629), .B(
        median_sobel_inst_u_median_filter_submodule_n224), .Y(n5630) );
  AOI22X1 U7271 ( .A0(median_sobel_inst_u_median_filter_submodule_n821), .A1(
        median_sobel_inst_u_median_filter_submodule_n1224), .B0(n4312), .B1(
        n7171), .Y(n5632) );
  AOI21X1 U7272 ( .A0(n4179), .A1(
        median_sobel_inst_u_median_filter_submodule_n1209), .B0(
        median_sobel_inst_u_median_filter_submodule_n1214), .Y(n5633) );
  OA22X4 U7273 ( .A0(median_sobel_inst_u_median_filter_submodule_n832), .A1(
        n4540), .B0(n4537), .B1(
        median_sobel_inst_u_median_filter_submodule_n842), .Y(n5635) );
  INVX3 U7274 ( .A(n5644), .Y(n5637) );
  OAI21X4 U7275 ( .A0(n5640), .A1(n5644), .B0(n5646), .Y(n5643) );
  NAND2X6 U7276 ( .A(n5648), .B(n4545), .Y(n6326) );
  OAI21X4 U7277 ( .A0(n5667), .A1(n3557), .B0(n5653), .Y(n5651) );
  NOR2X6 U7278 ( .A(input_data_ready_r[5]), .B(input_data_ready_r[21]), .Y(
        n5654) );
  INVX3 U7279 ( .A(n5666), .Y(n5655) );
  NAND2X2 U7280 ( .A(n5663), .B(n5660), .Y(n5662) );
  NAND2X4 U7281 ( .A(n5673), .B(input_data_ready_r[15]), .Y(n6697) );
  OAI21X4 U7282 ( .A0(n6705), .A1(n5677), .B0(n5676), .Y(
        conv_inst_data_abc_w[9]) );
  XOR2X1 U7283 ( .A(n1999), .B(n7405), .Y(n5678) );
  CLKBUFX3 U7284 ( .A(i_rst_n), .Y(n7666) );
  MXI2X1 U7285 ( .A(median_sobel_inst_n196), .B(n7484), .S0(n6989), .Y(
        median_sobel_inst_n561) );
  CLKINVX1 U7286 ( .A(n1923), .Y(n6572) );
  MXI2X1 U7287 ( .A(median_sobel_inst_n211), .B(n7500), .S0(n6989), .Y(
        median_sobel_inst_n634) );
  MXI2X1 U7288 ( .A(median_sobel_inst_u_sober_compare_submodule_n354), .B(
        n7567), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n132) );
  MXI2X1 U7289 ( .A(median_sobel_inst_u_sober_compare_submodule_n410), .B(
        n7559), .S0(n5859), .Y(
        median_sobel_inst_u_sober_compare_submodule_n127) );
  MXI2X1 U7290 ( .A(median_sobel_inst_n221), .B(n7604), .S0(n5683), .Y(
        median_sobel_inst_n1241) );
  MXI2X1 U7291 ( .A(median_sobel_inst_n207), .B(n1935), .S0(n5884), .Y(
        median_sobel_inst_med_sobel_e_wait_r[5]) );
  MXI2X1 U7292 ( .A(n7608), .B(median_sobel_inst_n235), .S0(n5857), .Y(
        median_sobel_inst_n610) );
  MXI2X1 U7293 ( .A(median_sobel_inst_n264), .B(n1874), .S0(n5858), .Y(
        median_sobel_inst_med_sobel_e_wait_r[27]) );
  MXI2X1 U7294 ( .A(median_sobel_inst_n271), .B(n1935), .S0(n5858), .Y(
        median_sobel_inst_med_sobel_e_wait_r[30]) );
  MXI2X1 U7295 ( .A(n7436), .B(median_sobel_inst_n232), .S0(n5852), .Y(
        median_sobel_inst_n613) );
  MXI2X1 U7296 ( .A(n7437), .B(median_sobel_inst_n236), .S0(n5852), .Y(
        median_sobel_inst_n609) );
  NAND2X4 U7297 ( .A(n6591), .B(n7365), .Y(n5879) );
  NAND2X4 U7298 ( .A(n5879), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(n5688) );
  NAND2X2 U7299 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n5686) );
  AND2X4 U7300 ( .A(n5687), .B(n5686), .Y(n5880) );
  NOR2BX1 U7301 ( .AN(n5688), .B(n5880), .Y(n5689) );
  MXI2X1 U7302 ( .A(median_sobel_inst_n54), .B(median_sobel_inst_n260), .S0(
        n5883), .Y(n7520) );
  MXI2X1 U7303 ( .A(median_sobel_inst_n836), .B(median_sobel_inst_n259), .S0(
        n5883), .Y(n7519) );
  MXI2X1 U7304 ( .A(median_sobel_inst_n38), .B(median_sobel_inst_n222), .S0(
        n5883), .Y(n7522) );
  MXI2X1 U7305 ( .A(median_sobel_inst_n254), .B(n7601), .S0(n5849), .Y(
        median_sobel_inst_med_sobel_e_wait_r[24]) );
  MXI2X1 U7306 ( .A(median_sobel_inst_n253), .B(n7604), .S0(n5849), .Y(
        median_sobel_inst_n1260) );
  MXI2X1 U7307 ( .A(median_sobel_inst_n238), .B(n1915), .S0(n5419), .Y(
        median_sobel_inst_med_sobel_e_wait_r[16]) );
  MXI2X1 U7308 ( .A(median_sobel_inst_n243), .B(n7582), .S0(n5849), .Y(
        median_sobel_inst_n1255) );
  MXI2X1 U7309 ( .A(median_sobel_inst_n244), .B(n7583), .S0(n5419), .Y(
        median_sobel_inst_n1253) );
  MXI2X1 U7310 ( .A(median_sobel_inst_n202), .B(n7602), .S0(n5979), .Y(
        median_sobel_inst_n1283) );
  MXI2X1 U7311 ( .A(median_sobel_inst_n191), .B(n1969), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[34]) );
  MXI2X1 U7312 ( .A(median_sobel_inst_n201), .B(n7598), .S0(n5979), .Y(
        median_sobel_inst_n1285) );
  MXI2X1 U7313 ( .A(median_sobel_inst_n204), .B(n7619), .S0(n5979), .Y(
        median_sobel_inst_n1279) );
  MXI2X1 U7314 ( .A(median_sobel_inst_n190), .B(n1971), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[33]) );
  MXI2X1 U7315 ( .A(median_sobel_inst_n193), .B(n1961), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[36]) );
  MXI2X1 U7316 ( .A(median_sobel_inst_n237), .B(n7595), .S0(n5848), .Y(
        median_sobel_inst_n1252) );
  MXI2X1 U7317 ( .A(median_sobel_inst_n188), .B(n7596), .S0(n5884), .Y(
        median_sobel_inst_n1233) );
  MXI2X1 U7318 ( .A(median_sobel_inst_n268), .B(n7596), .S0(n5979), .Y(
        median_sobel_inst_n1270) );
  OA22X1 U7319 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n412), .B0(
        median_sobel_inst_u_sober_compare_submodule_n407), .B1(n5972), .Y(
        n5692) );
  OA22X1 U7320 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n410), .B0(
        median_sobel_inst_u_sober_compare_submodule_n406), .B1(n5972), .Y(
        n5694) );
  OA22X1 U7321 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n411), .B0(
        median_sobel_inst_u_sober_compare_submodule_n399), .B1(n5972), .Y(
        n5696) );
  OA22X1 U7322 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n70), .B0(
        median_sobel_inst_u_sober_compare_submodule_n401), .B1(n5972), .Y(
        n5698) );
  MXI2X1 U7323 ( .A(median_sobel_inst_n205), .B(n7603), .S0(n5979), .Y(
        median_sobel_inst_n1277) );
  MXI2X1 U7324 ( .A(median_sobel_inst_n232), .B(n1874), .S0(n5848), .Y(
        median_sobel_inst_med_sobel_e_wait_r[14]) );
  MXI2X1 U7325 ( .A(median_sobel_inst_n235), .B(n7597), .S0(n5848), .Y(
        median_sobel_inst_n1256) );
  MXI2X1 U7326 ( .A(median_sobel_inst_n236), .B(n7596), .S0(n5848), .Y(
        median_sobel_inst_n1254) );
  MXI2X1 U7327 ( .A(median_sobel_inst_n241), .B(n1930), .S0(n5848), .Y(
        median_sobel_inst_med_sobel_e_wait_r[19]) );
  MXI2X1 U7328 ( .A(median_sobel_inst_n195), .B(n7581), .S0(n5979), .Y(
        median_sobel_inst_n1282) );
  MXI2X1 U7329 ( .A(median_sobel_inst_n934), .B(median_sobel_inst_n267), .S0(
        n3789), .Y(n7511) );
  MXI2X1 U7330 ( .A(median_sobel_inst_n1173), .B(median_sobel_inst_n266), .S0(
        n3789), .Y(n7422) );
  MXI2X1 U7331 ( .A(median_sobel_inst_n1216), .B(median_sobel_inst_n237), .S0(
        n3789), .Y(n7418) );
  MXI2X1 U7332 ( .A(median_sobel_inst_n249), .B(n1961), .S0(n5848), .Y(
        median_sobel_inst_med_sobel_e_wait_r[23]) );
  NAND2BX4 U7333 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n335), .B(
        n5846), .Y(n5933) );
  OAI21XL U7334 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n64), .A1(
        n6012), .B0(median_sobel_inst_u_sobel_gradient_submodule_n346), .Y(
        n5700) );
  AOI21X1 U7335 ( .A0(n6065), .A1(n6063), .B0(n5708), .Y(n5713) );
  NAND2X1 U7336 ( .A(n5711), .B(n5710), .Y(n5712) );
  XOR2X1 U7337 ( .A(n5713), .B(n5712), .Y(n5714) );
  AND2X2 U7338 ( .A(n5714), .B(n7358), .Y(conv_inst_N2580) );
  MXI2X1 U7339 ( .A(median_sobel_inst_n273), .B(n1930), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[32]) );
  MXI2X1 U7340 ( .A(median_sobel_inst_n272), .B(n1924), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[31]) );
  MXI2X1 U7341 ( .A(median_sobel_inst_n1152), .B(n7594), .S0(n3789), .Y(n7419)
         );
  MXI2X1 U7342 ( .A(median_sobel_inst_n227), .B(n7599), .S0(n4756), .Y(
        median_sobel_inst_n1244) );
  XNOR2X1 U7343 ( .A(n5718), .B(n5717), .Y(n5719) );
  AND2X2 U7344 ( .A(n5719), .B(n7358), .Y(conv_inst_N2760) );
  NOR2BX1 U7345 ( .AN(n6310), .B(n6311), .Y(n5722) );
  CLKINVX1 U7346 ( .A(n6309), .Y(n5720) );
  OAI21X1 U7347 ( .A0(n5720), .A1(n6311), .B0(n6312), .Y(n5721) );
  AOI21X1 U7348 ( .A0(n6402), .A1(n5722), .B0(n5721), .Y(n5727) );
  XOR2X1 U7349 ( .A(n5727), .B(n5726), .Y(n5728) );
  OAI22X1 U7350 ( .A0(conv_inst_n266), .A1(n5870), .B0(n6036), .B1(n7616), .Y(
        conv_inst_N212) );
  OAI22X1 U7351 ( .A0(conv_inst_n267), .A1(n5870), .B0(n6036), .B1(
        conv_inst_n266), .Y(conv_inst_N213) );
  OAI22X1 U7352 ( .A0(conv_inst_n264), .A1(n5870), .B0(n6036), .B1(
        conv_inst_n263), .Y(conv_inst_N210) );
  AO21X2 U7353 ( .A0(n6208), .A1(n6206), .B0(n5732), .Y(n5737) );
  XNOR2X1 U7354 ( .A(n5737), .B(n5736), .Y(n5738) );
  AND2X2 U7355 ( .A(n5738), .B(n7358), .Y(conv_inst_N275) );
  NOR2BX1 U7356 ( .AN(n5739), .B(n5742), .Y(n5745) );
  INVX1 U7357 ( .A(n5740), .Y(n5743) );
  OAI21X1 U7358 ( .A0(n5743), .A1(n5742), .B0(n5741), .Y(n5744) );
  AOI21X2 U7359 ( .A0(n6208), .A1(n5745), .B0(n5744), .Y(n5750) );
  NAND2XL U7360 ( .A(n5748), .B(n5747), .Y(n5749) );
  XOR2X1 U7361 ( .A(n5750), .B(n5749), .Y(n5751) );
  AND2X2 U7362 ( .A(n5751), .B(n7052), .Y(conv_inst_N2770) );
  MXI2X1 U7363 ( .A(median_sobel_inst_n233), .B(n7498), .S0(n5868), .Y(
        median_sobel_inst_n612) );
  MXI2X1 U7364 ( .A(median_sobel_inst_n183), .B(n7541), .S0(n5868), .Y(
        median_sobel_inst_n646) );
  MXI2X1 U7365 ( .A(median_sobel_inst_n227), .B(n7548), .S0(n6989), .Y(
        median_sobel_inst_n618) );
  MXI2X1 U7366 ( .A(median_sobel_inst_u_sober_compare_submodule_n414), .B(
        n7570), .S0(n5785), .Y(
        median_sobel_inst_u_sober_compare_submodule_n137) );
  MXI2X1 U7367 ( .A(median_sobel_inst_u_sober_compare_submodule_n412), .B(
        n7585), .S0(n5785), .Y(
        median_sobel_inst_u_sober_compare_submodule_n124) );
  MXI2X1 U7368 ( .A(median_sobel_inst_u_sober_compare_submodule_n365), .B(
        n7566), .S0(n5785), .Y(
        median_sobel_inst_u_sober_compare_submodule_n133) );
  MXI2X1 U7369 ( .A(median_sobel_inst_u_sober_compare_submodule_n398), .B(
        n7574), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n101) );
  MXI2X1 U7370 ( .A(median_sobel_inst_u_sober_compare_submodule_n351), .B(
        n7563), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n136) );
  MXI2X1 U7371 ( .A(median_sobel_inst_u_sober_compare_submodule_n70), .B(n7560), .S0(n5848), .Y(median_sobel_inst_u_sober_compare_submodule_n122) );
  MXI2X1 U7372 ( .A(median_sobel_inst_u_sober_compare_submodule_n366), .B(
        n7569), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n135) );
  MXI2X1 U7373 ( .A(median_sobel_inst_u_sober_compare_submodule_n353), .B(
        n7568), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n134) );
  MXI2X1 U7374 ( .A(median_sobel_inst_u_sober_compare_submodule_n397), .B(
        n7564), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n103) );
  MXI2X1 U7375 ( .A(median_sobel_inst_u_sober_compare_submodule_n413), .B(
        n7561), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n121) );
  MXI2X1 U7376 ( .A(median_sobel_inst_u_sober_compare_submodule_n356), .B(
        n7551), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n109) );
  OAI22X1 U7377 ( .A0(n7198), .A1(
        median_sobel_inst_u_sober_compare_submodule_n356), .B0(n7197), .B1(
        median_sobel_inst_u_sober_compare_submodule_n252), .Y(n5758) );
  OAI22X1 U7378 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n68), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n260), .Y(n5757) );
  AO21X4 U7379 ( .A0(n7045), .A1(n5760), .B0(n5759), .Y(n5763) );
  XNOR2X1 U7380 ( .A(n5763), .B(n5762), .Y(n5764) );
  AND2X2 U7381 ( .A(n5764), .B(n7052), .Y(conv_inst_N229) );
  AO21X4 U7382 ( .A0(n7029), .A1(n6444), .B0(n5766), .Y(n5771) );
  AND2X2 U7383 ( .A(n5772), .B(n7358), .Y(conv_inst_N279) );
  OAI22X1 U7384 ( .A0(n7198), .A1(
        median_sobel_inst_u_sober_compare_submodule_n408), .B0(n7197), .B1(
        median_sobel_inst_u_sober_compare_submodule_n405), .Y(n5774) );
  OAI22X1 U7385 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n409), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n352), .Y(n5773) );
  AO21X4 U7386 ( .A0(n7356), .A1(n6248), .B0(n5777), .Y(n5782) );
  NAND2X1 U7387 ( .A(n5780), .B(n5779), .Y(n5781) );
  AND2X2 U7388 ( .A(n5784), .B(n7358), .Y(conv_inst_N2450) );
  MXI2X1 U7389 ( .A(median_sobel_inst_n260), .B(n7619), .S0(n5785), .Y(
        median_sobel_inst_n1261) );
  CLKINVX1 U7390 ( .A(n7234), .Y(n5790) );
  AOI2BB2X1 U7391 ( .B0(n5792), .B1(
        median_sobel_inst_u_sober_compare_submodule_n300), .A0N(
        median_sobel_inst_u_sober_compare_submodule_n397), .A1N(n5972), .Y(
        n5794) );
  NAND2X4 U7392 ( .A(conv_inst_n25), .B(n5797), .Y(n6087) );
  MX2X1 U7393 ( .A(median_sobel_inst_angle[4]), .B(
        median_sobel_inst_u_sober_compare_submodule_n33), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n91) );
  MX2X1 U7394 ( .A(median_sobel_inst_angle[3]), .B(
        median_sobel_inst_u_sober_compare_submodule_n265), .S0(n5819), .Y(
        median_sobel_inst_u_sober_compare_submodule_n90) );
  OAI21XL U7395 ( .A0(i_op_valid), .A1(n5815), .B0(n5803), .Y(n440) );
  OAI21XL U7396 ( .A0(i_op_valid), .A1(n5876), .B0(n5804), .Y(n443) );
  MX2X1 U7397 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[16]), .S0(n5805), .Y(median_sobel_inst_n489) );
  MX2X1 U7398 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[12]), .S0(n5805), .Y(median_sobel_inst_n505) );
  MXI2X1 U7399 ( .A(median_sobel_inst_n1144), .B(n7579), .S0(n5883), .Y(n7409)
         );
  OAI22XL U7400 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n68), .B0(n5977), .B1(
        median_sobel_inst_u_sober_compare_submodule_n260), .Y(n5811) );
  OAI22XL U7401 ( .A0(median_sobel_inst_u_sober_compare_submodule_n356), .A1(
        n5910), .B0(median_sobel_inst_u_sober_compare_submodule_n252), .B1(
        n5972), .Y(n5810) );
  NAND2BX4 U7402 ( .AN(median_sobel_inst_u_median_filter_submodule_n1433), .B(
        median_sobel_inst_u_median_filter_submodule_n658), .Y(n6262) );
  NAND2X4 U7403 ( .A(n6262), .B(n5826), .Y(n5827) );
  OAI222XL U7404 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n884), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n949), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n908), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[3]) );
  OAI222XL U7405 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n902), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n880), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n942), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[6]) );
  OAI222XL U7406 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n915), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n1595), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n960), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[0]) );
  OAI222XL U7407 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n907), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n878), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n961), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[7]) );
  NAND2X2 U7408 ( .A(n3536), .B(n5816), .Y(n5817) );
  AOI211X4 U7409 ( .A0(n1858), .A1(n5997), .B0(n7380), .C0(n5817), .Y(n6600)
         );
  OAI21X4 U7410 ( .A0(n1999), .A1(n5998), .B0(n6600), .Y(n6599) );
  MXI2X1 U7411 ( .A(n5818), .B(n1999), .S0(n6599), .Y(n2252) );
  OAI22XL U7412 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n66), .B0(n5977), .B1(
        median_sobel_inst_u_sober_compare_submodule_n363), .Y(n5822) );
  OAI22XL U7413 ( .A0(median_sobel_inst_u_sober_compare_submodule_n362), .A1(
        n5972), .B0(median_sobel_inst_u_sober_compare_submodule_n150), .B1(
        n5910), .Y(n5821) );
  OAI22XL U7414 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n409), .B0(n5977), .B1(
        median_sobel_inst_u_sober_compare_submodule_n352), .Y(n5824) );
  OAI22XL U7415 ( .A0(median_sobel_inst_u_sober_compare_submodule_n408), .A1(
        n5910), .B0(median_sobel_inst_u_sober_compare_submodule_n405), .B1(
        n5972), .Y(n5823) );
  OAI222XL U7416 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n909), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n879), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n951), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[4]) );
  MXI2X1 U7417 ( .A(n7434), .B(median_sobel_inst_n216), .S0(n6217), .Y(
        median_sobel_inst_n629) );
  OAI222XL U7418 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n1513), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n899), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n941), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[2]) );
  OAI222XL U7419 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n889), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n916), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n954), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[5]) );
  OAI222XL U7420 ( .A0(n5827), .A1(
        median_sobel_inst_u_median_filter_submodule_n873), .B0(n5826), .B1(
        median_sobel_inst_u_median_filter_submodule_n897), .C0(n6262), .C1(
        median_sobel_inst_u_median_filter_submodule_n943), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[1]) );
  MXI2X1 U7421 ( .A(n7614), .B(median_sobel_inst_n256), .S0(n6217), .Y(
        median_sobel_inst_n589) );
  MXI2X1 U7422 ( .A(n7545), .B(median_sobel_inst_n192), .S0(n6217), .Y(
        median_sobel_inst_n565) );
  MXI2X1 U7423 ( .A(n7620), .B(median_sobel_inst_n223), .S0(n6217), .Y(
        median_sobel_inst_n622) );
  MXI2X1 U7424 ( .A(n7544), .B(median_sobel_inst_n191), .S0(n6217), .Y(
        median_sobel_inst_n566) );
  MXI2X1 U7425 ( .A(median_sobel_inst_n251), .B(n7577), .S0(n5868), .Y(
        median_sobel_inst_n594) );
  MXI2X1 U7426 ( .A(median_sobel_inst_n197), .B(n7604), .S0(n5979), .Y(
        median_sobel_inst_n1278) );
  MXI2X1 U7427 ( .A(n7430), .B(median_sobel_inst_n197), .S0(n5883), .Y(
        median_sobel_inst_n560) );
  MXI2X1 U7428 ( .A(n7433), .B(median_sobel_inst_n277), .S0(n5873), .Y(
        median_sobel_inst_n568) );
  MXI2X1 U7429 ( .A(median_sobel_inst_n972), .B(median_sobel_inst_n244), .S0(
        n5883), .Y(median_sobel_inst_n601) );
  MXI2X1 U7430 ( .A(median_sobel_inst_n980), .B(median_sobel_inst_n205), .S0(
        n5873), .Y(median_sobel_inst_n552) );
  MXI2X1 U7431 ( .A(median_sobel_inst_n182), .B(n7540), .S0(n5868), .Y(
        median_sobel_inst_n647) );
  MXI2X1 U7432 ( .A(median_sobel_inst_n220), .B(n7408), .S0(n5868), .Y(
        median_sobel_inst_n625) );
  OAI22XL U7433 ( .A0(conv_inst_n266), .A1(n6087), .B0(n7616), .B1(n5861), .Y(
        conv_inst_N139) );
  MXI2X1 U7434 ( .A(median_sobel_inst_u_sober_compare_submodule_n367), .B(
        n7565), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n138) );
  MXI2X1 U7435 ( .A(median_sobel_inst_u_sober_compare_submodule_n407), .B(
        n7575), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n102) );
  MXI2X1 U7436 ( .A(median_sobel_inst_u_sober_compare_submodule_n71), .B(n7587), .S0(n5849), .Y(median_sobel_inst_u_sober_compare_submodule_n123) );
  MXI2X1 U7437 ( .A(median_sobel_inst_u_sober_compare_submodule_n260), .B(
        n7558), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n131) );
  MXI2X1 U7438 ( .A(median_sobel_inst_u_sober_compare_submodule_n252), .B(
        n7555), .S0(n5849), .Y(median_sobel_inst_u_sober_compare_submodule_n98) );
  NOR2X6 U7439 ( .A(n5889), .B(n5830), .Y(n6569) );
  OAI21X4 U7440 ( .A0(n6569), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n6324) );
  OAI21X2 U7441 ( .A0(n6324), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n58), .B0(n6471), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N129) );
  MXI2X1 U7442 ( .A(median_sobel_inst_n974), .B(median_sobel_inst_n276), .S0(
        n5883), .Y(median_sobel_inst_n569) );
  MXI2X1 U7443 ( .A(median_sobel_inst_n185), .B(n1876), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[3]) );
  MXI2X1 U7444 ( .A(median_sobel_inst_n228), .B(n7619), .S0(n4756), .Y(
        median_sobel_inst_n1242) );
  MXI2X1 U7445 ( .A(median_sobel_inst_n225), .B(n7598), .S0(n4756), .Y(
        median_sobel_inst_n1248) );
  MXI2X1 U7446 ( .A(median_sobel_inst_n226), .B(n7602), .S0(n4756), .Y(
        median_sobel_inst_n1246) );
  MXI2X1 U7447 ( .A(median_sobel_inst_n229), .B(n7603), .S0(n4756), .Y(
        median_sobel_inst_n1240) );
  MXI2X1 U7448 ( .A(median_sobel_inst_n187), .B(n7597), .S0(n4756), .Y(
        median_sobel_inst_n1234) );
  MXI2X1 U7449 ( .A(median_sobel_inst_n220), .B(n7579), .S0(n4756), .Y(
        median_sobel_inst_n1243) );
  MXI2X1 U7450 ( .A(median_sobel_inst_n195), .B(n7547), .S0(n6989), .Y(
        median_sobel_inst_n562) );
  NAND2X1 U7451 ( .A(n5832), .B(conv_inst_n43), .Y(n5836) );
  NAND2BX1 U7452 ( .AN(n5834), .B(conv_inst_n43), .Y(n5835) );
  OAI21X1 U7453 ( .A0(n5837), .A1(n5836), .B0(n5835), .Y(n5838) );
  NAND2X4 U7454 ( .A(median_sobel_inst_u_median_filter_submodule_n658), .B(
        median_sobel_inst_u_median_filter_submodule_n1154), .Y(n6260) );
  NAND2X4 U7455 ( .A(median_sobel_inst_u_median_filter_submodule_n1433), .B(
        n5844), .Y(n6261) );
  OAI21XL U7456 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n64), .A1(
        n5846), .B0(median_sobel_inst_u_sobel_gradient_submodule_n335), .Y(
        n5845) );
  OAI31XL U7457 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n64), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n335), .A2(n5846), .B0(
        n5845), .Y(median_sobel_inst_u_sobel_gradient_submodule_N69) );
  MXI2X1 U7458 ( .A(median_sobel_inst_n215), .B(n1969), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[8]) );
  MXI2X1 U7459 ( .A(n3534), .B(n5847), .S0(n6337), .Y(med_done_w) );
  CLKINVX1 U7460 ( .A(input_data_ready_r[0]), .Y(n6573) );
  MXI2X1 U7461 ( .A(median_sobel_inst_n262), .B(n6573), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[25]) );
  MXI2X1 U7462 ( .A(median_sobel_inst_n259), .B(n7599), .S0(n5848), .Y(
        median_sobel_inst_n1263) );
  MXI2X1 U7463 ( .A(median_sobel_inst_n983), .B(median_sobel_inst_n239), .S0(
        n5883), .Y(median_sobel_inst_n606) );
  MXI2X1 U7464 ( .A(median_sobel_inst_n448), .B(median_sobel_inst_n193), .S0(
        n5852), .Y(median_sobel_inst_n564) );
  MXI2X1 U7465 ( .A(n6572), .B(n7392), .S0(n5868), .Y(median_sobel_inst_n526)
         );
  MXI2X1 U7466 ( .A(median_sobel_inst_u_sober_compare_submodule_n401), .B(
        n7572), .S0(n5859), .Y(
        median_sobel_inst_u_sober_compare_submodule_n100) );
  MXI2X1 U7467 ( .A(median_sobel_inst_u_sober_compare_submodule_n259), .B(
        n7573), .S0(n5859), .Y(median_sobel_inst_u_sober_compare_submodule_n99) );
  MXI2X1 U7468 ( .A(median_sobel_inst_u_sober_compare_submodule_n399), .B(
        n7576), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n104) );
  MXI2X1 U7469 ( .A(median_sobel_inst_u_sober_compare_submodule_n362), .B(
        n7552), .S0(n5849), .Y(median_sobel_inst_u_sober_compare_submodule_n96) );
  MXI2X1 U7470 ( .A(median_sobel_inst_u_sober_compare_submodule_n66), .B(n7588), .S0(n5849), .Y(median_sobel_inst_u_sober_compare_submodule_n118) );
  MXI2X1 U7471 ( .A(median_sobel_inst_u_sober_compare_submodule_n408), .B(
        n7550), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n117) );
  MXI2X1 U7472 ( .A(median_sobel_inst_u_sober_compare_submodule_n149), .B(
        n7591), .S0(n5849), .Y(
        median_sobel_inst_u_sober_compare_submodule_n108) );
  MXI2X1 U7473 ( .A(n5850), .B(median_sobel_inst_n207), .S0(n5883), .Y(
        median_sobel_inst_n638) );
  MXI2X1 U7474 ( .A(n5851), .B(median_sobel_inst_n194), .S0(n5886), .Y(
        median_sobel_inst_n563) );
  MXI2X1 U7475 ( .A(median_sobel_inst_n971), .B(median_sobel_inst_n212), .S0(
        n5883), .Y(median_sobel_inst_n633) );
  MXI2X1 U7476 ( .A(median_sobel_inst_n984), .B(median_sobel_inst_n245), .S0(
        n5883), .Y(median_sobel_inst_n600) );
  NAND2X4 U7477 ( .A(n7148), .B(n7152), .Y(n5869) );
  MXI2X1 U7478 ( .A(n5853), .B(median_sobel_inst_n248), .S0(n5852), .Y(
        median_sobel_inst_n597) );
  MXI2X1 U7479 ( .A(median_sobel_inst_n423), .B(median_sobel_inst_n250), .S0(
        n5886), .Y(median_sobel_inst_n595) );
  MXI2X1 U7480 ( .A(n7609), .B(median_sobel_inst_n258), .S0(n5852), .Y(
        median_sobel_inst_n587) );
  MXI2X1 U7481 ( .A(n7549), .B(median_sobel_inst_n247), .S0(n5852), .Y(
        median_sobel_inst_n598) );
  MXI2X1 U7482 ( .A(median_sobel_inst_u_sober_compare_submodule_n406), .B(
        n7571), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n105) );
  MXI2X1 U7483 ( .A(median_sobel_inst_u_sober_compare_submodule_n411), .B(
        n7562), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n126) );
  MXI2X1 U7484 ( .A(median_sobel_inst_u_sober_compare_submodule_n363), .B(
        n7556), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n129) );
  MXI2X1 U7485 ( .A(median_sobel_inst_u_sober_compare_submodule_n352), .B(
        n7557), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n139) );
  MXI2X1 U7486 ( .A(median_sobel_inst_u_sober_compare_submodule_n405), .B(
        n7554), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n106) );
  MXI2X1 U7487 ( .A(median_sobel_inst_u_sober_compare_submodule_n409), .B(
        n7553), .S0(n5848), .Y(
        median_sobel_inst_u_sober_compare_submodule_n128) );
  MXI2X1 U7488 ( .A(n5854), .B(n7507), .S0(n6599), .Y(n2251) );
  MXI2X1 U7489 ( .A(median_sobel_inst_n203), .B(n7505), .S0(n5868), .Y(
        median_sobel_inst_n554) );
  MXI2X1 U7490 ( .A(median_sobel_inst_n441), .B(median_sobel_inst_n272), .S0(
        n5873), .Y(median_sobel_inst_n573) );
  MXI2X1 U7491 ( .A(median_sobel_inst_n960), .B(median_sobel_inst_n240), .S0(
        n5873), .Y(median_sobel_inst_n605) );
  MXI2X1 U7492 ( .A(median_sobel_inst_n442), .B(median_sobel_inst_n271), .S0(
        n5873), .Y(median_sobel_inst_n574) );
  MXI2X1 U7493 ( .A(median_sobel_inst_n439), .B(median_sobel_inst_n274), .S0(
        n5873), .Y(median_sobel_inst_n571) );
  MXI2X1 U7494 ( .A(median_sobel_inst_n419), .B(median_sobel_inst_n238), .S0(
        n5873), .Y(median_sobel_inst_n607) );
  MXI2X1 U7495 ( .A(n5855), .B(median_sobel_inst_n273), .S0(n5873), .Y(
        median_sobel_inst_n572) );
  MXI2X1 U7496 ( .A(n7578), .B(median_sobel_inst_n241), .S0(n5873), .Y(
        median_sobel_inst_n604) );
  MXI2X1 U7497 ( .A(n5856), .B(median_sobel_inst_n242), .S0(n5873), .Y(
        median_sobel_inst_n603) );
  MXI2X1 U7498 ( .A(n4752), .B(median_sobel_inst_n206), .S0(n5873), .Y(
        median_sobel_inst_n639) );
  BUFX4 U7499 ( .A(n7671), .Y(n7648) );
  CLKBUFX3 U7500 ( .A(i_rst_n), .Y(n7655) );
  BUFX4 U7501 ( .A(n7660), .Y(n7645) );
  CLKBUFX3 U7502 ( .A(i_rst_n), .Y(n7659) );
  BUFX4 U7503 ( .A(n7647), .Y(n7638) );
  CLKBUFX3 U7504 ( .A(n7671), .Y(n7650) );
  CLKBUFX3 U7505 ( .A(i_rst_n), .Y(n7657) );
  CLKBUFX3 U7506 ( .A(i_rst_n), .Y(n7656) );
  BUFX4 U7507 ( .A(n7671), .Y(n7643) );
  BUFX4 U7508 ( .A(n7663), .Y(n7641) );
  CLKBUFX3 U7509 ( .A(i_rst_n), .Y(n7654) );
  CLKBUFX3 U7510 ( .A(i_rst_n), .Y(n7658) );
  CLKBUFX3 U7511 ( .A(i_rst_n), .Y(n7670) );
  CLKBUFX3 U7512 ( .A(i_rst_n), .Y(n7667) );
  BUFX4 U7513 ( .A(n7671), .Y(n7639) );
  CLKBUFX3 U7514 ( .A(i_rst_n), .Y(n7668) );
  CLKBUFX3 U7515 ( .A(i_rst_n), .Y(n7653) );
  CLKBUFX3 U7516 ( .A(i_rst_n), .Y(n7665) );
  CLKBUFX3 U7517 ( .A(i_rst_n), .Y(n7664) );
  BUFX4 U7518 ( .A(n7626), .Y(n7629) );
  BUFX4 U7519 ( .A(n7671), .Y(n7636) );
  MXI2X1 U7520 ( .A(median_sobel_inst_n451), .B(median_sobel_inst_n190), .S0(
        n5857), .Y(median_sobel_inst_n567) );
  MXI2X1 U7521 ( .A(median_sobel_inst_n206), .B(n1915), .S0(n5884), .Y(
        median_sobel_inst_med_sobel_e_wait_r[4]) );
  MXI2X1 U7522 ( .A(median_sobel_inst_n211), .B(n7582), .S0(n5884), .Y(
        median_sobel_inst_n1238) );
  MXI2X1 U7523 ( .A(median_sobel_inst_n213), .B(n7584), .S0(n4756), .Y(
        median_sobel_inst_n1236) );
  MXI2X1 U7524 ( .A(median_sobel_inst_n212), .B(n7583), .S0(n4756), .Y(
        median_sobel_inst_n1237) );
  MXI2X1 U7525 ( .A(median_sobel_inst_n270), .B(n1915), .S0(n5858), .Y(
        median_sobel_inst_med_sobel_e_wait_r[29]) );
  MXI2X1 U7526 ( .A(median_sobel_inst_n263), .B(n6571), .S0(n5858), .Y(
        median_sobel_inst_med_sobel_e_wait_r[26]) );
  MX2X1 U7527 ( .A(median_sobel_inst_angle[0]), .B(
        median_sobel_inst_angle_w[0]), .S0(n5859), .Y(median_sobel_inst_n518)
         );
  MXI2X1 U7528 ( .A(n7432), .B(median_sobel_inst_n253), .S0(n5852), .Y(
        median_sobel_inst_n592) );
  MXI2X1 U7529 ( .A(n7431), .B(median_sobel_inst_n252), .S0(n5852), .Y(
        median_sobel_inst_n593) );
  MXI2X1 U7530 ( .A(n4723), .B(median_sobel_inst_n249), .S0(n5886), .Y(
        median_sobel_inst_n596) );
  MXI2X1 U7531 ( .A(n5860), .B(median_sobel_inst_n217), .S0(n5886), .Y(
        median_sobel_inst_n628) );
  MXI2X1 U7532 ( .A(n7618), .B(median_sobel_inst_n264), .S0(n5852), .Y(
        median_sobel_inst_n581) );
  MXI2X1 U7533 ( .A(n7435), .B(median_sobel_inst_n257), .S0(n5852), .Y(
        median_sobel_inst_n588) );
  MXI2X1 U7534 ( .A(n3765), .B(median_sobel_inst_n262), .S0(n5886), .Y(
        median_sobel_inst_n583) );
  MXI2X1 U7535 ( .A(n7617), .B(median_sobel_inst_n204), .S0(n5886), .Y(
        median_sobel_inst_n553) );
  MXI2X1 U7536 ( .A(n7606), .B(median_sobel_inst_n265), .S0(n5886), .Y(
        median_sobel_inst_n580) );
  MXI2X1 U7537 ( .A(n7615), .B(median_sobel_inst_n230), .S0(n5886), .Y(
        median_sobel_inst_n615) );
  MXI2X1 U7538 ( .A(median_sobel_inst_n230), .B(n6573), .S0(n5419), .Y(
        median_sobel_inst_med_sobel_e_wait_r[12]) );
  MXI2X1 U7539 ( .A(median_sobel_inst_n231), .B(n6571), .S0(n5419), .Y(
        median_sobel_inst_med_sobel_e_wait_r[13]) );
  MXI2X1 U7540 ( .A(median_sobel_inst_u_sober_compare_submodule_n150), .B(
        n7589), .S0(n5785), .Y(
        median_sobel_inst_u_sober_compare_submodule_n107) );
  MXI2X1 U7541 ( .A(median_sobel_inst_n199), .B(n6572), .S0(n5979), .Y(
        median_sobel_inst_n1287) );
  MXI2X1 U7542 ( .A(median_sobel_inst_n194), .B(n7612), .S0(n5979), .Y(
        median_sobel_inst_n1284) );
  OAI222XL U7543 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n884), .B0(n5863), .B1(
        median_sobel_inst_u_median_filter_submodule_n949), .C0(n6261), .C1(
        median_sobel_inst_u_median_filter_submodule_n908), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[3]) );
  MXI2X1 U7544 ( .A(median_sobel_inst_n218), .B(n7612), .S0(n4756), .Y(
        median_sobel_inst_n1247) );
  MXI2X1 U7545 ( .A(median_sobel_inst_n186), .B(n7594), .S0(n4756), .Y(
        median_sobel_inst_n1235) );
  MXI2X1 U7546 ( .A(median_sobel_inst_n222), .B(n7601), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[11]) );
  OR2X1 U7547 ( .A(n5864), .B(n5978), .Y(n5865) );
  MXI2X1 U7548 ( .A(median_sobel_inst_n266), .B(n7594), .S0(n5979), .Y(
        median_sobel_inst_n1272) );
  MXI2X1 U7549 ( .A(median_sobel_inst_n203), .B(n7599), .S0(n5979), .Y(
        median_sobel_inst_n1281) );
  MXI2X1 U7550 ( .A(median_sobel_inst_n196), .B(n7579), .S0(n5979), .Y(
        median_sobel_inst_n1280) );
  MXI2X1 U7551 ( .A(n3794), .B(median_sobel_inst_n255), .S0(n6217), .Y(
        median_sobel_inst_n590) );
  MXI2X1 U7552 ( .A(median_sobel_inst_net86439), .B(median_sobel_inst_n199), 
        .S0(n6217), .Y(median_sobel_inst_n558) );
  MXI2X1 U7553 ( .A(median_sobel_inst_n275), .B(n7582), .S0(n5979), .Y(
        median_sobel_inst_n1275) );
  MXI2X1 U7554 ( .A(median_sobel_inst_n274), .B(n7428), .S0(n5979), .Y(
        median_sobel_inst_n1276) );
  NOR2X4 U7555 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n44), .B(
        n5880), .Y(n5887) );
  NOR2X4 U7556 ( .A(n5887), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n6568) );
  NOR2X4 U7557 ( .A(n6568), .B(median_sobel_inst_u_sobel_gradient_submodule_n8), .Y(n5935) );
  NOR2X4 U7558 ( .A(n5935), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n6322) );
  CLKINVX1 U7559 ( .A(n6322), .Y(n5866) );
  NAND2X1 U7560 ( .A(n5866), .B(n6324), .Y(n5867) );
  MXI2X1 U7561 ( .A(median_sobel_inst_n958), .B(median_sobel_inst_n234), .S0(
        n5873), .Y(median_sobel_inst_n611) );
  MXI2X1 U7562 ( .A(n7611), .B(median_sobel_inst_n263), .S0(n5883), .Y(
        median_sobel_inst_n582) );
  MXI2X1 U7563 ( .A(median_sobel_inst_n963), .B(median_sobel_inst_n231), .S0(
        n5883), .Y(median_sobel_inst_n614) );
  MXI2X1 U7564 ( .A(median_sobel_inst_n7), .B(median_sobel_inst_n261), .S0(
        n5873), .Y(median_sobel_inst_n584) );
  MXI2X1 U7565 ( .A(median_sobel_inst_n1039), .B(median_sobel_inst_n198), .S0(
        n5852), .Y(median_sobel_inst_n559) );
  MXI2X1 U7566 ( .A(median_sobel_inst_n1026), .B(median_sobel_inst_n269), .S0(
        n5852), .Y(median_sobel_inst_n576) );
  MXI2X1 U7567 ( .A(n7607), .B(median_sobel_inst_n202), .S0(n5852), .Y(
        median_sobel_inst_n555) );
  MXI2X1 U7568 ( .A(n7605), .B(median_sobel_inst_n201), .S0(n5852), .Y(
        median_sobel_inst_n556) );
  MXI2X1 U7569 ( .A(median_sobel_inst_n219), .B(n7581), .S0(n4756), .Y(
        median_sobel_inst_n1245) );
  MXI2X1 U7570 ( .A(median_sobel_inst_n210), .B(n7428), .S0(n4756), .Y(
        median_sobel_inst_n1239) );
  MXI2X1 U7571 ( .A(median_sobel_inst_n245), .B(n7584), .S0(n5848), .Y(
        median_sobel_inst_n1251) );
  MXI2X1 U7572 ( .A(median_sobel_inst_n250), .B(n7612), .S0(n5848), .Y(
        median_sobel_inst_n1266) );
  MXI2X1 U7573 ( .A(median_sobel_inst_n234), .B(n7594), .S0(n5848), .Y(
        median_sobel_inst_n1258) );
  MXI2X1 U7574 ( .A(median_sobel_inst_n252), .B(n7579), .S0(n5848), .Y(
        median_sobel_inst_n1262) );
  MXI2X1 U7575 ( .A(median_sobel_inst_n261), .B(n7603), .S0(n5848), .Y(
        median_sobel_inst_n1259) );
  MXI2X1 U7576 ( .A(median_sobel_inst_n187), .B(n7586), .S0(n5868), .Y(
        median_sobel_inst_n642) );
  OAI22X1 U7577 ( .A0(n7198), .A1(
        median_sobel_inst_u_sober_compare_submodule_n150), .B0(n7197), .B1(
        median_sobel_inst_u_sober_compare_submodule_n362), .Y(n5872) );
  OAI22X1 U7578 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n66), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n363), .Y(n5871) );
  MXI2X1 U7579 ( .A(median_sobel_inst_n967), .B(median_sobel_inst_n243), .S0(
        n5873), .Y(median_sobel_inst_n602) );
  MXI2X1 U7580 ( .A(n7429), .B(median_sobel_inst_n270), .S0(n5873), .Y(
        median_sobel_inst_n575) );
  MXI2X1 U7581 ( .A(n5874), .B(median_sobel_inst_n275), .S0(n5873), .Y(
        median_sobel_inst_n570) );
  NAND2X4 U7582 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N118), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6551) );
  MXI2X1 U7583 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n347), .B(
        n5880), .S0(n5879), .Y(n5881) );
  NAND2BX1 U7584 ( .AN(n6264), .B(n5881), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N121) );
  MXI2X1 U7585 ( .A(median_sobel_inst_n208), .B(n1924), .S0(n5884), .Y(
        median_sobel_inst_n945) );
  MXI2X1 U7586 ( .A(median_sobel_inst_n47), .B(median_sobel_inst_n200), .S0(
        n5886), .Y(n7535) );
  OAI21XL U7587 ( .A0(n5889), .A1(n5887), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .Y(n5888) );
  NAND2X2 U7588 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), .Y(n6286) );
  NAND2BX1 U7589 ( .AN(n5897), .B(n5896), .Y(n5898) );
  XOR2X1 U7590 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n44), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n5902) );
  NOR2X8 U7591 ( .A(n6551), .B(n6549), .Y(n6386) );
  NOR2X2 U7592 ( .A(n6386), .B(n6550), .Y(n5993) );
  CLKINVX1 U7593 ( .A(n5993), .Y(n5901) );
  NOR2X4 U7594 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6385)
         );
  OAI21X1 U7595 ( .A0(n5920), .A1(n5916), .B0(n5917), .Y(n5908) );
  XNOR2X1 U7596 ( .A(n5908), .B(n5907), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N170) );
  MXI2X1 U7597 ( .A(median_sobel_inst_n200), .B(n1907), .S0(n5979), .Y(
        median_sobel_inst_n1286) );
  NAND2XL U7598 ( .A(n5909), .B(
        median_sobel_inst_u_sober_compare_submodule_n278), .Y(n5913) );
  AOI2BB2X1 U7599 ( .B0(n5911), .B1(
        median_sobel_inst_u_sober_compare_submodule_n21), .A0N(n5910), .A1N(
        median_sobel_inst_u_sober_compare_submodule_n149), .Y(n5912) );
  XOR2XL U7600 ( .A(n5915), .B(n6286), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N148) );
  XOR2X1 U7601 ( .A(n5920), .B(n5919), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N169) );
  XOR2X1 U7602 ( .A(n5925), .B(n5924), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]) );
  NAND2BX1 U7603 ( .AN(n5927), .B(n5926), .Y(n5929) );
  XOR2X1 U7604 ( .A(n5929), .B(n5928), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N37) );
  XNOR2X1 U7605 ( .A(n5932), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n364), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N680) );
  XNOR2X1 U7606 ( .A(n5934), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n318), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N700) );
  XOR2X1 U7607 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n8), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n5936) );
  XOR2X1 U7608 ( .A(n5937), .B(n5936), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N125) );
  MXI2X1 U7609 ( .A(median_sobel_inst_n184), .B(n1874), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[2]) );
  MXI2X1 U7610 ( .A(median_sobel_inst_n189), .B(n7595), .S0(n4756), .Y(
        median_sobel_inst_n1232) );
  OAI21X1 U7611 ( .A0(n6057), .A1(n6053), .B0(n6054), .Y(n5943) );
  NAND2X1 U7612 ( .A(n5941), .B(n5940), .Y(n5942) );
  XNOR2X1 U7613 ( .A(n5943), .B(n5942), .Y(n5944) );
  XNOR2X1 U7614 ( .A(n6298), .B(n5945), .Y(n5946) );
  CLKINVX3 U7615 ( .A(n5947), .Y(n6022) );
  XOR2X1 U7616 ( .A(n6022), .B(n5949), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N380) );
  MXI2X1 U7617 ( .A(median_sobel_inst_n214), .B(n1971), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[7]) );
  MXI2X1 U7618 ( .A(median_sobel_inst_n224), .B(n1907), .S0(n4756), .Y(
        median_sobel_inst_n1249) );
  OAI21X1 U7619 ( .A0(n6245), .A1(n6241), .B0(n6242), .Y(n5955) );
  NAND2X1 U7620 ( .A(n5953), .B(n5952), .Y(n5954) );
  XNOR2X1 U7621 ( .A(n5955), .B(n5954), .Y(n5956) );
  AND2X2 U7622 ( .A(n5956), .B(n7052), .Y(conv_inst_N222) );
  OAI21X1 U7623 ( .A0(n6136), .A1(n6132), .B0(n6133), .Y(n5962) );
  XNOR2X1 U7624 ( .A(n5962), .B(n5961), .Y(n5963) );
  XOR2X1 U7625 ( .A(n5966), .B(n5965), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]) );
  XOR2X1 U7626 ( .A(n5971), .B(n5970), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]) );
  OA22X1 U7627 ( .A0(n5973), .A1(
        median_sobel_inst_u_sober_compare_submodule_n413), .B0(
        median_sobel_inst_u_sober_compare_submodule_n259), .B1(n5972), .Y(
        n5976) );
  CLKMX2X2 U7628 ( .A(median_sobel_inst_n91), .B(n7442), .S0(n3789), .Y(
        median_sobel_inst_n549) );
  MXI2X1 U7629 ( .A(median_sobel_inst_n267), .B(n7597), .S0(n5979), .Y(
        median_sobel_inst_n1271) );
  XNOR2X1 U7630 ( .A(n6402), .B(n5981), .Y(n5982) );
  INVX3 U7631 ( .A(n5983), .Y(n6042) );
  XOR2X1 U7632 ( .A(n6042), .B(n5985), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N80) );
  OAI21X1 U7633 ( .A0(n6153), .A1(n6149), .B0(n6150), .Y(n5991) );
  XNOR2X1 U7634 ( .A(n5991), .B(n5990), .Y(n5992) );
  CLKINVX1 U7635 ( .A(n6029), .Y(n5996) );
  XNOR2X1 U7636 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n347), .Y(n5995) );
  OAI21X1 U7637 ( .A0(n6387), .A1(n6382), .B0(n5996), .Y(n5994) );
  OAI21X1 U7638 ( .A0(n5996), .A1(n5995), .B0(n5994), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N135) );
  AOI31XL U7639 ( .A0(n4514), .A1(n6114), .A2(n878), .B0(n6556), .Y(n6003) );
  NAND2X1 U7640 ( .A(n7380), .B(n5998), .Y(n5999) );
  NAND3X4 U7641 ( .A(n3536), .B(n6000), .C(n5999), .Y(n6554) );
  NOR2X4 U7642 ( .A(n6554), .B(n6001), .Y(n6562) );
  OAI21X2 U7643 ( .A0(n4515), .A1(n6558), .B0(n6562), .Y(n6116) );
  OAI21X1 U7644 ( .A0(n6116), .A1(n6114), .B0(n4522), .Y(n6002) );
  OAI21X1 U7645 ( .A0(n6003), .A1(n6554), .B0(n6002), .Y(n490) );
  NOR2X1 U7646 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .Y(n6235) );
  NAND2X1 U7647 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .Y(n6233) );
  XOR2X1 U7648 ( .A(n6224), .B(n6008), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N109) );
  NAND2BX1 U7649 ( .AN(n6009), .B(n6146), .Y(n6010) );
  XNOR2X1 U7650 ( .A(n6013), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n344), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N720) );
  XNOR2X1 U7651 ( .A(n6018), .B(n6017), .Y(n6019) );
  OAI21X1 U7652 ( .A0(n6022), .A1(n6021), .B0(n6020), .Y(n6027) );
  XNOR2X1 U7653 ( .A(n6027), .B(n6026), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N39) );
  OAI21X1 U7654 ( .A0(n6029), .A1(n6382), .B0(n6028), .Y(n6031) );
  XOR2X1 U7655 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n44), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n8), .Y(n6030) );
  XOR2X1 U7656 ( .A(n6031), .B(n6030), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N136) );
  XOR2XL U7657 ( .A(n6035), .B(n6034), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]) );
  NAND2BX1 U7658 ( .AN(n6038), .B(n6037), .Y(n6040) );
  XOR2X1 U7659 ( .A(n6040), .B(n6039), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N7) );
  XNOR2X1 U7660 ( .A(n6047), .B(n6046), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N9) );
  XOR2X1 U7661 ( .A(n6051), .B(n6128), .Y(n6052) );
  XOR2X1 U7662 ( .A(n6057), .B(n6056), .Y(n6058) );
  XNOR2X1 U7663 ( .A(n6065), .B(n6064), .Y(n6066) );
  XOR2X1 U7664 ( .A(n6212), .B(n6068), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]) );
  NAND3XL U7665 ( .A(n6338), .B(median_sobel_inst_n394), .C(med_sobel_r), .Y(
        n6069) );
  XNOR2X1 U7666 ( .A(n6075), .B(n6074), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]) );
  NAND2X1 U7667 ( .A(n6077), .B(n6076), .Y(n6079) );
  XOR2X1 U7668 ( .A(n6079), .B(n6078), .Y(conv_inst_data_abc_w[2]) );
  XNOR2X1 U7669 ( .A(n6084), .B(n6083), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]) );
  MXI2X1 U7670 ( .A(median_sobel_inst_n51), .B(median_sobel_inst_n189), .S0(
        n3789), .Y(n7512) );
  MXI2X1 U7671 ( .A(median_sobel_inst_n1147), .B(n6573), .S0(n3789), .Y(n7421)
         );
  MXI2X1 U7672 ( .A(median_sobel_inst_n1161), .B(n7584), .S0(n3789), .Y(n7423)
         );
  MXI2X1 U7673 ( .A(median_sobel_inst_n45), .B(median_sobel_inst_n184), .S0(
        n3789), .Y(n7515) );
  MXI2X1 U7674 ( .A(median_sobel_inst_n1149), .B(n6571), .S0(n3789), .Y(n7420)
         );
  MXI2X1 U7675 ( .A(median_sobel_inst_n52), .B(median_sobel_inst_n188), .S0(
        n3789), .Y(n7513) );
  MXI2X1 U7676 ( .A(median_sobel_inst_n42), .B(median_sobel_inst_n186), .S0(
        n3789), .Y(n7514) );
  MXI2X1 U7677 ( .A(median_sobel_inst_n939), .B(median_sobel_inst_n268), .S0(
        n3788), .Y(n7510) );
  OR2X1 U7678 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n332), .Y(n6089) );
  XOR2X1 U7679 ( .A(n6091), .B(n4538), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]) );
  XOR2X1 U7680 ( .A(n6102), .B(n6101), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]) );
  AOI211X1 U7681 ( .A0(n4078), .A1(conv_calc_done_r), .B0(n6105), .C0(n7316), 
        .Y(n6106) );
  XOR2X1 U7682 ( .A(n6425), .B(n6108), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]) );
  MXI2X1 U7683 ( .A(n6114), .B(n6113), .S0(n4515), .Y(n6118) );
  OAI21X1 U7684 ( .A0(n6116), .A1(n6115), .B0(n878), .Y(n6117) );
  OAI31X1 U7685 ( .A0(n878), .A1(n6118), .A2(n6554), .B0(n6117), .Y(n491) );
  XOR2X1 U7686 ( .A(n6173), .B(n6122), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N171) );
  NOR2X4 U7687 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n344), .B(
        n6123), .Y(n6438) );
  NOR2X1 U7688 ( .A(n6438), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n64), .Y(n6124) );
  XNOR2X1 U7689 ( .A(n6124), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n32), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N73) );
  NAND2BX1 U7690 ( .AN(n6125), .B(n6158), .Y(n6126) );
  NAND2BX1 U7691 ( .AN(n6129), .B(n6128), .Y(n6130) );
  XOR2X1 U7692 ( .A(n6136), .B(n6135), .Y(n6137) );
  XOR2X1 U7693 ( .A(n6141), .B(n6256), .Y(n6142) );
  XOR2X1 U7694 ( .A(n6147), .B(n6146), .Y(n6148) );
  XOR2X1 U7695 ( .A(n6153), .B(n6152), .Y(n6154) );
  XOR2X1 U7696 ( .A(n6159), .B(n6158), .Y(n6160) );
  XOR2X1 U7697 ( .A(n6165), .B(n6164), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]) );
  AOI21X1 U7698 ( .A0(n6170), .A1(n6169), .B0(n6168), .Y(n6171) );
  OAI21X1 U7699 ( .A0(n6173), .A1(n6172), .B0(n6171), .Y(n6178) );
  XNOR2X1 U7700 ( .A(n6178), .B(n6177), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N174) );
  XOR2X1 U7701 ( .A(n6183), .B(n6182), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]) );
  XNOR2X1 U7702 ( .A(n6191), .B(n6190), .Y(n6192) );
  XOR2X1 U7703 ( .A(n6196), .B(n6195), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]) );
  XNOR2X1 U7704 ( .A(n6204), .B(n6203), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]) );
  XNOR2X1 U7705 ( .A(n6208), .B(n6207), .Y(n6209) );
  OR2X1 U7706 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .B(
        n4534), .Y(n6214) );
  XNOR2X1 U7707 ( .A(n6216), .B(n6215), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]) );
  NOR4X2 U7708 ( .A(n6584), .B(n6219), .C(median_sobel_inst_n394), .D(
        median_sobel_inst_cnt_4_), .Y(n6442) );
  NAND3XL U7709 ( .A(n6442), .B(n6338), .C(median_sobel_inst_n1068), .Y(n6220)
         );
  OAI21X1 U7710 ( .A0(n6221), .A1(n6336), .B0(n6220), .Y(
        median_sobel_inst_ns[1]) );
  OAI21X1 U7711 ( .A0(n6224), .A1(n6223), .B0(n6222), .Y(n6228) );
  NAND2X1 U7712 ( .A(n6226), .B(n6225), .Y(n6227) );
  XNOR2X1 U7713 ( .A(n6228), .B(n6227), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N110) );
  NOR2X1 U7714 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N129), .B(
        n6230), .Y(median_sobel_inst_u_sobel_gradient_submodule_N128) );
  XOR2X1 U7715 ( .A(n6328), .B(n6232), .Y(conv_inst_data_abc_w[3]) );
  OA21X4 U7716 ( .A0(n6235), .A1(n6234), .B0(n6233), .Y(n6370) );
  NAND2X2 U7717 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n372), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .Y(n6369) );
  XOR2X1 U7718 ( .A(n6370), .B(n6237), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N280) );
  MXI2X1 U7719 ( .A(median_sobel_inst_n1099), .B(n7583), .S0(n3788), .Y(n7426)
         );
  MXI2X1 U7720 ( .A(median_sobel_inst_n465), .B(n1879), .S0(n3788), .Y(n7506)
         );
  MXI2X1 U7721 ( .A(median_sobel_inst_n1156), .B(n7582), .S0(n3788), .Y(n7427)
         );
  MXI2X1 U7722 ( .A(median_sobel_inst_n1153), .B(n7428), .S0(n3788), .Y(n7534)
         );
  XOR2X1 U7723 ( .A(n6412), .B(n6240), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N18) );
  XOR2X1 U7724 ( .A(n6245), .B(n6244), .Y(n6246) );
  XNOR2X1 U7725 ( .A(n7356), .B(n6249), .Y(n6250) );
  INVX3 U7726 ( .A(n6252), .Y(n6751) );
  XNOR2X1 U7727 ( .A(n6255), .B(n6254), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]) );
  NAND2BX1 U7728 ( .AN(n6257), .B(n6256), .Y(n6258) );
  OAI21X1 U7729 ( .A0(median_sobel_inst_u_median_filter_submodule_n658), .A1(
        median_sobel_inst_u_median_filter_submodule_n1154), .B0(n6260), .Y(
        n6263) );
  NAND2X6 U7730 ( .A(n6262), .B(n6261), .Y(n6366) );
  NAND2BX4 U7731 ( .AN(n6263), .B(n6366), .Y(n6368) );
  NAND2X4 U7732 ( .A(n6366), .B(n6263), .Y(n6367) );
  OAI222X1 U7733 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n884), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n949), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n908), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[3]) );
  OAI222X1 U7734 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n902), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n880), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n942), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[6]) );
  OAI211X1 U7735 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n44), .A1(
        n6384), .B0(n6266), .C0(n6265), .Y(n6268) );
  OAI211X1 U7736 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[4]), 
        .A1(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[6]), .B0(n6268), .C0(n6267), .Y(n6269) );
  OAI21X1 U7737 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n8), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n44), .B0(n6269), .Y(
        n6271) );
  XOR2X1 U7738 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n81), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n6270) );
  XOR2X1 U7739 ( .A(n6271), .B(n6270), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N137) );
  NAND2X1 U7740 ( .A(n6980), .B(n6981), .Y(n6273) );
  XOR2X1 U7741 ( .A(n6982), .B(n6273), .Y(conv_inst_data_bcd_w[3]) );
  XNOR2X1 U7742 ( .A(n6348), .B(n6276), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]) );
  NAND2X2 U7743 ( .A(cnt[3]), .B(n4541), .Y(n6283) );
  AOI2BB1X2 U7744 ( .A0N(n7001), .A1N(n6431), .B0(n6432), .Y(n6289) );
  OAI22X1 U7745 ( .A0(n6289), .A1(n7538), .B0(n6284), .B1(n7001), .Y(n3511) );
  OAI222X1 U7746 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n889), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n916), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n954), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[5]) );
  OAI222X1 U7747 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n907), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n878), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n961), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[7]) );
  OAI222X1 U7748 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n909), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n879), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n951), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[4]) );
  NOR2X1 U7749 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), .Y(
        n6287) );
  NOR2X1 U7750 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(
        n6447) );
  NAND2X1 U7751 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(n6459) );
  XOR2X1 U7752 ( .A(n6461), .B(n6288), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N149) );
  NOR2BX1 U7753 ( .AN(n6291), .B(n6294), .Y(n6297) );
  CLKINVX1 U7754 ( .A(n6292), .Y(n6295) );
  OAI21X1 U7755 ( .A0(n6295), .A1(n6294), .B0(n6293), .Y(n6296) );
  XNOR2X1 U7756 ( .A(n6303), .B(n6302), .Y(n6304) );
  OA22X4 U7757 ( .A0(conv_inst_n245), .A1(n6936), .B0(n6935), .B1(
        conv_inst_n248), .Y(n6307) );
  NAND2X1 U7758 ( .A(conv_inst_n41), .B(n6937), .Y(n6306) );
  INVX3 U7759 ( .A(n6540), .Y(n6397) );
  XOR2X1 U7760 ( .A(n6397), .B(n6539), .Y(conv_inst_N67) );
  XNOR2X1 U7761 ( .A(n6315), .B(n6314), .Y(n6316) );
  XNOR2X1 U7762 ( .A(n7045), .B(n6319), .Y(n6320) );
  NAND2X2 U7763 ( .A(n6322), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .Y(n6323) );
  OAI21X2 U7764 ( .A0(n6324), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), .B0(n6323), 
        .Y(n6325) );
  OAI222X1 U7765 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n1513), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n899), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n941), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[2]) );
  OAI222X1 U7766 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n873), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n897), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n943), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[1]) );
  OAI21X2 U7767 ( .A0(n6328), .A1(n6327), .B0(n6326), .Y(n6333) );
  CLKINVX1 U7768 ( .A(n6329), .Y(n6331) );
  NAND2X1 U7769 ( .A(n6331), .B(n6330), .Y(n6332) );
  XNOR2X1 U7770 ( .A(n6333), .B(n6332), .Y(conv_inst_data_abc_w[4]) );
  OA21X2 U7771 ( .A0(n6336), .A1(n6335), .B0(n6334), .Y(n6440) );
  NAND3X1 U7772 ( .A(n6442), .B(n6338), .C(n6337), .Y(n6339) );
  NOR2BX1 U7773 ( .AN(n6341), .B(n6344), .Y(n6347) );
  CLKINVX1 U7774 ( .A(n6342), .Y(n6345) );
  OAI21X1 U7775 ( .A0(n6345), .A1(n6344), .B0(n6343), .Y(n6346) );
  XOR2X1 U7776 ( .A(n6352), .B(n6351), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]) );
  XNOR2X1 U7777 ( .A(n6779), .B(n6355), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]) );
  NAND2X1 U7778 ( .A(n6891), .B(n6889), .Y(n6358) );
  XNOR2X1 U7779 ( .A(n6892), .B(n6358), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N20) );
  XNOR2X1 U7780 ( .A(n6754), .B(n6361), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]) );
  NOR2X1 U7781 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n372), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .Y(n6362) );
  NOR2X2 U7782 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .Y(n6372) );
  OR2X1 U7783 ( .A(n6362), .B(n6372), .Y(n6364) );
  NAND2X1 U7784 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .Y(n6373) );
  OA21X2 U7785 ( .A0(n6372), .A1(n6369), .B0(n6373), .Y(n6363) );
  OA21X4 U7786 ( .A0(n6370), .A1(n6364), .B0(n6363), .Y(n6483) );
  XNOR2X1 U7787 ( .A(n6499), .B(n6365), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N30) );
  OAI222X1 U7788 ( .A0(n6368), .A1(
        median_sobel_inst_u_median_filter_submodule_n915), .B0(n6367), .B1(
        median_sobel_inst_u_median_filter_submodule_n1595), .C0(n6366), .C1(
        median_sobel_inst_u_median_filter_submodule_n960), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[0]) );
  XNOR2X1 U7789 ( .A(n6376), .B(n6375), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N29) );
  XOR2X1 U7790 ( .A(n6381), .B(n6380), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N17) );
  OAI2BB2X4 U7791 ( .B0(n6391), .B1(n6390), .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_n81), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n375), .Y(n7187) );
  NOR2XL U7792 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n8), .Y(n6393) );
  XNOR2X1 U7793 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n35), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n8), .Y(n6392) );
  MXI2X1 U7794 ( .A(n6393), .B(n6392), .S0(n7187), .Y(n6394) );
  MXI2X1 U7795 ( .A(median_sobel_inst_n962), .B(n1961), .S0(n5852), .Y(
        median_sobel_inst_n532) );
  AOI21X4 U7796 ( .A0(n6999), .A1(n7238), .B0(n6432), .Y(n6589) );
  MXI2X1 U7797 ( .A(cnt[3]), .B(n6395), .S0(n4541), .Y(n6396) );
  OAI22X1 U7798 ( .A0(n6589), .A1(n7536), .B0(n6396), .B1(n7001), .Y(n3513) );
  NAND2X1 U7799 ( .A(n6397), .B(n6539), .Y(n6398) );
  XNOR2X1 U7800 ( .A(n6398), .B(n6538), .Y(conv_inst_N68) );
  AOI21X1 U7801 ( .A0(n6402), .A1(n6401), .B0(n6400), .Y(n6407) );
  XOR2X1 U7802 ( .A(n6407), .B(n6406), .Y(n6408) );
  MXI2X1 U7803 ( .A(median_sobel_inst_u_sober_compare_submodule_n403), .B(
        n7539), .S0(n5849), .Y(median_sobel_inst_u_sober_compare_submodule_n92) );
  OAI21X1 U7804 ( .A0(n6412), .A1(n6411), .B0(n6410), .Y(n6416) );
  XNOR2X1 U7805 ( .A(n6416), .B(n6415), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N19) );
  NOR2X1 U7806 ( .A(n6988), .B(n6417), .Y(median_sobel_inst_N113) );
  NAND2X1 U7807 ( .A(n6418), .B(n6454), .Y(n6419) );
  XNOR2X1 U7808 ( .A(n6458), .B(n6419), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]) );
  MXI2X1 U7809 ( .A(median_sobel_inst_n209), .B(n1930), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[6]) );
  XNOR2X1 U7810 ( .A(n7084), .B(n6421), .Y(n6422) );
  XNOR2X1 U7811 ( .A(n6430), .B(n6429), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]) );
  AOI21X2 U7812 ( .A0(n6999), .A1(n6993), .B0(n6432), .Y(n6992) );
  OAI21X1 U7813 ( .A0(n6992), .A1(n7373), .B0(n6434), .Y(n3510) );
  AND2X2 U7814 ( .A(n6505), .B(n7351), .Y(n6436) );
  AND2X2 U7815 ( .A(n6437), .B(n7358), .Y(conv_inst_N2460) );
  NAND2X2 U7816 ( .A(n6438), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n32), .Y(n7361) );
  NAND2X1 U7817 ( .A(n7361), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .Y(n6439)
         );
  XNOR2X1 U7818 ( .A(n6439), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n358), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N74) );
  OAI21X1 U7819 ( .A0(n6442), .A1(n6441), .B0(n6440), .Y(
        median_sobel_inst_ns[0]) );
  XNOR2X1 U7820 ( .A(n7029), .B(n6445), .Y(n6446) );
  MXI2X1 U7821 ( .A(median_sobel_inst_n50), .B(median_sobel_inst_n221), .S0(
        n5873), .Y(n7523) );
  MXI2X1 U7822 ( .A(median_sobel_inst_n951), .B(median_sobel_inst_n213), .S0(
        n5873), .Y(n7524) );
  MXI2X1 U7823 ( .A(median_sobel_inst_n1127), .B(n7601), .S0(n5873), .Y(n7413)
         );
  MXI2X1 U7824 ( .A(median_sobel_inst_n955), .B(n7598), .S0(n5873), .Y(n7415)
         );
  MXI2X1 U7825 ( .A(median_sobel_inst_n39), .B(median_sobel_inst_n228), .S0(
        n3789), .Y(n7530) );
  MXI2X1 U7826 ( .A(median_sobel_inst_n1137), .B(n7603), .S0(n5873), .Y(n7412)
         );
  MXI2X1 U7827 ( .A(median_sobel_inst_n8), .B(median_sobel_inst_n254), .S0(
        n3789), .Y(n7532) );
  MXI2X1 U7828 ( .A(median_sobel_inst_n1132), .B(n7602), .S0(n5873), .Y(n7375)
         );
  MXI2X1 U7829 ( .A(median_sobel_inst_n1142), .B(n7581), .S0(n3789), .Y(n7414)
         );
  MXI2X1 U7830 ( .A(median_sobel_inst_n37), .B(median_sobel_inst_n224), .S0(
        n5873), .Y(n7529) );
  MXI2X1 U7831 ( .A(median_sobel_inst_n339), .B(n7599), .S0(n3789), .Y(n7411)
         );
  NOR2X2 U7832 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .Y(
        n6448) );
  NOR2X2 U7833 ( .A(n6447), .B(n6448), .Y(n6450) );
  NAND2X1 U7834 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .Y(n6462) );
  OAI21X2 U7835 ( .A0(n6448), .A1(n6459), .B0(n6462), .Y(n6449) );
  NOR2X2 U7836 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(
        n6708) );
  NAND2X2 U7837 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(n6740) );
  XNOR2X1 U7838 ( .A(n6743), .B(n6451), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N151) );
  MXI2X1 U7839 ( .A(median_sobel_inst_n1159), .B(n7595), .S0(n5873), .Y(n7416)
         );
  OAI21XL U7840 ( .A0(n6455), .A1(n6454), .B0(n6453), .Y(n6456) );
  AOI21X1 U7841 ( .A0(n6458), .A1(n6457), .B0(n6456), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[10]) );
  OR2X1 U7842 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .Y(
        n6463) );
  XNOR2X1 U7843 ( .A(n6465), .B(n6464), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N150) );
  NOR2X1 U7844 ( .A(n7035), .B(n6466), .Y(n6468) );
  CLKINVX1 U7845 ( .A(n6472), .Y(n6474) );
  XOR2X1 U7846 ( .A(n6476), .B(n6475), .Y(conv_inst_data_bcd_w[2]) );
  XOR2X1 U7847 ( .A(n6808), .B(n6477), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]) );
  XNOR2X1 U7848 ( .A(n6763), .B(n6479), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]) );
  NAND2X1 U7849 ( .A(n6486), .B(n6488), .Y(n6484) );
  CLKINVX1 U7850 ( .A(n6487), .Y(n6481) );
  AOI21X1 U7851 ( .A0(n6485), .A1(n6488), .B0(n6481), .Y(n6482) );
  AND2X2 U7852 ( .A(n6495), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N34) );
  AO21X4 U7853 ( .A0(n6499), .A1(n6486), .B0(n6485), .Y(n6490) );
  XNOR2X1 U7854 ( .A(n6490), .B(n6489), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N321) );
  OAI22X1 U7855 ( .A0(n1903), .A1(n7268), .B0(n1868), .B1(n6616), .Y(n6492) );
  AOI211X1 U7856 ( .A0(n7407), .A1(n7093), .B0(n6493), .C0(n6492), .Y(n6494)
         );
  NOR2X1 U7857 ( .A(n6494), .B(n6515), .Y(N748) );
  XOR2X1 U7858 ( .A(n6495), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N330) );
  AOI21X4 U7859 ( .A0(n6499), .A1(n6498), .B0(n6497), .Y(n6503) );
  OR2X1 U7860 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n359), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n6501) );
  NAND2X1 U7861 ( .A(n6501), .B(n6500), .Y(n6502) );
  XOR2X1 U7862 ( .A(n6503), .B(n6502), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N310) );
  NOR2X1 U7863 ( .A(n7350), .B(n6506), .Y(n6510) );
  OR2X2 U7864 ( .A(n7353), .B(n6506), .Y(n6508) );
  NAND2BX1 U7865 ( .AN(n7351), .B(conv_inst_n40), .Y(n6507) );
  NAND2X2 U7866 ( .A(n6508), .B(n6507), .Y(n6509) );
  AO21X4 U7867 ( .A0(n7356), .A1(n6510), .B0(n6509), .Y(n6511) );
  AND2X2 U7868 ( .A(n6512), .B(n7358), .Y(conv_inst_N2480) );
  OAI22XL U7869 ( .A0(n1871), .A1(n6616), .B0(n1872), .B1(n7236), .Y(n6513) );
  AOI211X1 U7870 ( .A0(n7094), .A1(n7537), .B0(n6514), .C0(n6513), .Y(n6516)
         );
  NOR2X1 U7871 ( .A(n6516), .B(n6515), .Y(N742) );
  OA22X1 U7872 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n410), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n367), .Y(n6517) );
  OAI211X1 U7873 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n406), .B0(n6518), .C0(
        n6517), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[9]) );
  OA22X1 U7874 ( .A0(n7202), .A1(
        median_sobel_inst_u_sober_compare_submodule_n412), .B0(n7199), .B1(
        median_sobel_inst_u_sober_compare_submodule_n366), .Y(n6520) );
  OAI211X1 U7875 ( .A0(n7197), .A1(
        median_sobel_inst_u_sober_compare_submodule_n407), .B0(n6521), .C0(
        n6520), .Y(median_sobel_inst_u_sober_compare_submodule_temp_b[6]) );
  OA22X4 U7876 ( .A0(n6930), .A1(conv_inst_n38), .B0(conv_inst_n246), .B1(
        n6940), .Y(n6542) );
  NAND2X1 U7877 ( .A(conv_inst_n39), .B(n6927), .Y(n6541) );
  OAI211X4 U7878 ( .A0(conv_inst_n233), .A1(n6936), .B0(n6542), .C0(n6541), 
        .Y(n6917) );
  XOR2X1 U7879 ( .A(n6949), .B(n6910), .Y(conv_inst_N69) );
  XNOR2X1 U7880 ( .A(n6548), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N168) );
  XNOR2X1 U7881 ( .A(n6552), .B(n6551), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N133) );
  NAND3BX1 U7882 ( .AN(conv_out_valid_w), .B(n6593), .C(n7398), .Y(n2250) );
  MX2X1 U7883 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[27]), .S0(n6989), .Y(median_sobel_inst_n488) );
  MX2X1 U7884 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[28]), .S0(n5289), .Y(median_sobel_inst_n484) );
  MX2X1 U7885 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[32]), .S0(n5289), .Y(median_sobel_inst_n468) );
  MX2X1 U7886 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[23]), .S0(n6989), .Y(median_sobel_inst_n504) );
  MXI2X1 U7887 ( .A(median_sobel_inst_n198), .B(n7601), .S0(n5979), .Y(
        median_sobel_inst_med_sobel_e_wait_r[37]) );
  INVX1 U7888 ( .A(n6554), .Y(n6561) );
  NAND2X1 U7889 ( .A(n6561), .B(n6560), .Y(n6563) );
  MXI2X1 U7890 ( .A(n6563), .B(n6562), .S0(n4514), .Y(n492) );
  NOR2BX4 U7891 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n22), .B(
        n6564), .Y(n6579) );
  XNOR2X1 U7892 ( .A(n6565), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n608), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N101) );
  NAND2X1 U7893 ( .A(n6575), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .Y(n6567)
         );
  XNOR2X1 U7894 ( .A(n6567), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n456), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1030) );
  NOR2X1 U7895 ( .A(n6569), .B(n6568), .Y(n6570) );
  XNOR2X1 U7896 ( .A(n6570), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n8), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N124) );
  MXI2X1 U7897 ( .A(median_sobel_inst_n183), .B(n6571), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[1]) );
  MXI2X1 U7898 ( .A(median_sobel_inst_n223), .B(n6572), .S0(n4756), .Y(
        median_sobel_inst_n1250) );
  MXI2X1 U7899 ( .A(median_sobel_inst_n182), .B(n6573), .S0(n4756), .Y(
        median_sobel_inst_med_sobel_e_wait_r[0]) );
  MXI2X1 U7900 ( .A(n7001), .B(n6997), .S0(cnt[0]), .Y(n3505) );
  NOR2BX1 U7901 ( .AN(result_w[13]), .B(n7230), .Y(out_data_wait_r[13]) );
  NOR2BX1 U7902 ( .AN(result_w[12]), .B(n7230), .Y(out_data_wait_r[12]) );
  NOR2BX1 U7903 ( .AN(result_w[11]), .B(n7230), .Y(out_data_wait_r[11]) );
  XNOR2X1 U7904 ( .A(n6574), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n2), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N98) );
  XNOR2X1 U7905 ( .A(n887), .B(n7268), .Y(n7674) );
  NOR2X1 U7906 ( .A(n7181), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n6576) );
  XNOR2X1 U7907 ( .A(n6576), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N79), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1040) );
  NOR2X1 U7908 ( .A(n6577), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n6578) );
  XNOR2X1 U7909 ( .A(n6578), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N102) );
  XNOR2X1 U7910 ( .A(n6580), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n1), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N100) );
  OAI21X1 U7911 ( .A0(n6997), .A1(n7378), .B0(n6582), .Y(n3515) );
  NAND2BX1 U7912 ( .AN(n6586), .B(n6585), .Y(n6587) );
  NOR2X1 U7913 ( .A(n6988), .B(n6587), .Y(median_sobel_inst_N112) );
  NOR2X1 U7914 ( .A(n6588), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n618), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N177) );
  NOR2X1 U7915 ( .A(n6988), .B(median_sobel_inst_net82615), .Y(
        median_sobel_inst_N109) );
  XOR2X1 U7916 ( .A(n6588), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n618), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N176) );
  NAND2X1 U7917 ( .A(n6999), .B(n7009), .Y(n6590) );
  MXI2X1 U7918 ( .A(n6590), .B(n6589), .S0(n4541), .Y(n3514) );
  OA21XL U7919 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_N131), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_N118), .B0(n6591), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1190) );
  MX2X1 U7920 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[25]), .S0(n5289), .Y(median_sobel_inst_n496) );
  MX2X1 U7921 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[26]), .S0(n5289), .Y(median_sobel_inst_n492) );
  MX2X1 U7922 ( .A(median_sobel_inst_sobel_data_w[9]), .B(
        median_sobel_inst_G[31]), .S0(n5289), .Y(median_sobel_inst_n472) );
  MX2X1 U7923 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[29]), .S0(n6989), .Y(median_sobel_inst_n480) );
  AOI2BB1X1 U7924 ( .A0N(n6931), .A1N(n6927), .B0(n6592), .Y(conv_inst_N57) );
  AO22X1 U7925 ( .A0(n6594), .A1(median_sobel_inst_sobel_out_data_w[9]), .B0(
        conv_result_w[9]), .B1(n6593), .Y(out_data_wait_r[9]) );
  AO22X1 U7926 ( .A0(n6594), .A1(median_sobel_inst_sobel_out_data_w[8]), .B0(
        conv_result_w[8]), .B1(n6593), .Y(out_data_wait_r[8]) );
  AO22X1 U7927 ( .A0(n6594), .A1(median_sobel_inst_sobel_out_data_w[10]), .B0(
        conv_result_w[10]), .B1(n6593), .Y(out_data_wait_r[10]) );
  NAND2X1 U7928 ( .A(n6595), .B(n7141), .Y(n6598) );
  AO22X1 U7929 ( .A0(n6598), .A1(n887), .B0(n6597), .B1(n7674), .Y(n487) );
  CLKINVX1 U7930 ( .A(n6599), .Y(n6602) );
  NAND3XL U7931 ( .A(n6600), .B(n1999), .C(n7507), .Y(n6601) );
  OA21X2 U7932 ( .A0(n6602), .A1(n1955), .B0(n6601), .Y(n486) );
  OAI22XL U7933 ( .A0(n2269), .A1(n7236), .B0(n1902), .B1(n7268), .Y(n6607) );
  OA21XL U7934 ( .A0(n6608), .A1(n6607), .B0(n6617), .Y(N722) );
  OAI22XL U7935 ( .A0(n2272), .A1(n7236), .B0(n1904), .B1(n7268), .Y(n6609) );
  OAI22XL U7936 ( .A0(n2266), .A1(n7236), .B0(n1869), .B1(n7268), .Y(n6618) );
  OA21XL U7937 ( .A0(n6619), .A1(n6618), .B0(n6617), .Y(N723) );
  MXI2X2 U7938 ( .A(n7405), .B(n7536), .S0(n4130), .Y(N789) );
  MXI2X2 U7939 ( .A(n4790), .B(n7538), .S0(n4130), .Y(N791) );
  NAND2X2 U7940 ( .A(n3996), .B(n6703), .Y(n6621) );
  XOR2X2 U7941 ( .A(n6705), .B(n6621), .Y(conv_inst_data_abc_w[5]) );
  MXI2X1 U7942 ( .A(n2150), .B(n2152), .S0(i_in_valid), .Y(n6622) );
  NAND2X2 U7943 ( .A(median_sobel_inst_u_sober_compare_submodule_n377), .B(
        n4392), .Y(n6631) );
  INVX2 U7944 ( .A(n6628), .Y(n6629) );
  NAND2X2 U7945 ( .A(n6629), .B(
        median_sobel_inst_u_sober_compare_submodule_n272), .Y(n6630) );
  NAND2X2 U7946 ( .A(n7451), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n644), .Y(n6640) );
  OAI211X1 U7947 ( .A0(n6639), .A1(n7489), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n354), .C0(n6640), .Y(
        n6643) );
  NOR3X1 U7948 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n354), .B(
        n6639), .C(n7489), .Y(n6642) );
  OAI22X1 U7949 ( .A0(n6640), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n354), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n31), .B1(n7396), .Y(
        n6641) );
  INVX2 U7950 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n52), .Y(n6648) );
  NOR3X2 U7951 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n341), .B(
        n7444), .C(n6646), .Y(n6644) );
  OR2X2 U7952 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n623), .B(
        n7467), .Y(n6671) );
  NAND4X4 U7953 ( .A(n6644), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n106), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n104), .D(n6671), .Y(
        n6645) );
  NOR4X4 U7954 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n629), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n630), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n636), .D(n6645), .Y(
        n6651) );
  NOR3X1 U7955 ( .A(n7397), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n66), .C(n6646), .Y(n6647) );
  OAI22X1 U7956 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n38), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n634), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n71), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n54), .Y(n6649) );
  AOI2BB1X4 U7957 ( .A0N(n6651), .A1N(n6650), .B0(n6649), .Y(n6661) );
  AND2X2 U7958 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n71), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n54), .Y(n6652) );
  INVXL U7959 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n38), .Y(n6654) );
  OAI21X1 U7960 ( .A0(n6652), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n38), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n634), .Y(n6653) );
  NOR2BX1 U7961 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n103), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n624), .Y(n6657) );
  AOI211X1 U7962 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n354), 
        .A1(median_sobel_inst_u_sobel_gradient_submodule_n355), .B0(n6658), 
        .C0(n6657), .Y(n6659) );
  OAI21X4 U7963 ( .A0(n6661), .A1(n6660), .B0(n6659), .Y(n6662) );
  AOI2BB2X4 U7964 ( .B0(n6663), .B1(n6662), .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_n276), .A1N(n7393), .Y(
        n6665) );
  NOR2BX1 U7965 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n312), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[15]), .Y(n6664) );
  OAI2BB2X4 U7966 ( .B0(n6665), .B1(n6664), .A0N(n4794), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[15]), .Y(n6666) );
  OAI2BB1X4 U7967 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_n645), 
        .A1N(n7499), .B0(n6666), .Y(n6668) );
  AOI211X1 U7968 ( .A0(n7502), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n33), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r[17]), .C0(
        median_sobel_inst_u_sobel_gradient_submodule_n384), .Y(n6667) );
  NAND2X6 U7969 ( .A(n6668), .B(n6667), .Y(n7196) );
  NAND4BBX4 U7970 ( .AN(n6669), .BN(
        median_sobel_inst_u_sobel_gradient_submodule_n630), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n398), .D(
        median_sobel_inst_u_sobel_gradient_submodule_n104), .Y(n6670) );
  AOI2BB2X4 U7971 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_n623), 
        .B1(n7467), .A0N(n6670), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n629), .Y(n6673) );
  AOI211X1 U7972 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n63), .A1(
        n6674), .B0(n6679), .C0(n6680), .Y(n6676) );
  INVX1 U7973 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n54), .Y(n6678) );
  NOR4X1 U7974 ( .A(n6679), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n617), .C(n6680), .D(
        n6678), .Y(n6684) );
  AO22X4 U7975 ( .A0(n6686), .A1(n6685), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n119), .B1(n7494), .Y(
        n6687) );
  AOI22X1 U7976 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n360), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n31), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n354), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n613), .Y(n6689) );
  NOR2X1 U7977 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n643), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n312), .Y(n6688) );
  AND2X4 U7978 ( .A(n7196), .B(n7194), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[0]) );
  NAND2X2 U7979 ( .A(n6698), .B(n6697), .Y(n6699) );
  XNOR2X4 U7980 ( .A(n6700), .B(n6699), .Y(conv_inst_data_abc_w[8]) );
  NOR2X2 U7981 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .Y(
        n6709) );
  NOR2X2 U7982 ( .A(n6708), .B(n6709), .Y(n6731) );
  NOR2X2 U7983 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .Y(
        n6732) );
  NAND2X1 U7984 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .Y(n6744) );
  OA21X4 U7985 ( .A0(n6709), .A1(n6740), .B0(n6744), .Y(n6720) );
  INVX3 U7986 ( .A(n6720), .Y(n6730) );
  NAND2X1 U7987 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .Y(n6733) );
  NAND2X1 U7988 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .Y(n6723) );
  NOR2X1 U7989 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .Y(
        n6717) );
  CLKINVX1 U7990 ( .A(n6717), .Y(n6728) );
  CLKINVX1 U7991 ( .A(n6727), .Y(n6718) );
  XOR2X2 U7992 ( .A(n6719), .B(n7401), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N156) );
  NOR2BX1 U7993 ( .AN(n6731), .B(n6732), .Y(n6722) );
  AO21X2 U7994 ( .A0(n6743), .A1(n6722), .B0(n6721), .Y(n6726) );
  XNOR2X1 U7995 ( .A(n6726), .B(n6725), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N154) );
  XNOR2X1 U7996 ( .A(n6739), .B(n6729), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N155) );
  XNOR2X1 U7997 ( .A(n6736), .B(n6735), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N153) );
  XOR2X1 U7998 ( .A(n6747), .B(n6746), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N152) );
  NOR2BX1 U7999 ( .AN(n6748), .B(n6750), .Y(n6753) );
  OAI21X1 U8000 ( .A0(n6751), .A1(n6750), .B0(n6749), .Y(n6752) );
  AO21X2 U8001 ( .A0(n6754), .A1(n6753), .B0(n6752), .Y(n6759) );
  XNOR2X1 U8002 ( .A(n6759), .B(n6758), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]) );
  AOI21X4 U8003 ( .A0(n6763), .A1(n6762), .B0(n6761), .Y(n6768) );
  AOI21X1 U8004 ( .A0(n6779), .A1(n6772), .B0(n6773), .Y(n6771) );
  XOR2X1 U8005 ( .A(n6771), .B(n6770), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]) );
  NOR2BX1 U8006 ( .AN(n6772), .B(n6775), .Y(n6778) );
  OAI21X1 U8007 ( .A0(n6776), .A1(n6775), .B0(n6774), .Y(n6777) );
  AO21X4 U8008 ( .A0(n6790), .A1(n6796), .B0(n6804), .Y(n6787) );
  XNOR2X1 U8009 ( .A(n6787), .B(n6786), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]) );
  NAND2X2 U8010 ( .A(n6796), .B(n6803), .Y(n6805) );
  OAI2BB1XL U8011 ( .A0N(n6808), .A1N(n6807), .B0(n6806), .Y(n6813) );
  XNOR2X1 U8012 ( .A(n6813), .B(n6812), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]) );
  XOR2X1 U8013 ( .A(n6818), .B(n6817), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]) );
  NOR2X1 U8014 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n371), .Y(n6822) );
  NOR2X2 U8015 ( .A(n6819), .B(n6822), .Y(n6826) );
  NAND2X2 U8016 ( .A(n6824), .B(n6823), .Y(n6825) );
  XOR2X1 U8017 ( .A(n6828), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]) );
  XOR2X1 U8018 ( .A(n6829), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]) );
  NAND2X1 U8019 ( .A(n6842), .B(n6841), .Y(n6843) );
  AOI21X4 U8020 ( .A0(n4256), .A1(n6845), .B0(n6844), .Y(n6850) );
  XOR2X1 U8021 ( .A(n6850), .B(n6849), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]) );
  NAND2X1 U8022 ( .A(n6856), .B(n6855), .Y(n6858) );
  INVX3 U8023 ( .A(n6857), .Y(n6860) );
  NAND2X2 U8024 ( .A(n6862), .B(n6861), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N115) );
  NOR2BX1 U8025 ( .AN(n6863), .B(n6866), .Y(n6867) );
  NAND2X1 U8026 ( .A(n6871), .B(n6870), .Y(n6872) );
  NAND2X1 U8027 ( .A(n6877), .B(n6876), .Y(n6878) );
  XNOR2X1 U8028 ( .A(n6879), .B(n6878), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N42) );
  NAND2X1 U8029 ( .A(n6885), .B(n6884), .Y(n6886) );
  XOR2X1 U8030 ( .A(n6887), .B(n6886), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N41) );
  XOR2X1 U8031 ( .A(n6888), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N43) );
  AOI21X4 U8032 ( .A0(n6892), .A1(n6891), .B0(n6890), .Y(n6897) );
  CLKINVX1 U8033 ( .A(n6893), .Y(n6895) );
  XOR2X1 U8034 ( .A(n6897), .B(n6896), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N210) );
  XNOR2X1 U8035 ( .A(n6904), .B(n6901), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N10) );
  AO21X4 U8036 ( .A0(n6904), .A1(n6903), .B0(n6902), .Y(n6908) );
  XNOR2X1 U8037 ( .A(n6908), .B(n6907), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N12) );
  XOR2X1 U8038 ( .A(n6909), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N13) );
  OA22X4 U8039 ( .A0(conv_inst_n21), .A1(n6936), .B0(n6935), .B1(conv_inst_n13), .Y(n6919) );
  NAND2X1 U8040 ( .A(n6931), .B(conv_inst_n168), .Y(n6918) );
  AOI2BB2X2 U8041 ( .B0(n6927), .B1(conv_inst_n40), .A0N(n6936), .A1N(
        conv_inst_n232), .Y(n6922) );
  NAND2X1 U8042 ( .A(n6931), .B(conv_inst_n43), .Y(n6921) );
  OAI211X4 U8043 ( .A0(conv_inst_n239), .A1(n6930), .B0(n6922), .C0(n6921), 
        .Y(n6952) );
  OA22X4 U8044 ( .A0(conv_inst_n237), .A1(n6936), .B0(n6935), .B1(
        conv_inst_n242), .Y(n6924) );
  NAND2X1 U8045 ( .A(n6931), .B(conv_inst_conv_1_r[12]), .Y(n6923) );
  OAI211X4 U8046 ( .A0(conv_inst_n241), .A1(n6930), .B0(n6924), .C0(n6923), 
        .Y(n6953) );
  NAND2X4 U8047 ( .A(n6956), .B(n6957), .Y(n6926) );
  OAI2BB2X1 U8048 ( .B0(n6936), .B1(conv_inst_n106), .A0N(
        conv_inst_conv_2_r[15]), .A1N(n6927), .Y(n6929) );
  OAI22X1 U8049 ( .A0(n6930), .A1(conv_inst_n102), .B0(conv_inst_n165), .B1(
        n6940), .Y(n6928) );
  NAND2X1 U8050 ( .A(conv_inst_conv_1_r[16]), .B(n6931), .Y(n6932) );
  OAI211X4 U8051 ( .A0(conv_inst_n278), .A1(n3935), .B0(n6933), .C0(n6932), 
        .Y(n6959) );
  AND2X2 U8052 ( .A(n6958), .B(n6959), .Y(n6934) );
  NOR2X4 U8053 ( .A(n6950), .B(n6949), .Y(n6951) );
  NOR2X2 U8054 ( .A(n3889), .B(n6964), .Y(n6954) );
  XOR2X2 U8055 ( .A(n6954), .B(n6953), .Y(conv_inst_N74) );
  XOR2X1 U8056 ( .A(n3889), .B(n6964), .Y(conv_inst_N73) );
  XOR2X4 U8057 ( .A(n6968), .B(n6967), .Y(conv_inst_data_bcd_w[6]) );
  NAND2X1 U8058 ( .A(n6971), .B(n6970), .Y(n6972) );
  XNOR2X4 U8059 ( .A(n6979), .B(n6978), .Y(conv_inst_data_bcd_w[7]) );
  NAND2X1 U8060 ( .A(n6985), .B(n6984), .Y(n6986) );
  OAI21X1 U8061 ( .A0(n6993), .A1(cnt[7]), .B0(cnt[6]), .Y(n6990) );
  MXI2X2 U8062 ( .A(n7006), .B(n4790), .S0(cnt[10]), .Y(n7000) );
  OAI22X2 U8063 ( .A0(n7002), .A1(n7492), .B0(n7001), .B1(n7000), .Y(n3506) );
  INVX3 U8064 ( .A(n7004), .Y(n7317) );
  AOI21X2 U8065 ( .A0(n7029), .A1(n7015), .B0(n4378), .Y(n7016) );
  XOR2X2 U8066 ( .A(n7016), .B(conv_inst_n22), .Y(n7017) );
  NAND2X1 U8067 ( .A(n7031), .B(conv_inst_conv_4_r[11]), .Y(n7021) );
  NAND2BX1 U8068 ( .AN(n7030), .B(conv_inst_conv_4_r[11]), .Y(n7020) );
  OAI21X1 U8069 ( .A0(n7022), .A1(n7021), .B0(n7020), .Y(n7023) );
  AO21X4 U8070 ( .A0(n7029), .A1(n7024), .B0(n7023), .Y(n7025) );
  XOR2X2 U8071 ( .A(n7025), .B(conv_inst_conv_4_r[12]), .Y(n7026) );
  AO21X4 U8072 ( .A0(n7029), .A1(n7028), .B0(n7027), .Y(n7033) );
  XNOR2X2 U8073 ( .A(n7033), .B(n7032), .Y(n7034) );
  NOR2X1 U8074 ( .A(n7042), .B(n7037), .Y(n7039) );
  NOR2X1 U8075 ( .A(n7043), .B(n7037), .Y(n7038) );
  AO21X4 U8076 ( .A0(n7045), .A1(n7039), .B0(n7038), .Y(n7040) );
  XNOR2X4 U8077 ( .A(n7040), .B(conv_inst_n165), .Y(n7041) );
  AND2X4 U8078 ( .A(n7041), .B(n7358), .Y(conv_inst_N2340) );
  NOR2X1 U8079 ( .A(n7042), .B(n7497), .Y(n7044) );
  NAND2X2 U8080 ( .A(n7046), .B(n7580), .Y(n7049) );
  INVX3 U8081 ( .A(n7046), .Y(n7047) );
  AND2X4 U8082 ( .A(n7050), .B(n7052), .Y(conv_inst_N2330) );
  NOR2X1 U8083 ( .A(n7055), .B(conv_inst_n12), .Y(n7054) );
  NOR2X2 U8084 ( .A(n7056), .B(conv_inst_n12), .Y(n7053) );
  NOR2BX4 U8085 ( .AN(n7084), .B(n7055), .Y(n7058) );
  NOR2X4 U8086 ( .A(n7058), .B(n7057), .Y(n7059) );
  XOR2X4 U8087 ( .A(n7059), .B(conv_inst_n12), .Y(n7060) );
  AND2X4 U8088 ( .A(n7060), .B(n7358), .Y(conv_inst_N2660) );
  CLKINVX1 U8089 ( .A(n7075), .Y(n7067) );
  CLKINVX1 U8090 ( .A(n7068), .Y(n7077) );
  NOR2X1 U8091 ( .A(n7067), .B(n7062), .Y(n7064) );
  NAND2BX1 U8092 ( .AN(n7076), .B(conv_inst_conv_3_r[11]), .Y(n7061) );
  OAI21X1 U8093 ( .A0(n7069), .A1(n7062), .B0(n7061), .Y(n7063) );
  AO21X4 U8094 ( .A0(n7084), .A1(n7064), .B0(n7063), .Y(n7065) );
  XOR2X4 U8095 ( .A(n7065), .B(conv_inst_conv_3_r[12]), .Y(n7066) );
  NOR2X1 U8096 ( .A(n7067), .B(n7068), .Y(n7071) );
  OAI21X1 U8097 ( .A0(n7069), .A1(n7068), .B0(n7076), .Y(n7070) );
  AOI21X2 U8098 ( .A0(n7084), .A1(n7071), .B0(n7070), .Y(n7072) );
  XNOR2X2 U8099 ( .A(n7072), .B(conv_inst_conv_3_r[11]), .Y(n7073) );
  AND2X4 U8100 ( .A(n7073), .B(n7358), .Y(conv_inst_N2640) );
  AO21X4 U8101 ( .A0(n7084), .A1(n7075), .B0(n7074), .Y(n7079) );
  NAND2X1 U8102 ( .A(n7077), .B(n7076), .Y(n7078) );
  XNOR2X4 U8103 ( .A(n7079), .B(n7078), .Y(n7080) );
  AO21X4 U8104 ( .A0(n7084), .A1(n7083), .B0(n7082), .Y(n7089) );
  NAND2X4 U8105 ( .A(n7097), .B(n7141), .Y(n7092) );
  OAI22X2 U8106 ( .A0(n2259), .A1(n7129), .B0(n7130), .B1(n1870), .Y(n7100) );
  BUFX20 U8107 ( .A(n7095), .Y(n7131) );
  NAND2X4 U8108 ( .A(n7097), .B(n7096), .Y(n7098) );
  OAI22X2 U8109 ( .A0(n2270), .A1(n7131), .B0(n7132), .B1(n1867), .Y(n7099) );
  OAI22X2 U8110 ( .A0(n1899), .A1(n7129), .B0(n7130), .B1(n1871), .Y(n7102) );
  OAI22X2 U8111 ( .A0(n2264), .A1(n7131), .B0(n7132), .B1(n1872), .Y(n7101) );
  OAI22X2 U8112 ( .A0(n1891), .A1(n7129), .B0(n7130), .B1(n1905), .Y(n7104) );
  OAI22X2 U8113 ( .A0(n2271), .A1(n7131), .B0(n7132), .B1(n2258), .Y(n7103) );
  OAI22X2 U8114 ( .A0(n1901), .A1(n7129), .B0(n7130), .B1(n1938), .Y(n7106) );
  OAI22X2 U8115 ( .A0(n2265), .A1(n7131), .B0(n7132), .B1(n1866), .Y(n7105) );
  OAI22X2 U8116 ( .A0(n2260), .A1(n7129), .B0(n7130), .B1(n1904), .Y(n7108) );
  OAI22X2 U8117 ( .A0(n2272), .A1(n7131), .B0(n7132), .B1(n2263), .Y(n7107) );
  OAI22X2 U8118 ( .A0(n2261), .A1(n7129), .B0(n7130), .B1(n1902), .Y(n7110) );
  OAI22X2 U8119 ( .A0(n2269), .A1(n7131), .B0(n7132), .B1(n2268), .Y(n7109) );
  OAI22X2 U8120 ( .A0(n7132), .A1(n1865), .B0(n7131), .B1(n2266), .Y(n7111) );
  OAI22X2 U8121 ( .A0(n7130), .A1(n1868), .B0(n7129), .B1(n1903), .Y(n7114) );
  OAI22X2 U8122 ( .A0(n2267), .A1(n7131), .B0(n7132), .B1(n1864), .Y(n7113) );
  OAI22X2 U8123 ( .A0(n1903), .A1(n7130), .B0(n7129), .B1(n2267), .Y(n7116) );
  OAI22X2 U8124 ( .A0(n1868), .A1(n7132), .B0(n7131), .B1(n1864), .Y(n7115) );
  OAI22X2 U8125 ( .A0(n2262), .A1(n7130), .B0(n7129), .B1(n2266), .Y(n7118) );
  OAI22X2 U8126 ( .A0(n1869), .A1(n7132), .B0(n7131), .B1(n1865), .Y(n7117) );
  OAI22X2 U8127 ( .A0(n1899), .A1(n7130), .B0(n7129), .B1(n2264), .Y(n7120) );
  OAI22X2 U8128 ( .A0(n1871), .A1(n7132), .B0(n7131), .B1(n1872), .Y(n7119) );
  OAI22X2 U8129 ( .A0(n2259), .A1(n7130), .B0(n7129), .B1(n2270), .Y(n7122) );
  OAI22X2 U8130 ( .A0(n1870), .A1(n7132), .B0(n7131), .B1(n1867), .Y(n7121) );
  OAI22X2 U8131 ( .A0(n1891), .A1(n7130), .B0(n7129), .B1(n2271), .Y(n7124) );
  OAI22X2 U8132 ( .A0(n1905), .A1(n7132), .B0(n7131), .B1(n2258), .Y(n7123) );
  OAI22X2 U8133 ( .A0(n2261), .A1(n7130), .B0(n7129), .B1(n2269), .Y(n7126) );
  OAI22X2 U8134 ( .A0(n1902), .A1(n7132), .B0(n7131), .B1(n2268), .Y(n7125) );
  OAI22X2 U8135 ( .A0(n2260), .A1(n7130), .B0(n7129), .B1(n2272), .Y(n7128) );
  OAI22X2 U8136 ( .A0(n1904), .A1(n7132), .B0(n7131), .B1(n2263), .Y(n7127) );
  OAI22X2 U8137 ( .A0(n1901), .A1(n7130), .B0(n7129), .B1(n2265), .Y(n7134) );
  OAI22X2 U8138 ( .A0(n1938), .A1(n7132), .B0(n7131), .B1(n1866), .Y(n7133) );
  OAI22X1 U8139 ( .A0(n1903), .A1(n7138), .B0(n1868), .B1(n7268), .Y(n7139) );
  AOI22X2 U8140 ( .A0(n4411), .A1(
        median_sobel_inst_u_median_filter_submodule_n1107), .B0(
        median_sobel_inst_u_median_filter_submodule_n1131), .B1(n4311), .Y(
        n7145) );
  OAI21X4 U8141 ( .A0(n7161), .A1(n7146), .B0(n7145), .Y(
        median_sobel_inst_u_median_filter_submodule_n1583) );
  OAI21X4 U8142 ( .A0(n7151), .A1(n7150), .B0(n7155), .Y(n7157) );
  OAI21X4 U8143 ( .A0(n7162), .A1(n7161), .B0(n7160), .Y(
        median_sobel_inst_u_median_filter_submodule_n1581) );
  INVX1 U8144 ( .A(median_sobel_inst_u_median_filter_submodule_net87617), .Y(
        n7165) );
  NOR2X2 U8145 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n65), .B(
        n7183), .Y(n7182) );
  OAI21X2 U8146 ( .A0(n7185), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[9]), .Y(n7186) );
  XOR2X1 U8147 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n58), .B(
        n7190), .Y(n7191) );
  XNOR2X1 U8148 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n627), .Y(n7193) );
  NAND2X2 U8149 ( .A(n7196), .B(n7195), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[1]) );
  NOR2BX1 U8150 ( .AN(median_sobel_inst_sobel_out_data_w[0]), .B(n7218), .Y(
        n7203) );
  AOI211X1 U8151 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[0]), .B0(n7203), .C0(conv_result_w[0]), .Y(n7207) );
  OAI22XL U8152 ( .A0(n2258), .A1(n7221), .B0(n1905), .B1(n7222), .Y(n7205) );
  OAI22XL U8153 ( .A0(n2271), .A1(n7223), .B0(n1891), .B1(n7224), .Y(n7204) );
  OAI21X2 U8154 ( .A0(median_sobel_inst_u_median_filter_submodule_n830), .A1(
        n7217), .B0(n7216), .Y(
        median_sobel_inst_u_median_filter_submodule_c2[4]) );
  NOR2BX1 U8155 ( .AN(median_sobel_inst_sobel_out_data_w[5]), .B(n7218), .Y(
        n7219) );
  AOI211X1 U8156 ( .A0(n7220), .A1(median_sobel_inst_out_data_w[5]), .B0(
        conv_result_w[5]), .C0(n7219), .Y(n7229) );
  OAI22XL U8157 ( .A0(n1902), .A1(n7222), .B0(n2268), .B1(n7221), .Y(n7226) );
  INVX3 U8158 ( .A(n7227), .Y(n7228) );
  NAND2X6 U8159 ( .A(n7238), .B(n7316), .Y(n7276) );
  NAND2X1 U8160 ( .A(n7277), .B(cnt[6]), .Y(n7244) );
  NAND2X1 U8161 ( .A(n7277), .B(cnt[5]), .Y(n7257) );
  NAND2X1 U8162 ( .A(n7277), .B(cnt[4]), .Y(n7258) );
  NOR3X2 U8163 ( .A(n7261), .B(n7378), .C(n4514), .Y(n7263) );
  MXI2X2 U8164 ( .A(n7264), .B(n7263), .S0(n7262), .Y(n7265) );
  XOR2X2 U8165 ( .A(n7270), .B(n887), .Y(N787) );
  NAND2XL U8166 ( .A(n7479), .B(n7388), .Y(n7271) );
  MXI2X1 U8167 ( .A(x_plus_two_r_2_), .B(x_r[2]), .S0(n7271), .Y(n7274) );
  INVXL U8168 ( .A(n7272), .Y(n7273) );
  NAND3X2 U8169 ( .A(n7279), .B(n7278), .C(n7347), .Y(sram_addr_wait_r[27]) );
  NAND2X2 U8170 ( .A(n7296), .B(n857), .Y(n7289) );
  NAND2XL U8171 ( .A(n1898), .B(n7479), .Y(n7292) );
  MXI2X1 U8172 ( .A(x_plus_two_r_2_), .B(x_r[2]), .S0(n7292), .Y(n7293) );
  NOR2X1 U8173 ( .A(n1914), .B(x_minus_one_r[0]), .Y(n7295) );
  AOI22X2 U8174 ( .A0(n4541), .A1(n7297), .B0(n7296), .B1(n7910), .Y(n7298) );
  NAND2X1 U8175 ( .A(n4945), .B(cnt[6]), .Y(n7302) );
  NAND2X1 U8176 ( .A(n4945), .B(cnt[5]), .Y(n7303) );
  NAND2X1 U8177 ( .A(n4945), .B(cnt[4]), .Y(n7304) );
  NAND2XL U8178 ( .A(n1889), .B(n7388), .Y(n7307) );
  MXI2X1 U8179 ( .A(x_plus_two_r_2_), .B(x_r[2]), .S0(n7307), .Y(n7309) );
  OAI21X1 U8180 ( .A0(n7310), .A1(x_plus_one_r[2]), .B0(n7335), .Y(n7308) );
  AOI211X2 U8181 ( .A0(n7310), .A1(n7309), .B0(n7308), .C0(n7342), .Y(n7312)
         );
  MXI2X4 U8182 ( .A(n7345), .B(n7312), .S0(n7311), .Y(n7315) );
  NAND2X6 U8183 ( .A(n7316), .B(n7317), .Y(n7346) );
  NAND2X2 U8184 ( .A(n7318), .B(cnt[10]), .Y(n7320) );
  NAND2X2 U8185 ( .A(n7318), .B(cnt[9]), .Y(n7322) );
  NAND2X2 U8186 ( .A(n7318), .B(cnt[8]), .Y(n7324) );
  NAND2X2 U8187 ( .A(n7318), .B(cnt[7]), .Y(n7326) );
  NAND2X2 U8188 ( .A(n7318), .B(cnt[6]), .Y(n7328) );
  NAND2X2 U8189 ( .A(n7318), .B(cnt[5]), .Y(n7330) );
  NAND2X2 U8190 ( .A(n7318), .B(cnt[4]), .Y(n7332) );
  NAND2X2 U8191 ( .A(n7318), .B(cnt[3]), .Y(n7334) );
  NAND2XL U8192 ( .A(n1889), .B(n1898), .Y(n7336) );
  MXI2X1 U8193 ( .A(x_plus_two_r_2_), .B(x_r[2]), .S0(n7336), .Y(n7337) );
  OAI21X4 U8194 ( .A0(n7342), .A1(n7341), .B0(n7344), .Y(n7343) );
  AOI2BB2X1 U8195 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_n4), .B1(
        n7360), .A0N(median_sobel_inst_u_sobel_gradient_submodule_n4), .A1N(
        n7360), .Y(median_sobel_inst_u_sobel_gradient_submodule_N670) );
  OAI21X4 U8196 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n358), .A1(
        n7361), .B0(median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), 
        .Y(n7362) );
endmodule

