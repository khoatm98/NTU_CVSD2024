/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Fri Nov  1 21:27:00 2024
/////////////////////////////////////////////////////////////


module core ( i_clk, i_rst_n, i_op_valid, i_op_mode, o_op_ready, i_in_valid, 
        i_in_data, o_in_ready, o_out_valid, o_out_data );
  input [3:0] i_op_mode;
  input [7:0] i_in_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_op_valid, i_in_valid;
  output o_op_ready, o_in_ready, o_out_valid;
  wire   med_out_valid_w, next_state_3_, y_origin_r_2_, conv_isFirst_signal_r,
         conv_calc_done_r, med_sobel_isFirst_signal_r, med_done_w,
         op_mode_r_0_, N125, x_plus_one_r_2_, x_delay_r_2__1_, x_delay_r_2__0_,
         x_delay_r_1__1_, x_delay_r_1__0_, x_delay_r_0__1_, x_delay_r_0__0_,
         N717, N718, N719, N720, N721, N722, N723, N724, N725, N726, N727,
         N728, N729, N730, N731, N732, N733, N734, N735, N736, N737, N738,
         N739, N740, N741, N742, N743, N744, N745, N746, N747, N748, N756,
         N760, N762, N785, N786, N787, N788, N789, N790, N791, N792, N815,
         N819, N820, N841, N842, N843, N844, N896, n413, n414, n415, n416,
         n417, n418, n429, n430, n431, n432, n433, n434, n435, n436, n438,
         n439, n440, n441, n442, n443, n447, n451, n452, n453, n458, n459,
         n460, n461, n462, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n818, n822, n829, n834, n864, n865, n866, n1124, n1386, n1387, n1388,
         n1389, n1391, n1392, n1393, n1394, n1395, n1397, n1904, n1905, n1906,
         n1907, n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921,
         n1922, n1927, n1936, n1938, n1939, n1940, n1941, n1942, n1943, n1944,
         n1945, n1946, n1947, n1948, n1949, n1950, n1956, n1957, n1959, n1960,
         n1962, n1963, n1964, n1965, n1966, n1968, n1969, n1974, n1975, n1980,
         n1982, n1984, n1986, n1989, n1991, n1993, n1995, n1998, n2000, n2002,
         n2004, n2005, n2018, n2024, n2028, n2035, n2073, n2075, n2093, n2111,
         n2113, n2115, n2218, n2292, n2319, n2320, conv_inst_n314,
         conv_inst_n313, conv_inst_n312, conv_inst_n310, conv_inst_n285,
         conv_inst_n284, conv_inst_n273, conv_inst_n200, conv_inst_n199,
         conv_inst_n197, conv_inst_n196, conv_inst_n192, conv_inst_n191,
         conv_inst_n189, conv_inst_n188, conv_inst_n187, conv_inst_n184,
         conv_inst_n172, conv_inst_n169, conv_inst_n270, conv_inst_n269,
         conv_inst_n268, conv_inst_n265, conv_inst_n263, conv_inst_n262,
         conv_inst_n261, conv_inst_n260, conv_inst_n259, conv_inst_n258,
         conv_inst_n257, conv_inst_n256, conv_inst_n253, conv_inst_n252,
         conv_inst_n249, conv_inst_n246, conv_inst_n245, conv_inst_n242,
         conv_inst_n240, conv_inst_n239, conv_inst_n238, conv_inst_n236,
         conv_inst_n235, conv_inst_n234, conv_inst_n132, conv_inst_n95,
         conv_inst_n76, conv_inst_n51, conv_inst_n50, conv_inst_n49,
         conv_inst_n48, conv_inst_n47, conv_inst_n45, conv_inst_n44,
         conv_inst_n42, conv_inst_n41, conv_inst_n39, conv_inst_n37,
         conv_inst_n34, conv_inst_n22, conv_inst_n21, conv_inst_n19,
         conv_inst_n18, conv_inst_n15, conv_inst_n10, conv_inst_n9,
         conv_inst_n28, conv_inst_n27, conv_inst_n25, conv_inst_N286,
         conv_inst_N2850, conv_inst_N2840, conv_inst_N283, conv_inst_N282,
         conv_inst_N281, conv_inst_N280, conv_inst_N279, conv_inst_N278,
         conv_inst_N277, conv_inst_N276, conv_inst_N275, conv_inst_N274,
         conv_inst_N2730, conv_inst_N272, conv_inst_N271, conv_inst_N2700,
         conv_inst_N2690, conv_inst_N2680, conv_inst_N267, conv_inst_N266,
         conv_inst_N2650, conv_inst_N264, conv_inst_N2630, conv_inst_N2620,
         conv_inst_N2610, conv_inst_N2600, conv_inst_N2590, conv_inst_N2580,
         conv_inst_N2570, conv_inst_N2560, conv_inst_N255, conv_inst_N254,
         conv_inst_N2530, conv_inst_N2520, conv_inst_N251, conv_inst_N250,
         conv_inst_N2490, conv_inst_N248, conv_inst_N247, conv_inst_N2460,
         conv_inst_N2450, conv_inst_N244, conv_inst_N243, conv_inst_N2420,
         conv_inst_N241, conv_inst_N2400, conv_inst_N2390, conv_inst_N2380,
         conv_inst_N237, conv_inst_N2360, conv_inst_N2350, conv_inst_N2340,
         conv_inst_N233, conv_inst_N232, conv_inst_N231, conv_inst_N230,
         conv_inst_N229, conv_inst_N228, conv_inst_N227, conv_inst_N226,
         conv_inst_N225, conv_inst_N224, conv_inst_N223, conv_inst_N222,
         conv_inst_N221, conv_inst_N220, conv_inst_N219, conv_inst_N218,
         conv_inst_N217, conv_inst_N216, conv_inst_N215, conv_inst_N214,
         conv_inst_N213, conv_inst_N212, conv_inst_N211, conv_inst_N210,
         conv_inst_N209, conv_inst_N208, conv_inst_N207, conv_inst_N206,
         conv_inst_N205, conv_inst_N204, conv_inst_N203, conv_inst_N202,
         conv_inst_N201, conv_inst_N2000, conv_inst_N1990, conv_inst_N198,
         conv_inst_N1970, conv_inst_N145, conv_inst_N144, conv_inst_N143,
         conv_inst_N142, conv_inst_N141, conv_inst_N140, conv_inst_N139,
         conv_inst_N138, conv_inst_N137, conv_inst_N136, conv_inst_N135,
         conv_inst_N134, conv_inst_N133, conv_inst_N1320, conv_inst_N131,
         conv_inst_N130, conv_inst_N129, conv_inst_N128, conv_inst_N127,
         conv_inst_N126, conv_inst_N125, conv_inst_N124, conv_inst_N79,
         conv_inst_N78, conv_inst_N77, conv_inst_N760, conv_inst_N75,
         conv_inst_N74, conv_inst_N73, conv_inst_N72, conv_inst_N71,
         conv_inst_N70, conv_inst_N69, conv_inst_N68, conv_inst_N67,
         conv_inst_N66, conv_inst_N57, conv_inst_N56, median_sobel_inst_n1495,
         median_sobel_inst_n1494, median_sobel_inst_n1493,
         median_sobel_inst_n1492, median_sobel_inst_n1491,
         median_sobel_inst_n1490, median_sobel_inst_n1489,
         median_sobel_inst_n1488, median_sobel_inst_n1487,
         median_sobel_inst_n1486, median_sobel_inst_n1485,
         median_sobel_inst_n1484, median_sobel_inst_n1483,
         median_sobel_inst_n1482, median_sobel_inst_n1481,
         median_sobel_inst_n1480, median_sobel_inst_n1479,
         median_sobel_inst_n1478, median_sobel_inst_n1477,
         median_sobel_inst_n1476, median_sobel_inst_n1475,
         median_sobel_inst_n1474, median_sobel_inst_n1473,
         median_sobel_inst_n1472, median_sobel_inst_n1471,
         median_sobel_inst_n1470, median_sobel_inst_n1469,
         median_sobel_inst_n1468, median_sobel_inst_n1467,
         median_sobel_inst_n1466, median_sobel_inst_n1465,
         median_sobel_inst_n1464, median_sobel_inst_n1463,
         median_sobel_inst_n1462, median_sobel_inst_n1461,
         median_sobel_inst_n1460, median_sobel_inst_n1459,
         median_sobel_inst_n1458, median_sobel_inst_n1457,
         median_sobel_inst_n1456, median_sobel_inst_n1455,
         median_sobel_inst_n1454, median_sobel_inst_n1453,
         median_sobel_inst_n1452, median_sobel_inst_n1451,
         median_sobel_inst_n1450, median_sobel_inst_n1449,
         median_sobel_inst_n1448, median_sobel_inst_n1447,
         median_sobel_inst_n1446, median_sobel_inst_n1445,
         median_sobel_inst_n1444, median_sobel_inst_n1443,
         median_sobel_inst_n1442, median_sobel_inst_n1441,
         median_sobel_inst_n1440, median_sobel_inst_n1439,
         median_sobel_inst_n1438, median_sobel_inst_n1437,
         median_sobel_inst_n1436, median_sobel_inst_n1435,
         median_sobel_inst_n1434, median_sobel_inst_n1433,
         median_sobel_inst_n1432, median_sobel_inst_n1431,
         median_sobel_inst_n1430, median_sobel_inst_n1429,
         median_sobel_inst_n1428, median_sobel_inst_n1427,
         median_sobel_inst_n1426, median_sobel_inst_n1425,
         median_sobel_inst_n1424, median_sobel_inst_n1423,
         median_sobel_inst_n1422, median_sobel_inst_n1421,
         median_sobel_inst_n1420, median_sobel_inst_n1419,
         median_sobel_inst_n1418, median_sobel_inst_n1417,
         median_sobel_inst_n1416, median_sobel_inst_n1415,
         median_sobel_inst_n1414, median_sobel_inst_n1413,
         median_sobel_inst_n1412, median_sobel_inst_n1411,
         median_sobel_inst_n1410, median_sobel_inst_n1409,
         median_sobel_inst_n1376, median_sobel_inst_n1375,
         median_sobel_inst_n1370, median_sobel_inst_n1369,
         median_sobel_inst_n1367, median_sobel_inst_n1365,
         median_sobel_inst_n1343, median_sobel_inst_n1342,
         median_sobel_inst_n1339, median_sobel_inst_n1336,
         median_sobel_inst_n1286, median_sobel_inst_n1284,
         median_sobel_inst_n1198, median_sobel_inst_n1168,
         median_sobel_inst_n1167, median_sobel_inst_n1166,
         median_sobel_inst_n1165, median_sobel_inst_n1164,
         median_sobel_inst_n1163, median_sobel_inst_n1162,
         median_sobel_inst_n1161, median_sobel_inst_n1160,
         median_sobel_inst_n1155, median_sobel_inst_n1154,
         median_sobel_inst_n1152, median_sobel_inst_n1147,
         median_sobel_inst_n1144, median_sobel_inst_n1109,
         median_sobel_inst_n1106, median_sobel_inst_n1104,
         median_sobel_inst_n1103, median_sobel_inst_n1102,
         median_sobel_inst_n1100, median_sobel_inst_n1098,
         median_sobel_inst_n1095, median_sobel_inst_n1094,
         median_sobel_inst_n1093, median_sobel_inst_n1091,
         median_sobel_inst_n1090, median_sobel_inst_n1086,
         median_sobel_inst_n1083, median_sobel_inst_n1082,
         median_sobel_inst_n1071, median_sobel_inst_n1066,
         median_sobel_inst_n1059, median_sobel_inst_n1058,
         median_sobel_inst_n1053, median_sobel_inst_n1043,
         median_sobel_inst_n1033, median_sobel_inst_n1030,
         median_sobel_inst_n1026, median_sobel_inst_n1022,
         median_sobel_inst_n1021, median_sobel_inst_n1017,
         median_sobel_inst_n1015, median_sobel_inst_n1013,
         median_sobel_inst_n1005, median_sobel_inst_n999,
         median_sobel_inst_n993, median_sobel_inst_n990,
         median_sobel_inst_n985, median_sobel_inst_n976,
         median_sobel_inst_n975, median_sobel_inst_n963,
         median_sobel_inst_n946, median_sobel_inst_n943,
         median_sobel_inst_n941, median_sobel_inst_n940,
         median_sobel_inst_n937, median_sobel_inst_n935,
         median_sobel_inst_n933, median_sobel_inst_n932,
         median_sobel_inst_n931, median_sobel_inst_n929,
         median_sobel_inst_n928, median_sobel_inst_n927,
         median_sobel_inst_n926, median_sobel_inst_n923,
         median_sobel_inst_n922, median_sobel_inst_n921,
         median_sobel_inst_n919, median_sobel_inst_n918,
         median_sobel_inst_n917, median_sobel_inst_n916,
         median_sobel_inst_n914, median_sobel_inst_n912,
         median_sobel_inst_n910, median_sobel_inst_n983,
         median_sobel_inst_n982, median_sobel_inst_n981,
         median_sobel_inst_n979, median_sobel_inst_n978,
         median_sobel_inst_n973, median_sobel_inst_n972,
         median_sobel_inst_n971, median_sobel_inst_n966,
         median_sobel_inst_n965, median_sobel_inst_n964,
         median_sobel_inst_n707, median_sobel_inst_n705,
         median_sobel_inst_n841, median_sobel_inst_n832,
         median_sobel_inst_n814, median_sobel_inst_n780,
         median_sobel_inst_n764, median_sobel_inst_n756,
         median_sobel_inst_n751, median_sobel_inst_n750,
         median_sobel_inst_n745, median_sobel_inst_n733,
         median_sobel_inst_n727, median_sobel_inst_n725,
         median_sobel_inst_n436, median_sobel_inst_n432,
         median_sobel_inst_n425, median_sobel_inst_n147,
         median_sobel_inst_n145, median_sobel_inst_n142,
         median_sobel_inst_n138, median_sobel_inst_n135,
         median_sobel_inst_n127, median_sobel_inst_n125,
         median_sobel_inst_n123, median_sobel_inst_n121,
         median_sobel_inst_n118, median_sobel_inst_n115, median_sobel_inst_n99,
         median_sobel_inst_n94, median_sobel_inst_n89, median_sobel_inst_n86,
         median_sobel_inst_n85, median_sobel_inst_n83, median_sobel_inst_n80,
         median_sobel_inst_n78, median_sobel_inst_n76, median_sobel_inst_n72,
         median_sobel_inst_n66, median_sobel_inst_n65, median_sobel_inst_n60,
         median_sobel_inst_n59, median_sobel_inst_n56, median_sobel_inst_n55,
         median_sobel_inst_n51, median_sobel_inst_n48, median_sobel_inst_n46,
         median_sobel_inst_n43, median_sobel_inst_n42, median_sobel_inst_n39,
         median_sobel_inst_n36, median_sobel_inst_n32, median_sobel_inst_n644,
         median_sobel_inst_n643, median_sobel_inst_n642,
         median_sobel_inst_n640, median_sobel_inst_n638,
         median_sobel_inst_n637, median_sobel_inst_n636,
         median_sobel_inst_n634, median_sobel_inst_n633,
         median_sobel_inst_n632, median_sobel_inst_n629,
         median_sobel_inst_n628, median_sobel_inst_n627,
         median_sobel_inst_n626, median_sobel_inst_n625,
         median_sobel_inst_n624, median_sobel_inst_n621,
         median_sobel_inst_n620, median_sobel_inst_n619,
         median_sobel_inst_n618, median_sobel_inst_n617,
         median_sobel_inst_n614, median_sobel_inst_n612,
         median_sobel_inst_n611, median_sobel_inst_n610,
         median_sobel_inst_n609, median_sobel_inst_n607,
         median_sobel_inst_n606, median_sobel_inst_n605,
         median_sobel_inst_n604, median_sobel_inst_n603,
         median_sobel_inst_n602, median_sobel_inst_n601,
         median_sobel_inst_n600, median_sobel_inst_n599,
         median_sobel_inst_n598, median_sobel_inst_n597,
         median_sobel_inst_n596, median_sobel_inst_n595,
         median_sobel_inst_n594, median_sobel_inst_n593,
         median_sobel_inst_n592, median_sobel_inst_n591,
         median_sobel_inst_n590, median_sobel_inst_n589,
         median_sobel_inst_n588, median_sobel_inst_n587,
         median_sobel_inst_n586, median_sobel_inst_n585,
         median_sobel_inst_n584, median_sobel_inst_n583,
         median_sobel_inst_n581, median_sobel_inst_n580,
         median_sobel_inst_n579, median_sobel_inst_n578,
         median_sobel_inst_n577, median_sobel_inst_n576,
         median_sobel_inst_n575, median_sobel_inst_n574,
         median_sobel_inst_n573, median_sobel_inst_n572,
         median_sobel_inst_n571, median_sobel_inst_n570,
         median_sobel_inst_n569, median_sobel_inst_n568,
         median_sobel_inst_n567, median_sobel_inst_n566,
         median_sobel_inst_n565, median_sobel_inst_n564,
         median_sobel_inst_n563, median_sobel_inst_n562,
         median_sobel_inst_n561, median_sobel_inst_n560,
         median_sobel_inst_n558, median_sobel_inst_n557,
         median_sobel_inst_n555, median_sobel_inst_n554,
         median_sobel_inst_n553, median_sobel_inst_n552,
         median_sobel_inst_n551, median_sobel_inst_n548,
         median_sobel_inst_n544, median_sobel_inst_n543,
         median_sobel_inst_n542, median_sobel_inst_n541,
         median_sobel_inst_n540, median_sobel_inst_n539,
         median_sobel_inst_n538, median_sobel_inst_n535,
         median_sobel_inst_n534, median_sobel_inst_n532,
         median_sobel_inst_n530, median_sobel_inst_n527,
         median_sobel_inst_n526, median_sobel_inst_n524,
         median_sobel_inst_n523, median_sobel_inst_n520,
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
         median_sobel_inst_n449, median_sobel_inst_n443,
         median_sobel_inst_n434, median_sobel_inst_n423,
         median_sobel_inst_n420, median_sobel_inst_n419,
         median_sobel_inst_n413, median_sobel_inst_n399,
         median_sobel_inst_n395, median_sobel_inst_n324,
         median_sobel_inst_n316, median_sobel_inst_n311,
         median_sobel_inst_n310, median_sobel_inst_n299,
         median_sobel_inst_n277, median_sobel_inst_n276,
         median_sobel_inst_n275, median_sobel_inst_n274,
         median_sobel_inst_n273, median_sobel_inst_n272,
         median_sobel_inst_n270, median_sobel_inst_n269,
         median_sobel_inst_n268, median_sobel_inst_n267,
         median_sobel_inst_n266, median_sobel_inst_n264,
         median_sobel_inst_n262, median_sobel_inst_n260,
         median_sobel_inst_n259, median_sobel_inst_n257,
         median_sobel_inst_n256, median_sobel_inst_n255,
         median_sobel_inst_n254, median_sobel_inst_n252,
         median_sobel_inst_n251, median_sobel_inst_n250,
         median_sobel_inst_n249, median_sobel_inst_n248,
         median_sobel_inst_n247, median_sobel_inst_n246,
         median_sobel_inst_n245, median_sobel_inst_n244,
         median_sobel_inst_n243, median_sobel_inst_n242,
         median_sobel_inst_n241, median_sobel_inst_n240,
         median_sobel_inst_n239, median_sobel_inst_n237,
         median_sobel_inst_n235, median_sobel_inst_n234,
         median_sobel_inst_n232, median_sobel_inst_n231,
         median_sobel_inst_n230, median_sobel_inst_n229,
         median_sobel_inst_n228, median_sobel_inst_n227,
         median_sobel_inst_n226, median_sobel_inst_n224,
         median_sobel_inst_n223, median_sobel_inst_n222,
         median_sobel_inst_n221, median_sobel_inst_n220,
         median_sobel_inst_n219, median_sobel_inst_n218,
         median_sobel_inst_n217, median_sobel_inst_n216,
         median_sobel_inst_n215, median_sobel_inst_n214,
         median_sobel_inst_n213, median_sobel_inst_n212,
         median_sobel_inst_n211, median_sobel_inst_n210,
         median_sobel_inst_n208, median_sobel_inst_n207,
         median_sobel_inst_n206, median_sobel_inst_n205,
         median_sobel_inst_n202, median_sobel_inst_n201,
         median_sobel_inst_n200, median_sobel_inst_n199,
         median_sobel_inst_n198, median_sobel_inst_n197,
         median_sobel_inst_n196, median_sobel_inst_n195,
         median_sobel_inst_n194, median_sobel_inst_n193,
         median_sobel_inst_n192, median_sobel_inst_n189,
         median_sobel_inst_n188, median_sobel_inst_n187,
         median_sobel_inst_n186, median_sobel_inst_n185,
         median_sobel_inst_n184, median_sobel_inst_n183,
         median_sobel_inst_n182, median_sobel_inst_n181,
         median_sobel_inst_N114, median_sobel_inst_N113,
         median_sobel_inst_N112, median_sobel_inst_N111,
         median_sobel_inst_N110, median_sobel_inst_N109,
         median_sobel_inst_cnt_4_,
         median_sobel_inst_u_median_filter_submodule_n1502,
         median_sobel_inst_u_median_filter_submodule_n1501,
         median_sobel_inst_u_median_filter_submodule_n1500,
         median_sobel_inst_u_median_filter_submodule_n1499,
         median_sobel_inst_u_median_filter_submodule_n1497,
         median_sobel_inst_u_median_filter_submodule_n1477,
         median_sobel_inst_u_median_filter_submodule_n1470,
         median_sobel_inst_u_median_filter_submodule_n1469,
         median_sobel_inst_u_median_filter_submodule_n1468,
         median_sobel_inst_u_median_filter_submodule_n1465,
         median_sobel_inst_u_median_filter_submodule_n1456,
         median_sobel_inst_u_median_filter_submodule_n1431,
         median_sobel_inst_u_median_filter_submodule_n1200,
         median_sobel_inst_u_median_filter_submodule_n1196,
         median_sobel_inst_u_median_filter_submodule_n1193,
         median_sobel_inst_u_median_filter_submodule_n1159,
         median_sobel_inst_u_median_filter_submodule_n1093,
         median_sobel_inst_u_median_filter_submodule_n1071,
         median_sobel_inst_u_median_filter_submodule_n1068,
         median_sobel_inst_u_median_filter_submodule_n971,
         median_sobel_inst_u_median_filter_submodule_n928,
         median_sobel_inst_u_median_filter_submodule_n927,
         median_sobel_inst_u_median_filter_submodule_n926,
         median_sobel_inst_u_median_filter_submodule_n925,
         median_sobel_inst_u_median_filter_submodule_n924,
         median_sobel_inst_u_median_filter_submodule_n923,
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
         median_sobel_inst_u_median_filter_submodule_n900,
         median_sobel_inst_u_median_filter_submodule_n897,
         median_sobel_inst_u_median_filter_submodule_n892,
         median_sobel_inst_u_median_filter_submodule_n891,
         median_sobel_inst_u_median_filter_submodule_n890,
         median_sobel_inst_u_median_filter_submodule_n888,
         median_sobel_inst_u_median_filter_submodule_n887,
         median_sobel_inst_u_median_filter_submodule_n886,
         median_sobel_inst_u_median_filter_submodule_n885,
         median_sobel_inst_u_median_filter_submodule_n884,
         median_sobel_inst_u_median_filter_submodule_n883,
         median_sobel_inst_u_median_filter_submodule_n882,
         median_sobel_inst_u_median_filter_submodule_n880,
         median_sobel_inst_u_median_filter_submodule_n879,
         median_sobel_inst_u_median_filter_submodule_n878,
         median_sobel_inst_u_median_filter_submodule_n877,
         median_sobel_inst_u_median_filter_submodule_n876,
         median_sobel_inst_u_median_filter_submodule_n874,
         median_sobel_inst_u_median_filter_submodule_n873,
         median_sobel_inst_u_median_filter_submodule_n872,
         median_sobel_inst_u_median_filter_submodule_n871,
         median_sobel_inst_u_median_filter_submodule_n870,
         median_sobel_inst_u_median_filter_submodule_n869,
         median_sobel_inst_u_median_filter_submodule_n867,
         median_sobel_inst_u_median_filter_submodule_n866,
         median_sobel_inst_u_median_filter_submodule_n865,
         median_sobel_inst_u_median_filter_submodule_n864,
         median_sobel_inst_u_median_filter_submodule_n863,
         median_sobel_inst_u_median_filter_submodule_n862,
         median_sobel_inst_u_median_filter_submodule_n861,
         median_sobel_inst_u_median_filter_submodule_n860,
         median_sobel_inst_u_median_filter_submodule_n859,
         median_sobel_inst_u_median_filter_submodule_n858,
         median_sobel_inst_u_median_filter_submodule_n857,
         median_sobel_inst_u_median_filter_submodule_n856,
         median_sobel_inst_u_median_filter_submodule_n855,
         median_sobel_inst_u_median_filter_submodule_n853,
         median_sobel_inst_u_median_filter_submodule_n852,
         median_sobel_inst_u_median_filter_submodule_n851,
         median_sobel_inst_u_median_filter_submodule_n850,
         median_sobel_inst_u_median_filter_submodule_n849,
         median_sobel_inst_u_median_filter_submodule_n833,
         median_sobel_inst_u_median_filter_submodule_net102875,
         median_sobel_inst_u_median_filter_submodule_net100057,
         median_sobel_inst_u_median_filter_submodule_net99899,
         median_sobel_inst_u_median_filter_submodule_net99809,
         median_sobel_inst_u_median_filter_submodule_net97925,
         median_sobel_inst_u_median_filter_submodule_net97853,
         median_sobel_inst_u_median_filter_submodule_net97710,
         median_sobel_inst_u_median_filter_submodule_net97547,
         median_sobel_inst_u_median_filter_submodule_net97020,
         median_sobel_inst_u_median_filter_submodule_net96837,
         median_sobel_inst_u_median_filter_submodule_net96825,
         median_sobel_inst_u_median_filter_submodule_net96795,
         median_sobel_inst_u_median_filter_submodule_net96631,
         median_sobel_inst_u_median_filter_submodule_net96588,
         median_sobel_inst_u_median_filter_submodule_net96572,
         median_sobel_inst_u_median_filter_submodule_net96458,
         median_sobel_inst_u_median_filter_submodule_net96393,
         median_sobel_inst_u_median_filter_submodule_net95319,
         median_sobel_inst_u_median_filter_submodule_net94922,
         median_sobel_inst_u_median_filter_submodule_net94827,
         median_sobel_inst_u_median_filter_submodule_net94786,
         median_sobel_inst_u_median_filter_submodule_net94185,
         median_sobel_inst_u_median_filter_submodule_net94186,
         median_sobel_inst_u_median_filter_submodule_net94165,
         median_sobel_inst_u_median_filter_submodule_net84882,
         median_sobel_inst_u_median_filter_submodule_n755,
         median_sobel_inst_u_median_filter_submodule_n720,
         median_sobel_inst_u_median_filter_submodule_n706,
         median_sobel_inst_u_median_filter_submodule_n831,
         median_sobel_inst_u_median_filter_submodule_n830,
         median_sobel_inst_u_median_filter_submodule_n829,
         median_sobel_inst_u_median_filter_submodule_n828,
         median_sobel_inst_u_median_filter_submodule_n827,
         median_sobel_inst_u_median_filter_submodule_n826,
         median_sobel_inst_u_median_filter_submodule_n825,
         median_sobel_inst_u_median_filter_submodule_n824,
         median_sobel_inst_u_median_filter_submodule_n823,
         median_sobel_inst_u_median_filter_submodule_n822,
         median_sobel_inst_u_median_filter_submodule_n821,
         median_sobel_inst_u_median_filter_submodule_n820,
         median_sobel_inst_u_median_filter_submodule_n819,
         median_sobel_inst_u_median_filter_submodule_n818,
         median_sobel_inst_u_median_filter_submodule_n817,
         median_sobel_inst_u_median_filter_submodule_n810,
         median_sobel_inst_u_median_filter_submodule_n792,
         median_sobel_inst_u_median_filter_submodule_n790,
         median_sobel_inst_u_median_filter_submodule_n789,
         median_sobel_inst_u_median_filter_submodule_n785,
         median_sobel_inst_u_median_filter_submodule_n782,
         median_sobel_inst_u_median_filter_submodule_n780,
         median_sobel_inst_u_median_filter_submodule_n773,
         median_sobel_inst_u_median_filter_submodule_n771,
         median_sobel_inst_u_median_filter_submodule_n770,
         median_sobel_inst_u_median_filter_submodule_n769,
         median_sobel_inst_u_median_filter_submodule_n768,
         median_sobel_inst_u_median_filter_submodule_n767,
         median_sobel_inst_u_median_filter_submodule_n766,
         median_sobel_inst_u_median_filter_submodule_n765,
         median_sobel_inst_u_median_filter_submodule_n764,
         median_sobel_inst_u_median_filter_submodule_n763,
         median_sobel_inst_u_median_filter_submodule_n762,
         median_sobel_inst_u_median_filter_submodule_n761,
         median_sobel_inst_u_median_filter_submodule_n760,
         median_sobel_inst_u_median_filter_submodule_n759,
         median_sobel_inst_u_median_filter_submodule_n758,
         median_sobel_inst_u_median_filter_submodule_n757,
         median_sobel_inst_u_median_filter_submodule_n641,
         median_sobel_inst_u_median_filter_submodule_n361,
         median_sobel_inst_u_median_filter_submodule_n279,
         median_sobel_inst_u_median_filter_submodule_n277,
         median_sobel_inst_u_median_filter_submodule_n276,
         median_sobel_inst_u_median_filter_submodule_n274,
         median_sobel_inst_u_median_filter_submodule_n273,
         median_sobel_inst_u_median_filter_submodule_n271,
         median_sobel_inst_u_median_filter_submodule_n268,
         median_sobel_inst_u_median_filter_submodule_n263,
         median_sobel_inst_u_median_filter_submodule_n260,
         median_sobel_inst_u_median_filter_submodule_n259,
         median_sobel_inst_u_median_filter_submodule_n257,
         median_sobel_inst_u_median_filter_submodule_n236,
         median_sobel_inst_u_median_filter_submodule_n235,
         median_sobel_inst_u_median_filter_submodule_n233,
         median_sobel_inst_u_median_filter_submodule_n231,
         median_sobel_inst_u_median_filter_submodule_n229,
         median_sobel_inst_u_median_filter_submodule_n228,
         median_sobel_inst_u_median_filter_submodule_n224,
         median_sobel_inst_u_median_filter_submodule_n222,
         median_sobel_inst_u_median_filter_submodule_n214,
         median_sobel_inst_u_median_filter_submodule_n209,
         median_sobel_inst_u_median_filter_submodule_n207,
         median_sobel_inst_u_median_filter_submodule_n205,
         median_sobel_inst_u_median_filter_submodule_n189,
         median_sobel_inst_u_median_filter_submodule_n174,
         median_sobel_inst_u_median_filter_submodule_n167,
         median_sobel_inst_u_median_filter_submodule_n158,
         median_sobel_inst_u_median_filter_submodule_n156,
         median_sobel_inst_u_median_filter_submodule_n143,
         median_sobel_inst_u_median_filter_submodule_n136,
         median_sobel_inst_u_median_filter_submodule_n128,
         median_sobel_inst_u_median_filter_submodule_n118,
         median_sobel_inst_u_median_filter_submodule_n117,
         median_sobel_inst_u_median_filter_submodule_n108,
         median_sobel_inst_u_median_filter_submodule_n96,
         median_sobel_inst_u_median_filter_submodule_net53043,
         median_sobel_inst_u_median_filter_submodule_net52893,
         median_sobel_inst_u_median_filter_submodule_net52814,
         median_sobel_inst_u_median_filter_submodule_net52783,
         median_sobel_inst_u_median_filter_submodule_net52768,
         median_sobel_inst_u_median_filter_submodule_net52732,
         median_sobel_inst_u_median_filter_submodule_net47872,
         median_sobel_inst_u_median_filter_submodule_net20525,
         median_sobel_inst_u_median_filter_submodule_net20521,
         median_sobel_inst_u_median_filter_submodule_net19699,
         median_sobel_inst_u_median_filter_submodule_n161,
         median_sobel_inst_u_median_filter_submodule_a5_r_3_,
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
         median_sobel_inst_u_sobel_gradient_submodule_n657,
         median_sobel_inst_u_sobel_gradient_submodule_n577,
         median_sobel_inst_u_sobel_gradient_submodule_n561,
         median_sobel_inst_u_sobel_gradient_submodule_n545,
         median_sobel_inst_u_sobel_gradient_submodule_n524,
         median_sobel_inst_u_sobel_gradient_submodule_n523,
         median_sobel_inst_u_sobel_gradient_submodule_n507,
         median_sobel_inst_u_sobel_gradient_submodule_n455,
         median_sobel_inst_u_sobel_gradient_submodule_n435,
         median_sobel_inst_u_sobel_gradient_submodule_n434,
         median_sobel_inst_u_sobel_gradient_submodule_n433,
         median_sobel_inst_u_sobel_gradient_submodule_n432,
         median_sobel_inst_u_sobel_gradient_submodule_n430,
         median_sobel_inst_u_sobel_gradient_submodule_n428,
         median_sobel_inst_u_sobel_gradient_submodule_n425,
         median_sobel_inst_u_sobel_gradient_submodule_n424,
         median_sobel_inst_u_sobel_gradient_submodule_n423,
         median_sobel_inst_u_sobel_gradient_submodule_n421,
         median_sobel_inst_u_sobel_gradient_submodule_n419,
         median_sobel_inst_u_sobel_gradient_submodule_n418,
         median_sobel_inst_u_sobel_gradient_submodule_n417,
         median_sobel_inst_u_sobel_gradient_submodule_n415,
         median_sobel_inst_u_sobel_gradient_submodule_n413,
         median_sobel_inst_u_sobel_gradient_submodule_n412,
         median_sobel_inst_u_sobel_gradient_submodule_n409,
         median_sobel_inst_u_sobel_gradient_submodule_n404,
         median_sobel_inst_u_sobel_gradient_submodule_n402,
         median_sobel_inst_u_sobel_gradient_submodule_n400,
         median_sobel_inst_u_sobel_gradient_submodule_n398,
         median_sobel_inst_u_sobel_gradient_submodule_n396,
         median_sobel_inst_u_sobel_gradient_submodule_n392,
         median_sobel_inst_u_sobel_gradient_submodule_n388,
         median_sobel_inst_u_sobel_gradient_submodule_n385,
         median_sobel_inst_u_sobel_gradient_submodule_n384,
         median_sobel_inst_u_sobel_gradient_submodule_n383,
         median_sobel_inst_u_sobel_gradient_submodule_n377,
         median_sobel_inst_u_sobel_gradient_submodule_n359,
         median_sobel_inst_u_sobel_gradient_submodule_n356,
         median_sobel_inst_u_sobel_gradient_submodule_n353,
         median_sobel_inst_u_sobel_gradient_submodule_n352,
         median_sobel_inst_u_sobel_gradient_submodule_n340,
         median_sobel_inst_u_sobel_gradient_submodule_net96945,
         median_sobel_inst_u_sobel_gradient_submodule_net94800,
         median_sobel_inst_u_sobel_gradient_submodule_n662,
         median_sobel_inst_u_sobel_gradient_submodule_n661,
         median_sobel_inst_u_sobel_gradient_submodule_n659,
         median_sobel_inst_u_sobel_gradient_submodule_n656,
         median_sobel_inst_u_sobel_gradient_submodule_n655,
         median_sobel_inst_u_sobel_gradient_submodule_n654,
         median_sobel_inst_u_sobel_gradient_submodule_n650,
         median_sobel_inst_u_sobel_gradient_submodule_n649,
         median_sobel_inst_u_sobel_gradient_submodule_n174,
         median_sobel_inst_u_sobel_gradient_submodule_n109,
         median_sobel_inst_u_sobel_gradient_submodule_n108,
         median_sobel_inst_u_sobel_gradient_submodule_n107,
         median_sobel_inst_u_sobel_gradient_submodule_n101,
         median_sobel_inst_u_sobel_gradient_submodule_n97,
         median_sobel_inst_u_sobel_gradient_submodule_n96,
         median_sobel_inst_u_sobel_gradient_submodule_n94,
         median_sobel_inst_u_sobel_gradient_submodule_n89,
         median_sobel_inst_u_sobel_gradient_submodule_n86,
         median_sobel_inst_u_sobel_gradient_submodule_n85,
         median_sobel_inst_u_sobel_gradient_submodule_n84,
         median_sobel_inst_u_sobel_gradient_submodule_n79,
         median_sobel_inst_u_sobel_gradient_submodule_n78,
         median_sobel_inst_u_sobel_gradient_submodule_n75,
         median_sobel_inst_u_sobel_gradient_submodule_n74,
         median_sobel_inst_u_sobel_gradient_submodule_n72,
         median_sobel_inst_u_sobel_gradient_submodule_n71,
         median_sobel_inst_u_sobel_gradient_submodule_n69,
         median_sobel_inst_u_sobel_gradient_submodule_n66,
         median_sobel_inst_u_sobel_gradient_submodule_n63,
         median_sobel_inst_u_sobel_gradient_submodule_n62,
         median_sobel_inst_u_sobel_gradient_submodule_n61,
         median_sobel_inst_u_sobel_gradient_submodule_n60,
         median_sobel_inst_u_sobel_gradient_submodule_n56,
         median_sobel_inst_u_sobel_gradient_submodule_n52,
         median_sobel_inst_u_sobel_gradient_submodule_n49,
         median_sobel_inst_u_sobel_gradient_submodule_n44,
         median_sobel_inst_u_sobel_gradient_submodule_n43,
         median_sobel_inst_u_sobel_gradient_submodule_n40,
         median_sobel_inst_u_sobel_gradient_submodule_n37,
         median_sobel_inst_u_sobel_gradient_submodule_n35,
         median_sobel_inst_u_sobel_gradient_submodule_n33,
         median_sobel_inst_u_sobel_gradient_submodule_n30,
         median_sobel_inst_u_sobel_gradient_submodule_n29,
         median_sobel_inst_u_sobel_gradient_submodule_n28,
         median_sobel_inst_u_sobel_gradient_submodule_n27,
         median_sobel_inst_u_sobel_gradient_submodule_n26,
         median_sobel_inst_u_sobel_gradient_submodule_n22,
         median_sobel_inst_u_sobel_gradient_submodule_n21,
         median_sobel_inst_u_sobel_gradient_submodule_n7,
         median_sobel_inst_u_sobel_gradient_submodule_n4,
         median_sobel_inst_u_sobel_gradient_submodule_n2,
         median_sobel_inst_u_sobel_gradient_submodule_N80,
         median_sobel_inst_u_sobel_gradient_submodule_n65,
         median_sobel_inst_u_sobel_gradient_submodule_n64,
         median_sobel_inst_u_sobel_gradient_submodule_N177,
         median_sobel_inst_u_sobel_gradient_submodule_N176,
         median_sobel_inst_u_sobel_gradient_submodule_N175,
         median_sobel_inst_u_sobel_gradient_submodule_N1740,
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
         median_sobel_inst_u_sobel_gradient_submodule_N119,
         median_sobel_inst_u_sobel_gradient_submodule_N117,
         median_sobel_inst_u_sobel_gradient_submodule_N116,
         median_sobel_inst_u_sobel_gradient_submodule_N115,
         median_sobel_inst_u_sobel_gradient_submodule_N114,
         median_sobel_inst_u_sobel_gradient_submodule_N113,
         median_sobel_inst_u_sobel_gradient_submodule_N112,
         median_sobel_inst_u_sobel_gradient_submodule_N111,
         median_sobel_inst_u_sobel_gradient_submodule_N110,
         median_sobel_inst_u_sobel_gradient_submodule_N1090,
         median_sobel_inst_u_sobel_gradient_submodule_N1080,
         median_sobel_inst_u_sobel_gradient_submodule_N1070,
         median_sobel_inst_u_sobel_gradient_submodule_N106,
         median_sobel_inst_u_sobel_gradient_submodule_N105,
         median_sobel_inst_u_sobel_gradient_submodule_N104,
         median_sobel_inst_u_sobel_gradient_submodule_N103,
         median_sobel_inst_u_sobel_gradient_submodule_N102,
         median_sobel_inst_u_sobel_gradient_submodule_N1010,
         median_sobel_inst_u_sobel_gradient_submodule_N100,
         median_sobel_inst_u_sobel_gradient_submodule_N99,
         median_sobel_inst_u_sobel_gradient_submodule_N98,
         median_sobel_inst_u_sobel_gradient_submodule_N750,
         median_sobel_inst_u_sobel_gradient_submodule_N740,
         median_sobel_inst_u_sobel_gradient_submodule_N73,
         median_sobel_inst_u_sobel_gradient_submodule_N720,
         median_sobel_inst_u_sobel_gradient_submodule_N710,
         median_sobel_inst_u_sobel_gradient_submodule_N70,
         median_sobel_inst_u_sobel_gradient_submodule_N690,
         median_sobel_inst_u_sobel_gradient_submodule_N68,
         median_sobel_inst_u_sobel_gradient_submodule_N67,
         median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_,
         median_sobel_inst_u_sobel_gradient_submodule_N440,
         median_sobel_inst_u_sobel_gradient_submodule_N431,
         median_sobel_inst_u_sobel_gradient_submodule_N42,
         median_sobel_inst_u_sobel_gradient_submodule_N41,
         median_sobel_inst_u_sobel_gradient_submodule_N401,
         median_sobel_inst_u_sobel_gradient_submodule_N39,
         median_sobel_inst_u_sobel_gradient_submodule_N38,
         median_sobel_inst_u_sobel_gradient_submodule_N370,
         median_sobel_inst_u_sobel_gradient_submodule_N36,
         median_sobel_inst_u_sobel_gradient_submodule_N34,
         median_sobel_inst_u_sobel_gradient_submodule_N330,
         median_sobel_inst_u_sobel_gradient_submodule_N32,
         median_sobel_inst_u_sobel_gradient_submodule_N31,
         median_sobel_inst_u_sobel_gradient_submodule_N300,
         median_sobel_inst_u_sobel_gradient_submodule_N290,
         median_sobel_inst_u_sobel_gradient_submodule_N280,
         median_sobel_inst_u_sobel_gradient_submodule_N270,
         median_sobel_inst_u_sobel_gradient_submodule_N260,
         median_sobel_inst_u_sobel_gradient_submodule_N24,
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
         median_sobel_inst_u_sobel_gradient_submodule_N8,
         median_sobel_inst_u_sobel_gradient_submodule_N76,
         median_sobel_inst_u_sobel_gradient_submodule_N6,
         median_sobel_inst_u_sober_compare_submodule_n345,
         median_sobel_inst_u_sober_compare_submodule_n343,
         median_sobel_inst_u_sober_compare_submodule_n341,
         median_sobel_inst_u_sober_compare_submodule_n340,
         median_sobel_inst_u_sober_compare_submodule_n338,
         median_sobel_inst_u_sober_compare_submodule_n332,
         median_sobel_inst_u_sober_compare_submodule_n329,
         median_sobel_inst_u_sober_compare_submodule_n326,
         median_sobel_inst_u_sober_compare_submodule_n325,
         median_sobel_inst_u_sober_compare_submodule_n324,
         median_sobel_inst_u_sober_compare_submodule_n323,
         median_sobel_inst_u_sober_compare_submodule_n322,
         median_sobel_inst_u_sober_compare_submodule_n321,
         median_sobel_inst_u_sober_compare_submodule_n320,
         median_sobel_inst_u_sober_compare_submodule_n319,
         median_sobel_inst_u_sober_compare_submodule_n318,
         median_sobel_inst_u_sober_compare_submodule_n315,
         median_sobel_inst_u_sober_compare_submodule_n314,
         median_sobel_inst_u_sober_compare_submodule_n313,
         median_sobel_inst_u_sober_compare_submodule_n312,
         median_sobel_inst_u_sober_compare_submodule_n311,
         median_sobel_inst_u_sober_compare_submodule_n310,
         median_sobel_inst_u_sober_compare_submodule_n309,
         median_sobel_inst_u_sober_compare_submodule_n308,
         median_sobel_inst_u_sober_compare_submodule_n306,
         median_sobel_inst_u_sober_compare_submodule_n305,
         median_sobel_inst_u_sober_compare_submodule_n304,
         median_sobel_inst_u_sober_compare_submodule_n303,
         median_sobel_inst_u_sober_compare_submodule_n302,
         median_sobel_inst_u_sober_compare_submodule_n301,
         median_sobel_inst_u_sober_compare_submodule_n300,
         median_sobel_inst_u_sober_compare_submodule_net109308,
         median_sobel_inst_u_sober_compare_submodule_net105227,
         median_sobel_inst_u_sober_compare_submodule_net105122,
         median_sobel_inst_u_sober_compare_submodule_net102583,
         median_sobel_inst_u_sober_compare_submodule_net101609,
         median_sobel_inst_u_sober_compare_submodule_net99802,
         median_sobel_inst_u_sober_compare_submodule_net99662,
         median_sobel_inst_u_sober_compare_submodule_net98113,
         median_sobel_inst_u_sober_compare_submodule_net98026,
         median_sobel_inst_u_sober_compare_submodule_net97821,
         median_sobel_inst_u_sober_compare_submodule_net96922,
         median_sobel_inst_u_sober_compare_submodule_net96764,
         median_sobel_inst_u_sober_compare_submodule_net95270,
         median_sobel_inst_u_sober_compare_submodule_n297,
         median_sobel_inst_u_sober_compare_submodule_n296,
         median_sobel_inst_u_sober_compare_submodule_n295,
         median_sobel_inst_u_sober_compare_submodule_n294,
         median_sobel_inst_u_sober_compare_submodule_n293,
         median_sobel_inst_u_sober_compare_submodule_n291,
         median_sobel_inst_u_sober_compare_submodule_n287,
         median_sobel_inst_u_sober_compare_submodule_n283,
         median_sobel_inst_u_sober_compare_submodule_n279,
         median_sobel_inst_u_sober_compare_submodule_n278,
         median_sobel_inst_u_sober_compare_submodule_n275,
         median_sobel_inst_u_sober_compare_submodule_n250,
         median_sobel_inst_u_sober_compare_submodule_n199,
         median_sobel_inst_u_sober_compare_submodule_n178,
         median_sobel_inst_u_sober_compare_submodule_n37,
         median_sobel_inst_u_sober_compare_submodule_n34,
         median_sobel_inst_u_sober_compare_submodule_n30,
         median_sobel_inst_u_sober_compare_submodule_n22,
         median_sobel_inst_u_sober_compare_submodule_n17,
         median_sobel_inst_u_sober_compare_submodule_n14,
         median_sobel_inst_u_sober_compare_submodule_n11,
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
         median_sobel_inst_u_sober_compare_submodule_n74,
         median_sobel_inst_u_sober_compare_submodule_n73,
         median_sobel_inst_u_sober_compare_submodule_n71,
         median_sobel_inst_u_sober_compare_submodule_n70,
         median_sobel_inst_u_sober_compare_submodule_n68,
         median_sobel_inst_u_sober_compare_submodule_n67,
         median_sobel_inst_u_sober_compare_submodule_n66,
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
         median_sobel_inst_u_sober_compare_submodule_temp_a_r_9_,
         median_sobel_inst_u_sober_compare_submodule_N307,
         median_sobel_inst_u_sober_compare_submodule_N29, conv_inst_N32,
         conv_inst_N2210, n3545, n3551, n3554, n3555, n3556, n3557, n3558,
         n3559, n3567, n3568, n3572, n3573, n3574, n3575, n3576, n3577, n3578,
         n3579, n3580, n3581, n3582, n3583, n3584, n3585, n3586, n3587, n3588,
         n3589, n3590, n3591, n3592, n3593, n3594, n3595, n3596, n3597, n3598,
         n3599, n3600, n3601, n3602, n3603, n3604, n3605, n3606, n3607, n3609,
         n3610, n3611, n3612, n3613, n3614, n3615, n3616, n3617, n3618, n3619,
         n3620, n3621, n3622, n3623, n3624, n3625, n3626, n3627, n3628, n3629,
         n3630, n3631, n3632, n3633, n3634, n3635, n3636, n3637, n3638, n3639,
         n3640, n3641, n3642, n3643, n3644, n3645, n3646, n3647, n3648, n3649,
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
         n3760, n3761, n3762, n3763, n3764, n3765, n3766, n3767, n3768, n3769,
         n3770, n3771, n3772, n3773, n3774, n3775, n3776, n3777, n3778, n3779,
         n3780, n3781, n3782, n3783, n3784, n3785, n3786, n3787, n3788, n3789,
         n3790, n3791, n3792, n3793, n3794, n3795, n3796, n3797, n3798, n3799,
         n3800, n3801, n3802, n3803, n3804, n3805, n3806, n3807, n3808, n3809,
         n3810, n3811, n3812, n3813, n3814, n3815, n3816, n3817, n3818, n3819,
         n3820, n3821, n3822, n3823, n3824, n3825, n3826, n3827, n3828, n3829,
         n3830, n3831, n3832, n3833, n3834, n3835, n3836, n3837, n3838, n3839,
         n3840, n3841, n3842, n3843, n3844, n3845, n3846, n3847, n3848, n3849,
         n3850, n3851, n3852, n3853, n3854, n3855, n3856, n3857, n3858, n3859,
         n3860, n3861, n3862, n3863, n3864, n3865, n3866, n3867, n3868, n3869,
         n3870, n3871, n3872, n3873, n3874, n3875, n3876, n3877, n3878, n3879,
         n3880, n3881, n3882, n3883, n3884, n3885, n3886, n3887, n3888, n3889,
         n3890, n3891, n3892, n3893, n3894, n3895, n3896, n3897, n3898, n3899,
         n3900, n3901, n3902, n3903, n3904, n3905, n3906, n3907, n3908, n3909,
         n3910, n3911, n3912, n3913, n3914, n3915, n3916, n3917, n3918, n3919,
         n3920, n3921, n3922, n3923, n3924, n3925, n3926, n3927, n3928, n3929,
         n3930, n3931, n3932, n3933, n3934, n3935, n3936, n3937, n3938, n3939,
         n3940, n3941, n3942, n3943, n3944, n3945, n3946, n3947, n3948, n3949,
         n3950, n3951, n3952, n3953, n3954, n3955, n3956, n3957, n3958, n3959,
         n3960, n3961, n3962, n3963, n3964, n3965, n3966, n3967, n3968, n3969,
         n3970, n3971, n3972, n3973, n3974, n3975, n3976, n3977, n3978, n3979,
         n3980, n3981, n3982, n3983, n3984, n3985, n3986, n3987, n3988, n3989,
         n3990, n3991, n3992, n3993, n3994, n3995, n3996, n3997, n3998, n3999,
         n4000, n4001, n4002, n4003, n4004, n4005, n4006, n4007, n4008, n4009,
         n4010, n4011, n4012, n4013, n4014, n4015, n4016, n4017, n4018, n4019,
         n4020, n4021, n4022, n4023, n4024, n4025, n4026, n4027, n4028, n4029,
         n4030, n4031, n4032, n4033, n4034, n4035, n4036, n4037, n4038, n4039,
         n4040, n4041, n4042, n4043, n4044, n4045, n4046, n4047, n4048, n4049,
         n4050, n4051, n4052, n4053, n4054, n4055, n4056, n4057, n4058, n4059,
         n4060, n4061, n4062, n4063, n4064, n4065, n4066, n4067, n4068, n4069,
         n4070, n4071, n4072, n4073, n4074, n4075, n4076, n4077, n4078, n4079,
         n4080, n4081, n4082, n4083, n4084, n4085, n4086, n4087, n4088, n4089,
         n4090, n4091, n4092, n4093, n4094, n4095, n4096, n4097, n4098, n4099,
         n4100, n4101, n4102, n4103, n4104, n4105, n4106, n4107, n4108, n4109,
         n4110, n4111, n4112, n4113, n4114, n4115, n4116, n4117, n4118, n4119,
         n4120, n4121, n4122, n4123, n4124, n4125, n4126, n4127, n4128, n4129,
         n4130, n4131, n4132, n4133, n4134, n4135, n4136, n4137, n4138, n4139,
         n4140, n4141, n4142, n4143, n4144, n4145, n4146, n4147, n4148, n4149,
         n4150, n4151, n4152, n4153, n4154, n4155, n4156, n4157, n4158, n4159,
         n4160, n4161, n4162, n4163, n4164, n4165, n4166, n4167, n4168, n4169,
         n4170, n4171, n4172, n4173, n4174, n4175, n4176, n4177, n4178, n4179,
         n4180, n4181, n4182, n4183, n4184, n4185, n4186, n4187, n4188, n4189,
         n4190, n4191, n4192, n4193, n4194, n4195, n4196, n4197, n4198, n4199,
         n4200, n4201, n4202, n4203, n4204, n4205, n4206, n4207, n4208, n4209,
         n4210, n4211, n4212, n4213, n4214, n4215, n4216, n4217, n4218, n4219,
         n4220, n4221, n4222, n4223, n4224, n4225, n4226, n4227, n4228, n4229,
         n4230, n4231, n4232, n4233, n4234, n4235, n4236, n4237, n4238, n4239,
         n4240, n4241, n4242, n4243, n4244, n4245, n4246, n4247, n4248, n4249,
         n4250, n4251, n4252, n4253, n4254, n4255, n4256, n4257, n4258, n4259,
         n4260, n4261, n4262, n4263, n4264, n4265, n4266, n4267, n4268, n4269,
         n4270, n4271, n4272, n4273, n4274, n4275, n4276, n4277, n4278, n4279,
         n4280, n4281, n4282, n4283, n4284, n4285, n4286, n4287, n4288, n4289,
         n4290, n4291, n4292, n4293, n4294, n4295, n4296, n4297, n4298, n4300,
         n4301, n4302, n4303, n4304, n4305, n4306, n4307, n4308, n4309, n4310,
         n4311, n4312, n4313, n4314, n4315, n4316, n4317, n4318, n4319, n4320,
         n4321, n4322, n4323, n4324, n4325, n4326, n4327, n4328, n4329, n4330,
         n4331, n4332, n4333, n4334, n4335, n4336, n4337, n4338, n4339, n4340,
         n4341, n4342, n4343, n4344, n4345, n4346, n4347, n4348, n4349, n4350,
         n4351, n4352, n4353, n4354, n4355, n4356, n4357, n4358, n4359, n4360,
         n4361, n4362, n4363, n4364, n4365, n4366, n4367, n4368, n4369, n4370,
         n4371, n4372, n4373, n4374, n4375, n4376, n4377, n4378, n4379, n4380,
         n4381, n4382, n4383, n4384, n4385, n4386, n4387, n4388, n4389, n4390,
         n4391, n4392, n4393, n4394, n4395, n4396, n4397, n4400, n4401, n4402,
         n4403, n4404, n4405, n4406, n4407, n4408, n4409, n4410, n4411, n4412,
         n4413, n4414, n4415, n4416, n4417, n4418, n4419, n4420, n4421, n4422,
         n4423, n4424, n4425, n4426, n4427, n4428, n4429, n4430, n4431, n4432,
         n4433, n4434, n4435, n4436, n4437, n4438, n4439, n4440, n4441, n4442,
         n4443, n4444, n4445, n4446, n4447, n4448, n4449, n4450, n4451, n4452,
         n4453, n4454, n4455, n4456, n4457, n4458, n4459, n4460, n4461, n4462,
         n4463, n4464, n4465, n4466, n4467, n4468, n4469, n4470, n4471, n4472,
         n4473, n4474, n4475, n4476, n4477, n4478, n4479, n4480, n4481, n4482,
         n4483, n4484, n4485, n4486, n4487, n4488, n4489, n4490, n4491, n4492,
         n4493, n4494, n4495, n4496, n4497, n4498, n4499, n4500, n4501, n4502,
         n4503, n4504, n4505, n4506, n4507, n4508, n4509, n4510, n4511, n4512,
         n4513, n4514, n4515, n4516, n4517, n4518, n4519, n4520, n4521, n4522,
         n4523, n4524, n4525, n4526, n4527, n4528, n4529, n4530, n4531, n4532,
         n4533, n4534, n4535, n4536, n4537, n4538, n4539, n4540, n4541, n4542,
         n4543, n4544, n4545, n4546, n4547, n4548, n4549, n4550, n4551, n4552,
         n4553, n4554, n4555, n4556, n4557, n4558, n4559, n4560, n4561, n4562,
         n4563, n4564, n4565, n4566, n4567, n4568, n4569, n4570, n4571, n4572,
         n4573, n4574, n4575, n4576, n4577, n4578, n4579, n4580, n4581, n4582,
         n4583, n4584, n4585, n4586, n4587, n4588, n4589, n4590, n4591, n4592,
         n4593, n4594, n4595, n4596, n4597, n4598, n4599, n4600, n4601, n4602,
         n4603, n4604, n4605, n4606, n4607, n4608, n4609, n4610, n4611, n4612,
         n4613, n4614, n4615, n4616, n4617, n4618, n4619, n4620, n4621, n4622,
         n4623, n4624, n4625, n4626, n4627, n4628, n4629, n4630, n4631, n4632,
         n4633, n4634, n4635, n4636, n4637, n4638, n4639, n4640, n4641, n4642,
         n4643, n4644, n4645, n4646, n4647, n4648, n4649, n4650, n4651, n4652,
         n4653, n4654, n4655, n4656, n4657, n4658, n4659, n4660, n4661, n4662,
         n4663, n4664, n4665, n4666, n4667, n4668, n4669, n4670, n4671, n4672,
         n4673, n4674, n4675, n4676, n4677, n4678, n4679, n4680, n4681, n4682,
         n4683, n4684, n4685, n4686, n4687, n4688, n4689, n4690, n4691, n4692,
         n4693, n4694, n4695, n4696, n4697, n4698, n4699, n4700, n4701, n4702,
         n4703, n4704, n4705, n4706, n4707, n4708, n4709, n4710, n4711, n4712,
         n4713, n4714, n4715, n4716, n4717, n4718, n4719, n4720, n4721, n4722,
         n4723, n4724, n4725, n4726, n4727, n4728, n4729, n4730, n4731, n4732,
         n4733, n4734, n4735, n4736, n4737, n4738, n4739, n4740, n4741, n4742,
         n4743, n4744, n4745, n4746, n4747, n4748, n4749, n4750, n4751, n4752,
         n4753, n4754, n4755, n4756, n4757, n4758, n4759, n4760, n4761, n4762,
         n4763, n4764, n4765, n4766, n4767, n4768, n4769, n4770, n4771, n4772,
         n4773, n4774, n4775, n4776, n4777, n4778, n4779, n4780, n4781, n4782,
         n4783, n4784, n4785, n4786, n4787, n4788, n4789, n4790, n4791, n4792,
         n4793, n4794, n4795, n4796, n4797, n4798, n4799, n4800, n4801, n4802,
         n4803, n4804, n4805, n4806, n4807, n4808, n4809, n4810, n4811, n4812,
         n4813, n4814, n4815, n4816, n4817, n4818, n4819, n4820, n4821, n4822,
         n4823, n4824, n4825, n4826, n4827, n4828, n4829, n4830, n4831, n4832,
         n4833, n4834, n4835, n4836, n4837, n4838, n4839, n4840, n4841, n4842,
         n4843, n4844, n4845, n4846, n4847, n4848, n4849, n4850, n4851, n4852,
         n4853, n4854, n4855, n4856, n4857, n4858, n4859, n4860, n4861, n4862,
         n4863, n4864, n4865, n4866, n4867, n4868, n4869, n4870, n4871, n4872,
         n4873, n4874, n4875, n4876, n4877, n4878, n4879, n4880, n4881, n4882,
         n4883, n4884, n4885, n4886, n4887, n4888, n4889, n4890, n4891, n4892,
         n4893, n4894, n4895, n4896, n4897, n4898, n4899, n4900, n4901, n4902,
         n4903, n4904, n4905, n4906, n4907, n4908, n4909, n4910, n4911, n4912,
         n4913, n4914, n4915, n4916, n4917, n4918, n4919, n4920, n4921, n4922,
         n4923, n4924, n4925, n4926, n4927, n4928, n4929, n4930, n4931, n4932,
         n4933, n4934, n4935, n4936, n4937, n4938, n4939, n4940, n4941, n4942,
         n4943, n4944, n4945, n4946, n4947, n4948, n4949, n4950, n4951, n4952,
         n4953, n4954, n4955, n4956, n4957, n4958, n4959, n4960, n4961, n4962,
         n4963, n4964, n4965, n4966, n4967, n4968, n4969, n4970, n4971, n4972,
         n4973, n4974, n4975, n4976, n4977, n4978, n4979, n4980, n4981, n4982,
         n4983, n4984, n4985, n4986, n4987, n4988, n4989, n4990, n4991, n4992,
         n4993, n4994, n4995, n4996, n4997, n4998, n4999, n5000, n5001, n5002,
         n5003, n5004, n5005, n5006, n5007, n5008, n5009, n5010, n5011, n5012,
         n5013, n5014, n5015, n5016, n5017, n5018, n5019, n5020, n5021, n5022,
         n5023, n5024, n5025, n5026, n5027, n5028, n5029, n5030, n5031, n5032,
         n5033, n5034, n5035, n5036, n5037, n5038, n5039, n5040, n5041, n5042,
         n5043, n5044, n5045, n5046, n5047, n5048, n5049, n5050, n5051, n5052,
         n5053, n5054, n5055, n5056, n5057, n5058, n5059, n5060, n5061, n5062,
         n5063, n5064, n5065, n5066, n5067, n5068, n5069, n5070, n5071, n5072,
         n5073, n5074, n5075, n5076, n5077, n5078, n5079, n5080, n5081, n5082,
         n5083, n5084, n5085, n5086, n5087, n5088, n5089, n5090, n5091, n5092,
         n5093, n5094, n5095, n5096, n5097, n5098, n5099, n5100, n5101, n5102,
         n5103, n5104, n5105, n5106, n5107, n5108, n5109, n5110, n5111, n5112,
         n5113, n5114, n5115, n5116, n5117, n5118, n5119, n5120, n5121, n5122,
         n5123, n5124, n5125, n5126, n5127, n5128, n5129, n5130, n5131, n5132,
         n5133, n5134, n5135, n5136, n5137, n5138, n5139, n5140, n5141, n5142,
         n5143, n5144, n5145, n5146, n5147, n5148, n5149, n5150, n5151, n5152,
         n5153, n5154, n5155, n5156, n5157, n5158, n5159, n5160, n5161, n5162,
         n5163, n5164, n5165, n5166, n5167, n5168, n5169, n5170, n5171, n5172,
         n5173, n5174, n5175, n5176, n5177, n5178, n5179, n5180, n5181, n5182,
         n5183, n5184, n5185, n5186, n5187, n5188, n5189, n5190, n5191, n5192,
         n5193, n5194, n5195, n5196, n5197, n5198, n5199, n5200, n5201, n5202,
         n5203, n5204, n5205, n5206, n5207, n5208, n5209, n5210, n5211, n5212,
         n5213, n5214, n5215, n5216, n5217, n5218, n5219, n5220, n5221, n5222,
         n5223, n5224, n5225, n5226, n5227, n5228, n5229, n5230, n5231, n5232,
         n5233, n5234, n5235, n5236, n5237, n5238, n5239, n5240, n5241, n5242,
         n5243, n5244, n5245, n5246, n5247, n5248, n5249, n5250, n5251, n5252,
         n5253, n5254, n5255, n5256, n5257, n5258, n5259, n5260, n5261, n5262,
         n5263, n5264, n5265, n5266, n5267, n5268, n5269, n5270, n5271, n5272,
         n5273, n5274, n5275, n5276, n5277, n5278, n5279, n5280, n5281, n5282,
         n5283, n5284, n5285, n5286, n5287, n5288, n5289, n5290, n5291, n5292,
         n5293, n5294, n5295, n5296, n5297, n5298, n5299, n5300, n5301, n5302,
         n5303, n5304, n5305, n5306, n5307, n5308, n5309, n5310, n5311, n5312,
         n5313, n5314, n5315, n5316, n5317, n5318, n5319, n5320, n5321, n5322,
         n5323, n5324, n5325, n5326, n5327, n5328, n5329, n5330, n5331, n5332,
         n5333, n5334, n5335, n5336, n5337, n5338, n5339, n5340, n5341, n5342,
         n5343, n5344, n5345, n5346, n5347, n5348, n5349, n5350, n5351, n5352,
         n5353, n5354, n5355, n5356, n5357, n5358, n5359, n5360, n5361, n5362,
         n5363, n5364, n5365, n5366, n5367, n5368, n5369, n5370, n5371, n5372,
         n5373, n5374, n5375, n5376, n5377, n5378, n5379, n5380, n5381, n5382,
         n5383, n5384, n5385, n5386, n5387, n5388, n5389, n5390, n5391, n5392,
         n5393, n5394, n5395, n5396, n5397, n5398, n5399, n5400, n5401, n5402,
         n5403, n5404, n5405, n5406, n5407, n5408, n5409, n5410, n5411, n5412,
         n5413, n5414, n5415, n5416, n5417, n5418, n5419, n5420, n5421, n5422,
         n5423, n5424, n5425, n5426, n5427, n5428, n5429, n5430, n5431, n5432,
         n5433, n5434, n5435, n5436, n5437, n5438, n5439, n5440, n5441, n5442,
         n5443, n5444, n5445, n5446, n5447, n5448, n5449, n5450, n5451, n5452,
         n5453, n5454, n5455, n5456, n5457, n5458, n5459, n5460, n5461, n5462,
         n5463, n5464, n5465, n5466, n5467, n5468, n5469, n5470, n5471, n5472,
         n5473, n5474, n5475, n5476, n5477, n5478, n5479, n5480, n5481, n5482,
         n5483, n5484, n5485, n5486, n5487, n5488, n5489, n5490, n5491, n5492,
         n5493, n5494, n5495, n5496, n5497, n5498, n5499, n5500, n5501, n5502,
         n5503, n5504, n5505, n5506, n5507, n5508, n5509, n5510, n5511, n5512,
         n5513, n5514, n5515, n5516, n5517, n5518, n5519, n5520, n5521, n5522,
         n5523, n5524, n5525, n5526, n5527, n5528, n5529, n5530, n5531, n5532,
         n5533, n5534, n5535, n5536, n5537, n5538, n5539, n5540, n5541, n5542,
         n5543, n5544, n5545, n5546, n5547, n5548, n5549, n5550, n5551, n5552,
         n5553, n5554, n5555, n5556, n5557, n5558, n5559, n5560, n5561, n5562,
         n5563, n5564, n5565, n5566, n5567, n5568, n5569, n5570, n5571, n5572,
         n5573, n5574, n5575, n5576, n5577, n5578, n5579, n5580, n5581, n5582,
         n5583, n5584, n5585, n5586, n5587, n5588, n5589, n5590, n5591, n5592,
         n5593, n5594, n5595, n5596, n5597, n5598, n5599, n5600, n5601, n5602,
         n5603, n5604, n5605, n5606, n5607, n5608, n5609, n5610, n5611, n5612,
         n5613, n5614, n5615, n5616, n5617, n5618, n5619, n5620, n5621, n5622,
         n5623, n5624, n5625, n5626, n5627, n5628, n5629, n5630, n5631, n5632,
         n5633, n5634, n5635, n5636, n5637, n5638, n5639, n5640, n5641, n5642,
         n5643, n5644, n5645, n5646, n5647, n5648, n5649, n5650, n5651, n5652,
         n5653, n5654, n5655, n5656, n5657, n5658, n5659, n5660, n5661, n5662,
         n5663, n5664, n5665, n5666, n5667, n5668, n5669, n5670, n5671, n5672,
         n5673, n5674, n5675, n5676, n5677, n5678, n5679, n5680, n5681, n5682,
         n5683, n5684, n5685, n5686, n5687, n5688, n5689, n5690, n5691, n5692,
         n5693, n5694, n5695, n5696, n5697, n5698, n5699, n5700, n5701, n5702,
         n5703, n5704, n5705, n5706, n5707, n5708, n5709, n5710, n5711, n5712,
         n5713, n5714, n5715, n5716, n5717, n5718, n5719, n5720, n5721, n5722,
         n5723, n5724, n5725, n5726, n5727, n5728, n5729, n5730, n5731, n5732,
         n5733, n5734, n5735, n5736, n5737, n5738, n5739, n5740, n5741, n5742,
         n5743, n5744, n5745, n5746, n5747, n5748, n5749, n5750, n5751, n5752,
         n5753, n5754, n5755, n5756, n5757, n5758, n5759, n5760, n5761, n5762,
         n5763, n5764, n5765, n5766, n5767, n5768, n5769, n5770, n5771, n5772,
         n5773, n5774, n5775, n5776, n5777, n5778, n5779, n5780, n5781, n5782,
         n5783, n5784, n5785, n5786, n5787, n5788, n5789, n5790, n5791, n5792,
         n5793, n5794, n5795, n5796, n5797, n5798, n5799, n5800, n5801, n5802,
         n5803, n5804, n5805, n5806, n5807, n5808, n5809, n5810, n5811, n5812,
         n5813, n5814, n5815, n5816, n5817, n5818, n5819, n5820, n5821, n5822,
         n5823, n5824, n5825, n5826, n5827, n5828, n5829, n5830, n5831, n5832,
         n5833, n5834, n5835, n5836, n5837, n5838, n5839, n5840, n5841, n5842,
         n5843, n5844, n5845, n5846, n5847, n5848, n5849, n5850, n5851, n5852,
         n5853, n5854, n5855, n5856, n5857, n5858, n5859, n5860, n5861, n5862,
         n5863, n5864, n5865, n5866, n5867, n5868, n5869, n5870, n5871, n5872,
         n5873, n5874, n5875, n5876, n5877, n5878, n5879, n5880, n5881, n5882,
         n5883, n5884, n5885, n5886, n5887, n5888, n5889, n5890, n5891, n5892,
         n5893, n5894, n5895, n5896, n5897, n5898, n5899, n5900, n5901, n5902,
         n5903, n5904, n5905, n5906, n5907, n5908, n5909, n5910, n5911, n5912,
         n5913, n5914, n5915, n5916, n5917, n5918, n5919, n5920, n5921, n5922,
         n5923, n5924, n5925, n5926, n5927, n5928, n5929, n5930, n5931, n5932,
         n5933, n5934, n5935, n5936, n5937, n5938, n5939, n5940, n5941, n5942,
         n5943, n5944, n5945, n5946, n5947, n5948, n5949, n5950, n5951, n5952,
         n5953, n5954, n5955, n5956, n5957, n5958, n5959, n5960, n5961, n5962,
         n5963, n5964, n5965, n5966, n5967, n5968, n5969, n5970, n5971, n5972,
         n5973, n5974, n5975, n5976, n5977, n5978, n5979, n5980, n5981, n5982,
         n5983, n5984, n5985, n5986, n5987, n5988, n5989, n5990, n5991, n5992,
         n5993, n5994, n5995, n5996, n5997, n5998, n5999, n6000, n6001, n6002,
         n6003, n6004, n6005, n6006, n6007, n6008, n6009, n6010, n6011, n6012,
         n6013, n6014, n6015, n6016, n6017, n6018, n6019, n6020, n6021, n6022,
         n6023, n6024, n6025, n6026, n6027, n6028, n6029, n6030, n6031, n6032,
         n6033, n6034, n6035, n6036, n6037, n6038, n6039, n6040, n6041, n6042,
         n6043, n6044, n6045, n6046, n6047, n6048, n6049, n6050, n6051, n6052,
         n6053, n6054, n6055, n6056, n6058, n6059, n6060, n6061, n6062, n6064,
         n6065, n6066, n6067, n6068, n6069, n6070, n6071, n6072, n6073, n6074,
         n6075, n6076, n6077, n6078, n6079, n6080, n6081, n6082, n6083, n6084,
         n6085, n6086, n6087, n6088, n6089, n6090, n6091, n6092, n6093, n6094,
         n6095, n6096, n6097, n6098, n6099, n6100, n6101, n6102, n6103, n6104,
         n6105, n6106, n6107, n6108, n6109, n6110, n6111, n6112, n6113, n6114,
         n6115, n6116, n6117, n6118, n6119, n6120, n6121, n6122, n6123, n6124,
         n6125, n6126, n6127, n6128, n6129, n6130, n6131, n6132, n6133, n6134,
         n6135, n6136, n6137, n6138, n6139, n6140, n6141, n6142, n6143, n6144,
         n6145, n6146, n6147, n6148, n6149, n6150, n6151, n6152, n6153, n6154,
         n6155, n6156, n6157, n6158, n6159, n6160, n6161, n6162, n6163, n6164,
         n6165, n6166, n6167, n6168, n6169, n6170, n6171, n6172, n6173, n6174,
         n6175, n6176, n6177, n6178, n6179, n6180, n6181, n6182, n6183, n6184,
         n6185, n6186, n6187, n6188, n6189, n6190, n6191, n6192, n6193, n6194,
         n6195, n6196, n6197, n6198, n6199, n6200, n6201, n6202, n6203, n6204,
         n6205, n6206, n6207, n6208, n6209, n6210, n6211, n6212, n6213, n6214,
         n6215, n6216, n6217, n6218, n6219, n6220, n6221, n6222, n6223, n6224,
         n6225, n6226, n6227, n6228, n6229, n6230, n6231, n6232, n6233, n6234,
         n6235, n6236, n6237, n6238, n6239, n6240, n6241, n6242, n6243, n6244,
         n6245, n6246, n6247, n6248, n6249, n6250, n6251, n6252, n6253, n6254,
         n6255, n6256, n6257, n6258, n6259, n6260, n6261, n6262, n6263, n6264,
         n6265, n6266, n6267, n6268, n6269, n6270, n6271, n6272, n6273, n6274,
         n6275, n6276, n6277, n6278, n6279, n6280, n6281, n6282, n6283, n6284,
         n6285, n6286, n6287, n6288, n6289, n6290, n6291, n6292, n6293, n6294,
         n6295, n6296, n6297, n6298, n6299, n6300, n6301, n6302, n6303, n6304,
         n6305, n6306, n6307, n6308, n6309, n6310, n6311, n6312, n6313, n6314,
         n6315, n6316, n6317, n6318, n6319, n6320, n6321, n6322, n6323, n6324,
         n6325, n6326, n6327, n6328, n6329, n6330, n6331, n6332, n6333, n6334,
         n6335, n6336, n6337, n6338, n6339, n6340, n6341, n6342, n6343, n6344,
         n6345, n6346, n6347, n6348, n6349, n6350, n6351, n6352, n6353, n6354,
         n6355, n6356, n6357, n6358, n6359, n6360, n6361, n6362, n6363, n6364,
         n6365, n6366, n6367, n6368, n6369, n6370, n6371, n6372, n6373, n6374,
         n6375, n6376, n6377, n6378, n6379, n6380, n6381, n6382, n6383, n6384,
         n6385, n6386, n6387, n6388, n6389, n6390, n6391, n6392, n6393, n6394,
         n6395, n6396, n6397, n6398, n6399, n6400, n6401, n6402, n6403, n6404,
         n6405, n6406, n6407, n6408, n6409, n6410, n6411, n6412, n6413, n6414,
         n6415, n6416, n6417, n6418, n6419, n6420, n6421, n6422, n6423, n6424,
         n6425, n6426, n6427, n6428, n6429, n6430, n6431, n6432, n6433, n6434,
         n6435, n6436, n6437, n6438, n6439, n6440, n6441, n6442, n6443, n6444,
         n6445, n6446, n6447, n6448, n6449, n6450, n6451, n6452, n6453, n6454,
         n6455, n6456, n6457, n6458, n6459, n6460, n6461, n6462, n6463, n6464,
         n6465, n6466, n6467, n6468, n6469, n6470, n6471, n6472, n6473, n6474,
         n6475, n6476, n6477, n6478, n6479, n6480, n6481, n6482, n6483, n6484,
         n6485, n6486, n6487, n6488, n6489, n6490, n6491, n6492, n6493, n6494,
         n6495, n6496, n6497, n6498, n6499, n6500, n6501, n6502, n6503, n6504,
         n6505, n6506, n6507, n6508, n6509, n6510, n6511, n6512, n6513, n6514,
         n6515, n6516, n6517, n6518, n6519, n6520, n6521, n6522, n6523, n6524,
         n6525, n6526, n6527, n6528, n6529, n6530, n6531, n6532, n6533, n6534,
         n6535, n6536, n6537, n6538, n6539, n6540, n6541, n6542, n6543, n6544,
         n6545, n6546, n6547, n6548, n6549, n6550, n6551, n6552, n6553, n6554,
         n6555, n6556, n6557, n6558, n6559, n6560, n6561, n6562, n6563, n6564,
         n6565, n6566, n6567, n6568, n6569, n6570, n6571, n6572, n6573, n6574,
         n6575, n6576, n6577, n6578, n6579, n6580, n6581, n6582, n6583, n6584,
         n6585, n6586, n6587, n6588, n6589, n6590, n6591, n6592, n6593, n6594,
         n6595, n6596, n6597, n6598, n6599, n6600, n6601, n6602, n6603, n6604,
         n6605, n6606, n6607, n6608, n6609, n6610, n6611, n6612, n6613, n6614,
         n6615, n6616, n6617, n6618, n6619, n6620, n6621, n6622, n6623, n6624,
         n6625, n6626, n6627, n6628, n6629, n6630, n6631, n6632, n6633, n6634,
         n6635, n6636, n6637, n6638, n6639, n6640, n6641, n6642, n6643, n6644,
         n6645, n6646, n6647, n6648, n6649, n6650, n6651, n6652, n6653, n6654,
         n6655, n6656, n6657, n6658, n6659, n6660, n6661, n6662, n6663, n6664,
         n6665, n6666, n6667, n6668, n6669, n6670, n6671, n6672, n6673, n6674,
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
         n6955, n6956, n6957, n6958, n6959, n6960, n6961, n6962, n6963, n6964,
         n6965, n6966, n6967, n6968, n6969, n6970, n6971, n6972, n6973, n6974,
         n6975, n6976, n6977, n6978, n6979, n6980, n6981, n6982, n6983, n6984,
         n6985, n6986, n6987, n6988, n6989, n6990, n6991, n6992, n6993, n6994,
         n6995, n6996, n6997, n6998, n6999, n7000, n7001, n7002, n7003, n7004,
         n7005, n7006, n7007, n7008, n7009, n7010, n7011, n7012, n7013, n7014,
         n7015, n7016, n7017, n7018, n7019, n7020, n7021, n7022, n7023, n7024,
         n7025, n7026, n7027, n7028, n7029, n7030, n7031, n7032, n7033, n7034,
         n7035, n7036, n7037, n7038, n7039, n7040, n7041, n7042, n7043, n7044,
         n7045, n7046, n7047, n7048, n7049, n7050, n7051, n7052, n7053, n7054,
         n7055, n7056, n7057, n7058, n7059, n7060, n7061, n7062, n7063, n7064,
         n7065, n7066, n7067, n7068, n7069, n7070, n7071, n7072, n7073, n7074,
         n7076, n7077, n7078, n7079, n7080, n7081, n7082, n7083, n7084, n7085,
         n7086, n7087, n7088, n7089, n7090, n7091, n7092, n7093, n7094, n7095,
         n7096, n7097, n7098, n7099, n7100, n7101, n7102, n7103, n7104, n7105,
         n7106, n7107, n7108, n7109, n7110, n7111, n7112, n7113, n7114, n7115,
         n7116, n7117, n7118, n7119, n7120, n7121, n7122, n7123, n7124, n7125,
         n7126, n7127, n7128, n7129, n7130, n7131, n7132, n7133, n7134, n7135,
         n7136, n7137, n7138, n7139, n7140, n7141, n7142, n7143, n7144, n7145,
         n7146, n7147, n7148, n7149, n7150, n7151, n7152, n7153, n7154, n7155,
         n7156, n7157, n7158, n7159, n7160, n7161, n7162, n7163, n7164, n7165,
         n7166, n7167, n7168, n7169, n7170, n7171, n7172, n7173, n7174, n7175,
         n7176, n7177, n7178, n7179, n7180, n7181, n7182, n7183, n7184, n7185,
         n7186, n7187, n7188, n7189, n7190, n7191, n7192, n7193, n7194, n7195,
         n7196, n7197, n7198, n7199, n7200, n7201, n7202, n7203, n7204, n7205,
         n7206, n7207, n7208, n7209, n7210, n7211, n7212, n7213, n7214, n7215,
         n7216, n7217, n7218, n7219, n7220, n7221, n7222, n7223, n7224, n7225,
         n7226, n7227, n7228, n7229, n7230, n7231, n7232, n7233, n7234, n7235,
         n7236, n7237, n7238, n7239, n7240, n7241, n7242, n7243, n7244, n7245,
         n7246, n7247, n7248, n7249, n7250, n7251, n7252, n7253, n7254, n7255,
         n7256, n7257, n7258, n7259, n7260, n7261, n7262, n7263, n7264, n7265,
         n7266, n7267, n7268, n7269, n7270, n7271, n7272, n7273, n7274, n7275,
         n7276, n7277, n7278, n7279, n7280, n7281, n7282, n7283, n7284, n7285,
         n7286, n7287, n7288, n7289, n7290, n7291, n7292, n7293, n7294, n7295,
         n7296, n7297, n7298, n7299, n7300, n7301, n7302, n7303, n7304, n7305,
         n7306, n7307, n7308, n7309, n7310, n7311, n7312, n7313, n7314, n7315,
         n7316, n7317, n7318, n7319, n7320, n7321, n7322, n7323, n7324, n7326,
         n7327, n7328, n7329, n7330, n7331, n7332, n7333, n7334, n7335, n7336,
         n7337, n7338, n7339, n7340, n7341, n7342, n7343, n7344, n7345, n7346,
         n7347, n7348, n7349, n7350, n7351, n7352, n7353, n7354, n7355, n7356,
         n7357, n7358, n7359, n7360, n7361, n7362, n7363, n7364, n7365, n7366,
         n7367, n7368, n7369, n7370, n7371, n7372, n7373, n7374, n7375, n7376,
         n7377, n7378, n7379, n7380, n7381, n7382, n7383, n7384, n7385, n7386,
         n7387, n7388, n7389, n7390, n7391, n7392, n7393, n7394, n7395, n7396,
         n7397, n7398, n7399, n7400, n7401, n7402, n7403, n7404, n7405, n7406,
         n7407, n7408, n7409, n7410, n7411, n7412, n7413, n7414, n7415, n7416,
         n7417, n7418, n7419, n7420, n7421, n7422, n7423, n7424, n7425, n7426,
         n7427, n7428, n7429, n7430, n7431, n7432, n7433, n7434, n7435, n7436,
         n7437, n7438, n7439, n7440, n7441, n7442, n7443, n7444, n7445, n7446,
         n7447, n7448, n7449, n7450, n7451, n7452, n7453, n7454, n7455, n7456,
         n7457, n7458, n7459, n7460, n7461, n7462, n7463, n7464, n7465, n7466,
         n7467, n7468, n7469, n7470, n7471, n7472, n7473, n7474, n7475, n7476,
         n7477, n7478, n7479, n7480, n7481, n7482, n7483, n7484, n7485, n7486,
         n7487, n7488, n7489, n7490, n7491, n7492, n7493, n7496, n7497, n7498,
         n7499, n7500, n7501, n7502, n7503, n7504, n7505, n7506, n7507, n7508,
         n7509, n7510, n7511, n7512, n7513, n7514, n7515, n7516, n7517, n7518,
         n7519, n7520, n7521, n7522, n7523, n7524, n7525, n7526, n7527, n7528,
         n7529, n7530, n7531, n7532, n7533, n7534, n7535, n7536, n7537, n7538,
         n7539, n7540, n7541, n7542, n7543, n7544, n7545, n7546, n7547, n7548,
         n7549, n7550, n7551, n7552, n7554, n7555, n7556, n7557, n7558, n7559,
         n7560, n7561, n7562, n7563, n7564, n7565, n7566, n7567, n7568, n7569,
         n7570, n7571, n7572, n7573, n7574, n7575, n7576, n7577, n7578, n7579,
         n7580, n7581, n7582, n7583, n7584, n7585, n7586, n7587, n7588, n7589,
         n7590, n7591, n7592, n7593, n7594, n7595, n7596, n7597, n7598, n7599,
         n7600, n7601, n7602, n7603, n7604, n7605, n7606, n7607, n7608, n7609,
         n7610, n7611, n7612, n7613, n7614, n7615, n7616, n7617, n7618, n7619,
         n7620, n7621, n7622, n7623, n7624, n7625, n7626, n7627, n7628, n7629,
         n7630, n7631, n7632, n7633, n7634, n7635, n7636, n7637, n7638, n7639,
         n7640, n7641, n7642, n7643, n7644, n7645, n7646, n7647, n7648, n7649,
         n7650, n7651, n7652, n7653, n7654, n7655, n7656, n7657, n7658, n7659,
         n7660, n7661, n7662, n7663, n7664, n7665, n7666, n7667, n7668, n7669,
         n7670, n7671, n7672, n7673, n7674, n7675, n7676, n7677, n7678, n7679,
         n7680, n7681, n7682, n7683, n7684, n7685, n7686, n7687, n7688, n7689,
         n7690, n7691, n7692, n7693, n7694, n7695, n7696, n7697, n7698, n7699,
         n7700, n7701, n7702, n7703, n7704, n7705, n7706, n7707, n7708, n7709,
         n7710, n7711, n7712, n7713, n7714, n7715, n7716, n7717, n7718, n7719,
         n7720, n7721, n7722, n7723, n7724, n7725, n7726, n7727, n7728, n7729,
         n7730, n7731, n7732, n7733, n7734, n7735, n7736, n7737, n7738, n7739,
         n7740, n7741, n7742, n7743, n7744, n7745, n7746, n7747, n7748, n7749,
         n7750, n7751, n7752, n7753, n7754, n7755, n7756, n7757, n7758, n7759,
         n7761, n7763, n7764, n7765, n7766, n7767, n7768, n7769, n7772, n7773,
         n7776, n7777, n7778, n7779, n7780, n7781, n7782, n7783, n7784, n7785,
         n7786, n7787, n7788, n7789, n7790;
  wire   [31:0] sram_data_out_w;
  wire   [3:0] sram_wen_ready_r;
  wire   [31:0] sram_addr_w;
  wire   [7:0] in_data_r;
  wire   [10:0] conv_result_w;
  wire   [1:0] curr_state;
  wire   [10:0] cnt;
  wire   [2:1] x_origin_r;
  wire   [31:0] input_data_ready_r;
  wire   [31:0] sram_addr_wait_r;
  wire   [4:0] z_r;
  wire   [2:0] y_r;
  wire   [2:0] x_r;
  wire   [2:0] x_minus_one_r;
  wire   [2:0] x_plus_two_r;
  wire   [7:0] pre_state;
  wire   [13:1] out_data_wait_r;
  wire   [9:0] conv_inst_data_bcd_4_r;
  wire   [16:0] conv_inst_conv_4_r;
  wire   [9:0] conv_inst_data_abc_3_r;
  wire   [16:0] conv_inst_conv_3_r;
  wire   [10:0] conv_inst_data_bcd_2_r;
  wire   [16:1] conv_inst_conv_2_r;
  wire   [10:0] conv_inst_data_abc_1_r;
  wire   [16:1] conv_inst_conv_1_r;
  wire   [9:1] conv_inst_data_bcd_w;
  wire   [9:1] conv_inst_data_abc_w;
  wire   [1:0] median_sobel_inst_ns;
  wire   [8:0] median_sobel_inst_med_sobel_e_wait_r;
  wire   [7:0] median_sobel_inst_angle;
  wire   [43:0] median_sobel_inst_G;
  wire   [1:0] median_sobel_inst_angle_w;
  wire   [10:0] median_sobel_inst_sobel_data_w;
  wire   [7:0] median_sobel_inst_data_i_r;
  wire   [7:2] median_sobel_inst_data_h_r;
  wire   [7:2] median_sobel_inst_data_g_r;
  wire   [7:1] median_sobel_inst_data_f_r;
  wire   [7:0] median_sobel_inst_data_e_r;
  wire   [7:2] median_sobel_inst_data_d_r;
  wire   [6:0] median_sobel_inst_data_c_r;
  wire   [7:0] median_sobel_inst_data_b_r;
  wire   [6:3] median_sobel_inst_data_a_r;
  wire   [10:0] median_sobel_inst_sobel_out_data_w;
  wire   [7:0] median_sobel_inst_out_data_w;
  wire   [4:3] median_sobel_inst_u_median_filter_submodule_b1_r;
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
  wire   [15:10] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r;
  wire   [12:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r;
  wire   [11:1] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r;
  wire   [21:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_G_abs;
  wire   [19:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay;
  wire   [3:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_delay;
  wire   [2:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_delay;
  wire   [7:2] median_sobel_inst_u_sobel_gradient_submodule_Gx_abs;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_abs;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_Gy_imm;
  wire   [10:0] median_sobel_inst_u_sobel_gradient_submodule_Gx_imm;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy2_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx2_w;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gx1_w;
  wire   [7:1] median_sobel_inst_u_sobel_gradient_submodule_p9_d_r;
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p1_d_r;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy2;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gx2;
  wire   [9:0] median_sobel_inst_u_sobel_gradient_submodule_Gy1;
  wire   [9:1] median_sobel_inst_u_sobel_gradient_submodule_Gx1;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p9_r;
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p8_r;
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p7_r;
  wire   [6:1] median_sobel_inst_u_sobel_gradient_submodule_p6_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p4_r;
  wire   [4:0] median_sobel_inst_u_sobel_gradient_submodule_p3_r;
  wire   [6:0] median_sobel_inst_u_sobel_gradient_submodule_p2_r;
  wire   [7:0] median_sobel_inst_u_sobel_gradient_submodule_p1_r;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_b;
  wire   [10:0] median_sobel_inst_u_sober_compare_submodule_temp_a;
  wire   [10:3] median_sobel_inst_u_sober_compare_submodule_temp_b_r;

  sram_512x8 SRAM_inst_loop_0__u_sram ( .Q(sram_data_out_w[7:0]), .A(
        sram_addr_w[8:0]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[0]) );
  sram_512x8 SRAM_inst_loop_1__u_sram ( .Q(sram_data_out_w[15:8]), .A({n1980, 
        n1993, sram_addr_w[15:9]}), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), 
        .WEN(sram_wen_ready_r[1]) );
  sram_512x8 SRAM_inst_loop_2__u_sram ( .Q(sram_data_out_w[23:16]), .A({n1982, 
        n1995, sram_addr_w[22:16]}), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), 
        .WEN(sram_wen_ready_r[2]) );
  sram_512x8 SRAM_inst_loop_3__u_sram ( .Q(sram_data_out_w[31:24]), .A(
        sram_addr_w[31:23]), .D(in_data_r), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[3]) );
  DFFRX4 y_origin_r_reg_0_ ( .D(n492), .CK(i_clk), .RN(n7769), .Q(n7690), .QN(
        n2093) );
  DFFRHQX8 curr_state_reg_0_ ( .D(n1389), .CK(i_clk), .RN(n7746), .Q(
        curr_state[0]) );
  DFFRX1 sram_addr_ready_r_reg_3__8_ ( .D(sram_addr_wait_r[31]), .CK(i_clk), 
        .RN(n7768), .Q(sram_addr_w[31]), .QN(n436) );
  DFFRX1 sram_addr_ready_r_reg_3__4_ ( .D(sram_addr_wait_r[27]), .CK(i_clk), 
        .RN(n7765), .Q(sram_addr_w[27]), .QN(n432) );
  DFFRX1 sram_addr_ready_r_reg_1__1_ ( .D(sram_addr_wait_r[8]), .CK(i_clk), 
        .RN(n7756), .Q(sram_addr_w[10]), .QN(n413) );
  DFFRX1 med_sobel_r_reg ( .D(n1397), .CK(i_clk), .RN(n7755), .QN(n7689) );
  DFFRX1 sram_addr_ready_r_reg_1__5_ ( .D(sram_addr_wait_r[12]), .CK(i_clk), 
        .RN(n7764), .Q(sram_addr_w[14]), .QN(n417) );
  DFFRX1 sram_addr_ready_r_reg_1__2_ ( .D(sram_addr_wait_r[9]), .CK(i_clk), 
        .RN(n7765), .Q(sram_addr_w[11]), .QN(n414) );
  DFFRX1 sram_addr_ready_r_reg_1__6_ ( .D(sram_addr_wait_r[13]), .CK(i_clk), 
        .RN(n7747), .Q(sram_addr_w[15]), .QN(n418) );
  DFFRX1 sram_addr_ready_r_reg_3__2_ ( .D(sram_addr_wait_r[25]), .CK(i_clk), 
        .RN(n7766), .Q(sram_addr_w[25]), .QN(n430) );
  DFFRX1 sram_addr_ready_r_reg_1__3_ ( .D(sram_addr_wait_r[10]), .CK(i_clk), 
        .RN(n7778), .Q(sram_addr_w[12]), .QN(n415) );
  DFFSX1 sram_wen_ready_r_reg_1_ ( .D(N842), .CK(i_clk), .SN(n7745), .Q(
        sram_wen_ready_r[1]) );
  DFFSX1 sram_wen_ready_r_reg_2_ ( .D(N843), .CK(i_clk), .SN(n7745), .Q(
        sram_wen_ready_r[2]) );
  DFFSX1 sram_wen_ready_r_reg_3_ ( .D(N844), .CK(i_clk), .SN(n7748), .Q(
        sram_wen_ready_r[3]), .QN(n2319) );
  DFFRX1 pre_state_reg_1__1_ ( .D(pre_state[1]), .CK(i_clk), .RN(n7784), .Q(
        pre_state[5]), .QN(n866) );
  DFFSX1 sram_wen_ready_r_reg_0_ ( .D(N841), .CK(i_clk), .SN(n7745), .Q(
        sram_wen_ready_r[0]), .QN(n2320) );
  DFFSX1 pre_state_reg_2__3_ ( .D(pre_state[7]), .CK(i_clk), .SN(n7748), .QN(
        n1906) );
  DFFSX1 pre_state_reg_1__3_ ( .D(pre_state[3]), .CK(i_clk), .SN(n7748), .Q(
        pre_state[7]), .QN(n1905) );
  DFFSX1 pre_state_reg_1__2_ ( .D(pre_state[2]), .CK(i_clk), .SN(n7748), .Q(
        pre_state[6]) );
  DFFRX1 x_minus_one_r_reg_2_ ( .D(N756), .CK(i_clk), .RN(n7783), .Q(
        x_minus_one_r[2]) );
  DFFSX1 pre_state_reg_2__2_ ( .D(pre_state[6]), .CK(i_clk), .SN(n7745), .Q(
        n1904) );
  DFFRX1 pre_state_reg_1__0_ ( .D(pre_state[0]), .CK(i_clk), .RN(n7746), .Q(
        pre_state[4]) );
  DFFRX1 x_plus_one_r_reg_2_ ( .D(n7788), .CK(i_clk), .RN(n7748), .Q(
        x_plus_one_r_2_), .QN(n7579) );
  DFFSX1 depth_ready_r_reg_2_ ( .D(n447), .CK(i_clk), .SN(n7748), .Q(n1913), 
        .QN(n7589) );
  DFFRX1 x_minus_one_r_reg_1_ ( .D(n3551), .CK(i_clk), .RN(n7781), .QN(n1940)
         );
  DFFRX1 x_plus_two_r_reg_2_ ( .D(N762), .CK(i_clk), .RN(n7747), .Q(
        x_plus_two_r[2]), .QN(n7504) );
  DFFRX1 x_r_reg_0_ ( .D(N785), .CK(i_clk), .RN(n7747), .Q(x_r[0]) );
  DFFRX1 x_delay_r_reg_0__1_ ( .D(x_r[1]), .CK(i_clk), .RN(n7781), .Q(
        x_delay_r_0__1_) );
  DFFRX1 in_data_r_reg_7_ ( .D(i_in_data[7]), .CK(i_clk), .RN(n7759), .Q(
        in_data_r[7]) );
  DFFRX1 in_data_r_reg_6_ ( .D(i_in_data[6]), .CK(i_clk), .RN(n7753), .Q(
        in_data_r[6]) );
  DFFRX1 in_data_r_reg_5_ ( .D(i_in_data[5]), .CK(i_clk), .RN(n7783), .Q(
        in_data_r[5]) );
  DFFRX1 in_data_r_reg_4_ ( .D(i_in_data[4]), .CK(i_clk), .RN(n7780), .Q(
        in_data_r[4]) );
  DFFRX1 in_data_r_reg_3_ ( .D(i_in_data[3]), .CK(i_clk), .RN(n7783), .Q(
        in_data_r[3]) );
  DFFRX1 in_data_r_reg_2_ ( .D(i_in_data[2]), .CK(i_clk), .RN(n7781), .Q(
        in_data_r[2]) );
  DFFRX1 in_data_r_reg_1_ ( .D(i_in_data[1]), .CK(i_clk), .RN(i_rst_n), .Q(
        in_data_r[1]) );
  DFFRX1 in_data_r_reg_0_ ( .D(i_in_data[0]), .CK(i_clk), .RN(n7783), .Q(
        in_data_r[0]) );
  DFFRX1 x_delay_r_reg_1__0_ ( .D(x_delay_r_0__0_), .CK(i_clk), .RN(n7752), 
        .Q(x_delay_r_1__0_) );
  DFFRX1 x_delay_r_reg_1__1_ ( .D(x_delay_r_0__1_), .CK(i_clk), .RN(n7753), 
        .Q(x_delay_r_1__1_) );
  DFFRX1 x_delay_r_reg_0__0_ ( .D(x_r[0]), .CK(i_clk), .RN(n7783), .Q(
        x_delay_r_0__0_) );
  DFFRX4 cnt_reg_1_ ( .D(n483), .CK(i_clk), .RN(n7777), .Q(cnt[1]), .QN(n461)
         );
  DFFRX4 y_origin_r_reg_2_ ( .D(n490), .CK(i_clk), .RN(n7776), .Q(
        y_origin_r_2_), .QN(n7528) );
  DFFRX2 input_data_ready_r_reg_7_ ( .D(N724), .CK(i_clk), .RN(n7763), .Q(
        input_data_ready_r[7]), .QN(n7501) );
  DFFRX4 cnt_reg_5_ ( .D(n479), .CK(i_clk), .RN(n7750), .Q(cnt[5]), .QN(n7521)
         );
  DFFRX4 x_delay_r_reg_2__1_ ( .D(x_delay_r_1__1_), .CK(i_clk), .RN(n7749), 
        .Q(x_delay_r_2__1_), .QN(n7736) );
  DFFRX4 cnt_reg_6_ ( .D(n478), .CK(i_clk), .RN(i_rst_n), .Q(n1956), .QN(n7513) );
  DFFRX4 cnt_reg_2_ ( .D(n482), .CK(i_clk), .RN(n7776), .Q(cnt[2]), .QN(n460)
         );
  DFFRHQX1 x_plus_one_r_reg_1_ ( .D(N125), .CK(i_clk), .RN(n7773), .Q(n1991)
         );
  DFFRHQX8 op_mode_r_reg_1_ ( .D(n441), .CK(i_clk), .RN(n7780), .Q(n1986) );
  DFFRX1 pre_state_reg_2__1_ ( .D(pre_state[5]), .CK(i_clk), .RN(n7764), .QN(
        n865) );
  DFFRX2 cnt_reg_9_ ( .D(n475), .CK(i_clk), .RN(n7761), .Q(cnt[9]), .QN(n452)
         );
  DFFRX2 map_load_done_r_reg ( .D(N896), .CK(i_clk), .RN(n7784), .QN(n834) );
  DFFRHQX1 x_r_reg_1_ ( .D(N786), .CK(i_clk), .RN(n7773), .Q(x_r[1]) );
  DFFRHQX1 conv_inst_data_bcd_4_r_reg_1_ ( .D(conv_inst_N209), .CK(i_clk), 
        .RN(n7751), .Q(conv_inst_data_bcd_4_r[1]) );
  DFFRHQX1 conv_inst_data_abc_3_r_reg_6_ ( .D(conv_inst_N203), .CK(i_clk), 
        .RN(n7780), .Q(conv_inst_data_abc_3_r[6]) );
  DFFRHQX1 conv_inst_data_bcd_4_r_reg_6_ ( .D(conv_inst_N214), .CK(i_clk), 
        .RN(n7781), .Q(conv_inst_data_bcd_4_r[6]) );
  DFFRHQX1 conv_inst_data_abc_3_r_reg_3_ ( .D(conv_inst_N2000), .CK(i_clk), 
        .RN(n7783), .Q(conv_inst_data_abc_3_r[3]) );
  DFFRHQX1 conv_inst_data_bcd_4_r_reg_7_ ( .D(conv_inst_N215), .CK(i_clk), 
        .RN(n7772), .Q(conv_inst_data_bcd_4_r[7]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_7_ ( .D(conv_inst_N131), .CK(i_clk), .RN(
        n7761), .Q(conv_inst_data_abc_1_r[7]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_8_ ( .D(conv_inst_N205), .CK(i_clk), .RN(
        n7783), .Q(conv_inst_data_abc_3_r[8]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_7_ ( .D(conv_inst_N204), .CK(i_clk), .RN(
        n7761), .Q(conv_inst_data_abc_3_r[7]) );
  DFFRHQX1 conv_inst_data_bcd_4_r_reg_10_ ( .D(conv_inst_N218), .CK(i_clk), 
        .RN(n7752), .Q(conv_inst_n39) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_3_ ( .D(conv_inst_N69), .CK(i_clk), 
        .RN(n7764), .Q(conv_result_w[3]) );
  DFFRX1 conv_inst_data_bcd_r_reg_2_ ( .D(conv_inst_data_bcd_w[2]), .CK(i_clk), 
        .RN(n7753), .QN(conv_inst_n265) );
  DFFRX1 conv_inst_data_abc_r_reg_3_ ( .D(conv_inst_data_abc_w[3]), .CK(i_clk), 
        .RN(n7757), .QN(conv_inst_n259) );
  DFFRX1 conv_inst_data_abc_r_reg_2_ ( .D(conv_inst_data_abc_w[2]), .CK(i_clk), 
        .RN(n7766), .QN(conv_inst_n258) );
  DFFRX1 conv_inst_data_bcd_r_reg_0_ ( .D(conv_inst_N32), .CK(i_clk), .RN(
        n7765), .QN(conv_inst_n263) );
  DFFRX1 conv_inst_data_abc_r_reg_1_ ( .D(conv_inst_data_abc_w[1]), .CK(i_clk), 
        .RN(n7764), .QN(conv_inst_n257) );
  DFFRX1 conv_inst_data_abc_r_reg_0_ ( .D(conv_inst_N2210), .CK(i_clk), .RN(
        n7766), .QN(conv_inst_n256) );
  DFFRX2 conv_inst_conv_3_r_reg_12_ ( .D(conv_inst_N2650), .CK(i_clk), .RN(
        n7747), .Q(conv_inst_conv_3_r[12]), .QN(conv_inst_n240) );
  DFFRX2 conv_inst_conv_4_r_reg_0_ ( .D(conv_inst_N2700), .CK(i_clk), .RN(
        n7782), .Q(conv_inst_conv_4_r[0]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_0_ ( .D(conv_inst_N208), .CK(i_clk), .RN(
        n7783), .Q(conv_inst_data_bcd_4_r[0]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_0_ ( .D(conv_inst_N124), .CK(i_clk), .RN(
        n7781), .Q(conv_inst_data_abc_1_r[0]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_0_ ( .D(conv_inst_N135), .CK(i_clk), .RN(
        n7761), .Q(conv_inst_data_bcd_2_r[0]) );
  DFFRX2 conv_inst_conv_3_r_reg_6_ ( .D(conv_inst_N2590), .CK(i_clk), .RN(
        n7765), .Q(conv_inst_conv_3_r[6]), .QN(conv_inst_n238) );
  DFFRHQX1 conv_inst_conv_3_r_reg_1_ ( .D(conv_inst_N254), .CK(i_clk), .RN(
        n7772), .Q(conv_inst_n187) );
  DFFRHQX1 conv_inst_data_abc_1_r_reg_8_ ( .D(conv_inst_N1320), .CK(i_clk), 
        .RN(n7772), .Q(conv_inst_n188) );
  DFFRX2 conv_inst_conv_1_r_reg_1_ ( .D(conv_inst_N220), .CK(i_clk), .RN(n7784), .Q(conv_inst_conv_1_r[1]) );
  DFFRHQX1 conv_inst_conv_4_r_reg_1_ ( .D(conv_inst_N271), .CK(i_clk), .RN(
        n7773), .Q(conv_inst_n192) );
  DFFRX2 conv_inst_conv_3_r_reg_0_ ( .D(conv_inst_N2530), .CK(i_clk), .RN(
        n7780), .Q(conv_inst_conv_3_r[0]) );
  DFFRX2 conv_inst_conv_1_r_reg_12_ ( .D(conv_inst_N231), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_conv_1_r[12]) );
  DFFRX2 conv_inst_conv_4_r_reg_5_ ( .D(conv_inst_N275), .CK(i_clk), .RN(n7757), .Q(conv_inst_conv_4_r[5]), .QN(conv_inst_n9) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_5_ ( .D(conv_inst_N213), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_data_bcd_4_r[5]) );
  DFFRHQX1 conv_inst_conv_2_r_reg_0_ ( .D(conv_inst_N2360), .CK(i_clk), .RN(
        n7773), .Q(conv_inst_n197) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_4_ ( .D(conv_inst_N139), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_data_bcd_2_r[4]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_4_ ( .D(conv_inst_N128), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_data_abc_1_r[4]) );
  DFFRX2 conv_inst_conv_3_r_reg_2_ ( .D(conv_inst_N255), .CK(i_clk), .RN(n7758), .Q(conv_inst_conv_3_r[2]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_9_ ( .D(conv_inst_N206), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_data_abc_3_r[9]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_9_ ( .D(conv_inst_N217), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_data_bcd_4_r[9]) );
  DFFRX2 conv_inst_data_abc_3_r_reg_2_ ( .D(conv_inst_N1990), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_data_abc_3_r[2]) );
  DFFRX2 conv_inst_conv_2_r_reg_9_ ( .D(conv_inst_N2450), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_conv_2_r[9]), .QN(conv_inst_n15) );
  DFFRX2 conv_inst_conv_3_r_reg_4_ ( .D(conv_inst_N2570), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_conv_3_r[4]), .QN(conv_inst_n234) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_10_ ( .D(conv_inst_N145), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_data_bcd_2_r[10]) );
  DFFRX2 conv_inst_conv_2_r_reg_10_ ( .D(conv_inst_N2460), .CK(i_clk), .RN(
        n7746), .Q(conv_inst_conv_2_r[10]) );
  DFFRX2 conv_inst_conv_4_r_reg_2_ ( .D(conv_inst_N272), .CK(i_clk), .RN(n7747), .Q(conv_inst_conv_4_r[2]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_2_ ( .D(conv_inst_N210), .CK(i_clk), .RN(
        n7766), .Q(conv_inst_data_bcd_4_r[2]) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_5_ ( .D(conv_inst_N140), .CK(i_clk), .RN(
        n7784), .Q(conv_inst_data_bcd_2_r[5]) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_8_ ( .D(conv_inst_N216), .CK(i_clk), .RN(
        n7747), .Q(conv_inst_data_bcd_4_r[8]) );
  DFFRX2 conv_inst_conv_4_r_reg_8_ ( .D(conv_inst_N278), .CK(i_clk), .RN(n7745), .Q(conv_inst_conv_4_r[8]), .QN(conv_inst_n47) );
  DFFRX2 conv_inst_conv_4_r_reg_9_ ( .D(conv_inst_N279), .CK(i_clk), .RN(n7784), .Q(conv_inst_conv_4_r[9]), .QN(conv_inst_n132) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_1_ ( .D(conv_inst_N136), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_data_bcd_2_r[1]) );
  DFFRX2 conv_inst_conv_2_r_reg_1_ ( .D(conv_inst_N237), .CK(i_clk), .RN(n7759), .Q(conv_inst_conv_2_r[1]) );
  DFFRHQX1 conv_inst_conv_4_r_reg_6_ ( .D(conv_inst_N276), .CK(i_clk), .RN(
        n7745), .Q(conv_inst_n50) );
  DFFRHQX1 conv_inst_data_bcd_4_r_reg_4_ ( .D(conv_inst_N212), .CK(i_clk), 
        .RN(n7772), .Q(conv_inst_n34) );
  DFFRX2 conv_inst_conv_4_r_reg_10_ ( .D(conv_inst_N280), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_conv_4_r[10]), .QN(conv_inst_n242) );
  DFFRX1 conv_inst_data_bcd_r_reg_1_ ( .D(conv_inst_data_bcd_w[1]), .CK(i_clk), 
        .RN(n7782), .QN(n4542) );
  DFFRHQX1 conv_inst_data_abc_3_r_reg_0_ ( .D(conv_inst_N1970), .CK(i_clk), 
        .RN(n7782), .Q(conv_inst_data_abc_3_r[0]) );
  DFFRHQX1 conv_inst_data_bcd_2_r_reg_2_ ( .D(conv_inst_N137), .CK(i_clk), 
        .RN(n7772), .Q(conv_inst_n48) );
  DFFRHQX1 conv_inst_data_bcd_2_r_reg_7_ ( .D(conv_inst_N142), .CK(i_clk), 
        .RN(n7772), .Q(conv_inst_n41) );
  DFFRX1 conv_inst_o_out_valid_ready_r_reg ( .D(n7731), .CK(i_clk), .RN(n7750), 
        .QN(n7522) );
  DFFRHQX1 conv_inst_data_bcd_r_reg_4_ ( .D(conv_inst_data_bcd_w[4]), .CK(
        i_clk), .RN(n7773), .Q(conv_inst_n95) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_0_ ( .D(conv_inst_N66), .CK(i_clk), 
        .RN(n7783), .Q(conv_result_w[0]) );
  DFFRX4 conv_inst_cnt_reg_0_ ( .D(conv_inst_N56), .CK(i_clk), .RN(n7777), .Q(
        n7545), .QN(conv_inst_n28) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__5_ ( .D(
        median_sobel_inst_n562), .CK(i_clk), .RN(n7759), .Q(
        median_sobel_inst_n66), .QN(n7539) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__6_ ( .D(
        median_sobel_inst_n561), .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_n72), .QN(n7520) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__3_ ( .D(
        median_sobel_inst_n604), .CK(i_clk), .RN(n7757), .QN(
        median_sobel_inst_n921) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__1_ ( .D(
        median_sobel_inst_n606), .CK(i_clk), .RN(n7759), .QN(
        median_sobel_inst_n926) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__5_ ( .D(
        median_sobel_inst_n594), .CK(i_clk), .RN(n7758), .Q(n4316), .QN(
        median_sobel_inst_n933) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__0_ ( .D(
        median_sobel_inst_n599), .CK(i_clk), .RN(n7757), .Q(
        median_sobel_inst_n65), .QN(n7659) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__1_ ( .D(
        median_sobel_inst_n598), .CK(i_clk), .RN(n7759), .QN(
        median_sobel_inst_n935) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__2_ ( .D(
        median_sobel_inst_n565), .CK(i_clk), .RN(n7759), .QN(
        median_sobel_inst_n449) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__6_ ( .D(
        median_sobel_inst_n601), .CK(i_clk), .RN(n7758), .QN(
        median_sobel_inst_n413) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__4_ ( .D(
        median_sobel_inst_n595), .CK(i_clk), .RN(n7757), .Q(n4546), .QN(
        median_sobel_inst_n423) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__7_ ( .D(n7614), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n965) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__0_ ( .D(n7609), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n966) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__0_ ( .D(n7617), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n43) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__3_ ( .D(
        median_sobel_inst_n620), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n1336) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__2_ ( .D(n7605), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1284) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__1_ ( .D(n7616), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1005) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__1_ ( .D(n7607), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n42) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__7_ ( .D(
        median_sobel_inst_n640), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n1375) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__6_ ( .D(
        median_sobel_inst_n625), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n1342) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__6_ ( .D(n7613), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n841) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__0_ ( .D(n7612), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n48) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__2_ ( .D(n7599), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n832) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__4_ ( .D(
        median_sobel_inst_n643), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n1367) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__5_ ( .D(
        median_sobel_inst_n642), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n1369) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__4_ ( .D(n7602), .CK(
        i_clk), .RN(n7766), .Q(n4313), .QN(median_sobel_inst_n39) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__5_ ( .D(
        median_sobel_inst_n634), .CK(i_clk), .RN(n7759), .Q(
        median_sobel_inst_n1370), .QN(n4547) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__3_ ( .D(
        median_sobel_inst_n644), .CK(i_clk), .RN(n7781), .Q(
        median_sobel_inst_n1365) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__0_ ( .D(n7615), .CK(
        i_clk), .RN(n7780), .QN(median_sobel_inst_n51) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__4_ ( .D(
        median_sobel_inst_n619), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n1339) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__4_ ( .D(
        median_sobel_inst_n555), .CK(i_clk), .RN(n7752), .Q(
        median_sobel_inst_n1286) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__0_ ( .D(n7608), .CK(
        i_clk), .RN(n7751), .QN(median_sobel_inst_n36) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__6_ ( .D(
        median_sobel_inst_n617), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n1343) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__0_ ( .D(
        median_sobel_inst_n1474), .CK(i_clk), .RN(n7748), .Q(n7635), .QN(
        median_sobel_inst_n262) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__4_ ( .D(
        median_sobel_inst_n1470), .CK(i_clk), .RN(n7780), .QN(
        median_sobel_inst_n266) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__4_ ( .D(
        median_sobel_inst_n1478), .CK(i_clk), .RN(n7750), .Q(n7623), .QN(
        median_sobel_inst_n274) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__5_ ( .D(
        median_sobel_inst_n1477), .CK(i_clk), .RN(n7748), .Q(n7625), .QN(
        median_sobel_inst_n275) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__6_ ( .D(
        median_sobel_inst_n1476), .CK(i_clk), .RN(n7745), .QN(
        median_sobel_inst_n276) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__2_ ( .D(
        median_sobel_inst_n1472), .CK(i_clk), .RN(n7746), .Q(n7628), .QN(
        median_sobel_inst_n264) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__5_ ( .D(
        median_sobel_inst_n1469), .CK(i_clk), .RN(n7778), .QN(
        median_sobel_inst_n267) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[6]), .CK(i_clk), .RN(n7752), .QN(
        median_sobel_inst_n270) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__6_ ( .D(
        median_sobel_inst_n1485), .CK(i_clk), .RN(n7765), .QN(
        median_sobel_inst_n196) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__1_ ( .D(n7508), .CK(
        i_clk), .RN(n7766), .QN(median_sobel_inst_n434) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[1]), .CK(i_clk), .RN(n7754), .QN(
        median_sobel_inst_n216) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__4_ ( .D(
        median_sobel_inst_n1445), .CK(i_clk), .RN(n7766), .QN(
        median_sobel_inst_n234) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[7]), .CK(i_clk), .RN(n7764), .QN(
        median_sobel_inst_n192) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__1_ ( .D(
        median_sobel_inst_n1492), .CK(i_clk), .RN(n7765), .Q(n7678), .QN(
        median_sobel_inst_n199) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__7_ ( .D(
        median_sobel_inst_n1483), .CK(i_clk), .RN(n7766), .Q(n7626), .QN(
        median_sobel_inst_n197) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__4_ ( .D(
        median_sobel_inst_n1489), .CK(i_clk), .RN(n7780), .Q(n7622), .QN(
        median_sobel_inst_n194) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[8]), .CK(i_clk), .RN(n7759), .QN(
        median_sobel_inst_n193) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__7_ ( .D(
        median_sobel_inst_n1482), .CK(i_clk), .RN(n7764), .Q(n7629), .QN(
        median_sobel_inst_n205) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__2_ ( .D(
        median_sobel_inst_n1491), .CK(i_clk), .RN(n7765), .Q(n7679), .QN(
        median_sobel_inst_n200) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__1_ ( .D(
        median_sobel_inst_n1450), .CK(i_clk), .RN(n7766), .QN(
        median_sobel_inst_n239) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__4_ ( .D(
        median_sobel_inst_n1488), .CK(i_clk), .RN(n7761), .Q(n7620), .QN(
        median_sobel_inst_n202) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__2_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[4]), .CK(i_clk), .RN(n7780), .Q(
        n7618), .QN(median_sobel_inst_n248) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__6_ ( .D(
        median_sobel_inst_n1440), .CK(i_clk), .RN(n7755), .QN(
        median_sobel_inst_n244) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__4_ ( .D(
        median_sobel_inst_n1444), .CK(i_clk), .RN(n7749), .Q(n7619), .QN(
        median_sobel_inst_n242) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__6_ ( .D(n7518), .CK(
        i_clk), .RN(n7749), .QN(median_sobel_inst_n971) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__3_ ( .D(
        median_sobel_inst_n1490), .CK(i_clk), .RN(n7746), .QN(
        median_sobel_inst_n201) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__2_ ( .D(
        median_sobel_inst_n1480), .CK(i_clk), .RN(n7745), .QN(
        median_sobel_inst_n272) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__2_ ( .D(
        median_sobel_inst_n1448), .CK(i_clk), .RN(n7767), .Q(n7621), .QN(
        median_sobel_inst_n240) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__2_ ( .D(n7598), .CK(
        i_clk), .RN(n7768), .QN(median_sobel_inst_n972) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__2_ ( .D(
        median_sobel_inst_n1422), .CK(i_clk), .RN(n7767), .Q(n7627), .QN(
        median_sobel_inst_n208) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__1_ ( .D(
        median_sobel_inst_n558), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n999) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__0_ ( .D(
        median_sobel_inst_n527), .CK(i_clk), .RN(n7745), .Q(
        median_sobel_inst_n1013) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__2_ ( .D(
        median_sobel_inst_n557), .CK(i_clk), .RN(n7745), .Q(
        median_sobel_inst_n1015) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__3_ ( .D(
        median_sobel_inst_n636), .CK(i_clk), .RN(n7751), .Q(
        median_sobel_inst_n1017) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__6_ ( .D(
        median_sobel_inst_n577), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n1022) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__5_ ( .D(
        median_sobel_inst_n610), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n1026) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__2_ ( .D(
        median_sobel_inst_n589), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n1043) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__3_ ( .D(
        median_sobel_inst_n572), .CK(i_clk), .RN(n7780), .Q(
        median_sobel_inst_n60), .QN(n7633) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__6_ ( .D(
        median_sobel_inst_n609), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n1090) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__7_ ( .D(n7601), .CK(
        i_clk), .RN(n7751), .Q(n3597), .QN(median_sobel_inst_n1376) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__0_ ( .D(
        median_sobel_inst_n567), .CK(i_clk), .RN(n7756), .Q(n3579), .QN(
        median_sobel_inst_n1093) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__7_ ( .D(
        median_sobel_inst_n560), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n1095) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__4_ ( .D(
        median_sobel_inst_n603), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n1098) );
  DFFRHQX1 median_sobel_inst_cs_reg_1_ ( .D(median_sobel_inst_ns[1]), .CK(
        i_clk), .RN(n7772), .Q(median_sobel_inst_n1100) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__7_ ( .D(
        median_sobel_inst_n552), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n1102) );
  DFFRHQX8 median_sobel_inst_cnt_reg_1_ ( .D(median_sobel_inst_N110), .CK(
        i_clk), .RN(n7769), .Q(median_sobel_inst_n1147) );
  DFFRHQX8 median_sobel_inst_cnt_reg_0_ ( .D(median_sobel_inst_N109), .CK(
        i_clk), .RN(n7782), .Q(median_sobel_inst_n1144) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__2_ ( .D(
        median_sobel_inst_n581), .CK(i_clk), .RN(n7745), .Q(
        median_sobel_inst_n1109) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__3_ ( .D(n7610), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n916) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__5_ ( .D(
        median_sobel_inst_n586), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n993) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__7_ ( .D(n7550), .CK(
        i_clk), .RN(n7783), .Q(n3594), .QN(median_sobel_inst_n1154) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__6_ ( .D(n7562), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1164) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__7_ ( .D(n7563), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1163) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__3_ ( .D(
        median_sobel_inst_n588), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n80) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__7_ ( .D(
        median_sobel_inst_n520), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n973) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__6_ ( .D(n7570), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n929) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__4_ ( .D(n7517), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1160) );
  DFFRX2 median_sobel_inst_cnt_reg_3_ ( .D(median_sobel_inst_N112), .CK(i_clk), 
        .RN(n7756), .Q(n7547), .QN(median_sobel_inst_n181) );
  DFFRHQX1 median_sobel_inst_med_sobel_r_reg ( .D(median_sobel_inst_n395), 
        .CK(i_clk), .RN(n7773), .Q(median_sobel_inst_n115) );
  DFFRX2 median_sobel_inst_cnt_reg_4_ ( .D(median_sobel_inst_N113), .CK(i_clk), 
        .RN(n7754), .Q(median_sobel_inst_cnt_4_), .QN(median_sobel_inst_n399)
         );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__0_ ( .D(n7603), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n927) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__2_ ( .D(n7596), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n928) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__6_ ( .D(n7516), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1167) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__2_ ( .D(n7595), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n917) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__4_ ( .D(n7507), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1155) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__5_ ( .D(n7515), .CK(
        i_clk), .RN(n7783), .Q(n3586), .QN(median_sobel_inst_n1168) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_0__1_ ( .D(n7611), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n941) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__1_ ( .D(n7597), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n1152) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__5_ ( .D(n7506), .CK(
        i_clk), .RN(n7783), .QN(median_sobel_inst_n922) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__4_ ( .D(
        median_sobel_inst_n523), .CK(i_clk), .RN(n7746), .Q(
        median_sobel_inst_n733) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__1_ ( .D(
        median_sobel_inst_n526), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n727) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__3_ ( .D(
        median_sobel_inst_n580), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n76) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__1_ ( .D(
        median_sobel_inst_n534), .CK(i_clk), .RN(n7748), .Q(
        median_sobel_inst_n123) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__4_ ( .D(
        median_sobel_inst_n627), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n89) );
  DFFRHQX1 median_sobel_inst_out_valid_r_reg ( .D(median_sobel_inst_n1033), 
        .CK(i_clk), .RN(n7753), .Q(med_out_valid_w) );
  DFFRX1 median_sobel_inst_angle_reg_2__1_ ( .D(median_sobel_inst_n512), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_angle[5]) );
  DFFRX1 median_sobel_inst_angle_reg_2__0_ ( .D(median_sobel_inst_n516), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_angle[4]) );
  DFFRX1 median_sobel_inst_angle_reg_3__0_ ( .D(median_sobel_inst_n519), .CK(
        i_clk), .RN(n7781), .Q(median_sobel_inst_angle[6]) );
  DFFRX1 median_sobel_inst_G_reg_3__3_ ( .D(median_sobel_inst_n499), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[36]) );
  DFFRX1 median_sobel_inst_G_reg_3__2_ ( .D(median_sobel_inst_n503), .CK(i_clk), .RN(n7749), .Q(median_sobel_inst_G[35]) );
  DFFRX1 median_sobel_inst_G_reg_3__1_ ( .D(median_sobel_inst_n507), .CK(i_clk), .RN(n7751), .Q(median_sobel_inst_G[34]) );
  DFFRX1 median_sobel_inst_angle_reg_0__0_ ( .D(median_sobel_inst_n518), .CK(
        i_clk), .RN(n7779), .Q(median_sobel_inst_angle[0]) );
  DFFRX1 median_sobel_inst_G_reg_0__9_ ( .D(median_sobel_inst_n474), .CK(i_clk), .RN(n7784), .Q(median_sobel_inst_G[9]) );
  DFFRX1 median_sobel_inst_G_reg_0__8_ ( .D(median_sobel_inst_n478), .CK(i_clk), .RN(n7745), .Q(median_sobel_inst_G[8]), .QN(n3572) );
  DFFRX1 median_sobel_inst_G_reg_0__7_ ( .D(median_sobel_inst_n482), .CK(i_clk), .RN(n7748), .Q(median_sobel_inst_G[7]), .QN(n3598) );
  DFFRX1 median_sobel_inst_G_reg_0__10_ ( .D(median_sobel_inst_n470), .CK(
        i_clk), .RN(n7780), .Q(median_sobel_inst_G[10]), .QN(n3601) );
  DFFRX1 median_sobel_inst_G_reg_0__6_ ( .D(median_sobel_inst_n486), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[6]) );
  DFFRX1 median_sobel_inst_G_reg_0__5_ ( .D(median_sobel_inst_n490), .CK(i_clk), .RN(n7754), .Q(median_sobel_inst_G[5]) );
  DFFRX1 median_sobel_inst_G_reg_0__4_ ( .D(median_sobel_inst_n494), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[4]) );
  DFFRX1 median_sobel_inst_G_reg_0__3_ ( .D(median_sobel_inst_n498), .CK(i_clk), .RN(n7755), .Q(median_sobel_inst_G[3]) );
  DFFRX1 median_sobel_inst_G_reg_0__2_ ( .D(median_sobel_inst_n502), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[2]) );
  DFFRX1 median_sobel_inst_G_reg_0__1_ ( .D(median_sobel_inst_n506), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[1]) );
  DFFRX1 median_sobel_inst_G_reg_3__0_ ( .D(median_sobel_inst_n511), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[33]) );
  DFFRX1 median_sobel_inst_G_reg_0__0_ ( .D(median_sobel_inst_n510), .CK(i_clk), .RN(n7758), .Q(median_sobel_inst_G[0]) );
  DFFRX1 median_sobel_inst_angle_reg_0__1_ ( .D(median_sobel_inst_n514), .CK(
        i_clk), .RN(n7769), .Q(median_sobel_inst_angle[1]) );
  DFFRX1 median_sobel_inst_G_reg_1__8_ ( .D(median_sobel_inst_n477), .CK(i_clk), .RN(n7757), .Q(median_sobel_inst_G[19]) );
  DFFRX1 median_sobel_inst_G_reg_1__7_ ( .D(median_sobel_inst_n481), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[18]) );
  DFFRX1 median_sobel_inst_G_reg_1__5_ ( .D(median_sobel_inst_n489), .CK(i_clk), .RN(n7759), .Q(median_sobel_inst_G[16]) );
  DFFRX1 median_sobel_inst_G_reg_1__4_ ( .D(median_sobel_inst_n493), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[15]) );
  DFFRX1 median_sobel_inst_G_reg_1__2_ ( .D(median_sobel_inst_n501), .CK(i_clk), .RN(n7765), .Q(median_sobel_inst_G[13]) );
  DFFRX1 median_sobel_inst_G_reg_1__1_ ( .D(median_sobel_inst_n505), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[12]) );
  DFFRX1 median_sobel_inst_G_reg_1__0_ ( .D(median_sobel_inst_n509), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[11]) );
  DFFRX1 median_sobel_inst_G_reg_2__8_ ( .D(median_sobel_inst_n476), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[30]) );
  DFFRX1 median_sobel_inst_G_reg_2__7_ ( .D(median_sobel_inst_n480), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[29]) );
  DFFRX1 median_sobel_inst_G_reg_2__5_ ( .D(median_sobel_inst_n488), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[27]) );
  DFFRX1 median_sobel_inst_G_reg_2__4_ ( .D(median_sobel_inst_n492), .CK(i_clk), .RN(n7769), .Q(median_sobel_inst_G[26]) );
  DFFRX1 median_sobel_inst_G_reg_2__2_ ( .D(median_sobel_inst_n500), .CK(i_clk), .RN(n7766), .Q(median_sobel_inst_G[24]) );
  DFFRX1 median_sobel_inst_G_reg_2__1_ ( .D(median_sobel_inst_n504), .CK(i_clk), .RN(n7752), .Q(median_sobel_inst_G[23]) );
  DFFRX1 median_sobel_inst_G_reg_2__0_ ( .D(median_sobel_inst_n508), .CK(i_clk), .RN(n7758), .Q(median_sobel_inst_G[22]) );
  DFFRX1 median_sobel_inst_angle_reg_3__1_ ( .D(median_sobel_inst_n515), .CK(
        i_clk), .RN(n7780), .Q(median_sobel_inst_angle[7]) );
  DFFRX1 median_sobel_inst_G_reg_2__10_ ( .D(median_sobel_inst_n468), .CK(
        i_clk), .RN(n7781), .Q(median_sobel_inst_G[32]) );
  DFFRX1 median_sobel_inst_G_reg_2__9_ ( .D(median_sobel_inst_n472), .CK(i_clk), .RN(n7780), .Q(median_sobel_inst_G[31]) );
  DFFRX1 median_sobel_inst_G_reg_2__6_ ( .D(median_sobel_inst_n484), .CK(i_clk), .RN(n7745), .Q(median_sobel_inst_G[28]) );
  DFFRX1 median_sobel_inst_G_reg_2__3_ ( .D(median_sobel_inst_n496), .CK(i_clk), .RN(n7766), .Q(median_sobel_inst_G[25]) );
  DFFRX1 median_sobel_inst_angle_reg_1__1_ ( .D(median_sobel_inst_n513), .CK(
        i_clk), .RN(n7748), .Q(median_sobel_inst_angle[3]) );
  DFFRX1 median_sobel_inst_G_reg_3__8_ ( .D(median_sobel_inst_n479), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[41]) );
  DFFRX1 median_sobel_inst_G_reg_3__7_ ( .D(median_sobel_inst_n483), .CK(i_clk), .RN(n7781), .Q(median_sobel_inst_G[40]) );
  DFFRX1 median_sobel_inst_G_reg_3__5_ ( .D(median_sobel_inst_n491), .CK(i_clk), .RN(n7750), .Q(median_sobel_inst_G[38]) );
  DFFRX1 median_sobel_inst_G_reg_3__4_ ( .D(median_sobel_inst_n495), .CK(i_clk), .RN(n7758), .Q(median_sobel_inst_G[37]) );
  DFFRX1 median_sobel_inst_angle_reg_1__0_ ( .D(median_sobel_inst_n517), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_angle[2]) );
  DFFRX1 median_sobel_inst_G_reg_3__10_ ( .D(median_sobel_inst_n471), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_G[43]) );
  DFFRX1 median_sobel_inst_G_reg_1__10_ ( .D(median_sobel_inst_n469), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_G[21]) );
  DFFRX1 median_sobel_inst_G_reg_1__9_ ( .D(median_sobel_inst_n473), .CK(i_clk), .RN(n7778), .Q(median_sobel_inst_G[20]) );
  DFFRX1 median_sobel_inst_G_reg_3__6_ ( .D(median_sobel_inst_n487), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[39]) );
  DFFRX1 median_sobel_inst_G_reg_1__6_ ( .D(median_sobel_inst_n485), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[17]) );
  DFFRX1 median_sobel_inst_G_reg_3__9_ ( .D(median_sobel_inst_n475), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[42]) );
  DFFRX1 median_sobel_inst_G_reg_1__3_ ( .D(median_sobel_inst_n497), .CK(i_clk), .RN(n7783), .Q(median_sobel_inst_G[14]) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__2_ ( .D(
        median_sobel_inst_n637), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n85) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__0_ ( .D(
        median_sobel_inst_n575), .CK(i_clk), .RN(n7756), .QN(
        median_sobel_inst_n443) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_c2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n764), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_out_data_w[7]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[7]), .CK(i_clk), .RN(
        n7763), .Q(median_sobel_inst_u_median_filter_submodule_n271) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[0]), .CK(i_clk), .RN(
        n7747), .QN(median_sobel_inst_u_median_filter_submodule_n789) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_3_ ( .D(
        median_sobel_inst_data_e_r[3]), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_u_median_filter_submodule_n1501) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_1_ ( .D(
        median_sobel_inst_n436), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p8_r_reg_2_ ( .D(
        median_sobel_inst_data_h_r[2]), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n927) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a14_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a14_w), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_median_filter_submodule_n1068), .QN(
        n7532) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n770), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_median_filter_submodule_n1159), .QN(
        n7604) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[6]), .CK(i_clk), .RN(
        n7754), .Q(n4548), .QN(
        median_sobel_inst_u_median_filter_submodule_n904) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[2]), .CK(i_clk), .RN(
        n7747), .Q(median_sobel_inst_u_median_filter_submodule_n228) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[4]), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_median_filter_submodule_net97853), .QN(
        n7564) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[4]), .CK(i_clk), .RN(
        n7769), .Q(median_sobel_inst_u_median_filter_submodule_net52783), .QN(
        n7554) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a47_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a47_w), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_median_filter_submodule_n1431), .QN(
        n7544) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[1]), .CK(i_clk), .RN(
        n7755), .QN(median_sobel_inst_u_median_filter_submodule_n790) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[7]), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_median_filter_submodule_net94185), .QN(
        n7558) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[1]), .CK(i_clk), .RN(
        n7761), .Q(median_sobel_inst_u_median_filter_submodule_n128) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[6]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_n263) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n828), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_median_filter_submodule_b1_r[3]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_0_ ( .D(n3557), 
        .CK(i_clk), .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n907) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_5_ ( .D(
        median_sobel_inst_data_b_r[5]), .CK(i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n857) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_0_ ( .D(
        median_sobel_inst_data_b_r[0]), .CK(i_clk), .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n866) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_6_ ( .D(
        median_sobel_inst_data_b_r[6]), .CK(i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n851) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_4_ ( .D(
        median_sobel_inst_data_g_r[4]), .CK(i_clk), .RN(n7759), .Q(n7634), 
        .QN(median_sobel_inst_u_median_filter_submodule_n850) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_7_ ( .D(
        median_sobel_inst_data_h_r[7]), .CK(i_clk), .RN(n7765), .QN(
        median_sobel_inst_u_median_filter_submodule_n871) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_7_ ( .D(n3558), 
        .CK(i_clk), .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n860) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_6_ ( .D(n3820), 
        .CK(i_clk), .RN(n7757), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n870) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_1_ ( .D(
        median_sobel_inst_data_i_r[1]), .CK(i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n852) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_3_ ( .D(
        median_sobel_inst_data_d_r[3]), .CK(i_clk), .RN(n7766), .QN(
        median_sobel_inst_u_median_filter_submodule_n908) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_7_ ( .D(n3556), 
        .CK(i_clk), .RN(n7765), .QN(
        median_sobel_inst_u_median_filter_submodule_n855) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n7752), .QN(
        median_sobel_inst_u_median_filter_submodule_n849) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p2_r_reg_2_ ( .D(
        median_sobel_inst_data_b_r[2]), .CK(i_clk), .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n858) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_6_ ( .D(
        median_sobel_inst_data_e_r[6]), .CK(i_clk), .RN(n7766), .QN(
        median_sobel_inst_u_median_filter_submodule_n879) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_0_ ( .D(
        median_sobel_inst_data_e_r[0]), .CK(i_clk), .RN(n7769), .QN(
        median_sobel_inst_u_median_filter_submodule_n886) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_5_ ( .D(
        median_sobel_inst_data_e_r[5]), .CK(i_clk), .RN(n7765), .QN(
        median_sobel_inst_u_median_filter_submodule_n880) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_7_ ( .D(
        median_sobel_inst_data_e_r[7]), .CK(i_clk), .RN(n7761), .QN(
        median_sobel_inst_u_median_filter_submodule_n909) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_1_ ( .D(
        median_sobel_inst_data_e_r[1]), .CK(i_clk), .RN(n7764), .QN(
        median_sobel_inst_u_median_filter_submodule_n878) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_2_ ( .D(
        median_sobel_inst_data_c_r[2]), .CK(i_clk), .RN(n7766), .QN(
        median_sobel_inst_u_median_filter_submodule_n853) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_3_ ( .D(
        median_sobel_inst_n425), .CK(i_clk), .RN(n7765), .Q(n7631), .QN(
        median_sobel_inst_u_median_filter_submodule_n873) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_0_ ( .D(n3559), 
        .CK(i_clk), .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n869) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_5_ ( .D(
        median_sobel_inst_data_g_r[5]), .CK(i_clk), .RN(n7764), .Q(n7632), 
        .QN(median_sobel_inst_u_median_filter_submodule_n864) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_1_ ( .D(
        median_sobel_inst_n979), .CK(i_clk), .RN(n7766), .Q(n7648), .QN(
        median_sobel_inst_u_median_filter_submodule_n856) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[0]), .CK(i_clk), .RN(
        n7745), .Q(median_sobel_inst_u_median_filter_submodule_n156) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .CK(i_clk), 
        .RN(n7784), .Q(median_sobel_inst_u_sobel_gradient_submodule_n383) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N141), .CK(i_clk), 
        .RN(n7745), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N67), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_sobel_gradient_submodule_n60) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N34), .CK(i_clk), .RN(
        n7747), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N14), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]), .CK(i_clk), 
        .RN(n7781), .QN(n7542) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .CK(i_clk), 
        .RN(n7752), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N171), .CK(i_clk), .RN(
        n7761), .Q(median_sobel_inst_u_sobel_gradient_submodule_n561) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N162), .CK(i_clk), .RN(
        n7769), .QN(median_sobel_inst_u_sobel_gradient_submodule_n107) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N163), .CK(i_clk), .RN(
        n7769), .QN(median_sobel_inst_u_sobel_gradient_submodule_n109) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N164), .CK(i_clk), .RN(
        n7769), .QN(median_sobel_inst_u_sobel_gradient_submodule_n71) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N165), .CK(i_clk), .RN(
        n7769), .QN(median_sobel_inst_u_sobel_gradient_submodule_n69) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]), .CK(i_clk), 
        .RN(n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_n524) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]), .CK(i_clk), 
        .RN(n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_n523), 
        .QN(n7675) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]), .CK(i_clk), 
        .RN(n7769), .QN(median_sobel_inst_u_sobel_gradient_submodule_n656) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_12_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .CK(
        i_clk), .RN(n7769), .Q(n3600), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n654) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]), 
        .CK(i_clk), .RN(n7769), .Q(n7537), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n33) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]), 
        .CK(i_clk), .RN(n7769), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n28) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .CK(
        i_clk), .RN(n7769), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n577) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_3_ ( .D(
        median_sobel_inst_data_f_r[3]), .CK(i_clk), .RN(n7784), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n377) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N10), .CK(i_clk), .RN(
        n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]), 
        .CK(i_clk), .RN(n7747), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n79) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .CK(
        i_clk), .RN(n7784), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n396) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N168), .CK(i_clk), 
        .RN(n7749), .Q(median_sobel_inst_u_sobel_gradient_submodule_n404) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N710), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_5_ ( .D(
        median_sobel_inst_data_c_r[5]), .CK(i_clk), .RN(n7784), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n424) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_4_ ( .D(
        median_sobel_inst_data_b_r[4]), .CK(i_clk), .RN(n7782), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n859) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N220), .CK(i_clk), .RN(
        n7752), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_2_ ( .D(
        median_sobel_inst_data_f_r[2]), .CK(i_clk), .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n924) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N122), .CK(i_clk), .RN(
        n7752), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N121), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N690), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]), .CK(i_clk), 
        .RN(n7757), .QN(median_sobel_inst_u_sobel_gradient_submodule_n7) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N750), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]), .CK(i_clk), 
        .RN(n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N124), .CK(i_clk), .RN(
        n7757), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N120), .CK(i_clk), .RN(
        n7758), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N166), .CK(i_clk), 
        .RN(n7773), .Q(median_sobel_inst_u_sobel_gradient_submodule_n413) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .CK(i_clk), 
        .RN(n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p4_r_reg_3_ ( .D(
        median_sobel_inst_data_d_r[3]), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n415) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N154), .CK(i_clk), 
        .RN(n7747), .Q(median_sobel_inst_u_sobel_gradient_submodule_n419) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]), .CK(i_clk), 
        .RN(n7750), .Q(median_sobel_inst_u_sobel_gradient_submodule_n421) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N300), .CK(i_clk), .RN(
        n7782), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N140), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N135), .CK(i_clk), .RN(
        n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5])
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]), .CK(i_clk), 
        .RN(n7773), .Q(median_sobel_inst_u_sobel_gradient_submodule_n428) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]), .CK(i_clk), 
        .RN(n7773), .Q(median_sobel_inst_u_sobel_gradient_submodule_n430) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_3_ ( .D(
        median_sobel_inst_n910), .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n877) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .CK(i_clk), 
        .RN(n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), 
        .QN(n3578) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N138), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N70), .CK(i_clk), .RN(
        n7746), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N68), .CK(i_clk), .RN(
        n7778), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N720), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N136), .CK(i_clk), .RN(
        n7745), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .CK(i_clk), 
        .RN(n7781), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .CK(i_clk), 
        .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]), .CK(i_clk), 
        .RN(n7780), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]), .CK(
        i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]), .CK(
        i_clk), .RN(n7780), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]), .CK(
        i_clk), .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]), .CK(
        i_clk), .RN(n7745), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]), .CK(
        i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]), .CK(
        i_clk), .RN(n7779), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]), .CK(
        i_clk), .RN(n7758), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]), .CK(
        i_clk), .RN(n7757), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]), .CK(
        i_clk), .RN(n7769), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]), .CK(i_clk), 
        .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]), .CK(
        i_clk), .RN(n7784), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[19]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]), .CK(
        i_clk), .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]), .CK(
        i_clk), .RN(n7783), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .CK(i_clk), 
        .RN(n7758), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]), .CK(
        i_clk), .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[17]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[0]), .CK(
        i_clk), .RN(n7758), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]), .CK(
        i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]), .CK(i_clk), 
        .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]), .CK(i_clk), 
        .RN(n7780), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]), .CK(i_clk), 
        .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]), .CK(i_clk), 
        .RN(n7769), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]), .CK(i_clk), 
        .RN(n7752), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay_reg_0__10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]), .CK(i_clk), 
        .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]), .CK(i_clk), 
        .RN(n7755), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]), .CK(i_clk), 
        .RN(n7769), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .CK(i_clk), 
        .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .CK(i_clk), 
        .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]), .CK(
        i_clk), .RN(n7755), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .CK(i_clk), 
        .RN(n7764), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .CK(i_clk), 
        .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_net94800), .CK(i_clk), 
        .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .CK(i_clk), 
        .RN(n7756), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_delay_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .CK(i_clk), 
        .RN(n7746), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N149), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_N165) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N111), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1080), .CK(i_clk), .RN(
        n7781), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1090), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N110), .CK(i_clk), .RN(
        n7764), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N114), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_4_ ( .D(
        median_sobel_inst_data_i_r[4]), .CK(i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n863) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_0_ ( .D(
        median_sobel_inst_data_i_r[0]), .CK(i_clk), .RN(n7781), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n867) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N147), .CK(i_clk), .RN(
        n7778), .Q(median_sobel_inst_u_sobel_gradient_submodule_N163) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N148), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_sobel_gradient_submodule_N164) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N150), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_N166) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3]), .CK(i_clk), 
        .RN(n7761), .Q(median_sobel_inst_u_sobel_gradient_submodule_N162) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n97), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1070), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4]), .CK(i_clk), 
        .RN(n7763), .Q(n7499) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_n419), .CK(i_clk), 
        .RN(n7779), .Q(median_sobel_inst_u_sobel_gradient_submodule_n66) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N166), .CK(i_clk), .RN(
        n7781), .QN(median_sobel_inst_u_sobel_gradient_submodule_n649) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N167), .CK(i_clk), 
        .RN(n7778), .Q(median_sobel_inst_u_sobel_gradient_submodule_n84) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N169), .CK(i_clk), 
        .RN(n7746), .Q(median_sobel_inst_u_sobel_gradient_submodule_n52) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[16]), 
        .CK(i_clk), .RN(n7745), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n72) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]), .CK(i_clk), 
        .RN(n7761), .QN(n7533) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]), .CK(i_clk), 
        .RN(n7747), .QN(n7538) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N6), .CK(i_clk), .RN(
        n7757), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N280), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]), .CK(i_clk), 
        .RN(n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]), .CK(i_clk), 
        .RN(n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]), .CK(i_clk), 
        .RN(n7764), .QN(n7535) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N16), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N39), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N19), .CK(i_clk), .RN(
        n7764), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_4_ ( .D(
        median_sobel_inst_data_f_r[4]), .CK(i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n911) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_15_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .CK(
        i_clk), .RN(n7766), .Q(n7624) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .CK(
        i_clk), .RN(n7753), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n655) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N740), .CK(i_clk), .RN(
        n7758), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_7_ ( .D(
        median_sobel_inst_data_b_r[7]), .CK(i_clk), .RN(n7764), .QN(
        median_sobel_inst_u_median_filter_submodule_n1500) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_delay_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[2]), .CK(i_clk), 
        .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_11_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N129), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[21]), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_sobel_data_w[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[20]), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_sobel_data_w[9]), .QN(n3602)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[12]), .CK(
        i_clk), .RN(n7780), .Q(median_sobel_inst_sobel_data_w[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[13]), .CK(
        i_clk), .RN(n7781), .Q(median_sobel_inst_sobel_data_w[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[14]), .CK(
        i_clk), .RN(n7761), .Q(median_sobel_inst_sobel_data_w[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[15]), .CK(
        i_clk), .RN(n7780), .Q(median_sobel_inst_sobel_data_w[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[16]), .CK(
        i_clk), .RN(n7781), .Q(median_sobel_inst_sobel_data_w[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[17]), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_sobel_data_w[6]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[18]), .CK(
        i_clk), .RN(n7779), .Q(median_sobel_inst_sobel_data_w[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[19]), .CK(
        i_clk), .RN(n7747), .Q(median_sobel_inst_sobel_data_w[8]), .QN(n3599)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_G_abs_delay[11]), .CK(
        i_clk), .RN(n7757), .Q(median_sobel_inst_sobel_data_w[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N440), .CK(i_clk), .RN(
        n7751), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N132), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N133), .CK(i_clk), .RN(
        n7778), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[3])
         );
  DFFRHQX8 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N100), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N128), .CK(i_clk), 
        .RN(n7745), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N126), .CK(i_clk), .RN(
        n7745), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8])
         );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N102), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .QN(n7584) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_9_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1250), .CK(i_clk), 
        .RN(n7745), .Q(median_sobel_inst_sobel_out_data_w[9]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_7_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1230), .CK(i_clk), 
        .RN(n7745), .Q(median_sobel_inst_sobel_out_data_w[7]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_5_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1210), .CK(i_clk), 
        .RN(n7745), .Q(median_sobel_inst_sobel_out_data_w[5]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_4_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1200), .CK(i_clk), 
        .RN(n7745), .Q(median_sobel_inst_sobel_out_data_w[4]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_2_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1180), .CK(i_clk), 
        .RN(n7748), .Q(median_sobel_inst_sobel_out_data_w[2]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_1_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1170), .CK(i_clk), 
        .RN(n7748), .Q(median_sobel_inst_sobel_out_data_w[1]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_8_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1240), .CK(i_clk), 
        .RN(n7745), .Q(median_sobel_inst_sobel_out_data_w[8]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n123), .CK(i_clk), .RN(
        n7768), .Q(n7637), .QN(median_sobel_inst_u_sober_compare_submodule_n71) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n125), .CK(i_clk), .RN(
        n7767), .Q(n7636), .QN(median_sobel_inst_u_sober_compare_submodule_n73) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n126), .CK(i_clk), .RN(
        n7768), .Q(n7657), .QN(median_sobel_inst_u_sober_compare_submodule_n74) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n119), .CK(i_clk), .RN(
        n7767), .Q(n7651), .QN(median_sobel_inst_u_sober_compare_submodule_n67) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n122), .CK(i_clk), .RN(
        n7768), .Q(n7641), .QN(median_sobel_inst_u_sober_compare_submodule_n70) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n120), .CK(i_clk), .RN(
        n7767), .Q(n7640), .QN(median_sobel_inst_u_sober_compare_submodule_n68) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n118), .CK(i_clk), .RN(
        n7768), .Q(n7639), .QN(median_sobel_inst_u_sober_compare_submodule_n66) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]), .CK(i_clk), 
        .RN(n7748), .Q(median_sobel_inst_u_sober_compare_submodule_net105227)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[4]), .CK(i_clk), 
        .RN(n7748), .Q(median_sobel_inst_u_sober_compare_submodule_net105122)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n95), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_sober_compare_submodule_n329) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]), .CK(i_clk), 
        .RN(n7745), .Q(median_sobel_inst_u_sober_compare_submodule_net101609)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sober_compare_submodule_net99802)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_net99662)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_net98026)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sober_compare_submodule_n338) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sober_compare_submodule_net96922)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n94), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n340) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sober_compare_submodule_net96764)
         );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]), .CK(i_clk), 
        .RN(n7747), .Q(median_sobel_inst_u_sober_compare_submodule_temp_a_r_9_) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n34) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n22) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n88), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n14) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n91), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n17) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n93), .CK(i_clk), .RN(
        n7768), .Q(median_sobel_inst_u_sober_compare_submodule_n250) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n90), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_sober_compare_submodule_n11) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n30) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_a_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]), .CK(i_clk), 
        .RN(n7767), .QN(median_sobel_inst_u_sober_compare_submodule_net109308)
         );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n135), .CK(i_clk), .RN(
        n7768), .Q(median_sobel_inst_u_sober_compare_submodule_n283) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n132), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n279) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n134), .CK(i_clk), .RN(
        n7768), .Q(median_sobel_inst_u_sober_compare_submodule_n296) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n130), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n293) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n99), .CK(i_clk), .RN(
        n7768), .Q(n7653), .QN(
        median_sobel_inst_u_sober_compare_submodule_n315) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n128), .CK(i_clk), .RN(
        n7768), .Q(n7649), .QN(
        median_sobel_inst_u_sober_compare_submodule_n300) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n102), .CK(i_clk), .RN(
        n7768), .Q(n7662), .QN(
        median_sobel_inst_u_sober_compare_submodule_n309) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n101), .CK(i_clk), .RN(
        n7768), .Q(n7661), .QN(
        median_sobel_inst_u_sober_compare_submodule_n308) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n127), .CK(i_clk), .RN(
        n7768), .Q(n7650), .QN(
        median_sobel_inst_u_sober_compare_submodule_n301) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n124), .CK(i_clk), .RN(
        n7768), .Q(n7638), .QN(
        median_sobel_inst_u_sober_compare_submodule_n303) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G2_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n121), .CK(i_clk), .RN(
        n7768), .Q(median_sobel_inst_u_sober_compare_submodule_n278) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n116), .CK(i_clk), .RN(
        n7768), .Q(n7655), .QN(
        median_sobel_inst_u_sober_compare_submodule_n318) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n117), .CK(i_clk), .RN(
        n7768), .Q(n7654), .QN(
        median_sobel_inst_u_sober_compare_submodule_n319) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n110), .CK(i_clk), .RN(
        n7768), .Q(n7652), .QN(
        median_sobel_inst_u_sober_compare_submodule_n302) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n113), .CK(i_clk), .RN(
        n7768), .Q(n7644), .QN(
        median_sobel_inst_u_sober_compare_submodule_n321) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n107), .CK(i_clk), .RN(
        n7768), .Q(n7645), .QN(
        median_sobel_inst_u_sober_compare_submodule_n312) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n112), .CK(i_clk), .RN(
        n7768), .Q(n7643), .QN(
        median_sobel_inst_u_sober_compare_submodule_n320) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n111), .CK(i_clk), .RN(
        n7768), .Q(n7647), .QN(
        median_sobel_inst_u_sober_compare_submodule_n311) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n114), .CK(i_clk), .RN(
        n7768), .Q(n7642), .QN(
        median_sobel_inst_u_sober_compare_submodule_n310) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n109), .CK(i_clk), .RN(
        n7767), .Q(n7646), .QN(
        median_sobel_inst_u_sober_compare_submodule_n313) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n115), .CK(i_clk), .RN(
        n7767), .Q(n7669), .QN(
        median_sobel_inst_u_sober_compare_submodule_n322) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n105), .CK(i_clk), .RN(
        n7767), .Q(n7667), .QN(
        median_sobel_inst_u_sober_compare_submodule_n306) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n106), .CK(i_clk), .RN(
        n7767), .Q(n7666), .QN(
        median_sobel_inst_u_sober_compare_submodule_n305) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n103), .CK(i_clk), .RN(
        n7767), .Q(n7660), .QN(
        median_sobel_inst_u_sober_compare_submodule_n323) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n100), .CK(i_clk), .RN(
        n7767), .Q(n7665), .QN(
        median_sobel_inst_u_sober_compare_submodule_n324) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n104), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n199) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n138), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n287) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n139), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n291), .QN(
        n3573) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n131), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n294) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n136), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n297), .QN(
        n3574) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n129), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n275) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_4_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n133), .CK(i_clk), .RN(
        n7767), .Q(median_sobel_inst_u_sober_compare_submodule_n295) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n96), .CK(i_clk), .RN(
        n7767), .Q(n7663), .QN(
        median_sobel_inst_u_sober_compare_submodule_n326) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_2_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n98), .CK(i_clk), .RN(
        n7767), .Q(n7664), .QN(
        median_sobel_inst_u_sober_compare_submodule_n325) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G3_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n108), .CK(i_clk), .RN(
        n7767), .Q(n7656), .QN(
        median_sobel_inst_u_sober_compare_submodule_n304) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n97), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sober_compare_submodule_n178) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_3_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1190), .CK(i_clk), 
        .RN(n7776), .Q(median_sobel_inst_sobel_out_data_w[3]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_0_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1160), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_sobel_out_data_w[0]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_6_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1220), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_sobel_out_data_w[6]) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_sobel_result_r_reg_10_ ( 
        .D(median_sobel_inst_u_sober_compare_submodule_N1260), .CK(i_clk), 
        .RN(n7773), .Q(median_sobel_inst_sobel_out_data_w[10]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[1]), .CK(i_clk), .RN(
        i_rst_n), .Q(median_sobel_inst_u_median_filter_submodule_n1200) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[4]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_n231) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[2]), .CK(i_clk), .RN(
        n7778), .Q(median_sobel_inst_u_median_filter_submodule_n224) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), 
        .QN(n3582) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .CK(i_clk), 
        .RN(n7749), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]) );
  DFFRHQX2 conv_inst_conv_1_r_reg_10_ ( .D(conv_inst_N229), .CK(i_clk), .RN(
        n7772), .Q(conv_inst_conv_1_r[10]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a2_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[7]), .CK(i_clk), .RN(
        n7746), .Q(median_sobel_inst_u_median_filter_submodule_n207) );
  DFFRX2 input_data_ready_r_reg_15_ ( .D(N732), .CK(i_clk), .RN(n7761), .Q(
        input_data_ready_r[15]), .QN(n7500) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[2]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_net99899) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[5]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net52893) );
  DFFRX4 x_delay_r_reg_2__0_ ( .D(x_delay_r_1__0_), .CK(i_clk), .RN(n7757), 
        .Q(x_delay_r_2__0_), .QN(n7735) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_10__1_ ( .D(
        median_sobel_inst_n566), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n121) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[7]), .CK(i_clk), .RN(
        n7745), .Q(median_sobel_inst_u_median_filter_submodule_n971) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_3_ ( .D(
        median_sobel_inst_n425), .CK(i_clk), .RN(n7747), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n433) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[3]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net52814) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[4]), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_median_filter_submodule_n174) );
  DFFRHQX2 conv_inst_data_abc_1_r_reg_1_ ( .D(conv_inst_N125), .CK(i_clk), 
        .RN(n7773), .Q(conv_inst_data_abc_1_r[1]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[5]), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_median_filter_submodule_n189) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .CK(i_clk), 
        .RN(n7782), .Q(median_sobel_inst_u_sobel_gradient_submodule_n435) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__2_ ( .D(
        median_sobel_inst_n1433), .CK(i_clk), .RN(n7783), .Q(n7730), .QN(
        median_sobel_inst_n224) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__5_ ( .D(
        median_sobel_inst_n1428), .CK(i_clk), .RN(n7783), .Q(n7729), .QN(
        median_sobel_inst_n227) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__6_ ( .D(
        median_sobel_inst_n1455), .CK(i_clk), .RN(n7781), .Q(n7728), .QN(
        median_sobel_inst_n260) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__6_ ( .D(
        median_sobel_inst_n1418), .CK(i_clk), .RN(n7780), .Q(n7727), .QN(
        median_sobel_inst_n212) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__2_ ( .D(
        median_sobel_inst_n1462), .CK(i_clk), .RN(n7747), .Q(n7726), .QN(
        median_sobel_inst_n256) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__3_ ( .D(
        median_sobel_inst_n1461), .CK(i_clk), .RN(n7782), .Q(n7725), .QN(
        median_sobel_inst_n257) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__1_ ( .D(
        median_sobel_inst_n1493), .CK(i_clk), .RN(n7757), .Q(n7724) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_3_ ( .D(
        median_sobel_inst_data_a_r[3]), .CK(i_clk), .RN(n7784), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n862) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__3_ ( .D(
        median_sobel_inst_n1432), .CK(i_clk), .RN(n7752), .Q(n7720), .QN(
        median_sobel_inst_n964) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__3_ ( .D(
        median_sobel_inst_n1413), .CK(i_clk), .RN(n7746), .Q(n7719), .QN(
        median_sobel_inst_n185) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_0_ ( .D(
        median_sobel_inst_data_c_r[0]), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n887) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__4_ ( .D(
        median_sobel_inst_n1431), .CK(i_clk), .RN(n7748), .Q(n7718), .QN(
        median_sobel_inst_n218) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__5_ ( .D(
        median_sobel_inst_n1443), .CK(i_clk), .RN(n7751), .Q(n7717), .QN(
        median_sobel_inst_n235) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__6_ ( .D(
        median_sobel_inst_n1456), .CK(i_clk), .RN(n7754), .Q(n7716), .QN(
        median_sobel_inst_n252) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__4_ ( .D(
        median_sobel_inst_n1430), .CK(i_clk), .RN(n7765), .Q(n7714), .QN(
        median_sobel_inst_n226) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__5_ ( .D(
        median_sobel_inst_n1411), .CK(i_clk), .RN(n7783), .Q(n7713), .QN(
        median_sobel_inst_n187) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__4_ ( .D(
        median_sobel_inst_n1412), .CK(i_clk), .RN(n7781), .Q(n7712), .QN(
        median_sobel_inst_n186) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__6_ ( .D(
        median_sobel_inst_n1426), .CK(i_clk), .RN(n7745), .Q(n7711), .QN(
        median_sobel_inst_n228) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__7_ ( .D(
        median_sobel_inst_n1409), .CK(i_clk), .RN(n7747), .Q(n7710), .QN(
        median_sobel_inst_n189) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__5_ ( .D(
        median_sobel_inst_n1419), .CK(i_clk), .RN(n7784), .Q(n7709), .QN(
        median_sobel_inst_n211) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__6_ ( .D(
        median_sobel_inst_n1427), .CK(i_clk), .RN(n7778), .Q(n7708), .QN(
        median_sobel_inst_n220) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__5_ ( .D(
        median_sobel_inst_n1457), .CK(i_clk), .RN(n7779), .Q(n7707), .QN(
        median_sobel_inst_n259) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__7_ ( .D(
        median_sobel_inst_n1454), .CK(i_clk), .RN(n7754), .QN(n7703) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__1_ ( .D(
        median_sobel_inst_n1481), .CK(i_clk), .RN(n7756), .Q(n7701) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[3]), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n1082), .QN(n7700) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__0_ ( .D(
        median_sobel_inst_n1495), .CK(i_clk), .RN(n7753), .Q(
        median_sobel_inst_n1021), .QN(n7699) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__6_ ( .D(
        median_sobel_inst_n1484), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n1053), .QN(n7697) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__7_ ( .D(
        median_sobel_inst_n584), .CK(i_clk), .RN(n7756), .Q(n7696), .QN(
        median_sobel_inst_n940) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_G1_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n137), .CK(i_clk), .RN(
        n7783), .Q(n7695) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p1_r_reg_2_ ( .D(
        median_sobel_inst_n705), .CK(i_clk), .RN(n7782), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n1499) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__7_ ( .D(
        median_sobel_inst_n1467), .CK(i_clk), .RN(n7757), .Q(n7694), .QN(
        median_sobel_inst_n269) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_5_ ( .D(
        median_sobel_inst_n981), .CK(i_clk), .RN(n7769), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n915) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_0_ ( .D(
        median_sobel_inst_n975), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n1497) );
  DFFRX2 conv_inst_conv_1_r_reg_14_ ( .D(conv_inst_N233), .CK(i_clk), .RN(
        n7751), .Q(conv_inst_conv_1_r[14]), .QN(conv_inst_n246) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p4_r_reg_7_ ( .D(
        median_sobel_inst_data_d_r[7]), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .QN(
        median_sobel_inst_u_median_filter_submodule_n920) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_5_ ( .D(
        median_sobel_inst_data_i_r[5]), .CK(i_clk), .RN(n7748), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n891) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__6_ ( .D(
        median_sobel_inst_n1468), .CK(i_clk), .RN(n7759), .Q(n7688), .QN(
        median_sobel_inst_n268) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_1_ ( .D(
        median_sobel_inst_n707), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n917) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_5_ ( .D(
        median_sobel_inst_data_c_r[5]), .CK(i_clk), .RN(n7755), .Q(n7687), 
        .QN(median_sobel_inst_u_median_filter_submodule_n1502) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_2_ ( .D(
        median_sobel_inst_data_e_r[2]), .CK(i_clk), .RN(n7754), .Q(n7686), 
        .QN(median_sobel_inst_u_median_filter_submodule_n892) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__1_ ( .D(
        median_sobel_inst_n1473), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_n976), .QN(n7683) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p5_r_reg_4_ ( .D(
        median_sobel_inst_data_e_r[4]), .CK(i_clk), .RN(n7746), .Q(n7677), 
        .QN(median_sobel_inst_u_median_filter_submodule_n919) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__7_ ( .D(
        median_sobel_inst_n1475), .CK(i_clk), .RN(n7753), .Q(n7676), .QN(
        median_sobel_inst_n277) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p7_r_reg_7_ ( .D(
        median_sobel_inst_data_g_r[7]), .CK(i_clk), .RN(n7756), .Q(n7673), 
        .QN(median_sobel_inst_u_median_filter_submodule_n884) );
  DFFRX2 x_minus_one_r_reg_0_ ( .D(n7787), .CK(i_clk), .RN(n7765), .Q(
        x_minus_one_r[0]), .QN(n7600) );
  DFFRX4 conv_inst_conv_2_r_reg_3_ ( .D(conv_inst_N2390), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_conv_2_r[3]) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_angle2_r_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n92), .CK(i_clk), .RN(
        n7754), .Q(n7592), .QN(
        median_sobel_inst_u_sober_compare_submodule_n314) );
  DFFRX1 x_plus_two_r_reg_0_ ( .D(N760), .CK(i_clk), .RN(n7750), .Q(
        x_plus_two_r[0]), .QN(n7588) );
  DFFRX4 conv_inst_conv_1_r_reg_8_ ( .D(conv_inst_N227), .CK(i_clk), .RN(n7759), .Q(conv_inst_conv_1_r[8]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[7]), .CK(i_clk), .RN(
        n7754), .Q(n7586), .QN(
        median_sobel_inst_u_median_filter_submodule_n900) );
  DFFRX4 conv_inst_conv_1_r_reg_9_ ( .D(conv_inst_N228), .CK(i_clk), .RN(n7784), .Q(conv_inst_conv_1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5]), .CK(i_clk), 
        .RN(n7784), .Q(n7582) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__6_ ( .D(
        median_sobel_inst_n633), .CK(i_clk), .RN(n7778), .Q(
        median_sobel_inst_n1059), .QN(n7581) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_12_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N155), .CK(i_clk), 
        .RN(n7763), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[2]), .CK(i_clk), 
        .RN(n7759), .Q(n7574) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__6_ ( .D(
        median_sobel_inst_n585), .CK(i_clk), .RN(n7757), .Q(
        median_sobel_inst_n316), .QN(n7573) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__5_ ( .D(
        median_sobel_inst_n626), .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_n299), .QN(n7572) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N160), .CK(i_clk), .RN(
        n7782), .QN(n7571) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]), .CK(i_clk), 
        .RN(n7752), .QN(n7556) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]), .CK(i_clk), 
        .RN(n7766), .QN(n7549) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_4_ ( .D(
        median_sobel_inst_data_g_r[4]), .CK(i_clk), .RN(n7780), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n417) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]), .CK(i_clk), 
        .RN(n7759), .QN(n7534) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__0_ ( .D(
        median_sobel_inst_n1465), .CK(i_clk), .RN(n7778), .Q(n7526), .QN(
        median_sobel_inst_n254) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__1_ ( .D(
        median_sobel_inst_n1423), .CK(i_clk), .RN(n7781), .Q(n7525), .QN(
        median_sobel_inst_n207) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__5_ ( .D(
        median_sobel_inst_n1429), .CK(i_clk), .RN(n7779), .Q(n7524), .QN(
        median_sobel_inst_n219) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_8__3_ ( .D(
        median_sobel_inst_n1471), .CK(i_clk), .RN(n7755), .Q(n7523) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_6_ ( .D(
        median_sobel_inst_data_a_r[6]), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n861) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_r_reg_4_ ( .D(
        median_sobel_inst_n432), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n912) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]), 
        .CK(i_clk), .RN(n7751), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n353), .QN(n7503) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n388), .CK(i_clk), .RN(
        n7747), .Q(median_sobel_inst_u_sobel_gradient_submodule_N160) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N104), .CK(i_clk), .RN(
        n7781), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n174) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__0_ ( .D(
        median_sobel_inst_n1466), .CK(i_clk), .RN(n7749), .QN(
        median_sobel_inst_n246) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .CK(i_clk), 
        .RN(n7745), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[2]), .CK(i_clk), 
        .RN(n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_N161) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .CK(i_clk), 
        .RN(n7780), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_n60), .CK(i_clk), .RN(
        n7756), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .CK(i_clk), 
        .RN(n7781), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__1_ ( .D(
        median_sobel_inst_n1451), .CK(i_clk), .RN(n7749), .QN(
        median_sobel_inst_n231) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__7_ ( .D(
        median_sobel_inst_n1425), .CK(i_clk), .RN(n7750), .QN(
        median_sobel_inst_n221) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__4_ ( .D(
        median_sobel_inst_n1460), .CK(i_clk), .RN(n7779), .QN(
        median_sobel_inst_n250) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__1_ ( .D(
        median_sobel_inst_n1464), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n247) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__7_ ( .D(
        median_sobel_inst_n1417), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n213) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__5_ ( .D(
        median_sobel_inst_n1442), .CK(i_clk), .RN(n7751), .QN(
        median_sobel_inst_n243) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__5_ ( .D(
        median_sobel_inst_n1458), .CK(i_clk), .RN(n7749), .QN(
        median_sobel_inst_n251) );
  DFFRX1 pre_state_reg_0__1_ ( .D(n7497), .CK(i_clk), .RN(n7783), .Q(
        pre_state[1]) );
  DFFRX1 pre_state_reg_0__0_ ( .D(curr_state[0]), .CK(i_clk), .RN(n7752), .Q(
        pre_state[0]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[4]), .CK(
        i_clk), .RN(n7748), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[0]), .CK(
        i_clk), .RN(n7757), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[1]), .CK(
        i_clk), .RN(n7781), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[2]), .CK(i_clk), .RN(n7757), .QN(
        median_sobel_inst_n217) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__2_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[2]), .CK(
        i_clk), .RN(n7759), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[12]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__7_ ( .D(
        median_sobel_inst_n1438), .CK(i_clk), .RN(n7781), .QN(
        median_sobel_inst_n245) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_10_ ( .D(conv_inst_N760), .CK(i_clk), 
        .RN(n7779), .Q(conv_result_w[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_net96945), .CK(i_clk), 
        .RN(n7755), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[9]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .CK(i_clk), 
        .RN(n7753), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_0__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .CK(i_clk), 
        .RN(n7759), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N115), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[8]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .CK(i_clk), .RN(
        n7752), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[4])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_1__3_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[3]), .CK(
        i_clk), .RN(n7783), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[13]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__1_ ( .D(
        median_sobel_inst_n1434), .CK(i_clk), .RN(n7750), .QN(
        median_sobel_inst_n223) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__0_ ( .D(
        median_sobel_inst_n1436), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n222) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__6_ ( .D(
        median_sobel_inst_n1410), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n188) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__1_ ( .D(
        median_sobel_inst_n1415), .CK(i_clk), .RN(n7780), .QN(
        median_sobel_inst_n183) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__0_ ( .D(
        median_sobel_inst_n1416), .CK(i_clk), .RN(n7781), .QN(
        median_sobel_inst_n182) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_3__7_ ( .D(
        median_sobel_inst_n1424), .CK(i_clk), .RN(n7750), .QN(
        median_sobel_inst_n229) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__4_ ( .D(
        median_sobel_inst_n1420), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n210) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__7_ ( .D(
        median_sobel_inst_n1439), .CK(i_clk), .RN(n7780), .QN(
        median_sobel_inst_n237) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__2_ ( .D(
        median_sobel_inst_n1449), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n232) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_0__2_ ( .D(
        median_sobel_inst_n1414), .CK(i_clk), .RN(n7784), .QN(
        median_sobel_inst_n184) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__1_ ( .D(
        median_sobel_inst_n1463), .CK(i_clk), .RN(n7780), .Q(n7527), .QN(
        median_sobel_inst_n255) );
  DFFRHQX1 sram_addr_ready_r_reg_1__7_ ( .D(sram_addr_wait_r[14]), .CK(i_clk), 
        .RN(n7753), .Q(n1993) );
  DFFRHQX1 sram_addr_ready_r_reg_1__8_ ( .D(sram_addr_wait_r[15]), .CK(i_clk), 
        .RN(n7753), .Q(n1980) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_6__3_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[5]), .CK(i_clk), .RN(n7757), .QN(
        median_sobel_inst_n249) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__0_ ( .D(
        median_sobel_inst_n1437), .CK(i_clk), .RN(n7781), .QN(
        median_sobel_inst_n214) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__0_ ( .D(
        median_sobel_inst_med_sobel_e_wait_r[0]), .CK(i_clk), .RN(n7781), .QN(
        median_sobel_inst_n206) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__3_ ( .D(
        median_sobel_inst_n1447), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n1103) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_10__5_ ( .D(
        median_sobel_inst_n1487), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n195) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_2__1_ ( .D(
        median_sobel_inst_n1435), .CK(i_clk), .RN(n7769), .QN(
        median_sobel_inst_n215) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_5__3_ ( .D(
        median_sobel_inst_n1446), .CK(i_clk), .RN(n7748), .QN(
        median_sobel_inst_n241) );
  DFFRX1 sram_addr_ready_r_reg_0__3_ ( .D(sram_addr_wait_r[2]), .CK(i_clk), 
        .RN(n7763), .Q(sram_addr_w[3]) );
  DFFRX1 sram_addr_ready_r_reg_0__5_ ( .D(sram_addr_wait_r[4]), .CK(i_clk), 
        .RN(n7763), .Q(sram_addr_w[5]) );
  DFFRX1 sram_addr_ready_r_reg_0__6_ ( .D(sram_addr_wait_r[5]), .CK(i_clk), 
        .RN(n7783), .Q(sram_addr_w[6]) );
  DFFRX1 sram_addr_ready_r_reg_0__7_ ( .D(sram_addr_wait_r[6]), .CK(i_clk), 
        .RN(n7747), .Q(sram_addr_w[7]) );
  DFFRX1 sram_addr_ready_r_reg_2__3_ ( .D(sram_addr_wait_r[18]), .CK(i_clk), 
        .RN(n7761), .Q(sram_addr_w[19]) );
  DFFRX1 sram_addr_ready_r_reg_2__4_ ( .D(sram_addr_wait_r[19]), .CK(i_clk), 
        .RN(n7783), .Q(sram_addr_w[20]) );
  DFFRX1 sram_addr_ready_r_reg_2__6_ ( .D(sram_addr_wait_r[21]), .CK(i_clk), 
        .RN(n7761), .Q(sram_addr_w[22]) );
  DFFRX1 sram_addr_ready_r_reg_0__1_ ( .D(sram_addr_wait_r[0]), .CK(i_clk), 
        .RN(n7765), .Q(sram_addr_w[1]) );
  DFFRX1 sram_addr_ready_r_reg_0__2_ ( .D(sram_addr_wait_r[1]), .CK(i_clk), 
        .RN(n7781), .Q(sram_addr_w[2]) );
  DFFRX1 sram_addr_ready_r_reg_0__4_ ( .D(sram_addr_wait_r[3]), .CK(i_clk), 
        .RN(n7764), .Q(sram_addr_w[4]) );
  DFFRX1 sram_addr_ready_r_reg_0__8_ ( .D(sram_addr_wait_r[7]), .CK(i_clk), 
        .RN(n7754), .Q(sram_addr_w[8]) );
  DFFRX1 sram_addr_ready_r_reg_2__1_ ( .D(sram_addr_wait_r[16]), .CK(i_clk), 
        .RN(n7766), .Q(sram_addr_w[17]) );
  DFFRX1 sram_addr_ready_r_reg_2__2_ ( .D(sram_addr_wait_r[17]), .CK(i_clk), 
        .RN(n7766), .Q(sram_addr_w[18]) );
  DFFRX1 sram_addr_ready_r_reg_2__5_ ( .D(sram_addr_wait_r[20]), .CK(i_clk), 
        .RN(n7781), .Q(sram_addr_w[21]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_3_ ( .D(
        median_sobel_inst_data_f_r[3]), .CK(i_clk), .RN(n7754), .QN(
        median_sobel_inst_u_median_filter_submodule_n926) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__6_ ( .D(
        median_sobel_inst_n1441), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_n1104) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__5_ ( .D(
        median_sobel_inst_n1486), .CK(i_clk), .RN(n7751), .Q(
        median_sobel_inst_n1058) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_1__3_ ( .D(
        median_sobel_inst_n1421), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_n1083) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__7_ ( .D(
        median_sobel_inst_n1453), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n1094) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_5_ ( .D(conv_inst_N71), .CK(i_clk), 
        .RN(n7749), .Q(conv_result_w[5]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_6_ ( .D(conv_inst_N72), .CK(i_clk), 
        .RN(n7761), .Q(conv_result_w[6]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_7_ ( .D(conv_inst_N73), .CK(i_clk), 
        .RN(n7783), .Q(conv_result_w[7]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_7__4_ ( .D(
        median_sobel_inst_n1459), .CK(i_clk), .RN(n7779), .Q(
        median_sobel_inst_n1071) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_2_ ( .D(conv_inst_N68), .CK(i_clk), 
        .RN(n7761), .Q(conv_result_w[2]) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_1_ ( .D(conv_inst_N67), .CK(i_clk), 
        .RN(n7780), .Q(conv_result_w[1]) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_11__0_ ( .D(
        median_sobel_inst_n1494), .CK(i_clk), .RN(n7755), .QN(
        median_sobel_inst_n198) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_4__0_ ( .D(
        median_sobel_inst_n1452), .CK(i_clk), .RN(n7755), .QN(
        median_sobel_inst_n230) );
  DFFRX1 sram_addr_ready_r_reg_3__1_ ( .D(sram_addr_wait_r[24]), .CK(i_clk), 
        .RN(n7747), .Q(sram_addr_w[24]), .QN(n429) );
  DFFRX1 sram_addr_ready_r_reg_3__3_ ( .D(sram_addr_wait_r[26]), .CK(i_clk), 
        .RN(n7761), .Q(sram_addr_w[26]), .QN(n431) );
  DFFRX1 sram_addr_ready_r_reg_1__4_ ( .D(sram_addr_wait_r[11]), .CK(i_clk), 
        .RN(n7784), .Q(sram_addr_w[13]), .QN(n416) );
  DFFRX1 median_sobel_inst_med_sobel_e_r_reg_9__3_ ( .D(
        median_sobel_inst_n1479), .CK(i_clk), .RN(n7756), .QN(
        median_sobel_inst_n273) );
  DFFRX1 conv_inst_data_abc_r_reg_5_ ( .D(conv_inst_data_abc_w[5]), .CK(i_clk), 
        .RN(n7758), .QN(conv_inst_n261) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_r_reg_7_ ( .D(
        median_sobel_inst_data_i_r[7]), .CK(i_clk), .RN(n7747), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[18]), 
        .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n455), .QN(n7511) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_10_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]), .CK(i_clk), 
        .RN(n7749), .Q(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[10]), .QN(n7594)
         );
  DFFRX1 conv_inst_i_input_done_r_reg ( .D(conv_calc_done_r), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_n76) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_18_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N177), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_n662) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_17_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N176), .CK(i_clk), .RN(
        n7757), .Q(median_sobel_inst_u_sobel_gradient_submodule_n661) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]), .CK(i_clk), 
        .RN(n7781), .Q(n7593), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n40) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__0_ ( .D(
        median_sobel_inst_n543), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_n78) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__7_ ( .D(
        median_sobel_inst_n624), .CK(i_clk), .RN(n7753), .QN(
        median_sobel_inst_n46) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]), .CK(i_clk), 
        .RN(n7754), .Q(median_sobel_inst_u_sober_compare_submodule_n37) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__0_ ( .D(
        median_sobel_inst_n551), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_n751) );
  DFFRX1 out_valid_ready_r_reg ( .D(n3545), .CK(i_clk), .RN(n7782), .Q(
        o_out_valid), .QN(n1907) );
  DFFRX1 out_data_ready_r_reg_8_ ( .D(out_data_wait_r[8]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[8]) );
  DFFRX1 out_data_ready_r_reg_9_ ( .D(out_data_wait_r[9]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[9]) );
  DFFRX1 out_data_ready_r_reg_10_ ( .D(out_data_wait_r[10]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[10]) );
  DFFRX1 out_data_ready_r_reg_11_ ( .D(out_data_wait_r[11]), .CK(i_clk), .RN(
        n7782), .Q(o_out_data[11]) );
  DFFRX1 out_data_ready_r_reg_12_ ( .D(out_data_wait_r[12]), .CK(i_clk), .RN(
        n7782), .Q(o_out_data[12]) );
  DFFRX1 out_data_ready_r_reg_13_ ( .D(out_data_wait_r[13]), .CK(i_clk), .RN(
        n7782), .Q(o_out_data[13]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__2_ ( .D(
        median_sobel_inst_n621), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n1106) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__7_ ( .D(
        median_sobel_inst_n576), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_n764) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_9_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N152), .CK(i_clk), 
        .RN(n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_n101) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__3_ ( .D(
        median_sobel_inst_n548), .CK(i_clk), .RN(n7763), .Q(
        median_sobel_inst_n756) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_12__7_ ( .D(
        median_sobel_inst_n544), .CK(i_clk), .RN(n7754), .QN(
        median_sobel_inst_n1166) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__7_ ( .D(
        median_sobel_inst_n592), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n420) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__3_ ( .D(
        median_sobel_inst_n540), .CK(i_clk), .RN(n7759), .QN(
        median_sobel_inst_n1162) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[7]), .CK(i_clk), 
        .RN(n7784), .Q(median_sobel_inst_u_sobel_gradient_submodule_n352) );
  DFFRX1 conv_calc_done_r_reg ( .D(n439), .CK(i_clk), .RN(n7782), .Q(
        conv_calc_done_r), .QN(n438) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[6]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_net94786) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__6_ ( .D(
        median_sobel_inst_n553), .CK(i_clk), .RN(n7761), .Q(
        median_sobel_inst_n324) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__0_ ( .D(
        median_sobel_inst_n583), .CK(i_clk), .RN(n7780), .Q(
        median_sobel_inst_n750) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_8_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_n86), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_n63) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_3__5_ ( .D(
        median_sobel_inst_n618), .CK(i_clk), .RN(n7761), .Q(
        median_sobel_inst_n963), .QN(n3585) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__0_ ( .D(
        median_sobel_inst_n535), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_n725) );
  DFFRX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_9_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]), .CK(i_clk), 
        .RN(n7783), .QN(median_sobel_inst_u_sober_compare_submodule_net95270)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]), .CK(i_clk), 
        .RN(n7777), .Q(n7606), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n2) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]), .CK(i_clk), 
        .RN(n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_n384), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n27) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__0_ ( .D(
        median_sobel_inst_n591), .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_n310) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a3_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[1]), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_net47872) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__2_ ( .D(
        median_sobel_inst_n629), .CK(i_clk), .RN(n7755), .QN(
        median_sobel_inst_n814) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p6_r_reg_7_ ( .D(
        median_sobel_inst_data_f_r[7]), .CK(i_clk), .RN(n7756), .QN(
        median_sobel_inst_u_median_filter_submodule_n910) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__2_ ( .D(
        median_sobel_inst_n541), .CK(i_clk), .RN(n7757), .Q(
        median_sobel_inst_n923) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__4_ ( .D(
        median_sobel_inst_n539), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_n745) );
  DFFRX2 median_sobel_inst_cnt_reg_2_ ( .D(median_sobel_inst_N111), .CK(i_clk), 
        .RN(n7784), .Q(n4295), .QN(median_sobel_inst_n1198) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[4]), .CK(i_clk), .RN(
        n7755), .Q(n7671), .QN(
        median_sobel_inst_u_median_filter_submodule_n361) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__4_ ( .D(
        median_sobel_inst_n579), .CK(i_clk), .RN(n7754), .QN(
        median_sobel_inst_n932) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__7_ ( .D(
        median_sobel_inst_n600), .CK(i_clk), .RN(n7784), .Q(
        median_sobel_inst_n125) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_2__3_ ( .D(
        median_sobel_inst_n628), .CK(i_clk), .RN(n7758), .Q(n4315), .QN(
        median_sobel_inst_n943) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N159), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_n659) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_8__5_ ( .D(
        median_sobel_inst_n578), .CK(i_clk), .RN(n7781), .QN(
        median_sobel_inst_n914) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_15__3_ ( .D(
        median_sobel_inst_n524), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_n985) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[4]), .CK(i_clk), .RN(
        n7782), .Q(median_sobel_inst_u_median_filter_submodule_n273) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__1_ ( .D(
        median_sobel_inst_n614), .CK(i_clk), .RN(n7783), .QN(
        median_sobel_inst_n937) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N32), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[6]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_n209) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N106), .CK(i_clk), .RN(
        n7781), .Q(median_sobel_inst_u_sobel_gradient_submodule_net96945) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_1_ ( .D(
        median_sobel_inst_n979), .CK(i_clk), .RN(n7750), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n94) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N36), .CK(i_clk), .RN(
        n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]) );
  DFFRX2 conv_inst_conv_4_r_reg_11_ ( .D(conv_inst_N281), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_conv_4_r[11]), .QN(conv_inst_n249) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n826), .CK(i_clk), .RN(
        n7754), .Q(n7715), .QN(
        median_sobel_inst_u_median_filter_submodule_n1456) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]), .CK(i_clk), 
        .RN(n7747), .QN(n7536) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .CK(i_clk), 
        .RN(n7750), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), 
        .QN(n3592) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]), .CK(i_clk), 
        .RN(n7781), .Q(n3583), .QN(n7548) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N31), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[2]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_n268) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N161), .CK(i_clk), .RN(
        n7758), .QN(median_sobel_inst_u_sobel_gradient_submodule_n108) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]), .CK(i_clk), 
        .RN(n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N38), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_b9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n824), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_median_filter_submodule_n706), .QN(
        n7566) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]), .CK(i_clk), 
        .RN(n7748), .QN(n7555) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]), .CK(i_clk), 
        .RN(n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N42), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N8), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]), .CK(i_clk), 
        .RN(n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_2_ ( .D(
        median_sobel_inst_data_d_r[2]), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_1_ ( .D(
        median_sobel_inst_n978), .CK(i_clk), .RN(n7780), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n865) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p6_r_reg_6_ ( .D(
        median_sobel_inst_data_f_r[6]), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n918) );
  DFFRX2 conv_inst_data_abc_3_r_reg_4_ ( .D(conv_inst_N201), .CK(i_clk), .RN(
        n7784), .Q(conv_inst_data_abc_3_r[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N117), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[10]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n75), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0])
         );
  DFFRX2 conv_inst_data_abc_r_reg_7_ ( .D(conv_inst_data_abc_w[7]), .CK(i_clk), 
        .RN(n7748), .QN(conv_inst_n312) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a17_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a17_w), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_median_filter_submodule_n1465) );
  DFFRX2 conv_inst_data_abc_r_reg_6_ ( .D(conv_inst_data_abc_w[6]), .CK(i_clk), 
        .RN(n7759), .QN(conv_inst_n262) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[0]), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_median_filter_submodule_net94827) );
  DFFRX2 conv_inst_data_abc_r_reg_8_ ( .D(conv_inst_data_abc_w[8]), .CK(i_clk), 
        .RN(n7749), .QN(conv_inst_n314) );
  DFFRX2 input_data_ready_r_reg_23_ ( .D(N740), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[23]), .QN(n7498) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[1]), .CK(
        i_clk), .RN(n7783), .Q(median_sobel_inst_angle_w[1]) );
  DFFRX2 conv_inst_data_abc_r_reg_9_ ( .D(conv_inst_data_abc_w[9]), .CK(i_clk), 
        .RN(n7759), .QN(conv_inst_n313) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[1]), .CK(i_clk), .RN(
        n7756), .Q(n7706), .QN(
        median_sobel_inst_u_median_filter_submodule_n780) );
  DFFRX4 input_data_ready_r_reg_20_ ( .D(N737), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[20]), .QN(n7668) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n759), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_out_data_w[2]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n761), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_out_data_w[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n758), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_out_data_w[1]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n757), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_out_data_w[0]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n827), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_net97547) );
  DFFRX2 input_data_ready_r_reg_31_ ( .D(N748), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[31]), .QN(n7514) );
  DFFRX4 y_origin_r_reg_1_ ( .D(n491), .CK(i_clk), .RN(n7766), .Q(n7510), .QN(
        n2028) );
  DFFRX4 input_data_ready_r_reg_16_ ( .D(N733), .CK(i_clk), .RN(n7751), .Q(
        n4314), .QN(n2113) );
  DFFRX2 sram_addr_ready_r_reg_3__0_ ( .D(n1392), .CK(i_clk), .RN(n7761), .Q(
        sram_addr_w[23]), .QN(n1974) );
  DFFRX4 conv_inst_cnt_reg_1_ ( .D(conv_inst_N57), .CK(i_clk), .RN(n7777), .Q(
        n7560), .QN(conv_inst_n27) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N11), .CK(i_clk), .RN(
        n7757), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]) );
  DFFRX4 input_data_ready_r_reg_13_ ( .D(N730), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[13]), .QN(n7509) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_5_ ( .D(
        median_sobel_inst_data_g_r[5]), .CK(i_clk), .RN(n7753), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n89) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N13), .CK(i_clk), .RN(
        n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__1_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[11]), 
        .CK(i_clk), .RN(n7757), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n85) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_angle_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[0]), .CK(
        i_clk), .RN(n7745), .Q(median_sobel_inst_angle_w[0]) );
  DFFRX4 input_data_ready_r_reg_21_ ( .D(N738), .CK(i_clk), .RN(n7769), .Q(
        input_data_ready_r[21]), .QN(n7692) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a39_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a39_w), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_median_filter_submodule_n1470), .QN(
        n7575) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n817), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_n1196) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n818), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_n279) );
  DFFRX4 input_data_ready_r_reg_12_ ( .D(N729), .CK(i_clk), .RN(n7765), .Q(
        input_data_ready_r[12]), .QN(n7685) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[3]), .CK(i_clk), .RN(
        n7755), .QN(median_sobel_inst_u_median_filter_submodule_n792) );
  DFFRHQX4 conv_inst_data_bcd_r_reg_9_ ( .D(conv_inst_data_bcd_w[9]), .CK(
        i_clk), .RN(n7773), .Q(conv_inst_n200) );
  DFFRX4 input_data_ready_r_reg_14_ ( .D(N731), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[14]), .QN(n7670) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]), .CK(i_clk), 
        .RN(n7759), .QN(n7531) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_13_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N156), .CK(i_clk), 
        .RN(n7755), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N116), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[9]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N431), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]) );
  DFFRX4 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .CK(i_clk), 
        .RN(n7746), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7])
         );
  DFFRX4 input_data_ready_r_reg_8_ ( .D(N725), .CK(i_clk), .RN(n7784), .QN(
        n2075) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N23), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[1]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_n236) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]), .CK(i_clk), 
        .RN(n7753), .QN(median_sobel_inst_u_sobel_gradient_submodule_n43) );
  DFFRX2 conv_inst_conv_4_r_reg_15_ ( .D(conv_inst_N2850), .CK(i_clk), .RN(
        n7759), .QN(conv_inst_n22) );
  DFFRX2 conv_inst_conv_4_r_reg_12_ ( .D(conv_inst_N282), .CK(i_clk), .RN(
        n7773), .Q(conv_inst_conv_4_r[12]), .QN(conv_inst_n37) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]), .CK(i_clk), 
        .RN(n7752), .QN(n7551) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]), .CK(i_clk), 
        .RN(n7766), .QN(median_sobel_inst_u_sobel_gradient_submodule_n4) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]), .CK(i_clk), 
        .RN(n7759), .QN(median_sobel_inst_u_sobel_gradient_submodule_n35) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]), .CK(i_clk), 
        .RN(n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_n418), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n22) );
  DFFRX4 input_data_ready_r_reg_25_ ( .D(N742), .CK(i_clk), .RN(n7752), .Q(
        n7704), .QN(n2035) );
  DFFRX4 input_data_ready_r_reg_27_ ( .D(N744), .CK(i_clk), .RN(n7776), .Q(
        n7705), .QN(n1975) );
  DFFRX4 input_data_ready_r_reg_24_ ( .D(N741), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[24]), .QN(n7702) );
  DFFRX4 input_data_ready_r_reg_18_ ( .D(N735), .CK(i_clk), .RN(n7752), .Q(
        n7733), .QN(n2005) );
  DFFRX2 y_r_reg_2_ ( .D(n1388), .CK(i_clk), .RN(n7747), .Q(y_r[2]) );
  DFFRX4 input_data_ready_r_reg_6_ ( .D(N723), .CK(i_clk), .RN(n7746), .Q(
        input_data_ready_r[6]), .QN(n7682) );
  DFFRX2 conv_inst_conv_4_r_reg_16_ ( .D(conv_inst_N286), .CK(i_clk), .RN(
        n7763), .Q(conv_inst_conv_4_r[16]), .QN(conv_inst_n268) );
  DFFRX2 z_r_reg_1_ ( .D(N789), .CK(i_clk), .RN(n7763), .Q(z_r[1]) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__4_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[14]), 
        .CK(i_clk), .RN(n7784), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n400) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n720), .CK(i_clk), .RN(
        n7745), .Q(median_sobel_inst_u_sobel_gradient_submodule_n434) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]), .CK(i_clk), 
        .RN(n7753), .Q(n3591), .QN(n7559) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a58_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a58_w), .CK(i_clk), .RN(
        n7745), .QN(median_sobel_inst_u_median_filter_submodule_n161) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a3_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[2]), .CK(i_clk), .RN(
        n7754), .QN(median_sobel_inst_u_median_filter_submodule_net20521) );
  DFFRHQX4 input_data_ready_r_reg_10_ ( .D(N727), .CK(i_clk), .RN(n7756), .Q(
        n1984) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]), .CK(i_clk), 
        .RN(n7764), .QN(n7552) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_9__5_ ( .D(
        median_sobel_inst_n570), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n142) );
  DFFRX4 input_data_ready_r_reg_3_ ( .D(N720), .CK(i_clk), .RN(n7778), .Q(
        n7721), .QN(n2073) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[5]), .CK(i_clk), .RN(
        n7784), .Q(median_sobel_inst_u_median_filter_submodule_a4_r_5_) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n768), .CK(i_clk), .RN(
        n7756), .Q(n7567), .QN(
        median_sobel_inst_u_median_filter_submodule_n897) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a36_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a36_w), .CK(i_clk), .RN(
        n7758), .Q(median_sobel_inst_u_median_filter_submodule_n1469) );
  DFFRX2 y_r_reg_1_ ( .D(n1387), .CK(i_clk), .RN(n7763), .Q(n2018) );
  DFFRX2 conv_inst_conv_3_r_reg_13_ ( .D(conv_inst_N266), .CK(i_clk), .RN(
        n7761), .Q(conv_inst_conv_3_r[13]), .QN(conv_inst_n10) );
  DFFRHQX2 conv_inst_conv_2_r_reg_12_ ( .D(conv_inst_N248), .CK(i_clk), .RN(
        n7748), .Q(conv_inst_conv_2_r[12]) );
  DFFRX4 conv_inst_data_bcd_2_r_reg_3_ ( .D(conv_inst_N138), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_data_bcd_2_r[3]) );
  DFFRX4 input_data_ready_r_reg_28_ ( .D(N745), .CK(i_clk), .RN(n7752), .Q(
        input_data_ready_r[28]), .QN(n7691) );
  DFFRHQX2 median_sobel_inst_u_sober_compare_submodule_cnt_reg_0_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N29), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n343) );
  DFFRX2 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_3_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]), .CK(i_clk), 
        .RN(n7778), .Q(median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]) );
  DFFRX2 z_r_reg_4_ ( .D(N792), .CK(i_clk), .RN(n7747), .Q(z_r[4]) );
  DFFRX4 input_data_ready_r_reg_26_ ( .D(N743), .CK(i_clk), .RN(n7752), .Q(
        n7529), .QN(n1998) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]), .CK(i_clk), 
        .RN(n7758), .Q(n3584) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[0]), .CK(i_clk), .RN(
        n7755), .Q(n4286), .QN(
        median_sobel_inst_u_median_filter_submodule_net96393) );
  DFFRX2 conv_inst_conv_3_r_reg_16_ ( .D(conv_inst_N2690), .CK(i_clk), .RN(
        n7783), .Q(conv_inst_conv_3_r[16]), .QN(conv_inst_n253) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]), .CK(i_clk), 
        .RN(n7756), .QN(n7543) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]), .CK(i_clk), 
        .RN(n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9])
         );
  DFFRX2 conv_inst_conv_2_r_reg_15_ ( .D(conv_inst_N251), .CK(i_clk), .RN(
        n7757), .QN(conv_inst_n21) );
  DFFRX2 z_r_reg_3_ ( .D(N791), .CK(i_clk), .RN(n7747), .Q(z_r[3]) );
  DFFRX2 z_r_reg_0_ ( .D(N788), .CK(i_clk), .RN(n7761), .Q(z_r[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]), .CK(i_clk), 
        .RN(n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_n423), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_N80) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]), .CK(i_clk), 
        .RN(n7781), .QN(median_sobel_inst_u_sobel_gradient_submodule_n30) );
  DFFRX4 input_data_ready_r_reg_2_ ( .D(N719), .CK(i_clk), .RN(n7777), .Q(
        n7732), .QN(n1989) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n229), .CK(i_clk), .RN(
        n7746), .Q(median_sobel_inst_u_median_filter_submodule_net96795) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n771), .CK(i_clk), .RN(
        n7769), .Q(median_sobel_inst_u_median_filter_submodule_net96825) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n769), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net96837) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N127), .CK(i_clk), .RN(
        n7749), .QN(n7583) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n430), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_n75) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]), .CK(i_clk), 
        .RN(n7758), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5])
         );
  DFFRX2 cnt_reg_7_ ( .D(n477), .CK(i_clk), .RN(n7763), .Q(cnt[7]), .QN(n7512)
         );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_11_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N170), .CK(i_clk), 
        .RN(n7758), .Q(median_sobel_inst_u_sobel_gradient_submodule_n385) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_11_ ( .D(conv_inst_N77), .CK(i_clk), 
        .RN(n7750), .QN(n7722) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]), .CK(i_clk), 
        .RN(n7756), .Q(n3589), .QN(n7530) );
  DFFRHQX8 median_sobel_inst_u_median_filter_submodule_c2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n760), .CK(i_clk), .RN(
        n7750), .Q(median_sobel_inst_out_data_w[3]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[6]), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_median_filter_submodule_n205) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_9_ ( .D(conv_inst_N75), .CK(i_clk), 
        .RN(n7761), .Q(conv_result_w[9]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[4]), .CK(i_clk), .RN(
        n7761), .Q(median_sobel_inst_u_median_filter_submodule_net96572) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[1]), .CK(i_clk), .RN(
        n7763), .Q(median_sobel_inst_u_median_filter_submodule_n257) );
  DFFRX2 conv_inst_data_bcd_r_reg_3_ ( .D(conv_inst_data_bcd_w[3]), .CK(i_clk), 
        .RN(n7773), .QN(conv_inst_n310) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__6_ ( .D(
        median_sobel_inst_n593), .CK(i_clk), .RN(n7752), .Q(
        median_sobel_inst_n147) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N112), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[5]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_14_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N157), .CK(i_clk), 
        .RN(n7781), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]), .CK(i_clk), 
        .RN(n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8])
         );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a28_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a28_w), .CK(i_clk), .RN(
        n7755), .Q(n7577), .QN(
        median_sobel_inst_u_median_filter_submodule_n755) );
  DFFRX4 op_mode_r_reg_2_ ( .D(n442), .CK(i_clk), .RN(i_rst_n), .Q(n4544), 
        .QN(n2115) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_16_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N175), .CK(i_clk), .RN(
        n7752), .Q(median_sobel_inst_u_sobel_gradient_submodule_n545) );
  DFFRX2 conv_inst_conv_1_r_reg_13_ ( .D(conv_inst_N232), .CK(i_clk), .RN(
        n7747), .Q(conv_inst_conv_1_r[13]), .QN(conv_inst_n19) );
  DFFRHQX8 median_sobel_inst_u_median_filter_submodule_a2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[6]), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_n222) );
  DFFSHQX8 curr_state_reg_3_ ( .D(next_state_3_), .CK(i_clk), .SN(n7776), .Q(
        n822) );
  DFFRX2 sram_addr_ready_r_reg_3__6_ ( .D(sram_addr_wait_r[29]), .CK(i_clk), 
        .RN(n7759), .Q(sram_addr_w[29]), .QN(n434) );
  DFFRX2 sram_addr_ready_r_reg_3__5_ ( .D(sram_addr_wait_r[28]), .CK(i_clk), 
        .RN(n7763), .Q(sram_addr_w[28]), .QN(n433) );
  DFFRX2 sram_addr_ready_r_reg_3__7_ ( .D(sram_addr_wait_r[30]), .CK(i_clk), 
        .RN(n7756), .Q(sram_addr_w[30]), .QN(n435) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[2]), .CK(i_clk), .RN(
        n7777), .Q(median_sobel_inst_u_median_filter_submodule_n833), .QN(
        n7568) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a7_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[3]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_n277) );
  DFFRHQX4 input_data_ready_r_reg_0_ ( .D(N717), .CK(i_clk), .RN(n7753), .Q(
        input_data_ready_r[0]) );
  DFFRHQX2 median_sobel_inst_u_sober_compare_submodule_cnt_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_N307), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n345) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_6_ ( .D(
        median_sobel_inst_data_c_r[6]), .CK(i_clk), .RN(n7761), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n432) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__0_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[10]), 
        .CK(i_clk), .RN(n7753), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n392) );
  DFFRHQX4 conv_inst_cs_reg_0_ ( .D(conv_inst_n169), .CK(i_clk), .RN(n7778), 
        .Q(conv_inst_n42) );
  DFFRX4 input_data_ready_r_reg_4_ ( .D(N721), .CK(i_clk), .RN(n7776), .Q(
        input_data_ready_r[4]), .QN(n7674) );
  DFFRHQX2 median_sobel_inst_med_sobel_e_delay_r_reg_6__3_ ( .D(
        median_sobel_inst_n596), .CK(i_clk), .RN(n7753), .Q(
        median_sobel_inst_n127) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[7]), .CK(i_clk), .RN(
        n7746), .Q(n7672), .QN(
        median_sobel_inst_u_median_filter_submodule_n773) );
  DFFRX2 out_data_ready_r_reg_3_ ( .D(out_data_wait_r[3]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[3]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_15_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N158), .CK(i_clk), 
        .RN(n7752), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]) );
  DFFRX4 pre_state_reg_2__0_ ( .D(pre_state[4]), .CK(i_clk), .RN(n7777), .Q(
        n864) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[4]), .CK(i_clk), .RN(
        n7782), .Q(median_sobel_inst_u_median_filter_submodule_n96) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[6]), .CK(i_clk), .RN(
        n7748), .Q(n7684), .QN(
        median_sobel_inst_u_median_filter_submodule_n785) );
  DFFRX4 input_data_ready_r_reg_5_ ( .D(N722), .CK(i_clk), .RN(n7776), .Q(
        input_data_ready_r[5]), .QN(n7681) );
  DFFRX4 input_data_ready_r_reg_29_ ( .D(N746), .CK(i_clk), .RN(n7754), .Q(
        input_data_ready_r[29]), .QN(n7680) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N98), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_sobel_gradient_submodule_N131) );
  DFFRX4 sram_data_out_r_reg_2__6_ ( .D(sram_data_out_w[22]), .CK(i_clk), .RN(
        n7780), .Q(n7744), .QN(n1922) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[5]), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_median_filter_submodule_n118) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_13_ ( .D(conv_inst_N79), .CK(i_clk), 
        .RN(n7783), .QN(n7693) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_15_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1740), .CK(i_clk), .RN(
        n7755), .QN(median_sobel_inst_u_sobel_gradient_submodule_n650) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[5]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_net96588) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[1]), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_median_filter_submodule_n260) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N330), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]) );
  DFFRHQX4 op_mode_r_reg_0_ ( .D(n440), .CK(i_clk), .RN(n7753), .Q(
        op_mode_r_0_) );
  DFFRX2 cnt_reg_8_ ( .D(n476), .CK(i_clk), .RN(n7784), .Q(cnt[8]), .QN(n453)
         );
  DFFRX2 conv_isFirst_signal_r_reg ( .D(N819), .CK(i_clk), .RN(n7781), .Q(
        conv_isFirst_signal_r) );
  DFFRX2 med_sobel_isFirst_signal_r_reg ( .D(N820), .CK(i_clk), .RN(n7783), 
        .Q(med_sobel_isFirst_signal_r) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[4]), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_median_filter_submodule_net95319) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N210), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_8_ ( .D(conv_inst_N74), .CK(i_clk), 
        .RN(n7754), .Q(conv_result_w[8]) );
  DFFSX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r_reg_1_ ( .D(
        n7496), .CK(i_clk), .SN(n7779), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n388) );
  DFFRHQX2 input_data_ready_r_reg_22_ ( .D(N739), .CK(i_clk), .RN(n7750), .Q(
        input_data_ready_r[22]) );
  DFFRX2 sram_addr_ready_r_reg_2__8_ ( .D(sram_addr_wait_r[23]), .CK(i_clk), 
        .RN(n7753), .Q(n1982) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]), .CK(i_clk), 
        .RN(n7751), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N134), .CK(i_clk), .RN(
        n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4])
         );
  DFFRX2 conv_inst_data_bcd_2_r_reg_6_ ( .D(conv_inst_N141), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_data_bcd_2_r[6]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_5_ ( .D(
        median_sobel_inst_data_d_r[5]), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n882) );
  DFFRX4 median_sobel_inst_u_median_filter_submodule_a25_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a25_w), .CK(i_clk), .RN(
        n7782), .Q(median_sobel_inst_u_median_filter_submodule_n641) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a9_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a9[7]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_n158) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_5_ ( .D(
        median_sobel_inst_data_f_r[5]), .CK(i_clk), .RN(n7759), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n928) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N18), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N370), .CK(i_clk), .RN(
        n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_7__1_ ( .D(
        median_sobel_inst_n590), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_n311) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_13__5_ ( .D(
        median_sobel_inst_n538), .CK(i_clk), .RN(n7761), .Q(
        median_sobel_inst_n56) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]), .CK(i_clk), 
        .RN(n7757), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3])
         );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[0]), .CK(i_clk), .RN(
        n7761), .Q(median_sobel_inst_u_median_filter_submodule_net52768) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]), .CK(i_clk), 
        .RN(n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8])
         );
  DFFRX4 sram_data_out_r_reg_2__1_ ( .D(sram_data_out_w[17]), .CK(i_clk), .RN(
        n7781), .QN(n1920) );
  DFFRX4 sram_data_out_r_reg_3__2_ ( .D(sram_data_out_w[26]), .CK(i_clk), .RN(
        n7782), .QN(n1941) );
  DFFRX4 sram_data_out_r_reg_2__2_ ( .D(sram_data_out_w[18]), .CK(i_clk), .RN(
        n7777), .QN(n1917) );
  DFFRX4 sram_data_out_r_reg_1__0_ ( .D(sram_data_out_w[8]), .CK(i_clk), .RN(
        n7776), .QN(n1947) );
  DFFRX4 sram_data_out_r_reg_1__2_ ( .D(sram_data_out_w[10]), .CK(i_clk), .RN(
        n7777), .QN(n1939) );
  DFFRX4 sram_data_out_r_reg_0__2_ ( .D(sram_data_out_w[2]), .CK(i_clk), .RN(
        n7748), .QN(n1965) );
  DFFRX4 sram_data_out_r_reg_0__3_ ( .D(sram_data_out_w[3]), .CK(i_clk), .RN(
        n7776), .QN(n1962) );
  DFFRX4 sram_data_out_r_reg_0__5_ ( .D(sram_data_out_w[5]), .CK(i_clk), .RN(
        n7782), .QN(n1944) );
  DFFRX4 sram_data_out_r_reg_3__4_ ( .D(sram_data_out_w[28]), .CK(i_clk), .RN(
        n7777), .QN(n1942) );
  DFFRX4 sram_data_out_r_reg_1__3_ ( .D(sram_data_out_w[11]), .CK(i_clk), .RN(
        n7776), .QN(n1943) );
  DFFRX4 sram_data_out_r_reg_3__7_ ( .D(sram_data_out_w[31]), .CK(i_clk), .RN(
        n7777), .QN(n1915) );
  DFFRX4 sram_data_out_r_reg_1__5_ ( .D(sram_data_out_w[13]), .CK(i_clk), .RN(
        n7777), .QN(n1960) );
  DFFRX4 sram_data_out_r_reg_0__0_ ( .D(sram_data_out_w[0]), .CK(i_clk), .RN(
        n7776), .QN(n1964) );
  DFFRX4 sram_data_out_r_reg_3__6_ ( .D(sram_data_out_w[30]), .CK(i_clk), .RN(
        n7777), .QN(n1949) );
  DFFRX4 sram_data_out_r_reg_3__0_ ( .D(sram_data_out_w[24]), .CK(i_clk), .RN(
        n7776), .QN(n1918) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[5]), .CK(i_clk), .RN(
        n7747), .Q(median_sobel_inst_u_median_filter_submodule_n136) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay_reg_2__5_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_delay[15]), 
        .CK(i_clk), .RN(n7752), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n61) );
  DFFRX2 conv_inst_conv_2_r_reg_14_ ( .D(conv_inst_N250), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_conv_2_r[14]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_c2_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n762), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_out_data_w[5]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n829), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_b1_r[4]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[10]), .CK(i_clk), 
        .RN(n7759), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n65) );
  DFFRX1 conv_inst_data_bcd_r_reg_5_ ( .D(conv_inst_data_bcd_w[5]), .CK(i_clk), 
        .RN(n7764), .QN(conv_inst_n270) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b9_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n822), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_n233) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[0]), .CK(i_clk), .RN(
        n7756), .Q(n4322), .QN(
        median_sobel_inst_u_median_filter_submodule_net20525) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_1_ ( .D(
        median_sobel_inst_data_f_r[1]), .CK(i_clk), .RN(n7781), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n925) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_3_ ( .D(
        median_sobel_inst_data_c_r[3]), .CK(i_clk), .RN(n7748), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n876) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p3_r_reg_4_ ( .D(
        median_sobel_inst_n135), .CK(i_clk), .RN(n7783), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n888) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_b9_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n823), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_net97020) );
  DFFRHQX4 op_mode_r_reg_3_ ( .D(n443), .CK(i_clk), .RN(n7779), .Q(n2000) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_1_ ( .D(
        median_sobel_inst_data_c_r[1]), .CK(i_clk), .RN(n7752), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n890) );
  DFFRX2 input_data_ready_r_reg_19_ ( .D(N736), .CK(i_clk), .RN(n7766), .Q(
        n4307), .QN(n2111) );
  DFFSX1 pre_state_reg_0__3_ ( .D(n822), .CK(i_clk), .SN(n7748), .Q(
        pre_state[3]) );
  DFFSX1 pre_state_reg_0__2_ ( .D(n818), .CK(i_clk), .SN(n7748), .Q(
        pre_state[2]) );
  DFFRX1 conv_inst_conv_1_r_reg_15_ ( .D(conv_inst_N2340), .CK(i_clk), .RN(
        n7779), .Q(conv_inst_conv_1_r[15]), .QN(n4549) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]), .CK(i_clk), 
        .RN(n7781), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4])
         );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N99), .CK(i_clk), .RN(
        n7747), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_5_ ( .D(
        median_sobel_inst_data_h_r[5]), .CK(i_clk), .RN(n7781), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .QN(
        median_sobel_inst_u_median_filter_submodule_n913) );
  DFFRX2 conv_inst_data_bcd_4_r_reg_3_ ( .D(conv_inst_N211), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_data_bcd_4_r[3]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .CK(i_clk), 
        .RN(n7777), .Q(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4]), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n398) );
  DFFRX2 conv_inst_conv_2_r_reg_8_ ( .D(conv_inst_N244), .CK(i_clk), .RN(n7757), .Q(conv_inst_conv_2_r[8]), .QN(conv_inst_n236) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__4_ ( .D(
        median_sobel_inst_n563), .CK(i_clk), .RN(n7772), .Q(
        median_sobel_inst_n145) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_n402) );
  DFFRHQX1 conv_inst_conv_1_r_reg_7_ ( .D(conv_inst_N226), .CK(i_clk), .RN(
        n7769), .Q(conv_inst_n44) );
  DFFRX2 conv_inst_data_abc_3_r_reg_5_ ( .D(conv_inst_N202), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_data_abc_3_r[5]) );
  DFFRX2 conv_inst_conv_3_r_reg_5_ ( .D(conv_inst_N2580), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_conv_3_r[5]), .QN(conv_inst_n273) );
  DFFRX2 conv_inst_conv_2_r_reg_6_ ( .D(conv_inst_N2420), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_conv_2_r[6]) );
  DFFRX2 conv_inst_conv_1_r_reg_6_ ( .D(conv_inst_N225), .CK(i_clk), .RN(n7757), .Q(conv_inst_conv_1_r[6]) );
  DFFRX2 conv_inst_conv_2_r_reg_5_ ( .D(conv_inst_N241), .CK(i_clk), .RN(n7759), .Q(conv_inst_conv_2_r[5]) );
  DFFRX2 conv_inst_conv_1_r_reg_5_ ( .D(conv_inst_N224), .CK(i_clk), .RN(n7758), .Q(conv_inst_conv_1_r[5]) );
  DFFRX2 conv_inst_conv_2_r_reg_4_ ( .D(conv_inst_N2400), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_conv_2_r[4]) );
  DFFRX2 conv_inst_conv_1_r_reg_4_ ( .D(conv_inst_N223), .CK(i_clk), .RN(n7757), .Q(conv_inst_conv_1_r[4]) );
  DFFRHQX1 median_sobel_inst_cs_reg_0_ ( .D(median_sobel_inst_ns[0]), .CK(
        i_clk), .RN(n7773), .Q(median_sobel_inst_n99) );
  DFFRX1 med_done_r_reg ( .D(med_done_w), .CK(i_clk), .RN(n7781), .QN(n7502)
         );
  DFFRHQX1 conv_inst_conv_3_r_reg_14_ ( .D(conv_inst_N267), .CK(i_clk), .RN(
        n7773), .Q(conv_inst_n196) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a69_r_reg ( .D(
        median_sobel_inst_u_median_filter_submodule_a69_w), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_n1468) );
  DFFRHQX4 curr_state_reg_1_ ( .D(n1391), .CK(i_clk), .RN(n7753), .Q(
        curr_state[1]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a4_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[3]), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_median_filter_submodule_n276) );
  DFFRX2 x_plus_two_r_reg_1_ ( .D(n7786), .CK(i_clk), .RN(n7761), .Q(
        x_plus_two_r[1]) );
  DFFRHQX1 y_r_reg_0_ ( .D(N815), .CK(i_clk), .RN(n7752), .Q(y_r[0]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a6_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[3]), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_n1093) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]), .CK(i_clk), 
        .RN(n7783), .QN(n7557) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__4_ ( .D(
        median_sobel_inst_n571), .CK(i_clk), .RN(n7781), .Q(
        median_sobel_inst_n138) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N41), .CK(i_clk), .RN(
        n7758), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]), .CK(i_clk), 
        .RN(n7779), .QN(n7546) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__1_ ( .D(
        median_sobel_inst_n638), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n94) );
  DFFRX2 sram_addr_ready_r_reg_1__0_ ( .D(n1394), .CK(i_clk), .RN(n7765), .Q(
        sram_addr_w[9]), .QN(n2292) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_6__2_ ( .D(
        median_sobel_inst_n597), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n83) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N105), .CK(i_clk), .RN(
        n7749), .Q(median_sobel_inst_u_sobel_gradient_submodule_net94800) );
  DFFRHQX4 x_origin_r_reg_1_ ( .D(n488), .CK(i_clk), .RN(n7765), .Q(
        x_origin_r[1]) );
  DFFRX2 conv_inst_data_abc_1_r_reg_3_ ( .D(conv_inst_N127), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_data_abc_1_r[3]) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N1010), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_n49) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult2_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .CK(i_clk), .RN(
        n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_n657) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]), .CK(i_clk), 
        .RN(n7758), .QN(median_sobel_inst_u_sobel_gradient_submodule_n29) );
  DFFRHQX1 conv_inst_data_abc_1_r_reg_5_ ( .D(conv_inst_N129), .CK(i_clk), 
        .RN(n7772), .Q(conv_inst_n172) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_c2_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n763), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_out_data_w[6]) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_11__5_ ( .D(
        median_sobel_inst_n554), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n1091) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N123), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5])
         );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]), .CK(i_clk), 
        .RN(n7753), .Q(n7587), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n37) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_3_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[3]), .CK(i_clk), 
        .RN(n7752), .Q(median_sobel_inst_u_sobel_gradient_submodule_n356) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]), .CK(i_clk), 
        .RN(n7773), .Q(median_sobel_inst_u_sobel_gradient_submodule_n425) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_4_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n821), .CK(i_clk), .RN(
        n7761), .Q(median_sobel_inst_u_median_filter_submodule_n235) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_5_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_net98113)
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_8_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_n341) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_6_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]), .CK(i_clk), 
        .RN(n7748), .Q(median_sobel_inst_u_sober_compare_submodule_net102583)
         );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__7_ ( .D(
        median_sobel_inst_n568), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n118) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .CK(i_clk), 
        .RN(n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_G_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N113), .CK(i_clk), .RN(
        n7750), .Q(median_sobel_inst_u_sobel_gradient_submodule_G_abs[6]) );
  DFFRX2 input_data_ready_r_reg_30_ ( .D(N747), .CK(i_clk), .RN(n7777), .Q(
        input_data_ready_r[30]), .QN(n7505) );
  DFFRX2 conv_inst_data_abc_1_r_reg_6_ ( .D(conv_inst_N130), .CK(i_clk), .RN(
        n7758), .Q(conv_inst_data_abc_1_r[6]) );
  DFFRHQX1 conv_inst_conv_2_r_reg_2_ ( .D(conv_inst_N2380), .CK(i_clk), .RN(
        n7773), .Q(conv_inst_n45) );
  DFFRHQX4 median_sobel_inst_u_sobel_gradient_submodule_Gx_abs_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N103), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_n97) );
  DFFRX2 conv_inst_conv_4_r_reg_14_ ( .D(conv_inst_N2840), .CK(i_clk), .RN(
        n7769), .Q(conv_inst_conv_4_r[14]), .QN(conv_inst_n245) );
  DFFRHQX1 conv_inst_conv_3_r_reg_15_ ( .D(conv_inst_N2680), .CK(i_clk), .RN(
        n7745), .Q(conv_inst_n184) );
  DFFRHQX1 sram_addr_ready_r_reg_0__0_ ( .D(n1395), .CK(i_clk), .RN(n7761), 
        .Q(sram_addr_w[0]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_1_ ( .D(
        median_sobel_inst_data_b_r[1]), .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .QN(
        median_sobel_inst_u_median_filter_submodule_n906) );
  DFFRX2 x_origin_r_reg_2_ ( .D(n487), .CK(i_clk), .RN(n7761), .Q(
        x_origin_r[2]), .QN(n7658) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a7_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[2]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_net100057) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]), .CK(i_clk), 
        .RN(n7755), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7])
         );
  DFFRX2 conv_inst_conv_3_r_reg_3_ ( .D(conv_inst_N2560), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_conv_3_r[3]), .QN(conv_inst_n239) );
  DFFSRHQX4 median_sobel_inst_u_median_filter_submodule_a3_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[3]), .CK(i_clk), .SN(
        1'b1), .RN(n7772), .Q(
        median_sobel_inst_u_median_filter_submodule_net52732) );
  DFFSRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p6_r_reg_0_ ( .D(
        n7785), .CK(i_clk), .SN(n7753), .RN(1'b1), .Q(
        median_sobel_inst_u_median_filter_submodule_n923) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n831), .CK(i_clk), .RN(
        n7763), .Q(median_sobel_inst_u_median_filter_submodule_net94165) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .CK(i_clk), 
        .RN(n7747), .Q(median_sobel_inst_u_sobel_gradient_submodule_n96) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_n428), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), 
        .QN(n4275) );
  DFFRHQX1 sram_addr_ready_r_reg_2__7_ ( .D(sram_addr_wait_r[22]), .CK(i_clk), 
        .RN(n7756), .Q(n1995) );
  DFFRHQX1 conv_inst_data_abc_1_r_reg_2_ ( .D(conv_inst_N126), .CK(i_clk), 
        .RN(n7773), .Q(conv_inst_n191) );
  DFFRHQX1 conv_inst_conv_4_r_reg_4_ ( .D(conv_inst_N274), .CK(i_clk), .RN(
        n7745), .Q(conv_inst_conv_4_r[4]) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a4_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a4[1]), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_median_filter_submodule_n1071) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_12_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N142), .CK(i_clk), 
        .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]), .CK(i_clk), 
        .RN(n7751), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), 
        .QN(n3587) );
  DFFRX2 conv_inst_conv_1_r_reg_2_ ( .D(conv_inst_N221), .CK(i_clk), .RN(n7757), .Q(conv_inst_conv_1_r[2]) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .CK(i_clk), 
        .RN(n7761), .Q(median_sobel_inst_u_sobel_gradient_submodule_n359) );
  DFFRHQX4 input_data_ready_r_reg_9_ ( .D(N726), .CK(i_clk), .RN(n7752), .Q(
        n1927) );
  DFFRHQX1 conv_inst_conv_4_r_reg_13_ ( .D(conv_inst_N283), .CK(i_clk), .RN(
        n7783), .Q(conv_inst_n51) );
  DFFRX2 conv_inst_data_bcd_2_r_reg_9_ ( .D(conv_inst_N144), .CK(i_clk), .RN(
        n7759), .Q(conv_inst_data_bcd_2_r[9]) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_net19699), .CK(i_clk), 
        .RN(n7784), .Q(median_sobel_inst_u_median_filter_submodule_n108) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p7_r_reg_2_ ( .D(
        median_sobel_inst_data_g_r[2]), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n872) );
  DFFRX4 conv_inst_conv_1_r_reg_11_ ( .D(conv_inst_N230), .CK(i_clk), .RN(
        n7776), .Q(conv_inst_conv_1_r[11]), .QN(conv_inst_n252) );
  DFFRHQX8 median_sobel_inst_u_median_filter_submodule_a8_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[3]), .CK(i_clk), .RN(
        n7750), .Q(median_sobel_inst_u_median_filter_submodule_n143) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N151), .CK(i_clk), .RN(
        n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_n86), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n507) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_0_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .CK(i_clk), 
        .RN(n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_N159), 
        .QN(median_sobel_inst_u_sobel_gradient_submodule_n62) );
  DFFRHQX2 conv_inst_conv_3_r_reg_9_ ( .D(conv_inst_N2620), .CK(i_clk), .RN(
        n7757), .Q(n4289) );
  DFFSHQX8 curr_state_reg_2_ ( .D(n1386), .CK(i_clk), .SN(n7776), .Q(n818) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_p4_r_reg_6_ ( .D(n4274), 
        .CK(i_clk), .RN(n7756), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]) );
  DFFRX2 conv_inst_conv_2_r_reg_13_ ( .D(conv_inst_N2490), .CK(i_clk), .RN(
        n7779), .Q(conv_inst_conv_2_r[13]), .QN(conv_inst_n18) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a8_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[0]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net97925) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .CK(i_clk), 
        .RN(n7752), .Q(n7540), .QN(n4279) );
  DFFRHQX2 conv_inst_conv_2_r_reg_7_ ( .D(conv_inst_N243), .CK(i_clk), .RN(
        n7763), .Q(conv_inst_conv_2_r[7]) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r_reg_10_ ( 
        .D(median_sobel_inst_u_sobel_gradient_submodule_N153), .CK(i_clk), 
        .RN(n7751), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]) );
  DFFRX4 cnt_reg_0_ ( .D(n484), .CK(i_clk), .RN(n7752), .Q(cnt[0]), .QN(n462)
         );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a6_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[2]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net94922) );
  DFFRHQX8 input_data_ready_r_reg_1_ ( .D(N718), .CK(i_clk), .RN(n7756), .Q(
        n2004) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]), .CK(i_clk), 
        .RN(n7781), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6])
         );
  DFFRX4 sram_data_out_r_reg_2__0_ ( .D(sram_data_out_w[16]), .CK(i_clk), .RN(
        n7761), .Q(n7743), .QN(n1921) );
  DFFRX4 sram_data_out_r_reg_2__3_ ( .D(sram_data_out_w[19]), .CK(i_clk), .RN(
        n7763), .Q(n7742), .QN(n1969) );
  DFFRX4 sram_data_out_r_reg_2__7_ ( .D(sram_data_out_w[23]), .CK(i_clk), .RN(
        n7763), .Q(n7741), .QN(n1919) );
  DFFRX4 sram_data_out_r_reg_3__1_ ( .D(sram_data_out_w[25]), .CK(i_clk), .RN(
        n7761), .Q(n7738), .QN(n1916) );
  DFFRX4 sram_data_out_r_reg_2__4_ ( .D(sram_data_out_w[20]), .CK(i_clk), .RN(
        n7784), .Q(n7740), .QN(n1957) );
  DFFRX4 sram_data_out_r_reg_1__6_ ( .D(sram_data_out_w[14]), .CK(i_clk), .RN(
        n7763), .QN(n1936) );
  DFFRX4 sram_data_out_r_reg_1__1_ ( .D(sram_data_out_w[9]), .CK(i_clk), .RN(
        n7763), .QN(n1968) );
  DFFRX4 sram_data_out_r_reg_1__4_ ( .D(sram_data_out_w[12]), .CK(i_clk), .RN(
        n7761), .QN(n1945) );
  DFFRX4 sram_data_out_r_reg_1__7_ ( .D(sram_data_out_w[15]), .CK(i_clk), .RN(
        n7761), .QN(n1946) );
  DFFRX4 sram_data_out_r_reg_0__4_ ( .D(sram_data_out_w[4]), .CK(i_clk), .RN(
        n7763), .QN(n1966) );
  DFFRX4 sram_data_out_r_reg_0__1_ ( .D(sram_data_out_w[1]), .CK(i_clk), .RN(
        n7761), .QN(n1950) );
  DFFRX4 sram_data_out_r_reg_0__7_ ( .D(sram_data_out_w[7]), .CK(i_clk), .RN(
        n7761), .QN(n1963) );
  DFFRX4 sram_data_out_r_reg_3__3_ ( .D(sram_data_out_w[27]), .CK(i_clk), .RN(
        n7747), .QN(n1948) );
  DFFRX4 sram_data_out_r_reg_0__6_ ( .D(sram_data_out_w[6]), .CK(i_clk), .RN(
        n7755), .QN(n7576) );
  DFFRX4 sram_data_out_r_reg_3__5_ ( .D(sram_data_out_w[29]), .CK(i_clk), .RN(
        n7747), .QN(n1959) );
  DFFRX4 sram_data_out_r_reg_2__5_ ( .D(sram_data_out_w[21]), .CK(i_clk), .RN(
        n7747), .Q(n7739), .QN(n1938) );
  DFFRHQX8 median_sobel_inst_u_median_filter_submodule_b5_r_reg_1_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n766), .CK(i_clk), .RN(
        n7749), .Q(median_sobel_inst_u_median_filter_submodule_n1193) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a5_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[3]), .CK(i_clk), .RN(
        n7758), .Q(median_sobel_inst_u_median_filter_submodule_a5_r_3_) );
  DFFRHQX2 conv_inst_data_bcd_r_reg_7_ ( .D(conv_inst_data_bcd_w[7]), .CK(
        i_clk), .RN(n7772), .Q(conv_inst_n284) );
  DFFRX4 input_data_ready_r_reg_11_ ( .D(N728), .CK(i_clk), .RN(n7753), .Q(
        n4306), .QN(n2002) );
  DFFRX2 conv_inst_o_out_data_ready_r_reg_12_ ( .D(conv_inst_N78), .CK(i_clk), 
        .RN(n7780), .QN(n7723) );
  DFFRX2 conv_inst_conv_4_r_reg_7_ ( .D(conv_inst_N277), .CK(i_clk), .RN(n7780), .Q(conv_inst_conv_4_r[7]), .QN(conv_inst_n235) );
  DFFRHQX2 sram_addr_ready_r_reg_2__0_ ( .D(n1393), .CK(i_clk), .RN(n7783), 
        .Q(sram_addr_w[16]) );
  DFFRHQX2 conv_inst_data_bcd_r_reg_8_ ( .D(conv_inst_data_bcd_w[8]), .CK(
        i_clk), .RN(n7765), .Q(conv_inst_n285) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]), .CK(i_clk), 
        .RN(n7754), .QN(median_sobel_inst_u_sobel_gradient_submodule_n44) );
  DFFRX2 conv_inst_conv_3_r_reg_7_ ( .D(conv_inst_N2600), .CK(i_clk), .RN(
        n7763), .Q(conv_inst_conv_3_r[7]) );
  DFFRHQX2 conv_inst_conv_4_r_reg_3_ ( .D(conv_inst_N2730), .CK(i_clk), .RN(
        n7783), .Q(conv_inst_conv_4_r[3]) );
  DFFRX4 cnt_reg_10_ ( .D(n474), .CK(i_clk), .RN(n7781), .Q(cnt[10]), .QN(n451) );
  DFFRX2 median_sobel_inst_med_sobel_e_delay_r_reg_5__0_ ( .D(
        median_sobel_inst_n607), .CK(i_clk), .RN(n7782), .QN(
        median_sobel_inst_n419) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n820), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_median_filter_submodule_net96631) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_6_ ( .D(
        median_sobel_inst_n983), .CK(i_clk), .RN(n7745), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n885) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p9_d_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .CK(i_clk), 
        .RN(n7748), .Q(median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), 
        .QN(n3580) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]), .CK(i_clk), 
        .RN(n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1])
         );
  DFFRX1 conv_inst_data_abc_r_reg_4_ ( .D(conv_inst_data_abc_w[4]), .CK(i_clk), 
        .RN(n7778), .QN(conv_inst_n260) );
  DFFRX2 conv_inst_conv_3_r_reg_11_ ( .D(conv_inst_N264), .CK(i_clk), .RN(
        n7780), .Q(conv_inst_conv_3_r[11]) );
  DFFRHQX4 input_data_ready_r_reg_17_ ( .D(N734), .CK(i_clk), .RN(n7784), .Q(
        n829) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__5_ ( .D(
        median_sobel_inst_n530), .CK(i_clk), .RN(n7755), .QN(
        median_sobel_inst_n1161) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_7__4_ ( .D(
        median_sobel_inst_n587), .CK(i_clk), .RN(n7758), .Q(n7698), .QN(
        median_sobel_inst_n946) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_a2_r_reg_3_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a2[3]), .CK(i_clk), .RN(
        n7747), .Q(median_sobel_inst_u_median_filter_submodule_net53043) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_10__3_ ( .D(
        median_sobel_inst_n564), .CK(i_clk), .RN(n7759), .Q(n4319), .QN(
        median_sobel_inst_n919) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[2]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net102875) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_b9_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n819), .CK(i_clk), .RN(
        n7753), .Q(median_sobel_inst_u_median_filter_submodule_net97710) );
  DFFRX2 conv_inst_conv_1_r_reg_3_ ( .D(conv_inst_N222), .CK(i_clk), .RN(n7758), .Q(conv_inst_conv_1_r[3]) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_14__3_ ( .D(
        median_sobel_inst_n532), .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_n55), .QN(n4321) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b1_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n830), .CK(i_clk), .RN(
        n7769), .Q(median_sobel_inst_u_median_filter_submodule_net84882) );
  DFFRHQX1 conv_inst_conv_1_r_reg_0_ ( .D(conv_inst_N219), .CK(i_clk), .RN(
        n7749), .Q(conv_inst_n189) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[5]), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_median_filter_submodule_net99809) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_a3_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a3[6]), .CK(i_clk), .RN(
        n7776), .Q(n7578), .QN(
        median_sobel_inst_u_median_filter_submodule_n1477) );
  DFFRX2 median_sobel_inst_u_median_filter_submodule_b5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n765), .CK(i_clk), .RN(
        n7780), .Q(n4308), .QN(
        median_sobel_inst_u_median_filter_submodule_n810) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a6_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a6[0]), .CK(i_clk), .RN(
        n7755), .Q(n7569) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_13_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N172), .CK(i_clk), .RN(
        n7754), .QN(median_sobel_inst_u_sobel_gradient_submodule_n74) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__5_ ( .D(
        median_sobel_inst_n602), .CK(i_clk), .RN(n7757), .Q(n4320), .QN(
        median_sobel_inst_n918) );
  DFFRHQX4 median_sobel_inst_u_median_filter_submodule_b5_r_reg_2_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n767), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_net96458) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_5__2_ ( .D(
        median_sobel_inst_n605), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_n86) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_a1_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a1[7]), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_median_filter_submodule_n117) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a8_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a8[5]), .CK(i_clk), .RN(
        n7773), .Q(median_sobel_inst_u_median_filter_submodule_n214) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a5_r_reg_6_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[6]), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_median_filter_submodule_n259) );
  DFFRX1 display_done_r_reg ( .D(n7790), .CK(i_clk), .RN(n7754), .Q(n1124) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_13__1_ ( .D(
        median_sobel_inst_n542), .CK(i_clk), .RN(n7757), .QN(
        median_sobel_inst_n1165) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__6_ ( .D(
        median_sobel_inst_n569), .CK(i_clk), .RN(n7758), .Q(
        median_sobel_inst_n59), .QN(n7519) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__2_ ( .D(
        median_sobel_inst_n573), .CK(i_clk), .RN(n7755), .QN(
        median_sobel_inst_n912) );
  DFFRHQX4 x_origin_r_reg_0_ ( .D(n489), .CK(i_clk), .RN(n7780), .Q(N760) );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_temp_b_r_reg_7_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]), .CK(i_clk), 
        .RN(n7772), .Q(median_sobel_inst_u_sober_compare_submodule_net97821)
         );
  DFFRHQX1 conv_inst_data_abc_3_r_reg_1_ ( .D(conv_inst_N198), .CK(i_clk), 
        .RN(n7773), .Q(conv_inst_data_abc_3_r[1]) );
  DFFRHQX1 median_sobel_inst_med_sobel_e_delay_r_reg_9__1_ ( .D(
        median_sobel_inst_n574), .CK(i_clk), .RN(n7747), .Q(
        median_sobel_inst_n1066) );
  DFFRHQX2 median_sobel_inst_cnt_reg_5_ ( .D(median_sobel_inst_N114), .CK(
        i_clk), .RN(n7751), .Q(median_sobel_inst_n990) );
  DFFRHQX2 conv_inst_conv_2_r_reg_11_ ( .D(conv_inst_N247), .CK(i_clk), .RN(
        n7761), .Q(n4294) );
  DFFRX2 conv_inst_data_abc_1_r_reg_10_ ( .D(conv_inst_N134), .CK(i_clk), .RN(
        n7745), .Q(conv_inst_data_abc_1_r[10]) );
  DFFRHQX2 median_sobel_inst_u_median_filter_submodule_a7_r_reg_5_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[5]), .CK(i_clk), .RN(
        n7772), .Q(median_sobel_inst_u_median_filter_submodule_n274) );
  DFFRX2 conv_inst_data_abc_1_r_reg_9_ ( .D(conv_inst_N133), .CK(i_clk), .RN(
        n7761), .Q(conv_inst_data_abc_1_r[9]) );
  DFFRX2 conv_inst_conv_3_r_reg_10_ ( .D(conv_inst_N2630), .CK(i_clk), .RN(
        n7757), .Q(conv_inst_conv_3_r[10]) );
  DFFRHQX2 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_2_ ( .D(
        median_sobel_inst_data_c_r[2]), .CK(i_clk), .RN(n7749), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n78) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N76), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]) );
  DFFRX1 conv_inst_data_abc_3_r_reg_10_ ( .D(conv_inst_N207), .CK(i_clk), .RN(
        n7759), .Q(n3603), .QN(n4310) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_mult1_r_reg_14_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N173), .CK(i_clk), .RN(
        n7759), .QN(median_sobel_inst_u_sobel_gradient_submodule_n21) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__3_ ( .D(
        median_sobel_inst_n612), .CK(i_clk), .RN(n7755), .Q(
        median_sobel_inst_n780) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_1__7_ ( .D(
        median_sobel_inst_n632), .CK(i_clk), .RN(n7758), .QN(
        median_sobel_inst_n32) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_0_ ( .D(
        median_sobel_inst_n1030), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .QN(
        median_sobel_inst_u_median_filter_submodule_n916) );
  DFFRX1 conv_inst_data_bcd_2_r_reg_8_ ( .D(conv_inst_N143), .CK(i_clk), .RN(
        n7784), .Q(conv_inst_data_bcd_2_r[8]), .QN(n7734) );
  DFFRX1 median_sobel_inst_med_sobel_e_delay_r_reg_4__4_ ( .D(
        median_sobel_inst_n611), .CK(i_clk), .RN(n7756), .QN(
        median_sobel_inst_n931) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p2_r_reg_3_ ( .D(
        median_sobel_inst_data_b_r[3]), .CK(i_clk), .RN(n7765), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .QN(
        median_sobel_inst_u_median_filter_submodule_n905) );
  DFFRHQX1 conv_inst_conv_3_r_reg_8_ ( .D(conv_inst_N2610), .CK(i_clk), .RN(
        n7745), .Q(conv_inst_n49) );
  DFFRX2 median_sobel_inst_u_sobel_gradient_submodule_p4_r_reg_4_ ( .D(
        median_sobel_inst_data_d_r[4]), .CK(i_clk), .RN(n7778), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]) );
  DFFRX2 cnt_reg_3_ ( .D(n481), .CK(i_clk), .RN(n7779), .Q(cnt[3]), .QN(n459)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N270), .CK(i_clk), .RN(
        n7757), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .QN(
        n4278) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N260), .CK(i_clk), .RN(
        n7756), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_abs_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N73), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N20), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]) );
  DFFRX1 x_r_reg_2_ ( .D(N787), .CK(i_clk), .RN(n7761), .Q(x_r[2]), .QN(n4541)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_2_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N17), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N9), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .QN(
        n7737) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_p8_r_reg_4_ ( .D(
        median_sobel_inst_data_h_r[4]), .CK(i_clk), .RN(n7757), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .QN(
        median_sobel_inst_u_median_filter_submodule_n883) );
  DFFRX1 median_sobel_inst_cs_reg_2_ ( .D(median_sobel_inst_n1033), .CK(i_clk), 
        .RN(n7784), .Q(n7590), .QN(median_sobel_inst_n1086) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a7_r_reg_7_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a7[7]), .CK(i_clk), .RN(
        n7755), .Q(n7561), .QN(
        median_sobel_inst_u_median_filter_submodule_net94186) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p1_d_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .CK(i_clk), 
        .RN(n7761), .Q(median_sobel_inst_u_sobel_gradient_submodule_n412) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N139), .CK(i_clk), .RN(
        n7748), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9])
         );
  DFFRX2 cnt_reg_4_ ( .D(n480), .CK(i_clk), .RN(n7747), .Q(cnt[4]), .QN(n458)
         );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p7_r_reg_7_ ( .D(
        median_sobel_inst_data_g_r[7]), .CK(i_clk), .RN(n7773), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_n409) );
  DFFRX2 conv_inst_cs_reg_1_ ( .D(n7789), .CK(i_clk), .RN(n7758), .Q(n7565), 
        .QN(conv_inst_n25) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[6]), .CK(i_clk), 
        .RN(n7784), .Q(n7591) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N12), .CK(i_clk), .RN(
        n7783), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]), .CK(i_clk), 
        .RN(n7747), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_1_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N119), .CK(i_clk), .RN(
        n7765), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy2_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N401), .CK(i_clk), .RN(
        n7759), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_r_reg_5_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]), .CK(i_clk), 
        .RN(n7769), .QN(n7541) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p8_r_reg_6_ ( .D(
        median_sobel_inst_data_h_r[6]), .CK(i_clk), .RN(n7754), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .QN(
        median_sobel_inst_u_median_filter_submodule_n914) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy1_reg_4_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N290), .CK(i_clk), .RN(
        n7766), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N125), .CK(i_clk), .RN(
        n7780), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N137), .CK(i_clk), .RN(
        n7754), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7])
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx1_r_reg_6_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]), .CK(i_clk), 
        .RN(n7769), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6])
         );
  DFFRHQX1 median_sobel_inst_u_sober_compare_submodule_angle4_r_reg_1_ ( .D(
        median_sobel_inst_u_sober_compare_submodule_n89), .CK(i_clk), .RN(
        n7746), .Q(median_sobel_inst_u_sober_compare_submodule_n332) );
  DFFRHQX2 conv_inst_conv_2_r_reg_16_ ( .D(conv_inst_N2520), .CK(i_clk), .RN(
        n7748), .Q(conv_inst_conv_2_r[16]) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_reg_7_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]), .CK(i_clk), 
        .RN(n7753), .QN(median_sobel_inst_u_sobel_gradient_submodule_n26) );
  DFFRX1 conv_inst_conv_1_r_reg_16_ ( .D(conv_inst_N2350), .CK(i_clk), .RN(
        n7781), .Q(conv_inst_conv_1_r[16]), .QN(conv_inst_n269) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_8_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]), .CK(i_clk), 
        .RN(n7750), .Q(median_sobel_inst_u_sobel_gradient_submodule_n340) );
  DFFRX1 depth_ready_r_reg_0_ ( .D(n485), .CK(i_clk), .RN(n7745), .Q(n1914), 
        .QN(n7585) );
  DFFRX1 depth_ready_r_reg_1_ ( .D(n486), .CK(i_clk), .RN(n7764), .Q(n2218), 
        .QN(n7580) );
  DFFRHQX1 median_sobel_inst_u_sobel_gradient_submodule_p3_r_reg_7_ ( .D(n3556), .CK(i_clk), .RN(n7778), .Q(median_sobel_inst_u_sobel_gradient_submodule_n56)
         );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_reg_10_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[10]), .CK(i_clk), 
        .RN(n7753), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .QN(
        median_sobel_inst_u_sobel_gradient_submodule_n64) );
  DFFRX1 conv_inst_o_out_data_ready_r_reg_4_ ( .D(conv_inst_N70), .CK(i_clk), 
        .RN(n7783), .Q(conv_result_w[4]) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_3_ ( .D(
        median_sobel_inst_n982), .CK(i_clk), .RN(n7747), .Q(
        median_sobel_inst_u_median_filter_submodule_n720), .QN(n7630) );
  DFFRHQX2 conv_inst_data_bcd_r_reg_6_ ( .D(conv_inst_data_bcd_w[6]), .CK(
        i_clk), .RN(n7779), .Q(conv_inst_n199) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_a5_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_a5[0]), .CK(i_clk), .RN(
        n7754), .QN(median_sobel_inst_u_median_filter_submodule_n782) );
  DFFRX1 median_sobel_inst_u_median_filter_submodule_p9_r_reg_2_ ( .D(n3555), 
        .CK(i_clk), .RN(n7766), .Q(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .QN(
        median_sobel_inst_u_median_filter_submodule_n874) );
  DFFRHQX1 median_sobel_inst_u_median_filter_submodule_b1_r_reg_0_ ( .D(
        median_sobel_inst_u_median_filter_submodule_n825), .CK(i_clk), .RN(
        n7745), .Q(median_sobel_inst_u_median_filter_submodule_n167) );
  DFFRX1 z_r_reg_2_ ( .D(N790), .CK(i_clk), .RN(n7761), .Q(n2024) );
  DFFRX1 median_sobel_inst_u_sobel_gradient_submodule_Gx2_reg_9_ ( .D(
        median_sobel_inst_u_sobel_gradient_submodule_N24), .CK(i_clk), .RN(
        n7761), .Q(median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]) );
  DFFSX1 out_data_ready_r_reg_0_ ( .D(n4309), .CK(i_clk), .SN(n7745), .QN(
        o_out_data[0]) );
  DFFRX1 out_data_ready_r_reg_2_ ( .D(out_data_wait_r[2]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[2]) );
  DFFRX1 out_data_ready_r_reg_4_ ( .D(out_data_wait_r[4]), .CK(i_clk), .RN(
        n7753), .Q(o_out_data[4]) );
  DFFRX1 out_data_ready_r_reg_6_ ( .D(out_data_wait_r[6]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[6]) );
  DFFRX1 out_data_ready_r_reg_5_ ( .D(out_data_wait_r[5]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[5]) );
  DFFRX1 out_data_ready_r_reg_7_ ( .D(out_data_wait_r[7]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[7]) );
  DFFRX1 out_data_ready_r_reg_1_ ( .D(out_data_wait_r[1]), .CK(i_clk), .RN(
        n7752), .Q(o_out_data[1]) );
  BUFX20 U3413 ( .A(i_rst_n), .Y(n7783) );
  CLKBUFX8 U3414 ( .A(i_rst_n), .Y(n7747) );
  CLKBUFX8 U3415 ( .A(i_rst_n), .Y(n7784) );
  CLKBUFX8 U3416 ( .A(i_rst_n), .Y(n7748) );
  BUFX4 U3417 ( .A(n7782), .Y(n7764) );
  OAI21XL U3418 ( .A0(n6264), .A1(
        median_sobel_inst_u_median_filter_submodule_n876), .B0(n6217), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[3]) );
  CLKMX2X2 U3419 ( .A(median_sobel_inst_n976), .B(n2004), .S0(n6021), .Y(
        median_sobel_inst_n1473) );
  CLKMX2X2 U3420 ( .A(median_sobel_inst_n1104), .B(input_data_ready_r[6]), 
        .S0(n5691), .Y(median_sobel_inst_n1441) );
  CLKMX2X2 U3421 ( .A(n7701), .B(n1927), .S0(n6021), .Y(
        median_sobel_inst_n1481) );
  CLKMX2X2 U3422 ( .A(n7523), .B(n7721), .S0(n6021), .Y(
        median_sobel_inst_n1471) );
  CLKMX2X2 U3423 ( .A(median_sobel_inst_n1058), .B(input_data_ready_r[29]), 
        .S0(n6021), .Y(median_sobel_inst_n1486) );
  CLKMX2X2 U3424 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[41]), .S0(n5828), .Y(median_sobel_inst_n479) );
  CLKMX2X2 U3425 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[43]), .S0(n5828), .Y(median_sobel_inst_n471) );
  CLKMX2X2 U3426 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[33]), .S0(n5828), .Y(median_sobel_inst_n511) );
  CLKMX2X2 U3427 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[26]), .S0(n7137), .Y(median_sobel_inst_n492) );
  CLKMX2X2 U3428 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[25]), .S0(n7137), .Y(median_sobel_inst_n496) );
  CLKMX2X2 U3429 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[23]), .S0(n7137), .Y(median_sobel_inst_n504) );
  CLKMX2X2 U3430 ( .A(median_sobel_inst_n1066), .B(n7701), .S0(n6020), .Y(
        median_sobel_inst_n574) );
  OAI21XL U3431 ( .A0(median_sobel_inst_u_median_filter_submodule_n1500), .A1(
        n6953), .B0(n6774), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[7]) );
  AO22X1 U3432 ( .A0(n7292), .A1(n7235), .B0(n7289), .B1(cnt[1]), .Y(n483) );
  OAI21XL U3433 ( .A0(median_sobel_inst_u_median_filter_submodule_n905), .A1(
        n5833), .B0(n5731), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[3]) );
  OAI22XL U3434 ( .A0(conv_inst_n312), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n314), .Y(conv_inst_N205) );
  OAI22XL U3435 ( .A0(conv_inst_n314), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n313), .Y(conv_inst_N206) );
  OAI22XL U3436 ( .A0(n6430), .A1(n6347), .B0(n6349), .B1(conv_inst_n270), .Y(
        conv_inst_N213) );
  OAI22XL U3437 ( .A0(conv_inst_n262), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n312), .Y(conv_inst_N204) );
  OAI22XL U3438 ( .A0(n6430), .A1(n4542), .B0(n6349), .B1(conv_inst_n265), .Y(
        conv_inst_N210) );
  OAI22XL U3439 ( .A0(n6430), .A1(n6294), .B0(n6349), .B1(n6429), .Y(
        conv_inst_N217) );
  OAI21XL U3440 ( .A0(median_sobel_inst_u_median_filter_submodule_n853), .A1(
        n6264), .B0(n5693), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[2]) );
  OAI22XL U3441 ( .A0(n6430), .A1(n6341), .B0(n6349), .B1(n6294), .Y(
        conv_inst_N216) );
  CLKMX2X2 U3442 ( .A(n7618), .B(n4304), .S0(n7137), .Y(median_sobel_inst_n597) );
  OAI21XL U3443 ( .A0(median_sobel_inst_u_median_filter_submodule_n877), .A1(
        n7160), .B0(n5787), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[3]) );
  OAI21XL U3444 ( .A0(n7234), .A1(
        median_sobel_inst_u_median_filter_submodule_n872), .B0(n7233), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[2]) );
  OA21XL U3445 ( .A0(n5117), .A1(n5116), .B0(n7458), .Y(N724) );
  OR2X1 U3446 ( .A(n7307), .B(n7306), .Y(N726) );
  AND2X2 U3447 ( .A(n5628), .B(n5923), .Y(conv_inst_N250) );
  OAI21XL U3448 ( .A0(n7160), .A1(
        median_sobel_inst_u_median_filter_submodule_n883), .B0(n5730), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[4]) );
  OAI21XL U3449 ( .A0(n7160), .A1(
        median_sobel_inst_u_median_filter_submodule_n927), .B0(n5725), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[2]) );
  AND2X2 U3450 ( .A(n4110), .B(n5923), .Y(conv_inst_N233) );
  OR2X1 U3451 ( .A(n5131), .B(n5130), .Y(N729) );
  OAI21XL U3452 ( .A0(median_sobel_inst_u_median_filter_submodule_n865), .A1(
        n7160), .B0(n7159), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[1]) );
  CLKMX2X2 U3453 ( .A(n7627), .B(median_sobel_inst_n85), .S0(n7137), .Y(
        median_sobel_inst_n637) );
  CLKMX2X2 U3454 ( .A(median_sobel_inst_n1094), .B(n7696), .S0(n7137), .Y(
        median_sobel_inst_n584) );
  CLKMX2X2 U3455 ( .A(n7724), .B(n3610), .S0(n6021), .Y(
        median_sobel_inst_n1493) );
  OAI21XL U3456 ( .A0(median_sobel_inst_u_median_filter_submodule_n887), .A1(
        n6264), .B0(n5601), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[0]) );
  OAI22XL U3457 ( .A0(conv_inst_n259), .A1(n7147), .B0(conv_inst_n258), .B1(
        n5979), .Y(conv_inst_N127) );
  OAI22XL U3458 ( .A0(conv_inst_n270), .A1(n7147), .B0(n6347), .B1(n5979), .Y(
        conv_inst_N140) );
  OAI22XL U3459 ( .A0(conv_inst_n314), .A1(n5979), .B0(n7147), .B1(
        conv_inst_n313), .Y(conv_inst_N133) );
  OAI21XL U3460 ( .A0(median_sobel_inst_u_median_filter_submodule_n849), .A1(
        n6264), .B0(n5694), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[6]) );
  CLKMX2X2 U3461 ( .A(median_sobel_inst_angle[6]), .B(
        median_sobel_inst_angle_w[0]), .S0(n5784), .Y(median_sobel_inst_n519)
         );
  CLKMX2X2 U3462 ( .A(median_sobel_inst_angle[2]), .B(
        median_sobel_inst_angle_w[0]), .S0(n6021), .Y(median_sobel_inst_n517)
         );
  CLKMX2X2 U3463 ( .A(median_sobel_inst_n1059), .B(n7727), .S0(n6020), .Y(
        median_sobel_inst_n633) );
  CLKMX2X2 U3464 ( .A(median_sobel_inst_n1342), .B(n7708), .S0(n6020), .Y(
        median_sobel_inst_n625) );
  CLKMX2X2 U3465 ( .A(median_sobel_inst_n299), .B(n7524), .S0(n6020), .Y(
        median_sobel_inst_n626) );
  OAI21XL U3466 ( .A0(median_sobel_inst_u_median_filter_submodule_n857), .A1(
        n6953), .B0(n6765), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[5]) );
  OAI21XL U3467 ( .A0(n7234), .A1(
        median_sobel_inst_u_median_filter_submodule_n885), .B0(n6128), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[6]) );
  OAI21XL U3468 ( .A0(n7234), .A1(
        median_sobel_inst_u_median_filter_submodule_n850), .B0(n6130), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[4]) );
  OAI21XL U3469 ( .A0(median_sobel_inst_u_median_filter_submodule_n859), .A1(
        n6953), .B0(n6805), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[4]) );
  OAI21XL U3470 ( .A0(median_sobel_inst_u_median_filter_submodule_n851), .A1(
        n6953), .B0(n6768), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[6]) );
  OR2X1 U3471 ( .A(n7313), .B(n7312), .Y(N732) );
  OAI21XL U3472 ( .A0(n6545), .A1(
        median_sobel_inst_u_median_filter_submodule_n860), .B0(n6175), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[7]) );
  OAI21XL U3473 ( .A0(n3855), .A1(median_sobel_inst_n186), .B0(n3858), .Y(
        median_sobel_inst_n1412) );
  OAI21XL U3474 ( .A0(n3855), .A1(median_sobel_inst_n187), .B0(n3859), .Y(
        median_sobel_inst_n1411) );
  OAI21XL U3475 ( .A0(n3855), .A1(median_sobel_inst_n219), .B0(n3856), .Y(
        median_sobel_inst_n1429) );
  OR2X1 U3476 ( .A(n5129), .B(n5128), .Y(N736) );
  OR2X1 U3477 ( .A(n4543), .B(n7309), .Y(N740) );
  OAI21XL U3478 ( .A0(n4136), .A1(n7501), .B0(n4139), .Y(
        median_sobel_inst_n544) );
  CLKINVX1 U3479 ( .A(n5934), .Y(median_sobel_inst_data_d_r[4]) );
  AO21X2 U3480 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), 
        .A1(n4296), .B0(n4297), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[3]) );
  NAND2X2 U3481 ( .A(n3816), .B(n3814), .Y(
        median_sobel_inst_u_median_filter_submodule_a69_w) );
  NOR2X2 U3482 ( .A(n3647), .B(n3646), .Y(conv_inst_N2680) );
  OAI2BB1X2 U3483 ( .A0N(n7510), .A1N(n7437), .B0(n7436), .Y(n1387) );
  NOR2X2 U3484 ( .A(n3743), .B(n3646), .Y(conv_inst_N279) );
  NOR2BX1 U3485 ( .AN(n6472), .B(n3646), .Y(conv_inst_N278) );
  NOR2X2 U3486 ( .A(n4193), .B(n4192), .Y(conv_inst_N2840) );
  NOR2X2 U3487 ( .A(n3617), .B(n6797), .Y(conv_inst_N2630) );
  OAI21X2 U3488 ( .A0(n5818), .A1(n5138), .B0(n3725), .Y(
        median_sobel_inst_u_median_filter_submodule_n831) );
  NOR2X2 U3489 ( .A(n4448), .B(n6797), .Y(conv_inst_N2340) );
  NOR2X2 U3490 ( .A(n5704), .B(n3632), .Y(N785) );
  NOR2BX2 U3491 ( .AN(n5319), .B(n6797), .Y(conv_inst_N229) );
  NOR2X1 U3492 ( .A(n5682), .B(n5681), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N142) );
  NOR2X2 U3493 ( .A(n4174), .B(n6330), .Y(conv_inst_N222) );
  OAI21X1 U3494 ( .A0(n1949), .A1(n5123), .B0(n7321), .Y(N731) );
  NOR2BX1 U3495 ( .AN(n5798), .B(n6330), .Y(conv_inst_N2610) );
  NAND2X1 U3496 ( .A(n6992), .B(n6922), .Y(sram_addr_wait_r[16]) );
  NAND2X1 U3497 ( .A(n7004), .B(n6920), .Y(sram_addr_wait_r[21]) );
  NAND2X1 U3498 ( .A(n6928), .B(n6927), .Y(sram_addr_wait_r[18]) );
  NAND2X1 U3499 ( .A(n6994), .B(n6916), .Y(sram_addr_wait_r[17]) );
  NAND2X1 U3500 ( .A(n6930), .B(n6914), .Y(sram_addr_wait_r[19]) );
  NAND2X1 U3501 ( .A(n7000), .B(n6915), .Y(sram_addr_wait_r[20]) );
  OAI21X2 U3502 ( .A0(n4366), .A1(n4122), .B0(n4121), .Y(N789) );
  MXI2X1 U3503 ( .A(median_sobel_inst_n1161), .B(n7692), .S0(n5968), .Y(
        median_sobel_inst_n530) );
  NOR2X1 U3504 ( .A(n6690), .B(n4000), .Y(median_sobel_inst_N109) );
  MXI2X1 U3505 ( .A(n3598), .B(n3574), .S0(n4001), .Y(
        median_sobel_inst_u_sober_compare_submodule_n136) );
  MXI2X1 U3506 ( .A(n3601), .B(n3573), .S0(n4001), .Y(
        median_sobel_inst_u_sober_compare_submodule_n139) );
  OAI21X1 U3507 ( .A0(n5712), .A1(
        median_sobel_inst_u_median_filter_submodule_n904), .B0(n4051), .Y(
        median_sobel_inst_u_median_filter_submodule_n823) );
  NOR2X1 U3508 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N129), .B(
        n3900), .Y(median_sobel_inst_u_sobel_gradient_submodule_N128) );
  OAI22XL U3509 ( .A0(n6430), .A1(conv_inst_n261), .B0(n6349), .B1(
        conv_inst_n262), .Y(conv_inst_N203) );
  OAI21X1 U3510 ( .A0(n5712), .A1(n5713), .B0(n4209), .Y(
        median_sobel_inst_u_median_filter_submodule_n822) );
  OAI21XL U3511 ( .A0(median_sobel_inst_u_median_filter_submodule_n858), .A1(
        n6953), .B0(n6771), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[2]) );
  XOR2X2 U3512 ( .A(n3785), .B(n7187), .Y(conv_inst_N74) );
  XNOR2X1 U3513 ( .A(n6816), .B(n6815), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[7]) );
  XNOR2X2 U3514 ( .A(n7380), .B(n4184), .Y(conv_inst_data_bcd_w[5]) );
  XOR2X1 U3515 ( .A(n4613), .B(n7583), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N156) );
  XNOR2X1 U3516 ( .A(n4610), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N157) );
  XOR2X1 U3517 ( .A(n7421), .B(n7130), .Y(conv_inst_data_abc_w[5]) );
  XOR2X1 U3518 ( .A(n4199), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net94800), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N126) );
  MXI2X1 U3519 ( .A(n3602), .B(n3964), .S0(n4001), .Y(median_sobel_inst_n474)
         );
  BUFX4 U3520 ( .A(i_rst_n), .Y(n7782) );
  INVX6 U3521 ( .A(n6253), .Y(n4293) );
  OR2X1 U3522 ( .A(input_data_ready_r[0]), .B(n4314), .Y(n6038) );
  INVX1 U3523 ( .A(n2004), .Y(n6088) );
  BUFX2 U3524 ( .A(n2035), .Y(n6569) );
  INVX1 U3525 ( .A(n1927), .Y(n6213) );
  AO21X1 U3526 ( .A0(median_sobel_inst_n1198), .A1(n7137), .B0(n6688), .Y(
        n6689) );
  OR2X1 U3527 ( .A(n4314), .B(n5740), .Y(n5741) );
  INVX1 U3528 ( .A(conv_inst_n199), .Y(n6348) );
  OR2X1 U3529 ( .A(input_data_ready_r[24]), .B(n6346), .Y(n6034) );
  CLKINVX1 U3530 ( .A(conv_inst_n200), .Y(n6429) );
  CLKINVX1 U3531 ( .A(conv_inst_n284), .Y(n6341) );
  CLKINVX1 U3532 ( .A(conv_inst_n285), .Y(n6294) );
  OAI22XL U3533 ( .A0(n1946), .A1(n7323), .B0(n1919), .B1(n7322), .Y(n4543) );
  OAI22XL U3534 ( .A0(n1944), .A1(n7323), .B0(n1960), .B1(n7322), .Y(n7120) );
  OAI22XL U3535 ( .A0(n1968), .A1(n7323), .B0(n1920), .B1(n7322), .Y(n7311) );
  OAI22XL U3536 ( .A0(n1962), .A1(n7323), .B0(n1943), .B1(n7322), .Y(n7315) );
  OAI22XL U3537 ( .A0(n1964), .A1(n7323), .B0(n1947), .B1(n7322), .Y(n7317) );
  CLKINVX1 U3538 ( .A(conv_inst_n95), .Y(n6347) );
  OAI22XL U3539 ( .A0(n1957), .A1(n7322), .B0(n1945), .B1(n7323), .Y(n5126) );
  OAI22XL U3540 ( .A0(n1941), .A1(n5123), .B0(n1917), .B1(n7327), .Y(n7308) );
  CLKAND2X3 U3541 ( .A(n7417), .B(n7416), .Y(n7418) );
  OAI22XL U3542 ( .A0(n1963), .A1(n5123), .B0(n1915), .B1(n7327), .Y(n7309) );
  AO21X1 U3543 ( .A0(n6697), .A1(n6696), .B0(n6695), .Y(n6701) );
  NAND2X2 U3544 ( .A(n7449), .B(n7448), .Y(n7473) );
  OAI2BB2XL U3545 ( .B0(n1959), .B1(n5123), .A0N(n7739), .A1N(n7318), .Y(n7119) );
  INVX3 U3546 ( .A(n7289), .Y(n6986) );
  NAND2X1 U3547 ( .A(n4083), .B(
        median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n5570) );
  NAND2X1 U3548 ( .A(n4083), .B(
        median_sobel_inst_u_median_filter_submodule_n276), .Y(n5718) );
  NAND2X1 U3549 ( .A(n5820), .B(
        median_sobel_inst_u_median_filter_submodule_n1093), .Y(n5717) );
  INVXL U3550 ( .A(n5784), .Y(n3854) );
  INVXL U3551 ( .A(n4135), .Y(n4149) );
  NOR2X2 U3552 ( .A(n3633), .B(N760), .Y(n3632) );
  NAND2X1 U3553 ( .A(n5784), .B(n4306), .Y(n3852) );
  NAND2X1 U3554 ( .A(n5819), .B(
        median_sobel_inst_u_median_filter_submodule_a5_r_3_), .Y(n5719) );
  NAND2X1 U3555 ( .A(n4083), .B(
        median_sobel_inst_u_median_filter_submodule_net94827), .Y(n5822) );
  NAND2X2 U3556 ( .A(n7155), .B(n7156), .Y(n7160) );
  NAND2X1 U3557 ( .A(n5820), .B(
        median_sobel_inst_u_median_filter_submodule_n273), .Y(n5716) );
  NAND2X1 U3558 ( .A(n5819), .B(
        median_sobel_inst_u_median_filter_submodule_n271), .Y(n5214) );
  NAND2X2 U3559 ( .A(n5815), .B(
        median_sobel_inst_u_median_filter_submodule_net52768), .Y(n4375) );
  NAND2XL U3560 ( .A(n5784), .B(median_sobel_inst_angle_w[1]), .Y(n3853) );
  NAND2X1 U3561 ( .A(n5820), .B(n7569), .Y(n5821) );
  CLKBUFX3 U3562 ( .A(n5602), .Y(n6535) );
  INVX1 U3563 ( .A(n7150), .Y(n7153) );
  NOR2X2 U3564 ( .A(n4185), .B(n7117), .Y(n4184) );
  INVX1 U3565 ( .A(n7292), .Y(n4085) );
  OR2X1 U3566 ( .A(n7225), .B(n7786), .Y(n4770) );
  INVXL U3567 ( .A(n6746), .Y(n6891) );
  XOR2X1 U3568 ( .A(n6135), .B(n4175), .Y(n4174) );
  OR2X1 U3569 ( .A(n6784), .B(n6783), .Y(n4297) );
  AOI2BB2X1 U3570 ( .B0(n6926), .B1(sram_addr_w[22]), .A0N(n453), .A1N(n4020), 
        .Y(n6920) );
  CLKBUFX3 U3571 ( .A(n5890), .Y(n6467) );
  OR2X1 U3572 ( .A(n6604), .B(median_sobel_inst_u_sober_compare_submodule_n74), 
        .Y(n6124) );
  INVX1 U3573 ( .A(n7147), .Y(n7148) );
  INVXL U3574 ( .A(n6953), .Y(n4296) );
  NAND2X2 U3575 ( .A(n7328), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .Y(n3774) );
  AOI2BB2X1 U3576 ( .B0(n6926), .B1(n1995), .A0N(n452), .A1N(n4020), .Y(n6847)
         );
  AOI2BB2X2 U3577 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_n143), .A0N(n4262), .A1N(
        median_sobel_inst_u_median_filter_submodule_n792), .Y(n4254) );
  NOR2X2 U3578 ( .A(n6716), .B(n5095), .Y(n5098) );
  NOR2X2 U3579 ( .A(n3710), .B(n3709), .Y(n3708) );
  OR2X1 U3580 ( .A(n7251), .B(n5966), .Y(n5967) );
  INVXL U3581 ( .A(n6897), .Y(n5751) );
  OR2X1 U3582 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n306), .Y(n5987) );
  OR2X1 U3583 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n305), .Y(n6012) );
  OR2X1 U3584 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n308), .Y(n5996) );
  OR2X1 U3585 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n309), .Y(n6002) );
  OR2X1 U3586 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n326), .Y(n5993) );
  OR2X1 U3587 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n323), .Y(n5999) );
  OR2X1 U3588 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n324), .Y(n5990) );
  OR2X1 U3589 ( .A(n6011), .B(median_sobel_inst_u_sober_compare_submodule_n325), .Y(n6005) );
  INVX1 U3590 ( .A(n4202), .Y(n7089) );
  NAND2X1 U3591 ( .A(n5301), .B(median_sobel_inst_data_h_r[7]), .Y(n3990) );
  AOI2BB2X2 U3592 ( .B0(n3665), .B1(
        median_sobel_inst_u_median_filter_submodule_n108), .A0N(n3664), .A1N(
        n7604), .Y(n4355) );
  AOI2BB2X2 U3593 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_n205), .A0N(n4262), .A1N(
        n5416), .Y(n4051) );
  AOI2BB2X2 U3594 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_n214), .A0N(n5710), .A1N(
        n4262), .Y(n4209) );
  BUFX4 U3595 ( .A(n5892), .Y(n5955) );
  AOI2BB2X2 U3596 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_net95319), .A0N(n4262), 
        .A1N(n5155), .Y(n4212) );
  NAND2X1 U3597 ( .A(n5887), .B(conv_inst_n268), .Y(n4425) );
  AOI2BB2X1 U3598 ( .B0(n6926), .B1(sram_addr_w[16]), .A0N(n460), .A1N(n4020), 
        .Y(n5676) );
  NAND2BX1 U3599 ( .AN(median_sobel_inst_u_median_filter_submodule_n782), .B(
        n5819), .Y(n5823) );
  NAND2BX2 U3600 ( .AN(n7414), .B(n7409), .Y(n3882) );
  AOI21X1 U3601 ( .A0(n7371), .A1(n7365), .B0(n7368), .Y(n7355) );
  NAND2X2 U3602 ( .A(n4427), .B(conv_inst_conv_4_r[16]), .Y(n4426) );
  XOR2X2 U3603 ( .A(n4096), .B(conv_inst_n196), .Y(n3899) );
  XOR2X2 U3604 ( .A(n4285), .B(conv_inst_conv_2_r[13]), .Y(n5377) );
  XNOR2X2 U3605 ( .A(n4194), .B(conv_inst_conv_4_r[14]), .Y(n4193) );
  NOR2X1 U3606 ( .A(n4447), .B(n4446), .Y(n4445) );
  AOI2BB2X1 U3607 ( .B0(n6926), .B1(sram_addr_w[18]), .A0N(n458), .A1N(n4020), 
        .Y(n6916) );
  AOI2BB2X1 U3608 ( .B0(n6926), .B1(sram_addr_w[17]), .A0N(n459), .A1N(n4020), 
        .Y(n6922) );
  XNOR2X1 U3609 ( .A(n5845), .B(n5844), .Y(n5846) );
  XNOR2X2 U3610 ( .A(n5456), .B(n5455), .Y(n5457) );
  XOR2X1 U3611 ( .A(n4603), .B(n4602), .Y(n4604) );
  XOR2X2 U3612 ( .A(n5584), .B(conv_inst_n22), .Y(n5585) );
  XOR2X2 U3613 ( .A(n5484), .B(conv_inst_n21), .Y(n5485) );
  XOR2X2 U3614 ( .A(n5441), .B(n3618), .Y(n3617) );
  AOI2BB2X1 U3615 ( .B0(n6926), .B1(sram_addr_w[20]), .A0N(n7513), .A1N(n4020), 
        .Y(n6914) );
  AOI2BB2X1 U3616 ( .B0(n6926), .B1(sram_addr_w[19]), .A0N(n7521), .A1N(n4020), 
        .Y(n6927) );
  AOI2BB2X1 U3617 ( .B0(n6926), .B1(n1982), .A0N(n451), .A1N(n4020), .Y(n6848)
         );
  XNOR2X1 U3618 ( .A(n5266), .B(n4217), .Y(n5267) );
  CLKBUFX8 U3619 ( .A(i_rst_n), .Y(n7745) );
  AND2X6 U3620 ( .A(n7145), .B(n5672), .Y(n6926) );
  NAND2X6 U3621 ( .A(n7145), .B(n5673), .Y(n4020) );
  OR2X1 U3622 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net96945), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .Y(n7302) );
  OR2X1 U3623 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n424), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .Y(n6745) );
  OR2X1 U3624 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(
        n6579) );
  OR2X1 U3625 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .B(
        n7540), .Y(n7357) );
  OR2X1 U3626 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n6741) );
  OR2X1 U3627 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6218) );
  OR2X1 U3628 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n417), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n6354) );
  OR2X1 U3629 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n432), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n6900) );
  OR2X1 U3630 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n435), .Y(n7125) );
  OR2XL U3631 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n434), .Y(n6246) );
  OR2XL U3632 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n6234) );
  OR2XL U3633 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6177) );
  OR2XL U3634 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n6338) );
  OR2XL U3635 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .Y(
        n6380) );
  OR2XL U3636 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n412), .Y(n7194) );
  OR2XL U3637 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n412), .Y(n7373) );
  OR2XL U3638 ( .A(n7542), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n6187) );
  NAND2X6 U3639 ( .A(n7145), .B(n7206), .Y(n6955) );
  CLKBUFX3 U3640 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), 
        .Y(n7251) );
  INVX6 U3641 ( .A(n7348), .Y(n7371) );
  BUFX6 U3642 ( .A(n6719), .Y(n6731) );
  INVX4 U3643 ( .A(n6833), .Y(n6860) );
  CLKINVX1 U3644 ( .A(n6934), .Y(n7231) );
  INVX2 U3645 ( .A(n6933), .Y(n6543) );
  CLKBUFX8 U3646 ( .A(n6670), .Y(n6730) );
  OR2X1 U3647 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        n4305), .Y(n6532) );
  NOR2X6 U3648 ( .A(n7289), .B(n6755), .Y(n7292) );
  CLKAND2X3 U3649 ( .A(n7381), .B(n7378), .Y(n7379) );
  BUFX8 U3650 ( .A(n6603), .Y(n6729) );
  BUFX4 U3651 ( .A(n5956), .Y(n6253) );
  CLKAND2X3 U3652 ( .A(n3879), .B(n7190), .Y(n3878) );
  OR2X1 U3653 ( .A(n7267), .B(n7293), .Y(n7268) );
  INVX1 U3654 ( .A(n6529), .Y(n6703) );
  INVXL U3655 ( .A(n6542), .Y(n6174) );
  BUFX4 U3656 ( .A(n6122), .Y(n6222) );
  OAI2BB1X2 U3657 ( .A0N(n6471), .A1N(n5607), .B0(n4195), .Y(n4194) );
  INVX1 U3658 ( .A(n4185), .Y(n3635) );
  INVX1 U3659 ( .A(n6164), .Y(n6352) );
  NOR3X4 U3660 ( .A(n6422), .B(n6421), .C(n7246), .Y(n7277) );
  CLKINVX1 U3661 ( .A(n6265), .Y(n6378) );
  CLKINVX1 U3662 ( .A(n6368), .Y(n6475) );
  AND2X4 U3663 ( .A(n7145), .B(n6817), .Y(n7025) );
  INVX1 U3664 ( .A(n6739), .Y(n6167) );
  AND2X4 U3665 ( .A(n7145), .B(n6917), .Y(n6956) );
  NAND2X2 U3666 ( .A(n4456), .B(n5904), .Y(n4455) );
  INVX1 U3667 ( .A(n6138), .Y(n6202) );
  NOR2X6 U3668 ( .A(n5674), .B(n4303), .Y(n3633) );
  NOR2X1 U3669 ( .A(n6892), .B(
        median_sobel_inst_u_median_filter_submodule_n1500), .Y(n6665) );
  OAI21X2 U3670 ( .A0(n5412), .A1(n5604), .B0(n5606), .Y(n4224) );
  NAND2X2 U3671 ( .A(n3699), .B(n4378), .Y(n4377) );
  INVX1 U3672 ( .A(n6176), .Y(n6244) );
  INVX1 U3673 ( .A(n6393), .Y(n6073) );
  NAND2X1 U3674 ( .A(n7472), .B(n7470), .Y(N125) );
  NAND2X2 U3675 ( .A(n3619), .B(n4417), .Y(n3618) );
  NAND2X1 U3676 ( .A(n6984), .B(cnt[9]), .Y(n4087) );
  INVXL U3677 ( .A(n7020), .Y(n7022) );
  INVXL U3678 ( .A(n7086), .Y(n7087) );
  INVX1 U3679 ( .A(n7383), .Y(n4458) );
  OAI2BB1X1 U3680 ( .A0N(n7164), .A1N(n7163), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n3901) );
  NAND2X1 U3681 ( .A(n3820), .B(n5406), .Y(n3815) );
  AOI2BB2X2 U3682 ( .B0(n5906), .B1(n4097), .A0N(n5684), .A1N(conv_inst_n10), 
        .Y(n4096) );
  NAND2X2 U3683 ( .A(n5943), .B(n5944), .Y(n4106) );
  NAND2X8 U3684 ( .A(n7149), .B(n7449), .Y(n5123) );
  AND2X2 U3685 ( .A(n6538), .B(n6537), .Y(n6540) );
  NAND2X4 U3686 ( .A(n4243), .B(n4242), .Y(n7100) );
  NOR2BX1 U3687 ( .AN(n6806), .B(n6808), .Y(n6811) );
  NAND3X1 U3688 ( .A(n4219), .B(n6301), .C(n4218), .Y(n4217) );
  NAND2XL U3689 ( .A(n6552), .B(n4197), .Y(n6558) );
  OR2X1 U3690 ( .A(n5275), .B(n7491), .Y(n5114) );
  NOR2XL U3691 ( .A(n7322), .B(n1939), .Y(n4447) );
  NOR2X1 U3692 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n916), .Y(n6951) );
  NAND2X1 U3693 ( .A(n7172), .B(n7166), .Y(n3890) );
  NAND2X2 U3694 ( .A(n6343), .B(n6342), .Y(n6345) );
  INVX1 U3695 ( .A(n4301), .Y(n6800) );
  CLKINVX1 U3696 ( .A(n6907), .Y(n6978) );
  NAND2X1 U3697 ( .A(n4898), .B(n6446), .Y(n4901) );
  NAND2BX2 U3698 ( .AN(n6494), .B(n4103), .Y(n4102) );
  OAI2BB1X1 U3699 ( .A0N(conv_calc_done_r), .A1N(n4574), .B0(n6054), .Y(n6056)
         );
  INVX3 U3700 ( .A(n6418), .Y(n6342) );
  OR2X1 U3701 ( .A(n2093), .B(n461), .Y(n4772) );
  OR2X1 U3702 ( .A(conv_inst_conv_4_r[8]), .B(conv_inst_data_bcd_4_r[8]), .Y(
        n6469) );
  OR2X1 U3703 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(
        n6375) );
  INVX3 U3704 ( .A(n5644), .Y(n5642) );
  OR2X1 U3705 ( .A(n2093), .B(n6115), .Y(n6108) );
  CLKBUFX8 U3706 ( .A(n4379), .Y(n3698) );
  OAI21XL U3707 ( .A0(x_r[2]), .A1(n6958), .B0(n6957), .Y(n6960) );
  AND2X6 U3708 ( .A(n7335), .B(n7334), .Y(n7348) );
  CLKAND2X8 U3709 ( .A(n6471), .B(n5574), .Y(n5579) );
  INVX1 U3710 ( .A(median_sobel_inst_n983), .Y(n4008) );
  INVX1 U3711 ( .A(median_sobel_inst_data_i_r[7]), .Y(n3851) );
  INVX4 U3712 ( .A(n6416), .Y(n5028) );
  OR2X2 U3713 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .B(
        median_sobel_inst_u_median_filter_submodule_n755), .Y(n5829) );
  INVX1 U3714 ( .A(n7184), .Y(n4103) );
  BUFX16 U3715 ( .A(n5125), .Y(n7323) );
  NOR2X1 U3716 ( .A(n5500), .B(median_sobel_inst_data_b_r[5]), .Y(n5502) );
  NAND2BX2 U3717 ( .AN(n3909), .B(
        median_sobel_inst_u_median_filter_submodule_n1470), .Y(n6260) );
  OR2X1 U3718 ( .A(n7487), .B(n5112), .Y(n5275) );
  AND2X2 U3719 ( .A(n6324), .B(n5737), .Y(n5697) );
  INVXL U3720 ( .A(n5624), .Y(n5375) );
  NOR2X4 U3721 ( .A(n7410), .B(n4302), .Y(n7415) );
  CLKINVX1 U3722 ( .A(n6179), .Y(n6439) );
  INVX1 U3723 ( .A(n7086), .Y(n4205) );
  OR2X1 U3724 ( .A(n5459), .B(n5458), .Y(n5460) );
  INVX1 U3725 ( .A(n5683), .Y(n3893) );
  NAND2X1 U3726 ( .A(n7183), .B(n7182), .Y(n4233) );
  NAND2X1 U3727 ( .A(n4508), .B(median_sobel_inst_data_h_r[2]), .Y(n3992) );
  INVX1 U3728 ( .A(n6817), .Y(n6818) );
  NAND2X2 U3729 ( .A(n5906), .B(n3674), .Y(n3673) );
  NAND2BX1 U3730 ( .AN(n6300), .B(n6298), .Y(n4218) );
  NAND2X1 U3731 ( .A(n5934), .B(median_sobel_inst_data_g_r[4]), .Y(n4490) );
  NAND2X4 U3732 ( .A(n4150), .B(median_sobel_inst_data_d_r[3]), .Y(n5237) );
  NOR2X2 U3733 ( .A(n6161), .B(n4768), .Y(n7225) );
  INVX1 U3734 ( .A(n7448), .Y(n7139) );
  NAND2BX1 U3735 ( .AN(n5606), .B(n4196), .Y(n4195) );
  INVXL U3736 ( .A(n7256), .Y(n7257) );
  NOR2X1 U3737 ( .A(n7552), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n6841) );
  NOR2X1 U3738 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n5745) );
  AOI21X2 U3739 ( .A0(n7189), .A1(n7104), .B0(n7103), .Y(n3799) );
  NAND2BX1 U3740 ( .AN(n3606), .B(n6273), .Y(n4197) );
  NOR2X1 U3741 ( .A(n6422), .B(n6421), .Y(n6420) );
  NAND2X1 U3742 ( .A(n6449), .B(n6443), .Y(n4898) );
  NAND2X4 U3743 ( .A(n3641), .B(n5869), .Y(n6197) );
  NAND2X4 U3744 ( .A(n4924), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n174), .Y(n6867) );
  NOR2X2 U3745 ( .A(n4406), .B(n4405), .Y(n4404) );
  CLKINVX1 U3746 ( .A(n7478), .Y(n7481) );
  NOR2X1 U3747 ( .A(n5624), .B(conv_inst_n18), .Y(n5625) );
  NOR2X6 U3748 ( .A(n4924), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n174), .Y(n5943) );
  CLKINVX1 U3749 ( .A(n4287), .Y(n6333) );
  NAND2X4 U3750 ( .A(n3868), .B(n3862), .Y(n5302) );
  BUFX4 U3751 ( .A(n7019), .Y(n4202) );
  NOR2X2 U3752 ( .A(n6297), .B(n6296), .Y(n6299) );
  AOI2BB1X2 U3753 ( .A0N(n5929), .A1N(median_sobel_inst_data_a_r[3]), .B0(
        n4409), .Y(n4408) );
  BUFX4 U3754 ( .A(n6606), .Y(n6011) );
  OR2X4 U3755 ( .A(n7383), .B(n7382), .Y(n7385) );
  NAND2BX2 U3756 ( .AN(x_delay_r_2__1_), .B(x_delay_r_2__0_), .Y(n7076) );
  OR2X6 U3757 ( .A(n4991), .B(input_data_ready_r[14]), .Y(n4992) );
  NAND2X2 U3758 ( .A(x_delay_r_2__0_), .B(x_delay_r_2__1_), .Y(n7077) );
  OR2X1 U3759 ( .A(n1940), .B(x_minus_one_r[0]), .Y(n5667) );
  OR2X1 U3760 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n655), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n33), .Y(n5567) );
  INVX3 U3761 ( .A(median_sobel_inst_data_a_r[6]), .Y(n5940) );
  OR2X1 U3762 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n662), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n661), .Y(n5541) );
  OR2X1 U3763 ( .A(median_sobel_inst_n32), .B(n5467), .Y(n5468) );
  OR2X1 U3764 ( .A(median_sobel_inst_n420), .B(n4135), .Y(n5470) );
  NAND2BX2 U3765 ( .AN(n7736), .B(n7735), .Y(n7078) );
  NOR2BX1 U3766 ( .AN(conv_inst_n42), .B(conv_inst_n25), .Y(n5012) );
  INVX8 U3767 ( .A(n7327), .Y(n7318) );
  NAND2X2 U3768 ( .A(n4280), .B(input_data_ready_r[13]), .Y(n7422) );
  INVX4 U3769 ( .A(median_sobel_inst_data_f_r[7]), .Y(n5346) );
  CLKINVX1 U3770 ( .A(median_sobel_inst_n981), .Y(n3959) );
  NOR2X1 U3771 ( .A(cnt[1]), .B(n4303), .Y(n6817) );
  INVX3 U3772 ( .A(median_sobel_inst_data_e_r[4]), .Y(n5473) );
  INVX6 U3773 ( .A(median_sobel_inst_data_g_r[4]), .Y(n3747) );
  NAND2X1 U3774 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), .Y(n6988)
         );
  INVX2 U3775 ( .A(n6628), .Y(n4042) );
  NAND2BX1 U3776 ( .AN(n461), .B(n4303), .Y(n5672) );
  INVX1 U3777 ( .A(n6250), .Y(n5777) );
  INVX1 U3778 ( .A(median_sobel_inst_data_c_r[5]), .Y(n3838) );
  NAND3X1 U3779 ( .A(n6052), .B(curr_state[0]), .C(n5255), .Y(n5256) );
  OR2X1 U3780 ( .A(n6548), .B(n5002), .Y(n5004) );
  OR2X1 U3781 ( .A(n5082), .B(conv_inst_n268), .Y(n5083) );
  CLKINVX1 U3782 ( .A(n6792), .Y(n6297) );
  BUFX4 U3783 ( .A(n5684), .Y(n4288) );
  OAI21XL U3784 ( .A0(n4999), .A1(n6807), .B0(n6813), .Y(n5000) );
  NOR2X4 U3785 ( .A(n7575), .B(n6417), .Y(n6421) );
  INVX6 U3786 ( .A(n7471), .Y(n7149) );
  INVX1 U3787 ( .A(median_sobel_inst_data_e_r[5]), .Y(n5476) );
  OR2X2 U3788 ( .A(n5139), .B(n5107), .Y(n5643) );
  INVX1 U3789 ( .A(n7176), .Y(n6492) );
  NOR2X4 U3790 ( .A(n4737), .B(n4736), .Y(n4211) );
  NAND2X1 U3791 ( .A(conv_inst_conv_3_r[13]), .B(conv_inst_n196), .Y(n5459) );
  INVX1 U3792 ( .A(n5051), .Y(n4130) );
  NAND2X4 U3793 ( .A(n6659), .B(n6658), .Y(n7172) );
  NAND2X6 U3794 ( .A(n4038), .B(n4040), .Y(n6416) );
  OR2X1 U3795 ( .A(n5442), .B(n4549), .Y(n5443) );
  NAND2X2 U3796 ( .A(n5358), .B(n5417), .Y(n5623) );
  NOR2BX2 U3797 ( .AN(n7101), .B(n7102), .Y(n7104) );
  NOR2X6 U3798 ( .A(median_sobel_inst_u_median_filter_submodule_n1068), .B(
        n7544), .Y(n7232) );
  NOR2X2 U3799 ( .A(n4433), .B(n4432), .Y(n4431) );
  INVX12 U3800 ( .A(n5923), .Y(n3646) );
  NAND2X4 U3801 ( .A(n7224), .B(n7449), .Y(n5125) );
  OAI2BB1X2 U3802 ( .A0N(n3652), .A1N(n5872), .B0(n5876), .Y(n6196) );
  CLKBUFX3 U3803 ( .A(n6553), .Y(n3606) );
  NOR2X4 U3804 ( .A(median_sobel_inst_u_median_filter_submodule_n1431), .B(
        n7532), .Y(n6933) );
  NAND2X4 U3805 ( .A(n6866), .B(n7187), .Y(n6016) );
  NOR2X2 U3806 ( .A(n6706), .B(n6861), .Y(n6824) );
  NAND2X4 U3807 ( .A(n4923), .B(n4922), .Y(n4924) );
  CLKINVX1 U3808 ( .A(n5974), .Y(n4298) );
  NOR2X4 U3809 ( .A(n6852), .B(n4098), .Y(n7122) );
  OAI21X1 U3810 ( .A0(n6573), .A1(n6698), .B0(n6574), .Y(n3869) );
  NOR2X2 U3811 ( .A(n4783), .B(n4786), .Y(n4168) );
  NAND2X1 U3812 ( .A(n6613), .B(n6612), .Y(n6618) );
  NOR2BX2 U3813 ( .AN(n5882), .B(n5883), .Y(n5886) );
  NOR2X1 U3814 ( .A(n6116), .B(n6115), .Y(n7216) );
  NOR2X1 U3815 ( .A(n5946), .B(n5949), .Y(n5947) );
  NOR2X1 U3816 ( .A(n5913), .B(n5917), .Y(n5914) );
  NAND2X1 U3817 ( .A(n4789), .B(n4784), .Y(n4777) );
  NOR2BX2 U3818 ( .AN(n6053), .B(n4569), .Y(n4371) );
  NOR2BX2 U3819 ( .AN(n4016), .B(n4929), .Y(n5746) );
  NOR2BX1 U3820 ( .AN(n4071), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .Y(n5804) );
  NAND2X2 U3821 ( .A(n3898), .B(n3897), .Y(n6156) );
  OAI21X1 U3822 ( .A0(n6870), .A1(n6886), .B0(n6871), .Y(n6522) );
  OAI21X1 U3823 ( .A0(n7102), .A1(n7190), .B0(n7193), .Y(n7103) );
  INVX1 U3824 ( .A(n5029), .Y(n4300) );
  OAI21X1 U3825 ( .A0(n5284), .A1(n7124), .B0(n5285), .Y(n5005) );
  OR2X4 U3826 ( .A(x_delay_r_2__0_), .B(x_delay_r_2__1_), .Y(n4550) );
  NAND2X4 U3827 ( .A(n5613), .B(n5614), .Y(n6371) );
  NAND3X4 U3828 ( .A(n5397), .B(n4482), .C(n4161), .Y(n4160) );
  NOR2X1 U3829 ( .A(n5280), .B(n5284), .Y(n5006) );
  NOR2X4 U3830 ( .A(n6520), .B(n6877), .Y(n6883) );
  OR2X6 U3831 ( .A(median_sobel_inst_u_median_filter_submodule_n641), .B(
        median_sobel_inst_u_median_filter_submodule_n161), .Y(n7155) );
  OR2X1 U3832 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n7101) );
  INVX2 U3833 ( .A(median_sobel_inst_u_median_filter_submodule_n1469), .Y(
        n6417) );
  OR2X2 U3834 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[4]), .Y(n6836) );
  INVX6 U3835 ( .A(n5500), .Y(median_sobel_inst_data_h_r[4]) );
  INVX6 U3836 ( .A(n5299), .Y(median_sobel_inst_data_e_r[3]) );
  INVX3 U3837 ( .A(median_sobel_inst_data_d_r[3]), .Y(n5929) );
  NOR2X1 U3838 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n6026) );
  NAND2X1 U3839 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n6027) );
  INVX1 U3840 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n3897) );
  NAND2X1 U3841 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6200) );
  NAND2X1 U3842 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n97), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n6508) );
  INVX4 U3843 ( .A(median_sobel_inst_data_d_r[2]), .Y(n5927) );
  NAND2X2 U3844 ( .A(input_data_ready_r[21]), .B(n4880), .Y(n5461) );
  INVX3 U3845 ( .A(n7086), .Y(n3762) );
  NAND2BXL U3846 ( .AN(median_sobel_inst_u_median_filter_submodule_net96825), 
        .B(median_sobel_inst_u_median_filter_submodule_n706), .Y(n3667) );
  NAND2X1 U3847 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n5285) );
  INVX2 U3848 ( .A(n6055), .Y(n5664) );
  NAND2BX1 U3849 ( .AN(n3584), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[5]), .Y(n6878) );
  NOR2X4 U3850 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .Y(
        n6573) );
  NOR2X2 U3851 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n435), .Y(n5280) );
  NAND2X2 U3852 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n96), .Y(n6080) );
  OR2X2 U3853 ( .A(n5369), .B(n4127), .Y(n4126) );
  NAND2X2 U3854 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .Y(n6698) );
  NAND2X2 U3855 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .Y(n5598) );
  NAND2X2 U3856 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .Y(n6379) );
  NOR2X2 U3857 ( .A(n7546), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n6870) );
  AND2X6 U3858 ( .A(n5493), .B(median_sobel_inst_n1030), .Y(n3921) );
  NAND2X2 U3859 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6546) );
  NOR2X2 U3860 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6548) );
  NOR2X2 U3861 ( .A(n7549), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), .Y(n6194) );
  NAND2X2 U3862 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), .Y(n6849) );
  NAND2X2 U3863 ( .A(n7536), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .Y(n6150) );
  NAND2X4 U3864 ( .A(median_sobel_inst_u_median_filter_submodule_n1465), .B(
        median_sobel_inst_u_median_filter_submodule_n1068), .Y(n6934) );
  NAND2X1 U3865 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), 
        .B(n7543), .Y(n6825) );
  NAND2X6 U3866 ( .A(n4854), .B(n4855), .Y(median_sobel_inst_data_e_r[4]) );
  INVX4 U3867 ( .A(n5935), .Y(median_sobel_inst_data_d_r[5]) );
  INVX1 U3868 ( .A(n5575), .Y(n5652) );
  INVX1 U3869 ( .A(n5407), .Y(n4480) );
  NAND2X6 U3870 ( .A(n4497), .B(n3745), .Y(median_sobel_inst_n432) );
  NOR2BX2 U3871 ( .AN(n3881), .B(n7592), .Y(n6597) );
  INVX1 U3872 ( .A(n5604), .Y(n5882) );
  INVX6 U3873 ( .A(n3554), .Y(n5937) );
  CLKINVX1 U3874 ( .A(n5759), .Y(n4513) );
  NAND2X6 U3875 ( .A(n5236), .B(n4151), .Y(median_sobel_inst_n425) );
  INVX8 U3876 ( .A(o_in_ready), .Y(n4029) );
  NAND2BX1 U3877 ( .AN(n4173), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .Y(n7372) );
  INVX1 U3878 ( .A(n5875), .Y(n5876) );
  INVX8 U3879 ( .A(n7129), .Y(n3734) );
  INVX1 U3880 ( .A(n6078), .Y(n3777) );
  NAND2BX2 U3881 ( .AN(n3589), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), .Y(n6826) );
  NOR2BX2 U3882 ( .AN(n4236), .B(n7591), .Y(n7176) );
  INVX4 U3883 ( .A(n6048), .Y(n4589) );
  INVX1 U3884 ( .A(n5509), .Y(n5913) );
  NOR2X2 U3885 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6201) );
  OAI22X1 U3886 ( .A0(median_sobel_inst_n940), .A1(n5348), .B0(
        median_sobel_inst_n46), .B1(n5828), .Y(n4318) );
  AOI22X1 U3887 ( .A0(n5691), .A1(median_sobel_inst_n1102), .B0(n5784), .B1(
        median_sobel_inst_n1095), .Y(n5324) );
  CLKINVX1 U3888 ( .A(n6835), .Y(n6751) );
  CLKINVX1 U3889 ( .A(n5868), .Y(n3642) );
  NAND2X4 U3890 ( .A(median_sobel_inst_u_median_filter_submodule_n161), .B(
        median_sobel_inst_u_median_filter_submodule_n641), .Y(n6756) );
  AND2X2 U3891 ( .A(n3584), .B(n3587), .Y(n6877) );
  INVX1 U3892 ( .A(n4785), .Y(n4783) );
  NOR2X4 U3893 ( .A(n4383), .B(n4382), .Y(n4381) );
  AND2X4 U3894 ( .A(n4325), .B(n3614), .Y(n4786) );
  NOR2X1 U3895 ( .A(median_sobel_inst_n1100), .B(median_sobel_inst_n99), .Y(
        n5721) );
  NAND2X2 U3896 ( .A(n5975), .B(n4133), .Y(n4132) );
  NAND2BX1 U3897 ( .AN(n3591), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n6886) );
  OAI21X2 U3898 ( .A0(n6095), .A1(n6098), .B0(n6096), .Y(n6176) );
  CLKINVX1 U3899 ( .A(n6752), .Y(n6838) );
  NAND2X1 U3900 ( .A(n5398), .B(median_sobel_inst_data_c_r[5]), .Y(n4539) );
  OAI2BB2X1 U3901 ( .B0(n5383), .B1(median_sobel_inst_n1163), .A0N(
        median_sobel_inst_n973), .A1N(n6020), .Y(n4094) );
  NAND2BX2 U3902 ( .AN(n4017), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n6896) );
  AND2X2 U3903 ( .A(n5323), .B(n5322), .Y(n5406) );
  INVX4 U3904 ( .A(n7420), .Y(n4982) );
  NAND3BX2 U3905 ( .AN(n6476), .B(n6369), .C(n6368), .Y(n4380) );
  AOI21X2 U3906 ( .A0(n7406), .A1(n7405), .B0(n7404), .Y(n7407) );
  OAI21X2 U3907 ( .A0(n4072), .A1(n6736), .B0(n6740), .Y(n5807) );
  AOI21X1 U3908 ( .A0(n5871), .A1(n3645), .B0(n5870), .Y(n5872) );
  NAND3X4 U3909 ( .A(n4744), .B(n4745), .C(n4746), .Y(median_sobel_inst_n975)
         );
  OR2X4 U3910 ( .A(n5257), .B(n6208), .Y(n7287) );
  NAND2BX1 U3911 ( .AN(n3592), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .Y(n7366) );
  NAND3X4 U3912 ( .A(n4945), .B(n4946), .C(n3956), .Y(
        median_sobel_inst_data_f_r[7]) );
  OA22X1 U3913 ( .A0(median_sobel_inst_n48), .A1(n5828), .B0(
        median_sobel_inst_n419), .B1(n5348), .Y(n4744) );
  OR2X1 U3914 ( .A(median_sobel_inst_n420), .B(n5828), .Y(n4946) );
  OR2X1 U3915 ( .A(median_sobel_inst_n420), .B(n5892), .Y(n5293) );
  INVX3 U3916 ( .A(median_sobel_inst_n707), .Y(n5926) );
  OR2XL U3917 ( .A(median_sobel_inst_n931), .B(n5467), .Y(n5222) );
  AND2X6 U3918 ( .A(n4893), .B(n4163), .Y(n5495) );
  OR2X1 U3919 ( .A(median_sobel_inst_n932), .B(n5383), .Y(n5224) );
  OR3X2 U3920 ( .A(n1906), .B(n866), .C(n865), .Y(n4551) );
  AO21X2 U3921 ( .A0(n7219), .A1(n1986), .B0(n6117), .Y(n4764) );
  CLKAND2X8 U3922 ( .A(n6394), .B(n6393), .Y(n4234) );
  NAND2X1 U3923 ( .A(N760), .B(x_origin_r[1]), .Y(n4765) );
  INVX2 U3924 ( .A(n3895), .Y(n3894) );
  NAND2BX1 U3925 ( .AN(median_sobel_inst_u_median_filter_submodule_n885), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n6740) );
  NAND2X2 U3926 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n96), .Y(n6098) );
  NOR2X2 U3927 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n78), .Y(n6082) );
  NOR2BX2 U3928 ( .AN(median_sobel_inst_n99), .B(median_sobel_inst_n990), .Y(
        n4325) );
  NAND2X2 U3929 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n7329) );
  NOR2BX2 U3930 ( .AN(n3580), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .Y(n6095) );
  NAND2BX1 U3931 ( .AN(median_sobel_inst_u_median_filter_submodule_n876), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .Y(n6357) );
  NAND2X6 U3932 ( .A(n4846), .B(n3917), .Y(median_sobel_inst_data_b_r[2]) );
  NAND2X6 U3933 ( .A(n3595), .B(n4200), .Y(n3558) );
  NAND2X1 U3934 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), .Y(n6702) );
  INVX3 U3935 ( .A(n7113), .Y(n7390) );
  NOR2X2 U3936 ( .A(n7535), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n6498) );
  NOR2BX1 U3937 ( .AN(n7590), .B(median_sobel_inst_n1100), .Y(n4133) );
  NAND2X1 U3938 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n6457) );
  NOR2X2 U3939 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6243) );
  OR2X1 U3940 ( .A(n5082), .B(conv_inst_n249), .Y(n5036) );
  INVX4 U3941 ( .A(n4002), .Y(median_sobel_inst_data_e_r[5]) );
  OR2X1 U3942 ( .A(n5082), .B(conv_inst_n37), .Y(n5041) );
  NAND2BX1 U3943 ( .AN(n5082), .B(conv_inst_n50), .Y(n5069) );
  NAND2BX2 U3944 ( .AN(n7561), .B(
        median_sobel_inst_u_median_filter_submodule_net94185), .Y(n4733) );
  OR2X2 U3945 ( .A(median_sobel_inst_n921), .B(n5383), .Y(n5381) );
  AOI22X1 U3946 ( .A0(median_sobel_inst_n72), .A1(n6021), .B0(n5784), .B1(
        median_sobel_inst_n147), .Y(n5322) );
  INVX6 U3947 ( .A(n3616), .Y(n6688) );
  AOI21X2 U3948 ( .A0(n5691), .A1(median_sobel_inst_n60), .B0(n3809), .Y(n4151) );
  OAI21X2 U3949 ( .A0(n3693), .A1(n3692), .B0(
        median_sobel_inst_u_median_filter_submodule_n209), .Y(n3691) );
  INVX12 U3950 ( .A(n4176), .Y(median_sobel_inst_data_g_r[5]) );
  NAND2BX1 U3951 ( .AN(median_sobel_inst_u_median_filter_submodule_n900), .B(
        n3727), .Y(n3726) );
  NAND2X1 U3952 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n89), .Y(n6736) );
  NAND2BX2 U3953 ( .AN(n3580), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .Y(n6078) );
  NOR2BX2 U3954 ( .AN(n3582), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .Y(n6529) );
  NOR2X2 U3955 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n89), .Y(n6168) );
  INVX1 U3956 ( .A(n4666), .Y(n4537) );
  NAND2BX1 U3957 ( .AN(n461), .B(cnt[0]), .Y(n6208) );
  NOR2X6 U3958 ( .A(n3801), .B(n4291), .Y(n7020) );
  NAND2BX1 U3959 ( .AN(n5082), .B(n4292), .Y(n5077) );
  AND4X4 U3960 ( .A(n4847), .B(n4850), .C(n4848), .D(n4849), .Y(n5299) );
  NAND2X2 U3961 ( .A(n5339), .B(n5338), .Y(median_sobel_inst_data_f_r[2]) );
  AOI21X2 U3962 ( .A0(n6179), .A1(n5306), .B0(n5305), .Y(n5312) );
  NAND2X1 U3963 ( .A(median_sobel_inst_n1059), .B(n5691), .Y(n3958) );
  NOR2X4 U3964 ( .A(n3963), .B(n3962), .Y(n3961) );
  NOR2X4 U3965 ( .A(n5796), .B(n5907), .Y(n5451) );
  NOR2X2 U3966 ( .A(n3616), .B(n3615), .Y(n3614) );
  NOR2X6 U3967 ( .A(n4511), .B(n5152), .Y(n5500) );
  NAND2X4 U3968 ( .A(n5352), .B(n5351), .Y(median_sobel_inst_data_b_r[1]) );
  NAND2X4 U3969 ( .A(n4617), .B(n4499), .Y(median_sobel_inst_data_a_r[3]) );
  NAND2X1 U3970 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .B(
        n7540), .Y(n6458) );
  INVX1 U3971 ( .A(n5917), .Y(n5510) );
  NOR2X6 U3972 ( .A(n4870), .B(n7733), .Y(n7086) );
  NAND2X2 U3973 ( .A(n3957), .B(n7696), .Y(n3956) );
  NOR2X2 U3974 ( .A(n4713), .B(n4712), .Y(n4739) );
  NAND2BX1 U3975 ( .AN(n3580), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[1]), .Y(n6096) );
  NAND2X1 U3976 ( .A(n4520), .B(n4546), .Y(n4855) );
  NAND2X1 U3977 ( .A(n5020), .B(n5021), .Y(n3755) );
  CLKINVX1 U3978 ( .A(n6359), .Y(n4926) );
  NAND2BX2 U3979 ( .AN(n4066), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n6413) );
  NAND3X2 U3980 ( .A(n4679), .B(n4678), .C(n4677), .Y(n5395) );
  NAND2BX2 U3981 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy2[4]), 
        .B(n3582), .Y(n6851) );
  NAND3X4 U3982 ( .A(n4896), .B(n4895), .C(n4894), .Y(
        median_sobel_inst_data_g_r[2]) );
  AND2X4 U3983 ( .A(n5663), .B(n5665), .Y(n4088) );
  NAND3X6 U3984 ( .A(n5229), .B(n5228), .C(n4436), .Y(n3554) );
  OR2X4 U3985 ( .A(n4214), .B(n3781), .Y(n3780) );
  NAND2BX2 U3986 ( .AN(n5982), .B(n3634), .Y(n6122) );
  OR2X1 U3987 ( .A(median_sobel_inst_n443), .B(n5156), .Y(n5118) );
  INVX3 U3988 ( .A(x_origin_r[1]), .Y(n7786) );
  OR2X1 U3989 ( .A(n4465), .B(median_sobel_inst_n434), .Y(n5150) );
  NOR2X1 U3990 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n60), .Y(n6590) );
  NAND2X2 U3991 ( .A(conv_inst_conv_1_r[11]), .B(conv_inst_conv_1_r[12]), .Y(
        n4562) );
  NAND2X2 U3992 ( .A(conv_inst_n188), .B(conv_inst_conv_1_r[8]), .Y(n5835) );
  NAND2X2 U3993 ( .A(conv_inst_data_abc_3_r[9]), .B(n4289), .Y(n5908) );
  NAND2X2 U3994 ( .A(conv_inst_conv_3_r[5]), .B(conv_inst_data_abc_3_r[5]), 
        .Y(n5699) );
  NAND2X6 U3995 ( .A(n5387), .B(n4295), .Y(n3616) );
  NOR2X4 U3996 ( .A(n3603), .B(conv_inst_conv_3_r[10]), .Y(n3663) );
  NAND2X1 U3997 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .Y(n6089) );
  NOR2X2 U3998 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n6459) );
  OAI21X1 U3999 ( .A0(n4834), .A1(
        median_sobel_inst_u_median_filter_submodule_n136), .B0(
        median_sobel_inst_u_median_filter_submodule_n222), .Y(n3693) );
  OAI2BB1X2 U4000 ( .A0N(n6021), .A1N(median_sobel_inst_n1098), .B0(n5320), 
        .Y(n5321) );
  NAND2X1 U4001 ( .A(n5784), .B(median_sobel_inst_n60), .Y(n4912) );
  AND2X2 U4002 ( .A(conv_inst_n236), .B(n7734), .Y(n4287) );
  INVX1 U4003 ( .A(n5892), .Y(n3957) );
  NAND2X1 U4004 ( .A(median_sobel_inst_n60), .B(n6021), .Y(n4848) );
  NOR2X1 U4005 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[2]), .B(
        n7540), .Y(n6456) );
  OR2X1 U4006 ( .A(median_sobel_inst_n1162), .B(n5156), .Y(n4911) );
  NOR2X4 U4007 ( .A(n5263), .B(n6300), .Y(n4116) );
  NAND2BX1 U4008 ( .AN(median_sobel_inst_n971), .B(n6020), .Y(n5225) );
  NAND2X6 U4009 ( .A(n4034), .B(n4032), .Y(n6055) );
  NAND2X1 U4010 ( .A(median_sobel_inst_n1365), .B(n5784), .Y(n4499) );
  NAND2X1 U4011 ( .A(median_sobel_inst_n923), .B(n5602), .Y(n4895) );
  INVX2 U4012 ( .A(n6047), .Y(n4090) );
  NAND2X2 U4013 ( .A(conv_inst_conv_3_r[11]), .B(conv_inst_conv_3_r[12]), .Y(
        n5452) );
  NOR2X6 U4014 ( .A(conv_inst_conv_2_r[10]), .B(conv_inst_data_bcd_2_r[10]), 
        .Y(n5949) );
  NAND2X4 U4015 ( .A(conv_inst_n49), .B(conv_inst_data_abc_3_r[8]), .Y(n5904)
         );
  NAND2X1 U4016 ( .A(median_sobel_inst_n750), .B(n5784), .Y(n3942) );
  NOR2BX2 U4017 ( .AN(n3887), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n6778) );
  NOR2X4 U4018 ( .A(n5413), .B(n5651), .Y(n5415) );
  AOI21X1 U4019 ( .A0(n4834), .A1(
        median_sobel_inst_u_median_filter_submodule_n136), .B0(n5166), .Y(
        n3692) );
  OAI21X2 U4020 ( .A0(n4135), .A1(median_sobel_inst_n423), .B0(n4510), .Y(
        n4509) );
  INVX1 U4021 ( .A(n4631), .Y(n4630) );
  NOR2X2 U4022 ( .A(n5892), .B(n4547), .Y(n3963) );
  NOR2X2 U4023 ( .A(n7137), .B(n4393), .Y(n4392) );
  CLKAND2X4 U4024 ( .A(n5982), .B(
        median_sobel_inst_u_sober_compare_submodule_n343), .Y(n3881) );
  NOR2X4 U4025 ( .A(conv_inst_data_abc_1_r[9]), .B(conv_inst_conv_1_r[9]), .Y(
        n5617) );
  INVX1 U4026 ( .A(n4138), .Y(n5119) );
  INVX1 U4027 ( .A(n7401), .Y(n3732) );
  NAND2X2 U4028 ( .A(n3850), .B(n3849), .Y(n3631) );
  NOR2X2 U4029 ( .A(n4578), .B(n4571), .Y(n4572) );
  NAND3X4 U4030 ( .A(n3955), .B(n4680), .C(n3954), .Y(
        median_sobel_inst_data_i_r[1]) );
  NOR2X1 U4031 ( .A(median_sobel_inst_n399), .B(median_sobel_inst_n990), .Y(
        n4172) );
  CLKBUFX3 U4032 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n359), .Y(
        n4305) );
  NOR2X2 U4033 ( .A(n5825), .B(n7219), .Y(n6100) );
  NOR2X4 U4034 ( .A(conv_inst_data_abc_1_r[10]), .B(conv_inst_conv_1_r[10]), 
        .Y(n5917) );
  NAND2BX2 U4035 ( .AN(median_sobel_inst_u_median_filter_submodule_n890), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(n3677) );
  NOR2X2 U4036 ( .A(n5350), .B(n5349), .Y(n5352) );
  NAND2X1 U4037 ( .A(n4320), .B(n4614), .Y(n3848) );
  OAI21X2 U4038 ( .A0(n5263), .A1(n6301), .B0(n5264), .Y(n4113) );
  NAND2BX2 U4039 ( .AN(n3578), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), .Y(n6233) );
  NAND3X2 U4040 ( .A(n5384), .B(n5385), .C(n5386), .Y(
        median_sobel_inst_data_b_r[0]) );
  NAND2X1 U4041 ( .A(n5200), .B(n5201), .Y(n4183) );
  NOR2X2 U4042 ( .A(n4473), .B(n4472), .Y(n4678) );
  NOR2X4 U4043 ( .A(conv_inst_data_abc_3_r[9]), .B(n4289), .Y(n5907) );
  OR2X4 U4044 ( .A(n4869), .B(n3610), .Y(n6786) );
  NOR2X4 U4045 ( .A(n5593), .B(n4344), .Y(n6295) );
  NAND3X1 U4046 ( .A(n5173), .B(n5172), .C(n5171), .Y(n5177) );
  AND3X4 U4047 ( .A(n4844), .B(n4843), .C(n4845), .Y(n3917) );
  AOI21X2 U4048 ( .A0(median_sobel_inst_n751), .A1(n3941), .B0(n3937), .Y(
        n3936) );
  NAND2BX2 U4049 ( .AN(n4837), .B(n3724), .Y(n3723) );
  AND3X4 U4050 ( .A(n5337), .B(n5336), .C(n5335), .Y(n5338) );
  OAI22X1 U4051 ( .A0(n4947), .A1(n3823), .B0(n5348), .B1(
        median_sobel_inst_n918), .Y(n4948) );
  NAND2BX2 U4052 ( .AN(n3670), .B(n4651), .Y(n4653) );
  AND2X4 U4053 ( .A(n5220), .B(n5221), .Y(n3748) );
  NAND3X2 U4054 ( .A(n4577), .B(n5655), .C(n6044), .Y(n5663) );
  OAI21X1 U4055 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n561), .A1(
        n3768), .B0(n5530), .Y(n4331) );
  BUFX12 U4056 ( .A(n5368), .Y(n5964) );
  OR2X1 U4057 ( .A(median_sobel_inst_u_median_filter_submodule_n143), .B(
        median_sobel_inst_u_median_filter_submodule_n792), .Y(n4702) );
  OR2X2 U4058 ( .A(median_sobel_inst_u_median_filter_submodule_b1_r[3]), .B(
        median_sobel_inst_u_median_filter_submodule_n108), .Y(n4623) );
  OR2X1 U4059 ( .A(median_sobel_inst_n926), .B(n5467), .Y(n5164) );
  OR2X1 U4060 ( .A(median_sobel_inst_u_median_filter_submodule_n273), .B(
        median_sobel_inst_u_median_filter_submodule_n361), .Y(n5200) );
  OR2X1 U4061 ( .A(median_sobel_inst_n935), .B(n5161), .Y(n5163) );
  OR2X2 U4062 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[1]), .Y(n6090) );
  CLKBUFX3 U4063 ( .A(n829), .Y(n3610) );
  INVX3 U4064 ( .A(N760), .Y(n7787) );
  OR2X1 U4065 ( .A(median_sobel_inst_n814), .B(n5466), .Y(n4844) );
  OR2X2 U4066 ( .A(median_sobel_inst_n912), .B(n5378), .Y(n4937) );
  CLKAND2X3 U4067 ( .A(n4987), .B(n7402), .Y(n4977) );
  AND2X6 U4068 ( .A(n3948), .B(n4338), .Y(n5754) );
  CLKAND2X3 U4069 ( .A(median_sobel_inst_u_median_filter_submodule_net99809), 
        .B(n5187), .Y(n5174) );
  OR2X6 U4070 ( .A(n6789), .B(n4344), .Y(n4114) );
  NOR2X4 U4071 ( .A(conv_inst_conv_4_r[9]), .B(conv_inst_data_bcd_4_r[9]), .Y(
        n5800) );
  NOR2X4 U4072 ( .A(conv_inst_conv_3_r[3]), .B(conv_inst_data_abc_3_r[3]), .Y(
        n4597) );
  NOR2X2 U4073 ( .A(conv_inst_conv_2_r[7]), .B(conv_inst_n41), .Y(n6450) );
  NAND2X2 U4074 ( .A(conv_inst_conv_4_r[12]), .B(conv_inst_conv_4_r[11]), .Y(
        n5413) );
  NAND2X2 U4075 ( .A(conv_inst_conv_3_r[0]), .B(conv_inst_data_abc_3_r[0]), 
        .Y(n6319) );
  NOR2BX1 U4076 ( .AN(median_sobel_inst_u_median_filter_submodule_n174), .B(
        median_sobel_inst_u_median_filter_submodule_net52783), .Y(n4798) );
  NOR2X2 U4077 ( .A(conv_inst_conv_3_r[4]), .B(conv_inst_data_abc_3_r[4]), .Y(
        n5695) );
  NOR2BX1 U4078 ( .AN(median_sobel_inst_u_median_filter_submodule_n231), .B(
        median_sobel_inst_u_median_filter_submodule_net95319), .Y(n4208) );
  INVX6 U4079 ( .A(n4001), .Y(n4520) );
  CLKAND2X3 U4080 ( .A(n4240), .B(n4125), .Y(n3808) );
  NOR2X2 U4081 ( .A(conv_inst_conv_4_r[8]), .B(conv_inst_data_bcd_4_r[8]), .Y(
        n4422) );
  CLKAND2X8 U4082 ( .A(n4938), .B(n4939), .Y(n4339) );
  INVXL U4083 ( .A(n4307), .Y(n4290) );
  CLKINVX1 U4084 ( .A(n6052), .Y(n4569) );
  NOR2BX1 U4085 ( .AN(median_sobel_inst_u_sober_compare_submodule_net96764), 
        .B(median_sobel_inst_u_sober_compare_submodule_net105227), .Y(n5853)
         );
  INVX1 U4086 ( .A(n5348), .Y(n3850) );
  INVX1 U4087 ( .A(n5466), .Y(n3630) );
  INVX1 U4088 ( .A(n5378), .Y(n3861) );
  OAI2BB1X2 U4089 ( .A0N(median_sobel_inst_n59), .A1N(n5691), .B0(n4435), .Y(
        n4005) );
  NOR2X4 U4090 ( .A(n6568), .B(median_sobel_inst_n926), .Y(n3981) );
  NAND2X1 U4091 ( .A(n5334), .B(median_sobel_inst_n999), .Y(n3955) );
  AND2X2 U4092 ( .A(n7574), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .Y(
        n4101) );
  INVX4 U4093 ( .A(n7150), .Y(n4023) );
  NOR2X1 U4094 ( .A(n4619), .B(
        median_sobel_inst_u_median_filter_submodule_n108), .Y(n4620) );
  INVX1 U4095 ( .A(n5383), .Y(n3941) );
  NAND2X2 U4096 ( .A(conv_inst_n34), .B(n4292), .Y(n5640) );
  AOI21X2 U4097 ( .A0(median_sobel_inst_u_median_filter_submodule_n785), .A1(
        median_sobel_inst_u_median_filter_submodule_n259), .B0(n3662), .Y(
        n3661) );
  NOR2X1 U4098 ( .A(n5378), .B(median_sobel_inst_n1093), .Y(n4473) );
  OR2X1 U4099 ( .A(n5156), .B(median_sobel_inst_n1165), .Y(n5158) );
  NOR2X4 U4100 ( .A(n7210), .B(n5656), .Y(n6044) );
  NAND2X4 U4101 ( .A(n5970), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n3898) );
  NAND2BX1 U4102 ( .AN(n5466), .B(median_sobel_inst_n1106), .Y(n5392) );
  CLKINVX1 U4103 ( .A(median_sobel_inst_n125), .Y(n5690) );
  CLKINVX1 U4104 ( .A(n6235), .Y(n3797) );
  NAND2BX2 U4105 ( .AN(median_sobel_inst_u_median_filter_submodule_n260), .B(
        median_sobel_inst_u_median_filter_submodule_net96393), .Y(n4215) );
  INVX8 U4106 ( .A(n5847), .Y(n5061) );
  NOR2BX2 U4107 ( .AN(n4062), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .Y(n6223) );
  CLKINVX1 U4108 ( .A(n4571), .Y(n4370) );
  AND2X2 U4109 ( .A(n4871), .B(n4873), .Y(n4284) );
  NAND2X2 U4110 ( .A(n5657), .B(n5889), .Y(n4031) );
  NAND3X4 U4111 ( .A(n4047), .B(n4046), .C(n4874), .Y(n4228) );
  OAI22X1 U4112 ( .A0(n5348), .A1(n7573), .B0(n3758), .B1(n5367), .Y(n5253) );
  NAND2X1 U4113 ( .A(n5184), .B(n5183), .Y(n4273) );
  NAND3X2 U4114 ( .A(n4027), .B(n4026), .C(n4025), .Y(n4024) );
  NAND3X4 U4115 ( .A(n4037), .B(n4580), .C(n4035), .Y(n4034) );
  NOR2X1 U4116 ( .A(n7659), .B(n4464), .Y(n4472) );
  BUFX6 U4117 ( .A(n5226), .Y(n6019) );
  CLKBUFX8 U4118 ( .A(n4934), .Y(n4136) );
  OR2X1 U4119 ( .A(median_sobel_inst_u_median_filter_submodule_n780), .B(
        median_sobel_inst_u_median_filter_submodule_n257), .Y(n5195) );
  CLKAND2X8 U4120 ( .A(n461), .B(n4303), .Y(n7206) );
  INVX3 U4121 ( .A(median_sobel_inst_u_median_filter_submodule_net84882), .Y(
        n4643) );
  INVX3 U4122 ( .A(n2000), .Y(n7131) );
  OR2X6 U4123 ( .A(n4050), .B(n4048), .Y(n4046) );
  NOR2X2 U4124 ( .A(n2000), .B(n1986), .Y(n4026) );
  OR2X6 U4125 ( .A(n4049), .B(n4048), .Y(n4047) );
  NOR2X4 U4126 ( .A(n2028), .B(n7528), .Y(n7218) );
  NOR2X1 U4127 ( .A(n2000), .B(curr_state[0]), .Y(n4579) );
  NOR2X4 U4128 ( .A(conv_inst_conv_4_r[2]), .B(conv_inst_data_bcd_4_r[2]), .Y(
        n6553) );
  NOR2X4 U4129 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[2]), .Y(n4592) );
  NAND2BX1 U4130 ( .AN(median_sobel_inst_u_median_filter_submodule_n257), .B(
        median_sobel_inst_u_median_filter_submodule_net94827), .Y(n3741) );
  NAND2BX1 U4131 ( .AN(median_sobel_inst_u_median_filter_submodule_n810), .B(
        median_sobel_inst_u_median_filter_submodule_n1456), .Y(n4628) );
  NAND2X2 U4132 ( .A(median_sobel_inst_u_median_filter_submodule_n108), .B(
        n5465), .Y(n4641) );
  INVX16 U4133 ( .A(n5035), .Y(n7140) );
  NAND2X2 U4134 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(n6235) );
  NAND2X2 U4135 ( .A(input_data_ready_r[31]), .B(n4302), .Y(n4887) );
  INVX2 U4136 ( .A(n7210), .Y(n4033) );
  BUFX6 U4137 ( .A(n5226), .Y(n6683) );
  BUFX8 U4138 ( .A(n4934), .Y(n4135) );
  NAND2X1 U4139 ( .A(n6020), .B(median_sobel_inst_n78), .Y(n3940) );
  NOR2X6 U4140 ( .A(conv_inst_conv_1_r[5]), .B(conv_inst_n172), .Y(n4344) );
  INVX1 U4141 ( .A(n4888), .Y(n4877) );
  NAND2X1 U4142 ( .A(n4162), .B(n3579), .Y(n3996) );
  NOR2X6 U4143 ( .A(n461), .B(n4303), .Y(n6250) );
  NAND2BX2 U4144 ( .AN(median_sobel_inst_u_sober_compare_submodule_net102583), 
        .B(median_sobel_inst_u_sober_compare_submodule_n34), .Y(n3645) );
  NAND2X2 U4145 ( .A(n4888), .B(n4878), .Y(n3792) );
  BUFX4 U4146 ( .A(n5260), .Y(n5596) );
  NAND2X2 U4147 ( .A(n4419), .B(n4418), .Y(n4631) );
  OAI21X1 U4148 ( .A0(n5185), .A1(
        median_sobel_inst_u_median_filter_submodule_n268), .B0(n4272), .Y(
        n4271) );
  BUFX4 U4149 ( .A(curr_state[1]), .Y(n7497) );
  INVX1 U4150 ( .A(n4207), .Y(n4125) );
  OAI21X2 U4151 ( .A0(n3706), .A1(n3705), .B0(n3704), .Y(n3703) );
  OR2X4 U4152 ( .A(n4266), .B(n4265), .Y(n7097) );
  AND3X4 U4153 ( .A(n4335), .B(n4336), .C(n4334), .Y(n3948) );
  BUFX12 U4154 ( .A(n4667), .Y(n4465) );
  BUFX12 U4155 ( .A(n5591), .Y(n6137) );
  CLKINVX1 U4156 ( .A(n5656), .Y(n4027) );
  INVX1 U4157 ( .A(median_sobel_inst_u_median_filter_submodule_n136), .Y(n4821) );
  CLKBUFX8 U4158 ( .A(input_data_ready_r[15]), .Y(n4302) );
  AND2X6 U4159 ( .A(n6258), .B(n6346), .Y(n7098) );
  INVX3 U4160 ( .A(n4883), .Y(n4878) );
  NAND2X1 U4161 ( .A(median_sobel_inst_u_median_filter_submodule_n228), .B(
        median_sobel_inst_u_median_filter_submodule_net20521), .Y(n3704) );
  OAI22X2 U4162 ( .A0(median_sobel_inst_u_median_filter_submodule_net20525), 
        .A1(median_sobel_inst_u_median_filter_submodule_n1200), .B0(
        median_sobel_inst_u_median_filter_submodule_net20521), .B1(
        median_sobel_inst_u_median_filter_submodule_n228), .Y(n3705) );
  INVX4 U4163 ( .A(n3758), .Y(n5226) );
  NOR2X1 U4164 ( .A(n5182), .B(
        median_sobel_inst_u_median_filter_submodule_net96572), .Y(n5181) );
  NAND2X6 U4165 ( .A(n4876), .B(n4884), .Y(n3795) );
  INVX1 U4166 ( .A(n5161), .Y(n4003) );
  INVX1 U4167 ( .A(n5182), .Y(n4075) );
  BUFX12 U4168 ( .A(n462), .Y(n4303) );
  NAND2BX2 U4169 ( .AN(n4361), .B(conv_inst_conv_1_r[1]), .Y(n6283) );
  CLKBUFX3 U4170 ( .A(conv_inst_conv_4_r[4]), .Y(n4292) );
  AND2X2 U4171 ( .A(n834), .B(curr_state[0]), .Y(n4030) );
  NOR2X2 U4172 ( .A(n3823), .B(n7539), .Y(n4857) );
  NAND2X4 U4173 ( .A(n4374), .B(n4373), .Y(n4571) );
  OR2X1 U4174 ( .A(n4824), .B(n4823), .Y(n3697) );
  CLKINVX1 U4175 ( .A(n818), .Y(n4374) );
  CLKBUFX3 U4176 ( .A(median_sobel_inst_n83), .Y(n4304) );
  INVX8 U4177 ( .A(curr_state[0]), .Y(n4369) );
  AND3X2 U4178 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n107), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n71), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n108), .Y(n5516) );
  NOR2X4 U4179 ( .A(input_data_ready_r[30]), .B(input_data_ready_r[14]), .Y(
        n4883) );
  NAND2X4 U4180 ( .A(n818), .B(n822), .Y(n4576) );
  INVX3 U4181 ( .A(n1986), .Y(n5825) );
  BUFX8 U4182 ( .A(n5334), .Y(n5956) );
  CLKINVX1 U4183 ( .A(n4957), .Y(n4955) );
  NOR2X2 U4184 ( .A(median_sobel_inst_u_median_filter_submodule_a5_r_3_), .B(
        n5199), .Y(n5204) );
  NAND2X4 U4185 ( .A(n4307), .B(n7721), .Y(n4952) );
  NOR2X4 U4186 ( .A(n4973), .B(n4974), .Y(n3730) );
  INVX2 U4187 ( .A(n6045), .Y(n4373) );
  OR2X6 U4188 ( .A(n4875), .B(n4874), .Y(n4109) );
  CLKBUFX3 U4189 ( .A(n6037), .Y(n4450) );
  INVX8 U4190 ( .A(n822), .Y(n6045) );
  NAND2X4 U4191 ( .A(input_data_ready_r[4]), .B(input_data_ready_r[20]), .Y(
        n4973) );
  INVX8 U4192 ( .A(n5161), .Y(n5329) );
  INVX16 U4193 ( .A(n3999), .Y(n4001) );
  CLKBUFX3 U4194 ( .A(n4162), .Y(n5720) );
  NOR2X6 U4195 ( .A(n4207), .B(n3656), .Y(n4049) );
  OR2X6 U4196 ( .A(n1989), .B(n2005), .Y(n4956) );
  INVX4 U4197 ( .A(n4862), .Y(n3654) );
  INVX4 U4198 ( .A(n3758), .Y(n3822) );
  NOR2X2 U4199 ( .A(n2002), .B(n1975), .Y(n4207) );
  INVX6 U4200 ( .A(n5161), .Y(n3999) );
  INVX6 U4201 ( .A(n2113), .Y(n4451) );
  NAND2X4 U4202 ( .A(n7704), .B(n1927), .Y(n4865) );
  BUFX16 U4203 ( .A(op_mode_r_0_), .Y(n7219) );
  INVX16 U4204 ( .A(n3923), .Y(n5161) );
  INVX2 U4205 ( .A(n2035), .Y(n3639) );
  INVX8 U4206 ( .A(n2075), .Y(n6346) );
  INVX8 U4207 ( .A(n3803), .Y(n4614) );
  INVXL U4208 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n64), .Y(n3567) );
  INVX3 U4209 ( .A(n3567), .Y(n3568) );
  AOI21X2 U4210 ( .A0(n3738), .A1(n3742), .B0(n3736), .Y(n3735) );
  INVXL U4211 ( .A(median_sobel_inst_u_sober_compare_submodule_n30), .Y(n5851)
         );
  OAI21X2 U4212 ( .A0(median_sobel_inst_u_median_filter_submodule_n1071), .A1(
        n3740), .B0(n3735), .Y(n5170) );
  AND3X2 U4213 ( .A(n5561), .B(n5560), .C(n3770), .Y(n3769) );
  INVX3 U4214 ( .A(n6103), .Y(n4123) );
  AND2X1 U4215 ( .A(n4278), .B(n4279), .Y(n7332) );
  NAND2XL U4216 ( .A(n5416), .B(n4548), .Y(n4697) );
  NAND2XL U4217 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N80), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n26), .Y(n5088) );
  NOR2X2 U4218 ( .A(conv_inst_n49), .B(conv_inst_data_abc_3_r[8]), .Y(n5796)
         );
  NAND2BX2 U4219 ( .AN(n3644), .B(n5863), .Y(n5874) );
  NOR2XL U4220 ( .A(n5667), .B(x_minus_one_r[2]), .Y(n5668) );
  INVXL U4221 ( .A(n6300), .Y(n6302) );
  INVXL U4222 ( .A(n5263), .Y(n5265) );
  NOR2X1 U4223 ( .A(n7543), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[7]), .Y(n6827) );
  NOR2X1 U4224 ( .A(n5946), .B(n5421), .Y(n5423) );
  NOR2X1 U4225 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n89), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[4]), .Y(n4756) );
  INVXL U4226 ( .A(n5617), .Y(n5619) );
  CLKINVX1 U4227 ( .A(n7167), .Y(n7170) );
  CLKINVX2 U4228 ( .A(n5933), .Y(n4485) );
  NOR2X4 U4229 ( .A(n5800), .B(n4422), .Y(n5572) );
  INVXL U4230 ( .A(n3606), .Y(n6274) );
  INVXL U4231 ( .A(n6316), .Y(n6318) );
  NAND2X2 U4232 ( .A(n6411), .B(n6409), .Y(n4043) );
  NOR2X2 U4233 ( .A(op_mode_r_0_), .B(curr_state[0]), .Y(n4025) );
  NAND2XL U4234 ( .A(n4601), .B(n5428), .Y(n4602) );
  NAND2BX1 U4235 ( .AN(conv_inst_n253), .B(n4216), .Y(n5084) );
  NOR2XL U4236 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n1501), .Y(n6783) );
  AO21X2 U4237 ( .A0(n6449), .A1(n6448), .B0(n6447), .Y(n6454) );
  NAND2X1 U4238 ( .A(n4520), .B(n4315), .Y(n5380) );
  NAND2XL U4239 ( .A(n5642), .B(n5643), .Y(n5647) );
  INVXL U4240 ( .A(median_sobel_inst_u_median_filter_submodule_n231), .Y(n5155) );
  INVXL U4241 ( .A(n4759), .Y(n4752) );
  NAND2XL U4242 ( .A(n6302), .B(n6301), .Y(n6303) );
  INVXL U4243 ( .A(n6201), .Y(n6139) );
  NAND2XL U4244 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[5]), .Y(
        n7059) );
  AOI21XL U4245 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[3]), .B0(
        conv_result_w[3]), .Y(n7054) );
  INVXL U4246 ( .A(n7155), .Y(n5729) );
  NOR2XL U4247 ( .A(n7323), .B(n1965), .Y(n4446) );
  INVXL U4248 ( .A(n6870), .Y(n6872) );
  INVXL U4249 ( .A(n6799), .Y(n5030) );
  INVXL U4250 ( .A(median_sobel_inst_u_median_filter_submodule_n1193), .Y(
        n5271) );
  NOR2X1 U4251 ( .A(n5940), .B(median_sobel_inst_n983), .Y(n4120) );
  NOR2X4 U4252 ( .A(n6417), .B(
        median_sobel_inst_u_median_filter_submodule_n1468), .Y(n6419) );
  AND2X1 U4253 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(
        n6578) );
  OR2X2 U4254 ( .A(n5082), .B(conv_inst_n9), .Y(n5070) );
  NAND2XL U4255 ( .A(n5836), .B(n5835), .Y(n5837) );
  NOR2X4 U4256 ( .A(n6419), .B(n6418), .Y(n7246) );
  NAND2XL U4257 ( .A(n7243), .B(n7242), .Y(n7239) );
  NAND2X1 U4258 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n433), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .Y(n6350) );
  NOR2XL U4259 ( .A(n3904), .B(n7169), .Y(n3903) );
  INVXL U4260 ( .A(n7331), .Y(n6061) );
  NAND2X1 U4261 ( .A(n4304), .B(n5784), .Y(n5337) );
  CLKINVX1 U4262 ( .A(n4137), .Y(n4850) );
  NAND2XL U4263 ( .A(n5843), .B(n5842), .Y(n5844) );
  NAND2XL U4264 ( .A(n6327), .B(n6326), .Y(n6328) );
  INVX3 U4265 ( .A(n7224), .Y(n7469) );
  MXI2X1 U4266 ( .A(n2320), .B(n2319), .S0(i_in_valid), .Y(n7144) );
  NAND2XL U4267 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n297), .Y(n6678) );
  NAND2XL U4268 ( .A(n6978), .B(n6976), .Y(n6908) );
  NAND2XL U4269 ( .A(n6579), .B(n6465), .Y(n6466) );
  XOR2X1 U4270 ( .A(n4224), .B(n5605), .Y(n4223) );
  NAND2XL U4271 ( .A(n7194), .B(n7193), .Y(n7195) );
  AND2X1 U4272 ( .A(n7168), .B(n7008), .Y(n6972) );
  NAND2XL U4273 ( .A(n7228), .B(N125), .Y(n4769) );
  NAND2XL U4274 ( .A(n6414), .B(n6413), .Y(n6415) );
  CLKINVX1 U4275 ( .A(median_sobel_inst_n115), .Y(n5974) );
  INVXL U4276 ( .A(n6345), .Y(n4225) );
  BUFX8 U4277 ( .A(n5122), .Y(n7327) );
  NAND2XL U4278 ( .A(n6492), .B(n7179), .Y(n6402) );
  NAND2XL U4279 ( .A(n7279), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[6]), .Y(n6587) );
  XOR2X1 U4280 ( .A(n5365), .B(conv_inst_conv_2_r[16]), .Y(n5366) );
  XNOR2X2 U4281 ( .A(n3906), .B(conv_inst_conv_3_r[16]), .Y(n3905) );
  NAND2XL U4282 ( .A(n6532), .B(n6531), .Y(n6533) );
  NAND2XL U4283 ( .A(n6879), .B(n6878), .Y(n6880) );
  NOR2XL U4284 ( .A(n7158), .B(n7157), .Y(n7159) );
  AOI21X1 U4285 ( .A0(n6739), .A1(n6738), .B0(n6737), .Y(n4058) );
  NAND2XL U4286 ( .A(n6800), .B(n6799), .Y(n6801) );
  NAND2XL U4287 ( .A(n6851), .B(n6849), .Y(n6705) );
  NOR2X4 U4288 ( .A(n6420), .B(n7246), .Y(n7279) );
  NAND2XL U4289 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n287), .Y(n6727) );
  AOI2BB2X1 U4290 ( .B0(n6926), .B1(sram_addr_w[21]), .A0N(n7512), .A1N(n4020), 
        .Y(n6915) );
  NAND2BX1 U4291 ( .AN(median_sobel_inst_n1154), .B(n6020), .Y(n5017) );
  OAI2BB1X1 U4292 ( .A0N(n3965), .A1N(n4520), .B0(n4166), .Y(n4165) );
  CLKBUFX8 U4293 ( .A(n5784), .Y(n3855) );
  OAI22XL U4294 ( .A0(n1963), .A1(n7323), .B0(n1946), .B1(n7322), .Y(n7313) );
  NAND2XL U4295 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n296), .Y(n5997) );
  NAND2XL U4296 ( .A(n4545), .B(n7695), .Y(n6125) );
  NAND2XL U4297 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n295), .Y(n5991) );
  AOI21X1 U4298 ( .A0(n6867), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_net94800), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_net96945), .Y(n3900) );
  NAND2XL U4299 ( .A(n6488), .B(n6508), .Y(n6489) );
  OAI21XL U4300 ( .A0(n6202), .A1(n6201), .B0(n6200), .Y(n6207) );
  OR2X2 U4301 ( .A(median_sobel_inst_n449), .B(n5383), .Y(n5339) );
  NAND2XL U4302 ( .A(n7163), .B(n6365), .Y(n6367) );
  NOR2XL U4303 ( .A(n6483), .B(
        median_sobel_inst_u_median_filter_submodule_n920), .Y(n5806) );
  NAND2BX1 U4304 ( .AN(n5383), .B(median_sobel_inst_n756), .Y(n5236) );
  NAND2X6 U4305 ( .A(n3699), .B(n4379), .Y(n5818) );
  NAND2X2 U4306 ( .A(n6543), .B(n6542), .Y(n6545) );
  NAND2X2 U4307 ( .A(n6668), .B(n6934), .Y(n7234) );
  NOR2XL U4308 ( .A(n6684), .B(n6683), .Y(n6685) );
  XNOR2X1 U4309 ( .A(n3744), .B(n5803), .Y(n3743) );
  NAND2XL U4310 ( .A(i_op_valid), .B(i_op_mode[1]), .Y(n5824) );
  NAND2XL U4311 ( .A(n6114), .B(y_origin_r_2_), .Y(n6109) );
  INVXL U4312 ( .A(n6160), .Y(n5834) );
  XOR2X2 U4313 ( .A(n4128), .B(n6537), .Y(conv_inst_N78) );
  OA21XL U4314 ( .A0(n7457), .A1(n7456), .B0(n7458), .Y(N718) );
  XOR2X1 U4315 ( .A(n7339), .B(n7338), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[5]) );
  OAI21X1 U4316 ( .A0(n5712), .A1(n7564), .B0(n4212), .Y(
        median_sobel_inst_u_median_filter_submodule_n821) );
  CLKINVX1 U4317 ( .A(n5495), .Y(median_sobel_inst_data_h_r[5]) );
  NOR2X1 U4318 ( .A(n7186), .B(n6541), .Y(conv_inst_N79) );
  NAND3XL U4319 ( .A(n7095), .B(n7094), .C(n7093), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[7]) );
  NAND2XL U4320 ( .A(n7000), .B(n6999), .Y(sram_addr_wait_r[28]) );
  OAI21XL U4321 ( .A0(median_sobel_inst_u_median_filter_submodule_n906), .A1(
        n6953), .B0(n6762), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[1]) );
  OAI21XL U4322 ( .A0(n7234), .A1(
        median_sobel_inst_u_median_filter_submodule_n884), .B0(n6170), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[7]) );
  MX2X1 U4323 ( .A(n7625), .B(median_sobel_inst_n142), .S0(n6137), .Y(
        median_sobel_inst_n570) );
  XOR2X1 U4324 ( .A(n7328), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[8]) );
  XOR2X1 U4325 ( .A(n4058), .B(n6742), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N11) );
  NAND3XL U4326 ( .A(n6939), .B(n6938), .C(n6937), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[2]) );
  OAI2BB1X1 U4327 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_p9_r[4]), 
        .A1N(n7279), .B0(n7248), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[4]) );
  MX2X1 U4328 ( .A(median_sobel_inst_n310), .B(n7526), .S0(n6087), .Y(
        median_sobel_inst_n591) );
  MX2X1 U4329 ( .A(median_sobel_inst_n1106), .B(n7730), .S0(n6087), .Y(
        median_sobel_inst_n621) );
  NOR2X1 U4330 ( .A(n7296), .B(n7675), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N177) );
  AND2X1 U4331 ( .A(n6040), .B(n6080), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[0]) );
  MX2X1 U4332 ( .A(median_sobel_inst_n1021), .B(n4314), .S0(n6021), .Y(
        median_sobel_inst_n1495) );
  OAI21XL U4333 ( .A0(n3855), .A1(median_sobel_inst_n218), .B0(n3860), .Y(
        median_sobel_inst_n1431) );
  NAND3XL U4334 ( .A(n6428), .B(n6427), .C(n6426), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[7]) );
  MX2X1 U4335 ( .A(n7667), .B(median_sobel_inst_G[42]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n105) );
  MX2X1 U4336 ( .A(n7662), .B(median_sobel_inst_G[39]), .S0(n5956), .Y(
        median_sobel_inst_u_sober_compare_submodule_n102) );
  MX2X1 U4337 ( .A(n7651), .B(median_sobel_inst_G[12]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n119) );
  OAI21X1 U4338 ( .A0(n5028), .A1(n4763), .B0(n4762), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N440) );
  AND2X1 U4339 ( .A(n6039), .B(n6098), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[0]) );
  NAND2XL U4340 ( .A(n6025), .B(n6024), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N120) );
  OAI21XL U4341 ( .A0(n7234), .A1(
        median_sobel_inst_u_median_filter_submodule_n856), .B0(n6129), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[1]) );
  NAND2X2 U4342 ( .A(n4257), .B(n4256), .Y(
        median_sobel_inst_u_median_filter_submodule_n764) );
  MX2X1 U4343 ( .A(median_sobel_inst_angle[3]), .B(
        median_sobel_inst_angle_w[1]), .S0(n6021), .Y(median_sobel_inst_n513)
         );
  MX2X1 U4344 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[13]), .S0(n5891), .Y(median_sobel_inst_n501) );
  MXI2X1 U4345 ( .A(n3599), .B(n3572), .S0(n4001), .Y(median_sobel_inst_n478)
         );
  MX2X1 U4346 ( .A(median_sobel_inst_n733), .B(input_data_ready_r[28]), .S0(
        n6087), .Y(median_sobel_inst_n523) );
  MX2X1 U4347 ( .A(median_sobel_inst_n973), .B(input_data_ready_r[31]), .S0(
        n6087), .Y(median_sobel_inst_n520) );
  MX2X1 U4348 ( .A(median_sobel_inst_n1104), .B(median_sobel_inst_n1090), .S0(
        n6137), .Y(median_sobel_inst_n609) );
  MX2X1 U4349 ( .A(median_sobel_inst_n1343), .B(n7711), .S0(n6087), .Y(
        median_sobel_inst_n617) );
  MX2X1 U4350 ( .A(median_sobel_inst_n1336), .B(n7720), .S0(n6087), .Y(
        median_sobel_inst_n620) );
  OAI21XL U4351 ( .A0(n4136), .A1(median_sobel_inst_n196), .B0(n4140), .Y(
        median_sobel_inst_n561) );
  NOR2XL U4352 ( .A(n6349), .B(conv_inst_n256), .Y(conv_inst_N1970) );
  NOR2XL U4353 ( .A(n5979), .B(n6429), .Y(conv_inst_N145) );
  NOR2BX1 U4354 ( .AN(n6331), .B(n6330), .Y(conv_inst_N2590) );
  OAI21X1 U4355 ( .A0(n5704), .A1(n7786), .B0(n4591), .Y(N786) );
  NAND2XL U4356 ( .A(n7146), .B(n7145), .Y(N841) );
  BUFX4 U4357 ( .A(n5956), .Y(n5976) );
  AND2X4 U4358 ( .A(n4553), .B(n3613), .Y(n7258) );
  INVXL U4359 ( .A(median_sobel_inst_u_median_filter_submodule_net96825), .Y(
        n5450) );
  AND2X2 U4360 ( .A(n4882), .B(n4887), .Y(n3575) );
  OR2X4 U4361 ( .A(n5467), .B(median_sobel_inst_n832), .Y(n3576) );
  OR2X2 U4362 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N160), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .Y(n3577) );
  NOR2X1 U4363 ( .A(n4072), .B(n6168), .Y(n5805) );
  NAND2X1 U4364 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n409), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .Y(n6483) );
  CLKBUFX3 U4365 ( .A(median_sobel_inst_u_sober_compare_submodule_n345), .Y(
        n3880) );
  CLKINVX1 U4366 ( .A(median_sobel_inst_u_sober_compare_submodule_n345), .Y(
        n5982) );
  INVX6 U4367 ( .A(n4568), .Y(n5889) );
  AND3X4 U4368 ( .A(n5380), .B(n5379), .C(n5381), .Y(n5496) );
  AND2X4 U4369 ( .A(n4953), .B(n4952), .Y(n3581) );
  CLKBUFX3 U4370 ( .A(input_data_ready_r[20]), .Y(n3605) );
  INVXL U4371 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n424), .Y(
        n4017) );
  NAND2X6 U4372 ( .A(n4249), .B(n5024), .Y(median_sobel_inst_data_c_r[5]) );
  NAND2XL U4373 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n383), .Y(n6837) );
  AND2X2 U4374 ( .A(median_sobel_inst_data_h_r[4]), .B(n5300), .Y(n3588) );
  NOR2X1 U4375 ( .A(n5378), .B(median_sobel_inst_n1167), .Y(n3590) );
  AND3X4 U4376 ( .A(n5327), .B(n5325), .C(n5326), .Y(n5762) );
  NOR2X2 U4377 ( .A(n7559), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[6]), .Y(n6885) );
  INVXL U4378 ( .A(n6885), .Y(n3874) );
  AOI21X2 U4379 ( .A0(n6322), .A1(n5431), .B0(n5430), .Y(n3593) );
  CLKINVX1 U4380 ( .A(n5636), .Y(n6717) );
  OA22X4 U4381 ( .A0(n4001), .A1(median_sobel_inst_n32), .B0(n5690), .B1(n7137), .Y(n3595) );
  AND3X2 U4382 ( .A(n5201), .B(
        median_sobel_inst_u_median_filter_submodule_n361), .C(n5193), .Y(n3596) );
  NOR2X2 U4383 ( .A(n4318), .B(n4536), .Y(n5765) );
  INVX3 U4384 ( .A(n5765), .Y(n3556) );
  INVXL U4385 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n61), .Y(n3768) );
  NOR2X4 U4386 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .Y(
        n6580) );
  INVX6 U4387 ( .A(n4379), .Y(n5815) );
  INVX3 U4388 ( .A(n3840), .Y(n3839) );
  NAND2X4 U4389 ( .A(n5764), .B(n3841), .Y(n3840) );
  NAND2X2 U4390 ( .A(median_sobel_inst_data_i_r[5]), .B(median_sobel_inst_n982), .Y(n3843) );
  INVX3 U4391 ( .A(n3699), .Y(n3707) );
  INVX3 U4392 ( .A(median_sobel_inst_data_h_r[7]), .Y(n3863) );
  INVX3 U4393 ( .A(n5754), .Y(median_sobel_inst_data_c_r[3]) );
  INVX3 U4394 ( .A(median_sobel_inst_n436), .Y(n3979) );
  INVX3 U4395 ( .A(median_sobel_inst_data_e_r[7]), .Y(n5301) );
  INVX3 U4396 ( .A(n3557), .Y(n3983) );
  INVX3 U4397 ( .A(n5395), .Y(n7785) );
  INVX3 U4398 ( .A(n5406), .Y(median_sobel_inst_data_f_r[6]) );
  NOR2X4 U4399 ( .A(median_sobel_inst_data_b_r[1]), .B(n5492), .Y(n3919) );
  NAND2X4 U4400 ( .A(n4914), .B(n3805), .Y(n3557) );
  NOR2X4 U4401 ( .A(n4392), .B(n3746), .Y(n3745) );
  NAND3X4 U4402 ( .A(n4916), .B(n4917), .C(n3958), .Y(
        median_sobel_inst_data_a_r[6]) );
  INVX3 U4403 ( .A(n5906), .Y(n3650) );
  INVX3 U4404 ( .A(n4514), .Y(n3953) );
  XOR2X1 U4405 ( .A(n6275), .B(n4198), .Y(n6276) );
  NAND2X4 U4406 ( .A(n4019), .B(n4930), .Y(n6407) );
  CLKMX2X2 U4407 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[21]), .S0(n5891), .Y(median_sobel_inst_n469) );
  CLKMX2X2 U4408 ( .A(median_sobel_inst_sobel_data_w[9]), .B(
        median_sobel_inst_G[20]), .S0(n5891), .Y(median_sobel_inst_n473) );
  NOR2X4 U4409 ( .A(n5378), .B(median_sobel_inst_n1161), .Y(n4514) );
  CLKMX2X2 U4410 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[19]), .S0(n5891), .Y(median_sobel_inst_n477) );
  CLKMX2X2 U4411 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[18]), .S0(n5891), .Y(median_sobel_inst_n481) );
  CLKMX2X2 U4412 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[16]), .S0(n5891), .Y(median_sobel_inst_n489) );
  CLKMX2X2 U4413 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[11]), .S0(n5891), .Y(median_sobel_inst_n509) );
  CLKMX2X2 U4414 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[15]), .S0(n5891), .Y(median_sobel_inst_n493) );
  NOR2X4 U4415 ( .A(n5891), .B(median_sobel_inst_n1166), .Y(n3895) );
  INVX3 U4416 ( .A(n3695), .Y(n3694) );
  NAND2BX2 U4417 ( .AN(n4825), .B(n3696), .Y(n3695) );
  NAND2X4 U4418 ( .A(n6897), .B(n5746), .Y(n4019) );
  CLKINVX1 U4419 ( .A(n5637), .Y(n5638) );
  OAI2BB1X2 U4420 ( .A0N(n4557), .A1N(n4558), .B0(n7263), .Y(n3612) );
  INVX3 U4421 ( .A(n3898), .Y(n5678) );
  CLKINVX1 U4422 ( .A(n6358), .Y(n6146) );
  INVX3 U4423 ( .A(n7258), .Y(n7263) );
  NAND2X1 U4424 ( .A(n6780), .B(n6779), .Y(n6781) );
  INVX2 U4425 ( .A(n3715), .Y(n4828) );
  INVX2 U4426 ( .A(n3697), .Y(n3696) );
  NOR2X8 U4427 ( .A(i_in_valid), .B(n5256), .Y(n7289) );
  INVX3 U4428 ( .A(n3806), .Y(n3802) );
  INVX3 U4429 ( .A(n7212), .Y(n4574) );
  INVX3 U4430 ( .A(n3904), .Y(n7166) );
  NOR2X6 U4431 ( .A(n3646), .B(n5012), .Y(n5014) );
  INVX3 U4432 ( .A(n5640), .Y(n5107) );
  OAI21X1 U4433 ( .A0(n6826), .A1(n6827), .B0(n6825), .Y(n6828) );
  NAND2X1 U4434 ( .A(n6452), .B(n6451), .Y(n6453) );
  NAND2BX2 U4435 ( .AN(n5204), .B(n3653), .Y(n5193) );
  NAND2BX1 U4436 ( .AN(n4101), .B(n6065), .Y(n6066) );
  INVX2 U4437 ( .A(n7105), .Y(n7301) );
  CLKINVX1 U4438 ( .A(n4592), .Y(n6068) );
  INVX1 U4439 ( .A(n6979), .Y(n6981) );
  OR2X4 U4440 ( .A(n6968), .B(n6971), .Y(n3904) );
  CLKINVX1 U4441 ( .A(n3791), .Y(n5599) );
  NAND2X1 U4442 ( .A(n7125), .B(n7124), .Y(n7126) );
  INVX1 U4443 ( .A(n6476), .Y(n6478) );
  NAND2X1 U4444 ( .A(n6359), .B(n6357), .Y(n6145) );
  CLKINVX1 U4445 ( .A(n5923), .Y(n4192) );
  CLKINVX1 U4446 ( .A(n3677), .Y(n3676) );
  INVX3 U4447 ( .A(median_sobel_inst_u_median_filter_submodule_n1468), .Y(
        n3909) );
  CLKINVX1 U4448 ( .A(n4796), .Y(n3702) );
  CLKINVX1 U4449 ( .A(n5923), .Y(n4095) );
  INVX2 U4450 ( .A(median_sobel_inst_u_median_filter_submodule_n273), .Y(n3653) );
  CLKINVX1 U4451 ( .A(median_sobel_inst_u_median_filter_submodule_n273), .Y(
        n4269) );
  INVX3 U4452 ( .A(median_sobel_inst_u_median_filter_submodule_net102875), .Y(
        n5198) );
  INVX3 U4453 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .Y(n4919) );
  INVX1 U4454 ( .A(median_sobel_inst_u_median_filter_submodule_net53043), .Y(
        n3701) );
  NAND2X1 U4455 ( .A(median_sobel_inst_u_median_filter_submodule_net20521), 
        .B(median_sobel_inst_u_median_filter_submodule_n224), .Y(n3728) );
  NAND2X1 U4456 ( .A(n1956), .B(cnt[7]), .Y(n5258) );
  INVX1 U4457 ( .A(median_sobel_inst_u_median_filter_submodule_net53043), .Y(
        n3690) );
  INVX1 U4458 ( .A(n7692), .Y(n3857) );
  CLKINVX1 U4459 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .Y(n3887) );
  NOR2X4 U4460 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[7]), .Y(
        n3790) );
  NOR2X4 U4461 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[6]), 
        .B(n7530), .Y(n6823) );
  OR2X1 U4462 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), .Y(
        n6042) );
  NOR2X1 U4463 ( .A(conv_inst_n189), .B(conv_inst_data_abc_1_r[0]), .Y(n6147)
         );
  NAND2X1 U4464 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n35), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n4), .Y(n5112) );
  INVX1 U4465 ( .A(n7566), .Y(n4258) );
  INVX3 U4466 ( .A(n4532), .Y(n3821) );
  INVX3 U4467 ( .A(n5302), .Y(n3984) );
  NAND2X4 U4468 ( .A(n5237), .B(n3812), .Y(n3811) );
  NOR2X4 U4469 ( .A(n4012), .B(n4010), .Y(n4009) );
  NAND2X2 U4470 ( .A(n3633), .B(n4590), .Y(n4591) );
  INVX3 U4471 ( .A(n4488), .Y(n3812) );
  INVX3 U4472 ( .A(n3843), .Y(n3842) );
  NAND2X2 U4473 ( .A(n4011), .B(n4494), .Y(n4010) );
  NOR2X4 U4474 ( .A(n3699), .B(n4841), .Y(n3709) );
  NAND2X4 U4475 ( .A(median_sobel_inst_data_e_r[7]), .B(n3863), .Y(n3862) );
  INVX3 U4476 ( .A(n4433), .Y(n5761) );
  NOR2X4 U4477 ( .A(n5814), .B(n3558), .Y(n4118) );
  NOR2X4 U4478 ( .A(n5933), .B(median_sobel_inst_data_g_r[7]), .Y(n5239) );
  INVX3 U4479 ( .A(n5760), .Y(n3951) );
  INVX3 U4480 ( .A(n3919), .Y(n3918) );
  INVX3 U4481 ( .A(n5496), .Y(median_sobel_inst_data_b_r[3]) );
  INVX4 U4482 ( .A(n4251), .Y(n4249) );
  NAND2X6 U4483 ( .A(n5234), .B(n5235), .Y(median_sobel_inst_data_d_r[2]) );
  NAND2X6 U4484 ( .A(n4004), .B(n5225), .Y(median_sobel_inst_n983) );
  NAND4X4 U4485 ( .A(n4912), .B(n4911), .C(n4519), .D(n4518), .Y(
        median_sobel_inst_n910) );
  NAND2X4 U4486 ( .A(n4134), .B(n4423), .Y(n5975) );
  INVX3 U4487 ( .A(n5762), .Y(n3820) );
  INVX3 U4488 ( .A(median_sobel_inst_data_g_r[2]), .Y(n3976) );
  INVX3 U4489 ( .A(n3824), .Y(n4665) );
  INVX3 U4490 ( .A(n4496), .Y(n3962) );
  INVX3 U4491 ( .A(n4948), .Y(n3960) );
  NAND2X2 U4492 ( .A(n3890), .B(n3889), .Y(n3888) );
  NAND2X1 U4493 ( .A(median_sobel_inst_n1095), .B(n4333), .Y(n5289) );
  NAND2X2 U4494 ( .A(n6683), .B(n3594), .Y(n3865) );
  MX2X1 U4495 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[17]), .S0(n3823), .Y(median_sobel_inst_n485) );
  MX2X1 U4496 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[14]), .S0(n3823), .Y(median_sobel_inst_n497) );
  MX2X1 U4497 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[12]), .S0(n3823), .Y(median_sobel_inst_n505) );
  OAI21X1 U4498 ( .A0(n5752), .A1(n5751), .B0(n5750), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N24) );
  OAI21X2 U4499 ( .A0(n4831), .A1(n4830), .B0(n3689), .Y(n3688) );
  NOR2X1 U4500 ( .A(n5979), .B(conv_inst_n313), .Y(conv_inst_N134) );
  NAND2X2 U4501 ( .A(n4003), .B(n4316), .Y(n4527) );
  INVX3 U4502 ( .A(n3946), .Y(n3945) );
  INVX1 U4503 ( .A(n6060), .Y(n7731) );
  NAND2X2 U4504 ( .A(n3586), .B(n5890), .Y(n4179) );
  NAND2X2 U4505 ( .A(n4368), .B(n7497), .Y(n4583) );
  CLKINVX1 U4506 ( .A(n6777), .Y(n6592) );
  NOR2X4 U4507 ( .A(n6606), .B(median_sobel_inst_u_sober_compare_submodule_n14), .Y(n6615) );
  NAND2X2 U4508 ( .A(n3671), .B(n4649), .Y(n3670) );
  CLKINVX1 U4509 ( .A(n6220), .Y(n4016) );
  NAND2X1 U4510 ( .A(n3717), .B(n4826), .Y(n3715) );
  NAND2X1 U4511 ( .A(n6503), .B(n6501), .Y(n6373) );
  INVX3 U4512 ( .A(n3781), .Y(n3779) );
  CLKINVX1 U4513 ( .A(n7167), .Y(n3889) );
  NAND2X2 U4514 ( .A(n7358), .B(n7333), .Y(n7335) );
  INVX3 U4515 ( .A(n5804), .Y(n6484) );
  NAND2X1 U4516 ( .A(n6395), .B(n6398), .Y(n6396) );
  NAND2X1 U4517 ( .A(n5632), .B(n5631), .Y(n5633) );
  INVX3 U4518 ( .A(n5745), .Y(n6405) );
  INVX4 U4519 ( .A(n3886), .Y(n6152) );
  INVX3 U4520 ( .A(n6498), .Y(n6503) );
  AND3X4 U4521 ( .A(n4797), .B(n4801), .C(n4802), .Y(n3713) );
  NAND2X4 U4522 ( .A(n3716), .B(n3711), .Y(n4826) );
  NAND2X2 U4523 ( .A(n4827), .B(
        median_sobel_inst_u_median_filter_submodule_n1200), .Y(n3717) );
  INVX1 U4524 ( .A(n6077), .Y(n6079) );
  AND2X4 U4525 ( .A(n2002), .B(n1975), .Y(n4180) );
  CLKINVX1 U4526 ( .A(n7733), .Y(n5980) );
  OR2X1 U4527 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n96), .Y(n6040) );
  NOR2X1 U4528 ( .A(median_sobel_inst_n99), .B(med_sobel_isFirst_signal_r), 
        .Y(n4782) );
  CLKINVX1 U4529 ( .A(n1984), .Y(n5957) );
  INVX1 U4530 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n409), .Y(
        n4071) );
  INVX6 U4531 ( .A(n2115), .Y(n4568) );
  NOR2X4 U4532 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[1]), .Y(
        n3791) );
  AND2X2 U4533 ( .A(n458), .B(n459), .Y(n7205) );
  INVX2 U4534 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n412), .Y(
        n4173) );
  OR2X1 U4535 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n417), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n415), .Y(n6225) );
  OR2X1 U4536 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n96), .Y(n6039) );
  CLKINVX1 U4537 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n97), .Y(
        n7164) );
  OR2X1 U4538 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(n6031) );
  OR2X1 U4539 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(n6032) );
  NAND2X4 U4540 ( .A(n3826), .B(n4475), .Y(
        median_sobel_inst_u_median_filter_submodule_a36_w) );
  NAND2X4 U4541 ( .A(n3833), .B(n3830), .Y(n3829) );
  NAND3X2 U4542 ( .A(n3633), .B(n7658), .C(n7149), .Y(n5709) );
  NAND2X4 U4543 ( .A(n4453), .B(n3635), .Y(n5464) );
  NAND2X2 U4544 ( .A(n3924), .B(median_sobel_inst_data_f_r[5]), .Y(n4532) );
  NAND2X4 U4545 ( .A(n4159), .B(n4157), .Y(n4014) );
  INVX3 U4546 ( .A(n4117), .Y(n3932) );
  NAND2X2 U4547 ( .A(n5476), .B(median_sobel_inst_data_h_r[5]), .Y(n3991) );
  AND2X4 U4548 ( .A(n5399), .B(n4539), .Y(n4481) );
  NAND2X2 U4549 ( .A(n3982), .B(n3978), .Y(n3977) );
  NAND2X2 U4550 ( .A(n5405), .B(n4312), .Y(n3832) );
  NAND2BX2 U4551 ( .AN(n5346), .B(n4476), .Y(n4475) );
  NAND2X6 U4552 ( .A(n4170), .B(n4169), .Y(median_sobel_inst_n1033) );
  INVX2 U4553 ( .A(n3556), .Y(n4512) );
  INVX2 U4554 ( .A(n3556), .Y(n4476) );
  NAND2X2 U4555 ( .A(median_sobel_inst_data_c_r[3]), .B(n5403), .Y(n5399) );
  INVX3 U4556 ( .A(n3973), .Y(n3972) );
  NAND2X4 U4557 ( .A(n3922), .B(n3921), .Y(n3920) );
  INVX16 U4558 ( .A(n3686), .Y(n3699) );
  NAND2X2 U4559 ( .A(n3559), .B(n3983), .Y(n3982) );
  NAND2X6 U4560 ( .A(n5759), .B(n5754), .Y(n4433) );
  NAND2X2 U4561 ( .A(n5403), .B(median_sobel_inst_n982), .Y(n3931) );
  INVX3 U4562 ( .A(n5342), .Y(n3925) );
  INVX3 U4563 ( .A(median_sobel_inst_n983), .Y(n5812) );
  CLKMX2X2 U4564 ( .A(median_sobel_inst_angle[0]), .B(
        median_sobel_inst_u_sober_compare_submodule_n340), .S0(n4293), .Y(
        median_sobel_inst_u_sober_compare_submodule_n94) );
  CLKMX2X2 U4565 ( .A(median_sobel_inst_angle[1]), .B(
        median_sobel_inst_u_sober_compare_submodule_n329), .S0(n4293), .Y(
        median_sobel_inst_u_sober_compare_submodule_n95) );
  CLKMX2X2 U4566 ( .A(median_sobel_inst_angle[6]), .B(
        median_sobel_inst_u_sober_compare_submodule_n14), .S0(n4293), .Y(
        median_sobel_inst_u_sober_compare_submodule_n88) );
  CLKMX2X2 U4567 ( .A(median_sobel_inst_angle[5]), .B(
        median_sobel_inst_u_sober_compare_submodule_n17), .S0(n4293), .Y(
        median_sobel_inst_u_sober_compare_submodule_n91) );
  CLKMX2X2 U4568 ( .A(median_sobel_inst_angle[4]), .B(
        median_sobel_inst_u_sober_compare_submodule_n11), .S0(n4293), .Y(
        median_sobel_inst_u_sober_compare_submodule_n90) );
  NOR2X6 U4569 ( .A(n4524), .B(n4164), .Y(n4002) );
  INVX4 U4570 ( .A(median_sobel_inst_data_g_r[7]), .Y(n5814) );
  INVX2 U4571 ( .A(n7319), .Y(n7320) );
  INVX3 U4572 ( .A(n3559), .Y(n5811) );
  INVX3 U4573 ( .A(median_sobel_inst_n910), .Y(n5494) );
  NAND2X6 U4574 ( .A(n4743), .B(n3980), .Y(median_sobel_inst_n436) );
  NOR2X4 U4575 ( .A(n3899), .B(n4095), .Y(conv_inst_N267) );
  INVX3 U4576 ( .A(median_sobel_inst_data_f_r[3]), .Y(n3927) );
  INVX3 U4577 ( .A(median_sobel_inst_data_f_r[3]), .Y(n5403) );
  CLKMX2X2 U4578 ( .A(median_sobel_inst_angle[7]), .B(
        median_sobel_inst_u_sober_compare_submodule_n332), .S0(n4293), .Y(
        median_sobel_inst_u_sober_compare_submodule_n89) );
  NAND2X4 U4579 ( .A(n3719), .B(n3726), .Y(n3718) );
  CLKMX2X2 U4580 ( .A(median_sobel_inst_G[4]), .B(
        median_sobel_inst_u_sober_compare_submodule_n295), .S0(n5955), .Y(
        median_sobel_inst_u_sober_compare_submodule_n133) );
  CLKMX2X2 U4581 ( .A(median_sobel_inst_n1103), .B(n7721), .S0(n6253), .Y(
        median_sobel_inst_n1447) );
  CLKMX2X2 U4582 ( .A(median_sobel_inst_G[0]), .B(
        median_sobel_inst_u_sober_compare_submodule_n275), .S0(n5955), .Y(
        median_sobel_inst_u_sober_compare_submodule_n129) );
  CLKINVX1 U4583 ( .A(median_sobel_inst_data_c_r[6]), .Y(n5766) );
  AND2X4 U4584 ( .A(n4790), .B(n4791), .Y(n3950) );
  CLKMX2X2 U4585 ( .A(n7655), .B(median_sobel_inst_G[31]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n116) );
  INVX3 U4586 ( .A(median_sobel_inst_data_i_r[1]), .Y(n4248) );
  CLKMX2X2 U4587 ( .A(median_sobel_inst_u_sober_compare_submodule_n250), .B(
        median_sobel_inst_angle[3]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n93) );
  CLKINVX1 U4588 ( .A(n5394), .Y(median_sobel_inst_data_c_r[0]) );
  CLKMX2X2 U4589 ( .A(median_sobel_inst_angle[2]), .B(n7592), .S0(n5955), .Y(
        median_sobel_inst_u_sober_compare_submodule_n92) );
  INVX3 U4590 ( .A(median_sobel_inst_data_g_r[2]), .Y(n4158) );
  NAND2X4 U4591 ( .A(n4868), .B(n6786), .Y(n3763) );
  NAND2X2 U4592 ( .A(median_sobel_inst_data_b_r[1]), .B(n5492), .Y(n3922) );
  CLKMX2X2 U4593 ( .A(median_sobel_inst_G[8]), .B(n7695), .S0(n5955), .Y(
        median_sobel_inst_u_sober_compare_submodule_n137) );
  INVX6 U4594 ( .A(median_sobel_inst_n135), .Y(n3835) );
  NAND4X6 U4595 ( .A(n3894), .B(n5016), .C(n3896), .D(n5017), .Y(
        median_sobel_inst_data_g_r[7]) );
  NAND3X2 U4596 ( .A(n3867), .B(n3866), .C(n3865), .Y(n3864) );
  NAND2X6 U4597 ( .A(n5292), .B(n5293), .Y(median_sobel_inst_data_e_r[7]) );
  NAND2X4 U4598 ( .A(n4250), .B(n4252), .Y(n4251) );
  CLKMX2X2 U4599 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[0]), .S0(n5955), .Y(median_sobel_inst_n510) );
  NOR2X4 U4600 ( .A(n3590), .B(n4005), .Y(n4004) );
  CLKMX2X2 U4601 ( .A(n7640), .B(median_sobel_inst_G[13]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n120) );
  CLKMX2X2 U4602 ( .A(n7657), .B(median_sobel_inst_G[19]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n126) );
  CLKMX2X2 U4603 ( .A(n7636), .B(median_sobel_inst_G[18]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n125) );
  AND2X2 U4604 ( .A(n5741), .B(n6787), .Y(conv_inst_data_bcd_w[1]) );
  OAI2BB1X1 U4605 ( .A0N(median_sobel_inst_angle[7]), .A1N(n3854), .B0(n3853), 
        .Y(median_sobel_inst_n515) );
  XOR2X1 U4606 ( .A(n4753), .B(n4039), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N41) );
  NAND2X1 U4607 ( .A(n3855), .B(n3857), .Y(n3856) );
  OAI2BB1X1 U4608 ( .A0N(median_sobel_inst_n1083), .A1N(n3854), .B0(n3852), 
        .Y(median_sobel_inst_n1421) );
  NAND2X1 U4609 ( .A(n6728), .B(n7695), .Y(n6694) );
  NAND2X2 U4610 ( .A(n3997), .B(n3996), .Y(n3995) );
  CLKMX2X2 U4611 ( .A(median_sobel_inst_G[14]), .B(
        median_sobel_inst_u_sober_compare_submodule_n278), .S0(n6568), .Y(
        median_sobel_inst_u_sober_compare_submodule_n121) );
  CLKMX2X2 U4612 ( .A(median_sobel_inst_G[2]), .B(
        median_sobel_inst_u_sober_compare_submodule_n294), .S0(n6568), .Y(
        median_sobel_inst_u_sober_compare_submodule_n131) );
  CLKMX2X2 U4613 ( .A(median_sobel_inst_G[1]), .B(
        median_sobel_inst_u_sober_compare_submodule_n293), .S0(n6568), .Y(
        median_sobel_inst_u_sober_compare_submodule_n130) );
  CLKMX2X2 U4614 ( .A(median_sobel_inst_G[5]), .B(
        median_sobel_inst_u_sober_compare_submodule_n296), .S0(n6568), .Y(
        median_sobel_inst_u_sober_compare_submodule_n134) );
  NOR3X1 U4615 ( .A(n6161), .B(n7658), .C(n7469), .Y(n4767) );
  CLKMX2X2 U4616 ( .A(median_sobel_inst_G[34]), .B(
        median_sobel_inst_u_sober_compare_submodule_n178), .S0(n6568), .Y(
        median_sobel_inst_u_sober_compare_submodule_n97) );
  CLKMX2X2 U4617 ( .A(median_sobel_inst_G[3]), .B(
        median_sobel_inst_u_sober_compare_submodule_n279), .S0(n6568), .Y(
        median_sobel_inst_u_sober_compare_submodule_n132) );
  NAND2X2 U4618 ( .A(n4520), .B(n4319), .Y(n4519) );
  NAND2X4 U4619 ( .A(n3688), .B(n3694), .Y(n3687) );
  CLKMX2X2 U4620 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[6]), .S0(n6568), .Y(median_sobel_inst_n486) );
  CLKMX2X2 U4621 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[5]), .S0(n6568), .Y(median_sobel_inst_n490) );
  CLKMX2X2 U4622 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[4]), .S0(n6568), .Y(median_sobel_inst_n494) );
  NAND2X1 U4623 ( .A(n3855), .B(input_data_ready_r[5]), .Y(n3859) );
  CLKMX2X2 U4624 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[1]), .S0(n6568), .Y(median_sobel_inst_n506) );
  CLKMX2X2 U4625 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[2]), .S0(n6568), .Y(median_sobel_inst_n502) );
  INVX3 U4626 ( .A(n3611), .Y(n4309) );
  NAND2X4 U4627 ( .A(n4213), .B(n3779), .Y(n3778) );
  NAND3X4 U4628 ( .A(n3875), .B(n7104), .C(n7188), .Y(n3800) );
  NAND3X1 U4629 ( .A(n7220), .B(n7510), .C(n7690), .Y(n6106) );
  NAND2X1 U4630 ( .A(n3855), .B(input_data_ready_r[4]), .Y(n3858) );
  NAND2X1 U4631 ( .A(n3855), .B(n3605), .Y(n3860) );
  CLKMX2X2 U4632 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[3]), .S0(n6568), .Y(median_sobel_inst_n498) );
  NOR2X4 U4633 ( .A(n3823), .B(median_sobel_inst_n919), .Y(n3825) );
  INVX2 U4634 ( .A(n5467), .Y(n4337) );
  NOR2X2 U4635 ( .A(median_sobel_inst_n420), .B(n3823), .Y(n3824) );
  NAND2X4 U4636 ( .A(n3643), .B(n3642), .Y(n3641) );
  NAND2BX2 U4637 ( .AN(n4559), .B(n3612), .Y(n3611) );
  AND2X4 U4638 ( .A(n6196), .B(n5877), .Y(n3640) );
  CLKMX2X2 U4639 ( .A(median_sobel_inst_n1026), .B(n7717), .S0(n6535), .Y(
        median_sobel_inst_n610) );
  CLKMX2X2 U4640 ( .A(median_sobel_inst_n1022), .B(n7688), .S0(n6535), .Y(
        median_sobel_inst_n577) );
  NAND2BX1 U4641 ( .AN(median_sobel_inst_n1166), .B(n4136), .Y(n4139) );
  NAND2X2 U4642 ( .A(n5208), .B(n5207), .Y(n4181) );
  NAND3X2 U4643 ( .A(n4270), .B(n4273), .C(n5189), .Y(n4214) );
  NAND2X1 U4644 ( .A(n4136), .B(median_sobel_inst_n1098), .Y(n4147) );
  NAND2X6 U4645 ( .A(n4060), .B(n4059), .Y(n6739) );
  NAND2X2 U4646 ( .A(n3702), .B(n3703), .Y(n3714) );
  NAND2X1 U4647 ( .A(n4136), .B(n4141), .Y(n4140) );
  INVX16 U4648 ( .A(n3822), .Y(n3823) );
  INVX16 U4649 ( .A(n4162), .Y(n5466) );
  NAND3X1 U4650 ( .A(n7263), .B(n7161), .C(n7522), .Y(n3545) );
  INVX2 U4651 ( .A(n5683), .Y(n3908) );
  OAI22X1 U4652 ( .A0(conv_inst_n310), .A1(n7147), .B0(conv_inst_n265), .B1(
        n5979), .Y(conv_inst_N138) );
  OR2X4 U4653 ( .A(n5683), .B(n5459), .Y(n3649) );
  CLKMX2X2 U4654 ( .A(median_sobel_inst_n725), .B(n4314), .S0(n6087), .Y(
        median_sobel_inst_n535) );
  CLKINVX1 U4655 ( .A(n4836), .Y(n3724) );
  NAND2X6 U4656 ( .A(n5658), .B(n4030), .Y(n7150) );
  NAND3X2 U4657 ( .A(n3729), .B(n3728), .C(n4827), .Y(n4806) );
  CLKMX2X2 U4658 ( .A(median_sobel_inst_n118), .B(n7676), .S0(n6087), .Y(
        median_sobel_inst_n568) );
  INVX4 U4659 ( .A(n6122), .Y(n6613) );
  CLKINVX1 U4660 ( .A(N125), .Y(n3551) );
  INVX3 U4661 ( .A(n5807), .Y(n4082) );
  INVX2 U4662 ( .A(n5206), .Y(n5205) );
  XOR2X1 U4663 ( .A(n6070), .B(n6069), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N76) );
  AND2X4 U4664 ( .A(n5203), .B(n3661), .Y(n3659) );
  INVX1 U4665 ( .A(n7216), .Y(n7217) );
  XOR2X1 U4666 ( .A(n6064), .B(n3677), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N270) );
  AOI22X1 U4667 ( .A0(n7232), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .B0(n7231), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .Y(n6128)
         );
  NAND2X1 U4668 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n293), .Y(n6008) );
  NAND2X1 U4669 ( .A(n6989), .B(n6988), .Y(n6990) );
  CLKMX2X2 U4670 ( .A(median_sobel_inst_n1071), .B(n7698), .S0(n6137), .Y(
        median_sobel_inst_n587) );
  CLKMX2X2 U4671 ( .A(n7629), .B(median_sobel_inst_n1102), .S0(n6137), .Y(
        median_sobel_inst_n552) );
  CLKMX2X2 U4672 ( .A(median_sobel_inst_n1103), .B(median_sobel_inst_n780), 
        .S0(n6137), .Y(median_sobel_inst_n612) );
  INVX3 U4673 ( .A(n6758), .Y(n6757) );
  NAND2X1 U4674 ( .A(n6748), .B(n6747), .Y(n6749) );
  CLKMX2X2 U4675 ( .A(n7678), .B(median_sobel_inst_n999), .S0(n6137), .Y(
        median_sobel_inst_n558) );
  NAND2X1 U4676 ( .A(n6859), .B(n6857), .Y(n6567) );
  CLKMX2X2 U4677 ( .A(n7679), .B(median_sobel_inst_n1015), .S0(n6137), .Y(
        median_sobel_inst_n557) );
  CLKMX2X2 U4678 ( .A(median_sobel_inst_n1083), .B(median_sobel_inst_n1017), 
        .S0(n6137), .Y(median_sobel_inst_n636) );
  NAND2X1 U4679 ( .A(n6863), .B(n6862), .Y(n6864) );
  INVX1 U4680 ( .A(n6267), .Y(n6271) );
  CLKMX2X2 U4681 ( .A(median_sobel_inst_n1053), .B(median_sobel_inst_n324), 
        .S0(n6137), .Y(median_sobel_inst_n553) );
  AND2X2 U4682 ( .A(n7108), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]), .Y(n7109)
         );
  INVX3 U4683 ( .A(n6876), .Y(n6520) );
  AND2X2 U4684 ( .A(n7107), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[10]), .Y(n7110)
         );
  AOI22X1 U4685 ( .A0(n7232), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .B0(n7231), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .Y(n6130)
         );
  INVX3 U4686 ( .A(n6419), .Y(n6261) );
  NAND2X1 U4687 ( .A(n6372), .B(n6500), .Y(n6171) );
  NAND2X1 U4688 ( .A(n6872), .B(n6871), .Y(n6873) );
  NOR2BX1 U4689 ( .AN(n5965), .B(n3676), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N260) );
  AOI22X1 U4690 ( .A0(n7232), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .B0(n7231), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .Y(n6129)
         );
  NAND2X1 U4691 ( .A(n5802), .B(n5801), .Y(n5803) );
  INVX6 U4692 ( .A(n3730), .Y(n4976) );
  CLKMX2X2 U4693 ( .A(n7628), .B(median_sobel_inst_n1109), .S0(n6137), .Y(
        median_sobel_inst_n581) );
  CLKMX2X2 U4694 ( .A(median_sobel_inst_n1058), .B(median_sobel_inst_n1091), 
        .S0(n6137), .Y(median_sobel_inst_n554) );
  INVX1 U4695 ( .A(n5698), .Y(n5700) );
  NOR2X1 U4696 ( .A(n7035), .B(x_minus_one_r[2]), .Y(n7031) );
  CLKINVX1 U4697 ( .A(n4597), .Y(n3620) );
  INVX1 U4698 ( .A(n6639), .Y(n6640) );
  AND2X2 U4699 ( .A(n6036), .B(n6069), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N6) );
  INVX3 U4700 ( .A(median_sobel_inst_u_sober_compare_submodule_n343), .Y(n3634) );
  INVX2 U4701 ( .A(n6465), .Y(n3870) );
  NOR2X4 U4702 ( .A(n3790), .B(n3789), .Y(n3788) );
  INVX3 U4703 ( .A(n3645), .Y(n3644) );
  INVX1 U4704 ( .A(n6203), .Y(n6205) );
  INVX12 U4705 ( .A(n5591), .Y(n5587) );
  INVX1 U4706 ( .A(n5562), .Y(n3771) );
  INVX1 U4707 ( .A(n5566), .Y(n3766) );
  NOR2X1 U4708 ( .A(n6907), .B(n6979), .Y(n6528) );
  NAND2X1 U4709 ( .A(n7340), .B(n7341), .Y(n7338) );
  INVX1 U4710 ( .A(n5773), .Y(n5774) );
  INVX3 U4711 ( .A(n4290), .Y(n4291) );
  INVX3 U4712 ( .A(n5190), .Y(n3781) );
  NAND2X1 U4713 ( .A(n7298), .B(n7105), .Y(n7012) );
  NOR2X2 U4714 ( .A(median_sobel_inst_u_median_filter_submodule_net94827), .B(
        n3739), .Y(n3738) );
  INVX1 U4715 ( .A(median_sobel_inst_u_median_filter_submodule_n257), .Y(n3739) );
  NAND2X1 U4716 ( .A(median_sobel_inst_n181), .B(median_sobel_inst_n399), .Y(
        n3615) );
  OR2X2 U4717 ( .A(median_sobel_inst_u_median_filter_submodule_n773), .B(
        median_sobel_inst_u_median_filter_submodule_n271), .Y(n5179) );
  INVX3 U4718 ( .A(median_sobel_inst_u_median_filter_submodule_n1093), .Y(
        n5199) );
  INVX1 U4719 ( .A(median_sobel_inst_u_median_filter_submodule_net52768), .Y(
        n3716) );
  INVX2 U4720 ( .A(median_sobel_inst_u_median_filter_submodule_n128), .Y(n3711) );
  INVX1 U4721 ( .A(n1980), .Y(n6819) );
  INVX3 U4722 ( .A(median_sobel_inst_u_median_filter_submodule_n117), .Y(n5138) );
  INVX1 U4723 ( .A(n1993), .Y(n6821) );
  INVX1 U4724 ( .A(median_sobel_inst_n99), .Y(n4776) );
  CLKINVX1 U4725 ( .A(median_sobel_inst_n933), .Y(n3849) );
  INVX1 U4726 ( .A(median_sobel_inst_u_median_filter_submodule_net99899), .Y(
        n5685) );
  INVX1 U4727 ( .A(median_sobel_inst_u_median_filter_submodule_net96572), .Y(
        n5188) );
  CLKINVX1 U4728 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n433), .Y(
        n4062) );
  CLKINVX1 U4729 ( .A(median_sobel_inst_u_median_filter_submodule_n207), .Y(
        n3727) );
  INVX1 U4730 ( .A(median_sobel_inst_u_median_filter_submodule_net96588), .Y(
        n4080) );
  CLKINVX1 U4731 ( .A(median_sobel_inst_u_median_filter_submodule_n228), .Y(
        n5817) );
  NOR2X4 U4732 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(
        n3789) );
  NAND2X2 U4733 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), .Y(n6465) );
  NOR2X4 U4734 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[10]), .Y(
        n6570) );
  CLKINVX1 U4735 ( .A(median_sobel_inst_G[9]), .Y(n3964) );
  CLKINVX1 U4736 ( .A(conv_inst_conv_4_r[11]), .Y(n3624) );
  INVX3 U4737 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net94800), .Y(
        n5944) );
  INVX1 U4738 ( .A(median_sobel_inst_u_median_filter_submodule_n1200), .Y(
        n4842) );
  OR2X4 U4739 ( .A(median_sobel_inst_u_sober_compare_submodule_net109308), .B(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[10]), .Y(n5878)
         );
  OR2X1 U4740 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n94), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n6035) );
  INVX2 U4741 ( .A(median_sobel_inst_u_median_filter_submodule_net97547), .Y(
        n4638) );
  NOR2X1 U4742 ( .A(n1913), .B(n1914), .Y(n5793) );
  INVX1 U4743 ( .A(median_sobel_inst_n1017), .Y(n4615) );
  OR2X1 U4744 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n75), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[0]), .Y(n6043) );
  CLKINVX1 U4745 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n89), .Y(
        n4066) );
  NAND2X4 U4746 ( .A(n4429), .B(n4428), .Y(
        median_sobel_inst_u_median_filter_submodule_a39_w) );
  NAND2X4 U4747 ( .A(n3836), .B(n4317), .Y(n4429) );
  NAND3X4 U4748 ( .A(n3985), .B(n3988), .C(n3990), .Y(
        median_sobel_inst_u_median_filter_submodule_a58_w) );
  NAND2X4 U4749 ( .A(n3829), .B(n3827), .Y(n3826) );
  NAND2X4 U4750 ( .A(n3987), .B(n3986), .Y(n3985) );
  NAND3X4 U4751 ( .A(n3756), .B(n3991), .C(n3752), .Y(n3987) );
  NOR2X4 U4752 ( .A(n3821), .B(n3819), .Y(n3818) );
  NAND2X2 U4753 ( .A(n4376), .B(n4375), .Y(
        median_sobel_inst_u_median_filter_submodule_n825) );
  NAND2X4 U4754 ( .A(n4015), .B(n4014), .Y(n4013) );
  NAND2X4 U4755 ( .A(n4410), .B(n4408), .Y(n4407) );
  INVX3 U4756 ( .A(n5302), .Y(n3986) );
  NAND2X4 U4757 ( .A(n5761), .B(n3842), .Y(n3841) );
  NAND2X4 U4758 ( .A(n4045), .B(n5355), .Y(n4460) );
  NAND2X4 U4759 ( .A(n4477), .B(n3832), .Y(n3831) );
  XNOR2X2 U4760 ( .A(n7023), .B(n4203), .Y(conv_inst_data_bcd_w[4]) );
  NOR3X6 U4761 ( .A(n4474), .B(median_sobel_inst_data_b_r[3]), .C(n3968), .Y(
        n3967) );
  NAND2X2 U4762 ( .A(n4156), .B(median_sobel_inst_data_g_r[2]), .Y(n4155) );
  NAND2X1 U4763 ( .A(n6996), .B(n6847), .Y(sram_addr_wait_r[22]) );
  AND2X4 U4764 ( .A(n3622), .B(n5923), .Y(conv_inst_N281) );
  NAND2X6 U4765 ( .A(n4170), .B(n4167), .Y(median_sobel_inst_ns[0]) );
  NAND3X2 U4766 ( .A(n3931), .B(n3930), .C(n5344), .Y(n3929) );
  NAND2X6 U4767 ( .A(n5344), .B(n3926), .Y(n5343) );
  INVX3 U4768 ( .A(median_sobel_inst_n705), .Y(n5928) );
  OAI21X2 U4769 ( .A0(n5712), .A1(n5686), .B0(n4226), .Y(
        median_sobel_inst_u_median_filter_submodule_n819) );
  AND2X4 U4770 ( .A(n4490), .B(n4489), .Y(n3813) );
  NAND2X4 U4771 ( .A(median_sobel_inst_data_e_r[5]), .B(n5495), .Y(n5300) );
  INVX6 U4772 ( .A(n4992), .Y(n7413) );
  INVX3 U4773 ( .A(median_sobel_inst_n705), .Y(n4156) );
  NOR2X4 U4774 ( .A(n3905), .B(n6797), .Y(conv_inst_N2690) );
  INVX2 U4775 ( .A(median_sobel_inst_n1030), .Y(n5298) );
  INVX6 U4776 ( .A(n4879), .Y(n5462) );
  NAND4X1 U4777 ( .A(n6674), .B(n6673), .C(n6672), .D(n6671), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[6]) );
  NAND4X1 U4778 ( .A(n6694), .B(n6693), .C(n6692), .D(n6691), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[8]) );
  NAND4X1 U4779 ( .A(n6682), .B(n6681), .C(n6680), .D(n6679), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[5]) );
  NAND4X1 U4780 ( .A(n6723), .B(n6722), .C(n6721), .D(n6720), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[3]) );
  NAND4X1 U4781 ( .A(n6678), .B(n6677), .C(n6676), .D(n6675), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[7]) );
  CLKINVX1 U4782 ( .A(n5342), .Y(n5340) );
  NAND2X2 U4783 ( .A(n5494), .B(median_sobel_inst_data_b_r[3]), .Y(n3910) );
  BUFX16 U4784 ( .A(n5209), .Y(n5820) );
  NOR2X4 U4785 ( .A(n3891), .B(n3646), .Y(conv_inst_N266) );
  NAND2X1 U4786 ( .A(n7087), .B(n3637), .Y(n7088) );
  NAND2X4 U4787 ( .A(n5496), .B(median_sobel_inst_n910), .Y(n3998) );
  NAND2X4 U4788 ( .A(n7112), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .Y(n3798) );
  NAND2X4 U4789 ( .A(n3765), .B(n5567), .Y(n4452) );
  NAND2X2 U4790 ( .A(n5299), .B(median_sobel_inst_n910), .Y(n3754) );
  NAND2X4 U4791 ( .A(n5401), .B(median_sobel_inst_data_i_r[4]), .Y(n5344) );
  NAND2X4 U4792 ( .A(n4283), .B(n3555), .Y(n3930) );
  INVX2 U4793 ( .A(median_sobel_inst_data_f_r[6]), .Y(n3828) );
  NAND2X4 U4794 ( .A(n3872), .B(n6483), .Y(n3871) );
  CLKMX2X2 U4795 ( .A(n7663), .B(median_sobel_inst_G[33]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n96) );
  NAND2X6 U4796 ( .A(n3800), .B(n3799), .Y(n7112) );
  MXI2X1 U4797 ( .A(n2002), .B(median_sobel_inst_n241), .S0(n5955), .Y(
        median_sobel_inst_n1446) );
  INVX3 U4798 ( .A(median_sobel_inst_data_h_r[2]), .Y(n3913) );
  CLKMX2X2 U4799 ( .A(n7650), .B(median_sobel_inst_G[20]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n127) );
  CLKMX2X2 U4800 ( .A(n7661), .B(median_sobel_inst_G[38]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n101) );
  NAND2X2 U4801 ( .A(median_sobel_inst_data_i_r[0]), .B(n5394), .Y(n3847) );
  NAND2X4 U4802 ( .A(n6486), .B(n6484), .Y(n3872) );
  AND3X6 U4803 ( .A(n4516), .B(n4517), .C(n3953), .Y(n3952) );
  AOI21X1 U4804 ( .A0(n6604), .A1(n6222), .B0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_N307) );
  CLKMX2X2 U4805 ( .A(median_sobel_inst_n1094), .B(input_data_ready_r[31]), 
        .S0(n5976), .Y(median_sobel_inst_n1453) );
  NOR2X1 U4806 ( .A(n6114), .B(n6113), .Y(n6121) );
  CLKMX2X2 U4807 ( .A(median_sobel_inst_n1082), .B(n6346), .S0(n5976), .Y(
        median_sobel_inst_med_sobel_e_wait_r[3]) );
  NAND2X6 U4808 ( .A(n5149), .B(n5150), .Y(median_sobel_inst_n979) );
  XOR2X2 U4809 ( .A(n3888), .B(n6972), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N113) );
  NAND2X1 U4810 ( .A(n5647), .B(n5646), .Y(n5648) );
  NAND3X2 U4811 ( .A(n4786), .B(n4785), .C(n5974), .Y(n4780) );
  CLKMX2X2 U4812 ( .A(median_sobel_inst_angle[1]), .B(
        median_sobel_inst_angle_w[1]), .S0(n5976), .Y(median_sobel_inst_n514)
         );
  CLKMX2X2 U4813 ( .A(n7639), .B(median_sobel_inst_G[11]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n118) );
  CLKMX2X2 U4814 ( .A(n7641), .B(median_sobel_inst_G[15]), .S0(n5976), .Y(
        median_sobel_inst_u_sober_compare_submodule_n122) );
  NAND2X4 U4815 ( .A(n3942), .B(n3936), .Y(n3559) );
  NAND2X6 U4816 ( .A(n6197), .B(n3640), .Y(n3651) );
  NAND3X1 U4817 ( .A(n6587), .B(n6586), .C(n6585), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[6]) );
  OAI2BB1X1 U4818 ( .A0N(n7279), .A1N(
        median_sobel_inst_u_median_filter_submodule_n720), .B0(n7250), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[3]) );
  AOI21X1 U4819 ( .A0(n6528), .A1(n4057), .B0(n6527), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[10]) );
  NAND2X6 U4820 ( .A(n3784), .B(n3783), .Y(n7305) );
  NOR2X6 U4821 ( .A(n5331), .B(n3825), .Y(n5333) );
  NAND2X2 U4822 ( .A(n5906), .B(n3908), .Y(n3907) );
  NAND2X6 U4823 ( .A(n4870), .B(n7733), .Y(n3637) );
  CLKMX2X2 U4824 ( .A(n7652), .B(median_sobel_inst_G[25]), .S0(n5956), .Y(
        median_sobel_inst_u_sober_compare_submodule_n110) );
  NAND3X1 U4825 ( .A(n6425), .B(n6424), .C(n6423), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[2]) );
  INVX4 U4826 ( .A(median_sobel_inst_n978), .Y(n5492) );
  CLKMX2X2 U4827 ( .A(n7646), .B(median_sobel_inst_G[24]), .S0(n5956), .Y(
        median_sobel_inst_u_sober_compare_submodule_n109) );
  NAND2X6 U4828 ( .A(n3873), .B(n4082), .Y(n6486) );
  NAND2X4 U4829 ( .A(median_sobel_inst_n764), .B(n3855), .Y(n3896) );
  NAND3X4 U4830 ( .A(n4527), .B(n4526), .C(n4525), .Y(n4524) );
  NAND2X4 U4831 ( .A(n3795), .B(n3794), .Y(n3793) );
  CLKMX2X2 U4832 ( .A(n7656), .B(median_sobel_inst_G[23]), .S0(n5956), .Y(
        median_sobel_inst_u_sober_compare_submodule_n108) );
  NAND3X1 U4833 ( .A(n7221), .B(n7220), .C(n2093), .Y(n7222) );
  OAI2BB1X1 U4834 ( .A0N(n7279), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[5]), .B0(n7249), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[5]) );
  NAND3X6 U4835 ( .A(n5294), .B(n5295), .C(n5296), .Y(
        median_sobel_inst_data_h_r[2]) );
  AND2X4 U4836 ( .A(n4915), .B(n4913), .Y(n3805) );
  XOR2X2 U4837 ( .A(n3902), .B(n7175), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N114) );
  BUFX4 U4838 ( .A(n6719), .Y(n6651) );
  NAND4X1 U4839 ( .A(n6127), .B(n6126), .C(n6125), .D(n6124), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[8]) );
  INVX12 U4840 ( .A(n4022), .Y(o_in_ready) );
  NAND2X1 U4841 ( .A(n7220), .B(n6118), .Y(n6119) );
  OR2X4 U4842 ( .A(n6167), .B(n4069), .Y(n4068) );
  INVX6 U4843 ( .A(n7184), .Y(n4231) );
  AOI21X1 U4844 ( .A0(n7199), .A1(n6843), .B0(n6842), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[10]) );
  NAND2X2 U4845 ( .A(n5334), .B(median_sobel_inst_n85), .Y(n3947) );
  OAI2BB1X1 U4846 ( .A0N(n4149), .A1N(n7619), .B0(n4147), .Y(
        median_sobel_inst_n603) );
  NAND3X1 U4847 ( .A(n7018), .B(n7017), .C(n7016), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[3]) );
  NAND2X2 U4848 ( .A(n3940), .B(n3938), .Y(n3937) );
  NAND2X1 U4849 ( .A(n6786), .B(n6785), .Y(n6788) );
  OAI2BB1X1 U4850 ( .A0N(n4149), .A1N(n7626), .B0(n4148), .Y(
        median_sobel_inst_n560) );
  NAND2X4 U4851 ( .A(n5720), .B(median_sobel_inst_n1339), .Y(n3949) );
  MXI2X1 U4852 ( .A(median_sobel_inst_n273), .B(n2002), .S0(n6467), .Y(
        median_sobel_inst_n1479) );
  NAND2X1 U4853 ( .A(median_sobel_inst_u_sober_compare_submodule_n178), .B(
        n6123), .Y(n6009) );
  OAI2BB1X1 U4854 ( .A0N(n4149), .A1N(n7623), .B0(n4146), .Y(
        median_sobel_inst_n571) );
  OAI2BB1X1 U4855 ( .A0N(median_sobel_inst_G[24]), .A1N(n4136), .B0(n4144), 
        .Y(median_sobel_inst_n500) );
  OAI2BB1X1 U4856 ( .A0N(median_sobel_inst_G[31]), .A1N(n4136), .B0(n4145), 
        .Y(median_sobel_inst_n472) );
  OAI2BB1X1 U4857 ( .A0N(median_sobel_inst_G[28]), .A1N(n4136), .B0(n4142), 
        .Y(median_sobel_inst_n484) );
  XNOR2X1 U4858 ( .A(n6551), .B(n3776), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[3]) );
  NAND3X1 U4859 ( .A(n6975), .B(n6974), .C(n6973), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[1]) );
  NAND2X6 U4860 ( .A(n6595), .B(n6596), .Y(n6728) );
  OAI2BB1X1 U4861 ( .A0N(median_sobel_inst_G[27]), .A1N(n4136), .B0(n4143), 
        .Y(median_sobel_inst_n488) );
  NOR2X1 U4862 ( .A(n6259), .B(n7098), .Y(conv_inst_data_abc_w[1]) );
  NAND2X1 U4863 ( .A(n7154), .B(n7153), .Y(N844) );
  NAND2X1 U4864 ( .A(n7152), .B(n7153), .Y(N843) );
  NAND2X1 U4865 ( .A(n7151), .B(n7153), .Y(N842) );
  NAND2X1 U4866 ( .A(n7097), .B(n7096), .Y(n7099) );
  OAI2BB1X1 U4867 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7241), .B0(n7240), .Y(median_sobel_inst_u_sobel_gradient_submodule_N100) );
  NAND3X1 U4868 ( .A(n6945), .B(n6944), .C(n6943), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[4]) );
  NAND2X1 U4869 ( .A(n7279), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .Y(n6428) );
  NAND3X1 U4870 ( .A(n6948), .B(n6947), .C(n6946), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[5]) );
  NAND2X1 U4871 ( .A(n7279), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[2]), .Y(n6425) );
  NAND2X6 U4872 ( .A(n6739), .B(n5805), .Y(n3873) );
  XOR2X1 U4873 ( .A(n6244), .B(n6178), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[2]) );
  NAND2X4 U4874 ( .A(n6461), .B(n6462), .Y(n3876) );
  NAND2X1 U4875 ( .A(median_sobel_inst_n310), .B(n5387), .Y(n4668) );
  NOR2X1 U4876 ( .A(n6258), .B(n6346), .Y(n6259) );
  NAND2X1 U4877 ( .A(n5748), .B(n5746), .Y(n5752) );
  INVX1 U4878 ( .A(n5643), .Y(n5645) );
  OAI2BB1X1 U4879 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7295), .B0(n7294), .Y(median_sobel_inst_u_sobel_gradient_submodule_N1010) );
  OAI2BB1X1 U4880 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7245), .B0(n7244), .Y(median_sobel_inst_u_sobel_gradient_submodule_N99) );
  XOR2X1 U4881 ( .A(n6072), .B(n6151), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[1]) );
  CLKMX2X2 U4882 ( .A(median_sobel_inst_angle[4]), .B(
        median_sobel_inst_angle_w[0]), .S0(n6087), .Y(median_sobel_inst_n516)
         );
  CLKMX2X2 U4883 ( .A(median_sobel_inst_angle[5]), .B(
        median_sobel_inst_angle_w[1]), .S0(n6087), .Y(median_sobel_inst_n512)
         );
  CLKMX2X2 U4884 ( .A(median_sobel_inst_n89), .B(n7718), .S0(n6087), .Y(
        median_sobel_inst_n627) );
  OR2X4 U4885 ( .A(n5874), .B(n5873), .Y(n3652) );
  NAND2X2 U4886 ( .A(n4078), .B(n4077), .Y(n4076) );
  XOR2X1 U4887 ( .A(n7243), .B(n7242), .Y(n7245) );
  CLKMX2X2 U4888 ( .A(median_sobel_inst_n123), .B(n3610), .S0(n6087), .Y(
        median_sobel_inst_n534) );
  CLKMX2X2 U4889 ( .A(median_sobel_inst_n76), .B(n7523), .S0(n6087), .Y(
        median_sobel_inst_n580) );
  CLKMX2X2 U4890 ( .A(median_sobel_inst_n727), .B(n7704), .S0(n6087), .Y(
        median_sobel_inst_n526) );
  CLKMX2X2 U4891 ( .A(median_sobel_inst_n985), .B(n7705), .S0(n6087), .Y(
        median_sobel_inst_n524) );
  NAND2X1 U4892 ( .A(n4752), .B(n4758), .Y(n4753) );
  CLKMX2X2 U4893 ( .A(median_sobel_inst_n963), .B(n7729), .S0(n6087), .Y(
        median_sobel_inst_n618) );
  NOR2X1 U4894 ( .A(n6260), .B(n7630), .Y(n6216) );
  NAND2X4 U4895 ( .A(n6260), .B(n6261), .Y(n6264) );
  NAND2X1 U4896 ( .A(n6898), .B(n6896), .Y(n6221) );
  NAND2X1 U4897 ( .A(n6703), .B(n6702), .Y(n6704) );
  OAI2BB1X1 U4898 ( .A0N(n6228), .A1N(n6230), .B0(n6229), .Y(n6227) );
  XOR2X1 U4899 ( .A(n6439), .B(n6438), .Y(n6440) );
  INVX3 U4900 ( .A(n5055), .Y(n3607) );
  CLKMX2X2 U4901 ( .A(median_sobel_inst_n756), .B(n7721), .S0(n6087), .Y(
        median_sobel_inst_n548) );
  OAI2BB1X1 U4902 ( .A0N(n6566), .A1N(n6186), .B0(n6562), .Y(n6189) );
  OAI2BB1X1 U4903 ( .A0N(n6777), .A1N(n6776), .B0(n6775), .Y(n6782) );
  CLKMX2X2 U4904 ( .A(median_sobel_inst_n750), .B(n7635), .S0(n6087), .Y(
        median_sobel_inst_n583) );
  NAND2X4 U4905 ( .A(n4463), .B(n3654), .Y(n4861) );
  AOI21X1 U4906 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[4]), .B0(
        conv_result_w[4]), .Y(n7048) );
  AOI21X1 U4907 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[2]), .B0(
        conv_result_w[2]), .Y(n7072) );
  CLKMX2X2 U4908 ( .A(n5898), .B(n5897), .S0(conv_inst_n25), .Y(n7789) );
  AND2X2 U4909 ( .A(n6038), .B(n4450), .Y(conv_inst_N2210) );
  NOR2X1 U4910 ( .A(n6260), .B(
        median_sobel_inst_u_median_filter_submodule_n891), .Y(n6214) );
  CLKMX2X2 U4911 ( .A(median_sobel_inst_n121), .B(n7724), .S0(n6087), .Y(
        median_sobel_inst_n566) );
  CLKMX2X2 U4912 ( .A(median_sobel_inst_n316), .B(n7728), .S0(n6087), .Y(
        median_sobel_inst_n585) );
  INVX1 U4913 ( .A(n5447), .Y(n5449) );
  NAND2X2 U4914 ( .A(n5440), .B(conv_inst_conv_3_r[11]), .Y(n5435) );
  CLKMX2X2 U4915 ( .A(median_sobel_inst_n147), .B(n7716), .S0(n6087), .Y(
        median_sobel_inst_n593) );
  CLKMX2X2 U4916 ( .A(median_sobel_inst_n1339), .B(n7714), .S0(n6087), .Y(
        median_sobel_inst_n619) );
  CLKMX2X2 U4917 ( .A(median_sobel_inst_n1365), .B(n7719), .S0(n6087), .Y(
        median_sobel_inst_n644) );
  CLKMX2X2 U4918 ( .A(median_sobel_inst_n1370), .B(n7709), .S0(n6087), .Y(
        median_sobel_inst_n634) );
  CLKMX2X2 U4919 ( .A(median_sobel_inst_n1375), .B(n7710), .S0(n6087), .Y(
        median_sobel_inst_n640) );
  CLKMX2X2 U4920 ( .A(median_sobel_inst_n1369), .B(n7713), .S0(n6087), .Y(
        median_sobel_inst_n642) );
  CLKMX2X2 U4921 ( .A(median_sobel_inst_n1367), .B(n7712), .S0(n6087), .Y(
        median_sobel_inst_n643) );
  NOR2X1 U4922 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n927), .Y(n6770) );
  CLKMX2X2 U4923 ( .A(median_sobel_inst_n80), .B(n7725), .S0(n6087), .Y(
        median_sobel_inst_n588) );
  CLKMX2X2 U4924 ( .A(median_sobel_inst_n993), .B(n7707), .S0(n6087), .Y(
        median_sobel_inst_n586) );
  NOR2X1 U4925 ( .A(n7216), .B(n7690), .Y(n6120) );
  NOR2X1 U4926 ( .A(n6112), .B(n6111), .Y(n6113) );
  NOR2X1 U4927 ( .A(n5604), .B(n5605), .Y(n5607) );
  NAND2X1 U4928 ( .A(n6097), .B(n6096), .Y(n6099) );
  NAND2BX2 U4929 ( .AN(n7191), .B(n7189), .Y(n3879) );
  NAND2X1 U4930 ( .A(n6854), .B(n6853), .Y(n6855) );
  AOI21X1 U4931 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[1]), .B0(
        conv_result_w[1]), .Y(n7083) );
  NOR2X1 U4932 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n877), .Y(n6784) );
  AOI21X1 U4933 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[7]), .B0(
        conv_result_w[7]), .Y(n7042) );
  CLKMX2X2 U4934 ( .A(median_sobel_inst_n1043), .B(n7726), .S0(n6087), .Y(
        median_sobel_inst_n589) );
  INVX1 U4935 ( .A(n5623), .Y(n5376) );
  AOI21X1 U4936 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[5]), .B0(
        conv_result_w[5]), .Y(n7060) );
  AOI21X1 U4937 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[6]), .B0(
        conv_result_w[6]), .Y(n7066) );
  NAND2X1 U4938 ( .A(n6484), .B(n6483), .Y(n6485) );
  NAND2X1 U4939 ( .A(n7481), .B(n7480), .Y(n7482) );
  AND2X4 U4940 ( .A(n5176), .B(n5177), .Y(n4360) );
  NAND2X1 U4941 ( .A(n6087), .B(n4291), .Y(n4420) );
  NAND2X6 U4942 ( .A(n6233), .B(n3796), .Y(n6462) );
  INVX3 U4943 ( .A(n5001), .Y(n4245) );
  CLKMX2X2 U4944 ( .A(median_sobel_inst_n311), .B(n7527), .S0(n6087), .Y(
        median_sobel_inst_n590) );
  NAND2X1 U4945 ( .A(n6071), .B(n6150), .Y(n6072) );
  NAND2X1 U4946 ( .A(n6230), .B(n6229), .Y(n6231) );
  INVX1 U4947 ( .A(n6755), .Y(n6059) );
  NAND2X1 U4948 ( .A(n6641), .B(n6639), .Y(n6518) );
  INVX1 U4949 ( .A(n6289), .Y(n6290) );
  INVX1 U4950 ( .A(n7351), .Y(n7337) );
  NAND2X1 U4951 ( .A(n6495), .B(n7178), .Y(n6496) );
  NAND3X2 U4952 ( .A(n4649), .B(n3679), .C(n3678), .Y(n4353) );
  NOR2X1 U4953 ( .A(n5831), .B(n5830), .Y(n5832) );
  NAND2X1 U4954 ( .A(n6079), .B(n6078), .Y(n6081) );
  INVX1 U4955 ( .A(n6148), .Y(n6149) );
  NAND2X1 U4956 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n283), .Y(n6003) );
  NAND2X1 U4957 ( .A(n6234), .B(n6233), .Y(n6236) );
  NAND2X1 U4958 ( .A(n6776), .B(n6775), .Y(n6591) );
  NAND2X1 U4959 ( .A(n7373), .B(n7372), .Y(n7374) );
  NAND2X1 U4960 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n287), .Y(n5988) );
  NAND2X1 U4961 ( .A(n6910), .B(n6970), .Y(n6660) );
  OAI2BB1X1 U4962 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7283), .B0(n7282), .Y(median_sobel_inst_u_sobel_gradient_submodule_N98) );
  NAND2X1 U4963 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n275), .Y(n5994) );
  NAND2X1 U4964 ( .A(n6093), .B(n6588), .Y(n6094) );
  NAND2X1 U4965 ( .A(n6405), .B(n6404), .Y(n6406) );
  NAND2X1 U4966 ( .A(n6165), .B(n6350), .Y(n6166) );
  NOR2X1 U4967 ( .A(n5589), .B(n5588), .Y(n5590) );
  NAND2X1 U4968 ( .A(n6981), .B(n6980), .Y(n6982) );
  NAND2X1 U4969 ( .A(n6318), .B(n6317), .Y(n6320) );
  NAND2X1 U4970 ( .A(n5265), .B(n5264), .Y(n5266) );
  NAND2X1 U4971 ( .A(n6741), .B(n6740), .Y(n6742) );
  OAI2BB1X1 U4972 ( .A0N(n6269), .A1N(n6267), .B0(n6268), .Y(n6256) );
  NOR2X1 U4973 ( .A(n5786), .B(n5785), .Y(n5787) );
  NAND2X1 U4974 ( .A(n6433), .B(n6432), .Y(n6434) );
  INVX1 U4975 ( .A(n6308), .Y(n6309) );
  INVX3 U4976 ( .A(n6228), .Y(n4061) );
  NAND2X1 U4977 ( .A(n6575), .B(n6574), .Y(n6576) );
  NOR2X1 U4978 ( .A(n7139), .B(n7138), .Y(N762) );
  NAND2X1 U4979 ( .A(n6713), .B(n6826), .Y(n6714) );
  NAND2X1 U4980 ( .A(n6186), .B(n6562), .Y(n6153) );
  NAND2X1 U4981 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n291), .Y(n6013) );
  INVX1 U4982 ( .A(n6852), .Y(n6854) );
  NAND2X1 U4983 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n279), .Y(n5984) );
  AOI22X1 U4984 ( .A0(n6933), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .B0(n6174), 
        .B1(n7673), .Y(n6175) );
  NOR2X4 U4985 ( .A(n5452), .B(n3663), .Y(n5454) );
  NAND2X1 U4986 ( .A(n5723), .B(n4298), .Y(n5722) );
  INVX1 U4987 ( .A(n6220), .Y(n6898) );
  NAND2X4 U4988 ( .A(n5204), .B(
        median_sobel_inst_u_median_filter_submodule_n273), .Y(n5206) );
  AOI21X1 U4989 ( .A0(n7302), .A1(n7301), .B0(n7300), .Y(n7303) );
  NAND2X1 U4990 ( .A(n6134), .B(n6133), .Y(n6135) );
  NAND2X1 U4991 ( .A(n6182), .B(n6181), .Y(n6183) );
  NAND2X1 U4992 ( .A(n6876), .B(n6521), .Y(n6507) );
  NAND2X1 U4993 ( .A(n5700), .B(n5699), .Y(n5701) );
  INVX1 U4994 ( .A(n6292), .Y(n6293) );
  NAND2X1 U4995 ( .A(n7198), .B(n7196), .Y(n6834) );
  NAND2X1 U4996 ( .A(n6648), .B(n6647), .Y(n6649) );
  NAND2X1 U4997 ( .A(n6284), .B(n6283), .Y(n6286) );
  AND2X2 U4998 ( .A(n5967), .B(n6085), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N16) );
  INVX1 U4999 ( .A(n6152), .Y(n6071) );
  OAI2BB1X1 U5000 ( .A0N(n7358), .A1N(n7357), .B0(n7356), .Y(n7363) );
  NAND2X1 U5001 ( .A(n7361), .B(n7360), .Y(n7362) );
  NAND2X1 U5002 ( .A(n5286), .B(n5285), .Y(n5287) );
  NAND2X1 U5003 ( .A(n6074), .B(n6390), .Y(n6075) );
  NAND2X1 U5004 ( .A(n6354), .B(n6353), .Y(n6355) );
  NAND2X1 U5005 ( .A(n6312), .B(n6311), .Y(n6314) );
  NAND2X1 U5006 ( .A(n6028), .B(n6027), .Y(n6030) );
  NAND2X1 U5007 ( .A(n7202), .B(n7201), .Y(n7203) );
  NAND2X1 U5008 ( .A(n6699), .B(n6698), .Y(n6700) );
  NAND2X1 U5009 ( .A(n6738), .B(n6736), .Y(n6169) );
  NAND2X1 U5010 ( .A(n6791), .B(n6789), .Y(n5594) );
  NAND2X1 U5011 ( .A(n6794), .B(n6793), .Y(n6795) );
  NAND2X1 U5012 ( .A(n3874), .B(n6886), .Y(n6887) );
  NAND2X1 U5013 ( .A(n6061), .B(n7329), .Y(n6062) );
  INVX1 U5014 ( .A(n6095), .Y(n6097) );
  INVX3 U5015 ( .A(n4300), .Y(n4301) );
  INVX1 U5016 ( .A(n6413), .Y(n4751) );
  INVX2 U5017 ( .A(n5451), .Y(n5899) );
  INVX1 U5018 ( .A(n6223), .Y(n6230) );
  NAND2X1 U5019 ( .A(n5737), .B(n5736), .Y(n5738) );
  NAND2X1 U5020 ( .A(n5619), .B(n5618), .Y(n5620) );
  NAND2X1 U5021 ( .A(n6710), .B(n6825), .Y(n6711) );
  NAND2X1 U5022 ( .A(n6478), .B(n6477), .Y(n6479) );
  NAND2X1 U5023 ( .A(n5599), .B(n5598), .Y(n5600) );
  NAND2X1 U5024 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n297), .Y(n6000) );
  NAND2X1 U5025 ( .A(n6139), .B(n6200), .Y(n6140) );
  NOR2X1 U5026 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n892), .Y(n6769) );
  AND2X2 U5027 ( .A(n6043), .B(n6589), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1070) );
  BUFX6 U5028 ( .A(n5983), .Y(n6606) );
  INVX1 U5029 ( .A(n7182), .Y(n6400) );
  NAND2X1 U5030 ( .A(n4545), .B(
        median_sobel_inst_u_sober_compare_submodule_n294), .Y(n6006) );
  AOI22X1 U5031 ( .A0(n6933), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .B0(n6174), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .Y(n6142)
         );
  NAND2X1 U5032 ( .A(n7302), .B(n7299), .Y(n7106) );
  NOR2X1 U5033 ( .A(n5829), .B(
        median_sobel_inst_u_median_filter_submodule_n883), .Y(n5830) );
  NOR2X1 U5034 ( .A(n6756), .B(
        median_sobel_inst_u_median_filter_submodule_n919), .Y(n5831) );
  AOI21X1 U5035 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n545), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .B0(n5541), .Y(
        n5542) );
  INVX1 U5036 ( .A(n6168), .Y(n6738) );
  INVX1 U5037 ( .A(n7218), .Y(n7215) );
  NOR2X1 U5038 ( .A(n6841), .B(n7200), .Y(n6843) );
  INVX1 U5039 ( .A(n7180), .Y(n6495) );
  NAND2X4 U5040 ( .A(n5198), .B(
        median_sobel_inst_u_median_filter_submodule_n268), .Y(n3742) );
  NAND2X1 U5041 ( .A(n5721), .B(n7590), .Y(n4781) );
  INVX1 U5042 ( .A(n6277), .Y(n6279) );
  INVX1 U5043 ( .A(n6961), .Y(n6965) );
  INVX1 U5044 ( .A(n6988), .Y(n4612) );
  INVX1 U5045 ( .A(n6560), .Y(n6186) );
  INVX1 U5046 ( .A(n6706), .Y(n6859) );
  INVX1 U5047 ( .A(n5695), .Y(n5737) );
  INVX1 U5048 ( .A(n6789), .Y(n6790) );
  NAND2X1 U5049 ( .A(n6269), .B(n6268), .Y(n6270) );
  INVX1 U5050 ( .A(n6360), .Y(n6362) );
  NAND2X1 U5051 ( .A(n6375), .B(n6376), .Y(n6266) );
  INVX1 U5052 ( .A(n6590), .Y(n6093) );
  INVX1 U5053 ( .A(n6656), .Y(n6776) );
  INVX1 U5054 ( .A(n6646), .Y(n6648) );
  INVX1 U5055 ( .A(n6841), .Y(n7198) );
  INVX1 U5056 ( .A(n6580), .Y(n6582) );
  INVX1 U5057 ( .A(n4756), .Y(n6414) );
  INVX1 U5058 ( .A(n6456), .Y(n6337) );
  INVX1 U5059 ( .A(n6435), .Y(n6437) );
  AND2X2 U5060 ( .A(n6032), .B(n6235), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[0]) );
  INVX1 U5061 ( .A(n6375), .Y(n6377) );
  NAND2X1 U5062 ( .A(n6380), .B(n6379), .Y(n6381) );
  INVX1 U5063 ( .A(n6450), .Y(n6452) );
  AND2X2 U5064 ( .A(n6031), .B(n7330), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[0]) );
  NOR2X1 U5065 ( .A(n7156), .B(
        median_sobel_inst_u_median_filter_submodule_n906), .Y(n7157) );
  NOR2X1 U5066 ( .A(n7155), .B(
        median_sobel_inst_u_median_filter_submodule_n878), .Y(n7158) );
  NAND2X1 U5067 ( .A(n6900), .B(n6899), .Y(n6901) );
  INVX1 U5068 ( .A(n5667), .Y(n5671) );
  INVX1 U5069 ( .A(n6351), .Y(n6165) );
  INVX1 U5070 ( .A(n4903), .Y(n5733) );
  NAND2X1 U5071 ( .A(n6338), .B(n6457), .Y(n6339) );
  NAND2X1 U5072 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[0]), .Y(
        n4557) );
  INVX1 U5073 ( .A(n6976), .Y(n6977) );
  NOR2X1 U5074 ( .A(n7155), .B(
        median_sobel_inst_u_median_filter_submodule_n1501), .Y(n5786) );
  INVX1 U5075 ( .A(n6743), .Y(n6744) );
  NOR2X1 U5076 ( .A(n7156), .B(
        median_sobel_inst_u_median_filter_submodule_n905), .Y(n5785) );
  INVX3 U5077 ( .A(n4323), .Y(n4949) );
  INVX1 U5078 ( .A(n6499), .Y(n6372) );
  NAND2X1 U5079 ( .A(n6745), .B(n6743), .Y(n6240) );
  INVX3 U5080 ( .A(n5690), .Y(n3965) );
  AND2X2 U5081 ( .A(n6035), .B(n6091), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N36) );
  INVX1 U5082 ( .A(n7359), .Y(n7361) );
  NAND2X1 U5083 ( .A(n7357), .B(n7356), .Y(n7353) );
  INVX1 U5084 ( .A(n6892), .Y(n7006) );
  INVX1 U5085 ( .A(n7200), .Y(n7202) );
  INVX1 U5086 ( .A(n6500), .Y(n6502) );
  INVX1 U5087 ( .A(n5141), .Y(n5108) );
  NAND2X1 U5088 ( .A(n6225), .B(n6224), .Y(n6226) );
  INVX1 U5089 ( .A(n6857), .Y(n6858) );
  INVX1 U5090 ( .A(n5284), .Y(n5286) );
  INVX1 U5091 ( .A(n6827), .Y(n6710) );
  INVX1 U5092 ( .A(n5796), .Y(n5905) );
  INVX6 U5093 ( .A(n5923), .Y(n6330) );
  INVX1 U5094 ( .A(n6325), .Y(n6327) );
  NOR2X1 U5095 ( .A(n6756), .B(
        median_sobel_inst_u_median_filter_submodule_n892), .Y(n5589) );
  NOR2X1 U5096 ( .A(n5829), .B(
        median_sobel_inst_u_median_filter_submodule_n927), .Y(n5588) );
  INVX3 U5097 ( .A(n5558), .Y(n5555) );
  NOR2X2 U5098 ( .A(n4562), .B(n5916), .Y(n4563) );
  NOR2X1 U5099 ( .A(n6988), .B(n7583), .Y(n7108) );
  INVX1 U5100 ( .A(n5615), .Y(n5836) );
  CLKINVX1 U5101 ( .A(n4839), .Y(n3720) );
  INVX1 U5102 ( .A(n5835), .Y(n5616) );
  INVX1 U5103 ( .A(n6736), .Y(n6737) );
  NAND2X1 U5104 ( .A(n6246), .B(n6245), .Y(n6247) );
  INVX1 U5105 ( .A(n5736), .Y(n5696) );
  AND2X2 U5106 ( .A(median_sobel_inst_n1100), .B(median_sobel_inst_n1086), .Y(
        n4784) );
  NAND2X4 U5107 ( .A(input_data_ready_r[14]), .B(input_data_ready_r[30]), .Y(
        n4888) );
  INVX1 U5108 ( .A(median_sobel_inst_u_median_filter_submodule_net99809), .Y(
        n5207) );
  NAND2X1 U5109 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n423), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7254) );
  NAND2BX2 U5110 ( .AN(median_sobel_inst_u_median_filter_submodule_n271), .B(
        median_sobel_inst_u_median_filter_submodule_n971), .Y(n3657) );
  INVX1 U5111 ( .A(median_sobel_inst_u_median_filter_submodule_n209), .Y(n4933) );
  INVX1 U5112 ( .A(median_sobel_inst_u_median_filter_submodule_n277), .Y(n4255) );
  NAND2X1 U5113 ( .A(median_sobel_inst_u_median_filter_submodule_n207), .B(
        median_sobel_inst_u_median_filter_submodule_n117), .Y(n4816) );
  INVX1 U5114 ( .A(median_sobel_inst_n76), .Y(n3810) );
  NAND2X1 U5115 ( .A(median_sobel_inst_u_median_filter_submodule_n1477), .B(
        median_sobel_inst_u_median_filter_submodule_n222), .Y(n4839) );
  INVX3 U5116 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n421), .Y(
        n7480) );
  NAND2X1 U5117 ( .A(median_sobel_inst_u_median_filter_submodule_n900), .B(
        median_sobel_inst_u_median_filter_submodule_n207), .Y(n4815) );
  INVX1 U5118 ( .A(median_sobel_inst_u_median_filter_submodule_n279), .Y(n5273) );
  NOR2X1 U5119 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n424), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .Y(n6661) );
  INVXL U5120 ( .A(median_sobel_inst_u_median_filter_submodule_net96458), .Y(
        n5268) );
  INVX1 U5121 ( .A(n7520), .Y(n4141) );
  AND2X1 U5122 ( .A(conv_inst_n25), .B(conv_inst_n42), .Y(n5893) );
  NAND2X1 U5123 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n412), .Y(n7193) );
  INVX1 U5124 ( .A(median_sobel_inst_n443), .Y(n3939) );
  CLKINVX1 U5125 ( .A(median_sobel_inst_u_median_filter_submodule_n222), .Y(
        n4832) );
  NAND2X1 U5126 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n434), .Y(n6245) );
  INVX1 U5127 ( .A(conv_inst_n184), .Y(n5458) );
  INVX1 U5128 ( .A(median_sobel_inst_u_median_filter_submodule_n1196), .Y(
        n5274) );
  NOR2X4 U5129 ( .A(n7538), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0]), .Y(n6151) );
  OR2X4 U5130 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[1]), .B(
        n7536), .Y(n3886) );
  INVX1 U5131 ( .A(median_sobel_inst_n1026), .Y(n4947) );
  NAND2X1 U5132 ( .A(n7551), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n6976) );
  INVX1 U5133 ( .A(median_sobel_inst_u_median_filter_submodule_n274), .Y(n5713) );
  NAND2X1 U5134 ( .A(n7552), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[8]), .Y(n7196) );
  INVX1 U5135 ( .A(cnt[3]), .Y(n4122) );
  INVX1 U5136 ( .A(median_sobel_inst_u_median_filter_submodule_n128), .Y(n3682) );
  INVX1 U5137 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net96945), .Y(
        n5681) );
  INVX1 U5138 ( .A(median_sobel_inst_u_median_filter_submodule_net96795), .Y(
        n4674) );
  NAND2X2 U5139 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[7]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[11]), .Y(n6574) );
  NAND2X4 U5140 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[4]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc1_r[0]), .Y(n6041) );
  NOR2X1 U5141 ( .A(median_sobel_inst_u_sober_compare_submodule_n11), .B(
        median_sobel_inst_u_sober_compare_submodule_n17), .Y(n6598) );
  NAND2X1 U5142 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net96945), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[9]), .Y(n7299)
         );
  CLKINVX1 U5143 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .Y(
        n4236) );
  NAND2X1 U5144 ( .A(n7557), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n6980) );
  INVX3 U5145 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n425), .Y(
        n7242) );
  NAND2X1 U5146 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n409), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .Y(n6799) );
  NAND2X1 U5147 ( .A(n7531), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n7201) );
  NAND2X1 U5148 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n384), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7240) );
  NOR2X4 U5149 ( .A(pre_state[6]), .B(pre_state[4]), .Y(n3613) );
  NAND2X1 U5150 ( .A(i_op_valid), .B(i_op_mode[3]), .Y(n5826) );
  NAND2X1 U5151 ( .A(i_op_valid), .B(i_op_mode[2]), .Y(n5888) );
  NAND2X1 U5152 ( .A(i_op_valid), .B(i_op_mode[0]), .Y(n5827) );
  AND2X4 U5153 ( .A(n5585), .B(n5923), .Y(conv_inst_N2850) );
  AOI21X2 U5154 ( .A0(n6860), .A1(n6709), .B0(n6708), .Y(n6712) );
  INVX3 U5155 ( .A(n7246), .Y(n7276) );
  OAI2BB1X1 U5156 ( .A0N(n7279), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[0]), .B0(n7278), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[0]) );
  INVX12 U5157 ( .A(n5412), .Y(n6471) );
  NAND2X8 U5158 ( .A(n7787), .B(x_origin_r[1]), .Y(n7472) );
  NAND2BX1 U5159 ( .AN(median_sobel_inst_u_median_filter_submodule_n231), .B(
        median_sobel_inst_u_median_filter_submodule_net97853), .Y(n4686) );
  NOR2X4 U5160 ( .A(n7186), .B(n6016), .Y(n6018) );
  INVX1 U5161 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n417), .Y(
        n4044) );
  NAND2X1 U5162 ( .A(median_sobel_inst_u_median_filter_submodule_n158), .B(
        median_sobel_inst_u_median_filter_submodule_net94186), .Y(n4695) );
  INVX3 U5163 ( .A(n4749), .Y(n4038) );
  NAND4X4 U5164 ( .A(n3971), .B(n4528), .C(n4505), .D(n4529), .Y(n3970) );
  NAND2BX4 U5165 ( .AN(n3604), .B(n4531), .Y(n3974) );
  NAND2X4 U5166 ( .A(n5493), .B(median_sobel_inst_data_e_r[0]), .Y(n3604) );
  INVX8 U5167 ( .A(median_sobel_inst_n1144), .Y(n3751) );
  NAND2X1 U5168 ( .A(conv_inst_conv_2_r[16]), .B(n7141), .Y(n5086) );
  NAND2X6 U5169 ( .A(n4084), .B(n5179), .Y(n5212) );
  XOR2X2 U5170 ( .A(n7112), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[8]) );
  BUFX16 U5171 ( .A(n4340), .Y(n3664) );
  NAND2X6 U5172 ( .A(n7391), .B(n7392), .Y(n4263) );
  INVX4 U5173 ( .A(n5949), .Y(n5418) );
  INVX3 U5174 ( .A(n3558), .Y(n4441) );
  INVX4 U5175 ( .A(n4951), .Y(n4953) );
  NOR4X1 U5176 ( .A(n6252), .B(n452), .C(n7512), .D(n453), .Y(N896) );
  NAND3X1 U5177 ( .A(n6249), .B(cnt[4]), .C(cnt[3]), .Y(n6251) );
  NOR2X6 U5178 ( .A(conv_inst_conv_3_r[5]), .B(conv_inst_data_abc_3_r[5]), .Y(
        n5698) );
  INVX1 U5179 ( .A(n6322), .Y(n4598) );
  AOI21X4 U5180 ( .A0(n6565), .A1(n6566), .B0(n6564), .Y(n6833) );
  OAI21X4 U5181 ( .A0(n6152), .A1(n6151), .B0(n6150), .Y(n6566) );
  XNOR2X2 U5182 ( .A(n5438), .B(conv_inst_conv_3_r[12]), .Y(n5439) );
  OAI2BB2X4 U5183 ( .B0(n5927), .B1(median_sobel_inst_n705), .A0N(n5926), 
        .A1N(median_sobel_inst_n436), .Y(n5931) );
  AOI21X4 U5184 ( .A0(n5642), .A1(n5143), .B0(n5142), .Y(n5146) );
  AOI21X4 U5185 ( .A0(n7199), .A1(n7198), .B0(n7197), .Y(n7204) );
  NAND2X4 U5186 ( .A(n4327), .B(n5543), .Y(n4440) );
  OAI21X2 U5187 ( .A0(n5671), .A1(n5670), .B0(n5669), .Y(n5677) );
  NAND2X1 U5188 ( .A(n5660), .B(n4541), .Y(n5659) );
  NAND2X4 U5189 ( .A(n5922), .B(n5921), .Y(n5924) );
  NOR2X4 U5190 ( .A(n6383), .B(n6132), .Y(n4560) );
  NAND2X4 U5191 ( .A(conv_inst_conv_2_r[8]), .B(conv_inst_data_bcd_2_r[8]), 
        .Y(n6332) );
  NOR2BX4 U5192 ( .AN(n5457), .B(n6797), .Y(conv_inst_N280) );
  OAI21X1 U5193 ( .A0(n5535), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(n5536) );
  INVX3 U5194 ( .A(n6269), .Y(n4596) );
  NAND4X1 U5195 ( .A(n6633), .B(n6632), .C(n6631), .D(n6630), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[2]) );
  NAND4X1 U5196 ( .A(n6626), .B(n6625), .C(n6624), .D(n6623), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[4]) );
  NOR2X1 U5197 ( .A(median_sobel_inst_u_sober_compare_submodule_n340), .B(
        median_sobel_inst_u_sober_compare_submodule_n329), .Y(n6614) );
  AOI21X2 U5198 ( .A0(n6335), .A1(n5423), .B0(n5422), .Y(n5424) );
  NAND2X2 U5199 ( .A(n4379), .B(
        median_sobel_inst_u_median_filter_submodule_n156), .Y(n4378) );
  NAND2X8 U5200 ( .A(n3718), .B(n3721), .Y(n4379) );
  OR2X4 U5201 ( .A(n4222), .B(n3607), .Y(n4221) );
  BUFX12 U5202 ( .A(n5156), .Y(n5383) );
  INVX16 U5203 ( .A(n4614), .Y(n5156) );
  AOI21X1 U5204 ( .A0(n6642), .A1(n6641), .B0(n6640), .Y(n6643) );
  NAND2X2 U5205 ( .A(input_data_ready_r[23]), .B(input_data_ready_r[7]), .Y(
        n7401) );
  NAND2X2 U5206 ( .A(n5906), .B(n5905), .Y(n4456) );
  NOR2X4 U5207 ( .A(n6716), .B(n6717), .Y(n5639) );
  INVX3 U5208 ( .A(n7415), .Y(n7417) );
  BUFX12 U5209 ( .A(n2005), .Y(n3609) );
  INVX3 U5210 ( .A(n7378), .Y(n5354) );
  NAND2BX4 U5211 ( .AN(n6460), .B(n3876), .Y(n3875) );
  NAND3X2 U5212 ( .A(n5486), .B(n5488), .C(n5487), .Y(
        median_sobel_inst_u_median_filter_submodule_n229) );
  XNOR2X2 U5213 ( .A(n6754), .B(n6753), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[6]) );
  OAI21X4 U5214 ( .A0(median_sobel_inst_u_median_filter_submodule_n268), .A1(
        n5198), .B0(n3737), .Y(n3736) );
  OR2X6 U5215 ( .A(n6436), .B(n6180), .Y(n4897) );
  NAND2X6 U5216 ( .A(input_data_ready_r[28]), .B(input_data_ready_r[12]), .Y(
        n4874) );
  NOR2BX2 U5217 ( .AN(n4902), .B(n3646), .Y(conv_inst_N2420) );
  NAND2X4 U5218 ( .A(n7389), .B(n7388), .Y(conv_inst_data_bcd_w[9]) );
  INVX4 U5219 ( .A(n5606), .Y(n5884) );
  INVX3 U5220 ( .A(n5887), .Y(n4427) );
  XNOR2X4 U5221 ( .A(n4959), .B(n4958), .Y(n4266) );
  NOR2BX4 U5222 ( .AN(n5846), .B(n6330), .Y(conv_inst_N2450) );
  NOR2X6 U5223 ( .A(conv_inst_conv_2_r[6]), .B(conv_inst_data_bcd_2_r[6]), .Y(
        n6445) );
  NOR2BX4 U5224 ( .AN(n5316), .B(n3646), .Y(conv_inst_N2460) );
  NAND2X2 U5225 ( .A(n5906), .B(n5451), .Y(n3619) );
  NAND2X1 U5226 ( .A(n6254), .B(n3620), .Y(n6255) );
  NAND2X8 U5227 ( .A(median_sobel_inst_n1144), .B(median_sobel_inst_n1147), 
        .Y(n5591) );
  BUFX6 U5228 ( .A(n5591), .Y(n3621) );
  NOR2X1 U5229 ( .A(n6690), .B(n6685), .Y(median_sobel_inst_N110) );
  OAI21X4 U5230 ( .A0(n3625), .A1(n3624), .B0(n3623), .Y(n3622) );
  NAND2X4 U5231 ( .A(n3625), .B(conv_inst_n249), .Y(n3623) );
  AO21X4 U5232 ( .A0(n6471), .A1(n5654), .B0(n5653), .Y(n3625) );
  AOI21X4 U5233 ( .A0(n6273), .A1(n3627), .B0(n3626), .Y(n5644) );
  OAI21X4 U5234 ( .A0(n6554), .A1(n6552), .B0(n6555), .Y(n3626) );
  NAND2X2 U5235 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_conv_4_r[3]), 
        .Y(n6555) );
  NAND2X4 U5236 ( .A(conv_inst_data_bcd_4_r[2]), .B(conv_inst_conv_4_r[2]), 
        .Y(n6552) );
  NOR2X4 U5237 ( .A(n6554), .B(n6553), .Y(n3627) );
  NOR2X6 U5238 ( .A(conv_inst_data_bcd_4_r[3]), .B(conv_inst_conv_4_r[3]), .Y(
        n6554) );
  NAND2X6 U5239 ( .A(n4189), .B(n6311), .Y(n6273) );
  NAND2X8 U5240 ( .A(n3804), .B(n3628), .Y(n4605) );
  INVX12 U5241 ( .A(median_sobel_inst_n1147), .Y(n3628) );
  NAND2X2 U5242 ( .A(n5495), .B(median_sobel_inst_data_b_r[5]), .Y(n4504) );
  NAND3X8 U5243 ( .A(n3631), .B(n3629), .C(n3848), .Y(
        median_sobel_inst_data_b_r[5]) );
  AOI22X4 U5244 ( .A0(n3630), .A1(median_sobel_inst_n299), .B0(n5784), .B1(
        median_sobel_inst_n1370), .Y(n3629) );
  AND2X8 U5245 ( .A(n4186), .B(n3605), .Y(n4185) );
  OAI2BB1X4 U5246 ( .A0N(n5915), .A1N(n5444), .B0(n3636), .Y(n5445) );
  OR2X2 U5247 ( .A(n5448), .B(n5443), .Y(n3636) );
  AOI21X4 U5248 ( .A0(n4564), .A1(n5511), .B0(n4563), .Y(n5448) );
  CLKINVX3 U5249 ( .A(n3637), .Y(n3760) );
  NAND2X2 U5250 ( .A(n4204), .B(n3637), .Y(n4203) );
  AND2X8 U5251 ( .A(next_state_3_), .B(n5664), .Y(n4387) );
  NAND3X8 U5252 ( .A(n4089), .B(n3638), .C(n4575), .Y(next_state_3_) );
  OAI21X4 U5253 ( .A0(n4091), .A1(n4572), .B0(n4369), .Y(n3638) );
  NOR2X8 U5254 ( .A(n6055), .B(n4090), .Y(n4089) );
  NAND2X2 U5255 ( .A(n5497), .B(median_sobel_inst_data_b_r[5]), .Y(n5498) );
  NAND3X4 U5256 ( .A(n4521), .B(median_sobel_inst_data_b_r[5]), .C(n3998), .Y(
        n5499) );
  OAI21X4 U5257 ( .A0(n4864), .A1(n6033), .B0(n4865), .Y(n4463) );
  NAND2X8 U5258 ( .A(input_data_ready_r[24]), .B(n6346), .Y(n6033) );
  NOR2X8 U5259 ( .A(n3639), .B(n1927), .Y(n4864) );
  OAI21X4 U5260 ( .A0(n5867), .A1(n5866), .B0(n5865), .Y(n3643) );
  XOR2X4 U5261 ( .A(n3648), .B(n5458), .Y(n3647) );
  OAI22X4 U5262 ( .A0(n4288), .A1(n5459), .B0(n3650), .B1(n3649), .Y(n3648) );
  NAND2X8 U5263 ( .A(n3675), .B(n3593), .Y(n5906) );
  NAND2X8 U5264 ( .A(n3651), .B(n5878), .Y(n6015) );
  NAND2X8 U5265 ( .A(n4049), .B(n4050), .Y(n4876) );
  NAND3X6 U5266 ( .A(n4240), .B(n3655), .C(n3654), .Y(n4050) );
  OAI21X4 U5267 ( .A0(n6033), .A1(n4864), .B0(n4865), .Y(n3655) );
  INVX3 U5268 ( .A(n4180), .Y(n4240) );
  NOR2X4 U5269 ( .A(n4180), .B(n4863), .Y(n3656) );
  NAND3X6 U5270 ( .A(n3660), .B(n3658), .C(n3657), .Y(n5211) );
  NAND3BX4 U5271 ( .AN(n4183), .B(n5202), .C(n3659), .Y(n3658) );
  OAI21X4 U5272 ( .A0(n4099), .A1(n3596), .B0(n3661), .Y(n3660) );
  NOR2BX2 U5273 ( .AN(median_sobel_inst_u_median_filter_submodule_n271), .B(
        median_sobel_inst_u_median_filter_submodule_n971), .Y(n3662) );
  CLKINVX1 U5274 ( .A(n3663), .Y(n5440) );
  NOR2X1 U5275 ( .A(n5899), .B(n3663), .Y(n3674) );
  OAI21X1 U5276 ( .A0(n5901), .A1(n3663), .B0(n5900), .Y(n5902) );
  BUFX12 U5277 ( .A(n4345), .Y(n3665) );
  AOI2BB2X4 U5278 ( .B0(median_sobel_inst_u_median_filter_submodule_net84882), 
        .B1(n3665), .A0N(n3664), .A1N(n4674), .Y(n4675) );
  XOR2X4 U5279 ( .A(n3666), .B(n3668), .Y(n4340) );
  OAI21X4 U5280 ( .A0(n4661), .A1(n4660), .B0(n3667), .Y(n3666) );
  XOR2X4 U5281 ( .A(n3669), .B(n3668), .Y(n4345) );
  NAND2X8 U5282 ( .A(n4342), .B(n4341), .Y(n3668) );
  AOI2BB2X4 U5283 ( .B0(n7566), .B1(n4260), .A0N(n4648), .A1N(n4647), .Y(n3669) );
  OR2X2 U5284 ( .A(median_sobel_inst_u_median_filter_submodule_n1196), .B(
        median_sobel_inst_u_median_filter_submodule_n279), .Y(n4649) );
  NAND2X2 U5285 ( .A(n4650), .B(
        median_sobel_inst_u_median_filter_submodule_n1193), .Y(n3671) );
  XOR2X4 U5286 ( .A(n3672), .B(conv_inst_conv_3_r[11]), .Y(n5903) );
  NAND2BX4 U5287 ( .AN(n5902), .B(n3673), .Y(n3672) );
  OR2X8 U5288 ( .A(n5433), .B(n5432), .Y(n3675) );
  OAI21X4 U5289 ( .A0(n6239), .A1(n3677), .B0(n6238), .Y(n6368) );
  NAND2BX1 U5290 ( .AN(median_sobel_inst_u_median_filter_submodule_net97710), 
        .B(median_sobel_inst_u_median_filter_submodule_net97547), .Y(n3678) );
  NAND2BX2 U5291 ( .AN(median_sobel_inst_u_median_filter_submodule_n1456), .B(
        n4650), .Y(n3679) );
  NAND2X2 U5292 ( .A(median_sobel_inst_u_median_filter_submodule_n279), .B(
        median_sobel_inst_u_median_filter_submodule_n1196), .Y(n4650) );
  OAI21X2 U5293 ( .A0(n5429), .A1(n6326), .B0(n5428), .Y(n5430) );
  NAND2X2 U5294 ( .A(conv_inst_data_abc_3_r[7]), .B(conv_inst_conv_3_r[7]), 
        .Y(n5428) );
  NAND2X2 U5295 ( .A(conv_inst_conv_3_r[6]), .B(conv_inst_data_abc_3_r[6]), 
        .Y(n6326) );
  NOR2X6 U5296 ( .A(conv_inst_data_abc_3_r[7]), .B(conv_inst_conv_3_r[7]), .Y(
        n5429) );
  XNOR2X2 U5297 ( .A(n3680), .B(
        median_sobel_inst_u_median_filter_submodule_n1500), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N330) );
  OAI2BB1X4 U5298 ( .A0N(n7006), .A1N(n7007), .B0(n7005), .Y(n3680) );
  NAND2BX4 U5299 ( .AN(n6889), .B(n3681), .Y(n7007) );
  NAND2BX4 U5300 ( .AN(n6890), .B(n6746), .Y(n3681) );
  NAND2BX2 U5301 ( .AN(median_sobel_inst_u_median_filter_submodule_net47872), 
        .B(n4826), .Y(n3729) );
  NOR2X4 U5302 ( .A(n4974), .B(n4323), .Y(n7398) );
  NOR2X8 U5303 ( .A(input_data_ready_r[4]), .B(input_data_ready_r[20]), .Y(
        n4323) );
  OAI21X4 U5304 ( .A0(n3683), .A1(n4951), .B0(n4952), .Y(n3885) );
  AND2X8 U5305 ( .A(n2111), .B(n2073), .Y(n4951) );
  AOI21X4 U5306 ( .A0(n3685), .A1(n4957), .B0(n3684), .Y(n3683) );
  INVX3 U5307 ( .A(n4956), .Y(n3684) );
  OAI21X4 U5308 ( .A0(n6037), .A1(n4960), .B0(n4961), .Y(n3685) );
  NAND2X4 U5309 ( .A(n2004), .B(n829), .Y(n4961) );
  NOR2X6 U5310 ( .A(n2004), .B(n829), .Y(n4960) );
  NAND2X8 U5311 ( .A(n4451), .B(input_data_ready_r[0]), .Y(n6037) );
  AND3X8 U5312 ( .A(n4819), .B(n4820), .C(n4818), .Y(n3686) );
  NAND3X6 U5313 ( .A(n3722), .B(n3691), .C(n3687), .Y(n3721) );
  NAND2BX1 U5314 ( .AN(n5357), .B(n3690), .Y(n3689) );
  OAI21X4 U5315 ( .A0(n5818), .A1(n5357), .B0(n3700), .Y(
        median_sobel_inst_u_median_filter_submodule_n828) );
  AOI2BB2X4 U5316 ( .B0(n3707), .B1(
        median_sobel_inst_u_median_filter_submodule_net52732), .A0N(n3698), 
        .A1N(n3701), .Y(n3700) );
  AOI21X4 U5317 ( .A0(median_sobel_inst_u_median_filter_submodule_net20525), 
        .A1(median_sobel_inst_u_median_filter_submodule_n1200), .B0(n4841), 
        .Y(n3706) );
  INVX3 U5318 ( .A(median_sobel_inst_u_median_filter_submodule_net47872), .Y(
        n4841) );
  OAI21X4 U5319 ( .A0(n4842), .A1(n5818), .B0(n3708), .Y(
        median_sobel_inst_u_median_filter_submodule_n826) );
  NOR2X4 U5320 ( .A(n3698), .B(n3682), .Y(n3710) );
  NAND3X6 U5321 ( .A(n4804), .B(n4803), .C(n3712), .Y(n4817) );
  NAND3BX4 U5322 ( .AN(n4798), .B(n3714), .C(n3713), .Y(n3712) );
  NAND2X2 U5323 ( .A(median_sobel_inst_u_median_filter_submodule_n128), .B(
        median_sobel_inst_u_median_filter_submodule_net52768), .Y(n4827) );
  NAND3BX4 U5324 ( .AN(n3720), .B(n4838), .C(n4840), .Y(n3719) );
  AOI21X4 U5325 ( .A0(n3723), .A1(
        median_sobel_inst_u_median_filter_submodule_n118), .B0(n4833), .Y(
        n3722) );
  AOI2BB2X4 U5326 ( .B0(n5815), .B1(
        median_sobel_inst_u_median_filter_submodule_n207), .A0N(n3699), .A1N(
        median_sobel_inst_u_median_filter_submodule_n900), .Y(n3725) );
  NOR2X8 U5327 ( .A(input_data_ready_r[5]), .B(input_data_ready_r[21]), .Y(
        n4974) );
  XOR2X4 U5328 ( .A(n3733), .B(n3731), .Y(n4991) );
  NOR2BX4 U5329 ( .AN(n4990), .B(n3732), .Y(n3731) );
  OAI21X4 U5330 ( .A0(n7400), .A1(n4989), .B0(n4988), .Y(n3733) );
  NAND2X8 U5331 ( .A(n1989), .B(n3609), .Y(n4957) );
  NOR2X8 U5332 ( .A(n3734), .B(n4980), .Y(n4979) );
  OAI21X2 U5333 ( .A0(n7421), .A1(n3734), .B0(n7420), .Y(n7425) );
  OAI21X1 U5334 ( .A0(n6891), .A1(n6667), .B0(n6666), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N34) );
  NOR3X1 U5335 ( .A(n6161), .B(n6160), .C(n7132), .Y(n6162) );
  OR2X4 U5336 ( .A(n6299), .B(n6298), .Y(n6304) );
  NOR2BX2 U5337 ( .AN(n6305), .B(n6330), .Y(conv_inst_N225) );
  XNOR2X2 U5338 ( .A(n7349), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[9]) );
  NAND2X2 U5339 ( .A(n7365), .B(n7345), .Y(n7347) );
  NAND2X2 U5340 ( .A(n5788), .B(n4544), .Y(n5789) );
  INVX3 U5341 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n398), .Y(
        n7336) );
  INVX3 U5342 ( .A(n7181), .Y(n4232) );
  NOR2X6 U5343 ( .A(conv_inst_conv_2_r[5]), .B(conv_inst_data_bcd_2_r[5]), .Y(
        n4905) );
  NAND2X2 U5344 ( .A(n5186), .B(
        median_sobel_inst_u_median_filter_submodule_a5_r_3_), .Y(n3737) );
  NAND2X2 U5345 ( .A(n3742), .B(n3741), .Y(n3740) );
  AOI21X4 U5346 ( .A0(n6471), .A1(n6469), .B0(n5799), .Y(n3744) );
  OAI2BB1X4 U5347 ( .A0N(n3577), .A1N(n7135), .B0(n7134), .Y(n6393) );
  NOR2X6 U5348 ( .A(n3747), .B(median_sobel_inst_n432), .Y(n4442) );
  OAI21X4 U5349 ( .A0(n5891), .A1(median_sobel_inst_n931), .B0(n4391), .Y(
        n3746) );
  NAND2X8 U5350 ( .A(n4491), .B(n3748), .Y(median_sobel_inst_data_g_r[4]) );
  BUFX4 U5351 ( .A(n5847), .Y(n3749) );
  NOR2X8 U5352 ( .A(n7545), .B(conv_inst_n27), .Y(n5847) );
  XOR2X4 U5353 ( .A(n3750), .B(n5744), .Y(conv_inst_N760) );
  NOR2X8 U5354 ( .A(n5743), .B(n7186), .Y(n3750) );
  NAND3X8 U5355 ( .A(n5093), .B(n4041), .C(n5096), .Y(n7186) );
  NOR2X8 U5356 ( .A(n3751), .B(median_sobel_inst_n1147), .Y(n3923) );
  AOI22X4 U5357 ( .A0(median_sobel_inst_data_h_r[6]), .A1(n5471), .B0(n3753), 
        .B1(n5300), .Y(n3752) );
  NOR2X4 U5358 ( .A(n3754), .B(median_sobel_inst_data_e_r[4]), .Y(n3753) );
  NAND2BX4 U5359 ( .AN(n3755), .B(n5019), .Y(median_sobel_inst_data_h_r[6]) );
  NAND3X2 U5360 ( .A(n3968), .B(n3588), .C(n3757), .Y(n3756) );
  NAND2X2 U5361 ( .A(median_sobel_inst_data_e_r[4]), .B(n5494), .Y(n3757) );
  NAND2X8 U5362 ( .A(n3804), .B(median_sobel_inst_n1147), .Y(n3803) );
  BUFX12 U5363 ( .A(n3803), .Y(n3758) );
  NAND3X8 U5364 ( .A(n3761), .B(n3759), .C(n7021), .Y(n4462) );
  NAND2X2 U5365 ( .A(n3801), .B(n4291), .Y(n7021) );
  NAND2BX4 U5366 ( .AN(n7020), .B(n3760), .Y(n3759) );
  NAND3X8 U5367 ( .A(n7019), .B(n3764), .C(n3762), .Y(n3761) );
  NAND2X6 U5368 ( .A(n3763), .B(n6785), .Y(n7019) );
  INVX3 U5369 ( .A(n7020), .Y(n3764) );
  OAI21X4 U5370 ( .A0(n3767), .A1(n3766), .B0(n5565), .Y(n3765) );
  AOI22X4 U5371 ( .A0(n3772), .A1(n3769), .B0(n3768), .B1(n3600), .Y(n3767) );
  NOR2BX2 U5372 ( .AN(n5563), .B(n3771), .Y(n3770) );
  NAND2BX4 U5373 ( .AN(n5554), .B(n3773), .Y(n3772) );
  CLKINVX2 U5374 ( .A(n5553), .Y(n3773) );
  NAND2BX4 U5375 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n400), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n66), .Y(n5558) );
  XNOR2X4 U5376 ( .A(n3774), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[9]) );
  OAI21X4 U5377 ( .A0(n5279), .A1(n5008), .B0(n5007), .Y(n7328) );
  OA21X4 U5378 ( .A0(n5004), .A1(n6547), .B0(n5003), .Y(n5279) );
  NOR2X8 U5379 ( .A(n3775), .B(input_data_ready_r[13]), .Y(n4980) );
  XOR2X4 U5380 ( .A(n4978), .B(n4977), .Y(n3775) );
  OAI21X4 U5381 ( .A0(n4972), .A1(n4984), .B0(n4985), .Y(n4978) );
  OR2X8 U5382 ( .A(n4981), .B(input_data_ready_r[12]), .Y(n7129) );
  XNOR2X4 U5383 ( .A(n4971), .B(n4970), .Y(n4981) );
  OAI21X1 U5384 ( .A0(n6548), .A1(n6547), .B0(n6546), .Y(n3776) );
  AOI2BB1X4 U5385 ( .A0N(n6077), .A1N(n6080), .B0(n3777), .Y(n6547) );
  XNOR2X4 U5386 ( .A(n5192), .B(n5211), .Y(n5209) );
  NAND3X6 U5387 ( .A(n3780), .B(n5191), .C(n3778), .Y(n5192) );
  NAND2BX2 U5388 ( .AN(n5082), .B(conv_inst_conv_4_r[3]), .Y(n5081) );
  NAND2X8 U5389 ( .A(conv_inst_n27), .B(conv_inst_n28), .Y(n5082) );
  XOR2X4 U5390 ( .A(n7106), .B(n3782), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N116) );
  AOI21X4 U5391 ( .A0(n7305), .A1(n7298), .B0(n7301), .Y(n3782) );
  NAND3X4 U5392 ( .A(n7166), .B(n7011), .C(n7172), .Y(n3783) );
  AOI21X4 U5393 ( .A0(n7167), .A1(n7011), .B0(n7010), .Y(n3784) );
  NOR2BX4 U5394 ( .AN(n7164), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .Y(n7169) );
  NOR2X4 U5395 ( .A(n7186), .B(n7185), .Y(n3785) );
  INVX6 U5396 ( .A(n7377), .Y(n5355) );
  NOR2X6 U5397 ( .A(n4056), .B(input_data_ready_r[22]), .Y(n7377) );
  XOR2X4 U5398 ( .A(n3786), .B(n3575), .Y(n4056) );
  OAI21X4 U5399 ( .A0(n4885), .A1(n4444), .B0(n4443), .Y(n3786) );
  AOI21X4 U5400 ( .A0(n6265), .A1(n3788), .B0(n3787), .Y(n6464) );
  OAI21X4 U5401 ( .A0(n6376), .A1(n3790), .B0(n6379), .Y(n3787) );
  OAI21X4 U5402 ( .A0(n6041), .A1(n3791), .B0(n5598), .Y(n6265) );
  XNOR2X4 U5403 ( .A(n3793), .B(n3792), .Y(n4880) );
  INVX3 U5404 ( .A(n4890), .Y(n3794) );
  NAND2X8 U5405 ( .A(n4109), .B(n4873), .Y(n4890) );
  OAI21X4 U5406 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_Gx1[1]), 
        .A1(median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .B0(n3797), .Y(n3796) );
  XNOR2X4 U5407 ( .A(n3798), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[9]) );
  XOR2X4 U5408 ( .A(n4876), .B(n3802), .Y(n3801) );
  XOR2X4 U5409 ( .A(n3808), .B(n3807), .Y(n4870) );
  INVX12 U5410 ( .A(median_sobel_inst_n1144), .Y(n3804) );
  NAND2X2 U5411 ( .A(n4253), .B(n4874), .Y(n3806) );
  NAND2X4 U5412 ( .A(n4861), .B(n4863), .Y(n3807) );
  INVX20 U5413 ( .A(n4667), .Y(n5784) );
  OAI22X1 U5414 ( .A0(n7137), .A1(median_sobel_inst_n1162), .B0(n4667), .B1(
        n3810), .Y(n3809) );
  NAND3X4 U5415 ( .A(n5238), .B(n3813), .C(n3811), .Y(n5244) );
  AOI2BB2X4 U5416 ( .B0(n5346), .B1(median_sobel_inst_data_i_r[7]), .A0N(n3819), .A1N(n3815), .Y(n3814) );
  NAND3X6 U5417 ( .A(n3818), .B(n3817), .C(n4535), .Y(n3816) );
  OAI21X4 U5418 ( .A0(n4534), .A1(n4533), .B0(n3928), .Y(n3817) );
  OAI22X4 U5419 ( .A0(n5346), .A1(median_sobel_inst_data_i_r[7]), .B0(n5406), 
        .B1(n3820), .Y(n3819) );
  OAI22X4 U5420 ( .A0(n5828), .A1(n7572), .B0(n3823), .B1(
        median_sobel_inst_n933), .Y(n5023) );
  OAI22X2 U5421 ( .A0(n5367), .A1(n7137), .B0(n3823), .B1(
        median_sobel_inst_n413), .Y(n5369) );
  AOI2BB2X4 U5422 ( .B0(median_sobel_inst_data_c_r[6]), .B1(n3828), .A0N(n5765), .A1N(median_sobel_inst_data_f_r[7]), .Y(n3827) );
  NOR2X4 U5423 ( .A(n4478), .B(n3831), .Y(n3830) );
  NAND3X4 U5424 ( .A(n4481), .B(n3834), .C(n4160), .Y(n3833) );
  NOR2BX4 U5425 ( .AN(n5400), .B(n4540), .Y(n3834) );
  OR2X8 U5426 ( .A(n3835), .B(median_sobel_inst_data_i_r[4]), .Y(n5759) );
  AND2X4 U5427 ( .A(n3835), .B(median_sobel_inst_data_i_r[4]), .Y(n5763) );
  NAND3X6 U5428 ( .A(n3844), .B(n3839), .C(n3837), .Y(n3836) );
  OAI21X4 U5429 ( .A0(n4430), .A1(n4431), .B0(n3838), .Y(n3837) );
  NAND3BX4 U5430 ( .AN(n5755), .B(n4246), .C(n3845), .Y(n3844) );
  OAI21X4 U5431 ( .A0(n4247), .A1(n3847), .B0(n3846), .Y(n3845) );
  AOI22X4 U5432 ( .A0(n5757), .A1(n3555), .B0(median_sobel_inst_data_i_r[1]), 
        .B1(n5758), .Y(n3846) );
  AOI2BB2X4 U5433 ( .B0(n3556), .B1(n3851), .A0N(n5766), .A1N(n3820), .Y(n4317) );
  NAND2X1 U5434 ( .A(n5784), .B(median_sobel_inst_n118), .Y(n3866) );
  AOI2BB2X2 U5435 ( .B0(n5784), .B1(median_sobel_inst_n72), .A0N(n7137), .A1N(
        median_sobel_inst_n929), .Y(n5327) );
  NAND2X1 U5436 ( .A(n5784), .B(median_sobel_inst_n125), .Y(n5291) );
  AOI22X4 U5437 ( .A0(n3861), .A1(n3597), .B0(n5784), .B1(
        median_sobel_inst_n1375), .Y(n4200) );
  NAND2BX4 U5438 ( .AN(n3864), .B(n5022), .Y(median_sobel_inst_data_h_r[7]) );
  NAND2X2 U5439 ( .A(n5956), .B(median_sobel_inst_n1095), .Y(n3867) );
  OR2X4 U5440 ( .A(n5471), .B(median_sobel_inst_data_h_r[6]), .Y(n3868) );
  AOI21X4 U5441 ( .A0(n4607), .A1(n6695), .B0(n3869), .Y(n4608) );
  OAI2BB1X4 U5442 ( .A0N(n3870), .A1N(n6582), .B0(n6581), .Y(n6695) );
  XNOR2X4 U5443 ( .A(n3871), .B(
        median_sobel_inst_u_median_filter_submodule_n920), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N13) );
  XNOR2X4 U5444 ( .A(n3877), .B(n7195), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[7]) );
  OAI2BB1X2 U5445 ( .A0N(n3874), .A1N(n6882), .B0(n6886), .Y(n6868) );
  OAI21X4 U5446 ( .A0(n6877), .A1(n6521), .B0(n6878), .Y(n6882) );
  NAND2X2 U5447 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), 
        .B(n7548), .Y(n6521) );
  NAND2BX4 U5448 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), 
        .B(n3583), .Y(n6876) );
  OAI2BB1X4 U5449 ( .A0N(n3875), .A1N(n7192), .B0(n3878), .Y(n3877) );
  INVX12 U5450 ( .A(n3881), .Y(n6604) );
  NAND2X4 U5451 ( .A(n3882), .B(n7411), .Y(conv_inst_data_abc_w[9]) );
  NOR2X8 U5452 ( .A(n3884), .B(n3883), .Y(n7414) );
  NAND2X6 U5453 ( .A(n4983), .B(n7422), .Y(n3883) );
  AND2X8 U5454 ( .A(n4979), .B(n7128), .Y(n3884) );
  NAND2BX2 U5455 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n63), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n85), .Y(n5548) );
  INVX12 U5456 ( .A(n3885), .Y(n4984) );
  NAND2BX1 U5457 ( .AN(conv_inst_n10), .B(n4216), .Y(n5044) );
  NAND2BX1 U5458 ( .AN(conv_inst_n273), .B(n4216), .Y(n5073) );
  OAI2BB2X2 U5459 ( .B0(conv_inst_n235), .B1(n5082), .A0N(n4216), .A1N(
        conv_inst_conv_3_r[7]), .Y(n4222) );
  NAND2X1 U5460 ( .A(n5014), .B(n4216), .Y(n5013) );
  OAI2BB1X4 U5461 ( .A0N(n4216), .A1N(n4289), .B0(n5062), .Y(n6628) );
  NOR2X8 U5462 ( .A(conv_inst_n27), .B(conv_inst_n28), .Y(n4216) );
  XNOR2X4 U5463 ( .A(n3892), .B(conv_inst_n10), .Y(n3891) );
  AOI21X4 U5464 ( .A0(n5906), .A1(n3893), .B0(n4424), .Y(n3892) );
  OAI21X4 U5465 ( .A0(n7214), .A1(n4919), .B0(n4918), .Y(n5970) );
  AOI21X4 U5466 ( .A0(n3901), .A1(n5944), .B0(n5681), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N129) );
  AOI21X2 U5467 ( .A0(n3903), .A1(n7172), .B0(n7171), .Y(n3902) );
  AOI21X4 U5468 ( .A0(n4288), .A1(n3907), .B0(n5460), .Y(n3906) );
  NAND3X6 U5469 ( .A(n3914), .B(n3911), .C(n3910), .Y(n4500) );
  NOR2X6 U5470 ( .A(n3912), .B(n5497), .Y(n3911) );
  OAI2BB1X4 U5471 ( .A0N(median_sobel_inst_data_b_r[2]), .A1N(n3913), .B0(
        n4504), .Y(n3912) );
  NAND3X4 U5472 ( .A(n3920), .B(n3918), .C(n3915), .Y(n3914) );
  NAND2X4 U5473 ( .A(n3916), .B(median_sobel_inst_data_h_r[2]), .Y(n3915) );
  INVX3 U5474 ( .A(median_sobel_inst_data_b_r[2]), .Y(n3916) );
  INVX12 U5475 ( .A(n5161), .Y(n4162) );
  NAND3X4 U5476 ( .A(n5343), .B(n3951), .C(n3925), .Y(n3924) );
  NOR2X4 U5477 ( .A(n5401), .B(median_sobel_inst_data_i_r[4]), .Y(n5342) );
  NOR2X8 U5478 ( .A(median_sobel_inst_n982), .B(n3927), .Y(n3926) );
  NOR2BX4 U5479 ( .AN(n5345), .B(n3929), .Y(n3928) );
  NAND3X6 U5480 ( .A(n4793), .B(n4795), .C(n4794), .Y(n3555) );
  NAND2X4 U5481 ( .A(n4013), .B(n4009), .Y(n3935) );
  AOI2BB2X4 U5482 ( .B0(n3933), .B1(n3935), .A0N(n4119), .A1N(n3932), .Y(
        median_sobel_inst_u_median_filter_submodule_a17_w) );
  AND3X4 U5483 ( .A(n4007), .B(n3934), .C(n4117), .Y(n3933) );
  OAI21X4 U5484 ( .A0(n4442), .A1(median_sobel_inst_data_g_r[5]), .B0(n5813), 
        .Y(n3934) );
  NAND2X1 U5485 ( .A(n4162), .B(n3939), .Y(n3938) );
  NAND2BX4 U5486 ( .AN(n3943), .B(n4618), .Y(median_sobel_inst_n705) );
  OR2X8 U5487 ( .A(n3945), .B(n3944), .Y(n3943) );
  NAND2X4 U5488 ( .A(n3947), .B(n3576), .Y(n3944) );
  INVX16 U5489 ( .A(n5161), .Y(n5334) );
  NAND2X2 U5490 ( .A(n6020), .B(median_sobel_inst_n86), .Y(n3946) );
  NAND2X8 U5491 ( .A(n5262), .B(n3949), .Y(median_sobel_inst_n135) );
  NAND2X8 U5492 ( .A(n4792), .B(n3950), .Y(median_sobel_inst_n982) );
  AND2X8 U5493 ( .A(n4515), .B(n3952), .Y(n5760) );
  NAND2BX2 U5494 ( .AN(n5161), .B(median_sobel_inst_n80), .Y(n5330) );
  AOI22X4 U5495 ( .A0(n5226), .A1(median_sobel_inst_n123), .B0(n6020), .B1(
        median_sobel_inst_n727), .Y(n3954) );
  OAI22X4 U5496 ( .A0(n3959), .A1(median_sobel_inst_data_d_r[5]), .B0(n3554), 
        .B1(n5940), .Y(n4403) );
  NAND2X8 U5497 ( .A(n3961), .B(n3960), .Y(median_sobel_inst_n981) );
  OAI22X2 U5498 ( .A0(n4615), .A1(n4001), .B0(median_sobel_inst_n921), .B1(
        n6137), .Y(n4616) );
  NAND3X6 U5499 ( .A(n3970), .B(n5478), .C(n3966), .Y(n4506) );
  AOI21X4 U5500 ( .A0(n3969), .A1(n4507), .B0(n3967), .Y(n3966) );
  NAND2X6 U5501 ( .A(median_sobel_inst_data_e_r[4]), .B(
        median_sobel_inst_data_e_r[3]), .Y(n3968) );
  NAND2BX2 U5502 ( .AN(median_sobel_inst_data_e_r[4]), .B(n5474), .Y(n3969) );
  NAND3X6 U5503 ( .A(n3974), .B(n4530), .C(n3972), .Y(n3971) );
  NOR2X4 U5504 ( .A(n4508), .B(median_sobel_inst_data_b_r[2]), .Y(n3973) );
  NAND3X4 U5505 ( .A(n3977), .B(n5237), .C(n3975), .Y(n5238) );
  AOI2BB2X4 U5506 ( .B0(n3976), .B1(median_sobel_inst_data_d_r[2]), .A0N(n3979), .A1N(median_sobel_inst_n979), .Y(n3975) );
  NAND2X2 U5507 ( .A(median_sobel_inst_n979), .B(n3979), .Y(n3978) );
  NOR2BX4 U5508 ( .AN(n4742), .B(n3981), .Y(n3980) );
  NAND3X4 U5509 ( .A(n3984), .B(n3989), .C(n4395), .Y(n3988) );
  OAI2BB1X4 U5510 ( .A0N(n3993), .A1N(n4397), .B0(n3992), .Y(n3989) );
  NAND2X1 U5511 ( .A(n5492), .B(median_sobel_inst_data_e_r[1]), .Y(n3993) );
  NAND2BX4 U5512 ( .AN(n3994), .B(n5168), .Y(median_sobel_inst_n1030) );
  NAND2BX4 U5513 ( .AN(n3995), .B(n5167), .Y(n3994) );
  NAND2X4 U5514 ( .A(n6021), .B(median_sobel_inst_n78), .Y(n3997) );
  NOR2X6 U5515 ( .A(n3998), .B(median_sobel_inst_data_b_r[5]), .Y(n5503) );
  BUFX2 U5516 ( .A(median_sobel_inst_n1144), .Y(n4000) );
  NAND2X4 U5517 ( .A(n4002), .B(median_sobel_inst_data_b_r[5]), .Y(n5475) );
  NAND2BX1 U5518 ( .AN(n5161), .B(n4313), .Y(n4391) );
  BUFX12 U5519 ( .A(n5591), .Y(n4006) );
  AOI2BB2X4 U5520 ( .B0(n4442), .B1(median_sobel_inst_data_g_r[5]), .A0N(
        median_sobel_inst_data_a_r[6]), .A1N(n4008), .Y(n4007) );
  NAND2X4 U5521 ( .A(n4153), .B(median_sobel_inst_n432), .Y(n4011) );
  AND2X4 U5522 ( .A(n4152), .B(median_sobel_inst_data_a_r[3]), .Y(n4012) );
  AND2X4 U5523 ( .A(n4155), .B(n4154), .Y(n4015) );
  NOR2BX4 U5524 ( .AN(n4017), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[4]), .Y(n6220) );
  XOR2X2 U5525 ( .A(n4018), .B(
        median_sobel_inst_u_median_filter_submodule_n910), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N23) );
  AOI21X4 U5526 ( .A0(n6407), .A1(n6405), .B0(n4931), .Y(n4018) );
  AO21X4 U5527 ( .A0(n4928), .A1(n6358), .B0(n4927), .Y(n6897) );
  BUFX12 U5528 ( .A(n4029), .Y(n4021) );
  AOI2BB1X4 U5529 ( .A0N(n4031), .A1N(n4024), .B0(n4023), .Y(n4022) );
  BUFX6 U5530 ( .A(o_in_ready), .Y(n4028) );
  NAND2BX4 U5531 ( .AN(n4033), .B(n7502), .Y(n4032) );
  NOR2X8 U5532 ( .A(n4576), .B(n4369), .Y(n7210) );
  NOR3X4 U5533 ( .A(n4036), .B(n6117), .C(n4568), .Y(n4035) );
  NOR2X8 U5534 ( .A(n7219), .B(n1986), .Y(n6117) );
  NAND2X2 U5535 ( .A(n6052), .B(n2000), .Y(n4036) );
  NOR2X8 U5536 ( .A(n5656), .B(n822), .Y(n6052) );
  NAND2X4 U5537 ( .A(n6102), .B(n7219), .Y(n4037) );
  NAND2X4 U5538 ( .A(n5889), .B(n5825), .Y(n6102) );
  AND2X4 U5539 ( .A(n5500), .B(median_sobel_inst_data_b_r[4]), .Y(n5497) );
  NAND2X1 U5540 ( .A(n7426), .B(cnt[1]), .Y(n5371) );
  NAND2X8 U5541 ( .A(next_state_3_), .B(n1386), .Y(n7426) );
  AOI21X1 U5542 ( .A0(n6416), .A1(n6414), .B0(n4751), .Y(n4039) );
  NAND2X4 U5543 ( .A(n6164), .B(n4750), .Y(n4040) );
  XOR2X4 U5544 ( .A(n7185), .B(n7186), .Y(conv_inst_N73) );
  NOR2X8 U5545 ( .A(n6627), .B(n4042), .Y(n4041) );
  NAND2X8 U5546 ( .A(n5637), .B(n5636), .Y(n6627) );
  NOR2X8 U5547 ( .A(n6371), .B(n4043), .Y(n5093) );
  NAND2BX2 U5548 ( .AN(n4044), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n6353) );
  NOR2X8 U5549 ( .A(n5655), .B(n5656), .Y(n5658) );
  NAND2X8 U5550 ( .A(n5255), .B(n6045), .Y(n5655) );
  INVX12 U5551 ( .A(n818), .Y(n5255) );
  NAND2X4 U5552 ( .A(n4028), .B(n6250), .Y(n7002) );
  NOR2X4 U5553 ( .A(n5353), .B(n4206), .Y(n7387) );
  INVX4 U5554 ( .A(n4045), .Y(n5353) );
  NAND2X6 U5555 ( .A(n4881), .B(n5461), .Y(n4045) );
  INVX4 U5556 ( .A(n4229), .Y(n4048) );
  NAND2X8 U5557 ( .A(n4054), .B(n4262), .Y(n5712) );
  NAND2X8 U5558 ( .A(n4053), .B(n4052), .Y(n4262) );
  OAI22X4 U5559 ( .A0(n4717), .A1(n4741), .B0(n4227), .B1(
        median_sobel_inst_u_median_filter_submodule_net94185), .Y(n4052) );
  OAI2BB1X4 U5560 ( .A0N(n4697), .A1N(n4696), .B0(n4695), .Y(n4053) );
  INVX8 U5561 ( .A(n5711), .Y(n4054) );
  NOR2X8 U5562 ( .A(n4210), .B(n4211), .Y(n5711) );
  AND2X2 U5563 ( .A(median_sobel_inst_u_median_filter_submodule_net94186), .B(
        n4055), .Y(n6022) );
  CLKINVX1 U5564 ( .A(median_sobel_inst_u_median_filter_submodule_n158), .Y(
        n4055) );
  NAND2X4 U5565 ( .A(n4056), .B(input_data_ready_r[22]), .Y(n7382) );
  AOI21X4 U5566 ( .A0(n4057), .A1(n6978), .B0(n6977), .Y(n6983) );
  XNOR2X1 U5567 ( .A(n6908), .B(n4057), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[8]) );
  OAI21X4 U5568 ( .A0(n6526), .A1(n6525), .B0(n6524), .Y(n4057) );
  INVX3 U5569 ( .A(n4594), .Y(n4059) );
  NAND2BX4 U5570 ( .AN(n4061), .B(n4595), .Y(n4060) );
  INVX3 U5571 ( .A(n5025), .Y(n5026) );
  OAI2BB1X2 U5572 ( .A0N(n4065), .A1N(n4063), .B0(n4758), .Y(n5025) );
  CLKINVX1 U5573 ( .A(n4759), .Y(n4063) );
  NOR2BX4 U5574 ( .AN(n4064), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .Y(n4759) );
  CLKINVX1 U5575 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), 
        .Y(n4064) );
  CLKINVX1 U5576 ( .A(n6413), .Y(n4065) );
  NAND3BX2 U5577 ( .AN(n5806), .B(n4068), .C(n4067), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N14) );
  NAND2X1 U5578 ( .A(n5807), .B(n4070), .Y(n4067) );
  NAND2X1 U5579 ( .A(n5805), .B(n4070), .Y(n4069) );
  NOR2X2 U5580 ( .A(n5804), .B(
        median_sobel_inst_u_median_filter_submodule_n920), .Y(n4070) );
  NOR2BX4 U5581 ( .AN(median_sobel_inst_u_median_filter_submodule_n885), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[5]), .Y(n4072) );
  NAND2X4 U5582 ( .A(n4079), .B(n4073), .Y(n4213) );
  AOI21X4 U5583 ( .A0(n4269), .A1(n4076), .B0(n4074), .Y(n4073) );
  OAI21X2 U5584 ( .A0(n4077), .A1(n4075), .B0(n4267), .Y(n4074) );
  NAND2X1 U5585 ( .A(median_sobel_inst_u_median_filter_submodule_net96572), 
        .B(median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n4077) );
  NAND2X1 U5586 ( .A(n5182), .B(
        median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n4078) );
  OAI2BB1X4 U5587 ( .A0N(n5180), .A1N(n4081), .B0(n4080), .Y(n4079) );
  OR2X4 U5588 ( .A(n5181), .B(median_sobel_inst_u_median_filter_submodule_n273), .Y(n4081) );
  NAND3X4 U5589 ( .A(n5175), .B(n5178), .C(n4360), .Y(n4084) );
  BUFX20 U5590 ( .A(n4359), .Y(n4083) );
  XOR2X4 U5591 ( .A(n5192), .B(n5212), .Y(n4359) );
  OAI22X2 U5592 ( .A0(n4086), .A1(n4085), .B0(n451), .B1(n6986), .Y(n474) );
  XOR2X4 U5593 ( .A(n4087), .B(cnt[10]), .Y(n4086) );
  NOR2X4 U5594 ( .A(n5608), .B(n5259), .Y(n6984) );
  NAND3X4 U5595 ( .A(next_state_3_), .B(n7430), .C(n1386), .Y(n7433) );
  NAND2X8 U5596 ( .A(n4089), .B(n4088), .Y(n1386) );
  AOI21X4 U5597 ( .A0(n4570), .A1(n5255), .B0(n4569), .Y(n4091) );
  INVXL U5598 ( .A(n4676), .Y(n4092) );
  OAI21X4 U5599 ( .A0(n5274), .A1(n4093), .B0(n4421), .Y(
        median_sobel_inst_u_median_filter_submodule_n757) );
  OAI21X4 U5600 ( .A0(n5273), .A1(n4093), .B0(n5272), .Y(
        median_sobel_inst_u_median_filter_submodule_n758) );
  OAI2BB1X4 U5601 ( .A0N(n4092), .A1N(n4354), .B0(n4675), .Y(
        median_sobel_inst_u_median_filter_submodule_n763) );
  OAI21X4 U5602 ( .A0(n4755), .A1(n4093), .B0(n4754), .Y(
        median_sobel_inst_u_median_filter_submodule_n760) );
  OAI21X4 U5603 ( .A0(n5270), .A1(n4093), .B0(n5269), .Y(
        median_sobel_inst_u_median_filter_submodule_n759) );
  OAI21X4 U5604 ( .A0(n4664), .A1(n4093), .B0(n4663), .Y(
        median_sobel_inst_u_median_filter_submodule_n761) );
  INVX12 U5605 ( .A(n4354), .Y(n4093) );
  NAND2BX4 U5606 ( .AN(n4094), .B(n5324), .Y(median_sobel_inst_data_i_r[7]) );
  NOR2X2 U5607 ( .A(n5683), .B(conv_inst_n10), .Y(n4097) );
  INVX3 U5608 ( .A(n6851), .Y(n4098) );
  OAI21X2 U5609 ( .A0(median_sobel_inst_u_median_filter_submodule_n1456), .A1(
        n4308), .B0(median_sobel_inst_u_median_filter_submodule_n1193), .Y(
        n4629) );
  NAND2X4 U5610 ( .A(n4182), .B(n4181), .Y(n4099) );
  OAI21X4 U5611 ( .A0(n4100), .A1(n6391), .B0(n6390), .Y(n6392) );
  OAI21XL U5612 ( .A0(n6073), .A1(n6389), .B0(n4100), .Y(n6076) );
  INVX3 U5613 ( .A(n4101), .Y(n4100) );
  OAI21X1 U5614 ( .A0(n7184), .A1(n6431), .B0(n6432), .Y(n6397) );
  OAI21X2 U5615 ( .A0(n6401), .A1(n7184), .B0(n6400), .Y(n6403) );
  NAND2X2 U5616 ( .A(n6493), .B(n4102), .Y(n6497) );
  NAND2X4 U5617 ( .A(n4104), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n6155) );
  NAND2X2 U5618 ( .A(n4919), .B(n4105), .Y(n4104) );
  NAND2X4 U5619 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4105) );
  OAI21X4 U5620 ( .A0(n6867), .A1(n5944), .B0(n4106), .Y(n5945) );
  OAI21X4 U5621 ( .A0(n4886), .A1(n4885), .B0(n4107), .Y(n4892) );
  AOI21X4 U5622 ( .A0(n4891), .A1(n4890), .B0(n4108), .Y(n4107) );
  OAI21X4 U5623 ( .A0(n4889), .A1(n4888), .B0(n4887), .Y(n4108) );
  NOR2X4 U5624 ( .A(n4883), .B(n4889), .Y(n4891) );
  NOR2X8 U5625 ( .A(input_data_ready_r[31]), .B(n4302), .Y(n4889) );
  INVX4 U5626 ( .A(n4876), .Y(n4885) );
  OAI21X4 U5627 ( .A0(n4567), .A1(conv_inst_n246), .B0(n4111), .Y(n4110) );
  NAND2X4 U5628 ( .A(n4567), .B(conv_inst_n246), .Y(n4111) );
  NAND2X8 U5629 ( .A(n4115), .B(n4112), .Y(n5915) );
  AOI21X4 U5630 ( .A0(n6298), .A1(n4116), .B0(n4113), .Y(n4112) );
  NAND2X2 U5631 ( .A(conv_inst_data_abc_1_r[6]), .B(conv_inst_conv_1_r[6]), 
        .Y(n6301) );
  NAND2X6 U5632 ( .A(n4114), .B(n6793), .Y(n6298) );
  NAND3X6 U5633 ( .A(n6792), .B(n4116), .C(n6295), .Y(n4115) );
  NAND2X8 U5634 ( .A(n4561), .B(n4326), .Y(n6792) );
  INVX4 U5635 ( .A(n4118), .Y(n4117) );
  AOI21X2 U5636 ( .A0(n3558), .A1(n5814), .B0(n4120), .Y(n4119) );
  INVX12 U5637 ( .A(n7428), .Y(n4366) );
  NAND2X8 U5638 ( .A(n5707), .B(n7426), .Y(n7428) );
  NAND2X8 U5639 ( .A(n4589), .B(next_state_3_), .Y(n5707) );
  NAND2X2 U5640 ( .A(n4366), .B(cnt[7]), .Y(n4121) );
  NAND2X4 U5641 ( .A(n4123), .B(n1986), .Y(n4582) );
  NAND2X6 U5642 ( .A(n4124), .B(n4544), .Y(n6103) );
  INVX3 U5643 ( .A(n6115), .Y(n4124) );
  NAND2X8 U5644 ( .A(n6758), .B(n6759), .Y(n6949) );
  NAND2X8 U5645 ( .A(n7155), .B(n6756), .Y(n6759) );
  NAND2X4 U5646 ( .A(n5462), .B(n4185), .Y(n4881) );
  XOR2X4 U5647 ( .A(n4228), .B(n4284), .Y(n4186) );
  NOR2X8 U5648 ( .A(n4880), .B(input_data_ready_r[21]), .Y(n4879) );
  NOR2X6 U5649 ( .A(n4879), .B(n7117), .Y(n7378) );
  NOR2X6 U5650 ( .A(n4186), .B(n3605), .Y(n7117) );
  NOR2X4 U5651 ( .A(n7383), .B(n7377), .Y(n7381) );
  CLKINVX3 U5652 ( .A(median_sobel_inst_data_b_r[6]), .Y(n5477) );
  NAND2BX4 U5653 ( .AN(n4126), .B(n5370), .Y(median_sobel_inst_data_b_r[6]) );
  NOR2X2 U5654 ( .A(n5964), .B(n7581), .Y(n4127) );
  NOR2X4 U5655 ( .A(n4129), .B(n7186), .Y(n4128) );
  NAND2X2 U5656 ( .A(n6539), .B(n6538), .Y(n4129) );
  NAND3BX4 U5657 ( .AN(n4130), .B(n5053), .C(n5052), .Y(n6538) );
  NOR2X8 U5658 ( .A(n4416), .B(n6016), .Y(n6539) );
  INVX8 U5659 ( .A(median_sobel_inst_data_f_r[4]), .Y(n5401) );
  NAND2X6 U5660 ( .A(n5328), .B(n4131), .Y(median_sobel_inst_data_f_r[4]) );
  AOI2BB2X4 U5661 ( .B0(n4333), .B1(median_sobel_inst_n1286), .A0N(n5828), 
        .A1N(median_sobel_inst_n423), .Y(n4131) );
  NAND2BX4 U5662 ( .AN(n4776), .B(n4132), .Y(n4171) );
  INVX3 U5663 ( .A(n4775), .Y(n4134) );
  NOR2X2 U5664 ( .A(n4135), .B(median_sobel_inst_n919), .Y(n4137) );
  NOR2X2 U5665 ( .A(n4135), .B(median_sobel_inst_n1093), .Y(n4138) );
  NAND2BX1 U5666 ( .AN(n4136), .B(median_sobel_inst_sobel_data_w[6]), .Y(n4142) );
  NAND2BX1 U5667 ( .AN(n4136), .B(median_sobel_inst_sobel_data_w[5]), .Y(n4143) );
  NAND2BX1 U5668 ( .AN(n4136), .B(median_sobel_inst_sobel_data_w[2]), .Y(n4144) );
  NAND2BX1 U5669 ( .AN(n4136), .B(median_sobel_inst_sobel_data_w[9]), .Y(n4145) );
  NAND2X1 U5670 ( .A(n4136), .B(median_sobel_inst_n138), .Y(n4146) );
  NAND2X1 U5671 ( .A(n4136), .B(median_sobel_inst_n1095), .Y(n4148) );
  AOI2BB1X4 U5672 ( .A0N(n4136), .A1N(median_sobel_inst_n912), .B0(n5233), .Y(
        n5234) );
  NAND2X2 U5673 ( .A(median_sobel_inst_data_e_r[3]), .B(n5496), .Y(n5474) );
  INVX3 U5674 ( .A(median_sobel_inst_n425), .Y(n4150) );
  INVX3 U5675 ( .A(median_sobel_inst_n425), .Y(n4152) );
  INVX6 U5676 ( .A(median_sobel_inst_data_g_r[4]), .Y(n4153) );
  NAND2X2 U5677 ( .A(n4498), .B(median_sobel_inst_n425), .Y(n4154) );
  AOI2BB2X4 U5678 ( .B0(n4158), .B1(median_sobel_inst_n705), .A0N(
        median_sobel_inst_n979), .A1N(n5926), .Y(n4157) );
  OAI21X4 U5679 ( .A0(median_sobel_inst_n975), .A1(n5811), .B0(n5810), .Y(
        n4159) );
  NAND2X6 U5680 ( .A(n5401), .B(median_sobel_inst_n135), .Y(n5400) );
  NAND3X2 U5681 ( .A(n5396), .B(n5395), .C(n5394), .Y(n4161) );
  AOI22X2 U5682 ( .A0(n5691), .A1(median_sobel_inst_n66), .B0(n6021), .B1(
        median_sobel_inst_n56), .Y(n4163) );
  INVX3 U5683 ( .A(n4522), .Y(n4164) );
  NAND2BX4 U5684 ( .AN(n4165), .B(n5018), .Y(median_sobel_inst_data_d_r[7]) );
  AOI22X2 U5685 ( .A0(n6021), .A1(median_sobel_inst_n764), .B0(n6020), .B1(
        median_sobel_inst_n118), .Y(n4166) );
  NOR3X8 U5686 ( .A(median_sobel_inst_n1033), .B(median_sobel_inst_ns[1]), .C(
        median_sobel_inst_ns[0]), .Y(n6690) );
  NAND2BX4 U5687 ( .AN(n4782), .B(n4168), .Y(n4167) );
  OA21X4 U5688 ( .A0(n4781), .A1(n5972), .B0(n4780), .Y(n4169) );
  OAI2BB1X4 U5689 ( .A0N(n4776), .A1N(n4777), .B0(n4171), .Y(n4170) );
  NAND2BX4 U5690 ( .AN(n7547), .B(n4172), .Y(n4779) );
  OAI21X2 U5691 ( .A0(n7343), .A1(n7366), .B0(n7372), .Y(n7344) );
  NOR2BX4 U5692 ( .AN(n4173), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[7]), .Y(n7343) );
  NOR2X4 U5693 ( .A(conv_inst_data_abc_1_r[1]), .B(conv_inst_conv_1_r[1]), .Y(
        n6282) );
  NOR2X2 U5694 ( .A(n6844), .B(n7287), .Y(n7284) );
  OAI21XL U5695 ( .A0(n6387), .A1(n6383), .B0(n6384), .Y(n4175) );
  CLKINVX3 U5696 ( .A(n6131), .Y(n6387) );
  INVX3 U5697 ( .A(n5240), .Y(n4484) );
  NAND2X4 U5698 ( .A(n5935), .B(median_sobel_inst_data_g_r[5]), .Y(n5240) );
  AND4X8 U5699 ( .A(n4177), .B(n5219), .C(n4179), .D(n4438), .Y(n4176) );
  INVX3 U5700 ( .A(n4178), .Y(n4177) );
  NOR2X4 U5701 ( .A(n5828), .B(median_sobel_inst_n914), .Y(n4178) );
  AND3X8 U5702 ( .A(n5106), .B(n5104), .C(n5105), .Y(n5935) );
  AOI2BB2X4 U5703 ( .B0(n5205), .B1(
        median_sobel_inst_u_median_filter_submodule_net96588), .A0N(
        median_sobel_inst_u_median_filter_submodule_n785), .A1N(
        median_sobel_inst_u_median_filter_submodule_n259), .Y(n4182) );
  INVX8 U5704 ( .A(n4462), .Y(n7380) );
  NAND3X8 U5705 ( .A(n4187), .B(conv_inst_conv_4_r[0]), .C(
        conv_inst_data_bcd_4_r[0]), .Y(n4189) );
  INVX6 U5706 ( .A(n6310), .Y(n4187) );
  NOR2X4 U5707 ( .A(conv_inst_n192), .B(conv_inst_data_bcd_4_r[1]), .Y(n6310)
         );
  OAI2BB2X4 U5708 ( .B0(n5644), .B1(n4188), .A0N(n5629), .A1N(n4191), .Y(n4190) );
  NAND2X2 U5709 ( .A(n5630), .B(n4191), .Y(n4188) );
  NAND2X1 U5710 ( .A(conv_inst_data_bcd_4_r[0]), .B(conv_inst_conv_4_r[0]), 
        .Y(n6313) );
  NOR2X8 U5711 ( .A(n4190), .B(n5411), .Y(n5412) );
  NOR2X6 U5712 ( .A(n5410), .B(n5408), .Y(n4191) );
  NOR2X4 U5713 ( .A(conv_inst_data_bcd_4_r[6]), .B(conv_inst_n50), .Y(n5408)
         );
  INVX1 U5714 ( .A(n5605), .Y(n4196) );
  CLKINVX1 U5715 ( .A(n6273), .Y(n4198) );
  NOR2X4 U5716 ( .A(n4925), .B(n5943), .Y(n4199) );
  XNOR2X4 U5717 ( .A(n4463), .B(n4201), .Y(n4869) );
  NAND2X4 U5718 ( .A(n4863), .B(n3654), .Y(n4201) );
  NOR2X4 U5719 ( .A(n7529), .B(n1984), .Y(n4862) );
  NAND2X4 U5720 ( .A(n4202), .B(n4205), .Y(n4204) );
  INVX3 U5721 ( .A(n7381), .Y(n4206) );
  NAND2X4 U5722 ( .A(input_data_ready_r[29]), .B(input_data_ready_r[13]), .Y(
        n4873) );
  INVX2 U5723 ( .A(n4208), .Y(n4707) );
  OAI21X4 U5724 ( .A0(n4741), .A1(n4740), .B0(n4735), .Y(n4210) );
  INVX1 U5725 ( .A(median_sobel_inst_u_median_filter_submodule_n260), .Y(n5217) );
  NAND2X1 U5726 ( .A(n4215), .B(
        median_sobel_inst_u_median_filter_submodule_n790), .Y(n4684) );
  NAND3X2 U5727 ( .A(n6792), .B(n6295), .C(n4220), .Y(n4219) );
  CLKINVX1 U5728 ( .A(n6300), .Y(n4220) );
  NAND2BX4 U5729 ( .AN(n4221), .B(n5054), .Y(n5636) );
  INVX3 U5730 ( .A(median_sobel_inst_data_b_r[0]), .Y(n5493) );
  NOR2X2 U5731 ( .A(n4223), .B(n6797), .Y(conv_inst_N283) );
  NOR2X4 U5732 ( .A(conv_inst_data_bcd_4_r[7]), .B(conv_inst_conv_4_r[7]), .Y(
        n5410) );
  AO21X4 U5733 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), 
        .A1(n4225), .B0(n6212), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[7]) );
  AOI2BB2X1 U5734 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_n833), .A0N(n4262), .A1N(
        n5685), .Y(n4226) );
  CLKINVX1 U5735 ( .A(median_sobel_inst_u_median_filter_submodule_n158), .Y(
        n4227) );
  INVX3 U5736 ( .A(n4872), .Y(n4229) );
  NAND2X8 U5737 ( .A(n7297), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n524), .Y(n7296) );
  NAND3X6 U5738 ( .A(n4230), .B(n4233), .C(n4232), .Y(n7297) );
  NAND3X6 U5739 ( .A(n7183), .B(n4231), .C(n7177), .Y(n4230) );
  NOR2X8 U5740 ( .A(n4234), .B(n6392), .Y(n7184) );
  XNOR2X4 U5741 ( .A(n7296), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n523), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N176) );
  NAND2X6 U5742 ( .A(n5303), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net94800), .Y(n5682) );
  OAI21X4 U5743 ( .A0(n5103), .A1(n6645), .B0(n4235), .Y(n5303) );
  AOI21X2 U5744 ( .A0(n6642), .A1(n5102), .B0(n5101), .Y(n4235) );
  AOI21X4 U5745 ( .A0(n5100), .A1(n6138), .B0(n5099), .Y(n6645) );
  NOR2X4 U5746 ( .A(n4237), .B(n6797), .Y(conv_inst_N231) );
  XNOR2X4 U5747 ( .A(n4238), .B(conv_inst_conv_1_r[12]), .Y(n4237) );
  OAI2BB1X4 U5748 ( .A0N(n4343), .A1N(n5515), .B0(n4239), .Y(n4238) );
  AND2X2 U5749 ( .A(n5514), .B(n5513), .Y(n4239) );
  XNOR2X4 U5750 ( .A(n4241), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[9]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[9]) );
  NAND2X2 U5751 ( .A(n7100), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .Y(n4241) );
  AOI21X2 U5752 ( .A0(n6634), .A1(n5001), .B0(n5000), .Y(n4242) );
  NAND2X4 U5753 ( .A(n6812), .B(n4244), .Y(n4243) );
  NOR2BX4 U5754 ( .AN(n6806), .B(n4245), .Y(n4244) );
  NOR2X4 U5755 ( .A(n5756), .B(n4513), .Y(n4246) );
  NOR2BX2 U5756 ( .AN(n4248), .B(n5758), .Y(n4247) );
  INVX3 U5757 ( .A(n5023), .Y(n4250) );
  NAND2X2 U5758 ( .A(median_sobel_inst_data_c_r[5]), .B(n5760), .Y(n5753) );
  OR2X4 U5759 ( .A(n5892), .B(n3585), .Y(n4252) );
  NAND2X6 U5760 ( .A(n7529), .B(n1984), .Y(n4863) );
  INVX3 U5761 ( .A(n4872), .Y(n4253) );
  NOR2X8 U5762 ( .A(input_data_ready_r[28]), .B(input_data_ready_r[12]), .Y(
        n4872) );
  OAI21X1 U5763 ( .A0(n5712), .A1(n4255), .B0(n4254), .Y(
        median_sobel_inst_u_median_filter_submodule_n820) );
  AOI2BB2X4 U5764 ( .B0(median_sobel_inst_u_median_filter_submodule_net94165), 
        .B1(n3665), .A0N(n3664), .A1N(n5450), .Y(n4256) );
  NAND2X4 U5765 ( .A(n4354), .B(n4258), .Y(n4257) );
  AND2X8 U5766 ( .A(n4259), .B(n4340), .Y(n4354) );
  INVX4 U5767 ( .A(n4345), .Y(n4259) );
  CLKINVX1 U5768 ( .A(n4646), .Y(n4260) );
  AOI21X4 U5769 ( .A0(n4658), .A1(n4659), .B0(n4261), .Y(n4661) );
  OAI22X2 U5770 ( .A0(median_sobel_inst_u_median_filter_submodule_n1159), .A1(
        n5465), .B0(median_sobel_inst_u_median_filter_submodule_net96795), 
        .B1(n4676), .Y(n4261) );
  INVX3 U5771 ( .A(median_sobel_inst_u_median_filter_submodule_net97020), .Y(
        n4676) );
  NOR2X4 U5772 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), .Y(
        n5593) );
  CLKINVX1 U5773 ( .A(median_sobel_inst_u_median_filter_submodule_net100057), 
        .Y(n5686) );
  AOI2BB2X1 U5774 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_net97925), .A0N(n4262), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net96393), .Y(n5216)
         );
  AOI2BB2X1 U5775 ( .B0(n5711), .B1(
        median_sobel_inst_u_median_filter_submodule_n236), .A0N(n4262), .A1N(
        n5217), .Y(n5218) );
  AOI21X4 U5776 ( .A0(n5936), .A1(n4274), .B0(n4414), .Y(n4413) );
  INVX3 U5777 ( .A(n3558), .Y(n4414) );
  NAND2X1 U5778 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n56), .Y(n6404) );
  INVX3 U5779 ( .A(n4263), .Y(n4282) );
  NAND2X6 U5780 ( .A(n4264), .B(n7097), .Y(n7392) );
  NAND2X4 U5781 ( .A(n7096), .B(n7098), .Y(n4264) );
  XOR2X4 U5782 ( .A(n4450), .B(n4963), .Y(n6258) );
  NAND2X4 U5783 ( .A(n4266), .B(n4265), .Y(n7096) );
  INVX3 U5784 ( .A(n1927), .Y(n4265) );
  OR2X8 U5785 ( .A(n4964), .B(n1984), .Y(n7391) );
  XOR2X4 U5786 ( .A(n3581), .B(n4954), .Y(n4964) );
  NAND2BX2 U5787 ( .AN(n4268), .B(
        median_sobel_inst_u_median_filter_submodule_n785), .Y(n4267) );
  INVX1 U5788 ( .A(median_sobel_inst_u_median_filter_submodule_net94786), .Y(
        n4268) );
  AOI21X2 U5789 ( .A0(n5188), .A1(
        median_sobel_inst_u_median_filter_submodule_n273), .B0(n4271), .Y(
        n4270) );
  NAND2X1 U5790 ( .A(n5186), .B(
        median_sobel_inst_u_median_filter_submodule_n1093), .Y(n4272) );
  NAND2X6 U5791 ( .A(n4710), .B(n4709), .Y(n4741) );
  NAND4X4 U5792 ( .A(n4708), .B(n4707), .C(n4706), .D(n4705), .Y(n4709) );
  INVX2 U5793 ( .A(median_sobel_inst_u_median_filter_submodule_net94922), .Y(
        n5185) );
  NAND2X2 U5794 ( .A(n4962), .B(n4961), .Y(n4963) );
  NAND2X4 U5795 ( .A(n4282), .B(n7393), .Y(n4968) );
  CLKINVX1 U5796 ( .A(median_sobel_inst_data_g_r[5]), .Y(n4495) );
  AND3X4 U5797 ( .A(n4657), .B(n4656), .C(n4655), .Y(n4658) );
  NAND2X1 U5798 ( .A(median_sobel_inst_u_median_filter_submodule_net96837), 
        .B(n4664), .Y(n4655) );
  NAND2X6 U5799 ( .A(n4968), .B(n4967), .Y(n7128) );
  NOR2BX4 U5800 ( .AN(n5703), .B(n3646), .Y(conv_inst_N2580) );
  XNOR2X4 U5801 ( .A(n5702), .B(n5701), .Y(n5703) );
  INVX6 U5802 ( .A(n5937), .Y(n4274) );
  OAI21X4 U5803 ( .A0(n5757), .A1(n3555), .B0(n5753), .Y(n5756) );
  CLKINVX1 U5804 ( .A(n7238), .Y(n7243) );
  NAND2X2 U5805 ( .A(n7281), .B(n7280), .Y(n7238) );
  CLKINVX1 U5806 ( .A(n4275), .Y(n4276) );
  NAND2X2 U5807 ( .A(n4304), .B(n6021), .Y(n5388) );
  NAND2X4 U5808 ( .A(n4981), .B(input_data_ready_r[12]), .Y(n7420) );
  NAND3BX2 U5809 ( .AN(n4277), .B(n4720), .C(n4719), .Y(n4722) );
  AND2X2 U5810 ( .A(n4718), .B(
        median_sobel_inst_u_median_filter_submodule_n790), .Y(n4277) );
  NAND2X4 U5811 ( .A(n4306), .B(n4965), .Y(n7394) );
  INVX3 U5812 ( .A(n7394), .Y(n4966) );
  CLKINVX1 U5813 ( .A(n5139), .Y(n5641) );
  NOR2X4 U5814 ( .A(conv_inst_n34), .B(n4292), .Y(n5139) );
  AOI22X1 U5815 ( .A0(n7232), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .B0(n7231), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .Y(n7233)
         );
  BUFX20 U5816 ( .A(n4934), .Y(n5348) );
  AOI22X4 U5817 ( .A0(median_sobel_inst_n55), .A1(n5890), .B0(n4319), .B1(
        n4523), .Y(n4791) );
  INVX6 U5818 ( .A(n5467), .Y(n4523) );
  XOR2X2 U5819 ( .A(n4978), .B(n4977), .Y(n4280) );
  INVX6 U5820 ( .A(median_sobel_inst_data_c_r[2]), .Y(n5757) );
  XOR2X4 U5821 ( .A(n5356), .B(n4281), .Y(conv_inst_data_bcd_w[7]) );
  CLKAND2X3 U5822 ( .A(n5355), .B(n7382), .Y(n4281) );
  OAI22X4 U5823 ( .A0(median_sobel_inst_n933), .A1(n5467), .B0(n7137), .B1(
        n4856), .Y(n4858) );
  AOI2BB2X2 U5824 ( .B0(n5784), .B1(median_sobel_inst_n142), .A0N(
        median_sobel_inst_n1161), .A1N(n7137), .Y(n4893) );
  OR2X4 U5825 ( .A(median_sobel_inst_n926), .B(n7137), .Y(n5009) );
  CLKINVX1 U5826 ( .A(median_sobel_inst_n982), .Y(n4432) );
  NAND3X4 U5827 ( .A(n4461), .B(n7382), .C(n4460), .Y(n4459) );
  AND2X4 U5828 ( .A(n5339), .B(n5338), .Y(n4283) );
  NAND2X4 U5829 ( .A(n5400), .B(n5754), .Y(n5404) );
  INVX3 U5830 ( .A(n6627), .Y(n5094) );
  NAND2X1 U5831 ( .A(n4720), .B(
        median_sobel_inst_u_median_filter_submodule_n260), .Y(n4698) );
  OR2X4 U5832 ( .A(median_sobel_inst_n413), .B(n5828), .Y(n5249) );
  NAND2X2 U5833 ( .A(n5393), .B(median_sobel_inst_data_c_r[1]), .Y(n5396) );
  XOR2X2 U5834 ( .A(n7414), .B(n4993), .Y(conv_inst_data_abc_w[7]) );
  AO21X4 U5835 ( .A0(n6335), .A1(n5376), .B0(n5375), .Y(n4285) );
  NAND4X2 U5836 ( .A(n5160), .B(n5159), .C(n5158), .D(n5157), .Y(
        median_sobel_inst_n978) );
  NAND2X1 U5837 ( .A(n5329), .B(median_sobel_inst_n121), .Y(n5159) );
  NAND3X2 U5838 ( .A(n4806), .B(n4807), .C(n4808), .Y(n4812) );
  AOI2BB2X2 U5839 ( .B0(median_sobel_inst_u_median_filter_submodule_net52732), 
        .B1(n4805), .A0N(median_sobel_inst_u_median_filter_submodule_n224), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net20521), .Y(n4807)
         );
  NAND2X1 U5840 ( .A(n4286), .B(
        median_sobel_inst_u_median_filter_submodule_n260), .Y(n4683) );
  NOR2X2 U5841 ( .A(n7364), .B(n7343), .Y(n7345) );
  AND2X4 U5842 ( .A(n5230), .B(n5227), .Y(n4436) );
  NAND3X4 U5843 ( .A(n4673), .B(n4672), .C(n4671), .Y(
        median_sobel_inst_data_i_r[0]) );
  NOR3X4 U5844 ( .A(n4585), .B(n4584), .C(n4583), .Y(n4586) );
  NAND3X2 U5845 ( .A(n7038), .B(n7037), .C(n7036), .Y(n1394) );
  OAI2BB1X2 U5846 ( .A0N(n7035), .A1N(n7034), .B0(n7033), .Y(n7036) );
  NAND2X1 U5847 ( .A(n5691), .B(median_sobel_inst_n118), .Y(n5016) );
  NAND2X2 U5848 ( .A(conv_inst_n44), .B(n7140), .Y(n5055) );
  NAND4BX2 U5849 ( .AN(median_sobel_inst_u_median_filter_submodule_net97853), 
        .B(n4682), .C(n4681), .D(n4689), .Y(n4694) );
  NAND3X2 U5850 ( .A(n4732), .B(n4731), .C(n4730), .Y(n4736) );
  OAI22X2 U5851 ( .A0(median_sobel_inst_data_h_r[2]), .A1(n4508), .B0(
        median_sobel_inst_n910), .B1(n5299), .Y(n4396) );
  AOI2BB2X2 U5852 ( .B0(n5454), .B1(n5453), .A0N(n5452), .A1N(n5900), .Y(n5684) );
  NAND3X4 U5853 ( .A(n7497), .B(n4369), .C(n4367), .Y(n7212) );
  OAI22X2 U5854 ( .A0(n4283), .A1(n3555), .B0(median_sobel_inst_data_i_r[1]), 
        .B1(n5393), .Y(n4534) );
  NAND2X2 U5855 ( .A(n5341), .B(n5760), .Y(n4535) );
  NAND2X2 U5856 ( .A(n5343), .B(n5340), .Y(n5341) );
  OR2X8 U5857 ( .A(n4965), .B(n4306), .Y(n7393) );
  INVX20 U5858 ( .A(n5587), .Y(n4934) );
  INVX20 U5859 ( .A(n4934), .Y(n5387) );
  NAND3X2 U5860 ( .A(n4771), .B(n4770), .C(n4769), .Y(n488) );
  OAI21X1 U5861 ( .A0(n4767), .A1(n7149), .B0(n4766), .Y(n4771) );
  XNOR2X4 U5862 ( .A(n5288), .B(n5287), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[7]) );
  AO21X4 U5863 ( .A0(n5283), .A1(n7123), .B0(n5282), .Y(n5288) );
  AOI21X2 U5864 ( .A0(n4641), .A1(n4348), .B0(n4643), .Y(n4347) );
  NOR2X2 U5865 ( .A(n4664), .B(
        median_sobel_inst_u_median_filter_submodule_b1_r[4]), .Y(n4348) );
  AOI22X2 U5866 ( .A0(n7785), .A1(median_sobel_inst_data_i_r[0]), .B0(
        median_sobel_inst_data_i_r[1]), .B1(n5393), .Y(n4533) );
  NAND2X1 U5867 ( .A(median_sobel_inst_n310), .B(n5691), .Y(n4677) );
  NAND2X2 U5868 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n94), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[0]), .Y(n6091) );
  NAND2X1 U5869 ( .A(n4799), .B(
        median_sobel_inst_u_median_filter_submodule_n209), .Y(n4800) );
  OAI21X2 U5870 ( .A0(n5818), .A1(n5166), .B0(n4362), .Y(
        median_sobel_inst_u_median_filter_submodule_net19699) );
  AOI2BB2X2 U5871 ( .B0(n5815), .B1(
        median_sobel_inst_u_median_filter_submodule_n136), .A0N(n3699), .A1N(
        n5165), .Y(n4362) );
  OAI21X1 U5872 ( .A0(n7426), .A1(cnt[0]), .B0(n7690), .Y(n5373) );
  OR2X8 U5873 ( .A(conv_inst_n42), .B(n7565), .Y(n5923) );
  OAI21X2 U5874 ( .A0(n7225), .A1(n7787), .B0(n6163), .Y(n489) );
  OAI21X1 U5875 ( .A0(n7228), .A1(n6162), .B0(n7787), .Y(n6163) );
  NAND2X6 U5876 ( .A(n5788), .B(n5889), .Y(n6161) );
  NAND2X2 U5877 ( .A(median_sobel_inst_u_median_filter_submodule_n792), .B(
        median_sobel_inst_u_median_filter_submodule_n143), .Y(n4701) );
  NAND3X2 U5878 ( .A(n7427), .B(n7429), .C(n7428), .Y(n7437) );
  AOI21X1 U5879 ( .A0(n6792), .A1(n6791), .B0(n6790), .Y(n6796) );
  NAND2X1 U5880 ( .A(n7141), .B(conv_inst_conv_2_r[7]), .Y(n5054) );
  INVX16 U5881 ( .A(n5061), .Y(n7141) );
  NAND2X2 U5882 ( .A(n4891), .B(n4884), .Y(n4886) );
  XNOR2X2 U5883 ( .A(n4449), .B(n4549), .Y(n4448) );
  AOI21X2 U5884 ( .A0(n6324), .A1(n4600), .B0(n4599), .Y(n4603) );
  NOR2X1 U5885 ( .A(n6770), .B(n6769), .Y(n6771) );
  NAND2BX4 U5886 ( .AN(n5920), .B(conv_inst_conv_1_r[11]), .Y(n5922) );
  NAND2X1 U5887 ( .A(n5510), .B(conv_inst_conv_1_r[11]), .Y(n5512) );
  CLKINVX1 U5888 ( .A(n7117), .Y(n4454) );
  NAND2X2 U5889 ( .A(n5371), .B(n7433), .Y(n5372) );
  NAND2X2 U5890 ( .A(n5890), .B(median_sobel_inst_n127), .Y(n4334) );
  INVX12 U5891 ( .A(n3758), .Y(n5890) );
  NAND2X2 U5892 ( .A(n5398), .B(median_sobel_inst_data_i_r[5]), .Y(n5345) );
  NAND2X4 U5893 ( .A(n4333), .B(median_sobel_inst_n1198), .Y(n4775) );
  NAND2X4 U5894 ( .A(n5920), .B(conv_inst_n252), .Y(n5921) );
  AO21X4 U5895 ( .A0(n5914), .A1(n5915), .B0(n5919), .Y(n5920) );
  OAI21X4 U5896 ( .A0(n7380), .A1(n5354), .B0(n5353), .Y(n5356) );
  AOI21X1 U5897 ( .A0(n7371), .A1(n7350), .B0(n7337), .Y(n7339) );
  INVX2 U5898 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n79), .Y(n5523) );
  NOR2X1 U5899 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n409), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[6]), .Y(n5029) );
  NAND2X2 U5900 ( .A(n4333), .B(median_sobel_inst_n80), .Y(n4335) );
  BUFX20 U5901 ( .A(n5387), .Y(n4333) );
  OAI21X2 U5902 ( .A0(n5281), .A1(n5280), .B0(n7124), .Y(n5282) );
  NOR2X4 U5903 ( .A(curr_state[0]), .B(n818), .Y(n4580) );
  AOI21X1 U5904 ( .A0(n7182), .A1(n6492), .B0(n6491), .Y(n6493) );
  INVX2 U5905 ( .A(n7121), .Y(n5281) );
  AOI22X1 U5906 ( .A0(n5185), .A1(
        median_sobel_inst_u_median_filter_submodule_n268), .B0(
        median_sobel_inst_u_median_filter_submodule_n780), .B1(
        median_sobel_inst_u_median_filter_submodule_net94827), .Y(n5184) );
  AOI2BB2X2 U5907 ( .B0(n5915), .B1(n5304), .A0N(n5448), .A1N(n5442), .Y(n4449) );
  NOR2X1 U5908 ( .A(n5447), .B(n5442), .Y(n5304) );
  NOR2BX2 U5909 ( .AN(n7365), .B(n7364), .Y(n7370) );
  INVX3 U5910 ( .A(n7367), .Y(n7364) );
  NAND2X6 U5911 ( .A(n4860), .B(n4859), .Y(median_sobel_inst_data_f_r[5]) );
  NAND2X2 U5912 ( .A(median_sobel_inst_n993), .B(n5691), .Y(n4860) );
  INVX1 U5913 ( .A(median_sobel_inst_n1091), .Y(n4856) );
  NAND3X2 U5914 ( .A(n7038), .B(n6967), .C(n6966), .Y(n1395) );
  OAI21X2 U5915 ( .A0(n6965), .A1(n6964), .B0(n6963), .Y(n6966) );
  AND2X4 U5916 ( .A(n1124), .B(n7497), .Y(n4578) );
  AOI21X2 U5917 ( .A0(n7121), .A1(n5006), .B0(n5005), .Y(n5007) );
  NAND3X4 U5918 ( .A(n4462), .B(n5355), .C(n7378), .Y(n4461) );
  AND2X4 U5919 ( .A(n5924), .B(n5923), .Y(conv_inst_N230) );
  NAND2BX2 U5920 ( .AN(median_sobel_inst_u_median_filter_submodule_net96795), 
        .B(median_sobel_inst_u_median_filter_submodule_net84882), .Y(n4418) );
  INVX6 U5921 ( .A(median_sobel_inst_data_f_r[1]), .Y(n5393) );
  OAI21X1 U5922 ( .A0(n5918), .A1(n5917), .B0(n5916), .Y(n5919) );
  CLKINVX1 U5923 ( .A(n5511), .Y(n5918) );
  XOR2X4 U5924 ( .A(n4459), .B(n4457), .Y(conv_inst_data_bcd_w[8]) );
  NOR2X2 U5925 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n5284) );
  AOI21X2 U5926 ( .A0(n5374), .A1(n5373), .B0(n7434), .Y(N815) );
  NAND2X2 U5927 ( .A(n5372), .B(n7428), .Y(n5374) );
  OAI21X4 U5928 ( .A0(n5936), .A1(n4274), .B0(n5940), .Y(n4415) );
  NOR2X4 U5929 ( .A(median_sobel_inst_n981), .B(n5935), .Y(n5936) );
  NOR2X4 U5930 ( .A(n5139), .B(n5141), .Y(n5630) );
  NAND2X1 U5931 ( .A(n7122), .B(n5006), .Y(n5008) );
  NAND3X2 U5932 ( .A(n4639), .B(n4351), .C(n4311), .Y(n4349) );
  NAND2X2 U5933 ( .A(n4353), .B(n4352), .Y(n4351) );
  OA22X2 U5934 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n84), .A1(
        n5519), .B0(median_sobel_inst_u_sobel_gradient_submodule_n404), .B1(
        n5523), .Y(n5520) );
  NAND2BX2 U5935 ( .AN(median_sobel_inst_u_median_filter_submodule_n96), .B(
        median_sobel_inst_u_median_filter_submodule_net52783), .Y(n4808) );
  NAND2X1 U5936 ( .A(median_sobel_inst_u_median_filter_submodule_net96588), 
        .B(n5187), .Y(n5189) );
  NOR2X4 U5937 ( .A(y_origin_r_2_), .B(n4364), .Y(n6116) );
  NOR2X1 U5938 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .Y(n6968) );
  NAND2X1 U5939 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n2), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n30), .Y(n7271) );
  NOR2X2 U5940 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .Y(n6971)
         );
  NOR2X2 U5941 ( .A(n7541), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n6861) );
  INVX6 U5942 ( .A(n6526), .Y(n6884) );
  NOR2X1 U5943 ( .A(n5448), .B(conv_inst_n19), .Y(n4565) );
  NOR2X1 U5944 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n434), .Y(n4994) );
  NAND2X1 U5945 ( .A(n4484), .B(median_sobel_inst_n983), .Y(n4483) );
  NAND2X2 U5946 ( .A(n4487), .B(n5937), .Y(n4486) );
  OAI22X2 U5947 ( .A0(median_sobel_inst_data_g_r[4]), .A1(n5934), .B0(n5937), 
        .B1(median_sobel_inst_n983), .Y(n4434) );
  NAND2X2 U5948 ( .A(n4349), .B(n4346), .Y(n4648) );
  OAI2BB1X1 U5949 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_n413), 
        .A1N(n5547), .B0(n5518), .Y(n5517) );
  NOR2X1 U5950 ( .A(n5555), .B(n5549), .Y(n5551) );
  OAI22X1 U5951 ( .A0(median_sobel_inst_u_median_filter_submodule_n118), .A1(
        n4821), .B0(median_sobel_inst_u_median_filter_submodule_n209), .B1(
        n4832), .Y(n4825) );
  NAND2X2 U5952 ( .A(n5206), .B(n4080), .Y(n5208) );
  INVX3 U5953 ( .A(median_sobel_inst_u_median_filter_submodule_n276), .Y(n5186) );
  NAND2X2 U5954 ( .A(n4884), .B(n4878), .Y(n4444) );
  NOR2X2 U5955 ( .A(n6399), .B(n6431), .Y(n7177) );
  CLKINVX1 U5956 ( .A(n4875), .Y(n4871) );
  INVX1 U5957 ( .A(n7403), .Y(n4990) );
  AOI2BB2X1 U5958 ( .B0(median_sobel_inst_u_median_filter_submodule_net52893), 
        .B1(n4821), .A0N(median_sobel_inst_u_median_filter_submodule_n1477), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n222), .Y(n4813) );
  OR2X2 U5959 ( .A(median_sobel_inst_u_median_filter_submodule_n971), .B(
        median_sobel_inst_u_median_filter_submodule_n773), .Y(n5191) );
  CLKINVX1 U5960 ( .A(median_sobel_inst_u_median_filter_submodule_net94165), 
        .Y(n4646) );
  INVX12 U5961 ( .A(n4363), .Y(n7449) );
  INVX3 U5962 ( .A(n5475), .Y(n4474) );
  AND2X4 U5963 ( .A(n5501), .B(n5475), .Y(n4507) );
  NAND2X1 U5964 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n432), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n6899) );
  OAI22X1 U5965 ( .A0(n5348), .A1(median_sobel_inst_n935), .B0(n5368), .B1(
        n5347), .Y(n5350) );
  NAND2X1 U5966 ( .A(n7591), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[14]), .Y(
        n7179) );
  OAI21X2 U5967 ( .A0(n6399), .A1(n6432), .B0(n6398), .Y(n7182) );
  INVX1 U5968 ( .A(n7177), .Y(n6401) );
  NOR2X2 U5969 ( .A(n7582), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .Y(
        n6399) );
  NAND2X1 U5970 ( .A(n7582), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[13]), .Y(
        n6398) );
  NAND2X1 U5971 ( .A(n7177), .B(n6492), .Y(n6494) );
  INVX1 U5972 ( .A(n7179), .Y(n6491) );
  INVX1 U5973 ( .A(n6970), .Y(n6909) );
  INVX3 U5974 ( .A(median_sobel_inst_u_median_filter_submodule_net96631), .Y(
        n4755) );
  NOR2X2 U5975 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n356), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n419), .Y(n6391) );
  INVX1 U5976 ( .A(n6849), .Y(n6850) );
  OAI22X2 U5977 ( .A0(median_sobel_inst_data_e_r[0]), .A1(n5298), .B0(n5492), 
        .B1(median_sobel_inst_data_e_r[1]), .Y(n4397) );
  CLKINVX2 U5978 ( .A(n7426), .Y(n4390) );
  AND2X1 U5979 ( .A(n7548), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[4]), .Y(n6875) );
  NOR2XL U5980 ( .A(n7218), .B(n2093), .Y(n6112) );
  INVX1 U5981 ( .A(n6117), .Y(n6111) );
  OA21XL U5982 ( .A0(n6117), .A1(n2093), .B0(n2028), .Y(n6118) );
  INVX3 U5983 ( .A(median_sobel_inst_u_median_filter_submodule_net97710), .Y(
        n5270) );
  INVX1 U5984 ( .A(n6554), .Y(n6556) );
  INVX1 U5985 ( .A(n7196), .Y(n7197) );
  NAND2X1 U5986 ( .A(n4029), .B(z_r[3]), .Y(n6996) );
  AND2X2 U5987 ( .A(n7008), .B(n7174), .Y(n7011) );
  OR2X2 U5988 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net94800), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .Y(n7298) );
  INVX1 U5989 ( .A(n4611), .Y(n6989) );
  INVX1 U5990 ( .A(n5429), .Y(n4601) );
  INVX1 U5991 ( .A(n6132), .Y(n6134) );
  INVX1 U5992 ( .A(n6180), .Y(n6182) );
  INVX1 U5993 ( .A(n5732), .Y(n4904) );
  INVX1 U5994 ( .A(n4905), .Y(n4907) );
  INVX1 U5995 ( .A(n6445), .Y(n4899) );
  AND3X4 U5996 ( .A(n5223), .B(n5224), .C(n5222), .Y(n5934) );
  NAND2X1 U5997 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n417), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n415), .Y(n6224) );
  INVXL U5998 ( .A(median_sobel_inst_u_median_filter_submodule_n888), .Y(n7247) );
  NOR2X2 U5999 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_net96945), .Y(n6646)
         );
  NOR2X2 U6000 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n433), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[2]), .Y(n6351) );
  NAND2X2 U6001 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[4]), .Y(n6970) );
  INVX1 U6002 ( .A(n6968), .Y(n6910) );
  INVX1 U6003 ( .A(n6638), .Y(n6516) );
  NOR2X1 U6004 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n62), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n507), .Y(n7135) );
  NAND2X2 U6005 ( .A(n6156), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .Y(n7163) );
  NOR2X2 U6006 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n78), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .Y(n6239) );
  NAND2X2 U6007 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[2]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[2]), .Y(n6242) );
  OR2X2 U6008 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n7367) );
  NAND2X4 U6009 ( .A(n6756), .B(n5829), .Y(n5833) );
  NOR2X1 U6010 ( .A(n5935), .B(median_sobel_inst_data_g_r[5]), .Y(n4437) );
  NAND2BX1 U6011 ( .AN(median_sobel_inst_n181), .B(n6688), .Y(n6686) );
  INVXL U6012 ( .A(n6468), .Y(n5799) );
  INVXL U6013 ( .A(n5800), .Y(n5802) );
  NAND2X4 U6014 ( .A(conv_inst_data_abc_3_r[4]), .B(conv_inst_conv_3_r[4]), 
        .Y(n5736) );
  INVX1 U6015 ( .A(n6332), .Y(n5840) );
  INVXL U6016 ( .A(n5841), .Y(n5843) );
  CLKINVX1 U6017 ( .A(conv_inst_data_abc_1_r[1]), .Y(n4361) );
  NAND2X1 U6018 ( .A(n4021), .B(z_r[4]), .Y(n6998) );
  NOR2X4 U6019 ( .A(n4372), .B(n4371), .Y(n6054) );
  NOR2BX1 U6020 ( .AN(n6051), .B(n4571), .Y(n4372) );
  INVX3 U6021 ( .A(n4576), .Y(n4367) );
  NAND2X1 U6022 ( .A(median_sobel_inst_n1336), .B(n5382), .Y(n4338) );
  NAND2X2 U6023 ( .A(n4337), .B(n4315), .Y(n4336) );
  NAND2XL U6024 ( .A(n6090), .B(n6089), .Y(n6092) );
  OAI2BB1X1 U6025 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7255), .B0(n7254), .Y(median_sobel_inst_u_sobel_gradient_submodule_N103) );
  NAND2XL U6026 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n402), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7282) );
  XOR2X1 U6027 ( .A(n5945), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net96945), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N127) );
  NAND2X2 U6028 ( .A(n5820), .B(
        median_sobel_inst_u_median_filter_submodule_n971), .Y(n5210) );
  XOR2X1 U6029 ( .A(n6865), .B(n6864), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[5]) );
  INVX1 U6030 ( .A(n6861), .Y(n6863) );
  OAI2BB1XL U6031 ( .A0N(n6506), .A1N(n6372), .B0(n6500), .Y(n6374) );
  NAND2X1 U6032 ( .A(n7426), .B(n2093), .Y(n7427) );
  OAI21XL U6033 ( .A0(n6087), .A1(n4321), .B0(n4420), .Y(
        median_sobel_inst_n532) );
  INVX1 U6034 ( .A(n6228), .Y(n6232) );
  NAND2XL U6035 ( .A(n6187), .B(n6561), .Y(n6188) );
  NAND2BX1 U6036 ( .AN(n4465), .B(median_sobel_inst_n1367), .Y(n4497) );
  NAND3X2 U6037 ( .A(n5011), .B(n5010), .C(n5009), .Y(median_sobel_inst_n707)
         );
  NAND2BX1 U6038 ( .AN(median_sobel_inst_n941), .B(n5784), .Y(n5011) );
  MX2X1 U6039 ( .A(n7666), .B(median_sobel_inst_G[43]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n106) );
  MX2X1 U6040 ( .A(n7669), .B(median_sobel_inst_G[30]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n115) );
  MX2X1 U6041 ( .A(n7642), .B(median_sobel_inst_G[29]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n114) );
  MX2X1 U6042 ( .A(n7645), .B(median_sobel_inst_G[22]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n107) );
  MX2X1 U6043 ( .A(n7654), .B(median_sobel_inst_G[32]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n117) );
  MX2X1 U6044 ( .A(n7638), .B(median_sobel_inst_G[17]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n124) );
  MX2X1 U6045 ( .A(n7649), .B(median_sobel_inst_G[21]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n128) );
  NAND2BX1 U6046 ( .AN(median_sobel_inst_n1155), .B(n5890), .Y(n5221) );
  OR2X2 U6047 ( .A(n4465), .B(median_sobel_inst_n927), .Y(n4913) );
  NOR2X1 U6048 ( .A(n6349), .B(conv_inst_n263), .Y(conv_inst_N208) );
  OAI2BB1X1 U6049 ( .A0N(n7292), .A1N(n7230), .B0(n7229), .Y(n480) );
  NAND2X1 U6050 ( .A(n7289), .B(cnt[4]), .Y(n7229) );
  NAND2XL U6051 ( .A(n7144), .B(curr_state[0]), .Y(n7146) );
  NOR2X4 U6052 ( .A(n5401), .B(median_sobel_inst_n135), .Y(n5407) );
  INVX3 U6053 ( .A(median_sobel_inst_data_c_r[1]), .Y(n5758) );
  NOR2XL U6054 ( .A(median_sobel_inst_u_median_filter_submodule_n277), .B(
        median_sobel_inst_u_median_filter_submodule_n792), .Y(n4690) );
  NAND3X2 U6055 ( .A(n4701), .B(
        median_sobel_inst_u_median_filter_submodule_net99899), .C(n7568), .Y(
        n4704) );
  NOR2X1 U6056 ( .A(n5546), .B(n5545), .Y(n5554) );
  INVXL U6057 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(n5564) );
  NOR2X2 U6058 ( .A(n7397), .B(n7403), .Y(n7405) );
  INVX1 U6059 ( .A(median_sobel_inst_u_sober_compare_submodule_net98026), .Y(
        n5856) );
  INVXL U6060 ( .A(median_sobel_inst_u_sober_compare_submodule_net105227), .Y(
        n5857) );
  INVXL U6061 ( .A(median_sobel_inst_u_sober_compare_submodule_n37), .Y(n5855)
         );
  INVX1 U6062 ( .A(median_sobel_inst_u_sober_compare_submodule_n332), .Y(n6607) );
  NAND4X2 U6063 ( .A(n5170), .B(n5169), .C(n5173), .D(n5171), .Y(n5178) );
  AOI2BB2X2 U6064 ( .B0(median_sobel_inst_u_median_filter_submodule_net97710), 
        .B1(n4638), .A0N(median_sobel_inst_u_median_filter_submodule_b1_r[3]), 
        .A1N(n4755), .Y(n4352) );
  NOR2X1 U6065 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n432), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[5]), .Y(n4929) );
  NAND2BX1 U6066 ( .AN(median_sobel_inst_n1160), .B(n6020), .Y(n5154) );
  INVX3 U6067 ( .A(median_sobel_inst_data_b_r[4]), .Y(n5501) );
  AND2X2 U6068 ( .A(median_sobel_inst_u_sober_compare_submodule_n11), .B(
        median_sobel_inst_u_sober_compare_submodule_n17), .Y(n6612) );
  OAI21X2 U6069 ( .A0(n5907), .A1(n5904), .B0(n5908), .Y(n5453) );
  NOR2X2 U6070 ( .A(n5757), .B(median_sobel_inst_data_f_r[2]), .Y(n4540) );
  INVX3 U6071 ( .A(median_sobel_inst_data_e_r[2]), .Y(n4508) );
  NAND3BX1 U6072 ( .AN(median_sobel_inst_u_median_filter_submodule_net97853), 
        .B(n4726), .C(n4728), .Y(n4732) );
  NAND3X1 U6073 ( .A(n4729), .B(
        median_sobel_inst_u_median_filter_submodule_net95319), .C(n4728), .Y(
        n4730) );
  INVX8 U6074 ( .A(curr_state[1]), .Y(n5656) );
  NAND4X1 U6075 ( .A(n6117), .B(n7497), .C(n4580), .D(n7131), .Y(n4581) );
  NAND2X2 U6076 ( .A(n4571), .B(n4369), .Y(n4368) );
  INVX3 U6077 ( .A(median_sobel_inst_data_f_r[5]), .Y(n5398) );
  CLKINVX1 U6078 ( .A(n5572), .Y(n5649) );
  CLKINVX1 U6079 ( .A(n4974), .Y(n4969) );
  NAND2X2 U6080 ( .A(n4466), .B(median_sobel_inst_n66), .Y(n4517) );
  NAND2X2 U6081 ( .A(n5956), .B(median_sobel_inst_n1091), .Y(n4515) );
  AOI21X1 U6082 ( .A0(n5862), .A1(n5849), .B0(n5848), .Y(n5850) );
  NOR2X2 U6083 ( .A(n6476), .B(n6473), .Y(n4383) );
  NAND2BX1 U6084 ( .AN(median_sobel_inst_n965), .B(n5382), .Y(n4666) );
  CLKINVX1 U6085 ( .A(median_sobel_inst_n432), .Y(n4406) );
  CLKINVX1 U6086 ( .A(n5934), .Y(n4405) );
  OAI2BB1X2 U6087 ( .A0N(n4347), .A1N(n4640), .B0(
        median_sobel_inst_u_median_filter_submodule_net97020), .Y(n4346) );
  OR2X2 U6088 ( .A(n4464), .B(median_sobel_inst_n1005), .Y(n4939) );
  OR2X2 U6089 ( .A(median_sobel_inst_n935), .B(n5828), .Y(n4944) );
  NOR2XL U6090 ( .A(n6404), .B(
        median_sobel_inst_u_median_filter_submodule_n910), .Y(n5747) );
  INVX1 U6091 ( .A(n5453), .Y(n4417) );
  NAND2BX2 U6092 ( .AN(n4310), .B(conv_inst_conv_3_r[10]), .Y(n5900) );
  CLKINVX1 U6093 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n430), .Y(
        n7280) );
  AND2X2 U6094 ( .A(median_sobel_inst_n115), .B(med_out_valid_w), .Y(n7256) );
  NAND2X1 U6095 ( .A(n6731), .B(n7638), .Y(n6671) );
  NAND2X1 U6096 ( .A(n6731), .B(n7657), .Y(n6691) );
  NAND2X1 U6097 ( .A(n6731), .B(n7636), .Y(n6675) );
  NOR2X1 U6098 ( .A(n4611), .B(n7583), .Y(n7107) );
  NAND2X1 U6099 ( .A(conv_inst_conv_2_r[13]), .B(conv_inst_conv_2_r[14]), .Y(
        n5481) );
  NOR2X1 U6100 ( .A(n5624), .B(n5481), .Y(n5482) );
  NAND2XL U6101 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n6813) );
  AND2X2 U6102 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[4]), .Y(n6530) );
  XOR2X1 U6103 ( .A(n7433), .B(n461), .Y(n7429) );
  INVXL U6104 ( .A(n7132), .Y(n4766) );
  OAI21X2 U6105 ( .A0(n5473), .A1(median_sobel_inst_data_h_r[4]), .B0(n5300), 
        .Y(n5297) );
  NOR2X4 U6106 ( .A(n5674), .B(n4772), .Y(n7434) );
  NAND2X1 U6107 ( .A(conv_inst_n184), .B(n4216), .Y(n5052) );
  NAND2X1 U6108 ( .A(input_data_ready_r[23]), .B(n4892), .Y(n7384) );
  NOR2X4 U6109 ( .A(n4892), .B(input_data_ready_r[23]), .Y(n7383) );
  INVX4 U6110 ( .A(median_sobel_inst_u_median_filter_submodule_n235), .Y(n4664) );
  NAND2XL U6111 ( .A(curr_state[0]), .B(n818), .Y(n6050) );
  INVXL U6112 ( .A(n5410), .Y(n5144) );
  NAND2X1 U6113 ( .A(n5329), .B(median_sobel_inst_n86), .Y(n5232) );
  NAND2X2 U6114 ( .A(n5454), .B(n5451), .Y(n5683) );
  NAND2X1 U6115 ( .A(n6731), .B(n7650), .Y(n6724) );
  NAND2X1 U6116 ( .A(n452), .B(n453), .Y(n7208) );
  NAND2X1 U6117 ( .A(n6651), .B(n7651), .Y(n6652) );
  CLKINVX1 U6118 ( .A(n6866), .Y(n7185) );
  NAND2X1 U6119 ( .A(n3749), .B(conv_inst_conv_2_r[14]), .Y(n5048) );
  INVX1 U6120 ( .A(n3610), .Y(n5978) );
  BUFX2 U6121 ( .A(n2113), .Y(n4324) );
  NAND2X1 U6122 ( .A(n5596), .B(median_sobel_inst_n1090), .Y(n5227) );
  AND3X2 U6123 ( .A(n4669), .B(n4670), .C(n4668), .Y(n5394) );
  OR2X2 U6124 ( .A(n4465), .B(median_sobel_inst_n51), .Y(n4669) );
  NAND2X1 U6125 ( .A(n6651), .B(n7639), .Y(n6619) );
  NOR2XL U6126 ( .A(n6799), .B(
        median_sobel_inst_u_median_filter_submodule_n871), .Y(n4760) );
  OAI21X2 U6127 ( .A0(n6752), .A1(n6751), .B0(n6837), .Y(n7189) );
  NAND2BX2 U6128 ( .AN(median_sobel_inst_u_median_filter_submodule_n876), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .Y(n6473) );
  NAND2BX2 U6129 ( .AN(median_sobel_inst_u_median_filter_submodule_n888), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .Y(n6477) );
  OR2X2 U6130 ( .A(n4464), .B(median_sobel_inst_n39), .Y(n4510) );
  NAND2X2 U6131 ( .A(n5382), .B(median_sobel_inst_n142), .Y(n4438) );
  NAND2X1 U6132 ( .A(median_sobel_inst_n118), .B(n6019), .Y(n5290) );
  NAND2X1 U6133 ( .A(n6684), .B(median_sobel_inst_n147), .Y(n5246) );
  NAND2X1 U6134 ( .A(n6021), .B(median_sobel_inst_n76), .Y(n4493) );
  NAND2X1 U6135 ( .A(median_sobel_inst_n324), .B(n5691), .Y(n5325) );
  AOI2BB2X2 U6136 ( .B0(n5956), .B1(median_sobel_inst_n138), .A0N(n5828), 
        .A1N(median_sobel_inst_n932), .Y(n4491) );
  BUFX16 U6137 ( .A(n5329), .Y(n5691) );
  BUFX20 U6138 ( .A(n4001), .Y(n5892) );
  BUFX20 U6139 ( .A(n5691), .Y(n5839) );
  CLKBUFX8 U6140 ( .A(n5156), .Y(n5891) );
  CLKINVX1 U6141 ( .A(input_data_ready_r[22]), .Y(n5977) );
  INVX1 U6142 ( .A(input_data_ready_r[0]), .Y(n5981) );
  INVX1 U6143 ( .A(n5907), .Y(n5909) );
  OR2X2 U6144 ( .A(n5918), .B(n5512), .Y(n5514) );
  NAND2X2 U6145 ( .A(n4564), .B(n5509), .Y(n5447) );
  NAND2X1 U6146 ( .A(conv_inst_conv_1_r[13]), .B(conv_inst_conv_1_r[14]), .Y(
        n5442) );
  NAND2X4 U6147 ( .A(n7141), .B(conv_inst_n25), .Y(n5979) );
  NAND2X2 U6148 ( .A(n5791), .B(n5790), .Y(n5794) );
  NAND2X1 U6149 ( .A(n4021), .B(y_r[2]), .Y(n6928) );
  NAND2X1 U6150 ( .A(n4021), .B(n2024), .Y(n7004) );
  NAND2X1 U6151 ( .A(n4021), .B(n2018), .Y(n6994) );
  NAND2X1 U6152 ( .A(n4021), .B(z_r[1]), .Y(n7000) );
  NAND2XL U6153 ( .A(n6100), .B(n5889), .Y(n7132) );
  NAND2X1 U6154 ( .A(n4021), .B(y_r[0]), .Y(n6992) );
  NAND2X1 U6155 ( .A(n4021), .B(z_r[0]), .Y(n6930) );
  NOR2X1 U6156 ( .A(conv_inst_n313), .B(n6430), .Y(conv_inst_N207) );
  INVX1 U6157 ( .A(median_sobel_inst_u_median_filter_submodule_net52893), .Y(
        n5165) );
  NOR2BX2 U6158 ( .AN(n5377), .B(n6797), .Y(conv_inst_N2490) );
  OAI22XL U6159 ( .A0(n1950), .A1(n7323), .B0(n1968), .B1(n7322), .Y(n7307) );
  INVX1 U6160 ( .A(n6383), .Y(n6385) );
  NAND2X1 U6161 ( .A(n7092), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .Y(n6973) );
  NAND2X1 U6162 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[1]), .Y(n6975) );
  NAND2X1 U6163 ( .A(n7091), .B(n7648), .Y(n6974) );
  AND2X2 U6164 ( .A(n5648), .B(n5923), .Y(conv_inst_N274) );
  NAND2XL U6165 ( .A(n5645), .B(n5644), .Y(n5646) );
  NAND2BX1 U6166 ( .AN(n5301), .B(n5506), .Y(n5479) );
  INVX1 U6167 ( .A(n7210), .Y(n7211) );
  NOR2X1 U6168 ( .A(n6690), .B(n5880), .Y(median_sobel_inst_N114) );
  OAI21XL U6169 ( .A0(median_sobel_inst_u_median_filter_submodule_n864), .A1(
        n7234), .B0(n6441), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[5]) );
  OAI21XL U6170 ( .A0(n6345), .A1(
        median_sobel_inst_u_median_filter_submodule_n852), .B0(n5597), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[1]) );
  INVX1 U6171 ( .A(n6399), .Y(n6395) );
  NAND2XL U6172 ( .A(n6437), .B(n6436), .Y(n6438) );
  AOI2BB1X1 U6173 ( .A0N(n7462), .A1N(n7461), .B0(n7473), .Y(N746) );
  AOI2BB1X1 U6174 ( .A0N(n7455), .A1N(n7454), .B0(n7473), .Y(N747) );
  XNOR2X1 U6175 ( .A(n7111), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[11]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N158) );
  AOI21X1 U6176 ( .A0(n6987), .A1(n7110), .B0(n7109), .Y(n7111) );
  OAI22XL U6177 ( .A0(n1966), .A1(n7470), .B0(n1942), .B1(n7469), .Y(n7445) );
  NAND2X1 U6178 ( .A(n6729), .B(n7662), .Y(n6673) );
  NAND2X1 U6179 ( .A(n6730), .B(n7644), .Y(n6672) );
  NAND2X1 U6180 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n283), .Y(n6674) );
  NAND2X1 U6181 ( .A(n6729), .B(
        median_sobel_inst_u_sober_compare_submodule_n199), .Y(n6693) );
  NAND2X1 U6182 ( .A(n6730), .B(n7669), .Y(n6692) );
  NAND2X1 U6183 ( .A(n6729), .B(n7660), .Y(n6677) );
  NAND2X1 U6184 ( .A(n6730), .B(n7642), .Y(n6676) );
  NAND2X1 U6185 ( .A(n6730), .B(n7643), .Y(n6680) );
  NAND2X1 U6186 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n296), .Y(n6682) );
  NAND2X1 U6187 ( .A(n6731), .B(n7637), .Y(n6679) );
  OAI21XL U6188 ( .A0(median_sobel_inst_u_median_filter_submodule_n913), .A1(
        n7160), .B0(n6408), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[5]) );
  OAI21XL U6189 ( .A0(median_sobel_inst_u_median_filter_submodule_n873), .A1(
        n7234), .B0(n6442), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[3]) );
  INVX1 U6190 ( .A(n6566), .Y(n6154) );
  OAI21XL U6191 ( .A0(n6159), .A1(n7162), .B0(n6158), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N123) );
  INVX1 U6192 ( .A(n6156), .Y(n6159) );
  NAND2XL U6193 ( .A(n6157), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .Y(n6158) );
  NAND2XL U6194 ( .A(n6911), .B(n6969), .Y(n6912) );
  AOI21X1 U6195 ( .A0(n7172), .A1(n6910), .B0(n6909), .Y(n6913) );
  INVX1 U6196 ( .A(n6971), .Y(n6911) );
  NAND2X1 U6197 ( .A(n7092), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .Y(n6943) );
  NAND2X1 U6198 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[4]), .Y(n6945) );
  NAND2X1 U6199 ( .A(n7091), .B(n7634), .Y(n6944) );
  OAI21XL U6200 ( .A0(median_sobel_inst_u_median_filter_submodule_n914), .A1(
        n7160), .B0(n6487), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[6]) );
  INVXL U6201 ( .A(n6391), .Y(n6074) );
  INVX1 U6202 ( .A(n6823), .Y(n6713) );
  OAI2BB1X1 U6203 ( .A0N(n4366), .A1N(n1956), .B0(n7116), .Y(N788) );
  OAI2BB1X1 U6204 ( .A0N(n4366), .A1N(cnt[9]), .B0(n7115), .Y(N791) );
  AOI21X2 U6205 ( .A0(n7123), .A1(n6851), .B0(n6850), .Y(n6856) );
  AOI2BB1X1 U6206 ( .A0N(n7475), .A1N(n7474), .B0(n7473), .Y(N743) );
  NAND2X1 U6207 ( .A(n6719), .B(
        median_sobel_inst_u_sober_compare_submodule_n278), .Y(n6720) );
  NAND2X1 U6208 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n279), .Y(n6723) );
  AOI2BB1X1 U6209 ( .A0N(n7464), .A1N(n7463), .B0(n7473), .Y(N745) );
  OAI2BB1X1 U6210 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7270), .B0(n7269), .Y(median_sobel_inst_u_sobel_gradient_submodule_N105) );
  NAND2X1 U6211 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[5]), .Y(n6948) );
  NAND2X1 U6212 ( .A(n7091), .B(n7632), .Y(n6947) );
  OAI21XL U6213 ( .A0(x_plus_one_r_2_), .A1(n7030), .B0(n7029), .Y(n7034) );
  NAND2BX2 U6214 ( .AN(n7308), .B(n4445), .Y(N727) );
  MX2X1 U6215 ( .A(median_sobel_inst_n94), .B(n7525), .S0(n6087), .Y(
        median_sobel_inst_n638) );
  AND2X2 U6216 ( .A(n5462), .B(n5461), .Y(n5463) );
  NAND2X2 U6217 ( .A(n4454), .B(n4462), .Y(n4453) );
  XNOR2X1 U6218 ( .A(n7127), .B(n7126), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[6]) );
  AOI2BB1X1 U6219 ( .A0N(n7468), .A1N(n7467), .B0(n7473), .Y(N741) );
  AOI2BB1X1 U6220 ( .A0N(n7453), .A1N(n7452), .B0(n7473), .Y(N744) );
  AOI2BB1X1 U6221 ( .A0N(n7451), .A1N(n7450), .B0(n7473), .Y(N742) );
  XOR2X1 U6222 ( .A(n6881), .B(n6880), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[5]) );
  INVX1 U6223 ( .A(n6877), .Y(n6879) );
  OAI21XL U6224 ( .A0(median_sobel_inst_u_median_filter_submodule_n916), .A1(
        n7160), .B0(n6490), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[0]) );
  NOR2X1 U6225 ( .A(n7488), .B(n7491), .Y(n7489) );
  OAI21XL U6226 ( .A0(n6345), .A1(n7630), .B0(n5592), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[3]) );
  NOR2XL U6227 ( .A(n7141), .B(n7140), .Y(n7142) );
  AO21X1 U6228 ( .A0(n7392), .A1(n7391), .B0(n7390), .Y(n7396) );
  NAND2X1 U6229 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[3]), .Y(n7018) );
  AND2X2 U6230 ( .A(n7384), .B(n4458), .Y(n4457) );
  OAI2BB1X1 U6231 ( .A0N(n7279), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[1]), .B0(n7252), .Y(
        median_sobel_inst_u_median_filter_submodule_a6[1]) );
  NAND4XL U6232 ( .A(n6049), .B(n6048), .C(n6047), .D(n6046), .Y(n1391) );
  OAI2BB1X1 U6233 ( .A0N(n6045), .A1N(n6050), .B0(n6044), .Y(n6046) );
  NAND2XL U6234 ( .A(i_op_valid), .B(n6755), .Y(n6049) );
  OAI22XL U6235 ( .A0(conv_inst_n259), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n260), .Y(conv_inst_N201) );
  NAND2X1 U6236 ( .A(n6836), .B(n6751), .Y(n6463) );
  NAND2XL U6237 ( .A(n6218), .B(n6546), .Y(n6219) );
  OAI2BB1X1 U6238 ( .A0N(n6462), .A1N(n6337), .B0(n6458), .Y(n6340) );
  NAND2X1 U6239 ( .A(n7092), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .Y(n6937) );
  NAND2X1 U6240 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[2]), .Y(n6939) );
  NAND2X1 U6241 ( .A(n7091), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[2]), .Y(n6938) );
  NAND2XL U6242 ( .A(n6556), .B(n6555), .Y(n6557) );
  OAI2BB1X1 U6243 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n5092), .B0(n5091), .Y(median_sobel_inst_u_sobel_gradient_submodule_N106) );
  OAI21XL U6244 ( .A0(n6545), .A1(
        median_sobel_inst_u_median_filter_submodule_n861), .B0(n6142), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[6]) );
  OAI21XL U6245 ( .A0(median_sobel_inst_u_median_filter_submodule_n890), .A1(
        n6264), .B0(n6237), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[1]) );
  NOR2X1 U6246 ( .A(n7258), .B(n7693), .Y(out_data_wait_r[13]) );
  NOR2X1 U6247 ( .A(n7258), .B(n7723), .Y(out_data_wait_r[12]) );
  NOR2X1 U6248 ( .A(n7258), .B(n7722), .Y(out_data_wait_r[11]) );
  MX2X1 U6249 ( .A(n6346), .B(median_sobel_inst_n78), .S0(n6137), .Y(
        median_sobel_inst_n543) );
  NAND2X1 U6250 ( .A(n6729), .B(n7666), .Y(n6734) );
  NAND2X1 U6251 ( .A(n6730), .B(n7654), .Y(n6733) );
  NAND2X1 U6252 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n291), .Y(n6735) );
  NAND2X1 U6253 ( .A(n6410), .B(n6409), .Y(n6412) );
  MXI2X1 U6254 ( .A(n2075), .B(median_sobel_inst_n206), .S0(n5964), .Y(
        median_sobel_inst_med_sobel_e_wait_r[0]) );
  OAI21XL U6255 ( .A0(n4465), .A1(n7685), .B0(n4471), .Y(
        median_sobel_inst_n1420) );
  NAND2BX1 U6256 ( .AN(median_sobel_inst_n210), .B(n4465), .Y(n4471) );
  MXI2X1 U6257 ( .A(n5981), .B(median_sobel_inst_n182), .S0(n5828), .Y(
        median_sobel_inst_n1416) );
  OAI21XL U6258 ( .A0(n4465), .A1(n7682), .B0(n4469), .Y(
        median_sobel_inst_n1410) );
  NAND2BX1 U6259 ( .AN(median_sobel_inst_n188), .B(n4465), .Y(n4469) );
  OAI21XL U6260 ( .A0(n4465), .A1(n7702), .B0(n4470), .Y(
        median_sobel_inst_n1436) );
  NAND2BX1 U6261 ( .AN(median_sobel_inst_n222), .B(n4465), .Y(n4470) );
  MXI2X1 U6262 ( .A(n6569), .B(median_sobel_inst_n223), .S0(n5828), .Y(
        median_sobel_inst_n1434) );
  MXI2X1 U6263 ( .A(n2111), .B(median_sobel_inst_n217), .S0(n5964), .Y(
        median_sobel_inst_med_sobel_e_wait_r[2]) );
  MXI2X1 U6264 ( .A(n7498), .B(median_sobel_inst_n221), .S0(n5964), .Y(
        median_sobel_inst_n1425) );
  NAND2X1 U6265 ( .A(n6177), .B(n6242), .Y(n6178) );
  AND2X2 U6266 ( .A(conv_inst_n42), .B(conv_inst_n76), .Y(n5897) );
  AND2X2 U6267 ( .A(n5622), .B(n5923), .Y(conv_inst_N228) );
  AOI21X2 U6268 ( .A0(n5915), .A1(n5836), .B0(n5616), .Y(n5621) );
  INVX1 U6269 ( .A(n6260), .Y(n6262) );
  NOR2BX1 U6270 ( .AN(n4604), .B(n6797), .Y(conv_inst_N2600) );
  NOR2BX1 U6271 ( .AN(n5595), .B(n6330), .Y(conv_inst_N223) );
  NAND2XL U6272 ( .A(n5733), .B(n5732), .Y(n5734) );
  NOR2BX1 U6273 ( .AN(n4910), .B(n6797), .Y(conv_inst_N241) );
  NAND2XL U6274 ( .A(n4907), .B(n4906), .Y(n4908) );
  NAND2XL U6275 ( .A(n4899), .B(n6444), .Y(n4900) );
  MXI2X1 U6276 ( .A(n7501), .B(median_sobel_inst_n269), .S0(n5891), .Y(
        median_sobel_inst_n1467) );
  MXI2X1 U6277 ( .A(n7505), .B(n7697), .S0(n5891), .Y(median_sobel_inst_n1484)
         );
  MXI2X1 U6278 ( .A(n7498), .B(n7703), .S0(n5955), .Y(median_sobel_inst_n1454)
         );
  MXI2X1 U6279 ( .A(n7509), .B(median_sobel_inst_n211), .S0(n5964), .Y(
        median_sobel_inst_n1419) );
  MXI2X1 U6280 ( .A(n7501), .B(median_sobel_inst_n189), .S0(n5964), .Y(
        median_sobel_inst_n1409) );
  MXI2X1 U6281 ( .A(n7505), .B(median_sobel_inst_n228), .S0(n5828), .Y(
        median_sobel_inst_n1426) );
  OAI21XL U6282 ( .A0(n4465), .A1(n7691), .B0(n4467), .Y(
        median_sobel_inst_n1430) );
  NAND2BX1 U6283 ( .AN(median_sobel_inst_n226), .B(n4465), .Y(n4467) );
  MXI2X1 U6284 ( .A(n2073), .B(median_sobel_inst_n185), .S0(n5964), .Y(
        median_sobel_inst_n1413) );
  MXI2X1 U6285 ( .A(n1975), .B(median_sobel_inst_n964), .S0(n5964), .Y(
        median_sobel_inst_n1432) );
  MXI2X1 U6286 ( .A(n1975), .B(median_sobel_inst_n257), .S0(n5955), .Y(
        median_sobel_inst_n1461) );
  MXI2X1 U6287 ( .A(median_sobel_inst_n212), .B(n7670), .S0(n5784), .Y(
        median_sobel_inst_n1418) );
  OAI21XL U6288 ( .A0(n4465), .A1(n7680), .B0(n4468), .Y(
        median_sobel_inst_n1428) );
  NAND2BX1 U6289 ( .AN(median_sobel_inst_n227), .B(n4465), .Y(n4468) );
  OR2X2 U6290 ( .A(n5697), .B(n5696), .Y(n5702) );
  OAI22XL U6291 ( .A0(conv_inst_n260), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n261), .Y(conv_inst_N202) );
  OAI21XL U6292 ( .A0(n6545), .A1(
        median_sobel_inst_u_median_filter_submodule_n912), .B0(n6144), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[4]) );
  OAI21XL U6293 ( .A0(median_sobel_inst_u_median_filter_submodule_n862), .A1(
        n6545), .B0(n6481), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[3]) );
  NOR2BX1 U6294 ( .AN(n5267), .B(n6797), .Y(conv_inst_N226) );
  MX2X1 U6295 ( .A(n7622), .B(median_sobel_inst_n145), .S0(n6137), .Y(
        median_sobel_inst_n563) );
  NOR2BX1 U6296 ( .AN(n6336), .B(n3646), .Y(conv_inst_N244) );
  NAND2X1 U6297 ( .A(n6333), .B(n6332), .Y(n6334) );
  OAI22XL U6298 ( .A0(conv_inst_n265), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n310), .Y(conv_inst_N211) );
  OAI21XL U6299 ( .A0(n6264), .A1(
        median_sobel_inst_u_median_filter_submodule_n1502), .B0(n6215), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[5]) );
  OAI21XL U6300 ( .A0(median_sobel_inst_u_median_filter_submodule_n874), .A1(
        n6345), .B0(n6241), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[2]) );
  NAND2BX1 U6301 ( .AN(median_sobel_inst_n916), .B(n5382), .Y(n4792) );
  OAI21XL U6302 ( .A0(n5833), .A1(
        median_sobel_inst_u_median_filter_submodule_n858), .B0(n5590), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[2]) );
  OAI21XL U6303 ( .A0(n6545), .A1(
        median_sobel_inst_u_median_filter_submodule_n917), .B0(n6141), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[1]) );
  AND2X2 U6304 ( .A(n6015), .B(median_sobel_inst_u_sober_compare_submodule_n34), .Y(median_sobel_inst_u_sober_compare_submodule_N1220) );
  AND2X2 U6305 ( .A(n6015), .B(median_sobel_inst_u_sober_compare_submodule_n30), .Y(median_sobel_inst_u_sober_compare_submodule_N1190) );
  OAI22XL U6306 ( .A0(median_sobel_inst_u_sober_compare_submodule_n300), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n319), .Y(n6014) );
  OAI22XL U6307 ( .A0(median_sobel_inst_u_sober_compare_submodule_n71), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n320), .Y(n5998) );
  OAI22XL U6308 ( .A0(median_sobel_inst_u_sober_compare_submodule_n303), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n321), .Y(n6004) );
  OAI22XL U6309 ( .A0(median_sobel_inst_u_sober_compare_submodule_n301), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n318), .Y(n5989) );
  OAI22XL U6310 ( .A0(median_sobel_inst_u_sober_compare_submodule_n66), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n312), .Y(n5995) );
  OAI22XL U6311 ( .A0(median_sobel_inst_u_sober_compare_submodule_n70), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n311), .Y(n5992) );
  OAI22XL U6312 ( .A0(median_sobel_inst_u_sober_compare_submodule_n68), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n313), .Y(n6007) );
  MX2X1 U6313 ( .A(n7637), .B(median_sobel_inst_G[16]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n123) );
  AND2X2 U6314 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_n338), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1240) );
  AND2X2 U6315 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_net98026), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1170) );
  AND2X2 U6316 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_net105227), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1180) );
  AND2X2 U6317 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_net101609), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1200) );
  AND2X2 U6318 ( .A(n6015), .B(median_sobel_inst_u_sober_compare_submodule_n22), .Y(median_sobel_inst_u_sober_compare_submodule_N1210) );
  AND2X2 U6319 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_net99802), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1230) );
  OAI2BB1X1 U6320 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7266), .B0(n7265), .Y(median_sobel_inst_u_sobel_gradient_submodule_N102) );
  INVX1 U6321 ( .A(n6026), .Y(n6028) );
  NAND2XL U6322 ( .A(n6362), .B(n6361), .Y(n6363) );
  AND2X2 U6323 ( .A(n6337), .B(n6458), .Y(n6190) );
  INVX1 U6324 ( .A(n6389), .Y(n6065) );
  XOR2X1 U6325 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n62), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n507), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N167) );
  XOR2X1 U6326 ( .A(n5600), .B(n6041), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N148) );
  NAND2X1 U6327 ( .A(n7174), .B(n7173), .Y(n7175) );
  INVX1 U6328 ( .A(n6778), .Y(n6780) );
  INVX1 U6329 ( .A(n6509), .Y(n6488) );
  INVX1 U6330 ( .A(n6642), .Y(n6515) );
  AOI21X2 U6331 ( .A0(n7371), .A1(n7370), .B0(n7369), .Y(n7375) );
  INVX1 U6332 ( .A(n6506), .Y(n6172) );
  INVX1 U6333 ( .A(n6573), .Y(n6575) );
  NAND2X1 U6334 ( .A(n7163), .B(n7162), .Y(n7165) );
  NAND2XL U6335 ( .A(n6512), .B(n6511), .Y(n6513) );
  INVXL U6336 ( .A(n6510), .Y(n6512) );
  NAND2XL U6337 ( .A(n6084), .B(n6083), .Y(n6086) );
  INVX1 U6338 ( .A(n6082), .Y(n6084) );
  XNOR2X1 U6339 ( .A(n7371), .B(n7352), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[4]) );
  NAND2X1 U6340 ( .A(n7351), .B(n7350), .Y(n7352) );
  NAND2XL U6341 ( .A(n3577), .B(n7134), .Y(n7136) );
  NAND2X1 U6342 ( .A(n6068), .B(n6067), .Y(n6070) );
  INVX1 U6343 ( .A(n6431), .Y(n6433) );
  NAND2X1 U6344 ( .A(n7367), .B(n7366), .Y(n7354) );
  XNOR2X2 U6345 ( .A(n5682), .B(
        median_sobel_inst_u_sobel_gradient_submodule_net96945), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N141) );
  OAI21XL U6346 ( .A0(median_sobel_inst_u_median_filter_submodule_n1497), .A1(
        n6545), .B0(n6544), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[0]) );
  AOI21X2 U6347 ( .A0(median_sobel_inst_n1066), .A1(n5956), .B0(n5148), .Y(
        n5149) );
  NAND2X2 U6348 ( .A(n4394), .B(n5247), .Y(median_sobel_inst_data_e_r[6]) );
  NAND2X1 U6349 ( .A(median_sobel_inst_n59), .B(n6021), .Y(n5247) );
  AND3X4 U6350 ( .A(n5246), .B(n5248), .C(n5249), .Y(n4394) );
  NAND2X1 U6351 ( .A(median_sobel_inst_n72), .B(n5387), .Y(n5248) );
  NAND2X2 U6352 ( .A(n4466), .B(median_sobel_inst_n85), .Y(n4845) );
  OAI21XL U6353 ( .A0(median_sobel_inst_u_median_filter_submodule_n870), .A1(
        n6345), .B0(n6344), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[6]) );
  OAI21XL U6354 ( .A0(median_sobel_inst_u_median_filter_submodule_n871), .A1(
        n7160), .B0(n5603), .Y(
        median_sobel_inst_u_median_filter_submodule_a8[7]) );
  NOR3X2 U6355 ( .A(n4434), .B(n4437), .C(n5239), .Y(n5245) );
  OAI21XL U6356 ( .A0(median_sobel_inst_u_median_filter_submodule_n888), .A1(
        n6264), .B0(n6173), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[4]) );
  OAI21XL U6357 ( .A0(median_sobel_inst_u_median_filter_submodule_n869), .A1(
        n7234), .B0(n6669), .Y(
        median_sobel_inst_u_median_filter_submodule_a7[0]) );
  MX2X1 U6358 ( .A(median_sobel_inst_sobel_data_w[9]), .B(
        median_sobel_inst_G[42]), .S0(n5828), .Y(median_sobel_inst_n475) );
  MX2X1 U6359 ( .A(median_sobel_inst_sobel_data_w[6]), .B(
        median_sobel_inst_G[39]), .S0(n5964), .Y(median_sobel_inst_n487) );
  MX2X1 U6360 ( .A(median_sobel_inst_sobel_data_w[4]), .B(
        median_sobel_inst_G[37]), .S0(n5964), .Y(median_sobel_inst_n495) );
  MX2X1 U6361 ( .A(median_sobel_inst_sobel_data_w[5]), .B(
        median_sobel_inst_G[38]), .S0(n5828), .Y(median_sobel_inst_n491) );
  MX2X1 U6362 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[40]), .S0(n5964), .Y(median_sobel_inst_n483) );
  MX2X1 U6363 ( .A(median_sobel_inst_sobel_data_w[1]), .B(
        median_sobel_inst_G[34]), .S0(n5964), .Y(median_sobel_inst_n507) );
  MX2X1 U6364 ( .A(median_sobel_inst_sobel_data_w[2]), .B(
        median_sobel_inst_G[35]), .S0(n5964), .Y(median_sobel_inst_n503) );
  MX2X1 U6365 ( .A(median_sobel_inst_sobel_data_w[3]), .B(
        median_sobel_inst_G[36]), .S0(n5964), .Y(median_sobel_inst_n499) );
  MXI2X1 U6366 ( .A(n7680), .B(median_sobel_inst_n922), .S0(n6137), .Y(n7506)
         );
  MXI2X1 U6367 ( .A(median_sobel_inst_n941), .B(median_sobel_inst_n183), .S0(
        n6087), .Y(n7611) );
  MXI2X1 U6368 ( .A(n7681), .B(median_sobel_inst_n1168), .S0(n6137), .Y(n7515)
         );
  MXI2X1 U6369 ( .A(n7674), .B(median_sobel_inst_n1155), .S0(n6137), .Y(n7507)
         );
  MXI2X1 U6370 ( .A(median_sobel_inst_n917), .B(n3609), .S0(n6087), .Y(n7595)
         );
  MXI2X1 U6371 ( .A(n7682), .B(median_sobel_inst_n1167), .S0(n6137), .Y(n7516)
         );
  MXI2X1 U6372 ( .A(median_sobel_inst_n928), .B(median_sobel_inst_n232), .S0(
        n6087), .Y(n7596) );
  MXI2X1 U6373 ( .A(median_sobel_inst_n927), .B(median_sobel_inst_n230), .S0(
        n6087), .Y(n7603) );
  NOR2X1 U6374 ( .A(n6690), .B(n5912), .Y(median_sobel_inst_N113) );
  NAND2X1 U6375 ( .A(n5721), .B(median_sobel_inst_n1086), .Y(n5723) );
  MXI2X1 U6376 ( .A(median_sobel_inst_n1160), .B(n7668), .S0(n6087), .Y(n7517)
         );
  MXI2X1 U6377 ( .A(median_sobel_inst_n1163), .B(n7498), .S0(n6087), .Y(n7563)
         );
  MXI2X1 U6378 ( .A(median_sobel_inst_n1164), .B(n5977), .S0(n6087), .Y(n7562)
         );
  MXI2X1 U6379 ( .A(median_sobel_inst_n1376), .B(median_sobel_inst_n237), .S0(
        n6087), .Y(n7601) );
  MXI2X1 U6380 ( .A(median_sobel_inst_n272), .B(n5957), .S0(n6467), .Y(
        median_sobel_inst_n1480) );
  MXI2X1 U6381 ( .A(median_sobel_inst_n201), .B(n1975), .S0(n6467), .Y(
        median_sobel_inst_n1490) );
  MXI2X1 U6382 ( .A(median_sobel_inst_n971), .B(n7670), .S0(n6087), .Y(n7518)
         );
  MXI2X1 U6383 ( .A(median_sobel_inst_n244), .B(n7670), .S0(n5976), .Y(
        median_sobel_inst_n1440) );
  MXI2X1 U6384 ( .A(median_sobel_inst_n202), .B(n7691), .S0(n5890), .Y(
        median_sobel_inst_n1488) );
  MXI2X1 U6385 ( .A(median_sobel_inst_n193), .B(n2111), .S0(n6019), .Y(
        median_sobel_inst_med_sobel_e_wait_r[8]) );
  MXI2X1 U6386 ( .A(n7498), .B(median_sobel_inst_n197), .S0(n5891), .Y(
        median_sobel_inst_n1483) );
  MXI2X1 U6387 ( .A(n5977), .B(median_sobel_inst_n196), .S0(n5891), .Y(
        median_sobel_inst_n1485) );
  MXI2X1 U6388 ( .A(median_sobel_inst_n276), .B(n7670), .S0(n5890), .Y(
        median_sobel_inst_n1476) );
  MXI2X1 U6389 ( .A(median_sobel_inst_n36), .B(median_sobel_inst_n198), .S0(
        n6087), .Y(n7608) );
  MXI2X1 U6390 ( .A(median_sobel_inst_n39), .B(median_sobel_inst_n210), .S0(
        n6087), .Y(n7602) );
  MXI2X1 U6391 ( .A(median_sobel_inst_n832), .B(median_sobel_inst_n184), .S0(
        n6087), .Y(n7599) );
  MXI2X1 U6392 ( .A(median_sobel_inst_n48), .B(median_sobel_inst_n182), .S0(
        n6087), .Y(n7612) );
  MXI2X1 U6393 ( .A(median_sobel_inst_n841), .B(median_sobel_inst_n188), .S0(
        n6087), .Y(n7613) );
  MXI2X1 U6394 ( .A(median_sobel_inst_n965), .B(median_sobel_inst_n229), .S0(
        n6087), .Y(n7614) );
  MXI2X1 U6395 ( .A(median_sobel_inst_n195), .B(n7539), .S0(n6137), .Y(
        median_sobel_inst_n562) );
  XOR2X1 U6396 ( .A(n5614), .B(n5613), .Y(conv_inst_N66) );
  NAND2XL U6397 ( .A(n5573), .B(n5650), .Y(n5455) );
  OAI22XL U6398 ( .A0(conv_inst_n310), .A1(n6430), .B0(n6349), .B1(n6347), .Y(
        conv_inst_N212) );
  NAND2XL U6399 ( .A(n6279), .B(n6278), .Y(n6280) );
  NAND2XL U6400 ( .A(n6469), .B(n6468), .Y(n6470) );
  NAND2XL U6401 ( .A(n6274), .B(n6552), .Y(n6275) );
  NAND2XL U6402 ( .A(n5418), .B(n5948), .Y(n5314) );
  NOR2XL U6403 ( .A(conv_inst_n197), .B(conv_inst_data_bcd_2_r[0]), .Y(n6307)
         );
  NOR2XL U6404 ( .A(conv_inst_conv_3_r[0]), .B(conv_inst_data_abc_3_r[0]), .Y(
        n6288) );
  INVX1 U6405 ( .A(n6310), .Y(n6312) );
  INVX1 U6406 ( .A(n6282), .Y(n6284) );
  NOR2XL U6407 ( .A(conv_inst_conv_4_r[0]), .B(conv_inst_data_bcd_4_r[0]), .Y(
        n6291) );
  NAND2XL U6408 ( .A(n7391), .B(n7113), .Y(n7114) );
  XNOR2X1 U6409 ( .A(n5639), .B(n5638), .Y(conv_inst_N70) );
  NOR2X1 U6410 ( .A(n6430), .B(n6429), .Y(conv_inst_N218) );
  OAI22XL U6411 ( .A0(n6430), .A1(n6348), .B0(n6349), .B1(n6341), .Y(
        conv_inst_N215) );
  OAI22XL U6412 ( .A0(conv_inst_n258), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n259), .Y(conv_inst_N2000) );
  OAI22XL U6413 ( .A0(conv_inst_n270), .A1(n6430), .B0(n6349), .B1(n6348), .Y(
        conv_inst_N214) );
  OAI22XL U6414 ( .A0(conv_inst_n263), .A1(n6430), .B0(n6349), .B1(n4542), .Y(
        conv_inst_N209) );
  CLKBUFX8 U6415 ( .A(n7757), .Y(n7761) );
  OAI2BB1X1 U6416 ( .A0N(n7292), .A1N(n7291), .B0(n7290), .Y(n479) );
  NAND2X1 U6417 ( .A(n7289), .B(cnt[5]), .Y(n7290) );
  NOR2BX1 U6418 ( .AN(n7786), .B(x_origin_r[2]), .Y(n7138) );
  NOR2XL U6419 ( .A(n7132), .B(n7131), .Y(n1397) );
  OAI21XL U6420 ( .A0(i_op_valid), .A1(n6059), .B0(n6058), .Y(n1389) );
  OAI21XL U6421 ( .A0(n7219), .A1(n7215), .B0(n7220), .Y(n7223) );
  BUFX16 U6422 ( .A(n5466), .Y(n6568) );
  INVX3 U6423 ( .A(n7137), .Y(n5586) );
  INVX12 U6424 ( .A(n7137), .Y(n5602) );
  AND2X2 U6425 ( .A(n4350), .B(n4641), .Y(n4311) );
  AND2X2 U6426 ( .A(median_sobel_inst_data_f_r[5]), .B(
        median_sobel_inst_data_f_r[3]), .Y(n4312) );
  INVXL U6427 ( .A(n4344), .Y(n6794) );
  NAND2BX1 U6428 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n400), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n385), .Y(n5535) );
  BUFX20 U6429 ( .A(n5587), .Y(n6087) );
  INVX3 U6430 ( .A(median_sobel_inst_u_median_filter_submodule_n233), .Y(n5465) );
  CLKBUFX8 U6431 ( .A(i_rst_n), .Y(n7780) );
  CLKBUFX8 U6432 ( .A(n7747), .Y(n7752) );
  CLKBUFX8 U6433 ( .A(i_rst_n), .Y(n7781) );
  CLKBUFX8 U6434 ( .A(n7780), .Y(n7753) );
  CLKBUFX8 U6435 ( .A(n7769), .Y(n7765) );
  CLKBUFX8 U6436 ( .A(n7783), .Y(n7769) );
  CLKBUFX8 U6437 ( .A(n7745), .Y(n7766) );
  CLKBUFX8 U6438 ( .A(n7783), .Y(n7754) );
  CLKBUFX8 U6439 ( .A(n7766), .Y(n7755) );
  CLKBUFX8 U6440 ( .A(n7753), .Y(n7756) );
  CLKBUFX8 U6441 ( .A(n7751), .Y(n7758) );
  CLKBUFX8 U6442 ( .A(n7779), .Y(n7757) );
  CLKBUFX8 U6443 ( .A(n7783), .Y(n7759) );
  INVX16 U6444 ( .A(n5923), .Y(n6797) );
  INVX3 U6445 ( .A(median_sobel_inst_data_h_r[6]), .Y(n5507) );
  NAND4X4 U6446 ( .A(n5504), .B(n4500), .C(n4501), .D(n5505), .Y(n4503) );
  NOR2X6 U6447 ( .A(n5361), .B(n5360), .Y(n5624) );
  OAI21X2 U6448 ( .A0(n5818), .A1(n4933), .B0(n4932), .Y(
        median_sobel_inst_u_median_filter_submodule_n830) );
  OAI21X4 U6449 ( .A0(n4959), .A1(n4955), .B0(n4956), .Y(n4954) );
  OA21X4 U6450 ( .A0(n6037), .A1(n4960), .B0(n4961), .Y(n4959) );
  INVX3 U6451 ( .A(n4889), .Y(n4882) );
  NAND2X6 U6452 ( .A(n4314), .B(n5740), .Y(n6787) );
  AO21X4 U6453 ( .A0(n6324), .A1(n6323), .B0(n6322), .Y(n6329) );
  NAND2X2 U6454 ( .A(n4866), .B(n4865), .Y(n4867) );
  XOR2X4 U6455 ( .A(n4984), .B(n4950), .Y(n4965) );
  OA21X4 U6456 ( .A0(n6384), .A1(n6132), .B0(n6133), .Y(n4326) );
  XOR2X2 U6457 ( .A(n6018), .B(n6017), .Y(conv_inst_N75) );
  INVX2 U6458 ( .A(n4960), .Y(n4962) );
  OAI22X4 U6459 ( .A0(n4328), .A1(n5540), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_n455), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n650), .Y(n4327) );
  NOR2X4 U6460 ( .A(n4329), .B(n4330), .Y(n4328) );
  NAND3X2 U6461 ( .A(n5538), .B(n5539), .C(n5537), .Y(n4329) );
  NOR2X4 U6462 ( .A(n4331), .B(n4332), .Y(n4330) );
  AOI2BB2X4 U6463 ( .B0(n5528), .B1(n5527), .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_n353), .A1N(n5526), .Y(
        n4332) );
  NAND2X6 U6464 ( .A(n4940), .B(n4339), .Y(median_sobel_inst_data_c_r[1]) );
  OAI21X4 U6465 ( .A0(n4817), .A1(n4816), .B0(n7586), .Y(n4818) );
  AOI2BB2X4 U6466 ( .B0(median_sobel_inst_u_median_filter_submodule_net96825), 
        .B1(n4646), .A0N(n4637), .A1N(n4636), .Y(n4341) );
  OAI2BB1X4 U6467 ( .A0N(n4626), .A1N(n4625), .B0(n4630), .Y(n4342) );
  BUFX6 U6468 ( .A(n5915), .Y(n4343) );
  AOI2BB2X4 U6469 ( .B0(n7715), .B1(n3665), .A0N(n3664), .A1N(n5271), .Y(n5272) );
  AOI22X2 U6470 ( .A0(median_sobel_inst_u_median_filter_submodule_b1_r[3]), 
        .A1(n4755), .B0(n4664), .B1(
        median_sobel_inst_u_median_filter_submodule_b1_r[4]), .Y(n4350) );
  OAI2BB1X4 U6471 ( .A0N(n4354), .A1N(
        median_sobel_inst_u_median_filter_submodule_n233), .B0(n4355), .Y(
        median_sobel_inst_u_median_filter_submodule_n762) );
  NOR2X4 U6472 ( .A(n4356), .B(n6797), .Y(conv_inst_N232) );
  XOR2X4 U6473 ( .A(n4357), .B(conv_inst_n19), .Y(n4356) );
  NAND2X2 U6474 ( .A(n4358), .B(n5448), .Y(n4357) );
  NAND2X2 U6475 ( .A(n4343), .B(n5449), .Y(n4358) );
  NAND2X1 U6476 ( .A(n4083), .B(
        median_sobel_inst_u_median_filter_submodule_n268), .Y(n5490) );
  AO22X4 U6477 ( .A0(n6116), .A1(n7206), .B0(n6250), .B1(n7218), .Y(n4363) );
  NAND2X4 U6478 ( .A(n2028), .B(n2093), .Y(n4364) );
  OAI21X2 U6479 ( .A0(n7428), .A1(n453), .B0(n4365), .Y(N790) );
  NAND2X2 U6480 ( .A(n7428), .B(cnt[4]), .Y(n4365) );
  INVX8 U6481 ( .A(n5279), .Y(n7123) );
  NOR2X2 U6482 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[1]), .Y(n6077) );
  INVX3 U6483 ( .A(n7397), .Y(n4987) );
  NAND2X2 U6484 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n7360) );
  INVX6 U6485 ( .A(n4980), .Y(n7423) );
  NAND2X2 U6486 ( .A(n7569), .B(n5194), .Y(n5197) );
  AOI21X2 U6487 ( .A0(n7368), .A1(n7345), .B0(n7344), .Y(n7346) );
  OAI21X4 U6488 ( .A0(n7348), .A1(n7347), .B0(n7346), .Y(n7376) );
  NAND2X2 U6489 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        n7336), .Y(n7351) );
  XOR2X2 U6490 ( .A(n5445), .B(conv_inst_conv_1_r[16]), .Y(n5446) );
  NAND2X4 U6491 ( .A(median_sobel_inst_n1286), .B(n5691), .Y(n5250) );
  NAND2X2 U6492 ( .A(n4727), .B(
        median_sobel_inst_u_median_filter_submodule_net97853), .Y(n4729) );
  OAI2BB1X4 U6493 ( .A0N(n6503), .A1N(n6502), .B0(n6501), .Y(n6504) );
  NAND2X4 U6494 ( .A(n4578), .B(n4370), .Y(n5665) );
  OAI21X4 U6495 ( .A0(n3699), .A1(n4322), .B0(n4377), .Y(n4376) );
  NAND2X8 U6496 ( .A(n4381), .B(n4380), .Y(n6746) );
  NOR2BX4 U6497 ( .AN(median_sobel_inst_u_median_filter_submodule_n876), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[2]), .Y(n6474) );
  INVX3 U6498 ( .A(n6477), .Y(n4382) );
  NOR2BX4 U6499 ( .AN(median_sobel_inst_u_median_filter_submodule_n888), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[3]), .Y(n6476) );
  OAI22X4 U6500 ( .A0(n4388), .A1(n4386), .B0(n4385), .B1(n4384), .Y(n1388) );
  NAND2X1 U6501 ( .A(n7510), .B(n7528), .Y(n4384) );
  INVX4 U6502 ( .A(n7434), .Y(n4385) );
  AND2X4 U6503 ( .A(n7434), .B(n7510), .Y(n4386) );
  NAND2X8 U6504 ( .A(n4589), .B(n4387), .Y(n5674) );
  XNOR2X4 U6505 ( .A(n4389), .B(y_origin_r_2_), .Y(n4388) );
  NOR3BX4 U6506 ( .AN(n4390), .B(n4774), .C(n4773), .Y(n4389) );
  CLKINVX1 U6507 ( .A(median_sobel_inst_n1098), .Y(n4393) );
  NOR2X4 U6508 ( .A(n5297), .B(n4396), .Y(n4395) );
  NAND2X4 U6509 ( .A(n4400), .B(n4411), .Y(
        median_sobel_inst_u_median_filter_submodule_a14_w) );
  NAND2X4 U6510 ( .A(n4407), .B(n4401), .Y(n4400) );
  NOR3X4 U6511 ( .A(n4404), .B(n4403), .C(n4402), .Y(n4401) );
  NOR2X2 U6512 ( .A(median_sobel_inst_data_d_r[7]), .B(n4414), .Y(n4402) );
  NOR2X2 U6513 ( .A(median_sobel_inst_n432), .B(n5934), .Y(n4409) );
  OAI21X4 U6514 ( .A0(n5932), .A1(n5931), .B0(n5930), .Y(n4410) );
  NOR2BX4 U6515 ( .AN(n5942), .B(n4412), .Y(n4411) );
  AOI21X4 U6516 ( .A0(n4415), .A1(n4413), .B0(n5933), .Y(n4412) );
  INVX6 U6517 ( .A(median_sobel_inst_data_d_r[7]), .Y(n5933) );
  NAND2X2 U6518 ( .A(n5744), .B(n6017), .Y(n4416) );
  XOR2X4 U6519 ( .A(n5212), .B(n5211), .Y(n5213) );
  OAI21X4 U6520 ( .A0(n5736), .A1(n5698), .B0(n5699), .Y(n6322) );
  NAND2BX2 U6521 ( .AN(median_sobel_inst_u_median_filter_submodule_net96825), 
        .B(median_sobel_inst_u_median_filter_submodule_net94165), .Y(n4419) );
  AOI2BB2X4 U6522 ( .B0(n3665), .B1(
        median_sobel_inst_u_median_filter_submodule_n167), .A0N(n3664), .A1N(
        median_sobel_inst_u_median_filter_submodule_n810), .Y(n4421) );
  NAND2X6 U6523 ( .A(n5415), .B(n5572), .Y(n5604) );
  NOR2X4 U6524 ( .A(conv_inst_conv_4_r[10]), .B(conv_inst_n39), .Y(n5651) );
  AND3X2 U6525 ( .A(median_sobel_inst_n181), .B(median_sobel_inst_n399), .C(
        median_sobel_inst_n990), .Y(n4423) );
  INVX3 U6526 ( .A(n4288), .Y(n4424) );
  AOI21X4 U6527 ( .A0(n4426), .A1(n4425), .B0(n6797), .Y(conv_inst_N286) );
  NAND2X2 U6528 ( .A(median_sobel_inst_data_i_r[7]), .B(n4512), .Y(n4428) );
  NAND2BX2 U6529 ( .AN(n5763), .B(n5760), .Y(n4430) );
  NAND2X2 U6530 ( .A(n5784), .B(median_sobel_inst_n1022), .Y(n4435) );
  NOR2X4 U6531 ( .A(n4439), .B(n5689), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[0]) );
  INVX4 U6532 ( .A(n5687), .Y(n4439) );
  NAND2X6 U6533 ( .A(n4440), .B(n5542), .Y(n5687) );
  NAND2X4 U6534 ( .A(n4441), .B(median_sobel_inst_data_d_r[5]), .Y(n5938) );
  NAND2BX2 U6535 ( .AN(n5533), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .Y(n5531) );
  AOI21X4 U6536 ( .A0(n4890), .A1(n4878), .B0(n4877), .Y(n4443) );
  ACHCINX4 U6537 ( .CIN(n4452), .A(n7511), .B(n7624), .CO(n5568) );
  NOR2X8 U6538 ( .A(input_data_ready_r[29]), .B(input_data_ready_r[13]), .Y(
        n4875) );
  NAND2XL U6539 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n654), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .Y(n5563) );
  XNOR2X4 U6540 ( .A(n4455), .B(n5910), .Y(n5911) );
  BUFX8 U6541 ( .A(n4667), .Y(n4464) );
  NAND2X1 U6542 ( .A(n4466), .B(median_sobel_inst_n1098), .Y(n4853) );
  INVX6 U6543 ( .A(n4464), .Y(n4466) );
  OR2X2 U6544 ( .A(n4465), .B(median_sobel_inst_n43), .Y(n5386) );
  NAND2BX4 U6545 ( .AN(median_sobel_inst_data_c_r[5]), .B(n4538), .Y(n4477) );
  OAI22X4 U6546 ( .A0(n5406), .A1(median_sobel_inst_data_c_r[6]), .B0(n4480), 
        .B1(n4479), .Y(n4478) );
  CLKINVX1 U6547 ( .A(median_sobel_inst_data_f_r[5]), .Y(n4479) );
  NAND2X2 U6548 ( .A(n5757), .B(median_sobel_inst_data_f_r[2]), .Y(n4482) );
  OAI22X4 U6549 ( .A0(n5239), .A1(n4486), .B0(n4485), .B1(n4483), .Y(n5241) );
  NAND2X2 U6550 ( .A(n5812), .B(n5240), .Y(n4487) );
  NAND2X4 U6551 ( .A(n5927), .B(median_sobel_inst_data_g_r[2]), .Y(n4488) );
  NAND2X2 U6552 ( .A(n5929), .B(median_sobel_inst_n425), .Y(n4489) );
  INVX20 U6553 ( .A(n5156), .Y(n6021) );
  NAND3X6 U6554 ( .A(n5032), .B(n4492), .C(n5033), .Y(
        median_sobel_inst_data_d_r[3]) );
  AND2X4 U6555 ( .A(n5034), .B(n4493), .Y(n4492) );
  NAND2X2 U6556 ( .A(median_sobel_inst_n981), .B(n4495), .Y(n4494) );
  NAND2BX2 U6557 ( .AN(n4465), .B(median_sobel_inst_n1369), .Y(n4496) );
  INVX2 U6558 ( .A(median_sobel_inst_data_a_r[3]), .Y(n4498) );
  NAND3X4 U6559 ( .A(n5499), .B(n5498), .C(median_sobel_inst_data_h_r[5]), .Y(
        n4501) );
  OAI2BB1X4 U6560 ( .A0N(n4503), .A1N(n5508), .B0(n4502), .Y(
        median_sobel_inst_u_median_filter_submodule_a28_w) );
  NAND2X1 U6561 ( .A(n5506), .B(median_sobel_inst_data_h_r[7]), .Y(n4502) );
  BUFX4 U6562 ( .A(n5475), .Y(n4505) );
  OAI2BB1X4 U6563 ( .A0N(n4506), .A1N(n5480), .B0(n5479), .Y(
        median_sobel_inst_u_median_filter_submodule_a25_w) );
  NAND3X4 U6564 ( .A(n4937), .B(n4935), .C(n4936), .Y(
        median_sobel_inst_data_e_r[2]) );
  INVX4 U6565 ( .A(median_sobel_inst_data_e_r[6]), .Y(n5471) );
  OR2X8 U6566 ( .A(n5321), .B(n4509), .Y(median_sobel_inst_data_b_r[4]) );
  NAND2X2 U6567 ( .A(n5153), .B(n5154), .Y(n4511) );
  INVX12 U6568 ( .A(n5760), .Y(median_sobel_inst_data_i_r[5]) );
  NAND2BX2 U6569 ( .AN(median_sobel_inst_n922), .B(n6020), .Y(n4516) );
  NAND2X1 U6570 ( .A(n5387), .B(median_sobel_inst_n55), .Y(n4518) );
  NAND2X4 U6571 ( .A(n5501), .B(median_sobel_inst_data_h_r[4]), .Y(n4521) );
  NAND2X2 U6572 ( .A(n4523), .B(n4320), .Y(n4522) );
  NAND2X4 U6573 ( .A(n6021), .B(median_sobel_inst_n142), .Y(n4525) );
  NAND2X2 U6574 ( .A(n5387), .B(median_sobel_inst_n66), .Y(n4526) );
  NAND2X2 U6575 ( .A(n5473), .B(median_sobel_inst_data_b_r[4]), .Y(n4528) );
  AOI2BB2X4 U6576 ( .B0(median_sobel_inst_data_b_r[2]), .B1(n4508), .A0N(n5496), .A1N(median_sobel_inst_data_e_r[3]), .Y(n4529) );
  OR2X4 U6577 ( .A(n5472), .B(median_sobel_inst_data_b_r[1]), .Y(n4530) );
  NAND2X2 U6578 ( .A(n5472), .B(median_sobel_inst_data_b_r[1]), .Y(n4531) );
  NAND2BX4 U6579 ( .AN(n4537), .B(n4665), .Y(n4536) );
  OAI21X4 U6580 ( .A0(n5404), .A1(n5403), .B0(n5402), .Y(n4538) );
  NAND2X2 U6581 ( .A(n4969), .B(n4975), .Y(n4970) );
  NAND2X2 U6582 ( .A(n5232), .B(n5231), .Y(n5233) );
  NAND2X2 U6583 ( .A(n7140), .B(conv_inst_conv_1_r[9]), .Y(n5059) );
  NAND2X2 U6584 ( .A(conv_inst_n192), .B(conv_inst_data_bcd_4_r[1]), .Y(n6311)
         );
  NOR2X4 U6585 ( .A(n5707), .B(n4588), .Y(n5704) );
  NOR2X2 U6586 ( .A(n4624), .B(
        median_sobel_inst_u_median_filter_submodule_b1_r[3]), .Y(n4621) );
  AOI2BB2X2 U6587 ( .B0(n6021), .B1(median_sobel_inst_n1090), .A0N(
        median_sobel_inst_n413), .A1N(n7137), .Y(n4916) );
  OAI21X1 U6588 ( .A0(median_sobel_inst_u_sober_compare_submodule_temp_a_r_9_), 
        .A1(median_sobel_inst_u_sober_compare_submodule_net95270), .B0(n5850), 
        .Y(n5868) );
  NAND2X4 U6589 ( .A(median_sobel_inst_u_sober_compare_submodule_temp_a_r_9_), 
        .B(median_sobel_inst_u_sober_compare_submodule_net95270), .Y(n5869) );
  NAND2X2 U6590 ( .A(n6638), .B(n5102), .Y(n5103) );
  NOR2X4 U6591 ( .A(n6627), .B(n6716), .Y(n6629) );
  NAND3X2 U6592 ( .A(n4653), .B(n4652), .C(n4654), .Y(n4659) );
  NOR2BX2 U6593 ( .AN(n7588), .B(x_plus_two_r[1]), .Y(n6958) );
  NOR2X2 U6594 ( .A(n5773), .B(n5772), .Y(n5776) );
  NOR2X4 U6595 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[3]), .Y(n7359) );
  OAI21X2 U6596 ( .A0(n5812), .A1(n5240), .B0(median_sobel_inst_data_d_r[7]), 
        .Y(n5242) );
  NAND2BX2 U6597 ( .AN(median_sobel_inst_u_median_filter_submodule_n189), .B(
        median_sobel_inst_u_median_filter_submodule_n214), .Y(n4714) );
  AND3X4 U6598 ( .A(n4704), .B(n4703), .C(n4702), .Y(n4705) );
  NAND2X2 U6599 ( .A(n7555), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n6500) );
  OA22X4 U6600 ( .A0(median_sobel_inst_n449), .A1(n5466), .B0(
        median_sobel_inst_n912), .B1(n5467), .Y(n5296) );
  OAI21X4 U6601 ( .A0(n7331), .A1(n7330), .B0(n7329), .Y(n7358) );
  NOR2X6 U6602 ( .A(median_sobel_inst_u_sober_compare_submodule_n343), .B(
        n3880), .Y(n4545) );
  BUFX8 U6603 ( .A(n5334), .Y(n6684) );
  INVXL U6604 ( .A(median_sobel_inst_u_median_filter_submodule_net53043), .Y(
        n4805) );
  NOR2BX1 U6605 ( .AN(median_sobel_inst_u_sober_compare_submodule_n30), .B(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), .Y(n5859) );
  OR2X2 U6606 ( .A(n5881), .B(conv_inst_n22), .Y(n5883) );
  OA22X1 U6607 ( .A0(n5534), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n61), .B0(n7537), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n21), .Y(n5538) );
  NOR2XL U6608 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n4999) );
  NAND2X1 U6609 ( .A(median_sobel_inst_u_sober_compare_submodule_n343), .B(
        n3880), .Y(n5983) );
  NOR2X1 U6610 ( .A(n6808), .B(n4997), .Y(n5001) );
  AND2X1 U6611 ( .A(n7430), .B(n7510), .Y(n4774) );
  NOR2X2 U6612 ( .A(conv_inst_n45), .B(conv_inst_n48), .Y(n6435) );
  NAND2X2 U6613 ( .A(conv_inst_conv_4_r[9]), .B(conv_inst_data_bcd_4_r[9]), 
        .Y(n5801) );
  NAND2X1 U6614 ( .A(n5847), .B(conv_inst_conv_2_r[8]), .Y(n5056) );
  NAND2X1 U6615 ( .A(n5094), .B(n6628), .Y(n5095) );
  NAND2X1 U6616 ( .A(conv_inst_n196), .B(n4216), .Y(n5050) );
  CLKINVX1 U6617 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n428), .Y(
        n7476) );
  NAND2XL U6618 ( .A(n6385), .B(n6384), .Y(n6386) );
  NOR2X1 U6619 ( .A(n7448), .B(n6115), .Y(n4768) );
  NAND2X1 U6620 ( .A(n6540), .B(n6539), .Y(n6541) );
  NAND2X1 U6621 ( .A(n6729), .B(n7661), .Y(n6681) );
  NAND2XL U6622 ( .A(n6814), .B(n6813), .Y(n6815) );
  NAND2X1 U6623 ( .A(n6729), .B(n7653), .Y(n6722) );
  NAND2X1 U6624 ( .A(n7091), .B(n7631), .Y(n7017) );
  NOR2X4 U6625 ( .A(n4587), .B(n4586), .Y(n6048) );
  NAND2XL U6626 ( .A(median_sobel_inst_n725), .B(n5387), .Y(n5168) );
  NAND2XL U6627 ( .A(n6582), .B(n6581), .Y(n6583) );
  NAND2X1 U6628 ( .A(n6731), .B(n7649), .Y(n6732) );
  OAI22XL U6629 ( .A0(median_sobel_inst_u_sober_compare_submodule_n302), .A1(
        n6222), .B0(median_sobel_inst_u_sober_compare_submodule_n315), .B1(
        n6011), .Y(n5986) );
  OAI22XL U6630 ( .A0(median_sobel_inst_u_sober_compare_submodule_n73), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n310), .Y(n6001) );
  NAND2X1 U6631 ( .A(n7101), .B(n7190), .Y(n6753) );
  NOR2X1 U6632 ( .A(conv_inst_n169), .B(n7789), .Y(n7143) );
  BUFX12 U6633 ( .A(n5013), .Y(n6430) );
  NAND2X1 U6634 ( .A(n7289), .B(n1956), .Y(n7285) );
  NOR2XL U6635 ( .A(n7213), .B(n7211), .Y(N820) );
  OAI21XL U6636 ( .A0(median_sobel_inst_u_median_filter_submodule_n915), .A1(
        n6545), .B0(n6482), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[5]) );
  OAI21XL U6637 ( .A0(n6345), .A1(
        median_sobel_inst_u_median_filter_submodule_n867), .B0(n6136), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[0]) );
  OAI21XL U6638 ( .A0(median_sobel_inst_u_median_filter_submodule_n855), .A1(
        n6264), .B0(n6263), .Y(
        median_sobel_inst_u_median_filter_submodule_a3[7]) );
  MXI2X1 U6639 ( .A(n7500), .B(median_sobel_inst_n277), .S0(n5891), .Y(
        median_sobel_inst_n1475) );
  MX2X1 U6640 ( .A(n7665), .B(median_sobel_inst_G[37]), .S0(n5839), .Y(
        median_sobel_inst_u_sober_compare_submodule_n100) );
  AND2X2 U6641 ( .A(n6042), .B(n6041), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N147) );
  AOI2BB2X1 U6642 ( .B0(n3568), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n43), .A0N(n3568), .A1N(
        n5278), .Y(median_sobel_inst_u_sobel_gradient_submodule_N750) );
  OAI21XL U6643 ( .A0(n6545), .A1(
        median_sobel_inst_u_median_filter_submodule_n1499), .B0(n6143), .Y(
        median_sobel_inst_u_median_filter_submodule_a1[2]) );
  MXI2X1 U6644 ( .A(n7505), .B(median_sobel_inst_n929), .S0(n6137), .Y(n7570)
         );
  MX2X1 U6645 ( .A(input_data_ready_r[24]), .B(median_sobel_inst_n1013), .S0(
        n6137), .Y(median_sobel_inst_n527) );
  MXI2X1 U6646 ( .A(median_sobel_inst_n276), .B(n7519), .S0(n6137), .Y(
        median_sobel_inst_n569) );
  AND2X2 U6647 ( .A(n5635), .B(n5923), .Y(conv_inst_N276) );
  OAI22XL U6648 ( .A0(conv_inst_n257), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n258), .Y(conv_inst_N1990) );
  AND2X1 U6649 ( .A(n6034), .B(n6033), .Y(conv_inst_N32) );
  OAI22XL U6652 ( .A0(n1947), .A1(n7076), .B0(n1964), .B1(n4550), .Y(n4555) );
  OAI22XL U6653 ( .A0(n1921), .A1(n7078), .B0(n1918), .B1(n7077), .Y(n4554) );
  OR2X4 U6654 ( .A(n864), .B(n1905), .Y(n4552) );
  NOR3X4 U6655 ( .A(n1904), .B(n4552), .C(n4551), .Y(n4553) );
  OA21XL U6656 ( .A0(n4555), .A1(n4554), .B0(n7258), .Y(n4559) );
  CLKINVX1 U6657 ( .A(med_out_valid_w), .Y(n7161) );
  OR2X2 U6658 ( .A(median_sobel_inst_n115), .B(n7161), .Y(n4556) );
  INVX3 U6659 ( .A(n4556), .Y(n7081) );
  AOI21X1 U6660 ( .A0(n7081), .A1(median_sobel_inst_out_data_w[0]), .B0(
        conv_result_w[0]), .Y(n4558) );
  INVX1 U6661 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(
        n7496) );
  NAND2X4 U6662 ( .A(conv_inst_n189), .B(conv_inst_data_abc_1_r[0]), .Y(n6285)
         );
  OAI21X4 U6663 ( .A0(n6282), .A1(n6285), .B0(n6283), .Y(n6131) );
  NOR2X4 U6664 ( .A(conv_inst_conv_1_r[2]), .B(conv_inst_n191), .Y(n6383) );
  NOR2X4 U6665 ( .A(conv_inst_conv_1_r[3]), .B(conv_inst_data_abc_1_r[3]), .Y(
        n6132) );
  NAND2X4 U6666 ( .A(n6131), .B(n4560), .Y(n4561) );
  NAND2X2 U6667 ( .A(conv_inst_conv_1_r[2]), .B(conv_inst_n191), .Y(n6384) );
  NAND2X2 U6668 ( .A(conv_inst_conv_1_r[3]), .B(conv_inst_data_abc_1_r[3]), 
        .Y(n6133) );
  NOR2X4 U6669 ( .A(conv_inst_conv_1_r[6]), .B(conv_inst_data_abc_1_r[6]), .Y(
        n6300) );
  NOR2X4 U6670 ( .A(conv_inst_n44), .B(conv_inst_data_abc_1_r[7]), .Y(n5263)
         );
  NAND2X4 U6671 ( .A(conv_inst_data_abc_1_r[4]), .B(conv_inst_conv_1_r[4]), 
        .Y(n6789) );
  NAND2X2 U6672 ( .A(conv_inst_conv_1_r[5]), .B(conv_inst_n172), .Y(n6793) );
  NAND2X2 U6673 ( .A(conv_inst_n44), .B(conv_inst_data_abc_1_r[7]), .Y(n5264)
         );
  NOR2X4 U6674 ( .A(n4562), .B(n5917), .Y(n4564) );
  NOR2X2 U6675 ( .A(conv_inst_conv_1_r[8]), .B(conv_inst_n188), .Y(n5615) );
  NOR2X4 U6676 ( .A(n5615), .B(n5617), .Y(n5509) );
  NOR2X1 U6677 ( .A(n5447), .B(conv_inst_n19), .Y(n4566) );
  NAND2X2 U6678 ( .A(conv_inst_conv_1_r[9]), .B(conv_inst_data_abc_1_r[9]), 
        .Y(n5618) );
  OAI21X4 U6679 ( .A0(n5617), .A1(n5835), .B0(n5618), .Y(n5511) );
  NAND2X2 U6680 ( .A(conv_inst_conv_1_r[10]), .B(conv_inst_data_abc_1_r[10]), 
        .Y(n5916) );
  AO21X4 U6681 ( .A0(n5915), .A1(n4566), .B0(n4565), .Y(n4567) );
  NAND4BX2 U6682 ( .AN(n5889), .B(n1986), .C(n7219), .D(n7131), .Y(n4570) );
  INVX12 U6683 ( .A(n7219), .Y(n6115) );
  AND4X4 U6684 ( .A(n5889), .B(n6115), .C(n2000), .D(n4369), .Y(n4573) );
  NAND2X4 U6685 ( .A(n4573), .B(n5658), .Y(n6047) );
  NAND2X2 U6686 ( .A(n4574), .B(n438), .Y(n4575) );
  NAND2X1 U6687 ( .A(n4369), .B(n4576), .Y(n4577) );
  NAND2X4 U6688 ( .A(n5658), .B(n4579), .Y(n6105) );
  OAI22X4 U6689 ( .A0(n6105), .A1(n4582), .B0(n4544), .B1(n4581), .Y(n4587) );
  NOR2X1 U6690 ( .A(n834), .B(n4373), .Y(n4585) );
  NOR2X1 U6691 ( .A(n7502), .B(n5255), .Y(n4584) );
  INVX3 U6692 ( .A(n1386), .Y(n5705) );
  NAND3X1 U6693 ( .A(n5705), .B(N760), .C(cnt[0]), .Y(n4588) );
  NAND2X6 U6694 ( .A(n7786), .B(N760), .Y(n7470) );
  CLKINVX1 U6695 ( .A(n7470), .Y(n4590) );
  NAND2X2 U6696 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n94), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(n6069) );
  NAND2X2 U6697 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .Y(n6067) );
  OAI21X4 U6698 ( .A0(n4592), .A1(n6069), .B0(n6067), .Y(n6228) );
  NOR2X1 U6699 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n417), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n415), .Y(n4593) );
  NOR2X1 U6700 ( .A(n6223), .B(n4593), .Y(n4595) );
  NAND2X2 U6701 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n433), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .Y(n6229) );
  OAI21X1 U6702 ( .A0(n4593), .A1(n6229), .B0(n6224), .Y(n4594) );
  OR2X4 U6703 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), .Y(
        n6269) );
  NOR2X4 U6704 ( .A(n4596), .B(n4597), .Y(n5427) );
  NOR2X2 U6705 ( .A(conv_inst_n187), .B(conv_inst_data_abc_3_r[1]), .Y(n6316)
         );
  NAND2X2 U6706 ( .A(conv_inst_n187), .B(conv_inst_data_abc_3_r[1]), .Y(n6317)
         );
  OAI21X4 U6707 ( .A0(n6316), .A1(n6319), .B0(n6317), .Y(n6267) );
  NAND2X2 U6708 ( .A(conv_inst_conv_3_r[3]), .B(conv_inst_data_abc_3_r[3]), 
        .Y(n6254) );
  NAND2X2 U6709 ( .A(conv_inst_conv_3_r[2]), .B(conv_inst_data_abc_3_r[2]), 
        .Y(n6268) );
  AOI21X4 U6710 ( .A0(n6254), .A1(n6268), .B0(n4597), .Y(n5426) );
  AO21X4 U6711 ( .A0(n5427), .A1(n6267), .B0(n5426), .Y(n6324) );
  NOR2X4 U6712 ( .A(n5695), .B(n5698), .Y(n6323) );
  NOR2X4 U6713 ( .A(conv_inst_conv_3_r[6]), .B(conv_inst_data_abc_3_r[6]), .Y(
        n6325) );
  NOR2BX1 U6714 ( .AN(n6323), .B(n6325), .Y(n4600) );
  OAI21X1 U6715 ( .A0(n4598), .A1(n6325), .B0(n6326), .Y(n4599) );
  INVX16 U6716 ( .A(n4605), .Y(n5260) );
  INVX16 U6717 ( .A(n5260), .Y(n5368) );
  BUFX20 U6718 ( .A(n5368), .Y(n5467) );
  NAND2X2 U6719 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[2]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[6]), .Y(n6376) );
  NOR2X1 U6720 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[8]), .Y(
        n4606) );
  NOR2X2 U6721 ( .A(n4606), .B(n6580), .Y(n6696) );
  NOR2X2 U6722 ( .A(n6570), .B(n6573), .Y(n4607) );
  NAND2X2 U6723 ( .A(n6696), .B(n4607), .Y(n4609) );
  NAND2X1 U6724 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[5]), .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[9]), .Y(n6581) );
  OAI21X4 U6725 ( .A0(n6464), .A1(n4609), .B0(n4608), .Y(n6987) );
  NOR2X1 U6726 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_r[8]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_acc3_r[12]), .Y(
        n4611) );
  AOI21X1 U6727 ( .A0(n6987), .A1(n7107), .B0(n7108), .Y(n4610) );
  AOI21X1 U6728 ( .A0(n6987), .A1(n6989), .B0(n4612), .Y(n4613) );
  INVX12 U6729 ( .A(n5260), .Y(n4667) );
  AOI21X4 U6730 ( .A0(n6021), .A1(median_sobel_inst_n780), .B0(n4616), .Y(
        n4617) );
  NAND2BX1 U6731 ( .AN(median_sobel_inst_n928), .B(n5890), .Y(n4618) );
  INVX20 U6732 ( .A(n4006), .Y(n6020) );
  NAND2BX2 U6733 ( .AN(median_sobel_inst_u_median_filter_submodule_b1_r[4]), 
        .B(median_sobel_inst_u_median_filter_submodule_net96837), .Y(n4619) );
  NAND2X1 U6734 ( .A(median_sobel_inst_u_median_filter_submodule_n108), .B(
        n4619), .Y(n4622) );
  NAND2BX2 U6735 ( .AN(median_sobel_inst_u_median_filter_submodule_net96837), 
        .B(median_sobel_inst_u_median_filter_submodule_b1_r[4]), .Y(n4633) );
  NAND2X4 U6736 ( .A(n4633), .B(n7567), .Y(n4624) );
  OAI22X2 U6737 ( .A0(n4622), .A1(n4621), .B0(n4620), .B1(
        median_sobel_inst_u_median_filter_submodule_n1159), .Y(n4626) );
  AOI2BB2X1 U6738 ( .B0(median_sobel_inst_u_median_filter_submodule_net96795), 
        .B1(n4643), .A0N(n4624), .A1N(n4623), .Y(n4625) );
  NAND2X1 U6739 ( .A(median_sobel_inst_u_median_filter_submodule_net96458), 
        .B(n4638), .Y(n4627) );
  NAND3X2 U6740 ( .A(n4629), .B(n4628), .C(n4627), .Y(n4635) );
  AOI2BB1X4 U6741 ( .A0N(median_sobel_inst_u_median_filter_submodule_net96458), 
        .A1N(n4638), .B0(n4631), .Y(n4634) );
  NAND2X1 U6742 ( .A(median_sobel_inst_u_median_filter_submodule_n897), .B(
        median_sobel_inst_u_median_filter_submodule_b1_r[3]), .Y(n4632) );
  NAND4X2 U6743 ( .A(n4635), .B(n4634), .C(n4633), .D(n4632), .Y(n4637) );
  NOR2BX1 U6744 ( .AN(median_sobel_inst_u_median_filter_submodule_n108), .B(
        median_sobel_inst_u_median_filter_submodule_n1159), .Y(n4636) );
  NAND2BX1 U6745 ( .AN(median_sobel_inst_u_median_filter_submodule_net97020), 
        .B(median_sobel_inst_u_median_filter_submodule_net84882), .Y(n4639) );
  NAND2BX2 U6746 ( .AN(median_sobel_inst_u_median_filter_submodule_n108), .B(
        median_sobel_inst_u_median_filter_submodule_n233), .Y(n4640) );
  CLKINVX1 U6747 ( .A(n4640), .Y(n4644) );
  NAND3X1 U6748 ( .A(n4641), .B(
        median_sobel_inst_u_median_filter_submodule_n235), .C(n4643), .Y(n4642) );
  AOI2BB2X4 U6749 ( .B0(n4644), .B1(n4643), .A0N(n4642), .A1N(
        median_sobel_inst_u_median_filter_submodule_b1_r[4]), .Y(n4645) );
  OAI21X2 U6750 ( .A0(median_sobel_inst_u_median_filter_submodule_net94165), 
        .A1(n7566), .B0(n4645), .Y(n4647) );
  NAND2X1 U6751 ( .A(median_sobel_inst_u_median_filter_submodule_net96458), 
        .B(n5270), .Y(n4651) );
  AOI2BB2X1 U6752 ( .B0(median_sobel_inst_u_median_filter_submodule_net96631), 
        .B1(median_sobel_inst_u_median_filter_submodule_n897), .A0N(
        median_sobel_inst_u_median_filter_submodule_net96458), .A1N(n5270), 
        .Y(n4652) );
  NAND2BX1 U6753 ( .AN(median_sobel_inst_u_median_filter_submodule_net96837), 
        .B(median_sobel_inst_u_median_filter_submodule_n235), .Y(n4654) );
  NAND3X2 U6754 ( .A(n4654), .B(n7567), .C(n4755), .Y(n4657) );
  NAND2X1 U6755 ( .A(median_sobel_inst_u_median_filter_submodule_n1159), .B(
        n5465), .Y(n4656) );
  OAI22X1 U6756 ( .A0(median_sobel_inst_u_median_filter_submodule_n706), .A1(
        n5450), .B0(median_sobel_inst_u_median_filter_submodule_net97020), 
        .B1(n4674), .Y(n4660) );
  INVX1 U6757 ( .A(median_sobel_inst_u_median_filter_submodule_net96837), .Y(
        n4662) );
  AOI2BB2X2 U6758 ( .B0(n3665), .B1(
        median_sobel_inst_u_median_filter_submodule_b1_r[4]), .A0N(n4340), 
        .A1N(n4662), .Y(n4663) );
  BUFX20 U6759 ( .A(n5368), .Y(n5828) );
  AOI2BB2X2 U6760 ( .B0(n6021), .B1(median_sobel_inst_n65), .A0N(
        median_sobel_inst_n966), .A1N(n5466), .Y(n4670) );
  NAND2BX1 U6761 ( .AN(median_sobel_inst_n36), .B(n6684), .Y(n4673) );
  AOI2BB2X1 U6762 ( .B0(n6020), .B1(median_sobel_inst_n1013), .A0N(
        median_sobel_inst_n1093), .A1N(n5467), .Y(n4672) );
  NAND2X1 U6763 ( .A(median_sobel_inst_n725), .B(n6683), .Y(n4671) );
  NAND2BX1 U6764 ( .AN(median_sobel_inst_n36), .B(n6020), .Y(n4679) );
  BUFX12 U6765 ( .A(n5156), .Y(n5378) );
  NAND2X2 U6766 ( .A(n5596), .B(median_sobel_inst_n121), .Y(n4680) );
  NAND2BX1 U6767 ( .AN(median_sobel_inst_u_median_filter_submodule_n231), .B(
        median_sobel_inst_u_median_filter_submodule_n792), .Y(n4682) );
  NAND2BX1 U6768 ( .AN(median_sobel_inst_u_median_filter_submodule_n231), .B(
        median_sobel_inst_u_median_filter_submodule_n277), .Y(n4681) );
  NAND2BX2 U6769 ( .AN(median_sobel_inst_u_median_filter_submodule_n189), .B(
        median_sobel_inst_u_median_filter_submodule_n274), .Y(n4689) );
  AOI2BB2X1 U6770 ( .B0(median_sobel_inst_u_median_filter_submodule_n792), 
        .B1(median_sobel_inst_u_median_filter_submodule_n277), .A0N(n5686), 
        .A1N(median_sobel_inst_u_median_filter_submodule_net99899), .Y(n4688)
         );
  NAND2BX1 U6771 ( .AN(median_sobel_inst_u_median_filter_submodule_net100057), 
        .B(median_sobel_inst_u_median_filter_submodule_net99899), .Y(n4685) );
  NAND3X2 U6772 ( .A(n4685), .B(n4684), .C(n4683), .Y(n4687) );
  NAND4X2 U6773 ( .A(n4688), .B(n4687), .C(n4686), .D(n4689), .Y(n4693) );
  CLKINVX1 U6774 ( .A(median_sobel_inst_u_median_filter_submodule_n189), .Y(
        n5710) );
  AOI2BB2X1 U6775 ( .B0(median_sobel_inst_u_median_filter_submodule_n263), 
        .B1(median_sobel_inst_u_median_filter_submodule_n904), .A0N(n5710), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n274), .Y(n4692) );
  NAND3X1 U6776 ( .A(n4690), .B(n4689), .C(
        median_sobel_inst_u_median_filter_submodule_n231), .Y(n4691) );
  NAND4X2 U6777 ( .A(n4691), .B(n4693), .C(n4692), .D(n4694), .Y(n4696) );
  NAND2BX2 U6778 ( .AN(median_sobel_inst_u_median_filter_submodule_n205), .B(
        median_sobel_inst_u_median_filter_submodule_n263), .Y(n4706) );
  NAND2BX2 U6779 ( .AN(median_sobel_inst_u_median_filter_submodule_n214), .B(
        median_sobel_inst_u_median_filter_submodule_n189), .Y(n4703) );
  NAND4BX2 U6780 ( .AN(median_sobel_inst_u_median_filter_submodule_n231), .B(
        n4706), .C(median_sobel_inst_u_median_filter_submodule_net95319), .D(
        n4703), .Y(n4710) );
  OR2X2 U6781 ( .A(median_sobel_inst_u_median_filter_submodule_n236), .B(
        median_sobel_inst_u_median_filter_submodule_net97925), .Y(n4718) );
  NAND2X2 U6782 ( .A(median_sobel_inst_u_median_filter_submodule_net97925), 
        .B(median_sobel_inst_u_median_filter_submodule_n236), .Y(n4720) );
  NAND2X1 U6783 ( .A(n4718), .B(n4698), .Y(n4700) );
  NAND2BX1 U6784 ( .AN(median_sobel_inst_u_median_filter_submodule_net99899), 
        .B(median_sobel_inst_u_median_filter_submodule_n833), .Y(n4699) );
  NAND3X2 U6785 ( .A(n4700), .B(n4701), .C(n4699), .Y(n4708) );
  NOR2X1 U6786 ( .A(median_sobel_inst_u_median_filter_submodule_n158), .B(
        n7558), .Y(n4713) );
  CLKINVX1 U6787 ( .A(median_sobel_inst_u_median_filter_submodule_n205), .Y(
        n4711) );
  NOR2X2 U6788 ( .A(n4714), .B(n4711), .Y(n4712) );
  NAND2BX1 U6789 ( .AN(median_sobel_inst_u_median_filter_submodule_n205), .B(
        n4714), .Y(n4715) );
  INVX3 U6790 ( .A(median_sobel_inst_u_median_filter_submodule_n263), .Y(n5416) );
  NAND2X2 U6791 ( .A(n4715), .B(n5416), .Y(n4738) );
  NAND2BX1 U6792 ( .AN(median_sobel_inst_u_median_filter_submodule_n158), .B(
        n7561), .Y(n4716) );
  NAND3X2 U6793 ( .A(n4739), .B(n4738), .C(n4716), .Y(n4717) );
  NAND2BX1 U6794 ( .AN(median_sobel_inst_u_median_filter_submodule_net100057), 
        .B(median_sobel_inst_u_median_filter_submodule_n833), .Y(n4719) );
  AOI2BB2X1 U6795 ( .B0(median_sobel_inst_u_median_filter_submodule_net100057), 
        .B1(n7568), .A0N(n4255), .A1N(
        median_sobel_inst_u_median_filter_submodule_n143), .Y(n4721) );
  NAND2BX2 U6796 ( .AN(median_sobel_inst_u_median_filter_submodule_n214), .B(
        median_sobel_inst_u_median_filter_submodule_n274), .Y(n4728) );
  NAND3X2 U6797 ( .A(n4722), .B(n4721), .C(n4728), .Y(n4724) );
  NOR2X1 U6798 ( .A(median_sobel_inst_u_median_filter_submodule_net95319), .B(
        n7564), .Y(n4723) );
  OAI21X4 U6799 ( .A0(n4724), .A1(n4723), .B0(n4733), .Y(n4737) );
  NOR2BX2 U6800 ( .AN(median_sobel_inst_u_median_filter_submodule_n143), .B(
        median_sobel_inst_u_median_filter_submodule_n277), .Y(n4726) );
  INVX1 U6801 ( .A(median_sobel_inst_u_median_filter_submodule_n214), .Y(n4725) );
  AOI2BB2X1 U6802 ( .B0(median_sobel_inst_u_median_filter_submodule_n205), 
        .B1(median_sobel_inst_u_median_filter_submodule_n904), .A0N(n4725), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n274), .Y(n4731) );
  INVX1 U6803 ( .A(n4726), .Y(n4727) );
  NOR2X1 U6804 ( .A(median_sobel_inst_u_median_filter_submodule_n205), .B(
        median_sobel_inst_u_median_filter_submodule_n904), .Y(n4734) );
  AOI2BB2X2 U6805 ( .B0(n4734), .B1(n4733), .A0N(
        median_sobel_inst_u_median_filter_submodule_net94185), .A1N(n6022), 
        .Y(n4735) );
  NAND2X2 U6806 ( .A(n4739), .B(n4738), .Y(n4740) );
  NAND2BX1 U6807 ( .AN(median_sobel_inst_n434), .B(n5890), .Y(n4743) );
  AOI2BB2X2 U6808 ( .B0(n6020), .B1(median_sobel_inst_n1066), .A0N(
        median_sobel_inst_n937), .A1N(n5467), .Y(n4742) );
  NAND2BX1 U6809 ( .AN(median_sobel_inst_n927), .B(n5890), .Y(n4746) );
  NAND2BX1 U6810 ( .AN(median_sobel_inst_n43), .B(n5839), .Y(n4745) );
  INVX3 U6811 ( .A(n6090), .Y(n4747) );
  OAI21X4 U6812 ( .A0(n4747), .A1(n6091), .B0(n6089), .Y(n6164) );
  NOR2X2 U6813 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n417), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p8_r[3]), .Y(n4748) );
  NOR2X1 U6814 ( .A(n6351), .B(n4748), .Y(n4750) );
  OAI21X1 U6815 ( .A0(n4748), .A1(n6350), .B0(n6353), .Y(n4749) );
  NAND2X1 U6816 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_p8_r[5]), .Y(n4758) );
  AOI2BB2X2 U6817 ( .B0(n4345), .B1(
        median_sobel_inst_u_median_filter_submodule_b1_r[3]), .A0N(n3664), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n897), .Y(n4754) );
  OR2X2 U6818 ( .A(n4756), .B(n4759), .Y(n5027) );
  CLKINVX1 U6819 ( .A(n5027), .Y(n4757) );
  NOR2X1 U6820 ( .A(n4301), .B(
        median_sobel_inst_u_median_filter_submodule_n871), .Y(n4761) );
  NAND2X1 U6821 ( .A(n4757), .B(n4761), .Y(n4763) );
  AOI21X1 U6822 ( .A0(n5025), .A1(n4761), .B0(n4760), .Y(n4762) );
  NOR2X4 U6823 ( .A(n6105), .B(n4764), .Y(n5788) );
  NOR2X6 U6824 ( .A(N760), .B(x_origin_r[1]), .Y(n7224) );
  BUFX8 U6825 ( .A(n4765), .Y(n7471) );
  NAND2X2 U6826 ( .A(x_origin_r[2]), .B(x_origin_r[1]), .Y(n7448) );
  NOR3X2 U6827 ( .A(n7139), .B(n1986), .C(n6161), .Y(n7228) );
  AND2X2 U6828 ( .A(n2093), .B(n4303), .Y(n7430) );
  MXI2X1 U6829 ( .A(n7430), .B(n7510), .S0(cnt[1]), .Y(n4773) );
  NOR2X4 U6830 ( .A(n4779), .B(n4775), .Y(n4789) );
  CLKINVX1 U6831 ( .A(n6688), .Y(n4778) );
  NOR2X2 U6832 ( .A(n4779), .B(n4778), .Y(n5972) );
  NOR2X2 U6833 ( .A(median_sobel_inst_n1100), .B(n7590), .Y(n4785) );
  NAND2BX1 U6834 ( .AN(median_sobel_inst_n99), .B(n4784), .Y(n4788) );
  NAND3X2 U6835 ( .A(n4786), .B(n4785), .C(n4298), .Y(n4787) );
  OAI21X4 U6836 ( .A0(n4789), .A1(n4788), .B0(n4787), .Y(
        median_sobel_inst_ns[1]) );
  BUFX16 U6837 ( .A(n5334), .Y(n5382) );
  NAND2BX2 U6838 ( .AN(n5348), .B(median_sobel_inst_n985), .Y(n4790) );
  AOI2BB2X2 U6839 ( .B0(n5334), .B1(median_sobel_inst_n1015), .A0N(
        median_sobel_inst_n449), .A1N(n5828), .Y(n4795) );
  NAND2BX1 U6840 ( .AN(median_sobel_inst_n917), .B(n5226), .Y(n4794) );
  NAND2BX1 U6841 ( .AN(median_sobel_inst_n1284), .B(n6020), .Y(n4793) );
  NOR2BX1 U6842 ( .AN(median_sobel_inst_u_median_filter_submodule_net52732), 
        .B(median_sobel_inst_u_median_filter_submodule_net52814), .Y(n4796) );
  NAND2BX2 U6843 ( .AN(median_sobel_inst_u_median_filter_submodule_net52893), 
        .B(median_sobel_inst_u_median_filter_submodule_n118), .Y(n4802) );
  NAND2X2 U6844 ( .A(median_sobel_inst_u_median_filter_submodule_n209), .B(
        median_sobel_inst_u_median_filter_submodule_n1477), .Y(n4801) );
  NAND2BX1 U6845 ( .AN(median_sobel_inst_u_median_filter_submodule_net52732), 
        .B(median_sobel_inst_u_median_filter_submodule_net52814), .Y(n4797) );
  NAND2BX2 U6846 ( .AN(median_sobel_inst_u_median_filter_submodule_n118), .B(
        median_sobel_inst_u_median_filter_submodule_net52893), .Y(n4799) );
  AOI2BB2X2 U6847 ( .B0(n4800), .B1(n7578), .A0N(n4799), .A1N(
        median_sobel_inst_u_median_filter_submodule_n209), .Y(n4804) );
  NAND4BX2 U6848 ( .AN(median_sobel_inst_u_median_filter_submodule_n174), .B(
        n4802), .C(median_sobel_inst_u_median_filter_submodule_net52783), .D(
        n4801), .Y(n4803) );
  NAND2X2 U6849 ( .A(n4817), .B(n5138), .Y(n4820) );
  NOR2BX2 U6850 ( .AN(median_sobel_inst_u_median_filter_submodule_net53043), 
        .B(median_sobel_inst_u_median_filter_submodule_net52732), .Y(n4809) );
  AOI2BB2X2 U6851 ( .B0(n4809), .B1(
        median_sobel_inst_u_median_filter_submodule_n96), .A0N(
        median_sobel_inst_u_median_filter_submodule_net52893), .A1N(n4821), 
        .Y(n4811) );
  OAI21X1 U6852 ( .A0(n4809), .A1(
        median_sobel_inst_u_median_filter_submodule_n96), .B0(n7554), .Y(n4810) );
  NAND3X2 U6853 ( .A(n4812), .B(n4811), .C(n4810), .Y(n4814) );
  NAND2X4 U6854 ( .A(n4814), .B(n4813), .Y(n4840) );
  NAND3X2 U6855 ( .A(n4840), .B(n4815), .C(n4839), .Y(n4819) );
  INVX1 U6856 ( .A(median_sobel_inst_u_median_filter_submodule_n96), .Y(n4822)
         );
  NOR2X1 U6857 ( .A(n4822), .B(
        median_sobel_inst_u_median_filter_submodule_n174), .Y(n4824) );
  NOR2BX1 U6858 ( .AN(median_sobel_inst_u_median_filter_submodule_net53043), 
        .B(median_sobel_inst_u_median_filter_submodule_net52814), .Y(n4823) );
  OA21X4 U6859 ( .A0(median_sobel_inst_u_median_filter_submodule_n224), .A1(
        n5817), .B0(n4828), .Y(n4831) );
  INVX1 U6860 ( .A(median_sobel_inst_u_median_filter_submodule_n224), .Y(n4829) );
  NOR2X1 U6861 ( .A(n4829), .B(
        median_sobel_inst_u_median_filter_submodule_n228), .Y(n4830) );
  CLKINVX1 U6862 ( .A(median_sobel_inst_u_median_filter_submodule_net52814), 
        .Y(n5357) );
  INVX3 U6863 ( .A(median_sobel_inst_u_median_filter_submodule_n174), .Y(n5809) );
  OR2X4 U6864 ( .A(median_sobel_inst_u_median_filter_submodule_n96), .B(n5809), 
        .Y(n4834) );
  NAND2BX2 U6865 ( .AN(median_sobel_inst_u_median_filter_submodule_n136), .B(
        n4832), .Y(n4835) );
  OAI22X1 U6866 ( .A0(n4834), .A1(n4835), .B0(
        median_sobel_inst_u_median_filter_submodule_n207), .B1(n5138), .Y(
        n4833) );
  CLKINVX1 U6867 ( .A(median_sobel_inst_u_median_filter_submodule_n118), .Y(
        n5166) );
  NOR2X1 U6868 ( .A(n4834), .B(
        median_sobel_inst_u_median_filter_submodule_n222), .Y(n4837) );
  CLKINVX1 U6869 ( .A(n4835), .Y(n4836) );
  OAI21X1 U6870 ( .A0(median_sobel_inst_u_median_filter_submodule_n900), .A1(
        n5138), .B0(median_sobel_inst_u_median_filter_submodule_n207), .Y(
        n4838) );
  NAND2X1 U6871 ( .A(median_sobel_inst_n86), .B(n6021), .Y(n4846) );
  NAND2X1 U6872 ( .A(n4304), .B(n5387), .Y(n4843) );
  OR2X2 U6873 ( .A(median_sobel_inst_n921), .B(n5467), .Y(n4849) );
  NAND2X1 U6874 ( .A(n5334), .B(median_sobel_inst_n127), .Y(n4847) );
  NAND2X1 U6875 ( .A(median_sobel_inst_n145), .B(n5387), .Y(n4852) );
  NAND2X1 U6876 ( .A(median_sobel_inst_n138), .B(n6021), .Y(n4851) );
  AND3X4 U6877 ( .A(n4852), .B(n4853), .C(n4851), .Y(n4854) );
  BUFX20 U6878 ( .A(n3621), .Y(n7137) );
  NOR2X4 U6879 ( .A(n4858), .B(n4857), .Y(n4859) );
  INVX3 U6880 ( .A(n4864), .Y(n4866) );
  XOR2X2 U6881 ( .A(n4867), .B(n6033), .Y(n5740) );
  CLKINVX3 U6882 ( .A(n6787), .Y(n4868) );
  NAND2X2 U6883 ( .A(n3610), .B(n4869), .Y(n6785) );
  NOR2X4 U6884 ( .A(n4872), .B(n4875), .Y(n4884) );
  NAND2BX1 U6885 ( .AN(median_sobel_inst_n972), .B(n5890), .Y(n4896) );
  AOI2BB2X2 U6886 ( .B0(n5784), .B1(median_sobel_inst_n1109), .A0N(
        median_sobel_inst_n912), .A1N(n5466), .Y(n4894) );
  NOR2X4 U6887 ( .A(conv_inst_conv_2_r[1]), .B(conv_inst_data_bcd_2_r[1]), .Y(
        n6277) );
  NAND2X4 U6888 ( .A(conv_inst_n197), .B(conv_inst_data_bcd_2_r[0]), .Y(n6306)
         );
  NAND2X2 U6889 ( .A(conv_inst_conv_2_r[1]), .B(conv_inst_data_bcd_2_r[1]), 
        .Y(n6278) );
  OAI21X4 U6890 ( .A0(n6277), .A1(n6306), .B0(n6278), .Y(n6179) );
  NOR2X4 U6891 ( .A(conv_inst_conv_2_r[3]), .B(conv_inst_data_bcd_2_r[3]), .Y(
        n6180) );
  NOR2X4 U6892 ( .A(n6435), .B(n6180), .Y(n5306) );
  NAND2X2 U6893 ( .A(conv_inst_n45), .B(conv_inst_n48), .Y(n6436) );
  NAND2X2 U6894 ( .A(conv_inst_data_bcd_2_r[3]), .B(conv_inst_conv_2_r[3]), 
        .Y(n6181) );
  NAND2X4 U6895 ( .A(n4897), .B(n6181), .Y(n5305) );
  AO21X4 U6896 ( .A0(n6179), .A1(n5306), .B0(n5305), .Y(n6449) );
  NOR2X4 U6897 ( .A(conv_inst_conv_2_r[4]), .B(conv_inst_data_bcd_2_r[4]), .Y(
        n4903) );
  NOR2X4 U6898 ( .A(n4903), .B(n4905), .Y(n6443) );
  NAND2X4 U6899 ( .A(conv_inst_conv_2_r[4]), .B(conv_inst_data_bcd_2_r[4]), 
        .Y(n5732) );
  NAND2X2 U6900 ( .A(conv_inst_conv_2_r[5]), .B(conv_inst_data_bcd_2_r[5]), 
        .Y(n4906) );
  OAI21X4 U6901 ( .A0(n4905), .A1(n5732), .B0(n4906), .Y(n5309) );
  INVX3 U6902 ( .A(n5309), .Y(n6446) );
  NAND2X2 U6903 ( .A(conv_inst_conv_2_r[6]), .B(conv_inst_data_bcd_2_r[6]), 
        .Y(n6444) );
  XNOR2X1 U6904 ( .A(n4901), .B(n4900), .Y(n4902) );
  AO21X2 U6905 ( .A0(n6449), .A1(n5733), .B0(n4904), .Y(n4909) );
  XNOR2X1 U6906 ( .A(n4909), .B(n4908), .Y(n4910) );
  OA22X2 U6907 ( .A0(median_sobel_inst_n419), .A1(n5466), .B0(
        median_sobel_inst_n443), .B1(n5348), .Y(n4915) );
  NAND2X1 U6908 ( .A(median_sobel_inst_n750), .B(n6683), .Y(n4914) );
  NAND2BX1 U6909 ( .AN(median_sobel_inst_n841), .B(n5784), .Y(n4917) );
  NAND2X4 U6910 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n75), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(n7214) );
  OAI21X2 U6911 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_N131), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n4918) );
  NAND2X2 U6912 ( .A(n5678), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .Y(n4921) );
  AOI22X1 U6913 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .A1(median_sobel_inst_u_sobel_gradient_submodule_n97), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n4920) );
  NAND2X4 U6914 ( .A(n6155), .B(n7584), .Y(n7162) );
  NAND2X2 U6915 ( .A(n7162), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n97), .Y(n6365) );
  NAND3X2 U6916 ( .A(n4921), .B(n4920), .C(n6365), .Y(n4923) );
  NAND2BX1 U6917 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n97), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n174), .Y(n4922) );
  INVX3 U6918 ( .A(n6867), .Y(n4925) );
  INVX3 U6919 ( .A(median_sobel_inst_u_median_filter_submodule_n923), .Y(n5966) );
  NAND2X2 U6920 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[1]), 
        .B(n5966), .Y(n6085) );
  NAND2X1 U6921 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n78), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .Y(n6083) );
  OAI21X2 U6922 ( .A0(n6082), .A1(n6085), .B0(n6083), .Y(n6358) );
  OR2X2 U6923 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .Y(n6359) );
  NOR2X2 U6924 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n377), .Y(n6360) );
  NOR2X1 U6925 ( .A(n4926), .B(n6360), .Y(n4928) );
  NAND2X1 U6926 ( .A(median_sobel_inst_u_sobel_gradient_submodule_p3_r[4]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n377), .Y(n6361) );
  OAI21X1 U6927 ( .A0(n6357), .A1(n6360), .B0(n6361), .Y(n4927) );
  OAI21X1 U6928 ( .A0(n4929), .A1(n6896), .B0(n6899), .Y(n5749) );
  INVX3 U6929 ( .A(n5749), .Y(n4930) );
  CLKINVX1 U6930 ( .A(n6404), .Y(n4931) );
  AOI2BB2X2 U6931 ( .B0(n5815), .B1(
        median_sobel_inst_u_median_filter_submodule_n222), .A0N(n3699), .A1N(
        median_sobel_inst_u_median_filter_submodule_n1477), .Y(n4932) );
  OR2X2 U6932 ( .A(n5348), .B(median_sobel_inst_n449), .Y(n4936) );
  AOI22X2 U6933 ( .A0(n5784), .A1(median_sobel_inst_n86), .B0(n5329), .B1(
        n4304), .Y(n4935) );
  OA22X4 U6934 ( .A0(median_sobel_inst_n42), .A1(n5466), .B0(
        median_sobel_inst_n935), .B1(n5383), .Y(n4940) );
  NAND2X1 U6935 ( .A(median_sobel_inst_n311), .B(n5387), .Y(n4938) );
  NAND2X1 U6936 ( .A(median_sobel_inst_n311), .B(n5329), .Y(n4943) );
  NAND2X1 U6937 ( .A(median_sobel_inst_n999), .B(n5387), .Y(n4942) );
  NAND2X2 U6938 ( .A(median_sobel_inst_n121), .B(n5890), .Y(n4941) );
  NAND4X4 U6939 ( .A(n4944), .B(n4943), .C(n4942), .D(n4941), .Y(
        median_sobel_inst_data_f_r[1]) );
  AOI22X2 U6940 ( .A0(n5586), .A1(median_sobel_inst_n1102), .B0(
        median_sobel_inst_n1095), .B1(n6021), .Y(n4945) );
  NAND2X2 U6941 ( .A(n4949), .B(n4973), .Y(n4950) );
  NAND2X2 U6942 ( .A(n4957), .B(n4956), .Y(n4958) );
  NAND2X4 U6943 ( .A(n4964), .B(n1984), .Y(n7113) );
  AOI21X4 U6944 ( .A0(n7393), .A1(n7390), .B0(n4966), .Y(n4967) );
  OAI21X4 U6945 ( .A0(n4984), .A1(n4323), .B0(n4973), .Y(n4971) );
  NAND2X2 U6946 ( .A(input_data_ready_r[21]), .B(input_data_ready_r[5]), .Y(
        n4975) );
  INVX2 U6947 ( .A(n7398), .Y(n4972) );
  AND2X8 U6948 ( .A(n4976), .B(n4975), .Y(n4985) );
  NOR2X4 U6949 ( .A(input_data_ready_r[22]), .B(input_data_ready_r[6]), .Y(
        n7397) );
  NAND2X2 U6950 ( .A(input_data_ready_r[22]), .B(input_data_ready_r[6]), .Y(
        n7402) );
  NAND2X6 U6951 ( .A(n7423), .B(n4982), .Y(n4983) );
  BUFX4 U6952 ( .A(n4984), .Y(n7400) );
  NAND2X1 U6953 ( .A(n4987), .B(n7398), .Y(n4989) );
  INVX6 U6954 ( .A(n4985), .Y(n7406) );
  CLKINVX1 U6955 ( .A(n7402), .Y(n4986) );
  AOI21X4 U6956 ( .A0(n7406), .A1(n4987), .B0(n4986), .Y(n4988) );
  NOR2X4 U6957 ( .A(input_data_ready_r[23]), .B(input_data_ready_r[7]), .Y(
        n7403) );
  NAND2X4 U6958 ( .A(input_data_ready_r[14]), .B(n4991), .Y(n7412) );
  NAND2X2 U6959 ( .A(n4992), .B(n7412), .Y(n4993) );
  NOR2X1 U6960 ( .A(n6243), .B(n4994), .Y(n4996) );
  OAI21X2 U6961 ( .A0(n4994), .A1(n6242), .B0(n6245), .Y(n4995) );
  AO21X4 U6962 ( .A0(n6176), .A1(n4996), .B0(n4995), .Y(n6812) );
  NOR2X2 U6963 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        n4305), .Y(n4998) );
  NOR2X2 U6964 ( .A(n6529), .B(n4998), .Y(n6806) );
  NOR2X2 U6965 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n435), .Y(n6808) );
  OR2X2 U6966 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p9_d_r[7]), .Y(n6814) );
  CLKINVX1 U6967 ( .A(n6814), .Y(n4997) );
  NAND2X1 U6968 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[5]), .B(
        n4305), .Y(n6531) );
  OA21X4 U6969 ( .A0(n4998), .A1(n6702), .B0(n6531), .Y(n6809) );
  INVX3 U6970 ( .A(n6809), .Y(n6634) );
  NAND2X1 U6971 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n435), .Y(n6807) );
  NOR2X2 U6972 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]), .B(
        n4305), .Y(n6852) );
  NOR2X2 U6973 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n434), .Y(n5002) );
  NAND2X1 U6974 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n434), .Y(n6549) );
  OA21X2 U6975 ( .A0(n5002), .A1(n6546), .B0(n6549), .Y(n5003) );
  NAND2X1 U6976 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[5]), .B(
        n4305), .Y(n6853) );
  OAI21X2 U6977 ( .A0(n6852), .A1(n6849), .B0(n6853), .Y(n7121) );
  NAND2X1 U6978 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n435), .Y(n7124) );
  AOI2BB2X1 U6979 ( .B0(n5334), .B1(median_sobel_inst_n94), .A0N(
        median_sobel_inst_n937), .A1N(n5156), .Y(n5010) );
  NAND2X2 U6980 ( .A(n5014), .B(conv_inst_n28), .Y(n5015) );
  BUFX12 U6981 ( .A(n5015), .Y(n6349) );
  NAND2BX1 U6982 ( .AN(median_sobel_inst_n1376), .B(n5596), .Y(n5018) );
  NAND2BX1 U6983 ( .AN(median_sobel_inst_n971), .B(n5890), .Y(n5021) );
  NAND2BX1 U6984 ( .AN(median_sobel_inst_n1164), .B(n6020), .Y(n5020) );
  AOI22X1 U6985 ( .A0(n5596), .A1(median_sobel_inst_n59), .B0(
        median_sobel_inst_n72), .B1(n5334), .Y(n5019) );
  NAND2BX1 U6986 ( .AN(median_sobel_inst_n1163), .B(n6020), .Y(n5022) );
  NAND2X1 U6987 ( .A(median_sobel_inst_n993), .B(n4333), .Y(n5024) );
  OAI21X4 U6988 ( .A0(n5028), .A1(n5027), .B0(n5026), .Y(n6802) );
  AO21X4 U6989 ( .A0(n6802), .A1(n6800), .B0(n5030), .Y(n5031) );
  XNOR2X2 U6990 ( .A(n5031), .B(
        median_sobel_inst_u_median_filter_submodule_n871), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N431) );
  NAND2X2 U6991 ( .A(median_sobel_inst_n60), .B(n5602), .Y(n5034) );
  OR2X4 U6992 ( .A(median_sobel_inst_n921), .B(n5892), .Y(n5033) );
  NAND2X1 U6993 ( .A(median_sobel_inst_n780), .B(n5784), .Y(n5032) );
  NAND2X1 U6994 ( .A(conv_inst_conv_3_r[11]), .B(n4216), .Y(n5039) );
  NAND2X1 U6995 ( .A(n3749), .B(n4294), .Y(n5038) );
  OR2X8 U6996 ( .A(n7560), .B(conv_inst_n28), .Y(n5035) );
  NAND2X1 U6997 ( .A(n7140), .B(conv_inst_conv_1_r[11]), .Y(n5037) );
  NAND4X2 U6998 ( .A(n5039), .B(n5038), .C(n5037), .D(n5036), .Y(n6866) );
  INVX2 U6999 ( .A(n4216), .Y(n5040) );
  AOI2BB2X2 U7000 ( .B0(n7140), .B1(conv_inst_conv_1_r[12]), .A0N(n5040), 
        .A1N(conv_inst_n240), .Y(n5043) );
  NAND2X1 U7001 ( .A(conv_inst_conv_2_r[12]), .B(n3749), .Y(n5042) );
  NAND3X2 U7002 ( .A(n5043), .B(n5042), .C(n5041), .Y(n7187) );
  NAND2X1 U7003 ( .A(n7140), .B(conv_inst_conv_1_r[13]), .Y(n5047) );
  NAND2X1 U7004 ( .A(n7141), .B(conv_inst_conv_2_r[13]), .Y(n5046) );
  NAND2BX1 U7005 ( .AN(n5082), .B(conv_inst_n51), .Y(n5045) );
  NAND4X2 U7006 ( .A(n5047), .B(n5046), .C(n5045), .D(n5044), .Y(n6017) );
  AOI2BB2X1 U7007 ( .B0(n7140), .B1(conv_inst_conv_1_r[14]), .A0N(
        conv_inst_n245), .A1N(n5082), .Y(n5049) );
  NAND3X2 U7008 ( .A(n5050), .B(n5049), .C(n5048), .Y(n5744) );
  AOI2BB2X1 U7009 ( .B0(n7140), .B1(conv_inst_conv_1_r[15]), .A0N(
        conv_inst_n22), .A1N(n5082), .Y(n5053) );
  NAND2BX1 U7010 ( .AN(conv_inst_n21), .B(n7141), .Y(n5051) );
  AOI2BB2X2 U7011 ( .B0(n7140), .B1(conv_inst_conv_1_r[8]), .A0N(conv_inst_n47), .A1N(n5082), .Y(n5058) );
  NAND2X1 U7012 ( .A(conv_inst_n49), .B(n4216), .Y(n5057) );
  NAND3X2 U7013 ( .A(n5058), .B(n5057), .C(n5056), .Y(n5637) );
  OAI21X2 U7014 ( .A0(conv_inst_n132), .A1(n5082), .B0(n5059), .Y(n5060) );
  AOI2BB1X2 U7015 ( .A0N(n5061), .A1N(conv_inst_n15), .B0(n5060), .Y(n5062) );
  AOI2BB2X1 U7016 ( .B0(conv_inst_conv_3_r[10]), .B1(n4216), .A0N(
        conv_inst_n242), .A1N(n5082), .Y(n5065) );
  NAND2X1 U7017 ( .A(conv_inst_conv_1_r[10]), .B(n7140), .Y(n5064) );
  NAND2X1 U7018 ( .A(n7141), .B(conv_inst_conv_2_r[10]), .Y(n5063) );
  NAND3X2 U7019 ( .A(n5065), .B(n5064), .C(n5063), .Y(n5096) );
  NAND2X1 U7020 ( .A(n5847), .B(conv_inst_conv_2_r[6]), .Y(n5068) );
  NAND2X1 U7021 ( .A(n7140), .B(conv_inst_conv_1_r[6]), .Y(n5067) );
  NAND2BX1 U7022 ( .AN(conv_inst_n238), .B(n4216), .Y(n5066) );
  NAND4X2 U7023 ( .A(n5069), .B(n5068), .C(n5067), .D(n5066), .Y(n6411) );
  NAND2X2 U7024 ( .A(n7141), .B(conv_inst_conv_2_r[5]), .Y(n5072) );
  NAND2X1 U7025 ( .A(n7140), .B(conv_inst_conv_1_r[5]), .Y(n5071) );
  NAND4X4 U7026 ( .A(n5073), .B(n5072), .C(n5071), .D(n5070), .Y(n6409) );
  NAND2X1 U7027 ( .A(n5847), .B(conv_inst_conv_2_r[4]), .Y(n5076) );
  NAND2X1 U7028 ( .A(n7140), .B(conv_inst_conv_1_r[4]), .Y(n5075) );
  NAND2BX1 U7029 ( .AN(conv_inst_n234), .B(n4216), .Y(n5074) );
  NAND4X2 U7030 ( .A(n5077), .B(n5076), .C(n5075), .D(n5074), .Y(n5614) );
  NAND2X2 U7031 ( .A(n7141), .B(conv_inst_conv_2_r[3]), .Y(n5080) );
  NAND2X1 U7032 ( .A(n7140), .B(conv_inst_conv_1_r[3]), .Y(n5079) );
  NAND2BX1 U7033 ( .AN(conv_inst_n239), .B(n4216), .Y(n5078) );
  NAND4X2 U7034 ( .A(n5080), .B(n5081), .C(n5079), .D(n5078), .Y(n5613) );
  NAND2BX1 U7035 ( .AN(conv_inst_n269), .B(n7140), .Y(n5085) );
  NAND4X1 U7036 ( .A(n5086), .B(n5085), .C(n5084), .D(n5083), .Y(n6537) );
  NAND2X1 U7037 ( .A(n7242), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n27), .Y(n5087) );
  CLKINVX1 U7038 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n402), .Y(
        n7281) );
  OR2X4 U7039 ( .A(n5087), .B(n7238), .Y(n7293) );
  OR2X4 U7040 ( .A(n7593), .B(n7293), .Y(n5089) );
  OR2X2 U7041 ( .A(n7271), .B(n5088), .Y(n7267) );
  NOR2X1 U7042 ( .A(n5089), .B(n7267), .Y(n5090) );
  XOR2X1 U7043 ( .A(n5090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n44), .Y(n5092) );
  NAND2BX1 U7044 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n44), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n5091) );
  INVX6 U7045 ( .A(n5093), .Y(n6716) );
  CLKINVX1 U7046 ( .A(n5096), .Y(n5097) );
  XNOR2X4 U7047 ( .A(n5098), .B(n5097), .Y(conv_inst_N72) );
  NOR2X2 U7048 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n6510)
         );
  NOR2X1 U7049 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n97), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n49), .Y(n6509) );
  NOR2X2 U7050 ( .A(n6510), .B(n6509), .Y(n6638) );
  NOR2X1 U7051 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net94800), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n97), .Y(n6517) );
  NOR2X2 U7052 ( .A(n6646), .B(n6517), .Y(n5102) );
  NOR2X4 U7053 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n6203)
         );
  NOR2X1 U7054 ( .A(n6203), .B(n6201), .Y(n5100) );
  AND2X4 U7055 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n75), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6029) );
  INVX3 U7056 ( .A(n6029), .Y(n6024) );
  OAI21X4 U7057 ( .A0(n6024), .A1(n6026), .B0(n6027), .Y(n6138) );
  NAND2X1 U7058 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n6204)
         );
  OAI21X2 U7059 ( .A0(n6203), .A1(n6200), .B0(n6204), .Y(n5099) );
  NAND2X1 U7060 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), .Y(n6511)
         );
  OAI21X2 U7061 ( .A0(n6510), .A1(n6508), .B0(n6511), .Y(n6642) );
  NAND2X1 U7062 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net94800), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n97), .Y(n6639) );
  NAND2X1 U7063 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_net96945), .Y(n6647)
         );
  OAI21X1 U7064 ( .A0(n6646), .A1(n6639), .B0(n6647), .Y(n5101) );
  AOI22X2 U7065 ( .A0(n5784), .A1(median_sobel_inst_n1026), .B0(
        median_sobel_inst_n142), .B1(n6020), .Y(n5106) );
  OR2X2 U7066 ( .A(median_sobel_inst_n918), .B(n4001), .Y(n5105) );
  OR2X4 U7067 ( .A(median_sobel_inst_n914), .B(n5383), .Y(n5104) );
  AOI21X2 U7068 ( .A0(n5642), .A1(n5641), .B0(n5107), .Y(n5110) );
  NOR2X4 U7069 ( .A(conv_inst_conv_4_r[5]), .B(conv_inst_data_bcd_4_r[5]), .Y(
        n5141) );
  NAND2X2 U7070 ( .A(conv_inst_conv_4_r[5]), .B(conv_inst_data_bcd_4_r[5]), 
        .Y(n5140) );
  NAND2X1 U7071 ( .A(n5108), .B(n5140), .Y(n5109) );
  XOR2X1 U7072 ( .A(n5110), .B(n5109), .Y(n5111) );
  NOR2BX2 U7073 ( .AN(n5111), .B(n6797), .Y(conv_inst_N275) );
  NAND2X1 U7074 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n37), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n22), .Y(n7487) );
  NAND2X1 U7075 ( .A(n7480), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n29), .Y(n5113) );
  NAND2X2 U7076 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n7), .B(
        n7476), .Y(n7478) );
  OR2X4 U7077 ( .A(n5113), .B(n7478), .Y(n7491) );
  XOR2X1 U7078 ( .A(n5114), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n340), .Y(n5115) );
  AO22X4 U7079 ( .A0(n3568), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n340), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .B1(n5115), 
        .Y(median_sobel_inst_u_sobel_gradient_submodule_N740) );
  OAI22XL U7080 ( .A0(n1963), .A1(n7470), .B0(n1915), .B1(n7469), .Y(n5117) );
  OAI22XL U7081 ( .A0(n1946), .A1(n7472), .B0(n1919), .B1(n7471), .Y(n5116) );
  NOR2BX2 U7082 ( .AN(n7224), .B(x_origin_r[2]), .Y(n6160) );
  NOR2BX4 U7083 ( .AN(n7449), .B(n6160), .Y(n7458) );
  NAND2X1 U7084 ( .A(median_sobel_inst_n65), .B(n5691), .Y(n5121) );
  OR2X2 U7085 ( .A(median_sobel_inst_n419), .B(n5828), .Y(n5120) );
  NAND4X2 U7086 ( .A(n5121), .B(n5120), .C(n5119), .D(n5118), .Y(
        median_sobel_inst_data_e_r[0]) );
  NAND2BX4 U7087 ( .AN(n7472), .B(n7449), .Y(n5122) );
  OAI22XL U7088 ( .A0(n1942), .A1(n7327), .B0(n1966), .B1(n5123), .Y(n5127) );
  NAND2BX4 U7089 ( .AN(n7470), .B(n7449), .Y(n5124) );
  BUFX12 U7090 ( .A(n5124), .Y(n7322) );
  OR2X2 U7091 ( .A(n5127), .B(n5126), .Y(N737) );
  OAI22XL U7092 ( .A0(n1948), .A1(n7327), .B0(n1962), .B1(n5123), .Y(n5129) );
  OAI22XL U7093 ( .A0(n1969), .A1(n7322), .B0(n1943), .B1(n7323), .Y(n5128) );
  OAI22XL U7094 ( .A0(n1945), .A1(n7322), .B0(n1966), .B1(n7323), .Y(n5131) );
  OAI2BB2XL U7095 ( .B0(n1942), .B1(n5123), .A0N(n7740), .A1N(n7318), .Y(n5130) );
  OAI22XL U7096 ( .A0(n1918), .A1(n7327), .B0(n1964), .B1(n5123), .Y(n5133) );
  OAI22XL U7097 ( .A0(n1921), .A1(n7322), .B0(n1947), .B1(n7323), .Y(n5132) );
  OR2X2 U7098 ( .A(n5133), .B(n5132), .Y(N733) );
  OAI22XL U7099 ( .A0(n1959), .A1(n7327), .B0(n1944), .B1(n5123), .Y(n5135) );
  OAI22XL U7100 ( .A0(n1938), .A1(n7322), .B0(n1960), .B1(n7323), .Y(n5134) );
  OR2X2 U7101 ( .A(n5135), .B(n5134), .Y(N738) );
  OAI22XL U7102 ( .A0(n1941), .A1(n7327), .B0(n1965), .B1(n5123), .Y(n5137) );
  OAI22XL U7103 ( .A0(n1917), .A1(n7322), .B0(n1939), .B1(n7323), .Y(n5136) );
  OR2X2 U7104 ( .A(n5137), .B(n5136), .Y(N735) );
  NOR2BX1 U7105 ( .AN(n5630), .B(n5408), .Y(n5143) );
  OAI21X4 U7106 ( .A0(n5141), .A1(n5640), .B0(n5140), .Y(n5629) );
  CLKINVX1 U7107 ( .A(n5408), .Y(n5632) );
  NAND2X2 U7108 ( .A(conv_inst_n50), .B(conv_inst_data_bcd_4_r[6]), .Y(n5631)
         );
  OAI2BB1X1 U7109 ( .A0N(n5629), .A1N(n5632), .B0(n5631), .Y(n5142) );
  NAND2X1 U7110 ( .A(conv_inst_conv_4_r[7]), .B(conv_inst_data_bcd_4_r[7]), 
        .Y(n5409) );
  NAND2X1 U7111 ( .A(n5144), .B(n5409), .Y(n5145) );
  XOR2X1 U7112 ( .A(n5146), .B(n5145), .Y(n5147) );
  NOR2BX1 U7113 ( .AN(n5147), .B(n3646), .Y(conv_inst_N277) );
  OAI22X2 U7114 ( .A0(n5383), .A1(median_sobel_inst_n1152), .B0(n7137), .B1(
        median_sobel_inst_n1165), .Y(n5148) );
  NAND2X1 U7115 ( .A(n5596), .B(median_sobel_inst_n138), .Y(n5153) );
  NAND2X1 U7116 ( .A(n5334), .B(median_sobel_inst_n145), .Y(n5151) );
  OAI2BB1X4 U7117 ( .A0N(n6021), .A1N(median_sobel_inst_n745), .B0(n5151), .Y(
        n5152) );
  NAND2X2 U7118 ( .A(n5596), .B(median_sobel_inst_n1066), .Y(n5160) );
  NAND2X1 U7119 ( .A(median_sobel_inst_n123), .B(n5387), .Y(n5157) );
  AOI22X2 U7120 ( .A0(n5602), .A1(median_sobel_inst_n121), .B0(
        median_sobel_inst_n1066), .B1(n5890), .Y(n5162) );
  NAND3X6 U7121 ( .A(n5164), .B(n5163), .C(n5162), .Y(
        median_sobel_inst_data_e_r[1]) );
  OR2X2 U7122 ( .A(median_sobel_inst_n443), .B(n5828), .Y(n5167) );
  AOI2BB2X1 U7123 ( .B0(median_sobel_inst_u_median_filter_submodule_n361), 
        .B1(median_sobel_inst_u_median_filter_submodule_net96572), .A0N(
        median_sobel_inst_u_median_filter_submodule_a5_r_3_), .A1N(n5186), .Y(
        n5169) );
  NAND2BX2 U7124 ( .AN(median_sobel_inst_u_median_filter_submodule_n259), .B(
        median_sobel_inst_u_median_filter_submodule_net94786), .Y(n5173) );
  NAND2BX2 U7125 ( .AN(median_sobel_inst_u_median_filter_submodule_net99809), 
        .B(median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n5171) );
  NOR2X1 U7126 ( .A(median_sobel_inst_u_median_filter_submodule_n361), .B(
        median_sobel_inst_u_median_filter_submodule_net96572), .Y(n5172) );
  INVX3 U7127 ( .A(median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(
        n5187) );
  AOI22X1 U7128 ( .A0(n5174), .A1(
        median_sobel_inst_u_median_filter_submodule_n259), .B0(
        median_sobel_inst_u_median_filter_submodule_n271), .B1(
        median_sobel_inst_u_median_filter_submodule_n773), .Y(n5176) );
  OAI21X1 U7129 ( .A0(median_sobel_inst_u_median_filter_submodule_n259), .A1(
        n5174), .B0(n4268), .Y(n5175) );
  NOR2X4 U7130 ( .A(n5186), .B(
        median_sobel_inst_u_median_filter_submodule_n1093), .Y(n5182) );
  AOI21X1 U7131 ( .A0(n5182), .A1(
        median_sobel_inst_u_median_filter_submodule_net96572), .B0(
        median_sobel_inst_u_median_filter_submodule_a4_r_5_), .Y(n5180) );
  OAI21X1 U7132 ( .A0(median_sobel_inst_u_median_filter_submodule_net94827), 
        .A1(median_sobel_inst_u_median_filter_submodule_n780), .B0(
        median_sobel_inst_u_median_filter_submodule_n1071), .Y(n5183) );
  AOI2BB2X1 U7133 ( .B0(median_sobel_inst_u_median_filter_submodule_n773), 
        .B1(median_sobel_inst_u_median_filter_submodule_n971), .A0N(
        median_sobel_inst_u_median_filter_submodule_net94786), .A1N(
        median_sobel_inst_u_median_filter_submodule_n785), .Y(n5190) );
  NAND2BX1 U7134 ( .AN(median_sobel_inst_u_median_filter_submodule_net96588), 
        .B(median_sobel_inst_u_median_filter_submodule_net99809), .Y(n5201) );
  NAND2XL U7135 ( .A(median_sobel_inst_u_median_filter_submodule_n780), .B(
        median_sobel_inst_u_median_filter_submodule_n257), .Y(n5194) );
  NAND2BX1 U7136 ( .AN(median_sobel_inst_u_median_filter_submodule_net102875), 
        .B(median_sobel_inst_u_median_filter_submodule_net94922), .Y(n5196) );
  NAND3X2 U7137 ( .A(n5197), .B(n5196), .C(n5195), .Y(n5203) );
  AOI2BB2X1 U7138 ( .B0(median_sobel_inst_u_median_filter_submodule_a5_r_3_), 
        .B1(n5199), .A0N(n5198), .A1N(
        median_sobel_inst_u_median_filter_submodule_net94922), .Y(n5202) );
  OAI2BB1X4 U7139 ( .A0N(n7672), .A1N(n4083), .B0(n5210), .Y(n5215) );
  BUFX12 U7140 ( .A(n5213), .Y(n5819) );
  NAND2BX4 U7141 ( .AN(n5215), .B(n5214), .Y(
        median_sobel_inst_u_median_filter_submodule_n771) );
  OAI21X2 U7142 ( .A0(median_sobel_inst_u_median_filter_submodule_n789), .A1(
        n5712), .B0(n5216), .Y(
        median_sobel_inst_u_median_filter_submodule_n817) );
  OAI21X2 U7143 ( .A0(median_sobel_inst_u_median_filter_submodule_n790), .A1(
        n5712), .B0(n5218), .Y(
        median_sobel_inst_u_median_filter_submodule_n818) );
  NAND2X1 U7144 ( .A(median_sobel_inst_n56), .B(n5387), .Y(n5219) );
  BUFX20 U7145 ( .A(n4333), .Y(n5968) );
  NAND2X2 U7146 ( .A(median_sobel_inst_n745), .B(n5968), .Y(n5220) );
  AOI22X1 U7147 ( .A0(n6684), .A1(median_sobel_inst_n1098), .B0(
        median_sobel_inst_n138), .B1(n6020), .Y(n5223) );
  NAND2X2 U7148 ( .A(median_sobel_inst_n59), .B(n5586), .Y(n5230) );
  OR2X2 U7149 ( .A(median_sobel_inst_n413), .B(n5892), .Y(n5229) );
  NAND2X2 U7150 ( .A(median_sobel_inst_n1022), .B(n6019), .Y(n5228) );
  NAND2BX1 U7151 ( .AN(median_sobel_inst_n928), .B(n5596), .Y(n5235) );
  NAND2X1 U7152 ( .A(median_sobel_inst_n1109), .B(n6021), .Y(n5231) );
  AOI21X4 U7153 ( .A0(median_sobel_inst_data_g_r[7]), .A1(n5242), .B0(n5241), 
        .Y(n5243) );
  OAI2BB1X4 U7154 ( .A0N(n5245), .A1N(n5244), .B0(n5243), .Y(
        median_sobel_inst_u_median_filter_submodule_a47_w) );
  NAND2BX2 U7155 ( .AN(n5348), .B(median_sobel_inst_n733), .Y(n5252) );
  AOI2BB2X4 U7156 ( .B0(n5784), .B1(median_sobel_inst_n145), .A0N(
        median_sobel_inst_n1160), .A1N(n5378), .Y(n5251) );
  NAND3X6 U7157 ( .A(n5252), .B(n5251), .C(n5250), .Y(
        median_sobel_inst_data_i_r[4]) );
  CLKINVX1 U7158 ( .A(median_sobel_inst_n147), .Y(n5367) );
  AOI21X2 U7159 ( .A0(median_sobel_inst_n1342), .A1(n5784), .B0(n5253), .Y(
        n5254) );
  OAI2BB1X4 U7160 ( .A0N(n5382), .A1N(median_sobel_inst_n1343), .B0(n5254), 
        .Y(median_sobel_inst_data_c_r[6]) );
  NOR2X4 U7161 ( .A(n5655), .B(n7497), .Y(n6755) );
  NAND2X1 U7162 ( .A(cnt[2]), .B(cnt[3]), .Y(n5257) );
  OR2X2 U7163 ( .A(n453), .B(n7287), .Y(n5259) );
  NAND2X1 U7164 ( .A(cnt[4]), .B(cnt[5]), .Y(n6844) );
  OR2X2 U7165 ( .A(n6844), .B(n5258), .Y(n5608) );
  AOI2BB2X2 U7166 ( .B0(n5260), .B1(median_sobel_inst_n89), .A0N(
        median_sobel_inst_n946), .A1N(n4006), .Y(n5261) );
  OA21X4 U7167 ( .A0(median_sobel_inst_n423), .A1(n5383), .B0(n5261), .Y(n5262) );
  AOI2BB2X2 U7168 ( .B0(n3665), .B1(
        median_sobel_inst_u_median_filter_submodule_net97547), .A0N(n3664), 
        .A1N(n5268), .Y(n5269) );
  OR2X4 U7169 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n340), .B(
        n7491), .Y(n5276) );
  NOR2X1 U7170 ( .A(n5276), .B(n5275), .Y(n5277) );
  XOR2X1 U7171 ( .A(n5277), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n43), .Y(n5278) );
  NOR2BX1 U7172 ( .AN(n7122), .B(n5280), .Y(n5283) );
  AND3X4 U7173 ( .A(n5291), .B(n5290), .C(n5289), .Y(n5292) );
  NAND2BX1 U7174 ( .AN(median_sobel_inst_n917), .B(n6020), .Y(n5295) );
  NAND2X1 U7175 ( .A(median_sobel_inst_n923), .B(n6021), .Y(n5294) );
  OA21X2 U7176 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_net94800), 
        .A1(n5303), .B0(n5682), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N140) );
  NOR2X4 U7177 ( .A(n6445), .B(n6450), .Y(n5308) );
  NAND2X2 U7178 ( .A(n6443), .B(n5308), .Y(n5311) );
  NAND2X1 U7179 ( .A(conv_inst_n41), .B(conv_inst_conv_2_r[7]), .Y(n6451) );
  OAI21X2 U7180 ( .A0(n6444), .A1(n6450), .B0(n6451), .Y(n5307) );
  AOI21X4 U7181 ( .A0(n5309), .A1(n5308), .B0(n5307), .Y(n5310) );
  OA21X4 U7182 ( .A0(n5312), .A1(n5311), .B0(n5310), .Y(n5313) );
  INVX12 U7183 ( .A(n5313), .Y(n6335) );
  NOR2X4 U7184 ( .A(conv_inst_conv_2_r[9]), .B(conv_inst_data_bcd_2_r[9]), .Y(
        n5841) );
  NOR2X4 U7185 ( .A(n5841), .B(n4287), .Y(n5417) );
  NAND2X2 U7186 ( .A(conv_inst_conv_2_r[9]), .B(conv_inst_data_bcd_2_r[9]), 
        .Y(n5842) );
  OAI21X4 U7187 ( .A0(n5841), .A1(n6332), .B0(n5842), .Y(n5419) );
  AO21X4 U7188 ( .A0(n6335), .A1(n5417), .B0(n5419), .Y(n5315) );
  NAND2X2 U7189 ( .A(conv_inst_conv_2_r[10]), .B(conv_inst_data_bcd_2_r[10]), 
        .Y(n5948) );
  XNOR2X1 U7190 ( .A(n5315), .B(n5314), .Y(n5316) );
  AO21X4 U7191 ( .A0(n5915), .A1(n5509), .B0(n5511), .Y(n5318) );
  NAND2X1 U7192 ( .A(n5510), .B(n5916), .Y(n5317) );
  XNOR2X1 U7193 ( .A(n5318), .B(n5317), .Y(n5319) );
  NAND2X1 U7194 ( .A(n5334), .B(median_sobel_inst_n89), .Y(n5320) );
  AOI22X1 U7195 ( .A0(n5329), .A1(median_sobel_inst_n316), .B0(
        median_sobel_inst_n324), .B1(n6020), .Y(n5323) );
  NAND2BX1 U7196 ( .AN(median_sobel_inst_n1164), .B(n5890), .Y(n5326) );
  AOI2BB2X4 U7197 ( .B0(n6021), .B1(median_sobel_inst_n145), .A0N(
        median_sobel_inst_n946), .A1N(n5466), .Y(n5328) );
  CLKINVX1 U7198 ( .A(median_sobel_inst_n127), .Y(n5969) );
  OAI21X4 U7199 ( .A0(n5828), .A1(n5969), .B0(n5330), .Y(n5331) );
  NAND2BX2 U7200 ( .AN(median_sobel_inst_n916), .B(n6020), .Y(n5332) );
  NAND2X6 U7201 ( .A(n5333), .B(n5332), .Y(median_sobel_inst_data_f_r[3]) );
  NAND2X1 U7202 ( .A(n5334), .B(median_sobel_inst_n1043), .Y(n5336) );
  NAND2X1 U7203 ( .A(median_sobel_inst_n1015), .B(n5387), .Y(n5335) );
  INVX1 U7204 ( .A(median_sobel_inst_n94), .Y(n5347) );
  NOR2X1 U7205 ( .A(median_sobel_inst_n926), .B(n3758), .Y(n5349) );
  NAND2BX1 U7206 ( .AN(median_sobel_inst_n1005), .B(n5382), .Y(n5351) );
  NAND2X2 U7207 ( .A(n4294), .B(conv_inst_conv_2_r[12]), .Y(n5359) );
  NOR2X4 U7208 ( .A(n5359), .B(n5949), .Y(n5358) );
  OR2X2 U7209 ( .A(n5481), .B(conv_inst_n21), .Y(n5362) );
  NOR2X1 U7210 ( .A(n5623), .B(n5362), .Y(n5364) );
  AND2X4 U7211 ( .A(n5358), .B(n5419), .Y(n5361) );
  NOR2X2 U7212 ( .A(n5359), .B(n5948), .Y(n5360) );
  NOR2X1 U7213 ( .A(n5624), .B(n5362), .Y(n5363) );
  AO21X4 U7214 ( .A0(n6335), .A1(n5364), .B0(n5363), .Y(n5365) );
  NOR2BX4 U7215 ( .AN(n5366), .B(n6797), .Y(conv_inst_N2520) );
  NAND2X1 U7216 ( .A(median_sobel_inst_n1342), .B(n5691), .Y(n5370) );
  AOI22X2 U7217 ( .A0(n5784), .A1(median_sobel_inst_n1017), .B0(n6020), .B1(
        median_sobel_inst_n127), .Y(n5379) );
  NAND2BX1 U7218 ( .AN(median_sobel_inst_n51), .B(n5382), .Y(n5385) );
  AOI2BB2X4 U7219 ( .B0(median_sobel_inst_n65), .B1(n6020), .A0N(
        median_sobel_inst_n419), .A1N(n5383), .Y(n5384) );
  NAND2X1 U7220 ( .A(median_sobel_inst_n1043), .B(n5387), .Y(n5389) );
  NAND2X2 U7221 ( .A(n5389), .B(n5388), .Y(n5390) );
  AOI2BB1X4 U7222 ( .A0N(median_sobel_inst_n814), .A1N(n5828), .B0(n5390), .Y(
        n5391) );
  NAND2X4 U7223 ( .A(n5392), .B(n5391), .Y(median_sobel_inst_data_c_r[2]) );
  NAND2X2 U7224 ( .A(n5758), .B(median_sobel_inst_data_f_r[1]), .Y(n5397) );
  NOR2X4 U7225 ( .A(n5407), .B(median_sobel_inst_data_f_r[5]), .Y(n5402) );
  INVX3 U7226 ( .A(n5404), .Y(n5405) );
  OAI21X2 U7227 ( .A0(n5410), .A1(n5631), .B0(n5409), .Y(n5411) );
  NAND2X4 U7228 ( .A(conv_inst_conv_4_r[8]), .B(conv_inst_data_bcd_4_r[8]), 
        .Y(n6468) );
  OAI21X4 U7229 ( .A0(n5800), .A1(n6468), .B0(n5801), .Y(n5575) );
  NAND2X2 U7230 ( .A(conv_inst_conv_4_r[10]), .B(conv_inst_n39), .Y(n5650) );
  NOR2X2 U7231 ( .A(n5413), .B(n5650), .Y(n5414) );
  AOI21X4 U7232 ( .A0(n5415), .A1(n5575), .B0(n5414), .Y(n5606) );
  CLKINVX1 U7233 ( .A(conv_inst_n51), .Y(n5605) );
  CLKINVX1 U7234 ( .A(n5417), .Y(n5946) );
  NAND2X1 U7235 ( .A(n5418), .B(n4294), .Y(n5421) );
  CLKINVX1 U7236 ( .A(n5419), .Y(n5950) );
  NAND2BX1 U7237 ( .AN(n5948), .B(n4294), .Y(n5420) );
  OAI21X1 U7238 ( .A0(n5950), .A1(n5421), .B0(n5420), .Y(n5422) );
  XNOR2X1 U7239 ( .A(n5424), .B(conv_inst_conv_2_r[12]), .Y(n5425) );
  NOR2BX4 U7240 ( .AN(n5425), .B(n6797), .Y(conv_inst_N248) );
  AOI21X4 U7241 ( .A0(n5427), .A1(n6267), .B0(n5426), .Y(n5433) );
  NOR2X4 U7242 ( .A(n6325), .B(n5429), .Y(n5431) );
  NAND2X2 U7243 ( .A(n5431), .B(n6323), .Y(n5432) );
  NOR2X1 U7244 ( .A(n5899), .B(n5435), .Y(n5437) );
  OA21X2 U7245 ( .A0(n5907), .A1(n5904), .B0(n5908), .Y(n5901) );
  NAND2BX1 U7246 ( .AN(n5900), .B(conv_inst_conv_3_r[11]), .Y(n5434) );
  OAI21X1 U7247 ( .A0(n5901), .A1(n5435), .B0(n5434), .Y(n5436) );
  AOI21X4 U7248 ( .A0(n5906), .A1(n5437), .B0(n5436), .Y(n5438) );
  NOR2BX4 U7249 ( .AN(n5439), .B(n6797), .Y(conv_inst_N2650) );
  NAND2X1 U7250 ( .A(n5440), .B(n5900), .Y(n5441) );
  NOR2X1 U7251 ( .A(n5447), .B(n5443), .Y(n5444) );
  NOR2BX4 U7252 ( .AN(n5446), .B(n6797), .Y(conv_inst_N2350) );
  AO21X4 U7253 ( .A0(n6471), .A1(n5572), .B0(n5575), .Y(n5456) );
  INVX3 U7254 ( .A(n5651), .Y(n5573) );
  XOR2X4 U7255 ( .A(n5464), .B(n5463), .Y(conv_inst_data_bcd_w[6]) );
  AOI2BB2X1 U7256 ( .B0(n6021), .B1(n3965), .A0N(median_sobel_inst_n46), .A1N(
        n5466), .Y(n5469) );
  NAND3X2 U7257 ( .A(n5470), .B(n5469), .C(n5468), .Y(
        median_sobel_inst_data_b_r[7]) );
  INVX3 U7258 ( .A(median_sobel_inst_data_b_r[7]), .Y(n5506) );
  AOI2BB2X1 U7259 ( .B0(median_sobel_inst_data_b_r[6]), .B1(n5471), .A0N(n5506), .A1N(median_sobel_inst_data_e_r[7]), .Y(n5480) );
  INVX3 U7260 ( .A(median_sobel_inst_data_e_r[1]), .Y(n5472) );
  AOI2BB2X2 U7261 ( .B0(n5477), .B1(median_sobel_inst_data_e_r[6]), .A0N(
        median_sobel_inst_data_b_r[5]), .A1N(n5476), .Y(n5478) );
  NOR2X1 U7262 ( .A(n5623), .B(n5481), .Y(n5483) );
  AOI21X2 U7263 ( .A0(n6335), .A1(n5483), .B0(n5482), .Y(n5484) );
  NOR2BX2 U7264 ( .AN(n5485), .B(n6797), .Y(conv_inst_N251) );
  NAND2X1 U7265 ( .A(n5820), .B(n7684), .Y(n5488) );
  NAND2X1 U7266 ( .A(median_sobel_inst_u_median_filter_submodule_net94786), 
        .B(n4359), .Y(n5487) );
  NAND2X1 U7267 ( .A(n5819), .B(
        median_sobel_inst_u_median_filter_submodule_n259), .Y(n5486) );
  NAND2X1 U7268 ( .A(n5820), .B(
        median_sobel_inst_u_median_filter_submodule_net94922), .Y(n5491) );
  NAND2X1 U7269 ( .A(n5819), .B(
        median_sobel_inst_u_median_filter_submodule_net102875), .Y(n5489) );
  NAND3X2 U7270 ( .A(n5490), .B(n5491), .C(n5489), .Y(
        median_sobel_inst_u_median_filter_submodule_n767) );
  AOI2BB2X4 U7271 ( .B0(n5503), .B1(median_sobel_inst_data_h_r[4]), .A0N(n5507), .A1N(median_sobel_inst_data_b_r[6]), .Y(n5505) );
  OAI21X4 U7272 ( .A0(n5503), .A1(n5502), .B0(n5501), .Y(n5504) );
  AOI2BB2X1 U7273 ( .B0(n5507), .B1(median_sobel_inst_data_b_r[6]), .A0N(n5506), .A1N(median_sobel_inst_data_h_r[7]), .Y(n5508) );
  NOR2X1 U7274 ( .A(n5913), .B(n5512), .Y(n5515) );
  NAND2BX1 U7275 ( .AN(n5916), .B(conv_inst_conv_1_r[11]), .Y(n5513) );
  AOI2BB2X1 U7276 ( .B0(median_sobel_inst_u_sobel_gradient_submodule_n455), 
        .B1(median_sobel_inst_u_sobel_gradient_submodule_n650), .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_n545), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .Y(n5543) );
  CLKINVX1 U7277 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n392), .Y(
        n5547) );
  NAND2BX2 U7278 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n85), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n84), .Y(n5518) );
  NAND4X4 U7279 ( .A(n5516), .B(n7571), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n69), .D(
        median_sobel_inst_u_sobel_gradient_submodule_n109), .Y(n5544) );
  NOR3X2 U7280 ( .A(n5517), .B(n5544), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n659), .Y(n5525) );
  CLKINVX1 U7281 ( .A(n5518), .Y(n5522) );
  NAND2BX1 U7282 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n413), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n392), .Y(n5521) );
  INVXL U7283 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n85), .Y(n5519) );
  OAI21X1 U7284 ( .A0(n5522), .A1(n5521), .B0(n5520), .Y(n5524) );
  OAI2BB2X2 U7285 ( .B0(n5525), .B1(n5524), .A0N(n5523), .A1N(
        median_sobel_inst_u_sobel_gradient_submodule_n404), .Y(n5528) );
  NAND2BX1 U7286 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n52), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n353), .Y(n5527) );
  INVXL U7287 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n52), .Y(n5526) );
  AND2X2 U7288 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n74), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(n5532) );
  NOR2BX1 U7289 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n400), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n385), .Y(n5529) );
  NOR2X1 U7290 ( .A(n5532), .B(n5529), .Y(n5530) );
  NAND3BX1 U7291 ( .AN(n5532), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n561), .C(n5531), .Y(
        n5539) );
  INVX2 U7292 ( .A(n5535), .Y(n5533) );
  NAND2BX1 U7293 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n72), .B(
        n5533), .Y(n5534) );
  NAND2BX1 U7294 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n74), .B(
        n5536), .Y(n5537) );
  NOR2BX1 U7295 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n21), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n33), .Y(n5540) );
  NAND2BX1 U7296 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n577), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n72), .Y(n5566) );
  NOR2X2 U7297 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n659), .B(
        n5544), .Y(n5546) );
  OAI2BB1X1 U7298 ( .A0N(median_sobel_inst_u_sobel_gradient_submodule_n392), 
        .A1N(median_sobel_inst_u_sobel_gradient_submodule_n649), .B0(n5548), 
        .Y(n5545) );
  NAND3BX1 U7299 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n649), .B(
        n5548), .C(n5547), .Y(n5552) );
  NOR2BX1 U7300 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n63), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n85), .Y(n5549) );
  NAND2X1 U7301 ( .A(n7503), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n396), .Y(n5557) );
  NAND2X1 U7302 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n657), .B(
        n5523), .Y(n5550) );
  NAND4X2 U7303 ( .A(n5552), .B(n5551), .C(n5557), .D(n5550), .Y(n5553) );
  NAND2BX1 U7304 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n66), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n400), .Y(n5562) );
  NOR2BX1 U7305 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n79), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n657), .Y(n5556) );
  NAND3X1 U7306 ( .A(n5557), .B(n5558), .C(n5556), .Y(n5561) );
  INVXL U7307 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n396), .Y(
        n5559) );
  NAND3X1 U7308 ( .A(n5559), .B(n5558), .C(
        median_sobel_inst_u_sobel_gradient_submodule_n353), .Y(n5560) );
  AOI22X1 U7309 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n577), .A1(
        n5564), .B0(median_sobel_inst_u_sobel_gradient_submodule_n655), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n33), .Y(n5565) );
  AND2X8 U7310 ( .A(n5568), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n28), .Y(n5689) );
  NAND2X1 U7311 ( .A(n5820), .B(
        median_sobel_inst_u_median_filter_submodule_net96588), .Y(n5571) );
  NAND2X1 U7312 ( .A(n5819), .B(
        median_sobel_inst_u_median_filter_submodule_net99809), .Y(n5569) );
  NAND3X2 U7313 ( .A(n5571), .B(n5570), .C(n5569), .Y(
        median_sobel_inst_u_median_filter_submodule_n770) );
  NAND2X1 U7314 ( .A(n5573), .B(conv_inst_conv_4_r[11]), .Y(n5577) );
  NOR2X1 U7315 ( .A(n5649), .B(n5577), .Y(n5574) );
  NAND2BX1 U7316 ( .AN(n5650), .B(conv_inst_conv_4_r[11]), .Y(n5576) );
  OAI21X1 U7317 ( .A0(n5652), .A1(n5577), .B0(n5576), .Y(n5578) );
  NOR2X4 U7318 ( .A(n5579), .B(n5578), .Y(n5580) );
  XNOR2X4 U7319 ( .A(n5580), .B(conv_inst_conv_4_r[12]), .Y(n5581) );
  NOR2BX4 U7320 ( .AN(n5581), .B(n3646), .Y(conv_inst_N282) );
  NAND2X1 U7321 ( .A(conv_inst_n51), .B(conv_inst_conv_4_r[14]), .Y(n5881) );
  NOR2X1 U7322 ( .A(n5881), .B(n5604), .Y(n5583) );
  NOR2BX4 U7323 ( .AN(n5884), .B(n5881), .Y(n5582) );
  AOI21X2 U7324 ( .A0(n6471), .A1(n5583), .B0(n5582), .Y(n5584) );
  MXI2X1 U7325 ( .A(median_sobel_inst_n195), .B(n7692), .S0(n6683), .Y(
        median_sobel_inst_n1487) );
  MXI2X1 U7326 ( .A(median_sobel_inst_n266), .B(n7674), .S0(n6019), .Y(
        median_sobel_inst_n1470) );
  MXI2X1 U7327 ( .A(median_sobel_inst_n51), .B(median_sobel_inst_n214), .S0(
        n6020), .Y(n7615) );
  MXI2X1 U7328 ( .A(median_sobel_inst_n43), .B(median_sobel_inst_n206), .S0(
        n6020), .Y(n7617) );
  MXI2X1 U7329 ( .A(median_sobel_inst_n251), .B(n7692), .S0(n5976), .Y(
        median_sobel_inst_n1458) );
  INVX3 U7330 ( .A(n6421), .Y(n6343) );
  NOR2X4 U7331 ( .A(median_sobel_inst_u_median_filter_submodule_n1469), .B(
        n3909), .Y(n6418) );
  AOI2BB2X1 U7332 ( .B0(n6421), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n926), .A1N(n6342), .Y(
        n5592) );
  CLKINVX1 U7333 ( .A(n5593), .Y(n6791) );
  XNOR2X1 U7334 ( .A(n6792), .B(n5594), .Y(n5595) );
  MXI2X1 U7335 ( .A(n7500), .B(median_sobel_inst_n213), .S0(n5964), .Y(
        median_sobel_inst_n1417) );
  AOI2BB2X1 U7336 ( .B0(n6421), .B1(n7251), .A0N(
        median_sobel_inst_u_median_filter_submodule_n925), .A1N(n6342), .Y(
        n5597) );
  AOI2BB2X1 U7337 ( .B0(n6419), .B1(n5966), .A0N(n6260), .A1N(
        median_sobel_inst_u_median_filter_submodule_n867), .Y(n5601) );
  MXI2X1 U7338 ( .A(n4324), .B(median_sobel_inst_n246), .S0(n5955), .Y(
        median_sobel_inst_n1466) );
  CLKMX2X2 U7339 ( .A(n7647), .B(median_sobel_inst_G[26]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n111) );
  CLKMX2X2 U7340 ( .A(n7660), .B(median_sobel_inst_G[40]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n103) );
  CLKMX2X2 U7341 ( .A(n7644), .B(median_sobel_inst_G[28]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n113) );
  CLKMX2X2 U7342 ( .A(n7664), .B(median_sobel_inst_G[35]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n98) );
  CLKMX2X2 U7343 ( .A(n7643), .B(median_sobel_inst_G[27]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n112) );
  CLKMX2X2 U7344 ( .A(n7653), .B(median_sobel_inst_G[36]), .S0(n6253), .Y(
        median_sobel_inst_u_sober_compare_submodule_n99) );
  MXI2X1 U7345 ( .A(median_sobel_inst_n420), .B(n7703), .S0(n6535), .Y(
        median_sobel_inst_n592) );
  NAND2X4 U7346 ( .A(median_sobel_inst_u_median_filter_submodule_n641), .B(
        n7577), .Y(n7156) );
  OA22X1 U7347 ( .A0(n7155), .A1(
        median_sobel_inst_u_median_filter_submodule_n909), .B0(
        median_sobel_inst_u_median_filter_submodule_n1500), .B1(n7156), .Y(
        n5603) );
  MXI2X1 U7348 ( .A(median_sobel_inst_n814), .B(median_sobel_inst_n216), .S0(
        n6087), .Y(median_sobel_inst_n629) );
  OR2X2 U7349 ( .A(n5608), .B(n7287), .Y(n5609) );
  XOR2X1 U7350 ( .A(n5609), .B(n453), .Y(n5610) );
  OAI2BB2X1 U7351 ( .B0(n453), .B1(n6986), .A0N(n7292), .A1N(n5610), .Y(n476)
         );
  MX2X1 U7352 ( .A(median_sobel_inst_n764), .B(n7694), .S0(n6087), .Y(
        median_sobel_inst_n576) );
  MX2X1 U7353 ( .A(median_sobel_inst_n56), .B(input_data_ready_r[13]), .S0(
        n6087), .Y(median_sobel_inst_n538) );
  AOI2BB2X1 U7354 ( .B0(n6421), .B1(n7247), .A0N(
        median_sobel_inst_u_median_filter_submodule_n911), .A1N(n6342), .Y(
        n5611) );
  OAI21XL U7355 ( .A0(n6345), .A1(
        median_sobel_inst_u_median_filter_submodule_n863), .B0(n5611), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[4]) );
  AOI2BB2X1 U7356 ( .B0(n6421), .B1(n7687), .A0N(
        median_sobel_inst_u_median_filter_submodule_n928), .A1N(n6342), .Y(
        n5612) );
  OAI21XL U7357 ( .A0(n6345), .A1(
        median_sobel_inst_u_median_filter_submodule_n891), .B0(n5612), .Y(
        median_sobel_inst_u_median_filter_submodule_a9[5]) );
  OAI22XL U7358 ( .A0(conv_inst_n256), .A1(n6430), .B0(n6349), .B1(
        conv_inst_n257), .Y(conv_inst_N198) );
  XOR2X1 U7359 ( .A(n5621), .B(n5620), .Y(n5622) );
  NOR2X1 U7360 ( .A(n5623), .B(conv_inst_n18), .Y(n5626) );
  AO21X4 U7361 ( .A0(n6335), .A1(n5626), .B0(n5625), .Y(n5627) );
  XOR2X2 U7362 ( .A(n5627), .B(conv_inst_conv_2_r[14]), .Y(n5628) );
  AO21X4 U7363 ( .A0(n5642), .A1(n5630), .B0(n5629), .Y(n5634) );
  XNOR2X1 U7364 ( .A(n5634), .B(n5633), .Y(n5635) );
  NOR2X1 U7365 ( .A(n5649), .B(n5651), .Y(n5654) );
  OAI21X1 U7366 ( .A0(n5652), .A1(n5651), .B0(n5650), .Y(n5653) );
  INVX3 U7367 ( .A(n5655), .Y(n5657) );
  NAND2X1 U7368 ( .A(x_plus_two_r[1]), .B(n7588), .Y(n5660) );
  OAI21X1 U7369 ( .A0(x_plus_two_r[2]), .A1(n5660), .B0(n5659), .Y(n5662) );
  NAND2X1 U7370 ( .A(n7600), .B(n1991), .Y(n5661) );
  MXI2X1 U7371 ( .A(n7579), .B(n5662), .S0(n5661), .Y(n5670) );
  NAND3X2 U7372 ( .A(n5665), .B(n5664), .C(n5663), .Y(n5666) );
  NOR2X4 U7373 ( .A(n6048), .B(n5666), .Y(n7032) );
  NOR2X1 U7374 ( .A(n7032), .B(n5668), .Y(n5669) );
  INVX16 U7375 ( .A(n4029), .Y(n7145) );
  CLKINVX1 U7376 ( .A(n5672), .Y(n5673) );
  INVX3 U7377 ( .A(n5674), .Y(n5675) );
  NAND2X4 U7378 ( .A(n5675), .B(x_r[2]), .Y(n7038) );
  NAND3X2 U7379 ( .A(n5677), .B(n5676), .C(n7038), .Y(n1393) );
  INVX3 U7380 ( .A(n6539), .Y(n5679) );
  NOR2X4 U7381 ( .A(n5679), .B(n7186), .Y(n5680) );
  XOR2X2 U7382 ( .A(n5680), .B(n6538), .Y(conv_inst_N77) );
  XOR2X1 U7383 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy_delay[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_n656), .Y(n5688) );
  OAI21X4 U7384 ( .A0(n5689), .A1(n5688), .B0(n5687), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_angle_wait_r[1]) );
  XOR2X1 U7385 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n75), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N132) );
  MXI2X1 U7386 ( .A(median_sobel_inst_n273), .B(n7633), .S0(n7137), .Y(
        median_sobel_inst_n572) );
  MXI2X1 U7387 ( .A(median_sobel_inst_n246), .B(n7659), .S0(n7137), .Y(
        median_sobel_inst_n599) );
  XNOR2X1 U7388 ( .A(n7549), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[0]) );
  XNOR2X1 U7389 ( .A(n7538), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[0]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[0]) );
  MXI2X1 U7390 ( .A(median_sobel_inst_n245), .B(n5690), .S0(n7137), .Y(
        median_sobel_inst_n600) );
  MXI2X1 U7391 ( .A(median_sobel_inst_n234), .B(n7674), .S0(n5720), .Y(
        median_sobel_inst_n1445) );
  MX2X1 U7392 ( .A(median_sobel_inst_G[41]), .B(
        median_sobel_inst_u_sober_compare_submodule_n199), .S0(n5892), .Y(
        median_sobel_inst_u_sober_compare_submodule_n104) );
  OA22X1 U7393 ( .A0(median_sobel_inst_u_median_filter_submodule_n878), .A1(
        n6756), .B0(median_sobel_inst_u_median_filter_submodule_n865), .B1(
        n5829), .Y(n5692) );
  OAI21XL U7394 ( .A0(median_sobel_inst_u_median_filter_submodule_n906), .A1(
        n5833), .B0(n5692), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[1]) );
  AOI2BB2X1 U7395 ( .B0(n6419), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[2]), .A0N(n6260), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n874), .Y(n5693) );
  AOI2BB2X1 U7396 ( .B0(n6419), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[6]), .A0N(n6260), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n870), .Y(n5694) );
  NAND3X1 U7397 ( .A(n5705), .B(n7149), .C(cnt[0]), .Y(n5706) );
  OAI21X1 U7398 ( .A0(n5707), .A1(n5706), .B0(x_origin_r[2]), .Y(n5708) );
  NAND2X2 U7399 ( .A(n5709), .B(n5708), .Y(N787) );
  NAND2X2 U7400 ( .A(n4083), .B(
        median_sobel_inst_u_median_filter_submodule_net96572), .Y(n5715) );
  NAND2X1 U7401 ( .A(n5819), .B(n7671), .Y(n5714) );
  NAND3X2 U7402 ( .A(n5714), .B(n5715), .C(n5716), .Y(
        median_sobel_inst_u_median_filter_submodule_n769) );
  NAND3X2 U7403 ( .A(n5719), .B(n5718), .C(n5717), .Y(
        median_sobel_inst_u_median_filter_submodule_n768) );
  MXI2X1 U7404 ( .A(median_sobel_inst_n250), .B(n7668), .S0(n5720), .Y(
        median_sobel_inst_n1460) );
  OAI21XL U7405 ( .A0(n5723), .A1(n7689), .B0(n5722), .Y(
        median_sobel_inst_n395) );
  MX2X1 U7406 ( .A(median_sobel_inst_G[6]), .B(
        median_sobel_inst_u_sober_compare_submodule_n283), .S0(n5892), .Y(
        median_sobel_inst_u_sober_compare_submodule_n135) );
  MX2X1 U7407 ( .A(median_sobel_inst_G[9]), .B(
        median_sobel_inst_u_sober_compare_submodule_n287), .S0(n5892), .Y(
        median_sobel_inst_u_sober_compare_submodule_n138) );
  OA22X1 U7408 ( .A0(n6756), .A1(
        median_sobel_inst_u_median_filter_submodule_n909), .B0(
        median_sobel_inst_u_median_filter_submodule_n871), .B1(n5829), .Y(
        n5724) );
  OAI21XL U7409 ( .A0(median_sobel_inst_u_median_filter_submodule_n1500), .A1(
        n5833), .B0(n5724), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[7]) );
  AOI2BB2X1 U7410 ( .B0(n5729), .B1(n7686), .A0N(n7156), .A1N(
        median_sobel_inst_u_median_filter_submodule_n858), .Y(n5725) );
  OA22X1 U7411 ( .A0(median_sobel_inst_u_median_filter_submodule_n880), .A1(
        n6756), .B0(median_sobel_inst_u_median_filter_submodule_n913), .B1(
        n5829), .Y(n5726) );
  OAI21XL U7412 ( .A0(median_sobel_inst_u_median_filter_submodule_n857), .A1(
        n5833), .B0(n5726), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[5]) );
  OA22X1 U7413 ( .A0(median_sobel_inst_u_median_filter_submodule_n879), .A1(
        n6756), .B0(median_sobel_inst_u_median_filter_submodule_n914), .B1(
        n5829), .Y(n5727) );
  OAI21XL U7414 ( .A0(median_sobel_inst_u_median_filter_submodule_n851), .A1(
        n5833), .B0(n5727), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[6]) );
  OA22X1 U7415 ( .A0(median_sobel_inst_u_median_filter_submodule_n886), .A1(
        n6756), .B0(median_sobel_inst_u_median_filter_submodule_n916), .B1(
        n5829), .Y(n5728) );
  OAI21XL U7416 ( .A0(median_sobel_inst_u_median_filter_submodule_n866), .A1(
        n5833), .B0(n5728), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[0]) );
  AOI2BB2X1 U7417 ( .B0(n5729), .B1(n7677), .A0N(n7156), .A1N(
        median_sobel_inst_u_median_filter_submodule_n859), .Y(n5730) );
  OA22X1 U7418 ( .A0(median_sobel_inst_u_median_filter_submodule_n1501), .A1(
        n6756), .B0(median_sobel_inst_u_median_filter_submodule_n877), .B1(
        n5829), .Y(n5731) );
  XNOR2X1 U7419 ( .A(n6449), .B(n5734), .Y(n5735) );
  NOR2BX1 U7420 ( .AN(n5735), .B(n3646), .Y(conv_inst_N2400) );
  MXI2XL U7421 ( .A(n2111), .B(median_sobel_inst_n249), .S0(n5955), .Y(
        median_sobel_inst_med_sobel_e_wait_r[5]) );
  MX2X1 U7422 ( .A(median_sobel_inst_angle[0]), .B(
        median_sobel_inst_angle_w[0]), .S0(n5839), .Y(median_sobel_inst_n518)
         );
  XNOR2X1 U7423 ( .A(n6324), .B(n5738), .Y(n5739) );
  NOR2BX1 U7424 ( .AN(n5739), .B(n6330), .Y(conv_inst_N2570) );
  INVX3 U7425 ( .A(n6016), .Y(n5742) );
  NAND2X2 U7426 ( .A(n5742), .B(n6017), .Y(n5743) );
  NOR2X1 U7427 ( .A(n5745), .B(
        median_sobel_inst_u_median_filter_submodule_n910), .Y(n5748) );
  AOI21X1 U7428 ( .A0(n5749), .A1(n5748), .B0(n5747), .Y(n5750) );
  NOR2X1 U7429 ( .A(median_sobel_inst_n982), .B(n5754), .Y(n5755) );
  AOI2BB2X4 U7430 ( .B0(median_sobel_inst_data_i_r[5]), .B1(n5763), .A0N(n5762), .A1N(median_sobel_inst_data_c_r[6]), .Y(n5764) );
  NOR2BX1 U7431 ( .AN(x_minus_one_r[0]), .B(n1940), .Y(n5773) );
  NAND2X1 U7432 ( .A(x_plus_two_r[1]), .B(x_plus_two_r[0]), .Y(n5768) );
  NAND2X2 U7433 ( .A(n5768), .B(n4541), .Y(n5767) );
  OAI21X1 U7434 ( .A0(x_plus_two_r[2]), .A1(n5768), .B0(n5767), .Y(n5771) );
  NAND2X1 U7435 ( .A(n1991), .B(x_minus_one_r[0]), .Y(n5770) );
  NOR2X1 U7436 ( .A(n5770), .B(x_plus_one_r_2_), .Y(n5769) );
  AOI21X2 U7437 ( .A0(n5771), .A1(n5770), .B0(n5769), .Y(n5772) );
  NOR2X1 U7438 ( .A(n5774), .B(x_minus_one_r[2]), .Y(n5775) );
  NOR3X2 U7439 ( .A(n7032), .B(n5776), .C(n5775), .Y(n5779) );
  NAND2X8 U7440 ( .A(n7145), .B(n5777), .Y(n7001) );
  OAI22X1 U7441 ( .A0(n460), .A1(n7002), .B0(n7001), .B1(n1974), .Y(n5778) );
  NOR2X2 U7442 ( .A(n5779), .B(n5778), .Y(n5780) );
  NAND2X2 U7443 ( .A(n7038), .B(n5780), .Y(n1392) );
  NAND2X1 U7444 ( .A(n5820), .B(n7706), .Y(n5783) );
  NAND2X1 U7445 ( .A(n4083), .B(
        median_sobel_inst_u_median_filter_submodule_n1071), .Y(n5782) );
  NAND2X1 U7446 ( .A(n5819), .B(
        median_sobel_inst_u_median_filter_submodule_n257), .Y(n5781) );
  NAND3X2 U7447 ( .A(n5783), .B(n5782), .C(n5781), .Y(
        median_sobel_inst_u_median_filter_submodule_n766) );
  MX2X1 U7448 ( .A(median_sobel_inst_n751), .B(input_data_ready_r[0]), .S0(
        n6087), .Y(median_sobel_inst_n551) );
  NAND2XL U7449 ( .A(n2218), .B(n6115), .Y(n5792) );
  NAND2BX1 U7450 ( .AN(n6115), .B(n1914), .Y(n5791) );
  AOI21X1 U7451 ( .A0(n1913), .A1(n1986), .B0(n5789), .Y(n5790) );
  MXI2X1 U7452 ( .A(n5792), .B(n7589), .S0(n5794), .Y(n447) );
  MXI2X1 U7453 ( .A(n5793), .B(n7580), .S0(n5794), .Y(n486) );
  NAND2XL U7454 ( .A(n2218), .B(n7219), .Y(n5795) );
  MXI2X1 U7455 ( .A(n5795), .B(n7585), .S0(n5794), .Y(n485) );
  NAND2X1 U7456 ( .A(n5905), .B(n5904), .Y(n5797) );
  XNOR2X1 U7457 ( .A(n5906), .B(n5797), .Y(n5798) );
  AOI2BB2X2 U7458 ( .B0(n5815), .B1(
        median_sobel_inst_u_median_filter_submodule_n96), .A0N(n3699), .A1N(
        n7554), .Y(n5808) );
  OAI21X2 U7459 ( .A0(n5818), .A1(n5809), .B0(n5808), .Y(
        median_sobel_inst_u_median_filter_submodule_n829) );
  NAND2X2 U7460 ( .A(median_sobel_inst_n979), .B(n5926), .Y(n5810) );
  CLKINVX1 U7461 ( .A(median_sobel_inst_n981), .Y(n5813) );
  AOI2BB2X2 U7462 ( .B0(n5815), .B1(
        median_sobel_inst_u_median_filter_submodule_n224), .A0N(n3699), .A1N(
        median_sobel_inst_u_median_filter_submodule_net20521), .Y(n5816) );
  OAI21X2 U7463 ( .A0(n5817), .A1(n5818), .B0(n5816), .Y(
        median_sobel_inst_u_median_filter_submodule_n827) );
  NAND3X2 U7464 ( .A(n5823), .B(n5822), .C(n5821), .Y(
        median_sobel_inst_u_median_filter_submodule_n765) );
  OAI21XL U7465 ( .A0(i_op_valid), .A1(n5825), .B0(n5824), .Y(n441) );
  OAI21XL U7466 ( .A0(i_op_valid), .A1(n7131), .B0(n5826), .Y(n443) );
  OAI21XL U7467 ( .A0(i_op_valid), .A1(n6115), .B0(n5827), .Y(n440) );
  MXI2X1 U7468 ( .A(median_sobel_inst_n1005), .B(median_sobel_inst_n215), .S0(
        n6020), .Y(n7616) );
  MX2X1 U7469 ( .A(median_sobel_inst_n923), .B(n1984), .S0(n6087), .Y(
        median_sobel_inst_n541) );
  OAI21XL U7470 ( .A0(n5833), .A1(
        median_sobel_inst_u_median_filter_submodule_n859), .B0(n5832), .Y(
        median_sobel_inst_u_median_filter_submodule_a2[4]) );
  MX2X1 U7471 ( .A(median_sobel_inst_sobel_data_w[8]), .B(
        median_sobel_inst_G[30]), .S0(n6137), .Y(median_sobel_inst_n476) );
  MX2X1 U7472 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[29]), .S0(n6137), .Y(median_sobel_inst_n480) );
  OAI21XL U7473 ( .A0(n7224), .A1(n7658), .B0(n5834), .Y(N756) );
  XNOR2X1 U7474 ( .A(n4343), .B(n5837), .Y(n5838) );
  NOR2BX2 U7475 ( .AN(n5838), .B(n6330), .Y(conv_inst_N227) );
  MX2X1 U7476 ( .A(median_sobel_inst_n1071), .B(input_data_ready_r[28]), .S0(
        n5839), .Y(median_sobel_inst_n1459) );
  AO21X4 U7477 ( .A0(n6335), .A1(n6333), .B0(n5840), .Y(n5845) );
  NAND2X4 U7478 ( .A(conv_inst_n25), .B(n7545), .Y(n7147) );
  OAI22XL U7479 ( .A0(n6341), .A1(n5979), .B0(n7147), .B1(n6294), .Y(
        conv_inst_N143) );
  OAI22XL U7480 ( .A0(n6294), .A1(n5979), .B0(n7147), .B1(n6429), .Y(
        conv_inst_N144) );
  NAND2BX2 U7481 ( .AN(median_sobel_inst_u_sober_compare_submodule_n341), .B(
        median_sobel_inst_u_sober_compare_submodule_n338), .Y(n5862) );
  NOR2BX1 U7482 ( .AN(median_sobel_inst_u_sober_compare_submodule_net97821), 
        .B(median_sobel_inst_u_sober_compare_submodule_net99802), .Y(n5849) );
  NOR2BX1 U7483 ( .AN(median_sobel_inst_u_sober_compare_submodule_n341), .B(
        median_sobel_inst_u_sober_compare_submodule_n338), .Y(n5848) );
  OAI21X1 U7484 ( .A0(n5853), .A1(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), .B0(n5851), 
        .Y(n5852) );
  OAI2BB1X2 U7485 ( .A0N(n5853), .A1N(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[3]), .B0(n5852), 
        .Y(n5867) );
  NAND2BX1 U7486 ( .AN(median_sobel_inst_u_sober_compare_submodule_net96922), 
        .B(median_sobel_inst_u_sober_compare_submodule_net99662), .Y(n5854) );
  OA21X2 U7487 ( .A0(median_sobel_inst_u_sober_compare_submodule_net98026), 
        .A1(n5855), .B0(n5854), .Y(n5860) );
  OAI22X2 U7488 ( .A0(median_sobel_inst_u_sober_compare_submodule_net96764), 
        .A1(n5857), .B0(n5856), .B1(
        median_sobel_inst_u_sober_compare_submodule_n37), .Y(n5858) );
  NOR3X4 U7489 ( .A(n5860), .B(n5859), .C(n5858), .Y(n5866) );
  NAND2BX1 U7490 ( .AN(median_sobel_inst_u_sober_compare_submodule_net97821), 
        .B(median_sobel_inst_u_sober_compare_submodule_net99802), .Y(n5861) );
  NAND3X2 U7491 ( .A(n5869), .B(n5862), .C(n5861), .Y(n5875) );
  NAND2BX1 U7492 ( .AN(median_sobel_inst_u_sober_compare_submodule_net98113), 
        .B(median_sobel_inst_u_sober_compare_submodule_n22), .Y(n5863) );
  NOR2BX1 U7493 ( .AN(median_sobel_inst_u_sober_compare_submodule_net101609), 
        .B(median_sobel_inst_u_sober_compare_submodule_net105122), .Y(n5864)
         );
  NOR3X2 U7494 ( .A(n5875), .B(n5874), .C(n5864), .Y(n5865) );
  NAND2BX1 U7495 ( .AN(median_sobel_inst_u_sober_compare_submodule_net101609), 
        .B(median_sobel_inst_u_sober_compare_submodule_net105122), .Y(n5873)
         );
  NOR2BX1 U7496 ( .AN(median_sobel_inst_u_sober_compare_submodule_net98113), 
        .B(median_sobel_inst_u_sober_compare_submodule_n22), .Y(n5871) );
  NOR2BX1 U7497 ( .AN(median_sobel_inst_u_sober_compare_submodule_net102583), 
        .B(median_sobel_inst_u_sober_compare_submodule_n34), .Y(n5870) );
  NAND2BX1 U7498 ( .AN(n7594), .B(
        median_sobel_inst_u_sober_compare_submodule_net109308), .Y(n5877) );
  OAI22XL U7499 ( .A0(n6348), .A1(n5979), .B0(n7147), .B1(n6341), .Y(
        conv_inst_N142) );
  NAND2BX1 U7500 ( .AN(n6686), .B(median_sobel_inst_cnt_4_), .Y(n5879) );
  XOR2X1 U7501 ( .A(n5879), .B(median_sobel_inst_n990), .Y(n5880) );
  NOR2BX2 U7502 ( .AN(n5884), .B(n5883), .Y(n5885) );
  AO21X4 U7503 ( .A0(n6471), .A1(n5886), .B0(n5885), .Y(n5887) );
  NOR2BX1 U7504 ( .AN(n6568), .B(
        median_sobel_inst_u_sober_compare_submodule_n343), .Y(
        median_sobel_inst_u_sober_compare_submodule_N29) );
  OAI21XL U7505 ( .A0(i_op_valid), .A1(n5889), .B0(n5888), .Y(n442) );
  MXI2X1 U7506 ( .A(median_sobel_inst_n1154), .B(n7500), .S0(n6020), .Y(n7550)
         );
  MXI2X1 U7507 ( .A(median_sobel_inst_n270), .B(n2075), .S0(n5890), .Y(
        median_sobel_inst_med_sobel_e_wait_r[6]) );
  MX2X1 U7508 ( .A(median_sobel_inst_sobel_data_w[0]), .B(
        median_sobel_inst_G[22]), .S0(n6137), .Y(median_sobel_inst_n508) );
  MX2X1 U7509 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[32]), .S0(n6137), .Y(median_sobel_inst_n468) );
  MX2X1 U7510 ( .A(median_sobel_inst_sobel_data_w[10]), .B(
        median_sobel_inst_G[10]), .S0(n5892), .Y(median_sobel_inst_n470) );
  MX2X1 U7511 ( .A(median_sobel_inst_sobel_data_w[7]), .B(
        median_sobel_inst_G[7]), .S0(n5892), .Y(median_sobel_inst_n482) );
  MX2X1 U7512 ( .A(median_sobel_inst_n745), .B(input_data_ready_r[12]), .S0(
        n6087), .Y(median_sobel_inst_n539) );
  NAND2BX1 U7513 ( .AN(conv_inst_n76), .B(n5893), .Y(n5896) );
  NAND2BX1 U7514 ( .AN(n5923), .B(conv_isFirst_signal_r), .Y(n5895) );
  XOR2X1 U7515 ( .A(n7140), .B(conv_inst_n42), .Y(n5894) );
  NAND2BX1 U7516 ( .AN(conv_inst_n25), .B(n5894), .Y(n6060) );
  NAND3X2 U7517 ( .A(n5896), .B(n5895), .C(n6060), .Y(conv_inst_n169) );
  NAND2XL U7518 ( .A(n7140), .B(conv_inst_n42), .Y(n5898) );
  MXI2X1 U7519 ( .A(median_sobel_inst_n1162), .B(n2002), .S0(n5968), .Y(
        median_sobel_inst_n540) );
  MXI2X1 U7520 ( .A(n5977), .B(median_sobel_inst_n252), .S0(n5955), .Y(
        median_sobel_inst_n1456) );
  MXI2X1 U7521 ( .A(median_sobel_inst_n274), .B(n7685), .S0(n6467), .Y(
        median_sobel_inst_n1478) );
  MXI2X1 U7522 ( .A(median_sobel_inst_n198), .B(n7702), .S0(n6467), .Y(
        median_sobel_inst_n1494) );
  MXI2X1 U7523 ( .A(median_sobel_inst_n194), .B(n7668), .S0(n6467), .Y(
        median_sobel_inst_n1489) );
  MXI2X1 U7524 ( .A(median_sobel_inst_n926), .B(median_sobel_inst_n239), .S0(
        n6535), .Y(median_sobel_inst_n606) );
  MXI2X1 U7525 ( .A(median_sobel_inst_n413), .B(median_sobel_inst_n244), .S0(
        n6087), .Y(median_sobel_inst_n601) );
  MXI2X1 U7526 ( .A(median_sobel_inst_n912), .B(median_sobel_inst_n272), .S0(
        n6087), .Y(median_sobel_inst_n573) );
  MXI2X1 U7527 ( .A(median_sobel_inst_n919), .B(median_sobel_inst_n193), .S0(
        n6087), .Y(median_sobel_inst_n564) );
  MXI2X1 U7528 ( .A(median_sobel_inst_n32), .B(median_sobel_inst_n213), .S0(
        n6087), .Y(median_sobel_inst_n632) );
  MXI2X1 U7529 ( .A(n7505), .B(median_sobel_inst_n260), .S0(n6568), .Y(
        median_sobel_inst_n1455) );
  MXI2X1 U7530 ( .A(n7501), .B(median_sobel_inst_n237), .S0(n6568), .Y(
        median_sobel_inst_n1439) );
  NOR2BX2 U7531 ( .AN(n5903), .B(n6330), .Y(conv_inst_N264) );
  OAI22XL U7532 ( .A0(conv_inst_n261), .A1(n5979), .B0(n7147), .B1(
        conv_inst_n262), .Y(conv_inst_N130) );
  OAI22XL U7533 ( .A0(conv_inst_n262), .A1(n5979), .B0(n7147), .B1(
        conv_inst_n312), .Y(conv_inst_N131) );
  OAI22XL U7534 ( .A0(conv_inst_n259), .A1(n5979), .B0(conv_inst_n260), .B1(
        n7147), .Y(conv_inst_N128) );
  OAI22XL U7535 ( .A0(conv_inst_n270), .A1(n5979), .B0(n7147), .B1(n6348), .Y(
        conv_inst_N141) );
  OAI22XL U7536 ( .A0(conv_inst_n310), .A1(n5979), .B0(n7147), .B1(n6347), .Y(
        conv_inst_N139) );
  OAI22XL U7537 ( .A0(conv_inst_n263), .A1(n5979), .B0(n4542), .B1(n7147), .Y(
        conv_inst_N136) );
  NAND2X1 U7538 ( .A(n5909), .B(n5908), .Y(n5910) );
  NOR2BX2 U7539 ( .AN(n5911), .B(n6330), .Y(conv_inst_N2620) );
  XOR2X1 U7540 ( .A(median_sobel_inst_cnt_4_), .B(n6686), .Y(n5912) );
  OAI22XL U7541 ( .A0(conv_inst_n265), .A1(n7147), .B0(n4542), .B1(n5979), .Y(
        conv_inst_N137) );
  OAI22XL U7542 ( .A0(conv_inst_n258), .A1(n7147), .B0(conv_inst_n257), .B1(
        n5979), .Y(conv_inst_N126) );
  OAI22XL U7543 ( .A0(conv_inst_n260), .A1(n5979), .B0(n7147), .B1(
        conv_inst_n261), .Y(conv_inst_N129) );
  OAI22XL U7544 ( .A0(conv_inst_n312), .A1(n5979), .B0(n7147), .B1(
        conv_inst_n314), .Y(conv_inst_N1320) );
  NOR2X2 U7545 ( .A(n5926), .B(median_sobel_inst_n436), .Y(n5925) );
  NOR3X4 U7546 ( .A(n5925), .B(n3983), .C(median_sobel_inst_n975), .Y(n5932)
         );
  AOI2BB2X2 U7547 ( .B0(n5929), .B1(median_sobel_inst_data_a_r[3]), .A0N(n5928), .A1N(median_sobel_inst_data_d_r[2]), .Y(n5930) );
  OAI22X4 U7548 ( .A0(n5938), .A1(median_sobel_inst_n981), .B0(n5937), .B1(
        n3558), .Y(n5941) );
  NOR3X2 U7549 ( .A(n5938), .B(n5937), .C(median_sobel_inst_n981), .Y(n5939)
         );
  AOI21X2 U7550 ( .A0(n5941), .A1(n5940), .B0(n5939), .Y(n5942) );
  AND2X4 U7551 ( .A(n6335), .B(n5947), .Y(n5952) );
  OAI21X1 U7552 ( .A0(n5950), .A1(n5949), .B0(n5948), .Y(n5951) );
  NOR2X4 U7553 ( .A(n5952), .B(n5951), .Y(n5953) );
  XNOR2X4 U7554 ( .A(n5953), .B(n4294), .Y(n5954) );
  NOR2BX2 U7555 ( .AN(n5954), .B(n6330), .Y(conv_inst_N247) );
  MX2X1 U7556 ( .A(n7621), .B(median_sobel_inst_n86), .S0(n7137), .Y(
        median_sobel_inst_n605) );
  CLKINVX1 U7557 ( .A(n7732), .Y(n6536) );
  MXI2X1 U7558 ( .A(median_sobel_inst_n264), .B(n6536), .S0(n6019), .Y(
        median_sobel_inst_n1472) );
  MXI2X1 U7559 ( .A(median_sobel_inst_n259), .B(n7680), .S0(n5976), .Y(
        median_sobel_inst_n1457) );
  MXI2X1 U7560 ( .A(n6213), .B(median_sobel_inst_n207), .S0(n5964), .Y(
        median_sobel_inst_n1423) );
  MXI2X1 U7561 ( .A(n5957), .B(median_sobel_inst_n208), .S0(n5964), .Y(
        median_sobel_inst_n1422) );
  MXI2X1 U7562 ( .A(n5978), .B(median_sobel_inst_n215), .S0(n5964), .Y(
        median_sobel_inst_n1435) );
  MXI2X1 U7563 ( .A(median_sobel_inst_n1093), .B(n7699), .S0(n6535), .Y(
        median_sobel_inst_n567) );
  MXI2X1 U7564 ( .A(n5957), .B(median_sobel_inst_n240), .S0(n5955), .Y(
        median_sobel_inst_n1448) );
  MXI2X1 U7565 ( .A(n5980), .B(median_sobel_inst_n248), .S0(n5955), .Y(
        median_sobel_inst_med_sobel_e_wait_r[4]) );
  OAI22XL U7566 ( .A0(conv_inst_n256), .A1(n5979), .B0(conv_inst_n257), .B1(
        n7147), .Y(conv_inst_N125) );
  XOR2X1 U7567 ( .A(n1914), .B(cnt[5]), .Y(n5960) );
  XOR2X1 U7568 ( .A(n2218), .B(n1956), .Y(n5959) );
  XOR2X1 U7569 ( .A(n1913), .B(cnt[7]), .Y(n5958) );
  NOR3X2 U7570 ( .A(n5960), .B(n5959), .C(n5958), .Y(n7790) );
  NAND4X1 U7571 ( .A(n6250), .B(n460), .C(n7205), .D(n451), .Y(n5961) );
  NOR2X1 U7572 ( .A(n7208), .B(n5961), .Y(n5962) );
  NAND2X1 U7573 ( .A(n7790), .B(n5962), .Y(n5963) );
  MXI2X1 U7574 ( .A(n5963), .B(n438), .S0(n7212), .Y(n439) );
  CLKBUFX3 U7575 ( .A(i_rst_n), .Y(n7778) );
  CLKBUFX3 U7576 ( .A(i_rst_n), .Y(n7779) );
  BUFX4 U7577 ( .A(n7781), .Y(n7768) );
  BUFX4 U7578 ( .A(n7780), .Y(n7767) );
  CLKBUFX3 U7579 ( .A(i_rst_n), .Y(n7751) );
  CLKBUFX3 U7580 ( .A(i_rst_n), .Y(n7750) );
  CLKBUFX3 U7581 ( .A(i_rst_n), .Y(n7749) );
  CLKBUFX3 U7582 ( .A(i_rst_n), .Y(n7776) );
  CLKBUFX8 U7583 ( .A(n7781), .Y(n7772) );
  CLKBUFX8 U7584 ( .A(n7780), .Y(n7773) );
  BUFX4 U7585 ( .A(n7783), .Y(n7763) );
  CLKBUFX3 U7586 ( .A(i_rst_n), .Y(n7777) );
  CLKBUFX3 U7587 ( .A(i_rst_n), .Y(n7746) );
  MXI2X1 U7588 ( .A(median_sobel_inst_n267), .B(n7681), .S0(n6683), .Y(
        median_sobel_inst_n1469) );
  MXI2X1 U7589 ( .A(n6088), .B(median_sobel_inst_n183), .S0(n5964), .Y(
        median_sobel_inst_n1415) );
  MXI2X1 U7590 ( .A(n6536), .B(median_sobel_inst_n184), .S0(n5964), .Y(
        median_sobel_inst_n1414) );
  OR2X1 U7591 ( .A(n7251), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[0]), .Y(n5965) );
  MXI2X1 U7592 ( .A(median_sobel_inst_n262), .B(n5981), .S0(n6019), .Y(
        median_sobel_inst_n1474) );
  MXI2X1 U7593 ( .A(median_sobel_inst_n268), .B(n7682), .S0(n6019), .Y(
        median_sobel_inst_n1468) );
  MXI2X1 U7594 ( .A(median_sobel_inst_n275), .B(n7509), .S0(n6019), .Y(
        median_sobel_inst_n1477) );
  MXI2X1 U7595 ( .A(median_sobel_inst_n205), .B(n7514), .S0(n6019), .Y(
        median_sobel_inst_n1482) );
  MXI2X1 U7596 ( .A(median_sobel_inst_n1165), .B(n6213), .S0(n5968), .Y(
        median_sobel_inst_n542) );
  MXI2X1 U7597 ( .A(median_sobel_inst_n419), .B(n7700), .S0(n5968), .Y(
        median_sobel_inst_n607) );
  MXI2X1 U7598 ( .A(median_sobel_inst_n423), .B(median_sobel_inst_n250), .S0(
        n5968), .Y(median_sobel_inst_n595) );
  MXI2X1 U7599 ( .A(median_sobel_inst_n449), .B(median_sobel_inst_n192), .S0(
        n5968), .Y(median_sobel_inst_n565) );
  MXI2X1 U7600 ( .A(median_sobel_inst_n931), .B(median_sobel_inst_n234), .S0(
        n5968), .Y(median_sobel_inst_n611) );
  MXI2X1 U7601 ( .A(median_sobel_inst_n918), .B(median_sobel_inst_n243), .S0(
        n5968), .Y(median_sobel_inst_n602) );
  MXI2X1 U7602 ( .A(median_sobel_inst_n933), .B(median_sobel_inst_n251), .S0(
        n5968), .Y(median_sobel_inst_n594) );
  MXI2X1 U7603 ( .A(median_sobel_inst_n943), .B(median_sobel_inst_n217), .S0(
        n5968), .Y(median_sobel_inst_n628) );
  MXI2X1 U7604 ( .A(median_sobel_inst_n937), .B(median_sobel_inst_n231), .S0(
        n5968), .Y(median_sobel_inst_n614) );
  MXI2X1 U7605 ( .A(median_sobel_inst_n914), .B(median_sobel_inst_n267), .S0(
        n5968), .Y(median_sobel_inst_n578) );
  MXI2X1 U7606 ( .A(median_sobel_inst_n932), .B(median_sobel_inst_n266), .S0(
        n5968), .Y(median_sobel_inst_n579) );
  MXI2X1 U7607 ( .A(median_sobel_inst_n249), .B(n5969), .S0(n6137), .Y(
        median_sobel_inst_n596) );
  XOR2X1 U7608 ( .A(n5970), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(n5971) );
  XOR2X1 U7609 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n49), .B(
        n5971), .Y(median_sobel_inst_u_sobel_gradient_submodule_N122) );
  NAND2XL U7610 ( .A(n5972), .B(n5974), .Y(n5973) );
  OAI21XL U7611 ( .A0(n5975), .A1(n5974), .B0(n5973), .Y(med_done_w) );
  MXI2X1 U7612 ( .A(median_sobel_inst_n254), .B(n7702), .S0(n5976), .Y(
        median_sobel_inst_n1465) );
  MXI2X1 U7613 ( .A(median_sobel_inst_n242), .B(n7685), .S0(n5976), .Y(
        median_sobel_inst_n1444) );
  MXI2X1 U7614 ( .A(median_sobel_inst_n235), .B(n7681), .S0(n5976), .Y(
        median_sobel_inst_n1443) );
  MXI2X1 U7615 ( .A(n5977), .B(median_sobel_inst_n220), .S0(n5964), .Y(
        median_sobel_inst_n1427) );
  MXI2X1 U7616 ( .A(n7514), .B(median_sobel_inst_n229), .S0(n5964), .Y(
        median_sobel_inst_n1424) );
  MXI2X1 U7617 ( .A(n5980), .B(median_sobel_inst_n216), .S0(n5964), .Y(
        median_sobel_inst_med_sobel_e_wait_r[1]) );
  MXI2X1 U7618 ( .A(median_sobel_inst_n921), .B(median_sobel_inst_n241), .S0(
        n6535), .Y(median_sobel_inst_n604) );
  MXI2X1 U7619 ( .A(median_sobel_inst_n443), .B(median_sobel_inst_n270), .S0(
        n6535), .Y(median_sobel_inst_n575) );
  MXI2X1 U7620 ( .A(median_sobel_inst_n935), .B(median_sobel_inst_n247), .S0(
        n6535), .Y(median_sobel_inst_n598) );
  MXI2X1 U7621 ( .A(n7500), .B(median_sobel_inst_n245), .S0(n5955), .Y(
        median_sobel_inst_n1438) );
  MXI2X1 U7622 ( .A(n7509), .B(median_sobel_inst_n243), .S0(n5955), .Y(
        median_sobel_inst_n1442) );
  MXI2X1 U7623 ( .A(n5978), .B(median_sobel_inst_n247), .S0(n4293), .Y(
        median_sobel_inst_n1464) );
  MXI2X1 U7624 ( .A(median_sobel_inst_n46), .B(median_sobel_inst_n221), .S0(
        n6535), .Y(median_sobel_inst_n624) );
  MXI2X1 U7625 ( .A(median_sobel_inst_n192), .B(n5980), .S0(n6467), .Y(
        median_sobel_inst_med_sobel_e_wait_r[7]) );
  MXI2X1 U7626 ( .A(n6536), .B(median_sobel_inst_n232), .S0(n6568), .Y(
        median_sobel_inst_n1449) );
  MXI2X1 U7627 ( .A(n5981), .B(median_sobel_inst_n230), .S0(n6568), .Y(
        median_sobel_inst_n1452) );
  MXI2X1 U7628 ( .A(n6088), .B(median_sobel_inst_n231), .S0(n6568), .Y(
        median_sobel_inst_n1451) );
  NAND2BX1 U7629 ( .AN(n6604), .B(
        median_sobel_inst_u_sober_compare_submodule_n278), .Y(n5985) );
  NAND3BX1 U7630 ( .AN(n5986), .B(n5985), .C(n5984), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[3]) );
  NAND3BX1 U7631 ( .AN(n5989), .B(n5988), .C(n5987), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[9]) );
  NAND3BX1 U7632 ( .AN(n5992), .B(n5991), .C(n5990), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[4]) );
  NAND3BX1 U7633 ( .AN(n5995), .B(n5994), .C(n5993), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[0]) );
  NAND3BX1 U7634 ( .AN(n5998), .B(n5997), .C(n5996), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[5]) );
  NAND3BX1 U7635 ( .AN(n6001), .B(n6000), .C(n5999), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[7]) );
  NAND3BX1 U7636 ( .AN(n6004), .B(n6003), .C(n6002), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[6]) );
  NAND3BX1 U7637 ( .AN(n6007), .B(n6006), .C(n6005), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[2]) );
  OAI22XL U7638 ( .A0(median_sobel_inst_u_sober_compare_submodule_n67), .A1(
        n6604), .B0(n6222), .B1(
        median_sobel_inst_u_sober_compare_submodule_n304), .Y(n6010) );
  CLKINVX1 U7639 ( .A(n6011), .Y(n6123) );
  NAND3BX1 U7640 ( .AN(n6010), .B(n6009), .C(n6008), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[1]) );
  NAND3BX1 U7641 ( .AN(n6014), .B(n6013), .C(n6012), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_a[10]) );
  AND2X2 U7642 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_net96922), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1160) );
  AND2X2 U7643 ( .A(n6015), .B(
        median_sobel_inst_u_sober_compare_submodule_temp_a_r_9_), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1250) );
  MXI2X1 U7644 ( .A(median_sobel_inst_n199), .B(n6569), .S0(n6019), .Y(
        median_sobel_inst_n1492) );
  NAND2BX1 U7645 ( .AN(median_sobel_inst_u_median_filter_submodule_net94185), 
        .B(n6022), .Y(median_sobel_inst_u_median_filter_submodule_n824) );
  NOR2XL U7646 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n75), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n6023) );
  MXI2X1 U7647 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(n6023), .S0(median_sobel_inst_u_sobel_gradient_submodule_N131), .Y(
        n6025) );
  XNOR2X1 U7648 ( .A(n6030), .B(n6029), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N133) );
  NAND2X2 U7649 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[0]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[0]), .Y(n7330) );
  OR2X1 U7650 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n94), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[0]), .Y(n6036) );
  NAND2X2 U7651 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n75), .B(
        n4276), .Y(n6589) );
  MXI2X1 U7652 ( .A(median_sobel_inst_n916), .B(median_sobel_inst_n201), .S0(
        n6087), .Y(n7610) );
  NOR2BX1 U7653 ( .AN(n1907), .B(n6050), .Y(n6053) );
  NOR2XL U7654 ( .A(n7497), .B(curr_state[0]), .Y(n6051) );
  NOR3X1 U7655 ( .A(n4028), .B(n6056), .C(n6055), .Y(n6058) );
  NOR2X4 U7656 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[1]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[1]), .Y(n7331) );
  XOR2X1 U7657 ( .A(n6062), .B(n7330), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[1]) );
  NAND2X1 U7658 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n78), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[1]), .Y(n6238) );
  NAND2BXL U7659 ( .AN(n6239), .B(n6238), .Y(n6064) );
  MX2X1 U7660 ( .A(median_sobel_inst_n1286), .B(n7620), .S0(n6087), .Y(
        median_sobel_inst_n555) );
  NOR2X4 U7661 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[10]), .B(
        n7574), .Y(n6389) );
  NAND2X1 U7662 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N160), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n101), .Y(n7134) );
  XOR2X1 U7663 ( .A(n6066), .B(n6073), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N169) );
  NAND2X1 U7664 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n356), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n419), .Y(n6390) );
  XNOR2X1 U7665 ( .A(n6076), .B(n6075), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N170) );
  XOR2X1 U7666 ( .A(n6081), .B(n6080), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[1]) );
  XOR2X1 U7667 ( .A(n6086), .B(n6085), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N17) );
  MXI2X1 U7668 ( .A(median_sobel_inst_n1152), .B(n6088), .S0(n6087), .Y(n7597)
         );
  XOR2X1 U7669 ( .A(n6092), .B(n6091), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N370) );
  NAND2X1 U7670 ( .A(median_sobel_inst_u_sobel_gradient_submodule_N131), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n60), .Y(n6588) );
  XOR2X1 U7671 ( .A(n6094), .B(n6589), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1080) );
  XOR2X1 U7672 ( .A(n6099), .B(n6098), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[1]) );
  CLKINVX1 U7673 ( .A(n6100), .Y(n6101) );
  NAND3X2 U7674 ( .A(n6103), .B(n6102), .C(n6101), .Y(n6104) );
  NOR2X4 U7675 ( .A(n6105), .B(n6104), .Y(n7220) );
  NAND2X1 U7676 ( .A(n6106), .B(n7528), .Y(n6107) );
  NAND2X1 U7677 ( .A(n6107), .B(n6117), .Y(n6110) );
  NAND2X1 U7678 ( .A(n7220), .B(n6108), .Y(n6114) );
  NAND3X1 U7679 ( .A(n6110), .B(n7215), .C(n6109), .Y(n490) );
  MXI2X1 U7680 ( .A(median_sobel_inst_n42), .B(median_sobel_inst_n223), .S0(
        n6087), .Y(n7607) );
  MXI2X1 U7681 ( .A(median_sobel_inst_n966), .B(median_sobel_inst_n222), .S0(
        n6087), .Y(n7609) );
  OAI22X1 U7682 ( .A0(n6121), .A1(n2028), .B0(n6120), .B1(n6119), .Y(n491) );
  NAND2BX1 U7683 ( .AN(median_sobel_inst_u_sober_compare_submodule_n322), .B(
        n6613), .Y(n6127) );
  NAND2X1 U7684 ( .A(median_sobel_inst_u_sober_compare_submodule_n199), .B(
        n6123), .Y(n6126) );
  INVX3 U7685 ( .A(n7232), .Y(n6668) );
  AOI2BB2X1 U7686 ( .B0(n6421), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n923), .A1N(n6342), .Y(
        n6136) );
  MXI2X1 U7687 ( .A(n7683), .B(median_sobel_inst_n434), .S0(n6137), .Y(n7508)
         );
  XOR2X1 U7688 ( .A(n6202), .B(n6140), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N134) );
  NAND2X4 U7689 ( .A(median_sobel_inst_u_median_filter_submodule_n1431), .B(
        median_sobel_inst_u_median_filter_submodule_n1465), .Y(n6542) );
  AOI2BB2X1 U7690 ( .B0(n6933), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[1]), .A0N(n6542), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n856), .Y(n6141) );
  AOI2BB2X1 U7691 ( .B0(n6933), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[2]), .A0N(n6542), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n872), .Y(n6143) );
  AOI2BB2X1 U7692 ( .B0(n6933), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[4]), .A0N(n6542), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n850), .Y(n6144) );
  XOR2X1 U7693 ( .A(n6146), .B(n6145), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N18) );
  NAND2BX1 U7694 ( .AN(n6147), .B(n6285), .Y(n6148) );
  NOR2BX1 U7695 ( .AN(n6149), .B(n3646), .Y(conv_inst_N219) );
  NOR2X2 U7696 ( .A(n7556), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n6560) );
  NAND2X2 U7697 ( .A(n7556), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[2]), .Y(n6562) );
  XOR2X1 U7698 ( .A(n6154), .B(n6153), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[2]) );
  NAND2X1 U7699 ( .A(n6156), .B(n6155), .Y(n6157) );
  XOR2X1 U7700 ( .A(n6352), .B(n6166), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N38) );
  XNOR2X1 U7701 ( .A(n6739), .B(n6169), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N10) );
  AOI2BB2X1 U7702 ( .B0(n7232), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .A0N(n6934), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n860), .Y(n6170) );
  NOR2X2 U7703 ( .A(n7534), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n6191) );
  NAND2X1 U7704 ( .A(n7534), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[1]), .Y(n6192) );
  OAI21X4 U7705 ( .A0(n6191), .A1(n6194), .B0(n6192), .Y(n6506) );
  NOR2X2 U7706 ( .A(n7555), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[2]), .Y(n6499) );
  XOR2X1 U7707 ( .A(n6172), .B(n6171), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[2]) );
  OA22X1 U7708 ( .A0(n6260), .A1(
        median_sobel_inst_u_median_filter_submodule_n863), .B0(
        median_sobel_inst_u_median_filter_submodule_n911), .B1(n6261), .Y(
        n6173) );
  MXI2X1 U7709 ( .A(n1998), .B(median_sobel_inst_n224), .S0(n5964), .Y(
        median_sobel_inst_n1433) );
  MXI2X1 U7710 ( .A(n4324), .B(median_sobel_inst_n214), .S0(n5964), .Y(
        median_sobel_inst_n1437) );
  OAI21X1 U7711 ( .A0(n6439), .A1(n6435), .B0(n6436), .Y(n6184) );
  XNOR2X1 U7712 ( .A(n6184), .B(n6183), .Y(n6185) );
  NOR2BX1 U7713 ( .AN(n6185), .B(n3646), .Y(conv_inst_N2390) );
  NAND2X2 U7714 ( .A(n7542), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n6561) );
  XNOR2X1 U7715 ( .A(n6189), .B(n6188), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[3]) );
  XOR2X1 U7716 ( .A(n6462), .B(n6190), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[2]) );
  CLKINVX1 U7717 ( .A(n6191), .Y(n6193) );
  NAND2XL U7718 ( .A(n6193), .B(n6192), .Y(n6195) );
  XOR2XL U7719 ( .A(n6195), .B(n6194), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[1]) );
  NAND2X1 U7720 ( .A(n6197), .B(n6196), .Y(n6198) );
  AOI21X1 U7721 ( .A0(n6198), .A1(
        median_sobel_inst_u_sober_compare_submodule_temp_b_r[10]), .B0(
        median_sobel_inst_u_sober_compare_submodule_net109308), .Y(
        median_sobel_inst_u_sober_compare_submodule_N1260) );
  NAND2X1 U7722 ( .A(n7292), .B(n4303), .Y(n6199) );
  OAI21X1 U7723 ( .A0(n4303), .A1(n6986), .B0(n6199), .Y(n484) );
  NAND2X1 U7724 ( .A(n6205), .B(n6204), .Y(n6206) );
  XNOR2X1 U7725 ( .A(n6207), .B(n6206), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N135) );
  CLKINVX1 U7726 ( .A(n6208), .Y(n7236) );
  NAND2X1 U7727 ( .A(n7236), .B(cnt[2]), .Y(n6209) );
  XNOR2X1 U7728 ( .A(n6209), .B(cnt[3]), .Y(n6210) );
  NAND2X1 U7729 ( .A(n7292), .B(n6210), .Y(n6211) );
  OAI21X1 U7730 ( .A0(n459), .A1(n6986), .B0(n6211), .Y(n481) );
  OAI22XL U7731 ( .A0(median_sobel_inst_u_median_filter_submodule_n855), .A1(
        n6343), .B0(median_sobel_inst_u_median_filter_submodule_n910), .B1(
        n6342), .Y(n6212) );
  MXI2X1 U7732 ( .A(n6213), .B(median_sobel_inst_n239), .S0(n4293), .Y(
        median_sobel_inst_n1450) );
  MXI2X1 U7733 ( .A(median_sobel_inst_n1284), .B(n1998), .S0(n6087), .Y(n7605)
         );
  AOI2BB1X1 U7734 ( .A0N(median_sobel_inst_u_median_filter_submodule_n928), 
        .A1N(n6261), .B0(n6214), .Y(n6215) );
  AOI2BB1X1 U7735 ( .A0N(median_sobel_inst_u_median_filter_submodule_n926), 
        .A1N(n6261), .B0(n6216), .Y(n6217) );
  XOR2X1 U7736 ( .A(n6547), .B(n6219), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[2]) );
  XNOR2X1 U7737 ( .A(n6221), .B(n6897), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N20) );
  XNOR2X1 U7738 ( .A(n6227), .B(n6226), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N9) );
  XOR2X1 U7739 ( .A(n6232), .B(n6231), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N8) );
  XOR2X1 U7740 ( .A(n6236), .B(n6235), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[1]) );
  AOI2BB2X1 U7741 ( .B0(n6419), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p6_r[1]), .A0N(n6260), 
        .A1N(median_sobel_inst_u_median_filter_submodule_n852), .Y(n6237) );
  NAND2X1 U7742 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n424), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[4]), .Y(n6743) );
  XNOR2X1 U7743 ( .A(n6746), .B(n6240), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N300) );
  OA22X1 U7744 ( .A0(median_sobel_inst_u_median_filter_submodule_n853), .A1(
        n6343), .B0(median_sobel_inst_u_median_filter_submodule_n924), .B1(
        n6342), .Y(n6241) );
  OAI21X1 U7745 ( .A0(n6244), .A1(n6243), .B0(n6242), .Y(n6248) );
  XNOR2X1 U7746 ( .A(n6248), .B(n6247), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[3]) );
  NOR2X1 U7747 ( .A(n451), .B(n460), .Y(n6249) );
  NAND4BX1 U7748 ( .AN(n6251), .B(cnt[5]), .C(n1956), .D(n6250), .Y(n6252) );
  XNOR2X1 U7749 ( .A(n6256), .B(n6255), .Y(n6257) );
  NOR2BX1 U7750 ( .AN(n6257), .B(n6330), .Y(conv_inst_N2560) );
  AOI2BB2X1 U7751 ( .B0(n6262), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p9_r[7]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n910), .A1N(n6261), .Y(
        n6263) );
  XOR2X1 U7752 ( .A(n6378), .B(n6266), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N149) );
  XOR2X1 U7753 ( .A(n6271), .B(n6270), .Y(n6272) );
  NOR2BX1 U7754 ( .AN(n6272), .B(n6797), .Y(conv_inst_N255) );
  NOR2BX1 U7755 ( .AN(n6276), .B(n6797), .Y(conv_inst_N272) );
  XOR2X1 U7756 ( .A(n6280), .B(n6306), .Y(n6281) );
  NOR2BX1 U7757 ( .AN(n6281), .B(n6797), .Y(conv_inst_N237) );
  XOR2X1 U7758 ( .A(n6286), .B(n6285), .Y(n6287) );
  NOR2BX1 U7759 ( .AN(n6287), .B(n6797), .Y(conv_inst_N220) );
  NAND2BX1 U7760 ( .AN(n6288), .B(n6319), .Y(n6289) );
  NOR2BX1 U7761 ( .AN(n6290), .B(n6797), .Y(conv_inst_N2530) );
  NAND2BX1 U7762 ( .AN(n6291), .B(n6313), .Y(n6292) );
  NOR2BX1 U7763 ( .AN(n6293), .B(n6797), .Y(conv_inst_N2700) );
  CLKINVX1 U7764 ( .A(n6295), .Y(n6296) );
  XNOR2X1 U7765 ( .A(n6304), .B(n6303), .Y(n6305) );
  NAND2BX1 U7766 ( .AN(n6307), .B(n6306), .Y(n6308) );
  NOR2BX1 U7767 ( .AN(n6309), .B(n6797), .Y(conv_inst_N2360) );
  XOR2X1 U7768 ( .A(n6314), .B(n6313), .Y(n6315) );
  NOR2BX1 U7769 ( .AN(n6315), .B(n6797), .Y(conv_inst_N271) );
  XOR2X1 U7770 ( .A(n6320), .B(n6319), .Y(n6321) );
  NOR2BX1 U7771 ( .AN(n6321), .B(n6797), .Y(conv_inst_N254) );
  XNOR2X1 U7772 ( .A(n6329), .B(n6328), .Y(n6331) );
  XNOR2X1 U7773 ( .A(n6335), .B(n6334), .Y(n6336) );
  XNOR2X1 U7774 ( .A(n6340), .B(n6339), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[3]) );
  OA22X1 U7775 ( .A0(median_sobel_inst_u_median_filter_submodule_n849), .A1(
        n6343), .B0(median_sobel_inst_u_median_filter_submodule_n918), .B1(
        n6342), .Y(n6344) );
  OAI21X1 U7776 ( .A0(n6352), .A1(n6351), .B0(n6350), .Y(n6356) );
  XNOR2X1 U7777 ( .A(n6356), .B(n6355), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N39) );
  OAI2BB1X1 U7778 ( .A0N(n6359), .A1N(n6358), .B0(n6357), .Y(n6364) );
  XNOR2X1 U7779 ( .A(n6364), .B(n6363), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N19) );
  XNOR2X1 U7780 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n97), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n174), .Y(n6366) );
  XOR2X1 U7781 ( .A(n6367), .B(n6366), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N125) );
  CLKINVX1 U7782 ( .A(n6474), .Y(n6369) );
  NAND2XL U7783 ( .A(n6369), .B(n6473), .Y(n6370) );
  XOR2X1 U7784 ( .A(n6475), .B(n6370), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N280) );
  INVX3 U7785 ( .A(n6371), .Y(n6410) );
  XOR2X1 U7786 ( .A(n6410), .B(n6409), .Y(conv_inst_N67) );
  NAND2X1 U7787 ( .A(n7535), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[3]), .Y(n6501) );
  XNOR2X1 U7788 ( .A(n6374), .B(n6373), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[3]) );
  OAI21X1 U7789 ( .A0(n6378), .A1(n6377), .B0(n6376), .Y(n6382) );
  XNOR2X1 U7790 ( .A(n6382), .B(n6381), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N150) );
  XOR2X1 U7791 ( .A(n6387), .B(n6386), .Y(n6388) );
  NOR2BX1 U7792 ( .AN(n6388), .B(n6797), .Y(conv_inst_N221) );
  NOR2X2 U7793 ( .A(n6389), .B(n6391), .Y(n6394) );
  NOR2X2 U7794 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .B(
        n7499), .Y(n6431) );
  NAND2X2 U7795 ( .A(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[12]), .B(
        n7499), .Y(n6432) );
  XNOR2X1 U7796 ( .A(n6397), .B(n6396), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N172) );
  XNOR2X1 U7797 ( .A(n6403), .B(n6402), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N173) );
  XNOR2X1 U7798 ( .A(n6407), .B(n6406), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N220) );
  OA22X1 U7799 ( .A0(n7155), .A1(
        median_sobel_inst_u_median_filter_submodule_n880), .B0(
        median_sobel_inst_u_median_filter_submodule_n857), .B1(n7156), .Y(
        n6408) );
  XNOR2X1 U7800 ( .A(n6412), .B(n6411), .Y(conv_inst_N68) );
  XNOR2X1 U7801 ( .A(n6416), .B(n6415), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N401) );
  NOR2BX2 U7802 ( .AN(n6417), .B(
        median_sobel_inst_u_median_filter_submodule_n1470), .Y(n6422) );
  NAND2BX1 U7803 ( .AN(median_sobel_inst_u_median_filter_submodule_n853), .B(
        n7277), .Y(n6424) );
  NAND2BX1 U7804 ( .AN(median_sobel_inst_u_median_filter_submodule_n924), .B(
        n7246), .Y(n6423) );
  NAND2BX1 U7805 ( .AN(median_sobel_inst_u_median_filter_submodule_n855), .B(
        n7277), .Y(n6427) );
  NAND2BX1 U7806 ( .AN(median_sobel_inst_u_median_filter_submodule_n910), .B(
        n7246), .Y(n6426) );
  XOR2X1 U7807 ( .A(n7184), .B(n6434), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N171) );
  NOR2BX1 U7808 ( .AN(n6440), .B(n6797), .Y(conv_inst_N2380) );
  OA22X1 U7809 ( .A0(n6668), .A1(
        median_sobel_inst_u_median_filter_submodule_n882), .B0(
        median_sobel_inst_u_median_filter_submodule_n915), .B1(n6934), .Y(
        n6441) );
  OA22X1 U7810 ( .A0(n6668), .A1(
        median_sobel_inst_u_median_filter_submodule_n908), .B0(
        median_sobel_inst_u_median_filter_submodule_n862), .B1(n6934), .Y(
        n6442) );
  NOR2BX1 U7811 ( .AN(n6443), .B(n6445), .Y(n6448) );
  OAI21X1 U7812 ( .A0(n6446), .A1(n6445), .B0(n6444), .Y(n6447) );
  XNOR2X1 U7813 ( .A(n6454), .B(n6453), .Y(n6455) );
  NOR2BX1 U7814 ( .AN(n6455), .B(n3646), .Y(conv_inst_N243) );
  NOR2X2 U7815 ( .A(n6456), .B(n6459), .Y(n6461) );
  OAI21X1 U7816 ( .A0(n6459), .A1(n6458), .B0(n6457), .Y(n6460) );
  NOR2X2 U7817 ( .A(n7737), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n398), .Y(n6835) );
  XNOR2X1 U7818 ( .A(n3875), .B(n6463), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[4]) );
  INVX4 U7819 ( .A(n6464), .Y(n6697) );
  XNOR2X1 U7820 ( .A(n6697), .B(n6466), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N151) );
  MXI2X1 U7821 ( .A(median_sobel_inst_n200), .B(n1998), .S0(n6467), .Y(
        median_sobel_inst_n1491) );
  XNOR2X1 U7822 ( .A(n6471), .B(n6470), .Y(n6472) );
  OAI21X1 U7823 ( .A0(n6475), .A1(n6474), .B0(n6473), .Y(n6480) );
  XNOR2X1 U7824 ( .A(n6480), .B(n6479), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N290) );
  OA22X1 U7825 ( .A0(n6543), .A1(
        median_sobel_inst_u_median_filter_submodule_n908), .B0(
        median_sobel_inst_u_median_filter_submodule_n873), .B1(n6542), .Y(
        n6481) );
  OA22X1 U7826 ( .A0(n6543), .A1(
        median_sobel_inst_u_median_filter_submodule_n882), .B0(
        median_sobel_inst_u_median_filter_submodule_n864), .B1(n6542), .Y(
        n6482) );
  XNOR2X1 U7827 ( .A(n6486), .B(n6485), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N12) );
  OA22X1 U7828 ( .A0(n7155), .A1(
        median_sobel_inst_u_median_filter_submodule_n879), .B0(
        median_sobel_inst_u_median_filter_submodule_n851), .B1(n7156), .Y(
        n6487) );
  XOR2X1 U7829 ( .A(n6645), .B(n6489), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N136) );
  OA22X1 U7830 ( .A0(n7155), .A1(
        median_sobel_inst_u_median_filter_submodule_n886), .B0(
        median_sobel_inst_u_median_filter_submodule_n866), .B1(n7156), .Y(
        n6490) );
  NOR2X2 U7831 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n352), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .Y(
        n7180) );
  NAND2X1 U7832 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n352), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_acc2_1_r[15]), .Y(
        n7178) );
  XNOR2X1 U7833 ( .A(n6497), .B(n6496), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1740) );
  NOR2X1 U7834 ( .A(n6499), .B(n6498), .Y(n6505) );
  AOI21X4 U7835 ( .A0(n6506), .A1(n6505), .B0(n6504), .Y(n6526) );
  XNOR2X1 U7836 ( .A(n6884), .B(n6507), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[4]) );
  OAI21X1 U7837 ( .A0(n6645), .A1(n6509), .B0(n6508), .Y(n6514) );
  XNOR2X1 U7838 ( .A(n6514), .B(n6513), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N137) );
  OAI21X1 U7839 ( .A0(n6645), .A1(n6516), .B0(n6515), .Y(n6519) );
  CLKINVX1 U7840 ( .A(n6517), .Y(n6641) );
  XNOR2X1 U7841 ( .A(n6519), .B(n6518), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N138) );
  NOR2X2 U7842 ( .A(n6885), .B(n6870), .Y(n6523) );
  NAND2X2 U7843 ( .A(n6883), .B(n6523), .Y(n6525) );
  NAND2X1 U7844 ( .A(n7546), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[7]), .Y(n6871) );
  AOI21X2 U7845 ( .A0(n6882), .A1(n6523), .B0(n6522), .Y(n6524) );
  NOR2X1 U7846 ( .A(n7551), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[8]), .Y(n6907) );
  NOR2X1 U7847 ( .A(n7557), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_r[9]), .Y(n6979) );
  OAI21XL U7848 ( .A0(n6979), .A1(n6976), .B0(n6980), .Y(n6527) );
  AOI21X4 U7849 ( .A0(n6812), .A1(n6703), .B0(n6530), .Y(n6534) );
  XOR2X1 U7850 ( .A(n6534), .B(n6533), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[5]) );
  MXI2X1 U7851 ( .A(median_sobel_inst_n972), .B(n6536), .S0(n6535), .Y(n7598)
         );
  OA22X1 U7852 ( .A0(n6543), .A1(
        median_sobel_inst_u_median_filter_submodule_n907), .B0(
        median_sobel_inst_u_median_filter_submodule_n869), .B1(n6542), .Y(
        n6544) );
  OR2X1 U7853 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy2[3]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n434), .Y(n6550) );
  NAND2X1 U7854 ( .A(n6550), .B(n6549), .Y(n6551) );
  XNOR2X1 U7855 ( .A(n6558), .B(n6557), .Y(n6559) );
  NOR2BX1 U7856 ( .AN(n6559), .B(n3646), .Y(conv_inst_N2730) );
  NOR2X4 U7857 ( .A(n7542), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[3]), .Y(n6563) );
  NOR2X2 U7858 ( .A(n6560), .B(n6563), .Y(n6565) );
  OAI21X2 U7859 ( .A0(n6563), .A1(n6562), .B0(n6561), .Y(n6564) );
  NOR2X2 U7860 ( .A(n7533), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n6706) );
  NAND2X2 U7861 ( .A(n7533), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[4]), .Y(n6857) );
  XNOR2X1 U7862 ( .A(n6860), .B(n6567), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[4]) );
  MXI2X1 U7863 ( .A(n1998), .B(median_sobel_inst_n256), .S0(n6568), .Y(
        median_sobel_inst_n1462) );
  MXI2X1 U7864 ( .A(n6569), .B(median_sobel_inst_n255), .S0(n6568), .Y(
        median_sobel_inst_n1463) );
  NOR2BX1 U7865 ( .AN(n6696), .B(n6570), .Y(n6572) );
  CLKINVX1 U7866 ( .A(n6570), .Y(n6699) );
  OAI2BB1X1 U7867 ( .A0N(n6695), .A1N(n6699), .B0(n6698), .Y(n6571) );
  AOI21X1 U7868 ( .A0(n6697), .A1(n6572), .B0(n6571), .Y(n6577) );
  XOR2X1 U7869 ( .A(n6577), .B(n6576), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N154) );
  AOI21X1 U7870 ( .A0(n6697), .A1(n6579), .B0(n6578), .Y(n6584) );
  XOR2X1 U7871 ( .A(n6584), .B(n6583), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N152) );
  NAND2BX1 U7872 ( .AN(median_sobel_inst_u_median_filter_submodule_n849), .B(
        n7277), .Y(n6586) );
  NAND2BX1 U7873 ( .AN(median_sobel_inst_u_median_filter_submodule_n918), .B(
        n7246), .Y(n6585) );
  OAI21X4 U7874 ( .A0(n6590), .A1(n6589), .B0(n6588), .Y(n6777) );
  NOR2X2 U7875 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .Y(n6656)
         );
  NAND2X2 U7876 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[2]), .Y(n6775)
         );
  XOR2X1 U7877 ( .A(n6592), .B(n6591), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N1090) );
  NAND2BX2 U7878 ( .AN(median_sobel_inst_u_sober_compare_submodule_n250), .B(
        n6597), .Y(n6596) );
  NOR2BX1 U7879 ( .AN(median_sobel_inst_u_sober_compare_submodule_n17), .B(
        median_sobel_inst_u_sober_compare_submodule_n11), .Y(n6594) );
  NAND2BX1 U7880 ( .AN(median_sobel_inst_u_sober_compare_submodule_n332), .B(
        median_sobel_inst_u_sober_compare_submodule_n14), .Y(n6593) );
  AOI2BB2X2 U7881 ( .B0(n6613), .B1(n6594), .A0N(n6606), .A1N(n6593), .Y(n6595) );
  NAND2X1 U7882 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n275), .Y(n6622) );
  NAND2X2 U7883 ( .A(n6597), .B(
        median_sobel_inst_u_sober_compare_submodule_n250), .Y(n6602) );
  NAND2X1 U7884 ( .A(n6613), .B(n6598), .Y(n6601) );
  NOR2BX1 U7885 ( .AN(median_sobel_inst_u_sober_compare_submodule_n340), .B(
        median_sobel_inst_u_sober_compare_submodule_n329), .Y(n6599) );
  NAND2X2 U7886 ( .A(n4545), .B(n6599), .Y(n6600) );
  NAND3X2 U7887 ( .A(n6602), .B(n6601), .C(n6600), .Y(n6603) );
  NAND2X1 U7888 ( .A(n6729), .B(n7663), .Y(n6621) );
  NOR2X2 U7889 ( .A(n6604), .B(
        median_sobel_inst_u_sober_compare_submodule_n314), .Y(n6605) );
  NAND2X2 U7890 ( .A(n6605), .B(
        median_sobel_inst_u_sober_compare_submodule_n250), .Y(n6611) );
  NAND2X2 U7891 ( .A(n6607), .B(n6615), .Y(n6610) );
  NOR2BX1 U7892 ( .AN(median_sobel_inst_u_sober_compare_submodule_n329), .B(
        median_sobel_inst_u_sober_compare_submodule_n340), .Y(n6608) );
  NAND2X2 U7893 ( .A(n4545), .B(n6608), .Y(n6609) );
  NAND3X2 U7894 ( .A(n6611), .B(n6610), .C(n6609), .Y(n6670) );
  BUFX4 U7895 ( .A(n6670), .Y(n6718) );
  NAND2X1 U7896 ( .A(n6718), .B(n7645), .Y(n6620) );
  NAND2X2 U7897 ( .A(n4545), .B(n6614), .Y(n6617) );
  NAND2X2 U7898 ( .A(n6615), .B(
        median_sobel_inst_u_sober_compare_submodule_n332), .Y(n6616) );
  NAND3X4 U7899 ( .A(n6618), .B(n6617), .C(n6616), .Y(n6719) );
  NAND4X1 U7900 ( .A(n6622), .B(n6621), .C(n6620), .D(n6619), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[0]) );
  NAND2X1 U7901 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n295), .Y(n6626) );
  NAND2X1 U7902 ( .A(n6729), .B(n7665), .Y(n6625) );
  NAND2X1 U7903 ( .A(n6718), .B(n7647), .Y(n6624) );
  NAND2X1 U7904 ( .A(n6651), .B(n7641), .Y(n6623) );
  XOR2X1 U7905 ( .A(n6629), .B(n6628), .Y(conv_inst_N71) );
  NAND2X1 U7906 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n294), .Y(n6633) );
  NAND2X1 U7907 ( .A(n6729), .B(n7664), .Y(n6632) );
  NAND2X1 U7908 ( .A(n6718), .B(n7646), .Y(n6631) );
  NAND2X1 U7909 ( .A(n6651), .B(n7640), .Y(n6630) );
  AO21X4 U7910 ( .A0(n6812), .A1(n6806), .B0(n6634), .Y(n6637) );
  OR2X1 U7911 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx2[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n435), .Y(n6635) );
  NAND2X1 U7912 ( .A(n6635), .B(n6807), .Y(n6636) );
  XNOR2X1 U7913 ( .A(n6637), .B(n6636), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[6]) );
  NAND2X1 U7914 ( .A(n6638), .B(n6641), .Y(n6644) );
  OAI21X1 U7915 ( .A0(n6645), .A1(n6644), .B0(n6643), .Y(n6650) );
  XNOR2X1 U7916 ( .A(n6650), .B(n6649), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N139) );
  NAND2X1 U7917 ( .A(n6728), .B(
        median_sobel_inst_u_sober_compare_submodule_n293), .Y(n6655) );
  NAND2X1 U7918 ( .A(n6729), .B(
        median_sobel_inst_u_sober_compare_submodule_n178), .Y(n6654) );
  NAND2X1 U7919 ( .A(n6718), .B(n7656), .Y(n6653) );
  NAND4X1 U7920 ( .A(n6655), .B(n6654), .C(n6653), .D(n6652), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[1]) );
  NOR2X1 U7921 ( .A(n6656), .B(n6778), .Y(n6657) );
  NAND2X2 U7922 ( .A(n6777), .B(n6657), .Y(n6659) );
  NAND2X1 U7923 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[3]), .Y(n6779)
         );
  OA21X2 U7924 ( .A0(n6778), .A1(n6775), .B0(n6779), .Y(n6658) );
  XNOR2X1 U7925 ( .A(n7172), .B(n6660), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N111) );
  NOR2X2 U7926 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n432), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n6663) );
  CLKINVX1 U7927 ( .A(n6663), .Y(n6748) );
  NAND2BX2 U7928 ( .AN(n6661), .B(n6748), .Y(n6890) );
  CLKINVX1 U7929 ( .A(n6890), .Y(n6662) );
  NOR2X1 U7930 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n56), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n6892) );
  NAND2X1 U7931 ( .A(n6662), .B(n6665), .Y(n6667) );
  NAND2X1 U7932 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n432), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[5]), .Y(n6747) );
  OAI21X1 U7933 ( .A0(n6663), .A1(n6743), .B0(n6747), .Y(n6889) );
  NAND2X1 U7934 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n56), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p2_r[6]), .Y(n7005) );
  NOR2X1 U7935 ( .A(n7005), .B(
        median_sobel_inst_u_median_filter_submodule_n1500), .Y(n6664) );
  AOI21X1 U7936 ( .A0(n6889), .A1(n6665), .B0(n6664), .Y(n6666) );
  OA22X1 U7937 ( .A0(n6668), .A1(
        median_sobel_inst_u_median_filter_submodule_n907), .B0(
        median_sobel_inst_u_median_filter_submodule_n1497), .B1(n6934), .Y(
        n6669) );
  OAI21XL U7938 ( .A0(n6688), .A1(n7547), .B0(n6686), .Y(n6687) );
  NOR2X1 U7939 ( .A(n6690), .B(n6687), .Y(median_sobel_inst_N112) );
  NOR2X1 U7940 ( .A(n6690), .B(n6689), .Y(median_sobel_inst_N111) );
  XNOR2X1 U7941 ( .A(n6701), .B(n6700), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N153) );
  XNOR2X1 U7942 ( .A(n6812), .B(n6704), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[4]) );
  XNOR2X1 U7943 ( .A(n7123), .B(n6705), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[4]) );
  NOR2BX1 U7944 ( .AN(n6824), .B(n6823), .Y(n6709) );
  NAND2X1 U7945 ( .A(n7541), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[5]), .Y(n6862) );
  OAI21X4 U7946 ( .A0(n6861), .A1(n6857), .B0(n6862), .Y(n6830) );
  CLKINVX1 U7947 ( .A(n6830), .Y(n6707) );
  OAI21X1 U7948 ( .A0(n6707), .A1(n6823), .B0(n6826), .Y(n6708) );
  XOR2X1 U7949 ( .A(n6712), .B(n6711), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[7]) );
  AOI21X1 U7950 ( .A0(n6860), .A1(n6824), .B0(n6830), .Y(n6715) );
  XOR2X1 U7951 ( .A(n6715), .B(n6714), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[6]) );
  XOR2X1 U7952 ( .A(n6717), .B(n6716), .Y(conv_inst_N69) );
  NAND2X1 U7953 ( .A(n6718), .B(n7652), .Y(n6721) );
  NAND2X1 U7954 ( .A(n6729), .B(n7667), .Y(n6726) );
  NAND2X1 U7955 ( .A(n6730), .B(n7655), .Y(n6725) );
  NAND4X1 U7956 ( .A(n6727), .B(n6726), .C(n6725), .D(n6724), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[9]) );
  NAND4X1 U7957 ( .A(n6735), .B(n6734), .C(n6733), .D(n6732), .Y(
        median_sobel_inst_u_sober_compare_submodule_temp_b[10]) );
  AO21X2 U7958 ( .A0(n6746), .A1(n6745), .B0(n6744), .Y(n6750) );
  XNOR2X1 U7959 ( .A(n6750), .B(n6749), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N31) );
  NOR2X2 U7960 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n383), .Y(n6752) );
  AND2X2 U7961 ( .A(n6838), .B(n6836), .Y(n7188) );
  AO21X4 U7962 ( .A0(n3875), .A1(n7188), .B0(n7189), .Y(n6754) );
  NAND2X1 U7963 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n7190) );
  AND2X4 U7964 ( .A(n6755), .B(n4369), .Y(o_op_ready) );
  OAI21X4 U7965 ( .A0(median_sobel_inst_u_median_filter_submodule_n641), .A1(
        n7577), .B0(n7156), .Y(n6758) );
  NAND2X4 U7966 ( .A(n6759), .B(n6757), .Y(n6953) );
  NOR2X1 U7967 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n865), .Y(n6761) );
  NOR2X1 U7968 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n878), .Y(n6760) );
  NOR2X1 U7969 ( .A(n6761), .B(n6760), .Y(n6762) );
  NOR2X1 U7970 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n913), .Y(n6764) );
  NOR2X1 U7971 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n880), .Y(n6763) );
  NOR2X1 U7972 ( .A(n6764), .B(n6763), .Y(n6765) );
  NOR2X1 U7973 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n914), .Y(n6767) );
  NOR2X1 U7974 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n879), .Y(n6766) );
  NOR2X1 U7975 ( .A(n6767), .B(n6766), .Y(n6768) );
  NOR2X1 U7976 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n871), .Y(n6773) );
  NOR2X1 U7977 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n909), .Y(n6772) );
  NOR2X1 U7978 ( .A(n6773), .B(n6772), .Y(n6774) );
  XNOR2X1 U7979 ( .A(n6782), .B(n6781), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N110) );
  XOR2X1 U7980 ( .A(n6788), .B(n6787), .Y(conv_inst_data_bcd_w[2]) );
  XOR2X1 U7981 ( .A(n6796), .B(n6795), .Y(n6798) );
  NOR2BX1 U7982 ( .AN(n6798), .B(n6797), .Y(conv_inst_N224) );
  XNOR2X1 U7983 ( .A(n6802), .B(n6801), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N42) );
  NOR2X1 U7984 ( .A(n6949), .B(
        median_sobel_inst_u_median_filter_submodule_n883), .Y(n6804) );
  NOR2X1 U7985 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n919), .Y(n6803) );
  NOR2X1 U7986 ( .A(n6804), .B(n6803), .Y(n6805) );
  OAI21X1 U7987 ( .A0(n6809), .A1(n6808), .B0(n6807), .Y(n6810) );
  AO21X4 U7988 ( .A0(n6812), .A1(n6811), .B0(n6810), .Y(n6816) );
  NAND2X6 U7989 ( .A(n7145), .B(n6818), .Y(n7024) );
  AOI2BB2X1 U7990 ( .B0(n7025), .B1(cnt[10]), .A0N(n6819), .A1N(n7024), .Y(
        n6820) );
  NAND2X1 U7991 ( .A(n6998), .B(n6820), .Y(sram_addr_wait_r[15]) );
  AOI2BB2X1 U7992 ( .B0(n7025), .B1(cnt[9]), .A0N(n6821), .A1N(n7024), .Y(
        n6822) );
  NAND2X1 U7993 ( .A(n6996), .B(n6822), .Y(sram_addr_wait_r[14]) );
  NOR2X2 U7994 ( .A(n6823), .B(n6827), .Y(n6829) );
  NAND2X2 U7995 ( .A(n6824), .B(n6829), .Y(n6832) );
  AOI21X2 U7996 ( .A0(n6830), .A1(n6829), .B0(n6828), .Y(n6831) );
  OAI21X4 U7997 ( .A0(n6833), .A1(n6832), .B0(n6831), .Y(n7199) );
  XNOR2X1 U7998 ( .A(n7199), .B(n6834), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[8]) );
  AOI21X4 U7999 ( .A0(n3875), .A1(n6836), .B0(n6835), .Y(n6840) );
  NAND2X1 U8000 ( .A(n6838), .B(n6837), .Y(n6839) );
  XOR2X1 U8001 ( .A(n6840), .B(n6839), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_w[5]) );
  NOR2X1 U8002 ( .A(n7531), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx1_r[9]), .Y(n7200) );
  OAI21XL U8003 ( .A0(n7200), .A1(n7196), .B0(n7201), .Y(n6842) );
  NAND2X1 U8004 ( .A(n7284), .B(n1956), .Y(n6845) );
  XNOR2X1 U8005 ( .A(n6845), .B(cnt[7]), .Y(n6846) );
  OAI2BB2X1 U8006 ( .B0(n6986), .B1(n7512), .A0N(n7292), .A1N(n6846), .Y(n477)
         );
  NAND2X1 U8007 ( .A(n6998), .B(n6848), .Y(sram_addr_wait_r[23]) );
  XOR2X1 U8008 ( .A(n6856), .B(n6855), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy2_w[5]) );
  AOI21X1 U8009 ( .A0(n6860), .A1(n6859), .B0(n6858), .Y(n6865) );
  NOR2BX1 U8010 ( .AN(n6883), .B(n6885), .Y(n6869) );
  AOI21X1 U8011 ( .A0(n6884), .A1(n6869), .B0(n6868), .Y(n6874) );
  XOR2X1 U8012 ( .A(n6874), .B(n6873), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[7]) );
  AOI21X1 U8013 ( .A0(n6884), .A1(n6876), .B0(n6875), .Y(n6881) );
  AOI21X1 U8014 ( .A0(n6884), .A1(n6883), .B0(n6882), .Y(n6888) );
  XOR2X1 U8015 ( .A(n6888), .B(n6887), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[6]) );
  NAND2X1 U8016 ( .A(n7006), .B(n7005), .Y(n6893) );
  XNOR2X1 U8017 ( .A(n7007), .B(n6893), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N32) );
  AOI2BB2X1 U8018 ( .B0(n7025), .B1(cnt[3]), .A0N(n413), .A1N(n7024), .Y(n6894) );
  NAND2X1 U8019 ( .A(n6992), .B(n6894), .Y(sram_addr_wait_r[8]) );
  AOI2BB2X1 U8020 ( .B0(n7025), .B1(cnt[4]), .A0N(n414), .A1N(n7024), .Y(n6895) );
  NAND2X1 U8021 ( .A(n6994), .B(n6895), .Y(sram_addr_wait_r[9]) );
  OAI2BB1X1 U8022 ( .A0N(n6898), .A1N(n6897), .B0(n6896), .Y(n6902) );
  XNOR2X1 U8023 ( .A(n6902), .B(n6901), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N210) );
  OA22X2 U8024 ( .A0(n431), .A1(n7001), .B0(n7002), .B1(n7521), .Y(n6903) );
  NAND2X1 U8025 ( .A(n6928), .B(n6903), .Y(sram_addr_wait_r[26]) );
  OA22X2 U8026 ( .A0(n432), .A1(n7001), .B0(n7002), .B1(n7513), .Y(n6904) );
  NAND2X1 U8027 ( .A(n6930), .B(n6904), .Y(sram_addr_wait_r[27]) );
  AOI2BB2X1 U8028 ( .B0(n7025), .B1(cnt[5]), .A0N(n415), .A1N(n7024), .Y(n6905) );
  NAND2X1 U8029 ( .A(n6928), .B(n6905), .Y(sram_addr_wait_r[10]) );
  AOI2BB2X1 U8030 ( .B0(n7025), .B1(n1956), .A0N(n416), .A1N(n7024), .Y(n6906)
         );
  NAND2X1 U8031 ( .A(n6930), .B(n6906), .Y(sram_addr_wait_r[11]) );
  NAND2X1 U8032 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[5]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[5]), .Y(n6969)
         );
  XOR2X1 U8033 ( .A(n6913), .B(n6912), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N112) );
  CLKINVX1 U8034 ( .A(n7206), .Y(n6917) );
  AOI2BB2X1 U8035 ( .B0(n6956), .B1(sram_addr_w[8]), .A0N(n451), .A1N(n6955), 
        .Y(n6918) );
  NAND2X1 U8036 ( .A(n6998), .B(n6918), .Y(sram_addr_wait_r[7]) );
  AOI2BB2X1 U8037 ( .B0(n6956), .B1(sram_addr_w[6]), .A0N(n453), .A1N(n6955), 
        .Y(n6919) );
  NAND2X1 U8038 ( .A(n7004), .B(n6919), .Y(sram_addr_wait_r[5]) );
  AOI2BB2X1 U8039 ( .B0(n6956), .B1(sram_addr_w[3]), .A0N(n7521), .A1N(n6955), 
        .Y(n6921) );
  NAND2X1 U8040 ( .A(n6928), .B(n6921), .Y(sram_addr_wait_r[2]) );
  AOI2BB2X1 U8041 ( .B0(n6956), .B1(sram_addr_w[2]), .A0N(n458), .A1N(n6955), 
        .Y(n6923) );
  NAND2X1 U8042 ( .A(n6994), .B(n6923), .Y(sram_addr_wait_r[1]) );
  AOI2BB2X1 U8043 ( .B0(n6956), .B1(sram_addr_w[1]), .A0N(n459), .A1N(n6955), 
        .Y(n6924) );
  NAND2X1 U8044 ( .A(n6992), .B(n6924), .Y(sram_addr_wait_r[0]) );
  AOI2BB2X1 U8045 ( .B0(n6956), .B1(sram_addr_w[5]), .A0N(n7512), .A1N(n6955), 
        .Y(n6925) );
  NAND2X1 U8046 ( .A(n7000), .B(n6925), .Y(sram_addr_wait_r[4]) );
  AOI2BB2X1 U8047 ( .B0(n6956), .B1(sram_addr_w[4]), .A0N(n7513), .A1N(n6955), 
        .Y(n6929) );
  NAND2X1 U8048 ( .A(n6930), .B(n6929), .Y(sram_addr_wait_r[3]) );
  AOI2BB2X1 U8049 ( .B0(n6956), .B1(sram_addr_w[7]), .A0N(n452), .A1N(n6955), 
        .Y(n6931) );
  NAND2X1 U8050 ( .A(n6996), .B(n6931), .Y(sram_addr_wait_r[6]) );
  AOI2BB2X1 U8051 ( .B0(n7025), .B1(cnt[8]), .A0N(n418), .A1N(n7024), .Y(n6932) );
  NAND2X1 U8052 ( .A(n7004), .B(n6932), .Y(sram_addr_wait_r[13]) );
  NOR2X6 U8053 ( .A(n7232), .B(n6933), .Y(n7092) );
  OAI21X4 U8054 ( .A0(median_sobel_inst_u_median_filter_submodule_n1068), .A1(
        median_sobel_inst_u_median_filter_submodule_n1465), .B0(n6934), .Y(
        n6935) );
  NOR2X8 U8055 ( .A(n7092), .B(n6935), .Y(n7090) );
  INVX3 U8056 ( .A(n6935), .Y(n6936) );
  NOR2X8 U8057 ( .A(n7092), .B(n6936), .Y(n7091) );
  NAND2X1 U8058 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[6]), .Y(n6942) );
  NAND2X1 U8059 ( .A(n7091), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[6]), .Y(n6941) );
  NAND2X1 U8060 ( .A(n7092), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[6]), .Y(n6940) );
  NAND3X1 U8061 ( .A(n6942), .B(n6941), .C(n6940), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[6]) );
  NAND2BX1 U8062 ( .AN(median_sobel_inst_u_median_filter_submodule_n882), .B(
        n7092), .Y(n6946) );
  NOR2X1 U8063 ( .A(n6759), .B(
        median_sobel_inst_u_median_filter_submodule_n886), .Y(n6950) );
  NOR2X1 U8064 ( .A(n6951), .B(n6950), .Y(n6952) );
  OAI21X1 U8065 ( .A0(median_sobel_inst_u_median_filter_submodule_n866), .A1(
        n6953), .B0(n6952), .Y(
        median_sobel_inst_u_median_filter_submodule_a5[0]) );
  AOI2BB2X1 U8066 ( .B0(n7025), .B1(cnt[7]), .A0N(n417), .A1N(n7024), .Y(n6954) );
  NAND2X1 U8067 ( .A(n7000), .B(n6954), .Y(sram_addr_wait_r[12]) );
  AOI2BB2X1 U8068 ( .B0(n6956), .B1(sram_addr_w[0]), .A0N(n460), .A1N(n6955), 
        .Y(n6967) );
  NAND2X1 U8069 ( .A(n1940), .B(n7600), .Y(n6961) );
  NAND2X1 U8070 ( .A(n6958), .B(n7504), .Y(n6957) );
  NOR2X1 U8071 ( .A(n1991), .B(x_minus_one_r[0]), .Y(n6959) );
  MXI2X1 U8072 ( .A(n6960), .B(n7579), .S0(n6959), .Y(n6964) );
  NOR2X1 U8073 ( .A(n6961), .B(x_minus_one_r[2]), .Y(n6962) );
  NOR2X1 U8074 ( .A(n7032), .B(n6962), .Y(n6963) );
  OAI21X4 U8075 ( .A0(n6971), .A1(n6970), .B0(n6969), .Y(n7167) );
  INVX3 U8076 ( .A(n7169), .Y(n7008) );
  NAND2X1 U8077 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n97), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[6]), .Y(n7168) );
  XOR2X1 U8078 ( .A(n6983), .B(n6982), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm[9]) );
  XOR2X1 U8079 ( .A(n6984), .B(cnt[9]), .Y(n6985) );
  OAI2BB2X1 U8080 ( .B0(n452), .B1(n6986), .A0N(n7292), .A1N(n6985), .Y(n475)
         );
  XNOR2X1 U8081 ( .A(n6987), .B(n6990), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N155) );
  OA22X2 U8082 ( .A0(n459), .A1(n7002), .B0(n7001), .B1(n429), .Y(n6991) );
  NAND2X1 U8083 ( .A(n6992), .B(n6991), .Y(sram_addr_wait_r[24]) );
  OA22X2 U8084 ( .A0(n458), .A1(n7002), .B0(n7001), .B1(n430), .Y(n6993) );
  NAND2X1 U8085 ( .A(n6994), .B(n6993), .Y(sram_addr_wait_r[25]) );
  OA22X2 U8086 ( .A0(n452), .A1(n7002), .B0(n7001), .B1(n435), .Y(n6995) );
  NAND2X1 U8087 ( .A(n6996), .B(n6995), .Y(sram_addr_wait_r[30]) );
  OA22X2 U8088 ( .A0(n451), .A1(n7002), .B0(n7001), .B1(n436), .Y(n6997) );
  NAND2X1 U8089 ( .A(n6998), .B(n6997), .Y(sram_addr_wait_r[31]) );
  OA22X2 U8090 ( .A0(n7512), .A1(n7002), .B0(n7001), .B1(n433), .Y(n6999) );
  OA22X2 U8091 ( .A0(n453), .A1(n7002), .B0(n7001), .B1(n434), .Y(n7003) );
  NAND2X1 U8092 ( .A(n7004), .B(n7003), .Y(sram_addr_wait_r[29]) );
  NOR2X2 U8093 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .Y(n7009)
         );
  INVX3 U8094 ( .A(n7009), .Y(n7174) );
  NAND2X1 U8095 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[7]), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[7]), .Y(n7173)
         );
  OAI21X1 U8096 ( .A0(n7009), .A1(n7168), .B0(n7173), .Y(n7010) );
  NAND2X1 U8097 ( .A(median_sobel_inst_u_sobel_gradient_submodule_net94800), 
        .B(median_sobel_inst_u_sobel_gradient_submodule_Gy_abs[8]), .Y(n7105)
         );
  XNOR2X1 U8098 ( .A(n7305), .B(n7012), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N115) );
  NAND2X1 U8099 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[0]), .Y(n7015) );
  NAND2X1 U8100 ( .A(n7091), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p7_r[0]), .Y(n7014) );
  NAND2BX1 U8101 ( .AN(median_sobel_inst_u_median_filter_submodule_n907), .B(
        n7092), .Y(n7013) );
  NAND3X1 U8102 ( .A(n7015), .B(n7014), .C(n7013), .Y(
        median_sobel_inst_u_median_filter_submodule_a4[0]) );
  NAND2BX1 U8103 ( .AN(median_sobel_inst_u_median_filter_submodule_n908), .B(
        n7092), .Y(n7016) );
  NAND2X1 U8104 ( .A(n7022), .B(n7021), .Y(n7023) );
  AOI2BB2X1 U8105 ( .B0(n7025), .B1(cnt[2]), .A0N(n2292), .A1N(n7024), .Y(
        n7037) );
  NAND2X1 U8106 ( .A(n1940), .B(x_minus_one_r[0]), .Y(n7035) );
  NAND2BX1 U8107 ( .AN(n1991), .B(x_minus_one_r[0]), .Y(n7030) );
  NOR2BX2 U8108 ( .AN(x_plus_two_r[0]), .B(x_plus_two_r[1]), .Y(n7027) );
  NAND2X1 U8109 ( .A(n7027), .B(n7504), .Y(n7026) );
  OAI21X1 U8110 ( .A0(x_r[2]), .A1(n7027), .B0(n7026), .Y(n7028) );
  NAND2X1 U8111 ( .A(n7028), .B(n7030), .Y(n7029) );
  NOR2X1 U8112 ( .A(n7032), .B(n7031), .Y(n7033) );
  OAI22XL U8113 ( .A0(n1946), .A1(n7076), .B0(n1963), .B1(n4550), .Y(n7040) );
  OAI22XL U8114 ( .A0(n1919), .A1(n7078), .B0(n1915), .B1(n7077), .Y(n7039) );
  OA21XL U8115 ( .A0(n7040), .A1(n7039), .B0(n7258), .Y(n7044) );
  NAND2X1 U8116 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[7]), .Y(
        n7041) );
  AOI21X1 U8117 ( .A0(n7042), .A1(n7041), .B0(n7258), .Y(n7043) );
  OR2X2 U8118 ( .A(n7044), .B(n7043), .Y(out_data_wait_r[7]) );
  OAI22XL U8119 ( .A0(n1945), .A1(n7076), .B0(n1966), .B1(n4550), .Y(n7046) );
  OAI22XL U8120 ( .A0(n1957), .A1(n7078), .B0(n1942), .B1(n7077), .Y(n7045) );
  OA21XL U8121 ( .A0(n7046), .A1(n7045), .B0(n7258), .Y(n7050) );
  NAND2X1 U8122 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[4]), .Y(
        n7047) );
  AOI21X1 U8123 ( .A0(n7048), .A1(n7047), .B0(n7258), .Y(n7049) );
  OR2X2 U8124 ( .A(n7050), .B(n7049), .Y(out_data_wait_r[4]) );
  OAI22XL U8125 ( .A0(n1943), .A1(n7076), .B0(n1962), .B1(n4550), .Y(n7052) );
  OAI22XL U8126 ( .A0(n1969), .A1(n7078), .B0(n1948), .B1(n7077), .Y(n7051) );
  OA21XL U8127 ( .A0(n7052), .A1(n7051), .B0(n7258), .Y(n7056) );
  NAND2X1 U8128 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[3]), .Y(
        n7053) );
  AOI21X1 U8129 ( .A0(n7054), .A1(n7053), .B0(n7258), .Y(n7055) );
  OR2X2 U8130 ( .A(n7056), .B(n7055), .Y(out_data_wait_r[3]) );
  OAI22XL U8131 ( .A0(n1960), .A1(n7076), .B0(n1944), .B1(n4550), .Y(n7058) );
  OAI22XL U8132 ( .A0(n1938), .A1(n7078), .B0(n1959), .B1(n7077), .Y(n7057) );
  OA21XL U8133 ( .A0(n7058), .A1(n7057), .B0(n7258), .Y(n7062) );
  AOI21X1 U8134 ( .A0(n7060), .A1(n7059), .B0(n7258), .Y(n7061) );
  OR2X2 U8135 ( .A(n7062), .B(n7061), .Y(out_data_wait_r[5]) );
  OAI22XL U8136 ( .A0(n1936), .A1(n7076), .B0(n7576), .B1(n4550), .Y(n7064) );
  OAI22XL U8137 ( .A0(n1922), .A1(n7078), .B0(n1949), .B1(n7077), .Y(n7063) );
  OA21XL U8138 ( .A0(n7064), .A1(n7063), .B0(n7258), .Y(n7068) );
  NAND2X1 U8139 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[6]), .Y(
        n7065) );
  AOI21X1 U8140 ( .A0(n7066), .A1(n7065), .B0(n7258), .Y(n7067) );
  OR2X2 U8141 ( .A(n7068), .B(n7067), .Y(out_data_wait_r[6]) );
  OAI22XL U8142 ( .A0(n1939), .A1(n7076), .B0(n1965), .B1(n4550), .Y(n7070) );
  OAI22XL U8143 ( .A0(n1917), .A1(n7078), .B0(n1941), .B1(n7077), .Y(n7069) );
  OA21XL U8144 ( .A0(n7070), .A1(n7069), .B0(n7258), .Y(n7074) );
  NAND2X1 U8145 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[2]), .Y(
        n7071) );
  AOI21X1 U8146 ( .A0(n7072), .A1(n7071), .B0(n7258), .Y(n7073) );
  OR2X2 U8147 ( .A(n7074), .B(n7073), .Y(out_data_wait_r[2]) );
  OAI22XL U8148 ( .A0(n1968), .A1(n7076), .B0(n1950), .B1(n4550), .Y(n7080) );
  OAI22XL U8149 ( .A0(n1920), .A1(n7078), .B0(n1916), .B1(n7077), .Y(n7079) );
  OA21XL U8150 ( .A0(n7080), .A1(n7079), .B0(n7258), .Y(n7085) );
  NAND2X1 U8151 ( .A(n7256), .B(median_sobel_inst_sobel_out_data_w[1]), .Y(
        n7082) );
  AOI21X1 U8152 ( .A0(n7083), .A1(n7082), .B0(n7258), .Y(n7084) );
  OR2X2 U8153 ( .A(n7085), .B(n7084), .Y(out_data_wait_r[1]) );
  XOR2X1 U8154 ( .A(n7089), .B(n7088), .Y(conv_inst_data_bcd_w[3]) );
  NAND2X1 U8155 ( .A(n7090), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_r[7]), .Y(n7095) );
  NAND2X1 U8156 ( .A(n7091), .B(n7673), .Y(n7094) );
  NAND2X1 U8157 ( .A(n7092), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p4_r[7]), .Y(n7093) );
  XNOR2X1 U8158 ( .A(n7099), .B(n7098), .Y(conv_inst_data_abc_w[2]) );
  XOR2X1 U8159 ( .A(n7100), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx2_w[8]) );
  NOR2X1 U8160 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[7]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n412), .Y(n7102) );
  XNOR2X1 U8161 ( .A(n7114), .B(n7392), .Y(conv_inst_data_abc_w[3]) );
  NAND2X1 U8162 ( .A(n7428), .B(cnt[5]), .Y(n7115) );
  NAND2X1 U8163 ( .A(n7428), .B(cnt[2]), .Y(n7116) );
  NAND2X2 U8164 ( .A(n7428), .B(n1956), .Y(n7118) );
  OAI21X1 U8165 ( .A0(n451), .A1(n7428), .B0(n7118), .Y(N792) );
  OR2X2 U8166 ( .A(n7120), .B(n7119), .Y(N730) );
  AO21X4 U8167 ( .A0(n7123), .A1(n7122), .B0(n7121), .Y(n7127) );
  INVX3 U8168 ( .A(n7128), .Y(n7421) );
  NAND2X1 U8169 ( .A(n7420), .B(n7129), .Y(n7130) );
  MXI2X1 U8170 ( .A(n7214), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N131), .S0(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[2]), .Y(n7133) );
  XOR2X1 U8171 ( .A(n7133), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_abs[3]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N121) );
  XNOR2X1 U8172 ( .A(n7136), .B(n7135), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N168) );
  NOR2X1 U8173 ( .A(n7143), .B(n7545), .Y(conv_inst_N56) );
  NOR2X1 U8174 ( .A(n7143), .B(n7142), .Y(conv_inst_N57) );
  NOR2BX1 U8175 ( .AN(n7148), .B(conv_inst_n263), .Y(conv_inst_N135) );
  NOR2BX1 U8176 ( .AN(n7148), .B(conv_inst_n256), .Y(conv_inst_N124) );
  XOR2X1 U8177 ( .A(x_origin_r[2]), .B(n7149), .Y(n7788) );
  MXI2X1 U8178 ( .A(sram_wen_ready_r[1]), .B(sram_wen_ready_r[0]), .S0(
        i_in_valid), .Y(n7151) );
  MXI2X1 U8179 ( .A(sram_wen_ready_r[2]), .B(sram_wen_ready_r[1]), .S0(
        i_in_valid), .Y(n7152) );
  MXI2X1 U8180 ( .A(sram_wen_ready_r[3]), .B(sram_wen_ready_r[2]), .S0(
        i_in_valid), .Y(n7154) );
  XOR2X1 U8181 ( .A(n7165), .B(n7164), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N124) );
  OAI21X1 U8182 ( .A0(n7170), .A1(n7169), .B0(n7168), .Y(n7171) );
  NOR2X2 U8183 ( .A(n7180), .B(n7176), .Y(n7183) );
  OAI21X1 U8184 ( .A0(n7180), .A1(n7179), .B0(n7178), .Y(n7181) );
  NOR2X1 U8185 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gx1[6]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_p1_d_r[6]), .Y(n7191) );
  NOR2BX1 U8186 ( .AN(n7188), .B(n7191), .Y(n7192) );
  XOR2X1 U8187 ( .A(n7204), .B(n7203), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm[9]) );
  NAND4X1 U8188 ( .A(n7206), .B(n7205), .C(n451), .D(cnt[2]), .Y(n7207) );
  NOR4X2 U8189 ( .A(n7208), .B(n7207), .C(cnt[5]), .D(n1956), .Y(n7209) );
  NAND2X2 U8190 ( .A(n7512), .B(n7209), .Y(n7213) );
  NOR2XL U8191 ( .A(n7213), .B(n7212), .Y(N819) );
  OA21XL U8192 ( .A0(median_sobel_inst_u_sobel_gradient_submodule_n75), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_N131), .B0(n7214), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N119) );
  OAI21XL U8193 ( .A0(n7219), .A1(n7218), .B0(n7217), .Y(n7221) );
  OAI2BB1X1 U8194 ( .A0N(n7690), .A1N(n7223), .B0(n7222), .Y(n492) );
  NAND2X1 U8195 ( .A(n7225), .B(n7224), .Y(n7226) );
  NAND2X1 U8196 ( .A(n7226), .B(x_origin_r[2]), .Y(n7227) );
  OAI2BB1X1 U8197 ( .A0N(n7788), .A1N(n7228), .B0(n7227), .Y(n487) );
  XOR2X1 U8198 ( .A(n7287), .B(n458), .Y(n7230) );
  XOR2X1 U8199 ( .A(cnt[1]), .B(cnt[0]), .Y(n7235) );
  XOR2X1 U8200 ( .A(n7236), .B(cnt[2]), .Y(n7237) );
  AO22X1 U8201 ( .A0(n7292), .A1(n7237), .B0(n7289), .B1(cnt[2]), .Y(n482) );
  XNOR2X1 U8202 ( .A(n7239), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n27), .Y(n7241) );
  NAND2BX1 U8203 ( .AN(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n425), .Y(n7244) );
  AOI2BB2X1 U8204 ( .B0(n7277), .B1(n7247), .A0N(
        median_sobel_inst_u_median_filter_submodule_n911), .A1N(n7276), .Y(
        n7248) );
  AOI2BB2X1 U8205 ( .B0(n7277), .B1(n7687), .A0N(
        median_sobel_inst_u_median_filter_submodule_n928), .A1N(n7276), .Y(
        n7249) );
  AOI2BB2X1 U8206 ( .B0(n7277), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[3]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n926), .A1N(n7276), .Y(
        n7250) );
  AOI2BB2X1 U8207 ( .B0(n7277), .B1(n7251), .A0N(
        median_sobel_inst_u_median_filter_submodule_n925), .A1N(n7276), .Y(
        n7252) );
  NOR2X1 U8208 ( .A(n7293), .B(n7271), .Y(n7253) );
  XOR2X1 U8209 ( .A(n7253), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N80), .Y(n7255) );
  NOR2X4 U8210 ( .A(n7258), .B(n7257), .Y(n7261) );
  NAND2X1 U8211 ( .A(n7261), .B(median_sobel_inst_sobel_out_data_w[9]), .Y(
        n7259) );
  OAI2BB1X1 U8212 ( .A0N(conv_result_w[9]), .A1N(n7263), .B0(n7259), .Y(
        out_data_wait_r[9]) );
  NAND2X1 U8213 ( .A(n7261), .B(median_sobel_inst_sobel_out_data_w[8]), .Y(
        n7260) );
  OAI2BB1X1 U8214 ( .A0N(conv_result_w[8]), .A1N(n7263), .B0(n7260), .Y(
        out_data_wait_r[8]) );
  NAND2X1 U8215 ( .A(n7261), .B(median_sobel_inst_sobel_out_data_w[10]), .Y(
        n7262) );
  OAI2BB1X1 U8216 ( .A0N(conv_result_w[10]), .A1N(n7263), .B0(n7262), .Y(
        out_data_wait_r[10]) );
  NOR2X1 U8217 ( .A(n7293), .B(n7606), .Y(n7264) );
  XOR2X1 U8218 ( .A(n7264), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n30), .Y(n7266) );
  NAND2BX1 U8219 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n30), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7265) );
  XOR2X1 U8220 ( .A(n7268), .B(n7593), .Y(n7270) );
  NAND2BX1 U8221 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n40), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7269) );
  NAND2BX1 U8222 ( .AN(n7271), .B(
        median_sobel_inst_u_sobel_gradient_submodule_N80), .Y(n7272) );
  NOR2X1 U8223 ( .A(n7272), .B(n7293), .Y(n7273) );
  XOR2X1 U8224 ( .A(n7273), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n26), .Y(n7275) );
  NAND2BX1 U8225 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n26), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7274) );
  OAI2BB1X1 U8226 ( .A0N(
        median_sobel_inst_u_sobel_gradient_submodule_Gx_imm_r_10_), .A1N(n7275), .B0(n7274), .Y(median_sobel_inst_u_sobel_gradient_submodule_N104) );
  AOI2BB2X1 U8227 ( .B0(n7277), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_p3_r[0]), .A0N(
        median_sobel_inst_u_median_filter_submodule_n923), .A1N(n7276), .Y(
        n7278) );
  XOR2X1 U8228 ( .A(n7281), .B(n7280), .Y(n7283) );
  XOR2X1 U8229 ( .A(n7284), .B(n1956), .Y(n7286) );
  OAI2BB1X1 U8230 ( .A0N(n7292), .A1N(n7286), .B0(n7285), .Y(n478) );
  NOR2X1 U8231 ( .A(n7287), .B(n458), .Y(n7288) );
  XOR2X1 U8232 ( .A(n7288), .B(cnt[5]), .Y(n7291) );
  XOR2X1 U8233 ( .A(n7293), .B(n7606), .Y(n7295) );
  NAND2BX1 U8234 ( .AN(median_sobel_inst_u_sobel_gradient_submodule_n2), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n65), .Y(n7294) );
  OA21X2 U8235 ( .A0(n7297), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n524), .B0(n7296), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N175) );
  AND2X2 U8236 ( .A(n7298), .B(n7302), .Y(n7304) );
  INVX1 U8237 ( .A(n7299), .Y(n7300) );
  OAI2BB1X1 U8238 ( .A0N(n7305), .A1N(n7304), .B0(n7303), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N117) );
  OAI22XL U8239 ( .A0(n1916), .A1(n5123), .B0(n1920), .B1(n7327), .Y(n7306) );
  OAI2BB2XL U8240 ( .B0(n1950), .B1(n5123), .A0N(n7738), .A1N(n7318), .Y(n7310) );
  OR2X2 U8241 ( .A(n7311), .B(n7310), .Y(N734) );
  OAI2BB2XL U8242 ( .B0(n1915), .B1(n5123), .A0N(n7741), .A1N(n7318), .Y(n7312) );
  OAI2BB2XL U8243 ( .B0(n1948), .B1(n5123), .A0N(n7742), .A1N(n7318), .Y(n7314) );
  OR2X2 U8244 ( .A(n7315), .B(n7314), .Y(N728) );
  OAI2BB2XL U8245 ( .B0(n1918), .B1(n5123), .A0N(n7743), .A1N(n7318), .Y(n7316) );
  OR2X2 U8246 ( .A(n7317), .B(n7316), .Y(N725) );
  AOI2BB2X2 U8247 ( .B0(n7744), .B1(n7318), .A0N(n1936), .A1N(n7322), .Y(n7319) );
  AOI2BB1X1 U8248 ( .A0N(n7323), .A1N(n7576), .B0(n7320), .Y(n7321) );
  OAI22X1 U8249 ( .A0(n1936), .A1(n7323), .B0(n1922), .B1(n7322), .Y(n7324) );
  AOI2BB1X1 U8250 ( .A0N(n5123), .A1N(n7576), .B0(n7324), .Y(n7326) );
  OAI21X1 U8251 ( .A0(n1949), .A1(n7327), .B0(n7326), .Y(N739) );
  NOR2X1 U8252 ( .A(n7332), .B(n7359), .Y(n7333) );
  NAND2X2 U8253 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[2]), .B(
        n7540), .Y(n7356) );
  OA21X2 U8254 ( .A0(n7359), .A1(n7356), .B0(n7360), .Y(n7334) );
  OR2X4 U8255 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[4]), .B(
        n7336), .Y(n7350) );
  OR2X1 U8256 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n383), .Y(n7340) );
  NAND2X1 U8257 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n383), .Y(n7341) );
  AND2X2 U8258 ( .A(n7350), .B(n7340), .Y(n7365) );
  NOR2X1 U8259 ( .A(median_sobel_inst_u_sobel_gradient_submodule_Gy1[5]), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n383), .Y(n7342) );
  OAI21X2 U8260 ( .A0(n7342), .A1(n7351), .B0(n7341), .Y(n7368) );
  NAND2X2 U8261 ( .A(n7376), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .Y(n7349) );
  XNOR2X1 U8262 ( .A(n7358), .B(n7353), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[2]) );
  XOR2X1 U8263 ( .A(n7355), .B(n7354), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[6]) );
  XNOR2X1 U8264 ( .A(n7363), .B(n7362), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[3]) );
  OAI2BB1X1 U8265 ( .A0N(n7368), .A1N(n7367), .B0(n7366), .Y(n7369) );
  XOR2X1 U8266 ( .A(n7375), .B(n7374), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[7]) );
  XOR2X1 U8267 ( .A(n7376), .B(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1[8]), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_Gy1_w[8]) );
  NAND2BX2 U8268 ( .AN(n7380), .B(n7379), .Y(n7389) );
  NAND2X2 U8269 ( .A(n7385), .B(n7384), .Y(n7386) );
  NOR2X4 U8270 ( .A(n7387), .B(n7386), .Y(n7388) );
  NAND2X1 U8271 ( .A(n7394), .B(n7393), .Y(n7395) );
  XNOR2X1 U8272 ( .A(n7396), .B(n7395), .Y(conv_inst_data_abc_w[4]) );
  NAND2X2 U8273 ( .A(n7398), .B(n7405), .Y(n7399) );
  OR2X4 U8274 ( .A(n7399), .B(n7400), .Y(n7408) );
  OAI21X1 U8275 ( .A0(n7403), .A1(n7402), .B0(n7401), .Y(n7404) );
  NAND2X4 U8276 ( .A(n7408), .B(n7407), .Y(n7410) );
  NOR2X2 U8277 ( .A(n7413), .B(n7415), .Y(n7409) );
  NAND2X2 U8278 ( .A(n7410), .B(n4302), .Y(n7416) );
  OA21X4 U8279 ( .A0(n7412), .A1(n7415), .B0(n7416), .Y(n7411) );
  OAI21X4 U8280 ( .A0(n7414), .A1(n7413), .B0(n7412), .Y(n7419) );
  XOR2X4 U8281 ( .A(n7419), .B(n7418), .Y(conv_inst_data_abc_w[8]) );
  NAND2X1 U8282 ( .A(n7423), .B(n7422), .Y(n7424) );
  XNOR2X2 U8283 ( .A(n7425), .B(n7424), .Y(conv_inst_data_abc_w[6]) );
  INVXL U8284 ( .A(n7430), .Y(n7431) );
  NAND2X1 U8285 ( .A(n7431), .B(cnt[1]), .Y(n7432) );
  OAI22X1 U8286 ( .A0(cnt[1]), .A1(n7433), .B0(n7426), .B1(n7432), .Y(n7435)
         );
  OAI21X2 U8287 ( .A0(n7435), .A1(n7434), .B0(n2028), .Y(n7436) );
  OAI22XL U8288 ( .A0(n1959), .A1(n7469), .B0(n1944), .B1(n7470), .Y(n7439) );
  OAI22XL U8289 ( .A0(n1938), .A1(n7471), .B0(n1960), .B1(n7472), .Y(n7438) );
  OA21XL U8290 ( .A0(n7439), .A1(n7438), .B0(n7458), .Y(N722) );
  OAI22XL U8291 ( .A0(n1948), .A1(n7469), .B0(n1962), .B1(n7470), .Y(n7441) );
  OAI22XL U8292 ( .A0(n1969), .A1(n7471), .B0(n1943), .B1(n7472), .Y(n7440) );
  OA21XL U8293 ( .A0(n7441), .A1(n7440), .B0(n7458), .Y(N720) );
  OAI22XL U8294 ( .A0(n1941), .A1(n7469), .B0(n1965), .B1(n7470), .Y(n7443) );
  OAI22XL U8295 ( .A0(n1917), .A1(n7471), .B0(n1939), .B1(n7472), .Y(n7442) );
  OA21XL U8296 ( .A0(n7443), .A1(n7442), .B0(n7458), .Y(N719) );
  OAI22XL U8297 ( .A0(n1945), .A1(n7472), .B0(n1957), .B1(n7471), .Y(n7444) );
  OA21XL U8298 ( .A0(n7445), .A1(n7444), .B0(n7458), .Y(N721) );
  OAI22XL U8299 ( .A0(n1949), .A1(n7469), .B0(n7470), .B1(n7576), .Y(n7447) );
  OAI22XL U8300 ( .A0(n1936), .A1(n7472), .B0(n1922), .B1(n7471), .Y(n7446) );
  OA21XL U8301 ( .A0(n7447), .A1(n7446), .B0(n7458), .Y(N723) );
  OAI22XL U8302 ( .A0(n1916), .A1(n7470), .B0(n1920), .B1(n7469), .Y(n7451) );
  OAI22XL U8303 ( .A0(n1950), .A1(n7472), .B0(n1968), .B1(n7471), .Y(n7450) );
  OAI22XL U8304 ( .A0(n1948), .A1(n7470), .B0(n1969), .B1(n7469), .Y(n7453) );
  OAI22XL U8305 ( .A0(n1962), .A1(n7472), .B0(n1943), .B1(n7471), .Y(n7452) );
  OAI22XL U8306 ( .A0(n1949), .A1(n7470), .B0(n1922), .B1(n7469), .Y(n7455) );
  OAI22XL U8307 ( .A0(n1936), .A1(n7471), .B0(n7472), .B1(n7576), .Y(n7454) );
  OAI22XL U8308 ( .A0(n1950), .A1(n7470), .B0(n1916), .B1(n7469), .Y(n7457) );
  OAI22XL U8309 ( .A0(n1968), .A1(n7472), .B0(n1920), .B1(n7471), .Y(n7456) );
  OAI22XL U8310 ( .A0(n1918), .A1(n7469), .B0(n1964), .B1(n7470), .Y(n7460) );
  OAI22XL U8311 ( .A0(n1921), .A1(n7471), .B0(n1947), .B1(n7472), .Y(n7459) );
  OA21XL U8312 ( .A0(n7460), .A1(n7459), .B0(n7458), .Y(N717) );
  OAI22XL U8313 ( .A0(n1959), .A1(n7470), .B0(n1938), .B1(n7469), .Y(n7462) );
  OAI22XL U8314 ( .A0(n1944), .A1(n7472), .B0(n1960), .B1(n7471), .Y(n7461) );
  OAI22XL U8315 ( .A0(n1942), .A1(n7470), .B0(n1957), .B1(n7469), .Y(n7464) );
  OAI22XL U8316 ( .A0(n1966), .A1(n7472), .B0(n1945), .B1(n7471), .Y(n7463) );
  OAI22XL U8317 ( .A0(n1915), .A1(n7470), .B0(n1919), .B1(n7469), .Y(n7466) );
  OAI22XL U8318 ( .A0(n1963), .A1(n7472), .B0(n1946), .B1(n7471), .Y(n7465) );
  AOI2BB1X1 U8319 ( .A0N(n7466), .A1N(n7465), .B0(n7473), .Y(N748) );
  OAI22XL U8320 ( .A0(n1918), .A1(n7470), .B0(n1921), .B1(n7469), .Y(n7468) );
  OAI22XL U8321 ( .A0(n1964), .A1(n7472), .B0(n1947), .B1(n7471), .Y(n7467) );
  OAI22XL U8322 ( .A0(n1941), .A1(n7470), .B0(n1917), .B1(n7469), .Y(n7475) );
  OAI22XL U8323 ( .A0(n1965), .A1(n7472), .B0(n1939), .B1(n7471), .Y(n7474) );
  XOR2X1 U8324 ( .A(median_sobel_inst_u_sobel_gradient_submodule_n7), .B(n7476), .Y(n7477) );
  AOI2BB2X1 U8325 ( .B0(n3568), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n7), .A0N(n3568), .A1N(
        n7477), .Y(median_sobel_inst_u_sobel_gradient_submodule_N67) );
  XOR2X1 U8326 ( .A(n7481), .B(n7480), .Y(n7479) );
  AOI2BB2X1 U8327 ( .B0(n3568), .B1(n7480), .A0N(n3568), .A1N(n7479), .Y(
        median_sobel_inst_u_sobel_gradient_submodule_N68) );
  XNOR2X1 U8328 ( .A(n7482), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n29), .Y(n7483) );
  AOI2BB2X1 U8329 ( .B0(n3568), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n29), .A0N(n3568), .A1N(
        n7483), .Y(median_sobel_inst_u_sobel_gradient_submodule_N690) );
  XOR2X1 U8330 ( .A(n7491), .B(n7587), .Y(n7484) );
  AOI2BB2X1 U8331 ( .B0(n3568), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n37), .A0N(n3568), .A1N(
        n7484), .Y(median_sobel_inst_u_sobel_gradient_submodule_N70) );
  NOR2X1 U8332 ( .A(n7491), .B(n7487), .Y(n7485) );
  XOR2X1 U8333 ( .A(n7485), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .Y(n7486) );
  AOI2BB2X1 U8334 ( .B0(n3568), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .A0N(n3568), .A1N(
        n7486), .Y(median_sobel_inst_u_sobel_gradient_submodule_N720) );
  NAND2BX1 U8335 ( .AN(n7487), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n35), .Y(n7488) );
  XOR2X1 U8336 ( .A(n7489), .B(median_sobel_inst_u_sobel_gradient_submodule_n4), .Y(n7490) );
  AOI2BB2X1 U8337 ( .B0(n3568), .B1(
        median_sobel_inst_u_sobel_gradient_submodule_n4), .A0N(n3568), .A1N(
        n7490), .Y(median_sobel_inst_u_sobel_gradient_submodule_N73) );
  NOR2X1 U8338 ( .A(n7491), .B(n7587), .Y(n7492) );
  XOR2X1 U8339 ( .A(n7492), .B(
        median_sobel_inst_u_sobel_gradient_submodule_n22), .Y(n7493) );
  AO22X1 U8340 ( .A0(n3568), .A1(
        median_sobel_inst_u_sobel_gradient_submodule_n418), .B0(
        median_sobel_inst_u_sobel_gradient_submodule_Gy_imm_r_10_), .B1(n7493), 
        .Y(median_sobel_inst_u_sobel_gradient_submodule_N710) );
endmodule

