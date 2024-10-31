/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Thu Oct 31 14:51:58 2024
/////////////////////////////////////////////////////////////


module core ( i_clk, i_rst_n, i_op_valid, i_op_mode, o_op_ready, i_in_valid, 
        i_in_data, o_in_ready, o_out_valid, o_out_data );
  input [3:0] i_op_mode;
  input [7:0] i_in_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_op_valid, i_in_valid;
  output o_op_ready, o_in_ready, o_out_valid;
  wire   N93, conv_out_valid_w, med_out_valid_w, curr_state_1_, x_origin_r_2_,
         l_valid_w, r_valid_w, u_valid_w, d_valid_w, conv_isFirst_signal_r,
         conv_calc_done_r, med_isFirst_signal_r, med_sobel_r, med_done_w,
         op_mode_r_3_, N123, next_state_3_, sram_addr_wait_r_1__0_,
         x_delay_r_1__1_, x_delay_r_1__0_, x_delay_r_0__1_, x_delay_r_0__0_,
         N330, N331, N332, N333, N334, N335, N336, N337, out_valid_wait_r,
         N466, N467, N468, N469, N470, N471, N472, N473, N474, N475, N476,
         N707, N708, N709, N710, N711, N712, N713, N714, N715, N716, N717,
         N718, N719, N720, N721, N722, N723, N724, N725, N726, N727, N728,
         N729, N730, N731, N732, N733, N734, N735, N736, N737, N738, N746,
         N752, N775, N776, N777, N805, N809, N810, N831, N832, N833, N834,
         N886, n71, n94, n104, n117, n122, n12300, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n363, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n391, n392,
         n393, n394, n395, n396, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n409, n410, n411, n412, n413, n414, n418, n420,
         n421, n422, n423, n425, n426, n427, n428, n429, n430, n431, n432,
         n434, n435, n440, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, net35872, net35896, net35923, net35950, net42490, net42492,
         net42493, net42520, net42534, net42554, net42564, net42583, net42618,
         net42625, net42648, net42656, net42679, net42680, net42789, net42795,
         net42808, net42810, net42814, net42820, net42821, net42822, net42823,
         net42825, net42841, net42851, net43481, net43486, net43488, net43503,
         net43505, net50503, net50998, net53697, net53696, net54593, net54592,
         net54721, net54720, net55798, net43596, net56035, net56037, net42834,
         n416, n7340, n7350, n7360, n7370, n7380, n739, n740, n741, n742, n743,
         n744, n745, n7460, n747, n748, n749, n750, n751, n7520, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n7750, n7760,
         n7770, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n8050, n806, n807, n808, n8090,
         n8100, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n8310,
         n8320, n8330, n8340, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n8860,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216,
         n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226,
         n1227, n1228, n1229, n12301, n1231, n1232, n1233, n1234, n1235, n1236,
         n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246,
         n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256,
         n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266,
         n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276,
         n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286,
         n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296,
         n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306,
         n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326,
         n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336,
         n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346,
         n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356,
         n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366,
         n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376,
         n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386,
         n1387, n1388, n1389, n1390, n1392, n1393, n1394, n1395, n1396, n1397,
         n1398, n1399, n1400, n1401, n1402, n1403;
  wire   [31:0] sram_data_out_w;
  wire   [3:0] sram_wen_ready_r;
  wire   [35:0] sram_addr_w;
  wire   [10:0] conv_result_w;
  wire   [10:0] med_result_w;
  wire   [13:11] result_w;
  wire   [10:1] cnt;
  wire   [2:0] y_origin_r;
  wire   [31:0] input_data_ready_r;
  wire   [4:0] z_r;
  wire   [2:0] y_r;
  wire   [2:0] x_r;
  wire   [2:1] x_minus_one_r;
  wire   [2:0] x_plus_one_r;
  wire   [2:0] x_plus_two_r;
  wire   [23:0] sram_data_out_r;
  wire   [31:0] input_data_wait_r;
  wire   [9:0] pre_state;
  wire   [13:0] out_data_wait_r;

  sram_512x8 SRAM_inst_loop_0__u_sram ( .Q(sram_data_out_w[7:0]), .A(
        sram_addr_w[8:0]), .D(i_in_data), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[0]) );
  sram_512x8 SRAM_inst_loop_1__u_sram ( .Q(sram_data_out_w[15:8]), .A(
        sram_addr_w[17:9]), .D(i_in_data), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[1]) );
  sram_512x8 SRAM_inst_loop_2__u_sram ( .Q(sram_data_out_w[23:16]), .A(
        sram_addr_w[26:18]), .D(i_in_data), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[2]) );
  sram_512x8 SRAM_inst_loop_3__u_sram ( .Q(sram_data_out_w[31:24]), .A(
        sram_addr_w[35:27]), .D(i_in_data), .CLK(i_clk), .CEN(1'b0), .WEN(
        sram_wen_ready_r[3]) );
  DFFRX4 op_mode_r_reg_2_ ( .D(n413), .CK(i_clk), .RN(n1103), .Q(n817), .QN(
        net56035) );
  DFFRX4 op_mode_r_reg_0_ ( .D(n411), .CK(i_clk), .RN(n1102), .Q(n766), .QN(
        net56037) );
  DFFRX4 input_data_ready_r_reg_30_ ( .D(N737), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[30]) );
  DFFRX4 input_data_ready_r_reg_29_ ( .D(N736), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[29]) );
  DFFRX4 input_data_ready_r_reg_28_ ( .D(N735), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[28]) );
  DFFRX4 input_data_ready_r_reg_27_ ( .D(N734), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[27]) );
  DFFRX4 input_data_ready_r_reg_26_ ( .D(N733), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[26]) );
  DFFRX4 input_data_ready_r_reg_23_ ( .D(N730), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[23]) );
  DFFRX4 input_data_ready_r_reg_22_ ( .D(N729), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[22]) );
  DFFRX4 input_data_ready_r_reg_21_ ( .D(N728), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[21]) );
  DFFRX4 input_data_ready_r_reg_20_ ( .D(N727), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[20]) );
  DFFRX4 input_data_ready_r_reg_16_ ( .D(N723), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[16]) );
  DFFRX4 input_data_ready_r_reg_15_ ( .D(N722), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[15]) );
  DFFRX4 input_data_ready_r_reg_14_ ( .D(N721), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[14]) );
  DFFRX4 input_data_ready_r_reg_12_ ( .D(N719), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[12]), .QN(n838) );
  DFFRX4 input_data_ready_r_reg_9_ ( .D(N716), .CK(i_clk), .RN(n1102), .QN(
        n8320) );
  DFFRX4 input_data_ready_r_reg_6_ ( .D(N713), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[6]) );
  DFFRX4 input_data_ready_r_reg_5_ ( .D(N712), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[5]) );
  DFFRX4 input_data_ready_r_reg_4_ ( .D(N711), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[4]) );
  DFFRX4 input_data_ready_r_reg_2_ ( .D(N709), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[2]) );
  DFFRX4 input_data_ready_r_reg_1_ ( .D(N708), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[1]) );
  DFFRX4 input_data_ready_r_reg_0_ ( .D(N707), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[0]) );
  DFFRX4 curr_state_reg_1_ ( .D(n1387), .CK(i_clk), .RN(n1103), .Q(
        curr_state_1_), .QN(n420) );
  DFFRX4 cnt_reg_0_ ( .D(n453), .CK(i_clk), .RN(n1103), .QN(n432) );
  DFFRX4 cnt_reg_1_ ( .D(n452), .CK(i_clk), .RN(n1103), .Q(cnt[1]), .QN(n431)
         );
  DFFRX4 x_origin_r_reg_2_ ( .D(n456), .CK(i_clk), .RN(n1103), .Q(
        x_origin_r_2_) );
  DFFRX4 y_origin_r_reg_0_ ( .D(n461), .CK(i_clk), .RN(n1102), .Q(
        y_origin_r[0]), .QN(n442) );
  DFFRX4 y_origin_r_reg_2_ ( .D(n459), .CK(i_clk), .RN(n1102), .Q(
        y_origin_r[2]), .QN(n440) );
  conv conv_inst ( .i_clk(i_clk), .i_rst_n(n1102), .i_data({
        input_data_ready_r[31:26], n830, n824, input_data_ready_r[23:22], n745, 
        n744, n1099, n753, n1098, n747, input_data_ready_r[15:14], n758, n839, 
        input_data_ready_r[11], n1096, n8330, n811, input_data_ready_r[7:0]}), 
        .i_isFirst(conv_isFirst_signal_r), .i_input_done(conv_calc_done_r), 
        .o_out_valid(conv_out_valid_w), .o_out_data({result_w, conv_result_w})
         );
  median median_inst ( .i_clk(i_clk), .i_rst_n(n1129), .i_data({
        input_data_ready_r[31:26], n830, input_data_ready_r[24:22], n745, n744, 
        n1099, n753, n1098, n747, input_data_ready_r[15:14], n758, 
        input_data_ready_r[12:11], n1096, n8330, n811, input_data_ready_r[7:0]}), .i_isFirst(med_isFirst_signal_r), .i_med_sobel(med_sobel_r), .o_out_valid(
        med_out_valid_w), .o_out_data(med_result_w), .o_done(med_done_w) );
  core_DW01_inc_1 r479 ( .A({cnt, n1309}), .SUM({N476, N475, N474, N473, N472, 
        N471, N470, N469, N468, N467, N466}) );
  DFFRHQX2 op_mode_r_reg_3_ ( .D(n414), .CK(i_clk), .RN(i_rst_n), .Q(
        op_mode_r_3_) );
  DFFRX1 med_sobel_r_reg ( .D(n1388), .CK(i_clk), .RN(n1102), .Q(med_sobel_r)
         );
  DFFRX1 sram_addr_ready_r_reg_0__5_ ( .D(net35950), .CK(i_clk), .RN(n1104), 
        .Q(sram_addr_w[5]), .QN(n376) );
  DFFRX1 sram_addr_ready_r_reg_0__3_ ( .D(n1359), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[3]), .QN(n374) );
  DFFRX1 sram_addr_ready_r_reg_1__8_ ( .D(n1386), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[17]), .QN(n388) );
  DFFRX1 sram_addr_ready_r_reg_1__6_ ( .D(n1384), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[15]), .QN(n386) );
  DFFRX1 sram_addr_ready_r_reg_1__4_ ( .D(n1383), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[13]), .QN(n384) );
  DFFRX1 sram_addr_ready_r_reg_1__2_ ( .D(n1381), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[11]), .QN(n382) );
  DFFRX1 sram_addr_ready_r_reg_1__1_ ( .D(n1380), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[10]), .QN(n381) );
  DFFRX1 sram_addr_ready_r_reg_2__2_ ( .D(n1366), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[20]), .QN(n391) );
  DFFRX1 sram_addr_ready_r_reg_3__8_ ( .D(n1379), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[35]), .QN(n406) );
  DFFRX1 sram_addr_ready_r_reg_3__7_ ( .D(n1378), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[34]), .QN(n405) );
  DFFRX1 sram_addr_ready_r_reg_3__6_ ( .D(n1377), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[33]), .QN(n404) );
  DFFRX1 sram_addr_ready_r_reg_3__5_ ( .D(net35896), .CK(i_clk), .RN(n1104), 
        .Q(sram_addr_w[32]), .QN(n403) );
  DFFRX1 sram_addr_ready_r_reg_3__3_ ( .D(n1375), .CK(i_clk), .RN(n1103), .Q(
        sram_addr_w[30]), .QN(n401) );
  DFFRX1 sram_addr_ready_r_reg_3__2_ ( .D(n1374), .CK(i_clk), .RN(n1103), .Q(
        sram_addr_w[29]), .QN(n400) );
  DFFRX1 sram_addr_ready_r_reg_3__1_ ( .D(n1373), .CK(i_clk), .RN(n1103), .Q(
        sram_addr_w[28]), .QN(n399) );
  DFFRX1 z_r_reg_2_ ( .D(n1351), .CK(i_clk), .RN(n1104), .Q(z_r[2]) );
  DFFRX1 z_r_reg_1_ ( .D(n1350), .CK(i_clk), .RN(n1104), .Q(z_r[1]) );
  DFFRX1 z_r_reg_0_ ( .D(n1349), .CK(i_clk), .RN(n1104), .Q(z_r[0]) );
  DFFSX1 sram_wen_ready_r_reg_3_ ( .D(N834), .CK(i_clk), .SN(n1105), .Q(
        sram_wen_ready_r[3]) );
  DFFSX1 sram_wen_ready_r_reg_0_ ( .D(N831), .CK(i_clk), .SN(n1105), .Q(
        sram_wen_ready_r[0]) );
  DFFRX1 pre_state_reg_1__1_ ( .D(pre_state[1]), .CK(i_clk), .RN(n1103), .Q(
        pre_state[5]), .QN(n367) );
  DFFRX1 x_minus_one_r_reg_2_ ( .D(N746), .CK(i_clk), .RN(n1103), .Q(
        x_minus_one_r[2]) );
  DFFSX1 sram_wen_ready_r_reg_1_ ( .D(N832), .CK(i_clk), .SN(n1105), .Q(
        sram_wen_ready_r[1]) );
  DFFSX1 sram_wen_ready_r_reg_2_ ( .D(N833), .CK(i_clk), .SN(n1105), .Q(
        sram_wen_ready_r[2]) );
  DFFSX1 pre_state_reg_1__3_ ( .D(pre_state[3]), .CK(i_clk), .SN(n1105), .Q(
        pre_state[7]), .QN(n368) );
  DFFRX1 x_plus_one_r_reg_2_ ( .D(n1389), .CK(i_clk), .RN(n1103), .Q(
        x_plus_one_r[2]) );
  DFFRX1 pre_state_reg_2__1_ ( .D(pre_state[5]), .CK(i_clk), .RN(n1103), .QN(
        n369) );
  DFFSX1 pre_state_reg_2__3_ ( .D(pre_state[7]), .CK(i_clk), .SN(n1105), .QN(
        n370) );
  DFFRX1 depth_ready_r_reg_1_ ( .D(n455), .CK(i_clk), .RN(n1103), .Q(n8050), 
        .QN(n434) );
  DFFRX1 conv_isFirst_signal_r_reg ( .D(N809), .CK(i_clk), .RN(n1103), .Q(
        conv_isFirst_signal_r) );
  DFFRX1 x_minus_one_r_reg_1_ ( .D(n1395), .CK(i_clk), .RN(n1103), .Q(
        x_minus_one_r[1]), .QN(n804) );
  DFFSX1 pre_state_reg_1__2_ ( .D(pre_state[2]), .CK(i_clk), .SN(n1105), .Q(
        pre_state[6]) );
  DFFRX1 x_plus_two_r_reg_2_ ( .D(N752), .CK(i_clk), .RN(n1103), .Q(
        x_plus_two_r[2]) );
  DFFRX1 x_r_reg_2_ ( .D(N777), .CK(i_clk), .RN(n1104), .Q(x_r[2]) );
  DFFRX1 depth_ready_r_reg_0_ ( .D(n454), .CK(i_clk), .RN(n1103), .QN(n435) );
  DFFSX1 depth_ready_r_reg_2_ ( .D(n418), .CK(i_clk), .SN(n1105), .QN(n407) );
  DFFRX1 x_plus_one_r_reg_1_ ( .D(N123), .CK(i_clk), .RN(n1103), .Q(
        x_plus_one_r[1]), .QN(n801) );
  DFFRX1 out_valid_ready_r_reg ( .D(out_valid_wait_r), .CK(i_clk), .RN(n1102), 
        .Q(o_out_valid), .QN(n366) );
  DFFRX1 sram_data_out_r_reg_2__3_ ( .D(sram_data_out_w[19]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[12]), .QN(n768) );
  DFFRX1 sram_data_out_r_reg_2__5_ ( .D(sram_data_out_w[21]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[13]), .QN(n761) );
  DFFRX1 sram_data_out_r_reg_2__7_ ( .D(sram_data_out_w[23]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[15]), .QN(n818) );
  DFFRX1 sram_data_out_r_reg_2__1_ ( .D(sram_data_out_w[17]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[10]), .QN(n763) );
  DFFRX1 sram_data_out_r_reg_3__4_ ( .D(sram_data_out_w[28]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[20]), .QN(n774) );
  DFFRX1 sram_data_out_r_reg_3__5_ ( .D(sram_data_out_w[29]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[21]), .QN(n792) );
  DFFRX1 sram_data_out_r_reg_3__2_ ( .D(sram_data_out_w[26]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[18]), .QN(n815) );
  DFFRX1 conv_calc_done_r_reg ( .D(n410), .CK(i_clk), .RN(n1103), .Q(
        conv_calc_done_r), .QN(n409) );
  DFFRX1 x_r_reg_1_ ( .D(N776), .CK(i_clk), .RN(n1104), .Q(x_r[1]) );
  DFFRX1 out_data_ready_r_reg_0_ ( .D(out_data_wait_r[0]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[0]) );
  DFFRX1 out_data_ready_r_reg_1_ ( .D(out_data_wait_r[1]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[1]) );
  DFFRX1 out_data_ready_r_reg_2_ ( .D(out_data_wait_r[2]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[2]) );
  DFFRX1 out_data_ready_r_reg_3_ ( .D(out_data_wait_r[3]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[3]) );
  DFFRX1 out_data_ready_r_reg_4_ ( .D(out_data_wait_r[4]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[4]) );
  DFFRX1 out_data_ready_r_reg_5_ ( .D(out_data_wait_r[5]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[5]) );
  DFFRX1 out_data_ready_r_reg_6_ ( .D(out_data_wait_r[6]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[6]) );
  DFFRX1 out_data_ready_r_reg_7_ ( .D(out_data_wait_r[7]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[7]) );
  DFFRX1 out_data_ready_r_reg_8_ ( .D(out_data_wait_r[8]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[8]) );
  DFFRX1 out_data_ready_r_reg_9_ ( .D(out_data_wait_r[9]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[9]) );
  DFFRX1 out_data_ready_r_reg_10_ ( .D(out_data_wait_r[10]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[10]) );
  DFFRX1 out_data_ready_r_reg_11_ ( .D(out_data_wait_r[11]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[11]) );
  DFFRX1 out_data_ready_r_reg_12_ ( .D(out_data_wait_r[12]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[12]) );
  DFFRX1 out_data_ready_r_reg_13_ ( .D(out_data_wait_r[13]), .CK(i_clk), .RN(
        n1103), .Q(o_out_data[13]) );
  DFFSXL pre_state_reg_2__2_ ( .D(pre_state[6]), .CK(i_clk), .SN(n1105), .Q(
        pre_state[9]) );
  DFFSXL pre_state_reg_0__3_ ( .D(n7350), .CK(i_clk), .SN(n1105), .Q(
        pre_state[3]) );
  DFFSXL pre_state_reg_0__2_ ( .D(net53696), .CK(i_clk), .SN(n1105), .Q(
        pre_state[2]) );
  DFFSHQX8 curr_state_reg_2_ ( .D(net43505), .CK(i_clk), .SN(n1105), .Q(
        net53696) );
  DFFRX4 input_data_ready_r_reg_13_ ( .D(N720), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[13]) );
  DFFRHQX8 curr_state_reg_0_ ( .D(n1355), .CK(i_clk), .RN(n1102), .Q(net54592)
         );
  DFFRX4 med_done_r_reg ( .D(med_done_w), .CK(i_clk), .RN(n1102), .QN(n363) );
  DFFRX4 input_data_ready_r_reg_7_ ( .D(N714), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[7]) );
  DFFRX4 input_data_ready_r_reg_11_ ( .D(N718), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[11]) );
  DFFRX2 sram_addr_ready_r_reg_1__7_ ( .D(n1385), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[16]), .QN(n387) );
  DFFRX2 sram_addr_ready_r_reg_1__3_ ( .D(n1382), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[12]), .QN(n383) );
  DFFRX2 y_r_reg_1_ ( .D(n1393), .CK(i_clk), .RN(n1102), .Q(y_r[1]) );
  DFFRX2 sram_addr_ready_r_reg_2__4_ ( .D(n1368), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[22]), .QN(n393) );
  DFFRX2 sram_addr_ready_r_reg_2__5_ ( .D(net35923), .CK(i_clk), .RN(n1104), 
        .Q(sram_addr_w[23]), .QN(n394) );
  DFFRX2 sram_addr_ready_r_reg_2__6_ ( .D(n1369), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[24]), .QN(n395) );
  DFFRX2 sram_addr_ready_r_reg_0__6_ ( .D(n1361), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[6]), .QN(n377) );
  DFFRX2 sram_data_out_r_reg_2__6_ ( .D(sram_data_out_w[22]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[14]), .QN(n773) );
  DFFRHQX8 x_origin_r_reg_0_ ( .D(n458), .CK(i_clk), .RN(n1103), .Q(n870) );
  DFFRX2 sram_addr_ready_r_reg_2__3_ ( .D(n1367), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[21]), .QN(n392) );
  DFFRX2 sram_addr_ready_r_reg_2__1_ ( .D(n1365), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[19]) );
  DFFRX2 y_r_reg_2_ ( .D(n1354), .CK(i_clk), .RN(n1102), .Q(y_r[2]) );
  DFFRX2 x_r_reg_0_ ( .D(N775), .CK(i_clk), .RN(n1104), .Q(x_r[0]) );
  DFFRHQX1 sram_data_out_r_reg_0__7_ ( .D(sram_data_out_w[7]), .CK(i_clk), 
        .RN(n1105), .Q(n853) );
  DFFRHQX2 sram_data_out_r_reg_2__4_ ( .D(sram_data_out_w[20]), .CK(i_clk), 
        .RN(n1105), .Q(n851) );
  DFFRHQX8 x_origin_r_reg_1_ ( .D(n457), .CK(i_clk), .RN(n1103), .Q(n849) );
  DFFRX4 cnt_reg_5_ ( .D(n448), .CK(i_clk), .RN(n1103), .Q(cnt[5]), .QN(n427)
         );
  DFFRX4 cnt_reg_6_ ( .D(n447), .CK(i_clk), .RN(n1103), .Q(cnt[6]), .QN(n426)
         );
  DFFRX4 cnt_reg_4_ ( .D(n449), .CK(i_clk), .RN(n1103), .Q(cnt[4]), .QN(n428)
         );
  DFFRX4 cnt_reg_8_ ( .D(n445), .CK(i_clk), .RN(n1103), .Q(cnt[8]), .QN(n423)
         );
  DFFRX4 cnt_reg_9_ ( .D(n444), .CK(i_clk), .RN(n1103), .Q(cnt[9]), .QN(n422)
         );
  DFFRX4 cnt_reg_2_ ( .D(n451), .CK(i_clk), .RN(n1103), .Q(cnt[2]), .QN(n430)
         );
  DFFRX4 cnt_reg_3_ ( .D(n450), .CK(i_clk), .RN(n1103), .Q(cnt[3]), .QN(n429)
         );
  DFFRX4 input_data_ready_r_reg_17_ ( .D(N724), .CK(i_clk), .RN(n1102), .QN(
        n1097) );
  DFFRXL pre_state_reg_0__0_ ( .D(net54592), .CK(i_clk), .RN(n1102), .Q(
        pre_state[0]) );
  DFFRHQX1 sram_data_out_r_reg_1__5_ ( .D(sram_data_out_w[13]), .CK(i_clk), 
        .RN(n1105), .Q(n847) );
  DFFRHQX1 sram_data_out_r_reg_0__3_ ( .D(sram_data_out_w[3]), .CK(i_clk), 
        .RN(n1105), .Q(n845) );
  DFFRX2 sram_data_out_r_reg_0__1_ ( .D(sram_data_out_w[1]), .CK(i_clk), .RN(
        n1103), .Q(sram_data_out_r[1]), .QN(n844) );
  DFFRX2 sram_data_out_r_reg_3__6_ ( .D(sram_data_out_w[30]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[22]), .QN(n762) );
  DFFRHQX2 sram_data_out_r_reg_1__7_ ( .D(sram_data_out_w[15]), .CK(i_clk), 
        .RN(n1105), .Q(n840) );
  DFFRX2 sram_data_out_r_reg_1__2_ ( .D(sram_data_out_w[10]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[6]), .QN(n1400) );
  DFFRX2 sram_addr_ready_r_reg_0__0_ ( .D(n1356), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[0]), .QN(n371) );
  DFFRHQX1 sram_data_out_r_reg_1__4_ ( .D(sram_data_out_w[12]), .CK(i_clk), 
        .RN(n1105), .Q(n8310) );
  DFFRHQX1 sram_data_out_r_reg_0__5_ ( .D(sram_data_out_w[5]), .CK(i_clk), 
        .RN(n1105), .Q(n827) );
  DFFRX2 z_r_reg_3_ ( .D(n1352), .CK(i_clk), .RN(n1104), .QN(n821) );
  DFFRX4 input_data_ready_r_reg_18_ ( .D(N725), .CK(i_clk), .RN(n1102), .Q(
        n1100) );
  DFFRX1 sram_data_out_r_reg_2__2_ ( .D(sram_data_out_w[18]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[11]), .QN(n1403) );
  DFFRX1 sram_data_out_r_reg_2__0_ ( .D(sram_data_out_w[16]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[9]), .QN(n1402) );
  DFFRHQX1 sram_data_out_r_reg_0__6_ ( .D(sram_data_out_w[6]), .CK(i_clk), 
        .RN(n1105), .Q(n819) );
  DFFRX4 input_data_ready_r_reg_10_ ( .D(N717), .CK(i_clk), .RN(n1102), .QN(
        n1095) );
  DFFRX2 sram_addr_ready_r_reg_3__4_ ( .D(n1376), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[31]), .QN(n402) );
  DFFRHQX8 input_data_ready_r_reg_8_ ( .D(N715), .CK(i_clk), .RN(n1102), .Q(
        n811) );
  DFFRX1 x_minus_one_r_reg_0_ ( .D(n871), .CK(i_clk), .RN(i_rst_n), .Q(n828), 
        .QN(n1340) );
  DFFRX1 x_plus_two_r_reg_0_ ( .D(n870), .CK(i_clk), .RN(i_rst_n), .Q(
        x_plus_two_r[0]), .QN(n1339) );
  DFFRX1 x_plus_one_r_reg_0_ ( .D(n871), .CK(i_clk), .RN(n1102), .Q(
        x_plus_one_r[0]), .QN(n1392) );
  DFFRX1 x_delay_r_reg_0__0_ ( .D(x_r[0]), .CK(i_clk), .RN(n1104), .Q(
        x_delay_r_0__0_) );
  DFFRX1 pre_state_reg_0__1_ ( .D(curr_state_1_), .CK(i_clk), .RN(n1103), .Q(
        pre_state[1]) );
  DFFRX1 x_delay_r_reg_2__1_ ( .D(x_delay_r_1__1_), .CK(i_clk), .RN(n1104), 
        .Q(N93), .QN(n986) );
  DFFRX1 x_delay_r_reg_1__1_ ( .D(x_delay_r_0__1_), .CK(i_clk), .RN(n1104), 
        .Q(x_delay_r_1__1_) );
  DFFRX1 x_delay_r_reg_1__0_ ( .D(x_delay_r_0__0_), .CK(i_clk), .RN(n1104), 
        .Q(x_delay_r_1__0_) );
  DFFRX1 x_delay_r_reg_0__1_ ( .D(x_r[1]), .CK(i_clk), .RN(n1104), .Q(
        x_delay_r_0__1_) );
  DFFRX1 pre_state_reg_2__0_ ( .D(pre_state[4]), .CK(i_clk), .RN(n1103), .Q(
        pre_state[8]) );
  DFFRX1 pre_state_reg_1__0_ ( .D(pre_state[0]), .CK(i_clk), .RN(n1102), .Q(
        pre_state[4]) );
  DFFRX4 input_data_ready_r_reg_3_ ( .D(N710), .CK(i_clk), .RN(i_rst_n), .Q(
        input_data_ready_r[3]) );
  DFFRHQX4 op_mode_r_reg_1_ ( .D(n412), .CK(i_clk), .RN(i_rst_n), .Q(n859) );
  DFFRX4 input_data_ready_r_reg_31_ ( .D(N738), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[31]) );
  DFFRX4 input_data_ready_r_reg_24_ ( .D(N731), .CK(i_clk), .RN(n1102), .Q(
        input_data_ready_r[24]), .QN(n823) );
  DFFRX2 z_r_reg_4_ ( .D(n1353), .CK(i_clk), .RN(n1104), .Q(z_r[4]) );
  DFFRX2 cnt_reg_7_ ( .D(n446), .CK(i_clk), .RN(n1103), .Q(cnt[7]), .QN(n425)
         );
  DFFRX1 display_done_r_reg ( .D(n1390), .CK(i_clk), .RN(n1103), .Q(n803), 
        .QN(n365) );
  DFFRX1 sram_data_out_r_reg_3__1_ ( .D(sram_data_out_w[25]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[17]), .QN(n799) );
  DFFRX1 sram_data_out_r_reg_3__0_ ( .D(sram_data_out_w[24]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[16]), .QN(n798) );
  DFFRX1 sram_data_out_r_reg_3__7_ ( .D(sram_data_out_w[31]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[23]), .QN(n797) );
  DFFRX1 sram_data_out_r_reg_3__3_ ( .D(sram_data_out_w[27]), .CK(i_clk), .RN(
        n1104), .Q(sram_data_out_r[19]), .QN(n795) );
  DFFRX2 sram_data_out_r_reg_0__4_ ( .D(sram_data_out_w[4]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[3]), .QN(n764) );
  DFFRX2 input_data_ready_r_reg_19_ ( .D(N726), .CK(i_clk), .RN(n1102), .QN(
        n767) );
  DFFRX1 sram_addr_ready_r_reg_2__7_ ( .D(n1370), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[25]), .QN(n396) );
  DFFRX1 med_isFirst_signal_r_reg ( .D(N810), .CK(i_clk), .RN(n1102), .Q(
        med_isFirst_signal_r) );
  DFFRX1 sram_addr_ready_r_reg_0__2_ ( .D(n1358), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[2]), .QN(n373) );
  DFFRX1 sram_addr_ready_r_reg_1__5_ ( .D(net35872), .CK(i_clk), .RN(n1104), 
        .Q(sram_addr_w[14]), .QN(n385) );
  DFFRX1 sram_data_out_r_reg_1__0_ ( .D(sram_data_out_w[8]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[4]), .QN(n779) );
  DFFRX2 cnt_reg_10_ ( .D(n443), .CK(i_clk), .RN(n1103), .Q(cnt[10]), .QN(n421) );
  DFFRX1 sram_data_out_r_reg_0__2_ ( .D(sram_data_out_w[2]), .CK(i_clk), .RN(
        n1103), .Q(sram_data_out_r[2]), .QN(n846) );
  DFFRX1 sram_data_out_r_reg_0__0_ ( .D(sram_data_out_w[0]), .CK(i_clk), .RN(
        n1103), .Q(sram_data_out_r[0]), .QN(n842) );
  DFFRX1 sram_addr_ready_r_reg_2__8_ ( .D(n1371), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[26]) );
  DFFRX1 sram_addr_ready_r_reg_2__0_ ( .D(n1364), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[18]), .QN(n389) );
  DFFRHQX4 y_origin_r_reg_1_ ( .D(n460), .CK(i_clk), .RN(n1102), .Q(n8100) );
  DFFRX1 sram_data_out_r_reg_1__1_ ( .D(sram_data_out_w[9]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[5]), .QN(n1399) );
  DFFRX1 sram_data_out_r_reg_1__6_ ( .D(sram_data_out_w[14]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[8]), .QN(n802) );
  DFFRX2 sram_data_out_r_reg_1__3_ ( .D(sram_data_out_w[11]), .CK(i_clk), .RN(
        n1105), .Q(sram_data_out_r[7]), .QN(n780) );
  DFFRX4 input_data_ready_r_reg_25_ ( .D(N732), .CK(i_clk), .RN(n1102), .QN(
        n829) );
  DFFRX2 map_load_done_r_reg ( .D(N886), .CK(i_clk), .RN(n1103), .QN(n796) );
  DFFRX2 y_r_reg_0_ ( .D(N805), .CK(i_clk), .RN(n1104), .Q(y_r[0]) );
  DFFSHQX8 curr_state_reg_3_ ( .D(n807), .CK(i_clk), .SN(n1105), .Q(n7350) );
  DFFRX2 sram_addr_ready_r_reg_0__8_ ( .D(n1363), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[8]), .QN(n379) );
  DFFRX2 sram_addr_ready_r_reg_0__1_ ( .D(n1357), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[1]), .QN(n372) );
  DFFRX2 sram_addr_ready_r_reg_0__4_ ( .D(n1360), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[4]), .QN(n375) );
  DFFRX2 sram_addr_ready_r_reg_0__7_ ( .D(n1362), .CK(i_clk), .RN(n1104), .Q(
        sram_addr_w[7]), .QN(n378) );
  DFFRX1 x_plus_two_r_reg_1_ ( .D(n850), .CK(i_clk), .RN(n1103), .Q(
        x_plus_two_r[1]), .QN(n1338) );
  DFFRX2 sram_addr_ready_r_reg_1__0_ ( .D(sram_addr_wait_r_1__0_), .CK(i_clk), 
        .RN(n1105), .Q(sram_addr_w[9]), .QN(n380) );
  DFFRX2 sram_addr_ready_r_reg_3__0_ ( .D(n1372), .CK(i_clk), .RN(n1103), .Q(
        sram_addr_w[27]), .QN(n398) );
  DFFRX2 x_delay_r_reg_2__0_ ( .D(x_delay_r_1__0_), .CK(i_clk), .RN(n1105), 
        .QN(n800) );
  BUFX12 U792 ( .A(n1166), .Y(n882) );
  BUFX6 U793 ( .A(net42492), .Y(net43488) );
  AND3X1 U794 ( .A(n817), .B(n955), .C(n1136), .Y(n816) );
  AND2X4 U795 ( .A(input_data_wait_r[15]), .B(n1118), .Y(n893) );
  CLKAND2X3 U796 ( .A(input_data_wait_r[14]), .B(n749), .Y(n926) );
  AO22X2 U797 ( .A0(n921), .A1(n765), .B0(n921), .B1(n787), .Y(n1032) );
  AND3X2 U798 ( .A(net53697), .B(net54593), .C(net42808), .Y(n1169) );
  INVX12 U799 ( .A(net54592), .Y(net54593) );
  AO22X2 U800 ( .A0(n913), .A1(n918), .B0(input_data_wait_r[13]), .B1(n1094), 
        .Y(n1043) );
  OA22X2 U801 ( .A0(n430), .A1(n1321), .B0(n380), .B1(n1110), .Y(n1322) );
  OA22X4 U802 ( .A0(n385), .A1(n1110), .B0(n425), .B1(n1321), .Y(net42534) );
  CLKAND2X3 U803 ( .A(input_data_wait_r[18]), .B(n1127), .Y(n906) );
  AND2X4 U804 ( .A(n1088), .B(d_valid_w), .Y(n953) );
  AND2X8 U805 ( .A(n756), .B(r_valid_w), .Y(n949) );
  NAND2X2 U806 ( .A(n1006), .B(n1005), .Y(N731) );
  NAND2X2 U807 ( .A(n1016), .B(n1015), .Y(N736) );
  NAND2X2 U808 ( .A(n1012), .B(n1011), .Y(N734) );
  NAND2X2 U809 ( .A(n1020), .B(n1019), .Y(N738) );
  NAND2X2 U810 ( .A(n1002), .B(n1001), .Y(N714) );
  NAND2X2 U811 ( .A(n998), .B(n997), .Y(N712) );
  NAND2X2 U812 ( .A(n996), .B(n995), .Y(N711) );
  NAND2X2 U813 ( .A(n990), .B(n989), .Y(N708) );
  NAND2X2 U814 ( .A(n988), .B(n987), .Y(N707) );
  NAND2X2 U815 ( .A(n994), .B(n993), .Y(N710) );
  NOR2X2 U816 ( .A(n986), .B(n800), .Y(n981) );
  NAND2X2 U817 ( .A(n1000), .B(n999), .Y(N713) );
  OA22X1 U818 ( .A0(n764), .A1(n1121), .B0(n1401), .B1(n1126), .Y(n1198) );
  BUFX16 U819 ( .A(net42490), .Y(net54721) );
  NAND4BBX1 U820 ( .AN(net54592), .BN(n7350), .C(net42808), .D(net42795), .Y(
        n1153) );
  AND3X4 U821 ( .A(n796), .B(net42808), .C(net54592), .Y(n739) );
  NAND2X2 U822 ( .A(n1310), .B(net43503), .Y(n1320) );
  NAND2X4 U823 ( .A(n1119), .B(net43503), .Y(n781) );
  INVX20 U824 ( .A(n420), .Y(net42808) );
  INVX6 U825 ( .A(n1266), .Y(n1272) );
  INVX1 U826 ( .A(n755), .Y(n7340) );
  BUFX16 U827 ( .A(l_valid_w), .Y(n755) );
  INVX16 U828 ( .A(n849), .Y(n850) );
  OA22X2 U829 ( .A0(n854), .A1(n1121), .B0(n841), .B1(n1126), .Y(n1195) );
  OA22X2 U830 ( .A0(n428), .A1(net43488), .B0(n373), .B1(net43486), .Y(n1335)
         );
  BUFX12 U831 ( .A(net42493), .Y(net43486) );
  INVX12 U832 ( .A(n7350), .Y(n7360) );
  BUFX8 U833 ( .A(n892), .Y(n7370) );
  BUFX20 U834 ( .A(n892), .Y(n7380) );
  OAI221X2 U835 ( .A0(n947), .A1(n1307), .B0(n1306), .B1(net54720), .C0(n741), 
        .Y(n1364) );
  CLKAND2X12 U836 ( .A(net50503), .B(n739), .Y(n1170) );
  AND2X4 U837 ( .A(net53697), .B(n7360), .Y(net50503) );
  AND2X2 U838 ( .A(n1239), .B(n1241), .Y(n740) );
  AND3X2 U839 ( .A(n1238), .B(n1240), .C(n740), .Y(n888) );
  AND2X4 U840 ( .A(input_data_wait_r[9]), .B(n1118), .Y(n916) );
  INVX12 U841 ( .A(n432), .Y(n1309) );
  CLKAND2X4 U842 ( .A(n884), .B(n1266), .Y(n891) );
  AND2X2 U843 ( .A(n884), .B(n1266), .Y(n890) );
  BUFX20 U844 ( .A(n1254), .Y(n884) );
  CLKAND2X2 U845 ( .A(n859), .B(net56037), .Y(n857) );
  AND3X6 U846 ( .A(net42789), .B(net56037), .C(n859), .Y(n1146) );
  AND3X8 U847 ( .A(net43481), .B(net42789), .C(net56037), .Y(n1172) );
  AND3X4 U848 ( .A(net42789), .B(net42795), .C(net56037), .Y(n793) );
  CLKAND2X2 U849 ( .A(net56037), .B(n859), .Y(n855) );
  CLKAND2X4 U850 ( .A(input_data_wait_r[18]), .B(n1118), .Y(n896) );
  AND4X4 U851 ( .A(n8100), .B(n1284), .C(y_origin_r[0]), .D(cnt[1]), .Y(n1264)
         );
  NAND2X1 U852 ( .A(y_origin_r[2]), .B(n1266), .Y(n1263) );
  NAND2X8 U853 ( .A(n1127), .B(net43503), .Y(net42493) );
  CLKBUFX20 U854 ( .A(net42520), .Y(net43503) );
  OA22X2 U855 ( .A0(n844), .A1(n1121), .B0(n1399), .B1(n1126), .Y(n1201) );
  AO22X4 U856 ( .A0(n1275), .A1(n1274), .B0(n1273), .B1(n822), .Y(n1393) );
  BUFX8 U857 ( .A(n1345), .Y(n741) );
  NAND4X1 U858 ( .A(net43503), .B(n807), .C(net42564), .D(x_r[2]), .Y(n1345)
         );
  NAND2X2 U859 ( .A(n1010), .B(n1009), .Y(N733) );
  AND2X2 U860 ( .A(n822), .B(n1309), .Y(n1242) );
  INVX6 U861 ( .A(n1343), .Y(n822) );
  INVX20 U862 ( .A(n884), .Y(n1284) );
  INVX12 U863 ( .A(n742), .Y(o_in_ready) );
  CLKAND2X12 U864 ( .A(n1087), .B(n952), .Y(n944) );
  AND2X8 U865 ( .A(r_valid_w), .B(n7340), .Y(n952) );
  CLKINVX8 U866 ( .A(n1309), .Y(n1294) );
  AND2XL U867 ( .A(n959), .B(n1309), .Y(n806) );
  BUFX8 U868 ( .A(n1151), .Y(n742) );
  BUFX20 U869 ( .A(x_origin_r_2_), .Y(n743) );
  OR2X8 U870 ( .A(n7350), .B(net53697), .Y(n1167) );
  INVX6 U871 ( .A(n829), .Y(n830) );
  BUFX20 U872 ( .A(input_data_ready_r[20]), .Y(n744) );
  BUFX20 U873 ( .A(input_data_ready_r[21]), .Y(n745) );
  AO22X4 U874 ( .A0(n907), .A1(n765), .B0(n907), .B1(n787), .Y(n1068) );
  AND2X4 U875 ( .A(input_data_wait_r[19]), .B(n749), .Y(n907) );
  OA22X2 U876 ( .A0(n1397), .A1(n1121), .B0(n848), .B1(n1126), .Y(n1197) );
  OAI221X4 U877 ( .A0(n1397), .A1(n1113), .B0(n792), .B1(n880), .C0(n1189), 
        .Y(input_data_wait_r[29]) );
  CLKINVX3 U878 ( .A(n827), .Y(n1397) );
  INVX8 U879 ( .A(input_data_ready_r[16]), .Y(n7460) );
  CLKINVX12 U880 ( .A(n7460), .Y(n747) );
  OAI221X2 U881 ( .A0(n1324), .A1(n1323), .B0(n1322), .B1(net54720), .C0(n741), 
        .Y(sram_addr_wait_r_1__0_) );
  NAND2X2 U882 ( .A(n1344), .B(n1343), .Y(n1323) );
  CLKXOR2X2 U883 ( .A(n1260), .B(n8100), .Y(n1259) );
  OAI21X2 U884 ( .A0(n1335), .A1(net54721), .B0(n1334), .Y(n1358) );
  OAI211X4 U885 ( .A0(n1168), .A1(n1167), .B0(n1150), .C0(n1158), .Y(n1156) );
  CLKAND2X2 U886 ( .A(input_data_wait_r[4]), .B(n1119), .Y(n931) );
  OAI221X1 U887 ( .A0(n947), .A1(n1292), .B0(n1291), .B1(net54720), .C0(n741), 
        .Y(n1372) );
  OA22X4 U888 ( .A0(n430), .A1(n1108), .B0(n398), .B1(n759), .Y(n1291) );
  AO22X4 U889 ( .A0(n907), .A1(n885), .B0(n897), .B1(n7370), .Y(n1070) );
  BUFX16 U890 ( .A(n1290), .Y(n1108) );
  INVX4 U891 ( .A(n823), .Y(n824) );
  OAI21X1 U892 ( .A0(n1296), .A1(net54720), .B0(n1325), .Y(n1371) );
  NAND2X4 U893 ( .A(z_r[4]), .B(net42583), .Y(n1325) );
  BUFX20 U894 ( .A(n781), .Y(n759) );
  NAND2X4 U895 ( .A(net53696), .B(net42810), .Y(net42814) );
  NAND2X4 U896 ( .A(n1008), .B(n1007), .Y(N732) );
  AOI222X4 U897 ( .A0(n7760), .A1(n930), .B0(n7760), .B1(n923), .C0(n927), 
        .C1(n928), .Y(n1007) );
  INVX8 U898 ( .A(n1128), .Y(n748) );
  INVX12 U899 ( .A(n1128), .Y(n749) );
  CLKINVX8 U900 ( .A(n1127), .Y(n750) );
  CLKINVX4 U901 ( .A(n748), .Y(n751) );
  INVX8 U902 ( .A(n1128), .Y(n1127) );
  AND2X4 U903 ( .A(n1294), .B(n1308), .Y(n950) );
  BUFX20 U904 ( .A(n950), .Y(n1128) );
  OR2X2 U905 ( .A(n1021), .B(u_valid_w), .Y(n869) );
  CLKAND2X2 U906 ( .A(u_valid_w), .B(n1021), .Y(n1003) );
  NAND2BX4 U907 ( .AN(u_valid_w), .B(n1021), .Y(n1089) );
  NAND3X8 U908 ( .A(n442), .B(n1269), .C(n440), .Y(u_valid_w) );
  OAI21X1 U909 ( .A0(net42534), .A1(net54720), .B0(n867), .Y(net35872) );
  BUFX20 U910 ( .A(net42490), .Y(net54720) );
  OA22X4 U911 ( .A0(n389), .A1(n1109), .B0(n430), .B1(n1304), .Y(n1306) );
  AOI2BB2X4 U912 ( .B0(sram_addr_w[26]), .B1(n868), .A0N(n421), .A1N(n1304), 
        .Y(n1296) );
  OA22X4 U913 ( .A0(n396), .A1(n1109), .B0(n422), .B1(n1304), .Y(n1297) );
  CLKINVX8 U914 ( .A(n1100), .Y(n7520) );
  INVX16 U915 ( .A(n7520), .Y(n753) );
  OAI221X4 U916 ( .A0(n768), .A1(n1114), .B0(n780), .B1(n881), .C0(n1207), .Y(
        input_data_wait_r[11]) );
  OA22X2 U917 ( .A0(n1396), .A1(n1121), .B0(n780), .B1(n1126), .Y(n1199) );
  OA22X1 U918 ( .A0(n780), .A1(n1121), .B0(n768), .B1(n1126), .Y(n1191) );
  OAI21X2 U919 ( .A0(n1297), .A1(net54721), .B0(n8860), .Y(n1370) );
  NAND2X4 U920 ( .A(z_r[1]), .B(net42583), .Y(n867) );
  OAI21X2 U921 ( .A0(n1327), .A1(net54720), .B0(n8860), .Y(n1362) );
  OAI21X2 U922 ( .A0(n1331), .A1(net54721), .B0(n1101), .Y(n1360) );
  OAI21X2 U923 ( .A0(n1337), .A1(net54720), .B0(n1336), .Y(n1357) );
  OAI21X2 U924 ( .A0(n1326), .A1(net54721), .B0(n1325), .Y(n1363) );
  INVX8 U925 ( .A(n767), .Y(n1099) );
  NOR2X4 U926 ( .A(net42814), .B(net54593), .Y(net50998) );
  NAND4X4 U927 ( .A(n7360), .B(net42808), .C(n1147), .D(n1146), .Y(n1159) );
  CLKINVX8 U928 ( .A(net43481), .Y(net42825) );
  NAND4X2 U929 ( .A(net53697), .B(n7360), .C(net42808), .D(net54592), .Y(n1151) );
  INVX6 U930 ( .A(n1095), .Y(n1096) );
  INVX1 U931 ( .A(n442), .Y(n1279) );
  CLKBUFX8 U932 ( .A(n1246), .Y(n881) );
  BUFX12 U933 ( .A(n1305), .Y(n1109) );
  NAND2X4 U934 ( .A(net42795), .B(net56037), .Y(n1229) );
  INVX4 U935 ( .A(n1229), .Y(n1233) );
  NAND2X1 U936 ( .A(n858), .B(n1229), .Y(n1222) );
  INVX4 U937 ( .A(n1090), .Y(n1087) );
  INVX3 U938 ( .A(n847), .Y(n848) );
  INVX3 U939 ( .A(n869), .Y(n1004) );
  NAND2X1 U940 ( .A(net42648), .B(n1162), .Y(net42821) );
  AND2X6 U941 ( .A(n857), .B(net42789), .Y(n856) );
  NAND2X2 U942 ( .A(net50998), .B(n363), .Y(n862) );
  INVX3 U943 ( .A(net42841), .Y(net42648) );
  BUFX16 U944 ( .A(op_mode_r_3_), .Y(net43481) );
  AND2X2 U945 ( .A(n1003), .B(n948), .Y(n889) );
  AO22X1 U946 ( .A0(n920), .A1(n885), .B0(n916), .B1(n7380), .Y(n1030) );
  AND2X2 U947 ( .A(input_data_wait_r[12]), .B(n749), .Y(n924) );
  AND2X4 U948 ( .A(input_data_wait_r[20]), .B(n1119), .Y(n898) );
  AND2X2 U949 ( .A(input_data_wait_r[21]), .B(n1119), .Y(n899) );
  AND2X8 U950 ( .A(n949), .B(n953), .Y(n885) );
  AND2X2 U951 ( .A(input_data_wait_r[23]), .B(n1119), .Y(n901) );
  BUFX16 U952 ( .A(n1026), .Y(n1094) );
  OA22X2 U953 ( .A0(n1400), .A1(n1122), .B0(n1403), .B1(n820), .Y(n1192) );
  NAND2X1 U954 ( .A(n887), .B(n1235), .Y(n1236) );
  INVX12 U955 ( .A(n870), .Y(n871) );
  CLKAND2X6 U956 ( .A(n871), .B(n808), .Y(n962) );
  BUFX4 U957 ( .A(n959), .Y(n1124) );
  INVX3 U958 ( .A(n1125), .Y(n1122) );
  INVX6 U959 ( .A(n1124), .Y(n1123) );
  INVX4 U960 ( .A(n1097), .Y(n1098) );
  AND2X2 U961 ( .A(input_data_wait_r[3]), .B(n1119), .Y(n936) );
  AND2X4 U962 ( .A(input_data_wait_r[8]), .B(n1118), .Y(n915) );
  AND2X2 U963 ( .A(input_data_wait_r[17]), .B(n1118), .Y(n895) );
  INVX3 U964 ( .A(n1109), .Y(n868) );
  AND2X2 U965 ( .A(input_data_wait_r[13]), .B(n1118), .Y(n913) );
  AO22X2 U966 ( .A0(n925), .A1(n765), .B0(n925), .B1(n787), .Y(n1044) );
  NAND2X2 U967 ( .A(y_r[0]), .B(net42583), .Y(n1336) );
  CLKINVX1 U968 ( .A(n1159), .Y(n1157) );
  CLKINVX1 U969 ( .A(n1173), .Y(n1155) );
  AND2X2 U970 ( .A(input_data_wait_r[6]), .B(n1119), .Y(n938) );
  AND2X2 U971 ( .A(input_data_wait_r[16]), .B(n1118), .Y(n894) );
  INVX4 U972 ( .A(net56035), .Y(n858) );
  BUFX16 U973 ( .A(i_rst_n), .Y(n1129) );
  OAI32X1 U974 ( .A0(n421), .A1(n1284), .A2(n1278), .B0(n426), .B1(n890), .Y(
        n1353) );
  OA22X1 U975 ( .A0(n429), .A1(net43488), .B0(n372), .B1(net43486), .Y(n1337)
         );
  OAI32X1 U976 ( .A0(n422), .A1(n1284), .A2(n1278), .B0(n427), .B1(n890), .Y(
        n1352) );
  OA22X2 U977 ( .A0(n430), .A1(net43488), .B0(n371), .B1(net43486), .Y(n1346)
         );
  OA22X1 U978 ( .A0(n426), .A1(net43488), .B0(n375), .B1(net43486), .Y(n1331)
         );
  OAI222X1 U979 ( .A0(n1121), .A1(net42679), .B0(n1183), .B1(n1184), .C0(n1182), .C1(n850), .Y(n457) );
  XOR2X1 U980 ( .A(n1262), .B(n1261), .Y(n1267) );
  OA22X1 U981 ( .A0(n421), .A1(net43488), .B0(n379), .B1(net43486), .Y(n1326)
         );
  OA22X2 U982 ( .A0(n392), .A1(n1109), .B0(n427), .B1(n1304), .Y(n1299) );
  OA22X2 U983 ( .A0(n423), .A1(net43488), .B0(n377), .B1(net43486), .Y(n1329)
         );
  OA22X1 U984 ( .A0(n422), .A1(net43488), .B0(n378), .B1(net43486), .Y(n1327)
         );
  OA22X2 U985 ( .A0(n394), .A1(n1109), .B0(n425), .B1(n1304), .Y(net42554) );
  OR4X2 U986 ( .A(n1035), .B(n1036), .C(n1037), .D(n1038), .Y(N718) );
  AO22X1 U987 ( .A0(n929), .A1(n765), .B0(n929), .B1(n787), .Y(n1036) );
  BUFX12 U988 ( .A(n416), .Y(net43505) );
  NAND3X2 U989 ( .A(net42680), .B(net43481), .C(n856), .Y(net42834) );
  OAI2BB1X1 U990 ( .A0N(N330), .A1N(n1394), .B0(n12300), .Y(out_data_wait_r[7]) );
  OAI21XL U991 ( .A0(conv_result_w[7]), .A1(med_result_w[7]), .B0(n1111), .Y(
        n12300) );
  OAI2BB1X1 U992 ( .A0N(N331), .A1N(n1394), .B0(n124), .Y(out_data_wait_r[6])
         );
  OAI21XL U993 ( .A0(conv_result_w[6]), .A1(med_result_w[6]), .B0(n1111), .Y(
        n124) );
  OAI2BB1X1 U994 ( .A0N(N332), .A1N(n1394), .B0(n125), .Y(out_data_wait_r[5])
         );
  OAI21XL U995 ( .A0(conv_result_w[5]), .A1(med_result_w[5]), .B0(n1111), .Y(
        n125) );
  OAI2BB1X1 U996 ( .A0N(N333), .A1N(n1394), .B0(n126), .Y(out_data_wait_r[4])
         );
  OAI21XL U997 ( .A0(conv_result_w[4]), .A1(med_result_w[4]), .B0(n1111), .Y(
        n126) );
  OAI2BB1X1 U998 ( .A0N(N334), .A1N(n1394), .B0(n127), .Y(out_data_wait_r[3])
         );
  OAI21XL U999 ( .A0(conv_result_w[3]), .A1(med_result_w[3]), .B0(n1111), .Y(
        n127) );
  OAI2BB1X1 U1000 ( .A0N(N335), .A1N(n1394), .B0(n128), .Y(out_data_wait_r[2])
         );
  OAI21XL U1001 ( .A0(conv_result_w[2]), .A1(med_result_w[2]), .B0(n1111), .Y(
        n128) );
  OAI2BB1X1 U1002 ( .A0N(N336), .A1N(n1394), .B0(n129), .Y(out_data_wait_r[1])
         );
  OAI2BB1X1 U1003 ( .A0N(N337), .A1N(n1394), .B0(n130), .Y(out_data_wait_r[0])
         );
  CLKMX2X2 U1004 ( .A(n1162), .B(n1145), .S0(net42648), .Y(n410) );
  AND2X2 U1005 ( .A(n888), .B(net42648), .Y(N809) );
  OA22X2 U1006 ( .A0(n425), .A1(n1108), .B0(n403), .B1(n759), .Y(net42618) );
  OA22X2 U1007 ( .A0(n391), .A1(n1109), .B0(n428), .B1(n1304), .Y(n1300) );
  AND2X4 U1008 ( .A(n836), .B(n837), .Y(n1314) );
  OA22X2 U1009 ( .A0(n427), .A1(net43488), .B0(n374), .B1(net43486), .Y(n1333)
         );
  OAI221XL U1010 ( .A0(n12301), .A1(n1229), .B0(n440), .B1(n887), .C0(
        d_valid_w), .Y(n1232) );
  OAI21XL U1011 ( .A0(n1187), .A1(n820), .B0(n743), .Y(n1180) );
  NAND2X2 U1012 ( .A(n992), .B(n991), .Y(N709) );
  AO22X1 U1013 ( .A0(n920), .A1(n765), .B0(n920), .B1(n787), .Y(n1028) );
  AND2X2 U1014 ( .A(n914), .B(n944), .Y(n1041) );
  OR4X2 U1015 ( .A(n1047), .B(n1048), .C(n1049), .D(n1050), .Y(N721) );
  AO22X2 U1016 ( .A0(n926), .A1(n885), .B0(n912), .B1(n7380), .Y(n1050) );
  OR4X1 U1017 ( .A(n1067), .B(n1068), .C(n1069), .D(n1070), .Y(N726) );
  OR4X2 U1018 ( .A(n1071), .B(n1072), .C(n1073), .D(n1074), .Y(N727) );
  AO22X2 U1019 ( .A0(n908), .A1(n765), .B0(n908), .B1(n787), .Y(n1072) );
  OR4X2 U1020 ( .A(n1075), .B(n1076), .C(n1077), .D(n1078), .Y(N728) );
  OR4X2 U1021 ( .A(n1079), .B(n1080), .C(n1081), .D(n1082), .Y(N729) );
  OR4X2 U1022 ( .A(n1083), .B(n1084), .C(n1085), .D(n1086), .Y(N730) );
  AOI222X1 U1023 ( .A0(n940), .A1(n930), .B0(n940), .B1(n923), .C0(n7770), 
        .C1(n928), .Y(n1009) );
  AOI222X1 U1024 ( .A0(n941), .A1(n930), .B0(n941), .B1(n923), .C0(n784), .C1(
        n928), .Y(n1011) );
  AND2X2 U1025 ( .A(input_data_wait_r[27]), .B(n1119), .Y(n941) );
  AOI222X1 U1026 ( .A0(n945), .A1(n930), .B0(n945), .B1(n923), .C0(n789), .C1(
        n928), .Y(n1017) );
  CLKBUFX3 U1027 ( .A(l_valid_w), .Y(n754) );
  BUFX4 U1028 ( .A(l_valid_w), .Y(n756) );
  OA22X1 U1029 ( .A0(n1402), .A1(n874), .B0(n798), .B1(n1126), .Y(n1218) );
  CLKINVX8 U1030 ( .A(input_data_ready_r[13]), .Y(n757) );
  INVX12 U1031 ( .A(n757), .Y(n758) );
  OA22X2 U1032 ( .A0(n381), .A1(n1110), .B0(n429), .B1(n1321), .Y(n1317) );
  AO22X2 U1033 ( .A0(n924), .A1(n765), .B0(n924), .B1(n787), .Y(n1040) );
  NOR3X2 U1034 ( .A(net54592), .B(net55798), .C(net53696), .Y(n782) );
  NOR2X2 U1035 ( .A(n431), .B(n432), .Y(n760) );
  AND2X6 U1036 ( .A(n948), .B(n953), .Y(n765) );
  AND2X2 U1037 ( .A(input_data_wait_r[3]), .B(n1127), .Y(n769) );
  NAND2X1 U1038 ( .A(n881), .B(n1113), .Y(N123) );
  AND2X2 U1039 ( .A(input_data_wait_r[4]), .B(n1127), .Y(n770) );
  AND2X1 U1040 ( .A(input_data_wait_r[2]), .B(n748), .Y(n771) );
  AND2X2 U1041 ( .A(input_data_wait_r[5]), .B(n1119), .Y(n932) );
  AND2X2 U1042 ( .A(input_data_wait_r[1]), .B(n748), .Y(n772) );
  INVX4 U1043 ( .A(n760), .Y(n1119) );
  AND2X2 U1044 ( .A(input_data_wait_r[29]), .B(n748), .Y(n7750) );
  AND2X2 U1045 ( .A(input_data_wait_r[25]), .B(n1119), .Y(n7760) );
  AND2X2 U1046 ( .A(input_data_wait_r[26]), .B(n748), .Y(n7770) );
  AND2X2 U1047 ( .A(input_data_wait_r[28]), .B(n748), .Y(n778) );
  INVX12 U1048 ( .A(n959), .Y(n1121) );
  AND2X2 U1049 ( .A(input_data_wait_r[0]), .B(n749), .Y(n783) );
  AND2X2 U1050 ( .A(input_data_wait_r[27]), .B(n1127), .Y(n784) );
  AND2X4 U1051 ( .A(input_data_wait_r[19]), .B(n1118), .Y(n897) );
  AND2X2 U1052 ( .A(input_data_wait_r[6]), .B(n1127), .Y(n785) );
  AND2X2 U1053 ( .A(input_data_wait_r[5]), .B(n749), .Y(n786) );
  INVX3 U1054 ( .A(curr_state_1_), .Y(net55798) );
  AND2X8 U1055 ( .A(n952), .B(n953), .Y(n787) );
  AND2X2 U1056 ( .A(input_data_wait_r[24]), .B(n749), .Y(n788) );
  AND2X2 U1057 ( .A(input_data_wait_r[30]), .B(n748), .Y(n789) );
  AOI22X1 U1058 ( .A0(sram_data_out_r[8]), .A1(n1125), .B0(sram_data_out_r[14]), .B1(n960), .Y(n790) );
  AND2X2 U1059 ( .A(input_data_wait_r[7]), .B(n748), .Y(n791) );
  AND2X2 U1060 ( .A(input_data_wait_r[1]), .B(n1119), .Y(n934) );
  AND2X2 U1061 ( .A(input_data_wait_r[31]), .B(n1119), .Y(n794) );
  INVX6 U1062 ( .A(d_valid_w), .Y(n1021) );
  AND2X4 U1063 ( .A(n1107), .B(net54593), .Y(o_op_ready) );
  CLKINVX4 U1064 ( .A(n1106), .Y(n1107) );
  AND2XL U1065 ( .A(n1228), .B(u_valid_w), .Y(n957) );
  AO22X4 U1066 ( .A0(n919), .A1(n885), .B0(n915), .B1(n7380), .Y(n1025) );
  AND2X8 U1067 ( .A(n949), .B(n1087), .Y(n892) );
  NAND2X2 U1068 ( .A(net54593), .B(net42808), .Y(n1168) );
  NAND4X2 U1069 ( .A(net55798), .B(net54593), .C(net53697), .D(net42810), .Y(
        n1149) );
  INVX16 U1070 ( .A(n7360), .Y(net42810) );
  OR2X8 U1071 ( .A(n1156), .B(n877), .Y(n807) );
  AO22X2 U1072 ( .A0(n911), .A1(n765), .B0(n911), .B1(n787), .Y(n1084) );
  OAI221X4 U1073 ( .A0(n841), .A1(n1112), .B0(n854), .B1(n880), .C0(n1211), 
        .Y(input_data_wait_r[7]) );
  NAND2X2 U1074 ( .A(net42789), .B(net42795), .Y(n1220) );
  NOR2BX2 U1075 ( .AN(n1179), .B(n1178), .Y(n872) );
  NAND4X2 U1076 ( .A(net53697), .B(n803), .C(net42808), .D(net42810), .Y(n864)
         );
  OAI211X2 U1077 ( .A0(n1343), .A1(n1282), .B0(n1281), .C0(n1280), .Y(N805) );
  INVX12 U1078 ( .A(n826), .Y(n1343) );
  AND3X4 U1079 ( .A(net53697), .B(net54593), .C(net43481), .Y(n1147) );
  NAND2X4 U1080 ( .A(curr_state_1_), .B(net54592), .Y(n1166) );
  BUFX6 U1081 ( .A(n849), .Y(n808) );
  AND2X2 U1082 ( .A(input_data_wait_r[31]), .B(n749), .Y(n946) );
  AND2X4 U1083 ( .A(input_data_wait_r[20]), .B(n749), .Y(n908) );
  AND2X2 U1084 ( .A(input_data_wait_r[23]), .B(n1127), .Y(n911) );
  OR4X2 U1085 ( .A(n1043), .B(n1044), .C(n1045), .D(n1046), .Y(N720) );
  AND2X2 U1086 ( .A(input_data_wait_r[13]), .B(n748), .Y(n925) );
  OR2X2 U1087 ( .A(n423), .B(n1321), .Y(n835) );
  OAI221X2 U1088 ( .A0(n844), .A1(n1112), .B0(n799), .B1(n880), .C0(n1193), 
        .Y(n8090) );
  AND2X4 U1089 ( .A(input_data_wait_r[8]), .B(n1127), .Y(n919) );
  OAI221X4 U1090 ( .A0(n1402), .A1(n1114), .B0(n779), .B1(n880), .C0(n1210), 
        .Y(input_data_wait_r[8]) );
  INVX4 U1091 ( .A(n8100), .Y(n1269) );
  AND2X4 U1092 ( .A(n1004), .B(n949), .Y(n875) );
  NAND2X2 U1093 ( .A(y_r[1]), .B(net42583), .Y(n1334) );
  OA22X2 U1094 ( .A0(n815), .A1(n873), .B0(n846), .B1(n1126), .Y(n1208) );
  OAI21X1 U1095 ( .A0(n1315), .A1(net54720), .B0(n1332), .Y(n1382) );
  OA22X2 U1096 ( .A0(n383), .A1(n1110), .B0(n427), .B1(n1321), .Y(n1315) );
  AO22X1 U1097 ( .A0(N475), .A1(n843), .B0(n1177), .B1(cnt[9]), .Y(n444) );
  BUFX12 U1098 ( .A(n956), .Y(n843) );
  AOI222X1 U1099 ( .A0(n933), .A1(n930), .B0(n933), .B1(n889), .C0(n783), .C1(
        n902), .Y(n987) );
  AOI222X1 U1100 ( .A0(n932), .A1(n930), .B0(n932), .B1(n889), .C0(n786), .C1(
        n902), .Y(n997) );
  AOI222X1 U1101 ( .A0(n931), .A1(n930), .B0(n931), .B1(n889), .C0(n770), .C1(
        n902), .Y(n995) );
  AOI222X1 U1102 ( .A0(n935), .A1(n930), .B0(n935), .B1(n889), .C0(n771), .C1(
        n902), .Y(n991) );
  AOI222X1 U1103 ( .A0(n934), .A1(n930), .B0(n934), .B1(n889), .C0(n772), .C1(
        n902), .Y(n989) );
  AOI222X1 U1104 ( .A0(n937), .A1(n930), .B0(n937), .B1(n889), .C0(n791), .C1(
        n902), .Y(n1001) );
  AND2X2 U1105 ( .A(input_data_wait_r[26]), .B(n1119), .Y(n940) );
  NAND2X2 U1106 ( .A(n751), .B(net43503), .Y(net42492) );
  OA22X1 U1107 ( .A0(n818), .A1(n873), .B0(n797), .B1(n1126), .Y(n1211) );
  INVX6 U1108 ( .A(n1125), .Y(n873) );
  OR2X2 U1109 ( .A(n426), .B(n1321), .Y(n837) );
  AND2X4 U1110 ( .A(n8340), .B(n835), .Y(n1313) );
  NAND2X2 U1111 ( .A(net42625), .B(net42564), .Y(net42490) );
  NAND2X2 U1112 ( .A(y_r[2]), .B(net42583), .Y(n1332) );
  AO22X2 U1113 ( .A0(n905), .A1(n885), .B0(n895), .B1(n7380), .Y(n1062) );
  NAND2X2 U1114 ( .A(z_r[2]), .B(net42583), .Y(n1328) );
  OAI2BB1X1 U1115 ( .A0N(n813), .A1N(n812), .B0(n1328), .Y(n1369) );
  CLKINVX20 U1116 ( .A(net54720), .Y(n812) );
  OAI22X1 U1117 ( .A0(n395), .A1(n1109), .B0(n423), .B1(n1304), .Y(n813) );
  AO22X2 U1118 ( .A0(N476), .A1(n843), .B0(n1177), .B1(cnt[10]), .Y(n443) );
  AO22X2 U1119 ( .A0(N473), .A1(n843), .B0(n1177), .B1(cnt[7]), .Y(n446) );
  INVX4 U1120 ( .A(n1131), .Y(n1177) );
  AOI2BB2X2 U1121 ( .B0(sram_addr_w[19]), .B1(n868), .A0N(n429), .A1N(n1304), 
        .Y(n1301) );
  AND2X2 U1122 ( .A(input_data_wait_r[7]), .B(n1119), .Y(n937) );
  BUFX4 U1123 ( .A(n951), .Y(n814) );
  OA22X4 U1124 ( .A0(n1284), .A1(n850), .B0(net42564), .B1(n850), .Y(n1245) );
  INVX16 U1125 ( .A(n858), .Y(net42789) );
  OA22X4 U1126 ( .A0(n422), .A1(n1108), .B0(n405), .B1(n759), .Y(n1253) );
  OA21X4 U1127 ( .A0(n7360), .A1(net53697), .B0(net42808), .Y(n865) );
  OAI32X2 U1128 ( .A0(n425), .A1(n1284), .A2(n1278), .B0(n429), .B1(n891), .Y(
        n1350) );
  OAI21X1 U1129 ( .A0(n1312), .A1(net54720), .B0(n8860), .Y(n1385) );
  OA22X2 U1130 ( .A0(n387), .A1(n1110), .B0(n422), .B1(n1321), .Y(n1312) );
  OR4X4 U1131 ( .A(n1042), .B(n1040), .C(n1041), .D(n1039), .Y(N719) );
  AND2X4 U1132 ( .A(input_data_wait_r[12]), .B(n1118), .Y(n914) );
  NAND2X2 U1133 ( .A(n1295), .B(net43503), .Y(n1305) );
  INVX8 U1134 ( .A(n8320), .Y(n8330) );
  OR4X2 U1135 ( .A(n1027), .B(n1028), .C(n1029), .D(n1030), .Y(N716) );
  AND3X6 U1136 ( .A(net42564), .B(net43503), .C(net42625), .Y(net43596) );
  AOI31X2 U1137 ( .A0(n366), .A1(n7360), .A2(n1163), .B0(o_in_ready), .Y(
        net42823) );
  OAI21X2 U1138 ( .A0(n1298), .A1(net54720), .B0(n1101), .Y(n1368) );
  OAI21X2 U1139 ( .A0(n1317), .A1(net54720), .B0(n1336), .Y(n1380) );
  NAND4X1 U1140 ( .A(net53697), .B(net43481), .C(n7360), .D(net42808), .Y(
        n1161) );
  BUFX20 U1141 ( .A(n1126), .Y(n820) );
  AO21XL U1142 ( .A0(i_op_valid), .A1(n1107), .B0(net43503), .Y(n1387) );
  AND2X1 U1143 ( .A(net43503), .B(net42564), .Y(n947) );
  CLKAND2X4 U1144 ( .A(n1004), .B(n948), .Y(n902) );
  OR4X2 U1145 ( .A(n1064), .B(n1063), .C(n1065), .D(n1066), .Y(N725) );
  AO22X2 U1146 ( .A0(n906), .A1(n765), .B0(n906), .B1(n787), .Y(n1064) );
  AOI2BB2X1 U1147 ( .B0(sram_data_out_r[17]), .B1(n1125), .A0N(n844), .A1N(
        n1126), .Y(n1209) );
  AND2X4 U1148 ( .A(n1003), .B(n952), .Y(n923) );
  OR2X4 U1149 ( .A(n821), .B(net43596), .Y(n8860) );
  OA22X1 U1150 ( .A0(n798), .A1(n1123), .B0(n842), .B1(n1126), .Y(n1210) );
  NAND3X2 U1151 ( .A(net42564), .B(n806), .C(n1284), .Y(n1285) );
  CLKMX2X2 U1152 ( .A(n1286), .B(n1285), .S0(n743), .Y(N777) );
  AOI32XL U1153 ( .A0(n960), .A1(net42656), .A2(n755), .B0(n872), .B1(N123), 
        .Y(n1183) );
  CLKINVX1 U1154 ( .A(n872), .Y(n1181) );
  NOR2X2 U1155 ( .A(net54593), .B(n1344), .Y(n825) );
  AND3X4 U1156 ( .A(net42564), .B(next_state_3_), .C(net43503), .Y(n826) );
  CLKINVX16 U1157 ( .A(net43505), .Y(net42564) );
  AND2X1 U1158 ( .A(n893), .B(n944), .Y(n1053) );
  AO22X2 U1159 ( .A0(n903), .A1(n885), .B0(n893), .B1(n7380), .Y(n1054) );
  OA22X2 U1160 ( .A0(n1398), .A1(n1123), .B0(n802), .B1(n1126), .Y(n1196) );
  AOI222X1 U1161 ( .A0(n936), .A1(n930), .B0(n936), .B1(n889), .C0(n769), .C1(
        n902), .Y(n993) );
  BUFX8 U1162 ( .A(n122), .Y(n1111) );
  OAI221X2 U1163 ( .A0(n798), .A1(n1114), .B0(n1402), .B1(n880), .C0(n1202), 
        .Y(input_data_wait_r[16]) );
  OA22X1 U1164 ( .A0(n842), .A1(n1121), .B0(n779), .B1(n1126), .Y(n1202) );
  AOI2BB2X1 U1165 ( .B0(n1259), .B1(n1293), .A0N(n961), .A1N(n1270), .Y(n1261)
         );
  INVX3 U1166 ( .A(cnt[1]), .Y(n1308) );
  INVX2 U1167 ( .A(n431), .Y(n1293) );
  AOI22XL U1168 ( .A0(sram_data_out_r[9]), .A1(n982), .B0(sram_data_out_r[16]), 
        .B1(n981), .Y(n968) );
  OA22X2 U1169 ( .A0(n382), .A1(n1110), .B0(n428), .B1(n1321), .Y(n1316) );
  OR2X2 U1170 ( .A(n386), .B(n1110), .Y(n8340) );
  OAI21X4 U1171 ( .A0(n1313), .A1(net54721), .B0(n1328), .Y(n1384) );
  OR2X2 U1172 ( .A(n384), .B(n1110), .Y(n836) );
  OAI21X4 U1173 ( .A0(n1314), .A1(net54721), .B0(n1101), .Y(n1383) );
  INVX4 U1174 ( .A(n838), .Y(n839) );
  OA22X1 U1175 ( .A0(n846), .A1(n1123), .B0(n1400), .B1(n1126), .Y(n1200) );
  INVX20 U1176 ( .A(n960), .Y(n1126) );
  AOI22X1 U1177 ( .A0(n789), .A1(n875), .B0(input_data_wait_r[30]), .B1(n1093), 
        .Y(n1018) );
  AOI32X2 U1178 ( .A0(net42564), .A1(n1308), .A2(n1279), .B0(n1278), .B1(n1277), .Y(n1281) );
  AOI22XL U1179 ( .A0(sram_data_out_r[10]), .A1(n982), .B0(sram_data_out_r[17]), .B1(n981), .Y(n970) );
  CLKINVX1 U1180 ( .A(n840), .Y(n841) );
  AND3X2 U1181 ( .A(net53697), .B(net42808), .C(net42810), .Y(n1171) );
  AND2X1 U1182 ( .A(n888), .B(net50998), .Y(N810) );
  NAND2X4 U1183 ( .A(net43503), .B(next_state_3_), .Y(n1254) );
  AOI22XL U1184 ( .A0(sram_data_out_r[12]), .A1(n982), .B0(sram_data_out_r[19]), .B1(n981), .Y(n974) );
  AND2X2 U1185 ( .A(input_data_wait_r[29]), .B(n1119), .Y(n943) );
  OAI21X2 U1186 ( .A0(n1252), .A1(net54721), .B0(n1325), .Y(n1379) );
  AOI22XL U1187 ( .A0(sram_data_out_r[14]), .A1(n1124), .B0(
        sram_data_out_r[22]), .B1(n960), .Y(n1212) );
  INVX3 U1188 ( .A(n1125), .Y(n874) );
  CLKAND2X12 U1189 ( .A(n871), .B(n850), .Y(n960) );
  MX2X1 U1190 ( .A(n1233), .B(n957), .S0(n442), .Y(n1234) );
  NAND3BX1 U1191 ( .AN(n442), .B(n1266), .C(n884), .Y(n1280) );
  NAND4X4 U1192 ( .A(net53697), .B(net42808), .C(net54593), .D(n7360), .Y(
        net42851) );
  OAI21X2 U1193 ( .A0(n1283), .A1(net54721), .B0(n1336), .Y(n1373) );
  OAI222X2 U1194 ( .A0(n1267), .A1(n1266), .B0(n1343), .B1(n1265), .C0(n1264), 
        .C1(n1263), .Y(n1354) );
  BUFX16 U1195 ( .A(n1320), .Y(n1110) );
  AOI22XL U1196 ( .A0(sram_data_out_r[15]), .A1(n982), .B0(sram_data_out_r[23]), .B1(n981), .Y(n985) );
  OAI32X2 U1197 ( .A0(n426), .A1(n1284), .A2(n1278), .B0(n430), .B1(n891), .Y(
        n1349) );
  NAND4XL U1198 ( .A(n365), .B(net53697), .C(net54593), .D(net42810), .Y(n1150) );
  OAI21X2 U1199 ( .A0(n1333), .A1(net54721), .B0(n1332), .Y(n1359) );
  NAND2XL U1200 ( .A(n1266), .B(n1269), .Y(n1275) );
  NAND2XL U1201 ( .A(n1260), .B(n1269), .Y(n1257) );
  OAI21X2 U1202 ( .A0(n866), .A1(net54721), .B0(n867), .Y(net35950) );
  OAI211X2 U1203 ( .A0(net50503), .A1(n863), .B0(n864), .C0(net42841), .Y(n860) );
  AO22X1 U1204 ( .A0(n924), .A1(n885), .B0(n914), .B1(n7380), .Y(n1042) );
  OAI22X1 U1205 ( .A0(r_valid_w), .A1(n754), .B0(d_valid_w), .B1(u_valid_w), 
        .Y(n951) );
  NAND2X2 U1206 ( .A(u_valid_w), .B(d_valid_w), .Y(n1088) );
  CLKMX2X4 U1207 ( .A(n1243), .B(n1242), .S0(n871), .Y(N775) );
  NAND3BX1 U1208 ( .AN(n1294), .B(n1284), .C(net42564), .Y(n1243) );
  NAND3BX2 U1209 ( .AN(net43505), .B(net43503), .C(net42625), .Y(n1344) );
  OAI221X4 U1210 ( .A0(n1396), .A1(n1114), .B0(n795), .B1(n881), .C0(n1191), 
        .Y(input_data_wait_r[27]) );
  CLKINVX1 U1211 ( .A(n851), .Y(n852) );
  OAI221X4 U1212 ( .A0(n780), .A1(n1114), .B0(n1396), .B1(n881), .C0(n1215), 
        .Y(input_data_wait_r[3]) );
  INVX3 U1213 ( .A(n853), .Y(n854) );
  NAND4X1 U1214 ( .A(n363), .B(net42808), .C(net53696), .D(net54592), .Y(n1165) );
  CLKAND2X2 U1215 ( .A(n826), .B(n806), .Y(n1286) );
  AOI22X1 U1216 ( .A0(n770), .A1(n875), .B0(input_data_wait_r[4]), .B1(n1091), 
        .Y(n996) );
  OAI221X4 U1217 ( .A0(n1401), .A1(n1114), .B0(n764), .B1(n880), .C0(n1214), 
        .Y(input_data_wait_r[4]) );
  CLKAND2X12 U1218 ( .A(n849), .B(n870), .Y(n959) );
  NAND2X4 U1219 ( .A(n743), .B(n808), .Y(r_valid_w) );
  OAI221X2 U1220 ( .A0(n1398), .A1(n1112), .B0(n762), .B1(n880), .C0(n790), 
        .Y(input_data_wait_r[30]) );
  OA22X2 U1221 ( .A0(n792), .A1(n1122), .B0(n1397), .B1(n820), .Y(n1205) );
  OAI221X4 U1222 ( .A0(n848), .A1(n1114), .B0(n1397), .B1(n881), .C0(n1213), 
        .Y(input_data_wait_r[5]) );
  OAI221X4 U1223 ( .A0(n1399), .A1(n1114), .B0(n844), .B1(n881), .C0(n1217), 
        .Y(input_data_wait_r[1]) );
  INVX20 U1224 ( .A(net53696), .Y(net53697) );
  NAND2X2 U1225 ( .A(n760), .B(net43503), .Y(n1290) );
  OAI221X2 U1226 ( .A0(n762), .A1(n1114), .B0(n773), .B1(n880), .C0(n1196), 
        .Y(input_data_wait_r[22]) );
  NAND2X1 U1227 ( .A(n826), .B(n1309), .Y(n1247) );
  AND2X4 U1228 ( .A(n1004), .B(n952), .Y(n928) );
  AOI222X2 U1229 ( .A0(n939), .A1(n930), .B0(n939), .B1(n923), .C0(n788), .C1(
        n928), .Y(n1005) );
  CLKAND2X3 U1230 ( .A(n894), .B(n944), .Y(n1057) );
  AO22X4 U1231 ( .A0(n894), .A1(n918), .B0(input_data_wait_r[16]), .B1(n1094), 
        .Y(n1055) );
  NAND2BX4 U1232 ( .AN(n1310), .B(net43503), .Y(n1321) );
  AND2X8 U1233 ( .A(n1003), .B(n949), .Y(n930) );
  AO22X2 U1234 ( .A0(n909), .A1(n765), .B0(n909), .B1(n787), .Y(n1076) );
  CLKBUFX8 U1235 ( .A(n959), .Y(n1125) );
  INVX20 U1236 ( .A(n1117), .Y(n1112) );
  AO22X2 U1237 ( .A0(n904), .A1(n765), .B0(n904), .B1(n787), .Y(n1056) );
  AND2X8 U1238 ( .A(n878), .B(n879), .Y(n1206) );
  OA22X2 U1239 ( .A0(n425), .A1(net43488), .B0(n376), .B1(net43486), .Y(n866)
         );
  NOR3X4 U1240 ( .A(n1142), .B(n1141), .C(n1140), .Y(n1390) );
  OR4X8 U1241 ( .A(n1022), .B(n1023), .C(n1024), .D(n1025), .Y(N715) );
  AO22X2 U1242 ( .A0(n919), .A1(n765), .B0(n919), .B1(n787), .Y(n1023) );
  OAI21X1 U1243 ( .A0(n1299), .A1(net54721), .B0(n1332), .Y(n1367) );
  OA22X1 U1244 ( .A0(n797), .A1(n1121), .B0(n854), .B1(n1126), .Y(n1203) );
  OR4X2 U1245 ( .A(n1054), .B(n1052), .C(n1053), .D(n1051), .Y(N722) );
  AO22X2 U1246 ( .A0(n903), .A1(n765), .B0(n903), .B1(n787), .Y(n1052) );
  OR4X2 U1247 ( .A(n1059), .B(n1060), .C(n1061), .D(n1062), .Y(N724) );
  AO22X2 U1248 ( .A0(n905), .A1(n765), .B0(n905), .B1(n787), .Y(n1060) );
  AOI222X4 U1249 ( .A0(n942), .A1(n930), .B0(n942), .B1(n923), .C0(n778), .C1(
        n928), .Y(n1013) );
  NAND2X4 U1250 ( .A(n1014), .B(n1013), .Y(N735) );
  CLKAND2X3 U1251 ( .A(input_data_wait_r[9]), .B(n748), .Y(n920) );
  OAI221X4 U1252 ( .A0(n763), .A1(n1112), .B0(n1399), .B1(n881), .C0(n1209), 
        .Y(input_data_wait_r[9]) );
  NOR2BX4 U1253 ( .AN(n755), .B(r_valid_w), .Y(n948) );
  AND2XL U1254 ( .A(net42656), .B(n756), .Y(n1185) );
  XOR2X2 U1255 ( .A(n1259), .B(n431), .Y(n961) );
  OAI221X4 U1256 ( .A0(n795), .A1(n1114), .B0(n768), .B1(n880), .C0(n1199), 
        .Y(input_data_wait_r[19]) );
  OAI21X1 U1257 ( .A0(n1329), .A1(net54720), .B0(n1328), .Y(n1361) );
  OAI21X1 U1258 ( .A0(net42554), .A1(net54720), .B0(n867), .Y(net35923) );
  CLKINVX16 U1259 ( .A(n1115), .Y(n1114) );
  AO22X2 U1260 ( .A0(n910), .A1(n885), .B0(n900), .B1(n7380), .Y(n1082) );
  AO22X2 U1261 ( .A0(n911), .A1(n885), .B0(n901), .B1(n7380), .Y(n1086) );
  AO22X2 U1262 ( .A0(n909), .A1(n885), .B0(n899), .B1(n7380), .Y(n1078) );
  AND2X2 U1263 ( .A(input_data_wait_r[0]), .B(n1119), .Y(n933) );
  OAI221X4 U1264 ( .A0(n779), .A1(n1113), .B0(n842), .B1(n880), .C0(n1218), 
        .Y(input_data_wait_r[0]) );
  AO22X2 U1265 ( .A0(n908), .A1(n885), .B0(n898), .B1(n7380), .Y(n1074) );
  NAND2X8 U1266 ( .A(n8100), .B(y_origin_r[2]), .Y(d_valid_w) );
  INVX12 U1267 ( .A(n1266), .Y(n1278) );
  NAND2BX4 U1268 ( .AN(n1295), .B(net43503), .Y(n1304) );
  AOI22X1 U1269 ( .A0(n1228), .A1(n1279), .B0(n1233), .B1(n1227), .Y(n887) );
  INVX1 U1270 ( .A(n1219), .Y(n1228) );
  AOI2BB1X1 U1271 ( .A0N(n957), .A1N(n1223), .B0(n1231), .Y(n1225) );
  INVX6 U1272 ( .A(net42851), .Y(net42680) );
  AO22X4 U1273 ( .A0(n904), .A1(n885), .B0(n894), .B1(n7380), .Y(n1058) );
  AO22X2 U1274 ( .A0(n906), .A1(n885), .B0(n896), .B1(n7380), .Y(n1066) );
  OAI21X2 U1275 ( .A0(n1300), .A1(net54721), .B0(n1334), .Y(n1366) );
  OA22X2 U1276 ( .A0(n762), .A1(n1123), .B0(n1398), .B1(n1126), .Y(n1204) );
  NAND2X8 U1277 ( .A(n855), .B(net42789), .Y(net42679) );
  NAND4BX4 U1278 ( .AN(n860), .B(n861), .C(net42834), .D(n862), .Y(n416) );
  NAND2X2 U1279 ( .A(n865), .B(net54592), .Y(n863) );
  NAND4X4 U1280 ( .A(net53696), .B(net42810), .C(net54593), .D(net42808), .Y(
        net42841) );
  NAND4X2 U1281 ( .A(net42789), .B(net42795), .C(net43481), .D(net42680), .Y(
        n861) );
  CLKINVX8 U1282 ( .A(n859), .Y(net42795) );
  CLKINVX12 U1283 ( .A(net43596), .Y(net42583) );
  NAND4BX4 U1284 ( .AN(net42820), .B(net42821), .C(net42822), .D(net42823), 
        .Y(net42625) );
  OAI21X2 U1285 ( .A0(net42618), .A1(net54721), .B0(n867), .Y(net35896) );
  AND4X4 U1286 ( .A(n858), .B(net42825), .C(n766), .D(n859), .Y(n958) );
  OAI211X2 U1287 ( .A0(n1161), .A1(n1160), .B0(n1159), .C0(n1158), .Y(net42820) );
  NAND2BXL U1288 ( .AN(n764), .B(n960), .Y(n879) );
  OAI221X2 U1289 ( .A0(y_origin_r[0]), .A1(net43505), .B0(n1284), .B1(n1272), 
        .C0(n1271), .Y(n1274) );
  AND2X2 U1290 ( .A(n917), .B(n944), .Y(n1033) );
  AND2X2 U1291 ( .A(n912), .B(n944), .Y(n1049) );
  NAND2X1 U1292 ( .A(n766), .B(n859), .Y(n1219) );
  NAND3BX1 U1293 ( .AN(n859), .B(net42789), .C(n766), .Y(n1160) );
  NAND2X2 U1294 ( .A(n850), .B(n870), .Y(n1246) );
  AND2X8 U1295 ( .A(n948), .B(n1087), .Y(n918) );
  AND2X1 U1296 ( .A(input_data_wait_r[2]), .B(n1119), .Y(n935) );
  INVX1 U1297 ( .A(r_valid_w), .Y(n1178) );
  OA22X2 U1298 ( .A0(n393), .A1(n1109), .B0(n426), .B1(n1304), .Y(n1298) );
  OAI21X2 U1299 ( .A0(n1311), .A1(net54720), .B0(n1325), .Y(n1386) );
  OA22X2 U1300 ( .A0(n388), .A1(n1110), .B0(n421), .B1(n1321), .Y(n1311) );
  OAI221X2 U1301 ( .A0(n761), .A1(n1112), .B0(n848), .B1(n880), .C0(n1205), 
        .Y(input_data_wait_r[13]) );
  OA22X1 U1302 ( .A0(n795), .A1(n1121), .B0(n1396), .B1(n1126), .Y(n1207) );
  OA22X2 U1303 ( .A0(n841), .A1(n1122), .B0(n818), .B1(n820), .Y(n1188) );
  OA22X2 U1304 ( .A0(n768), .A1(n1121), .B0(n795), .B1(n820), .Y(n1215) );
  XNOR2X1 U1305 ( .A(n1270), .B(n961), .Y(n1271) );
  OR2X2 U1306 ( .A(n774), .B(n873), .Y(n878) );
  NAND2X4 U1307 ( .A(n955), .B(n1222), .Y(n1184) );
  AND4X2 U1308 ( .A(net42680), .B(n1229), .C(n1219), .D(net42825), .Y(n955) );
  INVXL U1309 ( .A(n1287), .Y(n1389) );
  AO22X1 U1310 ( .A0(n926), .A1(n765), .B0(n926), .B1(n787), .Y(n1048) );
  NAND2X2 U1311 ( .A(n793), .B(n1169), .Y(n1175) );
  OAI21X2 U1312 ( .A0(n1316), .A1(net54720), .B0(n1334), .Y(n1381) );
  NAND2X2 U1313 ( .A(n1018), .B(n1017), .Y(N737) );
  INVXL U1314 ( .A(n1112), .Y(n876) );
  INVX6 U1315 ( .A(n1116), .Y(n1113) );
  BUFX6 U1316 ( .A(n962), .Y(n883) );
  BUFX6 U1317 ( .A(n883), .Y(n1116) );
  BUFX8 U1318 ( .A(n883), .Y(n1117) );
  BUFX8 U1319 ( .A(n883), .Y(n1115) );
  OR3X6 U1320 ( .A(n1154), .B(n1155), .C(n1157), .Y(n877) );
  OR2X8 U1321 ( .A(n1156), .B(n877), .Y(next_state_3_) );
  OAI31X2 U1322 ( .A0(n1153), .A1(n858), .A2(net42825), .B0(n1152), .Y(n1154)
         );
  NAND2X8 U1323 ( .A(net43505), .B(n807), .Y(n1266) );
  AND2X6 U1324 ( .A(n1149), .B(n1148), .Y(n1158) );
  NAND4X1 U1325 ( .A(n363), .B(net42810), .C(net53696), .D(net54592), .Y(n1148) );
  BUFX16 U1326 ( .A(n1246), .Y(n880) );
  OAI221X4 U1327 ( .A0(n1403), .A1(n1112), .B0(n1400), .B1(n880), .C0(n1208), 
        .Y(input_data_wait_r[10]) );
  OA22X2 U1328 ( .A0(n852), .A1(n1123), .B0(n774), .B1(n820), .Y(n1214) );
  OA22X2 U1329 ( .A0(n761), .A1(n1121), .B0(n792), .B1(n820), .Y(n1213) );
  OA22X2 U1330 ( .A0(n1403), .A1(n1121), .B0(n815), .B1(n1126), .Y(n1216) );
  OA22X2 U1331 ( .A0(n763), .A1(n1123), .B0(n799), .B1(n820), .Y(n1217) );
  NAND2X2 U1332 ( .A(n825), .B(n1249), .Y(N832) );
  NAND2X2 U1333 ( .A(n825), .B(n1250), .Y(N833) );
  NAND2X2 U1334 ( .A(n825), .B(n1251), .Y(N834) );
  OA22X2 U1335 ( .A0(n426), .A1(n1108), .B0(n402), .B1(n759), .Y(n1256) );
  OA22X2 U1336 ( .A0(n423), .A1(n1108), .B0(n404), .B1(n759), .Y(n1255) );
  OA22X2 U1337 ( .A0(n427), .A1(n1108), .B0(n401), .B1(n759), .Y(n1268) );
  OA22X2 U1338 ( .A0(n428), .A1(n1108), .B0(n400), .B1(n759), .Y(n1276) );
  AND2X2 U1339 ( .A(n8090), .B(n748), .Y(n927) );
  AO22X1 U1340 ( .A0(n910), .A1(n765), .B0(n910), .B1(n787), .Y(n1080) );
  AOI222X1 U1341 ( .A0(n794), .A1(n930), .B0(n794), .B1(n923), .C0(n946), .C1(
        n928), .Y(n1019) );
  OA22X2 U1342 ( .A0(n421), .A1(n1108), .B0(n406), .B1(n759), .Y(n1252) );
  OA22X2 U1343 ( .A0(n429), .A1(n1108), .B0(n399), .B1(n759), .Y(n1283) );
  OAI32X2 U1344 ( .A0(n423), .A1(n1284), .A2(n1278), .B0(n428), .B1(n891), .Y(
        n1351) );
  OAI221X4 U1345 ( .A0(n818), .A1(n1113), .B0(n841), .B1(n880), .C0(n1203), 
        .Y(input_data_wait_r[15]) );
  OAI221X4 U1346 ( .A0(n799), .A1(n1112), .B0(n763), .B1(n881), .C0(n1201), 
        .Y(input_data_wait_r[17]) );
  OAI221X4 U1347 ( .A0(n815), .A1(n1114), .B0(n1403), .B1(n881), .C0(n1200), 
        .Y(input_data_wait_r[18]) );
  OAI221X4 U1348 ( .A0(n774), .A1(n1112), .B0(n852), .B1(n881), .C0(n1198), 
        .Y(input_data_wait_r[20]) );
  OAI221X4 U1349 ( .A0(n792), .A1(n1112), .B0(n761), .B1(n880), .C0(n1197), 
        .Y(input_data_wait_r[21]) );
  OAI221X4 U1350 ( .A0(n797), .A1(n1112), .B0(n818), .B1(n881), .C0(n1195), 
        .Y(input_data_wait_r[23]) );
  OAI21X1 U1351 ( .A0(n1253), .A1(net54721), .B0(n8860), .Y(n1378) );
  OAI21X2 U1352 ( .A0(n1268), .A1(net54720), .B0(n1332), .Y(n1375) );
  OAI21X2 U1353 ( .A0(n1276), .A1(net54721), .B0(n1334), .Y(n1374) );
  OAI21X2 U1354 ( .A0(n1255), .A1(net54721), .B0(n1328), .Y(n1377) );
  OAI21X2 U1355 ( .A0(n1256), .A1(net54720), .B0(n1101), .Y(n1376) );
  OAI21X1 U1356 ( .A0(n1301), .A1(net54721), .B0(n1336), .Y(n1365) );
  OAI221X2 U1357 ( .A0(n1348), .A1(n1347), .B0(n1346), .B1(net54721), .C0(n741), .Y(n1356) );
  AND2X1 U1358 ( .A(input_data_wait_r[28]), .B(n1119), .Y(n942) );
  CLKINVX3 U1359 ( .A(n845), .Y(n1396) );
  NOR4X1 U1360 ( .A(pre_state[9]), .B(pre_state[8]), .C(pre_state[6]), .D(
        pre_state[4]), .Y(n132) );
  OR3XL U1361 ( .A(med_out_valid_w), .B(conv_out_valid_w), .C(n1394), .Y(
        out_valid_wait_r) );
  AND3X4 U1362 ( .A(n1220), .B(net42679), .C(net42680), .Y(n1221) );
  NAND2X2 U1363 ( .A(o_in_ready), .B(n1130), .Y(n1131) );
  AND2X1 U1364 ( .A(input_data_wait_r[30]), .B(n1119), .Y(n945) );
  INVX4 U1365 ( .A(n1120), .Y(n1118) );
  AO22X4 U1366 ( .A0(n925), .A1(n885), .B0(n913), .B1(n7380), .Y(n1046) );
  INVX1 U1367 ( .A(n1220), .Y(n1179) );
  AOI2BB1X1 U1368 ( .A0N(n872), .A1N(n1185), .B0(n1184), .Y(n1186) );
  AO22X2 U1369 ( .A0(n921), .A1(n885), .B0(n917), .B1(n7380), .Y(n1034) );
  AO22X2 U1370 ( .A0(n929), .A1(n885), .B0(n922), .B1(n7380), .Y(n1038) );
  AND2X2 U1371 ( .A(input_data_wait_r[10]), .B(n1118), .Y(n917) );
  AND2X4 U1372 ( .A(input_data_wait_r[11]), .B(n748), .Y(n929) );
  INVX1 U1373 ( .A(n1088), .Y(n1092) );
  NAND2XL U1374 ( .A(n1309), .B(n1308), .Y(n1310) );
  NAND4X1 U1375 ( .A(n421), .B(n422), .C(n1390), .D(n760), .Y(n1144) );
  AND2XL U1376 ( .A(n425), .B(n426), .Y(n1240) );
  AND2XL U1377 ( .A(result_w[13]), .B(n1111), .Y(out_data_wait_r[13]) );
  AND2XL U1378 ( .A(result_w[12]), .B(n1111), .Y(out_data_wait_r[12]) );
  AND2XL U1379 ( .A(result_w[11]), .B(n1111), .Y(out_data_wait_r[11]) );
  OR4X2 U1380 ( .A(n1031), .B(n1032), .C(n1033), .D(n1034), .Y(N717) );
  INVX3 U1381 ( .A(n1231), .Y(n1235) );
  AOI222X1 U1382 ( .A0(n943), .A1(n930), .B0(n943), .B1(n923), .C0(n7750), 
        .C1(n928), .Y(n1015) );
  AO21X4 U1383 ( .A0(n1179), .A1(n1178), .B0(n1184), .Y(n1187) );
  OA22XL U1384 ( .A0(n779), .A1(n1121), .B0(n1402), .B1(n1126), .Y(n1194) );
  AND2XL U1385 ( .A(n750), .B(cnt[2]), .Y(n1238) );
  AND2XL U1386 ( .A(net42656), .B(net43481), .Y(n1388) );
  AND3XL U1387 ( .A(n1120), .B(cnt[2]), .C(cnt[3]), .Y(n1135) );
  NAND2XL U1388 ( .A(n442), .B(cnt[1]), .Y(n1282) );
  AND3XL U1389 ( .A(n1269), .B(n1293), .C(n1279), .Y(n1273) );
  NAND4XL U1390 ( .A(n440), .B(n1293), .C(n1279), .D(n8100), .Y(n1265) );
  CLKINVX3 U1391 ( .A(n409), .Y(n1162) );
  INVXL U1392 ( .A(n1187), .Y(n1182) );
  AOI2BB1XL U1393 ( .A0N(n1309), .A1N(n850), .B0(n876), .Y(n1244) );
  INVX3 U1394 ( .A(n8310), .Y(n1401) );
  INVX3 U1395 ( .A(n819), .Y(n1398) );
  XOR2XL U1396 ( .A(n874), .B(n743), .Y(n1287) );
  NAND2XL U1397 ( .A(n407), .B(n435), .Y(n1139) );
  NAND2XL U1398 ( .A(x_plus_two_r[1]), .B(x_plus_two_r[0]), .Y(n966) );
  NAND3BXL U1399 ( .AN(n425), .B(cnt[6]), .C(cnt[8]), .Y(n1133) );
  MX2XL U1400 ( .A(net43481), .B(i_op_mode[3]), .S0(i_op_valid), .Y(n414) );
  CLKINVX1 U1401 ( .A(N123), .Y(n1395) );
  AOI22X1 U1402 ( .A0(n785), .A1(n875), .B0(input_data_wait_r[6]), .B1(n1091), 
        .Y(n1000) );
  AOI22X1 U1403 ( .A0(n783), .A1(n875), .B0(input_data_wait_r[0]), .B1(n1091), 
        .Y(n988) );
  AND2X2 U1404 ( .A(n915), .B(n944), .Y(n1024) );
  AO22X1 U1405 ( .A0(n915), .A1(n918), .B0(input_data_wait_r[8]), .B1(n1094), 
        .Y(n1022) );
  AND2X2 U1406 ( .A(n916), .B(n944), .Y(n1029) );
  AO22X1 U1407 ( .A0(n916), .A1(n918), .B0(input_data_wait_r[9]), .B1(n1094), 
        .Y(n1027) );
  AO22X1 U1408 ( .A0(n917), .A1(n918), .B0(input_data_wait_r[10]), .B1(n1094), 
        .Y(n1031) );
  AND2X2 U1409 ( .A(n922), .B(n944), .Y(n1037) );
  AO22X1 U1410 ( .A0(n922), .A1(n918), .B0(input_data_wait_r[11]), .B1(n1094), 
        .Y(n1035) );
  AO22X1 U1411 ( .A0(n914), .A1(n918), .B0(input_data_wait_r[12]), .B1(n1094), 
        .Y(n1039) );
  AND2X2 U1412 ( .A(n913), .B(n944), .Y(n1045) );
  AO22X1 U1413 ( .A0(n912), .A1(n918), .B0(input_data_wait_r[14]), .B1(n1094), 
        .Y(n1047) );
  AO22X1 U1414 ( .A0(n893), .A1(n918), .B0(input_data_wait_r[15]), .B1(n1094), 
        .Y(n1051) );
  AND2X1 U1415 ( .A(n895), .B(n944), .Y(n1061) );
  AO22X1 U1416 ( .A0(n895), .A1(n918), .B0(input_data_wait_r[17]), .B1(n1094), 
        .Y(n1059) );
  AND2X1 U1417 ( .A(n896), .B(n944), .Y(n1065) );
  AO22X1 U1418 ( .A0(n896), .A1(n918), .B0(input_data_wait_r[18]), .B1(n1094), 
        .Y(n1063) );
  AND2X1 U1419 ( .A(n897), .B(n944), .Y(n1069) );
  AO22X1 U1420 ( .A0(n897), .A1(n918), .B0(input_data_wait_r[19]), .B1(n1094), 
        .Y(n1067) );
  AND2X1 U1421 ( .A(n898), .B(n944), .Y(n1073) );
  AO22X1 U1422 ( .A0(n898), .A1(n918), .B0(input_data_wait_r[20]), .B1(n1094), 
        .Y(n1071) );
  AND2X1 U1423 ( .A(n899), .B(n944), .Y(n1077) );
  AO22X1 U1424 ( .A0(n899), .A1(n918), .B0(input_data_wait_r[21]), .B1(n1094), 
        .Y(n1075) );
  AND2X1 U1425 ( .A(n900), .B(n944), .Y(n1081) );
  AO22X1 U1426 ( .A0(n900), .A1(n918), .B0(input_data_wait_r[22]), .B1(n1094), 
        .Y(n1079) );
  AND2X1 U1427 ( .A(n901), .B(n944), .Y(n1085) );
  AO22X1 U1428 ( .A0(n901), .A1(n918), .B0(input_data_wait_r[23]), .B1(n1094), 
        .Y(n1083) );
  AND2X2 U1429 ( .A(input_data_wait_r[22]), .B(n1119), .Y(n900) );
  AND2X2 U1430 ( .A(input_data_wait_r[15]), .B(n749), .Y(n903) );
  AND2X2 U1431 ( .A(input_data_wait_r[16]), .B(n1127), .Y(n904) );
  AND2X2 U1432 ( .A(input_data_wait_r[17]), .B(n749), .Y(n905) );
  AND2X2 U1433 ( .A(input_data_wait_r[21]), .B(n748), .Y(n909) );
  AND2X2 U1434 ( .A(input_data_wait_r[22]), .B(n1127), .Y(n910) );
  AND2X2 U1435 ( .A(input_data_wait_r[14]), .B(n1118), .Y(n912) );
  AND2X2 U1436 ( .A(input_data_wait_r[10]), .B(n749), .Y(n921) );
  AND2X4 U1437 ( .A(input_data_wait_r[11]), .B(n1118), .Y(n922) );
  AND2X2 U1438 ( .A(input_data_wait_r[24]), .B(n1119), .Y(n939) );
  CLKINVX1 U1439 ( .A(n882), .Y(n1163) );
  CLKINVX1 U1440 ( .A(net42679), .Y(net42656) );
  OA22X2 U1441 ( .A0(n1399), .A1(n1123), .B0(n763), .B1(n820), .Y(n1193) );
  AND2X2 U1442 ( .A(n800), .B(n986), .Y(n954) );
  NAND3BX1 U1443 ( .AN(net43481), .B(n1222), .C(n1221), .Y(n1231) );
  CLKBUFX3 U1444 ( .A(n760), .Y(n1120) );
  AND2X2 U1445 ( .A(n1131), .B(n1106), .Y(n956) );
  AO22X1 U1446 ( .A0(N474), .A1(n843), .B0(n1177), .B1(cnt[8]), .Y(n445) );
  AO22X1 U1447 ( .A0(N470), .A1(n843), .B0(n1177), .B1(cnt[4]), .Y(n449) );
  NAND2X1 U1448 ( .A(n1294), .B(n1293), .Y(n1295) );
  AND2XL U1449 ( .A(n1233), .B(d_valid_w), .Y(n1223) );
  NOR2X1 U1450 ( .A(n801), .B(n1392), .Y(n71) );
  INVX3 U1451 ( .A(n1111), .Y(n1394) );
  AND2X2 U1452 ( .A(n1340), .B(n804), .Y(n1341) );
  BUFX12 U1453 ( .A(i_rst_n), .Y(n1104) );
  BUFX12 U1454 ( .A(i_rst_n), .Y(n1103) );
  BUFX12 U1455 ( .A(i_rst_n), .Y(n1102) );
  CLKBUFX6 U1456 ( .A(i_rst_n), .Y(n1105) );
  MXI3X1 U1457 ( .A(n1289), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(n71), .S1(n1288), .Y(n1292) );
  AND2X2 U1458 ( .A(x_minus_one_r[1]), .B(n828), .Y(n1288) );
  MXI3X1 U1459 ( .A(n1303), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(n94), .S1(n1302), .Y(n1307) );
  AND2X2 U1460 ( .A(x_minus_one_r[1]), .B(n1340), .Y(n1302) );
  MXI3X1 U1461 ( .A(n1342), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(
        n117), .S1(n1341), .Y(n1348) );
  MXI3X1 U1462 ( .A(n1319), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(
        n104), .S1(n1318), .Y(n1324) );
  NAND2BX4 U1463 ( .AN(net42851), .B(n958), .Y(n1173) );
  MXI2X1 U1464 ( .A(sram_wen_ready_r[3]), .B(sram_wen_ready_r[2]), .S0(
        i_in_valid), .Y(n1251) );
  MXI2X1 U1465 ( .A(sram_wen_ready_r[2]), .B(sram_wen_ready_r[1]), .S0(
        i_in_valid), .Y(n1250) );
  MXI2X1 U1466 ( .A(sram_wen_ready_r[1]), .B(sram_wen_ready_r[0]), .S0(
        i_in_valid), .Y(n1249) );
  OAI21XL U1467 ( .A0(conv_result_w[1]), .A1(med_result_w[1]), .B0(n1111), .Y(
        n129) );
  OAI21XL U1468 ( .A0(conv_result_w[0]), .A1(med_result_w[0]), .B0(n1111), .Y(
        n130) );
  INVX3 U1469 ( .A(y_origin_r[0]), .Y(n1260) );
  CLKMX2X2 U1470 ( .A(n1237), .B(n1236), .S0(n8100), .Y(n460) );
  AND2X2 U1471 ( .A(n1235), .B(n1234), .Y(n1237) );
  OAI31XL U1472 ( .A0(n1181), .A1(n1287), .A2(n1184), .B0(n1180), .Y(n456) );
  AND2X2 U1473 ( .A(N93), .B(n800), .Y(n982) );
  MX2XL U1474 ( .A(n1187), .B(n1186), .S0(n871), .Y(n458) );
  CLKMX2X2 U1475 ( .A(n1225), .B(n1224), .S0(y_origin_r[0]), .Y(n461) );
  AO21XL U1476 ( .A0(n1233), .A1(n1021), .B0(n1231), .Y(n1224) );
  CLKMX2X2 U1477 ( .A(y_origin_r[2]), .B(n1232), .S0(n1235), .Y(n459) );
  AOI2BB1XL U1478 ( .A0N(n442), .A1N(n1269), .B0(n1226), .Y(n12301) );
  CLKINVX1 U1479 ( .A(n440), .Y(n1226) );
  INVX1 U1480 ( .A(i_in_valid), .Y(n1130) );
  AO22X1 U1481 ( .A0(N472), .A1(n843), .B0(n1177), .B1(cnt[6]), .Y(n447) );
  AO22X1 U1482 ( .A0(N471), .A1(n843), .B0(n1177), .B1(cnt[5]), .Y(n448) );
  AO22X1 U1483 ( .A0(N469), .A1(n843), .B0(n1177), .B1(cnt[3]), .Y(n450) );
  AO22X1 U1484 ( .A0(N468), .A1(n843), .B0(n1177), .B1(cnt[2]), .Y(n451) );
  AO22X1 U1485 ( .A0(N467), .A1(n843), .B0(n1177), .B1(n1293), .Y(n452) );
  AO22X1 U1486 ( .A0(N466), .A1(n843), .B0(n1177), .B1(n1309), .Y(n453) );
  AO21XL U1487 ( .A0(n1248), .A1(net54592), .B0(n1344), .Y(N831) );
  CLKMX2X2 U1488 ( .A(sram_wen_ready_r[0]), .B(sram_wen_ready_r[3]), .S0(
        i_in_valid), .Y(n1248) );
  AND3X2 U1489 ( .A(n428), .B(n429), .C(n427), .Y(n1241) );
  OA22XL U1490 ( .A0(n407), .A1(net42795), .B0(n435), .B1(net56037), .Y(n1136)
         );
  CLKMX2X2 U1491 ( .A(n8050), .B(n1139), .S0(n816), .Y(n455) );
  AO21XL U1492 ( .A0(n1107), .A1(n1164), .B0(net42625), .Y(n1355) );
  CLKINVX1 U1493 ( .A(i_op_valid), .Y(n1164) );
  MXI2X1 U1494 ( .A(n435), .B(n1138), .S0(n816), .Y(n454) );
  NAND2XL U1495 ( .A(n766), .B(n8050), .Y(n1138) );
  NAND2XL U1496 ( .A(n1309), .B(n1260), .Y(n1270) );
  NOR2X1 U1497 ( .A(n1144), .B(n1143), .Y(n1145) );
  NAND4X1 U1498 ( .A(n430), .B(n429), .C(n423), .D(n428), .Y(n1143) );
  MXI2X1 U1499 ( .A(n407), .B(n1137), .S0(n816), .Y(n418) );
  NAND2XL U1500 ( .A(net56037), .B(n8050), .Y(n1137) );
  NAND2X1 U1501 ( .A(n1258), .B(d_valid_w), .Y(n1262) );
  CLKMX2X2 U1502 ( .A(n1257), .B(n1260), .S0(y_origin_r[2]), .Y(n1258) );
  NOR4BX1 U1503 ( .AN(n1135), .B(n1134), .C(n1133), .D(n1132), .Y(N886) );
  NAND2X1 U1504 ( .A(cnt[9]), .B(cnt[10]), .Y(n1134) );
  NAND2X1 U1505 ( .A(cnt[4]), .B(cnt[5]), .Y(n1132) );
  CLKMX2X2 U1506 ( .A(x_plus_two_r[2]), .B(x_r[2]), .S0(n963), .Y(n1303) );
  NAND2X1 U1507 ( .A(x_plus_two_r[1]), .B(n1339), .Y(n963) );
  CLKMX2X2 U1508 ( .A(x_plus_two_r[2]), .B(x_r[2]), .S0(n964), .Y(n1342) );
  NAND2X1 U1509 ( .A(n1339), .B(n1338), .Y(n964) );
  CLKMX2X2 U1510 ( .A(x_plus_two_r[2]), .B(x_r[2]), .S0(n965), .Y(n1319) );
  NAND2X1 U1511 ( .A(x_plus_two_r[0]), .B(n1338), .Y(n965) );
  CLKMX2X2 U1512 ( .A(x_plus_two_r[2]), .B(x_r[2]), .S0(n966), .Y(n1289) );
  XOR2X1 U1513 ( .A(n427), .B(n435), .Y(n1140) );
  XOR2X1 U1514 ( .A(n425), .B(n407), .Y(n1141) );
  XOR2X1 U1515 ( .A(n434), .B(n426), .Y(n1142) );
  MX2XL U1516 ( .A(n859), .B(i_op_mode[1]), .S0(i_op_valid), .Y(n412) );
  MX2XL U1517 ( .A(n858), .B(i_op_mode[2]), .S0(i_op_valid), .Y(n413) );
  MX2XL U1518 ( .A(n766), .B(i_op_mode[0]), .S0(i_op_valid), .Y(n411) );
  XOR2XL U1519 ( .A(n1294), .B(y_origin_r[0]), .Y(n1277) );
  NOR2X1 U1520 ( .A(n801), .B(x_plus_one_r[0]), .Y(n94) );
  NOR2X1 U1521 ( .A(n1392), .B(x_plus_one_r[1]), .Y(n104) );
  NAND2X1 U1522 ( .A(n131), .B(n132), .Y(n122) );
  NOR4X1 U1523 ( .A(n367), .B(n368), .C(n369), .D(n370), .Y(n131) );
  OAI2BB1XL U1524 ( .A0N(n743), .A1N(n820), .B0(n755), .Y(N746) );
  NOR2X1 U1525 ( .A(x_plus_one_r[1]), .B(x_plus_one_r[0]), .Y(n117) );
  AND2X2 U1526 ( .A(n828), .B(n804), .Y(n1318) );
  AND3X2 U1527 ( .A(n422), .B(n423), .C(n421), .Y(n1239) );
  OA21XL U1528 ( .A0(conv_result_w[10]), .A1(med_result_w[10]), .B0(n1111), 
        .Y(out_data_wait_r[10]) );
  OA21XL U1529 ( .A0(conv_result_w[9]), .A1(med_result_w[9]), .B0(n1111), .Y(
        out_data_wait_r[9]) );
  OA21XL U1530 ( .A0(conv_result_w[8]), .A1(med_result_w[8]), .B0(n1111), .Y(
        out_data_wait_r[8]) );
  XOR2XL U1531 ( .A(n743), .B(n808), .Y(N752) );
  AOI22X1 U1532 ( .A0(sram_data_out_r[0]), .A1(n954), .B0(sram_data_out_r[4]), 
        .B1(n983), .Y(n967) );
  NAND2X1 U1533 ( .A(n968), .B(n967), .Y(N337) );
  AOI22X1 U1534 ( .A0(sram_data_out_r[1]), .A1(n954), .B0(sram_data_out_r[5]), 
        .B1(n983), .Y(n969) );
  NAND2X1 U1535 ( .A(n970), .B(n969), .Y(N336) );
  AOI22X1 U1536 ( .A0(sram_data_out_r[11]), .A1(n982), .B0(sram_data_out_r[18]), .B1(n981), .Y(n972) );
  AOI22X1 U1537 ( .A0(sram_data_out_r[2]), .A1(n954), .B0(sram_data_out_r[6]), 
        .B1(n983), .Y(n971) );
  NAND2X1 U1538 ( .A(n972), .B(n971), .Y(N335) );
  AOI22X1 U1539 ( .A0(n845), .A1(n954), .B0(sram_data_out_r[7]), .B1(n983), 
        .Y(n973) );
  NAND2X1 U1540 ( .A(n974), .B(n973), .Y(N334) );
  AOI22X1 U1541 ( .A0(n851), .A1(n982), .B0(sram_data_out_r[20]), .B1(n981), 
        .Y(n976) );
  AOI22X1 U1542 ( .A0(sram_data_out_r[3]), .A1(n954), .B0(n8310), .B1(n983), 
        .Y(n975) );
  NAND2X1 U1543 ( .A(n976), .B(n975), .Y(N333) );
  AOI22X1 U1544 ( .A0(sram_data_out_r[13]), .A1(n982), .B0(sram_data_out_r[21]), .B1(n981), .Y(n978) );
  AOI22X1 U1545 ( .A0(n827), .A1(n954), .B0(n847), .B1(n983), .Y(n977) );
  NAND2X1 U1546 ( .A(n978), .B(n977), .Y(N332) );
  AOI22X1 U1547 ( .A0(sram_data_out_r[14]), .A1(n982), .B0(sram_data_out_r[22]), .B1(n981), .Y(n980) );
  AOI22X1 U1548 ( .A0(n819), .A1(n954), .B0(sram_data_out_r[8]), .B1(n983), 
        .Y(n979) );
  NAND2X1 U1549 ( .A(n980), .B(n979), .Y(N331) );
  AOI22X1 U1550 ( .A0(n853), .A1(n954), .B0(n840), .B1(n983), .Y(n984) );
  NAND2X1 U1551 ( .A(n985), .B(n984), .Y(N330) );
  NOR2X2 U1552 ( .A(n800), .B(N93), .Y(n983) );
  OR4X4 U1553 ( .A(n1055), .B(n1056), .C(n1057), .D(n1058), .Y(N723) );
  NAND2X2 U1554 ( .A(n1089), .B(n1021), .Y(n1090) );
  AOI222X2 U1555 ( .A0(n938), .A1(n930), .B0(n938), .B1(n889), .C0(n785), .C1(
        n902), .Y(n999) );
  AO21X4 U1556 ( .A0(n1092), .A1(n756), .B0(n814), .Y(n1091) );
  AO21X4 U1557 ( .A0(n1092), .A1(r_valid_w), .B0(n814), .Y(n1093) );
  OAI211X4 U1558 ( .A0(r_valid_w), .A1(n755), .B0(n1088), .C0(n1089), .Y(n1026) );
  AOI22X1 U1559 ( .A0(n946), .A1(n875), .B0(input_data_wait_r[31]), .B1(n1093), 
        .Y(n1020) );
  AOI22X1 U1560 ( .A0(n772), .A1(n875), .B0(input_data_wait_r[1]), .B1(n1091), 
        .Y(n990) );
  AOI22X1 U1561 ( .A0(n791), .A1(n875), .B0(input_data_wait_r[7]), .B1(n1091), 
        .Y(n1002) );
  AOI22X1 U1562 ( .A0(n771), .A1(n875), .B0(input_data_wait_r[2]), .B1(n1091), 
        .Y(n992) );
  AOI22X1 U1563 ( .A0(n788), .A1(n875), .B0(input_data_wait_r[24]), .B1(n1093), 
        .Y(n1006) );
  AOI22X1 U1564 ( .A0(n769), .A1(n875), .B0(input_data_wait_r[3]), .B1(n1091), 
        .Y(n994) );
  AOI22X1 U1565 ( .A0(n927), .A1(n875), .B0(n8090), .B1(n1093), .Y(n1008) );
  AOI22X1 U1566 ( .A0(n786), .A1(n875), .B0(input_data_wait_r[5]), .B1(n1091), 
        .Y(n998) );
  AOI22X1 U1567 ( .A0(n7770), .A1(n875), .B0(input_data_wait_r[26]), .B1(n1093), .Y(n1010) );
  AOI22X1 U1568 ( .A0(n784), .A1(n875), .B0(input_data_wait_r[27]), .B1(n1093), 
        .Y(n1012) );
  AOI22X1 U1569 ( .A0(n778), .A1(n875), .B0(input_data_wait_r[28]), .B1(n1093), 
        .Y(n1014) );
  AOI22X1 U1570 ( .A0(n7750), .A1(n875), .B0(input_data_wait_r[29]), .B1(n1093), .Y(n1016) );
  OAI221X4 U1571 ( .A0(n773), .A1(n1112), .B0(n802), .B1(n881), .C0(n1204), 
        .Y(input_data_wait_r[14]) );
  OAI221X4 U1572 ( .A0(n852), .A1(n1114), .B0(n1401), .B1(n880), .C0(n1206), 
        .Y(input_data_wait_r[12]) );
  OAI221X4 U1573 ( .A0(n764), .A1(n1112), .B0(n774), .B1(n880), .C0(n1190), 
        .Y(input_data_wait_r[28]) );
  OAI221X4 U1574 ( .A0(n846), .A1(n1112), .B0(n815), .B1(n881), .C0(n1192), 
        .Y(input_data_wait_r[26]) );
  OAI221X4 U1575 ( .A0(n842), .A1(n1114), .B0(n798), .B1(n881), .C0(n1194), 
        .Y(input_data_wait_r[24]) );
  OAI221X4 U1576 ( .A0(n1400), .A1(n1113), .B0(n846), .B1(n880), .C0(n1216), 
        .Y(input_data_wait_r[2]) );
  BUFX8 U1577 ( .A(n1330), .Y(n1101) );
  NAND2X1 U1578 ( .A(z_r[0]), .B(net42583), .Y(n1330) );
  OAI221X4 U1579 ( .A0(n854), .A1(n1112), .B0(n797), .B1(n881), .C0(n1188), 
        .Y(input_data_wait_r[31]) );
  NAND2X1 U1580 ( .A(y_origin_r[0]), .B(d_valid_w), .Y(n1227) );
  NAND2X1 U1581 ( .A(n1344), .B(n1343), .Y(n1347) );
  NAND3BX4 U1582 ( .AN(n743), .B(n871), .C(n850), .Y(l_valid_w) );
  OR3X4 U1583 ( .A(n7350), .B(net53696), .C(net42808), .Y(n1106) );
  NAND4BX4 U1584 ( .AN(n1176), .B(n1174), .C(n1175), .D(n1173), .Y(net42520)
         );
  OA22X4 U1585 ( .A0(n742), .A1(n796), .B0(n1162), .B1(net42841), .Y(n1152) );
  NAND4X2 U1586 ( .A(net42789), .B(net42825), .C(net42680), .D(n1233), .Y(
        net42822) );
  OAI221X2 U1587 ( .A0(n1168), .A1(net42814), .B0(n1167), .B1(n882), .C0(n1165), .Y(n1176) );
  AOI211X2 U1588 ( .A0(n1172), .A1(n782), .B0(n1171), .C0(n1170), .Y(n1174) );
  OA22X4 U1589 ( .A0(n848), .A1(n873), .B0(n761), .B1(n820), .Y(n1189) );
  OA22X4 U1590 ( .A0(n1401), .A1(n1123), .B0(n852), .B1(n820), .Y(n1190) );
  OAI221X2 U1591 ( .A0(n844), .A1(n1112), .B0(n799), .B1(n880), .C0(n1193), 
        .Y(input_data_wait_r[25]) );
  OAI221X2 U1592 ( .A0(n802), .A1(n1112), .B0(n1398), .B1(n881), .C0(n1212), 
        .Y(input_data_wait_r[6]) );
  OAI211X2 U1593 ( .A0(n1247), .A1(n881), .B0(n1245), .C0(n1244), .Y(N776) );
endmodule


module core_DW01_inc_1 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;
  wire   n2, n5, n6, n7, n8, n9, n12, n15, n16, n19, n22, n23, n24, n25, n28,
         n31, n32;

  NAND2X2 U49 ( .A(n24), .B(n8), .Y(n7) );
  NOR2X4 U50 ( .A(n32), .B(n25), .Y(n24) );
  NAND2X2 U51 ( .A(n15), .B(A[6]), .Y(n12) );
  NOR2X4 U52 ( .A(n23), .B(n16), .Y(n15) );
  CLKINVX1 U53 ( .A(n24), .Y(n23) );
  NAND2X1 U54 ( .A(A[1]), .B(A[0]), .Y(n32) );
  XOR2X1 U55 ( .A(n5), .B(A[9]), .Y(SUM[9]) );
  XNOR2X1 U56 ( .A(n28), .B(A[3]), .Y(SUM[3]) );
  NOR2X1 U57 ( .A(n23), .B(n22), .Y(n19) );
  INVX1 U58 ( .A(n32), .Y(n31) );
  NOR2X2 U59 ( .A(n7), .B(n6), .Y(n5) );
  XOR2XL U60 ( .A(n23), .B(n22), .Y(SUM[4]) );
  XOR2X1 U61 ( .A(n15), .B(A[6]), .Y(SUM[6]) );
  NAND2X1 U62 ( .A(n5), .B(A[9]), .Y(n2) );
  XNOR2X1 U63 ( .A(n2), .B(A[10]), .Y(SUM[10]) );
  NAND2XL U64 ( .A(n31), .B(A[2]), .Y(n28) );
  XNOR2X1 U65 ( .A(n12), .B(A[7]), .Y(SUM[7]) );
  XOR2XL U66 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XOR2X1 U67 ( .A(n19), .B(A[5]), .Y(SUM[5]) );
  XOR2XL U68 ( .A(n31), .B(A[2]), .Y(SUM[2]) );
  INVXL U69 ( .A(A[4]), .Y(n22) );
  XOR2X1 U70 ( .A(n7), .B(n6), .Y(SUM[8]) );
  INVXL U71 ( .A(A[0]), .Y(SUM[0]) );
  NAND2X1 U72 ( .A(A[2]), .B(A[3]), .Y(n25) );
  NOR2X1 U73 ( .A(n16), .B(n9), .Y(n8) );
  NAND2X1 U74 ( .A(A[6]), .B(A[7]), .Y(n9) );
  NAND2X1 U75 ( .A(A[4]), .B(A[5]), .Y(n16) );
  CLKINVX1 U76 ( .A(A[8]), .Y(n6) );
endmodule


module median ( i_clk, i_rst_n, i_data, i_isFirst, i_med_sobel, o_out_valid, 
        o_out_data, o_done );
  input [31:0] i_data;
  output [10:0] o_out_data;
  input i_clk, i_rst_n, i_isFirst, i_med_sobel;
  output o_out_valid, o_done;
  wire   \data_e_r[7] , \data_e_r[6] , \data_e_r[5] , \data_e_r[4] ,
         \data_e_r[3] , \data_e_r[2] , \data_e_r[1] , \data_e_r[0] , N106,
         N107, N109, N110, N111, N112, N113, N114, n1, n2, n4, n6, n9, n10,
         n149, n154, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n268,
         n269, n270, n271, n272, n273, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n395,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n411, n412, n413, n414, n415, n416, n417, n420, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n433, n434, n435,
         n436, n437, n438, n439, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n3,
         n5, n7, n8, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n1060, n1070, n108, n1090, n1100, n1110, n1120, n1130, n1140,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n150, n151, n152, n153, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n267,
         n274, n346, n347, n348, n372, n394, n396, n409, n410, n418, n419,
         n421, n432, n440, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950;
  wire   [2:0] cnt;
  wire   [7:0] out_data_w;
  wire   [10:0] sobel_out_data_w;
  wire   [7:0] data_a_r;
  wire   [7:0] data_b_r;
  wire   [7:0] data_c_r;
  wire   [7:0] data_d_r;
  wire   [7:0] data_f_r;
  wire   [7:0] data_g_r;
  wire   [7:0] data_h_r;
  wire   [7:0] data_i_r;
  wire   [10:0] sobel_data_w;
  wire   [1:0] angle_w;
  wire   [43:0] G;
  wire   [7:0] angle;
  wire   [83:0] med_e_wait_r;
  wire   [2:0] ns;
  wire   [5:3] add_236_carry;

  median_filter_submodule u_median_filter_submodule ( .p1({data_a_r[7:5], n699, 
        data_a_r[3:0]}), .p2({data_b_r[7:5], n686, n121, data_b_r[2:0]}), .p3(
        {data_c_r[7:6], n11, data_c_r[4], n690, data_c_r[2], n695, data_c_r[0]}), .p4({n689, data_d_r[6], n716, n685, data_d_r[3:0]}), .p5({\data_e_r[7] , 
        \data_e_r[6] , \data_e_r[5] , \data_e_r[4] , \data_e_r[3] , 
        \data_e_r[2] , \data_e_r[1] , \data_e_r[0] }), .p6({n711, 
        data_f_r[6:5], n658, n693, data_f_r[2:0]}), .p7({data_g_r[7:2], n717, 
        n712}), .p8({data_h_r[7:6], n691, data_h_r[4:0]}), .p9({data_i_r[7], 
        n713, n714, n8, data_i_r[3:2], n720, data_i_r[0]}), .clk(i_clk), .rst(
        n792), .median(out_data_w) );
  sobel_gradient u_sobel_gradient_submodule ( .clk(i_clk), .rst(i_rst_n), .p1(
        {data_a_r[7:6], n159, n699, data_a_r[3:0]}), .p2({data_b_r[7:6], n104, 
        n686, n121, data_b_r[2:0]}), .p3({data_c_r[7:6], n11, data_c_r[4], 
        n690, data_c_r[2], n695, data_c_r[0]}), .p4({n689, data_d_r[6], n716, 
        n685, data_d_r[3:0]}), .p6({n711, data_f_r[6:5], n658, n693, 
        data_f_r[2:1], n707}), .p7({n703, data_g_r[6:2], n719, n712}), .p8({
        n704, data_h_r[6], n691, data_h_r[4], n100, n698, data_h_r[1:0]}), 
        .p9({data_i_r[7], n713, n714, n8, n1060, n721, n720, n725}), 
        .sobel_result(sobel_data_w), .angle(angle_w) );
  sober_compare u_sober_compare_submodule ( .clk(i_clk), .rst(n792), .start(
        n659), .G1(G[10:0]), .G2(G[21:11]), .G3(G[32:22]), .G4(G[43:33]), 
        .angle1(angle[1:0]), .angle2(angle[3:2]), .angle3(angle[5:4]), 
        .angle4(angle[7:6]), .sobel_result(sobel_out_data_w) );
  DFFRX1 med_e_delay_r_reg_11__5_ ( .D(n541), .CK(i_clk), .RN(n681), .Q(n21), 
        .QN(n425) );
  DFFRX2 med_e_delay_r_reg_6__1_ ( .D(n585), .CK(i_clk), .RN(n663), .Q(n710), 
        .QN(n397) );
  DFFRX1 med_e_delay_r_reg_13__1_ ( .D(n529), .CK(i_clk), .RN(n678), .Q(n12), 
        .QN(n445) );
  DFFRX1 med_e_delay_r_reg_14__1_ ( .D(n521), .CK(i_clk), .RN(n678), .Q(n16), 
        .QN(n453) );
  DFFRX1 med_e_delay_r_reg_12__6_ ( .D(n532), .CK(i_clk), .RN(n681), .Q(n17)
         );
  DFFRX1 med_e_delay_r_reg_13__0_ ( .D(n530), .CK(i_clk), .RN(n678), .Q(n15), 
        .QN(n446) );
  DFFRX1 med_e_delay_r_reg_14__0_ ( .D(n522), .CK(i_clk), .RN(n678), .Q(n13), 
        .QN(n454) );
  DFFRX1 angle_reg_3__0_ ( .D(n506), .CK(i_clk), .RN(n678), .Q(angle[6]), .QN(
        n291) );
  DFFRX1 angle_reg_1__1_ ( .D(n500), .CK(i_clk), .RN(n678), .Q(angle[3]), .QN(
        n297) );
  DFFRX1 angle_reg_0__1_ ( .D(n501), .CK(i_clk), .RN(n677), .Q(angle[1]), .QN(
        n296) );
  DFFRX1 G_reg_0__1_ ( .D(n493), .CK(i_clk), .RN(n675), .Q(G[1]), .QN(n304) );
  DFFRX1 G_reg_0__2_ ( .D(n489), .CK(i_clk), .RN(n674), .Q(G[2]), .QN(n308) );
  DFFRX1 G_reg_2__0_ ( .D(n495), .CK(i_clk), .RN(n675), .Q(G[22]), .QN(n302)
         );
  DFFRX1 G_reg_1__0_ ( .D(n496), .CK(i_clk), .RN(n675), .Q(G[11]), .QN(n301)
         );
  DFFRX1 G_reg_0__0_ ( .D(n497), .CK(i_clk), .RN(n675), .Q(G[0]), .QN(n300) );
  DFFRX1 G_reg_3__0_ ( .D(n498), .CK(i_clk), .RN(n675), .Q(G[33]), .QN(n299)
         );
  DFFRX1 G_reg_3__2_ ( .D(n490), .CK(i_clk), .RN(n674), .Q(G[35]), .QN(n307)
         );
  DFFRX1 G_reg_1__3_ ( .D(n484), .CK(i_clk), .RN(n674), .Q(G[14]), .QN(n313)
         );
  DFFRX1 G_reg_0__3_ ( .D(n485), .CK(i_clk), .RN(n674), .Q(G[3]), .QN(n312) );
  DFFRX1 G_reg_2__3_ ( .D(n483), .CK(i_clk), .RN(n674), .Q(G[25]), .QN(n314)
         );
  DFFRX1 G_reg_3__3_ ( .D(n486), .CK(i_clk), .RN(n674), .Q(G[36]), .QN(n311)
         );
  DFFRX1 G_reg_0__4_ ( .D(n481), .CK(i_clk), .RN(n674), .Q(G[4]), .QN(n316) );
  DFFRX1 G_reg_0__5_ ( .D(n477), .CK(i_clk), .RN(n673), .Q(G[5]), .QN(n320) );
  DFFRX1 G_reg_3__5_ ( .D(n478), .CK(i_clk), .RN(n673), .Q(G[38]), .QN(n319)
         );
  DFFRX1 G_reg_1__6_ ( .D(n472), .CK(i_clk), .RN(n673), .Q(G[17]), .QN(n325)
         );
  DFFRX1 G_reg_0__6_ ( .D(n473), .CK(i_clk), .RN(n673), .Q(G[6]), .QN(n324) );
  DFFRX1 G_reg_0__7_ ( .D(n469), .CK(i_clk), .RN(n673), .Q(G[7]), .QN(n328) );
  DFFRX1 G_reg_0__8_ ( .D(n465), .CK(i_clk), .RN(n672), .Q(G[8]), .QN(n332) );
  DFFRX1 G_reg_1__9_ ( .D(n460), .CK(i_clk), .RN(n672), .Q(G[20]), .QN(n337)
         );
  DFFRX1 G_reg_0__9_ ( .D(n461), .CK(i_clk), .RN(n672), .Q(G[9]), .QN(n336) );
  DFFRX1 G_reg_0__10_ ( .D(n457), .CK(i_clk), .RN(n676), .Q(G[10]), .QN(n340)
         );
  DFFRX1 G_reg_2__5_ ( .D(n475), .CK(i_clk), .RN(n674), .Q(G[27]), .QN(n322)
         );
  DFFRX1 G_reg_1__5_ ( .D(n476), .CK(i_clk), .RN(n673), .Q(G[16]), .QN(n321)
         );
  DFFRX1 G_reg_2__6_ ( .D(n471), .CK(i_clk), .RN(n673), .Q(G[28]), .QN(n326)
         );
  DFFRX1 G_reg_3__6_ ( .D(n474), .CK(i_clk), .RN(n673), .Q(G[39]), .QN(n323)
         );
  DFFRX1 G_reg_2__8_ ( .D(n463), .CK(i_clk), .RN(n673), .Q(G[30]), .QN(n334)
         );
  DFFRX1 G_reg_1__8_ ( .D(n464), .CK(i_clk), .RN(n672), .Q(G[19]), .QN(n333)
         );
  DFFRX1 G_reg_3__8_ ( .D(n466), .CK(i_clk), .RN(n672), .Q(G[41]), .QN(n331)
         );
  DFFRX1 G_reg_2__9_ ( .D(n459), .CK(i_clk), .RN(n672), .Q(G[31]), .QN(n338)
         );
  DFFRX1 G_reg_3__9_ ( .D(n462), .CK(i_clk), .RN(n672), .Q(G[42]), .QN(n335)
         );
  DFFRX1 G_reg_2__10_ ( .D(n455), .CK(i_clk), .RN(n672), .Q(G[32]), .QN(n342)
         );
  DFFRX1 G_reg_1__10_ ( .D(n456), .CK(i_clk), .RN(n672), .Q(G[21]), .QN(n341)
         );
  DFFRX1 G_reg_3__10_ ( .D(n458), .CK(i_clk), .RN(n792), .Q(G[43]), .QN(n339)
         );
  DFFRX1 angle_reg_1__0_ ( .D(n504), .CK(i_clk), .RN(n678), .Q(angle[2]), .QN(
        n293) );
  DFFRX1 angle_reg_0__0_ ( .D(n505), .CK(i_clk), .RN(n678), .Q(angle[0]), .QN(
        n292) );
  DFFRX1 angle_reg_2__0_ ( .D(n503), .CK(i_clk), .RN(n677), .Q(angle[4]), .QN(
        n294) );
  DFFRX1 angle_reg_2__1_ ( .D(n499), .CK(i_clk), .RN(n678), .Q(angle[5]), .QN(
        n298) );
  DFFRX1 angle_reg_3__1_ ( .D(n502), .CK(i_clk), .RN(n675), .Q(angle[7]), .QN(
        n295) );
  DFFRX1 G_reg_2__1_ ( .D(n491), .CK(i_clk), .RN(n675), .Q(G[23]), .QN(n306)
         );
  DFFRX1 G_reg_1__1_ ( .D(n492), .CK(i_clk), .RN(n675), .Q(G[12]), .QN(n305)
         );
  DFFRX1 G_reg_3__1_ ( .D(n494), .CK(i_clk), .RN(n675), .Q(G[34]), .QN(n303)
         );
  DFFRX1 G_reg_2__2_ ( .D(n487), .CK(i_clk), .RN(n675), .Q(G[24]), .QN(n310)
         );
  DFFRX1 G_reg_1__2_ ( .D(n488), .CK(i_clk), .RN(n674), .Q(G[13]), .QN(n309)
         );
  DFFRX1 G_reg_2__4_ ( .D(n479), .CK(i_clk), .RN(n674), .Q(G[26]), .QN(n318)
         );
  DFFRX1 G_reg_1__4_ ( .D(n480), .CK(i_clk), .RN(n674), .Q(G[15]), .QN(n317)
         );
  DFFRX1 G_reg_3__4_ ( .D(n482), .CK(i_clk), .RN(n674), .Q(G[37]), .QN(n315)
         );
  DFFRX1 G_reg_2__7_ ( .D(n467), .CK(i_clk), .RN(n673), .Q(G[29]), .QN(n330)
         );
  DFFRX1 G_reg_1__7_ ( .D(n468), .CK(i_clk), .RN(n673), .Q(G[18]), .QN(n329)
         );
  DFFRX1 G_reg_3__7_ ( .D(n470), .CK(i_clk), .RN(n673), .Q(G[40]), .QN(n327)
         );
  DFFRX1 med_e_r_reg_9__2_ ( .D(med_e_wait_r[65]), .CK(i_clk), .RN(n682), .QN(
        n261) );
  DFFRX1 med_e_r_reg_10__2_ ( .D(med_e_wait_r[72]), .CK(i_clk), .RN(n679), 
        .QN(n181) );
  DFFRX1 med_e_r_reg_8__0_ ( .D(med_e_wait_r[56]), .CK(i_clk), .RN(n683), .QN(
        n251) );
  DFFRX1 med_e_r_reg_11__0_ ( .D(med_e_wait_r[77]), .CK(i_clk), .RN(n681), 
        .QN(n187) );
  DFFRX1 med_e_r_reg_8__3_ ( .D(med_e_wait_r[59]), .CK(i_clk), .RN(n684), .QN(
        n254) );
  DFFRX1 med_e_r_reg_3__6_ ( .D(med_e_wait_r[27]), .CK(i_clk), .RN(n666), .QN(
        n217) );
  DFFRX1 med_e_r_reg_11__4_ ( .D(med_e_wait_r[81]), .CK(i_clk), .RN(n680), 
        .QN(n191) );
  DFFRX1 med_e_r_reg_11__3_ ( .D(med_e_wait_r[80]), .CK(i_clk), .RN(n680), 
        .QN(n190) );
  DFFRX1 med_e_r_reg_8__4_ ( .D(med_e_wait_r[60]), .CK(i_clk), .RN(n684), .QN(
        n255) );
  DFFRX1 med_e_r_reg_8__2_ ( .D(med_e_wait_r[58]), .CK(i_clk), .RN(n684), .QN(
        n253) );
  DFFRX1 med_e_r_reg_11__2_ ( .D(med_e_wait_r[79]), .CK(i_clk), .RN(n680), 
        .QN(n189) );
  DFFRX1 med_e_r_reg_11__1_ ( .D(med_e_wait_r[78]), .CK(i_clk), .RN(n680), 
        .QN(n188) );
  DFFRX1 med_e_r_reg_1__5_ ( .D(med_e_wait_r[12]), .CK(i_clk), .RN(n669), .QN(
        n200) );
  DFFRX1 med_e_r_reg_5__5_ ( .D(med_e_wait_r[40]), .CK(i_clk), .RN(n663), .QN(
        n232) );
  DFFRX1 med_e_r_reg_9__5_ ( .D(med_e_wait_r[68]), .CK(i_clk), .RN(n683), .QN(
        n264) );
  DFFRX1 med_e_r_reg_4__7_ ( .D(n925), .CK(i_clk), .RN(n665), .QN(n226) );
  DFFRX1 med_e_r_reg_1__4_ ( .D(med_e_wait_r[11]), .CK(i_clk), .RN(n669), .QN(
        n199) );
  DFFRX1 med_e_r_reg_1__6_ ( .D(med_e_wait_r[13]), .CK(i_clk), .RN(n669), .QN(
        n201) );
  DFFRX1 med_e_r_reg_5__4_ ( .D(med_e_wait_r[39]), .CK(i_clk), .RN(n663), .QN(
        n231) );
  DFFRX1 med_e_r_reg_5__6_ ( .D(med_e_wait_r[41]), .CK(i_clk), .RN(n663), .QN(
        n233) );
  DFFRX1 med_e_r_reg_5__3_ ( .D(med_e_wait_r[38]), .CK(i_clk), .RN(n663), .QN(
        n230) );
  DFFRX1 med_e_r_reg_9__4_ ( .D(med_e_wait_r[67]), .CK(i_clk), .RN(n683), .QN(
        n263) );
  DFFRX1 med_e_r_reg_9__6_ ( .D(med_e_wait_r[69]), .CK(i_clk), .RN(n683), .QN(
        n265) );
  DFFRX1 med_e_r_reg_9__3_ ( .D(med_e_wait_r[66]), .CK(i_clk), .RN(n682), .QN(
        n262) );
  DFFRX1 med_e_r_reg_10__4_ ( .D(med_e_wait_r[74]), .CK(i_clk), .RN(n679), 
        .QN(n183) );
  DFFRX1 med_e_r_reg_3__7_ ( .D(n923), .CK(i_clk), .RN(n666), .QN(n218) );
  DFFRX1 med_e_r_reg_11__7_ ( .D(n931), .CK(i_clk), .RN(n679), .QN(n194) );
  DFFRX1 med_e_r_reg_1__7_ ( .D(n922), .CK(i_clk), .RN(n669), .QN(n202) );
  DFFRX1 med_e_r_reg_10__7_ ( .D(n932), .CK(i_clk), .RN(n682), .QN(n186) );
  DFFRX1 med_e_r_reg_10__3_ ( .D(med_e_wait_r[73]), .CK(i_clk), .RN(n679), 
        .QN(n182) );
  DFFRX1 med_e_r_reg_10__1_ ( .D(med_e_wait_r[71]), .CK(i_clk), .RN(n679), 
        .QN(n180) );
  DFFRX1 med_e_r_reg_10__6_ ( .D(med_e_wait_r[76]), .CK(i_clk), .RN(n682), 
        .QN(n185) );
  DFFRX1 med_e_r_reg_10__5_ ( .D(med_e_wait_r[75]), .CK(i_clk), .RN(n679), 
        .QN(n184) );
  DFFRX1 med_e_r_reg_3__5_ ( .D(med_e_wait_r[26]), .CK(i_clk), .RN(n666), .QN(
        n216) );
  DFFRX1 med_e_r_reg_3__4_ ( .D(med_e_wait_r[25]), .CK(i_clk), .RN(n666), .QN(
        n215) );
  DFFRX1 med_e_r_reg_3__3_ ( .D(med_e_wait_r[24]), .CK(i_clk), .RN(n666), .QN(
        n214) );
  DFFRX1 med_e_r_reg_3__2_ ( .D(med_e_wait_r[23]), .CK(i_clk), .RN(n665), .QN(
        n213) );
  DFFRX1 med_e_r_reg_3__1_ ( .D(med_e_wait_r[22]), .CK(i_clk), .RN(n665), .QN(
        n212) );
  DFFRX1 med_e_r_reg_3__0_ ( .D(med_e_wait_r[21]), .CK(i_clk), .RN(n665), .QN(
        n211) );
  DFFRX1 med_e_r_reg_0__7_ ( .D(n921), .CK(i_clk), .RN(n671), .QN(n178) );
  DFFRX1 med_e_r_reg_0__6_ ( .D(med_e_wait_r[6]), .CK(i_clk), .RN(n670), .QN(
        n177) );
  DFFRX1 med_e_r_reg_0__5_ ( .D(med_e_wait_r[5]), .CK(i_clk), .RN(n670), .QN(
        n176) );
  DFFRX1 med_e_r_reg_0__4_ ( .D(med_e_wait_r[4]), .CK(i_clk), .RN(n670), .QN(
        n175) );
  DFFRX1 med_e_r_reg_0__3_ ( .D(med_e_wait_r[3]), .CK(i_clk), .RN(n670), .QN(
        n174) );
  DFFRX1 med_e_r_reg_0__2_ ( .D(med_e_wait_r[2]), .CK(i_clk), .RN(n670), .QN(
        n173) );
  DFFRX1 med_e_r_reg_0__1_ ( .D(med_e_wait_r[1]), .CK(i_clk), .RN(n670), .QN(
        n172) );
  DFFRX1 med_e_r_reg_0__0_ ( .D(med_e_wait_r[0]), .CK(i_clk), .RN(n669), .QN(
        n171) );
  DFFRX1 med_e_r_reg_2__5_ ( .D(med_e_wait_r[19]), .CK(i_clk), .RN(n667), .QN(
        n208) );
  DFFRX1 med_e_r_reg_2__4_ ( .D(med_e_wait_r[18]), .CK(i_clk), .RN(n667), .QN(
        n207) );
  DFFRX1 med_e_r_reg_2__3_ ( .D(med_e_wait_r[17]), .CK(i_clk), .RN(n667), .QN(
        n206) );
  DFFRX1 med_e_r_reg_2__2_ ( .D(med_e_wait_r[16]), .CK(i_clk), .RN(n667), .QN(
        n205) );
  DFFRX1 med_e_r_reg_2__1_ ( .D(med_e_wait_r[15]), .CK(i_clk), .RN(n667), .QN(
        n204) );
  DFFRX1 med_e_r_reg_9__1_ ( .D(med_e_wait_r[64]), .CK(i_clk), .RN(n682), .QN(
        n260) );
  DFFRX1 med_e_r_reg_2__0_ ( .D(med_e_wait_r[14]), .CK(i_clk), .RN(n667), .QN(
        n203) );
  DFFRX1 med_e_r_reg_6__0_ ( .D(med_e_wait_r[42]), .CK(i_clk), .RN(n661), .QN(
        n235) );
  DFFRX1 med_e_r_reg_9__0_ ( .D(med_e_wait_r[63]), .CK(i_clk), .RN(n682), .QN(
        n259) );
  DFFRX1 med_e_r_reg_10__0_ ( .D(med_e_wait_r[70]), .CK(i_clk), .RN(n679), 
        .QN(n179) );
  DFFRX1 med_e_r_reg_11__6_ ( .D(med_e_wait_r[83]), .CK(i_clk), .RN(n680), 
        .QN(n193) );
  DFFRX1 med_e_r_reg_11__5_ ( .D(med_e_wait_r[82]), .CK(i_clk), .RN(n680), 
        .QN(n192) );
  DFFRX1 med_e_r_reg_8__7_ ( .D(n929), .CK(i_clk), .RN(n792), .QN(n258) );
  DFFRX1 med_e_r_reg_8__6_ ( .D(med_e_wait_r[62]), .CK(i_clk), .RN(n792), .QN(
        n257) );
  DFFRX1 med_e_r_reg_8__5_ ( .D(med_e_wait_r[61]), .CK(i_clk), .RN(n684), .QN(
        n256) );
  DFFRX1 med_e_r_reg_9__7_ ( .D(n930), .CK(i_clk), .RN(n683), .QN(n266) );
  DFFRX1 med_e_delay_r_reg_15__5_ ( .D(n509), .CK(i_clk), .RN(n677), .Q(n58), 
        .QN(n288) );
  DFFRX1 med_e_delay_r_reg_15__4_ ( .D(n510), .CK(i_clk), .RN(n677), .Q(n73), 
        .QN(n287) );
  DFFRX1 med_e_delay_r_reg_15__6_ ( .D(n508), .CK(i_clk), .RN(n677), .Q(n57), 
        .QN(n289) );
  DFFRX1 med_e_delay_r_reg_12__0_ ( .D(n538), .CK(i_clk), .RN(n676), .Q(n55), 
        .QN(n438) );
  DFFRX1 med_e_delay_r_reg_15__2_ ( .D(n512), .CK(i_clk), .RN(n677), .Q(n34), 
        .QN(n285) );
  DFFRX1 med_e_delay_r_reg_14__5_ ( .D(n517), .CK(i_clk), .RN(n676), .Q(n31), 
        .QN(n449) );
  DFFRX1 med_e_delay_r_reg_12__1_ ( .D(n537), .CK(i_clk), .RN(n676), .Q(n56), 
        .QN(n437) );
  DFFRX1 med_e_delay_r_reg_15__7_ ( .D(n507), .CK(i_clk), .RN(n677), .QN(n290)
         );
  DFFRX1 med_e_delay_r_reg_12__7_ ( .D(n531), .CK(i_clk), .RN(n681), .QN(n431)
         );
  DFFRX1 med_e_delay_r_reg_15__0_ ( .D(n514), .CK(i_clk), .RN(n677), .Q(n33), 
        .QN(n283) );
  DFFRX1 med_e_delay_r_reg_13__2_ ( .D(n528), .CK(i_clk), .RN(n676), .Q(n28), 
        .QN(n444) );
  DFFRX1 med_e_delay_r_reg_13__5_ ( .D(n525), .CK(i_clk), .RN(n676), .Q(n38), 
        .QN(n441) );
  DFFRX1 med_e_delay_r_reg_15__1_ ( .D(n513), .CK(i_clk), .RN(n677), .Q(n59), 
        .QN(n284) );
  DFFRX1 med_e_delay_r_reg_14__4_ ( .D(n518), .CK(i_clk), .RN(n676), .Q(n37), 
        .QN(n450) );
  DFFRX1 med_e_delay_r_reg_4__7_ ( .D(n595), .CK(i_clk), .RN(n665), .Q(n67), 
        .QN(n375) );
  DFFRX1 med_e_delay_r_reg_12__4_ ( .D(n534), .CK(i_clk), .RN(n681), .Q(n71), 
        .QN(n434) );
  DFFRX1 med_e_delay_r_reg_0__4_ ( .D(n630), .CK(i_clk), .RN(n670), .Q(n86), 
        .QN(n271) );
  DFFRX1 med_e_delay_r_reg_12__5_ ( .D(n533), .CK(i_clk), .RN(n681), .Q(n72), 
        .QN(n433) );
  DFFRX1 med_e_delay_r_reg_15__3_ ( .D(n511), .CK(i_clk), .RN(n677), .Q(n32), 
        .QN(n286) );
  DFFRX1 med_e_delay_r_reg_13__7_ ( .D(n523), .CK(i_clk), .RN(n676), .QN(n439)
         );
  DFFRX1 med_e_delay_r_reg_12__3_ ( .D(n535), .CK(i_clk), .RN(n681), .Q(n54), 
        .QN(n435) );
  DFFRX1 med_e_delay_r_reg_13__4_ ( .D(n526), .CK(i_clk), .RN(n676), .Q(n39), 
        .QN(n442) );
  DFFRX1 med_e_delay_r_reg_14__2_ ( .D(n520), .CK(i_clk), .RN(n677), .Q(n25), 
        .QN(n452) );
  DFFRX1 med_e_delay_r_reg_3__7_ ( .D(n603), .CK(i_clk), .RN(n666), .Q(n80), 
        .QN(n367) );
  DFFRX1 med_e_delay_r_reg_2__5_ ( .D(n613), .CK(i_clk), .RN(n667), .Q(n40), 
        .QN(n361) );
  DFFRX1 med_e_delay_r_reg_3__5_ ( .D(n605), .CK(i_clk), .RN(n666), .Q(n91), 
        .QN(n369) );
  DFFRX1 med_e_delay_r_reg_1__4_ ( .D(n622), .CK(i_clk), .RN(n669), .Q(n43), 
        .QN(n354) );
  DFFRX1 med_e_delay_r_reg_11__2_ ( .D(n544), .CK(i_clk), .RN(n680), .Q(n48), 
        .QN(n428) );
  DFFRX1 med_e_delay_r_reg_7__6_ ( .D(n572), .CK(i_clk), .RN(n792), .Q(n64), 
        .QN(n400) );
  DFFRX1 med_e_delay_r_reg_14__7_ ( .D(n515), .CK(i_clk), .RN(n676), .QN(n447)
         );
  DFFRX1 med_e_delay_r_reg_2__4_ ( .D(n614), .CK(i_clk), .RN(n667), .Q(n63), 
        .QN(n362) );
  DFFRX1 med_e_delay_r_reg_3__4_ ( .D(n606), .CK(i_clk), .RN(n666), .Q(n90), 
        .QN(n370) );
  DFFRX1 med_e_delay_r_reg_4__4_ ( .D(n598), .CK(i_clk), .RN(n664), .Q(n52), 
        .QN(n378) );
  DFFRX1 med_e_delay_r_reg_0__5_ ( .D(n629), .CK(i_clk), .RN(n670), .Q(n87), 
        .QN(n272) );
  DFFRX1 med_e_delay_r_reg_13__3_ ( .D(n527), .CK(i_clk), .RN(n676), .Q(n27), 
        .QN(n443) );
  DFFRX1 med_e_delay_r_reg_0__2_ ( .D(n632), .CK(i_clk), .RN(n670), .Q(n85), 
        .QN(n269) );
  DFFRX1 med_e_delay_r_reg_3__3_ ( .D(n607), .CK(i_clk), .RN(n666), .Q(n89), 
        .QN(n371) );
  DFFRX1 med_e_delay_r_reg_0__1_ ( .D(n633), .CK(i_clk), .RN(n670), .Q(n84), 
        .QN(n268) );
  DFFRX1 med_e_delay_r_reg_14__3_ ( .D(n519), .CK(i_clk), .RN(n677), .Q(n26), 
        .QN(n451) );
  DFFRX1 med_e_delay_r_reg_0__6_ ( .D(n628), .CK(i_clk), .RN(n670), .Q(n95), 
        .QN(n273) );
  DFFRX1 med_e_delay_r_reg_5__7_ ( .D(n587), .CK(i_clk), .RN(n663), .Q(n30), 
        .QN(n383) );
  DFFRX1 med_e_delay_r_reg_11__4_ ( .D(n542), .CK(i_clk), .RN(n680), .Q(n50), 
        .QN(n426) );
  DFFRX1 med_e_delay_r_reg_4__2_ ( .D(n600), .CK(i_clk), .RN(n664), .Q(n75), 
        .QN(n380) );
  DFFRX1 med_e_delay_r_reg_3__0_ ( .D(n610), .CK(i_clk), .RN(n665), .Q(n94), 
        .QN(n374) );
  DFFRX1 med_e_delay_r_reg_3__6_ ( .D(n604), .CK(i_clk), .RN(n666), .Q(n79), 
        .QN(n368) );
  DFFRX1 med_e_delay_r_reg_2__2_ ( .D(n616), .CK(i_clk), .RN(n667), .Q(n70), 
        .QN(n364) );
  DFFRX1 med_e_delay_r_reg_3__1_ ( .D(n609), .CK(i_clk), .RN(n665), .Q(n88), 
        .QN(n373) );
  DFFRX1 med_e_delay_r_reg_7__3_ ( .D(n575), .CK(i_clk), .RN(n792), .Q(n60), 
        .QN(n403) );
  DFFRX1 med_e_delay_r_reg_0__3_ ( .D(n631), .CK(i_clk), .RN(n670), .Q(n83), 
        .QN(n270) );
  DFFRX1 med_e_delay_r_reg_4__3_ ( .D(n599), .CK(i_clk), .RN(n664), .Q(n51), 
        .QN(n379) );
  DFFRX1 med_e_delay_r_reg_1__5_ ( .D(n621), .CK(i_clk), .RN(n669), .Q(n36), 
        .QN(n353) );
  DFFRX1 med_e_delay_r_reg_7__7_ ( .D(n571), .CK(i_clk), .RN(n661), .Q(n69), 
        .QN(n399) );
  DFFRX1 med_e_delay_r_reg_1__2_ ( .D(n624), .CK(i_clk), .RN(n668), .Q(n47), 
        .QN(n356) );
  DFFRX1 med_e_delay_r_reg_11__1_ ( .D(n545), .CK(i_clk), .RN(n680), .Q(n42), 
        .QN(n429) );
  DFFRX1 med_e_delay_r_reg_7__5_ ( .D(n573), .CK(i_clk), .RN(n792), .Q(n46), 
        .QN(n401) );
  DFFRX1 med_e_delay_r_reg_1__1_ ( .D(n625), .CK(i_clk), .RN(n668), .Q(n44), 
        .QN(n357) );
  DFFRX1 med_e_delay_r_reg_2__3_ ( .D(n615), .CK(i_clk), .RN(n667), .Q(n62), 
        .QN(n363) );
  DFFRX1 med_e_delay_r_reg_4__1_ ( .D(n601), .CK(i_clk), .RN(n664), .Q(n66), 
        .QN(n381) );
  DFFRX1 med_e_delay_r_reg_2__6_ ( .D(n612), .CK(i_clk), .RN(n668), .Q(n53), 
        .QN(n360) );
  DFFRX1 med_e_delay_r_reg_2__0_ ( .D(n618), .CK(i_clk), .RN(n667), .Q(n76), 
        .QN(n366) );
  DFFRX1 med_e_delay_r_reg_7__2_ ( .D(n576), .CK(i_clk), .RN(n792), .Q(n68), 
        .QN(n404) );
  DFFRX1 med_e_delay_r_reg_2__1_ ( .D(n617), .CK(i_clk), .RN(n667), .Q(n61), 
        .QN(n365) );
  DFFRX1 med_e_delay_r_reg_1__3_ ( .D(n623), .CK(i_clk), .RN(n668), .Q(n45), 
        .QN(n355) );
  DFFRX1 med_e_delay_r_reg_11__3_ ( .D(n543), .CK(i_clk), .RN(n680), .Q(n41), 
        .QN(n427) );
  DFFRX1 med_e_delay_r_reg_6__7_ ( .D(n579), .CK(i_clk), .RN(n662), .Q(n29), 
        .QN(n391) );
  DFFRX1 med_e_delay_r_reg_7__0_ ( .D(n578), .CK(i_clk), .RN(n792), .Q(n65), 
        .QN(n406) );
  DFFRX1 med_e_delay_r_reg_8__7_ ( .D(n563), .CK(i_clk), .RN(n792), .Q(n282), 
        .QN(n14) );
  DFFRX1 med_e_delay_r_reg_8__4_ ( .D(n566), .CK(i_clk), .RN(n684), .Q(n279), 
        .QN(n19) );
  DFFRX1 med_e_delay_r_reg_10__5_ ( .D(n549), .CK(i_clk), .RN(n681), .Q(n723), 
        .QN(n417) );
  DFFRX1 cs_reg_2_ ( .D(ns[2]), .CK(i_clk), .RN(n671), .Q(n168), .QN(n345) );
  DFFRXL med_e_r_reg_6__1_ ( .D(med_e_wait_r[43]), .CK(i_clk), .RN(n661), .QN(
        n236) );
  DFFRXL med_e_r_reg_1__3_ ( .D(med_e_wait_r[10]), .CK(i_clk), .RN(n668), .QN(
        n198) );
  DFFRXL med_e_r_reg_1__2_ ( .D(med_e_wait_r[9]), .CK(i_clk), .RN(n668), .QN(
        n197) );
  DFFRXL med_e_r_reg_1__1_ ( .D(med_e_wait_r[8]), .CK(i_clk), .RN(n668), .QN(
        n196) );
  DFFRXL med_e_r_reg_1__0_ ( .D(med_e_wait_r[7]), .CK(i_clk), .RN(n668), .QN(
        n195) );
  DFFRXL med_e_r_reg_2__7_ ( .D(n924), .CK(i_clk), .RN(n668), .QN(n210) );
  DFFRXL med_e_r_reg_2__6_ ( .D(med_e_wait_r[20]), .CK(i_clk), .RN(n668), .QN(
        n209) );
  DFFRXL med_e_r_reg_8__1_ ( .D(med_e_wait_r[57]), .CK(i_clk), .RN(n683), .QN(
        n252) );
  DFFRXL med_e_r_reg_4__6_ ( .D(med_e_wait_r[34]), .CK(i_clk), .RN(n665), .QN(
        n225) );
  DFFRXL med_e_r_reg_6__4_ ( .D(med_e_wait_r[46]), .CK(i_clk), .RN(n661), .QN(
        n239) );
  DFFRXL med_e_r_reg_6__3_ ( .D(med_e_wait_r[45]), .CK(i_clk), .RN(n661), .QN(
        n238) );
  DFFRXL med_e_r_reg_6__2_ ( .D(med_e_wait_r[44]), .CK(i_clk), .RN(n661), .QN(
        n237) );
  DFFRXL med_e_r_reg_7__4_ ( .D(med_e_wait_r[53]), .CK(i_clk), .RN(n792), .QN(
        n247) );
  DFFRXL med_e_r_reg_7__3_ ( .D(med_e_wait_r[52]), .CK(i_clk), .RN(n792), .QN(
        n246) );
  DFFRXL med_e_r_reg_7__2_ ( .D(med_e_wait_r[51]), .CK(i_clk), .RN(n792), .QN(
        n245) );
  DFFRXL med_e_r_reg_7__1_ ( .D(med_e_wait_r[50]), .CK(i_clk), .RN(n792), .QN(
        n244) );
  DFFRXL med_e_r_reg_7__0_ ( .D(med_e_wait_r[49]), .CK(i_clk), .RN(n792), .QN(
        n243) );
  DFFRXL med_e_r_reg_4__5_ ( .D(med_e_wait_r[33]), .CK(i_clk), .RN(n665), .QN(
        n224) );
  DFFRXL med_e_r_reg_4__4_ ( .D(med_e_wait_r[32]), .CK(i_clk), .RN(n664), .QN(
        n223) );
  DFFRXL med_e_r_reg_4__3_ ( .D(med_e_wait_r[31]), .CK(i_clk), .RN(n664), .QN(
        n222) );
  DFFRXL med_e_r_reg_4__2_ ( .D(med_e_wait_r[30]), .CK(i_clk), .RN(n664), .QN(
        n221) );
  DFFRXL med_e_r_reg_4__1_ ( .D(med_e_wait_r[29]), .CK(i_clk), .RN(n664), .QN(
        n220) );
  DFFRXL med_e_r_reg_5__7_ ( .D(n926), .CK(i_clk), .RN(n664), .QN(n234) );
  DFFRXL med_e_r_reg_5__2_ ( .D(med_e_wait_r[37]), .CK(i_clk), .RN(n662), .QN(
        n229) );
  DFFRXL med_e_r_reg_5__1_ ( .D(med_e_wait_r[36]), .CK(i_clk), .RN(n662), .QN(
        n228) );
  DFFRXL med_e_r_reg_5__0_ ( .D(med_e_wait_r[35]), .CK(i_clk), .RN(n662), .QN(
        n227) );
  DFFRXL med_e_r_reg_6__7_ ( .D(n928), .CK(i_clk), .RN(n662), .QN(n242) );
  DFFRXL med_e_r_reg_6__6_ ( .D(med_e_wait_r[48]), .CK(i_clk), .RN(n662), .QN(
        n241) );
  DFFRXL med_e_r_reg_6__5_ ( .D(med_e_wait_r[47]), .CK(i_clk), .RN(n662), .QN(
        n240) );
  DFFRXL med_e_r_reg_7__7_ ( .D(n927), .CK(i_clk), .RN(n661), .QN(n250) );
  DFFRXL med_e_r_reg_7__6_ ( .D(med_e_wait_r[55]), .CK(i_clk), .RN(n661), .QN(
        n249) );
  DFFRXL med_e_r_reg_7__5_ ( .D(med_e_wait_r[54]), .CK(i_clk), .RN(n792), .QN(
        n248) );
  DFFRHQX8 cnt_reg_1_ ( .D(N110), .CK(i_clk), .RN(n671), .Q(n641) );
  DFFRX1 med_e_delay_r_reg_12__2_ ( .D(n536), .CK(i_clk), .RN(n679), .Q(n74), 
        .QN(n436) );
  DFFRX2 med_e_delay_r_reg_9__6_ ( .D(n556), .CK(i_clk), .RN(n683), .Q(n49), 
        .QN(n408) );
  DFFRX1 cs_reg_0_ ( .D(ns[0]), .CK(i_clk), .RN(n671), .Q(n348), .QN(n343) );
  DFFRHQX1 cnt_reg_5_ ( .D(N114), .CK(i_clk), .RN(n671), .Q(n170) );
  DFFRX2 med_e_delay_r_reg_5__3_ ( .D(n591), .CK(i_clk), .RN(n663), .Q(n1140), 
        .QN(n387) );
  DFFRX2 med_e_delay_r_reg_6__3_ ( .D(n583), .CK(i_clk), .RN(n661), .Q(n92), 
        .QN(n395) );
  DFFRX2 med_e_delay_r_reg_8__1_ ( .D(n569), .CK(i_clk), .RN(n683), .Q(n276), 
        .QN(n20) );
  DFFRX2 med_e_delay_r_reg_6__5_ ( .D(n581), .CK(i_clk), .RN(n662), .Q(n78), 
        .QN(n393) );
  DFFRX2 med_e_delay_r_reg_8__5_ ( .D(n565), .CK(i_clk), .RN(n684), .Q(n280), 
        .QN(n161) );
  DFFRX2 med_e_delay_r_reg_2__7_ ( .D(n611), .CK(i_clk), .RN(n668), .Q(n160), 
        .QN(n359) );
  DFFRX1 med_e_delay_r_reg_5__4_ ( .D(n590), .CK(i_clk), .RN(n663), .Q(n842), 
        .QN(n386) );
  DFFRHQX1 med_e_delay_r_reg_9__5_ ( .D(n557), .CK(i_clk), .RN(n683), .Q(n155)
         );
  DFFRHQX8 cnt_reg_0_ ( .D(N109), .CK(i_clk), .RN(n672), .Q(cnt[0]) );
  DFFRHQX1 med_e_delay_r_reg_10__3_ ( .D(n551), .CK(i_clk), .RN(n679), .Q(n152) );
  DFFRHQX1 med_e_delay_r_reg_9__4_ ( .D(n558), .CK(i_clk), .RN(n682), .Q(n150)
         );
  DFFRX2 med_e_delay_r_reg_9__1_ ( .D(n561), .CK(i_clk), .RN(n682), .Q(n162), 
        .QN(n413) );
  DFFRX2 med_e_delay_r_reg_6__6_ ( .D(n580), .CK(i_clk), .RN(n662), .Q(n93), 
        .QN(n392) );
  DFFRHQX1 med_e_delay_r_reg_10__1_ ( .D(n553), .CK(i_clk), .RN(n680), .Q(n147) );
  DFFRX2 med_e_delay_r_reg_9__0_ ( .D(n562), .CK(i_clk), .RN(n682), .Q(n77), 
        .QN(n414) );
  DFFRX2 med_e_delay_r_reg_8__0_ ( .D(n570), .CK(i_clk), .RN(n683), .Q(n275), 
        .QN(n23) );
  DFFRHQX1 med_e_delay_r_reg_6__4_ ( .D(n582), .CK(i_clk), .RN(n661), .Q(n145)
         );
  DFFRHQX1 cnt_reg_3_ ( .D(N112), .CK(i_clk), .RN(n671), .Q(n143) );
  DFFRX2 med_e_delay_r_reg_6__0_ ( .D(n586), .CK(i_clk), .RN(n661), .Q(n142), 
        .QN(n398) );
  DFFRX2 med_e_delay_r_reg_13__6_ ( .D(n524), .CK(i_clk), .RN(n678), .Q(n140)
         );
  DFFRX2 med_e_delay_r_reg_14__6_ ( .D(n516), .CK(i_clk), .RN(n676), .Q(n139), 
        .QN(n448) );
  DFFRX2 med_e_delay_r_reg_5__1_ ( .D(n593), .CK(i_clk), .RN(n662), .Q(n136), 
        .QN(n389) );
  DFFRX2 med_e_delay_r_reg_4__6_ ( .D(n596), .CK(i_clk), .RN(n665), .Q(n135), 
        .QN(n376) );
  DFFRHQX1 cs_reg_1_ ( .D(ns[1]), .CK(i_clk), .RN(n671), .Q(n133) );
  DFFRX2 med_e_delay_r_reg_9__2_ ( .D(n560), .CK(i_clk), .RN(n682), .Q(n132), 
        .QN(n412) );
  DFFRX2 med_e_delay_r_reg_8__2_ ( .D(n568), .CK(i_clk), .RN(n683), .Q(n277), 
        .QN(n105) );
  DFFRX2 med_e_delay_r_reg_1__7_ ( .D(n619), .CK(i_clk), .RN(n669), .Q(n131), 
        .QN(n351) );
  DFFRX2 med_e_delay_r_reg_0__7_ ( .D(n627), .CK(i_clk), .RN(n671), .Q(n130)
         );
  DFFRHQX1 med_e_delay_r_reg_10__4_ ( .D(n550), .CK(i_clk), .RN(n679), .Q(n128) );
  DFFRHQX1 med_sobel_r_reg ( .D(n344), .CK(i_clk), .RN(n671), .Q(n126) );
  DFFRX2 med_e_delay_r_reg_1__0_ ( .D(n626), .CK(i_clk), .RN(n668), .Q(n125), 
        .QN(n358) );
  DFFRX2 med_e_delay_r_reg_0__0_ ( .D(n634), .CK(i_clk), .RN(n669), .Q(n124)
         );
  DFFRX2 med_e_delay_r_reg_8__6_ ( .D(n564), .CK(i_clk), .RN(n665), .Q(n281), 
        .QN(n24) );
  DFFRHQX1 med_e_delay_r_reg_6__2_ ( .D(n584), .CK(i_clk), .RN(n661), .Q(n118)
         );
  DFFRX2 med_e_delay_r_reg_5__2_ ( .D(n592), .CK(i_clk), .RN(n662), .Q(n115), 
        .QN(n388) );
  DFFRX2 med_e_delay_r_reg_3__2_ ( .D(n608), .CK(i_clk), .RN(n665), .Q(n1130)
         );
  DFFRX2 out_valid_r_reg ( .D(ns[2]), .CK(i_clk), .RN(n671), .Q(o_out_valid), 
        .QN(n1120) );
  DFFRHQX1 cnt_reg_4_ ( .D(N113), .CK(i_clk), .RN(n671), .Q(n1100) );
  DFFRX2 med_e_delay_r_reg_11__7_ ( .D(n539), .CK(i_clk), .RN(n680), .Q(n1090), 
        .QN(n423) );
  DFFRX2 med_e_delay_r_reg_10__7_ ( .D(n547), .CK(i_clk), .RN(n682), .Q(n108), 
        .QN(n415) );
  DFFRX2 med_e_delay_r_reg_9__3_ ( .D(n559), .CK(i_clk), .RN(n682), .Q(n81), 
        .QN(n411) );
  DFFRX1 med_e_delay_r_reg_5__6_ ( .D(n588), .CK(i_clk), .RN(n663), .Q(n845), 
        .QN(n384) );
  DFFRX1 med_e_delay_r_reg_7__4_ ( .D(n574), .CK(i_clk), .RN(n792), .Q(n834), 
        .QN(n402) );
  DFFRX1 med_e_delay_r_reg_7__1_ ( .D(n577), .CK(i_clk), .RN(n792), .Q(n830), 
        .QN(n405) );
  DFFRX1 med_e_delay_r_reg_5__0_ ( .D(n594), .CK(i_clk), .RN(n662), .Q(n837), 
        .QN(n390) );
  DFFRX2 med_e_delay_r_reg_10__0_ ( .D(n554), .CK(i_clk), .RN(n679), .Q(n35), 
        .QN(n422) );
  DFFRX2 med_e_delay_r_reg_11__0_ ( .D(n546), .CK(i_clk), .RN(n681), .Q(n103), 
        .QN(n430) );
  DFFRX2 med_e_delay_r_reg_8__3_ ( .D(n567), .CK(i_clk), .RN(n684), .Q(n278), 
        .QN(n18) );
  DFFRX2 med_e_delay_r_reg_10__2_ ( .D(n552), .CK(i_clk), .RN(n679), .Q(n82), 
        .QN(n420) );
  DFFRX2 med_e_delay_r_reg_1__6_ ( .D(n620), .CK(i_clk), .RN(n669), .Q(n96), 
        .QN(n352) );
  DFFRX2 med_e_delay_r_reg_4__5_ ( .D(n597), .CK(i_clk), .RN(n664), .Q(n99), 
        .QN(n377) );
  DFFRX2 med_e_delay_r_reg_9__7_ ( .D(n555), .CK(i_clk), .RN(n683), .Q(n98), 
        .QN(n407) );
  DFFRX2 med_e_delay_r_reg_10__6_ ( .D(n548), .CK(i_clk), .RN(n684), .Q(n727), 
        .QN(n416) );
  DFFRX2 med_e_delay_r_reg_5__5_ ( .D(n589), .CK(i_clk), .RN(n663), .Q(n97), 
        .QN(n385) );
  DFFRX2 med_e_delay_r_reg_11__6_ ( .D(n540), .CK(i_clk), .RN(n681), .Q(n22), 
        .QN(n424) );
  DFFRX4 med_e_delay_r_reg_4__0_ ( .D(n602), .CK(i_clk), .RN(n664), .Q(n848), 
        .QN(n382) );
  DFFRX2 med_e_r_reg_4__0_ ( .D(med_e_wait_r[28]), .CK(i_clk), .RN(n664), .QN(
        n219) );
  DFFRX2 cnt_reg_2_ ( .D(N111), .CK(i_clk), .RN(n671), .Q(cnt[2]), .QN(n349)
         );
  OAI22X4 U3 ( .A0(n393), .A1(n758), .B0(n401), .B1(n123), .Y(n724) );
  BUFX12 U4 ( .A(n738), .Y(n660) );
  MX2X1 U5 ( .A(n60), .B(med_e_wait_r[52]), .S0(n734), .Y(n575) );
  INVX12 U6 ( .A(n715), .Y(n716) );
  CLKAND2X2 U7 ( .A(n916), .B(n350), .Y(N109) );
  BUFX8 U8 ( .A(data_d_r[7]), .Y(n689) );
  CLKINVX6 U9 ( .A(n696), .Y(data_h_r[0]) );
  NOR2X2 U10 ( .A(n649), .B(n919), .Y(N111) );
  MXI2X1 U11 ( .A(n244), .B(n861), .S0(n659), .Y(med_e_wait_r[50]) );
  MX2X1 U12 ( .A(n834), .B(med_e_wait_r[53]), .S0(n734), .Y(n574) );
  CLKMX2X4 U13 ( .A(n845), .B(med_e_wait_r[41]), .S0(n732), .Y(n588) );
  OA22X2 U14 ( .A0(n417), .A1(n756), .B0(n425), .B1(n907), .Y(n814) );
  OAI221X4 U15 ( .A0(n283), .A1(n776), .B0(n454), .B1(n772), .C0(n809), .Y(
        data_i_r[0]) );
  INVX3 U16 ( .A(n149), .Y(n166) );
  AOI2BB2X2 U17 ( .B0(n710), .B1(n745), .A0N(n742), .A1N(n405), .Y(n831) );
  BUFX6 U18 ( .A(data_g_r[0]), .Y(n712) );
  CLKBUFX12 U19 ( .A(n638), .Y(n740) );
  OR2X4 U20 ( .A(n416), .B(n750), .Y(n418) );
  OAI221X4 U21 ( .A0(n415), .A1(n776), .B0(n407), .B1(n774), .C0(n847), .Y(
        \data_e_r[7] ) );
  NAND2X8 U22 ( .A(n641), .B(n807), .Y(n808) );
  AND3X6 U23 ( .A(n1100), .B(n788), .C(n656), .Y(n650) );
  OR2X4 U24 ( .A(n386), .B(n776), .Y(n3) );
  OR2X4 U25 ( .A(n378), .B(n767), .Y(n5) );
  NAND3X2 U26 ( .A(n3), .B(n5), .C(n901), .Y(data_a_r[4]) );
  CLKINVX8 U27 ( .A(n705), .Y(data_g_r[6]) );
  BUFX6 U28 ( .A(n775), .Y(n767) );
  INVX3 U29 ( .A(n128), .Y(n129) );
  BUFX16 U30 ( .A(n773), .Y(n765) );
  INVX3 U31 ( .A(n118), .Y(n119) );
  NAND2X8 U32 ( .A(n642), .B(n350), .Y(n645) );
  INVX3 U33 ( .A(n169), .Y(n643) );
  INVX12 U34 ( .A(n163), .Y(n169) );
  CLKAND2X3 U35 ( .A(n10), .B(n133), .Y(n274) );
  NOR2X4 U36 ( .A(n946), .B(n168), .Y(n10) );
  INVX20 U37 ( .A(n350), .Y(n807) );
  BUFX20 U38 ( .A(n743), .Y(n702) );
  INVX8 U39 ( .A(data_i_r[4]), .Y(n7) );
  CLKINVX12 U40 ( .A(n7), .Y(n8) );
  OAI221X2 U41 ( .A0(n287), .A1(n780), .B0(n450), .B1(n158), .C0(n813), .Y(
        data_i_r[4]) );
  CLKINVX12 U42 ( .A(n916), .Y(n919) );
  INVX3 U43 ( .A(n155), .Y(n156) );
  OR2X4 U44 ( .A(n377), .B(n769), .Y(n410) );
  OR2X4 U45 ( .A(n385), .B(n776), .Y(n409) );
  CLKINVX6 U46 ( .A(n170), .Y(n267) );
  AOI221X4 U47 ( .A0(n140), .A1(n788), .B0(n17), .B1(n440), .C0(n706), .Y(n705) );
  OA22X4 U48 ( .A0(n272), .A1(n752), .B0(n353), .B1(n740), .Y(n903) );
  OAI2BB2X1 U49 ( .B0(n408), .B1(n740), .A0N(n163), .A1N(n281), .Y(n706) );
  INVX16 U50 ( .A(n757), .Y(n163) );
  BUFX12 U51 ( .A(data_i_r[1]), .Y(n720) );
  NAND3X6 U52 ( .A(n409), .B(n410), .C(n903), .Y(data_a_r[5]) );
  INVX8 U53 ( .A(n432), .Y(n946) );
  NOR2BX4 U54 ( .AN(N107), .B(n919), .Y(N113) );
  OR3X4 U55 ( .A(n914), .B(n154), .C(n346), .Y(ns[2]) );
  INVX4 U56 ( .A(n914), .Y(n920) );
  NAND4BX4 U57 ( .AN(cnt[2]), .B(n911), .C(n656), .D(n274), .Y(n912) );
  INVX20 U58 ( .A(n783), .Y(n778) );
  BUFX3 U59 ( .A(n756), .Y(n753) );
  AND2X4 U60 ( .A(n144), .B(n267), .Y(n656) );
  INVX3 U61 ( .A(n349), .Y(n909) );
  BUFX8 U62 ( .A(n774), .Y(n772) );
  BUFX12 U63 ( .A(n757), .Y(n750) );
  BUFX6 U64 ( .A(n757), .Y(n749) );
  INVX12 U65 ( .A(n641), .Y(n642) );
  BUFX4 U66 ( .A(n343), .Y(n432) );
  AOI22X2 U67 ( .A0(n108), .A1(n688), .B0(n1090), .B1(n1070), .Y(n816) );
  NOR2X2 U68 ( .A(n385), .B(n765), .Y(n652) );
  AND2X4 U69 ( .A(n635), .B(n636), .Y(n821) );
  OR2X4 U70 ( .A(n415), .B(n701), .Y(n636) );
  INVX3 U71 ( .A(n152), .Y(n153) );
  BUFX4 U72 ( .A(n774), .Y(n768) );
  CLKINVX1 U73 ( .A(i_isFirst), .Y(n347) );
  BUFX6 U74 ( .A(n738), .Y(n659) );
  INVX3 U75 ( .A(n133), .Y(n134) );
  BUFX4 U76 ( .A(n906), .Y(n730) );
  BUFX8 U77 ( .A(n790), .Y(n783) );
  INVX3 U78 ( .A(n804), .Y(n806) );
  INVX3 U79 ( .A(n1100), .Y(n1110) );
  OAI221XL U80 ( .A0(n447), .A1(n779), .B0(n439), .B1(n769), .C0(n821), .Y(
        n704) );
  INVX3 U81 ( .A(n765), .Y(n700) );
  BUFX6 U82 ( .A(data_i_r[5]), .Y(n714) );
  BUFX6 U83 ( .A(data_b_r[4]), .Y(n686) );
  BUFX6 U84 ( .A(data_g_r[1]), .Y(n717) );
  AOI2BB2X2 U85 ( .B0(n103), .B1(n1070), .A0N(n422), .A1N(n748), .Y(n809) );
  INVX4 U86 ( .A(n726), .Y(data_f_r[6]) );
  CLKBUFX8 U87 ( .A(data_h_r[5]), .Y(n691) );
  OA22X2 U88 ( .A0(n382), .A1(n749), .B0(n390), .B1(n741), .Y(n849) );
  CLKINVX8 U89 ( .A(n694), .Y(n695) );
  INVX3 U90 ( .A(data_c_r[1]), .Y(n694) );
  OA22X1 U91 ( .A0(n358), .A1(n746), .B0(n366), .B1(n743), .Y(n880) );
  OA22X2 U92 ( .A0(n269), .A1(n754), .B0(n356), .B1(n741), .Y(n897) );
  CLKMX2X2 U93 ( .A(n1130), .B(med_e_wait_r[23]), .S0(n736), .Y(n608) );
  CLKMX2X2 U94 ( .A(n124), .B(med_e_wait_r[0]), .S0(n737), .Y(n634) );
  NOR2BX2 U95 ( .AN(N106), .B(n919), .Y(N112) );
  NOR2X2 U96 ( .A(n648), .B(n919), .Y(N114) );
  CLKMX2X2 U97 ( .A(n76), .B(med_e_wait_r[14]), .S0(n735), .Y(n618) );
  CLKMX2X2 U98 ( .A(n83), .B(med_e_wait_r[3]), .S0(n737), .Y(n631) );
  CLKMX2X2 U99 ( .A(n88), .B(med_e_wait_r[22]), .S0(n735), .Y(n609) );
  CLKMX2X2 U100 ( .A(n94), .B(med_e_wait_r[21]), .S0(n735), .Y(n610) );
  CLKMX2X2 U101 ( .A(n95), .B(med_e_wait_r[6]), .S0(n736), .Y(n628) );
  CLKMX2X2 U102 ( .A(n84), .B(med_e_wait_r[1]), .S0(n737), .Y(n633) );
  CLKMX2X2 U103 ( .A(n89), .B(med_e_wait_r[24]), .S0(n736), .Y(n607) );
  CLKMX2X2 U104 ( .A(n85), .B(med_e_wait_r[2]), .S0(n737), .Y(n632) );
  CLKMX2X2 U105 ( .A(n90), .B(med_e_wait_r[25]), .S0(n736), .Y(n606) );
  CLKMX2X2 U106 ( .A(n91), .B(med_e_wait_r[26]), .S0(n736), .Y(n605) );
  CLKMX2X2 U107 ( .A(n86), .B(med_e_wait_r[4]), .S0(n734), .Y(n630) );
  BUFX6 U108 ( .A(data_f_r[3]), .Y(n693) );
  INVX4 U109 ( .A(n137), .Y(data_h_r[6]) );
  OR2X4 U110 ( .A(n449), .B(n779), .Y(n116) );
  INVX16 U111 ( .A(n782), .Y(n779) );
  MX2X1 U112 ( .A(n130), .B(n921), .S0(n784), .Y(n627) );
  CLKMX2X2 U113 ( .A(n87), .B(med_e_wait_r[5]), .S0(n784), .Y(n629) );
  INVX20 U114 ( .A(n763), .Y(n760) );
  INVX20 U115 ( .A(n786), .Y(n776) );
  BUFX4 U116 ( .A(n756), .Y(n755) );
  BUFX12 U117 ( .A(n645), .Y(n756) );
  BUFX16 U118 ( .A(data_c_r[5]), .Y(n11) );
  OR2XL U119 ( .A(n413), .B(n907), .Y(n640) );
  BUFX16 U120 ( .A(n907), .Y(n743) );
  CLKBUFX8 U121 ( .A(n775), .Y(n769) );
  BUFX8 U122 ( .A(n774), .Y(n770) );
  INVX2 U123 ( .A(n808), .Y(n906) );
  BUFX20 U124 ( .A(n773), .Y(n763) );
  BUFX8 U125 ( .A(n790), .Y(n785) );
  BUFX2 U126 ( .A(n906), .Y(n729) );
  CLKBUFX4 U127 ( .A(n775), .Y(n761) );
  INVX4 U128 ( .A(n764), .Y(n759) );
  CLKBUFX2 U129 ( .A(n790), .Y(n784) );
  INVX16 U130 ( .A(n758), .Y(n745) );
  INVX12 U131 ( .A(n687), .Y(n688) );
  INVX16 U132 ( .A(n781), .Y(n780) );
  INVX12 U133 ( .A(n785), .Y(n777) );
  BUFX6 U134 ( .A(n756), .Y(n754) );
  BUFX16 U135 ( .A(n421), .Y(n774) );
  OAI221X4 U136 ( .A0(n387), .A1(n776), .B0(n379), .B1(n770), .C0(n899), .Y(
        data_a_r[3]) );
  BUFX16 U137 ( .A(n758), .Y(n747) );
  OAI221X4 U138 ( .A0(n401), .A1(n777), .B0(n393), .B1(n770), .C0(n874), .Y(
        data_c_r[5]) );
  BUFX4 U139 ( .A(n775), .Y(n644) );
  CLKBUFX2 U140 ( .A(n757), .Y(n751) );
  INVX16 U141 ( .A(n747), .Y(n744) );
  CLKBUFX3 U142 ( .A(n775), .Y(n762) );
  INVX6 U143 ( .A(n766), .Y(n138) );
  BUFX6 U144 ( .A(data_f_r[7]), .Y(n711) );
  BUFX8 U145 ( .A(data_c_r[3]), .Y(n690) );
  OA22X2 U146 ( .A0(n352), .A1(n751), .B0(n360), .B1(n743), .Y(n890) );
  BUFX16 U147 ( .A(n638), .Y(n742) );
  INVX8 U148 ( .A(n741), .Y(n1070) );
  BUFX16 U149 ( .A(n743), .Y(n123) );
  BUFX20 U150 ( .A(n645), .Y(n758) );
  BUFX20 U151 ( .A(n645), .Y(n757) );
  BUFX6 U152 ( .A(n757), .Y(n752) );
  BUFX6 U153 ( .A(n758), .Y(n746) );
  INVX6 U154 ( .A(n763), .Y(n440) );
  MXI2XL U155 ( .A(n297), .B(n944), .S0(n440), .Y(n500) );
  OA22X4 U156 ( .A0(n355), .A1(n749), .B0(n363), .B1(n743), .Y(n122) );
  AND4X2 U157 ( .A(n134), .B(n432), .C(n4), .D(n168), .Y(n346) );
  NAND2X2 U158 ( .A(n650), .B(n909), .Y(n4) );
  OAI221XL U159 ( .A0(n451), .A1(n779), .B0(n443), .B1(n774), .C0(n818), .Y(
        n100) );
  NAND3X2 U160 ( .A(n144), .B(n349), .C(n1110), .Y(n910) );
  CLKAND2X8 U161 ( .A(n418), .B(n419), .Y(n815) );
  AND2X4 U162 ( .A(n639), .B(n640), .Y(n823) );
  OR2X4 U163 ( .A(n450), .B(n779), .Y(n101) );
  OR2X2 U164 ( .A(n442), .B(n768), .Y(n102) );
  NAND3X4 U165 ( .A(n101), .B(n102), .C(n819), .Y(data_h_r[4]) );
  OAI221X2 U166 ( .A0(n443), .A1(n779), .B0(n435), .B1(n765), .C0(n825), .Y(
        data_g_r[3]) );
  AOI2BB2X4 U167 ( .B0(n744), .B1(n275), .A0N(n414), .A1N(n123), .Y(n822) );
  OAI221X4 U168 ( .A0(n153), .A1(n778), .B0(n411), .B1(n765), .C0(n841), .Y(
        \data_e_r[3] ) );
  OA22X4 U169 ( .A0(n156), .A1(n750), .B0(n417), .B1(n692), .Y(n820) );
  BUFX16 U170 ( .A(n638), .Y(n692) );
  BUFX8 U171 ( .A(n757), .Y(n748) );
  OA22X2 U172 ( .A0(n360), .A1(n755), .B0(n368), .B1(n702), .Y(n877) );
  OAI221X2 U173 ( .A0(n148), .A1(n778), .B0(n413), .B1(n768), .C0(n839), .Y(
        \data_e_r[1] ) );
  OR3XL U174 ( .A(n651), .B(n652), .C(n653), .Y(n104) );
  OR3X6 U175 ( .A(n651), .B(n652), .C(n653), .Y(data_b_r[5]) );
  OAI22X4 U176 ( .A0(n353), .A1(n756), .B0(n361), .B1(n692), .Y(n653) );
  BUFX4 U177 ( .A(n789), .Y(n787) );
  OAI22X4 U178 ( .A0(n414), .A1(n687), .B0(n422), .B1(n701), .Y(n697) );
  OA22X4 U179 ( .A0(n687), .A1(n153), .B0(n427), .B1(n743), .Y(n812) );
  INVX1 U180 ( .A(i_data[18]), .Y(n863) );
  OA22X4 U181 ( .A0(n752), .A1(n105), .B0(n412), .B1(n692), .Y(n824) );
  OA22X4 U182 ( .A0(n411), .A1(n753), .B0(n638), .B1(n153), .Y(n818) );
  OAI221XL U183 ( .A0(n286), .A1(n780), .B0(n451), .B1(n769), .C0(n812), .Y(
        n1060) );
  OAI22X2 U184 ( .A0(n392), .A1(n169), .B0(n400), .B1(n702), .Y(n728) );
  INVX6 U185 ( .A(n708), .Y(data_h_r[1]) );
  NOR2X4 U186 ( .A(n393), .B(n777), .Y(n651) );
  OA22X4 U187 ( .A0(n365), .A1(n746), .B0(n373), .B1(n692), .Y(n862) );
  OA22XL U188 ( .A0(n380), .A1(n757), .B0(n388), .B1(n638), .Y(n851) );
  NOR2X2 U189 ( .A(n1120), .B(n126), .Y(n2) );
  AOI2BB2X2 U190 ( .B0(n1130), .B1(n738), .A0N(n364), .A1N(n750), .Y(n865) );
  AOI2BB2X4 U191 ( .B0(n1140), .B1(n745), .A0N(n395), .A1N(n739), .Y(n841) );
  AOI22X2 U192 ( .A0(n115), .A1(n688), .B0(n118), .B1(n738), .Y(n840) );
  OAI221X2 U193 ( .A0(n288), .A1(n780), .B0(n449), .B1(n421), .C0(n814), .Y(
        data_i_r[5]) );
  OAI221X4 U194 ( .A0(n412), .A1(n778), .B0(n770), .B1(n105), .C0(n851), .Y(
        data_d_r[2]) );
  OR2X2 U195 ( .A(n441), .B(n764), .Y(n117) );
  NAND3X4 U196 ( .A(n116), .B(n117), .C(n820), .Y(data_h_r[5]) );
  BUFX16 U197 ( .A(n774), .Y(n764) );
  OA22X2 U198 ( .A0(n395), .A1(n169), .B0(n403), .B1(n743), .Y(n833) );
  CLKINVX1 U199 ( .A(n148), .Y(n120) );
  INVX3 U200 ( .A(n147), .Y(n148) );
  OAI221X4 U201 ( .A0(n395), .A1(n780), .B0(n387), .B1(n158), .C0(n122), .Y(
        n121) );
  OA22X4 U202 ( .A0(n386), .A1(n758), .B0(n146), .B1(n742), .Y(n843) );
  OA22X4 U203 ( .A0(n377), .A1(n169), .B0(n385), .B1(n740), .Y(n854) );
  AOI22X4 U204 ( .A0(n124), .A1(n744), .B0(n125), .B1(n738), .Y(n893) );
  INVX6 U205 ( .A(n722), .Y(data_f_r[5]) );
  INVX3 U206 ( .A(n126), .Y(n127) );
  INVX3 U207 ( .A(n127), .Y(n800) );
  OAI221X2 U208 ( .A0(n451), .A1(n779), .B0(n443), .B1(n774), .C0(n818), .Y(
        data_h_r[3]) );
  OR2X8 U209 ( .A(n746), .B(n20), .Y(n639) );
  CLKAND2X3 U210 ( .A(n802), .B(n916), .Y(N110) );
  AOI22X4 U211 ( .A0(n130), .A1(n744), .B0(n131), .B1(n738), .Y(n908) );
  INVX20 U212 ( .A(n638), .Y(n738) );
  OA22X4 U213 ( .A0(n385), .A1(n753), .B0(n393), .B1(n742), .Y(n844) );
  BUFX20 U214 ( .A(n638), .Y(n701) );
  OAI221X2 U215 ( .A0(n129), .A1(n778), .B0(n151), .B1(n774), .C0(n843), .Y(
        \data_e_r[4] ) );
  INVXL U216 ( .A(i_data[19]), .Y(n866) );
  AOI2BB2X4 U217 ( .B0(n135), .B1(n688), .A0N(n384), .A1N(n123), .Y(n855) );
  AOI2BB2X4 U218 ( .B0(n136), .B1(n688), .A0N(n397), .A1N(n123), .Y(n839) );
  AOI221X2 U219 ( .A0(n139), .A1(n730), .B0(n140), .B1(n138), .C0(n141), .Y(
        n137) );
  OAI22X2 U220 ( .A0(n408), .A1(n755), .B0(n416), .B1(n739), .Y(n141) );
  OAI32X2 U221 ( .A0(n913), .A1(n345), .A2(n432), .B0(n776), .B1(n912), .Y(
        n914) );
  OA22X4 U222 ( .A0(n378), .A1(n752), .B0(n386), .B1(n702), .Y(n853) );
  OA22X4 U223 ( .A0(n362), .A1(n747), .B0(n370), .B1(n739), .Y(n871) );
  AOI2BB2X4 U224 ( .B0(n142), .B1(n745), .A0N(n406), .A1N(n123), .Y(n829) );
  INVX3 U225 ( .A(n143), .Y(n144) );
  BUFX20 U226 ( .A(n638), .Y(n739) );
  OA22X2 U227 ( .A0(n390), .A1(n747), .B0(n398), .B1(n739), .Y(n838) );
  OAI221XL U228 ( .A0(n430), .A1(n778), .B0(n422), .B1(n765), .C0(n829), .Y(
        n707) );
  INVX3 U229 ( .A(n145), .Y(n146) );
  INVX12 U230 ( .A(n808), .Y(n791) );
  NAND3X4 U231 ( .A(n164), .B(n165), .C(n831), .Y(data_f_r[1]) );
  OR2X4 U232 ( .A(n429), .B(n778), .Y(n164) );
  OA22X4 U233 ( .A0(n119), .A1(n755), .B0(n404), .B1(n701), .Y(n832) );
  INVX16 U234 ( .A(cnt[0]), .Y(n350) );
  OA22X4 U235 ( .A0(n384), .A1(n749), .B0(n392), .B1(n739), .Y(n846) );
  OAI221X4 U236 ( .A0(n390), .A1(n776), .B0(n382), .B1(n765), .C0(n893), .Y(
        data_a_r[0]) );
  INVX3 U237 ( .A(n150), .Y(n151) );
  CLKINVX3 U238 ( .A(n421), .Y(n157) );
  INVX4 U239 ( .A(n157), .Y(n158) );
  NAND3XL U240 ( .A(n409), .B(n410), .C(n903), .Y(n159) );
  OAI221X4 U241 ( .A0(n420), .A1(n778), .B0(n412), .B1(n763), .C0(n840), .Y(
        \data_e_r[2] ) );
  BUFX12 U242 ( .A(n773), .Y(n766) );
  BUFX16 U243 ( .A(n158), .Y(n771) );
  AOI2BB2X2 U244 ( .B0(n160), .B1(n738), .A0N(n351), .A1N(n757), .Y(n891) );
  AOI2BB2X4 U245 ( .B0(n120), .B1(n643), .A0N(n429), .A1N(n701), .Y(n810) );
  OAI221X4 U246 ( .A0(n408), .A1(n776), .B0(n158), .B1(n24), .C0(n855), .Y(
        data_d_r[6]) );
  OAI221X4 U247 ( .A0(n397), .A1(n777), .B0(n389), .B1(n767), .C0(n882), .Y(
        data_b_r[1]) );
  OAI2BB2X1 U248 ( .B0(n148), .B1(n743), .A0N(n162), .A1N(n745), .Y(n709) );
  OAI221X4 U249 ( .A0(n119), .A1(n777), .B0(n388), .B1(n769), .C0(n884), .Y(
        data_b_r[2]) );
  OA22X4 U250 ( .A0(n391), .A1(n757), .B0(n399), .B1(n701), .Y(n836) );
  OA22X2 U251 ( .A0(n356), .A1(n748), .B0(n364), .B1(n123), .Y(n884) );
  OR2X4 U252 ( .A(n148), .B(n766), .Y(n165) );
  NAND3X1 U253 ( .A(n134), .B(n166), .C(n345), .Y(n167) );
  NAND2X4 U254 ( .A(n167), .B(n920), .Y(ns[0]) );
  AOI2BB2X2 U255 ( .B0(n915), .B1(n946), .A0N(n347), .A1N(n348), .Y(n149) );
  OAI221X2 U256 ( .A0(n146), .A1(n777), .B0(n386), .B1(n771), .C0(n887), .Y(
        data_b_r[4]) );
  AND2X1 U257 ( .A(n641), .B(cnt[0]), .Y(n657) );
  OAI221X4 U258 ( .A0(n402), .A1(n777), .B0(n146), .B1(n761), .C0(n871), .Y(
        data_c_r[4]) );
  OA22X4 U259 ( .A0(n357), .A1(n756), .B0(n365), .B1(n123), .Y(n882) );
  OA22X2 U260 ( .A0(n359), .A1(n755), .B0(n367), .B1(n739), .Y(n878) );
  INVX1 U261 ( .A(n1110), .Y(n911) );
  OAI221X2 U262 ( .A0(n403), .A1(n777), .B0(n395), .B1(n768), .C0(n868), .Y(
        data_c_r[3]) );
  OAI221X2 U263 ( .A0(n286), .A1(n780), .B0(n451), .B1(n644), .C0(n812), .Y(
        data_i_r[3]) );
  NOR2BX4 U264 ( .AN(n655), .B(n915), .Y(n654) );
  NAND4X4 U265 ( .A(n1110), .B(n909), .C(n656), .D(n781), .Y(n915) );
  OA22X1 U266 ( .A0(n366), .A1(n754), .B0(n374), .B1(n638), .Y(n859) );
  OA22X4 U267 ( .A0(n268), .A1(n746), .B0(n357), .B1(n741), .Y(n895) );
  OAI221X2 U268 ( .A0(n430), .A1(n778), .B0(n422), .B1(n769), .C0(n829), .Y(
        data_f_r[0]) );
  BUFX20 U269 ( .A(data_f_r[4]), .Y(n658) );
  OAI221X4 U270 ( .A0(n388), .A1(n776), .B0(n380), .B1(n775), .C0(n897), .Y(
        data_a_r[2]) );
  INVX4 U271 ( .A(data_d_r[5]), .Y(n715) );
  OA22X4 U272 ( .A0(n381), .A1(n747), .B0(n389), .B1(n702), .Y(n850) );
  OA22X4 U273 ( .A0(n379), .A1(n687), .B0(n387), .B1(n740), .Y(n852) );
  OAI221X4 U274 ( .A0(n406), .A1(n776), .B0(n398), .B1(n763), .C0(n859), .Y(
        data_c_r[0]) );
  BUFX12 U275 ( .A(n791), .Y(n789) );
  CLKBUFX8 U276 ( .A(n790), .Y(n782) );
  OA22X4 U277 ( .A0(n270), .A1(n754), .B0(n355), .B1(n741), .Y(n899) );
  OAI221X4 U278 ( .A0(n398), .A1(n780), .B0(n390), .B1(n158), .C0(n880), .Y(
        data_b_r[0]) );
  BUFX12 U279 ( .A(data_i_r[6]), .Y(n713) );
  BUFX20 U280 ( .A(n421), .Y(n773) );
  NAND2X8 U281 ( .A(n642), .B(n807), .Y(n907) );
  BUFX20 U282 ( .A(n421), .Y(n775) );
  NOR2X2 U283 ( .A(n416), .B(n777), .Y(n372) );
  NOR2X8 U284 ( .A(n408), .B(n767), .Y(n394) );
  INVX3 U285 ( .A(n846), .Y(n396) );
  OR3X8 U286 ( .A(n372), .B(n394), .C(n396), .Y(\data_e_r[6] ) );
  OR2XL U287 ( .A(n424), .B(n907), .Y(n419) );
  OAI221X2 U288 ( .A0(n151), .A1(n778), .B0(n772), .B1(n19), .C0(n853), .Y(
        data_d_r[4]) );
  INVX20 U289 ( .A(n745), .Y(n687) );
  OAI221X4 U290 ( .A0(n384), .A1(n776), .B0(n376), .B1(n763), .C0(n905), .Y(
        data_a_r[6]) );
  BUFX20 U291 ( .A(n646), .Y(n421) );
  OA22X4 U292 ( .A0(n383), .A1(n749), .B0(n391), .B1(n740), .Y(n847) );
  OAI221X4 U293 ( .A0(n414), .A1(n776), .B0(n766), .B1(n23), .C0(n849), .Y(
        data_d_r[0]) );
  OAI221X4 U294 ( .A0(n400), .A1(n777), .B0(n392), .B1(n644), .C0(n877), .Y(
        data_c_r[6]) );
  BUFX20 U295 ( .A(n907), .Y(n638) );
  BUFX20 U296 ( .A(n743), .Y(n741) );
  OA22XL U297 ( .A0(n273), .A1(n758), .B0(n352), .B1(n907), .Y(n905) );
  OR2X2 U298 ( .A(n407), .B(n748), .Y(n635) );
  OAI221X4 U299 ( .A0(n447), .A1(n779), .B0(n439), .B1(n767), .C0(n821), .Y(
        data_h_r[7]) );
  BUFX8 U300 ( .A(data_a_r[4]), .Y(n699) );
  OAI221X4 U301 ( .A0(n392), .A1(n777), .B0(n384), .B1(n761), .C0(n890), .Y(
        data_b_r[6]) );
  INVXL U302 ( .A(n642), .Y(n637) );
  OAI221X2 U303 ( .A0(n445), .A1(n779), .B0(n437), .B1(n772), .C0(n823), .Y(
        data_g_r[1]) );
  OA22X2 U304 ( .A0(n750), .A1(n14), .B0(n407), .B1(n740), .Y(n828) );
  AOI2BB2X4 U305 ( .B0(n82), .B1(n163), .A0N(n428), .A1N(n702), .Y(n811) );
  NOR2BX2 U306 ( .AN(n654), .B(n126), .Y(n154) );
  BUFX12 U307 ( .A(n789), .Y(n788) );
  AO22X2 U308 ( .A0(n274), .A1(n801), .B0(n654), .B1(n800), .Y(ns[1]) );
  MX2X1 U309 ( .A(n710), .B(med_e_wait_r[43]), .S0(n734), .Y(n585) );
  MXI2XL U310 ( .A(n235), .B(n857), .S0(n738), .Y(med_e_wait_r[42]) );
  NAND2BX4 U311 ( .AN(cnt[0]), .B(n641), .Y(n646) );
  OR3X8 U312 ( .A(ns[2]), .B(ns[0]), .C(ns[1]), .Y(n916) );
  MX2X1 U313 ( .A(n21), .B(med_e_wait_r[82]), .S0(n731), .Y(n541) );
  MX2X1 U314 ( .A(n22), .B(med_e_wait_r[83]), .S0(n732), .Y(n540) );
  MX2XL U315 ( .A(n16), .B(i_data[17]), .S0(n788), .Y(n521) );
  XNOR2XL U316 ( .A(cnt[2]), .B(n657), .Y(n649) );
  MX2X1 U317 ( .A(n142), .B(med_e_wait_r[42]), .S0(n734), .Y(n586) );
  NAND2XL U318 ( .A(n349), .B(n650), .Y(n801) );
  MXI2XL U319 ( .A(n243), .B(n858), .S0(n738), .Y(med_e_wait_r[49]) );
  MXI2XL U320 ( .A(n245), .B(n864), .S0(n660), .Y(med_e_wait_r[51]) );
  MXI2XL U321 ( .A(n246), .B(n867), .S0(n660), .Y(med_e_wait_r[52]) );
  MXI2XL U322 ( .A(n247), .B(n870), .S0(n659), .Y(med_e_wait_r[53]) );
  MXI2XL U323 ( .A(n237), .B(n863), .S0(n660), .Y(med_e_wait_r[44]) );
  MXI2XL U324 ( .A(n238), .B(n866), .S0(n738), .Y(med_e_wait_r[45]) );
  MXI2XL U325 ( .A(n239), .B(n869), .S0(n738), .Y(med_e_wait_r[46]) );
  MXI2XL U326 ( .A(n225), .B(n904), .S0(n738), .Y(med_e_wait_r[34]) );
  MXI2XL U327 ( .A(n248), .B(n873), .S0(n738), .Y(med_e_wait_r[54]) );
  MXI2XL U328 ( .A(n249), .B(n876), .S0(n738), .Y(med_e_wait_r[55]) );
  MXI2XL U329 ( .A(n250), .B(n947), .S0(n738), .Y(n927) );
  MXI2XL U330 ( .A(n240), .B(n872), .S0(n738), .Y(med_e_wait_r[47]) );
  MXI2XL U331 ( .A(n241), .B(n875), .S0(n738), .Y(med_e_wait_r[48]) );
  MXI2XL U332 ( .A(n242), .B(n948), .S0(n738), .Y(n928) );
  MXI2XL U333 ( .A(n227), .B(n879), .S0(n738), .Y(med_e_wait_r[35]) );
  MXI2XL U334 ( .A(n228), .B(n881), .S0(n738), .Y(med_e_wait_r[36]) );
  MXI2XL U335 ( .A(n229), .B(n883), .S0(n738), .Y(med_e_wait_r[37]) );
  MXI2XL U336 ( .A(n230), .B(n885), .S0(n738), .Y(med_e_wait_r[38]) );
  MXI2XL U337 ( .A(n231), .B(n886), .S0(n738), .Y(med_e_wait_r[39]) );
  MXI2XL U338 ( .A(n232), .B(n888), .S0(n738), .Y(med_e_wait_r[40]) );
  MXI2XL U339 ( .A(n233), .B(n889), .S0(n660), .Y(med_e_wait_r[41]) );
  MXI2XL U340 ( .A(n234), .B(n949), .S0(n738), .Y(n926) );
  MXI2XL U341 ( .A(n219), .B(n892), .S0(n659), .Y(med_e_wait_r[28]) );
  MXI2XL U342 ( .A(n220), .B(n894), .S0(n738), .Y(med_e_wait_r[29]) );
  MXI2XL U343 ( .A(n221), .B(n896), .S0(n738), .Y(med_e_wait_r[30]) );
  MXI2XL U344 ( .A(n222), .B(n898), .S0(n738), .Y(med_e_wait_r[31]) );
  MXI2XL U345 ( .A(n223), .B(n900), .S0(n738), .Y(med_e_wait_r[32]) );
  MXI2XL U346 ( .A(n224), .B(n902), .S0(n660), .Y(med_e_wait_r[33]) );
  MXI2XL U347 ( .A(n236), .B(n860), .S0(n660), .Y(med_e_wait_r[43]) );
  XOR2XL U348 ( .A(n637), .B(cnt[0]), .Y(n802) );
  AND3XL U349 ( .A(n345), .B(n946), .C(n134), .Y(n655) );
  MX2X1 U350 ( .A(n79), .B(med_e_wait_r[27]), .S0(n736), .Y(n604) );
  MX2X1 U351 ( .A(n80), .B(n923), .S0(n736), .Y(n603) );
  MX2X1 U352 ( .A(n53), .B(med_e_wait_r[20]), .S0(n736), .Y(n612) );
  MX2X1 U353 ( .A(n160), .B(n924), .S0(n736), .Y(n611) );
  MX2X1 U354 ( .A(n125), .B(med_e_wait_r[7]), .S0(n737), .Y(n626) );
  MX2X1 U355 ( .A(n44), .B(med_e_wait_r[8]), .S0(n737), .Y(n625) );
  MX2X1 U356 ( .A(n47), .B(med_e_wait_r[9]), .S0(n737), .Y(n624) );
  MX2X1 U357 ( .A(n45), .B(med_e_wait_r[10]), .S0(n737), .Y(n623) );
  MX2X1 U358 ( .A(n43), .B(med_e_wait_r[11]), .S0(n737), .Y(n622) );
  MX2X1 U359 ( .A(n36), .B(med_e_wait_r[12]), .S0(n737), .Y(n621) );
  MX2X1 U360 ( .A(n96), .B(med_e_wait_r[13]), .S0(n737), .Y(n620) );
  MX2X1 U361 ( .A(n131), .B(n922), .S0(n737), .Y(n619) );
  MX2X1 U362 ( .A(n727), .B(med_e_wait_r[76]), .S0(n732), .Y(n548) );
  MX2X1 U363 ( .A(n1090), .B(n931), .S0(n732), .Y(n539) );
  MX2X1 U364 ( .A(n108), .B(n932), .S0(n732), .Y(n547) );
  MX2X1 U365 ( .A(n77), .B(med_e_wait_r[63]), .S0(n732), .Y(n562) );
  MX2X1 U366 ( .A(n162), .B(med_e_wait_r[64]), .S0(n732), .Y(n561) );
  MX2X1 U367 ( .A(n132), .B(med_e_wait_r[65]), .S0(n732), .Y(n560) );
  MX2X1 U368 ( .A(n81), .B(med_e_wait_r[66]), .S0(n732), .Y(n559) );
  MX2X1 U369 ( .A(n150), .B(med_e_wait_r[67]), .S0(n732), .Y(n558) );
  MX2X1 U370 ( .A(n155), .B(med_e_wait_r[68]), .S0(n732), .Y(n557) );
  MX2X1 U371 ( .A(n49), .B(med_e_wait_r[69]), .S0(n732), .Y(n556) );
  MX2X1 U372 ( .A(n723), .B(med_e_wait_r[75]), .S0(n731), .Y(n549) );
  MX2X1 U373 ( .A(n103), .B(med_e_wait_r[77]), .S0(n731), .Y(n546) );
  MX2X1 U374 ( .A(n42), .B(med_e_wait_r[78]), .S0(n731), .Y(n545) );
  MX2X1 U375 ( .A(n48), .B(med_e_wait_r[79]), .S0(n731), .Y(n544) );
  MX2X1 U376 ( .A(n41), .B(med_e_wait_r[80]), .S0(n731), .Y(n543) );
  MX2X1 U377 ( .A(n50), .B(med_e_wait_r[81]), .S0(n731), .Y(n542) );
  MX2X1 U378 ( .A(n35), .B(med_e_wait_r[70]), .S0(n731), .Y(n554) );
  MX2X1 U379 ( .A(n147), .B(med_e_wait_r[71]), .S0(n731), .Y(n553) );
  MX2X1 U380 ( .A(n82), .B(med_e_wait_r[72]), .S0(n731), .Y(n552) );
  MX2X1 U381 ( .A(n152), .B(med_e_wait_r[73]), .S0(n731), .Y(n551) );
  MX2X1 U382 ( .A(n128), .B(med_e_wait_r[74]), .S0(n731), .Y(n550) );
  MX2X1 U383 ( .A(n275), .B(med_e_wait_r[56]), .S0(n733), .Y(n570) );
  MX2X1 U384 ( .A(n277), .B(med_e_wait_r[58]), .S0(n733), .Y(n568) );
  MX2X1 U385 ( .A(n278), .B(med_e_wait_r[59]), .S0(n733), .Y(n567) );
  MX2X1 U386 ( .A(n279), .B(med_e_wait_r[60]), .S0(n733), .Y(n566) );
  MXI2XL U387 ( .A(n340), .B(n933), .S0(n738), .Y(n457) );
  MXI2XL U388 ( .A(n336), .B(n934), .S0(n738), .Y(n461) );
  MXI2XL U389 ( .A(n332), .B(n935), .S0(n738), .Y(n465) );
  MXI2XL U390 ( .A(n328), .B(n936), .S0(n738), .Y(n469) );
  MXI2XL U391 ( .A(n324), .B(n937), .S0(n738), .Y(n473) );
  MXI2XL U392 ( .A(n320), .B(n938), .S0(n738), .Y(n477) );
  MXI2XL U393 ( .A(n316), .B(n939), .S0(n738), .Y(n481) );
  MXI2XL U394 ( .A(n312), .B(n940), .S0(n738), .Y(n485) );
  MXI2XL U395 ( .A(n308), .B(n941), .S0(n738), .Y(n489) );
  MXI2XL U396 ( .A(n292), .B(n945), .S0(n738), .Y(n505) );
  AOI2BB2XL U397 ( .B0(n35), .B1(n688), .A0N(n430), .A1N(n741), .Y(n647) );
  MX2XL U398 ( .A(n17), .B(i_data[6]), .S0(n733), .Y(n532) );
  MX2XL U399 ( .A(n71), .B(i_data[4]), .S0(n733), .Y(n534) );
  MX2XL U400 ( .A(n72), .B(i_data[5]), .S0(n733), .Y(n533) );
  AND2X4 U401 ( .A(o_out_valid), .B(n800), .Y(n1) );
  INVXL U402 ( .A(i_data[3]), .Y(n898) );
  AND2XL U403 ( .A(sobel_out_data_w[10]), .B(n1), .Y(o_out_data[10]) );
  AND2XL U404 ( .A(sobel_out_data_w[9]), .B(n1), .Y(o_out_data[9]) );
  AND2XL U405 ( .A(sobel_out_data_w[8]), .B(n1), .Y(o_out_data[8]) );
  INVX1 U406 ( .A(i_data[31]), .Y(n947) );
  INVXL U407 ( .A(i_data[25]), .Y(n861) );
  MX2XL U408 ( .A(n54), .B(i_data[3]), .S0(n784), .Y(n535) );
  MX2XL U409 ( .A(n57), .B(i_data[30]), .S0(n784), .Y(n508) );
  MX2XL U410 ( .A(n31), .B(i_data[21]), .S0(n784), .Y(n517) );
  MX2XL U411 ( .A(n139), .B(i_data[22]), .S0(n784), .Y(n516) );
  NOR2BXL U412 ( .AN(n10), .B(n133), .Y(n9) );
  INVXL U413 ( .A(i_data[13]), .Y(n888) );
  INVXL U414 ( .A(i_data[11]), .Y(n885) );
  INVX1 U415 ( .A(i_data[7]), .Y(n950) );
  NAND3XL U416 ( .A(n1110), .B(n349), .C(n144), .Y(n6) );
  MX2XL U417 ( .A(n25), .B(i_data[18]), .S0(n787), .Y(n520) );
  MX2XL U418 ( .A(n32), .B(i_data[27]), .S0(n787), .Y(n511) );
  MX2XL U419 ( .A(n73), .B(i_data[28]), .S0(n787), .Y(n510) );
  MX2XL U420 ( .A(n58), .B(i_data[29]), .S0(n787), .Y(n509) );
  MX2XL U421 ( .A(n26), .B(i_data[19]), .S0(n787), .Y(n519) );
  MX2XL U422 ( .A(n37), .B(i_data[20]), .S0(n787), .Y(n518) );
  INVX1 U423 ( .A(i_data[23]), .Y(n948) );
  INVX1 U424 ( .A(i_data[15]), .Y(n949) );
  INVXL U425 ( .A(i_data[14]), .Y(n889) );
  INVXL U426 ( .A(i_data[20]), .Y(n869) );
  INVXL U427 ( .A(i_data[22]), .Y(n875) );
  INVXL U428 ( .A(i_data[21]), .Y(n872) );
  INVXL U429 ( .A(i_data[12]), .Y(n886) );
  INVXL U430 ( .A(i_data[29]), .Y(n873) );
  INVXL U431 ( .A(i_data[28]), .Y(n870) );
  INVXL U432 ( .A(i_data[4]), .Y(n900) );
  INVXL U433 ( .A(i_data[26]), .Y(n864) );
  INVXL U434 ( .A(i_data[2]), .Y(n896) );
  INVXL U435 ( .A(i_data[1]), .Y(n894) );
  INVXL U436 ( .A(i_data[27]), .Y(n867) );
  INVXL U437 ( .A(i_data[30]), .Y(n876) );
  INVXL U438 ( .A(i_data[0]), .Y(n892) );
  INVXL U439 ( .A(i_data[6]), .Y(n904) );
  INVXL U440 ( .A(i_data[5]), .Y(n902) );
  CLKBUFX3 U441 ( .A(n799), .Y(n673) );
  CLKBUFX3 U442 ( .A(n799), .Y(n674) );
  CLKBUFX3 U443 ( .A(n796), .Y(n677) );
  CLKBUFX3 U444 ( .A(n796), .Y(n676) );
  CLKBUFX3 U445 ( .A(n798), .Y(n680) );
  CLKBUFX3 U446 ( .A(n797), .Y(n679) );
  CLKBUFX3 U447 ( .A(n797), .Y(n682) );
  CLKBUFX3 U448 ( .A(n797), .Y(n683) );
  CLKBUFX3 U449 ( .A(n793), .Y(n661) );
  CLKBUFX3 U450 ( .A(n793), .Y(n662) );
  CLKBUFX3 U451 ( .A(n796), .Y(n664) );
  CLKBUFX3 U452 ( .A(n794), .Y(n665) );
  CLKBUFX3 U453 ( .A(n794), .Y(n667) );
  CLKBUFX3 U454 ( .A(n794), .Y(n668) );
  CLKBUFX3 U455 ( .A(n795), .Y(n670) );
  CLKBUFX3 U456 ( .A(n795), .Y(n671) );
  CLKBUFX3 U457 ( .A(n793), .Y(n675) );
  CLKBUFX3 U458 ( .A(n795), .Y(n666) );
  CLKBUFX3 U459 ( .A(n794), .Y(n669) );
  CLKBUFX3 U460 ( .A(n795), .Y(n672) );
  CLKBUFX3 U461 ( .A(n793), .Y(n663) );
  CLKBUFX3 U462 ( .A(n798), .Y(n681) );
  CLKBUFX3 U463 ( .A(n796), .Y(n678) );
  CLKBUFX3 U464 ( .A(n797), .Y(n684) );
  CLKBUFX3 U465 ( .A(n729), .Y(n731) );
  CLKBUFX3 U466 ( .A(n729), .Y(n732) );
  CLKBUFX3 U467 ( .A(n730), .Y(n733) );
  CLKBUFX3 U468 ( .A(n730), .Y(n734) );
  CLKBUFX3 U469 ( .A(n729), .Y(n735) );
  CLKBUFX3 U470 ( .A(n785), .Y(n736) );
  CLKBUFX3 U471 ( .A(n729), .Y(n737) );
  CLKBUFX3 U472 ( .A(n798), .Y(n793) );
  CLKBUFX3 U473 ( .A(n798), .Y(n796) );
  CLKBUFX3 U474 ( .A(n798), .Y(n797) );
  CLKBUFX3 U475 ( .A(n799), .Y(n794) );
  CLKBUFX3 U476 ( .A(n799), .Y(n795) );
  CLKBUFX3 U477 ( .A(n792), .Y(n798) );
  CLKBUFX3 U478 ( .A(n792), .Y(n799) );
  INVX3 U479 ( .A(n803), .Y(n805) );
  NAND2XL U480 ( .A(n350), .B(n763), .Y(n803) );
  CLKINVX1 U481 ( .A(i_data[17]), .Y(n860) );
  CLKINVX1 U482 ( .A(i_data[10]), .Y(n883) );
  XNOR2X1 U483 ( .A(add_236_carry[5]), .B(n170), .Y(n648) );
  AO22X1 U484 ( .A0(sobel_out_data_w[7]), .A1(n1), .B0(out_data_w[7]), .B1(n2), 
        .Y(o_out_data[7]) );
  AO22X1 U485 ( .A0(sobel_out_data_w[6]), .A1(n1), .B0(out_data_w[6]), .B1(n2), 
        .Y(o_out_data[6]) );
  AO22X1 U486 ( .A0(sobel_out_data_w[5]), .A1(n1), .B0(out_data_w[5]), .B1(n2), 
        .Y(o_out_data[5]) );
  AO22X1 U487 ( .A0(sobel_out_data_w[4]), .A1(n1), .B0(out_data_w[4]), .B1(n2), 
        .Y(o_out_data[4]) );
  AO22X1 U488 ( .A0(sobel_out_data_w[3]), .A1(n1), .B0(out_data_w[3]), .B1(n2), 
        .Y(o_out_data[3]) );
  AO22X1 U489 ( .A0(sobel_out_data_w[2]), .A1(n1), .B0(out_data_w[2]), .B1(n2), 
        .Y(o_out_data[2]) );
  AO22X1 U490 ( .A0(sobel_out_data_w[1]), .A1(n1), .B0(out_data_w[1]), .B1(n2), 
        .Y(o_out_data[1]) );
  AO22X1 U491 ( .A0(sobel_out_data_w[0]), .A1(n1), .B0(out_data_w[0]), .B1(n2), 
        .Y(o_out_data[0]) );
  MXI2X1 U492 ( .A(n171), .B(n892), .S0(n744), .Y(med_e_wait_r[0]) );
  MXI2X1 U493 ( .A(n172), .B(n894), .S0(n688), .Y(med_e_wait_r[1]) );
  MXI2X1 U494 ( .A(n173), .B(n896), .S0(n744), .Y(med_e_wait_r[2]) );
  MXI2X1 U495 ( .A(n174), .B(n898), .S0(n744), .Y(med_e_wait_r[3]) );
  MXI2X1 U496 ( .A(n175), .B(n900), .S0(n688), .Y(med_e_wait_r[4]) );
  MXI2X1 U497 ( .A(n176), .B(n902), .S0(n744), .Y(med_e_wait_r[5]) );
  MXI2X1 U498 ( .A(n177), .B(n904), .S0(n744), .Y(med_e_wait_r[6]) );
  MXI2X1 U499 ( .A(n178), .B(n950), .S0(n688), .Y(n921) );
  MXI2X1 U500 ( .A(n203), .B(n857), .S0(n744), .Y(med_e_wait_r[14]) );
  MXI2X1 U501 ( .A(n211), .B(n858), .S0(n744), .Y(med_e_wait_r[21]) );
  MXI2X1 U502 ( .A(n212), .B(n861), .S0(n688), .Y(med_e_wait_r[22]) );
  MXI2X1 U503 ( .A(n213), .B(n864), .S0(n744), .Y(med_e_wait_r[23]) );
  MXI2X1 U504 ( .A(n214), .B(n867), .S0(n744), .Y(med_e_wait_r[24]) );
  MXI2X1 U505 ( .A(n215), .B(n870), .S0(n744), .Y(med_e_wait_r[25]) );
  MXI2X1 U506 ( .A(n216), .B(n873), .S0(n688), .Y(med_e_wait_r[26]) );
  MXI2XL U507 ( .A(n260), .B(n881), .S0(n760), .Y(med_e_wait_r[64]) );
  MXI2XL U508 ( .A(n196), .B(n881), .S0(n744), .Y(med_e_wait_r[8]) );
  CLKMX2X2 U509 ( .A(n136), .B(med_e_wait_r[36]), .S0(n657), .Y(n593) );
  MXI2XL U510 ( .A(n179), .B(n857), .S0(n138), .Y(med_e_wait_r[70]) );
  MXI2XL U511 ( .A(n259), .B(n879), .S0(n138), .Y(med_e_wait_r[63]) );
  MXI2XL U512 ( .A(n195), .B(n879), .S0(n744), .Y(med_e_wait_r[7]) );
  CLKMX2X2 U513 ( .A(n837), .B(med_e_wait_r[35]), .S0(n784), .Y(n594) );
  MXI2X1 U514 ( .A(n342), .B(n933), .S0(n806), .Y(n455) );
  MXI2X1 U515 ( .A(n338), .B(n934), .S0(n806), .Y(n459) );
  MXI2X1 U516 ( .A(n334), .B(n935), .S0(n806), .Y(n463) );
  MXI2X1 U517 ( .A(n330), .B(n936), .S0(n806), .Y(n467) );
  MXI2X1 U518 ( .A(n326), .B(n937), .S0(n806), .Y(n471) );
  MXI2X1 U519 ( .A(n322), .B(n938), .S0(n806), .Y(n475) );
  MXI2X1 U520 ( .A(n318), .B(n939), .S0(n806), .Y(n479) );
  MXI2X1 U521 ( .A(n314), .B(n940), .S0(n806), .Y(n483) );
  MXI2X1 U522 ( .A(n310), .B(n941), .S0(n806), .Y(n487) );
  MXI2X1 U523 ( .A(n306), .B(n942), .S0(n806), .Y(n491) );
  MXI2X1 U524 ( .A(n302), .B(n943), .S0(n806), .Y(n495) );
  MXI2X1 U525 ( .A(n298), .B(n944), .S0(n806), .Y(n499) );
  MXI2X1 U526 ( .A(n294), .B(n945), .S0(n806), .Y(n503) );
  MXI2X1 U527 ( .A(n204), .B(n860), .S0(n744), .Y(med_e_wait_r[15]) );
  MXI2X1 U528 ( .A(n205), .B(n863), .S0(n688), .Y(med_e_wait_r[16]) );
  MXI2X1 U529 ( .A(n206), .B(n866), .S0(n744), .Y(med_e_wait_r[17]) );
  MXI2X1 U530 ( .A(n207), .B(n869), .S0(n688), .Y(med_e_wait_r[18]) );
  MXI2X1 U531 ( .A(n208), .B(n872), .S0(n688), .Y(med_e_wait_r[19]) );
  CLKMX2X2 U532 ( .A(n61), .B(med_e_wait_r[15]), .S0(n735), .Y(n617) );
  CLKMX2X2 U533 ( .A(n70), .B(med_e_wait_r[16]), .S0(n736), .Y(n616) );
  CLKMX2X2 U534 ( .A(n62), .B(med_e_wait_r[17]), .S0(n736), .Y(n615) );
  CLKMX2X2 U535 ( .A(n63), .B(med_e_wait_r[18]), .S0(n736), .Y(n614) );
  CLKMX2X2 U536 ( .A(n40), .B(med_e_wait_r[19]), .S0(n736), .Y(n613) );
  CLKMX2X2 U537 ( .A(n98), .B(n930), .S0(n732), .Y(n555) );
  CLKMX2X2 U538 ( .A(n280), .B(med_e_wait_r[61]), .S0(n733), .Y(n565) );
  CLKMX2X2 U539 ( .A(n281), .B(med_e_wait_r[62]), .S0(n733), .Y(n564) );
  CLKMX2X2 U540 ( .A(n282), .B(n929), .S0(n733), .Y(n563) );
  CLKMX2X2 U541 ( .A(n276), .B(med_e_wait_r[57]), .S0(n733), .Y(n569) );
  MXI2X1 U542 ( .A(n431), .B(n950), .S0(n733), .Y(n531) );
  CLKMX2X2 U543 ( .A(n65), .B(med_e_wait_r[49]), .S0(n734), .Y(n578) );
  CLKMX2X2 U544 ( .A(n830), .B(med_e_wait_r[50]), .S0(n734), .Y(n577) );
  CLKMX2X2 U545 ( .A(n68), .B(med_e_wait_r[51]), .S0(n734), .Y(n576) );
  CLKMX2X2 U546 ( .A(n46), .B(med_e_wait_r[54]), .S0(n734), .Y(n573) );
  CLKMX2X2 U547 ( .A(n64), .B(med_e_wait_r[55]), .S0(n734), .Y(n572) );
  CLKMX2X2 U548 ( .A(n69), .B(n927), .S0(n736), .Y(n571) );
  CLKMX2X2 U549 ( .A(n118), .B(med_e_wait_r[44]), .S0(n734), .Y(n584) );
  CLKMX2X2 U550 ( .A(n92), .B(med_e_wait_r[45]), .S0(n734), .Y(n583) );
  CLKMX2X2 U551 ( .A(n145), .B(med_e_wait_r[46]), .S0(n734), .Y(n582) );
  CLKMX2X2 U552 ( .A(n78), .B(med_e_wait_r[47]), .S0(n734), .Y(n581) );
  CLKMX2X2 U553 ( .A(n93), .B(med_e_wait_r[48]), .S0(n786), .Y(n580) );
  CLKMX2X2 U554 ( .A(n29), .B(n928), .S0(n730), .Y(n579) );
  CLKMX2X2 U555 ( .A(n115), .B(med_e_wait_r[37]), .S0(n729), .Y(n592) );
  CLKMX2X2 U556 ( .A(n1140), .B(med_e_wait_r[38]), .S0(n731), .Y(n591) );
  CLKMX2X2 U557 ( .A(n842), .B(med_e_wait_r[39]), .S0(n734), .Y(n590) );
  CLKMX2X2 U558 ( .A(n97), .B(med_e_wait_r[40]), .S0(n730), .Y(n589) );
  CLKMX2X2 U559 ( .A(n30), .B(n926), .S0(n732), .Y(n587) );
  CLKMX2X2 U560 ( .A(n848), .B(med_e_wait_r[28]), .S0(n735), .Y(n602) );
  CLKMX2X2 U561 ( .A(n66), .B(med_e_wait_r[29]), .S0(n735), .Y(n601) );
  CLKMX2X2 U562 ( .A(n75), .B(med_e_wait_r[30]), .S0(n735), .Y(n600) );
  CLKMX2X2 U563 ( .A(n51), .B(med_e_wait_r[31]), .S0(n735), .Y(n599) );
  CLKMX2X2 U564 ( .A(n52), .B(med_e_wait_r[32]), .S0(n735), .Y(n598) );
  CLKMX2X2 U565 ( .A(n99), .B(med_e_wait_r[33]), .S0(n735), .Y(n597) );
  CLKMX2X2 U566 ( .A(n135), .B(med_e_wait_r[34]), .S0(n735), .Y(n596) );
  CLKMX2X2 U567 ( .A(n67), .B(n925), .S0(n735), .Y(n595) );
  MXI2XL U568 ( .A(n894), .B(n252), .S0(n766), .Y(med_e_wait_r[57]) );
  CLKMX2X2 U569 ( .A(n918), .B(n917), .S0(n800), .Y(o_done) );
  NOR3BXL U570 ( .AN(n170), .B(n6), .C(n776), .Y(n917) );
  INVXL U571 ( .A(n4), .Y(n918) );
  ADDHXL U572 ( .A(n143), .B(add_236_carry[3]), .CO(add_236_carry[4]), .S(N106) );
  AND2X2 U573 ( .A(cnt[2]), .B(n657), .Y(add_236_carry[3]) );
  ADDHXL U574 ( .A(n1100), .B(add_236_carry[4]), .CO(add_236_carry[5]), .S(
        N107) );
  MXI2X1 U575 ( .A(n339), .B(n933), .S0(n805), .Y(n458) );
  MXI2X1 U576 ( .A(n335), .B(n934), .S0(n805), .Y(n462) );
  MXI2X1 U577 ( .A(n331), .B(n935), .S0(n805), .Y(n466) );
  MXI2X1 U578 ( .A(n327), .B(n936), .S0(n805), .Y(n470) );
  MXI2X1 U579 ( .A(n323), .B(n937), .S0(n805), .Y(n474) );
  MXI2X1 U580 ( .A(n319), .B(n938), .S0(n805), .Y(n478) );
  MXI2X1 U581 ( .A(n315), .B(n939), .S0(n805), .Y(n482) );
  MXI2X1 U582 ( .A(n311), .B(n940), .S0(n805), .Y(n486) );
  MXI2X1 U583 ( .A(n307), .B(n941), .S0(n805), .Y(n490) );
  MXI2X1 U584 ( .A(n303), .B(n942), .S0(n805), .Y(n494) );
  MXI2X1 U585 ( .A(n299), .B(n943), .S0(n805), .Y(n498) );
  MXI2X1 U586 ( .A(n295), .B(n944), .S0(n805), .Y(n502) );
  MXI2X1 U587 ( .A(n291), .B(n945), .S0(n805), .Y(n506) );
  MXI2XL U588 ( .A(n193), .B(n876), .S0(n138), .Y(med_e_wait_r[83]) );
  MXI2XL U589 ( .A(n192), .B(n873), .S0(n138), .Y(med_e_wait_r[82]) );
  MXI2X1 U590 ( .A(n226), .B(n950), .S0(n738), .Y(n925) );
  MXI2XL U591 ( .A(n180), .B(n860), .S0(n138), .Y(med_e_wait_r[71]) );
  MXI2XL U592 ( .A(n182), .B(n866), .S0(n760), .Y(med_e_wait_r[73]) );
  MXI2XL U593 ( .A(n186), .B(n948), .S0(n760), .Y(n932) );
  MXI2XL U594 ( .A(n183), .B(n869), .S0(n760), .Y(med_e_wait_r[74]) );
  MXI2XL U595 ( .A(n194), .B(n947), .S0(n440), .Y(n931) );
  MXI2XL U596 ( .A(n265), .B(n889), .S0(n760), .Y(med_e_wait_r[69]) );
  MXI2XL U597 ( .A(n263), .B(n886), .S0(n759), .Y(med_e_wait_r[67]) );
  MXI2XL U598 ( .A(n262), .B(n885), .S0(n760), .Y(med_e_wait_r[66]) );
  MXI2XL U599 ( .A(n188), .B(n861), .S0(n760), .Y(med_e_wait_r[78]) );
  MXI2XL U600 ( .A(n189), .B(n864), .S0(n759), .Y(med_e_wait_r[79]) );
  MXI2XL U601 ( .A(n264), .B(n888), .S0(n760), .Y(med_e_wait_r[68]) );
  MXI2XL U602 ( .A(n191), .B(n870), .S0(n760), .Y(med_e_wait_r[81]) );
  MXI2XL U603 ( .A(n190), .B(n867), .S0(n138), .Y(med_e_wait_r[80]) );
  MXI2XL U604 ( .A(n187), .B(n858), .S0(n440), .Y(med_e_wait_r[77]) );
  MXI2XL U605 ( .A(n181), .B(n863), .S0(n138), .Y(med_e_wait_r[72]) );
  MXI2XL U606 ( .A(n261), .B(n883), .S0(n760), .Y(med_e_wait_r[65]) );
  MXI2XL U607 ( .A(n184), .B(n872), .S0(n760), .Y(med_e_wait_r[75]) );
  MXI2XL U608 ( .A(n185), .B(n875), .S0(n138), .Y(med_e_wait_r[76]) );
  MXI2XL U609 ( .A(n253), .B(n896), .S0(n138), .Y(med_e_wait_r[58]) );
  MXI2XL U610 ( .A(n255), .B(n900), .S0(n760), .Y(med_e_wait_r[60]) );
  MXI2XL U611 ( .A(n254), .B(n898), .S0(n440), .Y(med_e_wait_r[59]) );
  MXI2XL U612 ( .A(n251), .B(n892), .S0(n138), .Y(med_e_wait_r[56]) );
  MXI2XL U613 ( .A(n210), .B(n948), .S0(n688), .Y(n924) );
  MXI2XL U614 ( .A(n202), .B(n949), .S0(n744), .Y(n922) );
  MXI2XL U615 ( .A(n218), .B(n947), .S0(n688), .Y(n923) );
  MXI2XL U616 ( .A(n201), .B(n889), .S0(n744), .Y(med_e_wait_r[13]) );
  MXI2XL U617 ( .A(n199), .B(n886), .S0(n744), .Y(med_e_wait_r[11]) );
  MXI2XL U618 ( .A(n209), .B(n875), .S0(n744), .Y(med_e_wait_r[20]) );
  MXI2XL U619 ( .A(n198), .B(n885), .S0(n688), .Y(med_e_wait_r[10]) );
  MXI2XL U620 ( .A(n200), .B(n888), .S0(n744), .Y(med_e_wait_r[12]) );
  MXI2XL U621 ( .A(n217), .B(n876), .S0(n688), .Y(med_e_wait_r[27]) );
  MXI2XL U622 ( .A(n197), .B(n883), .S0(n744), .Y(med_e_wait_r[9]) );
  MXI2X1 U623 ( .A(n290), .B(n947), .S0(n784), .Y(n507) );
  MXI2X1 U624 ( .A(n447), .B(n948), .S0(n784), .Y(n515) );
  MX2XL U625 ( .A(n33), .B(i_data[24]), .S0(n788), .Y(n514) );
  MX2XL U626 ( .A(n59), .B(i_data[25]), .S0(n788), .Y(n513) );
  MX2XL U627 ( .A(n34), .B(i_data[26]), .S0(n788), .Y(n512) );
  MX2XL U628 ( .A(n39), .B(i_data[12]), .S0(n784), .Y(n526) );
  MX2XL U629 ( .A(n27), .B(i_data[11]), .S0(n789), .Y(n527) );
  MX2XL U630 ( .A(n38), .B(i_data[13]), .S0(n733), .Y(n525) );
  MX2XL U631 ( .A(n28), .B(i_data[10]), .S0(n789), .Y(n528) );
  MXI2X1 U632 ( .A(n304), .B(n942), .S0(n738), .Y(n493) );
  MXI2X1 U633 ( .A(n300), .B(n943), .S0(n738), .Y(n497) );
  MXI2X1 U634 ( .A(n296), .B(n944), .S0(n738), .Y(n501) );
  MX2XL U635 ( .A(n140), .B(i_data[14]), .S0(n786), .Y(n524) );
  MXI2X1 U636 ( .A(n337), .B(n934), .S0(n440), .Y(n460) );
  MXI2X1 U637 ( .A(n333), .B(n935), .S0(n760), .Y(n464) );
  MXI2X1 U638 ( .A(n329), .B(n936), .S0(n138), .Y(n468) );
  MXI2X1 U639 ( .A(n325), .B(n937), .S0(n760), .Y(n472) );
  MXI2X1 U640 ( .A(n321), .B(n938), .S0(n760), .Y(n476) );
  MXI2X1 U641 ( .A(n317), .B(n939), .S0(n760), .Y(n480) );
  MXI2X1 U642 ( .A(n313), .B(n940), .S0(n760), .Y(n484) );
  MXI2X1 U643 ( .A(n309), .B(n941), .S0(n440), .Y(n488) );
  MXI2X1 U644 ( .A(n305), .B(n942), .S0(n759), .Y(n492) );
  MXI2X1 U645 ( .A(n301), .B(n943), .S0(n440), .Y(n496) );
  MXI2X1 U646 ( .A(n293), .B(n945), .S0(n760), .Y(n504) );
  MXI2XL U647 ( .A(n341), .B(n933), .S0(n759), .Y(n456) );
  OAI2BB2XL U648 ( .B0(n127), .B1(n9), .A0N(i_med_sobel), .A1N(n9), .Y(n344)
         );
  MXI2XL U649 ( .A(n439), .B(n949), .S0(n785), .Y(n523) );
  MX2XL U650 ( .A(n55), .B(i_data[0]), .S0(n784), .Y(n538) );
  MX2XL U651 ( .A(n56), .B(i_data[1]), .S0(n783), .Y(n537) );
  MX2XL U652 ( .A(n74), .B(i_data[2]), .S0(n782), .Y(n536) );
  CLKINVX1 U653 ( .A(i_data[24]), .Y(n858) );
  CLKINVX1 U654 ( .A(sobel_data_w[10]), .Y(n933) );
  CLKINVX1 U655 ( .A(sobel_data_w[9]), .Y(n934) );
  CLKINVX1 U656 ( .A(sobel_data_w[8]), .Y(n935) );
  CLKINVX1 U657 ( .A(sobel_data_w[7]), .Y(n936) );
  CLKINVX1 U658 ( .A(sobel_data_w[6]), .Y(n937) );
  CLKINVX1 U659 ( .A(sobel_data_w[5]), .Y(n938) );
  CLKINVX1 U660 ( .A(sobel_data_w[4]), .Y(n939) );
  CLKINVX1 U661 ( .A(sobel_data_w[3]), .Y(n940) );
  CLKINVX1 U662 ( .A(sobel_data_w[2]), .Y(n941) );
  CLKINVX1 U663 ( .A(sobel_data_w[1]), .Y(n942) );
  CLKINVX1 U664 ( .A(sobel_data_w[0]), .Y(n943) );
  CLKINVX1 U665 ( .A(angle_w[1]), .Y(n944) );
  CLKINVX1 U666 ( .A(angle_w[0]), .Y(n945) );
  OAI221X4 U667 ( .A0(n404), .A1(n777), .B0(n119), .B1(n765), .C0(n865), .Y(
        data_c_r[2]) );
  CLKBUFX6 U668 ( .A(i_rst_n), .Y(n792) );
  INVXL U669 ( .A(i_data[16]), .Y(n857) );
  MX2XL U670 ( .A(n13), .B(i_data[16]), .S0(n788), .Y(n522) );
  INVXL U671 ( .A(i_data[8]), .Y(n879) );
  MX2XL U672 ( .A(n15), .B(i_data[8]), .S0(n784), .Y(n530) );
  INVXL U673 ( .A(i_data[9]), .Y(n881) );
  MX2XL U674 ( .A(n12), .B(i_data[9]), .S0(n789), .Y(n529) );
  BUFX8 U675 ( .A(data_d_r[4]), .Y(n685) );
  OAI221X2 U676 ( .A0(n407), .A1(n776), .B0(n766), .B1(n14), .C0(n856), .Y(
        data_d_r[7]) );
  OAI221X4 U677 ( .A0(n444), .A1(n779), .B0(n436), .B1(n764), .C0(n824), .Y(
        data_g_r[2]) );
  OAI221X4 U678 ( .A0(n428), .A1(n778), .B0(n420), .B1(n765), .C0(n832), .Y(
        data_f_r[2]) );
  OAI221X4 U679 ( .A0(n383), .A1(n776), .B0(n375), .B1(n644), .C0(n908), .Y(
        data_a_r[7]) );
  OAI221X2 U680 ( .A0(n427), .A1(n778), .B0(n153), .B1(n769), .C0(n833), .Y(
        data_f_r[3]) );
  OAI221X4 U681 ( .A0(n391), .A1(n776), .B0(n383), .B1(n763), .C0(n891), .Y(
        data_b_r[7]) );
  OAI221X2 U682 ( .A0(n405), .A1(n777), .B0(n397), .B1(n771), .C0(n862), .Y(
        data_c_r[1]) );
  AOI221X2 U683 ( .A0(n13), .A1(n787), .B0(n15), .B1(n760), .C0(n697), .Y(n696) );
  OAI221XL U684 ( .A0(n452), .A1(n780), .B0(n444), .B1(n769), .C0(n817), .Y(
        n698) );
  AOI221X2 U685 ( .A0(n16), .A1(n789), .B0(n12), .B1(n760), .C0(n709), .Y(n708) );
  OAI221X4 U686 ( .A0(n399), .A1(n777), .B0(n391), .B1(n767), .C0(n878), .Y(
        data_c_r[7]) );
  OAI221XL U687 ( .A0(n439), .A1(n779), .B0(n431), .B1(n770), .C0(n828), .Y(
        n703) );
  AOI221X2 U688 ( .A0(n22), .A1(n789), .B0(n727), .B1(n759), .C0(n728), .Y(
        n726) );
  MXI2X1 U689 ( .A(n266), .B(n949), .S0(n760), .Y(n930) );
  MXI2X1 U690 ( .A(n258), .B(n950), .S0(n760), .Y(n929) );
  MXI2X1 U691 ( .A(n257), .B(n904), .S0(n760), .Y(med_e_wait_r[62]) );
  MXI2X1 U692 ( .A(n256), .B(n902), .S0(n440), .Y(med_e_wait_r[61]) );
  NAND2XL U693 ( .A(n739), .B(n807), .Y(n804) );
  OAI221X2 U694 ( .A0(n417), .A1(n778), .B0(n156), .B1(n767), .C0(n844), .Y(
        \data_e_r[5] ) );
  OAI221X2 U695 ( .A0(n423), .A1(n778), .B0(n415), .B1(n768), .C0(n836), .Y(
        data_f_r[7]) );
  OAI221X2 U696 ( .A0(n289), .A1(n780), .B0(n448), .B1(n764), .C0(n815), .Y(
        data_i_r[6]) );
  OAI221X2 U697 ( .A0(n156), .A1(n777), .B0(n644), .B1(n161), .C0(n854), .Y(
        data_d_r[5]) );
  OAI221X4 U698 ( .A0(n413), .A1(n776), .B0(n774), .B1(n20), .C0(n850), .Y(
        data_d_r[1]) );
  INVXL U699 ( .A(n717), .Y(n718) );
  CLKINVX1 U700 ( .A(n718), .Y(n719) );
  OAI221X2 U701 ( .A0(n284), .A1(n780), .B0(n453), .B1(n770), .C0(n810), .Y(
        data_i_r[1]) );
  OAI221X4 U702 ( .A0(n442), .A1(n779), .B0(n434), .B1(n770), .C0(n826), .Y(
        data_g_r[4]) );
  OAI221XL U703 ( .A0(n285), .A1(n780), .B0(n452), .B1(n772), .C0(n811), .Y(
        n721) );
  OAI221X4 U704 ( .A0(n441), .A1(n779), .B0(n433), .B1(n765), .C0(n827), .Y(
        data_g_r[5]) );
  AOI221X2 U705 ( .A0(n21), .A1(n789), .B0(n723), .B1(n700), .C0(n724), .Y(
        n722) );
  OAI221XL U706 ( .A0(n283), .A1(n776), .B0(n454), .B1(n771), .C0(n647), .Y(
        n725) );
  OAI221X4 U707 ( .A0(n389), .A1(n776), .B0(n381), .B1(n775), .C0(n895), .Y(
        data_a_r[1]) );
  OAI221X4 U708 ( .A0(n411), .A1(n776), .B0(n774), .B1(n18), .C0(n852), .Y(
        data_d_r[3]) );
  OAI221X4 U709 ( .A0(n426), .A1(n778), .B0(n129), .B1(n771), .C0(n835), .Y(
        data_f_r[4]) );
  OAI221X4 U710 ( .A0(n290), .A1(n780), .B0(n447), .B1(n762), .C0(n816), .Y(
        data_i_r[7]) );
  BUFX12 U711 ( .A(n790), .Y(n781) );
  BUFX12 U712 ( .A(n790), .Y(n786) );
  BUFX20 U713 ( .A(n791), .Y(n790) );
  OAI221X2 U714 ( .A0(n285), .A1(n780), .B0(n452), .B1(n771), .C0(n811), .Y(
        data_i_r[2]) );
  OA22X4 U715 ( .A0(n129), .A1(n748), .B0(n426), .B1(n740), .Y(n813) );
  OA22X4 U716 ( .A0(n412), .A1(n754), .B0(n420), .B1(n739), .Y(n817) );
  OAI221X2 U717 ( .A0(n452), .A1(n780), .B0(n444), .B1(n774), .C0(n817), .Y(
        data_h_r[2]) );
  OA22X4 U718 ( .A0(n151), .A1(n746), .B0(n129), .B1(n741), .Y(n819) );
  OAI221X2 U719 ( .A0(n446), .A1(n779), .B0(n438), .B1(n761), .C0(n822), .Y(
        data_g_r[0]) );
  OA22X4 U720 ( .A0(n755), .A1(n18), .B0(n742), .B1(n411), .Y(n825) );
  OA22X4 U721 ( .A0(n752), .A1(n19), .B0(n151), .B1(n702), .Y(n826) );
  OA22X4 U722 ( .A0(n748), .A1(n161), .B0(n156), .B1(n742), .Y(n827) );
  OAI221X2 U723 ( .A0(n439), .A1(n779), .B0(n431), .B1(n769), .C0(n828), .Y(
        data_g_r[7]) );
  OA22X4 U724 ( .A0(n146), .A1(n757), .B0(n402), .B1(n123), .Y(n835) );
  OAI221X2 U725 ( .A0(n422), .A1(n778), .B0(n414), .B1(n762), .C0(n838), .Y(
        \data_e_r[0] ) );
  OA22X4 U726 ( .A0(n375), .A1(n754), .B0(n383), .B1(n739), .Y(n856) );
  OA22X4 U727 ( .A0(n363), .A1(n754), .B0(n371), .B1(n741), .Y(n868) );
  OA22X4 U728 ( .A0(n361), .A1(n752), .B0(n369), .B1(n741), .Y(n874) );
  OA22X4 U729 ( .A0(n354), .A1(n752), .B0(n362), .B1(n701), .Y(n887) );
  OA22X4 U730 ( .A0(n271), .A1(n756), .B0(n354), .B1(n740), .Y(n901) );
  OAI31X2 U731 ( .A0(n910), .A1(n267), .A2(n776), .B0(n134), .Y(n913) );
endmodule


module sober_compare ( clk, rst, start, G1, G2, G3, G4, angle1, angle2, angle3, 
        angle4, sobel_result );
  input [10:0] G1;
  input [10:0] G2;
  input [10:0] G3;
  input [10:0] G4;
  input [1:0] angle1;
  input [1:0] angle2;
  input [1:0] angle3;
  input [1:0] angle4;
  output [10:0] sobel_result;
  input clk, rst, start;
  wire   N29, N30, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, n7, n8, n10, n12, n13, n15, n19, n22, n24, n290, n31, n32, n33,
         n36, n39, n40, n42, n43, n45, n48, n49, n52, n53, n55, n56, n57, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n1160, n1170, n1180, n1190, n1200, n1210, n1220,
         n1230, n1240, n1250, n1260, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n166, n167, n168, n1,
         n2, n3, n4, n5, n6, n9, n11, n14, n16, n17, n18, n20, n21, n23, n25,
         n26, n27, n28, n300, n34, n35, n37, n38, n41, n44, n46, n47, n50, n51,
         n54, n58, n59, n164, n165, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265;
  wire   [10:0] temp_a_r;
  wire   [10:0] temp_b_r;
  wire   [10:0] temp_a;
  wire   [10:0] temp_b;

  DFFRX1 G3_r_reg_2_ ( .D(n109), .CK(clk), .RN(n208), .Q(n14), .QN(n148) );
  DFFRX1 G3_r_reg_8_ ( .D(n115), .CK(clk), .RN(n209), .QN(n142) );
  DFFRX1 G3_r_reg_6_ ( .D(n113), .CK(clk), .RN(n208), .QN(n144) );
  DFFRX1 G3_r_reg_3_ ( .D(n110), .CK(clk), .RN(n208), .QN(n147) );
  DFFRX1 G2_r_reg_9_ ( .D(n127), .CK(clk), .RN(n210), .Q(n34), .QN(n75) );
  DFFRX1 G2_r_reg_8_ ( .D(n1260), .CK(clk), .RN(n209), .QN(n74) );
  DFFRX1 G2_r_reg_6_ ( .D(n1240), .CK(clk), .RN(n209), .QN(n72) );
  DFFRX1 G2_r_reg_5_ ( .D(n1230), .CK(clk), .RN(n209), .QN(n71) );
  DFFRX1 G2_r_reg_3_ ( .D(n1210), .CK(clk), .RN(n209), .QN(n69) );
  DFFRX1 G2_r_reg_0_ ( .D(n1180), .CK(clk), .RN(n209), .QN(n66) );
  DFFRX1 G4_r_reg_2_ ( .D(n98), .CK(clk), .RN(n207), .QN(n159) );
  DFFRX1 G4_r_reg_6_ ( .D(n102), .CK(clk), .RN(n207), .QN(n155) );
  DFFRX1 G4_r_reg_3_ ( .D(n99), .CK(clk), .RN(n207), .QN(n158) );
  DFFRX1 G2_r_reg_4_ ( .D(n1220), .CK(clk), .RN(n209), .Q(n18), .QN(n70) );
  DFFRX1 G2_r_reg_2_ ( .D(n1200), .CK(clk), .RN(n209), .Q(n17), .QN(n68) );
  DFFRX1 G1_r_reg_9_ ( .D(n138), .CK(clk), .RN(n210), .QN(n86) );
  DFFRX1 G1_r_reg_8_ ( .D(n137), .CK(clk), .RN(n210), .QN(n85) );
  DFFRX1 G1_r_reg_6_ ( .D(n135), .CK(clk), .RN(n210), .QN(n83) );
  DFFRX1 G1_r_reg_5_ ( .D(n134), .CK(clk), .RN(n210), .QN(n82) );
  DFFRX1 G1_r_reg_3_ ( .D(n132), .CK(clk), .RN(n210), .QN(n80) );
  DFFRX1 G1_r_reg_0_ ( .D(n129), .CK(clk), .RN(n210), .QN(n77) );
  DFFRX1 G1_r_reg_4_ ( .D(n133), .CK(clk), .RN(n210), .QN(n81) );
  DFFRX1 G1_r_reg_2_ ( .D(n131), .CK(clk), .RN(n210), .QN(n79) );
  DFFRX1 G1_r_reg_1_ ( .D(n130), .CK(clk), .RN(n210), .QN(n78) );
  DFFRX1 G2_r_reg_1_ ( .D(n1190), .CK(clk), .RN(n209), .Q(n16), .QN(n67) );
  DFFRX1 temp_a_r_reg_10_ ( .D(temp_a[10]), .CK(clk), .RN(n205), .Q(
        temp_a_r[10]), .QN(n62) );
  DFFRX1 angle1_r_reg_1_ ( .D(n95), .CK(clk), .RN(n207), .Q(n6), .QN(n162) );
  DFFRX1 angle4_r_reg_1_ ( .D(n89), .CK(clk), .RN(n206), .Q(n37), .QN(n168) );
  DFFRX1 angle3_r_reg_0_ ( .D(n90), .CK(clk), .RN(n206), .QN(n167) );
  DFFRX1 angle4_r_reg_0_ ( .D(n88), .CK(clk), .RN(n206), .Q(n38), .QN(n65) );
  DFFRX1 temp_a_r_reg_4_ ( .D(temp_a[4]), .CK(clk), .RN(n205), .QN(n56) );
  DFFRX1 temp_a_r_reg_8_ ( .D(temp_a[8]), .CK(clk), .RN(n205), .Q(temp_a_r[8]), 
        .QN(n60) );
  DFFRX1 temp_a_r_reg_9_ ( .D(temp_a[9]), .CK(clk), .RN(n205), .Q(temp_a_r[9]), 
        .QN(n61) );
  DFFRX1 temp_a_r_reg_0_ ( .D(temp_a[0]), .CK(clk), .RN(n204), .Q(temp_a_r[0]), 
        .QN(n52) );
  DFFRX2 temp_b_r_reg_3_ ( .D(temp_b[3]), .CK(clk), .RN(n206), .Q(temp_b_r[3])
         );
  DFFRX2 G4_r_reg_1_ ( .D(n97), .CK(clk), .RN(n207), .Q(n27), .QN(n160) );
  DFFRX2 G3_r_reg_1_ ( .D(n108), .CK(clk), .RN(n208), .Q(n20), .QN(n149) );
  DFFRX2 G4_r_reg_4_ ( .D(n100), .CK(clk), .RN(n207), .Q(n25), .QN(n157) );
  DFFRX2 G3_r_reg_4_ ( .D(n111), .CK(clk), .RN(n208), .Q(n21), .QN(n146) );
  DFFRX4 temp_b_r_reg_7_ ( .D(temp_b[7]), .CK(clk), .RN(n206), .Q(temp_b_r[7])
         );
  DFFRX2 G4_r_reg_7_ ( .D(n103), .CK(clk), .RN(n208), .Q(n26), .QN(n154) );
  DFFRX2 G3_r_reg_7_ ( .D(n114), .CK(clk), .RN(n208), .Q(n23), .QN(n143) );
  DFFRX2 temp_b_r_reg_10_ ( .D(temp_b[10]), .CK(clk), .RN(n206), .Q(
        temp_b_r[10]), .QN(n9) );
  DFFRX2 G4_r_reg_10_ ( .D(n106), .CK(clk), .RN(n208), .QN(n151) );
  DFFRX2 G3_r_reg_10_ ( .D(n1170), .CK(clk), .RN(n209), .QN(n140) );
  DFFRX2 G3_r_reg_0_ ( .D(n107), .CK(clk), .RN(n208), .QN(n150) );
  DFFRX4 temp_b_r_reg_9_ ( .D(temp_b[9]), .CK(clk), .RN(n206), .Q(temp_b_r[9])
         );
  DFFRX2 G4_r_reg_5_ ( .D(n101), .CK(clk), .RN(n207), .QN(n156) );
  DFFRX2 G3_r_reg_5_ ( .D(n112), .CK(clk), .RN(n208), .QN(n145) );
  DFFRX2 temp_b_r_reg_8_ ( .D(temp_b[8]), .CK(clk), .RN(n206), .Q(temp_b_r[8])
         );
  DFFRX2 G4_r_reg_8_ ( .D(n104), .CK(clk), .RN(n208), .QN(n153) );
  DFFRX2 temp_b_r_reg_2_ ( .D(temp_b[2]), .CK(clk), .RN(n206), .Q(temp_b_r[2]), 
        .QN(n196) );
  DFFRX2 temp_b_r_reg_6_ ( .D(temp_b[6]), .CK(clk), .RN(n206), .QN(n4) );
  DFFRX2 sobel_result_r_reg_7_ ( .D(N123), .CK(clk), .RN(n204), .Q(
        sobel_result[7]) );
  DFFRX2 cnt_reg_1_ ( .D(N30), .CK(clk), .RN(n211), .Q(n263), .QN(n63) );
  DFFRX2 G1_r_reg_10_ ( .D(n139), .CK(clk), .RN(n211), .Q(n171), .QN(n87) );
  DFFRX2 G2_r_reg_10_ ( .D(n128), .CK(clk), .RN(n210), .Q(n170), .QN(n76) );
  DFFRX2 cnt_reg_0_ ( .D(N29), .CK(clk), .RN(n211), .Q(n262), .QN(n64) );
  DFFRHQX1 temp_a_r_reg_6_ ( .D(temp_a[6]), .CK(clk), .RN(n205), .Q(n59) );
  DFFRHQX1 temp_a_r_reg_2_ ( .D(temp_a[2]), .CK(clk), .RN(n205), .Q(n54) );
  DFFRX2 temp_a_r_reg_3_ ( .D(temp_a[3]), .CK(clk), .RN(n205), .Q(temp_a_r[3]), 
        .QN(n55) );
  DFFRHQX1 angle2_r_reg_1_ ( .D(n93), .CK(clk), .RN(n207), .Q(n50) );
  DFFRX2 temp_b_r_reg_1_ ( .D(temp_b[1]), .CK(clk), .RN(n205), .QN(n195) );
  DFFRX2 temp_a_r_reg_1_ ( .D(temp_a[1]), .CK(clk), .RN(n205), .Q(n194), .QN(
        n53) );
  DFFRX2 temp_b_r_reg_5_ ( .D(temp_b[5]), .CK(clk), .RN(n206), .Q(n47), .QN(
        n243) );
  DFFRX2 temp_a_r_reg_5_ ( .D(temp_a[5]), .CK(clk), .RN(n205), .Q(temp_a_r[5]), 
        .QN(n57) );
  DFFRHQX1 angle2_r_reg_0_ ( .D(n92), .CK(clk), .RN(n207), .Q(n44) );
  DFFRX2 G2_r_reg_7_ ( .D(n1250), .CK(clk), .RN(n209), .Q(n41), .QN(n73) );
  DFFRX2 G1_r_reg_7_ ( .D(n136), .CK(clk), .RN(n210), .QN(n84) );
  DFFRX1 G3_r_reg_9_ ( .D(n1160), .CK(clk), .RN(rst), .QN(n141) );
  DFFRX1 angle3_r_reg_1_ ( .D(n91), .CK(clk), .RN(rst), .Q(n265), .QN(n166) );
  DFFRX1 sobel_result_r_reg_3_ ( .D(N119), .CK(clk), .RN(n204), .Q(
        sobel_result[3]) );
  DFFRX1 sobel_result_r_reg_1_ ( .D(N117), .CK(clk), .RN(n204), .Q(
        sobel_result[1]) );
  DFFRX1 sobel_result_r_reg_0_ ( .D(N116), .CK(clk), .RN(n204), .Q(
        sobel_result[0]) );
  DFFRHQX1 temp_a_r_reg_7_ ( .D(temp_a[7]), .CK(clk), .RN(n205), .Q(n28) );
  DFFRX2 sobel_result_r_reg_8_ ( .D(N124), .CK(clk), .RN(n204), .Q(
        sobel_result[8]) );
  DFFRX2 sobel_result_r_reg_9_ ( .D(N125), .CK(clk), .RN(n204), .Q(
        sobel_result[9]) );
  DFFRX2 sobel_result_r_reg_6_ ( .D(N122), .CK(clk), .RN(n204), .Q(
        sobel_result[6]) );
  DFFRX2 sobel_result_r_reg_10_ ( .D(N126), .CK(clk), .RN(n204), .Q(
        sobel_result[10]) );
  DFFRX2 sobel_result_r_reg_2_ ( .D(N118), .CK(clk), .RN(n204), .Q(
        sobel_result[2]) );
  DFFRX2 sobel_result_r_reg_5_ ( .D(N121), .CK(clk), .RN(n204), .Q(
        sobel_result[5]) );
  DFFRX2 sobel_result_r_reg_4_ ( .D(N120), .CK(clk), .RN(n204), .Q(
        sobel_result[4]) );
  DFFRX2 temp_b_r_reg_4_ ( .D(temp_b[4]), .CK(clk), .RN(n206), .Q(temp_b_r[4])
         );
  DFFRX2 angle1_r_reg_0_ ( .D(n94), .CK(clk), .RN(n207), .Q(n11), .QN(n163) );
  DFFRX2 temp_b_r_reg_0_ ( .D(temp_b[0]), .CK(clk), .RN(n205), .Q(temp_b_r[0])
         );
  DFFRX2 G4_r_reg_0_ ( .D(n96), .CK(clk), .RN(n207), .QN(n161) );
  DFFRX2 G4_r_reg_9_ ( .D(n105), .CK(clk), .RN(n208), .QN(n152) );
  NOR2X8 U3 ( .A(n189), .B(n236), .Y(n247) );
  OR2X2 U4 ( .A(n151), .B(n226), .Y(n182) );
  NAND3X2 U5 ( .A(n173), .B(n174), .C(n10), .Y(temp_b[8]) );
  NAND3X2 U6 ( .A(n179), .B(n180), .C(n19), .Y(temp_b[0]) );
  NAND3X2 U7 ( .A(n175), .B(n176), .C(n13), .Y(temp_b[5]) );
  CLKBUFX3 U8 ( .A(n59), .Y(n1) );
  AOI2BB2XL U9 ( .B0(n41), .B1(n169), .A0N(n84), .A1N(n260), .Y(n222) );
  NAND2BX4 U10 ( .AN(n36), .B(n163), .Y(n290) );
  NAND2X6 U11 ( .A(n63), .B(n64), .Y(n36) );
  OAI32X4 U12 ( .A0(n35), .A1(temp_a_r[5]), .A2(n243), .B0(n1), .B1(n4), .Y(
        n245) );
  AND2X6 U13 ( .A(n59), .B(n4), .Y(n35) );
  CLKINVX16 U14 ( .A(n198), .Y(n2) );
  CLKINVX20 U15 ( .A(n2), .Y(n3) );
  BUFX16 U16 ( .A(n8), .Y(n201) );
  NAND2X2 U17 ( .A(n194), .B(n195), .Y(n228) );
  NAND2BX1 U18 ( .AN(n196), .B(n58), .Y(n229) );
  INVX3 U19 ( .A(n201), .Y(n169) );
  INVX12 U20 ( .A(n212), .Y(n260) );
  INVX8 U21 ( .A(n217), .Y(n226) );
  NAND2X4 U22 ( .A(n193), .B(n216), .Y(n217) );
  NAND3X1 U23 ( .A(n11), .B(n192), .C(n162), .Y(n193) );
  INVX6 U24 ( .A(n165), .Y(n22) );
  BUFX12 U25 ( .A(n32), .Y(n190) );
  BUFX16 U26 ( .A(n33), .Y(n199) );
  INVX1 U27 ( .A(n35), .Y(n248) );
  INVX3 U28 ( .A(n199), .Y(n261) );
  BUFX16 U29 ( .A(start), .Y(n198) );
  OAI221XL U30 ( .A0(n71), .A1(n22), .B0(n145), .B1(n199), .C0(n43), .Y(
        temp_a[5]) );
  OAI221XL U31 ( .A0(n67), .A1(n22), .B0(n149), .B1(n199), .C0(n218), .Y(
        temp_a[1]) );
  OAI221XL U32 ( .A0(n69), .A1(n22), .B0(n147), .B1(n199), .C0(n45), .Y(
        temp_a[3]) );
  NAND3X1 U33 ( .A(n177), .B(n178), .C(n7), .Y(temp_b[9]) );
  NAND3X1 U34 ( .A(n181), .B(n182), .C(n5), .Y(temp_b[10]) );
  NAND3X1 U35 ( .A(n183), .B(n184), .C(n222), .Y(temp_b[7]) );
  OAI221X1 U36 ( .A0(n147), .A1(n227), .B0(n158), .B1(n226), .C0(n15), .Y(
        temp_b[3]) );
  OAI221XL U37 ( .A0(n66), .A1(n22), .B0(n150), .B1(n199), .C0(n49), .Y(
        temp_a[0]) );
  NAND2BX1 U38 ( .AN(n290), .B(n6), .Y(n213) );
  AND3X6 U39 ( .A(n215), .B(n214), .C(n213), .Y(n227) );
  NAND3BX1 U40 ( .AN(n22), .B(n44), .C(n50), .Y(n215) );
  AOI22X1 U41 ( .A0(n170), .A1(n169), .B0(n171), .B1(n212), .Y(n5) );
  AND2X4 U42 ( .A(n63), .B(n262), .Y(n165) );
  NAND4X1 U43 ( .A(n231), .B(n229), .C(temp_a_r[3]), .D(n230), .Y(n238) );
  NAND3X2 U44 ( .A(n300), .B(n251), .C(temp_b_r[7]), .Y(n240) );
  NAND3X1 U45 ( .A(n241), .B(n240), .C(n239), .Y(n242) );
  OA22X1 U46 ( .A0(n81), .A1(n260), .B0(n70), .B1(n201), .Y(n225) );
  AOI2BB1X4 U47 ( .A0N(n233), .A1N(n232), .B0(n197), .Y(n234) );
  NAND2BX2 U48 ( .AN(n195), .B(n53), .Y(n231) );
  INVX3 U49 ( .A(n28), .Y(n300) );
  NAND3BX1 U50 ( .AN(n44), .B(n51), .C(n165), .Y(n191) );
  AOI2BB2XL U51 ( .B0(n34), .B1(n169), .A0N(n86), .A1N(n260), .Y(n7) );
  OR3XL U52 ( .A(n37), .B(n38), .C(n190), .Y(n214) );
  CLKINVX2 U53 ( .A(n190), .Y(n264) );
  NAND2X6 U54 ( .A(n191), .B(n24), .Y(n212) );
  CLKINVX1 U55 ( .A(n44), .Y(n46) );
  OR2X2 U56 ( .A(n57), .B(n47), .Y(n252) );
  CLKINVX1 U57 ( .A(n50), .Y(n51) );
  OA21X4 U58 ( .A0(n235), .A1(n234), .B0(n55), .Y(n236) );
  INVX3 U59 ( .A(n54), .Y(n58) );
  NAND2X4 U60 ( .A(n250), .B(n242), .Y(n254) );
  CLKINVX1 U61 ( .A(n1), .Y(n164) );
  NAND2X2 U62 ( .A(n64), .B(n263), .Y(n33) );
  NOR2X1 U63 ( .A(n200), .B(n300), .Y(N123) );
  NOR2X1 U64 ( .A(n53), .B(n200), .Y(N117) );
  NOR2X1 U65 ( .A(n52), .B(n200), .Y(N116) );
  NOR2X1 U66 ( .A(n58), .B(n200), .Y(N118) );
  NOR2X1 U67 ( .A(n55), .B(n200), .Y(N119) );
  NOR2X1 U68 ( .A(n56), .B(n200), .Y(N120) );
  NOR2X1 U69 ( .A(n57), .B(n200), .Y(N121) );
  NOR2X1 U70 ( .A(n164), .B(n200), .Y(N122) );
  NOR2X1 U71 ( .A(n60), .B(n200), .Y(N124) );
  NOR2X1 U72 ( .A(n61), .B(n200), .Y(N125) );
  NOR2X1 U73 ( .A(n62), .B(n200), .Y(N126) );
  INVX2 U74 ( .A(n231), .Y(n232) );
  NOR2X1 U75 ( .A(n3), .B(n262), .Y(N29) );
  NAND2X2 U76 ( .A(n263), .B(n262), .Y(n32) );
  OA22X1 U77 ( .A0(n66), .A1(n201), .B0(n77), .B1(n260), .Y(n19) );
  OAI221X2 U78 ( .A0(n144), .A1(n227), .B0(n155), .B1(n226), .C0(n12), .Y(
        temp_b[6]) );
  OAI211X2 U79 ( .A0(n246), .A1(n245), .B0(n251), .C0(n244), .Y(n172) );
  OAI211X2 U80 ( .A0(n256), .A1(n255), .B0(n172), .C0(n254), .Y(n257) );
  OAI221X2 U81 ( .A0(n148), .A1(n227), .B0(n159), .B1(n226), .C0(n220), .Y(
        temp_b[2]) );
  OR2X1 U82 ( .A(n142), .B(n227), .Y(n173) );
  OR2X1 U83 ( .A(n153), .B(n226), .Y(n174) );
  OA22XL U84 ( .A0(n74), .A1(n201), .B0(n85), .B1(n260), .Y(n10) );
  OR2XL U85 ( .A(n145), .B(n227), .Y(n175) );
  OR2X1 U86 ( .A(n156), .B(n226), .Y(n176) );
  OA22XL U87 ( .A0(n71), .A1(n201), .B0(n82), .B1(n260), .Y(n13) );
  OR2XL U88 ( .A(n141), .B(n227), .Y(n177) );
  OR2X1 U89 ( .A(n152), .B(n226), .Y(n178) );
  OR2XL U90 ( .A(n150), .B(n227), .Y(n179) );
  OR2X1 U91 ( .A(n161), .B(n226), .Y(n180) );
  OR2X1 U92 ( .A(n140), .B(n227), .Y(n181) );
  OR2X1 U93 ( .A(n143), .B(n227), .Y(n183) );
  OR2X1 U94 ( .A(n154), .B(n226), .Y(n184) );
  OR2X1 U95 ( .A(n146), .B(n227), .Y(n185) );
  OR2X1 U96 ( .A(n157), .B(n226), .Y(n186) );
  NAND3X2 U97 ( .A(n185), .B(n186), .C(n225), .Y(temp_b[4]) );
  OR2X1 U98 ( .A(n149), .B(n227), .Y(n187) );
  OR2X1 U99 ( .A(n160), .B(n226), .Y(n188) );
  NAND3X2 U100 ( .A(n187), .B(n188), .C(n219), .Y(temp_b[1]) );
  AND3X4 U101 ( .A(temp_b_r[3]), .B(n238), .C(n237), .Y(n189) );
  AOI32X2 U102 ( .A0(n247), .A1(n254), .A2(n253), .B0(temp_a_r[10]), .B1(n9), 
        .Y(n258) );
  BUFX20 U103 ( .A(n259), .Y(n200) );
  AOI2BB1X4 U104 ( .A0N(n290), .A1N(n6), .B0(n31), .Y(n8) );
  OAI33X4 U105 ( .A0(n190), .A1(n168), .A2(n38), .B0(n167), .B1(n166), .B2(n33), .Y(n31) );
  AOI33X2 U106 ( .A0(n264), .A1(n38), .A2(n168), .B0(n261), .B1(n265), .B2(
        n167), .Y(n24) );
  OA22X1 U107 ( .A0(n79), .A1(n260), .B0(n68), .B1(n201), .Y(n220) );
  OA22XL U108 ( .A0(n78), .A1(n260), .B0(n201), .B1(n67), .Y(n219) );
  OA22X2 U109 ( .A0(n72), .A1(n201), .B0(n83), .B1(n260), .Y(n12) );
  INVXL U110 ( .A(n36), .Y(n192) );
  AOI33X4 U111 ( .A0(n46), .A1(n50), .A2(n165), .B0(n167), .B1(n166), .B2(n261), .Y(n216) );
  NOR2X2 U112 ( .A(n58), .B(temp_b_r[2]), .Y(n197) );
  NAND2XL U113 ( .A(n197), .B(temp_a_r[3]), .Y(n237) );
  OR2X2 U114 ( .A(n61), .B(temp_b_r[9]), .Y(n250) );
  AOI21XL U115 ( .A0(n22), .A1(n199), .B0(n3), .Y(N30) );
  NAND3XL U116 ( .A(n250), .B(n252), .C(n251), .Y(n255) );
  MX2X1 U117 ( .A(n27), .B(G4[1]), .S0(n3), .Y(n97) );
  MX2X1 U118 ( .A(n25), .B(G4[4]), .S0(n3), .Y(n100) );
  MX2X1 U119 ( .A(n26), .B(G4[7]), .S0(n3), .Y(n103) );
  MX2X1 U120 ( .A(n20), .B(G3[1]), .S0(n3), .Y(n108) );
  MX2X1 U121 ( .A(n14), .B(G3[2]), .S0(n3), .Y(n109) );
  MX2X1 U122 ( .A(n21), .B(G3[4]), .S0(n3), .Y(n111) );
  MX2X1 U123 ( .A(n23), .B(G3[7]), .S0(n3), .Y(n114) );
  MX2X1 U124 ( .A(n16), .B(G2[1]), .S0(n3), .Y(n1190) );
  MX2X1 U125 ( .A(n17), .B(G2[2]), .S0(n3), .Y(n1200) );
  MX2X1 U126 ( .A(n18), .B(G2[4]), .S0(n3), .Y(n1220) );
  MX2X1 U127 ( .A(n41), .B(G2[7]), .S0(n3), .Y(n1250) );
  OR2X4 U128 ( .A(n60), .B(temp_b_r[8]), .Y(n251) );
  AO22X4 U129 ( .A0(temp_b_r[10]), .A1(n62), .B0(n258), .B1(n257), .Y(n259) );
  OAI211XL U130 ( .A0(temp_b_r[4]), .A1(n56), .B0(n249), .C0(n248), .Y(n256)
         );
  OA22XL U131 ( .A0(n190), .A1(n161), .B0(n77), .B1(n36), .Y(n49) );
  OA22XL U132 ( .A0(n190), .A1(n160), .B0(n78), .B1(n36), .Y(n218) );
  OA22XL U133 ( .A0(n159), .A1(n190), .B0(n79), .B1(n36), .Y(n221) );
  OA22XL U134 ( .A0(n190), .A1(n158), .B0(n80), .B1(n36), .Y(n45) );
  OA22XL U135 ( .A0(n157), .A1(n190), .B0(n81), .B1(n36), .Y(n224) );
  OA22XL U136 ( .A0(n190), .A1(n156), .B0(n82), .B1(n36), .Y(n43) );
  OA22XL U137 ( .A0(n190), .A1(n155), .B0(n83), .B1(n36), .Y(n42) );
  OA22XL U138 ( .A0(n154), .A1(n190), .B0(n84), .B1(n36), .Y(n223) );
  OA22XL U139 ( .A0(n190), .A1(n153), .B0(n85), .B1(n36), .Y(n40) );
  OA22XL U140 ( .A0(n190), .A1(n152), .B0(n86), .B1(n36), .Y(n39) );
  OA22XL U141 ( .A0(n190), .A1(n151), .B0(n87), .B1(n36), .Y(n48) );
  CLKBUFX3 U142 ( .A(n203), .Y(n204) );
  CLKBUFX3 U143 ( .A(n202), .Y(n205) );
  CLKBUFX3 U144 ( .A(n203), .Y(n206) );
  CLKBUFX3 U145 ( .A(n203), .Y(n207) );
  CLKBUFX3 U146 ( .A(n202), .Y(n208) );
  CLKBUFX3 U147 ( .A(n202), .Y(n209) );
  CLKBUFX3 U148 ( .A(n203), .Y(n210) );
  CLKBUFX3 U149 ( .A(n202), .Y(n211) );
  INVX1 U150 ( .A(n230), .Y(n233) );
  CLKINVX1 U151 ( .A(n229), .Y(n235) );
  AND2X2 U152 ( .A(n249), .B(n250), .Y(n244) );
  OA22X1 U153 ( .A0(n69), .A1(n201), .B0(n80), .B1(n260), .Y(n15) );
  NAND2BX1 U154 ( .AN(temp_a_r[8]), .B(temp_b_r[8]), .Y(n241) );
  NAND2BX1 U155 ( .AN(temp_a_r[9]), .B(temp_b_r[9]), .Y(n239) );
  OR2X1 U156 ( .A(n300), .B(temp_b_r[7]), .Y(n249) );
  OAI2BB2XL U157 ( .B0(n3), .B1(n168), .A0N(angle4[1]), .A1N(n3), .Y(n89) );
  OAI2BB2XL U158 ( .B0(n3), .B1(n167), .A0N(angle3[0]), .A1N(n3), .Y(n90) );
  OAI2BB2XL U159 ( .B0(n3), .B1(n65), .A0N(n3), .A1N(angle4[0]), .Y(n88) );
  OAI2BB2XL U160 ( .B0(n3), .B1(n75), .A0N(G2[9]), .A1N(n3), .Y(n127) );
  OAI2BB2XL U161 ( .B0(n3), .B1(n76), .A0N(G2[10]), .A1N(n3), .Y(n128) );
  OAI2BB2XL U162 ( .B0(n3), .B1(n78), .A0N(G1[1]), .A1N(n3), .Y(n130) );
  OAI2BB2XL U163 ( .B0(n3), .B1(n79), .A0N(G1[2]), .A1N(n3), .Y(n131) );
  OAI2BB2XL U164 ( .B0(n3), .B1(n81), .A0N(G1[4]), .A1N(n3), .Y(n133) );
  OAI2BB2XL U165 ( .B0(n3), .B1(n84), .A0N(G1[7]), .A1N(n3), .Y(n136) );
  OAI2BB2XL U166 ( .B0(n3), .B1(n77), .A0N(G1[0]), .A1N(n3), .Y(n129) );
  OAI2BB2XL U167 ( .B0(n3), .B1(n80), .A0N(G1[3]), .A1N(n3), .Y(n132) );
  OAI2BB2XL U168 ( .B0(n3), .B1(n82), .A0N(G1[5]), .A1N(n3), .Y(n134) );
  OAI2BB2XL U169 ( .B0(n3), .B1(n85), .A0N(G1[8]), .A1N(n3), .Y(n137) );
  OAI2BB2XL U170 ( .B0(n3), .B1(n86), .A0N(G1[9]), .A1N(n3), .Y(n138) );
  OAI2BB2XL U171 ( .B0(n3), .B1(n87), .A0N(G1[10]), .A1N(n3), .Y(n139) );
  OAI2BB2XL U172 ( .B0(n3), .B1(n166), .A0N(angle3[1]), .A1N(n3), .Y(n91) );
  OAI2BB2XL U173 ( .B0(n3), .B1(n46), .A0N(angle2[0]), .A1N(n3), .Y(n92) );
  OAI2BB2XL U174 ( .B0(n3), .B1(n163), .A0N(angle1[0]), .A1N(n3), .Y(n94) );
  OAI2BB2XL U175 ( .B0(n3), .B1(n150), .A0N(G3[0]), .A1N(n3), .Y(n107) );
  OAI2BB2XL U176 ( .B0(n3), .B1(n147), .A0N(G3[3]), .A1N(n3), .Y(n110) );
  OAI2BB2XL U177 ( .B0(n3), .B1(n145), .A0N(G3[5]), .A1N(n3), .Y(n112) );
  OAI2BB2XL U178 ( .B0(n3), .B1(n144), .A0N(G3[6]), .A1N(n3), .Y(n113) );
  OAI2BB2XL U179 ( .B0(n3), .B1(n142), .A0N(G3[8]), .A1N(n3), .Y(n115) );
  OAI2BB2XL U180 ( .B0(n3), .B1(n141), .A0N(G3[9]), .A1N(n3), .Y(n1160) );
  OAI2BB2XL U181 ( .B0(n3), .B1(n140), .A0N(G3[10]), .A1N(n3), .Y(n1170) );
  OAI2BB2XL U182 ( .B0(n3), .B1(n159), .A0N(G4[2]), .A1N(n3), .Y(n98) );
  OAI2BB2XL U183 ( .B0(n3), .B1(n66), .A0N(G2[0]), .A1N(n3), .Y(n1180) );
  OAI2BB2XL U184 ( .B0(n3), .B1(n69), .A0N(G2[3]), .A1N(n3), .Y(n1210) );
  OAI2BB2XL U185 ( .B0(n3), .B1(n71), .A0N(G2[5]), .A1N(n3), .Y(n1230) );
  OAI2BB2XL U186 ( .B0(n3), .B1(n72), .A0N(G2[6]), .A1N(n3), .Y(n1240) );
  OAI2BB2XL U187 ( .B0(n3), .B1(n74), .A0N(G2[8]), .A1N(n3), .Y(n1260) );
  OAI2BB2XL U188 ( .B0(n3), .B1(n161), .A0N(G4[0]), .A1N(n3), .Y(n96) );
  OAI2BB2XL U189 ( .B0(n3), .B1(n158), .A0N(G4[3]), .A1N(n3), .Y(n99) );
  OAI2BB2XL U190 ( .B0(n3), .B1(n156), .A0N(G4[5]), .A1N(n3), .Y(n101) );
  OAI2BB2XL U191 ( .B0(n3), .B1(n155), .A0N(G4[6]), .A1N(n3), .Y(n102) );
  OAI2BB2XL U192 ( .B0(n3), .B1(n153), .A0N(G4[8]), .A1N(n3), .Y(n104) );
  OAI2BB2XL U193 ( .B0(n3), .B1(n152), .A0N(G4[9]), .A1N(n3), .Y(n105) );
  OAI2BB2XL U194 ( .B0(n3), .B1(n151), .A0N(G4[10]), .A1N(n3), .Y(n106) );
  OAI2BB2XL U195 ( .B0(n3), .B1(n83), .A0N(G1[6]), .A1N(n3), .Y(n135) );
  OAI2BB2XL U196 ( .B0(n3), .B1(n51), .A0N(angle2[1]), .A1N(n3), .Y(n93) );
  OAI2BB2XL U197 ( .B0(n3), .B1(n162), .A0N(angle1[1]), .A1N(n3), .Y(n95) );
  OAI221XL U198 ( .A0(n72), .A1(n22), .B0(n144), .B1(n199), .C0(n42), .Y(
        temp_a[6]) );
  OAI221XL U199 ( .A0(n74), .A1(n22), .B0(n142), .B1(n199), .C0(n40), .Y(
        temp_a[8]) );
  OAI221XL U200 ( .A0(n75), .A1(n22), .B0(n141), .B1(n199), .C0(n39), .Y(
        temp_a[9]) );
  OAI221XL U201 ( .A0(n76), .A1(n22), .B0(n140), .B1(n199), .C0(n48), .Y(
        temp_a[10]) );
  OAI221XL U202 ( .A0(n68), .A1(n22), .B0(n148), .B1(n199), .C0(n221), .Y(
        temp_a[2]) );
  OAI221XL U203 ( .A0(n70), .A1(n22), .B0(n146), .B1(n199), .C0(n224), .Y(
        temp_a[4]) );
  OAI221XL U204 ( .A0(n73), .A1(n22), .B0(n143), .B1(n199), .C0(n223), .Y(
        temp_a[7]) );
  NAND3BX4 U205 ( .AN(temp_a_r[0]), .B(n228), .C(temp_b_r[0]), .Y(n230) );
  CLKBUFX2 U206 ( .A(rst), .Y(n202) );
  CLKBUFX2 U207 ( .A(rst), .Y(n203) );
  AND4X4 U208 ( .A(n248), .B(n56), .C(temp_b_r[4]), .D(n252), .Y(n246) );
  OAI211X2 U209 ( .A0(n245), .A1(n246), .B0(n251), .C0(n244), .Y(n253) );
endmodule


module sobel_gradient ( clk, rst, p1, p2, p3, p4, p6, p7, p8, p9, sobel_result, 
        angle );
  input [7:0] p1;
  input [7:0] p2;
  input [7:0] p3;
  input [7:0] p4;
  input [7:0] p6;
  input [7:0] p7;
  input [7:0] p8;
  input [7:0] p9;
  output [10:0] sobel_result;
  output [1:0] angle;
  input clk, rst;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N171, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211,
         N212, N213, N214, N215, N216, N217, n690, n700, n710, n720, n730,
         n740, n750, n780, n800, n810, n830, n840, N86, N119, N117, n1, n2, n3,
         n4, n510, n711, n850, n2010, n2180, n2200, n2300, n2400, n2500, n2600,
         n2700, n2800, n2900, n3000, n3100, n3200, n3300, n3400, n3500, n3600,
         n370, n380, n390, n400, n410, n420, n430, n440, n450, n460, n470,
         n480, n490, n500, n511, n520, n530, n540, n550, n560, n570, n580,
         n590, n600, n611, n620, n630, n640, n650, n660, n670, n680, n760,
         n770, n790, n820, n851, n860, n87, n88, n89, n901, n91, n92, n93, n94,
         n95, n960, n970, n980, n990, n1000, n1011, n1020, n1030, n1040, n1050,
         n1060, n1070, n1080, n1090, n1100, n1110, n1120, n1130, n1140, n1150,
         n1161, n1170, n118, n1190, n1201, n121, n122, n123, n124, n125, n126,
         n1270, n1280, n1290, n1300, n1311, n1320, n1330, n1340, n1350, n1360,
         n1370, n1380, n1390, n1400, n1411, n1420, n1430, n1440, n1450, n1460,
         n1470, n1480, n1490, n1500, n1511, n1520, n1530, n1540, n1550, n1560,
         n1570, n1580, n1590, n1600, n1611, n1620, n1630, n1640, n1650, n1660,
         n1670, n1680, n1690, n1701, n1710, n172, n173, n174, n175, n176, n177,
         n178, n179, n1801, n181, n182, n1830, n1840, n1850, n1860, n1870,
         n1880, n1890, n1900, n1911, n1920, n1930, n1940, n1950, n1960, n1970,
         n1980, n1990, n2000, n2011, n2020, n2030, n2040, n2050, n2060, n2070,
         n2080, n2090, n2100, n2110, n2120, n2130, n2140, n2150, n2160, n2170,
         n2181, n219, n2201, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n2301, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n2401, n241, n242, n243, n244, n245, n246, n247, n248, n249, n2501,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n2601, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n2701, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n2801, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n2901, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n3001, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n3101, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n3201, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n3301, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n3401, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n3501, n351, n352, n353, n354, n355, n356, n357, n358, n359, n3601,
         n361;
  wire   [7:0] p1_r;
  wire   [7:1] p2_r;
  wire   [7:0] p3_r;
  wire   [7:0] p4_r;
  wire   [7:0] p6_r;
  wire   [7:0] p7_r;
  wire   [7:1] p8_r;
  wire   [7:0] p9_r;
  wire   [9:0] Gx1;
  wire   [9:0] Gy1;
  wire   [9:0] Gx2;
  wire   [9:0] Gy2;
  wire   [7:0] p1_d_r;
  wire   [7:1] p9_d_r;
  wire   [9:0] Gx1_r;
  wire   [9:0] Gy1_r;
  wire   [9:0] Gx2_r;
  wire   [9:0] Gy2_r;
  wire   [10:0] Gx_imm;
  wire   [10:0] Gy_imm;
  wire   [10:0] Gx_imm_r;
  wire   [10:0] Gy_imm_r;
  wire   [9:0] Gy_abs;
  wire   [9:2] Gx_abs;
  wire   [2:0] Gx_delay;
  wire   [3:0] Gy_delay;
  wire   [26:0] Gy_abs_delay;
  wire   [10:0] G_abs;
  wire   [21:0] G_abs_delay;
  wire   [17:8] Gx_acc1_r;
  wire   [11:0] Gx_acc2_r;
  wire   [12:0] Gx_acc3_r;
  wire   [17:9] Gx_acc1_1_r;
  wire   [15:8] Gx_acc2_1_r;
  wire   [16:2] Gx_mult1_r;
  wire   [15:7] Gx_mult2_r;
  wire   [1:0] angle_wait_r;

  DFFRX4 Gx_abs_reg_4_ ( .D(N141), .CK(clk), .RN(n1480), .Q(Gx_abs[4]), .QN(
        n670) );
  sobel_gradient_DW01_add_9_DW01_add_12 add_702 ( .SUM({N44, N43, N42, N41, 
        N40, N39, N38, N37, N36, N35}), .\A[7] (p7_r[7]), .\A[6] (p7_r[6]), 
        .\A[5] (p7_r[5]), .\A[4] (p7_r[4]), .\A[3] (n420), .\A[2] (n460), 
        .\A[1] (n790), .\A[0] (p7_r[0]), .\B[8] (p8_r[7]), .\B[7] (p8_r[6]), 
        .\B[6] (p8_r[5]), .\B[5] (p8_r[4]), .\B[4] (p8_r[3]), .\B[3] (p8_r[2]), 
        .\B[2] (p8_r[1]), .\B[1] (n820) );
  sobel_gradient_DW01_add_10_DW01_add_13 add_701 ( .SUM({N34, N33, N32, N31, 
        N30, N29, N28, N27, N26, N25}), .\A[7] (p3_r[7]), .\A[6] (p3_r[6]), 
        .\A[5] (p3_r[5]), .\A[4] (p3_r[4]), .\A[3] (n901), .\A[2] (n480), 
        .\A[1] (n620), .\A[0] (p3_r[0]), .\B[8] (p2_r[7]), .\B[7] (p2_r[6]), 
        .\B[6] (p2_r[5]), .\B[5] (p2_r[4]), .\B[4] (p2_r[3]), .\B[3] (p2_r[2]), 
        .\B[2] (p2_r[1]), .\B[1] (n520) );
  sobel_gradient_DW01_add_11_DW01_add_14 add_700 ( .SUM({N24, N23, N22, N21, 
        N20, N19, N18, N17, N16, N15}), .\A[7] (p3_r[7]), .\A[6] (p3_r[6]), 
        .\A[5] (p3_r[5]), .\A[4] (p3_r[4]), .\A[3] (p3_r[3]), .\A[2] (p3_r[2]), 
        .\A[1] (n620), .\A[0] (p3_r[0]), .\B[8] (p6_r[7]), .\B[7] (p6_r[6]), 
        .\B[6] (p6_r[5]), .\B[5] (p6_r[4]), .\B[4] (p6_r[3]), .\B[3] (p6_r[2]), 
        .\B[2] (p6_r[1]), .\B[1] (p6_r[0]) );
  sobel_gradient_DW01_add_12_DW01_add_15 add_699 ( .SUM({N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5}), .\A[7] (p7_r[7]), .\A[6] (p7_r[6]), 
        .\A[5] (p7_r[5]), .\A[4] (p7_r[4]), .\A[3] (n420), .\A[2] (n460), 
        .\A[1] (n790), .\A[0] (p7_r[0]), .\B[8] (p4_r[7]), .\B[7] (p4_r[6]), 
        .\B[6] (p4_r[5]), .\B[5] (p4_r[4]), .\B[4] (p4_r[3]), .\B[3] (p4_r[2]), 
        .\B[2] (p4_r[1]), .\B[1] (p4_r[0]) );
  sobel_gradient_DW01_add_13 add_827 ( .SUM({N198, N197, N196, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183}), 
        .\A[15] (Gx_acc2_r[11]), .\A[14] (Gx_acc2_r[10]), .\A[13] (
        Gx_acc2_r[9]), .\A[12] (Gx_acc2_r[8]), .\A[11] (Gx_acc2_r[7]), 
        .\A[10] (Gx_acc2_r[6]), .\A[9] (Gx_acc2_r[5]), .\A[8] (Gx_acc2_r[4]), 
        .\A[7] (Gx_acc2_r[3]), .\A[6] (Gx_acc2_r[2]), .\A[5] (Gx_acc2_r[1]), 
        .\A[4] (Gx_acc2_r[0]), .\B[12] (Gx_acc3_r[12]), .\B[11] (Gx_acc3_r[11]), .\B[10] (Gx_acc3_r[10]), .\B[9] (Gx_acc3_r[9]), .\B[8] (Gx_acc3_r[8]), 
        .\B[7] (Gx_acc3_r[7]), .\B[6] (Gx_acc3_r[6]), .\B[5] (Gx_acc3_r[5]), 
        .\B[4] (Gx_acc3_r[4]), .\B[3] (Gx_acc3_r[3]), .\B[2] (Gx_acc3_r[2]), 
        .\B[1] (Gx_acc3_r[1]), .\B[0] (Gx_acc3_r[0]) );
  sobel_gradient_DW01_add_14 add_794 ( .SUM({N157, N156, N155, N154, N153, 
        N152, N151, N150, N149, N148, N147}), .\A[9] (n1470), .\A[8] (n1460), 
        .\A[7] (n1450), .\A[6] (n1440), .\A[5] (n1430), .\A[4] (Gx_abs[4]), 
        .\A[3] (n1420), .\A[2] (n1411), .\A[1] (n1400), .\A[0] (N158), 
        .\B[9] (Gy_abs[9]), .\B[8] (Gy_abs[8]), .\B[7] (Gy_abs[7]), .\B[6] (
        Gy_abs[6]), .\B[5] (Gy_abs[5]), .\B[4] (Gy_abs[4]), .\B[3] (Gy_abs[3]), 
        .\B[2] (Gy_abs[2]), .\B[1] (Gy_abs[1]), .\B[0] (Gy_abs[0]) );
  sobel_gradient_DW01_sub_4 sub_728 ( .DIFF(Gy_imm), .\A[9] (Gy1_r[9]), 
        .\A[8] (Gy1_r[8]), .\A[7] (Gy1_r[7]), .\A[6] (Gy1_r[6]), .\A[5] (
        Gy1_r[5]), .\A[4] (Gy1_r[4]), .\A[3] (Gy1_r[3]), .\A[2] (Gy1_r[2]), 
        .\A[1] (Gy1_r[1]), .\A[0] (Gy1_r[0]), .\B[9] (Gy2_r[9]), .\B[8] (
        Gy2_r[8]), .\B[7] (Gy2_r[7]), .\B[6] (Gy2_r[6]), .\B[5] (Gy2_r[5]), 
        .\B[4] (Gy2_r[4]), .\B[3] (Gy2_r[3]), .\B[2] (Gy2_r[2]), .\B[1] (
        Gy2_r[1]), .\B[0] (Gy2_r[0]) );
  sobel_gradient_DW01_sub_5 sub_727 ( .DIFF(Gx_imm), .\A[9] (Gx1_r[9]), 
        .\A[8] (Gx1_r[8]), .\A[7] (Gx1_r[7]), .\A[6] (Gx1_r[6]), .\A[5] (
        Gx1_r[5]), .\A[4] (Gx1_r[4]), .\A[3] (Gx1_r[3]), .\A[2] (Gx1_r[2]), 
        .\A[1] (Gx1_r[1]), .\A[0] (Gx1_r[0]), .\B[9] (Gx2_r[9]), .\B[8] (
        Gx2_r[8]), .\B[7] (Gx2_r[7]), .\B[6] (Gx2_r[6]), .\B[5] (Gx2_r[5]), 
        .\B[4] (Gx2_r[4]), .\B[3] (Gx2_r[3]), .\B[2] (Gx2_r[2]), .\B[1] (
        Gx2_r[1]), .\B[0] (Gx2_r[0]) );
  sobel_gradient_DW01_add_15 add_723 ( .A(Gy2), .SUM({N84, N83, N82, N81, N80, 
        N79, N78, N77, N76, N75}), .\B[7] (p9_d_r[7]), .\B[6] (p9_d_r[6]), 
        .\B[5] (p9_d_r[5]), .\B[4] (p9_d_r[4]), .\B[3] (p9_d_r[3]), .\B[2] (
        p9_d_r[2]), .\B[1] (p9_d_r[1]), .\B[0] (n1) );
  sobel_gradient_DW01_add_16 add_722 ( .A(Gy1), .SUM({N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65}), .\B[7] (p1_d_r[7]), .\B[6] (p1_d_r[6]), 
        .\B[5] (n88), .\B[4] (p1_d_r[4]), .\B[3] (p1_d_r[3]), .\B[2] (
        p1_d_r[2]), .\B[1] (p1_d_r[1]), .\B[0] (p1_d_r[0]) );
  sobel_gradient_DW01_add_17 add_721 ( .A(Gx2), .SUM({N64, N63, N62, N61, N60, 
        N59, N58, N57, N56, N55}), .\B[7] (p9_d_r[7]), .\B[6] (p9_d_r[6]), 
        .\B[5] (p9_d_r[5]), .\B[4] (p9_d_r[4]), .\B[3] (p9_d_r[3]), .\B[2] (
        p9_d_r[2]), .\B[1] (p9_d_r[1]), .\B[0] (n94) );
  sobel_gradient_DW01_add_18 add_720 ( .A(Gx1), .SUM({N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45}), .\B[7] (p1_d_r[7]), .\B[6] (p1_d_r[6]), 
        .\B[5] (n88), .\B[4] (p1_d_r[4]), .\B[3] (p1_d_r[3]), .\B[2] (
        p1_d_r[2]), .\B[1] (p1_d_r[1]), .\B[0] (p1_d_r[0]) );
  sobel_gradient_DW01_inc_2 add_0_root_add_749_ni ( .A({N86, n400, n380, n2300, 
        n2010, n3600, n3500, n711, n3, n3000}), .SUM({N105, N104, N103, N102, 
        N101, N100, N99, N98, N97, N96}) );
  sobel_gradient_DW01_inc_3 add_0_root_add_750_ni ( .A({N117, n410, N119, 
        n2600, n850, n2700, n4, n2200, n2, n2400}), .SUM({N136, N135, N134, 
        N133, N132, N131, N130, N129, N128, N127}) );
  DFFRHQX2 Gx_abs_reg_2_ ( .D(N139), .CK(clk), .RN(rst), .Q(Gx_abs[2]) );
  DFFRXL p3_r_reg_0_ ( .D(p3[0]), .CK(clk), .RN(n1490), .Q(p3_r[0]) );
  DFFRX1 p7_r_reg_0_ ( .D(p7[0]), .CK(clk), .RN(n1580), .Q(p7_r[0]) );
  DFFRX1 p4_r_reg_7_ ( .D(p4[7]), .CK(clk), .RN(n1490), .Q(p4_r[7]) );
  DFFRX1 p6_r_reg_7_ ( .D(p6[7]), .CK(clk), .RN(n1590), .Q(p6_r[7]) );
  DFFRX1 p8_r_reg_7_ ( .D(p8[7]), .CK(clk), .RN(n1511), .Q(p8_r[7]) );
  DFFRX1 angle_r_reg_0_ ( .D(angle_wait_r[0]), .CK(clk), .RN(n1620), .Q(
        angle[0]) );
  DFFRX1 Gx_acc2_r_reg_11_ ( .D(N169), .CK(clk), .RN(n1680), .Q(Gx_acc2_r[11])
         );
  DFFRX2 Gy_imm_r_reg_10_ ( .D(Gy_imm[10]), .CK(clk), .RN(n1500), .Q(
        Gy_imm_r[10]), .QN(n830) );
  DFFRX2 Gx_imm_r_reg_10_ ( .D(Gx_imm[10]), .CK(clk), .RN(n1490), .Q(
        Gx_imm_r[10]), .QN(n840) );
  DFFRX1 p4_r_reg_6_ ( .D(p4[6]), .CK(clk), .RN(n1660), .Q(p4_r[6]) );
  DFFRX1 p6_r_reg_6_ ( .D(p6[6]), .CK(clk), .RN(n1590), .Q(p6_r[6]) );
  DFFRX1 p8_r_reg_6_ ( .D(p8[6]), .CK(clk), .RN(n1520), .Q(p8_r[6]) );
  DFFRX1 p7_r_reg_7_ ( .D(p7[7]), .CK(clk), .RN(n1590), .Q(p7_r[7]) );
  DFFRX1 Gy_imm_r_reg_8_ ( .D(Gy_imm[8]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[8]), .QN(n400) );
  DFFRX1 Gx_imm_r_reg_8_ ( .D(Gx_imm[8]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[8]), .QN(n410) );
  DFFRX1 Gy2_r_reg_8_ ( .D(N83), .CK(clk), .RN(n1530), .Q(Gy2_r[8]) );
  DFFRX1 Gx2_r_reg_8_ ( .D(N63), .CK(clk), .RN(n1511), .Q(Gx2_r[8]) );
  DFFRX1 Gy_abs_reg_9_ ( .D(N115), .CK(clk), .RN(n1701), .Q(Gy_abs[9]) );
  DFFRX1 Gx1_r_reg_8_ ( .D(N53), .CK(clk), .RN(n1530), .Q(Gx1_r[8]) );
  DFFRX1 Gy1_r_reg_8_ ( .D(N73), .CK(clk), .RN(n1520), .Q(Gy1_r[8]) );
  DFFRXL p4_r_reg_5_ ( .D(p4[5]), .CK(clk), .RN(n1690), .Q(p4_r[5]) );
  DFFRX1 p8_r_reg_5_ ( .D(p8[5]), .CK(clk), .RN(n1500), .Q(p8_r[5]) );
  DFFRX1 Gx_acc2_r_reg_9_ ( .D(N167), .CK(clk), .RN(n1540), .Q(Gx_acc2_r[9])
         );
  DFFRX1 Gy_imm_r_reg_7_ ( .D(Gy_imm[7]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[7]), .QN(n380) );
  DFFRX1 p7_r_reg_6_ ( .D(p7[6]), .CK(clk), .RN(n1690), .Q(p7_r[6]) );
  DFFRX1 Gx_acc2_r_reg_8_ ( .D(N166), .CK(clk), .RN(n1511), .Q(Gx_acc2_r[8])
         );
  DFFRXL p4_r_reg_4_ ( .D(p4[4]), .CK(clk), .RN(n1540), .Q(p4_r[4]) );
  DFFRX1 p8_r_reg_4_ ( .D(p8[4]), .CK(clk), .RN(n1490), .Q(p8_r[4]) );
  DFFRX1 Gx1_reg_4_ ( .D(N9), .CK(clk), .RN(n1570), .Q(Gx1[4]) );
  DFFRX1 Gy2_reg_4_ ( .D(N39), .CK(clk), .RN(n1550), .Q(Gy2[4]) );
  DFFRX1 Gy_imm_r_reg_6_ ( .D(Gy_imm[6]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[6]), .QN(n2300) );
  DFFRX1 Gx_imm_r_reg_6_ ( .D(Gx_imm[6]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[6]), .QN(n2600) );
  DFFRX1 Gx1_reg_5_ ( .D(N10), .CK(clk), .RN(n1570), .Q(Gx1[5]) );
  DFFRX1 Gy2_reg_5_ ( .D(N40), .CK(clk), .RN(n1550), .Q(Gy2[5]) );
  DFFRX1 Gx_mult1_r_reg_16_ ( .D(N215), .CK(clk), .RN(n1640), .Q(
        Gx_mult1_r[16]), .QN(n510) );
  DFFQX1 Gx_acc3_r_reg_5_ ( .D(n750), .CK(clk), .Q(Gx_acc3_r[5]) );
  DFFRX1 Gy_imm_r_reg_5_ ( .D(Gy_imm[5]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[5]), .QN(n2010) );
  DFFRX1 Gx_imm_r_reg_5_ ( .D(Gx_imm[5]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[5]), .QN(n850) );
  DFFRX1 Gx_imm_r_reg_3_ ( .D(Gx_imm[3]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[3]), .QN(n4) );
  DFFRX1 p3_r_reg_5_ ( .D(p3[5]), .CK(clk), .RN(n1500), .Q(p3_r[5]) );
  DFFRX1 p7_r_reg_5_ ( .D(p7[5]), .CK(clk), .RN(n1480), .Q(p7_r[5]) );
  DFFRX1 Gx2_r_reg_7_ ( .D(N62), .CK(clk), .RN(n1511), .Q(Gx2_r[7]) );
  DFFRX1 Gx_mult1_r_reg_18_ ( .D(N217), .CK(clk), .RN(n1640), .QN(n1340) );
  DFFRX1 Gy2_r_reg_6_ ( .D(N81), .CK(clk), .RN(n1530), .Q(Gy2_r[6]) );
  DFFRX1 Gx2_r_reg_6_ ( .D(N61), .CK(clk), .RN(n1511), .Q(Gx2_r[6]) );
  DFFRX1 Gy_imm_r_reg_1_ ( .D(Gy_imm[1]), .CK(clk), .RN(n1490), .Q(Gy_imm_r[1]), .QN(n3) );
  DFFRX1 Gx_imm_r_reg_1_ ( .D(Gx_imm[1]), .CK(clk), .RN(n1480), .Q(Gx_imm_r[1]), .QN(n2) );
  DFFRXL p6_r_reg_4_ ( .D(p6[4]), .CK(clk), .RN(n1590), .Q(p6_r[4]) );
  DFFRX1 Gx_mult1_r_reg_13_ ( .D(N212), .CK(clk), .RN(n1640), .Q(
        Gx_mult1_r[13]), .QN(n370) );
  DFFRX1 Gy1_r_reg_4_ ( .D(N69), .CK(clk), .RN(n1511), .Q(Gy1_r[4]) );
  DFFRX1 Gx_imm_r_reg_2_ ( .D(Gx_imm[2]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[2]), .QN(n2200) );
  DFFRX1 Gy_imm_r_reg_0_ ( .D(Gy_imm[0]), .CK(clk), .RN(n1490), .Q(Gy_imm_r[0]), .QN(n3000) );
  DFFRX1 Gx_imm_r_reg_0_ ( .D(Gx_imm[0]), .CK(clk), .RN(n1480), .Q(Gx_imm_r[0]), .QN(n2400) );
  DFFRX1 Gy2_r_reg_3_ ( .D(N78), .CK(clk), .RN(n1530), .Q(Gy2_r[3]) );
  DFFRX1 Gy1_r_reg_6_ ( .D(N71), .CK(clk), .RN(n1520), .Q(Gy1_r[6]) );
  DFFRX1 Gx1_r_reg_2_ ( .D(N47), .CK(clk), .RN(n1520), .Q(Gx1_r[2]) );
  DFFRX1 Gy1_r_reg_2_ ( .D(N67), .CK(clk), .RN(n1511), .Q(Gy1_r[2]) );
  DFFRX1 Gy2_reg_2_ ( .D(N37), .CK(clk), .RN(n1540), .Q(Gy2[2]) );
  DFFRX1 Gy2_r_reg_2_ ( .D(N77), .CK(clk), .RN(n1530), .Q(Gy2_r[2]) );
  DFFRX1 Gx2_r_reg_2_ ( .D(N57), .CK(clk), .RN(n1500), .Q(Gx2_r[2]) );
  DFFRX1 Gx1_r_reg_0_ ( .D(N45), .CK(clk), .RN(n1520), .Q(Gx1_r[0]) );
  DFFRX1 Gy1_r_reg_0_ ( .D(N65), .CK(clk), .RN(n1511), .Q(Gy1_r[0]) );
  DFFRX1 Gy1_r_reg_1_ ( .D(N66), .CK(clk), .RN(n1511), .Q(Gy1_r[1]) );
  DFFRX1 Gy1_r_reg_3_ ( .D(N68), .CK(clk), .RN(n1511), .Q(Gy1_r[3]) );
  DFFRX1 p2_r_reg_3_ ( .D(p2[3]), .CK(clk), .RN(n1600), .Q(p2_r[3]) );
  DFFRX1 p6_r_reg_3_ ( .D(p6[3]), .CK(clk), .RN(n1590), .Q(p6_r[3]) );
  DFFRX1 Gx2_r_reg_5_ ( .D(N60), .CK(clk), .RN(n1511), .Q(Gx2_r[5]) );
  DFFRX1 Gy_abs_reg_0_ ( .D(N106), .CK(clk), .RN(n1690), .Q(Gy_abs[0]) );
  DFFRX1 Gy2_r_reg_0_ ( .D(N75), .CK(clk), .RN(n1530), .Q(Gy2_r[0]) );
  DFFRX1 Gx2_r_reg_0_ ( .D(N55), .CK(clk), .RN(n1500), .Q(Gx2_r[0]) );
  DFFRX1 Gy2_r_reg_4_ ( .D(N79), .CK(clk), .RN(n1530), .Q(Gy2_r[4]) );
  DFFRX1 Gx2_r_reg_4_ ( .D(N59), .CK(clk), .RN(n1511), .Q(Gx2_r[4]) );
  DFFRX1 Gy2_r_reg_1_ ( .D(N76), .CK(clk), .RN(n1530), .Q(Gy2_r[1]) );
  DFFRX1 Gx2_r_reg_1_ ( .D(N56), .CK(clk), .RN(n1500), .Q(Gx2_r[1]) );
  DFFRX1 Gx2_reg_2_ ( .D(N17), .CK(clk), .RN(n1550), .Q(Gx2[2]) );
  DFFRX1 Gx_mult1_r_reg_1_ ( .D(N200), .CK(clk), .RN(n1511), .QN(n124) );
  DFFRX1 Gx_mult1_r_reg_0_ ( .D(N199), .CK(clk), .RN(n173), .QN(n125) );
  DFFRX1 p6_r_reg_2_ ( .D(p6[2]), .CK(clk), .RN(n1590), .Q(p6_r[2]) );
  DFFRX1 p8_r_reg_2_ ( .D(p8[2]), .CK(clk), .RN(n1580), .Q(p8_r[2]) );
  DFFRX1 Gx_mult1_r_reg_14_ ( .D(N213), .CK(clk), .RN(n1640), .Q(
        Gx_mult1_r[14]), .QN(n3200) );
  DFFRX1 Gy_abs_delay_reg_2__7_ ( .D(Gy_abs_delay[17]), .CK(clk), .RN(n1690), 
        .Q(Gy_abs_delay[25]), .QN(n650) );
  DFFRX1 Gx_mult2_r_reg_1_ ( .D(N200), .CK(clk), .RN(n1640), .QN(n1270) );
  DFFRX1 Gx_mult1_r_reg_12_ ( .D(N211), .CK(clk), .RN(n1640), .Q(
        Gx_mult1_r[12]), .QN(n3400) );
  DFFRX1 Gx_mult2_r_reg_5_ ( .D(N204), .CK(clk), .RN(n1650), .QN(n118) );
  DFFRX1 Gx_mult2_r_reg_2_ ( .D(N201), .CK(clk), .RN(n1680), .QN(n1280) );
  DFFRX1 Gx_mult2_r_reg_0_ ( .D(N199), .CK(clk), .RN(n1640), .QN(n1290) );
  DFFRX1 Gx_mult2_r_reg_6_ ( .D(N205), .CK(clk), .RN(n1650), .QN(n1190) );
  DFFRX1 Gx_mult2_r_reg_3_ ( .D(N202), .CK(clk), .RN(n1640), .QN(n1201) );
  DFFRX1 Gx_mult2_r_reg_4_ ( .D(N203), .CK(clk), .RN(n1640), .QN(n121) );
  DFFRX1 Gx_mult1_r_reg_15_ ( .D(N214), .CK(clk), .RN(n1640), .Q(
        Gx_mult1_r[15]) );
  DFFRXL p9_r_reg_7_ ( .D(p9[7]), .CK(clk), .RN(n1611), .Q(p9_r[7]) );
  DFFRX1 p9_r_reg_6_ ( .D(p9[6]), .CK(clk), .RN(n1480), .Q(p9_r[6]) );
  DFFRX1 p9_r_reg_2_ ( .D(p9[2]), .CK(clk), .RN(n1611), .Q(p9_r[2]) );
  DFFRX1 p9_r_reg_0_ ( .D(p9[0]), .CK(clk), .RN(n1611), .Q(p9_r[0]) );
  DFFRXL p1_r_reg_6_ ( .D(p1[6]), .CK(clk), .RN(n1611), .Q(p1_r[6]) );
  DFFRX1 p1_r_reg_4_ ( .D(p1[4]), .CK(clk), .RN(n1611), .Q(p1_r[4]) );
  DFFRXL p1_r_reg_1_ ( .D(p1[1]), .CK(clk), .RN(n1600), .Q(p1_r[1]) );
  DFFRX1 G_abs_reg_0_ ( .D(N147), .CK(clk), .RN(n172), .Q(G_abs[0]) );
  DFFRX1 Gx_acc2_1_r_reg_3_ ( .D(N186), .CK(clk), .RN(n1670), .Q(N202) );
  DFFRX1 Gx_acc2_1_r_reg_2_ ( .D(N185), .CK(clk), .RN(n1660), .Q(N201) );
  DFFRX1 Gx_acc2_1_r_reg_1_ ( .D(N184), .CK(clk), .RN(n1660), .Q(N200) );
  DFFRX1 Gx_acc2_1_r_reg_0_ ( .D(N183), .CK(clk), .RN(n1660), .Q(N199) );
  DFFRX1 p9_r_reg_4_ ( .D(p9[4]), .CK(clk), .RN(n1611), .Q(p9_r[4]) );
  DFFRX1 p1_r_reg_7_ ( .D(p1[7]), .CK(clk), .RN(n1611), .Q(p1_r[7]) );
  DFFRX1 p1_r_reg_3_ ( .D(p1[3]), .CK(clk), .RN(n1611), .Q(p1_r[3]) );
  DFFRX1 G_abs_reg_8_ ( .D(N155), .CK(clk), .RN(n1701), .Q(G_abs[8]) );
  DFFRX1 G_abs_reg_4_ ( .D(N151), .CK(clk), .RN(n1710), .Q(G_abs[4]) );
  DFFRX1 G_abs_reg_3_ ( .D(N150), .CK(clk), .RN(n172), .Q(G_abs[3]) );
  DFFRX1 G_abs_reg_2_ ( .D(N149), .CK(clk), .RN(n172), .Q(G_abs[2]) );
  DFFRX1 G_abs_reg_1_ ( .D(N148), .CK(clk), .RN(n172), .Q(G_abs[1]) );
  DFFRX1 Gx_acc2_1_r_reg_7_ ( .D(N190), .CK(clk), .RN(n1670), .Q(N206) );
  DFFRX1 Gx_acc2_1_r_reg_5_ ( .D(N188), .CK(clk), .RN(n1670), .Q(N204) );
  DFFRX1 G_abs_reg_10_ ( .D(N157), .CK(clk), .RN(n1701), .Q(G_abs[10]) );
  DFFRX1 Gy_abs_delay_reg_0__9_ ( .D(Gy_abs[9]), .CK(clk), .RN(n1690), .Q(
        Gy_abs_delay[9]) );
  DFFRX1 Gy_abs_delay_reg_0__0_ ( .D(Gy_abs[0]), .CK(clk), .RN(n1570), .Q(
        Gy_abs_delay[0]) );
  DFFRX1 G_abs_delay_reg_1__3_ ( .D(G_abs_delay[3]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[14]) );
  DFFRX1 G_abs_delay_reg_1__2_ ( .D(G_abs_delay[2]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[13]) );
  DFFRX1 G_abs_delay_reg_1__1_ ( .D(G_abs_delay[1]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[12]) );
  DFFRX1 p3_r_reg_7_ ( .D(p3[7]), .CK(clk), .RN(n1600), .Q(p3_r[7]) );
  DFFRX2 p3_r_reg_2_ ( .D(p3[2]), .CK(clk), .RN(n1670), .Q(p3_r[2]), .QN(n470)
         );
  DFFRXL p2_r_reg_6_ ( .D(p2[6]), .CK(clk), .RN(n1600), .Q(p2_r[6]) );
  DFFRXL Gx_acc1_r_reg_17_ ( .D(n1470), .CK(clk), .RN(n1580), .Q(Gx_acc1_r[17]) );
  DFFRXL Gx_acc1_r_reg_16_ ( .D(n1460), .CK(clk), .RN(n1680), .Q(Gx_acc1_r[16]) );
  DFFRXL Gx_acc1_r_reg_15_ ( .D(n1450), .CK(clk), .RN(n1670), .Q(Gx_acc1_r[15]) );
  DFFRXL Gx_acc1_r_reg_14_ ( .D(n1440), .CK(clk), .RN(n1590), .Q(Gx_acc1_r[14]) );
  DFFRXL Gx_acc1_r_reg_12_ ( .D(Gx_abs[4]), .CK(clk), .RN(n1520), .Q(
        Gx_acc1_r[12]) );
  DFFRXL Gx_acc1_r_reg_9_ ( .D(n1400), .CK(clk), .RN(n1680), .Q(Gx_acc1_r[9])
         );
  DFFQXL Gx_acc3_r_reg_3_ ( .D(n730), .CK(clk), .Q(Gx_acc3_r[3]) );
  DFFQXL Gx_acc3_r_reg_2_ ( .D(n720), .CK(clk), .Q(Gx_acc3_r[2]) );
  DFFQXL Gx_acc3_r_reg_1_ ( .D(n710), .CK(clk), .Q(Gx_acc3_r[1]) );
  DFFQXL Gx_acc3_r_reg_0_ ( .D(n700), .CK(clk), .Q(Gx_acc3_r[0]) );
  DFFRX1 Gx_mult1_r_reg_9_ ( .D(N208), .CK(clk), .RN(n1630), .Q(Gx_mult1_r[9])
         );
  DFFRX4 Gx_abs_reg_0_ ( .D(N137), .CK(clk), .RN(n1550), .Q(N158) );
  DFFRXL G_abs_delay_reg_0__10_ ( .D(G_abs[10]), .CK(clk), .RN(n1701), .Q(
        G_abs_delay[10]) );
  DFFRXL G_abs_delay_reg_0__9_ ( .D(G_abs[9]), .CK(clk), .RN(n1701), .Q(
        G_abs_delay[9]) );
  DFFRXL G_abs_delay_reg_0__7_ ( .D(G_abs[7]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[7]) );
  DFFRXL G_abs_delay_reg_0__6_ ( .D(G_abs[6]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[6]) );
  DFFRXL G_abs_delay_reg_0__5_ ( .D(G_abs[5]), .CK(clk), .RN(rst), .Q(
        G_abs_delay[5]) );
  DFFRXL G_abs_delay_reg_0__3_ ( .D(G_abs[3]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[3]) );
  DFFRXL G_abs_delay_reg_0__2_ ( .D(G_abs[2]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[2]) );
  DFFRXL G_abs_delay_reg_0__1_ ( .D(G_abs[1]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[1]) );
  DFFRXL Gy_delay_reg_3_ ( .D(Gy_delay[2]), .CK(clk), .RN(n1701), .Q(
        Gy_delay[3]) );
  DFFRX1 Gx_acc2_1_r_reg_4_ ( .D(N187), .CK(clk), .RN(n1670), .Q(N203) );
  DFFRX1 Gx_delay_reg_3_ ( .D(Gx_delay[2]), .CK(clk), .RN(n1520), .QN(n690) );
  DFFRX2 p1_d_r_reg_2_ ( .D(p1_r[2]), .CK(clk), .RN(n1540), .Q(p1_d_r[2]) );
  DFFRX2 p1_r_reg_2_ ( .D(p1[2]), .CK(clk), .RN(n1600), .Q(p1_r[2]) );
  DFFRX2 p9_d_r_reg_2_ ( .D(p9_r[2]), .CK(clk), .RN(n1580), .Q(p9_d_r[2]) );
  DFFRX2 Gy_abs_delay_reg_2__6_ ( .D(Gy_abs_delay[16]), .CK(clk), .RN(n1680), 
        .Q(Gy_abs_delay[24]) );
  DFFRX2 p3_r_reg_6_ ( .D(p3[6]), .CK(clk), .RN(n1590), .Q(p3_r[6]) );
  DFFRX2 p4_r_reg_1_ ( .D(p4[1]), .CK(clk), .RN(n1590), .Q(p4_r[1]) );
  DFFRX2 p1_r_reg_5_ ( .D(p1[5]), .CK(clk), .RN(n1611), .Q(p1_r[5]) );
  DFFRX2 Gx_abs_reg_3_ ( .D(N140), .CK(clk), .RN(n1480), .Q(Gx_abs[3]), .QN(
        n960) );
  DFFRX2 Gx_abs_reg_5_ ( .D(N142), .CK(clk), .RN(n1480), .Q(Gx_abs[5]), .QN(
        n95) );
  DFFRX2 Gy1_reg_3_ ( .D(N28), .CK(clk), .RN(n1560), .Q(Gy1[3]) );
  DFFRX2 Gx2_reg_3_ ( .D(N18), .CK(clk), .RN(n1550), .Q(Gx2[3]) );
  DFFRX2 p1_d_r_reg_0_ ( .D(p1_r[0]), .CK(clk), .RN(n1540), .Q(p1_d_r[0]) );
  DFFRX2 p1_r_reg_0_ ( .D(p1[0]), .CK(clk), .RN(n1600), .Q(p1_r[0]) );
  DFFRX2 Gx_acc1_1_r_reg_9_ ( .D(Gx_acc1_r[9]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_1_r[9]), .QN(n93) );
  DFFRX2 Gx_acc2_1_r_reg_10_ ( .D(N193), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[10]), .QN(n760) );
  DFFRX2 Gx_acc2_1_r_reg_9_ ( .D(N192), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[9]), .QN(n1020) );
  DFFRX2 Gx2_reg_4_ ( .D(N19), .CK(clk), .RN(n1550), .Q(Gx2[4]) );
  DFFRX2 p9_d_r_reg_4_ ( .D(p9_r[4]), .CK(clk), .RN(n1580), .Q(p9_d_r[4]) );
  DFFRX2 Gy1_reg_4_ ( .D(N29), .CK(clk), .RN(n1560), .Q(Gy1[4]) );
  DFFRX2 p1_d_r_reg_4_ ( .D(p1_r[4]), .CK(clk), .RN(n1540), .Q(p1_d_r[4]) );
  DFFRX2 Gx_acc2_1_r_reg_11_ ( .D(N194), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[11]), .QN(n2180) );
  DFFRX2 Gy1_reg_6_ ( .D(N31), .CK(clk), .RN(n1560), .Q(Gy1[6]) );
  DFFRX2 p1_d_r_reg_6_ ( .D(p1_r[6]), .CK(clk), .RN(n1540), .Q(p1_d_r[6]) );
  DFFRX2 Gx2_reg_6_ ( .D(N21), .CK(clk), .RN(n1560), .Q(Gx2[6]) );
  DFFRX2 p9_d_r_reg_6_ ( .D(p9_r[6]), .CK(clk), .RN(n1580), .Q(p9_d_r[6]) );
  DFFRX2 Gx_abs_reg_7_ ( .D(N144), .CK(clk), .RN(n1480), .Q(Gx_abs[7]), .QN(
        n91) );
  DFFRX2 Gx_abs_reg_8_ ( .D(N145), .CK(clk), .RN(n1480), .Q(Gx_abs[8]), .QN(
        n1370) );
  DFFRX2 p3_r_reg_3_ ( .D(p3[3]), .CK(clk), .RN(n1611), .Q(p3_r[3]), .QN(n89)
         );
  DFFRX2 Gx_acc2_r_reg_6_ ( .D(N164), .CK(clk), .RN(n1670), .Q(Gx_acc2_r[6])
         );
  DFFRX2 p9_d_r_reg_1_ ( .D(p9_r[1]), .CK(clk), .RN(n1580), .Q(p9_d_r[1]) );
  DFFRX2 p9_r_reg_1_ ( .D(p9[1]), .CK(clk), .RN(n1611), .Q(p9_r[1]) );
  DFFRX2 p1_d_r_reg_1_ ( .D(p1_r[1]), .CK(clk), .RN(n1540), .Q(p1_d_r[1]) );
  DFFRX2 p9_d_r_reg_5_ ( .D(p9_r[5]), .CK(clk), .RN(n1580), .Q(p9_d_r[5]) );
  DFFRX2 p9_r_reg_5_ ( .D(p9[5]), .CK(clk), .RN(n1611), .Q(p9_r[5]) );
  DFFRX2 Gx_acc2_1_r_reg_8_ ( .D(N191), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[8]) );
  DFFRX4 p6_r_reg_0_ ( .D(p6[0]), .CK(clk), .RN(n1590), .Q(p6_r[0]) );
  DFFRX4 p1_d_r_reg_3_ ( .D(p1_r[3]), .CK(clk), .RN(n1540), .Q(p1_d_r[3]) );
  DFFRX4 p9_d_r_reg_3_ ( .D(p9_r[3]), .CK(clk), .RN(n1580), .Q(p9_d_r[3]) );
  DFFRX2 Gx_abs_reg_1_ ( .D(N138), .CK(clk), .RN(n1480), .Q(N171), .QN(n851)
         );
  DFFRHQX1 p8_r_reg_0_ ( .D(p8[0]), .CK(clk), .RN(n1580), .Q(n820) );
  DFFRHQX2 p7_r_reg_1_ ( .D(p7[1]), .CK(clk), .RN(n1530), .Q(n790) );
  DFFRX2 Gx_acc1_1_r_reg_10_ ( .D(Gx_acc1_r[10]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_1_r[10]), .QN(n770) );
  DFFRX2 Gx_imm_r_reg_4_ ( .D(Gx_imm[4]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[4]), .QN(n2700) );
  DFFRX2 Gy_imm_r_reg_4_ ( .D(Gy_imm[4]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[4]), .QN(n3600) );
  DFFRHQX1 Gx_acc1_1_r_reg_8_ ( .D(Gx_acc1_r[8]), .CK(clk), .RN(n1650), .Q(
        n680) );
  DFFRX2 Gx1_reg_7_ ( .D(N12), .CK(clk), .RN(n1570), .Q(Gx1[7]) );
  DFFRX2 p1_d_r_reg_7_ ( .D(p1_r[7]), .CK(clk), .RN(n1540), .Q(p1_d_r[7]) );
  DFFRX2 Gy2_reg_7_ ( .D(N42), .CK(clk), .RN(n1550), .Q(Gy2[7]) );
  DFFRX2 p9_d_r_reg_7_ ( .D(p9_r[7]), .CK(clk), .RN(n1580), .Q(p9_d_r[7]) );
  DFFRX2 Gx1_reg_2_ ( .D(N7), .CK(clk), .RN(n1570), .Q(Gx1[2]) );
  DFFRX2 Gx_acc2_1_r_reg_13_ ( .D(N196), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[13]) );
  DFFRX2 Gx_mult2_r_reg_13_ ( .D(Gx_acc2_1_r[13]), .CK(clk), .RN(n1650), .QN(
        n1330) );
  DFFHQX4 Gx_acc3_r_reg_11_ ( .D(n810), .CK(clk), .Q(Gx_acc3_r[11]) );
  DFFRX2 Gx_acc2_r_reg_7_ ( .D(N165), .CK(clk), .RN(n1600), .Q(Gx_acc2_r[7])
         );
  DFFRX2 Gx_acc1_1_r_reg_12_ ( .D(Gx_acc1_r[12]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_1_r[12]), .QN(n590) );
  DFFRX2 Gx_acc2_1_r_reg_12_ ( .D(N195), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[12]), .QN(n580) );
  DFFRX2 Gx_abs_reg_6_ ( .D(N143), .CK(clk), .RN(n1480), .Q(Gx_abs[6]), .QN(
        n500) );
  DFFRX2 Gx_acc2_r_reg_3_ ( .D(N161), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[3])
         );
  DFFRX2 Gx_acc2_1_r_reg_14_ ( .D(N197), .CK(clk), .RN(n1670), .Q(
        Gx_acc2_1_r[14]), .QN(n2900) );
  DFFRX2 Gx_mult2_r_reg_14_ ( .D(Gx_acc2_1_r[14]), .CK(clk), .RN(n1650), .Q(
        Gx_mult2_r[14]), .QN(n390) );
  DFFRX2 Gx1_reg_6_ ( .D(N11), .CK(clk), .RN(n1570), .Q(Gx1[6]) );
  DFFRX2 Gy2_reg_6_ ( .D(N41), .CK(clk), .RN(n1550), .Q(Gy2[6]) );
  DFFRX2 Gx_acc2_r_reg_2_ ( .D(N160), .CK(clk), .RN(n1611), .Q(Gx_acc2_r[2])
         );
  DFFRX2 Gy2_reg_8_ ( .D(N43), .CK(clk), .RN(n1550), .Q(Gy2[8]) );
  DFFRX2 Gy_abs_delay_reg_2__1_ ( .D(Gy_abs_delay[11]), .CK(clk), .RN(n1570), 
        .Q(Gy_abs_delay[21]), .QN(n1170) );
  DFFRX2 Gy2_reg_9_ ( .D(N44), .CK(clk), .RN(n1550), .Q(Gy2[9]) );
  DFFRX2 Gx_acc2_1_r_reg_15_ ( .D(N198), .CK(clk), .RN(n1530), .Q(
        Gx_acc2_1_r[15]), .QN(n3300) );
  DFFRX2 Gx_mult2_r_reg_15_ ( .D(Gx_acc2_1_r[15]), .CK(clk), .RN(n1650), .Q(
        Gx_mult2_r[15]), .QN(n2500) );
  DFFRX2 Gy1_reg_8_ ( .D(N33), .CK(clk), .RN(n1570), .Q(Gy1[8]) );
  DFFRX2 p2_r_reg_4_ ( .D(p2[4]), .CK(clk), .RN(n1600), .Q(p2_r[4]) );
  DFFRX2 Gx1_reg_8_ ( .D(N13), .CK(clk), .RN(n1570), .Q(Gx1[8]) );
  DFFRX2 Gy_abs_delay_reg_2__0_ ( .D(Gy_abs_delay[10]), .CK(clk), .RN(n1560), 
        .Q(Gy_abs_delay[20]), .QN(n2800) );
  DFFRX2 Gx_acc2_r_reg_5_ ( .D(N163), .CK(clk), .RN(n1670), .Q(Gx_acc2_r[5])
         );
  DFFRX2 Gx2_reg_8_ ( .D(N23), .CK(clk), .RN(n1560), .Q(Gx2[8]) );
  DFFRX2 Gx1_reg_9_ ( .D(N14), .CK(clk), .RN(n1580), .Q(Gx1[9]) );
  DFFRX2 Gx2_reg_9_ ( .D(N24), .CK(clk), .RN(n1560), .Q(Gx2[9]) );
  DFFRX2 Gy_abs_reg_7_ ( .D(N113), .CK(clk), .RN(n1680), .Q(Gy_abs[7]) );
  DFFRX2 p8_r_reg_1_ ( .D(p8[1]), .CK(clk), .RN(n1580), .Q(p8_r[1]) );
  DFFRX2 Gy1_reg_7_ ( .D(N32), .CK(clk), .RN(n1570), .Q(Gy1[7]) );
  DFFRX2 p9_r_reg_3_ ( .D(p9[3]), .CK(clk), .RN(n1611), .Q(p9_r[3]) );
  DFFRX2 Gx_acc2_r_reg_0_ ( .D(N158), .CK(clk), .RN(n1600), .Q(Gx_acc2_r[0])
         );
  DFFRX2 Gx_acc1_1_r_reg_13_ ( .D(Gx_acc1_r[13]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_1_r[13]) );
  DFFRX2 Gy1_reg_9_ ( .D(N34), .CK(clk), .RN(n1570), .Q(Gy1[9]) );
  DFFRX4 Gy_abs_reg_2_ ( .D(N108), .CK(clk), .RN(n1680), .Q(Gy_abs[2]) );
  DFFRX2 Gy_abs_reg_5_ ( .D(N111), .CK(clk), .RN(n1680), .Q(Gy_abs[5]) );
  DFFRX2 Gy_abs_delay_reg_0__5_ ( .D(Gy_abs[5]), .CK(clk), .RN(n1480), .Q(
        Gy_abs_delay[5]) );
  DFFRX2 Gy2_reg_0_ ( .D(N35), .CK(clk), .RN(n1540), .Q(Gy2[0]) );
  DFFRX2 Gx2_reg_7_ ( .D(N22), .CK(clk), .RN(n1560), .Q(Gx2[7]) );
  DFFRX2 Gy1_r_reg_7_ ( .D(N72), .CK(clk), .RN(n1520), .Q(Gy1_r[7]) );
  DFFRX2 p7_r_reg_4_ ( .D(p7[4]), .CK(clk), .RN(n1550), .Q(p7_r[4]) );
  DFFRX2 G_abs_reg_6_ ( .D(N153), .CK(clk), .RN(n1710), .Q(G_abs[6]) );
  DFFRX2 G_abs_reg_5_ ( .D(N152), .CK(clk), .RN(n1710), .Q(G_abs[5]) );
  DFFRX2 G_abs_reg_7_ ( .D(N154), .CK(clk), .RN(n1710), .Q(G_abs[7]) );
  DFFRX2 Gx2_reg_5_ ( .D(N20), .CK(clk), .RN(n1560), .Q(Gx2[5]) );
  DFFRX1 Gy_abs_delay_reg_2__2_ ( .D(Gy_abs_delay[12]), .CK(clk), .RN(n1650), 
        .Q(Gy_abs_delay[22]), .QN(n630) );
  DFFRX2 p2_r_reg_1_ ( .D(p2[1]), .CK(clk), .RN(n1600), .Q(p2_r[1]) );
  DFFRX2 Gx2_reg_1_ ( .D(N16), .CK(clk), .RN(n1550), .Q(Gx2[1]) );
  DFFRX2 Gx2_reg_0_ ( .D(N15), .CK(clk), .RN(n1550), .Q(Gx2[0]) );
  DFFRX2 p8_r_reg_3_ ( .D(p8[3]), .CK(clk), .RN(n1550), .Q(p8_r[3]) );
  DFFRHQX2 p3_r_reg_1_ ( .D(p3[1]), .CK(clk), .RN(n1530), .Q(n620) );
  DFFRXL p6_r_reg_1_ ( .D(p6[1]), .CK(clk), .RN(n1590), .Q(p6_r[1]) );
  DFFRX2 Gy2_reg_1_ ( .D(N36), .CK(clk), .RN(n1540), .Q(Gy2[1]) );
  DFFRX4 p4_r_reg_0_ ( .D(p4[0]), .CK(clk), .RN(n1590), .Q(p4_r[0]) );
  DFFRXL Gx_mult1_r_reg_8_ ( .D(N207), .CK(clk), .RN(n1500), .Q(Gx_mult1_r[8]), 
        .QN(n611) );
  DFFRX2 Gy1_reg_5_ ( .D(N30), .CK(clk), .RN(n1560), .Q(Gy1[5]) );
  DFFRX2 p4_r_reg_3_ ( .D(p4[3]), .CK(clk), .RN(n1600), .Q(p4_r[3]) );
  DFFRHQX1 Gx_mult1_r_reg_11_ ( .D(N210), .CK(clk), .RN(n1640), .Q(n600) );
  DFFRHQX2 Gx_acc2_r_reg_10_ ( .D(N168), .CK(clk), .RN(rst), .Q(Gx_acc2_r[10])
         );
  DFFRX2 Gx_acc2_1_r_reg_6_ ( .D(N189), .CK(clk), .RN(n1670), .Q(N205) );
  DFFRX2 Gx1_reg_0_ ( .D(N5), .CK(clk), .RN(n1570), .Q(Gx1[0]) );
  DFFRX2 Gx1_reg_1_ ( .D(N6), .CK(clk), .RN(n1570), .Q(Gx1[1]) );
  DFFRHQX1 Gx_mult2_r_reg_9_ ( .D(Gx_acc2_1_r[9]), .CK(clk), .RN(n1650), .Q(
        n560) );
  DFFRHQX1 Gy_abs_delay_reg_2__3_ ( .D(Gy_abs_delay[13]), .CK(clk), .RN(n1530), 
        .Q(n540) );
  DFFRHQX1 Gx_acc1_1_r_reg_15_ ( .D(Gx_acc1_r[15]), .CK(clk), .RN(n1660), .Q(
        n530) );
  DFFRX2 p6_r_reg_5_ ( .D(p6[5]), .CK(clk), .RN(n1590), .Q(p6_r[5]) );
  DFFRX2 p2_r_reg_5_ ( .D(p2[5]), .CK(clk), .RN(n1600), .Q(p2_r[5]) );
  DFFRX2 Gx_mult2_r_reg_11_ ( .D(Gx_acc2_1_r[11]), .CK(clk), .RN(n1650), .Q(
        Gx_mult2_r[11]) );
  DFFRX2 Gx_acc2_r_reg_4_ ( .D(N162), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[4])
         );
  DFFRX2 Gx1_r_reg_1_ ( .D(N46), .CK(clk), .RN(n1520), .Q(Gx1_r[1]) );
  DFFRX2 Gy_abs_delay_reg_2__5_ ( .D(Gy_abs_delay[15]), .CK(clk), .RN(n1660), 
        .Q(Gy_abs_delay[23]), .QN(n1311) );
  DFFRX2 Gy_abs_delay_reg_1__5_ ( .D(Gy_abs_delay[5]), .CK(clk), .RN(n1650), 
        .Q(Gy_abs_delay[15]) );
  DFFRHQX1 p2_r_reg_0_ ( .D(p2[0]), .CK(clk), .RN(n1600), .Q(n520) );
  DFFRX2 Gx_imm_r_reg_9_ ( .D(Gx_imm[9]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[9]), .QN(N117) );
  EDFFHQX1 Gx_acc3_r_reg_7_ ( .D(n2501), .E(n173), .CK(clk), .Q(Gx_acc3_r[7])
         );
  DFFRHQX1 Gy_abs_delay_reg_2__8_ ( .D(Gy_abs_delay[18]), .CK(clk), .RN(n1690), 
        .Q(n511) );
  DFFRX2 Gx1_r_reg_7_ ( .D(N52), .CK(clk), .RN(n1520), .Q(Gx1_r[7]) );
  DFFRX2 Gx1_r_reg_5_ ( .D(N50), .CK(clk), .RN(n1520), .Q(Gx1_r[5]) );
  DFFQX4 Gx_acc3_r_reg_8_ ( .D(n780), .CK(clk), .Q(Gx_acc3_r[8]) );
  DFFRHQX1 Gx_mult2_r_reg_10_ ( .D(Gx_acc2_1_r[10]), .CK(clk), .RN(n1650), .Q(
        n490) );
  DFFRX2 Gx1_r_reg_4_ ( .D(N49), .CK(clk), .RN(n1520), .Q(Gx1_r[4]) );
  DFFRHQX1 p7_r_reg_2_ ( .D(p7[2]), .CK(clk), .RN(n1600), .Q(n460) );
  DFFRHQX1 Gy_abs_delay_reg_2__4_ ( .D(Gy_abs_delay[14]), .CK(clk), .RN(n1630), 
        .Q(n450) );
  DFFRX2 Gx1_r_reg_6_ ( .D(N51), .CK(clk), .RN(n1520), .Q(Gx1_r[6]) );
  DFFRX2 Gx_abs_reg_9_ ( .D(N146), .CK(clk), .RN(n1480), .Q(Gx_abs[9]), .QN(
        n440) );
  DFFRXL Gx_mult1_r_reg_10_ ( .D(N209), .CK(clk), .RN(n1660), .QN(n430) );
  DFFRX2 Gy1_reg_2_ ( .D(N27), .CK(clk), .RN(n1560), .Q(Gy1[2]) );
  DFFRHQX1 p7_r_reg_3_ ( .D(p7[3]), .CK(clk), .RN(n1611), .Q(n420) );
  DFFRX2 Gy_abs_reg_8_ ( .D(N114), .CK(clk), .RN(n1680), .Q(Gy_abs[8]) );
  DFFRX2 Gy_imm_r_reg_3_ ( .D(Gy_imm[3]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[3]), .QN(n3500) );
  EDFFHQX1 Gx_acc3_r_reg_6_ ( .D(n252), .E(n173), .CK(clk), .Q(Gx_acc3_r[6])
         );
  DFFRX1 Gy_abs_delay_reg_0__2_ ( .D(Gy_abs[2]), .CK(clk), .RN(n1511), .Q(
        Gy_abs_delay[2]) );
  DFFRX1 Gy_abs_delay_reg_0__1_ ( .D(Gy_abs[1]), .CK(clk), .RN(n1660), .Q(
        Gy_abs_delay[1]) );
  DFFRX1 Gx_acc1_r_reg_10_ ( .D(Gx_abs[2]), .CK(clk), .RN(n1680), .Q(
        Gx_acc1_r[10]) );
  DFFRX1 Gy_abs_delay_reg_0__3_ ( .D(Gy_abs[3]), .CK(clk), .RN(n1580), .Q(
        Gy_abs_delay[3]) );
  DFFRX1 Gy_delay_reg_0_ ( .D(Gy_imm_r[10]), .CK(clk), .RN(n1701), .Q(
        Gy_delay[0]) );
  DFFRX1 Gx_delay_reg_0_ ( .D(Gx_imm_r[10]), .CK(clk), .RN(n1630), .Q(
        Gx_delay[0]) );
  DFFRX1 Gx_mult1_r_reg_6_ ( .D(N205), .CK(clk), .RN(n1570), .Q(Gx_mult1_r[6])
         );
  DFFRX1 Gy_abs_delay_reg_0__6_ ( .D(Gy_abs[6]), .CK(clk), .RN(n1690), .Q(
        Gy_abs_delay[6]) );
  DFFRX1 sobel_result_r_reg_10_ ( .D(G_abs_delay[21]), .CK(clk), .RN(n173), 
        .Q(sobel_result[10]) );
  DFFRX1 sobel_result_r_reg_9_ ( .D(G_abs_delay[20]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[9]) );
  DFFRX1 sobel_result_r_reg_8_ ( .D(G_abs_delay[19]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[8]) );
  DFFRX1 sobel_result_r_reg_7_ ( .D(G_abs_delay[18]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[7]) );
  DFFRX1 sobel_result_r_reg_6_ ( .D(G_abs_delay[17]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[6]) );
  DFFRX1 sobel_result_r_reg_5_ ( .D(G_abs_delay[16]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[5]) );
  DFFRX1 sobel_result_r_reg_4_ ( .D(G_abs_delay[15]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[4]) );
  DFFRX1 sobel_result_r_reg_3_ ( .D(G_abs_delay[14]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[3]) );
  DFFRX1 sobel_result_r_reg_2_ ( .D(G_abs_delay[13]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[2]) );
  DFFRX1 sobel_result_r_reg_1_ ( .D(G_abs_delay[12]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[1]) );
  DFFRX1 sobel_result_r_reg_0_ ( .D(G_abs_delay[11]), .CK(clk), .RN(n1620), 
        .Q(sobel_result[0]) );
  DFFRX1 Gy_delay_reg_2_ ( .D(Gy_delay[1]), .CK(clk), .RN(n1701), .Q(
        Gy_delay[2]) );
  DFFRX1 Gy_delay_reg_1_ ( .D(Gy_delay[0]), .CK(clk), .RN(n1701), .Q(
        Gy_delay[1]) );
  DFFRX1 Gy_abs_delay_reg_2__9_ ( .D(Gy_abs_delay[19]), .CK(clk), .RN(n1690), 
        .Q(Gy_abs_delay[26]), .QN(n323) );
  DFFRX1 Gy_abs_delay_reg_1__9_ ( .D(Gy_abs_delay[9]), .CK(clk), .RN(n1690), 
        .Q(Gy_abs_delay[19]) );
  DFFRX1 Gy_abs_delay_reg_1__8_ ( .D(Gy_abs_delay[8]), .CK(clk), .RN(n1690), 
        .Q(Gy_abs_delay[18]) );
  DFFRX1 Gy_abs_delay_reg_1__7_ ( .D(Gy_abs_delay[7]), .CK(clk), .RN(n1690), 
        .Q(Gy_abs_delay[17]) );
  DFFRX1 Gy_abs_delay_reg_1__6_ ( .D(Gy_abs_delay[6]), .CK(clk), .RN(n1680), 
        .Q(Gy_abs_delay[16]) );
  DFFRX1 Gy_abs_delay_reg_1__4_ ( .D(Gy_abs_delay[4]), .CK(clk), .RN(n1480), 
        .Q(Gy_abs_delay[14]) );
  DFFRX1 Gy_abs_delay_reg_1__3_ ( .D(Gy_abs_delay[3]), .CK(clk), .RN(n1520), 
        .Q(Gy_abs_delay[13]) );
  DFFRX1 Gy_abs_delay_reg_1__2_ ( .D(Gy_abs_delay[2]), .CK(clk), .RN(n1500), 
        .Q(Gy_abs_delay[12]) );
  DFFRX1 Gy_abs_delay_reg_1__1_ ( .D(Gy_abs_delay[1]), .CK(clk), .RN(n1490), 
        .Q(Gy_abs_delay[11]) );
  DFFRX1 Gy_abs_delay_reg_1__0_ ( .D(Gy_abs_delay[0]), .CK(clk), .RN(n1690), 
        .Q(Gy_abs_delay[10]) );
  DFFRX1 Gx_delay_reg_2_ ( .D(Gx_delay[1]), .CK(clk), .RN(n1540), .Q(
        Gx_delay[2]) );
  DFFRX1 Gx_delay_reg_1_ ( .D(Gx_delay[0]), .CK(clk), .RN(n1560), .Q(
        Gx_delay[1]) );
  DFFRX1 G_abs_delay_reg_1__8_ ( .D(G_abs_delay[8]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[19]) );
  DFFRX1 G_abs_delay_reg_1__4_ ( .D(G_abs_delay[4]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[15]) );
  DFFRX1 G_abs_delay_reg_1__0_ ( .D(G_abs_delay[0]), .CK(clk), .RN(n1560), .Q(
        G_abs_delay[11]) );
  DFFRX1 G_abs_delay_reg_0__8_ ( .D(G_abs[8]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[8]) );
  DFFRX1 G_abs_delay_reg_0__4_ ( .D(G_abs[4]), .CK(clk), .RN(n172), .Q(
        G_abs_delay[4]) );
  DFFRX1 G_abs_delay_reg_0__0_ ( .D(G_abs[0]), .CK(clk), .RN(n1550), .Q(
        G_abs_delay[0]) );
  DFFRX1 Gy_abs_delay_reg_0__8_ ( .D(Gy_abs[8]), .CK(clk), .RN(n1690), .Q(
        Gy_abs_delay[8]) );
  DFFRX1 Gy_abs_delay_reg_0__7_ ( .D(Gy_abs[7]), .CK(clk), .RN(n1690), .Q(
        Gy_abs_delay[7]) );
  DFFRX1 Gx_acc1_r_reg_8_ ( .D(N158), .CK(clk), .RN(n1680), .Q(Gx_acc1_r[8])
         );
  DFFRX1 Gx_mult2_r_reg_7_ ( .D(N206), .CK(clk), .RN(n1650), .Q(Gx_mult2_r[7])
         );
  DFFRX1 Gx_mult1_r_reg_7_ ( .D(N206), .CK(clk), .RN(n1580), .QN(n329) );
  DFFRX1 Gx_mult1_r_reg_5_ ( .D(N204), .CK(clk), .RN(n173), .Q(Gx_mult1_r[5])
         );
  DFFRX1 Gx_mult1_r_reg_4_ ( .D(N203), .CK(clk), .RN(n1680), .Q(Gx_mult1_r[4])
         );
  DFFRX1 Gx_mult1_r_reg_3_ ( .D(N202), .CK(clk), .RN(n173), .Q(Gx_mult1_r[3])
         );
  DFFRX1 Gx_mult1_r_reg_2_ ( .D(N201), .CK(clk), .RN(n1480), .Q(Gx_mult1_r[2])
         );
  DFFRX1 Gx_acc1_1_r_reg_17_ ( .D(Gx_acc1_r[17]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_1_r[17]) );
  DFFRX1 Gx_acc1_1_r_reg_16_ ( .D(Gx_acc1_r[16]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_1_r[16]) );
  DFFRX1 G_abs_delay_reg_1__10_ ( .D(G_abs_delay[10]), .CK(clk), .RN(n1701), 
        .Q(G_abs_delay[21]) );
  DFFRX1 G_abs_delay_reg_1__9_ ( .D(G_abs_delay[9]), .CK(clk), .RN(n1701), .Q(
        G_abs_delay[20]) );
  DFFRX1 G_abs_delay_reg_1__7_ ( .D(G_abs_delay[7]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[18]) );
  DFFRX1 G_abs_delay_reg_1__6_ ( .D(G_abs_delay[6]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[17]) );
  DFFRX1 G_abs_delay_reg_1__5_ ( .D(G_abs_delay[5]), .CK(clk), .RN(n1710), .Q(
        G_abs_delay[16]) );
  EDFFHQX1 Gx_acc3_r_reg_9_ ( .D(n237), .E(n173), .CK(clk), .Q(Gx_acc3_r[9])
         );
  EDFFHQX1 Gx_acc3_r_reg_12_ ( .D(n2181), .E(rst), .CK(clk), .Q(Gx_acc3_r[12])
         );
  DFFX2 Gx_acc3_r_reg_10_ ( .D(n800), .CK(clk), .Q(Gx_acc3_r[10]), .QN(n229)
         );
  DFFRX1 Gx_imm_r_reg_7_ ( .D(Gx_imm[7]), .CK(clk), .RN(n1490), .Q(Gx_imm_r[7]), .QN(N119) );
  DFFRX1 Gy1_r_reg_5_ ( .D(N70), .CK(clk), .RN(n1511), .Q(Gy1_r[5]) );
  DFFRX1 Gx1_r_reg_9_ ( .D(N54), .CK(clk), .RN(n1530), .Q(Gx1_r[9]) );
  DFFRX1 Gy_imm_r_reg_9_ ( .D(Gy_imm[9]), .CK(clk), .RN(n1500), .Q(Gy_imm_r[9]), .QN(N86) );
  DFFRX1 Gx2_r_reg_9_ ( .D(N64), .CK(clk), .RN(n1511), .Q(Gx2_r[9]) );
  DFFRX2 p2_r_reg_7_ ( .D(p2[7]), .CK(clk), .RN(n1600), .Q(p2_r[7]) );
  DFFRX2 Gy2_reg_3_ ( .D(N38), .CK(clk), .RN(n1540), .Q(Gy2[3]) );
  DFFRX2 Gx_acc2_r_reg_1_ ( .D(N159), .CK(clk), .RN(n1611), .Q(Gx_acc2_r[1])
         );
  DFFRX2 Gy1_reg_1_ ( .D(N26), .CK(clk), .RN(n1560), .Q(Gy1[1]) );
  DFFRX2 Gy2_r_reg_7_ ( .D(N82), .CK(clk), .RN(n1530), .Q(Gy2_r[7]) );
  DFFRX2 Gx_mult1_r_reg_17_ ( .D(N216), .CK(clk), .RN(n1640), .QN(n1350) );
  DFFRX2 Gy2_r_reg_5_ ( .D(N80), .CK(clk), .RN(n1530), .Q(Gy2_r[5]) );
  DFFRX2 p4_r_reg_2_ ( .D(p4[2]), .CK(clk), .RN(n1590), .Q(p4_r[2]) );
  DFFRX2 Gy1_reg_0_ ( .D(N25), .CK(clk), .RN(n1560), .Q(Gy1[0]) );
  DFFRX2 Gx_mult2_r_reg_12_ ( .D(Gx_acc2_1_r[12]), .CK(clk), .RN(n1650), .Q(
        Gx_mult2_r[12]) );
  DFFRX2 p2_r_reg_2_ ( .D(p2[2]), .CK(clk), .RN(n1600), .Q(p2_r[2]) );
  DFFRHQX1 Gx_acc1_1_r_reg_14_ ( .D(Gx_acc1_r[14]), .CK(clk), .RN(n1660), .Q(
        n92) );
  DFFRHQX1 p1_d_r_reg_5_ ( .D(p1_r[5]), .CK(clk), .RN(n1540), .Q(n88) );
  DFFRX2 Gx_mult2_r_reg_8_ ( .D(Gx_acc2_1_r[8]), .CK(clk), .RN(n1650), .Q(
        Gx_mult2_r[8]) );
  DFFRX2 Gx1_reg_3_ ( .D(N8), .CK(clk), .RN(n1570), .Q(Gx1[3]) );
  DFFRX2 Gy_abs_reg_6_ ( .D(N112), .CK(clk), .RN(n1680), .Q(Gy_abs[6]) );
  DFFQX1 Gx_acc3_r_reg_4_ ( .D(n740), .CK(clk), .Q(Gx_acc3_r[4]) );
  DFFRX2 Gy_abs_reg_3_ ( .D(N109), .CK(clk), .RN(n1680), .Q(Gy_abs[3]) );
  DFFRHQX1 p9_d_r_reg_0_ ( .D(p9_r[0]), .CK(clk), .RN(n1580), .Q(n94) );
  DFFRX2 Gy_abs_reg_1_ ( .D(N107), .CK(clk), .RN(n1690), .Q(Gy_abs[1]) );
  DFFRHQX1 G_abs_reg_9_ ( .D(N156), .CK(clk), .RN(n1701), .Q(G_abs[9]) );
  DFFRHQX1 angle_r_reg_1_ ( .D(angle_wait_r[1]), .CK(clk), .RN(n1620), .Q(
        angle[1]) );
  DFFRHQX1 Gy2_r_reg_9_ ( .D(N84), .CK(clk), .RN(n1530), .Q(Gy2_r[9]) );
  DFFRHQX1 Gy1_r_reg_9_ ( .D(N74), .CK(clk), .RN(n1520), .Q(Gy1_r[9]) );
  DFFRX2 Gy_abs_reg_4_ ( .D(N110), .CK(clk), .RN(n1680), .Q(Gy_abs[4]) );
  DFFRX2 Gy_abs_delay_reg_0__4_ ( .D(Gy_abs[4]), .CK(clk), .RN(n1650), .Q(
        Gy_abs_delay[4]) );
  DFFRHQX2 Gx_acc1_1_r_reg_11_ ( .D(Gx_acc1_r[11]), .CK(clk), .RN(n1660), .Q(
        n860) );
  DFFRX2 Gx_acc1_r_reg_11_ ( .D(n1420), .CK(clk), .RN(n1650), .Q(Gx_acc1_r[11]) );
  DFFRX2 Gy_imm_r_reg_2_ ( .D(Gy_imm[2]), .CK(clk), .RN(n1490), .Q(Gy_imm_r[2]), .QN(n711) );
  DFFRX2 Gx_acc1_r_reg_13_ ( .D(n1430), .CK(clk), .RN(n1480), .Q(Gx_acc1_r[13]) );
  DFFRX2 p3_r_reg_4_ ( .D(p3[4]), .CK(clk), .RN(n1690), .Q(p3_r[4]) );
  DFFRX2 Gx1_r_reg_3_ ( .D(N48), .CK(clk), .RN(n1520), .Q(Gx1_r[3]) );
  DFFRX2 Gx2_r_reg_3_ ( .D(N58), .CK(clk), .RN(n1500), .Q(Gx2_r[3]) );
  BUFX16 U3 ( .A(Gx_abs[3]), .Y(n1420) );
  XOR3X2 U4 ( .A(n1430), .B(n249), .C(n248), .Y(n2501) );
  NAND3BX4 U5 ( .AN(n1870), .B(n1470), .C(n1860), .Y(n1880) );
  NAND2X4 U6 ( .A(n1400), .B(N158), .Y(n2090) );
  BUFX12 U7 ( .A(N171), .Y(n1400) );
  INVX12 U8 ( .A(n1430), .Y(n2130) );
  BUFX12 U9 ( .A(Gx_abs[5]), .Y(n1430) );
  CLKINVX6 U10 ( .A(n1950), .Y(n2000) );
  CLKINVX4 U12 ( .A(n251), .Y(n247) );
  BUFX4 U13 ( .A(n94), .Y(n1) );
  AOI2BB1X2 U25 ( .A0N(n1030), .A1N(n1370), .B0(n226), .Y(n227) );
  AOI221X1 U26 ( .A0(n1130), .A1(n226), .B0(n1470), .B1(n1370), .C0(n178), .Y(
        n225) );
  AND2XL U27 ( .A(n1370), .B(n1030), .Y(n3100) );
  AOI32X1 U28 ( .A0(n322), .A1(n650), .A2(Gx_mult2_r[14]), .B0(n345), .B1(
        Gx_mult2_r[15]), .Y(n640) );
  INVX3 U29 ( .A(n511), .Y(n345) );
  INVX3 U30 ( .A(n241), .Y(n243) );
  CLKINVX1 U31 ( .A(n308), .Y(n313) );
  NAND2X2 U32 ( .A(Gy_abs_delay[22]), .B(n314), .Y(n308) );
  BUFX16 U33 ( .A(Gx_abs[7]), .Y(n1450) );
  NAND2X4 U34 ( .A(n970), .B(n980), .Y(n226) );
  NAND2X2 U35 ( .A(n1100), .B(n2160), .Y(n970) );
  INVX3 U36 ( .A(n89), .Y(n901) );
  OAI211X4 U37 ( .A0(n2000), .A1(n1850), .B0(n1840), .C0(n1830), .Y(n1890) );
  NAND2BX2 U38 ( .AN(n274), .B(n281), .Y(n278) );
  NAND2X2 U39 ( .A(n1400), .B(n1411), .Y(n2040) );
  OAI31X2 U40 ( .A0(n361), .A1(n3601), .A2(n359), .B0(n358), .Y(
        angle_wait_r[1]) );
  NAND2X6 U41 ( .A(n2900), .B(n267), .Y(n268) );
  INVX4 U42 ( .A(n92), .Y(n267) );
  CLKBUFX8 U43 ( .A(n182), .Y(n1801) );
  BUFX20 U44 ( .A(n182), .Y(n179) );
  INVX20 U45 ( .A(rst), .Y(n182) );
  NAND4BBX4 U46 ( .AN(n285), .BN(n284), .C(n283), .D(n282), .Y(n286) );
  NAND3X2 U47 ( .A(n1930), .B(n1920), .C(n1940), .Y(n1830) );
  NAND2X1 U48 ( .A(n248), .B(n440), .Y(n2160) );
  AND2X2 U49 ( .A(n2160), .B(n235), .Y(n1030) );
  INVX3 U50 ( .A(n1411), .Y(n2100) );
  OR2X1 U51 ( .A(n851), .B(n960), .Y(n254) );
  NAND2X1 U52 ( .A(n3300), .B(n275), .Y(n281) );
  AND2X2 U53 ( .A(n1460), .B(n226), .Y(n228) );
  AND2X2 U54 ( .A(n1460), .B(n1440), .Y(n1100) );
  NAND2X4 U55 ( .A(Gx_acc1_1_r[10]), .B(Gx_acc2_1_r[10]), .Y(n288) );
  NAND2X4 U56 ( .A(n2701), .B(n268), .Y(n274) );
  NAND2X1 U57 ( .A(Gx_abs[4]), .B(n1411), .Y(n255) );
  CLKINVX1 U58 ( .A(n640), .Y(n324) );
  CLKMX2X2 U59 ( .A(N135), .B(Gx_imm_r[8]), .S0(n840), .Y(N145) );
  OA21X2 U60 ( .A0(Gx_mult2_r[7]), .A1(n2800), .B0(n306), .Y(n307) );
  AOI2BB1X1 U61 ( .A0N(Gy_abs_delay[24]), .A1N(n370), .B0(n326), .Y(n343) );
  NAND2X2 U62 ( .A(n263), .B(n2130), .Y(n241) );
  NAND2X2 U63 ( .A(n500), .B(n670), .Y(n2120) );
  NAND2X2 U64 ( .A(Gx_acc1_1_r[9]), .B(Gx_acc2_1_r[9]), .Y(n293) );
  NAND2X1 U65 ( .A(n1370), .B(n500), .Y(n235) );
  CLKINVX1 U66 ( .A(n2401), .Y(n257) );
  OR2X1 U67 ( .A(n95), .B(n960), .Y(n242) );
  INVX3 U68 ( .A(n2120), .Y(n246) );
  NAND2X1 U69 ( .A(n1440), .B(Gx_abs[4]), .Y(n244) );
  AND2X4 U70 ( .A(n263), .B(n2100), .Y(n1060) );
  CLKINVX1 U71 ( .A(n226), .Y(n2301) );
  INVX3 U72 ( .A(n2201), .Y(n221) );
  AND2X4 U73 ( .A(n670), .B(n2130), .Y(n1050) );
  NOR2X1 U74 ( .A(n95), .B(n670), .Y(n1080) );
  AO21X1 U75 ( .A0(n2000), .A1(n1990), .B0(n1090), .Y(n2030) );
  CLKINVX1 U76 ( .A(n288), .Y(n296) );
  NAND2X1 U77 ( .A(n2180), .B(n87), .Y(n294) );
  NAND2X4 U78 ( .A(n860), .B(Gx_acc2_1_r[11]), .Y(n298) );
  OR2X2 U79 ( .A(Gx_acc2_1_r[13]), .B(Gx_acc1_1_r[13]), .Y(n2701) );
  INVX6 U80 ( .A(n287), .Y(n272) );
  NOR2X1 U81 ( .A(n279), .B(n278), .Y(n284) );
  NAND2X6 U82 ( .A(n1110), .B(n1890), .Y(n1911) );
  AOI21X1 U83 ( .A0(n2201), .A1(n2301), .B0(n2170), .Y(n2181) );
  CLKMX2X2 U84 ( .A(N104), .B(Gy_imm_r[8]), .S0(n830), .Y(N114) );
  CLKMX2X2 U85 ( .A(N136), .B(Gx_imm_r[9]), .S0(n840), .Y(N146) );
  XOR3X1 U86 ( .A(n860), .B(n2901), .C(n2180), .Y(N210) );
  CLKINVX1 U87 ( .A(n357), .Y(n3601) );
  AND3X2 U88 ( .A(n1140), .B(n356), .C(n355), .Y(n361) );
  CLKMX2X2 U89 ( .A(N97), .B(Gy_imm_r[1]), .S0(n830), .Y(N107) );
  CLKMX2X2 U90 ( .A(N101), .B(Gy_imm_r[5]), .S0(n830), .Y(N111) );
  CLKMX2X2 U91 ( .A(N98), .B(Gy_imm_r[2]), .S0(n830), .Y(N108) );
  CLKMX2X2 U92 ( .A(N128), .B(Gx_imm_r[1]), .S0(n840), .Y(N138) );
  CLKMX2X2 U93 ( .A(N134), .B(Gx_imm_r[7]), .S0(n840), .Y(N144) );
  CLKMX2X2 U94 ( .A(N132), .B(Gx_imm_r[5]), .S0(n840), .Y(N142) );
  CLKMX2X2 U95 ( .A(Gx_acc3_r[5]), .B(n259), .S0(n173), .Y(n750) );
  INVX3 U96 ( .A(n1980), .Y(n1960) );
  CLKMX2X2 U97 ( .A(N105), .B(Gy_imm_r[9]), .S0(n830), .Y(N115) );
  AND3X4 U98 ( .A(n358), .B(n354), .C(n357), .Y(angle_wait_r[0]) );
  NAND3X1 U99 ( .A(n355), .B(n356), .C(n1140), .Y(n354) );
  CLKMX2X2 U100 ( .A(N129), .B(Gx_imm_r[2]), .S0(n840), .Y(N139) );
  INVX20 U101 ( .A(n176), .Y(n173) );
  BUFX8 U102 ( .A(n1801), .Y(n176) );
  CLKINVX3 U103 ( .A(n177), .Y(n1550) );
  CLKINVX3 U104 ( .A(n177), .Y(n1520) );
  BUFX2 U105 ( .A(n179), .Y(n177) );
  CLKINVX3 U106 ( .A(n175), .Y(n1600) );
  CLKINVX3 U107 ( .A(n175), .Y(n1670) );
  CLKINVX3 U108 ( .A(n175), .Y(n1590) );
  CLKINVX3 U109 ( .A(n175), .Y(n1530) );
  BUFX2 U110 ( .A(n1801), .Y(n175) );
  CLKBUFX2 U111 ( .A(n182), .Y(n181) );
  BUFX8 U112 ( .A(Gx_abs[6]), .Y(n1440) );
  OAI211X1 U113 ( .A0(n234), .A1(n233), .B0(n232), .C0(n231), .Y(n800) );
  AOI2BB1X2 U114 ( .A0N(n228), .A1N(n227), .B0(n178), .Y(n234) );
  NAND3X4 U115 ( .A(n2040), .B(n2050), .C(n2090), .Y(n1990) );
  AOI2BB1X1 U116 ( .A0N(n1370), .A1N(n91), .B0(n1120), .Y(n1110) );
  AOI2BB1X2 U117 ( .A0N(n1960), .A1N(n1070), .B0(n1120), .Y(n1970) );
  AND2X2 U118 ( .A(n1450), .B(n1440), .Y(n1120) );
  NAND4X2 U119 ( .A(n173), .B(n2201), .C(n2301), .D(n1470), .Y(n223) );
  AND2X2 U120 ( .A(Gx_acc1_1_r[13]), .B(Gx_acc2_1_r[13]), .Y(n1320) );
  CLKBUFX2 U121 ( .A(n181), .Y(n174) );
  CLKMX2X2 U122 ( .A(N99), .B(Gy_imm_r[3]), .S0(n830), .Y(N109) );
  BUFX8 U123 ( .A(Gx_abs[8]), .Y(n1460) );
  NAND2X6 U124 ( .A(n1030), .B(n1360), .Y(n2201) );
  XNOR3X2 U125 ( .A(n500), .B(n1460), .C(n1360), .Y(n239) );
  OA21X2 U126 ( .A0(n1300), .A1(n289), .B0(n288), .Y(n2901) );
  XOR3X2 U127 ( .A(n1470), .B(n1460), .C(n1911), .Y(N167) );
  BUFX4 U128 ( .A(Gx_abs[9]), .Y(n1470) );
  OAI221X2 U129 ( .A0(Gx_mult1_r[9]), .A1(n630), .B0(n334), .B1(n333), .C0(
        n332), .Y(n342) );
  AO21X4 U130 ( .A0(n321), .A1(n1330), .B0(Gy_abs_delay[24]), .Y(n319) );
  NAND3X2 U131 ( .A(n173), .B(n1360), .C(n3100), .Y(n232) );
  INVX3 U132 ( .A(n450), .Y(n325) );
  CLKMX2X2 U133 ( .A(N100), .B(Gy_imm_r[4]), .S0(n830), .Y(N110) );
  INVX1 U134 ( .A(n470), .Y(n480) );
  MX2X1 U135 ( .A(Gx_acc3_r[8]), .B(n239), .S0(n173), .Y(n780) );
  NOR3X6 U136 ( .A(n990), .B(n1000), .C(n341), .Y(n352) );
  CLKAND2X3 U137 ( .A(Gx_mult1_r[16]), .B(n347), .Y(n348) );
  AOI2BB1X2 U138 ( .A0N(n272), .A1N(n271), .B0(n1320), .Y(n273) );
  AOI2BB1X4 U139 ( .A0N(Gx_mult1_r[16]), .A1N(n347), .B0(Gy_abs_delay[26]), 
        .Y(n349) );
  CLKINVX1 U140 ( .A(n540), .Y(n550) );
  OAI31X2 U141 ( .A0(n257), .A1(n1390), .A2(n243), .B0(n242), .Y(n570) );
  OAI2BB1X2 U142 ( .A0N(n580), .A1N(n590), .B0(n294), .Y(n277) );
  BUFX8 U143 ( .A(n179), .Y(n178) );
  AOI21X4 U144 ( .A0(n3401), .A1(n339), .B0(n338), .Y(n1150) );
  AOI32X4 U145 ( .A0(n540), .A1(n336), .A2(n430), .B0(n450), .B1(n335), .Y(
        n3401) );
  NAND2X2 U146 ( .A(n1420), .B(n1411), .Y(n2050) );
  AOI21X4 U147 ( .A0(n2601), .A1(n2401), .B0(n256), .Y(n258) );
  NAND2X1 U148 ( .A(n254), .B(n253), .Y(n2601) );
  NAND2X4 U149 ( .A(n670), .B(n2100), .Y(n2401) );
  OR2X4 U150 ( .A(n295), .B(n297), .Y(n291) );
  INVX1 U151 ( .A(n293), .Y(n295) );
  CLKINVX2 U152 ( .A(n292), .Y(n297) );
  OAI211X2 U153 ( .A0(n225), .A1(n224), .B0(n223), .C0(n222), .Y(n810) );
  NAND2X1 U154 ( .A(Gx_acc1_1_r[12]), .B(Gx_acc2_1_r[12]), .Y(n279) );
  INVX4 U155 ( .A(n353), .Y(n358) );
  OAI221X2 U156 ( .A0(n1110), .A1(n1900), .B0(n1900), .B1(n1890), .C0(n1880), 
        .Y(N168) );
  NAND2X4 U157 ( .A(n1090), .B(n1040), .Y(n1930) );
  AND2X1 U158 ( .A(Gx_abs[4]), .B(n1420), .Y(n1090) );
  AOI21X4 U159 ( .A0(n500), .A1(n2130), .B0(n1050), .Y(n1040) );
  NOR3X2 U160 ( .A(n277), .B(n278), .C(n276), .Y(n285) );
  AO22X4 U161 ( .A0(n1300), .A1(n298), .B0(n266), .B1(n292), .Y(n276) );
  OR4X2 U162 ( .A(n1360), .B(n226), .C(n181), .D(n1370), .Y(n231) );
  AND2X1 U163 ( .A(n178), .B(n229), .Y(n233) );
  AND3X8 U164 ( .A(n253), .B(n254), .C(n255), .Y(n1390) );
  XOR3X2 U165 ( .A(n1430), .B(n258), .C(n263), .Y(n259) );
  MX2XL U166 ( .A(N130), .B(Gx_imm_r[3]), .S0(n840), .Y(N140) );
  AOI2BB1X4 U167 ( .A0N(n2011), .A1N(n1050), .B0(n1080), .Y(n2020) );
  CLKINVX4 U168 ( .A(n2030), .Y(n2011) );
  AND2X1 U169 ( .A(n248), .B(n2130), .Y(n1380) );
  AOI21X4 U170 ( .A0(n1360), .A1(n235), .B0(n1100), .Y(n236) );
  XOR3X2 U171 ( .A(n530), .B(n269), .C(n3300), .Y(N214) );
  NAND2XL U172 ( .A(Gx_acc2_1_r[15]), .B(n530), .Y(n282) );
  NAND2X2 U173 ( .A(n324), .B(n323), .Y(n357) );
  NAND4BBX4 U174 ( .AN(n331), .BN(n3301), .C(n122), .D(n123), .Y(n332) );
  OAI211X2 U175 ( .A0(Gy_abs_delay[20]), .A1(n329), .B0(n327), .C0(n328), .Y(
        n3301) );
  AOI32X2 U176 ( .A0(n327), .A1(n329), .A2(Gy_abs_delay[20]), .B0(
        Gy_abs_delay[21]), .B1(n611), .Y(n333) );
  AND2X1 U177 ( .A(n2040), .B(n2090), .Y(n660) );
  AO22X4 U178 ( .A0(n1320), .A1(n268), .B0(n92), .B1(Gx_acc2_1_r[14]), .Y(
        n2801) );
  AOI2BB1X1 U179 ( .A0N(n1870), .A1N(n1911), .B0(n440), .Y(N169) );
  AND2X2 U180 ( .A(n760), .B(n770), .Y(n1300) );
  INVX3 U181 ( .A(n860), .Y(n87) );
  INVXL U182 ( .A(n176), .Y(n1630) );
  AOI2BB1X1 U183 ( .A0N(n1300), .A1N(n3001), .B0(n299), .Y(n301) );
  NAND2XL U184 ( .A(n1470), .B(n1450), .Y(n980) );
  AND2X8 U185 ( .A(n343), .B(n342), .Y(n990) );
  AND2X2 U186 ( .A(Gy_abs_delay[24]), .B(n1150), .Y(n1000) );
  XOR3X2 U187 ( .A(n1450), .B(n1970), .C(n1370), .Y(N166) );
  AO21X2 U188 ( .A0(n1440), .A1(n1430), .B0(n1080), .Y(n1850) );
  OAI33X2 U189 ( .A0(n352), .A1(n1161), .A2(n351), .B0(n3501), .B1(n349), .B2(
        n348), .Y(n353) );
  OAI211X2 U190 ( .A0(n1400), .A1(n1420), .B0(N158), .C0(n1411), .Y(n253) );
  XOR3X2 U191 ( .A(n1430), .B(n2020), .C(n500), .Y(N164) );
  OAI31X2 U192 ( .A0(n297), .A1(n296), .A2(n295), .B0(n294), .Y(n3001) );
  BUFX12 U193 ( .A(n238), .Y(n1360) );
  OAI221X2 U194 ( .A0(n1380), .A1(n244), .B0(n1390), .B1(n2150), .C0(n2140), 
        .Y(n238) );
  AOI2BB1X4 U195 ( .A0N(n247), .A1N(n246), .B0(n245), .Y(n249) );
  OA21X4 U196 ( .A0(n1950), .A1(n1940), .B0(n1930), .Y(n1011) );
  NAND2X4 U197 ( .A(n1011), .B(n1920), .Y(n1980) );
  AO21X4 U198 ( .A0(n670), .A1(n263), .B0(n1060), .Y(n1950) );
  NAND2X4 U199 ( .A(n1040), .B(n1990), .Y(n1940) );
  INVX3 U200 ( .A(n1850), .Y(n1920) );
  INVX8 U201 ( .A(n1420), .Y(n263) );
  OAI21X4 U202 ( .A0(n276), .A1(n277), .B0(n279), .Y(n287) );
  AOI2BB1X4 U203 ( .A0N(Gy_abs_delay[24]), .A1N(n1150), .B0(Gx_mult1_r[13]), 
        .Y(n341) );
  XOR3XL U204 ( .A(Gx_acc1_1_r[12]), .B(n580), .C(n301), .Y(N211) );
  NAND2XL U205 ( .A(n511), .B(n2500), .Y(n322) );
  INVX8 U206 ( .A(n1450), .Y(n248) );
  OA22X2 U207 ( .A0(n246), .A1(n242), .B0(n2130), .B1(n248), .Y(n2140) );
  NAND3BX1 U208 ( .AN(n178), .B(n221), .C(n1130), .Y(n222) );
  MX2X1 U209 ( .A(N131), .B(Gx_imm_r[4]), .S0(n840), .Y(N141) );
  CLKINVX1 U210 ( .A(n337), .Y(n338) );
  CLKINVX2 U211 ( .A(n176), .Y(n1620) );
  CLKINVX2 U212 ( .A(n176), .Y(n1640) );
  CLKINVX2 U213 ( .A(n1801), .Y(n172) );
  CLKINVX2 U214 ( .A(n1801), .Y(n1710) );
  CLKINVX2 U215 ( .A(n177), .Y(n1701) );
  NAND2XL U216 ( .A(n2040), .B(n2090), .Y(n2080) );
  AND3X4 U217 ( .A(n288), .B(n298), .C(n293), .Y(n266) );
  NAND2XL U218 ( .A(n1460), .B(n440), .Y(n1900) );
  INVX2 U219 ( .A(n1911), .Y(n1860) );
  AOI2BB1XL U220 ( .A0N(n1450), .A1N(n1460), .B0(n1070), .Y(n1840) );
  XOR3XL U221 ( .A(n1430), .B(Gx_abs[4]), .C(n2030), .Y(N163) );
  INVXL U222 ( .A(n328), .Y(n334) );
  AND2XL U223 ( .A(n1460), .B(n440), .Y(n1130) );
  NAND2XL U224 ( .A(n1470), .B(n1460), .Y(n2170) );
  XOR3XL U225 ( .A(n1411), .B(n1420), .C(n2080), .Y(N161) );
  XNOR3XL U226 ( .A(n1400), .B(n1411), .C(n2090), .Y(N160) );
  XOR2XL U227 ( .A(N158), .B(n1400), .Y(N159) );
  XOR3X2 U228 ( .A(n1470), .B(n248), .C(n236), .Y(n237) );
  BUFX12 U229 ( .A(Gx_abs[2]), .Y(n1411) );
  INVXL U230 ( .A(n244), .Y(n245) );
  INVXL U231 ( .A(n600), .Y(n335) );
  NAND2X2 U232 ( .A(n600), .B(n325), .Y(n336) );
  OAI211X2 U233 ( .A0(n321), .A1(n1330), .B0(n3201), .C0(n319), .Y(n355) );
  AO21X4 U234 ( .A0(n305), .A1(n304), .B0(n303), .Y(n321) );
  NAND4X2 U235 ( .A(n318), .B(n317), .C(n316), .D(n315), .Y(n3201) );
  XOR2XL U236 ( .A(n286), .B(Gx_acc1_1_r[16]), .Y(N215) );
  AND3XL U237 ( .A(Gx_acc1_1_r[17]), .B(Gx_acc1_1_r[16]), .C(n286), .Y(N217)
         );
  NAND2XL U238 ( .A(Gx_mult2_r[12]), .B(n1311), .Y(n304) );
  XOR3XL U239 ( .A(Gx_acc1_1_r[13]), .B(Gx_acc2_1_r[13]), .C(n287), .Y(N212)
         );
  INVXL U240 ( .A(n298), .Y(n299) );
  AOI2BB2XL U241 ( .B0(n1330), .B1(Gy_abs_delay[24]), .A0N(n490), .A1N(n550), 
        .Y(n316) );
  NAND2XL U242 ( .A(Gy_abs_delay[25]), .B(n390), .Y(n356) );
  XOR3XL U243 ( .A(Gx_acc1_1_r[10]), .B(Gx_acc2_1_r[10]), .C(n291), .Y(N209)
         );
  XOR3XL U244 ( .A(Gx_acc1_1_r[9]), .B(n1020), .C(n302), .Y(N208) );
  MX2XL U245 ( .A(N96), .B(Gy_imm_r[0]), .S0(n830), .Y(N106) );
  MX2XL U246 ( .A(N127), .B(Gx_imm_r[0]), .S0(n840), .Y(N137) );
  INVXL U247 ( .A(Gx_acc3_r[11]), .Y(n219) );
  INVX3 U248 ( .A(n174), .Y(n1650) );
  INVX3 U249 ( .A(n174), .Y(n1660) );
  INVX3 U250 ( .A(n177), .Y(n1690) );
  INVX3 U251 ( .A(n174), .Y(n1680) );
  INVX3 U252 ( .A(n177), .Y(n1490) );
  INVX3 U253 ( .A(n177), .Y(n1500) );
  INVX3 U254 ( .A(n177), .Y(n1511) );
  INVX3 U255 ( .A(n174), .Y(n1540) );
  INVX3 U256 ( .A(n174), .Y(n1560) );
  INVX3 U257 ( .A(n174), .Y(n1570) );
  INVX3 U258 ( .A(n174), .Y(n1580) );
  INVX3 U259 ( .A(n175), .Y(n1611) );
  INVX3 U260 ( .A(n177), .Y(n1480) );
  NAND4X1 U261 ( .A(n2110), .B(n2120), .C(n241), .D(n2401), .Y(n2150) );
  NAND2X1 U262 ( .A(n248), .B(n2130), .Y(n2110) );
  AND2X2 U263 ( .A(n248), .B(n500), .Y(n1070) );
  CLKINVX1 U264 ( .A(n2170), .Y(n1870) );
  AND2X2 U265 ( .A(n178), .B(n219), .Y(n224) );
  XOR3XL U266 ( .A(n1440), .B(n1450), .C(n1980), .Y(N165) );
  CLKINVX1 U267 ( .A(n318), .Y(n303) );
  XOR3XL U268 ( .A(n1420), .B(n2070), .C(n670), .Y(N162) );
  AOI2BB1X1 U269 ( .A0N(n660), .A1N(n1060), .B0(n2060), .Y(n2070) );
  CLKINVX1 U270 ( .A(n2050), .Y(n2060) );
  CLKINVX1 U271 ( .A(n3501), .Y(n344) );
  AND2X2 U272 ( .A(n322), .B(n323), .Y(n1140) );
  OAI221XL U273 ( .A0(Gy_abs_delay[25]), .A1(n3200), .B0(Gy_abs_delay[26]), 
        .B1(n510), .C0(n344), .Y(n351) );
  AOI2BB1X1 U274 ( .A0N(n272), .A1N(n274), .B0(n2801), .Y(n269) );
  XOR3X1 U275 ( .A(n92), .B(n273), .C(n2900), .Y(N213) );
  CLKINVX1 U276 ( .A(n2701), .Y(n271) );
  CLKINVX1 U277 ( .A(n255), .Y(n256) );
  XOR2X1 U278 ( .A(Gy_delay[3]), .B(n690), .Y(n359) );
  INVX3 U279 ( .A(n346), .Y(n347) );
  AND2X4 U280 ( .A(Gx_mult1_r[15]), .B(n345), .Y(n1161) );
  OR2X4 U281 ( .A(n1170), .B(Gx_mult2_r[8]), .Y(n306) );
  NAND4X1 U282 ( .A(n118), .B(n1190), .C(n1201), .D(n121), .Y(n309) );
  NOR2X1 U283 ( .A(Gx_mult1_r[6]), .B(Gx_mult1_r[5]), .Y(n122) );
  NOR3X1 U284 ( .A(Gx_mult1_r[3]), .B(Gx_mult1_r[2]), .C(Gx_mult1_r[4]), .Y(
        n123) );
  NAND2X1 U285 ( .A(n124), .B(n125), .Y(n331) );
  OR2X4 U286 ( .A(n325), .B(Gx_mult2_r[11]), .Y(n317) );
  XOR2X1 U287 ( .A(Gx_acc1_1_r[17]), .B(n126), .Y(N216) );
  AND2X2 U288 ( .A(Gx_acc1_1_r[16]), .B(n286), .Y(n126) );
  NAND2X1 U289 ( .A(n281), .B(n2801), .Y(n283) );
  NAND3X1 U290 ( .A(n1270), .B(n1280), .C(n1290), .Y(n3101) );
  CLKMX2X2 U291 ( .A(Gx_acc3_r[2]), .B(n265), .S0(n173), .Y(n720) );
  XOR2XL U292 ( .A(N158), .B(n1411), .Y(n265) );
  CLKMX2X2 U293 ( .A(Gx_acc3_r[4]), .B(n261), .S0(n173), .Y(n740) );
  XOR3XL U294 ( .A(n1411), .B(Gx_abs[4]), .C(n2601), .Y(n261) );
  XOR3XL U295 ( .A(Gx_abs[4]), .B(n1440), .C(n570), .Y(n252) );
  MX2XL U296 ( .A(Gx_acc3_r[0]), .B(N158), .S0(rst), .Y(n700) );
  MX2XL U297 ( .A(Gx_acc3_r[1]), .B(n1400), .S0(rst), .Y(n710) );
  CLKMX2X2 U298 ( .A(Gx_acc3_r[3]), .B(n264), .S0(rst), .Y(n730) );
  XOR3XL U299 ( .A(n1400), .B(n263), .C(n262), .Y(n264) );
  NAND2XL U300 ( .A(N158), .B(n1411), .Y(n262) );
  CLKINVX1 U301 ( .A(n560), .Y(n314) );
  OAI211XL U302 ( .A0(n540), .A1(n430), .B0(n336), .C0(n337), .Y(n326) );
  INVX1 U303 ( .A(n530), .Y(n275) );
  OR2X1 U304 ( .A(n1311), .B(Gx_mult2_r[12]), .Y(n318) );
  CLKINVX1 U305 ( .A(n291), .Y(n289) );
  NAND2X1 U306 ( .A(n1340), .B(n1350), .Y(n3501) );
  CLKMX2X2 U307 ( .A(N102), .B(Gy_imm_r[6]), .S0(n830), .Y(N112) );
  CLKMX2X2 U308 ( .A(N133), .B(Gx_imm_r[6]), .S0(n840), .Y(N143) );
  CLKMX2X2 U309 ( .A(N103), .B(Gy_imm_r[7]), .S0(n830), .Y(N113) );
  XOR2XL U310 ( .A(n680), .B(Gx_acc2_1_r[8]), .Y(N207) );
  OAI31X2 U311 ( .A0(n257), .A1(n1390), .A2(n243), .B0(n242), .Y(n251) );
  NAND2X2 U312 ( .A(n680), .B(Gx_acc2_1_r[8]), .Y(n302) );
  AO21X4 U313 ( .A0(n1020), .A1(n93), .B0(n302), .Y(n292) );
  AOI32X2 U314 ( .A0(n490), .A1(n550), .A2(n317), .B0(Gx_mult2_r[11]), .B1(
        n325), .Y(n305) );
  AOI32X2 U315 ( .A0(Gx_mult2_r[7]), .A1(n2800), .A2(n306), .B0(Gx_mult2_r[8]), 
        .B1(n1170), .Y(n312) );
  OAI211X2 U316 ( .A0(n3101), .A1(n309), .B0(n308), .C0(n307), .Y(n311) );
  OAI221X2 U317 ( .A0(Gy_abs_delay[22]), .A1(n314), .B0(n313), .B1(n312), .C0(
        n311), .Y(n315) );
  NAND2X2 U318 ( .A(Gx_mult1_r[12]), .B(n1311), .Y(n337) );
  NAND2X2 U319 ( .A(Gx_mult1_r[9]), .B(n630), .Y(n328) );
  NAND2X2 U320 ( .A(Gx_mult1_r[8]), .B(n1170), .Y(n327) );
  NAND2X2 U321 ( .A(Gy_abs_delay[23]), .B(n3400), .Y(n339) );
  OAI32X2 U322 ( .A0(Gx_mult1_r[14]), .A1(n1161), .A2(n650), .B0(
        Gx_mult1_r[15]), .B1(n345), .Y(n346) );
endmodule


module sobel_gradient_DW01_inc_3 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;
  wire   n5, n6, n7, n8, n9, n10, n11, n17, n18, n19, n20, n26, n27, n55, n56,
         n57, n58;

  NAND2X2 U43 ( .A(A[1]), .B(n55), .Y(n27) );
  BUFX4 U44 ( .A(A[0]), .Y(n55) );
  NAND2X2 U45 ( .A(A[2]), .B(A[3]), .Y(n20) );
  AND2XL U46 ( .A(n26), .B(A[2]), .Y(n58) );
  NAND2X1 U47 ( .A(n8), .B(n19), .Y(n7) );
  CLKINVX1 U48 ( .A(n19), .Y(n18) );
  XOR2X1 U49 ( .A(n56), .B(A[9]), .Y(SUM[9]) );
  OR2X1 U50 ( .A(n18), .B(n17), .Y(n57) );
  XOR2X1 U51 ( .A(n58), .B(A[3]), .Y(SUM[3]) );
  XOR2X1 U52 ( .A(n18), .B(n17), .Y(SUM[4]) );
  CLKINVX1 U53 ( .A(n27), .Y(n26) );
  NOR2X2 U54 ( .A(n20), .B(n27), .Y(n19) );
  NOR2X4 U55 ( .A(n7), .B(n6), .Y(n5) );
  INVXL U56 ( .A(A[4]), .Y(n17) );
  INVX1 U57 ( .A(A[6]), .Y(n9) );
  XOR2XL U58 ( .A(n7), .B(n6), .Y(SUM[7]) );
  XOR2XL U59 ( .A(n26), .B(A[2]), .Y(SUM[2]) );
  XOR2XL U60 ( .A(A[1]), .B(n55), .Y(SUM[1]) );
  INVXL U61 ( .A(n55), .Y(SUM[0]) );
  NOR2X1 U62 ( .A(n11), .B(n9), .Y(n8) );
  NAND2X1 U63 ( .A(A[4]), .B(A[5]), .Y(n11) );
  AND2X2 U64 ( .A(n5), .B(A[8]), .Y(n56) );
  XNOR2X1 U65 ( .A(n10), .B(n9), .Y(SUM[6]) );
  NOR2X1 U66 ( .A(n18), .B(n11), .Y(n10) );
  XNOR2X1 U67 ( .A(n57), .B(A[5]), .Y(SUM[5]) );
  XOR2X1 U68 ( .A(n5), .B(A[8]), .Y(SUM[8]) );
  CLKINVX1 U69 ( .A(A[7]), .Y(n6) );
endmodule


module sobel_gradient_DW01_inc_2 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;
  wire   n5, n6, n7, n8, n9, n10, n11, n17, n18, n19, n20, n26, n27, n55, n56,
         n57;

  NAND2X2 U43 ( .A(n8), .B(n19), .Y(n7) );
  NOR2X4 U44 ( .A(n20), .B(n27), .Y(n19) );
  NOR2X1 U45 ( .A(n11), .B(n9), .Y(n8) );
  CLKINVX1 U46 ( .A(n19), .Y(n18) );
  NOR2X2 U47 ( .A(n7), .B(n6), .Y(n5) );
  NAND2X1 U48 ( .A(A[4]), .B(A[5]), .Y(n11) );
  XNOR2X1 U49 ( .A(n56), .B(A[5]), .Y(SUM[5]) );
  XOR2X1 U50 ( .A(n57), .B(A[3]), .Y(SUM[3]) );
  XOR2X1 U51 ( .A(n55), .B(A[9]), .Y(SUM[9]) );
  NOR2X1 U52 ( .A(n18), .B(n11), .Y(n10) );
  XOR2X1 U53 ( .A(n18), .B(n17), .Y(SUM[4]) );
  NAND2X4 U54 ( .A(A[1]), .B(A[0]), .Y(n27) );
  INVXL U55 ( .A(A[4]), .Y(n17) );
  INVX1 U56 ( .A(A[6]), .Y(n9) );
  XOR2XL U57 ( .A(n7), .B(n6), .Y(SUM[7]) );
  AND2XL U58 ( .A(n26), .B(A[2]), .Y(n57) );
  XOR2XL U59 ( .A(n26), .B(A[2]), .Y(SUM[2]) );
  XOR2XL U60 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  INVXL U61 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U62 ( .A(n27), .Y(n26) );
  NAND2X1 U63 ( .A(A[2]), .B(A[3]), .Y(n20) );
  AND2X2 U64 ( .A(n5), .B(A[8]), .Y(n55) );
  XNOR2X1 U65 ( .A(n10), .B(n9), .Y(SUM[6]) );
  OR2X1 U66 ( .A(n18), .B(n17), .Y(n56) );
  XOR2X1 U67 ( .A(n5), .B(A[8]), .Y(SUM[8]) );
  CLKINVX1 U68 ( .A(A[7]), .Y(n6) );
endmodule


module sobel_gradient_DW01_add_18 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n57, n58, n59, n61, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  NOR2X2 U77 ( .A(B[3]), .B(A[3]), .Y(n45) );
  NOR2X2 U78 ( .A(n23), .B(n18), .Y(n16) );
  NOR2X1 U79 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NAND2X2 U80 ( .A(B[0]), .B(A[0]), .Y(n55) );
  CLKBUFX3 U81 ( .A(n26), .Y(n101) );
  OR2X2 U82 ( .A(B[1]), .B(A[1]), .Y(n102) );
  INVX20 U83 ( .A(n102), .Y(n52) );
  CLKBUFX3 U84 ( .A(n46), .Y(n103) );
  INVX3 U85 ( .A(n29), .Y(n31) );
  NOR2BX1 U86 ( .AN(n28), .B(n105), .Y(n21) );
  NOR2X1 U87 ( .A(B[2]), .B(A[2]), .Y(n48) );
  OAI21X2 U88 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  AND2X2 U89 ( .A(n59), .B(n40), .Y(n104) );
  XOR2X1 U90 ( .A(n36), .B(n3), .Y(SUM[5]) );
  XOR2X1 U91 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U92 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NOR2X2 U93 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2X1 U94 ( .A(n28), .B(n16), .Y(n14) );
  XNOR2XL U95 ( .A(n42), .B(n104), .Y(SUM[4]) );
  INVX3 U96 ( .A(n42), .Y(n41) );
  OAI21X2 U97 ( .A0(n45), .A1(n49), .B0(n103), .Y(n44) );
  AO21X2 U98 ( .A0(n41), .A1(n28), .B0(n29), .Y(n109) );
  NOR2X2 U99 ( .A(n39), .B(n34), .Y(n28) );
  OAI21X1 U100 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  AOI21X4 U101 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  NOR2X1 U102 ( .A(B[6]), .B(A[6]), .Y(n105) );
  OAI2BB1XL U103 ( .A0N(n51), .A1N(n61), .B0(n49), .Y(n47) );
  OAI21X4 U104 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  OR2XL U105 ( .A(B[7]), .B(A[7]), .Y(n106) );
  OR2XL U106 ( .A(B[3]), .B(A[3]), .Y(n107) );
  OR2X4 U107 ( .A(n34), .B(n40), .Y(n108) );
  NAND2X6 U108 ( .A(n108), .B(n35), .Y(n29) );
  NOR2X2 U109 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2X2 U110 ( .A(B[4]), .B(A[4]), .Y(n40) );
  NAND2X1 U111 ( .A(B[5]), .B(A[5]), .Y(n35) );
  AOI21X2 U112 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  NAND2X1 U113 ( .A(B[2]), .B(A[2]), .Y(n49) );
  XOR2X1 U114 ( .A(n50), .B(n6), .Y(SUM[2]) );
  INVXL U115 ( .A(n48), .Y(n61) );
  INVXL U116 ( .A(n51), .Y(n50) );
  XNOR2X1 U117 ( .A(n109), .B(n2), .Y(SUM[6]) );
  INVXL U118 ( .A(n39), .Y(n59) );
  INVXL U119 ( .A(n40), .Y(n38) );
  NAND2XL U120 ( .A(n102), .B(n53), .Y(n7) );
  NAND2XL U121 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NAND2BXL U122 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U123 ( .A(B[0]), .B(A[0]), .Y(n54) );
  NOR2X1 U124 ( .A(n48), .B(n45), .Y(n43) );
  NAND2X1 U125 ( .A(n58), .B(n35), .Y(n3) );
  AOI21X1 U126 ( .A0(n41), .A1(n59), .B0(n38), .Y(n36) );
  CLKINVX1 U127 ( .A(n34), .Y(n58) );
  NAND2X1 U128 ( .A(n57), .B(n101), .Y(n2) );
  CLKINVX1 U129 ( .A(n105), .Y(n57) );
  NAND2X1 U130 ( .A(n106), .B(n19), .Y(n1) );
  AOI21X1 U131 ( .A0(n41), .A1(n21), .B0(n22), .Y(n20) );
  OAI21XL U132 ( .A0(n31), .A1(n105), .B0(n101), .Y(n22) );
  XNOR2X1 U133 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U134 ( .A(n107), .B(n103), .Y(n5) );
  NAND2X1 U135 ( .A(n61), .B(n49), .Y(n6) );
  XOR2X1 U136 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2X1 U137 ( .A(B[1]), .B(A[1]), .Y(n53) );
  XOR2X1 U138 ( .A(n110), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U139 ( .A(n13), .B(A[8]), .Y(n110) );
  XOR2X1 U140 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  NAND2X1 U141 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NOR2X1 U142 ( .A(B[4]), .B(A[4]), .Y(n39) );
  CLKINVX1 U143 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_17 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n58, n59, n61, n62, n101, n102, n103, n104, n105, n106, n107;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  OAI21X1 U77 ( .A0(n31), .A1(n23), .B0(n26), .Y(n22) );
  BUFX4 U78 ( .A(B[4]), .Y(n101) );
  NOR2X6 U79 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2X2 U80 ( .A(n101), .B(A[4]), .Y(n40) );
  NOR2X2 U81 ( .A(B[4]), .B(A[4]), .Y(n39) );
  NOR2X1 U82 ( .A(B[7]), .B(A[7]), .Y(n18) );
  CLKINVX1 U83 ( .A(n34), .Y(n58) );
  CLKINVX1 U84 ( .A(n39), .Y(n59) );
  AND2X4 U85 ( .A(n59), .B(n58), .Y(n28) );
  XOR2X1 U86 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  NAND2X1 U87 ( .A(B[7]), .B(A[7]), .Y(n19) );
  AOI21X2 U88 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  OAI21X1 U89 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  NOR2X2 U90 ( .A(B[3]), .B(A[3]), .Y(n45) );
  OAI2BB1X1 U91 ( .A0N(n51), .A1N(n61), .B0(n49), .Y(n47) );
  OAI21X2 U92 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  INVX3 U93 ( .A(n29), .Y(n31) );
  NOR2X2 U94 ( .A(B[6]), .B(A[6]), .Y(n23) );
  AOI21X4 U95 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  NOR2X1 U96 ( .A(n48), .B(n45), .Y(n43) );
  NAND2X2 U97 ( .A(B[0]), .B(A[0]), .Y(n55) );
  NOR2X2 U98 ( .A(B[1]), .B(A[1]), .Y(n52) );
  NAND2X1 U99 ( .A(B[5]), .B(A[5]), .Y(n35) );
  OR2XL U100 ( .A(B[7]), .B(A[7]), .Y(n102) );
  NAND2X1 U101 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NOR2X2 U102 ( .A(n23), .B(n18), .Y(n16) );
  NOR2BX1 U103 ( .AN(n28), .B(n23), .Y(n21) );
  AND2X4 U104 ( .A(n13), .B(A[8]), .Y(n107) );
  OAI21X2 U105 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  OR2XL U106 ( .A(B[6]), .B(A[6]), .Y(n103) );
  AND2XL U107 ( .A(n101), .B(A[4]), .Y(n104) );
  OR2XL U108 ( .A(B[3]), .B(A[3]), .Y(n105) );
  NAND2X2 U109 ( .A(B[2]), .B(A[2]), .Y(n49) );
  NOR2X2 U110 ( .A(B[2]), .B(A[2]), .Y(n48) );
  OAI21X4 U111 ( .A0(n34), .A1(n40), .B0(n35), .Y(n29) );
  OAI21X1 U112 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  INVX3 U113 ( .A(n42), .Y(n41) );
  AO21X1 U114 ( .A0(n41), .A1(n28), .B0(n29), .Y(n106) );
  INVXL U115 ( .A(n51), .Y(n50) );
  XNOR2X1 U116 ( .A(n106), .B(n2), .Y(SUM[6]) );
  XNOR2XL U117 ( .A(n41), .B(n4), .Y(SUM[4]) );
  NAND2XL U118 ( .A(n59), .B(n40), .Y(n4) );
  XOR2XL U119 ( .A(n50), .B(n6), .Y(SUM[2]) );
  NAND2XL U120 ( .A(n61), .B(n49), .Y(n6) );
  XOR2XL U121 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2XL U122 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U123 ( .A(n52), .Y(n62) );
  NAND2BXL U124 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U125 ( .A(B[0]), .B(A[0]), .Y(n54) );
  XOR2X1 U126 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U127 ( .A(n58), .B(n35), .Y(n3) );
  AOI21X1 U128 ( .A0(n41), .A1(n59), .B0(n104), .Y(n36) );
  NAND2X1 U129 ( .A(n103), .B(n26), .Y(n2) );
  XOR2X1 U130 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U131 ( .A(n102), .B(n19), .Y(n1) );
  AOI21X1 U132 ( .A0(n41), .A1(n21), .B0(n22), .Y(n20) );
  NAND2X1 U133 ( .A(n28), .B(n16), .Y(n14) );
  XNOR2X1 U134 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U135 ( .A(n105), .B(n46), .Y(n5) );
  CLKINVX1 U136 ( .A(n48), .Y(n61) );
  NAND2X1 U137 ( .A(B[1]), .B(A[1]), .Y(n53) );
  XOR2X1 U138 ( .A(n107), .B(A[9]), .Y(SUM[9]) );
  NAND2X1 U139 ( .A(B[6]), .B(A[6]), .Y(n26) );
  CLKINVX1 U140 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_16 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n58, n59, n61, n62, n101, n102, n103, n104, n105, n106;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  INVX1 U77 ( .A(n48), .Y(n61) );
  OAI21XL U78 ( .A0(n50), .A1(n48), .B0(n49), .Y(n47) );
  NOR2X2 U79 ( .A(n48), .B(n45), .Y(n43) );
  NAND2X2 U80 ( .A(B[1]), .B(A[1]), .Y(n53) );
  NOR2X2 U81 ( .A(B[3]), .B(A[3]), .Y(n45) );
  OAI21X4 U82 ( .A0(n52), .A1(n101), .B0(n53), .Y(n51) );
  NOR2X2 U83 ( .A(B[1]), .B(A[1]), .Y(n52) );
  BUFX6 U84 ( .A(n55), .Y(n101) );
  AOI21X2 U85 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  INVX4 U86 ( .A(n42), .Y(n41) );
  AOI21X1 U87 ( .A0(n41), .A1(n21), .B0(n22), .Y(n20) );
  NAND2X1 U88 ( .A(B[7]), .B(A[7]), .Y(n19) );
  AOI21X1 U89 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  NAND2X1 U90 ( .A(n28), .B(n16), .Y(n14) );
  NOR2X2 U91 ( .A(n23), .B(n18), .Y(n16) );
  OAI21X1 U92 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  NAND2X1 U93 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NAND2X2 U94 ( .A(B[2]), .B(A[2]), .Y(n49) );
  NAND2XL U95 ( .A(n104), .B(n46), .Y(n5) );
  AO21X2 U96 ( .A0(n41), .A1(n28), .B0(n29), .Y(n105) );
  NOR2BXL U97 ( .AN(n28), .B(n23), .Y(n21) );
  NOR2X2 U98 ( .A(n39), .B(n34), .Y(n28) );
  NAND2X1 U99 ( .A(B[5]), .B(A[5]), .Y(n35) );
  OAI21X1 U100 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  NAND2X2 U101 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NOR2X2 U102 ( .A(B[7]), .B(A[7]), .Y(n18) );
  OAI21X2 U103 ( .A0(n34), .A1(n40), .B0(n35), .Y(n29) );
  NAND2X1 U104 ( .A(n59), .B(n40), .Y(n4) );
  NAND2X1 U105 ( .A(B[4]), .B(A[4]), .Y(n40) );
  OAI21X1 U106 ( .A0(n31), .A1(n23), .B0(n26), .Y(n22) );
  NOR2X2 U107 ( .A(B[6]), .B(A[6]), .Y(n23) );
  INVX1 U108 ( .A(n51), .Y(n50) );
  OAI21X2 U109 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  NOR2X2 U110 ( .A(B[2]), .B(A[2]), .Y(n48) );
  OR2XL U111 ( .A(B[6]), .B(A[6]), .Y(n102) );
  AND2XL U112 ( .A(B[4]), .B(A[4]), .Y(n103) );
  OR2XL U113 ( .A(B[3]), .B(A[3]), .Y(n104) );
  NOR2X2 U114 ( .A(B[5]), .B(A[5]), .Y(n34) );
  XNOR2X1 U115 ( .A(n105), .B(n2), .Y(SUM[6]) );
  XNOR2XL U116 ( .A(n41), .B(n4), .Y(SUM[4]) );
  XOR2XL U117 ( .A(n50), .B(n6), .Y(SUM[2]) );
  NAND2XL U118 ( .A(n61), .B(n49), .Y(n6) );
  INVXL U119 ( .A(n39), .Y(n59) );
  XOR2XL U120 ( .A(n7), .B(n101), .Y(SUM[1]) );
  NAND2XL U121 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U122 ( .A(n52), .Y(n62) );
  NAND2BXL U123 ( .AN(n54), .B(n101), .Y(n8) );
  NOR2XL U124 ( .A(B[0]), .B(A[0]), .Y(n54) );
  XOR2X1 U125 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U126 ( .A(n58), .B(n35), .Y(n3) );
  AOI21X1 U127 ( .A0(n41), .A1(n59), .B0(n103), .Y(n36) );
  CLKINVX1 U128 ( .A(n34), .Y(n58) );
  NAND2X1 U129 ( .A(n102), .B(n26), .Y(n2) );
  XOR2X1 U130 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U131 ( .A(n56), .B(n19), .Y(n1) );
  CLKINVX1 U132 ( .A(n18), .Y(n56) );
  CLKINVX1 U133 ( .A(n29), .Y(n31) );
  XNOR2X1 U134 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U135 ( .A(B[0]), .B(A[0]), .Y(n55) );
  XOR2X1 U136 ( .A(n106), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U137 ( .A(n13), .B(A[8]), .Y(n106) );
  XOR2X1 U138 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  NOR2X1 U139 ( .A(B[4]), .B(A[4]), .Y(n39) );
  CLKINVX1 U140 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_15 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n26, n28, n29, n31, n34, n35, n36, n38, n39, n40, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57,
         n58, n59, n61, n62, n101, n102, n103, n104, n105, n106, n107, n108;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  AO21X2 U77 ( .A0(n103), .A1(n28), .B0(n29), .Y(n107) );
  NOR2BX1 U78 ( .AN(n101), .B(n18), .Y(n16) );
  OR2X2 U79 ( .A(B[6]), .B(A[6]), .Y(n101) );
  AOI21X2 U80 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  AO21X4 U81 ( .A0(n51), .A1(n43), .B0(n44), .Y(n103) );
  NOR2X2 U82 ( .A(B[4]), .B(A[4]), .Y(n39) );
  INVX3 U83 ( .A(n29), .Y(n31) );
  NOR2X1 U84 ( .A(B[2]), .B(A[2]), .Y(n48) );
  NAND2X4 U85 ( .A(n106), .B(n35), .Y(n29) );
  NOR2X1 U86 ( .A(n39), .B(n34), .Y(n28) );
  OAI21XL U87 ( .A0(n31), .A1(n102), .B0(n26), .Y(n22) );
  OAI21X1 U88 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  NAND2X1 U89 ( .A(B[6]), .B(A[6]), .Y(n26) );
  OAI21X1 U90 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  NAND2X1 U91 ( .A(B[3]), .B(A[3]), .Y(n46) );
  OAI2BB1X1 U92 ( .A0N(n51), .A1N(n61), .B0(n49), .Y(n47) );
  OAI21X2 U93 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  NOR2X2 U94 ( .A(B[1]), .B(A[1]), .Y(n52) );
  NOR2BX1 U95 ( .AN(n28), .B(n102), .Y(n21) );
  NAND2X2 U96 ( .A(B[0]), .B(A[0]), .Y(n55) );
  AOI21X2 U97 ( .A0(n103), .A1(n21), .B0(n22), .Y(n20) );
  AOI21X2 U98 ( .A0(n103), .A1(n59), .B0(n38), .Y(n36) );
  XNOR2X1 U99 ( .A(n103), .B(n4), .Y(SUM[4]) );
  NAND2X1 U100 ( .A(B[7]), .B(A[7]), .Y(n19) );
  OAI21X4 U101 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  NAND2X2 U102 ( .A(n16), .B(n28), .Y(n14) );
  NOR2X1 U103 ( .A(B[6]), .B(A[6]), .Y(n102) );
  OR2XL U104 ( .A(B[7]), .B(A[7]), .Y(n104) );
  OR2XL U105 ( .A(B[3]), .B(A[3]), .Y(n105) );
  OR2X4 U106 ( .A(n34), .B(n40), .Y(n106) );
  NOR2X2 U107 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2X2 U108 ( .A(B[4]), .B(A[4]), .Y(n40) );
  NAND2X1 U109 ( .A(B[5]), .B(A[5]), .Y(n35) );
  AOI21X2 U110 ( .A0(n16), .A1(n29), .B0(n17), .Y(n15) );
  NAND2X2 U111 ( .A(B[2]), .B(A[2]), .Y(n49) );
  XOR2X1 U112 ( .A(n50), .B(n6), .Y(SUM[2]) );
  INVXL U113 ( .A(n48), .Y(n61) );
  INVXL U114 ( .A(n51), .Y(n50) );
  XNOR2X1 U115 ( .A(n107), .B(n2), .Y(SUM[6]) );
  NAND2XL U116 ( .A(n59), .B(n40), .Y(n4) );
  INVXL U117 ( .A(n39), .Y(n59) );
  INVXL U118 ( .A(n40), .Y(n38) );
  NAND2XL U119 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U120 ( .A(n52), .Y(n62) );
  NOR2X1 U121 ( .A(B[3]), .B(A[3]), .Y(n45) );
  NOR2X1 U122 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2BXL U123 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U124 ( .A(B[0]), .B(A[0]), .Y(n54) );
  NOR2X1 U125 ( .A(n48), .B(n45), .Y(n43) );
  XOR2X1 U126 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U127 ( .A(n58), .B(n35), .Y(n3) );
  CLKINVX1 U128 ( .A(n34), .Y(n58) );
  NAND2X1 U129 ( .A(n57), .B(n26), .Y(n2) );
  CLKINVX1 U130 ( .A(n102), .Y(n57) );
  XOR2X1 U131 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U132 ( .A(n104), .B(n19), .Y(n1) );
  XNOR2X1 U133 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U134 ( .A(n105), .B(n46), .Y(n5) );
  NAND2X1 U135 ( .A(n61), .B(n49), .Y(n6) );
  XOR2X1 U136 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2X1 U137 ( .A(B[1]), .B(A[1]), .Y(n53) );
  XOR2X1 U138 ( .A(n108), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U139 ( .A(n13), .B(A[8]), .Y(n108) );
  XOR2X1 U140 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  CLKINVX1 U141 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_sub_5 ( DIFF, \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[9] , \B[8] , \B[7] , 
        \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  output [10:0] DIFF;
  input \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] ,
         \A[0] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n33, n34,
         n35, n36, n38, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n121,
         n122;
  wire   [9:0] B;
  wire   [9:0] A;
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

  OAI21X1 U95 ( .A0(n25), .A1(n33), .B0(n26), .Y(n24) );
  NAND2X1 U96 ( .A(n74), .B(A[6]), .Y(n33) );
  OAI21X1 U97 ( .A0(n57), .A1(n55), .B0(n56), .Y(n54) );
  OR2X1 U98 ( .A(n52), .B(n56), .Y(n121) );
  NAND2X2 U99 ( .A(n78), .B(A[2]), .Y(n56) );
  XNOR2X2 U100 ( .A(n54), .B(n7), .Y(DIFF[3]) );
  INVX4 U101 ( .A(n58), .Y(n57) );
  NAND2X1 U102 ( .A(n35), .B(n23), .Y(n21) );
  NOR2X2 U103 ( .A(n46), .B(n41), .Y(n35) );
  AOI21X1 U104 ( .A0(n20), .A1(n11), .B0(n12), .Y(DIFF[10]) );
  CLKINVX1 U105 ( .A(B[2]), .Y(n78) );
  OAI21X2 U106 ( .A0(n59), .A1(n61), .B0(n60), .Y(n58) );
  INVX3 U107 ( .A(B[1]), .Y(n79) );
  AOI21X2 U108 ( .A0(n48), .A1(n35), .B0(n36), .Y(n34) );
  XNOR2X1 U109 ( .A(n20), .B(n2), .Y(DIFF[8]) );
  NOR2BX1 U110 ( .AN(n35), .B(n30), .Y(n28) );
  NAND2X2 U111 ( .A(n121), .B(n53), .Y(n51) );
  XOR2X2 U112 ( .A(n15), .B(n1), .Y(DIFF[9]) );
  NAND2XL U113 ( .A(n77), .B(A[3]), .Y(n53) );
  OR2XL U114 ( .A(n79), .B(A[1]), .Y(n122) );
  XOR2X1 U115 ( .A(n9), .B(n61), .Y(DIFF[1]) );
  NOR2X2 U116 ( .A(n80), .B(A[0]), .Y(n61) );
  NOR2X2 U117 ( .A(n77), .B(A[3]), .Y(n52) );
  NAND2X1 U118 ( .A(n73), .B(A[7]), .Y(n26) );
  OAI21X4 U119 ( .A0(n41), .A1(n47), .B0(n42), .Y(n36) );
  NAND2X1 U120 ( .A(n75), .B(A[5]), .Y(n42) );
  NOR2X2 U121 ( .A(n73), .B(A[7]), .Y(n25) );
  NOR2X2 U122 ( .A(n30), .B(n25), .Y(n23) );
  NOR2X2 U123 ( .A(n76), .B(A[4]), .Y(n46) );
  OAI21X4 U124 ( .A0(n49), .A1(n21), .B0(n22), .Y(n20) );
  NOR2X2 U125 ( .A(n78), .B(A[2]), .Y(n55) );
  AOI21X4 U126 ( .A0(n58), .A1(n50), .B0(n51), .Y(n49) );
  AOI21X2 U127 ( .A0(n48), .A1(n67), .B0(n45), .Y(n43) );
  AOI21X2 U128 ( .A0(n48), .A1(n28), .B0(n29), .Y(n27) );
  INVX8 U129 ( .A(n49), .Y(n48) );
  AOI21X2 U130 ( .A0(n20), .A1(n63), .B0(n17), .Y(n15) );
  INVX1 U131 ( .A(B[3]), .Y(n77) );
  OAI21X1 U132 ( .A0(n38), .A1(n30), .B0(n33), .Y(n29) );
  INVX1 U133 ( .A(n36), .Y(n38) );
  NAND2X2 U134 ( .A(n76), .B(A[4]), .Y(n47) );
  NOR2X2 U135 ( .A(n75), .B(A[5]), .Y(n41) );
  AOI21X2 U136 ( .A0(n36), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X2 U137 ( .A(n74), .B(A[6]), .Y(n30) );
  INVXL U138 ( .A(n52), .Y(n68) );
  XNOR2XL U139 ( .A(n48), .B(n6), .Y(DIFF[4]) );
  NAND2XL U140 ( .A(n67), .B(n47), .Y(n6) );
  NAND2XL U141 ( .A(n68), .B(n53), .Y(n7) );
  XOR2XL U142 ( .A(n57), .B(n8), .Y(DIFF[2]) );
  NAND2XL U143 ( .A(n69), .B(n56), .Y(n8) );
  INVXL U144 ( .A(n47), .Y(n45) );
  NAND2XL U145 ( .A(n122), .B(n60), .Y(n9) );
  NOR2X1 U146 ( .A(n71), .B(A[9]), .Y(n13) );
  XNOR2XL U147 ( .A(n80), .B(A[0]), .Y(DIFF[0]) );
  NOR2X1 U148 ( .A(n55), .B(n52), .Y(n50) );
  NAND2X1 U149 ( .A(n62), .B(n14), .Y(n1) );
  CLKINVX1 U150 ( .A(n13), .Y(n62) );
  XOR2X1 U151 ( .A(n43), .B(n5), .Y(DIFF[5]) );
  NAND2X1 U152 ( .A(n66), .B(n42), .Y(n5) );
  CLKINVX1 U153 ( .A(n41), .Y(n66) );
  XOR2X1 U154 ( .A(n34), .B(n4), .Y(DIFF[6]) );
  NAND2X1 U155 ( .A(n65), .B(n33), .Y(n4) );
  CLKINVX1 U156 ( .A(n30), .Y(n65) );
  XOR2X1 U157 ( .A(n27), .B(n3), .Y(DIFF[7]) );
  NAND2X1 U158 ( .A(n64), .B(n26), .Y(n3) );
  CLKINVX1 U159 ( .A(n25), .Y(n64) );
  NAND2X1 U160 ( .A(n63), .B(n19), .Y(n2) );
  OAI21XL U161 ( .A0(n13), .A1(n19), .B0(n14), .Y(n12) );
  NOR2X1 U162 ( .A(n18), .B(n13), .Y(n11) );
  CLKINVX1 U163 ( .A(n55), .Y(n69) );
  CLKINVX1 U164 ( .A(n46), .Y(n67) );
  CLKINVX1 U165 ( .A(n18), .Y(n63) );
  CLKINVX1 U166 ( .A(n19), .Y(n17) );
  NOR2X1 U167 ( .A(n79), .B(A[1]), .Y(n59) );
  CLKINVX1 U168 ( .A(B[4]), .Y(n76) );
  CLKINVX1 U169 ( .A(B[0]), .Y(n80) );
  CLKINVX1 U170 ( .A(B[5]), .Y(n75) );
  NAND2X1 U171 ( .A(n79), .B(A[1]), .Y(n60) );
  CLKINVX1 U172 ( .A(B[6]), .Y(n74) );
  CLKINVX1 U173 ( .A(B[7]), .Y(n73) );
  NOR2X1 U174 ( .A(n72), .B(A[8]), .Y(n18) );
  CLKINVX1 U175 ( .A(B[8]), .Y(n72) );
  NAND2X1 U176 ( .A(n72), .B(A[8]), .Y(n19) );
  CLKINVX1 U177 ( .A(B[9]), .Y(n71) );
  NAND2X1 U178 ( .A(n71), .B(A[9]), .Y(n14) );
endmodule


module sobel_gradient_DW01_sub_4 ( DIFF, \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[9] , \B[8] , \B[7] , 
        \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  output [10:0] DIFF;
  input \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] ,
         \A[0] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n33, n34,
         n35, n36, n38, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n121
;
  wire   [9:0] B;
  wire   [9:0] A;
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

  NOR2X2 U95 ( .A(n80), .B(A[0]), .Y(n61) );
  CLKINVX1 U96 ( .A(B[0]), .Y(n80) );
  INVX3 U97 ( .A(B[7]), .Y(n73) );
  INVX4 U98 ( .A(n49), .Y(n48) );
  NOR2X1 U99 ( .A(n78), .B(A[2]), .Y(n55) );
  INVX3 U100 ( .A(B[6]), .Y(n74) );
  NOR2X1 U101 ( .A(n73), .B(A[7]), .Y(n25) );
  OAI21X1 U102 ( .A0(n25), .A1(n33), .B0(n26), .Y(n24) );
  XNOR2X1 U103 ( .A(n48), .B(n6), .Y(DIFF[4]) );
  AOI21X2 U104 ( .A0(n48), .A1(n35), .B0(n36), .Y(n34) );
  NOR2X2 U105 ( .A(n55), .B(n52), .Y(n50) );
  NOR2X2 U106 ( .A(n79), .B(A[1]), .Y(n59) );
  OR2XL U107 ( .A(n73), .B(A[7]), .Y(n121) );
  NOR2BX1 U108 ( .AN(n35), .B(n30), .Y(n28) );
  NOR2X2 U109 ( .A(n46), .B(n41), .Y(n35) );
  AOI21X4 U110 ( .A0(n48), .A1(n28), .B0(n29), .Y(n27) );
  OAI21X2 U111 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NOR2X2 U112 ( .A(n77), .B(A[3]), .Y(n52) );
  OAI21X4 U113 ( .A0(n49), .A1(n21), .B0(n22), .Y(n20) );
  AOI21X4 U114 ( .A0(n58), .A1(n50), .B0(n51), .Y(n49) );
  AOI21XL U115 ( .A0(n20), .A1(n11), .B0(n12), .Y(DIFF[10]) );
  XNOR2X1 U116 ( .A(n20), .B(n2), .Y(DIFF[8]) );
  AOI21X4 U117 ( .A0(n20), .A1(n63), .B0(n17), .Y(n15) );
  OAI21X4 U118 ( .A0(n41), .A1(n47), .B0(n42), .Y(n36) );
  NAND2X1 U119 ( .A(n75), .B(A[5]), .Y(n42) );
  OAI2BB1XL U120 ( .A0N(n58), .A1N(n69), .B0(n56), .Y(n54) );
  OAI21X2 U121 ( .A0(n59), .A1(n61), .B0(n60), .Y(n58) );
  INVX1 U122 ( .A(n55), .Y(n69) );
  AOI21X2 U123 ( .A0(n48), .A1(n67), .B0(n45), .Y(n43) );
  INVX1 U124 ( .A(B[3]), .Y(n77) );
  OAI21X1 U125 ( .A0(n38), .A1(n30), .B0(n33), .Y(n29) );
  INVX1 U126 ( .A(n36), .Y(n38) );
  NAND2X2 U127 ( .A(n76), .B(A[4]), .Y(n47) );
  NOR2X2 U128 ( .A(n75), .B(A[5]), .Y(n41) );
  NAND2X2 U129 ( .A(n35), .B(n23), .Y(n21) );
  AOI21X2 U130 ( .A0(n36), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X2 U131 ( .A(n74), .B(A[6]), .Y(n30) );
  INVXL U132 ( .A(n52), .Y(n68) );
  NOR2X1 U133 ( .A(n76), .B(A[4]), .Y(n46) );
  INVXL U134 ( .A(n58), .Y(n57) );
  NAND2XL U135 ( .A(n67), .B(n47), .Y(n6) );
  NAND2XL U136 ( .A(n68), .B(n53), .Y(n7) );
  XOR2XL U137 ( .A(n57), .B(n8), .Y(DIFF[2]) );
  NAND2XL U138 ( .A(n69), .B(n56), .Y(n8) );
  INVXL U139 ( .A(n47), .Y(n45) );
  XOR2XL U140 ( .A(n9), .B(n61), .Y(DIFF[1]) );
  NAND2XL U141 ( .A(n70), .B(n60), .Y(n9) );
  INVXL U142 ( .A(n59), .Y(n70) );
  NAND2XL U143 ( .A(n73), .B(A[7]), .Y(n26) );
  NOR2X1 U144 ( .A(n71), .B(A[9]), .Y(n13) );
  XNOR2XL U145 ( .A(n80), .B(A[0]), .Y(DIFF[0]) );
  NOR2X1 U146 ( .A(n30), .B(n25), .Y(n23) );
  XOR2X1 U147 ( .A(n15), .B(n1), .Y(DIFF[9]) );
  NAND2X1 U148 ( .A(n62), .B(n14), .Y(n1) );
  CLKINVX1 U149 ( .A(n13), .Y(n62) );
  XOR2X1 U150 ( .A(n43), .B(n5), .Y(DIFF[5]) );
  NAND2X1 U151 ( .A(n66), .B(n42), .Y(n5) );
  CLKINVX1 U152 ( .A(n41), .Y(n66) );
  XOR2X1 U153 ( .A(n34), .B(n4), .Y(DIFF[6]) );
  NAND2X1 U154 ( .A(n65), .B(n33), .Y(n4) );
  CLKINVX1 U155 ( .A(n30), .Y(n65) );
  XOR2X1 U156 ( .A(n27), .B(n3), .Y(DIFF[7]) );
  NAND2X1 U157 ( .A(n121), .B(n26), .Y(n3) );
  NAND2X1 U158 ( .A(n63), .B(n19), .Y(n2) );
  OAI21XL U159 ( .A0(n13), .A1(n19), .B0(n14), .Y(n12) );
  NOR2X1 U160 ( .A(n18), .B(n13), .Y(n11) );
  XNOR2X1 U161 ( .A(n54), .B(n7), .Y(DIFF[3]) );
  CLKINVX1 U162 ( .A(n46), .Y(n67) );
  CLKINVX1 U163 ( .A(n18), .Y(n63) );
  CLKINVX1 U164 ( .A(n19), .Y(n17) );
  CLKINVX1 U165 ( .A(B[1]), .Y(n79) );
  CLKINVX1 U166 ( .A(B[4]), .Y(n76) );
  CLKINVX1 U167 ( .A(B[5]), .Y(n75) );
  NAND2X1 U168 ( .A(n79), .B(A[1]), .Y(n60) );
  NAND2X1 U169 ( .A(n78), .B(A[2]), .Y(n56) );
  CLKINVX1 U170 ( .A(B[2]), .Y(n78) );
  NAND2X1 U171 ( .A(n77), .B(A[3]), .Y(n53) );
  NAND2X1 U172 ( .A(n74), .B(A[6]), .Y(n33) );
  NOR2X1 U173 ( .A(n72), .B(A[8]), .Y(n18) );
  CLKINVX1 U174 ( .A(B[8]), .Y(n72) );
  NAND2X1 U175 ( .A(n72), .B(A[8]), .Y(n19) );
  CLKINVX1 U176 ( .A(B[9]), .Y(n71) );
  NAND2X1 U177 ( .A(n71), .B(A[9]), .Y(n14) );
endmodule


module sobel_gradient_DW01_add_14 ( SUM, \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[9] , \B[8] , \B[7] , 
        \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  output [10:0] SUM;
  input \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] ,
         \A[0] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n15, n17, n19, n20, n22, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n38, n39, n40,
         n41, n43, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n70, n72, n73, n74, n75,
         n76, n118, n119, n120, n121, n122, n123, n125, n126;
  wire   [9:0] B;
  wire   [9:0] A;
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

  AOI21X2 U92 ( .A0(n25), .A1(n125), .B0(n22), .Y(n20) );
  NAND2X1 U93 ( .A(A[4]), .B(B[4]), .Y(n52) );
  NOR2X6 U94 ( .A(n35), .B(n30), .Y(n28) );
  NOR2X4 U95 ( .A(A[7]), .B(B[7]), .Y(n30) );
  OAI21X4 U96 ( .A0(n123), .A1(n67), .B0(n65), .Y(n63) );
  BUFX4 U97 ( .A(n64), .Y(n123) );
  NOR2X2 U98 ( .A(A[2]), .B(B[2]), .Y(n60) );
  OAI21X2 U99 ( .A0(n46), .A1(n52), .B0(n47), .Y(n41) );
  NAND2X1 U100 ( .A(A[7]), .B(B[7]), .Y(n31) );
  NOR2X2 U101 ( .A(A[6]), .B(B[6]), .Y(n35) );
  INVX3 U102 ( .A(n41), .Y(n43) );
  NOR2BX1 U103 ( .AN(n40), .B(n35), .Y(n33) );
  NAND2X1 U104 ( .A(A[6]), .B(B[6]), .Y(n38) );
  XOR2X1 U105 ( .A(n48), .B(n5), .Y(SUM[5]) );
  XNOR2X1 U106 ( .A(n59), .B(n7), .Y(SUM[3]) );
  XNOR2X1 U107 ( .A(n25), .B(n2), .Y(SUM[8]) );
  AND2X2 U108 ( .A(n125), .B(n126), .Y(n118) );
  NAND2X1 U109 ( .A(A[3]), .B(B[3]), .Y(n58) );
  AOI21X4 U110 ( .A0(n41), .A1(n28), .B0(n29), .Y(n27) );
  OAI21X2 U111 ( .A0(n30), .A1(n38), .B0(n31), .Y(n29) );
  NOR2X4 U112 ( .A(n120), .B(n46), .Y(n40) );
  NOR2X2 U113 ( .A(A[5]), .B(B[5]), .Y(n46) );
  NOR2X1 U114 ( .A(A[4]), .B(B[4]), .Y(n51) );
  NAND2XL U115 ( .A(n72), .B(n47), .Y(n5) );
  NAND2X1 U116 ( .A(A[5]), .B(B[5]), .Y(n47) );
  NAND2X2 U117 ( .A(A[0]), .B(B[0]), .Y(n67) );
  NAND2X1 U118 ( .A(A[1]), .B(B[1]), .Y(n65) );
  NOR2X1 U119 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NOR2X2 U120 ( .A(A[3]), .B(B[3]), .Y(n57) );
  OAI21X1 U121 ( .A0(n62), .A1(n60), .B0(n122), .Y(n59) );
  NAND2X1 U122 ( .A(n40), .B(n28), .Y(n26) );
  OAI21X4 U123 ( .A0(n54), .A1(n26), .B0(n27), .Y(n25) );
  OAI21X1 U124 ( .A0(n43), .A1(n35), .B0(n38), .Y(n34) );
  INVX6 U125 ( .A(n54), .Y(n53) );
  XNOR2X1 U126 ( .A(n53), .B(n6), .Y(SUM[4]) );
  OR2XL U127 ( .A(A[6]), .B(B[6]), .Y(n119) );
  BUFX4 U128 ( .A(n51), .Y(n120) );
  OR2X2 U129 ( .A(n57), .B(n122), .Y(n121) );
  NAND2X2 U130 ( .A(n121), .B(n58), .Y(n56) );
  AOI21X4 U131 ( .A0(n63), .A1(n55), .B0(n56), .Y(n54) );
  BUFX4 U132 ( .A(n61), .Y(n122) );
  INVXL U133 ( .A(n57), .Y(n74) );
  INVXL U134 ( .A(n60), .Y(n75) );
  INVX1 U135 ( .A(n24), .Y(n22) );
  OAI2BB1XL U136 ( .A0N(n25), .A1N(n118), .B0(n15), .Y(SUM[10]) );
  XOR2XL U137 ( .A(n62), .B(n8), .Y(SUM[2]) );
  NAND2XL U138 ( .A(A[2]), .B(B[2]), .Y(n61) );
  OR2XL U139 ( .A(A[9]), .B(B[9]), .Y(n126) );
  NAND2XL U140 ( .A(A[9]), .B(B[9]), .Y(n19) );
  NAND2XL U141 ( .A(A[8]), .B(B[8]), .Y(n24) );
  OR2XL U142 ( .A(A[8]), .B(B[8]), .Y(n125) );
  NAND2BXL U143 ( .AN(n66), .B(n67), .Y(n10) );
  CLKINVX1 U144 ( .A(n63), .Y(n62) );
  NOR2X1 U145 ( .A(n57), .B(n60), .Y(n55) );
  AOI21X1 U146 ( .A0(n53), .A1(n73), .B0(n50), .Y(n48) );
  CLKINVX1 U147 ( .A(n46), .Y(n72) );
  XOR2X1 U148 ( .A(n39), .B(n4), .Y(SUM[6]) );
  NAND2X1 U149 ( .A(n119), .B(n38), .Y(n4) );
  AOI21X1 U150 ( .A0(n53), .A1(n40), .B0(n41), .Y(n39) );
  XOR2X1 U151 ( .A(n32), .B(n3), .Y(SUM[7]) );
  NAND2X1 U152 ( .A(n70), .B(n31), .Y(n3) );
  AOI21X1 U153 ( .A0(n53), .A1(n33), .B0(n34), .Y(n32) );
  CLKINVX1 U154 ( .A(n30), .Y(n70) );
  XOR2X1 U155 ( .A(n20), .B(n1), .Y(SUM[9]) );
  NAND2X1 U156 ( .A(n126), .B(n19), .Y(n1) );
  NAND2X1 U157 ( .A(n125), .B(n24), .Y(n2) );
  NAND2X1 U158 ( .A(n73), .B(n52), .Y(n6) );
  NAND2X1 U159 ( .A(n74), .B(n58), .Y(n7) );
  CLKINVX1 U160 ( .A(n120), .Y(n73) );
  AOI21X1 U161 ( .A0(n126), .A1(n22), .B0(n17), .Y(n15) );
  CLKINVX1 U162 ( .A(n19), .Y(n17) );
  NAND2X1 U163 ( .A(n75), .B(n122), .Y(n8) );
  CLKINVX1 U164 ( .A(n52), .Y(n50) );
  XOR2X1 U165 ( .A(n9), .B(n67), .Y(SUM[1]) );
  NAND2X1 U166 ( .A(n76), .B(n65), .Y(n9) );
  CLKINVX1 U167 ( .A(n123), .Y(n76) );
  CLKINVX1 U168 ( .A(n10), .Y(SUM[0]) );
  NOR2XL U169 ( .A(A[0]), .B(B[0]), .Y(n66) );
endmodule


module sobel_gradient_DW01_add_13 ( SUM, \A[15] , \A[14] , \A[13] , \A[12] , 
        \A[11] , \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , 
        \B[12] , \B[11] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  output [15:0] SUM;
  input \A[15] , \A[14] , \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] ,
         \A[7] , \A[6] , \A[5] , \A[4] , \B[12] , \B[11] , \B[10] , \B[9] ,
         \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ,
         \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n20, n21, n22, n23, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n35, n36, n37, n40, n42, n43,
         n45, n48, n49, n52, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n73, n77, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;
  wire   [15:4] A;
  wire   [12:0] B;
  assign A[15] = \A[15] ;
  assign A[14] = \A[14] ;
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
  assign B[12] = \B[12] ;
  assign B[11] = \B[11] ;
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

  OAI21X4 U94 ( .A0(n66), .A1(n69), .B0(n67), .Y(n65) );
  NAND2X1 U95 ( .A(A[9]), .B(B[9]), .Y(n49) );
  AND2X4 U96 ( .A(n131), .B(n73), .Y(n42) );
  NOR2X1 U97 ( .A(n37), .B(n32), .Y(n30) );
  OAI21XL U98 ( .A0(n45), .A1(n37), .B0(n40), .Y(n36) );
  INVX3 U99 ( .A(n43), .Y(n45) );
  NOR2X1 U100 ( .A(A[5]), .B(B[5]), .Y(n66) );
  XNOR2X1 U101 ( .A(n138), .B(n5), .Y(SUM[9]) );
  XNOR2X1 U102 ( .A(n136), .B(n4), .Y(SUM[10]) );
  XNOR2X1 U103 ( .A(n61), .B(n7), .Y(SUM[7]) );
  AND2X2 U104 ( .A(n21), .B(A[14]), .Y(n130) );
  OR2X1 U105 ( .A(A[8]), .B(B[8]), .Y(n131) );
  NOR2X2 U106 ( .A(A[11]), .B(B[11]), .Y(n32) );
  XOR2X1 U107 ( .A(n64), .B(n8), .Y(SUM[6]) );
  NAND2X2 U108 ( .A(A[10]), .B(B[10]), .Y(n40) );
  NAND2X1 U109 ( .A(A[11]), .B(B[11]), .Y(n33) );
  NAND2X2 U110 ( .A(A[4]), .B(B[4]), .Y(n69) );
  INVX6 U111 ( .A(n56), .Y(n55) );
  OAI21X1 U112 ( .A0(n64), .A1(n62), .B0(n63), .Y(n61) );
  NAND2X1 U113 ( .A(A[7]), .B(B[7]), .Y(n60) );
  NOR2X2 U114 ( .A(A[10]), .B(B[10]), .Y(n37) );
  OAI21X4 U115 ( .A0(n56), .A1(n28), .B0(n29), .Y(n1) );
  AOI21X4 U116 ( .A0(n43), .A1(n30), .B0(n31), .Y(n29) );
  NOR2X1 U117 ( .A(A[9]), .B(B[9]), .Y(n48) );
  INVX2 U118 ( .A(n48), .Y(n73) );
  OR2XL U119 ( .A(A[6]), .B(B[6]), .Y(n132) );
  OR2XL U120 ( .A(A[7]), .B(B[7]), .Y(n133) );
  OR2XL U121 ( .A(A[11]), .B(B[11]), .Y(n134) );
  AOI21X4 U122 ( .A0(n65), .A1(n57), .B0(n58), .Y(n56) );
  OAI21X1 U123 ( .A0(n59), .A1(n63), .B0(n60), .Y(n58) );
  NAND2X1 U124 ( .A(A[5]), .B(B[5]), .Y(n67) );
  OR2XL U125 ( .A(A[10]), .B(B[10]), .Y(n135) );
  OAI2BB1X4 U126 ( .A0N(n73), .A1N(n52), .B0(n49), .Y(n43) );
  CLKINVX2 U127 ( .A(n54), .Y(n52) );
  XNOR2X1 U128 ( .A(n12), .B(A[15]), .Y(SUM[15]) );
  OAI21XL U129 ( .A0(n32), .A1(n40), .B0(n33), .Y(n31) );
  INVXL U130 ( .A(n65), .Y(n64) );
  INVXL U131 ( .A(n27), .Y(n25) );
  NAND2XL U132 ( .A(n70), .B(n27), .Y(n2) );
  AO21XL U133 ( .A0(n55), .A1(n42), .B0(n43), .Y(n136) );
  XNOR2X1 U134 ( .A(n137), .B(n3), .Y(SUM[11]) );
  AO21XL U135 ( .A0(n55), .A1(n35), .B0(n36), .Y(n137) );
  AO21XL U136 ( .A0(n55), .A1(n131), .B0(n52), .Y(n138) );
  XNOR2XL U137 ( .A(n55), .B(n6), .Y(SUM[8]) );
  NAND2XL U138 ( .A(n131), .B(n54), .Y(n6) );
  NOR2BXL U139 ( .AN(n42), .B(n37), .Y(n35) );
  NAND2XL U140 ( .A(n132), .B(n63), .Y(n8) );
  XOR2XL U141 ( .A(n9), .B(n69), .Y(SUM[5]) );
  INVXL U142 ( .A(n66), .Y(n77) );
  XNOR2X1 U143 ( .A(n139), .B(A[14]), .Y(SUM[14]) );
  AOI21X1 U144 ( .A0(n1), .A1(n20), .B0(n21), .Y(n139) );
  NOR2X1 U145 ( .A(A[7]), .B(B[7]), .Y(n59) );
  NOR2X1 U146 ( .A(A[6]), .B(B[6]), .Y(n62) );
  NAND2BXL U147 ( .AN(n68), .B(n69), .Y(n10) );
  NOR2XL U148 ( .A(A[4]), .B(B[4]), .Y(n68) );
  NAND2X1 U149 ( .A(n42), .B(n30), .Y(n28) );
  NOR2X1 U150 ( .A(n62), .B(n59), .Y(n57) );
  XOR2X1 U151 ( .A(n23), .B(n22), .Y(SUM[13]) );
  AOI21X1 U152 ( .A0(n1), .A1(n70), .B0(n25), .Y(n23) );
  NAND2X1 U153 ( .A(n73), .B(n49), .Y(n5) );
  NAND2X1 U154 ( .A(n135), .B(n40), .Y(n4) );
  NAND2X1 U155 ( .A(n134), .B(n33), .Y(n3) );
  XNOR2X1 U156 ( .A(n1), .B(n2), .Y(SUM[12]) );
  NOR2X1 U157 ( .A(n26), .B(n22), .Y(n20) );
  NOR2X1 U158 ( .A(n27), .B(n22), .Y(n21) );
  NAND2X1 U159 ( .A(n133), .B(n60), .Y(n7) );
  CLKINVX1 U160 ( .A(n26), .Y(n70) );
  NAND2X1 U161 ( .A(n77), .B(n67), .Y(n9) );
  AOI21X1 U162 ( .A0(n1), .A1(n140), .B0(n130), .Y(n12) );
  NAND2X1 U163 ( .A(A[8]), .B(B[8]), .Y(n54) );
  NAND2X1 U164 ( .A(A[6]), .B(B[6]), .Y(n63) );
  NOR2X1 U165 ( .A(A[12]), .B(B[12]), .Y(n26) );
  AND2X2 U166 ( .A(n20), .B(A[14]), .Y(n140) );
  NAND2X1 U167 ( .A(A[12]), .B(B[12]), .Y(n27) );
  CLKINVX1 U168 ( .A(A[13]), .Y(n22) );
  CLKINVX1 U169 ( .A(n10), .Y(SUM[4]) );
  CLKBUFX3 U170 ( .A(B[3]), .Y(SUM[3]) );
  CLKBUFX3 U171 ( .A(B[2]), .Y(SUM[2]) );
  CLKBUFX3 U172 ( .A(B[1]), .Y(SUM[1]) );
  CLKBUFX3 U173 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_12_DW01_add_15 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [7:0] A;
  wire   [8:1] B;
  wire   [8:3] carry;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;

  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[8]), .B(carry[8]), .Y(SUM[9]) );
  CLKAND2X8 U2 ( .A(B[1]), .B(A[1]), .Y(n1) );
  NAND3X4 U3 ( .A(n6), .B(n7), .C(n5), .Y(carry[3]) );
  INVXL U4 ( .A(A[2]), .Y(n2) );
  CLKINVX1 U5 ( .A(n2), .Y(n3) );
  XOR2X4 U6 ( .A(B[8]), .B(carry[8]), .Y(SUM[8]) );
  NAND2X2 U7 ( .A(A[2]), .B(B[2]), .Y(n7) );
  XOR2XL U8 ( .A(B[2]), .B(n3), .Y(n4) );
  XOR2XL U9 ( .A(n1), .B(n4), .Y(SUM[2]) );
  NAND2X2 U10 ( .A(B[2]), .B(n1), .Y(n5) );
  NAND2X2 U11 ( .A(A[2]), .B(n1), .Y(n6) );
  XOR2XL U12 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U13 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_11_DW01_add_14 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n3;
  wire   [7:0] A;
  wire   [8:1] B;
  wire   [8:2] carry;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;

  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_2 ( .A(A[2]), .B(carry[2]), .CI(B[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[8]), .B(carry[8]), .Y(SUM[9]) );
  NAND2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n3) );
  XOR2X4 U3 ( .A(B[8]), .B(carry[8]), .Y(SUM[8]) );
  INVX3 U4 ( .A(n3), .Y(carry[2]) );
  XOR2XL U5 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U6 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_10_DW01_add_13 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [7:0] A;
  wire   [8:1] B;
  wire   [7:2] carry;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;

  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR2X4 U1 ( .A(A[1]), .B(B[1]), .Y(SUM[1]) );
  NAND2X4 U2 ( .A(A[1]), .B(B[1]), .Y(n1) );
  CLKINVX6 U3 ( .A(n1), .Y(carry[2]) );
  NAND2X6 U4 ( .A(B[6]), .B(carry[6]), .Y(n7) );
  NAND2X1 U5 ( .A(A[6]), .B(B[6]), .Y(n9) );
  NAND2X4 U6 ( .A(A[6]), .B(n2), .Y(n8) );
  XOR2X1 U7 ( .A(n11), .B(n12), .Y(SUM[3]) );
  AND2X8 U8 ( .A(n17), .B(n18), .Y(n4) );
  NAND2X6 U9 ( .A(carry[3]), .B(A[3]), .Y(n14) );
  AND2X4 U10 ( .A(n3), .B(B[8]), .Y(SUM[9]) );
  ADDFHX4 U11 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(n2) );
  XOR2XL U12 ( .A(carry[6]), .B(n6), .Y(SUM[6]) );
  XOR2X4 U13 ( .A(n3), .B(B[8]), .Y(SUM[8]) );
  NAND2X6 U14 ( .A(carry[7]), .B(A[7]), .Y(n17) );
  NAND2X6 U15 ( .A(carry[3]), .B(B[3]), .Y(n13) );
  XOR2X1 U16 ( .A(n16), .B(carry[7]), .Y(SUM[7]) );
  NAND3X8 U17 ( .A(n13), .B(n14), .C(n15), .Y(carry[4]) );
  NAND2X8 U18 ( .A(n4), .B(n5), .Y(n3) );
  NAND2X2 U19 ( .A(carry[7]), .B(B[7]), .Y(n5) );
  XOR2X1 U20 ( .A(B[6]), .B(A[6]), .Y(n6) );
  NAND3X8 U21 ( .A(n7), .B(n8), .C(n9), .Y(carry[7]) );
  NAND2X1 U22 ( .A(A[3]), .B(B[3]), .Y(n15) );
  INVXL U23 ( .A(carry[3]), .Y(n10) );
  CLKINVX1 U24 ( .A(n10), .Y(n11) );
  XOR2XL U25 ( .A(B[3]), .B(A[3]), .Y(n12) );
  NAND2XL U26 ( .A(A[7]), .B(B[7]), .Y(n18) );
  XOR2XL U27 ( .A(B[7]), .B(A[7]), .Y(n16) );
  CLKBUFX3 U28 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_9_DW01_add_12 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n1;
  wire   [7:0] A;
  wire   [8:1] B;
  wire   [8:2] carry;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[8] = \B[8] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;

  ADDFHX4 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR2X4 U1 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  NAND2X4 U2 ( .A(B[1]), .B(A[1]), .Y(n1) );
  CLKINVX6 U3 ( .A(n1), .Y(carry[2]) );
  AND2X2 U4 ( .A(B[8]), .B(carry[8]), .Y(SUM[9]) );
  XOR2X4 U5 ( .A(B[8]), .B(carry[8]), .Y(SUM[8]) );
  CLKBUFX3 U6 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module median_filter_submodule ( p1, p2, p3, p4, p5, p6, p7, p8, p9, clk, rst, 
        median );
  input [7:0] p1;
  input [7:0] p2;
  input [7:0] p3;
  input [7:0] p4;
  input [7:0] p5;
  input [7:0] p6;
  input [7:0] p7;
  input [7:0] p8;
  input [7:0] p9;
  output [7:0] median;
  input clk, rst;
  wire   a14_w, a17_w, a47_w, a25_w, a28_w, a58_w, a36_w, a39_w, a69_w, a14_r,
         a17_r, a47_r, a25_r, a28_r, a58_r, a36_r, a39_r, a69_r, net24812,
         net24814, net24816, net24818, net24820, net24822, net24823, net24824,
         net24825, net24827, net24828, net24829, net24830, net24831, net24832,
         net24834, net37008, net41651, net41652, net41656, net41657, net41662,
         net41735, net41743, net41748, net41772, net41775, net41781, net41783,
         net41788, net54705, net54867, net54998, net55746, net55745, net55762,
         net55809, net56897, net57317, net57316, net57334, net59648, net68085,
         net68697, net55000, net54999, net54997, net52192, net44040, net44039,
         net41801, net41800, net41797, net41794, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844;
  wire   [7:0] a1;
  wire   [7:0] a4;
  wire   [7:0] a7;
  wire   [7:0] a2;
  wire   [7:0] a5;
  wire   [7:0] a8;
  wire   [7:0] a3;
  wire   [7:0] a6;
  wire   [7:0] a9;
  wire   [6:1] a4_r;
  wire   [7:1] a5_r;
  wire   [6:0] a6_r;
  wire   [7:0] b1_r;
  wire   [6:0] b5_r;
  wire   [6:2] b9_r;

  DFFRX1 a1_r_reg_0_ ( .D(a1[0]), .CK(clk), .RN(n335), .QN(n710) );
  DFFRX1 a7_r_reg_0_ ( .D(a7[0]), .CK(clk), .RN(n331), .QN(n731) );
  DFFRX1 p1_r_reg_7_ ( .D(p1[7]), .CK(clk), .RN(n343), .QN(n828) );
  DFFRX1 p1_r_reg_6_ ( .D(p1[6]), .CK(clk), .RN(n343), .QN(n827) );
  DFFRX1 p1_r_reg_4_ ( .D(p1[4]), .CK(clk), .RN(n343), .QN(n825) );
  DFFRX1 p1_r_reg_2_ ( .D(p1[2]), .CK(clk), .RN(n342), .QN(n823) );
  DFFRX1 p1_r_reg_1_ ( .D(p1[1]), .CK(clk), .RN(n342), .QN(n822) );
  DFFRX1 p1_r_reg_0_ ( .D(p1[0]), .CK(clk), .RN(n342), .QN(n821) );
  DFFRX1 p2_r_reg_6_ ( .D(p2[6]), .CK(clk), .RN(n342), .QN(n819) );
  DFFRX1 p2_r_reg_3_ ( .D(p2[3]), .CK(clk), .RN(n342), .QN(n816) );
  DFFRX1 p2_r_reg_2_ ( .D(p2[2]), .CK(clk), .RN(n342), .QN(n815) );
  DFFRX1 p2_r_reg_0_ ( .D(p2[0]), .CK(clk), .RN(n342), .QN(n813) );
  DFFRX1 p3_r_reg_7_ ( .D(p3[7]), .CK(clk), .RN(n341), .QN(n812) );
  DFFRX1 p3_r_reg_6_ ( .D(p3[6]), .CK(clk), .RN(n341), .QN(n811) );
  DFFRX1 p3_r_reg_5_ ( .D(p3[5]), .CK(clk), .RN(n341), .QN(n810) );
  DFFRX1 p3_r_reg_3_ ( .D(p3[3]), .CK(clk), .RN(n341), .QN(n808) );
  DFFRX1 p3_r_reg_2_ ( .D(p3[2]), .CK(clk), .RN(n341), .QN(n807) );
  DFFRX1 p3_r_reg_1_ ( .D(p3[1]), .CK(clk), .RN(n341), .QN(n806) );
  DFFRX1 p3_r_reg_0_ ( .D(p3[0]), .CK(clk), .RN(n341), .QN(n805) );
  DFFRX1 p4_r_reg_7_ ( .D(p4[7]), .CK(clk), .RN(n341), .QN(n804) );
  DFFRX1 p4_r_reg_5_ ( .D(p4[5]), .CK(clk), .RN(n341), .QN(n802) );
  DFFRX1 p4_r_reg_4_ ( .D(p4[4]), .CK(clk), .RN(n341), .QN(n801) );
  DFFRX1 p4_r_reg_2_ ( .D(p4[2]), .CK(clk), .RN(n340), .QN(n799) );
  DFFRX1 p5_r_reg_2_ ( .D(p5[2]), .CK(clk), .RN(n340), .QN(n791) );
  DFFRX1 p5_r_reg_1_ ( .D(n126), .CK(clk), .RN(n340), .QN(n790) );
  DFFRX1 p5_r_reg_0_ ( .D(n49), .CK(clk), .RN(n340), .QN(n789) );
  DFFRX1 p6_r_reg_3_ ( .D(p6[3]), .CK(clk), .RN(n339), .QN(n784) );
  DFFRX1 p7_r_reg_6_ ( .D(p7[6]), .CK(clk), .RN(n339), .QN(n779) );
  DFFRX1 p7_r_reg_3_ ( .D(n314), .CK(clk), .RN(n338), .QN(n776) );
  DFFRX1 p7_r_reg_0_ ( .D(p7[0]), .CK(clk), .RN(n338), .QN(n773) );
  DFFRX1 p8_r_reg_5_ ( .D(p8[5]), .CK(clk), .RN(n338), .QN(n770) );
  DFFRX1 p8_r_reg_4_ ( .D(p8[4]), .CK(clk), .RN(n338), .QN(n769) );
  DFFRX1 p9_r_reg_6_ ( .D(p9[6]), .CK(clk), .RN(n337), .QN(n763) );
  DFFRX1 p9_r_reg_4_ ( .D(p9[4]), .CK(clk), .RN(n337), .QN(n761) );
  DFFRX1 p9_r_reg_3_ ( .D(n323), .CK(clk), .RN(n337), .QN(n760) );
  DFFRX1 p2_r_reg_1_ ( .D(p2[1]), .CK(clk), .RN(n342), .QN(n814) );
  DFFRX1 p1_r_reg_3_ ( .D(p1[3]), .CK(clk), .RN(n342), .QN(n824) );
  DFFRX1 p4_r_reg_6_ ( .D(p4[6]), .CK(clk), .RN(n341), .QN(n803) );
  DFFRX1 p6_r_reg_0_ ( .D(p6[0]), .CK(clk), .RN(n339), .QN(n781) );
  DFFRX1 p5_r_reg_3_ ( .D(p5[3]), .CK(clk), .RN(n340), .QN(n792) );
  DFFRX1 p6_r_reg_6_ ( .D(p6[6]), .CK(clk), .RN(n339), .QN(n787) );
  DFFRX1 p6_r_reg_7_ ( .D(p6[7]), .CK(clk), .RN(n339), .QN(n788) );
  DFFRX1 p5_r_reg_5_ ( .D(n317), .CK(clk), .RN(n340), .QN(n794) );
  DFFRX1 p6_r_reg_4_ ( .D(p6[4]), .CK(clk), .RN(n339), .QN(n785) );
  DFFRX1 p9_r_reg_2_ ( .D(n311), .CK(clk), .RN(n337), .QN(n759) );
  DFFRX1 p9_r_reg_0_ ( .D(p9[0]), .CK(clk), .RN(n337), .QN(n757) );
  DFFRX1 p7_r_reg_1_ ( .D(p7[1]), .CK(clk), .RN(n338), .QN(n774) );
  DFFRX1 p7_r_reg_2_ ( .D(p7[2]), .CK(clk), .RN(n338), .QN(n775) );
  DFFRX1 p8_r_reg_7_ ( .D(p8[7]), .CK(clk), .RN(n338), .QN(n772) );
  DFFRX1 p7_r_reg_7_ ( .D(n63), .CK(clk), .RN(n339), .QN(n780) );
  DFFRX1 a7_r_reg_7_ ( .D(a7[7]), .CK(clk), .RN(n331), .QN(n730) );
  DFFRX1 a1_r_reg_7_ ( .D(a1[7]), .CK(clk), .RN(n335), .Q(n32), .QN(n709) );
  DFFRX2 a3_r_reg_3_ ( .D(a3[3]), .CK(clk), .RN(n334), .Q(n133), .QN(n717) );
  DFFRX2 a8_r_reg_1_ ( .D(a8[1]), .CK(clk), .RN(n330), .Q(n227), .QN(n735) );
  DFFRX2 a2_r_reg_0_ ( .D(a2[0]), .CK(clk), .RN(n334), .Q(n75), .QN(n721) );
  DFFRX2 a2_r_reg_7_ ( .D(a2[7]), .CK(clk), .RN(n335), .Q(n85), .QN(n719) );
  DFFRX2 a58_r_reg ( .D(a58_w), .CK(clk), .RN(n336), .Q(a58_r), .QN(n28) );
  DFFRX2 a2_r_reg_1_ ( .D(a2[1]), .CK(clk), .RN(n334), .Q(n92), .QN(n722) );
  DFFRX2 a3_r_reg_7_ ( .D(a3[7]), .CK(clk), .RN(n334), .QN(n715) );
  DFFRX2 a8_r_reg_5_ ( .D(a8[5]), .CK(clk), .RN(n331), .Q(n134), .QN(n736) );
  DFFRX1 p2_r_reg_5_ ( .D(p2[5]), .CK(clk), .RN(n342), .QN(n818) );
  DFFRX1 p6_r_reg_1_ ( .D(n307), .CK(clk), .RN(n339), .QN(n782) );
  DFFRX2 a17_r_reg ( .D(a17_w), .CK(clk), .RN(n337), .Q(a17_r) );
  DFFRX1 p9_r_reg_1_ ( .D(p9[1]), .CK(clk), .RN(n337), .QN(n758) );
  DFFRX2 a7_r_reg_1_ ( .D(a7[1]), .CK(clk), .RN(n331), .Q(n84), .QN(n732) );
  DFFRX4 b1_r_reg_5_ ( .D(n842), .CK(clk), .RN(n329), .Q(b1_r[5]), .QN(n742)
         );
  DFFRX4 a6_r_reg_5_ ( .D(a6[5]), .CK(clk), .RN(n332), .Q(a6_r[5]), .QN(
        net24824) );
  DFFRX2 a36_r_reg ( .D(a36_w), .CK(clk), .RN(n336), .Q(a36_r), .QN(n29) );
  DFFRX4 b9_r_reg_5_ ( .D(n834), .CK(clk), .RN(n330), .Q(b9_r[5]), .QN(n745)
         );
  DFFRX2 a4_r_reg_3_ ( .D(a4[3]), .CK(clk), .RN(n333), .Q(a4_r[3]), .QN(
        net24830) );
  DFFRX2 a6_r_reg_3_ ( .D(a6[3]), .CK(clk), .RN(n332), .Q(a6_r[3]), .QN(
        net24823) );
  DFFRX2 a5_r_reg_4_ ( .D(a5[4]), .CK(clk), .RN(n333), .Q(a5_r[4]), .QN(n729)
         );
  DFFRX2 a4_r_reg_2_ ( .D(a4[2]), .CK(clk), .RN(n333), .Q(a4_r[2]), .QN(
        net24829) );
  DFFRX2 a5_r_reg_7_ ( .D(a5[7]), .CK(clk), .RN(n333), .Q(a5_r[7]), .QN(n727)
         );
  DFFRX2 b1_r_reg_2_ ( .D(n839), .CK(clk), .RN(n329), .Q(b1_r[2]), .QN(n741)
         );
  DFFRX2 a3_r_reg_2_ ( .D(a3[2]), .CK(clk), .RN(n334), .QN(n724) );
  DFFRX4 b5_r_reg_1_ ( .D(net37008), .CK(clk), .RN(n328), .Q(b5_r[1]), .QN(
        n749) );
  DFFRX2 b9_r_reg_6_ ( .D(n835), .CK(clk), .RN(n330), .Q(b9_r[6]), .QN(n753)
         );
  DFFRHQX1 a7_r_reg_6_ ( .D(a7[6]), .CK(clk), .RN(n331), .Q(n173) );
  DFFRX2 b1_r_reg_6_ ( .D(n843), .CK(clk), .RN(n329), .Q(b1_r[6]), .QN(n737)
         );
  DFFRX2 a3_r_reg_1_ ( .D(a3[1]), .CK(clk), .RN(n334), .Q(n259), .QN(n718) );
  DFFRHQX1 a9_r_reg_2_ ( .D(a9[2]), .CK(clk), .RN(n336), .Q(n166) );
  DFFRHQX1 a8_r_reg_7_ ( .D(a8[7]), .CK(clk), .RN(n331), .Q(n164) );
  DFFRHQX1 a1_r_reg_2_ ( .D(a1[2]), .CK(clk), .RN(n335), .Q(n162) );
  DFFRX2 a9_r_reg_7_ ( .D(a9[7]), .CK(clk), .RN(n336), .Q(n161), .QN(n734) );
  DFFRHQX1 a8_r_reg_3_ ( .D(a8[3]), .CK(clk), .RN(n330), .Q(n159) );
  DFFRHQX1 a8_r_reg_4_ ( .D(a8[4]), .CK(clk), .RN(n331), .Q(n157) );
  DFFRX2 a3_r_reg_5_ ( .D(a3[5]), .CK(clk), .RN(n334), .Q(n589), .QN(n716) );
  DFFRHQX1 a1_r_reg_6_ ( .D(a1[6]), .CK(clk), .RN(n335), .Q(n148) );
  DFFRX2 a1_r_reg_5_ ( .D(a1[5]), .CK(clk), .RN(n335), .Q(n146), .QN(n712) );
  DFFRHQX1 a3_r_reg_4_ ( .D(a3[4]), .CK(clk), .RN(n334), .Q(n142) );
  DFFRX2 b9_r_reg_0_ ( .D(n829), .CK(clk), .RN(n330), .QN(n747) );
  DFFRHQX1 a7_r_reg_4_ ( .D(a7[4]), .CK(clk), .RN(n331), .Q(n139) );
  DFFRX2 b9_r_reg_4_ ( .D(n833), .CK(clk), .RN(n330), .Q(b9_r[4]), .QN(n755)
         );
  DFFRHQX1 a4_r_reg_7_ ( .D(a4[7]), .CK(clk), .RN(n333), .Q(net55745) );
  DFFRX2 a5_r_reg_6_ ( .D(a5[6]), .CK(clk), .RN(n333), .Q(a5_r[6]), .QN(n726)
         );
  DFFRX2 a39_r_reg ( .D(a39_w), .CK(clk), .RN(n336), .Q(a39_r), .QN(n59) );
  DFFRX2 b1_r_reg_7_ ( .D(n844), .CK(clk), .RN(n329), .Q(b1_r[7]), .QN(n738)
         );
  DFFRX2 a28_r_reg ( .D(a28_w), .CK(clk), .RN(n336), .Q(a28_r) );
  DFFRX2 p2_r_reg_7_ ( .D(p2[7]), .CK(clk), .RN(n342), .QN(n820) );
  DFFRX2 p1_r_reg_5_ ( .D(p1[5]), .CK(clk), .RN(n343), .QN(n826) );
  DFFRX2 c2_r_reg_1_ ( .D(n695), .CK(clk), .RN(n328), .Q(median[1]) );
  DFFRX2 p2_r_reg_4_ ( .D(p2[4]), .CK(clk), .RN(n342), .QN(n817) );
  DFFRX2 p5_r_reg_4_ ( .D(n321), .CK(clk), .RN(n340), .QN(n793) );
  DFFRX2 b5_r_reg_2_ ( .D(n703), .CK(clk), .RN(n328), .Q(b5_r[2]), .QN(n752)
         );
  DFFRX2 a4_r_reg_0_ ( .D(a4[0]), .CK(clk), .RN(n333), .QN(net24832) );
  DFFRX2 a6_r_reg_7_ ( .D(a6[7]), .CK(clk), .RN(n332), .Q(net68085), .QN(
        net24825) );
  DFFRX2 b5_r_reg_0_ ( .D(n702), .CK(clk), .RN(n328), .Q(b5_r[0]), .QN(n748)
         );
  DFFRX2 p5_r_reg_6_ ( .D(p5[6]), .CK(clk), .RN(n340), .QN(n795) );
  DFFRX2 p8_r_reg_3_ ( .D(n320), .CK(clk), .RN(n338), .QN(n768) );
  DFFRX2 b1_r_reg_4_ ( .D(n841), .CK(clk), .RN(n329), .Q(b1_r[4]), .QN(n743)
         );
  DFFRX2 a1_r_reg_4_ ( .D(a1[4]), .CK(clk), .RN(n335), .QN(n713) );
  DFFRX2 a7_r_reg_5_ ( .D(a7[5]), .CK(clk), .RN(n331), .Q(n31), .QN(n733) );
  DFFRHQX1 a2_r_reg_2_ ( .D(a2[2]), .CK(clk), .RN(n334), .Q(n130) );
  DFFRX2 a2_r_reg_6_ ( .D(a2[6]), .CK(clk), .RN(n335), .Q(n203), .QN(n714) );
  DFFRX2 p6_r_reg_2_ ( .D(p6[2]), .CK(clk), .RN(n339), .QN(n783) );
  DFFRHQX1 a9_r_reg_3_ ( .D(a9[3]), .CK(clk), .RN(n336), .Q(n123) );
  DFFRHQX1 a9_r_reg_0_ ( .D(a9[0]), .CK(clk), .RN(n336), .Q(n117) );
  DFFRX2 p7_r_reg_4_ ( .D(n57), .CK(clk), .RN(n339), .QN(n777) );
  DFFRX4 b5_r_reg_5_ ( .D(n706), .CK(clk), .RN(n329), .Q(b5_r[5]), .QN(n754)
         );
  DFFRX4 a25_r_reg ( .D(a25_w), .CK(clk), .RN(n337), .Q(a25_r), .QN(n285) );
  DFFRX4 a6_r_reg_1_ ( .D(a6[1]), .CK(clk), .RN(n332), .Q(a6_r[1]), .QN(
        net24822) );
  DFFRX4 a4_r_reg_1_ ( .D(a4[1]), .CK(clk), .RN(n333), .Q(a4_r[1]), .QN(
        net24831) );
  DFFRX2 a7_r_reg_3_ ( .D(a7[3]), .CK(clk), .RN(n331), .Q(n144), .QN(n145) );
  DFFRX2 a9_r_reg_6_ ( .D(a9[6]), .CK(clk), .RN(n336), .Q(n169), .QN(n170) );
  DFFRXL p8_r_reg_0_ ( .D(p8[0]), .CK(clk), .RN(n338), .QN(n765) );
  DFFRHQX1 a1_r_reg_3_ ( .D(a1[3]), .CK(clk), .RN(n335), .Q(n112) );
  DFFRX2 p9_r_reg_5_ ( .D(p9[5]), .CK(clk), .RN(n337), .QN(n762) );
  DFFRHQX1 a8_r_reg_2_ ( .D(a8[2]), .CK(clk), .RN(n330), .Q(n110) );
  DFFRX2 a6_r_reg_0_ ( .D(a6[0]), .CK(clk), .RN(n332), .Q(a6_r[0]), .QN(
        net24820) );
  DFFRX2 a5_r_reg_5_ ( .D(a5[5]), .CK(clk), .RN(n333), .Q(a5_r[5]), .QN(n728)
         );
  DFFRHQX1 a7_r_reg_2_ ( .D(a7[2]), .CK(clk), .RN(n331), .Q(n101) );
  DFFRHQX1 a9_r_reg_4_ ( .D(a9[4]), .CK(clk), .RN(n336), .Q(n99) );
  DFFRHQX1 b9_r_reg_3_ ( .D(n832), .CK(clk), .RN(n330), .Q(n96) );
  DFFRHQX1 a8_r_reg_6_ ( .D(a8[6]), .CK(clk), .RN(n331), .Q(n94) );
  DFFRX2 p4_r_reg_3_ ( .D(n73), .CK(clk), .RN(n340), .QN(n800) );
  DFFRX2 a4_r_reg_5_ ( .D(a4[5]), .CK(clk), .RN(n333), .Q(a4_r[5]), .QN(
        net24828) );
  DFFRHQX1 a3_r_reg_6_ ( .D(a3[6]), .CK(clk), .RN(n334), .Q(n88) );
  DFFRHQX1 a2_r_reg_4_ ( .D(a2[4]), .CK(clk), .RN(n335), .Q(n86) );
  DFFRX2 a5_r_reg_1_ ( .D(a5[1]), .CK(clk), .RN(n332), .Q(a5_r[1]), .QN(
        net24818) );
  DFFRHQX1 a5_r_reg_0_ ( .D(a5[0]), .CK(clk), .RN(n332), .Q(n82) );
  DFFRX2 p6_r_reg_5_ ( .D(p6[5]), .CK(clk), .RN(n339), .QN(n786) );
  DFFRX2 p5_r_reg_7_ ( .D(n318), .CK(clk), .RN(n340), .QN(n796) );
  DFFRX2 a6_r_reg_4_ ( .D(a6[4]), .CK(clk), .RN(n332), .Q(a6_r[4]), .QN(
        net24812) );
  DFFRHQX4 b1_r_reg_1_ ( .D(n838), .CK(clk), .RN(n329), .Q(b1_r[1]) );
  DFFRHQX4 b1_r_reg_0_ ( .D(n837), .CK(clk), .RN(n329), .Q(b1_r[0]) );
  DFFRX4 c2_r_reg_6_ ( .D(n700), .CK(clk), .RN(n328), .Q(median[6]) );
  DFFRX4 c2_r_reg_4_ ( .D(n698), .CK(clk), .RN(n328), .Q(median[4]) );
  DFFRX4 c2_r_reg_5_ ( .D(n699), .CK(clk), .RN(n328), .Q(median[5]) );
  DFFRHQX2 b9_r_reg_2_ ( .D(n831), .CK(clk), .RN(n330), .Q(b9_r[2]) );
  DFFRX2 b5_r_reg_7_ ( .D(n708), .CK(clk), .RN(n329), .Q(n175), .QN(n176) );
  DFFRX2 a5_r_reg_2_ ( .D(a5[2]), .CK(clk), .RN(n332), .Q(n171), .QN(n172) );
  DFFRX2 c2_r_reg_3_ ( .D(n697), .CK(clk), .RN(n328), .Q(median[3]) );
  DFFRX2 p9_r_reg_7_ ( .D(n322), .CK(clk), .RN(n337), .QN(n764) );
  DFFRHQX2 a2_r_reg_3_ ( .D(a2[3]), .CK(clk), .RN(n334), .Q(n229) );
  DFFRX4 a69_r_reg ( .D(a69_w), .CK(clk), .RN(n343), .Q(a69_r), .QN(n273) );
  DFFRHQX2 b9_r_reg_1_ ( .D(n830), .CK(clk), .RN(n330), .Q(n141) );
  DFFRX4 a47_r_reg ( .D(a47_w), .CK(clk), .RN(n337), .Q(a47_r), .QN(n297) );
  DFFRXL p7_r_reg_5_ ( .D(n306), .CK(clk), .RN(n339), .QN(n778) );
  DFFRHQX1 a8_r_reg_0_ ( .D(a8[0]), .CK(clk), .RN(n330), .Q(n60) );
  DFFRX2 p8_r_reg_1_ ( .D(n51), .CK(clk), .RN(n338), .QN(n766) );
  DFFRX2 b9_r_reg_7_ ( .D(n836), .CK(clk), .RN(rst), .Q(n676), .QN(n744) );
  DFFRHQX2 a5_r_reg_3_ ( .D(a5[3]), .CK(clk), .RN(rst), .Q(n79) );
  DFFRHQX2 a2_r_reg_5_ ( .D(a2[5]), .CK(clk), .RN(rst), .Q(n152) );
  DFFRHQX1 a9_r_reg_1_ ( .D(a9[1]), .CK(clk), .RN(n336), .Q(n44) );
  DFFRX2 p8_r_reg_2_ ( .D(p8[2]), .CK(clk), .RN(n338), .QN(n767) );
  DFFRX2 a6_r_reg_6_ ( .D(a6[6]), .CK(clk), .RN(n332), .Q(a6_r[6]), .QN(
        net24814) );
  DFFRX2 p8_r_reg_6_ ( .D(p8[6]), .CK(clk), .RN(n338), .QN(n771) );
  DFFRX2 p4_r_reg_1_ ( .D(n315), .CK(clk), .RN(n340), .QN(n798) );
  DFFRX2 a4_r_reg_4_ ( .D(a4[4]), .CK(clk), .RN(n333), .Q(a4_r[4]), .QN(
        net24827) );
  DFFRHQX2 b1_r_reg_3_ ( .D(n840), .CK(clk), .RN(n329), .Q(b1_r[3]) );
  DFFRX2 a14_r_reg ( .D(a14_w), .CK(clk), .RN(n337), .Q(a14_r), .QN(n30) );
  DFFRHQX2 a9_r_reg_5_ ( .D(a9[5]), .CK(clk), .RN(rst), .Q(n150) );
  DFFRX2 b5_r_reg_3_ ( .D(n704), .CK(clk), .RN(n328), .Q(b5_r[3]), .QN(n750)
         );
  DFFRX2 b5_r_reg_6_ ( .D(n707), .CK(clk), .RN(n329), .Q(b5_r[6]), .QN(n746)
         );
  DFFRX2 b5_r_reg_4_ ( .D(n705), .CK(clk), .RN(n329), .Q(b5_r[4]), .QN(n756)
         );
  DFFRX2 c2_r_reg_7_ ( .D(n701), .CK(clk), .RN(n328), .Q(median[7]) );
  DFFRX2 c2_r_reg_0_ ( .D(n694), .CK(clk), .RN(n328), .Q(median[0]) );
  DFFRX2 c2_r_reg_2_ ( .D(n696), .CK(clk), .RN(n328), .Q(median[2]) );
  DFFRX2 a1_r_reg_1_ ( .D(a1[1]), .CK(clk), .RN(n335), .Q(n260), .QN(n711) );
  DFFRX2 a4_r_reg_6_ ( .D(a4[6]), .CK(clk), .RN(n333), .Q(a4_r[6]), .QN(
        net24834) );
  DFFRX4 a6_r_reg_2_ ( .D(a6[2]), .CK(clk), .RN(rst), .Q(a6_r[2]), .QN(
        net24816) );
  DFFRX2 p3_r_reg_4_ ( .D(p3[4]), .CK(clk), .RN(n341), .QN(n809) );
  DFFRX2 a3_r_reg_0_ ( .D(a3[0]), .CK(clk), .RN(n334), .QN(n720) );
  DFFRX2 p4_r_reg_0_ ( .D(p4[0]), .CK(clk), .RN(n340), .QN(n797) );
  CLKAND2X3 U3 ( .A(n315), .B(n477), .Y(n488) );
  NAND2X2 U4 ( .A(n1), .B(n2), .Y(n211) );
  OA22X4 U5 ( .A0(p7[6]), .A1(n232), .B0(n232), .B1(n483), .Y(n1) );
  CLKAND2X8 U6 ( .A(n458), .B(n457), .Y(n2) );
  AND2X8 U7 ( .A(n444), .B(n245), .Y(n436) );
  NAND2X4 U8 ( .A(n189), .B(n242), .Y(n425) );
  NAND3X6 U9 ( .A(n184), .B(n185), .C(n523), .Y(n636) );
  INVX4 U10 ( .A(n745), .Y(n674) );
  INVX20 U11 ( .A(n691), .Y(n692) );
  INVX6 U12 ( .A(p1[4]), .Y(n494) );
  NAND2X6 U13 ( .A(n54), .B(n55), .Y(n214) );
  INVX3 U14 ( .A(n538), .Y(n523) );
  NAND2X8 U15 ( .A(n212), .B(n213), .Y(n450) );
  NOR3X8 U16 ( .A(n71), .B(n72), .C(n309), .Y(n463) );
  INVX3 U17 ( .A(n164), .Y(n165) );
  INVX8 U18 ( .A(p5[4]), .Y(n432) );
  AND2X8 U19 ( .A(n455), .B(n456), .Y(n71) );
  OR2X2 U20 ( .A(net24829), .B(n171), .Y(n37) );
  INVX4 U21 ( .A(p1[5]), .Y(n495) );
  NAND3X4 U22 ( .A(n192), .B(n193), .C(n475), .Y(a17_w) );
  NAND3X4 U23 ( .A(n23), .B(n24), .C(n233), .Y(n475) );
  OR2X4 U24 ( .A(n628), .B(n715), .Y(n155) );
  CLKINVX4 U25 ( .A(n123), .Y(n124) );
  CLKAND2X3 U26 ( .A(n100), .B(n139), .Y(n535) );
  AOI21X4 U27 ( .A0(a6_r[1]), .A1(net24831), .B0(n5), .Y(n3) );
  NAND2BX4 U28 ( .AN(n3), .B(n7), .Y(n6) );
  AOI211X2 U29 ( .A0(net24822), .A1(a4_r[1]), .B0(net41783), .C0(net24820), 
        .Y(n5) );
  INVX4 U30 ( .A(net24832), .Y(net41783) );
  NOR2X4 U31 ( .A(n8), .B(n4), .Y(n7) );
  NOR2X4 U32 ( .A(a6_r[2]), .B(net24829), .Y(n8) );
  INVX3 U33 ( .A(net41801), .Y(n4) );
  NAND2X4 U34 ( .A(net68697), .B(net41781), .Y(net41801) );
  NAND3X6 U35 ( .A(n6), .B(net44040), .C(net41800), .Y(net41797) );
  CLKAND2X12 U36 ( .A(net44039), .B(net41794), .Y(n15) );
  OR3X2 U37 ( .A(n9), .B(n10), .C(n11), .Y(net44039) );
  AOI2BB1X2 U38 ( .A0N(n14), .A1N(n16), .B0(net54867), .Y(n9) );
  CLKAND2X4 U39 ( .A(net24824), .B(net41788), .Y(n14) );
  AOI22X2 U40 ( .A0(net54705), .A1(a6_r[5]), .B0(net24827), .B1(net41748), .Y(
        n16) );
  CLKBUFX6 U41 ( .A(net24834), .Y(net54867) );
  AOI2BB1X4 U42 ( .A0N(n14), .A1N(n16), .B0(net41743), .Y(n10) );
  INVX1 U43 ( .A(net24814), .Y(net41743) );
  OAI2BB2X2 U44 ( .B0(a6_r[6]), .B1(net54867), .A0N(net24825), .A1N(net41775), 
        .Y(n11) );
  AOI32X2 U45 ( .A0(net41797), .A1(n12), .A2(n13), .B0(net55746), .B1(net68085), .Y(net41794) );
  OR2X1 U46 ( .A(net68697), .B(net41781), .Y(net44040) );
  BUFX8 U47 ( .A(net24823), .Y(net68697) );
  INVX6 U48 ( .A(net24830), .Y(net41781) );
  NAND3BX2 U49 ( .AN(net24816), .B(net24829), .C(net41801), .Y(net41800) );
  INVX3 U50 ( .A(n11), .Y(n12) );
  AOI2BB1X2 U51 ( .A0N(net24827), .A1N(net41748), .B0(n14), .Y(n13) );
  INVX3 U52 ( .A(net24812), .Y(net41748) );
  INVX4 U53 ( .A(net55745), .Y(net55746) );
  NAND2X8 U54 ( .A(net54998), .B(n15), .Y(net54999) );
  INVX12 U55 ( .A(n15), .Y(net54997) );
  NAND2X8 U56 ( .A(net55000), .B(net54999), .Y(net52192) );
  NAND2X8 U57 ( .A(net54997), .B(net41735), .Y(net55000) );
  OAI22X2 U58 ( .A0(net56897), .A1(net24825), .B0(net52192), .B1(net55746), 
        .Y(net41662) );
  OAI2BB2X2 U59 ( .B0(net55762), .B1(net24832), .A0N(net52192), .A1N(a6_r[0]), 
        .Y(net41657) );
  INVX12 U60 ( .A(net52192), .Y(net57334) );
  AO22X4 U61 ( .A0(net57334), .A1(a4_r[2]), .B0(a6_r[2]), .B1(net52192), .Y(
        net41656) );
  OR2X8 U62 ( .A(net41772), .B(net59648), .Y(net41735) );
  NAND2X8 U63 ( .A(net54999), .B(net55000), .Y(net55762) );
  AO22X4 U64 ( .A0(n17), .A1(net41651), .B0(a5_r[1]), .B1(net41652), .Y(
        net37008) );
  AO22X2 U65 ( .A0(net57334), .A1(a4_r[1]), .B0(net55762), .B1(a6_r[1]), .Y(
        n17) );
  INVX16 U66 ( .A(net41652), .Y(net41651) );
  INVX16 U67 ( .A(net55809), .Y(net41652) );
  OR2X4 U68 ( .A(n724), .B(n628), .Y(n18) );
  BUFX20 U69 ( .A(n221), .Y(n202) );
  BUFX6 U70 ( .A(n280), .Y(n103) );
  INVX8 U71 ( .A(p3[4]), .Y(n394) );
  NAND3BX4 U72 ( .AN(n145), .B(n325), .C(n324), .Y(n630) );
  AND2X4 U73 ( .A(n357), .B(n356), .Y(n39) );
  CLKINVX8 U74 ( .A(n432), .Y(n321) );
  NAND2X4 U75 ( .A(n471), .B(p4[5]), .Y(n459) );
  INVX6 U76 ( .A(p7[5]), .Y(n471) );
  BUFX2 U77 ( .A(n294), .Y(n298) );
  INVX6 U78 ( .A(p8[2]), .Y(n418) );
  NAND3X2 U79 ( .A(n19), .B(n219), .C(n373), .Y(a39_w) );
  OR2X2 U80 ( .A(p3[7]), .B(n376), .Y(n19) );
  NOR3X6 U81 ( .A(n39), .B(n40), .C(n355), .Y(n358) );
  NAND2X6 U82 ( .A(n317), .B(n447), .Y(n54) );
  BUFX8 U83 ( .A(p5[5]), .Y(n317) );
  OA21X4 U84 ( .A0(n388), .A1(n387), .B0(n386), .Y(n20) );
  NAND2X4 U85 ( .A(n20), .B(n385), .Y(n400) );
  NOR2BX1 U86 ( .AN(n307), .B(p3[1]), .Y(n388) );
  CLKAND2X3 U87 ( .A(n308), .B(n244), .Y(n385) );
  OAI221X2 U88 ( .A0(n43), .A1(n628), .B0(n87), .B1(n326), .C0(n616), .Y(n841)
         );
  OAI221X2 U89 ( .A0(n718), .A1(n628), .B0(n722), .B1(n326), .C0(n622), .Y(
        n838) );
  NAND3BX4 U90 ( .AN(n113), .B(n326), .C(n628), .Y(n626) );
  BUFX16 U91 ( .A(n627), .Y(n326) );
  NAND2X4 U92 ( .A(n35), .B(n36), .Y(n193) );
  CLKAND2X8 U93 ( .A(n468), .B(p1[3]), .Y(n234) );
  CLKINVX6 U94 ( .A(n433), .Y(n444) );
  OAI2BB1X2 U95 ( .A0N(p2[4]), .A1N(n432), .B0(n448), .Y(n433) );
  BUFX20 U96 ( .A(n635), .Y(n325) );
  OA21X4 U97 ( .A0(n273), .A1(n29), .B0(n269), .Y(n21) );
  NOR3X6 U98 ( .A(n120), .B(n119), .C(n121), .Y(n600) );
  AND2X4 U99 ( .A(n580), .B(n579), .Y(n121) );
  INVX3 U100 ( .A(n361), .Y(n195) );
  AND2X6 U101 ( .A(n551), .B(n550), .Y(net59648) );
  NAND3X6 U102 ( .A(n107), .B(n108), .C(n109), .Y(net41772) );
  OR2X4 U103 ( .A(n435), .B(p8[7]), .Y(n405) );
  INVX6 U104 ( .A(p8[7]), .Y(n427) );
  INVX3 U105 ( .A(n574), .Y(n575) );
  NAND3X6 U106 ( .A(n22), .B(n305), .C(n543), .Y(n549) );
  OR2X2 U107 ( .A(net55746), .B(n556), .Y(n22) );
  AOI2BB1X2 U108 ( .A0N(p5[2]), .A1N(n443), .B0(n104), .Y(n437) );
  INVX8 U109 ( .A(p4[7]), .Y(n484) );
  OA21X4 U110 ( .A0(n57), .A1(n482), .B0(n457), .Y(n461) );
  OR2X4 U111 ( .A(n301), .B(n496), .Y(n23) );
  OR2X8 U112 ( .A(p7[6]), .B(n301), .Y(n24) );
  INVX4 U113 ( .A(p1[6]), .Y(n496) );
  NOR2X4 U114 ( .A(n182), .B(n183), .Y(n364) );
  OR2X2 U115 ( .A(n326), .B(n131), .Y(n197) );
  INVX4 U116 ( .A(n311), .Y(n302) );
  OAI221X2 U117 ( .A0(n98), .A1(n628), .B0(n714), .B1(n326), .C0(n620), .Y(
        n843) );
  NAND3BX4 U118 ( .AN(n713), .B(n628), .C(n326), .Y(n616) );
  NAND3X2 U119 ( .A(n106), .B(n628), .C(n326), .Y(n624) );
  NAND3X4 U120 ( .A(n66), .B(n67), .C(n242), .Y(n424) );
  INVX4 U121 ( .A(net55762), .Y(net56897) );
  OA22X2 U122 ( .A0(net54867), .A1(n557), .B0(net55746), .B1(n556), .Y(n550)
         );
  INVX4 U123 ( .A(n201), .Y(n556) );
  OR2X2 U124 ( .A(n326), .B(n719), .Y(n156) );
  OAI221X1 U125 ( .A0(n720), .A1(n628), .B0(n721), .B1(n326), .C0(n623), .Y(
        n837) );
  OAI221X2 U126 ( .A0(n716), .A1(n628), .B0(n326), .B1(n725), .C0(n618), .Y(
        n842) );
  NAND2BX4 U127 ( .AN(n291), .B(n26), .Y(n292) );
  NAND3BX2 U128 ( .AN(n711), .B(n326), .C(n628), .Y(n622) );
  AND2X4 U129 ( .A(n711), .B(n583), .Y(n572) );
  INVX4 U130 ( .A(n718), .Y(n583) );
  AO21X4 U131 ( .A0(n561), .A1(n560), .B0(n559), .Y(n25) );
  NOR2X8 U132 ( .A(n25), .B(n558), .Y(n570) );
  AOI32X4 U133 ( .A0(n553), .A1(n172), .A2(a6_r[2]), .B0(n80), .B1(a6_r[3]), 
        .Y(n561) );
  INVX1 U134 ( .A(n564), .Y(n559) );
  INVX3 U135 ( .A(n563), .Y(n558) );
  NAND2X6 U136 ( .A(n570), .B(n569), .Y(n198) );
  AND2X6 U137 ( .A(n360), .B(n196), .Y(n91) );
  OAI32X4 U138 ( .A0(n87), .A1(n261), .A2(n608), .B0(n725), .B1(n607), .Y(n610) );
  OAI222X4 U139 ( .A0(n818), .A1(n90), .B0(n770), .B1(n103), .C0(n794), .C1(
        n41), .Y(a5[5]) );
  OR2X8 U140 ( .A(n548), .B(n549), .Y(n107) );
  NAND3BX4 U141 ( .AN(n493), .B(n58), .C(n65), .Y(n498) );
  INVX4 U142 ( .A(n491), .Y(n481) );
  NAND2X2 U143 ( .A(net24814), .B(n557), .Y(n563) );
  INVX4 U144 ( .A(n726), .Y(n557) );
  BUFX12 U145 ( .A(net24828), .Y(net54705) );
  CLKAND2X12 U146 ( .A(n566), .B(n565), .Y(n252) );
  NAND2X2 U147 ( .A(net24824), .B(a5_r[5]), .Y(n566) );
  INVX1 U148 ( .A(p3[6]), .Y(n396) );
  INVX4 U149 ( .A(p5[5]), .Y(n431) );
  NOR2X4 U150 ( .A(p4[6]), .B(n248), .Y(n216) );
  NAND2X4 U151 ( .A(p2[5]), .B(n420), .Y(n422) );
  INVX12 U152 ( .A(p8[5]), .Y(n420) );
  AOI21X2 U153 ( .A0(p1[2]), .A1(n469), .B0(n234), .Y(n235) );
  INVX8 U154 ( .A(p7[2]), .Y(n469) );
  AO21X4 U155 ( .A0(n477), .A1(p7[1]), .B0(n466), .Y(n312) );
  CLKAND2X12 U156 ( .A(p4[3]), .B(n468), .Y(n309) );
  NAND3X4 U157 ( .A(n37), .B(n38), .C(n546), .Y(n548) );
  AO22X2 U158 ( .A0(net57334), .A1(a4_r[5]), .B0(net55762), .B1(a6_r[5]), .Y(
        n619) );
  BUFX8 U159 ( .A(p9[2]), .Y(n311) );
  CLKINVX1 U160 ( .A(p4[6]), .Y(n483) );
  OAI2BB2X4 U161 ( .B0(n471), .B1(p4[5]), .A0N(p7[4]), .A1N(n482), .Y(n454) );
  INVX12 U162 ( .A(p4[4]), .Y(n482) );
  NAND4X4 U163 ( .A(n500), .B(n498), .C(n499), .D(n497), .Y(a14_w) );
  OAI211X2 U164 ( .A0(n488), .A1(n487), .B0(n486), .C0(n485), .Y(n500) );
  CLKAND2X12 U165 ( .A(n474), .B(n473), .Y(n301) );
  NOR2X8 U166 ( .A(n204), .B(n542), .Y(n258) );
  CLKAND2X2 U167 ( .A(n728), .B(net41788), .Y(n204) );
  AO22X4 U168 ( .A0(n683), .A1(n692), .B0(b5_r[0]), .B1(n691), .Y(n694) );
  OAI2BB2X2 U169 ( .B0(n747), .B1(n125), .A0N(b1_r[0]), .A1N(n125), .Y(n683)
         );
  INVX3 U170 ( .A(n95), .Y(n518) );
  AO22X4 U171 ( .A0(net57334), .A1(a4_r[3]), .B0(a6_r[3]), .B1(net55762), .Y(
        n625) );
  AO22X4 U172 ( .A0(net57334), .A1(a4_r[6]), .B0(net55762), .B1(a6_r[6]), .Y(
        n571) );
  OAI221X2 U173 ( .A0(n736), .A1(n324), .B0(n151), .B1(n325), .C0(n633), .Y(
        n834) );
  NAND3BX2 U174 ( .AN(n733), .B(n325), .C(n324), .Y(n633) );
  NAND3BX2 U175 ( .AN(n732), .B(n325), .C(n324), .Y(n631) );
  AO22X4 U176 ( .A0(n617), .A1(net41651), .B0(a5_r[4]), .B1(net41652), .Y(n705) );
  AO22X4 U177 ( .A0(n625), .A1(net41651), .B0(n79), .B1(net41652), .Y(n704) );
  AO22X4 U178 ( .A0(n571), .A1(net41651), .B0(a5_r[6]), .B1(net41652), .Y(n707) );
  AO22X2 U179 ( .A0(net41657), .A1(net41651), .B0(n82), .B1(net41652), .Y(n702) );
  INVX4 U180 ( .A(n314), .Y(n300) );
  INVX8 U181 ( .A(p7[3]), .Y(n468) );
  OA21X2 U182 ( .A0(p8[4]), .A1(n432), .B0(n404), .Y(n408) );
  AO21X2 U183 ( .A0(n723), .A1(n606), .B0(n602), .Y(n603) );
  INVX6 U184 ( .A(n113), .Y(n602) );
  AO22X4 U185 ( .A0(net57334), .A1(a4_r[4]), .B0(a6_r[4]), .B1(net55762), .Y(
        n617) );
  OR2X6 U186 ( .A(n545), .B(n544), .Y(n38) );
  NAND2X2 U187 ( .A(net24825), .B(n556), .Y(n564) );
  INVX4 U188 ( .A(p7[0]), .Y(n465) );
  NAND2X2 U189 ( .A(net68697), .B(n79), .Y(n553) );
  NAND2X1 U190 ( .A(n736), .B(n31), .Y(n507) );
  AND2X2 U191 ( .A(n716), .B(n607), .Y(n78) );
  INVXL U192 ( .A(n147), .Y(n662) );
  INVX3 U193 ( .A(n142), .Y(n143) );
  NAND3X4 U194 ( .A(n115), .B(n114), .C(n639), .Y(n642) );
  NAND2X2 U195 ( .A(n151), .B(n31), .Y(n532) );
  INVX4 U196 ( .A(n712), .Y(n607) );
  INVX3 U197 ( .A(n713), .Y(n608) );
  OR2X6 U198 ( .A(n658), .B(n656), .Y(n179) );
  INVX8 U199 ( .A(p9[6]), .Y(n370) );
  NOR2X4 U200 ( .A(n68), .B(p3[0]), .Y(n365) );
  INVX1 U201 ( .A(p3[1]), .Y(n122) );
  NAND2X2 U202 ( .A(p3[5]), .B(n369), .Y(n371) );
  NAND3X6 U203 ( .A(n127), .B(n128), .C(n520), .Y(n538) );
  INVX3 U204 ( .A(p1[2]), .Y(n492) );
  AND2X4 U205 ( .A(p1[4]), .B(n482), .Y(n207) );
  INVX6 U206 ( .A(p6[5]), .Y(n381) );
  CLKINVX6 U207 ( .A(p7[6]), .Y(n472) );
  CLKINVX3 U208 ( .A(n362), .Y(n194) );
  INVX1 U209 ( .A(n173), .Y(n174) );
  INVX3 U210 ( .A(n163), .Y(n106) );
  AOI2BB1X2 U211 ( .A0N(n153), .A1N(b1_r[1]), .B0(n637), .Y(n641) );
  AND2X2 U212 ( .A(n743), .B(n673), .Y(n206) );
  AND2X2 U213 ( .A(n742), .B(n674), .Y(n205) );
  AND2X2 U214 ( .A(n745), .B(n650), .Y(n262) );
  OR2X6 U215 ( .A(n573), .B(n572), .Y(n48) );
  NAND2X2 U216 ( .A(n163), .B(n584), .Y(n574) );
  INVX3 U217 ( .A(n742), .Y(n650) );
  AND2X2 U218 ( .A(n739), .B(b5_r[1]), .Y(n654) );
  INVX4 U219 ( .A(p2[5]), .Y(n447) );
  AOI32X1 U220 ( .A0(net24829), .A1(n171), .A2(n546), .B0(net24830), .B1(n79), 
        .Y(n547) );
  OR2X1 U221 ( .A(n201), .B(net41775), .Y(n108) );
  NOR2X1 U222 ( .A(a5_r[1]), .B(net24822), .Y(n555) );
  AND2X4 U223 ( .A(n519), .B(n225), .Y(n253) );
  AND3X2 U224 ( .A(n53), .B(n513), .C(n501), .Y(n502) );
  AOI32X1 U225 ( .A0(n140), .A1(n89), .A2(n507), .B0(n733), .B1(n134), .Y(n508) );
  AND2X4 U226 ( .A(n725), .B(n607), .Y(n261) );
  INVX3 U227 ( .A(p6[2]), .Y(n351) );
  NAND2X2 U228 ( .A(n367), .B(p6[3]), .Y(n354) );
  CLKAND2X3 U229 ( .A(p6[2]), .B(n302), .Y(n40) );
  NAND2X6 U230 ( .A(n353), .B(n352), .Y(n361) );
  NOR2X4 U231 ( .A(n384), .B(p9[7]), .Y(n313) );
  NOR2X2 U232 ( .A(n186), .B(n666), .Y(n680) );
  CLKINVX1 U233 ( .A(n672), .Y(n667) );
  AND2X2 U234 ( .A(n672), .B(n671), .Y(n678) );
  INVX3 U235 ( .A(p2[2]), .Y(n443) );
  NAND2X4 U236 ( .A(n645), .B(n138), .Y(n661) );
  CLKAND2X8 U237 ( .A(n367), .B(p3[3]), .Y(n319) );
  BUFX6 U238 ( .A(n727), .Y(n201) );
  INVX4 U239 ( .A(p6[1]), .Y(n378) );
  AND2X2 U240 ( .A(n149), .B(n593), .Y(n119) );
  INVX3 U241 ( .A(n320), .Y(n316) );
  NAND2X2 U242 ( .A(n317), .B(n420), .Y(n406) );
  NAND2X4 U243 ( .A(n273), .B(n29), .Y(n269) );
  INVX3 U244 ( .A(n112), .Y(n113) );
  AND2X2 U245 ( .A(n459), .B(n458), .Y(n460) );
  NOR2X4 U246 ( .A(p9[6]), .B(n241), .Y(n183) );
  INVX3 U247 ( .A(n96), .Y(n147) );
  INVX3 U248 ( .A(n110), .Y(n111) );
  BUFX4 U249 ( .A(n166), .Y(n129) );
  INVX4 U250 ( .A(p4[3]), .Y(n480) );
  INVX3 U251 ( .A(n159), .Y(n160) );
  OR2X6 U252 ( .A(p5[6]), .B(n231), .Y(n218) );
  INVX3 U253 ( .A(n86), .Y(n87) );
  INVX3 U254 ( .A(p8[3]), .Y(n417) );
  INVX16 U255 ( .A(n202), .Y(n125) );
  INVX3 U256 ( .A(n157), .Y(n158) );
  INVX3 U257 ( .A(n117), .Y(n118) );
  INVX3 U258 ( .A(n88), .Y(n98) );
  INVX3 U259 ( .A(n94), .Y(n95) );
  INVX3 U260 ( .A(n150), .Y(n151) );
  CLKAND2X8 U261 ( .A(n220), .B(n395), .Y(n308) );
  INVX4 U262 ( .A(p6[7]), .Y(n384) );
  BUFX4 U263 ( .A(n222), .Y(n105) );
  AND2X4 U264 ( .A(n62), .B(n233), .Y(n36) );
  AND2X2 U265 ( .A(n406), .B(n405), .Y(n407) );
  NAND2X4 U266 ( .A(p5[6]), .B(n421), .Y(n404) );
  OAI222XL U267 ( .A0(n296), .A1(n798), .B0(n295), .B1(n774), .C0(n298), .C1(
        n822), .Y(a1[1]) );
  CLKINVX1 U268 ( .A(n471), .Y(n306) );
  OAI222XL U269 ( .A0(n814), .A1(n90), .B0(n766), .B1(n103), .C0(n790), .C1(
        n41), .Y(a5[1]) );
  OAI222XL U270 ( .A0(n284), .A1(n793), .B0(n283), .B1(n769), .C0(n286), .C1(
        n817), .Y(a2[4]) );
  OAI222XL U271 ( .A0(n805), .A1(n105), .B0(n757), .B1(n268), .C0(n781), .C1(
        n21), .Y(a6[0]) );
  OAI222XL U272 ( .A0(n284), .A1(n791), .B0(n283), .B1(n767), .C0(n286), .C1(
        n815), .Y(a2[2]) );
  OAI222XL U273 ( .A0(n296), .A1(n801), .B0(n295), .B1(n777), .C0(n298), .C1(
        n825), .Y(a1[4]) );
  OAI222XL U274 ( .A0(n819), .A1(n90), .B0(n771), .B1(n103), .C0(n795), .C1(
        n41), .Y(a5[6]) );
  OAI222XL U275 ( .A0(n272), .A1(n782), .B0(n271), .B1(n758), .C0(n274), .C1(
        n806), .Y(a3[1]) );
  OAI222XL U276 ( .A0(n272), .A1(n783), .B0(n271), .B1(n759), .C0(n274), .C1(
        n807), .Y(a3[2]) );
  OAI222XL U277 ( .A0(n824), .A1(n224), .B0(n776), .B1(n292), .C0(n800), .C1(
        n26), .Y(a4[3]) );
  OAI222XL U278 ( .A0(n284), .A1(n790), .B0(n283), .B1(n766), .C0(n286), .C1(
        n814), .Y(a2[1]) );
  OAI222XL U279 ( .A0(n284), .A1(n789), .B0(n283), .B1(n765), .C0(n286), .C1(
        n813), .Y(a2[0]) );
  OAI222XL U280 ( .A0(n272), .A1(n784), .B0(n271), .B1(n760), .C0(n274), .C1(
        n808), .Y(a3[3]) );
  OAI222XL U281 ( .A0(n272), .A1(n781), .B0(n271), .B1(n757), .C0(n274), .C1(
        n805), .Y(a3[0]) );
  OAI222XL U282 ( .A0(n296), .A1(n804), .B0(n295), .B1(n780), .C0(n298), .C1(
        n828), .Y(a1[7]) );
  INVX3 U283 ( .A(n468), .Y(n314) );
  OAI222XL U284 ( .A0(n296), .A1(n797), .B0(n295), .B1(n773), .C0(n298), .C1(
        n821), .Y(a1[0]) );
  INVX4 U285 ( .A(p5[1]), .Y(n430) );
  INVX3 U286 ( .A(p8[6]), .Y(n421) );
  OR2X6 U287 ( .A(p8[6]), .B(n250), .Y(n67) );
  CLKINVX6 U288 ( .A(p6[0]), .Y(n377) );
  NOR2X6 U289 ( .A(n310), .B(n249), .Y(n248) );
  NOR2X6 U290 ( .A(n495), .B(p4[5]), .Y(n310) );
  INVX3 U291 ( .A(n58), .Y(n217) );
  CLKAND2X12 U292 ( .A(n417), .B(p2[3]), .Y(n237) );
  AOI211X4 U293 ( .A0(p3[1]), .A1(n378), .B0(p3[0]), .C0(n377), .Y(n387) );
  INVX4 U294 ( .A(p9[5]), .Y(n369) );
  OA21X4 U295 ( .A0(n297), .A1(n30), .B0(n293), .Y(n26) );
  OA21X2 U296 ( .A0(n28), .A1(n285), .B0(n281), .Y(n27) );
  INVX3 U297 ( .A(p9[1]), .Y(n366) );
  CLKINVX12 U298 ( .A(n690), .Y(n81) );
  INVX16 U299 ( .A(n202), .Y(n690) );
  INVX3 U300 ( .A(net57316), .Y(net57317) );
  INVX8 U301 ( .A(p2[4]), .Y(n446) );
  OAI32X1 U302 ( .A0(n78), .A1(n143), .A2(n608), .B0(n716), .B1(n607), .Y(n580) );
  CLKINVX1 U303 ( .A(n430), .Y(n126) );
  INVX3 U304 ( .A(p5[6]), .Y(n434) );
  INVX1 U305 ( .A(n99), .Y(n100) );
  CLKINVX1 U306 ( .A(n367), .Y(n323) );
  INVX3 U307 ( .A(p9[3]), .Y(n367) );
  INVX3 U308 ( .A(n141), .Y(n153) );
  CLKINVX1 U309 ( .A(b1_r[3]), .Y(n740) );
  INVX3 U310 ( .A(n79), .Y(n80) );
  INVXL U311 ( .A(b9_r[2]), .Y(n168) );
  OR2X4 U312 ( .A(net24827), .B(a5_r[4]), .Y(n305) );
  INVX3 U313 ( .A(n480), .Y(n73) );
  CLKINVX1 U314 ( .A(n479), .Y(n315) );
  NAND3X6 U315 ( .A(n48), .B(n47), .C(n46), .Y(n578) );
  OR2X6 U316 ( .A(n394), .B(p6[4]), .Y(n220) );
  CLKINVX1 U317 ( .A(p1[7]), .Y(n489) );
  OAI22X2 U318 ( .A0(p8[6]), .A1(n240), .B0(n240), .B1(n434), .Y(n412) );
  OAI221X1 U319 ( .A0(n665), .A1(n664), .B0(n752), .B1(b9_r[2]), .C0(n663), 
        .Y(n668) );
  NAND3BX2 U320 ( .AN(n174), .B(n325), .C(n324), .Y(n632) );
  AOI21X4 U321 ( .A0(n33), .A1(n34), .B0(n368), .Y(n375) );
  AO21X4 U322 ( .A0(n122), .A1(p9[1]), .B0(n365), .Y(n33) );
  AOI21X2 U323 ( .A0(p3[2]), .A1(n302), .B0(n319), .Y(n34) );
  NAND2X4 U324 ( .A(p2[5]), .B(n431), .Y(n448) );
  AO22X4 U325 ( .A0(p8[5]), .A1(n431), .B0(n432), .B1(p8[4]), .Y(n401) );
  NAND3X2 U326 ( .A(n194), .B(n64), .C(n195), .Y(n196) );
  INVX6 U327 ( .A(p7[1]), .Y(n467) );
  OAI2BB2X4 U328 ( .B0(n153), .B1(n125), .A0N(n125), .A1N(b1_r[1]), .Y(n684)
         );
  NAND2X4 U329 ( .A(n717), .B(n229), .Y(n585) );
  AO21X4 U330 ( .A0(n312), .A1(n235), .B0(n470), .Y(n35) );
  AND2X8 U331 ( .A(n372), .B(n371), .Y(n243) );
  INVX6 U332 ( .A(p7[7]), .Y(n476) );
  NAND2X4 U333 ( .A(p4[6]), .B(n472), .Y(n458) );
  INVX4 U334 ( .A(n361), .Y(n359) );
  INVX3 U335 ( .A(net55746), .Y(net41775) );
  OAI222XL U336 ( .A0(n284), .A1(n795), .B0(n283), .B1(n771), .C0(n286), .C1(
        n819), .Y(a2[6]) );
  OAI222XL U337 ( .A0(n272), .A1(n786), .B0(n271), .B1(n762), .C0(n274), .C1(
        n810), .Y(a3[5]) );
  OR2X2 U338 ( .A(n163), .B(n584), .Y(n46) );
  NAND2X4 U339 ( .A(n163), .B(n42), .Y(n606) );
  INVX12 U340 ( .A(n74), .Y(n691) );
  BUFX2 U341 ( .A(n282), .Y(n286) );
  OR2X2 U342 ( .A(n95), .B(n324), .Y(n135) );
  OAI222XL U343 ( .A0(n296), .A1(n799), .B0(n295), .B1(n775), .C0(n298), .C1(
        n823), .Y(a1[2]) );
  CLKINVX1 U344 ( .A(n590), .Y(n43) );
  INVX4 U345 ( .A(n143), .Y(n590) );
  CLKINVX2 U346 ( .A(n613), .Y(n598) );
  NAND2X1 U347 ( .A(p9[1]), .B(n378), .Y(n356) );
  INVX3 U348 ( .A(n354), .Y(n355) );
  INVX2 U349 ( .A(n83), .Y(n552) );
  CLKBUFX2 U350 ( .A(n27), .Y(n41) );
  CLKINVX3 U351 ( .A(n417), .Y(n320) );
  INVX8 U352 ( .A(net41735), .Y(net54998) );
  OAI222XL U353 ( .A0(n296), .A1(n802), .B0(n295), .B1(n778), .C0(n298), .C1(
        n826), .Y(a1[5]) );
  OAI221X1 U354 ( .A0(n111), .A1(n324), .B0(n167), .B1(n325), .C0(n629), .Y(
        n831) );
  NAND3BX2 U355 ( .AN(n53), .B(n325), .C(n324), .Y(n629) );
  BUFX4 U356 ( .A(n130), .Y(n42) );
  INVX3 U357 ( .A(n44), .Y(n45) );
  OR2X2 U358 ( .A(n113), .B(n133), .Y(n47) );
  INVX4 U359 ( .A(n162), .Y(n163) );
  INVX3 U360 ( .A(n724), .Y(n584) );
  AND2X8 U361 ( .A(n352), .B(n348), .Y(n241) );
  NAND2X4 U362 ( .A(n716), .B(n152), .Y(n592) );
  CLKINVX1 U363 ( .A(n429), .Y(n49) );
  INVX3 U364 ( .A(n152), .Y(n725) );
  OAI221X2 U365 ( .A0(n597), .A1(n715), .B0(n595), .B1(n596), .C0(n594), .Y(
        n613) );
  CLKINVX1 U366 ( .A(n719), .Y(n597) );
  INVX3 U367 ( .A(p1[1]), .Y(n477) );
  CLKINVX1 U368 ( .A(n61), .Y(n50) );
  INVX3 U369 ( .A(n60), .Y(n61) );
  CLKBUFX2 U370 ( .A(p8[1]), .Y(n51) );
  CLKINVX6 U371 ( .A(n102), .Y(n52) );
  INVX6 U372 ( .A(n52), .Y(n53) );
  INVX3 U373 ( .A(n101), .Y(n102) );
  NAND2X4 U374 ( .A(n321), .B(n446), .Y(n55) );
  AND2X6 U375 ( .A(n448), .B(n214), .Y(n231) );
  INVX6 U376 ( .A(p5[0]), .Y(n429) );
  NAND3X6 U377 ( .A(n198), .B(n199), .C(n200), .Y(n77) );
  INVX2 U378 ( .A(p8[1]), .Y(n416) );
  OAI221X1 U379 ( .A0(n628), .A1(n717), .B0(n723), .B1(n326), .C0(n626), .Y(
        n840) );
  OAI222XL U380 ( .A0(n284), .A1(n792), .B0(n283), .B1(n768), .C0(n286), .C1(
        n816), .Y(a2[3]) );
  OR2X4 U381 ( .A(n641), .B(n640), .Y(n115) );
  CLKINVX1 U382 ( .A(p8[0]), .Y(n414) );
  INVX1 U383 ( .A(p7[4]), .Y(n56) );
  INVX3 U384 ( .A(n56), .Y(n57) );
  OAI2BB1X4 U385 ( .A0N(p3[1]), .A1N(n366), .B0(p9[0]), .Y(n68) );
  AOI2BB2X4 U386 ( .B0(p1[7]), .B1(n484), .A0N(n496), .A1N(p4[6]), .Y(n58) );
  AOI2BB2X2 U387 ( .B0(p1[7]), .B1(n484), .A0N(n496), .A1N(p4[6]), .Y(n76) );
  OR2X2 U388 ( .A(n170), .B(n325), .Y(n136) );
  OA21X4 U389 ( .A0(n111), .A1(n129), .B0(n514), .Y(n517) );
  AOI211X2 U390 ( .A0(p2[1]), .A1(n430), .B0(p2[0]), .C0(n429), .Y(n438) );
  INVX8 U391 ( .A(p6[6]), .Y(n383) );
  AND2X4 U392 ( .A(n417), .B(p5[3]), .Y(n246) );
  CLKXOR2X2 U393 ( .A(n59), .B(n29), .Y(n267) );
  INVX8 U394 ( .A(p4[0]), .Y(n478) );
  NAND2X4 U395 ( .A(n80), .B(net41781), .Y(n546) );
  NAND3BX4 U396 ( .AN(n710), .B(n326), .C(n628), .Y(n623) );
  NAND3BX2 U397 ( .AN(n709), .B(n326), .C(n628), .Y(n621) );
  OA21X2 U398 ( .A0(p7[4]), .A1(n494), .B0(n473), .Y(n62) );
  CLKINVX1 U399 ( .A(n476), .Y(n63) );
  AOI21X4 U400 ( .A0(p6[4]), .A1(n350), .B0(n313), .Y(n64) );
  AND2X2 U401 ( .A(net24831), .B(net57316), .Y(n545) );
  AOI211X2 U402 ( .A0(net57317), .A1(a4_r[1]), .B0(n83), .C0(net41783), .Y(
        n544) );
  NOR2X2 U403 ( .A(n207), .B(n310), .Y(n65) );
  OR2X4 U404 ( .A(n250), .B(n449), .Y(n66) );
  INVX3 U405 ( .A(n229), .Y(n723) );
  CLKINVX1 U406 ( .A(n376), .Y(n322) );
  OR2X2 U407 ( .A(n45), .B(n325), .Y(n188) );
  AOI21X4 U408 ( .A0(n69), .A1(n70), .B0(n419), .Y(n426) );
  AO21X4 U409 ( .A0(n428), .A1(n51), .B0(n415), .Y(n69) );
  AOI21X2 U410 ( .A0(p2[2]), .A1(n418), .B0(n237), .Y(n70) );
  CLKAND2X4 U411 ( .A(p4[2]), .B(n469), .Y(n72) );
  NAND2X1 U412 ( .A(n405), .B(n404), .Y(n413) );
  AND2X8 U413 ( .A(n454), .B(n459), .Y(n232) );
  INVX6 U414 ( .A(p9[7]), .Y(n376) );
  CLKINVX2 U415 ( .A(p2[1]), .Y(n428) );
  OAI221X1 U416 ( .A0(n61), .A1(n324), .B0(n118), .B1(n325), .C0(n541), .Y(
        n829) );
  NAND3BX2 U417 ( .AN(n140), .B(n325), .C(n324), .Y(n634) );
  INVX3 U418 ( .A(b1_r[1]), .Y(n739) );
  AOI32X2 U419 ( .A0(p5[2]), .A1(n443), .A2(n442), .B0(p5[3]), .B1(n441), .Y(
        n445) );
  INVX3 U420 ( .A(n104), .Y(n442) );
  OAI222XL U421 ( .A0(n272), .A1(n785), .B0(n271), .B1(n761), .C0(n274), .C1(
        n809), .Y(a3[4]) );
  XNOR2X4 U422 ( .A(n681), .B(n97), .Y(n74) );
  NAND2X2 U423 ( .A(n279), .B(n27), .Y(n223) );
  OAI2BB1X4 U424 ( .A0N(n260), .A1N(n722), .B0(n75), .Y(n230) );
  XNOR2X2 U425 ( .A(a17_r), .B(n30), .Y(n291) );
  NAND2X2 U426 ( .A(n318), .B(n440), .Y(n452) );
  CLKINVX1 U427 ( .A(n435), .Y(n318) );
  OAI2BB2X4 U428 ( .B0(n751), .B1(n690), .A0N(b1_r[2]), .A1N(n690), .Y(n685)
         );
  CLKAND2X8 U429 ( .A(n582), .B(n581), .Y(n120) );
  NAND3BX2 U430 ( .AN(n731), .B(n325), .C(n324), .Y(n541) );
  XOR2X4 U431 ( .A(net41735), .B(n77), .Y(net55809) );
  NAND2X6 U432 ( .A(p6[5]), .B(n369), .Y(n352) );
  NAND4X2 U433 ( .A(n400), .B(n397), .C(n398), .D(n399), .Y(a36_w) );
  INVX4 U434 ( .A(n82), .Y(n83) );
  OAI2BB1X2 U435 ( .A0N(n660), .A1N(n659), .B0(n137), .Y(n97) );
  AOI2BB1X2 U436 ( .A0N(n743), .A1N(n673), .B0(n262), .Y(n643) );
  NAND2BX2 U437 ( .AN(n279), .B(n27), .Y(n280) );
  AOI22X4 U438 ( .A0(n203), .A1(n98), .B0(n715), .B1(n85), .Y(n256) );
  AO21X4 U439 ( .A0(n53), .A1(n501), .B0(n513), .Y(n505) );
  CLKAND2X8 U440 ( .A(n102), .B(n129), .Y(n255) );
  OR2X6 U441 ( .A(n547), .B(n549), .Y(n109) );
  INVXL U442 ( .A(n158), .Y(n89) );
  BUFX8 U443 ( .A(n223), .Y(n90) );
  AOI32X4 U444 ( .A0(n140), .A1(n99), .A2(n532), .B0(n733), .B1(n150), .Y(n533) );
  INVX12 U445 ( .A(net54705), .Y(net41788) );
  INVX3 U446 ( .A(n646), .Y(n644) );
  OR3X6 U447 ( .A(n648), .B(n647), .C(n646), .Y(n138) );
  OAI2BB2X2 U448 ( .B0(b9_r[6]), .B1(n737), .A0N(n744), .A1N(b1_r[7]), .Y(n646) );
  NAND2BX1 U449 ( .AN(n384), .B(n389), .Y(n399) );
  AOI32X2 U450 ( .A0(p4[2]), .A1(n492), .A2(n491), .B0(n73), .B1(n490), .Y(
        n493) );
  OAI2BB1X4 U451 ( .A0N(n364), .A1N(n363), .B0(n91), .Y(a69_w) );
  OAI2BB2X4 U452 ( .B0(n92), .B1(n93), .A0N(n721), .A1N(n583), .Y(n587) );
  NOR2X4 U453 ( .A(n259), .B(n721), .Y(n93) );
  NAND2X2 U454 ( .A(n170), .B(n173), .Y(n531) );
  CLKINVX8 U455 ( .A(n160), .Y(n513) );
  NAND2BX1 U456 ( .AN(n484), .B(n489), .Y(n499) );
  NAND3X2 U457 ( .A(n326), .B(n628), .C(n146), .Y(n618) );
  CLKINVX1 U458 ( .A(n313), .Y(n349) );
  NOR2BX4 U459 ( .AN(p2[3]), .B(p5[3]), .Y(n104) );
  NAND2BX4 U460 ( .AN(n267), .B(n21), .Y(n268) );
  AND3X2 U461 ( .A(n111), .B(n514), .C(n129), .Y(n515) );
  OAI2BB2X4 U462 ( .B0(n369), .B1(p3[5]), .A0N(p9[4]), .A1N(n394), .Y(n372) );
  NAND2X1 U463 ( .A(n267), .B(n21), .Y(n222) );
  CLKAND2X12 U464 ( .A(n591), .B(n592), .Y(n254) );
  OA22X4 U465 ( .A0(n258), .A1(n557), .B0(net54867), .B1(n258), .Y(n551) );
  NAND3BX2 U466 ( .AN(n149), .B(n628), .C(n326), .Y(n620) );
  OA21X2 U467 ( .A0(n262), .A1(n263), .B0(b1_r[6]), .Y(n648) );
  NOR2X6 U468 ( .A(n205), .B(n206), .Y(n263) );
  CLKINVX1 U469 ( .A(b9_r[2]), .Y(n751) );
  NAND2X6 U470 ( .A(b1_r[7]), .B(n176), .Y(n303) );
  OA21X2 U471 ( .A0(n262), .A1(n263), .B0(n753), .Y(n647) );
  OR2X1 U472 ( .A(n147), .B(b1_r[3]), .Y(n114) );
  OAI32X2 U473 ( .A0(n418), .A1(n237), .A2(p2[2]), .B0(p2[3]), .B1(n316), .Y(
        n419) );
  AOI22X4 U474 ( .A0(n116), .A1(n746), .B0(b1_r[6]), .B1(n116), .Y(n660) );
  AO21X4 U475 ( .A0(n754), .A1(n650), .B0(n649), .Y(n116) );
  OA21X4 U476 ( .A0(n131), .A1(n584), .B0(n585), .Y(n588) );
  AND3X2 U477 ( .A(n131), .B(n585), .C(n584), .Y(n586) );
  NAND3X2 U478 ( .A(n464), .B(n211), .C(n210), .Y(a47_w) );
  CLKINVX1 U479 ( .A(n154), .Y(n581) );
  INVX3 U480 ( .A(net24818), .Y(net57316) );
  OAI211X2 U481 ( .A0(p9[4]), .A1(n394), .B0(n236), .C0(n371), .Y(n374) );
  AOI2BB1X4 U482 ( .A0N(p6[2]), .A1N(n392), .B0(n380), .Y(n386) );
  AOI32X2 U483 ( .A0(p6[2]), .A1(n392), .A2(n391), .B0(p6[3]), .B1(n390), .Y(
        n393) );
  AO22X4 U484 ( .A0(n125), .A1(b1_r[6]), .B0(b9_r[6]), .B1(n81), .Y(n689) );
  AO22X4 U485 ( .A0(n125), .A1(b1_r[5]), .B0(b9_r[5]), .B1(n81), .Y(n688) );
  AO22X4 U486 ( .A0(n690), .A1(b1_r[4]), .B0(b9_r[4]), .B1(n81), .Y(n687) );
  OR2X2 U487 ( .A(n734), .B(n526), .Y(n127) );
  OR2X6 U488 ( .A(n522), .B(n521), .Y(n128) );
  CLKINVX1 U489 ( .A(n165), .Y(n526) );
  OAI211X4 U490 ( .A0(n158), .A1(n99), .B0(n519), .C0(n257), .Y(n521) );
  INVX4 U491 ( .A(n42), .Y(n131) );
  AOI22X4 U492 ( .A0(p4[5]), .A1(n495), .B0(p4[4]), .B1(n494), .Y(n249) );
  AND3X8 U493 ( .A(n191), .B(n598), .C(n190), .Y(n132) );
  INVX20 U494 ( .A(n132), .Y(n628) );
  AOI211X2 U495 ( .A0(n153), .A1(b5_r[1]), .B0(n747), .C0(b5_r[0]), .Y(n664)
         );
  OR2X4 U496 ( .A(n743), .B(b5_r[4]), .Y(n304) );
  OAI32X2 U497 ( .A0(n512), .A1(n511), .A2(n510), .B0(n509), .B1(n508), .Y(
        n524) );
  AOI2BB2X4 U498 ( .B0(p6[4]), .B1(n394), .A0N(n381), .A1N(p3[5]), .Y(n239) );
  NOR2X4 U499 ( .A(n241), .B(n383), .Y(n182) );
  NAND2X4 U500 ( .A(p3[5]), .B(n381), .Y(n395) );
  CLKAND2X12 U501 ( .A(n423), .B(n422), .Y(n250) );
  AND2X8 U502 ( .A(n208), .B(n209), .Y(n245) );
  NAND2X6 U503 ( .A(p2[7]), .B(n435), .Y(n208) );
  NAND2X4 U504 ( .A(p4[7]), .B(n476), .Y(n457) );
  OAI32X2 U505 ( .A0(n319), .A1(p3[2]), .A2(n302), .B0(p3[3]), .B1(n367), .Y(
        n368) );
  INVX1 U506 ( .A(n98), .Y(n593) );
  AND2X8 U507 ( .A(n218), .B(n245), .Y(n213) );
  OR2X8 U508 ( .A(n525), .B(n524), .Y(n185) );
  AOI32X2 U509 ( .A0(n311), .A1(n351), .A2(n354), .B0(n323), .B1(n379), .Y(
        n362) );
  OAI2BB2X2 U510 ( .B0(n744), .B1(n125), .A0N(b1_r[7]), .A1N(n125), .Y(n693)
         );
  OAI2BB2X2 U511 ( .B0(n147), .B1(n690), .A0N(b1_r[3]), .A1N(n690), .Y(n686)
         );
  AOI2BB1X2 U512 ( .A0N(p4[2]), .A1N(n492), .B0(n481), .Y(n486) );
  NAND3BX4 U513 ( .AN(n393), .B(n244), .C(n308), .Y(n398) );
  INVX3 U514 ( .A(n391), .Y(n380) );
  NAND2X4 U515 ( .A(p3[3]), .B(n379), .Y(n391) );
  AOI221X2 U516 ( .A0(n402), .A1(n403), .B0(p5[2]), .B1(n418), .C0(n246), .Y(
        n410) );
  AOI22X4 U517 ( .A0(p1[7]), .A1(n476), .B0(p1[6]), .B1(n472), .Y(n233) );
  OA22X4 U518 ( .A0(n145), .A1(n530), .B0(n102), .B1(n129), .Y(n529) );
  INVX2 U519 ( .A(p6[4]), .Y(n382) );
  NOR2X2 U520 ( .A(n248), .B(n496), .Y(n215) );
  AOI32X2 U521 ( .A0(n358), .A1(n64), .A2(n359), .B0(n384), .B1(n322), .Y(n360) );
  AOI32X2 U522 ( .A0(n741), .A1(b5_r[2]), .A2(n655), .B0(n740), .B1(b5_r[3]), 
        .Y(n656) );
  AND2X8 U523 ( .A(n247), .B(n76), .Y(n485) );
  AND2X1 U524 ( .A(n349), .B(n353), .Y(n363) );
  OAI221X1 U525 ( .A0(n160), .A1(n324), .B0(n124), .B1(n325), .C0(n630), .Y(
        n832) );
  AOI22X4 U526 ( .A0(p2[7]), .A1(n427), .B0(p2[6]), .B1(n421), .Y(n242) );
  AOI32X2 U527 ( .A0(n752), .A1(n663), .A2(b9_r[2]), .B0(n750), .B1(n662), .Y(
        n669) );
  NAND2X4 U528 ( .A(p1[5]), .B(n471), .Y(n473) );
  NAND2X2 U529 ( .A(n744), .B(n175), .Y(n672) );
  NAND4X4 U530 ( .A(n453), .B(n451), .C(n452), .D(n450), .Y(a25_w) );
  AOI22X4 U531 ( .A0(p3[7]), .A1(n376), .B0(p3[6]), .B1(n370), .Y(n236) );
  OA21X4 U532 ( .A0(n722), .A1(n260), .B0(n230), .Y(n605) );
  AOI221X2 U533 ( .A0(n145), .A1(n505), .B0(n504), .B1(n503), .C0(n502), .Y(
        n511) );
  NAND3X2 U534 ( .A(n135), .B(n136), .C(n632), .Y(n835) );
  AOI32X2 U535 ( .A0(n642), .A1(n644), .A2(n643), .B0(n738), .B1(n676), .Y(
        n645) );
  OAI211X2 U536 ( .A0(p8[1]), .A1(n430), .B0(p8[0]), .C0(n429), .Y(n403) );
  NAND2X1 U537 ( .A(n430), .B(p8[1]), .Y(n402) );
  AOI211X2 U538 ( .A0(n467), .A1(p1[1]), .B0(p1[0]), .C0(n465), .Y(n466) );
  OAI2BB1X4 U539 ( .A0N(n660), .A1N(n659), .B0(n137), .Y(n682) );
  AND3X8 U540 ( .A(n177), .B(n178), .C(n179), .Y(n137) );
  OAI221X2 U541 ( .A0(n243), .A1(n396), .B0(p9[6]), .B1(n243), .C0(n236), .Y(
        n373) );
  OAI221X2 U542 ( .A0(n238), .A1(n396), .B0(n238), .B1(p6[6]), .C0(n244), .Y(
        n397) );
  NOR2BX4 U543 ( .AN(n395), .B(n239), .Y(n238) );
  AOI22X4 U544 ( .A0(p3[7]), .A1(n384), .B0(p3[6]), .B1(n383), .Y(n244) );
  INVX3 U545 ( .A(n139), .Y(n140) );
  NOR2X4 U546 ( .A(n207), .B(n310), .Y(n247) );
  INVX1 U547 ( .A(n148), .Y(n149) );
  NAND2X2 U548 ( .A(p2[6]), .B(n434), .Y(n209) );
  AND2X8 U549 ( .A(n401), .B(n406), .Y(n240) );
  AOI222X2 U550 ( .A0(n149), .A1(n203), .B0(n612), .B1(n611), .C0(n610), .C1(
        n609), .Y(n615) );
  NAND3BX2 U551 ( .AN(n751), .B(n741), .C(n638), .Y(n639) );
  OAI2BB2X2 U552 ( .B0(n749), .B1(n692), .A0N(n684), .A1N(n692), .Y(n695) );
  NAND2BX4 U553 ( .AN(n78), .B(n579), .Y(n154) );
  NAND3X2 U554 ( .A(n155), .B(n156), .C(n621), .Y(n844) );
  AOI211X2 U555 ( .A0(p1[1]), .A1(n479), .B0(p1[0]), .C0(n478), .Y(n487) );
  AOI2BB2X4 U556 ( .B0(n170), .B1(n518), .A0N(n161), .A1N(n165), .Y(n257) );
  INVX3 U557 ( .A(n609), .Y(n601) );
  AO22X4 U558 ( .A0(n689), .A1(n692), .B0(b5_r[6]), .B1(n691), .Y(n700) );
  INVX4 U559 ( .A(n755), .Y(n673) );
  INVXL U560 ( .A(n129), .Y(n167) );
  AO22X4 U561 ( .A0(n619), .A1(net41651), .B0(a5_r[5]), .B1(net41652), .Y(n706) );
  OAI221X2 U562 ( .A0(n555), .A1(n554), .B0(n172), .B1(a6_r[2]), .C0(n553), 
        .Y(n560) );
  NAND2X4 U563 ( .A(p1[3]), .B(n480), .Y(n491) );
  OAI2BB1X2 U564 ( .A0N(n168), .A1N(b1_r[2]), .B0(n638), .Y(n640) );
  OAI32X2 U565 ( .A0(n234), .A1(p1[2]), .A2(n469), .B0(p1[3]), .B1(n300), .Y(
        n470) );
  AOI2BB1X4 U566 ( .A0N(n711), .A1N(n583), .B0(n720), .Y(n573) );
  INVX4 U567 ( .A(n739), .Y(n652) );
  OR2X6 U568 ( .A(n600), .B(n599), .Y(n191) );
  NAND3X8 U569 ( .A(n303), .B(n304), .C(n651), .Y(n658) );
  AOI211X2 U570 ( .A0(n749), .A1(n652), .B0(n748), .C0(b1_r[0]), .Y(n653) );
  AO22X4 U571 ( .A0(net41662), .A1(net41651), .B0(a5_r[7]), .B1(net41652), .Y(
        n708) );
  AO22X4 U572 ( .A0(net41656), .A1(net41651), .B0(n171), .B1(net41652), .Y(
        n703) );
  OR2X8 U573 ( .A(n375), .B(n374), .Y(n219) );
  AO21X4 U574 ( .A0(n669), .A1(n668), .B0(n667), .Y(n186) );
  OR2X4 U575 ( .A(n658), .B(n657), .Y(n177) );
  OR2X2 U576 ( .A(n176), .B(b1_r[7]), .Y(n178) );
  AND2X1 U577 ( .A(n754), .B(n674), .Y(n180) );
  CLKAND2X2 U578 ( .A(n756), .B(n673), .Y(n181) );
  NOR2X4 U579 ( .A(n180), .B(n181), .Y(n226) );
  NOR2BX4 U580 ( .AN(n675), .B(n226), .Y(n251) );
  OR2X4 U581 ( .A(n730), .B(n526), .Y(n184) );
  BUFX20 U582 ( .A(n636), .Y(n324) );
  INVXL U583 ( .A(n671), .Y(n666) );
  OR2X2 U584 ( .A(n735), .B(n324), .Y(n187) );
  NAND3X2 U585 ( .A(n187), .B(n188), .C(n631), .Y(n830) );
  OA21X2 U586 ( .A0(p8[4]), .A1(n446), .B0(n422), .Y(n189) );
  OR2X1 U587 ( .A(n715), .B(n32), .Y(n190) );
  OR2X1 U588 ( .A(p1[7]), .B(n476), .Y(n192) );
  NAND3X2 U589 ( .A(n18), .B(n197), .C(n624), .Y(n839) );
  NAND2X2 U590 ( .A(n568), .B(n567), .Y(n199) );
  NAND2XL U591 ( .A(n201), .B(net68085), .Y(n200) );
  AOI2BB1X1 U592 ( .A0N(n729), .A1N(a6_r[4]), .B0(n562), .Y(n569) );
  AND2XL U593 ( .A(n564), .B(n563), .Y(n568) );
  OA22X2 U594 ( .A0(n726), .A1(n252), .B0(n252), .B1(net41743), .Y(n567) );
  AOI221X2 U595 ( .A0(n255), .A1(n530), .B0(n529), .B1(n528), .C0(n527), .Y(
        n536) );
  AOI2BB1X4 U596 ( .A0N(n255), .A1N(n530), .B0(n144), .Y(n527) );
  OAI32X2 U597 ( .A0(n536), .A1(n537), .A2(n535), .B0(n534), .B1(n533), .Y(
        n539) );
  AOI221X2 U598 ( .A0(n723), .A1(n133), .B0(n588), .B1(n587), .C0(n586), .Y(
        n596) );
  OAI221X1 U599 ( .A0(n158), .A1(n324), .B0(n100), .B1(n325), .C0(n634), .Y(
        n833) );
  OR2X2 U600 ( .A(n231), .B(n449), .Y(n212) );
  AO22X4 U601 ( .A0(n688), .A1(n692), .B0(b5_r[5]), .B1(n691), .Y(n699) );
  AO22X4 U602 ( .A0(n693), .A1(n692), .B0(n175), .B1(n691), .Y(n701) );
  NAND2X2 U603 ( .A(n147), .B(b1_r[3]), .Y(n638) );
  OAI221X2 U604 ( .A0(n741), .A1(b5_r[2]), .B0(n654), .B1(n653), .C0(n655), 
        .Y(n657) );
  OA22X4 U605 ( .A0(n729), .A1(a4_r[4]), .B0(n728), .B1(net41788), .Y(n542) );
  AO22X4 U606 ( .A0(n728), .A1(a6_r[5]), .B0(n729), .B1(net41748), .Y(n565) );
  AOI211X2 U607 ( .A0(net24822), .A1(net57316), .B0(net24820), .C0(n552), .Y(
        n554) );
  OAI221X2 U608 ( .A0(p2[7]), .A1(n427), .B0(n426), .B1(n425), .C0(n424), .Y(
        a28_w) );
  NAND2X2 U609 ( .A(n750), .B(b1_r[3]), .Y(n655) );
  OR3X6 U610 ( .A(n215), .B(n216), .C(n217), .Y(n497) );
  NAND2X2 U611 ( .A(a17_r), .B(a14_r), .Y(n290) );
  NAND2X2 U612 ( .A(a39_r), .B(a36_r), .Y(n266) );
  NAND2X2 U613 ( .A(a28_r), .B(a25_r), .Y(n278) );
  NAND2X2 U614 ( .A(a69_r), .B(n29), .Y(n265) );
  NAND2X2 U615 ( .A(a47_r), .B(n30), .Y(n289) );
  NAND2X2 U616 ( .A(a58_r), .B(n285), .Y(n277) );
  NAND2X2 U617 ( .A(a25_r), .B(n28), .Y(n284) );
  NAND2X2 U618 ( .A(a14_r), .B(n297), .Y(n296) );
  NAND2X2 U619 ( .A(a36_r), .B(n273), .Y(n272) );
  NAND2X2 U620 ( .A(a17_r), .B(a47_r), .Y(n295) );
  NAND2X2 U621 ( .A(a28_r), .B(a58_r), .Y(n283) );
  NAND2X2 U622 ( .A(a39_r), .B(a69_r), .Y(n271) );
  AO22X4 U623 ( .A0(n685), .A1(n692), .B0(b5_r[2]), .B1(n691), .Y(n696) );
  AO22X4 U624 ( .A0(n686), .A1(n692), .B0(b5_r[3]), .B1(n691), .Y(n697) );
  AO22X4 U625 ( .A0(n687), .A1(n692), .B0(b5_r[4]), .B1(n691), .Y(n698) );
  INVX3 U626 ( .A(p5[7]), .Y(n435) );
  NAND3BX4 U627 ( .AN(n445), .B(n245), .C(n444), .Y(n451) );
  OR2XL U628 ( .A(p4[7]), .B(n476), .Y(n210) );
  OAI211X2 U629 ( .A0(n463), .A1(n462), .B0(n461), .C0(n460), .Y(n464) );
  OAI221X2 U630 ( .A0(n254), .A1(n593), .B0(n254), .B1(n714), .C0(n256), .Y(
        n594) );
  INVX1 U631 ( .A(p2[6]), .Y(n449) );
  OAI221X2 U632 ( .A0(n318), .A1(n427), .B0(n412), .B1(n413), .C0(n411), .Y(
        a58_w) );
  INVX3 U633 ( .A(p3[2]), .Y(n392) );
  NAND2X1 U634 ( .A(n95), .B(n173), .Y(n506) );
  NAND2X1 U635 ( .A(n98), .B(n148), .Y(n579) );
  INVX3 U636 ( .A(n111), .Y(n501) );
  XNOR2X4 U637 ( .A(n661), .B(n682), .Y(n221) );
  INVXL U638 ( .A(p3[3]), .Y(n390) );
  OAI211X2 U639 ( .A0(n409), .A1(n410), .B0(n408), .C0(n407), .Y(n411) );
  INVXL U640 ( .A(p2[3]), .Y(n441) );
  NAND2X4 U641 ( .A(n28), .B(n285), .Y(n281) );
  NAND2X4 U642 ( .A(n297), .B(n30), .Y(n293) );
  NAND2X2 U643 ( .A(n291), .B(n26), .Y(n224) );
  INVX1 U644 ( .A(n566), .Y(n562) );
  INVXL U645 ( .A(n531), .Y(n534) );
  AND2XL U646 ( .A(n715), .B(n32), .Y(n599) );
  AOI2BB1XL U647 ( .A0N(n756), .A1N(n673), .B0(n670), .Y(n679) );
  AO22X4 U648 ( .A0(n158), .A1(n99), .B0(n736), .B1(n150), .Y(n225) );
  AND2XL U649 ( .A(n719), .B(n32), .Y(n614) );
  AO22X4 U650 ( .A0(n732), .A1(n227), .B0(n228), .B1(n50), .Y(n503) );
  NAND2X2 U651 ( .A(n735), .B(n84), .Y(n228) );
  AND2XL U652 ( .A(n158), .B(n139), .Y(n510) );
  CLKBUFX3 U653 ( .A(n345), .Y(n328) );
  CLKBUFX3 U654 ( .A(n345), .Y(n329) );
  CLKBUFX3 U655 ( .A(n346), .Y(n330) );
  CLKBUFX3 U656 ( .A(n347), .Y(n331) );
  CLKBUFX3 U657 ( .A(n346), .Y(n332) );
  CLKBUFX3 U658 ( .A(n346), .Y(n333) );
  CLKBUFX3 U659 ( .A(n347), .Y(n334) );
  CLKBUFX3 U660 ( .A(n344), .Y(n335) );
  CLKBUFX3 U661 ( .A(n347), .Y(n338) );
  CLKBUFX3 U662 ( .A(n344), .Y(n337) );
  CLKBUFX3 U663 ( .A(n327), .Y(n339) );
  CLKBUFX3 U664 ( .A(n345), .Y(n336) );
  CLKBUFX3 U665 ( .A(n344), .Y(n341) );
  CLKBUFX3 U666 ( .A(n344), .Y(n340) );
  CLKBUFX3 U667 ( .A(n345), .Y(n342) );
  CLKBUFX3 U668 ( .A(n347), .Y(n343) );
  CLKBUFX3 U669 ( .A(n346), .Y(n345) );
  CLKBUFX3 U670 ( .A(n327), .Y(n346) );
  CLKBUFX3 U671 ( .A(n327), .Y(n347) );
  CLKBUFX3 U672 ( .A(n327), .Y(n344) );
  AND2X2 U673 ( .A(n126), .B(n428), .Y(n439) );
  INVX8 U674 ( .A(p4[1]), .Y(n479) );
  INVX3 U675 ( .A(p6[3]), .Y(n379) );
  CLKINVX1 U676 ( .A(p1[3]), .Y(n490) );
  NAND2X4 U677 ( .A(p6[6]), .B(n370), .Y(n353) );
  INVXL U678 ( .A(p3[7]), .Y(n389) );
  CLKINVX1 U679 ( .A(n675), .Y(n670) );
  INVXL U680 ( .A(p2[7]), .Y(n440) );
  NAND2X1 U681 ( .A(n532), .B(n531), .Y(n537) );
  NAND2X1 U682 ( .A(n507), .B(n506), .Y(n512) );
  CLKINVX1 U683 ( .A(n506), .Y(n509) );
  AO22X1 U684 ( .A0(n730), .A1(n161), .B0(n174), .B1(n169), .Y(n540) );
  AO22X1 U685 ( .A0(n730), .A1(n526), .B0(n174), .B1(n518), .Y(n525) );
  OA22X1 U686 ( .A0(n737), .A1(b5_r[6]), .B0(n738), .B1(n175), .Y(n659) );
  AND2XL U687 ( .A(n749), .B(n141), .Y(n665) );
  NAND2X4 U688 ( .A(n124), .B(n513), .Y(n514) );
  AOI211X1 U689 ( .A0(n87), .A1(n608), .B0(n601), .C0(n261), .Y(n612) );
  NAND3BXL U690 ( .AN(n161), .B(n730), .C(n165), .Y(n836) );
  OAI222XL U691 ( .A0(n805), .A1(n266), .B0(n781), .B1(n265), .C0(n757), .C1(
        n264), .Y(a9[0]) );
  OAI222XL U692 ( .A0(n806), .A1(n266), .B0(n782), .B1(n265), .C0(n758), .C1(
        n264), .Y(a9[1]) );
  OAI222XL U693 ( .A0(n807), .A1(n266), .B0(n783), .B1(n265), .C0(n759), .C1(
        n264), .Y(a9[2]) );
  OAI222XL U694 ( .A0(n808), .A1(n266), .B0(n784), .B1(n265), .C0(n760), .C1(
        n264), .Y(a9[3]) );
  OAI222XL U695 ( .A0(n809), .A1(n266), .B0(n785), .B1(n265), .C0(n761), .C1(
        n275), .Y(a9[4]) );
  OAI222XL U696 ( .A0(n810), .A1(n266), .B0(n786), .B1(n265), .C0(n762), .C1(
        n275), .Y(a9[5]) );
  OAI222XL U697 ( .A0(n811), .A1(n266), .B0(n787), .B1(n265), .C0(n763), .C1(
        n275), .Y(a9[6]) );
  OAI222XL U698 ( .A0(n812), .A1(n266), .B0(n788), .B1(n265), .C0(n764), .C1(
        n275), .Y(a9[7]) );
  OAI222XL U699 ( .A0(n806), .A1(n105), .B0(n758), .B1(n268), .C0(n782), .C1(
        n21), .Y(a6[1]) );
  OAI222XL U700 ( .A0(n807), .A1(n105), .B0(n759), .B1(n268), .C0(n783), .C1(
        n21), .Y(a6[2]) );
  OAI222XL U701 ( .A0(n808), .A1(n105), .B0(n760), .B1(n268), .C0(n784), .C1(
        n21), .Y(a6[3]) );
  OAI222XL U702 ( .A0(n809), .A1(n105), .B0(n761), .B1(n268), .C0(n785), .C1(
        n21), .Y(a6[4]) );
  OAI222XL U703 ( .A0(n810), .A1(n105), .B0(n762), .B1(n268), .C0(n786), .C1(
        n21), .Y(a6[5]) );
  OAI222XL U704 ( .A0(n811), .A1(n105), .B0(n763), .B1(n268), .C0(n787), .C1(
        n21), .Y(a6[6]) );
  OAI222XL U705 ( .A0(n812), .A1(n105), .B0(n764), .B1(n268), .C0(n788), .C1(
        n21), .Y(a6[7]) );
  OA21XL U706 ( .A0(a39_r), .A1(n273), .B0(n269), .Y(n270) );
  OAI222XL U707 ( .A0(n272), .A1(n787), .B0(n271), .B1(n763), .C0(n274), .C1(
        n811), .Y(a3[6]) );
  OAI222XL U708 ( .A0(n272), .A1(n788), .B0(n271), .B1(n764), .C0(n274), .C1(
        n812), .Y(a3[7]) );
  CLKBUFX3 U709 ( .A(n270), .Y(n274) );
  OA21X1 U710 ( .A0(a39_r), .A1(n29), .B0(n269), .Y(n264) );
  OA21X1 U711 ( .A0(a39_r), .A1(n29), .B0(n269), .Y(n275) );
  OAI222XL U712 ( .A0(n813), .A1(n278), .B0(n789), .B1(n277), .C0(n765), .C1(
        n276), .Y(a8[0]) );
  OAI222XL U713 ( .A0(n814), .A1(n278), .B0(n790), .B1(n277), .C0(n766), .C1(
        n276), .Y(a8[1]) );
  OAI222XL U714 ( .A0(n815), .A1(n278), .B0(n791), .B1(n277), .C0(n767), .C1(
        n276), .Y(a8[2]) );
  OAI222XL U715 ( .A0(n816), .A1(n278), .B0(n792), .B1(n277), .C0(n768), .C1(
        n276), .Y(a8[3]) );
  OAI222XL U716 ( .A0(n817), .A1(n278), .B0(n793), .B1(n277), .C0(n769), .C1(
        n287), .Y(a8[4]) );
  OAI222XL U717 ( .A0(n818), .A1(n278), .B0(n794), .B1(n277), .C0(n770), .C1(
        n287), .Y(a8[5]) );
  OAI222XL U718 ( .A0(n819), .A1(n278), .B0(n795), .B1(n277), .C0(n771), .C1(
        n287), .Y(a8[6]) );
  OAI222XL U719 ( .A0(n820), .A1(n278), .B0(n796), .B1(n277), .C0(n772), .C1(
        n287), .Y(a8[7]) );
  XNOR2X1 U720 ( .A(a28_r), .B(n285), .Y(n279) );
  OAI222XL U721 ( .A0(n813), .A1(n90), .B0(n765), .B1(n103), .C0(n789), .C1(
        n27), .Y(a5[0]) );
  OAI222XL U722 ( .A0(n815), .A1(n90), .B0(n767), .B1(n103), .C0(n791), .C1(
        n27), .Y(a5[2]) );
  OAI222XL U723 ( .A0(n816), .A1(n90), .B0(n768), .B1(n103), .C0(n792), .C1(
        n27), .Y(a5[3]) );
  OAI222XL U724 ( .A0(n817), .A1(n90), .B0(n769), .B1(n103), .C0(n793), .C1(
        n27), .Y(a5[4]) );
  OAI222XL U725 ( .A0(n820), .A1(n90), .B0(n772), .B1(n103), .C0(n796), .C1(
        n27), .Y(a5[7]) );
  OA21XL U726 ( .A0(a28_r), .A1(n28), .B0(n281), .Y(n282) );
  OAI222XL U727 ( .A0(n284), .A1(n794), .B0(n283), .B1(n770), .C0(n286), .C1(
        n818), .Y(a2[5]) );
  OAI222XL U728 ( .A0(n284), .A1(n796), .B0(n283), .B1(n772), .C0(n286), .C1(
        n820), .Y(a2[7]) );
  OA21X1 U729 ( .A0(a28_r), .A1(n285), .B0(n281), .Y(n276) );
  OA21X1 U730 ( .A0(a28_r), .A1(n285), .B0(n281), .Y(n287) );
  OAI222XL U731 ( .A0(n821), .A1(n290), .B0(n797), .B1(n289), .C0(n773), .C1(
        n288), .Y(a7[0]) );
  OAI222XL U732 ( .A0(n822), .A1(n290), .B0(n798), .B1(n289), .C0(n774), .C1(
        n288), .Y(a7[1]) );
  OAI222XL U733 ( .A0(n823), .A1(n290), .B0(n799), .B1(n289), .C0(n775), .C1(
        n288), .Y(a7[2]) );
  OAI222XL U734 ( .A0(n824), .A1(n290), .B0(n800), .B1(n289), .C0(n776), .C1(
        n288), .Y(a7[3]) );
  OAI222XL U735 ( .A0(n825), .A1(n290), .B0(n801), .B1(n289), .C0(n777), .C1(
        n299), .Y(a7[4]) );
  OAI222XL U736 ( .A0(n826), .A1(n290), .B0(n802), .B1(n289), .C0(n778), .C1(
        n299), .Y(a7[5]) );
  OAI222XL U737 ( .A0(n827), .A1(n290), .B0(n803), .B1(n289), .C0(n779), .C1(
        n299), .Y(a7[6]) );
  OAI222XL U738 ( .A0(n828), .A1(n290), .B0(n804), .B1(n289), .C0(n780), .C1(
        n299), .Y(a7[7]) );
  OAI222XL U739 ( .A0(n821), .A1(n224), .B0(n773), .B1(n292), .C0(n797), .C1(
        n26), .Y(a4[0]) );
  OAI222XL U740 ( .A0(n822), .A1(n224), .B0(n774), .B1(n292), .C0(n798), .C1(
        n26), .Y(a4[1]) );
  OAI222XL U741 ( .A0(n823), .A1(n224), .B0(n775), .B1(n292), .C0(n799), .C1(
        n26), .Y(a4[2]) );
  OAI222XL U742 ( .A0(n825), .A1(n224), .B0(n777), .B1(n292), .C0(n801), .C1(
        n26), .Y(a4[4]) );
  OAI222XL U743 ( .A0(n826), .A1(n224), .B0(n778), .B1(n292), .C0(n802), .C1(
        n26), .Y(a4[5]) );
  OAI222XL U744 ( .A0(n827), .A1(n224), .B0(n779), .B1(n292), .C0(n803), .C1(
        n26), .Y(a4[6]) );
  OAI222XL U745 ( .A0(n828), .A1(n224), .B0(n780), .B1(n292), .C0(n804), .C1(
        n26), .Y(a4[7]) );
  OA21XL U746 ( .A0(a17_r), .A1(n297), .B0(n293), .Y(n294) );
  OAI222XL U747 ( .A0(n296), .A1(n800), .B0(n295), .B1(n776), .C0(n298), .C1(
        n824), .Y(a1[3]) );
  OAI222XL U748 ( .A0(n296), .A1(n803), .B0(n295), .B1(n779), .C0(n298), .C1(
        n827), .Y(a1[6]) );
  OA21X1 U749 ( .A0(a17_r), .A1(n30), .B0(n293), .Y(n288) );
  OA21X1 U750 ( .A0(a17_r), .A1(n30), .B0(n293), .Y(n299) );
  CLKBUFX2 U751 ( .A(rst), .Y(n327) );
  NAND2X1 U752 ( .A(p7[1]), .B(n479), .Y(n455) );
  CLKBUFX2 U753 ( .A(p6[1]), .Y(n307) );
  INVX3 U754 ( .A(p9[4]), .Y(n350) );
  AO22X4 U755 ( .A0(p9[4]), .A1(n382), .B0(p9[5]), .B1(n381), .Y(n348) );
  OAI211X2 U756 ( .A0(p9[1]), .A1(n378), .B0(p9[0]), .C0(n377), .Y(n357) );
  OAI32X2 U757 ( .A0(n246), .A1(p5[2]), .A2(n418), .B0(p5[3]), .B1(n316), .Y(
        n409) );
  AOI211X2 U758 ( .A0(p2[1]), .A1(n416), .B0(p2[0]), .C0(n414), .Y(n415) );
  AO22X4 U759 ( .A0(n446), .A1(p8[4]), .B0(p8[5]), .B1(n447), .Y(n423) );
  OAI211X2 U760 ( .A0(n439), .A1(n438), .B0(n437), .C0(n436), .Y(n453) );
  OAI211X2 U761 ( .A0(n479), .A1(p7[1]), .B0(p7[0]), .C0(n478), .Y(n456) );
  OAI32X2 U762 ( .A0(n309), .A1(p4[2]), .A2(n469), .B0(n73), .B1(n300), .Y(
        n462) );
  AO22X4 U763 ( .A0(p7[4]), .A1(n494), .B0(p7[5]), .B1(n495), .Y(n474) );
  OA22X4 U764 ( .A0(n145), .A1(n513), .B0(n53), .B1(n501), .Y(n504) );
  INVX4 U765 ( .A(n124), .Y(n530) );
  ACHCINX2 U766 ( .CIN(n45), .A(n61), .B(n735), .CO(n516) );
  AOI221X2 U767 ( .A0(n160), .A1(n530), .B0(n517), .B1(n516), .C0(n515), .Y(
        n522) );
  NAND2X2 U768 ( .A(n151), .B(n134), .Y(n519) );
  OAI221X2 U769 ( .A0(n253), .A1(n169), .B0(n95), .B1(n253), .C0(n257), .Y(
        n520) );
  ACHCONX2 U770 ( .A(n118), .B(n45), .CI(n84), .CON(n528) );
  OAI221X2 U771 ( .A0(n730), .A1(n161), .B0(n539), .B1(n540), .C0(n538), .Y(
        n635) );
  OA22X4 U772 ( .A0(net54867), .A1(n557), .B0(net54705), .B1(a5_r[5]), .Y(n543) );
  AO21X4 U773 ( .A0(n717), .A1(n574), .B0(n602), .Y(n577) );
  NAND2X2 U774 ( .A(n575), .B(n133), .Y(n576) );
  AOI32X2 U775 ( .A0(n578), .A1(n577), .A2(n576), .B0(n43), .B1(n608), .Y(n582) );
  OAI211X2 U776 ( .A0(n87), .A1(n590), .B0(n256), .C0(n592), .Y(n595) );
  AO22X4 U777 ( .A0(n87), .A1(n590), .B0(n589), .B1(n725), .Y(n591) );
  NAND2X2 U778 ( .A(n714), .B(n148), .Y(n609) );
  AO22X4 U779 ( .A0(n131), .A1(n106), .B0(n723), .B1(n602), .Y(n604) );
  OAI221X2 U780 ( .A0(n723), .A1(n606), .B0(n605), .B1(n604), .C0(n603), .Y(
        n611) );
  OAI221X2 U781 ( .A0(n615), .A1(n614), .B0(n719), .B1(n32), .C0(n613), .Y(
        n627) );
  AOI211X2 U782 ( .A0(n153), .A1(n652), .B0(n747), .C0(b1_r[0]), .Y(n637) );
  OA22X4 U783 ( .A0(n756), .A1(b1_r[4]), .B0(n754), .B1(n650), .Y(n649) );
  OA22X4 U784 ( .A0(n737), .A1(b5_r[6]), .B0(n742), .B1(b5_r[5]), .Y(n651) );
  NAND2X2 U785 ( .A(n147), .B(b5_r[3]), .Y(n663) );
  NAND2X2 U786 ( .A(n753), .B(b5_r[6]), .Y(n671) );
  NAND2X2 U787 ( .A(n745), .B(b5_r[5]), .Y(n675) );
  OA22X4 U788 ( .A0(n746), .A1(n251), .B0(n251), .B1(b9_r[6]), .Y(n677) );
  AOI222X2 U789 ( .A0(n680), .A1(n679), .B0(n678), .B1(n677), .C0(n176), .C1(
        n676), .Y(n681) );
endmodule


module conv ( i_clk, i_rst_n, i_data, i_isFirst, i_input_done, o_out_valid, 
        o_out_data );
  input [31:0] i_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_isFirst, i_input_done;
  output o_out_valid;
  wire   cnt_0_, N56, N57, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         N76, N77, N78, N79, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, N210, N211, N212, N213, N214, N215,
         N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226,
         N227, N228, N229, N230, N231, N232, N233, N234, N235, N236, N237,
         N238, N239, N240, N241, N242, N243, N244, N245, N246, N247, N248,
         N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259,
         N260, N261, N262, N263, N264, N265, N266, N267, N268, N269, N270,
         N271, N272, N273, N274, N275, N276, N277, N278, N279, N280, N281,
         N282, N283, N284, N285, N286, N287, n27, n28, n29, n83, n86, n90, N30,
         N290, N288, N2710, N26, N25, N24, N23, N22, N40, N39, N38, N37, N36,
         N35, N34, N33, N32, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n2210, n2310, n2410, n2510, n2610, n300,
         n310, n320, n330, n340, n350, n360, n370, n380, n390, n400, n410, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n560,
         n570, n58, n59, n60, n61, n62, n63, n64, n65, n660, n670, n680, n690,
         n700, n710, n720, n730, n740, n750, n760, n770, n780, n790, n80, n81,
         n82, n84, n85, n87, n88, n89, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n1240, n1250, n1260, n1270, n1280, n1290, n1300, n1310,
         n1320, n1330, n1340, n1350, n1360, n1370, n1380, n1390, n1400, n1410,
         n1420, n1430, n1440, n1450, n146, n147, n148, n149, n150, n151,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
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
  wire   [1:0] ns;
  wire   [16:3] conv_r;

  DFFRX4 cnt_reg_0_ ( .D(N56), .CK(i_clk), .RN(n700), .Q(cnt_0_), .QN(n28) );
  conv_DW01_add_8 add_79 ( .A(conv_4_r), .SUM(conv_4_w), .\B[10] (
        data_bcd_4_r[10]), .\B[9] (data_bcd_4_r[9]), .\B[8] (data_bcd_4_r[8]), 
        .\B[7] (data_bcd_4_r[7]), .\B[6] (data_bcd_4_r[6]), .\B[5] (
        data_bcd_4_r[5]), .\B[4] (data_bcd_4_r[4]), .\B[3] (data_bcd_4_r[3]), 
        .\B[2] (data_bcd_4_r[2]), .\B[1] (data_bcd_4_r[1]), .\B[0] (
        data_bcd_4_r[0]) );
  conv_DW01_add_9 add_78 ( .A({conv_3_r[16:13], n53, conv_3_r[11:0]}), .SUM(
        conv_3_w), .\B[10] (data_abc_3_r[10]), .\B[9] (data_abc_3_r[9]), 
        .\B[8] (data_abc_3_r[8]), .\B[7] (data_abc_3_r[7]), .\B[6] (
        data_abc_3_r[6]), .\B[5] (data_abc_3_r[5]), .\B[4] (data_abc_3_r[4]), 
        .\B[3] (data_abc_3_r[3]), .\B[2] (data_abc_3_r[2]), .\B[1] (
        data_abc_3_r[1]), .\B[0] (data_abc_3_r[0]) );
  conv_DW01_add_10 add_77 ( .A({conv_2_r[16:13], n54, conv_2_r[11:5], n62, 
        conv_2_r[3:0]}), .SUM(conv_2_w), .\B[10] (data_bcd_2_r[10]), .\B[9] (
        data_bcd_2_r[9]), .\B[8] (data_bcd_2_r[8]), .\B[7] (data_bcd_2_r[7]), 
        .\B[6] (data_bcd_2_r[6]), .\B[5] (data_bcd_2_r[5]), .\B[4] (
        data_bcd_2_r[4]), .\B[3] (data_bcd_2_r[3]), .\B[2] (data_bcd_2_r[2]), 
        .\B[1] (data_bcd_2_r[1]), .\B[0] (data_bcd_2_r[0]) );
  conv_DW01_add_11 add_76 ( .A(conv_1_r), .SUM(conv_1_w), .\B[10] (
        data_abc_1_r[10]), .\B[9] (data_abc_1_r[9]), .\B[8] (data_abc_1_r[8]), 
        .\B[7] (data_abc_1_r[7]), .\B[6] (data_abc_1_r[6]), .\B[5] (
        data_abc_1_r[5]), .\B[4] (data_abc_1_r[4]), .\B[3] (data_abc_1_r[3]), 
        .\B[2] (data_abc_1_r[2]), .\B[1] (data_abc_1_r[1]), .\B[0] (
        data_abc_1_r[0]) );
  conv_DW01_inc_1 add_135_round ( .\A[13] (conv_r[16]), .\A[12] (conv_r[15]), 
        .\A[11] (conv_r[14]), .\A[10] (conv_r[13]), .\A[9] (conv_r[12]), 
        .\A[8] (conv_r[11]), .\A[7] (conv_r[10]), .\A[6] (conv_r[9]), .\A[5] (
        conv_r[8]), .\A[4] (conv_r[7]), .\A[3] (conv_r[6]), .\A[2] (conv_r[5]), 
        .\A[1] (conv_r[4]), .\A[0] (conv_r[3]), .\SUM[14] (N79), .\SUM[13] (
        N78), .\SUM[12] (N77), .\SUM[11] (N76), .\SUM[10] (N75), .\SUM[9] (N74), .\SUM[8] (N73), .\SUM[7] (N72), .\SUM[6] (N71), .\SUM[5] (N70), .\SUM[4] (
        N69), .\SUM[3] (N68), .\SUM[2] (N67), .\SUM[1] (N66) );
  conv_DW01_add_13 add_0_root_add_0_root_add_73_2 ( .SUM(data_abc_w), .\A[8] (
        i_data[15]), .\A[7] (i_data[14]), .\A[6] (i_data[13]), .\A[5] (
        i_data[12]), .\A[4] (n48), .\A[3] (i_data[10]), .\A[2] (n61), .\A[1] (
        n59), .\B[8] (N30), .\B[7] (N290), .\B[6] (N288), .\B[5] (N2710), 
        .\B[4] (N26), .\B[3] (N25), .\B[2] (N24), .\B[1] (N23), .\B[0] (N22)
         );
  conv_DW01_add_15 add_0_root_add_0_root_add_74_2 ( .SUM(data_bcd_w), .\A[8] (
        i_data[23]), .\A[7] (i_data[22]), .\A[6] (i_data[21]), .\A[5] (
        i_data[20]), .\A[4] (i_data[19]), .\A[3] (i_data[18]), .\A[2] (
        i_data[17]), .\A[1] (i_data[16]), .\B[8] (N40), .\B[7] (N39), .\B[6] (
        N38), .\B[5] (N37), .\B[4] (N36), .\B[3] (N35), .\B[2] (N34), .\B[1] (
        N33), .\B[0] (N32) );
  conv_DW01_add_20 add_1_root_add_0_root_add_74_2 ( .\A[7] (i_data[31]), 
        .\A[6] (i_data[30]), .\A[5] (i_data[29]), .\A[4] (i_data[28]), 
        .\A[3] (i_data[27]), .\A[2] (i_data[26]), .\A[1] (i_data[25]), 
        .\A[0] (i_data[24]), .\B[7] (i_data[15]), .\B[6] (i_data[14]), 
        .\B[5] (i_data[13]), .\B[4] (i_data[12]), .\B[3] (i_data[11]), 
        .\B[2] (i_data[10]), .\B[1] (i_data[9]), .\B[0] (i_data[8]), 
        .\SUM[8] (N40), .\SUM[7] (N39), .\SUM[6] (N38), .\SUM[5] (N37), 
        .\SUM[4] (N36), .\SUM[3] (N35), .\SUM[2] (N34), .\SUM[1] (N33), 
        .\SUM[0] (N32) );
  conv_DW01_add_22 add_1_root_add_0_root_add_73_2 ( .\A[7] (i_data[7]), 
        .\A[6] (i_data[6]), .\A[5] (i_data[5]), .\A[4] (i_data[4]), .\A[3] (
        i_data[3]), .\A[2] (i_data[2]), .\A[1] (i_data[1]), .\A[0] (i_data[0]), 
        .\B[7] (i_data[23]), .\B[6] (i_data[22]), .\B[5] (i_data[21]), 
        .\B[4] (i_data[20]), .\B[3] (i_data[19]), .\B[2] (i_data[18]), 
        .\B[1] (i_data[17]), .\B[0] (i_data[16]), .\SUM[8] (N30), .\SUM[7] (
        N290), .\SUM[6] (N288), .\SUM[5] (N2710), .\SUM[4] (N26), .\SUM[3] (
        N25), .\SUM[2] (N24), .\SUM[1] (N23), .\SUM[0] (N22) );
  DFFRX1 data_bcd_r_reg_0_ ( .D(data_bcd_w[0]), .CK(i_clk), .RN(n690), .Q(n46)
         );
  DFFRX1 data_abc_r_reg_0_ ( .D(data_abc_w[0]), .CK(i_clk), .RN(n720), .Q(n45)
         );
  DFFRX1 o_out_valid_ready_r_reg ( .D(N287), .CK(i_clk), .RN(n700), .Q(
        o_out_valid) );
  DFFRX1 o_out_data_ready_r_reg_0_ ( .D(N66), .CK(i_clk), .RN(n790), .Q(
        o_out_data[0]) );
  DFFRX1 o_out_data_ready_r_reg_1_ ( .D(N67), .CK(i_clk), .RN(n790), .Q(
        o_out_data[1]) );
  DFFRX1 o_out_data_ready_r_reg_2_ ( .D(N68), .CK(i_clk), .RN(n80), .Q(
        o_out_data[2]) );
  DFFRXL o_out_data_ready_r_reg_7_ ( .D(N73), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[7]) );
  DFFRX1 data_bcd_r_reg_4_ ( .D(data_bcd_w[4]), .CK(i_clk), .RN(n690), .Q(
        n2610) );
  DFFRX1 data_bcd_r_reg_3_ ( .D(data_bcd_w[3]), .CK(i_clk), .RN(n690), .Q(n44)
         );
  DFFRX1 data_bcd_r_reg_2_ ( .D(data_bcd_w[2]), .CK(i_clk), .RN(n690), .Q(
        n2510) );
  DFFRX1 data_bcd_r_reg_1_ ( .D(data_bcd_w[1]), .CK(i_clk), .RN(n690), .Q(n11)
         );
  DFFRX1 data_abc_r_reg_5_ ( .D(data_abc_w[5]), .CK(i_clk), .RN(n710), .Q(
        n2210) );
  DFFRX1 data_abc_r_reg_3_ ( .D(data_abc_w[3]), .CK(i_clk), .RN(n710), .Q(n21)
         );
  DFFRX1 data_abc_r_reg_2_ ( .D(data_abc_w[2]), .CK(i_clk), .RN(n710), .Q(n400) );
  DFFRX1 data_abc_r_reg_1_ ( .D(data_abc_w[1]), .CK(i_clk), .RN(n720), .Q(
        n2410) );
  DFFRX1 conv_4_r_reg_16_ ( .D(N286), .CK(i_clk), .RN(n780), .Q(conv_4_r[16])
         );
  DFFRX1 conv_2_r_reg_16_ ( .D(N252), .CK(i_clk), .RN(n790), .Q(conv_2_r[16])
         );
  DFFRX1 i_input_done_r_reg ( .D(i_input_done), .CK(i_clk), .RN(n700), .Q(n380), .QN(n29) );
  DFFRX1 conv_4_r_reg_15_ ( .D(N285), .CK(i_clk), .RN(n780), .Q(conv_4_r[15]), 
        .QN(n390) );
  DFFRX1 conv_1_r_reg_14_ ( .D(N233), .CK(i_clk), .RN(n750), .Q(conv_1_r[14])
         );
  DFFRX1 conv_4_r_reg_14_ ( .D(N284), .CK(i_clk), .RN(n780), .Q(conv_4_r[14])
         );
  DFFRX1 conv_1_r_reg_15_ ( .D(N234), .CK(i_clk), .RN(n750), .Q(conv_1_r[15]), 
        .QN(n19) );
  DFFRX1 conv_3_r_reg_15_ ( .D(N268), .CK(i_clk), .RN(n790), .Q(conv_3_r[15]), 
        .QN(n108) );
  DFFRX1 data_abc_1_r_reg_7_ ( .D(N131), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[7]) );
  DFFRX1 data_bcd_4_r_reg_7_ ( .D(N215), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[7]) );
  DFFRX1 data_abc_3_r_reg_7_ ( .D(N204), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[7]) );
  DFFRX1 conv_1_r_reg_1_ ( .D(N220), .CK(i_clk), .RN(n750), .Q(conv_1_r[1]) );
  DFFRX1 data_abc_1_r_reg_3_ ( .D(N127), .CK(i_clk), .RN(n730), .Q(
        data_abc_1_r[3]) );
  DFFRX1 conv_4_r_reg_13_ ( .D(N283), .CK(i_clk), .RN(n780), .Q(conv_4_r[13]), 
        .QN(n13) );
  DFFRX1 data_abc_1_r_reg_8_ ( .D(N132), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[8]) );
  DFFRX1 data_abc_1_r_reg_9_ ( .D(N133), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[9]) );
  DFFRX1 data_abc_3_r_reg_9_ ( .D(N206), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[9]) );
  DFFRX1 conv_4_r_reg_11_ ( .D(N281), .CK(i_clk), .RN(n780), .Q(conv_4_r[11])
         );
  DFFRX2 cnt_reg_1_ ( .D(N57), .CK(i_clk), .RN(n700), .Q(n660), .QN(n27) );
  DFFRX2 conv_3_r_reg_5_ ( .D(N258), .CK(i_clk), .RN(n770), .Q(conv_3_r[5]), 
        .QN(n16) );
  DFFRX2 conv_3_r_reg_11_ ( .D(N264), .CK(i_clk), .RN(n770), .Q(conv_3_r[11])
         );
  DFFRX2 o_out_data_ready_r_reg_5_ ( .D(N71), .CK(i_clk), .RN(n80), .Q(
        o_out_data[5]) );
  DFFRX2 o_out_data_ready_r_reg_4_ ( .D(N70), .CK(i_clk), .RN(n80), .Q(
        o_out_data[4]) );
  DFFRX2 conv_4_r_reg_8_ ( .D(N278), .CK(i_clk), .RN(n770), .Q(conv_4_r[8]) );
  DFFRX2 conv_1_r_reg_8_ ( .D(N227), .CK(i_clk), .RN(n760), .Q(conv_1_r[8]) );
  DFFRX2 conv_4_r_reg_5_ ( .D(N275), .CK(i_clk), .RN(n770), .Q(conv_4_r[5]), 
        .QN(n320) );
  DFFRX2 data_bcd_4_r_reg_5_ ( .D(N213), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[5]) );
  DFFRX2 data_bcd_4_r_reg_4_ ( .D(N212), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[4]) );
  DFFRX2 conv_4_r_reg_4_ ( .D(N274), .CK(i_clk), .RN(n750), .Q(conv_4_r[4]) );
  DFFRHQX1 cs_reg_0_ ( .D(ns[0]), .CK(i_clk), .RN(n700), .Q(n63) );
  DFFRX2 o_out_data_ready_r_reg_3_ ( .D(N69), .CK(i_clk), .RN(n80), .Q(
        o_out_data[3]) );
  DFFRX2 data_bcd_4_r_reg_6_ ( .D(N214), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[6]) );
  DFFRX2 conv_4_r_reg_6_ ( .D(N276), .CK(i_clk), .RN(n770), .Q(conv_4_r[6]) );
  DFFRX2 conv_1_r_reg_6_ ( .D(N225), .CK(i_clk), .RN(n760), .Q(conv_1_r[6]) );
  DFFRX2 conv_2_r_reg_10_ ( .D(N246), .CK(i_clk), .RN(n780), .Q(conv_2_r[10])
         );
  DFFRX2 conv_2_r_reg_5_ ( .D(N241), .CK(i_clk), .RN(n80), .Q(conv_2_r[5]), 
        .QN(n350) );
  DFFRX2 conv_1_r_reg_13_ ( .D(N232), .CK(i_clk), .RN(n740), .Q(conv_1_r[13]), 
        .QN(n360) );
  DFFRHQX1 conv_2_r_reg_4_ ( .D(N240), .CK(i_clk), .RN(n80), .Q(n62) );
  DFFRX2 data_bcd_2_r_reg_6_ ( .D(N141), .CK(i_clk), .RN(n720), .Q(
        data_bcd_2_r[6]) );
  DFFRX2 data_bcd_4_r_reg_1_ ( .D(N209), .CK(i_clk), .RN(n720), .Q(
        data_bcd_4_r[1]) );
  DFFRX2 conv_2_r_reg_13_ ( .D(N249), .CK(i_clk), .RN(n790), .Q(conv_2_r[13]), 
        .QN(n340) );
  DFFRX2 conv_2_r_reg_14_ ( .D(N250), .CK(i_clk), .RN(n790), .Q(conv_2_r[14])
         );
  DFFRX2 conv_2_r_reg_2_ ( .D(N238), .CK(i_clk), .RN(n80), .Q(conv_2_r[2]) );
  DFFRX2 conv_4_r_reg_9_ ( .D(N279), .CK(i_clk), .RN(n780), .Q(conv_4_r[9]), 
        .QN(n330) );
  DFFRX2 conv_1_r_reg_5_ ( .D(N224), .CK(i_clk), .RN(n760), .Q(conv_1_r[5]), 
        .QN(n17) );
  DFFRX2 conv_2_r_reg_0_ ( .D(N236), .CK(i_clk), .RN(n80), .Q(conv_2_r[0]) );
  DFFRX2 data_bcd_2_r_reg_0_ ( .D(N135), .CK(i_clk), .RN(n710), .Q(
        data_bcd_2_r[0]) );
  DFFRX2 conv_2_r_reg_3_ ( .D(N239), .CK(i_clk), .RN(n80), .Q(conv_2_r[3]) );
  DFFRX2 conv_4_r_reg_10_ ( .D(N280), .CK(i_clk), .RN(n780), .Q(conv_4_r[10])
         );
  DFFRX2 conv_3_r_reg_9_ ( .D(N262), .CK(i_clk), .RN(n770), .Q(conv_3_r[9]), 
        .QN(n15) );
  DFFRX2 conv_1_r_reg_4_ ( .D(N223), .CK(i_clk), .RN(n760), .Q(conv_1_r[4]) );
  DFFRX2 data_abc_3_r_reg_1_ ( .D(N198), .CK(i_clk), .RN(n750), .Q(
        data_abc_3_r[1]) );
  DFFRX2 conv_3_r_reg_0_ ( .D(N253), .CK(i_clk), .RN(n760), .Q(conv_3_r[0]) );
  DFFRX2 data_abc_3_r_reg_0_ ( .D(N197), .CK(i_clk), .RN(n750), .Q(
        data_abc_3_r[0]) );
  DFFRX2 conv_2_r_reg_9_ ( .D(N245), .CK(i_clk), .RN(n780), .Q(conv_2_r[9]), 
        .QN(n310) );
  DFFRX2 conv_3_r_reg_8_ ( .D(N261), .CK(i_clk), .RN(n770), .Q(conv_3_r[8]) );
  DFFRX2 conv_1_r_reg_9_ ( .D(N228), .CK(i_clk), .RN(n760), .Q(conv_1_r[9]), 
        .QN(n14) );
  DFFRX2 conv_3_r_reg_3_ ( .D(N256), .CK(i_clk), .RN(n760), .Q(conv_3_r[3]) );
  DFFRX2 conv_4_r_reg_1_ ( .D(N271), .CK(i_clk), .RN(n750), .Q(conv_4_r[1]) );
  DFFRX2 conv_3_r_reg_6_ ( .D(N259), .CK(i_clk), .RN(n770), .Q(conv_3_r[6]) );
  DFFRX2 conv_3_r_reg_2_ ( .D(N255), .CK(i_clk), .RN(n760), .Q(conv_3_r[2]) );
  DFFRX2 data_abc_3_r_reg_2_ ( .D(N199), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[2]) );
  DFFRX2 conv_4_r_reg_0_ ( .D(N270), .CK(i_clk), .RN(n750), .Q(conv_4_r[0]) );
  DFFRX2 data_bcd_4_r_reg_0_ ( .D(N208), .CK(i_clk), .RN(n720), .Q(
        data_bcd_4_r[0]) );
  DFFRX2 conv_3_r_reg_10_ ( .D(N263), .CK(i_clk), .RN(n770), .Q(conv_3_r[10])
         );
  DFFRX2 conv_1_r_reg_2_ ( .D(N221), .CK(i_clk), .RN(n760), .Q(conv_1_r[2]) );
  DFFRX2 conv_1_r_reg_7_ ( .D(N226), .CK(i_clk), .RN(n760), .Q(conv_1_r[7]) );
  DFFRX2 data_abc_1_r_reg_1_ ( .D(N125), .CK(i_clk), .RN(n730), .Q(
        data_abc_1_r[1]) );
  DFFRX2 data_abc_3_r_reg_10_ ( .D(N207), .CK(i_clk), .RN(n720), .Q(
        data_abc_3_r[10]) );
  DFFRX2 conv_4_r_reg_3_ ( .D(N273), .CK(i_clk), .RN(n750), .Q(conv_4_r[3]) );
  DFFRX2 conv_1_r_reg_0_ ( .D(N219), .CK(i_clk), .RN(n750), .Q(conv_1_r[0]) );
  DFFRX2 data_abc_1_r_reg_0_ ( .D(N124), .CK(i_clk), .RN(n730), .Q(
        data_abc_1_r[0]) );
  DFFRX2 conv_2_r_reg_8_ ( .D(N244), .CK(i_clk), .RN(n780), .Q(conv_2_r[8]) );
  DFFRX2 data_abc_r_reg_7_ ( .D(data_abc_w[7]), .CK(i_clk), .RN(n690), .Q(
        n2310) );
  DFFRX2 conv_4_r_reg_2_ ( .D(N272), .CK(i_clk), .RN(n750), .Q(conv_4_r[2]) );
  DFFRX2 data_bcd_4_r_reg_2_ ( .D(N210), .CK(i_clk), .RN(n720), .Q(
        data_bcd_4_r[2]) );
  DFFRX2 data_bcd_2_r_reg_4_ ( .D(N139), .CK(i_clk), .RN(n700), .Q(
        data_bcd_2_r[4]) );
  DFFRX2 data_bcd_2_r_reg_5_ ( .D(N140), .CK(i_clk), .RN(n720), .Q(
        data_bcd_2_r[5]) );
  DFFRX2 data_abc_1_r_reg_2_ ( .D(N126), .CK(i_clk), .RN(n730), .Q(
        data_abc_1_r[2]) );
  DFFRX2 data_abc_3_r_reg_6_ ( .D(N203), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[6]) );
  DFFRX2 data_bcd_2_r_reg_1_ ( .D(N136), .CK(i_clk), .RN(n700), .Q(
        data_bcd_2_r[1]) );
  DFFRX2 conv_2_r_reg_7_ ( .D(N243), .CK(i_clk), .RN(n780), .Q(conv_2_r[7]) );
  DFFRX2 conv_1_r_reg_3_ ( .D(N222), .CK(i_clk), .RN(n760), .Q(conv_1_r[3]) );
  DFFRX2 data_abc_r_reg_8_ ( .D(data_abc_w[8]), .CK(i_clk), .RN(n690), .Q(n410) );
  DFFRX2 conv_2_r_reg_15_ ( .D(N251), .CK(i_clk), .RN(n790), .Q(conv_2_r[15]), 
        .QN(n370) );
  DFFRX2 conv_1_r_reg_10_ ( .D(N229), .CK(i_clk), .RN(n740), .Q(conv_1_r[10]), 
        .QN(n49) );
  DFFRX2 conv_4_r_reg_7_ ( .D(N277), .CK(i_clk), .RN(n770), .Q(conv_4_r[7]) );
  DFFRX2 data_bcd_2_r_reg_2_ ( .D(N137), .CK(i_clk), .RN(n700), .Q(
        data_bcd_2_r[2]) );
  DFFRX2 o_out_data_ready_r_reg_8_ ( .D(N74), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[8]) );
  DFFRX2 conv_3_r_reg_7_ ( .D(N260), .CK(i_clk), .RN(n770), .Q(conv_3_r[7]) );
  DFFRX2 data_bcd_4_r_reg_3_ ( .D(N211), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[3]) );
  DFFRHQX1 cs_reg_1_ ( .D(ns[1]), .CK(i_clk), .RN(n700), .Q(n560) );
  DFFRX2 data_abc_3_r_reg_5_ ( .D(N202), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[5]) );
  DFFRX2 conv_1_r_reg_11_ ( .D(N230), .CK(i_clk), .RN(n740), .Q(conv_1_r[11])
         );
  DFFRX2 data_bcd_r_reg_8_ ( .D(data_bcd_w[8]), .CK(i_clk), .RN(n700), .Q(n100) );
  DFFRX2 conv_1_r_reg_16_ ( .D(N235), .CK(i_clk), .RN(n750), .Q(conv_1_r[16])
         );
  DFFRHQX4 o_out_data_ready_r_reg_9_ ( .D(N75), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[9]) );
  DFFRX2 conv_4_r_reg_12_ ( .D(N282), .CK(i_clk), .RN(n780), .Q(conv_4_r[12])
         );
  DFFRX2 conv_3_r_reg_16_ ( .D(N269), .CK(i_clk), .RN(n80), .Q(conv_3_r[16])
         );
  DFFRX2 o_out_data_ready_r_reg_10_ ( .D(N76), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[10]) );
  DFFRX2 data_abc_1_r_reg_10_ ( .D(N134), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[10]) );
  DFFRX2 conv_3_r_reg_13_ ( .D(N266), .CK(i_clk), .RN(n790), .Q(conv_3_r[13]), 
        .QN(n18) );
  DFFRHQX1 conv_2_r_reg_12_ ( .D(N248), .CK(i_clk), .RN(n790), .Q(n54) );
  DFFRHQX1 conv_3_r_reg_12_ ( .D(N265), .CK(i_clk), .RN(n790), .Q(n53) );
  DFFRX2 data_bcd_2_r_reg_10_ ( .D(N145), .CK(i_clk), .RN(n720), .Q(
        data_bcd_2_r[10]) );
  DFFRX2 data_abc_3_r_reg_8_ ( .D(N205), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[8]) );
  DFFRX2 conv_3_r_reg_14_ ( .D(N267), .CK(i_clk), .RN(n790), .Q(conv_3_r[14])
         );
  DFFRX2 data_bcd_4_r_reg_10_ ( .D(N218), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[10]) );
  DFFRX2 data_abc_1_r_reg_4_ ( .D(N128), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[4]) );
  DFFRX2 data_abc_1_r_reg_5_ ( .D(N129), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[5]) );
  DFFRX2 data_bcd_2_r_reg_3_ ( .D(N138), .CK(i_clk), .RN(n700), .Q(
        data_bcd_2_r[3]) );
  DFFRX2 o_out_data_ready_r_reg_12_ ( .D(N78), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[12]) );
  DFFRX2 data_bcd_r_reg_7_ ( .D(data_bcd_w[7]), .CK(i_clk), .RN(n690), .Q(n42)
         );
  DFFRX2 conv_2_r_reg_11_ ( .D(N247), .CK(i_clk), .RN(n790), .Q(conv_2_r[11])
         );
  DFFRX2 data_abc_3_r_reg_3_ ( .D(N200), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[3]) );
  DFFRX2 data_abc_3_r_reg_4_ ( .D(N201), .CK(i_clk), .RN(n730), .Q(
        data_abc_3_r[4]) );
  DFFRHQX4 data_abc_r_reg_6_ ( .D(data_abc_w[6]), .CK(i_clk), .RN(n690), .Q(
        n102) );
  DFFRX2 conv_3_r_reg_1_ ( .D(N254), .CK(i_clk), .RN(n760), .Q(conv_3_r[1]) );
  DFFRX1 data_bcd_r_reg_9_ ( .D(data_bcd_w[9]), .CK(i_clk), .RN(n700), .Q(n99)
         );
  DFFRX1 data_abc_1_r_reg_6_ ( .D(N130), .CK(i_clk), .RN(n710), .Q(
        data_abc_1_r[6]) );
  DFFRX2 data_bcd_r_reg_5_ ( .D(data_bcd_w[5]), .CK(i_clk), .RN(n690), .Q(n47)
         );
  DFFRX1 data_bcd_r_reg_6_ ( .D(data_bcd_w[6]), .CK(i_clk), .RN(n690), .Q(n20)
         );
  DFFRX2 conv_3_r_reg_4_ ( .D(N257), .CK(i_clk), .RN(n770), .Q(conv_3_r[4]) );
  DFFRX2 conv_2_r_reg_6_ ( .D(N242), .CK(i_clk), .RN(n80), .Q(conv_2_r[6]) );
  DFFRX1 o_out_data_ready_r_reg_13_ ( .D(N79), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[13]) );
  DFFRX1 o_out_data_ready_r_reg_6_ ( .D(N72), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[6]) );
  DFFRX2 conv_2_r_reg_1_ ( .D(N237), .CK(i_clk), .RN(n80), .Q(conv_2_r[1]) );
  DFFRHQX2 o_out_data_ready_r_reg_11_ ( .D(N77), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[11]) );
  DFFRHQX1 data_abc_r_reg_9_ ( .D(data_abc_w[9]), .CK(i_clk), .RN(n690), .Q(
        n101) );
  DFFRX2 conv_1_r_reg_12_ ( .D(N231), .CK(i_clk), .RN(n740), .Q(conv_1_r[12])
         );
  DFFRX2 data_bcd_4_r_reg_8_ ( .D(N216), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[8]) );
  DFFRX2 data_bcd_2_r_reg_8_ ( .D(N143), .CK(i_clk), .RN(n720), .Q(
        data_bcd_2_r[8]) );
  DFFRX2 data_bcd_4_r_reg_9_ ( .D(N217), .CK(i_clk), .RN(n740), .Q(
        data_bcd_4_r[9]) );
  DFFRX2 data_bcd_2_r_reg_9_ ( .D(N144), .CK(i_clk), .RN(n720), .Q(
        data_bcd_2_r[9]) );
  DFFRX2 data_bcd_2_r_reg_7_ ( .D(N142), .CK(i_clk), .RN(n720), .Q(
        data_bcd_2_r[7]) );
  DFFRX2 data_abc_r_reg_4_ ( .D(data_abc_w[4]), .CK(i_clk), .RN(n710), .Q(n43)
         );
  NAND2X4 U3 ( .A(n83), .B(n86), .Y(n90) );
  BUFX12 U4 ( .A(n103), .Y(n9) );
  AND2X4 U5 ( .A(conv_3_w[9]), .B(n82), .Y(N262) );
  AND2X6 U6 ( .A(n81), .B(conv_2_w[15]), .Y(N251) );
  AO22X1 U7 ( .A0(n680), .A1(n42), .B0(n9), .B1(n100), .Y(N216) );
  AO22X2 U8 ( .A0(n680), .A1(n20), .B0(n9), .B1(n42), .Y(N215) );
  AO22X2 U14 ( .A0(n680), .A1(n410), .B0(n9), .B1(n101), .Y(N206) );
  AO22X2 U15 ( .A0(n680), .A1(n100), .B0(n9), .B1(n99), .Y(N217) );
  AO22X2 U16 ( .A0(n680), .A1(n102), .B0(n9), .B1(n2310), .Y(N204) );
  NAND2BX1 U17 ( .AN(n65), .B(conv_1_r[12]), .Y(n117) );
  NAND2BX2 U18 ( .AN(n7), .B(conv_4_r[4]), .Y(n1440) );
  CLKINVX8 U19 ( .A(n1450), .Y(n6) );
  INVX16 U20 ( .A(n6), .Y(n7) );
  NAND2X2 U21 ( .A(n10), .B(n28), .Y(n1450) );
  NAND2BX2 U22 ( .AN(n146), .B(conv_2_r[3]), .Y(n149) );
  NAND2BX2 U23 ( .AN(n146), .B(n62), .Y(n1420) );
  BUFX20 U24 ( .A(n147), .Y(n8) );
  NAND2X6 U25 ( .A(n96), .B(n95), .Y(n147) );
  NAND4X4 U26 ( .A(n1390), .B(n1380), .C(n1370), .D(n1360), .Y(conv_r[6]) );
  NAND2BX4 U27 ( .AN(n65), .B(conv_1_r[6]), .Y(n1380) );
  NAND2BX4 U28 ( .AN(n65), .B(conv_1_r[11]), .Y(n121) );
  NAND2BX4 U29 ( .AN(n65), .B(conv_1_r[3]), .Y(n150) );
  NAND2BX4 U30 ( .AN(n65), .B(conv_1_r[8]), .Y(n1300) );
  INVX3 U31 ( .A(n97), .Y(n103) );
  BUFX8 U32 ( .A(n27), .Y(n10) );
  NAND2BXL U33 ( .AN(n7), .B(conv_4_r[16]), .Y(n107) );
  NAND2BX1 U34 ( .AN(n7), .B(conv_4_r[8]), .Y(n1310) );
  NAND2BXL U35 ( .AN(n7), .B(conv_4_r[10]), .Y(n1260) );
  OAI221X4 U36 ( .A0(n7), .A1(n13), .B0(n65), .B1(n360), .C0(n114), .Y(
        conv_r[13]) );
  CLKBUFX3 U37 ( .A(n670), .Y(n87) );
  INVX3 U38 ( .A(n560), .Y(n570) );
  NAND2BX1 U39 ( .AN(n146), .B(conv_2_r[7]), .Y(n1330) );
  CLKINVX1 U40 ( .A(n63), .Y(n64) );
  NAND2BX1 U41 ( .AN(n8), .B(conv_3_r[11]), .Y(n119) );
  NAND4X2 U42 ( .A(n113), .B(n112), .C(n111), .D(n110), .Y(conv_r[14]) );
  NAND2BX1 U43 ( .AN(n7), .B(conv_4_r[14]), .Y(n113) );
  NAND2BX1 U44 ( .AN(n146), .B(n54), .Y(n116) );
  NAND2BX1 U45 ( .AN(n7), .B(conv_4_r[12]), .Y(n118) );
  NAND4X2 U46 ( .A(n1260), .B(n1250), .C(n1240), .D(n123), .Y(conv_r[10]) );
  NAND2BX1 U47 ( .AN(n146), .B(conv_2_r[10]), .Y(n1240) );
  NAND2X2 U48 ( .A(n560), .B(n64), .Y(n83) );
  CLKBUFX8 U49 ( .A(n12), .Y(n55) );
  NAND2BX1 U50 ( .AN(n146), .B(conv_2_r[6]), .Y(n1370) );
  NAND2BX1 U51 ( .AN(n8), .B(conv_3_r[3]), .Y(n148) );
  OR2X2 U52 ( .A(ns[1]), .B(ns[0]), .Y(n93) );
  AND2X2 U53 ( .A(conv_3_w[14]), .B(n82), .Y(N267) );
  AND2X2 U54 ( .A(conv_2_w[12]), .B(n82), .Y(N248) );
  AND2X2 U55 ( .A(conv_4_w[12]), .B(n85), .Y(N282) );
  AND2X2 U56 ( .A(conv_1_w[16]), .B(n82), .Y(N235) );
  AND2X2 U57 ( .A(conv_1_w[11]), .B(n84), .Y(N230) );
  AND2X2 U58 ( .A(conv_2_w[14]), .B(n81), .Y(N250) );
  AND2X2 U59 ( .A(conv_3_w[11]), .B(n82), .Y(N264) );
  AND2X2 U60 ( .A(conv_4_w[11]), .B(n81), .Y(N281) );
  AND2X4 U61 ( .A(conv_3_w[15]), .B(n81), .Y(N268) );
  AND2X4 U62 ( .A(conv_4_w[14]), .B(n82), .Y(N284) );
  AND2X2 U63 ( .A(conv_2_w[16]), .B(n81), .Y(N252) );
  OAI221X1 U64 ( .A0(n570), .A1(n94), .B0(n29), .B1(n86), .C0(n83), .Y(ns[1])
         );
  CLKMX2X2 U65 ( .A(n89), .B(n83), .S0(n94), .Y(n91) );
  INVX3 U66 ( .A(n65), .Y(n94) );
  CLKBUFX3 U67 ( .A(n300), .Y(n52) );
  CLKBUFX3 U68 ( .A(n300), .Y(n51) );
  AND2X2 U69 ( .A(n98), .B(n570), .Y(n12) );
  CLKBUFX3 U70 ( .A(n670), .Y(n88) );
  INVX6 U71 ( .A(n88), .Y(n82) );
  AND2X2 U72 ( .A(cnt_0_), .B(n570), .Y(n300) );
  INVX6 U73 ( .A(n88), .Y(n81) );
  NAND2BX2 U74 ( .AN(n146), .B(conv_2_r[8]), .Y(n1290) );
  OR2X1 U75 ( .A(n65), .B(n49), .Y(n1250) );
  CLKBUFX2 U76 ( .A(i_data[11]), .Y(n48) );
  INVX6 U77 ( .A(n10), .Y(n96) );
  NAND2BX2 U78 ( .AN(n8), .B(conv_3_r[8]), .Y(n1280) );
  CLKINVX1 U79 ( .A(n570), .Y(n50) );
  NAND2BX1 U80 ( .AN(n7), .B(conv_4_r[6]), .Y(n1390) );
  NAND4X4 U81 ( .A(n1350), .B(n1340), .C(n1330), .D(n1320), .Y(conv_r[7]) );
  NAND2BX1 U82 ( .AN(n7), .B(conv_4_r[7]), .Y(n1350) );
  NAND2BX1 U83 ( .AN(n146), .B(conv_2_r[14]), .Y(n111) );
  NAND2BX1 U84 ( .AN(n8), .B(conv_3_r[10]), .Y(n123) );
  NAND2BX1 U85 ( .AN(n65), .B(conv_1_r[7]), .Y(n1340) );
  NAND4X4 U86 ( .A(n151), .B(n150), .C(n149), .D(n148), .Y(conv_r[3]) );
  NAND2BX1 U87 ( .AN(n7), .B(conv_4_r[3]), .Y(n151) );
  OAI221X4 U88 ( .A0(n7), .A1(n390), .B0(n65), .B1(n19), .C0(n109), .Y(
        conv_r[15]) );
  NAND2BX1 U89 ( .AN(n8), .B(conv_3_r[6]), .Y(n1360) );
  NAND4X4 U90 ( .A(n1440), .B(n1430), .C(n1420), .D(n1410), .Y(conv_r[4]) );
  NAND2BX4 U91 ( .AN(n65), .B(conv_1_r[4]), .Y(n1430) );
  NAND2X2 U92 ( .A(n92), .B(n91), .Y(ns[0]) );
  INVXL U93 ( .A(i_data[8]), .Y(n58) );
  CLKINVX1 U94 ( .A(n58), .Y(n59) );
  INVXL U95 ( .A(i_data[9]), .Y(n60) );
  INVX1 U96 ( .A(n60), .Y(n61) );
  NOR2BX4 U97 ( .AN(n64), .B(n50), .Y(n670) );
  OAI221X4 U98 ( .A0(n7), .A1(n330), .B0(n65), .B1(n14), .C0(n1270), .Y(
        conv_r[9]) );
  AND2X8 U99 ( .A(conv_3_w[16]), .B(n82), .Y(N269) );
  NAND4X4 U100 ( .A(n118), .B(n117), .C(n116), .D(n115), .Y(conv_r[12]) );
  NAND2BX2 U101 ( .AN(n8), .B(conv_3_r[4]), .Y(n1410) );
  NAND2BX1 U102 ( .AN(n7), .B(conv_4_r[11]), .Y(n122) );
  OR2X8 U103 ( .A(n660), .B(n28), .Y(n65) );
  NAND4X4 U104 ( .A(n1310), .B(n1300), .C(n1290), .D(n1280), .Y(conv_r[8]) );
  INVX1 U105 ( .A(n87), .Y(n84) );
  NAND2BX1 U106 ( .AN(n146), .B(conv_2_r[11]), .Y(n120) );
  OA22X4 U107 ( .A0(n146), .A1(n350), .B0(n8), .B1(n16), .Y(n1400) );
  OA22X4 U108 ( .A0(n146), .A1(n340), .B0(n8), .B1(n18), .Y(n114) );
  NAND2X8 U109 ( .A(n28), .B(n96), .Y(n146) );
  NAND2X4 U110 ( .A(n63), .B(n570), .Y(n86) );
  AOI2BB2X1 U111 ( .B0(i_isFirst), .B1(n670), .A0N(n86), .A1N(n380), .Y(n92)
         );
  AND2X2 U112 ( .A(conv_2_w[5]), .B(n85), .Y(N241) );
  AND2X2 U113 ( .A(conv_4_w[4]), .B(n81), .Y(N274) );
  AND2X2 U114 ( .A(conv_3_w[4]), .B(n82), .Y(N257) );
  AND2X2 U115 ( .A(conv_1_w[4]), .B(n81), .Y(N223) );
  AND2X2 U116 ( .A(conv_2_w[4]), .B(n82), .Y(N240) );
  INVXL U117 ( .A(n146), .Y(n98) );
  INVX1 U118 ( .A(n87), .Y(n85) );
  AND2XL U119 ( .A(n93), .B(n28), .Y(N56) );
  AND2XL U120 ( .A(ns[1]), .B(ns[0]), .Y(N287) );
  AND2X1 U121 ( .A(n680), .B(n101), .Y(N207) );
  AND2X1 U122 ( .A(n680), .B(n99), .Y(N218) );
  AND2XL U123 ( .A(n9), .B(n45), .Y(N197) );
  AND2XL U124 ( .A(n9), .B(n46), .Y(N208) );
  AND2XL U125 ( .A(n55), .B(n101), .Y(N134) );
  AND2XL U126 ( .A(n55), .B(n99), .Y(N145) );
  CLKBUFX3 U127 ( .A(i_rst_n), .Y(n790) );
  CLKBUFX3 U128 ( .A(i_rst_n), .Y(n780) );
  CLKBUFX3 U129 ( .A(i_rst_n), .Y(n770) );
  CLKBUFX3 U130 ( .A(i_rst_n), .Y(n760) );
  CLKBUFX3 U131 ( .A(i_rst_n), .Y(n750) );
  CLKBUFX3 U132 ( .A(i_rst_n), .Y(n740) );
  CLKBUFX3 U133 ( .A(i_rst_n), .Y(n730) );
  CLKBUFX3 U134 ( .A(i_rst_n), .Y(n720) );
  CLKBUFX3 U135 ( .A(i_rst_n), .Y(n710) );
  CLKBUFX3 U136 ( .A(i_rst_n), .Y(n700) );
  CLKBUFX3 U137 ( .A(i_rst_n), .Y(n690) );
  CLKBUFX3 U138 ( .A(i_rst_n), .Y(n80) );
  OA21XL U139 ( .A0(n94), .A1(n98), .B0(n93), .Y(N57) );
  AND2X2 U140 ( .A(conv_2_w[13]), .B(n82), .Y(N249) );
  AND2X2 U141 ( .A(conv_3_w[13]), .B(n81), .Y(N266) );
  AND2X2 U142 ( .A(conv_4_w[13]), .B(n82), .Y(N283) );
  AND2X2 U143 ( .A(conv_1_w[13]), .B(n81), .Y(N232) );
  AND2X2 U144 ( .A(conv_4_w[15]), .B(n81), .Y(N285) );
  AND2X2 U145 ( .A(conv_1_w[15]), .B(n82), .Y(N234) );
  AND2X2 U146 ( .A(conv_2_w[9]), .B(n82), .Y(N245) );
  AND2X2 U147 ( .A(conv_4_w[9]), .B(n82), .Y(N279) );
  AND2X2 U148 ( .A(conv_1_w[9]), .B(n84), .Y(N228) );
  AND2X2 U149 ( .A(conv_2_w[10]), .B(n81), .Y(N246) );
  AND2X2 U150 ( .A(conv_3_w[10]), .B(n81), .Y(N263) );
  AND2X2 U151 ( .A(conv_4_w[10]), .B(n81), .Y(N280) );
  AND2X2 U152 ( .A(conv_1_w[10]), .B(n81), .Y(N229) );
  AND2X2 U153 ( .A(conv_3_w[5]), .B(n81), .Y(N258) );
  AND2X2 U154 ( .A(conv_4_w[5]), .B(n82), .Y(N275) );
  AND2X2 U155 ( .A(conv_1_w[5]), .B(n82), .Y(N224) );
  AND2X2 U156 ( .A(conv_2_w[6]), .B(n82), .Y(N242) );
  AND2X2 U157 ( .A(conv_3_w[6]), .B(n85), .Y(N259) );
  AND2X2 U158 ( .A(conv_4_w[6]), .B(n81), .Y(N276) );
  AND2X2 U159 ( .A(conv_1_w[6]), .B(n82), .Y(N225) );
  AND2X2 U160 ( .A(conv_2_w[7]), .B(n81), .Y(N243) );
  AND2X2 U161 ( .A(conv_3_w[7]), .B(n84), .Y(N260) );
  AND2X2 U162 ( .A(conv_4_w[7]), .B(n84), .Y(N277) );
  AND2X2 U163 ( .A(conv_1_w[7]), .B(n85), .Y(N226) );
  AO22X1 U164 ( .A0(n55), .A1(n45), .B0(n51), .B1(n2410), .Y(N125) );
  AO22X1 U165 ( .A0(n55), .A1(n2410), .B0(n51), .B1(n400), .Y(N126) );
  AO22X1 U166 ( .A0(n55), .A1(n400), .B0(n52), .B1(n21), .Y(N127) );
  AO22X1 U167 ( .A0(n55), .A1(n21), .B0(n300), .B1(n43), .Y(N128) );
  AO22X1 U168 ( .A0(n55), .A1(n43), .B0(n300), .B1(n2210), .Y(N129) );
  AO22X1 U169 ( .A0(n55), .A1(n2210), .B0(n52), .B1(n102), .Y(N130) );
  AO22X1 U170 ( .A0(n55), .A1(n102), .B0(n51), .B1(n2310), .Y(N131) );
  AO22X1 U171 ( .A0(n55), .A1(n2310), .B0(n51), .B1(n410), .Y(N132) );
  AO22X1 U172 ( .A0(n55), .A1(n410), .B0(n52), .B1(n101), .Y(N133) );
  AO22X1 U173 ( .A0(n55), .A1(n46), .B0(n52), .B1(n11), .Y(N136) );
  AO22X1 U174 ( .A0(n55), .A1(n11), .B0(n52), .B1(n2510), .Y(N137) );
  AO22X1 U175 ( .A0(n55), .A1(n2510), .B0(n51), .B1(n44), .Y(N138) );
  AO22X1 U176 ( .A0(n55), .A1(n44), .B0(n51), .B1(n2610), .Y(N139) );
  AO22X1 U177 ( .A0(n55), .A1(n2610), .B0(n52), .B1(n47), .Y(N140) );
  AO22X1 U178 ( .A0(n55), .A1(n47), .B0(n51), .B1(n20), .Y(N141) );
  AO22X1 U179 ( .A0(n55), .A1(n20), .B0(n51), .B1(n42), .Y(N142) );
  AO22X1 U180 ( .A0(n55), .A1(n42), .B0(n52), .B1(n100), .Y(N143) );
  AO22X1 U181 ( .A0(n55), .A1(n100), .B0(n52), .B1(n99), .Y(N144) );
  AND2X2 U182 ( .A(conv_2_w[8]), .B(n82), .Y(N244) );
  AND2X2 U183 ( .A(conv_3_w[8]), .B(n82), .Y(N261) );
  AND2X2 U184 ( .A(conv_4_w[8]), .B(n82), .Y(N278) );
  AND2X2 U185 ( .A(conv_1_w[8]), .B(n82), .Y(N227) );
  AO22X1 U186 ( .A0(n680), .A1(n45), .B0(n9), .B1(n2410), .Y(N198) );
  AO22X1 U187 ( .A0(n680), .A1(n2410), .B0(n9), .B1(n400), .Y(N199) );
  AO22X1 U188 ( .A0(n680), .A1(n400), .B0(n9), .B1(n21), .Y(N200) );
  AO22X1 U189 ( .A0(n680), .A1(n21), .B0(n9), .B1(n43), .Y(N201) );
  AO22X1 U190 ( .A0(n680), .A1(n43), .B0(n9), .B1(n2210), .Y(N202) );
  AO22X1 U191 ( .A0(n680), .A1(n2210), .B0(n9), .B1(n102), .Y(N203) );
  AO22X1 U192 ( .A0(n680), .A1(n2310), .B0(n9), .B1(n410), .Y(N205) );
  AO22X1 U193 ( .A0(n680), .A1(n46), .B0(n9), .B1(n11), .Y(N209) );
  AO22X1 U194 ( .A0(n680), .A1(n11), .B0(n9), .B1(n2510), .Y(N210) );
  AO22X1 U195 ( .A0(n680), .A1(n2510), .B0(n9), .B1(n44), .Y(N211) );
  AO22X1 U196 ( .A0(n680), .A1(n44), .B0(n9), .B1(n2610), .Y(N212) );
  AO22X1 U197 ( .A0(n680), .A1(n2610), .B0(n9), .B1(n47), .Y(N213) );
  AO22X1 U198 ( .A0(n680), .A1(n47), .B0(n9), .B1(n20), .Y(N214) );
  NOR2BX4 U199 ( .AN(n90), .B(n8), .Y(n680) );
  AND2X2 U200 ( .A(conv_2_w[3]), .B(n81), .Y(N239) );
  AND2X2 U201 ( .A(conv_3_w[3]), .B(n81), .Y(N256) );
  AND2X2 U202 ( .A(conv_4_w[3]), .B(n81), .Y(N273) );
  AND2X2 U203 ( .A(conv_1_w[3]), .B(n81), .Y(N222) );
  AND2X2 U204 ( .A(conv_3_w[2]), .B(n82), .Y(N255) );
  AND2X2 U205 ( .A(conv_2_w[2]), .B(n82), .Y(N238) );
  AND2X2 U206 ( .A(conv_2_w[1]), .B(n81), .Y(N237) );
  AND2X2 U207 ( .A(conv_4_w[2]), .B(n82), .Y(N272) );
  AND2X2 U208 ( .A(conv_4_w[1]), .B(n81), .Y(N271) );
  AND2X2 U209 ( .A(conv_1_w[2]), .B(n81), .Y(N221) );
  AND2X2 U210 ( .A(conv_1_w[1]), .B(n82), .Y(N220) );
  AND2X2 U211 ( .A(conv_2_w[0]), .B(n82), .Y(N236) );
  AND2X2 U212 ( .A(conv_4_w[0]), .B(n81), .Y(N270) );
  AND2X2 U213 ( .A(conv_1_w[0]), .B(n81), .Y(N219) );
  AND2X2 U214 ( .A(conv_3_w[1]), .B(n82), .Y(N254) );
  AND2X2 U215 ( .A(conv_3_w[0]), .B(n81), .Y(N253) );
  AND2X2 U216 ( .A(n52), .B(n45), .Y(N124) );
  AND2X2 U217 ( .A(n51), .B(n46), .Y(N135) );
  INVX3 U218 ( .A(n28), .Y(n95) );
  NAND2BX1 U219 ( .AN(n8), .B(conv_3_r[7]), .Y(n1320) );
  NAND4X2 U220 ( .A(n122), .B(n121), .C(n120), .D(n119), .Y(conv_r[11]) );
  NAND2BX1 U221 ( .AN(n8), .B(n53), .Y(n115) );
  NAND2XL U222 ( .A(n560), .B(n63), .Y(n89) );
  OA22XL U223 ( .A0(n146), .A1(n370), .B0(n8), .B1(n108), .Y(n109) );
  NAND2BX1 U224 ( .AN(n65), .B(conv_1_r[14]), .Y(n112) );
  NAND2BX1 U225 ( .AN(n8), .B(conv_3_r[14]), .Y(n110) );
  NAND4X1 U226 ( .A(n107), .B(n106), .C(n105), .D(n104), .Y(conv_r[16]) );
  NAND2BX1 U227 ( .AN(n65), .B(conv_1_r[16]), .Y(n106) );
  NAND2BX1 U228 ( .AN(n8), .B(conv_3_r[16]), .Y(n104) );
  NAND2BXL U229 ( .AN(n146), .B(conv_2_r[16]), .Y(n105) );
  NAND2X1 U230 ( .A(n90), .B(n28), .Y(n97) );
  AND2X4 U231 ( .A(conv_4_w[16]), .B(n85), .Y(N286) );
  AND2X4 U232 ( .A(conv_1_w[14]), .B(n82), .Y(N233) );
  AND2X4 U233 ( .A(conv_1_w[12]), .B(n81), .Y(N231) );
  AND2X4 U234 ( .A(conv_2_w[11]), .B(n81), .Y(N247) );
  AND2X4 U235 ( .A(conv_3_w[12]), .B(n84), .Y(N265) );
  OA22X4 U236 ( .A0(n146), .A1(n310), .B0(n8), .B1(n15), .Y(n1270) );
  OAI221X2 U237 ( .A0(n7), .A1(n320), .B0(n65), .B1(n17), .C0(n1400), .Y(
        conv_r[5]) );
endmodule


module conv_DW01_add_22 ( \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , 
        \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , 
        \B[0] , \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , 
        \SUM[2] , \SUM[1] , \SUM[0]  );
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  output \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] , \SUM[0] ;
  wire   n2, n3, n4, n5, n7, n8, n11, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35,
         n37, n38, n40, n41, n44, n45, n48, n50, n51, n54, net52245, net52244,
         net52241, n6, n47, n43, n42, n93, n94, n95, n96, n97;
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
  XNOR2X4 U13 ( .A(n24), .B(n3), .Y(SUM[6]) );
  INVX3 U68 ( .A(n43), .Y(n42) );
  BUFX12 U69 ( .A(net52244), .Y(n94) );
  OAI21X4 U70 ( .A0(n94), .A1(n32), .B0(n33), .Y(n31) );
  NAND2X6 U71 ( .A(B[5]), .B(A[5]), .Y(n30) );
  NOR2X6 U72 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NOR2X8 U73 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NAND2X8 U74 ( .A(B[6]), .B(A[6]), .Y(n23) );
  INVX3 U75 ( .A(n15), .Y(n48) );
  OR2X6 U76 ( .A(n15), .B(n23), .Y(n95) );
  NOR2X4 U77 ( .A(n22), .B(n15), .Y(n13) );
  NOR2X8 U78 ( .A(B[7]), .B(A[7]), .Y(n15) );
  NAND2X6 U79 ( .A(B[3]), .B(A[3]), .Y(n38) );
  NOR2X8 U80 ( .A(B[3]), .B(A[3]), .Y(n37) );
  AOI21X2 U81 ( .A0(n28), .A1(n20), .B0(n21), .Y(n19) );
  INVX6 U82 ( .A(n28), .Y(n26) );
  OAI21X4 U83 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  INVX8 U84 ( .A(n22), .Y(n20) );
  NOR2X8 U85 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NAND2X2 U86 ( .A(n13), .B(n27), .Y(n11) );
  INVX6 U87 ( .A(n27), .Y(n25) );
  NOR2X4 U88 ( .A(n32), .B(n29), .Y(n27) );
  NAND2X2 U89 ( .A(n51), .B(n33), .Y(n5) );
  NAND2X1 U90 ( .A(B[7]), .B(A[7]), .Y(n16) );
  CLKINVX1 U91 ( .A(n23), .Y(n21) );
  NAND2X6 U92 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2X4 U93 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NOR2X6 U94 ( .A(B[1]), .B(A[1]), .Y(n44) );
  NAND2X4 U95 ( .A(B[1]), .B(A[1]), .Y(n45) );
  OR2XL U96 ( .A(B[0]), .B(A[0]), .Y(n93) );
  NAND2X2 U97 ( .A(n50), .B(n30), .Y(n4) );
  INVX3 U98 ( .A(n32), .Y(n51) );
  NAND2BX2 U99 ( .AN(n37), .B(n38), .Y(n6) );
  OAI21X4 U100 ( .A0(n94), .A1(n25), .B0(n26), .Y(n24) );
  NOR2X6 U101 ( .A(n40), .B(n37), .Y(n35) );
  NAND2X8 U102 ( .A(B[0]), .B(A[0]), .Y(n47) );
  AOI2BB1X4 U103 ( .A0N(n94), .A1N(n11), .B0(n97), .Y(n96) );
  OAI21X4 U104 ( .A0(n44), .A1(n47), .B0(n45), .Y(n43) );
  OA21X4 U105 ( .A0(n42), .A1(n40), .B0(n41), .Y(net52241) );
  XOR2X4 U106 ( .A(n42), .B(n7), .Y(SUM[2]) );
  AOI21X4 U107 ( .A0(n43), .A1(n35), .B0(net52245), .Y(net52244) );
  AND2XL U108 ( .A(n93), .B(n47), .Y(SUM[0]) );
  XOR2X1 U109 ( .A(n8), .B(n47), .Y(SUM[1]) );
  XOR2X4 U110 ( .A(net52241), .B(n6), .Y(SUM[3]) );
  NOR2X8 U111 ( .A(B[2]), .B(A[2]), .Y(n40) );
  NAND2BX4 U112 ( .AN(n40), .B(n41), .Y(n7) );
  INVXL U113 ( .A(n29), .Y(n50) );
  INVX3 U114 ( .A(n96), .Y(SUM[8]) );
  OAI21X2 U115 ( .A0(n94), .A1(n18), .B0(n19), .Y(n17) );
  NAND2X4 U116 ( .A(n54), .B(n45), .Y(n8) );
  INVX6 U117 ( .A(n44), .Y(n54) );
  NAND2X4 U118 ( .A(n95), .B(n16), .Y(n14) );
  AO21X4 U119 ( .A0(n28), .A1(n13), .B0(n14), .Y(n97) );
  XNOR2X4 U120 ( .A(n31), .B(n4), .Y(SUM[5]) );
  XOR2X4 U121 ( .A(n94), .B(n5), .Y(SUM[4]) );
  OAI21X4 U122 ( .A0(n37), .A1(n41), .B0(n38), .Y(net52245) );
  NAND2X1 U123 ( .A(n48), .B(n16), .Y(n2) );
  NAND2X1 U124 ( .A(n27), .B(n20), .Y(n18) );
  NAND2X1 U125 ( .A(n20), .B(n23), .Y(n3) );
endmodule


module conv_DW01_add_20 ( \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , 
        \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , 
        \B[0] , \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , 
        \SUM[2] , \SUM[1] , \SUM[0]  );
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  output \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] , \SUM[0] ;
  wire   n2, n3, n5, n6, n7, n8, n11, n13, n14, n15, n16, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n47, n48, n50, n51, n52, n53,
         n54, n93, n94, n95, n96, n97, n98, n99, n101, n102;
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

  INVX12 U68 ( .A(n96), .Y(n102) );
  NAND2X4 U69 ( .A(n53), .B(n41), .Y(n7) );
  NAND2X8 U70 ( .A(B[4]), .B(A[4]), .Y(n33) );
  OAI21X4 U71 ( .A0(n102), .A1(n32), .B0(n33), .Y(n31) );
  XOR2X4 U72 ( .A(n102), .B(n5), .Y(SUM[4]) );
  XOR2X4 U73 ( .A(n42), .B(n7), .Y(SUM[2]) );
  XOR2X4 U74 ( .A(n8), .B(n47), .Y(SUM[1]) );
  INVX4 U75 ( .A(n22), .Y(n20) );
  NAND2X1 U76 ( .A(n27), .B(n13), .Y(n11) );
  AND2X2 U77 ( .A(n50), .B(n30), .Y(n95) );
  NAND2X2 U78 ( .A(n52), .B(n38), .Y(n6) );
  CLKINVX1 U79 ( .A(n23), .Y(n21) );
  NAND2X1 U80 ( .A(n27), .B(n20), .Y(n18) );
  INVX3 U81 ( .A(n40), .Y(n53) );
  NAND2X4 U82 ( .A(B[0]), .B(A[0]), .Y(n47) );
  CLKINVX2 U83 ( .A(n28), .Y(n26) );
  OR2X1 U84 ( .A(B[0]), .B(A[0]), .Y(n93) );
  NAND2X8 U85 ( .A(n94), .B(n45), .Y(n43) );
  NOR2X8 U86 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NAND2X6 U87 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2X4 U88 ( .A(B[1]), .B(A[1]), .Y(n45) );
  NOR2X6 U89 ( .A(B[4]), .B(A[4]), .Y(n32) );
  OAI21X4 U90 ( .A0(n102), .A1(n25), .B0(n26), .Y(n24) );
  NAND2X4 U91 ( .A(n51), .B(n33), .Y(n5) );
  INVX1 U92 ( .A(n44), .Y(n54) );
  OR2X8 U93 ( .A(n44), .B(n47), .Y(n94) );
  AND2X1 U94 ( .A(n93), .B(n47), .Y(SUM[0]) );
  NAND2X4 U95 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NAND2X4 U96 ( .A(B[3]), .B(A[3]), .Y(n38) );
  OR2X6 U97 ( .A(n29), .B(n33), .Y(n99) );
  NOR2X4 U98 ( .A(n37), .B(n40), .Y(n35) );
  NOR2X8 U99 ( .A(B[2]), .B(A[2]), .Y(n40) );
  OAI21X1 U100 ( .A0(n102), .A1(n11), .B0(n101), .Y(SUM[8]) );
  XOR2X4 U101 ( .A(n31), .B(n95), .Y(SUM[5]) );
  INVX4 U102 ( .A(n43), .Y(n42) );
  OA21X4 U103 ( .A0(n102), .A1(n18), .B0(n19), .Y(n98) );
  AOI21X4 U104 ( .A0(n28), .A1(n20), .B0(n21), .Y(n19) );
  NOR2X8 U105 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NAND2X2 U106 ( .A(B[5]), .B(A[5]), .Y(n30) );
  OAI2BB1X4 U107 ( .A0N(n35), .A1N(n43), .B0(n97), .Y(n96) );
  OA21X4 U108 ( .A0(n37), .A1(n41), .B0(n38), .Y(n97) );
  INVX1 U109 ( .A(n27), .Y(n25) );
  NOR2X4 U110 ( .A(n32), .B(n29), .Y(n27) );
  NOR2X8 U111 ( .A(A[1]), .B(B[1]), .Y(n44) );
  XNOR2X4 U112 ( .A(n39), .B(n6), .Y(SUM[3]) );
  NOR2X8 U113 ( .A(B[3]), .B(A[3]), .Y(n37) );
  XNOR2X4 U114 ( .A(n24), .B(n3), .Y(SUM[6]) );
  OAI21X2 U115 ( .A0(n42), .A1(n40), .B0(n41), .Y(n39) );
  XOR2X4 U116 ( .A(n98), .B(n2), .Y(SUM[7]) );
  NAND2X4 U117 ( .A(n99), .B(n30), .Y(n28) );
  AOI21X2 U118 ( .A0(n28), .A1(n13), .B0(n14), .Y(n101) );
  NAND2X1 U119 ( .A(n54), .B(n45), .Y(n8) );
  NAND2X2 U120 ( .A(B[7]), .B(A[7]), .Y(n16) );
  NAND2X1 U121 ( .A(n20), .B(n23), .Y(n3) );
  NAND2X1 U122 ( .A(n48), .B(n16), .Y(n2) );
  CLKINVX1 U123 ( .A(n15), .Y(n48) );
  OAI21X1 U124 ( .A0(n15), .A1(n23), .B0(n16), .Y(n14) );
  NOR2X4 U125 ( .A(B[7]), .B(A[7]), .Y(n15) );
  NOR2X2 U126 ( .A(n22), .B(n15), .Y(n13) );
  INVX1 U127 ( .A(n32), .Y(n51) );
  CLKINVX1 U128 ( .A(n29), .Y(n50) );
  INVX1 U129 ( .A(n37), .Y(n52) );
endmodule


module conv_DW01_add_15 ( SUM, \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [9:0] SUM;
  input \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n2, n4, n5, n6, n7, n8, n9, n11, n13, n14, n15, n16, n18, n19, n20,
         n21, n22, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n51, n52,
         n53, n54, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n112;
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

  OAI21X4 U55 ( .A0(n44), .A1(n47), .B0(n45), .Y(n43) );
  INVX8 U68 ( .A(n22), .Y(n20) );
  NAND2X8 U69 ( .A(n99), .B(n30), .Y(n28) );
  NAND2X2 U70 ( .A(A[4]), .B(B[4]), .Y(n38) );
  CLKINVX2 U71 ( .A(n28), .Y(n26) );
  NOR2X4 U72 ( .A(n40), .B(n37), .Y(n35) );
  AND2X6 U73 ( .A(B[5]), .B(A[5]), .Y(n92) );
  NOR2X8 U74 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX3 U75 ( .A(n32), .Y(n51) );
  NOR2X8 U76 ( .A(n32), .B(n29), .Y(n27) );
  NOR2X6 U77 ( .A(A[5]), .B(B[5]), .Y(n32) );
  NOR2X6 U78 ( .A(B[4]), .B(A[4]), .Y(n37) );
  NOR2X6 U79 ( .A(A[7]), .B(B[7]), .Y(n22) );
  INVX3 U80 ( .A(n27), .Y(n25) );
  INVX4 U81 ( .A(n25), .Y(n96) );
  NAND2X6 U82 ( .A(n98), .B(n92), .Y(n99) );
  NOR2X4 U83 ( .A(n22), .B(n15), .Y(n13) );
  NOR2BX2 U84 ( .AN(n93), .B(B[2]), .Y(n44) );
  CLKINVX1 U85 ( .A(A[2]), .Y(n93) );
  NAND2X2 U86 ( .A(A[1]), .B(B[1]), .Y(n47) );
  XNOR2X1 U87 ( .A(n31), .B(n4), .Y(SUM[6]) );
  NAND2X1 U88 ( .A(n98), .B(n30), .Y(n4) );
  XOR2X1 U89 ( .A(n34), .B(n5), .Y(SUM[5]) );
  NAND2X6 U90 ( .A(n100), .B(n2), .Y(n103) );
  CLKINVX1 U91 ( .A(n40), .Y(n53) );
  INVX3 U92 ( .A(n92), .Y(n33) );
  NAND2X4 U93 ( .A(n96), .B(n13), .Y(n11) );
  NOR2XL U94 ( .A(A[1]), .B(B[1]), .Y(n46) );
  NAND2X1 U95 ( .A(n51), .B(n33), .Y(n5) );
  NOR2X2 U96 ( .A(n34), .B(n25), .Y(n94) );
  BUFX8 U97 ( .A(B[8]), .Y(n104) );
  INVX6 U98 ( .A(n26), .Y(n95) );
  NOR2X8 U99 ( .A(n94), .B(n95), .Y(n109) );
  INVXL U100 ( .A(n37), .Y(n52) );
  NAND2X6 U101 ( .A(n103), .B(n102), .Y(SUM[8]) );
  OR2X8 U102 ( .A(n34), .B(n18), .Y(n97) );
  AND2X8 U103 ( .A(n97), .B(n19), .Y(n110) );
  NAND2X6 U104 ( .A(n27), .B(n20), .Y(n18) );
  CLKINVX8 U105 ( .A(n110), .Y(n100) );
  CLKINVX2 U106 ( .A(n23), .Y(n21) );
  INVX8 U107 ( .A(n29), .Y(n98) );
  OAI21X2 U108 ( .A0(n15), .A1(n23), .B0(n16), .Y(n14) );
  CLKINVX6 U109 ( .A(n107), .Y(SUM[9]) );
  AOI2BB1X4 U110 ( .A0N(n34), .A1N(n11), .B0(n108), .Y(n107) );
  AOI21X4 U111 ( .A0(n20), .A1(n28), .B0(n21), .Y(n19) );
  AO21X4 U112 ( .A0(n28), .A1(n13), .B0(n14), .Y(n108) );
  NAND2X2 U113 ( .A(A[8]), .B(n104), .Y(n16) );
  OAI21X4 U114 ( .A0(n32), .A1(n34), .B0(n33), .Y(n31) );
  INVX8 U115 ( .A(n105), .Y(n34) );
  NOR2X8 U116 ( .A(A[8]), .B(n104), .Y(n15) );
  NAND2X2 U117 ( .A(n48), .B(n16), .Y(n2) );
  XNOR2X4 U118 ( .A(n109), .B(n112), .Y(SUM[7]) );
  NAND2X4 U119 ( .A(n101), .B(n110), .Y(n102) );
  INVX3 U120 ( .A(n2), .Y(n101) );
  OAI21X1 U121 ( .A0(n42), .A1(n40), .B0(n41), .Y(n39) );
  INVX4 U122 ( .A(n43), .Y(n42) );
  NAND2X4 U123 ( .A(A[7]), .B(B[7]), .Y(n23) );
  OA21X4 U124 ( .A0(n37), .A1(n41), .B0(n38), .Y(n106) );
  NOR2X4 U125 ( .A(A[3]), .B(B[3]), .Y(n40) );
  INVX1 U126 ( .A(n9), .Y(SUM[1]) );
  OAI2BB1X4 U127 ( .A0N(n43), .A1N(n35), .B0(n106), .Y(n105) );
  NAND2XL U128 ( .A(n53), .B(n41), .Y(n7) );
  XOR2X1 U129 ( .A(n8), .B(n47), .Y(SUM[2]) );
  NAND2XL U130 ( .A(n54), .B(n45), .Y(n8) );
  INVXL U131 ( .A(n44), .Y(n54) );
  NAND2BXL U132 ( .AN(n46), .B(n47), .Y(n9) );
  XNOR2X1 U133 ( .A(n39), .B(n6), .Y(SUM[4]) );
  NAND2X1 U134 ( .A(n52), .B(n38), .Y(n6) );
  XOR2X1 U135 ( .A(n42), .B(n7), .Y(SUM[3]) );
  CLKINVX1 U136 ( .A(n15), .Y(n48) );
  AND2X2 U137 ( .A(n20), .B(n23), .Y(n112) );
  NAND2X4 U138 ( .A(A[3]), .B(B[3]), .Y(n41) );
  CLKBUFX3 U139 ( .A(B[0]), .Y(SUM[0]) );
  NAND2X2 U140 ( .A(B[6]), .B(A[6]), .Y(n30) );
  NAND2X2 U141 ( .A(A[2]), .B(B[2]), .Y(n45) );
endmodule


module conv_DW01_add_13 ( SUM, \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [9:0] SUM;
  input \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n3, n5, n6, n7, n8, n9, n11, n13, n15, n16, n18, n19, n20, n21, n22,
         n23, n25, n26, n27, n28, n29, n30, n32, n33, n37, n38, n39, n40, n42,
         n43, n44, n45, n46, n47, n48, n51, n52, n53, n54, net52239, net53213,
         net54681, n4, n31, net54964, net52240, n41, n35, n92, n93, n94, n95,
         n96, n97, n98, n99;
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

  OAI21X4 U55 ( .A0(n44), .A1(n47), .B0(n45), .Y(n43) );
  NOR2XL U68 ( .A(A[1]), .B(B[1]), .Y(n46) );
  CLKINVX6 U69 ( .A(n97), .Y(SUM[9]) );
  INVX2 U70 ( .A(n43), .Y(n42) );
  NAND2X6 U71 ( .A(n96), .B(n92), .Y(n98) );
  INVX3 U72 ( .A(n28), .Y(n26) );
  XOR2X2 U73 ( .A(net52239), .B(n5), .Y(SUM[5]) );
  NOR2X6 U74 ( .A(A[7]), .B(B[7]), .Y(n22) );
  AOI21X4 U75 ( .A0(n28), .A1(n20), .B0(n21), .Y(n19) );
  OR2X8 U76 ( .A(B[6]), .B(A[6]), .Y(net53213) );
  NAND2X2 U77 ( .A(A[2]), .B(B[2]), .Y(n45) );
  OA21X2 U78 ( .A0(n15), .A1(n23), .B0(n16), .Y(n92) );
  NAND2X2 U79 ( .A(n27), .B(n13), .Y(n11) );
  NOR2X4 U80 ( .A(n22), .B(n15), .Y(n13) );
  NAND2X6 U81 ( .A(B[7]), .B(A[7]), .Y(n23) );
  AOI2BB1X4 U82 ( .A0N(net52239), .A1N(n11), .B0(n98), .Y(n97) );
  NAND2X6 U83 ( .A(A[5]), .B(B[5]), .Y(n33) );
  NOR2X8 U84 ( .A(A[5]), .B(B[5]), .Y(n32) );
  NAND2X2 U85 ( .A(n28), .B(n13), .Y(n96) );
  BUFX8 U86 ( .A(n40), .Y(net54681) );
  AND2X2 U87 ( .A(n48), .B(n16), .Y(n94) );
  NAND2X1 U88 ( .A(n20), .B(n23), .Y(n3) );
  INVX3 U89 ( .A(n27), .Y(n25) );
  OAI21X2 U90 ( .A0(n42), .A1(net54681), .B0(n41), .Y(n39) );
  INVX1 U91 ( .A(n44), .Y(n54) );
  CLKINVX8 U92 ( .A(n22), .Y(n20) );
  AND2X8 U93 ( .A(n43), .B(n35), .Y(net54964) );
  XOR2X4 U94 ( .A(n93), .B(n94), .Y(SUM[8]) );
  OAI21X4 U95 ( .A0(n18), .A1(net52239), .B0(n19), .Y(n93) );
  OR2X8 U96 ( .A(net52239), .B(n32), .Y(n95) );
  NOR2X6 U97 ( .A(B[4]), .B(A[4]), .Y(n37) );
  INVXL U98 ( .A(n37), .Y(n52) );
  NAND2X2 U99 ( .A(A[4]), .B(B[4]), .Y(n38) );
  NAND2X4 U100 ( .A(A[1]), .B(B[1]), .Y(n47) );
  NAND2X2 U101 ( .A(A[3]), .B(B[3]), .Y(n41) );
  NOR2X4 U102 ( .A(B[3]), .B(A[3]), .Y(n40) );
  CLKINVX2 U103 ( .A(n23), .Y(n21) );
  NAND2X4 U104 ( .A(n95), .B(n33), .Y(n31) );
  NAND2X2 U105 ( .A(n27), .B(n20), .Y(n18) );
  NOR2X6 U106 ( .A(n32), .B(n29), .Y(n27) );
  INVX8 U107 ( .A(net53213), .Y(n29) );
  NOR2X8 U108 ( .A(A[8]), .B(B[8]), .Y(n15) );
  NAND2X1 U109 ( .A(net53213), .B(n30), .Y(n4) );
  NAND2X2 U110 ( .A(B[6]), .B(A[6]), .Y(n30) );
  INVX1 U111 ( .A(n15), .Y(n48) );
  OAI21X4 U112 ( .A0(n37), .A1(n41), .B0(n38), .Y(net52240) );
  NOR2X8 U113 ( .A(net54964), .B(net52240), .Y(net52239) );
  NOR2X4 U114 ( .A(net54681), .B(n37), .Y(n35) );
  NAND2X1 U115 ( .A(n53), .B(n41), .Y(n7) );
  XNOR2X4 U116 ( .A(n31), .B(n4), .Y(SUM[6]) );
  XOR2X4 U117 ( .A(n99), .B(n3), .Y(SUM[7]) );
  NOR2X2 U118 ( .A(A[2]), .B(B[2]), .Y(n44) );
  NAND2X2 U119 ( .A(n51), .B(n33), .Y(n5) );
  NAND2X2 U120 ( .A(A[8]), .B(B[8]), .Y(n16) );
  XNOR2X2 U121 ( .A(n39), .B(n6), .Y(SUM[4]) );
  INVX1 U122 ( .A(n32), .Y(n51) );
  XOR2X1 U123 ( .A(n8), .B(n47), .Y(SUM[2]) );
  INVX1 U124 ( .A(n9), .Y(SUM[1]) );
  OA21X4 U125 ( .A0(net52239), .A1(n25), .B0(n26), .Y(n99) );
  OAI21X4 U126 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  NAND2XL U127 ( .A(n54), .B(n45), .Y(n8) );
  NAND2BXL U128 ( .AN(n46), .B(n47), .Y(n9) );
  XOR2X1 U129 ( .A(n42), .B(n7), .Y(SUM[3]) );
  CLKINVX1 U130 ( .A(net54681), .Y(n53) );
  NAND2X1 U131 ( .A(n52), .B(n38), .Y(n6) );
  CLKBUFX3 U132 ( .A(B[0]), .Y(SUM[0]) );
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
  wire   n1, n3, n8, n9, n12, n13, n14, n15, n18, n19, n23, n24, n31, n33, n34,
         n36, n37, n38, n42, n43, n50, n51, n52, n53, n56, n59, n60, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112;
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

  XOR2XL U82 ( .A(n51), .B(n50), .Y(SUM[4]) );
  NOR2X2 U83 ( .A(n38), .B(n51), .Y(n37) );
  OR2X4 U84 ( .A(n51), .B(n42), .Y(n111) );
  INVX4 U85 ( .A(n52), .Y(n51) );
  NOR2X4 U86 ( .A(n1), .B(n13), .Y(n12) );
  BUFX8 U87 ( .A(A[2]), .Y(n99) );
  XOR2X1 U88 ( .A(n59), .B(n99), .Y(SUM[2]) );
  NAND2X1 U89 ( .A(n59), .B(n99), .Y(n56) );
  XOR2X2 U90 ( .A(n12), .B(A[12]), .Y(SUM[12]) );
  NAND2X4 U91 ( .A(n103), .B(n104), .Y(SUM[5]) );
  NAND2X2 U92 ( .A(n101), .B(n102), .Y(n104) );
  INVXL U93 ( .A(A[5]), .Y(n102) );
  NAND2X4 U94 ( .A(n107), .B(n108), .Y(SUM[6]) );
  NAND2X2 U95 ( .A(n105), .B(n106), .Y(n108) );
  XOR2X2 U96 ( .A(n1), .B(n31), .Y(SUM[8]) );
  NAND2X2 U97 ( .A(A[4]), .B(A[5]), .Y(n42) );
  OR2X4 U98 ( .A(n51), .B(n50), .Y(n112) );
  CLKINVX1 U99 ( .A(n112), .Y(n101) );
  CLKINVX1 U100 ( .A(n111), .Y(n105) );
  CLKINVX1 U101 ( .A(n60), .Y(n59) );
  CLKINVX1 U102 ( .A(n14), .Y(n13) );
  NAND2X1 U103 ( .A(n14), .B(n100), .Y(n3) );
  AND2X2 U104 ( .A(A[12]), .B(A[13]), .Y(n100) );
  NAND2X6 U105 ( .A(A[1]), .B(A[0]), .Y(n60) );
  XNOR2X2 U106 ( .A(n110), .B(A[9]), .Y(SUM[9]) );
  XNOR2X4 U107 ( .A(n109), .B(A[10]), .Y(SUM[10]) );
  OR2X4 U108 ( .A(n1), .B(n31), .Y(n110) );
  OR2X2 U109 ( .A(n1), .B(n23), .Y(n109) );
  NOR2X2 U110 ( .A(n9), .B(n1), .Y(n8) );
  XOR2X4 U111 ( .A(n18), .B(A[11]), .Y(SUM[11]) );
  NAND2X4 U112 ( .A(A[10]), .B(A[11]), .Y(n15) );
  INVX1 U113 ( .A(A[8]), .Y(n31) );
  NAND2X1 U114 ( .A(n112), .B(A[5]), .Y(n103) );
  INVX1 U115 ( .A(A[4]), .Y(n50) );
  NOR2X1 U116 ( .A(n3), .B(n1), .Y(SUM[14]) );
  NAND2X2 U117 ( .A(n43), .B(A[6]), .Y(n38) );
  NOR2X6 U118 ( .A(n53), .B(n60), .Y(n52) );
  XNOR2X2 U119 ( .A(n37), .B(n36), .Y(SUM[7]) );
  NAND2X2 U120 ( .A(n24), .B(A[10]), .Y(n19) );
  XOR2X2 U121 ( .A(n8), .B(A[13]), .Y(SUM[13]) );
  NOR2X2 U122 ( .A(n1), .B(n19), .Y(n18) );
  NAND2X2 U123 ( .A(n14), .B(A[12]), .Y(n9) );
  NAND2X8 U124 ( .A(n33), .B(n52), .Y(n1) );
  NAND2X2 U125 ( .A(n111), .B(A[6]), .Y(n107) );
  CLKINVX1 U126 ( .A(A[6]), .Y(n106) );
  NOR2X4 U127 ( .A(n23), .B(n15), .Y(n14) );
  NOR2X4 U128 ( .A(n42), .B(n34), .Y(n33) );
  NAND2X2 U129 ( .A(A[8]), .B(A[9]), .Y(n23) );
  INVXL U130 ( .A(A[7]), .Y(n36) );
  XOR2XL U131 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  CLKINVX1 U132 ( .A(n23), .Y(n24) );
  CLKINVX1 U133 ( .A(n42), .Y(n43) );
  NAND2X2 U134 ( .A(A[6]), .B(A[7]), .Y(n34) );
  XNOR2X1 U135 ( .A(n56), .B(A[3]), .Y(SUM[3]) );
  NAND2X4 U136 ( .A(n99), .B(A[3]), .Y(n53) );
endmodule


module conv_DW01_add_11 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n23, n24, n25, n31, n32, n35, n36, n37, n38, n39, n40, n41, n45,
         n46, n47, n48, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66, n69,
         n70, n71, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n89, n91, n92, n94, n97, n98, n99, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n120, n122, n124, n125, n126, n127, n128, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198;
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

  XOR2X2 U150 ( .A(n36), .B(n35), .Y(SUM[13]) );
  XOR2X2 U151 ( .A(n195), .B(A[14]), .Y(SUM[14]) );
  AND2X2 U152 ( .A(A[14]), .B(A[15]), .Y(n188) );
  XOR2X1 U153 ( .A(n196), .B(A[12]), .Y(SUM[12]) );
  NOR2X2 U154 ( .A(A[8]), .B(B[8]), .Y(n74) );
  OAI21X1 U155 ( .A0(n94), .A1(n86), .B0(n89), .Y(n85) );
  NOR2X4 U156 ( .A(n86), .B(n81), .Y(n79) );
  INVX3 U157 ( .A(n189), .Y(n86) );
  OAI21X1 U158 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  INVX4 U159 ( .A(n64), .Y(n66) );
  XNOR2X1 U160 ( .A(n198), .B(n6), .Y(SUM[8]) );
  INVXL U161 ( .A(n97), .Y(n124) );
  OAI21X4 U162 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NOR2X4 U163 ( .A(A[5]), .B(B[5]), .Y(n97) );
  OAI21X2 U164 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  NOR2X4 U165 ( .A(A[7]), .B(B[7]), .Y(n81) );
  AOI21X2 U166 ( .A0(n198), .A1(n63), .B0(n64), .Y(n62) );
  NAND2X6 U167 ( .A(n39), .B(n63), .Y(n3) );
  CLKINVX4 U168 ( .A(n63), .Y(n65) );
  NOR2X4 U169 ( .A(n74), .B(n69), .Y(n63) );
  NOR2X4 U170 ( .A(A[3]), .B(B[3]), .Y(n108) );
  OAI21X2 U171 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  NAND2BX1 U172 ( .AN(n35), .B(n188), .Y(n193) );
  CLKINVX1 U173 ( .A(A[13]), .Y(n35) );
  CLKINVX1 U174 ( .A(n92), .Y(n94) );
  NAND2X1 U175 ( .A(A[5]), .B(B[5]), .Y(n98) );
  CLKINVX1 U176 ( .A(n2), .Y(n38) );
  NOR2X2 U177 ( .A(n102), .B(n97), .Y(n91) );
  OR2X4 U178 ( .A(A[6]), .B(B[6]), .Y(n189) );
  NOR2X2 U179 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NAND2X2 U180 ( .A(A[0]), .B(B[0]), .Y(n118) );
  XOR2X2 U181 ( .A(n194), .B(A[16]), .Y(SUM[16]) );
  XNOR2X1 U182 ( .A(n110), .B(n11), .Y(SUM[3]) );
  XOR2X1 U183 ( .A(n71), .B(n5), .Y(SUM[9]) );
  NAND2X1 U184 ( .A(n125), .B(n103), .Y(n10) );
  XOR2X1 U185 ( .A(n113), .B(n12), .Y(SUM[2]) );
  AO21X2 U186 ( .A0(n198), .A1(n17), .B0(n18), .Y(n194) );
  NOR2X4 U187 ( .A(n41), .B(n57), .Y(n40) );
  XOR2X2 U188 ( .A(n62), .B(n4), .Y(SUM[10]) );
  AOI21X2 U189 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  AND2X8 U190 ( .A(n39), .B(n64), .Y(n190) );
  OAI21X4 U191 ( .A0(n105), .A1(n77), .B0(n78), .Y(n1) );
  AOI21X4 U192 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NAND2X2 U193 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NOR2X2 U194 ( .A(A[2]), .B(B[2]), .Y(n111) );
  AOI21X2 U195 ( .A0(n198), .A1(n37), .B0(n38), .Y(n36) );
  AOI21X2 U196 ( .A0(n198), .A1(n72), .B0(n73), .Y(n71) );
  BUFX16 U197 ( .A(n1), .Y(n198) );
  AO21X2 U198 ( .A0(n198), .A1(n54), .B0(n55), .Y(n197) );
  AO21X4 U199 ( .A0(n198), .A1(n23), .B0(n24), .Y(n191) );
  NAND2X2 U200 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NAND2X2 U201 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NAND2X2 U202 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NAND2X2 U203 ( .A(A[1]), .B(B[1]), .Y(n116) );
  NAND2X2 U204 ( .A(A[8]), .B(B[8]), .Y(n75) );
  AO21X4 U205 ( .A0(n198), .A1(n45), .B0(n46), .Y(n196) );
  NOR2X4 U206 ( .A(A[9]), .B(B[9]), .Y(n69) );
  AO21X4 U207 ( .A0(n104), .A1(n91), .B0(n92), .Y(n192) );
  XNOR2X1 U208 ( .A(n104), .B(n10), .Y(SUM[4]) );
  AOI21X4 U209 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  INVX2 U210 ( .A(n105), .Y(n104) );
  OAI21X1 U211 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  OAI21X1 U212 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X2 U213 ( .A(A[6]), .B(B[6]), .Y(n89) );
  NAND2X2 U214 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NOR2X1 U215 ( .A(n2), .B(n35), .Y(n32) );
  AO21X4 U216 ( .A0(n198), .A1(n31), .B0(n32), .Y(n195) );
  NOR2X1 U217 ( .A(n2), .B(n25), .Y(n24) );
  XNOR2X4 U218 ( .A(n191), .B(n21), .Y(SUM[15]) );
  CLKINVX1 U219 ( .A(n102), .Y(n125) );
  NOR2X2 U220 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NAND2XL U221 ( .A(n189), .B(n89), .Y(n8) );
  OAI21X4 U222 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NAND2XL U223 ( .A(n120), .B(n70), .Y(n5) );
  NAND2X2 U224 ( .A(n91), .B(n79), .Y(n77) );
  NAND2X2 U225 ( .A(A[4]), .B(B[4]), .Y(n103) );
  NOR2X8 U226 ( .A(n190), .B(n40), .Y(n2) );
  NOR2X4 U227 ( .A(n41), .B(n56), .Y(n39) );
  XOR2X2 U228 ( .A(n197), .B(A[11]), .Y(SUM[11]) );
  NAND2BX1 U229 ( .AN(n57), .B(A[11]), .Y(n48) );
  NAND2X2 U230 ( .A(n58), .B(A[11]), .Y(n47) );
  AOI21X4 U231 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  OAI21X4 U232 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NOR2X2 U233 ( .A(n108), .B(n111), .Y(n106) );
  NAND2X1 U234 ( .A(A[10]), .B(B[10]), .Y(n57) );
  INVX1 U235 ( .A(n3), .Y(n37) );
  NAND2X1 U236 ( .A(n124), .B(n98), .Y(n9) );
  NOR2X1 U237 ( .A(n65), .B(n56), .Y(n54) );
  INVX1 U238 ( .A(n56), .Y(n58) );
  CLKINVX1 U239 ( .A(A[15]), .Y(n21) );
  INVXL U240 ( .A(n114), .Y(n113) );
  NAND2XL U241 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U242 ( .A(n192), .B(n8), .Y(SUM[6]) );
  NAND2XL U243 ( .A(n126), .B(n109), .Y(n11) );
  NOR2BXL U244 ( .AN(n91), .B(n86), .Y(n84) );
  NAND2XL U245 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U246 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U247 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U248 ( .A(n115), .Y(n128) );
  NAND2BXL U249 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U250 ( .A(n103), .Y(n101) );
  NAND2XL U251 ( .A(A[13]), .B(A[14]), .Y(n25) );
  NOR2XL U252 ( .A(A[0]), .B(B[0]), .Y(n117) );
  NOR2X1 U253 ( .A(n2), .B(n193), .Y(n18) );
  NOR2X1 U254 ( .A(n3), .B(n193), .Y(n17) );
  NOR2X1 U255 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U256 ( .A(n58), .B(n57), .Y(n4) );
  XOR2X1 U257 ( .A(n99), .B(n9), .Y(SUM[5]) );
  XOR2X1 U258 ( .A(n83), .B(n7), .Y(SUM[7]) );
  NOR2X1 U259 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U260 ( .A(n3), .B(n35), .Y(n31) );
  NAND2X1 U261 ( .A(n72), .B(n75), .Y(n6) );
  CLKINVX1 U262 ( .A(n74), .Y(n72) );
  CLKINVX1 U263 ( .A(n111), .Y(n127) );
  CLKINVX1 U264 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U265 ( .A(n75), .Y(n73) );
  CLKINVX1 U266 ( .A(n81), .Y(n122) );
  CLKINVX1 U267 ( .A(n69), .Y(n120) );
  CLKINVX1 U268 ( .A(n108), .Y(n126) );
  NOR2X2 U269 ( .A(A[10]), .B(B[10]), .Y(n56) );
endmodule


module conv_DW01_add_10 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n36, n37, n38, n39, n40, n41,
         n45, n46, n47, n48, n54, n55, n56, n57, n58, n63, n64, n65, n66, n69,
         n70, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n89, n91, n92, n94, n97, n98, n99, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n120, n122, n123, n124, n125, n126, n127, n128, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200;
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

  XNOR2X2 U150 ( .A(n194), .B(n5), .Y(SUM[9]) );
  OAI21X2 U151 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NOR2X4 U152 ( .A(A[1]), .B(B[1]), .Y(n115) );
  AO21X2 U153 ( .A0(n1), .A1(n72), .B0(n73), .Y(n194) );
  CLKXOR2X2 U154 ( .A(n199), .B(A[14]), .Y(SUM[14]) );
  NOR2X2 U155 ( .A(n2), .B(n197), .Y(n18) );
  AOI21X4 U156 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  XNOR2X2 U157 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21X1 U158 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  NOR2X4 U159 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NAND2X2 U160 ( .A(B[8]), .B(A[8]), .Y(n75) );
  NAND2X2 U161 ( .A(A[10]), .B(B[10]), .Y(n57) );
  NOR2X2 U162 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NOR2X2 U163 ( .A(n108), .B(n111), .Y(n106) );
  NAND2X1 U164 ( .A(n58), .B(A[11]), .Y(n47) );
  NAND2X1 U165 ( .A(A[13]), .B(A[14]), .Y(n25) );
  OAI21X1 U166 ( .A0(n94), .A1(n86), .B0(n89), .Y(n85) );
  NAND2X2 U167 ( .A(A[6]), .B(B[6]), .Y(n89) );
  NAND2X2 U168 ( .A(A[5]), .B(B[5]), .Y(n98) );
  AND2X4 U169 ( .A(n39), .B(n64), .Y(n191) );
  NOR2X4 U170 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NAND2X2 U171 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NAND2X2 U172 ( .A(A[1]), .B(B[1]), .Y(n116) );
  NAND2X2 U173 ( .A(A[0]), .B(B[0]), .Y(n118) );
  AOI21X1 U174 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  CLKINVX1 U175 ( .A(n2), .Y(n38) );
  AOI21X1 U176 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  XNOR2X2 U177 ( .A(n193), .B(n4), .Y(SUM[10]) );
  XOR2X2 U178 ( .A(n198), .B(A[16]), .Y(SUM[16]) );
  AOI21X2 U179 ( .A0(n1), .A1(n37), .B0(n38), .Y(n36) );
  XOR2X2 U180 ( .A(n22), .B(n21), .Y(SUM[15]) );
  NOR2X2 U181 ( .A(A[8]), .B(B[8]), .Y(n74) );
  AO21X4 U182 ( .A0(n1), .A1(n31), .B0(n32), .Y(n199) );
  AO21X4 U183 ( .A0(n1), .A1(n17), .B0(n18), .Y(n198) );
  NOR2X4 U184 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2X2 U185 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NAND2X2 U186 ( .A(n39), .B(n63), .Y(n3) );
  XOR2X2 U187 ( .A(n200), .B(A[12]), .Y(SUM[12]) );
  AO21X4 U188 ( .A0(n1), .A1(n45), .B0(n46), .Y(n200) );
  XNOR2X2 U189 ( .A(n196), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U190 ( .A(n92), .Y(n94) );
  AOI21X4 U191 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  OAI21X4 U192 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NOR2X4 U193 ( .A(A[9]), .B(B[9]), .Y(n69) );
  OAI21X1 U194 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  AOI21X1 U195 ( .A0(n1), .A1(n54), .B0(n55), .Y(n196) );
  NOR2X1 U196 ( .A(n65), .B(n56), .Y(n54) );
  NAND2X2 U197 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NOR2X4 U198 ( .A(n86), .B(n81), .Y(n79) );
  INVXL U199 ( .A(n81), .Y(n122) );
  NOR2X4 U200 ( .A(A[7]), .B(B[7]), .Y(n81) );
  OAI21X2 U201 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  NAND2X2 U202 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NOR2X4 U203 ( .A(A[6]), .B(B[6]), .Y(n86) );
  CLKINVX8 U204 ( .A(n105), .Y(n104) );
  NOR2X4 U205 ( .A(A[10]), .B(B[10]), .Y(n56) );
  NAND2XL U206 ( .A(n123), .B(n89), .Y(n8) );
  OAI21X2 U207 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  NOR2BX1 U208 ( .AN(n91), .B(n86), .Y(n84) );
  NOR2X2 U209 ( .A(n102), .B(n97), .Y(n91) );
  NOR2X1 U210 ( .A(n2), .B(n25), .Y(n24) );
  NAND2X2 U211 ( .A(n91), .B(n79), .Y(n77) );
  NOR2X6 U212 ( .A(n191), .B(n40), .Y(n2) );
  OAI21X1 U213 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  NAND2XL U214 ( .A(n58), .B(n57), .Y(n4) );
  NAND2BXL U215 ( .AN(n57), .B(A[11]), .Y(n48) );
  OAI21X4 U216 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NAND2X2 U217 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NOR2X4 U218 ( .A(n74), .B(n69), .Y(n63) );
  NOR2X6 U219 ( .A(n188), .B(n189), .Y(n190) );
  OR2X4 U220 ( .A(n190), .B(n64), .Y(n193) );
  INVX4 U221 ( .A(n1), .Y(n188) );
  INVXL U222 ( .A(n63), .Y(n189) );
  CLKINVX12 U223 ( .A(n192), .Y(n1) );
  NOR2X1 U224 ( .A(n41), .B(n57), .Y(n40) );
  NAND2X2 U225 ( .A(A[4]), .B(B[4]), .Y(n103) );
  INVXL U226 ( .A(n69), .Y(n120) );
  NOR2X2 U227 ( .A(n41), .B(n56), .Y(n39) );
  OA21X4 U228 ( .A0(n105), .A1(n77), .B0(n78), .Y(n192) );
  NAND2XL U229 ( .A(n122), .B(n82), .Y(n7) );
  INVX1 U230 ( .A(n3), .Y(n37) );
  INVX1 U231 ( .A(n56), .Y(n58) );
  INVX1 U232 ( .A(n64), .Y(n66) );
  INVXL U233 ( .A(n114), .Y(n113) );
  XNOR2XL U234 ( .A(n1), .B(n6), .Y(SUM[8]) );
  XNOR2X1 U235 ( .A(n195), .B(n8), .Y(SUM[6]) );
  AO21XL U236 ( .A0(n104), .A1(n91), .B0(n92), .Y(n195) );
  NAND2XL U237 ( .A(n124), .B(n98), .Y(n9) );
  NAND2XL U238 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U239 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NAND2XL U240 ( .A(n125), .B(n103), .Y(n10) );
  XOR2XL U241 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U242 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U243 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U244 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U245 ( .A(n115), .Y(n128) );
  NAND2BXL U246 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U247 ( .A(n102), .Y(n125) );
  INVXL U248 ( .A(n103), .Y(n101) );
  INVXL U249 ( .A(n86), .Y(n123) );
  INVXL U250 ( .A(n97), .Y(n124) );
  INVXL U251 ( .A(A[15]), .Y(n21) );
  INVXL U252 ( .A(A[13]), .Y(n35) );
  NOR2XL U253 ( .A(A[0]), .B(B[0]), .Y(n117) );
  NOR2X1 U254 ( .A(n3), .B(n197), .Y(n17) );
  CLKINVX1 U255 ( .A(n63), .Y(n65) );
  XOR2X1 U256 ( .A(n36), .B(n35), .Y(SUM[13]) );
  NOR2X1 U257 ( .A(n2), .B(n35), .Y(n32) );
  AOI21X1 U258 ( .A0(n1), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X1 U259 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U260 ( .A(n120), .B(n70), .Y(n5) );
  XOR2X1 U261 ( .A(n99), .B(n9), .Y(SUM[5]) );
  XOR2X1 U262 ( .A(n83), .B(n7), .Y(SUM[7]) );
  NOR2X1 U263 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U264 ( .A(n3), .B(n35), .Y(n31) );
  NAND2X1 U265 ( .A(n72), .B(n75), .Y(n6) );
  OR2X1 U266 ( .A(n25), .B(n21), .Y(n197) );
  CLKINVX1 U267 ( .A(n74), .Y(n72) );
  CLKINVX1 U268 ( .A(n111), .Y(n127) );
  CLKINVX1 U269 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U270 ( .A(n75), .Y(n73) );
  CLKINVX1 U271 ( .A(n108), .Y(n126) );
endmodule


module conv_DW01_add_9 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n23, n24, n25, n31, n32, n35, n36, n37, n38, n39, n40, n41, n45,
         n46, n47, n48, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66, n69,
         n70, n71, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n89, n91, n92, n94, n97, n98, n99, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n120, n122, n123, n124, n125, n126, n127, n128,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199;
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

  AOI21X1 U150 ( .A0(n1), .A1(n37), .B0(n38), .Y(n36) );
  OAI21X2 U151 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NAND2X2 U152 ( .A(A[5]), .B(B[5]), .Y(n98) );
  AO21XL U153 ( .A0(n104), .A1(n91), .B0(n92), .Y(n194) );
  INVX2 U154 ( .A(n105), .Y(n104) );
  OAI21X2 U155 ( .A0(n94), .A1(n86), .B0(n89), .Y(n85) );
  INVX1 U156 ( .A(n92), .Y(n94) );
  NOR2X6 U157 ( .A(n74), .B(n69), .Y(n63) );
  NOR2X2 U158 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NOR2X4 U159 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NOR2X4 U160 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NAND2X1 U161 ( .A(n58), .B(A[11]), .Y(n47) );
  NAND2X2 U162 ( .A(A[10]), .B(B[10]), .Y(n57) );
  NAND2X2 U163 ( .A(A[6]), .B(B[6]), .Y(n89) );
  NOR2X4 U164 ( .A(A[10]), .B(B[10]), .Y(n56) );
  NAND2X2 U165 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NAND2X2 U166 ( .A(n91), .B(n79), .Y(n77) );
  NOR2X2 U167 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NAND2BX1 U168 ( .AN(n57), .B(A[11]), .Y(n48) );
  NAND2X2 U169 ( .A(A[0]), .B(B[0]), .Y(n118) );
  NOR2X1 U170 ( .A(n3), .B(n195), .Y(n17) );
  XOR2X1 U171 ( .A(n62), .B(n4), .Y(SUM[10]) );
  XNOR2X1 U172 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21XL U173 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  AOI21X1 U174 ( .A0(n1), .A1(n72), .B0(n73), .Y(n71) );
  XOR2X1 U175 ( .A(n199), .B(A[11]), .Y(SUM[11]) );
  NAND2X6 U176 ( .A(n188), .B(n78), .Y(n1) );
  CLKINVX1 U177 ( .A(A[15]), .Y(n21) );
  NOR2X2 U178 ( .A(n2), .B(n25), .Y(n24) );
  OAI21X2 U179 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  NAND2X2 U180 ( .A(A[7]), .B(B[7]), .Y(n82) );
  AND2X8 U181 ( .A(n39), .B(n64), .Y(n192) );
  NAND2X2 U182 ( .A(n39), .B(n63), .Y(n3) );
  NOR2X4 U183 ( .A(n41), .B(n56), .Y(n39) );
  AO21X4 U184 ( .A0(n1), .A1(n54), .B0(n55), .Y(n199) );
  OAI21X1 U185 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  NOR2X2 U186 ( .A(n102), .B(n97), .Y(n91) );
  NAND2X2 U187 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NOR2X4 U188 ( .A(A[2]), .B(B[2]), .Y(n111) );
  CLKINVX1 U189 ( .A(A[13]), .Y(n35) );
  NOR2X4 U190 ( .A(n86), .B(n81), .Y(n79) );
  INVXL U191 ( .A(n81), .Y(n122) );
  NOR2X4 U192 ( .A(A[7]), .B(B[7]), .Y(n81) );
  INVXL U193 ( .A(n69), .Y(n120) );
  NOR2X4 U194 ( .A(A[9]), .B(B[9]), .Y(n69) );
  NAND2X2 U195 ( .A(A[1]), .B(B[1]), .Y(n116) );
  OAI21X4 U196 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  NAND2X2 U197 ( .A(A[3]), .B(B[3]), .Y(n109) );
  XOR2X2 U198 ( .A(n198), .B(A[12]), .Y(SUM[12]) );
  NAND2X2 U199 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NOR2X2 U200 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U201 ( .A(A[13]), .B(A[14]), .Y(n25) );
  OAI21X1 U202 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  AOI21X4 U203 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NOR2X4 U204 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NOR2X2 U205 ( .A(A[4]), .B(B[4]), .Y(n102) );
  XOR2X4 U206 ( .A(n196), .B(A[16]), .Y(SUM[16]) );
  XOR2X2 U207 ( .A(n197), .B(A[14]), .Y(SUM[14]) );
  NOR2X2 U208 ( .A(n41), .B(n57), .Y(n40) );
  AO21X2 U209 ( .A0(n1), .A1(n45), .B0(n46), .Y(n198) );
  OAI21X4 U210 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NAND2XL U211 ( .A(n120), .B(n70), .Y(n5) );
  OR2X8 U212 ( .A(n105), .B(n77), .Y(n188) );
  NAND2X1 U213 ( .A(n193), .B(n21), .Y(n190) );
  NAND2X4 U214 ( .A(n189), .B(A[15]), .Y(n191) );
  NAND2X2 U215 ( .A(n190), .B(n191), .Y(SUM[15]) );
  INVX2 U216 ( .A(n193), .Y(n189) );
  AO21X4 U217 ( .A0(n1), .A1(n23), .B0(n24), .Y(n193) );
  NOR2X8 U218 ( .A(n192), .B(n40), .Y(n2) );
  INVX3 U219 ( .A(n2), .Y(n38) );
  AOI21X4 U220 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  OAI21X4 U221 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NAND2X2 U222 ( .A(A[4]), .B(B[4]), .Y(n103) );
  NOR2X2 U223 ( .A(n108), .B(n111), .Y(n106) );
  NAND2XL U224 ( .A(n125), .B(n103), .Y(n10) );
  NAND2X2 U225 ( .A(A[8]), .B(B[8]), .Y(n75) );
  INVX1 U226 ( .A(n3), .Y(n37) );
  NAND2X1 U227 ( .A(n124), .B(n98), .Y(n9) );
  NOR2X1 U228 ( .A(n65), .B(n56), .Y(n54) );
  INVX1 U229 ( .A(n56), .Y(n58) );
  INVX1 U230 ( .A(n64), .Y(n66) );
  INVXL U231 ( .A(n114), .Y(n113) );
  XNOR2XL U232 ( .A(n1), .B(n6), .Y(SUM[8]) );
  NAND2XL U233 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U234 ( .A(n194), .B(n8), .Y(SUM[6]) );
  NAND2XL U235 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U236 ( .A(n104), .B(n10), .Y(SUM[4]) );
  XOR2XL U237 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U238 ( .A(n127), .B(n112), .Y(n12) );
  NOR2BXL U239 ( .AN(n91), .B(n86), .Y(n84) );
  XOR2XL U240 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U241 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U242 ( .A(n115), .Y(n128) );
  NAND2BXL U243 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U244 ( .A(n102), .Y(n125) );
  INVXL U245 ( .A(n103), .Y(n101) );
  INVXL U246 ( .A(n86), .Y(n123) );
  NOR2XL U247 ( .A(A[0]), .B(B[0]), .Y(n117) );
  NOR2X1 U248 ( .A(n2), .B(n195), .Y(n18) );
  CLKINVX1 U249 ( .A(n63), .Y(n65) );
  XOR2X1 U250 ( .A(n36), .B(n35), .Y(SUM[13]) );
  NOR2X1 U251 ( .A(n2), .B(n35), .Y(n32) );
  XOR2X1 U252 ( .A(n71), .B(n5), .Y(SUM[9]) );
  NAND2X1 U253 ( .A(n58), .B(n57), .Y(n4) );
  AOI21X1 U254 ( .A0(n1), .A1(n63), .B0(n64), .Y(n62) );
  XOR2X1 U255 ( .A(n99), .B(n9), .Y(SUM[5]) );
  AOI21X1 U256 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  NAND2X1 U257 ( .A(n123), .B(n89), .Y(n8) );
  XOR2X1 U258 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X1 U259 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U260 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U261 ( .A(n3), .B(n35), .Y(n31) );
  NAND2X1 U262 ( .A(n72), .B(n75), .Y(n6) );
  OR2X1 U263 ( .A(n25), .B(n21), .Y(n195) );
  CLKINVX1 U264 ( .A(n74), .Y(n72) );
  CLKINVX1 U265 ( .A(n111), .Y(n127) );
  CLKINVX1 U266 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U267 ( .A(n75), .Y(n73) );
  CLKINVX1 U268 ( .A(n97), .Y(n124) );
  CLKINVX1 U269 ( .A(n108), .Y(n126) );
  AO21X1 U270 ( .A0(n1), .A1(n17), .B0(n18), .Y(n196) );
  AO21X1 U271 ( .A0(n1), .A1(n31), .B0(n32), .Y(n197) );
endmodule


module conv_DW01_add_8 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n36, n37, n38, n39, n40, n41,
         n45, n46, n47, n48, n54, n55, n56, n57, n58, n62, n63, n64, n65, n66,
         n69, n70, n71, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n89, n91, n92, n94, n97, n98, n99, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n120, n122, n123, n124, n126, n127, n128,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199;
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

  XOR2X2 U150 ( .A(n22), .B(n21), .Y(SUM[15]) );
  INVX3 U151 ( .A(n56), .Y(n58) );
  NOR2X8 U152 ( .A(n74), .B(n69), .Y(n63) );
  NOR2X2 U153 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NOR2X4 U154 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NOR2X4 U155 ( .A(A[6]), .B(B[6]), .Y(n86) );
  OAI21X1 U156 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  NOR2X2 U157 ( .A(n108), .B(n192), .Y(n106) );
  NAND2X1 U158 ( .A(n58), .B(n188), .Y(n47) );
  NAND2X6 U159 ( .A(n190), .B(n98), .Y(n92) );
  INVX3 U160 ( .A(n105), .Y(n104) );
  NAND2X2 U161 ( .A(A[8]), .B(B[8]), .Y(n75) );
  BUFX4 U162 ( .A(A[11]), .Y(n188) );
  CLKINVX1 U163 ( .A(n63), .Y(n65) );
  NOR2X2 U164 ( .A(n2), .B(n25), .Y(n24) );
  NAND2X2 U165 ( .A(n39), .B(n63), .Y(n3) );
  NOR2X4 U166 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NOR2X4 U167 ( .A(n86), .B(n81), .Y(n79) );
  NAND2X2 U168 ( .A(A[7]), .B(B[7]), .Y(n82) );
  BUFX4 U169 ( .A(n111), .Y(n192) );
  NAND2X2 U170 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NAND2X2 U171 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NOR2X2 U172 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NAND2X2 U173 ( .A(A[0]), .B(B[0]), .Y(n118) );
  OR2X2 U174 ( .A(n25), .B(n21), .Y(n194) );
  XOR2X2 U175 ( .A(n197), .B(A[12]), .Y(SUM[12]) );
  AOI21X1 U176 ( .A0(n199), .A1(n72), .B0(n73), .Y(n71) );
  AO21X1 U177 ( .A0(n104), .A1(n91), .B0(n92), .Y(n193) );
  XOR2X1 U178 ( .A(n198), .B(n188), .Y(SUM[11]) );
  XOR2X1 U179 ( .A(n36), .B(n35), .Y(SUM[13]) );
  NOR2X1 U180 ( .A(n3), .B(n25), .Y(n23) );
  INVX3 U181 ( .A(n64), .Y(n66) );
  NOR2X2 U182 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NAND2X6 U183 ( .A(A[4]), .B(B[4]), .Y(n103) );
  OAI21X2 U184 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NAND2X2 U185 ( .A(A[1]), .B(B[1]), .Y(n116) );
  NOR2X2 U186 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2X2 U187 ( .A(A[10]), .B(B[10]), .Y(n57) );
  AOI21X4 U188 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  AO21X2 U189 ( .A0(n199), .A1(n17), .B0(n18), .Y(n195) );
  AOI21X2 U190 ( .A0(n199), .A1(n37), .B0(n38), .Y(n36) );
  AOI21X2 U191 ( .A0(n199), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X2 U192 ( .A(A[5]), .B(B[5]), .Y(n98) );
  AO21X4 U193 ( .A0(n199), .A1(n54), .B0(n55), .Y(n198) );
  OAI21X1 U194 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  CLKINVX1 U195 ( .A(A[13]), .Y(n35) );
  XOR2X4 U196 ( .A(n196), .B(A[14]), .Y(SUM[14]) );
  AO21X4 U197 ( .A0(n199), .A1(n31), .B0(n32), .Y(n196) );
  INVXL U198 ( .A(n69), .Y(n120) );
  NOR2X4 U199 ( .A(A[9]), .B(B[9]), .Y(n69) );
  XNOR2X4 U200 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21X1 U201 ( .A0(n113), .A1(n192), .B0(n112), .Y(n110) );
  NOR2X4 U202 ( .A(A[10]), .B(B[10]), .Y(n56) );
  NAND2X2 U203 ( .A(A[13]), .B(A[14]), .Y(n25) );
  NOR2X4 U204 ( .A(n41), .B(n57), .Y(n40) );
  BUFX20 U205 ( .A(n1), .Y(n199) );
  OAI21X4 U206 ( .A0(n105), .A1(n77), .B0(n78), .Y(n1) );
  NOR2X4 U207 ( .A(A[7]), .B(B[7]), .Y(n81) );
  OAI21X1 U208 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  INVXL U209 ( .A(n108), .Y(n126) );
  NAND2X2 U210 ( .A(A[6]), .B(B[6]), .Y(n89) );
  OAI21X2 U211 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  OR2XL U212 ( .A(A[4]), .B(B[4]), .Y(n189) );
  XOR2X4 U213 ( .A(n195), .B(A[16]), .Y(SUM[16]) );
  NAND2X4 U214 ( .A(n188), .B(A[12]), .Y(n41) );
  NAND2XL U215 ( .A(n123), .B(n89), .Y(n8) );
  OAI21X4 U216 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NAND2XL U217 ( .A(n120), .B(n70), .Y(n5) );
  NAND2X2 U218 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NAND2X2 U219 ( .A(n91), .B(n79), .Y(n77) );
  OR2X4 U220 ( .A(n97), .B(n103), .Y(n190) );
  INVX8 U221 ( .A(n92), .Y(n94) );
  CLKAND2X4 U222 ( .A(n39), .B(n64), .Y(n191) );
  NOR2X8 U223 ( .A(n191), .B(n40), .Y(n2) );
  NOR2X4 U224 ( .A(n41), .B(n56), .Y(n39) );
  INVX2 U225 ( .A(n2), .Y(n38) );
  NAND2BX1 U226 ( .AN(n57), .B(n188), .Y(n48) );
  NOR2X2 U227 ( .A(n102), .B(n97), .Y(n91) );
  AOI21X4 U228 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  NAND2XL U229 ( .A(n189), .B(n103), .Y(n10) );
  INVX1 U230 ( .A(n3), .Y(n37) );
  NAND2X1 U231 ( .A(n124), .B(n98), .Y(n9) );
  NOR2X1 U232 ( .A(n65), .B(n56), .Y(n54) );
  INVXL U233 ( .A(n114), .Y(n113) );
  XNOR2XL U234 ( .A(n199), .B(n6), .Y(SUM[8]) );
  NAND2XL U235 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U236 ( .A(n193), .B(n8), .Y(SUM[6]) );
  NAND2XL U237 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U238 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NOR2BXL U239 ( .AN(n91), .B(n86), .Y(n84) );
  XOR2XL U240 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U241 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U242 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U243 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U244 ( .A(n115), .Y(n128) );
  NAND2BXL U245 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U246 ( .A(n103), .Y(n101) );
  INVXL U247 ( .A(n86), .Y(n123) );
  NOR2XL U248 ( .A(A[0]), .B(B[0]), .Y(n117) );
  NOR2X1 U249 ( .A(n2), .B(n194), .Y(n18) );
  NOR2X1 U250 ( .A(n3), .B(n194), .Y(n17) );
  NOR2X1 U251 ( .A(n2), .B(n35), .Y(n32) );
  XOR2X1 U252 ( .A(n71), .B(n5), .Y(SUM[9]) );
  XOR2X1 U253 ( .A(n62), .B(n4), .Y(SUM[10]) );
  NAND2X1 U254 ( .A(n58), .B(n57), .Y(n4) );
  AOI21X1 U255 ( .A0(n199), .A1(n63), .B0(n64), .Y(n62) );
  XOR2X1 U256 ( .A(n99), .B(n9), .Y(SUM[5]) );
  AOI21X1 U257 ( .A0(n104), .A1(n189), .B0(n101), .Y(n99) );
  XOR2X1 U258 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X1 U259 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U260 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U261 ( .A(n3), .B(n35), .Y(n31) );
  NAND2X1 U262 ( .A(n72), .B(n75), .Y(n6) );
  OAI21XL U263 ( .A0(n94), .A1(n86), .B0(n89), .Y(n85) );
  CLKINVX1 U264 ( .A(n74), .Y(n72) );
  CLKINVX1 U265 ( .A(n192), .Y(n127) );
  CLKINVX1 U266 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U267 ( .A(n75), .Y(n73) );
  CLKINVX1 U268 ( .A(n81), .Y(n122) );
  CLKINVX1 U269 ( .A(n97), .Y(n124) );
  AO21X1 U270 ( .A0(n199), .A1(n45), .B0(n46), .Y(n197) );
  CLKINVX1 U271 ( .A(A[15]), .Y(n21) );
endmodule

