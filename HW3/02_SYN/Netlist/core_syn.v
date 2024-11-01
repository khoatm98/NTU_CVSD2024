/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Fri Nov  1 13:43:28 2024
/////////////////////////////////////////////////////////////


module core ( i_clk, i_rst_n, i_op_valid, i_op_mode, o_op_ready, i_in_valid, 
        i_in_data, o_in_ready, o_out_valid, o_out_data );
  input [3:0] i_op_mode;
  input [7:0] i_in_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_op_valid, i_in_valid;
  output o_op_ready, o_in_ready, o_out_valid;
  wire   N92, N93, conv_out_valid_w, med_out_valid_w, x_origin_r_2_, l_valid_w,
         r_valid_w, u_valid_w, conv_isFirst_signal_r, conv_calc_done_r,
         med_isFirst_signal_r, med_sobel_r, med_done_w, N123, x_delay_r_1__1_,
         x_delay_r_1__0_, x_delay_r_0__1_, x_delay_r_0__0_, N330, N331, N332,
         N333, N334, N335, N336, N337, out_valid_wait_r, N466, N467, N468,
         N469, N470, N471, N472, N473, N474, N475, N476, N593, N594, N595,
         N596, N597, N598, N599, N600, N601, N602, N603, N604, N605, N606,
         N607, N608, N609, N610, N611, N612, N613, N614, N615, N616, N617,
         N618, N619, N620, N621, N622, N623, N624, N675, N676, N677, N678,
         N679, N680, N681, N682, N684, N685, N686, N687, N688, N689, N690,
         N691, N692, N693, N694, N695, N696, N698, N699, N700, N701, N702,
         N703, N704, N705, N706, N707, N708, N709, N710, N711, N712, N713,
         N714, N715, N716, N717, N718, N719, N720, N721, N722, N723, N724,
         N725, N726, N727, N728, N729, N730, N731, N732, N733, N734, N735,
         N736, N737, N738, N739, N747, N753, N776, N777, N778, N779, N780,
         N781, N782, N783, N806, N808, N810, N811, N832, N833, N834, N835,
         N887, n71, n76, n94, n96, n104, n106, n117, n118, n122, n12300, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n136, n206, n207,
         n208, n226, n227, n228, n239, n241, n301, n306, n311, n316, n321,
         n326, n3310, n3360, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n350, n351, n352, n353, n354, n355, n356, n358, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n409, n410, n411, n412, n413, n414, n416, n417,
         n418, n419, n420, n421, n422, n423, n425, n426, n427, n428, n429,
         n430, n431, n432, n434, n435, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n7340, n7350, n7360, n7370, n7380,
         n7390, n740, n741, n742, n743, n744, n745, n746, n7470, n748, n749,
         n750, n751, n752, n7530, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n7760, n7770, n7780, n7790, n7800, n7810,
         n7820, n7830, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n8060, n807, n8080, n809, n8100, n8110, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n8320, n8330, n8340, n8350, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n8870, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161,
         n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171,
         n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181,
         n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191,
         n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201,
         n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211,
         n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221,
         n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n12301, n1231,
         n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241,
         n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251,
         n1252, n1253, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293;
  wire   [31:0] sram_data_out_w;
  wire   [3:0] sram_wen_ready_r;
  wire   [35:0] sram_addr_w;
  wire   [7:0] in_data_r;
  wire   [10:0] conv_result_w;
  wire   [10:0] med_result_w;
  wire   [13:11] result_w;
  wire   [3:1] curr_state;
  wire   [10:1] cnt;
  wire   [2:0] y_origin_r;
  wire   [31:0] input_data_ready_r;
  wire   [3:0] op_mode_r;
  wire   [1:0] next_state;
  wire   [35:0] sram_addr_wait_r;
  wire   [4:0] z_r;
  wire   [2:0] y_r;
  wire   [2:0] x_r;
  wire   [2:0] x_minus_one_r;
  wire   [2:0] x_plus_one_r;
  wire   [2:0] x_plus_two_r;
  wire   [31:0] sram_data_out_r;
  wire   [31:0] input_data_wait_r;
  wire   [9:0] pre_state;
  wire   [13:0] out_data_wait_r;

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
  DFFRX4 op_mode_r_reg_3_ ( .D(n414), .CK(i_clk), .RN(n1031), .Q(op_mode_r[3]), 
        .QN(n860) );
  DFFRX4 op_mode_r_reg_2_ ( .D(n413), .CK(i_clk), .RN(n1029), .Q(op_mode_r[2]), 
        .QN(n797) );
  DFFRX4 op_mode_r_reg_1_ ( .D(n412), .CK(i_clk), .RN(n1030), .Q(op_mode_r[1]), 
        .QN(n794) );
  DFFRX4 op_mode_r_reg_0_ ( .D(n411), .CK(i_clk), .RN(n1030), .Q(op_mode_r[0]), 
        .QN(n1042) );
  DFFRX4 input_data_ready_r_reg_21_ ( .D(N729), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[21]) );
  DFFRX4 input_data_ready_r_reg_20_ ( .D(N728), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[20]) );
  DFFRX4 input_data_ready_r_reg_19_ ( .D(N727), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[19]), .QN(n845) );
  DFFRX4 input_data_ready_r_reg_13_ ( .D(N721), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[13]) );
  DFFRX4 input_data_ready_r_reg_12_ ( .D(N720), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[12]) );
  DFFRX4 input_data_ready_r_reg_11_ ( .D(N719), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[11]) );
  DFFRX4 input_data_ready_r_reg_10_ ( .D(N718), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[10]) );
  DFFRX4 input_data_ready_r_reg_5_ ( .D(N713), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[5]) );
  DFFRX4 input_data_ready_r_reg_0_ ( .D(N708), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[0]) );
  DFFRX4 curr_state_reg_1_ ( .D(next_state[1]), .CK(i_clk), .RN(n1029), .Q(
        curr_state[1]), .QN(n420) );
  DFFRX4 cnt_reg_0_ ( .D(n453), .CK(i_clk), .RN(n1029), .QN(n432) );
  DFFRX4 cnt_reg_1_ ( .D(n452), .CK(i_clk), .RN(n1029), .Q(cnt[1]), .QN(n431)
         );
  DFFRX4 x_origin_r_reg_2_ ( .D(n456), .CK(i_clk), .RN(n1030), .Q(
        x_origin_r_2_), .QN(n1041) );
  DFFRX4 y_origin_r_reg_0_ ( .D(n461), .CK(i_clk), .RN(n1029), .Q(
        y_origin_r[0]), .QN(n442) );
  DFFRX4 y_origin_r_reg_1_ ( .D(n460), .CK(i_clk), .RN(n1029), .Q(
        y_origin_r[1]), .QN(n441) );
  DFFRX4 y_origin_r_reg_2_ ( .D(n459), .CK(i_clk), .RN(n1029), .Q(
        y_origin_r[2]), .QN(n440) );
  DFFSX4 curr_state_reg_3_ ( .D(n1246), .CK(i_clk), .SN(n1031), .Q(
        curr_state[3]), .QN(n417) );
  DFFSX4 curr_state_reg_2_ ( .D(n798), .CK(i_clk), .SN(n1031), .Q(
        curr_state[2]), .QN(n419) );
  OAI221X2 U410 ( .A0(n1058), .A1(n770), .B0(n1066), .B1(n752), .C0(n345), .Y(
        input_data_wait_r[9]) );
  OAI221X2 U450 ( .A0(n1058), .A1(n774), .B0(n1065), .B1(n741), .C0(n355), .Y(
        input_data_wait_r[31]) );
  OAI221X2 U458 ( .A0(n1058), .A1(n758), .B0(n1065), .B1(n765), .C0(n356), .Y(
        input_data_wait_r[30]) );
  OAI221X2 U490 ( .A0(n1058), .A1(n746), .B0(n1065), .B1(n773), .C0(n360), .Y(
        input_data_wait_r[26]) );
  conv conv_inst ( .i_clk(i_clk), .i_rst_n(n1028), .i_data({
        input_data_ready_r[31:20], n846, n851, n853, n857, 
        input_data_ready_r[15:0]}), .i_isFirst(conv_isFirst_signal_r), 
        .i_input_done(conv_calc_done_r), .o_out_valid(conv_out_valid_w), 
        .o_out_data({result_w, conv_result_w}) );
  median median_inst ( .i_clk(i_clk), .i_rst_n(n1069), .i_data(
        input_data_ready_r), .i_isFirst(med_isFirst_signal_r), .i_med_sobel(
        med_sobel_r), .o_out_valid(med_out_valid_w), .o_out_data(med_result_w), 
        .o_done(med_done_w) );
  core_DW01_inc_0_DW01_inc_4 r479 ( .A({cnt, n1227}), .SUM({N476, N475, N474, 
        N473, N472, N471, N470, N469, N468, N467, N466}) );
  DFFRX4 input_data_ready_r_reg_16_ ( .D(N724), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[16]), .QN(n856) );
  DFFRX4 input_data_ready_r_reg_8_ ( .D(N716), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[8]) );
  DFFSXL pre_state_reg_0__2_ ( .D(n1119), .CK(i_clk), .SN(n1031), .Q(
        pre_state[2]) );
  DFFRX1 med_sobel_r_reg ( .D(n1255), .CK(i_clk), .RN(n1029), .Q(med_sobel_r)
         );
  DFFRX1 y_r_reg_0_ ( .D(N806), .CK(i_clk), .RN(n1028), .Q(y_r[0]) );
  DFFRX1 sram_addr_ready_r_reg_0__6_ ( .D(sram_addr_wait_r[6]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[6]), .QN(n377) );
  DFFRX1 sram_addr_ready_r_reg_0__5_ ( .D(sram_addr_wait_r[5]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[5]), .QN(n376) );
  DFFRX1 sram_addr_ready_r_reg_0__4_ ( .D(sram_addr_wait_r[4]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[4]), .QN(n375) );
  DFFRX1 sram_addr_ready_r_reg_0__1_ ( .D(sram_addr_wait_r[1]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[1]), .QN(n372) );
  DFFRX1 sram_addr_ready_r_reg_0__0_ ( .D(sram_addr_wait_r[0]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[0]), .QN(n371) );
  DFFRX1 sram_addr_ready_r_reg_1__6_ ( .D(sram_addr_wait_r[15]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[15]), .QN(n386) );
  DFFRX1 sram_addr_ready_r_reg_1__5_ ( .D(sram_addr_wait_r[14]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[14]), .QN(n385) );
  DFFRX1 sram_addr_ready_r_reg_1__4_ ( .D(sram_addr_wait_r[13]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[13]), .QN(n384) );
  DFFRX1 sram_addr_ready_r_reg_1__3_ ( .D(sram_addr_wait_r[12]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[12]), .QN(n383) );
  DFFRX1 sram_addr_ready_r_reg_1__2_ ( .D(sram_addr_wait_r[11]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[11]), .QN(n382) );
  DFFRX1 sram_addr_ready_r_reg_1__0_ ( .D(sram_addr_wait_r[9]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[9]), .QN(n380) );
  DFFRX1 sram_addr_ready_r_reg_2__8_ ( .D(sram_addr_wait_r[26]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[26]), .QN(n397) );
  DFFRX1 sram_addr_ready_r_reg_2__7_ ( .D(sram_addr_wait_r[25]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[25]), .QN(n396) );
  DFFRX1 sram_addr_ready_r_reg_2__6_ ( .D(sram_addr_wait_r[24]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[24]), .QN(n395) );
  DFFRX1 sram_addr_ready_r_reg_2__5_ ( .D(sram_addr_wait_r[23]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[23]), .QN(n394) );
  DFFRX1 sram_addr_ready_r_reg_2__4_ ( .D(sram_addr_wait_r[22]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[22]), .QN(n393) );
  DFFRX1 sram_addr_ready_r_reg_2__0_ ( .D(sram_addr_wait_r[18]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[18]), .QN(n389) );
  DFFRX1 sram_addr_ready_r_reg_3__7_ ( .D(sram_addr_wait_r[34]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[34]), .QN(n405) );
  DFFRX1 sram_addr_ready_r_reg_3__5_ ( .D(sram_addr_wait_r[32]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[32]), .QN(n403) );
  DFFRX1 sram_addr_ready_r_reg_3__4_ ( .D(sram_addr_wait_r[31]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[31]), .QN(n402) );
  DFFRX1 sram_addr_ready_r_reg_3__0_ ( .D(sram_addr_wait_r[27]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[27]), .QN(n398) );
  DFFRX1 z_r_reg_0_ ( .D(N779), .CK(i_clk), .RN(n1028), .Q(z_r[0]) );
  DFFRX1 z_r_reg_1_ ( .D(N780), .CK(i_clk), .RN(n1028), .Q(z_r[1]) );
  DFFRX1 sram_addr_ready_r_reg_2__1_ ( .D(sram_addr_wait_r[19]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[19]), .QN(n390) );
  DFFRX1 sram_addr_ready_r_reg_1__1_ ( .D(sram_addr_wait_r[10]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[10]), .QN(n381) );
  DFFRX1 sram_addr_ready_r_reg_3__1_ ( .D(sram_addr_wait_r[28]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[28]), .QN(n399) );
  DFFSX1 sram_wen_ready_r_reg_1_ ( .D(N833), .CK(i_clk), .SN(n1031), .Q(
        sram_wen_ready_r[1]), .QN(n1164) );
  DFFSX1 sram_wen_ready_r_reg_2_ ( .D(N834), .CK(i_clk), .SN(n1031), .Q(
        sram_wen_ready_r[2]), .QN(n1166) );
  DFFRX1 x_minus_one_r_reg_2_ ( .D(N747), .CK(i_clk), .RN(n1030), .Q(
        x_minus_one_r[2]) );
  DFFSX1 sram_wen_ready_r_reg_0_ ( .D(N832), .CK(i_clk), .SN(n1031), .Q(
        sram_wen_ready_r[0]), .QN(n1163) );
  DFFRX1 pre_state_reg_1__1_ ( .D(pre_state[1]), .CK(i_clk), .RN(n1029), .Q(
        pre_state[5]), .QN(n367) );
  DFFSX1 sram_wen_ready_r_reg_3_ ( .D(N835), .CK(i_clk), .SN(n1031), .Q(
        sram_wen_ready_r[3]), .QN(n1165) );
  DFFSX1 pre_state_reg_1__3_ ( .D(pre_state[3]), .CK(i_clk), .SN(n1031), .Q(
        pre_state[7]), .QN(n368) );
  DFFRX1 x_plus_one_r_reg_2_ ( .D(n1249), .CK(i_clk), .RN(n1030), .Q(
        x_plus_one_r[2]) );
  DFFRX1 depth_ready_r_reg_1_ ( .D(n455), .CK(i_clk), .RN(n1030), .Q(n786), 
        .QN(n434) );
  DFFRX1 pre_state_reg_2__1_ ( .D(pre_state[5]), .CK(i_clk), .RN(n1029), .QN(
        n369) );
  DFFSX1 pre_state_reg_2__3_ ( .D(pre_state[7]), .CK(i_clk), .SN(n1031), .QN(
        n370) );
  DFFRX1 x_plus_two_r_reg_2_ ( .D(N753), .CK(i_clk), .RN(n1030), .Q(
        x_plus_two_r[2]) );
  DFFRX1 conv_isFirst_signal_r_reg ( .D(N810), .CK(i_clk), .RN(n1030), .Q(
        conv_isFirst_signal_r) );
  DFFRX1 x_minus_one_r_reg_1_ ( .D(n1293), .CK(i_clk), .RN(n1030), .Q(
        x_minus_one_r[1]), .QN(n785) );
  DFFSX1 pre_state_reg_1__2_ ( .D(pre_state[2]), .CK(i_clk), .SN(n1031), .Q(
        pre_state[6]) );
  DFFRX1 cnt_reg_9_ ( .D(n444), .CK(i_clk), .RN(n1030), .Q(cnt[9]), .QN(n422)
         );
  DFFRX1 pre_state_reg_1__0_ ( .D(pre_state[0]), .CK(i_clk), .RN(n1029), .Q(
        pre_state[4]) );
  DFFRX1 med_isFirst_signal_r_reg ( .D(N811), .CK(i_clk), .RN(n1029), .Q(
        med_isFirst_signal_r) );
  DFFRX2 cnt_reg_7_ ( .D(n446), .CK(i_clk), .RN(n1030), .Q(cnt[7]), .QN(n425)
         );
  DFFRX1 x_plus_one_r_reg_1_ ( .D(N123), .CK(i_clk), .RN(n1030), .Q(
        x_plus_one_r[1]), .QN(n784) );
  DFFSX1 depth_ready_r_reg_2_ ( .D(n418), .CK(i_clk), .SN(n1031), .QN(n407) );
  DFFRX1 depth_ready_r_reg_0_ ( .D(n454), .CK(i_clk), .RN(n1030), .QN(n435) );
  DFFRX2 cnt_reg_6_ ( .D(n447), .CK(i_clk), .RN(n1030), .Q(cnt[6]), .QN(n426)
         );
  DFFRX1 sram_data_out_r_reg_0__1_ ( .D(sram_data_out_w[1]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[1]), .QN(n770) );
  DFFRX1 sram_data_out_r_reg_3__1_ ( .D(sram_data_out_w[25]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[25]), .QN(n752) );
  DFFRX1 sram_data_out_r_reg_2__2_ ( .D(sram_data_out_w[18]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[18]), .QN(n746) );
  DFFRX1 sram_data_out_r_reg_1__2_ ( .D(sram_data_out_w[10]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[10]), .QN(n773) );
  DFFRX1 sram_data_out_r_reg_1__0_ ( .D(sram_data_out_w[8]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[8]), .QN(n7760) );
  DFFRX1 sram_data_out_r_reg_1__1_ ( .D(sram_data_out_w[9]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[9]), .QN(n760) );
  DFFRX1 sram_data_out_r_reg_1__4_ ( .D(sram_data_out_w[12]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[12]), .QN(n769) );
  DFFRX1 sram_data_out_r_reg_2__0_ ( .D(sram_data_out_w[16]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[16]), .QN(n750) );
  DFFRX1 sram_data_out_r_reg_2__1_ ( .D(sram_data_out_w[17]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[17]), .QN(n7830) );
  DFFRX1 out_valid_ready_r_reg ( .D(out_valid_wait_r), .CK(i_clk), .RN(n1029), 
        .Q(o_out_valid), .QN(n366) );
  DFFRX1 sram_data_out_r_reg_3__2_ ( .D(sram_data_out_w[26]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[26]), .QN(n762) );
  DFFRX1 sram_data_out_r_reg_3__3_ ( .D(sram_data_out_w[27]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[27]), .QN(n766) );
  DFFRX1 sram_data_out_r_reg_3__7_ ( .D(sram_data_out_w[31]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[31]), .QN(n7470) );
  DFFRX1 sram_data_out_r_reg_3__0_ ( .D(sram_data_out_w[24]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[24]), .QN(n772) );
  DFFRX1 sram_data_out_r_reg_0__2_ ( .D(sram_data_out_w[2]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[2]), .QN(n751) );
  DFFRX1 sram_data_out_r_reg_0__3_ ( .D(sram_data_out_w[3]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[3]), .QN(n748) );
  DFFRX1 sram_data_out_r_reg_0__4_ ( .D(sram_data_out_w[4]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[4]), .QN(n742) );
  DFFRX1 sram_data_out_r_reg_0__0_ ( .D(sram_data_out_w[0]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[0]), .QN(n745) );
  DFFRX1 sram_data_out_r_reg_0__5_ ( .D(sram_data_out_w[5]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[5]), .QN(n749) );
  DFFRX1 sram_data_out_r_reg_0__6_ ( .D(sram_data_out_w[6]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[6]), .QN(n744) );
  DFFRX1 sram_data_out_r_reg_2__4_ ( .D(sram_data_out_w[20]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[20]), .QN(n743) );
  DFFRX1 sram_data_out_r_reg_1__7_ ( .D(sram_data_out_w[15]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[15]), .QN(n741) );
  DFFRX1 sram_data_out_r_reg_1__6_ ( .D(sram_data_out_w[14]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[14]), .QN(n765) );
  DFFRX1 sram_data_out_r_reg_3__4_ ( .D(sram_data_out_w[28]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[28]), .QN(n768) );
  DFFRX1 sram_data_out_r_reg_3__5_ ( .D(sram_data_out_w[29]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[29]), .QN(n767) );
  DFFRX1 sram_data_out_r_reg_2__6_ ( .D(sram_data_out_w[22]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[22]), .QN(n758) );
  DFFRX1 sram_data_out_r_reg_2__7_ ( .D(sram_data_out_w[23]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[23]), .QN(n774) );
  DFFRX1 display_done_r_reg ( .D(n1253), .CK(i_clk), .RN(n1030), .Q(n764), 
        .QN(n365) );
  DFFRX2 cnt_reg_2_ ( .D(n451), .CK(i_clk), .RN(n1029), .Q(cnt[2]), .QN(n430)
         );
  DFFRX1 x_r_reg_0_ ( .D(N776), .CK(i_clk), .RN(n1028), .Q(x_r[0]) );
  DFFRX1 out_data_ready_r_reg_0_ ( .D(out_data_wait_r[0]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[0]) );
  DFFRX1 out_data_ready_r_reg_1_ ( .D(out_data_wait_r[1]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[1]) );
  DFFRX1 out_data_ready_r_reg_2_ ( .D(out_data_wait_r[2]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[2]) );
  DFFRX1 out_data_ready_r_reg_3_ ( .D(out_data_wait_r[3]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[3]) );
  DFFRX1 out_data_ready_r_reg_4_ ( .D(out_data_wait_r[4]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[4]) );
  DFFRX1 out_data_ready_r_reg_5_ ( .D(out_data_wait_r[5]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[5]) );
  DFFRX1 out_data_ready_r_reg_6_ ( .D(out_data_wait_r[6]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[6]) );
  DFFRX1 out_data_ready_r_reg_7_ ( .D(out_data_wait_r[7]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[7]) );
  DFFRX1 out_data_ready_r_reg_8_ ( .D(out_data_wait_r[8]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[8]) );
  DFFRX1 out_data_ready_r_reg_9_ ( .D(out_data_wait_r[9]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[9]) );
  DFFRX1 out_data_ready_r_reg_10_ ( .D(out_data_wait_r[10]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[10]) );
  DFFRX1 out_data_ready_r_reg_11_ ( .D(out_data_wait_r[11]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[11]) );
  DFFRX1 out_data_ready_r_reg_12_ ( .D(out_data_wait_r[12]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[12]) );
  DFFRX1 out_data_ready_r_reg_13_ ( .D(out_data_wait_r[13]), .CK(i_clk), .RN(
        n1030), .Q(o_out_data[13]) );
  DFFRX1 in_data_r_reg_7_ ( .D(i_in_data[7]), .CK(i_clk), .RN(n1030), .Q(
        in_data_r[7]) );
  DFFRX1 in_data_r_reg_6_ ( .D(i_in_data[6]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[6]) );
  DFFRX1 in_data_r_reg_5_ ( .D(i_in_data[5]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[5]) );
  DFFRX1 in_data_r_reg_4_ ( .D(i_in_data[4]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[4]) );
  DFFRX1 in_data_r_reg_3_ ( .D(i_in_data[3]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[3]) );
  DFFRX1 in_data_r_reg_2_ ( .D(i_in_data[2]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[2]) );
  DFFRX1 in_data_r_reg_1_ ( .D(i_in_data[1]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[1]) );
  DFFRX1 in_data_r_reg_0_ ( .D(i_in_data[0]), .CK(i_clk), .RN(n1028), .Q(
        in_data_r[0]) );
  DFFRX1 cnt_reg_5_ ( .D(n448), .CK(i_clk), .RN(n1029), .Q(cnt[5]), .QN(n427)
         );
  DFFRX1 cnt_reg_4_ ( .D(n449), .CK(i_clk), .RN(n1029), .Q(cnt[4]), .QN(n428)
         );
  DFFRX4 input_data_ready_r_reg_26_ ( .D(N734), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[26]) );
  DFFRX4 input_data_ready_r_reg_2_ ( .D(N710), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[2]) );
  DFFSXL pre_state_reg_2__2_ ( .D(pre_state[6]), .CK(i_clk), .SN(n1031), .Q(
        pre_state[9]) );
  DFFRXL pre_state_reg_2__0_ ( .D(pre_state[4]), .CK(i_clk), .RN(n1029), .Q(
        pre_state[8]) );
  DFFRXL pre_state_reg_0__0_ ( .D(n7350), .CK(i_clk), .RN(n1029), .Q(
        pre_state[0]) );
  DFFRXL pre_state_reg_0__1_ ( .D(curr_state[1]), .CK(i_clk), .RN(n1029), .Q(
        pre_state[1]) );
  DFFRXL x_minus_one_r_reg_0_ ( .D(n859), .CK(i_clk), .RN(n1029), .Q(
        x_minus_one_r[0]), .QN(n7530) );
  DFFRX4 input_data_ready_r_reg_3_ ( .D(N711), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[3]) );
  DFFRX4 input_data_ready_r_reg_25_ ( .D(N733), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[25]) );
  DFFRX4 input_data_ready_r_reg_1_ ( .D(N709), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[1]) );
  DFFSXL pre_state_reg_0__3_ ( .D(curr_state[3]), .CK(i_clk), .SN(n1031), .Q(
        pre_state[3]) );
  DFFRHQX8 x_origin_r_reg_0_ ( .D(n458), .CK(i_clk), .RN(n1030), .Q(n858) );
  DFFRX1 z_r_reg_4_ ( .D(N783), .CK(i_clk), .RN(n1028), .Q(z_r[4]) );
  DFFRX1 z_r_reg_3_ ( .D(N782), .CK(i_clk), .RN(n1028), .Q(z_r[3]) );
  DFFRX1 z_r_reg_2_ ( .D(N781), .CK(i_clk), .RN(n1028), .Q(z_r[2]) );
  DFFRX4 input_data_ready_r_reg_27_ ( .D(N735), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[27]) );
  DFFRHQX8 x_origin_r_reg_1_ ( .D(n457), .CK(i_clk), .RN(n1030), .Q(n841) );
  DFFRX4 input_data_ready_r_reg_14_ ( .D(N722), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[14]) );
  DFFRX4 input_data_ready_r_reg_7_ ( .D(N715), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[7]) );
  DFFRX4 input_data_ready_r_reg_23_ ( .D(N731), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[23]) );
  DFFRX2 y_r_reg_2_ ( .D(N808), .CK(i_clk), .RN(n1029), .Q(y_r[2]) );
  DFFRX2 x_r_reg_2_ ( .D(N778), .CK(i_clk), .RN(n1028), .Q(x_r[2]), .QN(n849)
         );
  DFFRX4 input_data_ready_r_reg_30_ ( .D(N738), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[30]) );
  DFFRX4 input_data_ready_r_reg_22_ ( .D(N730), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[22]) );
  DFFRX4 input_data_ready_r_reg_15_ ( .D(N723), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[15]) );
  DFFRX4 input_data_ready_r_reg_24_ ( .D(N732), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[24]) );
  DFFRX4 input_data_ready_r_reg_4_ ( .D(N712), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[4]) );
  DFFRX4 input_data_ready_r_reg_29_ ( .D(N737), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[29]) );
  DFFRX2 conv_calc_done_r_reg ( .D(n410), .CK(i_clk), .RN(n1030), .Q(
        conv_calc_done_r), .QN(n409) );
  DFFRX2 sram_addr_ready_r_reg_3__6_ ( .D(sram_addr_wait_r[33]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[33]), .QN(n404) );
  DFFRX2 sram_addr_ready_r_reg_3__8_ ( .D(sram_addr_wait_r[35]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[35]), .QN(n406) );
  DFFRX2 input_data_ready_r_reg_18_ ( .D(N726), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[18]), .QN(n850) );
  DFFRX4 input_data_ready_r_reg_28_ ( .D(N736), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[28]) );
  DFFRX2 sram_addr_ready_r_reg_3__3_ ( .D(sram_addr_wait_r[30]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[30]), .QN(n401) );
  DFFRX2 sram_addr_ready_r_reg_0__3_ ( .D(sram_addr_wait_r[3]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[3]), .QN(n374) );
  DFFRX2 sram_addr_ready_r_reg_3__2_ ( .D(sram_addr_wait_r[29]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[29]), .QN(n400) );
  DFFRX2 sram_addr_ready_r_reg_0__2_ ( .D(sram_addr_wait_r[2]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[2]), .QN(n373) );
  DFFRX2 sram_addr_ready_r_reg_2__2_ ( .D(sram_addr_wait_r[20]), .CK(i_clk), 
        .RN(n1031), .Q(sram_addr_w[20]), .QN(n391) );
  DFFRX2 y_r_reg_1_ ( .D(n1259), .CK(i_clk), .RN(n1029), .Q(y_r[1]) );
  DFFRX2 input_data_ready_r_reg_17_ ( .D(N725), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[17]), .QN(n852) );
  DFFRX2 x_r_reg_1_ ( .D(N777), .CK(i_clk), .RN(n1028), .Q(x_r[1]) );
  DFFRX2 cnt_reg_8_ ( .D(n445), .CK(i_clk), .RN(n1030), .Q(cnt[8]), .QN(n423)
         );
  DFFRX4 input_data_ready_r_reg_9_ ( .D(N717), .CK(i_clk), .RN(i_rst_n), .Q(
        input_data_ready_r[9]) );
  DFFRX1 x_plus_two_r_reg_1_ ( .D(n842), .CK(i_clk), .RN(n1030), .Q(
        x_plus_two_r[1]), .QN(n1258) );
  DFFRX1 x_delay_r_reg_0__1_ ( .D(x_r[1]), .CK(i_clk), .RN(n1028), .Q(
        x_delay_r_0__1_) );
  DFFRX1 x_delay_r_reg_2__1_ ( .D(x_delay_r_1__1_), .CK(i_clk), .RN(n1028), 
        .Q(N93), .QN(n910) );
  DFFRX1 x_delay_r_reg_1__1_ ( .D(x_delay_r_0__1_), .CK(i_clk), .RN(n1028), 
        .Q(x_delay_r_1__1_) );
  DFFRX1 x_delay_r_reg_1__0_ ( .D(x_delay_r_0__0_), .CK(i_clk), .RN(n1028), 
        .Q(x_delay_r_1__0_) );
  DFFRX1 x_delay_r_reg_0__0_ ( .D(x_r[0]), .CK(i_clk), .RN(n1028), .Q(
        x_delay_r_0__0_) );
  DFFRX1 cnt_reg_3_ ( .D(n450), .CK(i_clk), .RN(n1029), .Q(cnt[3]), .QN(n429)
         );
  DFFRX1 sram_data_out_r_reg_3__6_ ( .D(sram_data_out_w[30]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[30]), .QN(n7810) );
  DFFRX1 map_load_done_r_reg ( .D(N887), .CK(i_clk), .RN(n1030), .Q(n364), 
        .QN(n761) );
  DFFRX1 sram_data_out_r_reg_2__5_ ( .D(sram_data_out_w[21]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[21]), .QN(n759) );
  DFFRX1 sram_data_out_r_reg_2__3_ ( .D(sram_data_out_w[19]), .CK(i_clk), .RN(
        n1030), .Q(sram_data_out_r[19]), .QN(n755) );
  DFFRX2 input_data_ready_r_reg_6_ ( .D(N714), .CK(i_clk), .RN(n1029), .Q(
        input_data_ready_r[6]) );
  DFFRX2 input_data_ready_r_reg_31_ ( .D(N739), .CK(i_clk), .RN(n1028), .Q(
        input_data_ready_r[31]) );
  DFFRX1 sram_addr_ready_r_reg_1__7_ ( .D(sram_addr_wait_r[16]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[16]), .QN(n387) );
  DFFRX1 sram_addr_ready_r_reg_1__8_ ( .D(sram_addr_wait_r[17]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[17]), .QN(n388) );
  DFFRX1 sram_addr_ready_r_reg_0__7_ ( .D(sram_addr_wait_r[7]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[7]), .QN(n378) );
  DFFRX1 sram_addr_ready_r_reg_2__3_ ( .D(sram_addr_wait_r[21]), .CK(i_clk), 
        .RN(n1029), .Q(sram_addr_w[21]), .QN(n392) );
  DFFRX1 x_delay_r_reg_2__0_ ( .D(x_delay_r_1__0_), .CK(i_clk), .RN(n1031), 
        .Q(N92), .QN(n7800) );
  DFFRX1 sram_data_out_r_reg_1__3_ ( .D(sram_data_out_w[11]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[11]), .QN(n7770) );
  DFFRX1 med_done_r_reg ( .D(med_done_w), .CK(i_clk), .RN(n1029), .QN(n363) );
  DFFRX1 sram_data_out_r_reg_1__5_ ( .D(sram_data_out_w[13]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[13]), .QN(n7790) );
  DFFRX1 sram_data_out_r_reg_0__7_ ( .D(sram_data_out_w[7]), .CK(i_clk), .RN(
        n1031), .Q(sram_data_out_r[7]), .QN(n7780) );
  DFFRXL x_plus_two_r_reg_0_ ( .D(n858), .CK(i_clk), .RN(i_rst_n), .Q(
        x_plus_two_r[0]), .QN(n1256) );
  DFFRXL x_plus_one_r_reg_0_ ( .D(n859), .CK(i_clk), .RN(n1029), .Q(
        x_plus_one_r[0]), .QN(n1257) );
  DFFRHQX8 curr_state_reg_0_ ( .D(next_state[0]), .CK(i_clk), .RN(n1029), .Q(
        n7350) );
  DFFRX2 sram_addr_ready_r_reg_0__8_ ( .D(sram_addr_wait_r[8]), .CK(i_clk), 
        .RN(n1028), .Q(sram_addr_w[8]), .QN(n379) );
  DFFRX2 cnt_reg_10_ ( .D(n443), .CK(i_clk), .RN(n1030), .Q(cnt[10]), .QN(n421) );
  AND2X1 U792 ( .A(n885), .B(n1131), .Y(n875) );
  NAND4BX2 U793 ( .AN(n1116), .B(n1161), .C(n1150), .D(n1115), .Y(
        next_state[1]) );
  CLKAND2X8 U794 ( .A(n929), .B(n1173), .Y(n7340) );
  INVX6 U795 ( .A(n1211), .Y(n1213) );
  OAI221X1 U796 ( .A0(n388), .A1(n1053), .B0(n421), .B1(n1054), .C0(n1036), 
        .Y(sram_addr_wait_r[17]) );
  INVX3 U797 ( .A(n882), .Y(n1036) );
  INVX6 U798 ( .A(n420), .Y(n1108) );
  AND3X4 U799 ( .A(n1034), .B(n7360), .C(n1108), .Y(n1085) );
  NOR2X2 U800 ( .A(n7350), .B(n420), .Y(n1043) );
  NAND2X8 U801 ( .A(n1246), .B(n798), .Y(n1199) );
  INVX8 U802 ( .A(n7350), .Y(n7360) );
  XNOR2X1 U803 ( .A(n1132), .B(n797), .Y(n1136) );
  NAND2X2 U804 ( .A(n794), .B(n1042), .Y(n1132) );
  OAI221X4 U805 ( .A0(n393), .A1(n1051), .B0(n426), .B1(n1052), .C0(n1236), 
        .Y(sram_addr_wait_r[22]) );
  BUFX6 U806 ( .A(n1224), .Y(n1051) );
  MX2X1 U807 ( .A(n1155), .B(n1206), .S0(n859), .Y(N776) );
  CLKAND2X2 U808 ( .A(N623), .B(n975), .Y(n812) );
  CLKAND2X8 U809 ( .A(n859), .B(n842), .Y(n889) );
  NAND2X4 U810 ( .A(n841), .B(n859), .Y(n241) );
  CLKINVX1 U811 ( .A(l_valid_w), .Y(n7370) );
  INVX6 U812 ( .A(n1040), .Y(l_valid_w) );
  AOI22X1 U813 ( .A0(N700), .A1(n844), .B0(N700), .B1(n757), .Y(n956) );
  CLKAND2X8 U814 ( .A(n932), .B(n1007), .Y(n757) );
  BUFX6 U815 ( .A(n977), .Y(n1011) );
  OAI2BB1X1 U816 ( .A0N(n1008), .A1N(n1040), .B0(n931), .Y(n977) );
  INVX3 U817 ( .A(n1148), .Y(n1140) );
  BUFX4 U818 ( .A(N605), .Y(n7380) );
  BUFX6 U819 ( .A(n1012), .Y(n1014) );
  OAI221X4 U820 ( .A0(n422), .A1(n1055), .B0(n378), .B1(n1056), .C0(n775), .Y(
        sram_addr_wait_r[7]) );
  BUFX8 U821 ( .A(n1241), .Y(n1055) );
  NAND2X1 U822 ( .A(y_origin_r[0]), .B(n1173), .Y(n1124) );
  NAND3X6 U823 ( .A(n944), .B(n945), .C(n943), .Y(N720) );
  AOI222X4 U824 ( .A0(input_data_wait_r[12]), .A1(n1011), .B0(N613), .B1(n976), 
        .C0(N613), .C1(n975), .Y(n943) );
  BUFX20 U825 ( .A(n239), .Y(n1064) );
  NOR2X4 U826 ( .A(n1062), .B(n1282), .Y(N614) );
  AND2X1 U827 ( .A(N611), .B(n976), .Y(n1019) );
  OAI221X1 U828 ( .A0(n1058), .A1(n745), .B0(n1066), .B1(n772), .C0(n346), .Y(
        input_data_wait_r[8]) );
  NOR2X8 U829 ( .A(n1063), .B(n1292), .Y(N624) );
  CLKAND2X12 U830 ( .A(n930), .B(n931), .Y(n932) );
  AOI22X1 U831 ( .A0(N693), .A1(n756), .B0(N610), .B1(n7340), .Y(n939) );
  CLKAND2X6 U832 ( .A(n933), .B(n1007), .Y(n756) );
  AOI222X4 U833 ( .A0(input_data_wait_r[21]), .A1(n1011), .B0(N622), .B1(n976), 
        .C0(N622), .C1(n975), .Y(n970) );
  AND2X8 U834 ( .A(n933), .B(n1247), .Y(n975) );
  BUFX6 U835 ( .A(N688), .Y(n7390) );
  INVX3 U836 ( .A(n1013), .Y(n1027) );
  NAND3X2 U837 ( .A(n951), .B(n950), .C(n949), .Y(N722) );
  NOR3X2 U838 ( .A(n816), .B(n817), .C(n818), .Y(n949) );
  AOI22XL U839 ( .A0(n7380), .A1(n1009), .B0(input_data_wait_r[4]), .B1(n1014), 
        .Y(n920) );
  NAND2X2 U840 ( .A(n7380), .B(n924), .Y(n821) );
  AOI222X4 U841 ( .A0(input_data_wait_r[17]), .A1(n1011), .B0(N618), .B1(n976), 
        .C0(N618), .C1(n975), .Y(n958) );
  OAI221X4 U842 ( .A0(n1059), .A1(n760), .B0(n1067), .B1(n770), .C0(n3310), 
        .Y(input_data_wait_r[17]) );
  INVX3 U843 ( .A(input_data_wait_r[8]), .Y(n1277) );
  NOR2X2 U844 ( .A(n1062), .B(n1281), .Y(N613) );
  NOR2X2 U845 ( .A(n1252), .B(n1281), .Y(N696) );
  INVX3 U846 ( .A(input_data_wait_r[12]), .Y(n1281) );
  INVX3 U847 ( .A(input_data_wait_r[20]), .Y(n1289) );
  OAI221X4 U848 ( .A0(n1058), .A1(n769), .B0(n1067), .B1(n742), .C0(n316), .Y(
        input_data_wait_r[20]) );
  AOI222X1 U849 ( .A0(input_data_wait_r[15]), .A1(n1011), .B0(N616), .B1(n976), 
        .C0(N616), .C1(n975), .Y(n952) );
  INVX8 U850 ( .A(input_data_wait_r[15]), .Y(n1284) );
  OAI221X4 U851 ( .A0(n1058), .A1(n7780), .B0(n1066), .B1(n7470), .C0(n339), 
        .Y(input_data_wait_r[15]) );
  NOR2X2 U852 ( .A(n1252), .B(n1278), .Y(N693) );
  OAI221X4 U853 ( .A0(n1058), .A1(n743), .B0(n1065), .B1(n769), .C0(n358), .Y(
        input_data_wait_r[28]) );
  NOR2X2 U854 ( .A(n1062), .B(n1275), .Y(N607) );
  INVX4 U855 ( .A(input_data_wait_r[24]), .Y(n1263) );
  OAI221X4 U856 ( .A0(n1058), .A1(n750), .B0(n1066), .B1(n7760), .C0(n362), 
        .Y(input_data_wait_r[24]) );
  AOI222X1 U857 ( .A0(N682), .A1(n1010), .B0(N682), .B1(n1003), .C0(N600), 
        .C1(n1002), .Y(n1005) );
  OAI21XL U858 ( .A0(n1027), .A1(n7370), .B0(n981), .Y(n1012) );
  OA22X2 U859 ( .A0(r_valid_w), .A1(l_valid_w), .B0(n1247), .B1(u_valid_w), 
        .Y(n981) );
  NOR2X8 U860 ( .A(n1062), .B(n1279), .Y(N611) );
  INVX8 U861 ( .A(input_data_wait_r[10]), .Y(n1279) );
  NOR2X1 U862 ( .A(n1248), .B(n790), .Y(N596) );
  NOR2X1 U863 ( .A(n1252), .B(n790), .Y(N678) );
  AOI221X4 U864 ( .A0(n1060), .A1(sram_data_out_r[19]), .B0(n8870), .B1(
        sram_data_out_r[11]), .C0(n791), .Y(n790) );
  AOI22X1 U865 ( .A0(N696), .A1(n756), .B0(N613), .B1(n7340), .Y(n945) );
  NOR2X2 U866 ( .A(n1252), .B(n1284), .Y(N699) );
  BUFX4 U867 ( .A(N695), .Y(n740) );
  NAND2X2 U868 ( .A(op_mode_r[1]), .B(n1042), .Y(n1138) );
  NOR2X2 U869 ( .A(n1062), .B(n1278), .Y(N610) );
  OAI221X1 U870 ( .A0(n392), .A1(n1051), .B0(n427), .B1(n1052), .C0(n1037), 
        .Y(sram_addr_wait_r[21]) );
  CLKINVX8 U871 ( .A(n880), .Y(n1037) );
  BUFX12 U872 ( .A(n1240), .Y(n1056) );
  INVX6 U873 ( .A(input_data_wait_r[7]), .Y(n1276) );
  OAI221X4 U874 ( .A0(n1058), .A1(n7470), .B0(n1066), .B1(n774), .C0(n347), 
        .Y(input_data_wait_r[7]) );
  AOI22XL U875 ( .A0(N698), .A1(n756), .B0(N615), .B1(n7340), .Y(n951) );
  NOR2X2 U876 ( .A(n1252), .B(n1283), .Y(N698) );
  AND3X2 U877 ( .A(n1041), .B(n859), .C(n842), .Y(n1040) );
  AOI222X1 U878 ( .A0(N690), .A1(n1010), .B0(N690), .B1(n925), .C0(N607), .C1(
        n924), .Y(n922) );
  AND2X2 U879 ( .A(n930), .B(n983), .Y(n925) );
  NAND2XL U880 ( .A(input_data_wait_r[23]), .B(n1011), .Y(n1017) );
  INVX6 U881 ( .A(input_data_wait_r[23]), .Y(n1292) );
  OAI221X4 U882 ( .A0(n1058), .A1(n741), .B0(n1067), .B1(n7780), .C0(n301), 
        .Y(input_data_wait_r[23]) );
  NOR2X2 U883 ( .A(n1062), .B(n1284), .Y(N616) );
  NAND3X2 U884 ( .A(n954), .B(n953), .C(n952), .Y(N723) );
  AND2XL U885 ( .A(input_data_wait_r[10]), .B(n1011), .Y(n1020) );
  OAI221X4 U886 ( .A0(n1059), .A1(n751), .B0(n1066), .B1(n762), .C0(n344), .Y(
        input_data_wait_r[10]) );
  INVX6 U887 ( .A(input_data_wait_r[14]), .Y(n1283) );
  OAI221X4 U888 ( .A0(n1058), .A1(n744), .B0(n1066), .B1(n7810), .C0(n340), 
        .Y(input_data_wait_r[14]) );
  BUFX4 U889 ( .A(n889), .Y(n1061) );
  INVX3 U890 ( .A(input_data_wait_r[22]), .Y(n1291) );
  INVX4 U891 ( .A(input_data_wait_r[21]), .Y(n1290) );
  NAND3X2 U892 ( .A(n854), .B(n855), .C(n306), .Y(input_data_wait_r[22]) );
  OA22XL U893 ( .A0(n765), .A1(n1064), .B0(n837), .B1(n758), .Y(n340) );
  INVX3 U894 ( .A(input_data_wait_r[1]), .Y(n1270) );
  INVX4 U895 ( .A(input_data_wait_r[25]), .Y(n1264) );
  INVX4 U896 ( .A(input_data_wait_r[2]), .Y(n1271) );
  CLKINVX1 U897 ( .A(n1168), .Y(n1170) );
  AND2X4 U898 ( .A(op_mode_r[3]), .B(n797), .Y(n886) );
  CLKINVX6 U899 ( .A(n803), .Y(n1102) );
  INVX3 U900 ( .A(input_data_wait_r[0]), .Y(n1269) );
  OA22XL U901 ( .A0(n773), .A1(n1064), .B0(n838), .B1(n746), .Y(n344) );
  INVX3 U902 ( .A(input_data_wait_r[11]), .Y(n1280) );
  INVX3 U903 ( .A(input_data_wait_r[19]), .Y(n1288) );
  AND2X4 U904 ( .A(n985), .B(n931), .Y(n933) );
  OA22X2 U905 ( .A0(n760), .A1(n1064), .B0(n838), .B1(n7830), .Y(n345) );
  OA22X2 U906 ( .A0(n1064), .A1(n7830), .B0(n752), .B1(n837), .Y(n3310) );
  NOR2X2 U907 ( .A(n1063), .B(n1286), .Y(N618) );
  OA22XL U908 ( .A0(n742), .A1(n1064), .B0(n838), .B1(n769), .Y(n350) );
  NOR2X1 U909 ( .A(n1062), .B(n1273), .Y(N605) );
  NOR2X1 U910 ( .A(n1248), .B(n1263), .Y(N593) );
  NOR2X2 U911 ( .A(n1252), .B(n1263), .Y(N675) );
  OA22X1 U912 ( .A0(n741), .A1(n1064), .B0(n837), .B1(n774), .Y(n339) );
  NOR2X2 U913 ( .A(n1063), .B(n1291), .Y(N623) );
  NOR2X2 U914 ( .A(n1252), .B(n1291), .Y(N706) );
  INVX3 U915 ( .A(n1138), .Y(n1143) );
  CLKINVX1 U916 ( .A(n1142), .Y(n1146) );
  CLKAND2X4 U917 ( .A(n930), .B(n984), .Y(n924) );
  CLKAND2X4 U918 ( .A(n985), .B(n983), .Y(n1003) );
  INVX3 U919 ( .A(n1060), .Y(n1059) );
  BUFX8 U920 ( .A(n1232), .Y(n1053) );
  BUFX6 U921 ( .A(n1231), .Y(n1054) );
  INVX3 U922 ( .A(n442), .Y(n1198) );
  NOR2X1 U923 ( .A(n1252), .B(n1285), .Y(N700) );
  CLKBUFX3 U924 ( .A(N617), .Y(n840) );
  AND2X2 U925 ( .A(input_data_wait_r[16]), .B(n1011), .Y(n813) );
  AND2X2 U926 ( .A(n840), .B(n975), .Y(n815) );
  AND2X2 U927 ( .A(n840), .B(n976), .Y(n814) );
  INVX3 U928 ( .A(n1132), .Y(n796) );
  NAND2X1 U929 ( .A(y_origin_r[2]), .B(y_origin_r[1]), .Y(n1173) );
  OAI31XL U930 ( .A0(n1106), .A1(op_mode_r[2]), .A2(n860), .B0(n1168), .Y(
        n1116) );
  OA22X2 U931 ( .A0(n7790), .A1(n1064), .B0(n837), .B1(n759), .Y(n341) );
  NOR2X4 U932 ( .A(n1063), .B(n1288), .Y(N620) );
  AND2X2 U933 ( .A(N620), .B(n976), .Y(n1025) );
  AND2X2 U934 ( .A(n929), .B(n1007), .Y(n843) );
  OA22X2 U935 ( .A0(n759), .A1(n1064), .B0(n838), .B1(n767), .Y(n311) );
  AND2X2 U936 ( .A(n929), .B(n1007), .Y(n844) );
  INVX4 U937 ( .A(n852), .Y(n853) );
  OA22X1 U938 ( .A0(n774), .A1(n1064), .B0(n837), .B1(n7470), .Y(n301) );
  NAND2X4 U939 ( .A(n1260), .B(o_in_ready), .Y(n1071) );
  NOR2X2 U940 ( .A(n1040), .B(n1008), .Y(n928) );
  INVX3 U941 ( .A(n856), .Y(n857) );
  NOR2X4 U942 ( .A(n1063), .B(n1287), .Y(N619) );
  CLKBUFX3 U943 ( .A(N702), .Y(n8350) );
  AND2X2 U944 ( .A(input_data_wait_r[18]), .B(n1011), .Y(n1023) );
  CLKINVX1 U945 ( .A(n1058), .Y(n788) );
  CLKINVX1 U946 ( .A(n787), .Y(input_data_wait_r[29]) );
  OA21XL U947 ( .A0(n431), .A1(n1190), .B0(n1208), .Y(n1180) );
  NOR2X2 U948 ( .A(n1062), .B(n1276), .Y(N608) );
  CLKINVX1 U949 ( .A(n790), .Y(input_data_wait_r[27]) );
  OA22X1 U950 ( .A0(n1064), .A1(n770), .B0(n838), .B1(n760), .Y(n353) );
  NOR2X1 U951 ( .A(n1252), .B(n1270), .Y(N685) );
  AND2X2 U952 ( .A(N602), .B(n924), .Y(n828) );
  NOR2X1 U953 ( .A(n1252), .B(n1264), .Y(N676) );
  OA22X1 U954 ( .A0(n1064), .A1(n752), .B0(n770), .B1(n837), .Y(n361) );
  AND2X2 U955 ( .A(N594), .B(n1002), .Y(n831) );
  AND2X2 U956 ( .A(N676), .B(n1010), .Y(n829) );
  OA22X2 U957 ( .A0(n748), .A1(n1064), .B0(n837), .B1(n7770), .Y(n351) );
  OA22X1 U958 ( .A0(n751), .A1(n1064), .B0(n837), .B1(n773), .Y(n352) );
  NOR2X1 U959 ( .A(n1252), .B(n1271), .Y(N686) );
  AND2X2 U960 ( .A(N603), .B(n924), .Y(n8340) );
  AND2X2 U961 ( .A(N686), .B(n1010), .Y(n8320) );
  AND2X2 U962 ( .A(N93), .B(N92), .Y(n905) );
  BUFX6 U963 ( .A(n1214), .Y(n1050) );
  BUFX4 U964 ( .A(n1215), .Y(n1049) );
  CLKINVX1 U965 ( .A(n1219), .Y(n1220) );
  INVX3 U966 ( .A(n879), .Y(n1038) );
  INVX3 U967 ( .A(n881), .Y(n1039) );
  NAND4X1 U968 ( .A(op_mode_r[1]), .B(op_mode_r[3]), .C(n1042), .D(n797), .Y(
        n1099) );
  CLKINVX1 U969 ( .A(n792), .Y(n861) );
  NAND2BX1 U970 ( .AN(n1277), .B(n1011), .Y(n792) );
  NOR2X2 U971 ( .A(n1062), .B(n1277), .Y(N609) );
  INVX3 U972 ( .A(n1095), .Y(n1091) );
  AND2X4 U973 ( .A(n1071), .B(n1160), .Y(n872) );
  OAI32X1 U974 ( .A0(n1082), .A1(n1047), .A2(n1109), .B0(n1047), .B1(n1152), 
        .Y(n1112) );
  OR2X4 U975 ( .A(n1094), .B(n1045), .Y(n1168) );
  OA22X1 U976 ( .A0(n745), .A1(n1064), .B0(n838), .B1(n7760), .Y(n354) );
  NOR2X1 U977 ( .A(n1252), .B(n1269), .Y(N684) );
  AND2X2 U978 ( .A(N601), .B(n924), .Y(n825) );
  NOR2X1 U979 ( .A(n1252), .B(n1274), .Y(N689) );
  OR3X2 U980 ( .A(n867), .B(n868), .C(n754), .Y(input_data_wait_r[5]) );
  OAI221X1 U981 ( .A0(n1058), .A1(n748), .B0(n1066), .B1(n766), .C0(n343), .Y(
        input_data_wait_r[11]) );
  NOR2X1 U982 ( .A(n1252), .B(n1280), .Y(N695) );
  CLKBUFX3 U983 ( .A(N705), .Y(n839) );
  NAND3X1 U984 ( .A(n939), .B(n938), .C(n937), .Y(N717) );
  AOI222XL U985 ( .A0(input_data_wait_r[9]), .A1(n1011), .B0(N610), .B1(n976), 
        .C0(N610), .C1(n975), .Y(n937) );
  OAI221XL U986 ( .A0(n421), .A1(n1055), .B0(n379), .B1(n1056), .C0(n1036), 
        .Y(sram_addr_wait_r[8]) );
  NAND3X1 U987 ( .A(n960), .B(n959), .C(n958), .Y(N725) );
  NAND2X1 U988 ( .A(n995), .B(n994), .Y(N736) );
  AOI222X1 U989 ( .A0(N679), .A1(n1010), .B0(N679), .B1(n1003), .C0(N597), 
        .C1(n1002), .Y(n994) );
  NAND2X1 U990 ( .A(n1006), .B(n1005), .Y(N739) );
  NOR2X1 U991 ( .A(n1252), .B(n1268), .Y(N682) );
  NAND2X2 U992 ( .A(n920), .B(n919), .Y(N712) );
  NAND2X1 U993 ( .A(n987), .B(n986), .Y(N732) );
  NOR2X1 U994 ( .A(n1248), .B(n1263), .Y(n848) );
  NAND2X1 U995 ( .A(n923), .B(n922), .Y(N714) );
  NAND2X2 U996 ( .A(n763), .B(n972), .Y(N730) );
  NOR3X1 U997 ( .A(n8100), .B(n8110), .C(n812), .Y(n972) );
  NAND2X1 U998 ( .A(n999), .B(n998), .Y(N738) );
  AOI222X1 U999 ( .A0(N681), .A1(n1010), .B0(N681), .B1(n1003), .C0(N599), 
        .C1(n1002), .Y(n998) );
  MXI2X1 U1000 ( .A(n883), .B(n884), .S0(x_origin_r_2_), .Y(N778) );
  OAI222XL U1001 ( .A0(n1140), .A1(n842), .B0(n1139), .B1(n1144), .C0(n1065), 
        .C1(n1138), .Y(n457) );
  NAND2X1 U1002 ( .A(n991), .B(n990), .Y(N734) );
  AOI222X1 U1003 ( .A0(N677), .A1(n1010), .B0(N677), .B1(n1003), .C0(N595), 
        .C1(n1002), .Y(n990) );
  AO22X1 U1004 ( .A0(N475), .A1(n872), .B0(n1117), .B1(n1251), .Y(n444) );
  OAI221XL U1005 ( .A0(n422), .A1(n1049), .B0(n405), .B1(n1050), .C0(n775), 
        .Y(sram_addr_wait_r[34]) );
  OAI221X1 U1006 ( .A0(n395), .A1(n1051), .B0(n423), .B1(n1052), .C0(n1039), 
        .Y(sram_addr_wait_r[24]) );
  OAI221X1 U1007 ( .A0(n396), .A1(n1051), .B0(n422), .B1(n1052), .C0(n775), 
        .Y(sram_addr_wait_r[25]) );
  OAI221X1 U1008 ( .A0(n397), .A1(n1051), .B0(n421), .B1(n1052), .C0(n1036), 
        .Y(sram_addr_wait_r[26]) );
  OA22X2 U1009 ( .A0(n380), .A1(n1053), .B0(n430), .B1(n1054), .Y(n1233) );
  OAI221X1 U1010 ( .A0(n382), .A1(n1053), .B0(n428), .B1(n1054), .C0(n1038), 
        .Y(sram_addr_wait_r[11]) );
  OAI221X1 U1011 ( .A0(n383), .A1(n1053), .B0(n427), .B1(n1054), .C0(n1037), 
        .Y(sram_addr_wait_r[12]) );
  OAI221X1 U1012 ( .A0(n386), .A1(n1053), .B0(n423), .B1(n1054), .C0(n1039), 
        .Y(sram_addr_wait_r[15]) );
  OAI221X1 U1013 ( .A0(n425), .A1(n1055), .B0(n376), .B1(n1056), .C0(n1235), 
        .Y(sram_addr_wait_r[5]) );
  OAI221X1 U1014 ( .A0(n423), .A1(n1055), .B0(n377), .B1(n1056), .C0(n1039), 
        .Y(sram_addr_wait_r[6]) );
  NOR3X1 U1015 ( .A(n813), .B(n814), .C(n815), .Y(n955) );
  OAI221X1 U1016 ( .A0(n1127), .A1(n1132), .B0(n440), .B1(n885), .C0(n1173), 
        .Y(n1128) );
  MXI2X1 U1017 ( .A(n874), .B(n875), .S0(n1195), .Y(n460) );
  NAND2X1 U1018 ( .A(n1131), .B(n1123), .Y(n874) );
  OR3X2 U1019 ( .A(n804), .B(n805), .C(n8060), .Y(N718) );
  AOI222XL U1020 ( .A0(input_data_wait_r[13]), .A1(n1011), .B0(N614), .B1(n976), .C0(N614), .C1(n975), .Y(n946) );
  NAND3X1 U1021 ( .A(n966), .B(n965), .C(n964), .Y(N727) );
  NOR3X1 U1022 ( .A(n1026), .B(n1025), .C(n1024), .Y(n964) );
  INVX6 U1023 ( .A(n800), .Y(n1246) );
  AOI21XL U1024 ( .A0(n1150), .A1(n1149), .B0(n800), .Y(n1046) );
  OAI221X1 U1025 ( .A0(n426), .A1(n1055), .B0(n375), .B1(n1056), .C0(n1236), 
        .Y(sram_addr_wait_r[4]) );
  OAI221X4 U1026 ( .A0(n390), .A1(n1051), .B0(n429), .B1(n1052), .C0(n1237), 
        .Y(sram_addr_wait_r[19]) );
  BUFX12 U1027 ( .A(n1223), .Y(n1052) );
  NAND2X2 U1028 ( .A(n918), .B(n917), .Y(N711) );
  AOI222X4 U1029 ( .A0(N687), .A1(n1010), .B0(N687), .B1(n925), .C0(N604), 
        .C1(n924), .Y(n917) );
  NOR2X4 U1030 ( .A(n1063), .B(n1290), .Y(N622) );
  NAND3X2 U1031 ( .A(n942), .B(n941), .C(n940), .Y(N719) );
  AOI222X4 U1032 ( .A0(input_data_wait_r[11]), .A1(n1011), .B0(N612), .B1(n976), .C0(N612), .C1(n975), .Y(n940) );
  INVX4 U1033 ( .A(n1207), .Y(n1181) );
  INVX6 U1034 ( .A(n241), .Y(n836) );
  AND2X6 U1035 ( .A(n841), .B(n858), .Y(n8870) );
  OAI22X1 U1036 ( .A0(n749), .A1(n1064), .B0(n838), .B1(n7790), .Y(n754) );
  CLKBUFX6 U1037 ( .A(n1248), .Y(n1062) );
  BUFX4 U1038 ( .A(n1248), .Y(n1063) );
  AND2X2 U1039 ( .A(n974), .B(n973), .Y(n763) );
  NAND2X2 U1040 ( .A(n842), .B(n858), .Y(n239) );
  AND2X2 U1041 ( .A(n860), .B(n1042), .Y(n771) );
  NAND2X2 U1042 ( .A(z_r[3]), .B(n1044), .Y(n775) );
  AND2X2 U1043 ( .A(n985), .B(n984), .Y(n1002) );
  AND2X2 U1044 ( .A(n1167), .B(input_data_wait_r[13]), .Y(n7820) );
  BUFX4 U1045 ( .A(n1001), .Y(n1009) );
  INVX6 U1046 ( .A(r_valid_w), .Y(n1008) );
  AOI22X1 U1047 ( .A0(N604), .A1(n1009), .B0(input_data_wait_r[3]), .B1(n1014), 
        .Y(n918) );
  INVX8 U1048 ( .A(n417), .Y(n1118) );
  INVX6 U1049 ( .A(n1152), .Y(n1103) );
  AOI2BB2X1 U1050 ( .B0(n836), .B1(sram_data_out_r[7]), .A0N(n7470), .A1N(
        n1064), .Y(n355) );
  INVX12 U1051 ( .A(n836), .Y(n838) );
  INVX12 U1052 ( .A(n416), .Y(n1208) );
  BUFX6 U1053 ( .A(n416), .Y(n798) );
  AOI22X1 U1054 ( .A0(N704), .A1(n756), .B0(N621), .B1(n7340), .Y(n969) );
  AOI221X4 U1055 ( .A0(n788), .A1(sram_data_out_r[21]), .B0(n8870), .B1(
        sram_data_out_r[13]), .C0(n789), .Y(n787) );
  OAI22XL U1056 ( .A0(n767), .A1(n1064), .B0(n837), .B1(n749), .Y(n789) );
  INVX3 U1057 ( .A(n1113), .Y(n1150) );
  NAND2X6 U1058 ( .A(n363), .B(n7350), .Y(n1109) );
  OAI22XL U1059 ( .A0(n766), .A1(n1064), .B0(n838), .B1(n748), .Y(n791) );
  INVX12 U1060 ( .A(n1061), .Y(n1058) );
  INVX8 U1061 ( .A(n1068), .Y(n1065) );
  NOR2X6 U1062 ( .A(n1109), .B(n1082), .Y(n803) );
  NOR4X2 U1063 ( .A(n1250), .B(cnt[8]), .C(n1251), .D(cnt[10]), .Y(n136) );
  NAND4X1 U1064 ( .A(n1251), .B(cnt[10]), .C(cnt[8]), .D(n208), .Y(n206) );
  OAI221X2 U1065 ( .A0(n1064), .A1(n1157), .B0(n1156), .B1(n842), .C0(n837), 
        .Y(N777) );
  NOR3X1 U1066 ( .A(n864), .B(n865), .C(n866), .Y(n921) );
  INVX3 U1067 ( .A(input_data_wait_r[5]), .Y(n1274) );
  BUFX4 U1068 ( .A(N703), .Y(n793) );
  NOR2X2 U1069 ( .A(n8080), .B(n1286), .Y(N701) );
  OAI31X1 U1070 ( .A0(n1142), .A1(n1158), .A2(n1144), .B0(n1141), .Y(n456) );
  OAI21X1 U1071 ( .A0(n1058), .A1(n1148), .B0(x_origin_r_2_), .Y(n1141) );
  AOI22X2 U1072 ( .A0(n8350), .A1(n844), .B0(n8350), .B1(n757), .Y(n962) );
  OA22X2 U1073 ( .A0(n430), .A1(n1049), .B0(n398), .B1(n1050), .Y(n1216) );
  BUFX4 U1074 ( .A(n1048), .Y(n802) );
  BUFX4 U1075 ( .A(n1175), .Y(n795) );
  NAND4X1 U1076 ( .A(n366), .B(n1034), .C(n7350), .D(n1108), .Y(n1097) );
  INVX3 U1077 ( .A(n1118), .Y(n1034) );
  AOI32X1 U1078 ( .A0(n1143), .A1(n1060), .A2(l_valid_w), .B0(n1146), .B1(N123), .Y(n1139) );
  INVX6 U1079 ( .A(n850), .Y(n851) );
  AND4X4 U1080 ( .A(n1097), .B(n1096), .C(n1102), .D(n1095), .Y(n1098) );
  NAND4X6 U1081 ( .A(n1110), .B(n1111), .C(n1105), .D(n1104), .Y(n416) );
  INVX12 U1082 ( .A(n841), .Y(n842) );
  NOR2X2 U1083 ( .A(n1062), .B(n1283), .Y(N615) );
  CLKINVX1 U1084 ( .A(n1276), .Y(n799) );
  NAND2X8 U1085 ( .A(n1199), .B(n1197), .Y(n1207) );
  OR2X4 U1086 ( .A(n416), .B(n1154), .Y(n1211) );
  INVX6 U1087 ( .A(n1167), .Y(n1252) );
  INVX1 U1088 ( .A(n1167), .Y(n8080) );
  NAND2X2 U1089 ( .A(cnt[1]), .B(n1227), .Y(n1167) );
  NAND2BX1 U1090 ( .AN(n1108), .B(n1107), .Y(n888) );
  CLKINVX8 U1091 ( .A(curr_state[1]), .Y(n1047) );
  AND4X8 U1092 ( .A(n801), .B(n1093), .C(n1102), .D(n1149), .Y(n800) );
  AND4X4 U1093 ( .A(n1087), .B(n1089), .C(n1088), .D(n1090), .Y(n801) );
  CLKAND2X12 U1094 ( .A(n7350), .B(n1108), .Y(n873) );
  NAND4X1 U1095 ( .A(op_mode_r[0]), .B(op_mode_r[3]), .C(n794), .D(n797), .Y(
        n1100) );
  NOR4X6 U1096 ( .A(curr_state[2]), .B(n1047), .C(curr_state[3]), .D(n7350), 
        .Y(n1048) );
  NAND2X6 U1097 ( .A(y_origin_r[2]), .B(y_origin_r[1]), .Y(n1247) );
  AND4X1 U1098 ( .A(next_state[1]), .B(n1208), .C(n1227), .D(n1246), .Y(n1156)
         );
  NAND3BX1 U1099 ( .AN(n798), .B(n1227), .C(n1207), .Y(n1155) );
  AO22X4 U1100 ( .A0(n1193), .A1(n1207), .B0(n1192), .B1(n1191), .Y(n1194) );
  NOR3X2 U1101 ( .A(n861), .B(n862), .C(n863), .Y(n934) );
  AND4X1 U1102 ( .A(n1227), .B(n1068), .C(n1208), .D(n1207), .Y(n884) );
  NAND2XL U1103 ( .A(n1208), .B(n431), .Y(n1204) );
  NAND4X1 U1104 ( .A(n365), .B(n7360), .C(n419), .D(n1118), .Y(n1089) );
  INVX3 U1105 ( .A(n1071), .Y(n1117) );
  BUFX12 U1106 ( .A(n1205), .Y(n1044) );
  NAND2BX2 U1107 ( .AN(n807), .B(n921), .Y(N713) );
  INVX1 U1108 ( .A(n1199), .Y(n1201) );
  NOR2X2 U1109 ( .A(n1252), .B(n787), .Y(N680) );
  INVX3 U1110 ( .A(n1070), .Y(n1086) );
  NAND2X1 U1111 ( .A(n1047), .B(n1107), .Y(n1160) );
  NOR2X2 U1112 ( .A(n1252), .B(n1266), .Y(N679) );
  NOR2X2 U1113 ( .A(n1252), .B(n1267), .Y(N681) );
  NOR3X2 U1114 ( .A(n1023), .B(n1022), .C(n1021), .Y(n961) );
  AND2X1 U1115 ( .A(N619), .B(n976), .Y(n1022) );
  AND4X1 U1116 ( .A(n802), .B(n1132), .C(n1122), .D(n860), .Y(n876) );
  AO22X1 U1117 ( .A0(N694), .A1(n756), .B0(N611), .B1(n7340), .Y(n8060) );
  INVX4 U1118 ( .A(input_data_wait_r[6]), .Y(n1275) );
  AOI22X1 U1119 ( .A0(N607), .A1(n1009), .B0(input_data_wait_r[6]), .B1(n1014), 
        .Y(n923) );
  OAI221X4 U1120 ( .A0(n1058), .A1(n7810), .B0(n1066), .B1(n758), .C0(n348), 
        .Y(input_data_wait_r[6]) );
  NOR2X2 U1121 ( .A(n1252), .B(n1275), .Y(N690) );
  AOI2BB1X1 U1122 ( .A0N(n1146), .A1N(n1145), .B0(n1144), .Y(n1147) );
  AOI22X1 U1123 ( .A0(N696), .A1(n844), .B0(N696), .B1(n757), .Y(n944) );
  OR3X2 U1124 ( .A(n1020), .B(n1019), .C(n1018), .Y(n804) );
  AO22X1 U1125 ( .A0(N694), .A1(n844), .B0(N694), .B1(n757), .Y(n805) );
  CLKMX2X2 U1126 ( .A(n796), .B(n871), .S0(n1032), .Y(n1123) );
  AND2X1 U1127 ( .A(n1125), .B(u_valid_w), .Y(n871) );
  OAI221X4 U1128 ( .A0(n1058), .A1(n7790), .B0(n1067), .B1(n749), .C0(n311), 
        .Y(input_data_wait_r[21]) );
  NOR2X2 U1129 ( .A(n1248), .B(n1267), .Y(N599) );
  NOR2X2 U1130 ( .A(n1248), .B(n787), .Y(N598) );
  NOR2X2 U1131 ( .A(n1062), .B(n1266), .Y(N597) );
  NOR2X1 U1132 ( .A(n1062), .B(n1272), .Y(N604) );
  OA22X2 U1133 ( .A0(n7770), .A1(n1064), .B0(n838), .B1(n755), .Y(n343) );
  NOR2X2 U1134 ( .A(n1062), .B(n1280), .Y(N612) );
  AOI31X2 U1135 ( .A0(n1103), .A1(n764), .A2(n1108), .B0(n803), .Y(n1105) );
  OAI221X4 U1136 ( .A0(n1058), .A1(n7770), .B0(n1067), .B1(n748), .C0(n321), 
        .Y(input_data_wait_r[19]) );
  NAND3BX4 U1137 ( .AN(n7350), .B(n1047), .C(n1103), .Y(n1095) );
  AO21X4 U1138 ( .A0(n1150), .A1(n1149), .B0(n800), .Y(n1197) );
  NOR2X2 U1139 ( .A(n1248), .B(n1268), .Y(N600) );
  NAND4X2 U1140 ( .A(n7360), .B(n409), .C(n1108), .D(n1084), .Y(n1090) );
  INVX3 U1141 ( .A(n1082), .Y(n1084) );
  OA22X1 U1142 ( .A0(n758), .A1(n1064), .B0(n837), .B1(n7810), .Y(n306) );
  AOI22X2 U1143 ( .A0(N706), .A1(n843), .B0(N706), .B1(n757), .Y(n973) );
  AO22X1 U1144 ( .A0(N606), .A1(n1009), .B0(input_data_wait_r[5]), .B1(n1014), 
        .Y(n807) );
  AOI222X4 U1145 ( .A0(N678), .A1(n1010), .B0(N678), .B1(n1003), .C0(N596), 
        .C1(n1002), .Y(n992) );
  OA22X2 U1146 ( .A0(n743), .A1(n1064), .B0(n837), .B1(n768), .Y(n316) );
  NOR2X2 U1147 ( .A(n8080), .B(n1277), .Y(N692) );
  AOI22XL U1148 ( .A0(N692), .A1(n844), .B0(N692), .B1(n757), .Y(n935) );
  INVX3 U1149 ( .A(n1188), .Y(n1176) );
  CLKXOR2X2 U1150 ( .A(n795), .B(cnt[1]), .Y(n1188) );
  NAND2BX4 U1151 ( .AN(n1199), .B(n869), .Y(n1192) );
  NAND2X8 U1152 ( .A(n1161), .B(n1168), .Y(n870) );
  NAND2X2 U1153 ( .A(n1167), .B(n870), .Y(n1214) );
  AND2X1 U1154 ( .A(n870), .B(n7350), .Y(n877) );
  NAND2BX2 U1155 ( .AN(n1228), .B(n870), .Y(n1231) );
  NAND2X2 U1156 ( .A(n1252), .B(n870), .Y(n1215) );
  NAND2X1 U1157 ( .A(n870), .B(n1063), .Y(n1241) );
  NAND2X1 U1158 ( .A(n1219), .B(n870), .Y(n1224) );
  INVX2 U1159 ( .A(n1247), .Y(n1007) );
  NOR2X4 U1160 ( .A(n1007), .B(u_valid_w), .Y(n984) );
  CLKAND2X6 U1161 ( .A(u_valid_w), .B(n1007), .Y(n983) );
  NAND3X1 U1162 ( .A(n969), .B(n968), .C(n967), .Y(N728) );
  NOR3X1 U1163 ( .A(cnt[5]), .B(n430), .C(n1262), .Y(n226) );
  NAND2X2 U1164 ( .A(n417), .B(n419), .Y(n1070) );
  NOR2X2 U1165 ( .A(n1008), .B(l_valid_w), .Y(n985) );
  OAI221X4 U1166 ( .A0(n429), .A1(n1055), .B0(n372), .B1(n1056), .C0(n1237), 
        .Y(sram_addr_wait_r[1]) );
  OA22X4 U1167 ( .A0(n430), .A1(n1055), .B0(n371), .B1(n1056), .Y(n1242) );
  OAI221X2 U1168 ( .A0(n1058), .A1(n772), .B0(n1065), .B1(n750), .C0(n354), 
        .Y(input_data_wait_r[0]) );
  AND2X2 U1169 ( .A(N689), .B(n1010), .Y(n864) );
  AND2X4 U1170 ( .A(N685), .B(n925), .Y(n827) );
  OAI221X4 U1171 ( .A0(n1058), .A1(n752), .B0(n1065), .B1(n7830), .C0(n353), 
        .Y(input_data_wait_r[1]) );
  OAI221X4 U1172 ( .A0(n1058), .A1(n7830), .B0(n1065), .B1(n760), .C0(n361), 
        .Y(input_data_wait_r[25]) );
  OAI221X4 U1173 ( .A0(n1058), .A1(n762), .B0(n1065), .B1(n746), .C0(n352), 
        .Y(input_data_wait_r[2]) );
  NOR2X2 U1174 ( .A(n1252), .B(n1289), .Y(N704) );
  NOR2X2 U1175 ( .A(n8080), .B(n1288), .Y(N703) );
  NAND2X8 U1176 ( .A(n1118), .B(n1119), .Y(n1082) );
  NAND4X2 U1177 ( .A(n1070), .B(n1108), .C(n1082), .D(n7350), .Y(n1110) );
  AOI31X2 U1178 ( .A0(n1143), .A1(n886), .A2(n802), .B0(n1091), .Y(n1093) );
  INVX3 U1179 ( .A(n1096), .Y(o_in_ready) );
  NAND2X2 U1180 ( .A(n1086), .B(n873), .Y(n1096) );
  INVX6 U1181 ( .A(input_data_wait_r[4]), .Y(n1273) );
  OAI221X4 U1182 ( .A0(n1058), .A1(n768), .B0(n1065), .B1(n743), .C0(n350), 
        .Y(input_data_wait_r[4]) );
  OAI31X2 U1183 ( .A0(n1196), .A1(n1211), .A2(n1195), .B0(n1194), .Y(n1259) );
  NOR2X4 U1184 ( .A(n1063), .B(n1289), .Y(N621) );
  OA22X4 U1185 ( .A0(n389), .A1(n1051), .B0(n430), .B1(n1052), .Y(n1225) );
  INVX3 U1186 ( .A(input_data_wait_r[17]), .Y(n1286) );
  NAND4XL U1187 ( .A(n419), .B(n1108), .C(n7360), .D(n1042), .Y(n1106) );
  NAND2X2 U1188 ( .A(n876), .B(n1136), .Y(n1144) );
  NOR2X4 U1189 ( .A(n888), .B(n7350), .Y(o_op_ready) );
  NAND3BX2 U1190 ( .AN(n809), .B(n971), .C(n970), .Y(N729) );
  AO22X1 U1191 ( .A0(n839), .A1(n756), .B0(N622), .B1(n7340), .Y(n809) );
  NOR2X2 U1192 ( .A(n1252), .B(n1279), .Y(N694) );
  AND2XL U1193 ( .A(input_data_wait_r[22]), .B(n1011), .Y(n8100) );
  AND2X1 U1194 ( .A(N623), .B(n976), .Y(n8110) );
  AND2X1 U1195 ( .A(n1208), .B(n431), .Y(n1035) );
  AND2X1 U1196 ( .A(N689), .B(n925), .Y(n865) );
  OAI221X4 U1197 ( .A0(n1058), .A1(n749), .B0(n1066), .B1(n767), .C0(n341), 
        .Y(input_data_wait_r[13]) );
  NAND4X2 U1198 ( .A(n7350), .B(n761), .C(n1108), .D(n1107), .Y(n1161) );
  AOI22X1 U1199 ( .A0(n740), .A1(n756), .B0(N612), .B1(n7340), .Y(n942) );
  OAI221X4 U1200 ( .A0(n1058), .A1(n742), .B0(n1066), .B1(n768), .C0(n342), 
        .Y(input_data_wait_r[12]) );
  OAI221X4 U1201 ( .A0(n1058), .A1(n766), .B0(n1065), .B1(n755), .C0(n351), 
        .Y(input_data_wait_r[3]) );
  OAI221X2 U1202 ( .A0(n1058), .A1(n7760), .B0(n1066), .B1(n745), .C0(n3360), 
        .Y(input_data_wait_r[16]) );
  AND2X1 U1203 ( .A(input_data_wait_r[14]), .B(n1011), .Y(n816) );
  AND2X2 U1204 ( .A(N615), .B(n976), .Y(n817) );
  AND2X2 U1205 ( .A(N615), .B(n975), .Y(n818) );
  NAND2X1 U1206 ( .A(n7390), .B(n1010), .Y(n819) );
  NAND2X1 U1207 ( .A(n7390), .B(n925), .Y(n820) );
  AND3X4 U1208 ( .A(n819), .B(n820), .C(n821), .Y(n919) );
  AO21X4 U1209 ( .A0(n1208), .A1(n1191), .B0(n1181), .Y(n822) );
  NOR2X4 U1210 ( .A(n822), .B(n1180), .Y(n1185) );
  CLKINVX1 U1211 ( .A(y_origin_r[1]), .Y(n1191) );
  AND2X2 U1212 ( .A(N684), .B(n1010), .Y(n823) );
  AND2X2 U1213 ( .A(N684), .B(n925), .Y(n824) );
  NOR3X4 U1214 ( .A(n823), .B(n824), .C(n825), .Y(n911) );
  NAND2X4 U1215 ( .A(n912), .B(n911), .Y(N708) );
  AND2X2 U1216 ( .A(N685), .B(n1010), .Y(n826) );
  NOR3X4 U1217 ( .A(n826), .B(n827), .C(n828), .Y(n913) );
  NAND2X4 U1218 ( .A(n914), .B(n913), .Y(N709) );
  AND2X2 U1219 ( .A(N676), .B(n1003), .Y(n830) );
  NOR3X4 U1220 ( .A(n829), .B(n830), .C(n831), .Y(n988) );
  NAND2X4 U1221 ( .A(n989), .B(n988), .Y(N733) );
  AND2X2 U1222 ( .A(N686), .B(n925), .Y(n8330) );
  NOR3X4 U1223 ( .A(n8320), .B(n8330), .C(n8340), .Y(n915) );
  BUFX4 U1224 ( .A(n1004), .Y(n1010) );
  NAND2X4 U1225 ( .A(n916), .B(n915), .Y(N710) );
  NAND3X1 U1226 ( .A(n797), .B(n794), .C(n771), .Y(n1094) );
  NAND3X2 U1227 ( .A(n957), .B(n956), .C(n955), .Y(N724) );
  AOI222X1 U1228 ( .A0(N675), .A1(n1010), .B0(N675), .B1(n1003), .C0(N593), 
        .C1(n1002), .Y(n986) );
  OA22XL U1229 ( .A0(n755), .A1(n1064), .B0(n837), .B1(n766), .Y(n321) );
  INVX6 U1230 ( .A(input_data_wait_r[18]), .Y(n1287) );
  OAI221X4 U1231 ( .A0(n1058), .A1(n773), .B0(n1067), .B1(n751), .C0(n326), 
        .Y(input_data_wait_r[18]) );
  AOI222X1 U1232 ( .A0(N691), .A1(n1010), .B0(N691), .B1(n925), .C0(N608), 
        .C1(n924), .Y(n926) );
  CLKINVX1 U1233 ( .A(n847), .Y(N691) );
  INVX12 U1234 ( .A(n432), .Y(n1227) );
  NAND2X2 U1235 ( .A(n1199), .B(n1211), .Y(n1171) );
  AOI2BB1X4 U1236 ( .A0N(n1160), .A1N(n1114), .B0(n1151), .Y(n1115) );
  INVX12 U1237 ( .A(n836), .Y(n837) );
  NOR2X2 U1238 ( .A(n8080), .B(n1265), .Y(N677) );
  NAND2X4 U1239 ( .A(n997), .B(n996), .Y(N737) );
  AOI222X4 U1240 ( .A0(N680), .A1(n1010), .B0(N680), .B1(n1003), .C0(N598), 
        .C1(n1002), .Y(n996) );
  OAI211X2 U1241 ( .A0(n1169), .A1(n1170), .B0(n800), .C0(n1208), .Y(n1205) );
  AOI211X2 U1242 ( .A0(n1208), .A1(n1190), .B0(n1189), .C0(n1035), .Y(n1193)
         );
  INVX4 U1243 ( .A(input_data_wait_r[9]), .Y(n1278) );
  NAND2X4 U1244 ( .A(n993), .B(n992), .Y(N735) );
  NOR2X1 U1245 ( .A(n1062), .B(n1274), .Y(N606) );
  NOR2X2 U1246 ( .A(n1252), .B(n1292), .Y(N707) );
  INVX4 U1247 ( .A(n1070), .Y(n1107) );
  INVX3 U1248 ( .A(n1192), .Y(n1189) );
  OAI211X4 U1249 ( .A0(n794), .A1(n1042), .B0(n886), .C0(n1048), .Y(n1104) );
  AO22X4 U1250 ( .A0(N476), .A1(n872), .B0(n1117), .B1(cnt[10]), .Y(n443) );
  AND2X8 U1251 ( .A(n928), .B(n931), .Y(n929) );
  CLKINVX8 U1252 ( .A(n845), .Y(n846) );
  AOI22X1 U1253 ( .A0(N700), .A1(n756), .B0(n840), .B1(n7340), .Y(n957) );
  OA22XL U1254 ( .A0(n769), .A1(n1064), .B0(n837), .B1(n743), .Y(n342) );
  OA22X4 U1255 ( .A0(n750), .A1(n1064), .B0(n772), .B1(n837), .Y(n3360) );
  NAND2BX2 U1256 ( .AN(n1252), .B(input_data_wait_r[7]), .Y(n847) );
  OR2X2 U1257 ( .A(n849), .B(n1211), .Y(n1243) );
  INVX6 U1258 ( .A(n1262), .Y(n1248) );
  OR2X1 U1259 ( .A(n1058), .B(n765), .Y(n854) );
  INVX1 U1260 ( .A(n1135), .Y(n1137) );
  INVX3 U1261 ( .A(i_in_valid), .Y(n1260) );
  NAND3BX2 U1262 ( .AN(n1112), .B(n1111), .C(n1110), .Y(n1113) );
  CLKINVX12 U1263 ( .A(n858), .Y(n859) );
  OR2X1 U1264 ( .A(n1067), .B(n744), .Y(n855) );
  INVX8 U1265 ( .A(n8870), .Y(n1067) );
  AOI2BB1X1 U1266 ( .A0N(n1153), .A1N(n1152), .B0(n1151), .Y(n1154) );
  INVX4 U1267 ( .A(n1149), .Y(n1151) );
  AOI22X1 U1268 ( .A0(n1125), .A1(n1198), .B0(n796), .B1(n1124), .Y(n885) );
  NOR2X1 U1269 ( .A(n1058), .B(n767), .Y(n867) );
  NOR2X1 U1270 ( .A(n1066), .B(n759), .Y(n868) );
  INVXL U1271 ( .A(n1122), .Y(n1125) );
  AND2X2 U1272 ( .A(N606), .B(n924), .Y(n866) );
  NOR2X1 U1273 ( .A(n1252), .B(n1273), .Y(N688) );
  AND2X1 U1274 ( .A(N609), .B(n975), .Y(n863) );
  AND2X1 U1275 ( .A(N609), .B(n976), .Y(n862) );
  OA22XL U1276 ( .A0(n772), .A1(n1064), .B0(n838), .B1(n745), .Y(n362) );
  NOR2X2 U1277 ( .A(n1248), .B(n1265), .Y(N595) );
  NOR4X1 U1278 ( .A(pre_state[9]), .B(pre_state[8]), .C(pre_state[6]), .D(
        pre_state[4]), .Y(n132) );
  INVX12 U1279 ( .A(n8870), .Y(n1066) );
  INVX3 U1280 ( .A(n1157), .Y(n1206) );
  AND4X1 U1281 ( .A(n227), .B(n890), .C(n226), .D(n1159), .Y(N810) );
  OAI221X2 U1282 ( .A0(n1186), .A1(n1199), .B0(n1185), .B1(n1184), .C0(n1183), 
        .Y(N808) );
  AOI2BB1X1 U1283 ( .A0N(n871), .A1N(n1130), .B0(n1129), .Y(n1134) );
  BUFX4 U1284 ( .A(n122), .Y(n1057) );
  OR3X1 U1285 ( .A(med_out_valid_w), .B(conv_out_valid_w), .C(n1261), .Y(
        out_valid_wait_r) );
  AND2XL U1286 ( .A(result_w[13]), .B(n1057), .Y(out_data_wait_r[13]) );
  AND2XL U1287 ( .A(result_w[12]), .B(n1057), .Y(out_data_wait_r[12]) );
  AND2XL U1288 ( .A(result_w[11]), .B(n1057), .Y(out_data_wait_r[11]) );
  NOR2X1 U1289 ( .A(n1063), .B(n1285), .Y(N617) );
  NAND3X2 U1290 ( .A(n963), .B(n962), .C(n961), .Y(N726) );
  NAND2XL U1291 ( .A(n1064), .B(n838), .Y(N123) );
  NAND2X2 U1292 ( .A(n1212), .B(n1211), .Y(n1244) );
  INVX3 U1293 ( .A(input_data_wait_r[16]), .Y(n1285) );
  NAND3X2 U1294 ( .A(n936), .B(n935), .C(n934), .Y(N716) );
  INVX3 U1295 ( .A(input_data_wait_r[3]), .Y(n1272) );
  INVX3 U1296 ( .A(input_data_wait_r[13]), .Y(n1282) );
  INVX3 U1297 ( .A(n1129), .Y(n1131) );
  INVXL U1298 ( .A(n1111), .Y(n1159) );
  INVXL U1299 ( .A(n1043), .Y(n1153) );
  XNOR2X1 U1300 ( .A(n1188), .B(n1187), .Y(n869) );
  OA22XL U1301 ( .A0(n7780), .A1(n1064), .B0(n838), .B1(n741), .Y(n347) );
  OA22XL U1302 ( .A0(n744), .A1(n1064), .B0(n838), .B1(n765), .Y(n348) );
  OA22XL U1303 ( .A0(n768), .A1(n1064), .B0(n838), .B1(n742), .Y(n358) );
  OA22XL U1304 ( .A0(n762), .A1(n1064), .B0(n838), .B1(n751), .Y(n360) );
  OA22XL U1305 ( .A0(n7810), .A1(n1064), .B0(n837), .B1(n744), .Y(n356) );
  OA22XL U1306 ( .A0(n1177), .A1(n431), .B0(n1176), .B1(n1187), .Y(n1178) );
  INVXL U1307 ( .A(n795), .Y(n1177) );
  AO21X4 U1308 ( .A0(n1137), .A1(n1008), .B0(n1144), .Y(n1148) );
  NAND2XL U1309 ( .A(n1227), .B(n431), .Y(n1228) );
  NAND2XL U1310 ( .A(n1218), .B(n1198), .Y(n1196) );
  INVXL U1311 ( .A(n1099), .Y(n1255) );
  INVX8 U1312 ( .A(n419), .Y(n1119) );
  AND2X2 U1313 ( .A(y_r[1]), .B(n1044), .Y(n879) );
  AND2X2 U1314 ( .A(y_r[2]), .B(n1044), .Y(n880) );
  AND2X2 U1315 ( .A(z_r[2]), .B(n1044), .Y(n881) );
  AND2X2 U1316 ( .A(z_r[4]), .B(n1044), .Y(n882) );
  CLKINVX8 U1317 ( .A(y_origin_r[0]), .Y(n1190) );
  OAI211XL U1318 ( .A0(i_op_valid), .A1(n1160), .B0(n1168), .C0(n1101), .Y(
        next_state[0]) );
  MX2XL U1319 ( .A(n1148), .B(n1147), .S0(n859), .Y(n458) );
  NAND2XL U1320 ( .A(op_mode_r[0]), .B(n786), .Y(n1075) );
  MX2XL U1321 ( .A(n1134), .B(n1133), .S0(y_origin_r[0]), .Y(n461) );
  NAND2XL U1322 ( .A(n1042), .B(n786), .Y(n1074) );
  INVX1 U1323 ( .A(n428), .Y(n1250) );
  AOI2BB1XL U1324 ( .A0N(n442), .A1N(n1191), .B0(n1126), .Y(n1127) );
  NAND2XL U1325 ( .A(n1227), .B(n1190), .Y(n1187) );
  INVX1 U1326 ( .A(n422), .Y(n1251) );
  NOR4BXL U1327 ( .AN(n1252), .B(n207), .C(n206), .D(n430), .Y(N887) );
  NAND3BXL U1328 ( .AN(n429), .B(n1250), .C(cnt[5]), .Y(n207) );
  NAND3XL U1329 ( .A(n428), .B(n429), .C(n423), .Y(n228) );
  XOR2XL U1330 ( .A(n432), .B(y_origin_r[0]), .Y(n1200) );
  MX2XL U1331 ( .A(op_mode_r[0]), .B(i_op_mode[0]), .S0(i_op_valid), .Y(n411)
         );
  MX2XL U1332 ( .A(op_mode_r[2]), .B(i_op_mode[2]), .S0(i_op_valid), .Y(n413)
         );
  AO21XL U1333 ( .A0(x_origin_r_2_), .A1(n1059), .B0(n7370), .Y(N747) );
  XOR2XL U1334 ( .A(x_origin_r_2_), .B(n841), .Y(N753) );
  CLKINVX1 U1335 ( .A(N123), .Y(n1293) );
  NAND3X1 U1336 ( .A(n980), .B(n979), .C(n978), .Y(N731) );
  AND3X2 U1337 ( .A(n1017), .B(n1016), .C(n1015), .Y(n978) );
  AND2X2 U1338 ( .A(N611), .B(n975), .Y(n1018) );
  NOR2X1 U1339 ( .A(n1062), .B(n1269), .Y(N601) );
  NOR2X1 U1340 ( .A(n1062), .B(n1270), .Y(N602) );
  NOR2X1 U1341 ( .A(n1063), .B(n1271), .Y(N603) );
  NOR2X1 U1342 ( .A(n1062), .B(n1264), .Y(N594) );
  AND2X2 U1343 ( .A(N619), .B(n975), .Y(n1021) );
  AND2X2 U1344 ( .A(N620), .B(n975), .Y(n1024) );
  NOR2X1 U1345 ( .A(n1252), .B(n1290), .Y(N705) );
  AND2X2 U1346 ( .A(n983), .B(n928), .Y(n1004) );
  NOR2X1 U1347 ( .A(n1252), .B(n1287), .Y(N702) );
  AND2X2 U1348 ( .A(n928), .B(n984), .Y(n1001) );
  AND2X2 U1349 ( .A(l_valid_w), .B(n1008), .Y(n930) );
  INVX3 U1350 ( .A(input_data_wait_r[26]), .Y(n1265) );
  INVX3 U1351 ( .A(input_data_wait_r[28]), .Y(n1266) );
  INVX3 U1352 ( .A(input_data_wait_r[30]), .Y(n1267) );
  INVX3 U1353 ( .A(input_data_wait_r[31]), .Y(n1268) );
  NAND2X1 U1354 ( .A(n870), .B(n1262), .Y(n1240) );
  NAND2X1 U1355 ( .A(n1220), .B(n870), .Y(n1223) );
  NAND2X1 U1356 ( .A(n1228), .B(n870), .Y(n1232) );
  NOR2X1 U1357 ( .A(n1252), .B(n1272), .Y(N687) );
  CLKINVX1 U1358 ( .A(n870), .Y(n1212) );
  CLKINVX1 U1359 ( .A(n1196), .Y(n1182) );
  CLKBUFX3 U1360 ( .A(n8870), .Y(n1068) );
  OAI2BB1X2 U1361 ( .A0N(n1013), .A1N(r_valid_w), .B0(n981), .Y(n1000) );
  OA22X1 U1362 ( .A0(n746), .A1(n1064), .B0(n837), .B1(n762), .Y(n326) );
  AO22X1 U1363 ( .A0(N474), .A1(n872), .B0(n1117), .B1(cnt[8]), .Y(n445) );
  AO22X1 U1364 ( .A0(N473), .A1(n872), .B0(n1117), .B1(cnt[7]), .Y(n446) );
  AO22X1 U1365 ( .A0(N472), .A1(n872), .B0(n1117), .B1(cnt[6]), .Y(n447) );
  AO22X1 U1366 ( .A0(N471), .A1(n872), .B0(n1117), .B1(cnt[5]), .Y(n448) );
  AO22X1 U1367 ( .A0(N470), .A1(n872), .B0(n1117), .B1(n1250), .Y(n449) );
  AO22X1 U1368 ( .A0(N469), .A1(n872), .B0(n1117), .B1(cnt[3]), .Y(n450) );
  AO22X1 U1369 ( .A0(N468), .A1(n872), .B0(n1117), .B1(cnt[2]), .Y(n451) );
  AO22X1 U1370 ( .A0(N467), .A1(n872), .B0(n1117), .B1(n1218), .Y(n452) );
  AND2X2 U1371 ( .A(n7800), .B(n910), .Y(n878) );
  NAND2XL U1372 ( .A(n1174), .B(n1173), .Y(n1179) );
  CLKMX2X2 U1373 ( .A(n1172), .B(n1190), .S0(n1033), .Y(n1174) );
  NAND2X1 U1374 ( .A(n1190), .B(n1191), .Y(n1172) );
  AO22X1 U1375 ( .A0(n1171), .A1(cnt[6]), .B0(n1181), .B1(cnt[10]), .Y(N783)
         );
  AO22X1 U1376 ( .A0(n1171), .A1(cnt[5]), .B0(n1181), .B1(n1251), .Y(N782) );
  AO22X1 U1377 ( .A0(n1171), .A1(n1250), .B0(n1181), .B1(cnt[8]), .Y(N781) );
  AO22X1 U1378 ( .A0(n1171), .A1(cnt[2]), .B0(n1181), .B1(cnt[6]), .Y(N779) );
  AO22X1 U1379 ( .A0(n1171), .A1(cnt[3]), .B0(n1181), .B1(cnt[7]), .Y(N780) );
  CLKBUFX3 U1380 ( .A(n889), .Y(n1060) );
  NAND2X1 U1381 ( .A(n1218), .B(n432), .Y(n1219) );
  AND4X1 U1382 ( .A(n226), .B(n227), .C(n890), .D(n1120), .Y(N811) );
  CLKINVX1 U1383 ( .A(n1158), .Y(n1249) );
  NOR2X1 U1384 ( .A(n784), .B(n1257), .Y(n71) );
  INVX3 U1385 ( .A(n1057), .Y(n1261) );
  BUFX12 U1386 ( .A(i_rst_n), .Y(n1030) );
  BUFX12 U1387 ( .A(i_rst_n), .Y(n1029) );
  BUFX12 U1388 ( .A(i_rst_n), .Y(n1028) );
  CLKBUFX8 U1389 ( .A(i_rst_n), .Y(n1031) );
  OAI221XL U1390 ( .A0(n425), .A1(n1049), .B0(n403), .B1(n1050), .C0(n1235), 
        .Y(sram_addr_wait_r[32]) );
  OAI221XL U1391 ( .A0(n426), .A1(n1049), .B0(n402), .B1(n1050), .C0(n1236), 
        .Y(sram_addr_wait_r[31]) );
  OAI221XL U1392 ( .A0(n394), .A1(n1051), .B0(n425), .B1(n1052), .C0(n1235), 
        .Y(sram_addr_wait_r[23]) );
  OAI221XL U1393 ( .A0(n385), .A1(n1053), .B0(n425), .B1(n1054), .C0(n1235), 
        .Y(sram_addr_wait_r[14]) );
  OAI221XL U1394 ( .A0(n384), .A1(n1053), .B0(n426), .B1(n1054), .C0(n1236), 
        .Y(sram_addr_wait_r[13]) );
  OAI221XL U1395 ( .A0(n391), .A1(n1051), .B0(n428), .B1(n1052), .C0(n1038), 
        .Y(sram_addr_wait_r[20]) );
  OAI221XL U1396 ( .A0(n428), .A1(n1049), .B0(n400), .B1(n1050), .C0(n1038), 
        .Y(sram_addr_wait_r[29]) );
  OAI221XL U1397 ( .A0(n427), .A1(n1049), .B0(n401), .B1(n1050), .C0(n1037), 
        .Y(sram_addr_wait_r[30]) );
  OAI221XL U1398 ( .A0(n423), .A1(n1049), .B0(n404), .B1(n1050), .C0(n1039), 
        .Y(sram_addr_wait_r[33]) );
  OAI221XL U1399 ( .A0(n421), .A1(n1049), .B0(n406), .B1(n1050), .C0(n1036), 
        .Y(sram_addr_wait_r[35]) );
  OAI221XL U1400 ( .A0(n428), .A1(n1055), .B0(n373), .B1(n1056), .C0(n1038), 
        .Y(sram_addr_wait_r[2]) );
  OAI221XL U1401 ( .A0(n427), .A1(n1055), .B0(n374), .B1(n1056), .C0(n1037), 
        .Y(sram_addr_wait_r[3]) );
  OAI221XL U1402 ( .A0(n387), .A1(n1053), .B0(n422), .B1(n1054), .C0(n775), 
        .Y(sram_addr_wait_r[16]) );
  NAND4X1 U1403 ( .A(op_mode_r[2]), .B(op_mode_r[1]), .C(op_mode_r[0]), .D(
        n860), .Y(n1092) );
  INVX3 U1404 ( .A(n440), .Y(n1126) );
  XOR2X1 U1405 ( .A(n1179), .B(n1178), .Y(n1186) );
  OAI31X1 U1406 ( .A0(n1191), .A1(n1184), .A2(n1132), .B0(n1131), .Y(n1133) );
  AND2XL U1407 ( .A(n796), .B(n1173), .Y(n1130) );
  NAND2X1 U1408 ( .A(n1206), .B(n1068), .Y(n883) );
  CLKMX2X2 U1409 ( .A(n1033), .B(n1128), .S0(n1131), .Y(n459) );
  OAI221XL U1410 ( .A0(n429), .A1(n1049), .B0(n399), .B1(n1050), .C0(n1237), 
        .Y(sram_addr_wait_r[28]) );
  NAND2X2 U1411 ( .A(y_r[0]), .B(n1044), .Y(n1237) );
  OAI221XL U1412 ( .A0(n381), .A1(n1053), .B0(n429), .B1(n1054), .C0(n1237), 
        .Y(sram_addr_wait_r[10]) );
  XOR2X1 U1413 ( .A(n1190), .B(y_origin_r[1]), .Y(n1175) );
  CLKINVX1 U1414 ( .A(i_op_valid), .Y(n1114) );
  OAI221XL U1415 ( .A0(n1260), .A1(n1166), .B0(i_in_valid), .B1(n1165), .C0(
        n877), .Y(N835) );
  OAI221XL U1416 ( .A0(n1260), .A1(n1164), .B0(i_in_valid), .B1(n1166), .C0(
        n877), .Y(N834) );
  OAI221XL U1417 ( .A0(n1260), .A1(n1163), .B0(i_in_valid), .B1(n1164), .C0(
        n877), .Y(N833) );
  OAI211X1 U1418 ( .A0(n1217), .A1(n1244), .B0(n1243), .C0(n1216), .Y(
        sram_addr_wait_r[27]) );
  MXI3X1 U1419 ( .A(n1210), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(n71), .S1(n1209), .Y(n1217) );
  AND2X2 U1420 ( .A(x_minus_one_r[1]), .B(x_minus_one_r[0]), .Y(n1209) );
  OAI211X1 U1421 ( .A0(n1245), .A1(n1244), .B0(n1243), .C0(n1242), .Y(
        sram_addr_wait_r[0]) );
  MXI3X1 U1422 ( .A(n1239), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(
        n117), .S1(n1238), .Y(n1245) );
  AND2X2 U1423 ( .A(n7530), .B(n785), .Y(n1238) );
  OAI211X1 U1424 ( .A0(n1234), .A1(n1244), .B0(n1243), .C0(n1233), .Y(
        sram_addr_wait_r[9]) );
  MXI3X1 U1425 ( .A(n12301), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(
        n104), .S1(n1229), .Y(n1234) );
  AND2X2 U1426 ( .A(x_minus_one_r[0]), .B(n785), .Y(n1229) );
  OAI211X1 U1427 ( .A0(n1226), .A1(n1244), .B0(n1243), .C0(n1225), .Y(
        sram_addr_wait_r[18]) );
  MXI3X1 U1428 ( .A(n1222), .B(x_plus_one_r[2]), .C(x_minus_one_r[2]), .S0(n94), .S1(n1221), .Y(n1226) );
  AND2X2 U1429 ( .A(x_minus_one_r[1]), .B(n7530), .Y(n1221) );
  OAI2BB1X1 U1430 ( .A0N(N330), .A1N(n1261), .B0(n12300), .Y(
        out_data_wait_r[7]) );
  OAI21XL U1431 ( .A0(conv_result_w[7]), .A1(med_result_w[7]), .B0(n1057), .Y(
        n12300) );
  OAI2BB1X1 U1432 ( .A0N(N331), .A1N(n1261), .B0(n124), .Y(out_data_wait_r[6])
         );
  OAI21XL U1433 ( .A0(conv_result_w[6]), .A1(med_result_w[6]), .B0(n1057), .Y(
        n124) );
  OAI2BB1X1 U1434 ( .A0N(N332), .A1N(n1261), .B0(n125), .Y(out_data_wait_r[5])
         );
  OAI21XL U1435 ( .A0(conv_result_w[5]), .A1(med_result_w[5]), .B0(n1057), .Y(
        n125) );
  OAI2BB1X1 U1436 ( .A0N(N333), .A1N(n1261), .B0(n126), .Y(out_data_wait_r[4])
         );
  OAI21XL U1437 ( .A0(conv_result_w[4]), .A1(med_result_w[4]), .B0(n1057), .Y(
        n126) );
  OAI2BB1X1 U1438 ( .A0N(N334), .A1N(n1261), .B0(n127), .Y(out_data_wait_r[3])
         );
  OAI21XL U1439 ( .A0(conv_result_w[3]), .A1(med_result_w[3]), .B0(n1057), .Y(
        n127) );
  OAI2BB1X1 U1440 ( .A0N(N335), .A1N(n1261), .B0(n128), .Y(out_data_wait_r[2])
         );
  OAI21XL U1441 ( .A0(conv_result_w[2]), .A1(med_result_w[2]), .B0(n1057), .Y(
        n128) );
  OAI2BB1X1 U1442 ( .A0N(N336), .A1N(n1261), .B0(n129), .Y(out_data_wait_r[1])
         );
  OAI21XL U1443 ( .A0(conv_result_w[1]), .A1(med_result_w[1]), .B0(n1057), .Y(
        n129) );
  OAI2BB1X1 U1444 ( .A0N(N337), .A1N(n1261), .B0(n130), .Y(out_data_wait_r[0])
         );
  OAI21XL U1445 ( .A0(conv_result_w[0]), .A1(med_result_w[0]), .B0(n1057), .Y(
        n130) );
  OAI211X1 U1446 ( .A0(n1032), .A1(n1204), .B0(n1203), .C0(n1202), .Y(N806) );
  NAND3BX1 U1447 ( .AN(n1046), .B(n1199), .C(n1198), .Y(n1203) );
  AOI32X1 U1448 ( .A0(n1032), .A1(cnt[1]), .A2(n1213), .B0(n1201), .B1(n1200), 
        .Y(n1202) );
  AO22X1 U1449 ( .A0(N466), .A1(n872), .B0(n1117), .B1(n1227), .Y(n453) );
  CLKINVX1 U1450 ( .A(n1073), .Y(n1076) );
  NAND3BX1 U1451 ( .AN(n797), .B(n876), .C(n1072), .Y(n1073) );
  CLKMX2X2 U1452 ( .A(n786), .B(n1077), .S0(n1076), .Y(n455) );
  NAND2X1 U1453 ( .A(n407), .B(n435), .Y(n1077) );
  OAI22XL U1454 ( .A0(n1163), .A1(i_in_valid), .B0(n1165), .B1(n1260), .Y(
        n1162) );
  AND2X2 U1455 ( .A(N93), .B(n7800), .Y(n906) );
  MXI2X1 U1456 ( .A(n435), .B(n1075), .S0(n1076), .Y(n454) );
  MXI2X1 U1457 ( .A(n407), .B(n1074), .S0(n1076), .Y(n418) );
  XOR2X1 U1458 ( .A(n1067), .B(x_origin_r_2_), .Y(n1158) );
  CLKMX2X2 U1459 ( .A(x_r[2]), .B(x_plus_two_r[2]), .S0(n76), .Y(n1210) );
  NOR2X1 U1460 ( .A(n1258), .B(n1256), .Y(n76) );
  CLKMX2X2 U1461 ( .A(x_r[2]), .B(x_plus_two_r[2]), .S0(n106), .Y(n12301) );
  NOR2X1 U1462 ( .A(n1256), .B(x_plus_two_r[1]), .Y(n106) );
  CLKMX2X2 U1463 ( .A(x_r[2]), .B(x_plus_two_r[2]), .S0(n96), .Y(n1222) );
  NOR2X1 U1464 ( .A(n1258), .B(x_plus_two_r[0]), .Y(n96) );
  MXI2X1 U1465 ( .A(n409), .B(n1083), .S0(n1159), .Y(n410) );
  NAND4X1 U1466 ( .A(n1081), .B(n429), .C(n8080), .D(n1253), .Y(n1083) );
  AND2X2 U1467 ( .A(n430), .B(n136), .Y(n1081) );
  NOR2X1 U1468 ( .A(n425), .B(n426), .Y(n208) );
  CLKMX2X2 U1469 ( .A(x_r[2]), .B(x_plus_two_r[2]), .S0(n118), .Y(n1239) );
  NOR2X1 U1470 ( .A(x_plus_two_r[1]), .B(x_plus_two_r[0]), .Y(n118) );
  NOR2X1 U1471 ( .A(n1257), .B(x_plus_one_r[1]), .Y(n104) );
  NOR2X1 U1472 ( .A(n784), .B(x_plus_one_r[0]), .Y(n94) );
  NAND2X1 U1473 ( .A(n131), .B(n132), .Y(n122) );
  NOR4X1 U1474 ( .A(n367), .B(n368), .C(n369), .D(n370), .Y(n131) );
  NOR2X1 U1475 ( .A(x_plus_one_r[1]), .B(x_plus_one_r[0]), .Y(n117) );
  CLKINVX1 U1476 ( .A(n431), .Y(n1218) );
  NOR3X1 U1477 ( .A(n1080), .B(n1079), .C(n1078), .Y(n1253) );
  XOR2X1 U1478 ( .A(n435), .B(n427), .Y(n1078) );
  XOR2X1 U1479 ( .A(n426), .B(n434), .Y(n1080) );
  XOR2X1 U1480 ( .A(n407), .B(n425), .Y(n1079) );
  OA21XL U1481 ( .A0(conv_result_w[10]), .A1(med_result_w[10]), .B0(n1057), 
        .Y(out_data_wait_r[10]) );
  OA21XL U1482 ( .A0(conv_result_w[9]), .A1(med_result_w[9]), .B0(n1057), .Y(
        out_data_wait_r[9]) );
  OA21XL U1483 ( .A0(conv_result_w[8]), .A1(med_result_w[8]), .B0(n1057), .Y(
        out_data_wait_r[8]) );
  NOR3X1 U1484 ( .A(n228), .B(n1251), .C(cnt[10]), .Y(n227) );
  AND2X2 U1485 ( .A(n425), .B(n426), .Y(n890) );
  AOI22X1 U1486 ( .A0(sram_data_out_r[16]), .A1(n906), .B0(sram_data_out_r[24]), .B1(n905), .Y(n892) );
  AOI22X1 U1487 ( .A0(sram_data_out_r[0]), .A1(n878), .B0(sram_data_out_r[8]), 
        .B1(n907), .Y(n891) );
  NAND2X1 U1488 ( .A(n892), .B(n891), .Y(N337) );
  AOI22X1 U1489 ( .A0(sram_data_out_r[17]), .A1(n906), .B0(sram_data_out_r[25]), .B1(n905), .Y(n894) );
  AOI22X1 U1490 ( .A0(sram_data_out_r[1]), .A1(n878), .B0(sram_data_out_r[9]), 
        .B1(n907), .Y(n893) );
  NAND2X1 U1491 ( .A(n894), .B(n893), .Y(N336) );
  AOI22X1 U1492 ( .A0(sram_data_out_r[18]), .A1(n906), .B0(sram_data_out_r[26]), .B1(n905), .Y(n896) );
  AOI22X1 U1493 ( .A0(sram_data_out_r[2]), .A1(n878), .B0(sram_data_out_r[10]), 
        .B1(n907), .Y(n895) );
  NAND2X1 U1494 ( .A(n896), .B(n895), .Y(N335) );
  AOI22X1 U1495 ( .A0(sram_data_out_r[19]), .A1(n906), .B0(sram_data_out_r[27]), .B1(n905), .Y(n898) );
  AOI22X1 U1496 ( .A0(sram_data_out_r[3]), .A1(n878), .B0(sram_data_out_r[11]), 
        .B1(n907), .Y(n897) );
  NAND2X1 U1497 ( .A(n898), .B(n897), .Y(N334) );
  AOI22X1 U1498 ( .A0(sram_data_out_r[20]), .A1(n906), .B0(sram_data_out_r[28]), .B1(n905), .Y(n900) );
  AOI22X1 U1499 ( .A0(sram_data_out_r[4]), .A1(n878), .B0(sram_data_out_r[12]), 
        .B1(n907), .Y(n899) );
  NAND2X1 U1500 ( .A(n900), .B(n899), .Y(N333) );
  AOI22X1 U1501 ( .A0(sram_data_out_r[21]), .A1(n906), .B0(sram_data_out_r[29]), .B1(n905), .Y(n902) );
  AOI22X1 U1502 ( .A0(sram_data_out_r[5]), .A1(n878), .B0(sram_data_out_r[13]), 
        .B1(n907), .Y(n901) );
  NAND2X1 U1503 ( .A(n902), .B(n901), .Y(N332) );
  AOI22X1 U1504 ( .A0(sram_data_out_r[22]), .A1(n906), .B0(sram_data_out_r[30]), .B1(n905), .Y(n904) );
  AOI22X1 U1505 ( .A0(sram_data_out_r[6]), .A1(n878), .B0(sram_data_out_r[14]), 
        .B1(n907), .Y(n903) );
  NAND2X1 U1506 ( .A(n904), .B(n903), .Y(N331) );
  AOI22X1 U1507 ( .A0(sram_data_out_r[23]), .A1(n906), .B0(sram_data_out_r[31]), .B1(n905), .Y(n909) );
  AOI22X1 U1508 ( .A0(sram_data_out_r[7]), .A1(n878), .B0(sram_data_out_r[15]), 
        .B1(n907), .Y(n908) );
  NAND2X1 U1509 ( .A(n909), .B(n908), .Y(N330) );
  NOR2X2 U1510 ( .A(n7800), .B(N93), .Y(n907) );
  AOI22X1 U1511 ( .A0(N601), .A1(n1009), .B0(input_data_wait_r[0]), .B1(n1014), 
        .Y(n912) );
  AOI22X1 U1512 ( .A0(N602), .A1(n1009), .B0(input_data_wait_r[1]), .B1(n1014), 
        .Y(n914) );
  AOI22X1 U1513 ( .A0(N603), .A1(n1009), .B0(input_data_wait_r[2]), .B1(n1014), 
        .Y(n916) );
  AOI22X1 U1514 ( .A0(N608), .A1(n1009), .B0(n799), .B1(n1014), .Y(n927) );
  NAND2X1 U1515 ( .A(n927), .B(n926), .Y(N715) );
  AOI22X1 U1516 ( .A0(N692), .A1(n756), .B0(N609), .B1(n7340), .Y(n936) );
  AOI22X1 U1517 ( .A0(N693), .A1(n843), .B0(N693), .B1(n757), .Y(n938) );
  AOI22X1 U1518 ( .A0(n740), .A1(n844), .B0(n740), .B1(n757), .Y(n941) );
  AOI22X1 U1519 ( .A0(n7820), .A1(n756), .B0(N614), .B1(n7340), .Y(n948) );
  AOI22X1 U1520 ( .A0(n7820), .A1(n843), .B0(n7820), .B1(n757), .Y(n947) );
  NAND3X1 U1521 ( .A(n948), .B(n947), .C(n946), .Y(N721) );
  AOI22X1 U1522 ( .A0(N698), .A1(n843), .B0(N698), .B1(n757), .Y(n950) );
  AOI22X1 U1523 ( .A0(N699), .A1(n756), .B0(N616), .B1(n7340), .Y(n954) );
  AOI22X1 U1524 ( .A0(N699), .A1(n843), .B0(N699), .B1(n757), .Y(n953) );
  AOI22X1 U1525 ( .A0(N701), .A1(n756), .B0(N618), .B1(n7340), .Y(n960) );
  AOI22X1 U1526 ( .A0(N701), .A1(n844), .B0(N701), .B1(n757), .Y(n959) );
  AOI22X1 U1527 ( .A0(n8350), .A1(n756), .B0(N619), .B1(n7340), .Y(n963) );
  AOI22X1 U1528 ( .A0(n793), .A1(n756), .B0(N620), .B1(n7340), .Y(n966) );
  AOI22X1 U1529 ( .A0(n793), .A1(n844), .B0(n793), .B1(n757), .Y(n965) );
  AOI22X1 U1530 ( .A0(N704), .A1(n843), .B0(N704), .B1(n757), .Y(n968) );
  AOI222XL U1531 ( .A0(input_data_wait_r[20]), .A1(n1011), .B0(N621), .B1(n976), .C0(N621), .C1(n975), .Y(n967) );
  AOI22X1 U1532 ( .A0(n839), .A1(n844), .B0(n839), .B1(n757), .Y(n971) );
  AOI22X1 U1533 ( .A0(N706), .A1(n756), .B0(N623), .B1(n7340), .Y(n974) );
  AOI22X1 U1534 ( .A0(N707), .A1(n756), .B0(N624), .B1(n7340), .Y(n980) );
  AOI22X1 U1535 ( .A0(N707), .A1(n843), .B0(N707), .B1(n757), .Y(n979) );
  AOI22X1 U1536 ( .A0(n848), .A1(n1009), .B0(input_data_wait_r[24]), .B1(n1000), .Y(n987) );
  AOI22X1 U1537 ( .A0(N594), .A1(n1009), .B0(input_data_wait_r[25]), .B1(n1000), .Y(n989) );
  AOI22X1 U1538 ( .A0(N595), .A1(n1009), .B0(input_data_wait_r[26]), .B1(n1000), .Y(n991) );
  AOI22X1 U1539 ( .A0(N596), .A1(n1009), .B0(input_data_wait_r[27]), .B1(n1000), .Y(n993) );
  AOI22X1 U1540 ( .A0(N597), .A1(n1009), .B0(input_data_wait_r[28]), .B1(n1000), .Y(n995) );
  AOI22X1 U1541 ( .A0(N598), .A1(n1009), .B0(input_data_wait_r[29]), .B1(n1000), .Y(n997) );
  AOI22X1 U1542 ( .A0(N599), .A1(n1009), .B0(input_data_wait_r[30]), .B1(n1000), .Y(n999) );
  AOI22X1 U1543 ( .A0(N600), .A1(n1009), .B0(input_data_wait_r[31]), .B1(n1000), .Y(n1006) );
  AND2X8 U1544 ( .A(n932), .B(n1173), .Y(n976) );
  OA21X4 U1545 ( .A0(n1247), .A1(u_valid_w), .B0(n982), .Y(n931) );
  NAND2X1 U1546 ( .A(N624), .B(n975), .Y(n1015) );
  NAND2XL U1547 ( .A(N624), .B(n976), .Y(n1016) );
  AND2X2 U1548 ( .A(input_data_wait_r[19]), .B(n1011), .Y(n1026) );
  NAND2X2 U1549 ( .A(n1247), .B(u_valid_w), .Y(n982) );
  CLKINVX1 U1550 ( .A(n982), .Y(n1013) );
  CLKMX2X2 U1551 ( .A(op_mode_r[3]), .B(i_op_mode[3]), .S0(i_op_valid), .Y(
        n414) );
  NAND4BX1 U1552 ( .AN(n1121), .B(n802), .C(n1135), .D(n1136), .Y(n1129) );
  NAND2X1 U1553 ( .A(n1137), .B(r_valid_w), .Y(n1142) );
  CLKINVX1 U1554 ( .A(n1198), .Y(n1032) );
  MX2XL U1555 ( .A(op_mode_r[1]), .B(i_op_mode[1]), .S0(i_op_valid), .Y(n412)
         );
  NAND2XL U1556 ( .A(op_mode_r[0]), .B(op_mode_r[1]), .Y(n1122) );
  NAND2XL U1557 ( .A(n1138), .B(n860), .Y(n1121) );
  CLKINVX1 U1558 ( .A(n1184), .Y(n1033) );
  CLKINVX1 U1559 ( .A(y_origin_r[2]), .Y(n1184) );
  INVX3 U1560 ( .A(n441), .Y(n1195) );
  NAND2X1 U1561 ( .A(op_mode_r[0]), .B(n794), .Y(n1135) );
  OA22XL U1562 ( .A0(n407), .A1(n794), .B0(n435), .B1(n1042), .Y(n1072) );
  NAND4XL U1563 ( .A(n440), .B(n1195), .C(n1213), .D(n1182), .Y(n1183) );
  AOI33X2 U1564 ( .A0(n1086), .A1(n873), .A2(n364), .B0(n1043), .B1(n1034), 
        .B2(n1119), .Y(n1087) );
  OR3X6 U1565 ( .A(n1198), .B(n1195), .C(n1126), .Y(u_valid_w) );
  NAND2BX4 U1566 ( .AN(curr_state[2]), .B(n1118), .Y(n1152) );
  OA22X2 U1567 ( .A0(n7760), .A1(n1064), .B0(n838), .B1(n750), .Y(n346) );
  AO21XL U1568 ( .A0(n1162), .A1(n7350), .B0(n1212), .Y(N832) );
  AND3XL U1569 ( .A(n7350), .B(n1119), .C(n1118), .Y(n1120) );
  AND2XL U1570 ( .A(n1143), .B(l_valid_w), .Y(n1145) );
  BUFX20 U1571 ( .A(i_rst_n), .Y(n1069) );
  OR4X8 U1572 ( .A(curr_state[2]), .B(n420), .C(curr_state[3]), .D(n7350), .Y(
        n1045) );
  AOI2BB1XL U1573 ( .A0N(n409), .A1N(n1111), .B0(n1169), .Y(n1101) );
  OR2X8 U1574 ( .A(n1045), .B(n1092), .Y(n1149) );
  NAND2X4 U1575 ( .A(n841), .B(x_origin_r_2_), .Y(r_valid_w) );
  NAND2X2 U1576 ( .A(n1043), .B(n1084), .Y(n1111) );
  NAND4X2 U1577 ( .A(op_mode_r[3]), .B(n797), .C(n1085), .D(n794), .Y(n1088)
         );
  OAI221X2 U1578 ( .A0(n1045), .A1(n1100), .B0(n1045), .B1(n1099), .C0(n1098), 
        .Y(n1169) );
  NAND2X2 U1579 ( .A(n432), .B(n431), .Y(n1262) );
  NAND2X2 U1580 ( .A(n1227), .B(n1213), .Y(n1157) );
  NAND2X2 U1581 ( .A(z_r[1]), .B(n1044), .Y(n1235) );
  NAND2X2 U1582 ( .A(z_r[0]), .B(n1044), .Y(n1236) );
endmodule


module core_DW01_inc_0_DW01_inc_4 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  ADDHX4 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX4 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX4 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX4 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CMPR22X2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX4 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX4 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX4 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX4 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR2X4 U1 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
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
         n149, n154, n155, n158, n168, n170, n171, n172, n173, n174, n175,
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
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n347, n348, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n390, n392, n393, n394, n395, n396, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n508, n509, n510, n511, n512, n513,
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
         n148, n150, n151, n152, n153, n156, n157, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n169, n345, n346, n349, n350, n389,
         n391, n397, n507, n635, n636, n637, n638, n639, n640, n641, n642,
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
         n907, n908, n909, n910, n911, n912, n913, n914, n915;
  wire   [5:1] cnt;
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
  wire   [59:0] med_e_wait_r;
  wire   [2:0] ns;
  wire   [5:3] add_236_carry;

  DFFRX4 cnt_reg_1_ ( .D(N110), .CK(i_clk), .RN(n664), .Q(cnt[1]), .QN(n170)
         );
  median_filter_submodule u_median_filter_submodule ( .p1({data_a_r[7:2], n686, 
        data_a_r[0]}), .p2({data_b_r[7:6], n17, data_b_r[4:0]}), .p3(data_c_r), 
        .p4({n7, data_d_r[6:5], n13, n19, data_d_r[2:0]}), .p5({\data_e_r[7] , 
        \data_e_r[6] , \data_e_r[5] , \data_e_r[4] , \data_e_r[3] , 
        \data_e_r[2] , \data_e_r[1] , \data_e_r[0] }), .p6({data_f_r[7:1], n8}), .p7({data_g_r[7:6], n14, n15, data_g_r[3:0]}), .p8({data_h_r[7:4], n153, n18, 
        n684, data_h_r[0]}), .p9(data_i_r), .clk(i_clk), .rst(n737), .median(
        out_data_w) );
  sobel_gradient u_sobel_gradient_submodule ( .clk(i_clk), .rst(i_rst_n), .p1(
        {data_a_r[7], n159, data_a_r[5:2], n686, n682}), .p2({data_b_r[7:6], 
        n17, data_b_r[4:1], n681}), .p3({data_c_r[7:5], n680, data_c_r[3:0]}), 
        .p4({n7, data_d_r[6:5], n13, n19, n679, data_d_r[1:0]}), .p6({
        data_f_r[7], n687, data_f_r[5:3], n685, data_f_r[1], n8}), .p7({
        data_g_r[7:6], n14, n15, data_g_r[3:0]}), .p8({data_h_r[7:4], n153, 
        n18, n684, data_h_r[0]}), .p9(data_i_r), .sobel_result(sobel_data_w), 
        .angle(angle_w) );
  sober_compare u_sober_compare_submodule ( .clk(i_clk), .rst(n735), .start(
        n701), .G1(G[10:0]), .G2(G[21:11]), .G3(G[32:22]), .G4(G[43:33]), 
        .angle1(angle[1:0]), .angle2(angle[3:2]), .angle3(angle[5:4]), 
        .angle4(angle[7:6]), .sobel_result(sobel_out_data_w) );
  DFFRX1 med_e_delay_r_reg_13__5_ ( .D(n525), .CK(i_clk), .RN(n671), .Q(n66), 
        .QN(n441) );
  DFFRX1 angle_reg_3__0_ ( .D(n506), .CK(i_clk), .RN(n669), .Q(angle[6]), .QN(
        n291) );
  DFFRX1 angle_reg_1__1_ ( .D(n500), .CK(i_clk), .RN(n669), .Q(angle[3]), .QN(
        n297) );
  DFFRX1 G_reg_0__0_ ( .D(n497), .CK(i_clk), .RN(n668), .Q(G[0]), .QN(n300) );
  DFFRX1 G_reg_0__10_ ( .D(n457), .CK(i_clk), .RN(n671), .Q(G[10]), .QN(n340)
         );
  DFFRX1 G_reg_2__0_ ( .D(n495), .CK(i_clk), .RN(n668), .Q(G[22]), .QN(n302)
         );
  DFFRX1 G_reg_1__0_ ( .D(n496), .CK(i_clk), .RN(n668), .Q(G[11]), .QN(n301)
         );
  DFFRX1 G_reg_3__0_ ( .D(n498), .CK(i_clk), .RN(n668), .Q(G[33]), .QN(n299)
         );
  DFFRX1 G_reg_0__1_ ( .D(n493), .CK(i_clk), .RN(n668), .Q(G[1]), .QN(n304) );
  DFFRX1 G_reg_3__1_ ( .D(n494), .CK(i_clk), .RN(n668), .Q(G[34]), .QN(n303)
         );
  DFFRX1 G_reg_1__2_ ( .D(n488), .CK(i_clk), .RN(n667), .Q(G[13]), .QN(n309)
         );
  DFFRX1 G_reg_0__2_ ( .D(n489), .CK(i_clk), .RN(n667), .Q(G[2]), .QN(n308) );
  DFFRX1 G_reg_2__1_ ( .D(n491), .CK(i_clk), .RN(n668), .Q(G[23]), .QN(n306)
         );
  DFFRX1 G_reg_1__1_ ( .D(n492), .CK(i_clk), .RN(n668), .Q(G[12]), .QN(n305)
         );
  DFFRX1 G_reg_2__2_ ( .D(n487), .CK(i_clk), .RN(n668), .Q(G[24]), .QN(n310)
         );
  DFFRX1 G_reg_3__2_ ( .D(n490), .CK(i_clk), .RN(n667), .Q(G[35]), .QN(n307)
         );
  DFFRX1 G_reg_1__3_ ( .D(n484), .CK(i_clk), .RN(n667), .Q(G[14]), .QN(n313)
         );
  DFFRX1 G_reg_0__3_ ( .D(n485), .CK(i_clk), .RN(n667), .Q(G[3]), .QN(n312) );
  DFFRX1 G_reg_0__4_ ( .D(n481), .CK(i_clk), .RN(n667), .Q(G[4]), .QN(n316) );
  DFFRX1 G_reg_3__3_ ( .D(n486), .CK(i_clk), .RN(n667), .Q(G[36]), .QN(n311)
         );
  DFFRX1 G_reg_1__4_ ( .D(n480), .CK(i_clk), .RN(n667), .Q(G[15]), .QN(n317)
         );
  DFFRX1 G_reg_3__4_ ( .D(n482), .CK(i_clk), .RN(n667), .Q(G[37]), .QN(n315)
         );
  DFFRX1 G_reg_2__5_ ( .D(n475), .CK(i_clk), .RN(n667), .Q(G[27]), .QN(n322)
         );
  DFFRX1 G_reg_1__5_ ( .D(n476), .CK(i_clk), .RN(n666), .Q(G[16]), .QN(n321)
         );
  DFFRX1 G_reg_0__5_ ( .D(n477), .CK(i_clk), .RN(n666), .Q(G[5]), .QN(n320) );
  DFFRX1 G_reg_3__5_ ( .D(n478), .CK(i_clk), .RN(n666), .Q(G[38]), .QN(n319)
         );
  DFFRX1 G_reg_2__6_ ( .D(n471), .CK(i_clk), .RN(n666), .Q(G[28]), .QN(n326)
         );
  DFFRX1 G_reg_1__6_ ( .D(n472), .CK(i_clk), .RN(n666), .Q(G[17]), .QN(n325)
         );
  DFFRX1 G_reg_0__6_ ( .D(n473), .CK(i_clk), .RN(n666), .Q(G[6]), .QN(n324) );
  DFFRX1 G_reg_3__6_ ( .D(n474), .CK(i_clk), .RN(n666), .Q(G[39]), .QN(n323)
         );
  DFFRX1 G_reg_1__7_ ( .D(n468), .CK(i_clk), .RN(n666), .Q(G[18]), .QN(n329)
         );
  DFFRX1 G_reg_0__7_ ( .D(n469), .CK(i_clk), .RN(n666), .Q(G[7]), .QN(n328) );
  DFFRX1 G_reg_0__8_ ( .D(n465), .CK(i_clk), .RN(n665), .Q(G[8]), .QN(n332) );
  DFFRX1 G_reg_1__9_ ( .D(n460), .CK(i_clk), .RN(n665), .Q(G[20]), .QN(n337)
         );
  DFFRX1 G_reg_0__9_ ( .D(n461), .CK(i_clk), .RN(n665), .Q(G[9]), .QN(n336) );
  DFFRX1 angle_reg_0__0_ ( .D(n505), .CK(i_clk), .RN(n669), .Q(angle[0]), .QN(
        n292) );
  DFFRX1 angle_reg_0__1_ ( .D(n501), .CK(i_clk), .RN(n669), .Q(angle[1]), .QN(
        n296) );
  DFFRX1 G_reg_2__3_ ( .D(n483), .CK(i_clk), .RN(n667), .Q(G[25]), .QN(n314)
         );
  DFFRX1 G_reg_2__4_ ( .D(n479), .CK(i_clk), .RN(n667), .Q(G[26]), .QN(n318)
         );
  DFFRX1 G_reg_2__7_ ( .D(n467), .CK(i_clk), .RN(n666), .Q(G[29]), .QN(n330)
         );
  DFFRX1 G_reg_3__7_ ( .D(n470), .CK(i_clk), .RN(n666), .Q(G[40]), .QN(n327)
         );
  DFFRX1 G_reg_2__8_ ( .D(n463), .CK(i_clk), .RN(n666), .Q(G[30]), .QN(n334)
         );
  DFFRX1 G_reg_1__8_ ( .D(n464), .CK(i_clk), .RN(n665), .Q(G[19]), .QN(n333)
         );
  DFFRX1 G_reg_3__8_ ( .D(n466), .CK(i_clk), .RN(n665), .Q(G[41]), .QN(n331)
         );
  DFFRX1 G_reg_2__9_ ( .D(n459), .CK(i_clk), .RN(n665), .Q(G[31]), .QN(n338)
         );
  DFFRX1 G_reg_3__9_ ( .D(n462), .CK(i_clk), .RN(n664), .Q(G[42]), .QN(n335)
         );
  DFFRX1 G_reg_2__10_ ( .D(n455), .CK(i_clk), .RN(n664), .Q(G[32]), .QN(n342)
         );
  DFFRX1 G_reg_1__10_ ( .D(n456), .CK(i_clk), .RN(n664), .Q(G[21]), .QN(n341)
         );
  DFFRX1 G_reg_3__10_ ( .D(n458), .CK(i_clk), .RN(n741), .Q(G[43]), .QN(n339)
         );
  DFFRX1 angle_reg_1__0_ ( .D(n504), .CK(i_clk), .RN(n669), .Q(angle[2]), .QN(
        n293) );
  DFFRX1 angle_reg_2__0_ ( .D(n503), .CK(i_clk), .RN(n669), .Q(angle[4]), .QN(
        n294) );
  DFFRX1 angle_reg_3__1_ ( .D(n502), .CK(i_clk), .RN(n668), .Q(angle[7]), .QN(
        n295) );
  DFFRX1 angle_reg_2__1_ ( .D(n499), .CK(i_clk), .RN(n669), .Q(angle[5]), .QN(
        n298) );
  DFFRX1 med_e_r_reg_3__5_ ( .D(med_e_wait_r[19]), .CK(i_clk), .RN(n659), .QN(
        n216) );
  DFFRX1 med_e_r_reg_3__1_ ( .D(med_e_wait_r[16]), .CK(i_clk), .RN(n658), .QN(
        n212) );
  DFFRX1 med_e_r_reg_7__5_ ( .D(med_e_wait_r[39]), .CK(i_clk), .RN(n742), .QN(
        n248) );
  DFFRX1 med_e_r_reg_7__1_ ( .D(med_e_wait_r[36]), .CK(i_clk), .RN(n739), .QN(
        n244) );
  DFFRX1 med_e_r_reg_11__5_ ( .D(med_e_wait_r[59]), .CK(i_clk), .RN(n673), 
        .QN(n192) );
  DFFRX1 med_e_r_reg_11__1_ ( .D(med_e_wait_r[56]), .CK(i_clk), .RN(n672), 
        .QN(n188) );
  DFFRX1 med_e_r_reg_0__1_ ( .D(med_e_wait_r[1]), .CK(i_clk), .RN(n663), .QN(
        n172) );
  DFFRX1 med_e_r_reg_4__1_ ( .D(med_e_wait_r[21]), .CK(i_clk), .RN(n657), .QN(
        n220) );
  DFFRX1 med_e_r_reg_0__5_ ( .D(med_e_wait_r[4]), .CK(i_clk), .RN(n663), .QN(
        n176) );
  DFFRX1 med_e_r_reg_0__3_ ( .D(med_e_wait_r[3]), .CK(i_clk), .RN(n663), .QN(
        n174) );
  DFFRX1 med_e_r_reg_0__2_ ( .D(med_e_wait_r[2]), .CK(i_clk), .RN(n663), .QN(
        n173) );
  DFFRX1 med_e_r_reg_0__0_ ( .D(med_e_wait_r[0]), .CK(i_clk), .RN(n662), .QN(
        n171) );
  DFFRX1 med_e_r_reg_3__3_ ( .D(med_e_wait_r[18]), .CK(i_clk), .RN(n659), .QN(
        n214) );
  DFFRX1 med_e_r_reg_3__2_ ( .D(med_e_wait_r[17]), .CK(i_clk), .RN(n658), .QN(
        n213) );
  DFFRX1 med_e_r_reg_3__0_ ( .D(med_e_wait_r[15]), .CK(i_clk), .RN(n658), .QN(
        n211) );
  DFFRX1 med_e_r_reg_4__2_ ( .D(med_e_wait_r[22]), .CK(i_clk), .RN(n657), .QN(
        n221) );
  DFFRX1 med_e_r_reg_4__0_ ( .D(med_e_wait_r[20]), .CK(i_clk), .RN(n657), .QN(
        n219) );
  DFFRX1 med_e_r_reg_7__3_ ( .D(med_e_wait_r[38]), .CK(i_clk), .RN(n738), .QN(
        n246) );
  DFFRX1 med_e_r_reg_7__2_ ( .D(med_e_wait_r[37]), .CK(i_clk), .RN(n740), .QN(
        n245) );
  DFFRX1 med_e_r_reg_7__0_ ( .D(med_e_wait_r[35]), .CK(i_clk), .RN(n742), .QN(
        n243) );
  DFFRX1 med_e_r_reg_8__5_ ( .D(med_e_wait_r[44]), .CK(i_clk), .RN(n677), .QN(
        n256) );
  DFFRX1 med_e_r_reg_8__3_ ( .D(med_e_wait_r[43]), .CK(i_clk), .RN(n677), .QN(
        n254) );
  DFFRX1 med_e_r_reg_8__2_ ( .D(med_e_wait_r[42]), .CK(i_clk), .RN(n677), .QN(
        n253) );
  DFFRX1 med_e_r_reg_8__0_ ( .D(med_e_wait_r[40]), .CK(i_clk), .RN(n676), .QN(
        n251) );
  DFFRX1 med_e_r_reg_11__3_ ( .D(med_e_wait_r[58]), .CK(i_clk), .RN(n673), 
        .QN(n190) );
  DFFRX1 med_e_r_reg_11__2_ ( .D(med_e_wait_r[57]), .CK(i_clk), .RN(n672), 
        .QN(n189) );
  DFFRX1 med_e_r_reg_11__0_ ( .D(med_e_wait_r[55]), .CK(i_clk), .RN(n672), 
        .QN(n187) );
  DFFRX1 med_e_r_reg_1__0_ ( .D(med_e_wait_r[5]), .CK(i_clk), .RN(n661), .QN(
        n195) );
  DFFRX1 med_e_r_reg_2__0_ ( .D(med_e_wait_r[10]), .CK(i_clk), .RN(n660), .QN(
        n203) );
  DFFRX1 med_e_r_reg_6__0_ ( .D(med_e_wait_r[30]), .CK(i_clk), .RN(n654), .QN(
        n235) );
  DFFRX1 med_e_r_reg_9__0_ ( .D(med_e_wait_r[45]), .CK(i_clk), .RN(n675), .QN(
        n259) );
  DFFRX1 med_e_r_reg_10__0_ ( .D(med_e_wait_r[50]), .CK(i_clk), .RN(n673), 
        .QN(n179) );
  DFFRX1 med_e_r_reg_1__3_ ( .D(med_e_wait_r[8]), .CK(i_clk), .RN(n661), .QN(
        n198) );
  DFFRX1 med_e_r_reg_1__2_ ( .D(med_e_wait_r[7]), .CK(i_clk), .RN(n661), .QN(
        n197) );
  DFFRX1 med_e_r_reg_9__3_ ( .D(med_e_wait_r[48]), .CK(i_clk), .RN(n675), .QN(
        n262) );
  DFFRX1 med_e_r_reg_9__2_ ( .D(med_e_wait_r[47]), .CK(i_clk), .RN(n675), .QN(
        n261) );
  DFFRX1 med_e_r_reg_2__3_ ( .D(med_e_wait_r[13]), .CK(i_clk), .RN(n660), .QN(
        n206) );
  DFFRX1 med_e_r_reg_2__2_ ( .D(med_e_wait_r[12]), .CK(i_clk), .RN(n660), .QN(
        n205) );
  DFFRX1 med_e_r_reg_10__3_ ( .D(med_e_wait_r[53]), .CK(i_clk), .RN(n674), 
        .QN(n182) );
  DFFRX1 med_e_r_reg_10__2_ ( .D(med_e_wait_r[52]), .CK(i_clk), .RN(n674), 
        .QN(n181) );
  DFFRX1 med_e_r_reg_2__5_ ( .D(med_e_wait_r[14]), .CK(i_clk), .RN(n660), .QN(
        n208) );
  DFFRX1 med_e_r_reg_10__5_ ( .D(med_e_wait_r[54]), .CK(i_clk), .RN(n674), 
        .QN(n184) );
  DFFRX1 med_e_r_reg_0__4_ ( .D(n855), .CK(i_clk), .RN(n663), .QN(n175) );
  DFFRX1 med_e_r_reg_8__4_ ( .D(n879), .CK(i_clk), .RN(n677), .QN(n255) );
  DFFRX1 med_e_r_reg_0__7_ ( .D(n853), .CK(i_clk), .RN(n664), .QN(n178) );
  DFFRX1 med_e_r_reg_0__6_ ( .D(n854), .CK(i_clk), .RN(n663), .QN(n177) );
  DFFRX1 med_e_r_reg_3__7_ ( .D(n859), .CK(i_clk), .RN(n659), .QN(n218) );
  DFFRX1 med_e_r_reg_3__6_ ( .D(n861), .CK(i_clk), .RN(n659), .QN(n217) );
  DFFRX1 med_e_r_reg_3__4_ ( .D(n863), .CK(i_clk), .RN(n659), .QN(n215) );
  DFFRX1 med_e_r_reg_4__7_ ( .D(n865), .CK(i_clk), .RN(n658), .QN(n226) );
  DFFRX1 med_e_r_reg_4__6_ ( .D(n866), .CK(i_clk), .RN(n658), .QN(n225) );
  DFFRX1 med_e_r_reg_7__4_ ( .D(n875), .CK(i_clk), .RN(n742), .QN(n247) );
  DFFRX1 med_e_r_reg_8__7_ ( .D(n877), .CK(i_clk), .RN(n742), .QN(n258) );
  DFFRX1 med_e_r_reg_8__6_ ( .D(n878), .CK(i_clk), .RN(n736), .QN(n257) );
  DFFRX1 med_e_r_reg_11__7_ ( .D(n883), .CK(i_clk), .RN(n673), .QN(n194) );
  DFFRX1 med_e_r_reg_11__6_ ( .D(n885), .CK(i_clk), .RN(n673), .QN(n193) );
  DFFRX1 med_e_r_reg_11__4_ ( .D(n887), .CK(i_clk), .RN(n673), .QN(n191) );
  DFFRX1 med_e_r_reg_1__7_ ( .D(n856), .CK(i_clk), .RN(n662), .QN(n202) );
  DFFRX1 med_e_r_reg_2__7_ ( .D(n860), .CK(i_clk), .RN(n661), .QN(n210) );
  DFFRX1 med_e_r_reg_9__7_ ( .D(n880), .CK(i_clk), .RN(n676), .QN(n266) );
  DFFRX1 med_e_r_reg_10__7_ ( .D(n884), .CK(i_clk), .RN(n675), .QN(n186) );
  DFFRX1 med_e_r_reg_1__6_ ( .D(n857), .CK(i_clk), .RN(n662), .QN(n201) );
  DFFRX1 med_e_r_reg_1__4_ ( .D(n858), .CK(i_clk), .RN(n662), .QN(n199) );
  DFFRX1 med_e_r_reg_9__6_ ( .D(n881), .CK(i_clk), .RN(n676), .QN(n265) );
  DFFRX1 med_e_r_reg_9__4_ ( .D(n882), .CK(i_clk), .RN(n676), .QN(n263) );
  DFFRX1 med_e_r_reg_2__6_ ( .D(n862), .CK(i_clk), .RN(n661), .QN(n209) );
  DFFRX1 med_e_r_reg_10__6_ ( .D(n886), .CK(i_clk), .RN(n675), .QN(n185) );
  DFFRX1 med_e_r_reg_2__1_ ( .D(med_e_wait_r[11]), .CK(i_clk), .RN(n660), .QN(
        n204) );
  DFFRX1 med_e_r_reg_10__1_ ( .D(med_e_wait_r[51]), .CK(i_clk), .RN(n674), 
        .QN(n180) );
  DFFRX1 med_e_r_reg_1__1_ ( .D(med_e_wait_r[6]), .CK(i_clk), .RN(n661), .QN(
        n196) );
  DFFRX1 med_e_r_reg_9__1_ ( .D(med_e_wait_r[46]), .CK(i_clk), .RN(n675), .QN(
        n260) );
  DFFRX1 med_e_r_reg_1__5_ ( .D(med_e_wait_r[9]), .CK(i_clk), .RN(n662), .QN(
        n200) );
  DFFRX1 med_e_r_reg_9__5_ ( .D(med_e_wait_r[49]), .CK(i_clk), .RN(n676), .QN(
        n264) );
  DFFRX1 med_e_r_reg_2__4_ ( .D(n864), .CK(i_clk), .RN(n660), .QN(n207) );
  DFFRX1 med_e_r_reg_10__4_ ( .D(n888), .CK(i_clk), .RN(n674), .QN(n183) );
  DFFRX1 out_valid_r_reg ( .D(ns[2]), .CK(i_clk), .RN(n664), .Q(o_out_valid)
         );
  DFFRX1 med_e_delay_r_reg_15__4_ ( .D(n510), .CK(i_clk), .RN(n669), .QN(n287)
         );
  DFFRX1 med_e_delay_r_reg_15__0_ ( .D(n514), .CK(i_clk), .RN(n669), .Q(n108), 
        .QN(n283) );
  DFFRX1 med_e_delay_r_reg_13__4_ ( .D(n526), .CK(i_clk), .RN(n671), .QN(n442)
         );
  DFFRX1 med_e_delay_r_reg_15__5_ ( .D(n509), .CK(i_clk), .RN(n670), .Q(n1060), 
        .QN(n288) );
  DFFRX1 med_e_delay_r_reg_0__2_ ( .D(n632), .CK(i_clk), .RN(n663), .Q(n125), 
        .QN(n269) );
  DFFRX1 med_e_delay_r_reg_14__4_ ( .D(n518), .CK(i_clk), .RN(n670), .QN(n450)
         );
  DFFRX1 med_e_delay_r_reg_12__5_ ( .D(n533), .CK(i_clk), .RN(n672), .Q(n104), 
        .QN(n433) );
  DFFRX1 med_e_delay_r_reg_15__1_ ( .D(n513), .CK(i_clk), .RN(n669), .Q(n1070), 
        .QN(n284) );
  DFFRX1 med_e_delay_r_reg_15__2_ ( .D(n512), .CK(i_clk), .RN(n669), .Q(n78), 
        .QN(n285) );
  DFFRX1 med_e_delay_r_reg_15__6_ ( .D(n508), .CK(i_clk), .RN(n670), .QN(n289)
         );
  DFFRX1 med_e_delay_r_reg_15__3_ ( .D(n511), .CK(i_clk), .RN(n669), .Q(n105), 
        .QN(n286) );
  DFFRX1 med_e_delay_r_reg_12__2_ ( .D(n536), .CK(i_clk), .RN(n672), .Q(n1130), 
        .QN(n436) );
  DFFRX1 med_e_delay_r_reg_12__7_ ( .D(n531), .CK(i_clk), .RN(n672), .QN(n431)
         );
  DFFRX1 med_e_delay_r_reg_13__2_ ( .D(n528), .CK(i_clk), .RN(n671), .Q(n57), 
        .QN(n444) );
  DFFRX1 med_e_delay_r_reg_12__1_ ( .D(n537), .CK(i_clk), .RN(n671), .Q(n74), 
        .QN(n437) );
  DFFRX1 med_e_delay_r_reg_14__5_ ( .D(n517), .CK(i_clk), .RN(n670), .Q(n67), 
        .QN(n449) );
  DFFRX1 med_e_delay_r_reg_12__6_ ( .D(n532), .CK(i_clk), .RN(n672), .QN(n432)
         );
  DFFRX1 med_e_delay_r_reg_0__6_ ( .D(n628), .CK(i_clk), .RN(n663), .Q(n130), 
        .QN(n273) );
  DFFRX1 med_e_delay_r_reg_0__4_ ( .D(n630), .CK(i_clk), .RN(n663), .Q(n120), 
        .QN(n271) );
  DFFRX1 med_e_delay_r_reg_12__3_ ( .D(n535), .CK(i_clk), .RN(n672), .Q(n76), 
        .QN(n435) );
  DFFRX1 med_e_delay_r_reg_14__1_ ( .D(n521), .CK(i_clk), .RN(n670), .Q(n59), 
        .QN(n453) );
  DFFRX1 med_e_delay_r_reg_14__0_ ( .D(n522), .CK(i_clk), .RN(n670), .Q(n61), 
        .QN(n454) );
  DFFRX1 med_e_delay_r_reg_11__4_ ( .D(n542), .CK(i_clk), .RN(n673), .Q(n103), 
        .QN(n426) );
  DFFRX1 med_e_delay_r_reg_12__0_ ( .D(n538), .CK(i_clk), .RN(n671), .Q(n77), 
        .QN(n438) );
  DFFRX1 med_e_delay_r_reg_0__5_ ( .D(n629), .CK(i_clk), .RN(n663), .Q(n116), 
        .QN(n272) );
  DFFRX1 med_e_delay_r_reg_13__7_ ( .D(n523), .CK(i_clk), .RN(n671), .QN(n439)
         );
  DFFRX1 med_e_delay_r_reg_3__6_ ( .D(n604), .CK(i_clk), .RN(n659), .Q(n124), 
        .QN(n368) );
  DFFRX1 med_e_delay_r_reg_4__7_ ( .D(n595), .CK(i_clk), .RN(n658), .Q(n97), 
        .QN(n375) );
  DFFRX1 med_e_delay_r_reg_13__6_ ( .D(n524), .CK(i_clk), .RN(n671), .QN(n440)
         );
  DFFRX1 med_e_delay_r_reg_14__2_ ( .D(n520), .CK(i_clk), .RN(n670), .Q(n56), 
        .QN(n452) );
  DFFRX1 med_e_delay_r_reg_14__7_ ( .D(n515), .CK(i_clk), .RN(n670), .QN(n447)
         );
  DFFRX1 med_e_delay_r_reg_13__3_ ( .D(n527), .CK(i_clk), .RN(n671), .Q(n60), 
        .QN(n443) );
  DFFRX1 med_e_delay_r_reg_11__0_ ( .D(n546), .CK(i_clk), .RN(n672), .Q(n100), 
        .QN(n430) );
  DFFRX1 med_e_delay_r_reg_14__6_ ( .D(n516), .CK(i_clk), .RN(n670), .QN(n448)
         );
  DFFRX1 med_e_delay_r_reg_14__3_ ( .D(n519), .CK(i_clk), .RN(n670), .Q(n68), 
        .QN(n451) );
  DFFRX1 med_e_delay_r_reg_13__1_ ( .D(n529), .CK(i_clk), .RN(n671), .Q(n54), 
        .QN(n445) );
  DFFRX1 med_e_delay_r_reg_4__6_ ( .D(n596), .CK(i_clk), .RN(n658), .Q(n63), 
        .QN(n376) );
  DFFRX1 med_e_delay_r_reg_1__6_ ( .D(n620), .CK(i_clk), .RN(n662), .Q(n91), 
        .QN(n352) );
  DFFRX1 med_e_delay_r_reg_2__6_ ( .D(n612), .CK(i_clk), .RN(n661), .Q(n90), 
        .QN(n360) );
  DFFRX1 med_e_delay_r_reg_0__7_ ( .D(n627), .CK(i_clk), .RN(n664), .Q(n126), 
        .QN(n274) );
  DFFRX1 med_e_delay_r_reg_4__2_ ( .D(n600), .CK(i_clk), .RN(n657), .Q(n96), 
        .QN(n380) );
  DFFRX1 med_e_delay_r_reg_4__4_ ( .D(n598), .CK(i_clk), .RN(n657), .Q(n69), 
        .QN(n378) );
  DFFRX1 med_e_delay_r_reg_7__2_ ( .D(n576), .CK(i_clk), .RN(n735), .Q(n73), 
        .QN(n404) );
  DFFRX1 med_e_delay_r_reg_3__5_ ( .D(n605), .CK(i_clk), .RN(n659), .Q(n119), 
        .QN(n369) );
  DFFRX1 med_e_delay_r_reg_13__0_ ( .D(n530), .CK(i_clk), .RN(n670), .Q(n55), 
        .QN(n446) );
  DFFRX1 med_e_delay_r_reg_9__4_ ( .D(n558), .CK(i_clk), .RN(n676), .Q(n52), 
        .QN(n410) );
  DFFRX1 med_e_delay_r_reg_1__2_ ( .D(n624), .CK(i_clk), .RN(n661), .Q(n1100), 
        .QN(n356) );
  DFFRX1 med_e_delay_r_reg_4__3_ ( .D(n599), .CK(i_clk), .RN(n657), .Q(n71), 
        .QN(n379) );
  DFFRX1 med_e_delay_r_reg_11__5_ ( .D(n541), .CK(i_clk), .RN(n673), .Q(n94), 
        .QN(n425) );
  DFFRX1 med_e_delay_r_reg_7__7_ ( .D(n571), .CK(i_clk), .RN(n654), .Q(n99), 
        .QN(n399) );
  DFFRX1 med_e_delay_r_reg_3__7_ ( .D(n603), .CK(i_clk), .RN(n659), .Q(n127), 
        .QN(n367) );
  DFFRX1 med_e_delay_r_reg_3__2_ ( .D(n608), .CK(i_clk), .RN(n658), .Q(n128), 
        .QN(n372) );
  DFFRX1 med_e_delay_r_reg_3__4_ ( .D(n606), .CK(i_clk), .RN(n659), .Q(n117), 
        .QN(n370) );
  DFFRX1 med_e_delay_r_reg_1__4_ ( .D(n622), .CK(i_clk), .RN(n662), .Q(n88), 
        .QN(n354) );
  DFFRX1 med_e_delay_r_reg_10__4_ ( .D(n550), .CK(i_clk), .RN(n674), .Q(n53), 
        .QN(n418) );
  DFFRX1 med_e_delay_r_reg_2__4_ ( .D(n614), .CK(i_clk), .RN(n660), .Q(n79), 
        .QN(n362) );
  DFFRX1 med_e_delay_r_reg_0__3_ ( .D(n631), .CK(i_clk), .RN(n663), .Q(n121), 
        .QN(n270) );
  DFFRX1 med_e_delay_r_reg_7__4_ ( .D(n574), .CK(i_clk), .RN(n737), .Q(n62), 
        .QN(n402) );
  DFFRX1 med_e_delay_r_reg_3__0_ ( .D(n610), .CK(i_clk), .RN(n658), .Q(n123), 
        .QN(n374) );
  DFFRX1 med_e_delay_r_reg_7__5_ ( .D(n573), .CK(i_clk), .RN(n741), .Q(n92), 
        .QN(n401) );
  DFFRX1 med_e_delay_r_reg_2__5_ ( .D(n613), .CK(i_clk), .RN(n660), .Q(n83), 
        .QN(n361) );
  DFFRX1 med_e_delay_r_reg_1__5_ ( .D(n621), .CK(i_clk), .RN(n662), .Q(n80), 
        .QN(n353) );
  DFFRX1 med_e_delay_r_reg_2__2_ ( .D(n616), .CK(i_clk), .RN(n660), .Q(n95), 
        .QN(n364) );
  DFFRX1 med_e_delay_r_reg_0__1_ ( .D(n633), .CK(i_clk), .RN(n663), .Q(n122), 
        .QN(n268) );
  DFFRX1 med_e_delay_r_reg_3__1_ ( .D(n609), .CK(i_clk), .RN(n658), .Q(n118), 
        .QN(n373) );
  DFFRX1 med_e_delay_r_reg_11__7_ ( .D(n539), .CK(i_clk), .RN(n673), .Q(n1090), 
        .QN(n423) );
  DFFRX1 med_e_delay_r_reg_3__3_ ( .D(n607), .CK(i_clk), .RN(n659), .Q(n129), 
        .QN(n371) );
  DFFRX1 med_e_delay_r_reg_4__5_ ( .D(n597), .CK(i_clk), .RN(n657), .Q(n75), 
        .QN(n377) );
  DFFRX1 med_e_delay_r_reg_4__1_ ( .D(n601), .CK(i_clk), .RN(n657), .Q(n70), 
        .QN(n381) );
  DFFRX1 med_e_delay_r_reg_1__7_ ( .D(n619), .CK(i_clk), .RN(n662), .Q(n89), 
        .QN(n351) );
  DFFRX1 med_e_delay_r_reg_2__7_ ( .D(n611), .CK(i_clk), .RN(n661), .Q(n86), 
        .QN(n359) );
  DFFRX1 med_e_delay_r_reg_4__0_ ( .D(n602), .CK(i_clk), .RN(n657), .Q(n64), 
        .QN(n382) );
  DFFRX1 med_e_delay_r_reg_11__1_ ( .D(n545), .CK(i_clk), .RN(n672), .Q(n93), 
        .QN(n429) );
  DFFRX1 med_e_delay_r_reg_7__0_ ( .D(n578), .CK(i_clk), .RN(n740), .Q(n72), 
        .QN(n406) );
  DFFRX1 med_e_delay_r_reg_11__3_ ( .D(n543), .CK(i_clk), .RN(n673), .Q(n101), 
        .QN(n427) );
  DFFRX1 med_e_delay_r_reg_11__2_ ( .D(n544), .CK(i_clk), .RN(n672), .Q(n65), 
        .QN(n428) );
  DFFRX1 med_e_delay_r_reg_7__1_ ( .D(n577), .CK(i_clk), .RN(n739), .Q(n141), 
        .QN(n405) );
  DFFRX1 med_e_delay_r_reg_10__5_ ( .D(n549), .CK(i_clk), .RN(n674), .Q(n43), 
        .QN(n417) );
  DFFRX1 med_e_delay_r_reg_5__4_ ( .D(n590), .CK(i_clk), .RN(n656), .Q(n39), 
        .QN(n386) );
  DFFRX1 med_e_delay_r_reg_1__3_ ( .D(n623), .CK(i_clk), .RN(n661), .Q(n87), 
        .QN(n355) );
  DFFRX1 med_e_delay_r_reg_7__3_ ( .D(n575), .CK(i_clk), .RN(n738), .Q(n98), 
        .QN(n403) );
  DFFRX1 med_e_delay_r_reg_2__0_ ( .D(n618), .CK(i_clk), .RN(n660), .Q(n85), 
        .QN(n366) );
  DFFRX1 med_e_delay_r_reg_11__6_ ( .D(n540), .CK(i_clk), .RN(n673), .Q(n58), 
        .QN(n424) );
  DFFRX1 med_e_delay_r_reg_8__4_ ( .D(n566), .CK(i_clk), .RN(n677), .Q(n279), 
        .QN(n22) );
  DFFRX1 med_e_delay_r_reg_2__3_ ( .D(n615), .CK(i_clk), .RN(n660), .Q(n84), 
        .QN(n363) );
  DFFRX1 med_e_delay_r_reg_10__7_ ( .D(n547), .CK(i_clk), .RN(n675), .Q(n50), 
        .QN(n415) );
  DFFRX1 med_e_delay_r_reg_1__1_ ( .D(n625), .CK(i_clk), .RN(n661), .Q(n81), 
        .QN(n357) );
  DFFRX1 med_e_delay_r_reg_9__7_ ( .D(n555), .CK(i_clk), .RN(n676), .Q(n48), 
        .QN(n407) );
  DFFRX1 med_e_delay_r_reg_2__1_ ( .D(n617), .CK(i_clk), .RN(n660), .Q(n82), 
        .QN(n365) );
  DFFRX1 med_e_delay_r_reg_6__5_ ( .D(n581), .CK(i_clk), .RN(n655), .Q(n51), 
        .QN(n393) );
  DFFRX1 med_e_delay_r_reg_9__6_ ( .D(n556), .CK(i_clk), .RN(n676), .Q(n49), 
        .QN(n408) );
  DFFRX1 med_e_delay_r_reg_5__3_ ( .D(n591), .CK(i_clk), .RN(n656), .Q(n36), 
        .QN(n387) );
  DFFRX1 med_e_delay_r_reg_9__1_ ( .D(n561), .CK(i_clk), .RN(n675), .Q(n37), 
        .QN(n413) );
  DFFRX1 med_e_delay_r_reg_6__2_ ( .D(n584), .CK(i_clk), .RN(n654), .Q(n35), 
        .QN(n396) );
  DFFRX1 med_e_delay_r_reg_5__2_ ( .D(n592), .CK(i_clk), .RN(n655), .Q(n47), 
        .QN(n388) );
  DFFRX1 med_e_delay_r_reg_5__7_ ( .D(n587), .CK(i_clk), .RN(n656), .Q(n45), 
        .QN(n383) );
  DFFRX1 med_e_delay_r_reg_10__3_ ( .D(n551), .CK(i_clk), .RN(n674), .Q(n41), 
        .QN(n419) );
  DFFRX1 med_e_delay_r_reg_9__0_ ( .D(n562), .CK(i_clk), .RN(n675), .Q(n42), 
        .QN(n414) );
  DFFRX2 med_e_delay_r_reg_9__2_ ( .D(n560), .CK(i_clk), .RN(n675), .Q(n115), 
        .QN(n412) );
  DFFRX1 med_e_delay_r_reg_10__0_ ( .D(n554), .CK(i_clk), .RN(n673), .Q(n44), 
        .QN(n422) );
  DFFRX1 med_e_delay_r_reg_5__5_ ( .D(n589), .CK(i_clk), .RN(n656), .Q(n46), 
        .QN(n385) );
  DFFRX1 med_e_delay_r_reg_10__1_ ( .D(n553), .CK(i_clk), .RN(n674), .Q(n40), 
        .QN(n421) );
  DFFRX1 med_e_delay_r_reg_6__3_ ( .D(n583), .CK(i_clk), .RN(n654), .Q(n38), 
        .QN(n395) );
  DFFRX2 med_e_delay_r_reg_6__0_ ( .D(n586), .CK(i_clk), .RN(n654), .Q(n1110), 
        .QN(n398) );
  DFFRX2 med_e_delay_r_reg_5__0_ ( .D(n594), .CK(i_clk), .RN(n655), .Q(n102), 
        .QN(n390) );
  DFFRX1 med_e_delay_r_reg_8__7_ ( .D(n563), .CK(i_clk), .RN(n740), .Q(n282), 
        .QN(n24) );
  DFFRX1 med_e_delay_r_reg_8__6_ ( .D(n564), .CK(i_clk), .RN(n658), .Q(n281), 
        .QN(n23) );
  DFFRX1 med_e_delay_r_reg_8__2_ ( .D(n568), .CK(i_clk), .RN(n677), .Q(n277), 
        .QN(n21) );
  DFFRX1 med_e_delay_r_reg_8__0_ ( .D(n570), .CK(i_clk), .RN(n676), .Q(n275), 
        .QN(n28) );
  DFFRX1 med_e_delay_r_reg_8__5_ ( .D(n565), .CK(i_clk), .RN(n677), .Q(n280), 
        .QN(n29) );
  DFFRX1 med_e_delay_r_reg_8__3_ ( .D(n567), .CK(i_clk), .RN(n677), .Q(n278), 
        .QN(n27) );
  DFFRX1 med_e_delay_r_reg_10__2_ ( .D(n552), .CK(i_clk), .RN(n674), .Q(n34), 
        .QN(n420) );
  DFFRX1 med_sobel_r_reg ( .D(n344), .CK(i_clk), .RN(n664), .Q(n32), .QN(n347)
         );
  DFFRXL med_e_r_reg_5__0_ ( .D(med_e_wait_r[25]), .CK(i_clk), .RN(n655), .QN(
        n227) );
  DFFRXL med_e_r_reg_4__3_ ( .D(med_e_wait_r[23]), .CK(i_clk), .RN(n657), .QN(
        n222) );
  DFFRXL med_e_r_reg_5__7_ ( .D(n868), .CK(i_clk), .RN(n657), .QN(n234) );
  DFFRXL med_e_r_reg_4__5_ ( .D(med_e_wait_r[24]), .CK(i_clk), .RN(n658), .QN(
        n224) );
  DFFRXL med_e_r_reg_4__4_ ( .D(n867), .CK(i_clk), .RN(n657), .QN(n223) );
  DFFRXL med_e_r_reg_5__6_ ( .D(n869), .CK(i_clk), .RN(n656), .QN(n233) );
  DFFRXL med_e_r_reg_5__5_ ( .D(med_e_wait_r[29]), .CK(i_clk), .RN(n656), .QN(
        n232) );
  DFFRXL med_e_r_reg_6__7_ ( .D(n872), .CK(i_clk), .RN(n655), .QN(n242) );
  DFFRXL med_e_r_reg_6__6_ ( .D(n874), .CK(i_clk), .RN(n655), .QN(n241) );
  DFFRXL med_e_r_reg_5__4_ ( .D(n870), .CK(i_clk), .RN(n656), .QN(n231) );
  DFFRXL med_e_r_reg_5__3_ ( .D(med_e_wait_r[28]), .CK(i_clk), .RN(n656), .QN(
        n230) );
  DFFRXL med_e_r_reg_5__2_ ( .D(med_e_wait_r[27]), .CK(i_clk), .RN(n656), .QN(
        n229) );
  DFFRXL med_e_r_reg_5__1_ ( .D(med_e_wait_r[26]), .CK(i_clk), .RN(n655), .QN(
        n228) );
  DFFRXL med_e_r_reg_6__5_ ( .D(med_e_wait_r[34]), .CK(i_clk), .RN(n655), .QN(
        n240) );
  DFFRXL med_e_r_reg_6__4_ ( .D(n876), .CK(i_clk), .RN(n655), .QN(n239) );
  DFFRXL med_e_r_reg_6__3_ ( .D(med_e_wait_r[33]), .CK(i_clk), .RN(n654), .QN(
        n238) );
  DFFRXL med_e_r_reg_6__2_ ( .D(med_e_wait_r[32]), .CK(i_clk), .RN(n654), .QN(
        n237) );
  DFFRXL med_e_r_reg_6__1_ ( .D(med_e_wait_r[31]), .CK(i_clk), .RN(n654), .QN(
        n236) );
  DFFRXL med_e_r_reg_7__7_ ( .D(n871), .CK(i_clk), .RN(n654), .QN(n250) );
  DFFRXL med_e_r_reg_7__6_ ( .D(n873), .CK(i_clk), .RN(n654), .QN(n249) );
  DFFRXL med_e_r_reg_8__1_ ( .D(med_e_wait_r[41]), .CK(i_clk), .RN(n676), .QN(
        n252) );
  DFFRX1 med_e_delay_r_reg_12__4_ ( .D(n534), .CK(i_clk), .RN(n672), .QN(n434)
         );
  DFFRX2 med_e_delay_r_reg_0__0_ ( .D(n634), .CK(i_clk), .RN(n662), .Q(n136), 
        .QN(n267) );
  DFFRHQX8 cnt_reg_0_ ( .D(N109), .CK(i_clk), .RN(n664), .Q(n645) );
  DFFRX2 cnt_reg_4_ ( .D(N113), .CK(i_clk), .RN(n665), .Q(cnt[4]), .QN(n348)
         );
  DFFRX2 cnt_reg_5_ ( .D(N114), .CK(i_clk), .RN(n665), .Q(cnt[5]), .QN(n168)
         );
  DFFRX2 med_e_delay_r_reg_15__7_ ( .D(n33), .CK(i_clk), .RN(n670), .QN(n290)
         );
  DFFRX2 med_e_delay_r_reg_10__6_ ( .D(n548), .CK(i_clk), .RN(n675), .Q(n1120), 
        .QN(n416) );
  DFFRX2 med_e_delay_r_reg_6__4_ ( .D(n582), .CK(i_clk), .RN(n654), .Q(n1140), 
        .QN(n394) );
  DFFRHQX1 med_e_delay_r_reg_5__1_ ( .D(n593), .CK(i_clk), .RN(n655), .Q(n156)
         );
  DFFRHQX1 cs_reg_1_ ( .D(ns[1]), .CK(i_clk), .RN(n664), .Q(n148) );
  DFFRHQX1 med_e_delay_r_reg_6__1_ ( .D(n585), .CK(i_clk), .RN(n654), .Q(n144)
         );
  DFFRHQX1 cnt_reg_2_ ( .D(N111), .CK(i_clk), .RN(n665), .Q(n142) );
  DFFRX2 med_e_delay_r_reg_8__1_ ( .D(n569), .CK(i_clk), .RN(n676), .Q(n276), 
        .QN(n25) );
  DFFRX2 med_e_delay_r_reg_1__0_ ( .D(n626), .CK(i_clk), .RN(n661), .Q(n137), 
        .QN(n358) );
  DFFRX2 med_e_delay_r_reg_6__6_ ( .D(n580), .CK(i_clk), .RN(n655), .Q(n135), 
        .QN(n392) );
  DFFRX2 med_e_delay_r_reg_9__5_ ( .D(n557), .CK(i_clk), .RN(n676), .Q(n134), 
        .QN(n409) );
  DFFRX2 med_e_delay_r_reg_9__3_ ( .D(n559), .CK(i_clk), .RN(n675), .Q(n133), 
        .QN(n411) );
  DFFRX1 med_e_delay_r_reg_7__6_ ( .D(n572), .CK(i_clk), .RN(n742), .Q(n132), 
        .QN(n400) );
  DFFRX2 med_e_delay_r_reg_5__6_ ( .D(n588), .CK(i_clk), .RN(n656), .Q(n131), 
        .QN(n384) );
  DFFRX2 cs_reg_0_ ( .D(ns[0]), .CK(i_clk), .RN(n664), .Q(n26), .QN(n343) );
  DFFRHQX1 cs_reg_2_ ( .D(ns[2]), .CK(i_clk), .RN(n664), .Q(n162) );
  DFFRHQX1 med_e_delay_r_reg_6__7_ ( .D(n579), .CK(i_clk), .RN(n655), .Q(n160)
         );
  DFFRHQX1 cnt_reg_3_ ( .D(N112), .CK(i_clk), .RN(n665), .Q(n3) );
  BUFX16 U3 ( .A(n507), .Y(n688) );
  INVX8 U4 ( .A(n683), .Y(n684) );
  CLKINVX1 U5 ( .A(n3), .Y(n5) );
  INVX6 U6 ( .A(n20), .Y(n153) );
  BUFX20 U7 ( .A(n689), .Y(n698) );
  BUFX12 U8 ( .A(n689), .Y(n138) );
  OA22X2 U9 ( .A0(n412), .A1(n688), .B0(n420), .B1(n678), .Y(n757) );
  BUFX20 U10 ( .A(n689), .Y(n697) );
  BUFX6 U11 ( .A(data_a_r[1]), .Y(n686) );
  NAND3X4 U12 ( .A(n151), .B(n152), .C(n829), .Y(data_a_r[1]) );
  BUFX16 U13 ( .A(n709), .Y(n704) );
  BUFX12 U14 ( .A(n700), .Y(n709) );
  OAI221X4 U15 ( .A0(n404), .A1(n165), .B0(n396), .B1(n722), .C0(n803), .Y(
        data_c_r[2]) );
  CLKBUFX12 U16 ( .A(n700), .Y(n708) );
  BUFX6 U17 ( .A(n734), .Y(n717) );
  INVX3 U18 ( .A(n144), .Y(n145) );
  BUFX6 U19 ( .A(data_d_r[7]), .Y(n7) );
  OR2X4 U20 ( .A(n381), .B(n723), .Y(n152) );
  CLKBUFX4 U21 ( .A(n733), .Y(n723) );
  BUFX8 U22 ( .A(n732), .Y(n725) );
  OAI221X2 U23 ( .A0(n407), .A1(n166), .B0(n12), .B1(n24), .C0(n794), .Y(
        data_d_r[7]) );
  BUFX4 U24 ( .A(data_g_r[4]), .Y(n15) );
  OAI221X2 U25 ( .A0(n442), .A1(n165), .B0(n434), .B1(n734), .C0(n767), .Y(
        data_g_r[4]) );
  NAND2X2 U26 ( .A(n842), .B(n845), .Y(n4) );
  OA22X4 U27 ( .A0(n138), .A1(n22), .B0(n410), .B1(n707), .Y(n767) );
  CLKBUFX4 U28 ( .A(n733), .Y(n722) );
  INVX6 U29 ( .A(n718), .Y(n713) );
  BUFX6 U30 ( .A(data_f_r[0]), .Y(n8) );
  CLKINVX6 U31 ( .A(n720), .Y(n11) );
  INVX8 U32 ( .A(n11), .Y(n12) );
  BUFX8 U33 ( .A(data_d_r[4]), .Y(n13) );
  OAI221X2 U34 ( .A0(n410), .A1(n164), .B0(n734), .B1(n22), .C0(n791), .Y(
        data_d_r[4]) );
  AND2X4 U35 ( .A(n647), .B(n648), .Y(n827) );
  OR2X2 U36 ( .A(n267), .B(n691), .Y(n647) );
  BUFX20 U37 ( .A(n711), .Y(n733) );
  INVX4 U38 ( .A(n719), .Y(n712) );
  BUFX8 U39 ( .A(data_g_r[5]), .Y(n14) );
  OAI221X2 U40 ( .A0(n441), .A1(n164), .B0(n433), .B1(n725), .C0(n768), .Y(
        data_g_r[5]) );
  OAI221X2 U41 ( .A0(n430), .A1(n166), .B0(n422), .B1(n721), .C0(n771), .Y(
        data_f_r[0]) );
  CLKBUFX4 U42 ( .A(n733), .Y(n721) );
  AND2X1 U43 ( .A(cnt[1]), .B(n645), .Y(n653) );
  NAND3X6 U44 ( .A(n640), .B(n641), .C(n792), .Y(data_d_r[5]) );
  OR2X2 U45 ( .A(n730), .B(n29), .Y(n641) );
  INVX6 U46 ( .A(data_b_r[5]), .Y(n16) );
  CLKINVX12 U47 ( .A(n16), .Y(n17) );
  OAI221X2 U48 ( .A0(n393), .A1(n164), .B0(n385), .B1(n721), .C0(n823), .Y(
        data_b_r[5]) );
  BUFX6 U49 ( .A(data_h_r[2]), .Y(n18) );
  MXI2X1 U50 ( .A(n256), .B(n835), .S0(n715), .Y(med_e_wait_r[44]) );
  INVX8 U51 ( .A(n717), .Y(n714) );
  OAI221X2 U52 ( .A0(n424), .A1(n164), .B0(n416), .B1(n729), .C0(n777), .Y(
        data_f_r[6]) );
  OAI221X2 U53 ( .A0(n395), .A1(n164), .B0(n387), .B1(n732), .C0(n820), .Y(
        data_b_r[3]) );
  OA22X4 U54 ( .A0(n355), .A1(n694), .B0(n363), .B1(n703), .Y(n820) );
  OAI221X2 U55 ( .A0(n390), .A1(n164), .B0(n382), .B1(n727), .C0(n827), .Y(
        data_a_r[0]) );
  CLKINVX1 U56 ( .A(n160), .Y(n161) );
  BUFX20 U57 ( .A(n850), .Y(n164) );
  BUFX4 U58 ( .A(n732), .Y(n726) );
  CLKBUFX3 U59 ( .A(n733), .Y(n720) );
  OR3X4 U60 ( .A(ns[2]), .B(ns[0]), .C(ns[1]), .Y(n849) );
  OA22X2 U61 ( .A0(n410), .A1(n699), .B0(n418), .B1(n707), .Y(n759) );
  OA22X2 U62 ( .A0(n407), .A1(n699), .B0(n415), .B1(n707), .Y(n762) );
  NOR2BX2 U63 ( .AN(n849), .B(n645), .Y(N109) );
  CLKINVX1 U64 ( .A(n162), .Y(n163) );
  OA22X1 U65 ( .A0(n360), .A1(n691), .B0(n368), .B1(n705), .Y(n811) );
  CLKBUFX8 U66 ( .A(n734), .Y(n719) );
  OA22X2 U67 ( .A0(n358), .A1(n140), .B0(n366), .B1(n703), .Y(n814) );
  OR2X1 U68 ( .A(n358), .B(n702), .Y(n648) );
  CLKBUFX8 U69 ( .A(n734), .Y(n716) );
  OR3X6 U70 ( .A(n743), .B(cnt[4]), .C(n143), .Y(n848) );
  BUFX16 U71 ( .A(n653), .Y(n167) );
  INVX3 U72 ( .A(n716), .Y(n715) );
  OA22X1 U73 ( .A0(n359), .A1(n693), .B0(n367), .B1(n703), .Y(n812) );
  OA22X2 U74 ( .A0(n270), .A1(n140), .B0(n355), .B1(n703), .Y(n833) );
  OR2X1 U75 ( .A(n392), .B(n166), .Y(n391) );
  OA22X2 U76 ( .A0(n363), .A1(n138), .B0(n371), .B1(n704), .Y(n806) );
  OA22X2 U77 ( .A0(n417), .A1(n691), .B0(n425), .B1(n678), .Y(n752) );
  OR2X1 U78 ( .A(n734), .B(n27), .Y(n349) );
  OR2X1 U79 ( .A(n411), .B(n165), .Y(n346) );
  OA22X2 U80 ( .A0(n375), .A1(n138), .B0(n383), .B1(n704), .Y(n794) );
  OA22X2 U81 ( .A0(n366), .A1(n140), .B0(n374), .B1(n704), .Y(n797) );
  OA22X2 U82 ( .A0(n364), .A1(n138), .B0(n372), .B1(n704), .Y(n803) );
  OA22X2 U83 ( .A0(n351), .A1(n690), .B0(n359), .B1(n703), .Y(n825) );
  OA22X1 U84 ( .A0(n274), .A1(n699), .B0(n351), .B1(n703), .Y(n839) );
  OA22X2 U85 ( .A0(n422), .A1(n694), .B0(n430), .B1(n703), .Y(n747) );
  AND2X2 U86 ( .A(n745), .B(n849), .Y(N110) );
  OA22X1 U87 ( .A0(n269), .A1(n699), .B0(n356), .B1(n703), .Y(n831) );
  INVX4 U88 ( .A(data_h_r[1]), .Y(n683) );
  OR2X2 U89 ( .A(n157), .B(n165), .Y(n151) );
  INVX1 U90 ( .A(n156), .Y(n157) );
  NOR2BX4 U91 ( .AN(o_out_valid), .B(n32), .Y(n2) );
  BUFX8 U92 ( .A(n688), .Y(n699) );
  BUFX16 U93 ( .A(n697), .Y(n695) );
  BUFX16 U94 ( .A(n698), .Y(n691) );
  BUFX6 U95 ( .A(n697), .Y(n693) );
  BUFX12 U96 ( .A(n689), .Y(n140) );
  OAI221X4 U97 ( .A0(n445), .A1(n164), .B0(n437), .B1(n728), .C0(n764), .Y(
        data_g_r[1]) );
  CLKBUFX6 U98 ( .A(n734), .Y(n718) );
  BUFX8 U99 ( .A(n698), .Y(n690) );
  INVX6 U100 ( .A(n140), .Y(n636) );
  CLKINVX1 U101 ( .A(n693), .Y(n637) );
  NAND3X4 U102 ( .A(n346), .B(n349), .C(n790), .Y(n19) );
  BUFX3 U103 ( .A(n731), .Y(n635) );
  AND3X4 U104 ( .A(n146), .B(n147), .C(n758), .Y(n20) );
  BUFX16 U105 ( .A(n711), .Y(n732) );
  BUFX4 U106 ( .A(n732), .Y(n724) );
  CLKINVX1 U107 ( .A(n143), .Y(n845) );
  CLKAND2X3 U108 ( .A(n646), .B(n716), .Y(n30) );
  CLKAND2X3 U109 ( .A(n703), .B(n645), .Y(n31) );
  AND2X2 U110 ( .A(n350), .B(n389), .Y(n33) );
  BUFX12 U111 ( .A(n653), .Y(n169) );
  CLKINVX1 U112 ( .A(i_data[31]), .Y(n904) );
  BUFX8 U113 ( .A(n731), .Y(n728) );
  BUFX4 U114 ( .A(n731), .Y(n727) );
  BUFX6 U115 ( .A(n731), .Y(n730) );
  BUFX4 U116 ( .A(n731), .Y(n729) );
  MX2XL U117 ( .A(n54), .B(i_data[9]), .S0(n167), .Y(n529) );
  INVXL U118 ( .A(i_data[9]), .Y(n815) );
  INVX12 U119 ( .A(n645), .Y(n646) );
  NAND3X4 U120 ( .A(n391), .B(n397), .C(n824), .Y(data_b_r[6]) );
  BUFX4 U121 ( .A(n852), .Y(n139) );
  OAI221X4 U122 ( .A0(n420), .A1(n164), .B0(n412), .B1(n730), .C0(n781), .Y(
        \data_e_r[2] ) );
  AOI2BB2X4 U123 ( .B0(n141), .B1(n701), .A0N(n145), .A1N(n138), .Y(n772) );
  CLKINVX20 U124 ( .A(n702), .Y(n701) );
  INVX3 U125 ( .A(n142), .Y(n143) );
  OAI221X4 U126 ( .A0(n399), .A1(n166), .B0(n161), .B1(n718), .C0(n812), .Y(
        data_c_r[7]) );
  OR2X1 U127 ( .A(n451), .B(n164), .Y(n146) );
  OR2X2 U128 ( .A(n443), .B(n728), .Y(n147) );
  NAND2X6 U129 ( .A(n746), .B(n645), .Y(n850) );
  CLKINVX1 U130 ( .A(n148), .Y(n150) );
  OAI221X4 U131 ( .A0(n394), .A1(n164), .B0(n386), .B1(n725), .C0(n821), .Y(
        data_b_r[4]) );
  OAI221X4 U132 ( .A0(n384), .A1(n164), .B0(n376), .B1(n12), .C0(n837), .Y(
        data_a_r[6]) );
  OA22X1 U133 ( .A0(n356), .A1(n138), .B0(n364), .B1(n703), .Y(n818) );
  OAI221X4 U134 ( .A0(n290), .A1(n166), .B0(n447), .B1(n718), .C0(n754), .Y(
        data_i_r[7]) );
  OA22X4 U135 ( .A0(n387), .A1(n696), .B0(n395), .B1(n705), .Y(n782) );
  BUFX12 U136 ( .A(n700), .Y(n710) );
  NAND2X6 U137 ( .A(n170), .B(n646), .Y(n838) );
  OA22X1 U138 ( .A0(n383), .A1(n507), .B0(n161), .B1(n704), .Y(n786) );
  OA22X2 U139 ( .A0(n415), .A1(n138), .B0(n423), .B1(n707), .Y(n754) );
  BUFX12 U140 ( .A(n709), .Y(n705) );
  BUFX20 U141 ( .A(n708), .Y(n706) );
  AND2X4 U142 ( .A(o_out_valid), .B(n32), .Y(n1) );
  OA22X4 U143 ( .A0(n386), .A1(n699), .B0(n394), .B1(n705), .Y(n783) );
  OAI221X4 U144 ( .A0(n402), .A1(n166), .B0(n394), .B1(n635), .C0(n807), .Y(
        n680) );
  OA22X2 U145 ( .A0(n394), .A1(n138), .B0(n402), .B1(n840), .Y(n775) );
  AOI22X1 U146 ( .A0(i_isFirst), .A1(n343), .B0(n848), .B1(n26), .Y(n149) );
  NOR2X4 U147 ( .A(n652), .B(n889), .Y(N111) );
  NOR2BX4 U148 ( .AN(N106), .B(n889), .Y(N112) );
  BUFX20 U149 ( .A(n838), .Y(n507) );
  BUFX20 U150 ( .A(n507), .Y(n689) );
  OAI221X4 U151 ( .A0(n412), .A1(n165), .B0(n635), .B1(n21), .C0(n789), .Y(
        data_d_r[2]) );
  OAI221X2 U152 ( .A0(n443), .A1(n165), .B0(n435), .B1(n725), .C0(n766), .Y(
        data_g_r[3]) );
  CLKBUFX12 U153 ( .A(n850), .Y(n165) );
  OAI221X4 U154 ( .A0(n415), .A1(n165), .B0(n407), .B1(n730), .C0(n786), .Y(
        \data_e_r[7] ) );
  NOR2X2 U155 ( .A(n651), .B(n889), .Y(N114) );
  NOR2X8 U156 ( .A(ns[2]), .B(n345), .Y(n889) );
  NAND2X8 U157 ( .A(n646), .B(n746), .Y(n841) );
  OAI221XL U158 ( .A0(n384), .A1(n164), .B0(n376), .B1(n12), .C0(n837), .Y(
        n159) );
  OA22X2 U159 ( .A0(n273), .A1(n690), .B0(n352), .B1(n703), .Y(n837) );
  INVX6 U160 ( .A(n170), .Y(n746) );
  NOR2BX4 U161 ( .AN(n650), .B(n848), .Y(n649) );
  NAND2X6 U162 ( .A(n170), .B(n645), .Y(n840) );
  OAI221X4 U163 ( .A0(n284), .A1(n165), .B0(n453), .B1(n841), .C0(n748), .Y(
        data_i_r[1]) );
  BUFX20 U164 ( .A(n841), .Y(n711) );
  BUFX20 U165 ( .A(n708), .Y(n678) );
  OAI221X2 U166 ( .A0(n453), .A1(n166), .B0(n445), .B1(n732), .C0(n756), .Y(
        data_h_r[1]) );
  XOR2XL U167 ( .A(cnt[1]), .B(n645), .Y(n745) );
  OAI221X4 U168 ( .A0(n161), .A1(n164), .B0(n383), .B1(n729), .C0(n825), .Y(
        data_b_r[7]) );
  BUFX20 U169 ( .A(n708), .Y(n707) );
  MX2X1 U170 ( .A(n1130), .B(i_data[2]), .S0(n167), .Y(n536) );
  INVX1 U171 ( .A(i_data[2]), .Y(n830) );
  OA22X2 U172 ( .A0(n384), .A1(n688), .B0(n392), .B1(n704), .Y(n785) );
  OAI221X4 U173 ( .A0(n416), .A1(n165), .B0(n408), .B1(n724), .C0(n785), .Y(
        \data_e_r[6] ) );
  BUFX20 U174 ( .A(n850), .Y(n166) );
  OR2X8 U175 ( .A(ns[0]), .B(ns[1]), .Y(n345) );
  NAND3BX4 U176 ( .AN(n154), .B(n155), .C(n139), .Y(ns[2]) );
  OAI31X4 U177 ( .A0(n148), .A1(n149), .A2(n162), .B0(n852), .Y(ns[0]) );
  NAND2X1 U178 ( .A(n290), .B(n166), .Y(n350) );
  NAND2XL U179 ( .A(n904), .B(n169), .Y(n389) );
  OR2X2 U180 ( .A(n384), .B(n727), .Y(n397) );
  OA22X4 U181 ( .A0(n352), .A1(n140), .B0(n360), .B1(n703), .Y(n824) );
  NAND4X1 U182 ( .A(n150), .B(n343), .C(n4), .D(n162), .Y(n155) );
  BUFX20 U183 ( .A(n711), .Y(n734) );
  BUFX20 U184 ( .A(n711), .Y(n731) );
  BUFX20 U185 ( .A(n710), .Y(n702) );
  OAI221X4 U186 ( .A0(n396), .A1(n165), .B0(n388), .B1(n718), .C0(n818), .Y(
        data_b_r[2]) );
  BUFX20 U187 ( .A(n689), .Y(n696) );
  BUFX20 U188 ( .A(n696), .Y(n692) );
  BUFX16 U189 ( .A(n696), .Y(n694) );
  OA22X4 U190 ( .A0(n268), .A1(n138), .B0(n357), .B1(n703), .Y(n829) );
  BUFX20 U191 ( .A(n710), .Y(n703) );
  OA22X2 U192 ( .A0(n385), .A1(n690), .B0(n393), .B1(n705), .Y(n784) );
  OA22X2 U193 ( .A0(n390), .A1(n694), .B0(n398), .B1(n705), .Y(n779) );
  CLKBUFX2 U194 ( .A(i_rst_n), .Y(n742) );
  NOR2BX2 U195 ( .AN(N107), .B(n889), .Y(N113) );
  OR2X8 U196 ( .A(cnt[5]), .B(n164), .Y(n638) );
  OR2X8 U197 ( .A(n3), .B(n638), .Y(n743) );
  OR2X8 U198 ( .A(n743), .B(n348), .Y(n846) );
  AND2XL U199 ( .A(n842), .B(n845), .Y(n639) );
  INVX6 U200 ( .A(n846), .Y(n842) );
  OR2X1 U201 ( .A(n409), .B(n166), .Y(n640) );
  OA22X2 U202 ( .A0(n377), .A1(n696), .B0(n385), .B1(n704), .Y(n792) );
  OAI221X4 U203 ( .A0(n414), .A1(n166), .B0(n731), .B1(n28), .C0(n787), .Y(
        data_d_r[0]) );
  NOR2XL U204 ( .A(n400), .B(n164), .Y(n642) );
  NOR2XL U205 ( .A(n392), .B(n733), .Y(n643) );
  INVX3 U206 ( .A(n811), .Y(n644) );
  OR3X8 U207 ( .A(n642), .B(n643), .C(n644), .Y(data_c_r[6]) );
  OAI221X4 U208 ( .A0(n383), .A1(n164), .B0(n375), .B1(n725), .C0(n839), .Y(
        data_a_r[7]) );
  MX2XL U209 ( .A(n280), .B(med_e_wait_r[44]), .S0(n167), .Y(n565) );
  CLKMX2X2 U210 ( .A(n275), .B(med_e_wait_r[40]), .S0(n167), .Y(n570) );
  MX2XL U211 ( .A(n278), .B(med_e_wait_r[43]), .S0(n167), .Y(n567) );
  MX2X1 U212 ( .A(n276), .B(med_e_wait_r[41]), .S0(n167), .Y(n569) );
  MX2X1 U213 ( .A(n277), .B(med_e_wait_r[42]), .S0(n169), .Y(n568) );
  MX2X1 U214 ( .A(n279), .B(n879), .S0(n169), .Y(n566) );
  MX2X1 U215 ( .A(n281), .B(n878), .S0(n167), .Y(n564) );
  MX2X1 U216 ( .A(n282), .B(n877), .S0(n167), .Y(n563) );
  CLKMX2X2 U217 ( .A(n639), .B(n851), .S0(n32), .Y(o_done) );
  MXI2XL U218 ( .A(n439), .B(n910), .S0(n167), .Y(n523) );
  MXI2XL U219 ( .A(n447), .B(n907), .S0(n167), .Y(n515) );
  CLKBUFX2 U220 ( .A(i_rst_n), .Y(n740) );
  CLKBUFX2 U221 ( .A(i_rst_n), .Y(n741) );
  INVXL U222 ( .A(n158), .Y(n903) );
  MXI2XL U223 ( .A(n232), .B(n822), .S0(n701), .Y(med_e_wait_r[29]) );
  MXI2XL U224 ( .A(n233), .B(n911), .S0(n701), .Y(n869) );
  MXI2XL U225 ( .A(n234), .B(n910), .S0(n701), .Y(n868) );
  MXI2XL U226 ( .A(n222), .B(n832), .S0(n701), .Y(med_e_wait_r[23]) );
  MXI2XL U227 ( .A(n223), .B(n915), .S0(n701), .Y(n867) );
  MXI2XL U228 ( .A(n224), .B(n835), .S0(n701), .Y(med_e_wait_r[24]) );
  MX2X1 U229 ( .A(n46), .B(med_e_wait_r[29]), .S0(n167), .Y(n589) );
  MX2X1 U230 ( .A(n131), .B(n869), .S0(n169), .Y(n588) );
  MX2X1 U231 ( .A(n45), .B(n868), .S0(n169), .Y(n587) );
  MX2X1 U232 ( .A(n71), .B(med_e_wait_r[23]), .S0(n169), .Y(n599) );
  MX2X1 U233 ( .A(n69), .B(n867), .S0(n167), .Y(n598) );
  MX2X1 U234 ( .A(n75), .B(med_e_wait_r[24]), .S0(n167), .Y(n597) );
  MXI2XL U235 ( .A(n245), .B(n802), .S0(n701), .Y(med_e_wait_r[37]) );
  MXI2XL U236 ( .A(n246), .B(n805), .S0(n701), .Y(med_e_wait_r[38]) );
  MXI2XL U237 ( .A(n247), .B(n906), .S0(n701), .Y(n875) );
  MXI2XL U238 ( .A(n248), .B(n809), .S0(n701), .Y(med_e_wait_r[39]) );
  MXI2XL U239 ( .A(n249), .B(n905), .S0(n701), .Y(n873) );
  MXI2XL U240 ( .A(n250), .B(n904), .S0(n701), .Y(n871) );
  MXI2XL U241 ( .A(n237), .B(n801), .S0(n701), .Y(med_e_wait_r[32]) );
  MXI2XL U242 ( .A(n238), .B(n804), .S0(n701), .Y(med_e_wait_r[33]) );
  MXI2XL U243 ( .A(n239), .B(n909), .S0(n701), .Y(n876) );
  MXI2XL U244 ( .A(n240), .B(n808), .S0(n701), .Y(med_e_wait_r[34]) );
  MXI2XL U245 ( .A(n241), .B(n908), .S0(n701), .Y(n874) );
  MXI2XL U246 ( .A(n242), .B(n907), .S0(n701), .Y(n872) );
  MXI2XL U247 ( .A(n228), .B(n815), .S0(n701), .Y(med_e_wait_r[26]) );
  MXI2XL U248 ( .A(n229), .B(n817), .S0(n701), .Y(med_e_wait_r[27]) );
  MXI2XL U249 ( .A(n230), .B(n819), .S0(n701), .Y(med_e_wait_r[28]) );
  MXI2XL U250 ( .A(n231), .B(n912), .S0(n701), .Y(n870) );
  MXI2XL U251 ( .A(n243), .B(n796), .S0(n701), .Y(med_e_wait_r[35]) );
  MXI2XL U252 ( .A(n244), .B(n799), .S0(n701), .Y(med_e_wait_r[36]) );
  MXI2XL U253 ( .A(n236), .B(n798), .S0(n701), .Y(med_e_wait_r[31]) );
  MXI2XL U254 ( .A(n227), .B(n813), .S0(n701), .Y(med_e_wait_r[25]) );
  INVX1 U255 ( .A(i_data[14]), .Y(n911) );
  INVX1 U256 ( .A(i_data[22]), .Y(n908) );
  AND2XL U257 ( .A(sobel_out_data_w[10]), .B(n1), .Y(o_out_data[10]) );
  AND2XL U258 ( .A(sobel_out_data_w[9]), .B(n1), .Y(o_out_data[9]) );
  AND2XL U259 ( .A(sobel_out_data_w[8]), .B(n1), .Y(o_out_data[8]) );
  MXI2XL U260 ( .A(n252), .B(n828), .S0(n714), .Y(med_e_wait_r[41]) );
  MXI2XL U261 ( .A(n253), .B(n830), .S0(n713), .Y(med_e_wait_r[42]) );
  MXI2XL U262 ( .A(n254), .B(n832), .S0(n714), .Y(med_e_wait_r[43]) );
  MXI2XL U263 ( .A(n255), .B(n915), .S0(n712), .Y(n879) );
  MXI2XL U264 ( .A(n257), .B(n914), .S0(n713), .Y(n878) );
  MXI2XL U265 ( .A(n258), .B(n913), .S0(n712), .Y(n877) );
  NOR2BXL U266 ( .AN(n10), .B(n148), .Y(n9) );
  INVX1 U267 ( .A(i_data[15]), .Y(n910) );
  INVX1 U268 ( .A(i_data[23]), .Y(n907) );
  MXI2XL U269 ( .A(n442), .B(n912), .S0(n167), .Y(n526) );
  MXI2XL U270 ( .A(n440), .B(n911), .S0(n169), .Y(n524) );
  INVXL U271 ( .A(i_data[26]), .Y(n802) );
  MXI2XL U272 ( .A(n340), .B(n890), .S0(n701), .Y(n457) );
  MXI2XL U273 ( .A(n336), .B(n891), .S0(n701), .Y(n461) );
  MXI2XL U274 ( .A(n332), .B(n892), .S0(n701), .Y(n465) );
  MXI2XL U275 ( .A(n328), .B(n893), .S0(n701), .Y(n469) );
  MXI2XL U276 ( .A(n324), .B(n894), .S0(n701), .Y(n473) );
  MXI2XL U277 ( .A(n320), .B(n895), .S0(n701), .Y(n477) );
  MXI2XL U278 ( .A(n316), .B(n896), .S0(n701), .Y(n481) );
  MXI2XL U279 ( .A(n312), .B(n897), .S0(n701), .Y(n485) );
  MXI2XL U280 ( .A(n308), .B(n898), .S0(n701), .Y(n489) );
  MXI2XL U281 ( .A(n304), .B(n899), .S0(n701), .Y(n493) );
  MXI2XL U282 ( .A(n300), .B(n900), .S0(n701), .Y(n497) );
  MXI2XL U283 ( .A(n296), .B(n901), .S0(n701), .Y(n501) );
  MXI2XL U284 ( .A(n450), .B(n909), .S0(n167), .Y(n518) );
  MXI2XL U285 ( .A(n292), .B(n902), .S0(n701), .Y(n505) );
  INVXL U286 ( .A(i_data[1]), .Y(n828) );
  MX2XL U287 ( .A(n66), .B(i_data[13]), .S0(n169), .Y(n525) );
  MX2XL U288 ( .A(n55), .B(i_data[8]), .S0(n167), .Y(n530) );
  MX2XL U289 ( .A(n57), .B(i_data[10]), .S0(n169), .Y(n528) );
  MX2XL U290 ( .A(n60), .B(i_data[11]), .S0(n167), .Y(n527) );
  MXI2XL U291 ( .A(n448), .B(n908), .S0(n169), .Y(n516) );
  MX2XL U292 ( .A(n74), .B(i_data[1]), .S0(n169), .Y(n537) );
  MX2XL U293 ( .A(n76), .B(i_data[3]), .S0(n167), .Y(n535) );
  MX2XL U294 ( .A(n77), .B(i_data[0]), .S0(n169), .Y(n538) );
  MX2XL U295 ( .A(n104), .B(i_data[5]), .S0(n167), .Y(n533) );
  INVXL U296 ( .A(i_data[3]), .Y(n832) );
  INVXL U297 ( .A(i_data[27]), .Y(n805) );
  INVXL U298 ( .A(i_data[25]), .Y(n799) );
  MX2XL U299 ( .A(n78), .B(i_data[26]), .S0(n167), .Y(n512) );
  MX2XL U300 ( .A(n105), .B(i_data[27]), .S0(n169), .Y(n511) );
  MX2XL U301 ( .A(n56), .B(i_data[18]), .S0(n167), .Y(n520) );
  MX2XL U302 ( .A(n68), .B(i_data[19]), .S0(n167), .Y(n519) );
  MX2XL U303 ( .A(n1060), .B(i_data[29]), .S0(n169), .Y(n509) );
  MX2XL U304 ( .A(n67), .B(i_data[21]), .S0(n167), .Y(n517) );
  INVXL U305 ( .A(i_data[29]), .Y(n809) );
  INVXL U306 ( .A(i_data[24]), .Y(n796) );
  INVX1 U307 ( .A(i_data[4]), .Y(n915) );
  INVX1 U308 ( .A(i_data[28]), .Y(n906) );
  INVX1 U309 ( .A(i_data[6]), .Y(n914) );
  INVX1 U310 ( .A(i_data[7]), .Y(n913) );
  INVX1 U311 ( .A(i_data[30]), .Y(n905) );
  MXI2XL U312 ( .A(n341), .B(n890), .S0(n714), .Y(n456) );
  MXI2XL U313 ( .A(n337), .B(n891), .S0(n715), .Y(n460) );
  MXI2XL U314 ( .A(n333), .B(n892), .S0(n713), .Y(n464) );
  MXI2XL U315 ( .A(n329), .B(n893), .S0(n714), .Y(n468) );
  MX2XL U316 ( .A(n1070), .B(i_data[25]), .S0(n169), .Y(n513) );
  MX2XL U317 ( .A(n108), .B(i_data[24]), .S0(n169), .Y(n514) );
  MX2XL U318 ( .A(n61), .B(i_data[16]), .S0(n169), .Y(n522) );
  MX2XL U319 ( .A(n59), .B(i_data[17]), .S0(n167), .Y(n521) );
  NAND3XL U320 ( .A(n348), .B(n143), .C(n5), .Y(n6) );
  INVX1 U321 ( .A(i_data[12]), .Y(n912) );
  INVXL U322 ( .A(i_data[21]), .Y(n808) );
  INVXL U323 ( .A(i_data[10]), .Y(n817) );
  INVXL U324 ( .A(i_data[19]), .Y(n804) );
  INVXL U325 ( .A(i_data[11]), .Y(n819) );
  INVXL U326 ( .A(i_data[18]), .Y(n801) );
  INVXL U327 ( .A(i_data[17]), .Y(n798) );
  INVXL U328 ( .A(i_data[13]), .Y(n822) );
  INVXL U329 ( .A(i_data[8]), .Y(n813) );
  INVXL U330 ( .A(i_data[16]), .Y(n795) );
  INVXL U331 ( .A(i_data[5]), .Y(n835) );
  INVXL U332 ( .A(i_data[0]), .Y(n826) );
  CLKBUFX3 U333 ( .A(n737), .Y(n666) );
  CLKBUFX3 U334 ( .A(n737), .Y(n667) );
  CLKBUFX3 U335 ( .A(n738), .Y(n669) );
  CLKBUFX3 U336 ( .A(n738), .Y(n670) );
  CLKBUFX3 U337 ( .A(n739), .Y(n672) );
  CLKBUFX3 U338 ( .A(n739), .Y(n673) );
  CLKBUFX3 U339 ( .A(n741), .Y(n675) );
  CLKBUFX3 U340 ( .A(n737), .Y(n676) );
  CLKBUFX3 U341 ( .A(n740), .Y(n654) );
  CLKBUFX3 U342 ( .A(n738), .Y(n655) );
  CLKBUFX3 U343 ( .A(n736), .Y(n657) );
  CLKBUFX3 U344 ( .A(n736), .Y(n658) );
  CLKBUFX3 U345 ( .A(n735), .Y(n660) );
  CLKBUFX3 U346 ( .A(n735), .Y(n661) );
  CLKBUFX3 U347 ( .A(n736), .Y(n663) );
  CLKBUFX3 U348 ( .A(n736), .Y(n664) );
  CLKBUFX3 U349 ( .A(n737), .Y(n668) );
  CLKBUFX3 U350 ( .A(n739), .Y(n674) );
  CLKBUFX3 U351 ( .A(n739), .Y(n656) );
  CLKBUFX3 U352 ( .A(n737), .Y(n659) );
  CLKBUFX3 U353 ( .A(n735), .Y(n662) );
  CLKBUFX3 U354 ( .A(n738), .Y(n671) );
  CLKBUFX3 U355 ( .A(n736), .Y(n665) );
  CLKBUFX3 U356 ( .A(n736), .Y(n677) );
  CLKBUFX3 U357 ( .A(n741), .Y(n737) );
  CLKBUFX3 U358 ( .A(n740), .Y(n738) );
  CLKBUFX3 U359 ( .A(n740), .Y(n739) );
  CLKBUFX3 U360 ( .A(n741), .Y(n735) );
  CLKBUFX3 U361 ( .A(n741), .Y(n736) );
  NOR2X1 U362 ( .A(n26), .B(n162), .Y(n10) );
  NAND2X1 U363 ( .A(n10), .B(n148), .Y(n158) );
  AND2X2 U364 ( .A(n649), .B(n347), .Y(n154) );
  AND3X2 U365 ( .A(n163), .B(n26), .C(n150), .Y(n650) );
  XNOR2X1 U366 ( .A(add_236_carry[5]), .B(cnt[5]), .Y(n651) );
  XNOR2X1 U367 ( .A(n142), .B(n169), .Y(n652) );
  AO22X2 U368 ( .A0(n903), .A1(n744), .B0(n649), .B1(n32), .Y(ns[1]) );
  OA22X2 U369 ( .A0(n418), .A1(n691), .B0(n426), .B1(n678), .Y(n751) );
  AO22X1 U370 ( .A0(sobel_out_data_w[7]), .A1(n1), .B0(out_data_w[7]), .B1(n2), 
        .Y(o_out_data[7]) );
  AO22X1 U371 ( .A0(sobel_out_data_w[6]), .A1(n1), .B0(out_data_w[6]), .B1(n2), 
        .Y(o_out_data[6]) );
  AO22X1 U372 ( .A0(sobel_out_data_w[5]), .A1(n1), .B0(out_data_w[5]), .B1(n2), 
        .Y(o_out_data[5]) );
  AO22X1 U373 ( .A0(sobel_out_data_w[4]), .A1(n1), .B0(out_data_w[4]), .B1(n2), 
        .Y(o_out_data[4]) );
  AO22X1 U374 ( .A0(sobel_out_data_w[3]), .A1(n1), .B0(out_data_w[3]), .B1(n2), 
        .Y(o_out_data[3]) );
  AO22X1 U375 ( .A0(sobel_out_data_w[2]), .A1(n1), .B0(out_data_w[2]), .B1(n2), 
        .Y(o_out_data[2]) );
  AO22X1 U376 ( .A0(sobel_out_data_w[1]), .A1(n1), .B0(out_data_w[1]), .B1(n2), 
        .Y(o_out_data[1]) );
  AO22X1 U377 ( .A0(sobel_out_data_w[0]), .A1(n1), .B0(out_data_w[0]), .B1(n2), 
        .Y(o_out_data[0]) );
  MXI2X1 U378 ( .A(n339), .B(n890), .S0(n30), .Y(n458) );
  MXI2X1 U379 ( .A(n335), .B(n891), .S0(n30), .Y(n462) );
  MXI2X1 U380 ( .A(n331), .B(n892), .S0(n30), .Y(n466) );
  MXI2X1 U381 ( .A(n327), .B(n893), .S0(n30), .Y(n470) );
  MXI2X1 U382 ( .A(n323), .B(n894), .S0(n30), .Y(n474) );
  MXI2X1 U383 ( .A(n319), .B(n895), .S0(n30), .Y(n478) );
  MXI2X1 U384 ( .A(n315), .B(n896), .S0(n30), .Y(n482) );
  MXI2X1 U385 ( .A(n311), .B(n897), .S0(n30), .Y(n486) );
  MXI2X1 U386 ( .A(n307), .B(n898), .S0(n30), .Y(n490) );
  MXI2X1 U387 ( .A(n303), .B(n899), .S0(n30), .Y(n494) );
  MXI2X1 U388 ( .A(n299), .B(n900), .S0(n30), .Y(n498) );
  MXI2X1 U389 ( .A(n295), .B(n901), .S0(n30), .Y(n502) );
  MXI2X1 U390 ( .A(n291), .B(n902), .S0(n30), .Y(n506) );
  MXI2X1 U391 ( .A(n342), .B(n890), .S0(n31), .Y(n455) );
  MXI2X1 U392 ( .A(n338), .B(n891), .S0(n31), .Y(n459) );
  MXI2X1 U393 ( .A(n334), .B(n892), .S0(n31), .Y(n463) );
  MXI2X1 U394 ( .A(n330), .B(n893), .S0(n31), .Y(n467) );
  MXI2X1 U395 ( .A(n326), .B(n894), .S0(n31), .Y(n471) );
  MXI2X1 U396 ( .A(n322), .B(n895), .S0(n31), .Y(n475) );
  MXI2X1 U397 ( .A(n318), .B(n896), .S0(n31), .Y(n479) );
  MXI2X1 U398 ( .A(n314), .B(n897), .S0(n31), .Y(n483) );
  MXI2X1 U399 ( .A(n310), .B(n898), .S0(n31), .Y(n487) );
  MXI2X1 U400 ( .A(n306), .B(n899), .S0(n31), .Y(n491) );
  MXI2X1 U401 ( .A(n302), .B(n900), .S0(n31), .Y(n495) );
  MXI2X1 U402 ( .A(n298), .B(n901), .S0(n31), .Y(n499) );
  MXI2X1 U403 ( .A(n294), .B(n902), .S0(n31), .Y(n503) );
  CLKMX2X2 U404 ( .A(n1140), .B(n876), .S0(n169), .Y(n582) );
  CLKMX2X2 U405 ( .A(n134), .B(med_e_wait_r[49]), .S0(n167), .Y(n557) );
  CLKMX2X2 U406 ( .A(n53), .B(n888), .S0(n169), .Y(n550) );
  CLKMX2X2 U407 ( .A(n79), .B(n864), .S0(n169), .Y(n614) );
  CLKMX2X2 U408 ( .A(n80), .B(med_e_wait_r[9]), .S0(n169), .Y(n621) );
  NOR3BXL U409 ( .AN(cnt[5]), .B(n6), .C(n166), .Y(n851) );
  ADDHXL U410 ( .A(n3), .B(add_236_carry[3]), .CO(add_236_carry[4]), .S(N106)
         );
  AND2X2 U411 ( .A(n142), .B(n653), .Y(add_236_carry[3]) );
  ADDHXL U412 ( .A(cnt[4]), .B(add_236_carry[4]), .CO(add_236_carry[5]), .S(
        N107) );
  CLKMX2X2 U413 ( .A(n156), .B(med_e_wait_r[26]), .S0(n167), .Y(n593) );
  MXI2X1 U414 ( .A(n225), .B(n914), .S0(n701), .Y(n866) );
  MXI2X1 U415 ( .A(n226), .B(n913), .S0(n701), .Y(n865) );
  CLKMX2X2 U416 ( .A(n63), .B(n866), .S0(n169), .Y(n596) );
  CLKMX2X2 U417 ( .A(n97), .B(n865), .S0(n167), .Y(n595) );
  MXI2X1 U418 ( .A(n235), .B(n795), .S0(n701), .Y(med_e_wait_r[30]) );
  CLKMX2X2 U419 ( .A(n1110), .B(med_e_wait_r[30]), .S0(n169), .Y(n586) );
  MXI2X1 U420 ( .A(n219), .B(n826), .S0(n701), .Y(med_e_wait_r[20]) );
  MXI2X1 U421 ( .A(n221), .B(n830), .S0(n701), .Y(med_e_wait_r[22]) );
  CLKMX2X2 U422 ( .A(n64), .B(med_e_wait_r[20]), .S0(n169), .Y(n602) );
  CLKMX2X2 U423 ( .A(n96), .B(med_e_wait_r[22]), .S0(n169), .Y(n600) );
  MXI2X1 U424 ( .A(n220), .B(n828), .S0(n701), .Y(med_e_wait_r[21]) );
  CLKMX2X2 U425 ( .A(n70), .B(med_e_wait_r[21]), .S0(n167), .Y(n601) );
  CLKMX2X2 U426 ( .A(n144), .B(med_e_wait_r[31]), .S0(n167), .Y(n585) );
  CLKMX2X2 U427 ( .A(n135), .B(n874), .S0(n167), .Y(n580) );
  CLKMX2X2 U428 ( .A(n39), .B(n870), .S0(n167), .Y(n590) );
  CLKMX2X2 U429 ( .A(n160), .B(n872), .S0(n167), .Y(n579) );
  CLKMX2X2 U430 ( .A(n62), .B(n875), .S0(n169), .Y(n574) );
  CLKMX2X2 U431 ( .A(n132), .B(n873), .S0(n167), .Y(n572) );
  CLKMX2X2 U432 ( .A(n99), .B(n871), .S0(n167), .Y(n571) );
  CLKMX2X2 U433 ( .A(n51), .B(med_e_wait_r[34]), .S0(n169), .Y(n581) );
  CLKMX2X2 U434 ( .A(n35), .B(med_e_wait_r[32]), .S0(n167), .Y(n584) );
  CLKMX2X2 U435 ( .A(n38), .B(med_e_wait_r[33]), .S0(n169), .Y(n583) );
  CLKMX2X2 U436 ( .A(n47), .B(med_e_wait_r[27]), .S0(n167), .Y(n592) );
  CLKMX2X2 U437 ( .A(n36), .B(med_e_wait_r[28]), .S0(n169), .Y(n591) );
  CLKMX2X2 U438 ( .A(n102), .B(med_e_wait_r[25]), .S0(n169), .Y(n594) );
  CLKMX2X2 U439 ( .A(n72), .B(med_e_wait_r[35]), .S0(n167), .Y(n578) );
  CLKMX2X2 U440 ( .A(n73), .B(med_e_wait_r[37]), .S0(n167), .Y(n576) );
  CLKMX2X2 U441 ( .A(n98), .B(med_e_wait_r[38]), .S0(n169), .Y(n575) );
  CLKMX2X2 U442 ( .A(n141), .B(med_e_wait_r[36]), .S0(n169), .Y(n577) );
  CLKMX2X2 U443 ( .A(n92), .B(med_e_wait_r[39]), .S0(n167), .Y(n573) );
  MXI2X1 U444 ( .A(n260), .B(n815), .S0(n712), .Y(med_e_wait_r[46]) );
  CLKMX2X2 U445 ( .A(n37), .B(med_e_wait_r[46]), .S0(n167), .Y(n561) );
  MXI2X1 U446 ( .A(n251), .B(n826), .S0(n712), .Y(med_e_wait_r[40]) );
  MXI2X1 U447 ( .A(n185), .B(n908), .S0(n715), .Y(n886) );
  CLKMX2X2 U448 ( .A(n1120), .B(n886), .S0(n169), .Y(n548) );
  MXI2X1 U449 ( .A(n263), .B(n912), .S0(n712), .Y(n882) );
  MXI2X1 U450 ( .A(n265), .B(n911), .S0(n713), .Y(n881) );
  CLKMX2X2 U451 ( .A(n52), .B(n882), .S0(n169), .Y(n558) );
  CLKMX2X2 U452 ( .A(n49), .B(n881), .S0(n167), .Y(n556) );
  MXI2X1 U453 ( .A(n266), .B(n910), .S0(n715), .Y(n880) );
  MXI2X1 U454 ( .A(n186), .B(n907), .S0(n714), .Y(n884) );
  CLKMX2X2 U455 ( .A(n50), .B(n884), .S0(n167), .Y(n547) );
  CLKMX2X2 U456 ( .A(n48), .B(n880), .S0(n167), .Y(n555) );
  MXI2X1 U457 ( .A(n193), .B(n905), .S0(n713), .Y(n885) );
  MXI2X1 U458 ( .A(n194), .B(n904), .S0(n712), .Y(n883) );
  CLKMX2X2 U459 ( .A(n58), .B(n885), .S0(n169), .Y(n540) );
  CLKMX2X2 U460 ( .A(n1090), .B(n883), .S0(n169), .Y(n539) );
  MXI2X1 U461 ( .A(n261), .B(n817), .S0(n713), .Y(med_e_wait_r[47]) );
  MXI2X1 U462 ( .A(n262), .B(n819), .S0(n712), .Y(med_e_wait_r[48]) );
  CLKMX2X2 U463 ( .A(n115), .B(med_e_wait_r[47]), .S0(n167), .Y(n560) );
  CLKMX2X2 U464 ( .A(n133), .B(med_e_wait_r[48]), .S0(n167), .Y(n559) );
  MXI2X1 U465 ( .A(n259), .B(n813), .S0(n713), .Y(med_e_wait_r[45]) );
  CLKMX2X2 U466 ( .A(n42), .B(med_e_wait_r[45]), .S0(n169), .Y(n562) );
  MXI2X1 U467 ( .A(n180), .B(n798), .S0(n714), .Y(med_e_wait_r[51]) );
  CLKMX2X2 U468 ( .A(n40), .B(med_e_wait_r[51]), .S0(n167), .Y(n553) );
  MXI2X1 U469 ( .A(n191), .B(n906), .S0(n714), .Y(n887) );
  CLKMX2X2 U470 ( .A(n103), .B(n887), .S0(n169), .Y(n542) );
  MXI2X1 U471 ( .A(n184), .B(n808), .S0(n715), .Y(med_e_wait_r[54]) );
  CLKMX2X2 U472 ( .A(n43), .B(med_e_wait_r[54]), .S0(n167), .Y(n549) );
  MXI2X1 U473 ( .A(n182), .B(n804), .S0(n714), .Y(med_e_wait_r[53]) );
  MXI2X1 U474 ( .A(n181), .B(n801), .S0(n713), .Y(med_e_wait_r[52]) );
  CLKMX2X2 U475 ( .A(n34), .B(med_e_wait_r[52]), .S0(n167), .Y(n552) );
  CLKMX2X2 U476 ( .A(n41), .B(med_e_wait_r[53]), .S0(n167), .Y(n551) );
  MXI2X1 U477 ( .A(n179), .B(n795), .S0(n715), .Y(med_e_wait_r[50]) );
  CLKMX2X2 U478 ( .A(n44), .B(med_e_wait_r[50]), .S0(n169), .Y(n554) );
  MXI2X1 U479 ( .A(n187), .B(n796), .S0(n715), .Y(med_e_wait_r[55]) );
  MXI2X1 U480 ( .A(n189), .B(n802), .S0(n712), .Y(med_e_wait_r[57]) );
  MXI2X1 U481 ( .A(n190), .B(n805), .S0(n714), .Y(med_e_wait_r[58]) );
  CLKMX2X2 U482 ( .A(n100), .B(med_e_wait_r[55]), .S0(n167), .Y(n546) );
  CLKMX2X2 U483 ( .A(n65), .B(med_e_wait_r[57]), .S0(n167), .Y(n544) );
  CLKMX2X2 U484 ( .A(n101), .B(med_e_wait_r[58]), .S0(n167), .Y(n543) );
  CLKMX2X2 U485 ( .A(n93), .B(med_e_wait_r[56]), .S0(n167), .Y(n545) );
  MXI2X1 U486 ( .A(n188), .B(n799), .S0(n713), .Y(med_e_wait_r[56]) );
  MXI2X1 U487 ( .A(n192), .B(n809), .S0(n714), .Y(med_e_wait_r[59]) );
  CLKMX2X2 U488 ( .A(n94), .B(med_e_wait_r[59]), .S0(n169), .Y(n541) );
  MXI2X1 U489 ( .A(n196), .B(n815), .S0(n636), .Y(med_e_wait_r[6]) );
  CLKMX2X2 U490 ( .A(n81), .B(med_e_wait_r[6]), .S0(n169), .Y(n625) );
  MXI2X1 U491 ( .A(n204), .B(n798), .S0(n636), .Y(med_e_wait_r[11]) );
  CLKMX2X2 U492 ( .A(n82), .B(med_e_wait_r[11]), .S0(n169), .Y(n617) );
  MXI2X1 U493 ( .A(n215), .B(n906), .S0(n636), .Y(n863) );
  CLKMX2X2 U494 ( .A(n117), .B(n863), .S0(n167), .Y(n606) );
  MXI2X1 U495 ( .A(n208), .B(n808), .S0(n636), .Y(med_e_wait_r[14]) );
  CLKMX2X2 U496 ( .A(n83), .B(med_e_wait_r[14]), .S0(n169), .Y(n613) );
  MXI2X1 U497 ( .A(n206), .B(n804), .S0(n636), .Y(med_e_wait_r[13]) );
  MXI2X1 U498 ( .A(n205), .B(n801), .S0(n637), .Y(med_e_wait_r[12]) );
  CLKMX2X2 U499 ( .A(n95), .B(med_e_wait_r[12]), .S0(n169), .Y(n616) );
  CLKMX2X2 U500 ( .A(n84), .B(med_e_wait_r[13]), .S0(n169), .Y(n615) );
  MXI2X1 U501 ( .A(n203), .B(n795), .S0(n636), .Y(med_e_wait_r[10]) );
  CLKMX2X2 U502 ( .A(n85), .B(med_e_wait_r[10]), .S0(n167), .Y(n618) );
  MXI2X1 U503 ( .A(n211), .B(n796), .S0(n636), .Y(med_e_wait_r[15]) );
  MXI2X1 U504 ( .A(n213), .B(n802), .S0(n636), .Y(med_e_wait_r[17]) );
  MXI2X1 U505 ( .A(n214), .B(n805), .S0(n636), .Y(med_e_wait_r[18]) );
  CLKMX2X2 U506 ( .A(n123), .B(med_e_wait_r[15]), .S0(n169), .Y(n610) );
  CLKMX2X2 U507 ( .A(n128), .B(med_e_wait_r[17]), .S0(n169), .Y(n608) );
  CLKMX2X2 U508 ( .A(n129), .B(med_e_wait_r[18]), .S0(n167), .Y(n607) );
  MXI2X1 U509 ( .A(n212), .B(n799), .S0(n636), .Y(med_e_wait_r[16]) );
  CLKMX2X2 U510 ( .A(n118), .B(med_e_wait_r[16]), .S0(n167), .Y(n609) );
  MXI2X1 U511 ( .A(n216), .B(n809), .S0(n636), .Y(med_e_wait_r[19]) );
  CLKMX2X2 U512 ( .A(n119), .B(med_e_wait_r[19]), .S0(n167), .Y(n605) );
  MXI2X1 U513 ( .A(n209), .B(n908), .S0(n637), .Y(n862) );
  CLKMX2X2 U514 ( .A(n90), .B(n862), .S0(n169), .Y(n612) );
  MXI2X1 U515 ( .A(n199), .B(n912), .S0(n636), .Y(n858) );
  MXI2X1 U516 ( .A(n201), .B(n911), .S0(n636), .Y(n857) );
  CLKMX2X2 U517 ( .A(n88), .B(n858), .S0(n167), .Y(n622) );
  CLKMX2X2 U518 ( .A(n91), .B(n857), .S0(n167), .Y(n620) );
  MXI2X1 U519 ( .A(n202), .B(n910), .S0(n636), .Y(n856) );
  MXI2X1 U520 ( .A(n210), .B(n907), .S0(n636), .Y(n860) );
  CLKMX2X2 U521 ( .A(n86), .B(n860), .S0(n167), .Y(n611) );
  CLKMX2X2 U522 ( .A(n89), .B(n856), .S0(n169), .Y(n619) );
  MXI2X1 U523 ( .A(n217), .B(n905), .S0(n636), .Y(n861) );
  MXI2X1 U524 ( .A(n218), .B(n904), .S0(n636), .Y(n859) );
  CLKMX2X2 U525 ( .A(n124), .B(n861), .S0(n169), .Y(n604) );
  CLKMX2X2 U526 ( .A(n127), .B(n859), .S0(n167), .Y(n603) );
  MXI2X1 U527 ( .A(n197), .B(n817), .S0(n636), .Y(med_e_wait_r[7]) );
  MXI2X1 U528 ( .A(n198), .B(n819), .S0(n636), .Y(med_e_wait_r[8]) );
  CLKMX2X2 U529 ( .A(n1100), .B(med_e_wait_r[7]), .S0(n167), .Y(n624) );
  CLKMX2X2 U530 ( .A(n87), .B(med_e_wait_r[8]), .S0(n169), .Y(n623) );
  MXI2X1 U531 ( .A(n195), .B(n813), .S0(n637), .Y(med_e_wait_r[5]) );
  CLKMX2X2 U532 ( .A(n137), .B(med_e_wait_r[5]), .S0(n169), .Y(n626) );
  MXI2X1 U533 ( .A(n177), .B(n914), .S0(n636), .Y(n854) );
  MXI2X1 U534 ( .A(n178), .B(n913), .S0(n636), .Y(n853) );
  CLKMX2X2 U535 ( .A(n130), .B(n854), .S0(n167), .Y(n628) );
  CLKMX2X2 U536 ( .A(n126), .B(n853), .S0(n167), .Y(n627) );
  MXI2X1 U537 ( .A(n175), .B(n915), .S0(n636), .Y(n855) );
  CLKMX2X2 U538 ( .A(n120), .B(n855), .S0(n167), .Y(n630) );
  MXI2X1 U539 ( .A(n171), .B(n826), .S0(n637), .Y(med_e_wait_r[0]) );
  MXI2X1 U540 ( .A(n173), .B(n830), .S0(n636), .Y(med_e_wait_r[2]) );
  MXI2X1 U541 ( .A(n174), .B(n832), .S0(n637), .Y(med_e_wait_r[3]) );
  MXI2X1 U542 ( .A(n176), .B(n835), .S0(n636), .Y(med_e_wait_r[4]) );
  CLKMX2X2 U543 ( .A(n136), .B(med_e_wait_r[0]), .S0(n167), .Y(n634) );
  CLKMX2X2 U544 ( .A(n125), .B(med_e_wait_r[2]), .S0(n169), .Y(n632) );
  CLKMX2X2 U545 ( .A(n121), .B(med_e_wait_r[3]), .S0(n167), .Y(n631) );
  CLKMX2X2 U546 ( .A(n116), .B(med_e_wait_r[4]), .S0(n167), .Y(n629) );
  MXI2X1 U547 ( .A(n172), .B(n828), .S0(n636), .Y(med_e_wait_r[1]) );
  CLKMX2X2 U548 ( .A(n122), .B(med_e_wait_r[1]), .S0(n167), .Y(n633) );
  MXI2X1 U549 ( .A(n434), .B(n915), .S0(n169), .Y(n534) );
  MXI2X1 U550 ( .A(n432), .B(n914), .S0(n169), .Y(n532) );
  MXI2X1 U551 ( .A(n431), .B(n913), .S0(n167), .Y(n531) );
  MXI2X1 U552 ( .A(n287), .B(n906), .S0(n167), .Y(n510) );
  MXI2X1 U553 ( .A(n289), .B(n905), .S0(n167), .Y(n508) );
  MXI2X1 U554 ( .A(n325), .B(n894), .S0(n712), .Y(n472) );
  MXI2X1 U555 ( .A(n321), .B(n895), .S0(n714), .Y(n476) );
  MXI2X1 U556 ( .A(n317), .B(n896), .S0(n715), .Y(n480) );
  MXI2X1 U557 ( .A(n313), .B(n897), .S0(n713), .Y(n484) );
  MXI2X1 U558 ( .A(n309), .B(n898), .S0(n712), .Y(n488) );
  MXI2X1 U559 ( .A(n305), .B(n899), .S0(n714), .Y(n492) );
  MXI2X1 U560 ( .A(n301), .B(n900), .S0(n715), .Y(n496) );
  MXI2X1 U561 ( .A(n297), .B(n901), .S0(n713), .Y(n500) );
  MXI2X1 U562 ( .A(n293), .B(n902), .S0(n714), .Y(n504) );
  OAI2BB2XL U563 ( .B0(n347), .B1(n9), .A0N(i_med_sobel), .A1N(n9), .Y(n344)
         );
  CLKINVX1 U564 ( .A(sobel_data_w[10]), .Y(n890) );
  CLKINVX1 U565 ( .A(sobel_data_w[9]), .Y(n891) );
  CLKINVX1 U566 ( .A(sobel_data_w[8]), .Y(n892) );
  CLKINVX1 U567 ( .A(sobel_data_w[7]), .Y(n893) );
  CLKINVX1 U568 ( .A(sobel_data_w[6]), .Y(n894) );
  CLKINVX1 U569 ( .A(sobel_data_w[5]), .Y(n895) );
  CLKINVX1 U570 ( .A(sobel_data_w[4]), .Y(n896) );
  CLKINVX1 U571 ( .A(sobel_data_w[3]), .Y(n897) );
  CLKINVX1 U572 ( .A(sobel_data_w[2]), .Y(n898) );
  CLKINVX1 U573 ( .A(sobel_data_w[1]), .Y(n899) );
  CLKINVX1 U574 ( .A(sobel_data_w[0]), .Y(n900) );
  CLKINVX1 U575 ( .A(angle_w[1]), .Y(n901) );
  CLKINVX1 U576 ( .A(angle_w[0]), .Y(n902) );
  OAI221X4 U577 ( .A0(n426), .A1(n164), .B0(n418), .B1(n711), .C0(n775), .Y(
        data_f_r[4]) );
  OAI221XL U578 ( .A0(n412), .A1(n165), .B0(n841), .B1(n21), .C0(n789), .Y(
        n679) );
  OAI221X4 U579 ( .A0(n418), .A1(n166), .B0(n410), .B1(n725), .C0(n783), .Y(
        \data_e_r[4] ) );
  MXI2X1 U580 ( .A(n200), .B(n822), .S0(n636), .Y(med_e_wait_r[9]) );
  MXI2X1 U581 ( .A(n264), .B(n822), .S0(n715), .Y(med_e_wait_r[49]) );
  OAI221X4 U582 ( .A0(n388), .A1(n165), .B0(n380), .B1(n724), .C0(n831), .Y(
        data_a_r[2]) );
  OAI221X4 U583 ( .A0(n283), .A1(n164), .B0(n454), .B1(n718), .C0(n747), .Y(
        data_i_r[0]) );
  OAI221XL U584 ( .A0(n398), .A1(n164), .B0(n390), .B1(n711), .C0(n814), .Y(
        n681) );
  OAI221XL U585 ( .A0(n390), .A1(n164), .B0(n382), .B1(n733), .C0(n827), .Y(
        n682) );
  OAI221XL U586 ( .A0(n428), .A1(n165), .B0(n420), .B1(n727), .C0(n773), .Y(
        n685) );
  OA22X4 U587 ( .A0(n396), .A1(n699), .B0(n404), .B1(n705), .Y(n773) );
  OAI221X4 U588 ( .A0(n288), .A1(n166), .B0(n449), .B1(n723), .C0(n752), .Y(
        data_i_r[5]) );
  OAI221X4 U589 ( .A0(n449), .A1(n166), .B0(n441), .B1(n733), .C0(n760), .Y(
        data_h_r[5]) );
  OAI221X4 U590 ( .A0(n425), .A1(n166), .B0(n417), .B1(n841), .C0(n776), .Y(
        data_f_r[5]) );
  OAI221X4 U591 ( .A0(n287), .A1(n166), .B0(n450), .B1(n718), .C0(n751), .Y(
        data_i_r[4]) );
  OAI221X2 U592 ( .A0(n405), .A1(n165), .B0(n145), .B1(n731), .C0(n800), .Y(
        data_c_r[1]) );
  OAI221X4 U593 ( .A0(n450), .A1(n166), .B0(n442), .B1(n716), .C0(n759), .Y(
        data_h_r[4]) );
  INVX1 U594 ( .A(i_data[20]), .Y(n909) );
  MXI2X1 U595 ( .A(n207), .B(n909), .S0(n636), .Y(n864) );
  MXI2X1 U596 ( .A(n183), .B(n909), .S0(n714), .Y(n888) );
  INVX3 U597 ( .A(n847), .Y(n852) );
  OAI221XL U598 ( .A0(n424), .A1(n164), .B0(n416), .B1(n724), .C0(n777), .Y(
        n687) );
  NAND3BX1 U599 ( .AN(n3), .B(n143), .C(n348), .Y(n843) );
  NAND2X1 U600 ( .A(n143), .B(n842), .Y(n744) );
  OAI221X4 U601 ( .A0(n286), .A1(n164), .B0(n451), .B1(n716), .C0(n750), .Y(
        data_i_r[3]) );
  OAI221X4 U602 ( .A0(n413), .A1(n165), .B0(n734), .B1(n25), .C0(n788), .Y(
        data_d_r[1]) );
  OAI221X4 U603 ( .A0(n423), .A1(n165), .B0(n415), .B1(n719), .C0(n778), .Y(
        data_f_r[7]) );
  OAI221X4 U604 ( .A0(n428), .A1(n165), .B0(n420), .B1(n635), .C0(n773), .Y(
        data_f_r[2]) );
  OAI221X4 U605 ( .A0(n401), .A1(n164), .B0(n393), .B1(n732), .C0(n810), .Y(
        data_c_r[5]) );
  OAI221X4 U606 ( .A0(n385), .A1(n165), .B0(n377), .B1(n733), .C0(n836), .Y(
        data_a_r[5]) );
  OAI221X4 U607 ( .A0(n429), .A1(n165), .B0(n421), .B1(n726), .C0(n772), .Y(
        data_f_r[1]) );
  OAI221X4 U608 ( .A0(n440), .A1(n164), .B0(n432), .B1(n732), .C0(n769), .Y(
        data_g_r[6]) );
  OAI221X4 U609 ( .A0(n408), .A1(n164), .B0(n732), .B1(n23), .C0(n793), .Y(
        data_d_r[6]) );
  OAI221X4 U610 ( .A0(n289), .A1(n166), .B0(n448), .B1(n711), .C0(n753), .Y(
        data_i_r[6]) );
  OAI221X4 U611 ( .A0(n448), .A1(n165), .B0(n440), .B1(n717), .C0(n761), .Y(
        data_h_r[6]) );
  BUFX20 U612 ( .A(n840), .Y(n700) );
  OAI221X4 U613 ( .A0(n403), .A1(n166), .B0(n395), .B1(n717), .C0(n806), .Y(
        data_c_r[3]) );
  OAI221X4 U614 ( .A0(n387), .A1(n165), .B0(n379), .B1(n722), .C0(n833), .Y(
        data_a_r[3]) );
  OAI221X4 U615 ( .A0(n427), .A1(n166), .B0(n419), .B1(n717), .C0(n774), .Y(
        data_f_r[3]) );
  OA22X4 U616 ( .A0(n421), .A1(n692), .B0(n429), .B1(n707), .Y(n748) );
  OA22X4 U617 ( .A0(n420), .A1(n691), .B0(n428), .B1(n707), .Y(n749) );
  OAI221X2 U618 ( .A0(n285), .A1(n165), .B0(n452), .B1(n724), .C0(n749), .Y(
        data_i_r[2]) );
  OA22X4 U619 ( .A0(n419), .A1(n688), .B0(n427), .B1(n706), .Y(n750) );
  OA22X4 U620 ( .A0(n416), .A1(n691), .B0(n424), .B1(n706), .Y(n753) );
  OA22X4 U621 ( .A0(n414), .A1(n696), .B0(n422), .B1(n706), .Y(n755) );
  OAI221X2 U622 ( .A0(n454), .A1(n166), .B0(n446), .B1(n711), .C0(n755), .Y(
        data_h_r[0]) );
  OA22X4 U623 ( .A0(n413), .A1(n138), .B0(n421), .B1(n706), .Y(n756) );
  OAI221X2 U624 ( .A0(n452), .A1(n165), .B0(n444), .B1(n12), .C0(n757), .Y(
        data_h_r[2]) );
  OA22X4 U625 ( .A0(n411), .A1(n695), .B0(n419), .B1(n706), .Y(n758) );
  OA22X4 U626 ( .A0(n409), .A1(n693), .B0(n417), .B1(n678), .Y(n760) );
  OA22X4 U627 ( .A0(n408), .A1(n692), .B0(n416), .B1(n678), .Y(n761) );
  OAI221X2 U628 ( .A0(n447), .A1(n165), .B0(n439), .B1(n635), .C0(n762), .Y(
        data_h_r[7]) );
  OA22X4 U629 ( .A0(n140), .A1(n28), .B0(n414), .B1(n707), .Y(n763) );
  OAI221X2 U630 ( .A0(n446), .A1(n165), .B0(n438), .B1(n719), .C0(n763), .Y(
        data_g_r[0]) );
  OA22X4 U631 ( .A0(n507), .A1(n25), .B0(n413), .B1(n678), .Y(n764) );
  OA22X4 U632 ( .A0(n695), .A1(n21), .B0(n412), .B1(n707), .Y(n765) );
  OAI221X2 U633 ( .A0(n444), .A1(n166), .B0(n436), .B1(n726), .C0(n765), .Y(
        data_g_r[2]) );
  OA22X4 U634 ( .A0(n507), .A1(n27), .B0(n411), .B1(n706), .Y(n766) );
  OA22X4 U635 ( .A0(n695), .A1(n29), .B0(n409), .B1(n678), .Y(n768) );
  OA22X4 U636 ( .A0(n699), .A1(n23), .B0(n408), .B1(n707), .Y(n769) );
  OA22X4 U637 ( .A0(n696), .A1(n24), .B0(n407), .B1(n678), .Y(n770) );
  OAI221X2 U638 ( .A0(n439), .A1(n164), .B0(n431), .B1(n728), .C0(n770), .Y(
        data_g_r[7]) );
  OA22X4 U639 ( .A0(n398), .A1(n690), .B0(n406), .B1(n707), .Y(n771) );
  OA22X4 U640 ( .A0(n395), .A1(n688), .B0(n403), .B1(n705), .Y(n774) );
  OA22X4 U641 ( .A0(n393), .A1(n695), .B0(n401), .B1(n705), .Y(n776) );
  OA22X4 U642 ( .A0(n392), .A1(n138), .B0(n400), .B1(n705), .Y(n777) );
  OA22X4 U643 ( .A0(n161), .A1(n699), .B0(n399), .B1(n705), .Y(n778) );
  OAI221X2 U644 ( .A0(n422), .A1(n164), .B0(n414), .B1(n722), .C0(n779), .Y(
        \data_e_r[0] ) );
  OA22X4 U645 ( .A0(n157), .A1(n691), .B0(n145), .B1(n705), .Y(n780) );
  OAI221X2 U646 ( .A0(n421), .A1(n166), .B0(n413), .B1(n841), .C0(n780), .Y(
        \data_e_r[1] ) );
  OA22X4 U647 ( .A0(n388), .A1(n699), .B0(n396), .B1(n705), .Y(n781) );
  OAI221X2 U648 ( .A0(n419), .A1(n164), .B0(n411), .B1(n724), .C0(n782), .Y(
        \data_e_r[3] ) );
  OAI221X2 U649 ( .A0(n417), .A1(n164), .B0(n409), .B1(n723), .C0(n784), .Y(
        \data_e_r[5] ) );
  OA22X4 U650 ( .A0(n382), .A1(n140), .B0(n390), .B1(n704), .Y(n787) );
  OA22X4 U651 ( .A0(n381), .A1(n695), .B0(n157), .B1(n704), .Y(n788) );
  OA22X4 U652 ( .A0(n380), .A1(n693), .B0(n388), .B1(n704), .Y(n789) );
  OA22X4 U653 ( .A0(n379), .A1(n692), .B0(n387), .B1(n704), .Y(n790) );
  OA22X4 U654 ( .A0(n378), .A1(n140), .B0(n386), .B1(n704), .Y(n791) );
  OA22X4 U655 ( .A0(n376), .A1(n694), .B0(n384), .B1(n704), .Y(n793) );
  OAI221X2 U656 ( .A0(n406), .A1(n165), .B0(n398), .B1(n721), .C0(n797), .Y(
        data_c_r[0]) );
  OA22X4 U657 ( .A0(n365), .A1(n507), .B0(n373), .B1(n704), .Y(n800) );
  OA22X4 U658 ( .A0(n362), .A1(n688), .B0(n370), .B1(n678), .Y(n807) );
  OAI221X2 U659 ( .A0(n402), .A1(n166), .B0(n394), .B1(n717), .C0(n807), .Y(
        data_c_r[4]) );
  OA22X4 U660 ( .A0(n361), .A1(n140), .B0(n369), .B1(n702), .Y(n810) );
  OAI221X2 U661 ( .A0(n398), .A1(n166), .B0(n390), .B1(n729), .C0(n814), .Y(
        data_b_r[0]) );
  OA22X4 U662 ( .A0(n357), .A1(n688), .B0(n365), .B1(n703), .Y(n816) );
  OAI221X2 U663 ( .A0(n145), .A1(n166), .B0(n157), .B1(n719), .C0(n816), .Y(
        data_b_r[1]) );
  OA22X4 U664 ( .A0(n354), .A1(n692), .B0(n362), .B1(n703), .Y(n821) );
  OA22X4 U665 ( .A0(n353), .A1(n688), .B0(n361), .B1(n703), .Y(n823) );
  OA22X4 U666 ( .A0(n271), .A1(n138), .B0(n354), .B1(n703), .Y(n834) );
  OAI221X2 U667 ( .A0(n386), .A1(n165), .B0(n378), .B1(n731), .C0(n834), .Y(
        data_a_r[4]) );
  OA22X4 U668 ( .A0(n272), .A1(n688), .B0(n353), .B1(n702), .Y(n836) );
  OAI31X2 U669 ( .A0(n843), .A1(n168), .A2(n166), .B0(n150), .Y(n844) );
  OAI33X2 U670 ( .A0(n158), .A1(n846), .A2(n845), .B0(n844), .B1(n163), .B2(
        n343), .Y(n847) );
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
  wire   N29, N30, compare, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, n6, n7, n8, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n22, n24, n290, n31, n32, n33, n34, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n52, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n1160, n1170, n1180, n1190, n1200,
         n1210, n1220, n1230, n1240, n1250, n1260, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n1, n2, n3, n4, n5, n9, n21, n23, n25,
         n26, n27, n28, n300, n35, n50, n51, n53, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223;
  wire   [10:0] temp_a_r;
  wire   [9:0] temp_b_r;
  wire   [10:0] temp_a;
  wire   [10:0] temp_b;

  DFFRX1 temp_a_r_reg_6_ ( .D(temp_a[6]), .CK(clk), .RN(n190), .Q(temp_a_r[6]), 
        .QN(n58) );
  DFFRX1 temp_a_r_reg_3_ ( .D(temp_a[3]), .CK(clk), .RN(n190), .Q(temp_a_r[3]), 
        .QN(n55) );
  DFFRX1 G3_r_reg_9_ ( .D(n1160), .CK(clk), .RN(n194), .QN(n141) );
  DFFRX1 G3_r_reg_10_ ( .D(n1170), .CK(clk), .RN(n194), .QN(n140) );
  DFFRX1 G3_r_reg_8_ ( .D(n115), .CK(clk), .RN(n194), .QN(n142) );
  DFFRX1 G3_r_reg_7_ ( .D(n114), .CK(clk), .RN(n193), .QN(n143) );
  DFFRX1 G3_r_reg_5_ ( .D(n112), .CK(clk), .RN(n193), .QN(n145) );
  DFFRX1 G3_r_reg_2_ ( .D(n109), .CK(clk), .RN(n193), .QN(n148) );
  DFFRX1 G3_r_reg_1_ ( .D(n108), .CK(clk), .RN(n193), .QN(n149) );
  DFFRX1 G3_r_reg_0_ ( .D(n107), .CK(clk), .RN(n193), .QN(n150) );
  DFFRX1 G3_r_reg_6_ ( .D(n113), .CK(clk), .RN(n193), .QN(n144) );
  DFFRX1 G2_r_reg_9_ ( .D(n127), .CK(clk), .RN(n195), .QN(n75) );
  DFFRX1 sobel_result_r_reg_10_ ( .D(N126), .CK(clk), .RN(n189), .Q(
        sobel_result[10]) );
  DFFRX1 sobel_result_r_reg_9_ ( .D(N125), .CK(clk), .RN(n189), .Q(
        sobel_result[9]) );
  DFFRX1 sobel_result_r_reg_8_ ( .D(N124), .CK(clk), .RN(n189), .Q(
        sobel_result[8]) );
  DFFRX1 G4_r_reg_9_ ( .D(n105), .CK(clk), .RN(n193), .QN(n152) );
  DFFRX1 G2_r_reg_10_ ( .D(n128), .CK(clk), .RN(n195), .QN(n76) );
  DFFRX1 G2_r_reg_8_ ( .D(n1260), .CK(clk), .RN(n194), .QN(n74) );
  DFFRX1 G2_r_reg_7_ ( .D(n1250), .CK(clk), .RN(n194), .QN(n73) );
  DFFRX1 G2_r_reg_5_ ( .D(n1230), .CK(clk), .RN(n194), .QN(n71) );
  DFFRX1 G2_r_reg_4_ ( .D(n1220), .CK(clk), .RN(n194), .QN(n70) );
  DFFRX1 G2_r_reg_2_ ( .D(n1200), .CK(clk), .RN(n194), .QN(n68) );
  DFFRX1 G2_r_reg_1_ ( .D(n1190), .CK(clk), .RN(n194), .QN(n67) );
  DFFRX1 G2_r_reg_0_ ( .D(n1180), .CK(clk), .RN(n194), .QN(n66) );
  DFFRX1 G4_r_reg_10_ ( .D(n106), .CK(clk), .RN(n193), .QN(n151) );
  DFFRX1 G4_r_reg_8_ ( .D(n104), .CK(clk), .RN(n193), .QN(n153) );
  DFFRX1 G4_r_reg_7_ ( .D(n103), .CK(clk), .RN(n193), .QN(n154) );
  DFFRX1 G4_r_reg_5_ ( .D(n101), .CK(clk), .RN(n192), .QN(n156) );
  DFFRX1 G4_r_reg_2_ ( .D(n98), .CK(clk), .RN(n192), .QN(n159) );
  DFFRX1 G4_r_reg_1_ ( .D(n97), .CK(clk), .RN(n192), .QN(n160) );
  DFFRX1 G4_r_reg_0_ ( .D(n96), .CK(clk), .RN(n192), .QN(n161) );
  DFFRX1 G1_r_reg_9_ ( .D(n138), .CK(clk), .RN(n195), .QN(n86) );
  DFFRX1 G1_r_reg_10_ ( .D(n139), .CK(clk), .RN(rst), .QN(n87) );
  DFFRX1 G1_r_reg_7_ ( .D(n136), .CK(clk), .RN(n195), .QN(n84) );
  DFFRX1 G1_r_reg_5_ ( .D(n134), .CK(clk), .RN(n195), .QN(n82) );
  DFFRX1 G1_r_reg_4_ ( .D(n133), .CK(clk), .RN(n195), .QN(n81) );
  DFFRX1 G1_r_reg_2_ ( .D(n131), .CK(clk), .RN(n195), .QN(n79) );
  DFFRX1 G1_r_reg_1_ ( .D(n130), .CK(clk), .RN(n195), .QN(n78) );
  DFFRX1 G1_r_reg_0_ ( .D(n129), .CK(clk), .RN(n195), .QN(n77) );
  DFFRX1 G2_r_reg_6_ ( .D(n1240), .CK(clk), .RN(n194), .QN(n72) );
  DFFRX1 G2_r_reg_3_ ( .D(n1210), .CK(clk), .RN(n194), .QN(n69) );
  DFFRX1 G4_r_reg_6_ ( .D(n102), .CK(clk), .RN(n192), .QN(n155) );
  DFFRX1 G1_r_reg_6_ ( .D(n135), .CK(clk), .RN(n195), .QN(n83) );
  DFFRX1 G1_r_reg_3_ ( .D(n132), .CK(clk), .RN(n195), .QN(n80) );
  DFFRX1 sobel_result_r_reg_7_ ( .D(N123), .CK(clk), .RN(n189), .Q(
        sobel_result[7]) );
  DFFRX1 sobel_result_r_reg_6_ ( .D(N122), .CK(clk), .RN(n189), .Q(
        sobel_result[6]) );
  DFFRX1 sobel_result_r_reg_5_ ( .D(N121), .CK(clk), .RN(n189), .Q(
        sobel_result[5]) );
  DFFRX1 sobel_result_r_reg_4_ ( .D(N120), .CK(clk), .RN(n189), .Q(
        sobel_result[4]) );
  DFFRX1 sobel_result_r_reg_3_ ( .D(N119), .CK(clk), .RN(n189), .Q(
        sobel_result[3]) );
  DFFRX1 sobel_result_r_reg_2_ ( .D(N118), .CK(clk), .RN(n189), .Q(
        sobel_result[2]) );
  DFFRX1 sobel_result_r_reg_1_ ( .D(N117), .CK(clk), .RN(n189), .Q(
        sobel_result[1]) );
  DFFRX1 sobel_result_r_reg_0_ ( .D(N116), .CK(clk), .RN(n189), .Q(
        sobel_result[0]) );
  DFFRX1 angle1_r_reg_0_ ( .D(n94), .CK(clk), .RN(n192), .QN(n163) );
  DFFRX1 angle1_r_reg_1_ ( .D(n95), .CK(clk), .RN(n192), .Q(n25), .QN(n162) );
  DFFRX1 temp_a_r_reg_10_ ( .D(temp_a[10]), .CK(clk), .RN(n190), .Q(
        temp_a_r[10]), .QN(n62) );
  DFFRX1 angle4_r_reg_1_ ( .D(n89), .CK(clk), .RN(n191), .QN(n168) );
  DFFRX1 angle2_r_reg_1_ ( .D(n93), .CK(clk), .RN(n192), .Q(n21), .QN(n164) );
  DFFRX1 angle2_r_reg_0_ ( .D(n92), .CK(clk), .RN(n192), .Q(n3), .QN(n165) );
  DFFRX1 angle3_r_reg_0_ ( .D(n90), .CK(clk), .RN(n191), .QN(n167) );
  DFFRX1 angle4_r_reg_0_ ( .D(n88), .CK(clk), .RN(n191), .Q(n2), .QN(n65) );
  DFFRX1 angle3_r_reg_1_ ( .D(n91), .CK(clk), .RN(n192), .Q(n23), .QN(n166) );
  DFFRX1 temp_b_r_reg_9_ ( .D(temp_b[9]), .CK(clk), .RN(n191), .Q(temp_b_r[9]), 
        .QN(n182) );
  DFFRX1 temp_a_r_reg_9_ ( .D(temp_a[9]), .CK(clk), .RN(n190), .Q(temp_a_r[9]), 
        .QN(n61) );
  DFFRX1 temp_a_r_reg_0_ ( .D(temp_a[0]), .CK(clk), .RN(n189), .Q(temp_a_r[0]), 
        .QN(n52) );
  DFFRX1 temp_a_r_reg_8_ ( .D(temp_a[8]), .CK(clk), .RN(n190), .Q(temp_a_r[8]), 
        .QN(n60) );
  DFFRX1 temp_b_r_reg_0_ ( .D(temp_b[0]), .CK(clk), .RN(n190), .Q(temp_b_r[0])
         );
  DFFRX1 temp_a_r_reg_5_ ( .D(temp_a[5]), .CK(clk), .RN(n190), .Q(temp_a_r[5]), 
        .QN(n57) );
  DFFRX1 temp_b_r_reg_8_ ( .D(temp_b[8]), .CK(clk), .RN(n191), .QN(n5) );
  DFFRX1 temp_a_r_reg_4_ ( .D(temp_a[4]), .CK(clk), .RN(n190), .Q(temp_a_r[4]), 
        .QN(n56) );
  DFFRX1 temp_b_r_reg_1_ ( .D(temp_b[1]), .CK(clk), .RN(n190), .Q(temp_b_r[1]), 
        .QN(n179) );
  DFFRX1 temp_a_r_reg_2_ ( .D(temp_a[2]), .CK(clk), .RN(n190), .Q(temp_a_r[2]), 
        .QN(n54) );
  DFFRX2 G3_r_reg_3_ ( .D(n110), .CK(clk), .RN(n193), .QN(n147) );
  DFFRX2 G4_r_reg_3_ ( .D(n99), .CK(clk), .RN(n192), .QN(n158) );
  DFFRX2 temp_b_r_reg_4_ ( .D(temp_b[4]), .CK(clk), .RN(n191), .Q(temp_b_r[4])
         );
  DFFRX2 G3_r_reg_4_ ( .D(n111), .CK(clk), .RN(n193), .QN(n146) );
  DFFRX2 G4_r_reg_4_ ( .D(n100), .CK(clk), .RN(n192), .QN(n157) );
  DFFRX2 G1_r_reg_8_ ( .D(n137), .CK(clk), .RN(n195), .QN(n85) );
  DFFRX2 temp_b_r_reg_10_ ( .D(temp_b[10]), .CK(clk), .RN(n191), .QN(n27) );
  DFFRX2 temp_b_r_reg_5_ ( .D(temp_b[5]), .CK(clk), .RN(n191), .Q(temp_b_r[5]), 
        .QN(n9) );
  DFFRX2 temp_b_r_reg_7_ ( .D(temp_b[7]), .CK(clk), .RN(n191), .Q(temp_b_r[7])
         );
  DFFRX2 temp_b_r_reg_2_ ( .D(temp_b[2]), .CK(clk), .RN(n191), .Q(temp_b_r[2])
         );
  DFFRX2 temp_b_r_reg_6_ ( .D(temp_b[6]), .CK(clk), .RN(n191), .Q(temp_b_r[6]), 
        .QN(n181) );
  DFFRX2 cnt_reg_1_ ( .D(N30), .CK(clk), .RN(rst), .Q(n1), .QN(n63) );
  DFFRX2 cnt_reg_0_ ( .D(N29), .CK(clk), .RN(rst), .Q(n4), .QN(n64) );
  DFFRHQX1 temp_a_r_reg_1_ ( .D(temp_a[1]), .CK(clk), .RN(n190), .Q(n28) );
  DFFRX2 temp_b_r_reg_3_ ( .D(temp_b[3]), .CK(clk), .RN(n191), .Q(temp_b_r[3]), 
        .QN(n26) );
  DFFRX2 temp_a_r_reg_7_ ( .D(temp_a[7]), .CK(clk), .RN(n190), .Q(temp_a_r[7]), 
        .QN(n59) );
  BUFX8 U3 ( .A(n33), .Y(n185) );
  OA22XL U4 ( .A0(n70), .A1(n187), .B0(n81), .B1(n219), .Y(n14) );
  OA22XL U5 ( .A0(n69), .A1(n187), .B0(n80), .B1(n219), .Y(n15) );
  BUFX8 U6 ( .A(compare), .Y(n183) );
  INVX16 U7 ( .A(n185), .Y(n223) );
  OAI2BB1X2 U8 ( .A0N(n182), .A1N(temp_a_r[9]), .B0(n180), .Y(n211) );
  OA22X2 U9 ( .A0(n75), .A1(n187), .B0(n86), .B1(n219), .Y(n7) );
  OAI221X1 U10 ( .A0(n160), .A1(n221), .B0(n149), .B1(n186), .C0(n17), .Y(
        temp_b[1]) );
  OAI221X2 U11 ( .A0(n153), .A1(n221), .B0(n142), .B1(n186), .C0(n10), .Y(
        temp_b[8]) );
  AND2X4 U12 ( .A(n51), .B(n53), .Y(n10) );
  OAI22X2 U13 ( .A0(n210), .A1(n5), .B0(temp_a_r[8]), .B1(n210), .Y(n180) );
  NOR2BX4 U14 ( .AN(temp_a_r[7]), .B(temp_b_r[7]), .Y(n210) );
  INVX4 U15 ( .A(n184), .Y(n222) );
  OR2X1 U16 ( .A(temp_a_r[10]), .B(n211), .Y(n50) );
  OR2X1 U17 ( .A(n27), .B(n211), .Y(n35) );
  BUFX8 U18 ( .A(n6), .Y(n186) );
  NAND2BX2 U19 ( .AN(temp_a_r[7]), .B(temp_b_r[7]), .Y(n196) );
  OR2X2 U20 ( .A(temp_a_r[8]), .B(n196), .Y(n172) );
  BUFX16 U21 ( .A(start), .Y(n188) );
  BUFX8 U22 ( .A(n22), .Y(n184) );
  BUFX8 U23 ( .A(n32), .Y(n176) );
  BUFX4 U24 ( .A(n36), .Y(n175) );
  OAI221XL U25 ( .A0(n155), .A1(n221), .B0(n144), .B1(n186), .C0(n12), .Y(
        temp_b[6]) );
  OAI221XL U26 ( .A0(n159), .A1(n221), .B0(n148), .B1(n186), .C0(n16), .Y(
        temp_b[2]) );
  OAI221XL U27 ( .A0(n154), .A1(n221), .B0(n143), .B1(n186), .C0(n11), .Y(
        temp_b[7]) );
  OAI221XL U28 ( .A0(n156), .A1(n221), .B0(n145), .B1(n186), .C0(n13), .Y(
        temp_b[5]) );
  NAND3X1 U29 ( .A(n169), .B(n170), .C(n14), .Y(temp_b[4]) );
  OR2X1 U30 ( .A(n146), .B(n186), .Y(n170) );
  OAI221XL U31 ( .A0(n152), .A1(n221), .B0(n141), .B1(n186), .C0(n7), .Y(
        temp_b[9]) );
  OAI21X4 U32 ( .A0(n209), .A1(n208), .B0(n207), .Y(n213) );
  NAND2X6 U33 ( .A(temp_b_r[4]), .B(n217), .Y(n205) );
  OA22X2 U34 ( .A0(n66), .A1(n187), .B0(n77), .B1(n219), .Y(n19) );
  INVX1 U35 ( .A(n200), .Y(n218) );
  OAI222X2 U36 ( .A0(temp_a_r[5]), .A1(n9), .B0(temp_a_r[5]), .B1(n205), .C0(
        n9), .C1(n205), .Y(n206) );
  AOI2BB1X2 U37 ( .A0N(n290), .A1N(n25), .B0(n31), .Y(n8) );
  AO22X4 U38 ( .A0(n300), .A1(temp_b_r[5]), .B0(n57), .B1(n300), .Y(n204) );
  OR2X2 U39 ( .A(n217), .B(temp_b_r[4]), .Y(n300) );
  BUFX8 U40 ( .A(n37), .Y(n174) );
  OAI31X4 U41 ( .A0(n25), .A1(n163), .A2(n175), .B0(n38), .Y(n37) );
  NAND3X1 U42 ( .A(n177), .B(n178), .C(n15), .Y(temp_b[3]) );
  OR2X1 U43 ( .A(n158), .B(n221), .Y(n177) );
  OAI222X2 U44 ( .A0(temp_b_r[6]), .A1(n206), .B0(n58), .B1(n206), .C0(
        temp_b_r[6]), .C1(n58), .Y(n207) );
  OAI2BB1X1 U45 ( .A0N(n181), .A1N(temp_a_r[6]), .B0(n204), .Y(n208) );
  OAI2BB2X1 U46 ( .B0(temp_a_r[3]), .B1(n200), .A0N(n55), .A1N(temp_b_r[3]), 
        .Y(n201) );
  NAND2X1 U47 ( .A(n63), .B(n64), .Y(n36) );
  AOI33X2 U48 ( .A0(n220), .A1(n2), .A2(n168), .B0(n223), .B1(n23), .B2(n167), 
        .Y(n24) );
  OAI221X2 U49 ( .A0(temp_a_r[10]), .A1(n215), .B0(temp_a_r[10]), .B1(n27), 
        .C0(n214), .Y(compare) );
  OA21X4 U50 ( .A0(n162), .A1(n290), .B0(n34), .Y(n6) );
  AOI33X4 U51 ( .A0(n65), .A1(n220), .A2(n168), .B0(n3), .B1(n21), .B2(n222), 
        .Y(n34) );
  NAND2X2 U52 ( .A(n35), .B(n50), .Y(n212) );
  AOI2BB2X4 U53 ( .B0(n213), .B1(n212), .A0N(n215), .A1N(n27), .Y(n214) );
  OR2X1 U54 ( .A(n74), .B(n187), .Y(n51) );
  OR2X1 U55 ( .A(n85), .B(n219), .Y(n53) );
  BUFX8 U56 ( .A(n8), .Y(n187) );
  INVX12 U57 ( .A(n20), .Y(n219) );
  OR2X1 U58 ( .A(n157), .B(n221), .Y(n169) );
  INVX16 U59 ( .A(n174), .Y(n221) );
  OR2X2 U60 ( .A(temp_a_r[8]), .B(n5), .Y(n171) );
  OR2X4 U61 ( .A(n196), .B(n5), .Y(n173) );
  NAND3X8 U62 ( .A(n171), .B(n172), .C(n173), .Y(n197) );
  OAI33X2 U63 ( .A0(n176), .A1(n168), .A2(n2), .B0(n167), .B1(n166), .B2(n185), 
        .Y(n31) );
  OR2X1 U64 ( .A(n147), .B(n186), .Y(n178) );
  OAI31X2 U65 ( .A0(n21), .A1(n184), .A2(n3), .B0(n24), .Y(n20) );
  INVX2 U66 ( .A(n176), .Y(n220) );
  OAI2BB2XL U67 ( .B0(n188), .B1(n65), .A0N(n188), .A1N(angle4[0]), .Y(n88) );
  AOI21XL U68 ( .A0(n184), .A1(n185), .B0(n188), .Y(N30) );
  NOR2XL U69 ( .A(n188), .B(n4), .Y(N29) );
  OAI222X2 U70 ( .A0(temp_b_r[9]), .A1(n197), .B0(n197), .B1(n61), .C0(
        temp_b_r[9]), .C1(n61), .Y(n215) );
  NAND2BX2 U71 ( .AN(n175), .B(n163), .Y(n290) );
  NOR2BX2 U72 ( .AN(temp_a_r[2]), .B(temp_b_r[2]), .Y(n199) );
  INVX1 U73 ( .A(n28), .Y(n216) );
  OA22XL U74 ( .A0(n176), .A1(n158), .B0(n80), .B1(n175), .Y(n45) );
  OA22XL U75 ( .A0(n176), .A1(n155), .B0(n83), .B1(n175), .Y(n42) );
  OA22XL U76 ( .A0(n176), .A1(n152), .B0(n86), .B1(n175), .Y(n39) );
  OA22XL U77 ( .A0(n176), .A1(n161), .B0(n77), .B1(n175), .Y(n49) );
  OA22XL U78 ( .A0(n176), .A1(n160), .B0(n78), .B1(n175), .Y(n47) );
  OA22XL U79 ( .A0(n176), .A1(n159), .B0(n79), .B1(n175), .Y(n46) );
  OA22XL U80 ( .A0(n176), .A1(n157), .B0(n81), .B1(n175), .Y(n44) );
  OA22XL U81 ( .A0(n176), .A1(n156), .B0(n82), .B1(n175), .Y(n43) );
  OA22XL U82 ( .A0(n176), .A1(n154), .B0(n84), .B1(n175), .Y(n41) );
  OA22XL U83 ( .A0(n176), .A1(n153), .B0(n85), .B1(n175), .Y(n40) );
  OA22XL U84 ( .A0(n176), .A1(n151), .B0(n87), .B1(n175), .Y(n48) );
  CLKBUFX3 U85 ( .A(rst), .Y(n189) );
  CLKBUFX3 U86 ( .A(rst), .Y(n192) );
  CLKBUFX3 U87 ( .A(rst), .Y(n193) );
  CLKBUFX3 U88 ( .A(rst), .Y(n194) );
  CLKBUFX3 U89 ( .A(rst), .Y(n195) );
  CLKBUFX3 U90 ( .A(rst), .Y(n190) );
  CLKBUFX3 U91 ( .A(rst), .Y(n191) );
  NAND2X2 U92 ( .A(n1), .B(n4), .Y(n32) );
  NOR2X1 U93 ( .A(n183), .B(n58), .Y(N122) );
  NOR2X1 U94 ( .A(n183), .B(n55), .Y(N119) );
  NOR2X1 U95 ( .A(n183), .B(n61), .Y(N125) );
  NOR2X1 U96 ( .A(n183), .B(n57), .Y(N121) );
  NOR2X1 U97 ( .A(n183), .B(n59), .Y(N123) );
  NOR2X1 U98 ( .A(n183), .B(n60), .Y(N124) );
  NOR2X1 U99 ( .A(n183), .B(n62), .Y(N126) );
  NOR2X1 U100 ( .A(n183), .B(n52), .Y(N116) );
  NOR2X1 U101 ( .A(n183), .B(n216), .Y(N117) );
  NOR2X1 U102 ( .A(n183), .B(n54), .Y(N118) );
  NOR2X1 U103 ( .A(n183), .B(n56), .Y(N120) );
  AOI21X1 U104 ( .A0(n28), .A1(n179), .B0(temp_a_r[0]), .Y(n198) );
  INVX3 U105 ( .A(temp_a_r[4]), .Y(n217) );
  OA22X1 U106 ( .A0(n72), .A1(n187), .B0(n83), .B1(n219), .Y(n12) );
  NAND2X1 U107 ( .A(n64), .B(n1), .Y(n33) );
  AOI33X1 U108 ( .A0(n167), .A1(n223), .A2(n166), .B0(n222), .B1(n21), .B2(
        n165), .Y(n38) );
  NAND2X1 U109 ( .A(n4), .B(n63), .Y(n22) );
  OAI221XL U110 ( .A0(n161), .A1(n221), .B0(n150), .B1(n186), .C0(n19), .Y(
        temp_b[0]) );
  OA22X1 U111 ( .A0(n67), .A1(n187), .B0(n78), .B1(n219), .Y(n17) );
  OA22X1 U112 ( .A0(n68), .A1(n187), .B0(n79), .B1(n219), .Y(n16) );
  OA22X1 U113 ( .A0(n71), .A1(n187), .B0(n82), .B1(n219), .Y(n13) );
  OA22X1 U114 ( .A0(n73), .A1(n187), .B0(n84), .B1(n219), .Y(n11) );
  OAI221XL U115 ( .A0(n151), .A1(n221), .B0(n140), .B1(n186), .C0(n18), .Y(
        temp_b[10]) );
  OA22X1 U116 ( .A0(n76), .A1(n187), .B0(n87), .B1(n219), .Y(n18) );
  OAI2BB2XL U117 ( .B0(n188), .B1(n166), .A0N(angle3[1]), .A1N(n188), .Y(n91)
         );
  OAI2BB2XL U118 ( .B0(n188), .B1(n168), .A0N(angle4[1]), .A1N(n188), .Y(n89)
         );
  OAI2BB2XL U119 ( .B0(n188), .B1(n167), .A0N(angle3[0]), .A1N(n188), .Y(n90)
         );
  OAI2BB2XL U120 ( .B0(n188), .B1(n165), .A0N(angle2[0]), .A1N(n188), .Y(n92)
         );
  OAI2BB2XL U121 ( .B0(n188), .B1(n163), .A0N(angle1[0]), .A1N(n188), .Y(n94)
         );
  OAI2BB2XL U122 ( .B0(n188), .B1(n162), .A0N(angle1[1]), .A1N(n188), .Y(n95)
         );
  OAI2BB2XL U123 ( .B0(n188), .B1(n150), .A0N(G3[0]), .A1N(n188), .Y(n107) );
  OAI2BB2XL U124 ( .B0(n188), .B1(n149), .A0N(G3[1]), .A1N(n188), .Y(n108) );
  OAI2BB2XL U125 ( .B0(n188), .B1(n148), .A0N(G3[2]), .A1N(n188), .Y(n109) );
  OAI2BB2XL U126 ( .B0(n188), .B1(n147), .A0N(G3[3]), .A1N(n188), .Y(n110) );
  OAI2BB2XL U127 ( .B0(n188), .B1(n146), .A0N(G3[4]), .A1N(n188), .Y(n111) );
  OAI2BB2XL U128 ( .B0(n188), .B1(n145), .A0N(G3[5]), .A1N(n188), .Y(n112) );
  OAI2BB2XL U129 ( .B0(n188), .B1(n144), .A0N(G3[6]), .A1N(n188), .Y(n113) );
  OAI2BB2XL U130 ( .B0(n188), .B1(n143), .A0N(G3[7]), .A1N(n188), .Y(n114) );
  OAI2BB2XL U131 ( .B0(n188), .B1(n142), .A0N(G3[8]), .A1N(n188), .Y(n115) );
  OAI2BB2XL U132 ( .B0(n188), .B1(n141), .A0N(G3[9]), .A1N(n188), .Y(n1160) );
  OAI2BB2XL U133 ( .B0(n188), .B1(n140), .A0N(G3[10]), .A1N(n188), .Y(n1170)
         );
  OAI2BB2XL U134 ( .B0(n188), .B1(n66), .A0N(G2[0]), .A1N(n188), .Y(n1180) );
  OAI2BB2XL U135 ( .B0(n188), .B1(n67), .A0N(G2[1]), .A1N(n188), .Y(n1190) );
  OAI2BB2XL U136 ( .B0(n188), .B1(n68), .A0N(G2[2]), .A1N(n188), .Y(n1200) );
  OAI2BB2XL U137 ( .B0(n188), .B1(n69), .A0N(G2[3]), .A1N(n188), .Y(n1210) );
  OAI2BB2XL U138 ( .B0(n188), .B1(n70), .A0N(G2[4]), .A1N(n188), .Y(n1220) );
  OAI2BB2XL U139 ( .B0(n188), .B1(n71), .A0N(G2[5]), .A1N(n188), .Y(n1230) );
  OAI2BB2XL U140 ( .B0(n188), .B1(n72), .A0N(G2[6]), .A1N(n188), .Y(n1240) );
  OAI2BB2XL U141 ( .B0(n188), .B1(n73), .A0N(G2[7]), .A1N(n188), .Y(n1250) );
  OAI2BB2XL U142 ( .B0(n188), .B1(n74), .A0N(G2[8]), .A1N(n188), .Y(n1260) );
  OAI2BB2XL U143 ( .B0(n188), .B1(n161), .A0N(G4[0]), .A1N(n188), .Y(n96) );
  OAI2BB2XL U144 ( .B0(n188), .B1(n160), .A0N(G4[1]), .A1N(n188), .Y(n97) );
  OAI2BB2XL U145 ( .B0(n188), .B1(n159), .A0N(G4[2]), .A1N(n188), .Y(n98) );
  OAI2BB2XL U146 ( .B0(n188), .B1(n158), .A0N(G4[3]), .A1N(n188), .Y(n99) );
  OAI2BB2XL U147 ( .B0(n188), .B1(n157), .A0N(G4[4]), .A1N(n188), .Y(n100) );
  OAI2BB2XL U148 ( .B0(n188), .B1(n156), .A0N(G4[5]), .A1N(n188), .Y(n101) );
  OAI2BB2XL U149 ( .B0(n188), .B1(n155), .A0N(G4[6]), .A1N(n188), .Y(n102) );
  OAI2BB2XL U150 ( .B0(n188), .B1(n154), .A0N(G4[7]), .A1N(n188), .Y(n103) );
  OAI2BB2XL U151 ( .B0(n188), .B1(n153), .A0N(G4[8]), .A1N(n188), .Y(n104) );
  OAI2BB2XL U152 ( .B0(n188), .B1(n152), .A0N(G4[9]), .A1N(n188), .Y(n105) );
  OAI2BB2XL U153 ( .B0(n188), .B1(n151), .A0N(G4[10]), .A1N(n188), .Y(n106) );
  OAI2BB2XL U154 ( .B0(n188), .B1(n83), .A0N(G1[6]), .A1N(n188), .Y(n135) );
  OAI2BB2XL U155 ( .B0(n188), .B1(n164), .A0N(angle2[1]), .A1N(n188), .Y(n93)
         );
  OAI2BB2XL U156 ( .B0(n188), .B1(n75), .A0N(G2[9]), .A1N(n188), .Y(n127) );
  OAI2BB2XL U157 ( .B0(n188), .B1(n76), .A0N(G2[10]), .A1N(n188), .Y(n128) );
  OAI2BB2XL U158 ( .B0(n188), .B1(n77), .A0N(G1[0]), .A1N(n188), .Y(n129) );
  OAI2BB2XL U159 ( .B0(n188), .B1(n78), .A0N(G1[1]), .A1N(n188), .Y(n130) );
  OAI2BB2XL U160 ( .B0(n188), .B1(n79), .A0N(G1[2]), .A1N(n188), .Y(n131) );
  OAI2BB2XL U161 ( .B0(n188), .B1(n80), .A0N(G1[3]), .A1N(n188), .Y(n132) );
  OAI2BB2XL U162 ( .B0(n188), .B1(n81), .A0N(G1[4]), .A1N(n188), .Y(n133) );
  OAI2BB2XL U163 ( .B0(n188), .B1(n82), .A0N(G1[5]), .A1N(n188), .Y(n134) );
  OAI2BB2XL U164 ( .B0(n188), .B1(n84), .A0N(G1[7]), .A1N(n188), .Y(n136) );
  OAI2BB2XL U165 ( .B0(n188), .B1(n85), .A0N(G1[8]), .A1N(n188), .Y(n137) );
  OAI2BB2XL U166 ( .B0(n188), .B1(n86), .A0N(G1[9]), .A1N(n188), .Y(n138) );
  OAI2BB2XL U167 ( .B0(n188), .B1(n87), .A0N(G1[10]), .A1N(n188), .Y(n139) );
  OAI221XL U168 ( .A0(n147), .A1(n185), .B0(n69), .B1(n184), .C0(n45), .Y(
        temp_a[3]) );
  OAI221XL U169 ( .A0(n144), .A1(n185), .B0(n72), .B1(n184), .C0(n42), .Y(
        temp_a[6]) );
  OAI221XL U170 ( .A0(n141), .A1(n185), .B0(n75), .B1(n184), .C0(n39), .Y(
        temp_a[9]) );
  OAI221XL U171 ( .A0(n150), .A1(n185), .B0(n66), .B1(n184), .C0(n49), .Y(
        temp_a[0]) );
  OAI221XL U172 ( .A0(n149), .A1(n185), .B0(n67), .B1(n184), .C0(n47), .Y(
        temp_a[1]) );
  OAI221XL U173 ( .A0(n148), .A1(n185), .B0(n68), .B1(n184), .C0(n46), .Y(
        temp_a[2]) );
  OAI221XL U174 ( .A0(n146), .A1(n185), .B0(n70), .B1(n184), .C0(n44), .Y(
        temp_a[4]) );
  OAI221XL U175 ( .A0(n145), .A1(n185), .B0(n71), .B1(n184), .C0(n43), .Y(
        temp_a[5]) );
  OAI221XL U176 ( .A0(n143), .A1(n185), .B0(n73), .B1(n184), .C0(n41), .Y(
        temp_a[7]) );
  OAI221XL U177 ( .A0(n142), .A1(n185), .B0(n74), .B1(n184), .C0(n40), .Y(
        temp_a[8]) );
  OAI221XL U178 ( .A0(n140), .A1(n185), .B0(n76), .B1(n184), .C0(n48), .Y(
        temp_a[10]) );
  AOI221X2 U179 ( .A0(temp_b_r[3]), .A1(n218), .B0(n202), .B1(n203), .C0(n201), 
        .Y(n209) );
  OAI22X1 U180 ( .A0(n199), .A1(n26), .B0(temp_a_r[3]), .B1(n199), .Y(n202) );
  NAND2BX1 U181 ( .AN(temp_a_r[2]), .B(temp_b_r[2]), .Y(n200) );
  AO22X1 U182 ( .A0(n198), .A1(temp_b_r[0]), .B0(temp_b_r[1]), .B1(n216), .Y(
        n203) );
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
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N131, N143, N144,
         N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         n690, n700, n710, n720, n730, n740, n750, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n1, n2, n3, n4, n500, n711, n850, n2000, n2100,
         n2200, n2300, n2400, n2500, n2600, n2700, n2800, n2900, n3000, n3100,
         n3200, n3300, n3400, n3500, n3600, n370, n380, n390, n400, n410, n420,
         n430, n440, n45, n46, n47, n48, n49, n501, n51, n52, n53, n54, n55,
         n560, n570, n580, n590, n600, n611, n620, n630, n640, n650, n660,
         n670, n680, n851, n86, n870, n880, n890, n900, n911, n920, n930, n940,
         n950, n960, n970, n980, n990, n1000, n1011, n1020, n1030, n1040,
         n1050, n1060, n1070, n1080, n1090, n1100, n1110, n1120, n1130, n1140,
         n1150, n1160, n1170, n1181, n1190, n1200, n1211, n1220, n1230, n1240,
         n1250, n1260, n1270, n1280, n1290, n1301, n1310, n132, n133, n134,
         n135, n136, n137, n138, n139, n1401, n141, n142, n1430, n1440, n1450,
         n1460, n1470, n1480, n1490, n1500, n1511, n1520, n1530, n1540, n1550,
         n1560, n1570, n1580, n1590, n1600, n1611, n1620, n1630, n1640, n1650,
         n1660, n1670, n1680, n1690, n1700, n1710, n1720, n1730, n1740, n1750,
         n1760, n1770, n1781, n179, n1801, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n1901, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n2001, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n2101, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n2201, n221, n222, n223, n224, n225, n226, n227, n228, n229, n2301,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n2401, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n2501, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n2601, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n2701, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n2801, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n2901, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n3001, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n3101, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n3201, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n3301, n331, n332, n333, n334, n335, n336, n337, n338, n339, n3401,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n3501, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n3601, n361;
  wire   [7:0] p1_r;
  wire   [7:0] p2_r;
  wire   [7:0] p3_r;
  wire   [7:0] p4_r;
  wire   [7:0] p6_r;
  wire   [7:0] p7_r;
  wire   [7:0] p8_r;
  wire   [7:0] p9_r;
  wire   [9:0] Gx1;
  wire   [9:0] Gy1;
  wire   [9:0] Gx2;
  wire   [9:0] Gy2;
  wire   [7:0] p1_d_r;
  wire   [7:0] p9_d_r;
  wire   [9:0] Gx1_w;
  wire   [9:0] Gx2_w;
  wire   [9:0] Gy1_w;
  wire   [9:0] Gy2_w;
  wire   [9:0] Gx1_r;
  wire   [9:0] Gy1_r;
  wire   [9:0] Gx2_r;
  wire   [9:0] Gy2_r;
  wire   [10:0] Gx_imm;
  wire   [10:0] Gy_imm;
  wire   [10:1] Gx_imm_r;
  wire   [10:1] Gy_imm_r;
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
  wire   [18:9] Gx_mult1_r;
  wire   [15:7] Gx_mult2_r;
  wire   [1:0] angle_wait_r;

  DFFRX4 Gx_abs_reg_4_ ( .D(N101), .CK(clk), .RN(n141), .Q(Gx_abs[4]), .QN(
        n1240) );
  DFFRX4 Gx_abs_reg_3_ ( .D(N100), .CK(clk), .RN(n141), .Q(Gx_abs[3]), .QN(
        n1260) );
  DFFRX4 Gx_abs_reg_2_ ( .D(N99), .CK(clk), .RN(n141), .Q(Gx_abs[2]), .QN(
        n1310) );
  sobel_gradient_DW01_add_9_DW01_add_12 add_702 ( .SUM({N44, N43, N42, N41, 
        N40, N39, N38, N37, N36, N35}), .\A[7] (p7_r[7]), .\A[6] (p7_r[6]), 
        .\A[5] (p7_r[5]), .\A[4] (p7_r[4]), .\A[3] (p7_r[3]), .\A[2] (p7_r[2]), 
        .\A[1] (p7_r[1]), .\A[0] (p7_r[0]), .\B[8] (p8_r[7]), .\B[7] (p8_r[6]), 
        .\B[6] (p8_r[5]), .\B[5] (p8_r[4]), .\B[4] (p8_r[3]), .\B[3] (p8_r[2]), 
        .\B[2] (p8_r[1]), .\B[1] (p8_r[0]) );
  sobel_gradient_DW01_add_10_DW01_add_13 add_701 ( .SUM({N34, N33, N32, N31, 
        N30, N29, N28, N27, N26, N25}), .\A[7] (p3_r[7]), .\A[6] (p3_r[6]), 
        .\A[5] (p3_r[5]), .\A[4] (p3_r[4]), .\A[3] (p3_r[3]), .\A[2] (p3_r[2]), 
        .\A[1] (p3_r[1]), .\A[0] (p3_r[0]), .\B[8] (p2_r[7]), .\B[7] (p2_r[6]), 
        .\B[6] (p2_r[5]), .\B[5] (p2_r[4]), .\B[4] (p2_r[3]), .\B[3] (p2_r[2]), 
        .\B[2] (p2_r[1]), .\B[1] (p2_r[0]) );
  sobel_gradient_DW01_add_11_DW01_add_14 add_700 ( .SUM({N24, N23, N22, N21, 
        N20, N19, N18, N17, N16, N15}), .\A[7] (p3_r[7]), .\A[6] (p3_r[6]), 
        .\A[5] (p3_r[5]), .\A[4] (p3_r[4]), .\A[3] (p3_r[3]), .\A[2] (p3_r[2]), 
        .\A[1] (p3_r[1]), .\A[0] (p3_r[0]), .\B[8] (p6_r[7]), .\B[7] (p6_r[6]), 
        .\B[6] (p6_r[5]), .\B[5] (p6_r[4]), .\B[4] (p6_r[3]), .\B[3] (p6_r[2]), 
        .\B[2] (p6_r[1]), .\B[1] (p6_r[0]) );
  sobel_gradient_DW01_add_12_DW01_add_15 add_699 ( .SUM({N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5}), .\A[7] (p7_r[7]), .\A[6] (p7_r[6]), 
        .\A[5] (p7_r[5]), .\A[4] (p7_r[4]), .\A[3] (p7_r[3]), .\A[2] (p7_r[2]), 
        .\A[1] (n1220), .\A[0] (p7_r[0]), .\B[8] (p4_r[7]), .\B[7] (p4_r[6]), 
        .\B[6] (p4_r[5]), .\B[5] (p4_r[4]), .\B[4] (p4_r[3]), .\B[3] (p4_r[2]), 
        .\B[2] (p4_r[1]), .\B[1] (p4_r[0]) );
  sobel_gradient_DW01_inc_1_DW01_inc_8 add_0_root_add_752_ni ( .A({n440, n420, 
        n390, n380, n3200, n3400, n2900, n2500, n2700, n890}), .SUM({N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56}) );
  sobel_gradient_DW01_inc_0_DW01_inc_7 add_0_root_add_753_ni ( .A({n45, n430, 
        n400, n410, n3300, n3600, n3100, n2600, n2800, n911}), .SUM({N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87}) );
  sobel_gradient_DW01_add_13 add_830 ( .SUM({N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143}), 
        .\A[15] (Gx_acc2_r[11]), .\A[14] (Gx_acc2_r[10]), .\A[13] (
        Gx_acc2_r[9]), .\A[12] (Gx_acc2_r[8]), .\A[11] (Gx_acc2_r[7]), 
        .\A[10] (Gx_acc2_r[6]), .\A[9] (Gx_acc2_r[5]), .\A[8] (Gx_acc2_r[4]), 
        .\A[7] (Gx_acc2_r[3]), .\A[6] (Gx_acc2_r[2]), .\A[5] (Gx_acc2_r[1]), 
        .\A[4] (Gx_acc2_r[0]), .\B[12] (Gx_acc3_r[12]), .\B[11] (Gx_acc3_r[11]), .\B[10] (Gx_acc3_r[10]), .\B[9] (Gx_acc3_r[9]), .\B[8] (Gx_acc3_r[8]), 
        .\B[7] (Gx_acc3_r[7]), .\B[6] (Gx_acc3_r[6]), .\B[5] (Gx_acc3_r[5]), 
        .\B[4] (Gx_acc3_r[4]), .\B[3] (Gx_acc3_r[3]), .\B[2] (Gx_acc3_r[2]), 
        .\B[1] (Gx_acc3_r[1]), .\B[0] (Gx_acc3_r[0]) );
  sobel_gradient_DW01_add_14 add_797 ( .SUM({N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107}), .\A[9] (Gx_abs[9]), .\A[8] (
        n1401), .\A[7] (n139), .\A[6] (n138), .\A[5] (n137), .\A[4] (n136), 
        .\A[3] (Gx_abs[3]), .\A[2] (Gx_abs[2]), .\A[1] (n135), .\A[0] (n48), 
        .\B[9] (Gy_abs[9]), .\B[8] (Gy_abs[8]), .\B[7] (Gy_abs[7]), .\B[6] (
        Gy_abs[6]), .\B[5] (Gy_abs[5]), .\B[4] (Gy_abs[4]), .\B[3] (Gy_abs[3]), 
        .\B[2] (Gy_abs[2]), .\B[1] (Gy_abs[1]), .\B[0] (Gy_abs[0]) );
  sobel_gradient_DW01_sub_4 sub_731 ( .DIFF(Gy_imm), .\A[9] (Gy1_r[9]), 
        .\A[8] (Gy1_r[8]), .\A[7] (Gy1_r[7]), .\A[6] (Gy1_r[6]), .\A[5] (
        Gy1_r[5]), .\A[4] (Gy1_r[4]), .\A[3] (Gy1_r[3]), .\A[2] (Gy1_r[2]), 
        .\A[1] (Gy1_r[1]), .\A[0] (Gy1_r[0]), .\B[9] (Gy2_r[9]), .\B[8] (
        Gy2_r[8]), .\B[7] (Gy2_r[7]), .\B[6] (Gy2_r[6]), .\B[5] (Gy2_r[5]), 
        .\B[4] (Gy2_r[4]), .\B[3] (Gy2_r[3]), .\B[2] (Gy2_r[2]), .\B[1] (
        Gy2_r[1]), .\B[0] (Gy2_r[0]) );
  sobel_gradient_DW01_sub_5 sub_730 ( .DIFF(Gx_imm), .\A[9] (Gx1_r[9]), 
        .\A[8] (Gx1_r[8]), .\A[7] (Gx1_r[7]), .\A[6] (Gx1_r[6]), .\A[5] (
        Gx1_r[5]), .\A[4] (Gx1_r[4]), .\A[3] (Gx1_r[3]), .\A[2] (Gx1_r[2]), 
        .\A[1] (Gx1_r[1]), .\A[0] (Gx1_r[0]), .\B[9] (Gx2_r[9]), .\B[8] (
        Gx2_r[8]), .\B[7] (Gx2_r[7]), .\B[6] (Gx2_r[6]), .\B[5] (Gx2_r[5]), 
        .\B[4] (Gx2_r[4]), .\B[3] (Gx2_r[3]), .\B[2] (Gx2_r[2]), .\B[1] (
        Gx2_r[1]), .\B[0] (Gx2_r[0]) );
  sobel_gradient_DW01_add_15 add_714 ( .A(Gy2), .SUM(Gy2_w), .\B[7] (p9_d_r[7]), .\B[6] (p9_d_r[6]), .\B[5] (p9_d_r[5]), .\B[4] (p9_d_r[4]), .\B[3] (
        p9_d_r[3]), .\B[2] (p9_d_r[2]), .\B[1] (p9_d_r[1]), .\B[0] (p9_d_r[0])
         );
  sobel_gradient_DW01_add_16 add_713 ( .A(Gy1), .SUM(Gy1_w), .\B[7] (p1_d_r[7]), .\B[6] (p1_d_r[6]), .\B[5] (p1_d_r[5]), .\B[4] (n640), .\B[3] (p1_d_r[3]), 
        .\B[2] (p1_d_r[2]), .\B[1] (p1_d_r[1]), .\B[0] (p1_d_r[0]) );
  sobel_gradient_DW01_add_17 add_712 ( .A(Gx2), .SUM(Gx2_w), .\B[7] (p9_d_r[7]), .\B[6] (p9_d_r[6]), .\B[5] (p9_d_r[5]), .\B[4] (p9_d_r[4]), .\B[3] (
        p9_d_r[3]), .\B[2] (p9_d_r[2]), .\B[1] (p9_d_r[1]), .\B[0] (p9_d_r[0])
         );
  sobel_gradient_DW01_add_18 add_711 ( .A(Gx1), .SUM(Gx1_w), .\B[7] (p1_d_r[7]), .\B[6] (p1_d_r[6]), .\B[5] (p1_d_r[5]), .\B[4] (n640), .\B[3] (p1_d_r[3]), 
        .\B[2] (p1_d_r[2]), .\B[1] (p1_d_r[1]), .\B[0] (p1_d_r[0]) );
  DFFRXL p9_r_reg_3_ ( .D(p9[3]), .CK(clk), .RN(n1520), .Q(p9_r[3]) );
  DFFRXL Gx_acc1_r_reg_11_ ( .D(Gx_abs[3]), .CK(clk), .RN(n1660), .Q(
        Gx_acc1_r[11]) );
  DFFRX1 p7_r_reg_6_ ( .D(p7[6]), .CK(clk), .RN(n1490), .Q(p7_r[6]) );
  DFFQXL Gx_acc3_r_reg_2_ ( .D(n720), .CK(clk), .Q(Gx_acc3_r[2]) );
  DFFQXL Gx_acc3_r_reg_1_ ( .D(n710), .CK(clk), .Q(Gx_acc3_r[1]) );
  DFFQXL Gx_acc3_r_reg_0_ ( .D(n700), .CK(clk), .Q(Gx_acc3_r[0]) );
  DFFQXL Gx_acc3_r_reg_3_ ( .D(n730), .CK(clk), .Q(Gx_acc3_r[3]) );
  DFFRX1 p3_r_reg_0_ ( .D(p3[0]), .CK(clk), .RN(n1500), .Q(p3_r[0]) );
  DFFRX1 p7_r_reg_0_ ( .D(p7[0]), .CK(clk), .RN(n1490), .Q(p7_r[0]) );
  DFFRX1 p4_r_reg_7_ ( .D(p4[7]), .CK(clk), .RN(n1500), .Q(p4_r[7]) );
  DFFRX1 p6_r_reg_7_ ( .D(p6[7]), .CK(clk), .RN(n850), .Q(p6_r[7]) );
  DFFRX1 sobel_result_r_reg_0_ ( .D(G_abs_delay[11]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[0]) );
  DFFRX1 angle_r_reg_0_ ( .D(angle_wait_r[0]), .CK(clk), .RN(n1530), .Q(
        angle[0]) );
  DFFRX1 Gx1_reg_9_ ( .D(N14), .CK(clk), .RN(n1480), .Q(Gx1[9]) );
  DFFRX1 Gy1_reg_9_ ( .D(N34), .CK(clk), .RN(n1470), .Q(Gy1[9]) );
  DFFRX1 Gx2_reg_9_ ( .D(N24), .CK(clk), .RN(n1460), .Q(Gx2[9]) );
  DFFRX2 Gy_imm_r_reg_10_ ( .D(Gy_imm[10]), .CK(clk), .RN(n1430), .Q(
        Gy_imm_r[10]), .QN(n83) );
  DFFRX2 Gx_imm_r_reg_10_ ( .D(Gx_imm[10]), .CK(clk), .RN(n142), .Q(
        Gx_imm_r[10]), .QN(n84) );
  DFFRX1 p4_r_reg_6_ ( .D(p4[6]), .CK(clk), .RN(n1500), .Q(p4_r[6]) );
  DFFRX1 p8_r_reg_6_ ( .D(p8[6]), .CK(clk), .RN(n1490), .Q(p8_r[6]) );
  DFFRX1 Gy_imm_r_reg_9_ ( .D(Gy_imm[9]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[9]), .QN(n440) );
  DFFRX1 Gx_imm_r_reg_9_ ( .D(Gx_imm[9]), .CK(clk), .RN(n142), .Q(Gx_imm_r[9]), 
        .QN(n45) );
  DFFRX1 p7_r_reg_7_ ( .D(p7[7]), .CK(clk), .RN(n1550), .Q(p7_r[7]) );
  DFFQX1 Gx_acc3_r_reg_12_ ( .D(n82), .CK(clk), .Q(Gx_acc3_r[12]) );
  DFFRX1 Gy_abs_reg_9_ ( .D(N75), .CK(clk), .RN(n1620), .Q(Gy_abs[9]) );
  DFFRX1 Gy2_r_reg_8_ ( .D(Gy2_w[8]), .CK(clk), .RN(n1640), .Q(Gy2_r[8]) );
  DFFRX1 Gx2_r_reg_8_ ( .D(Gx2_w[8]), .CK(clk), .RN(n1540), .Q(Gx2_r[8]) );
  DFFRX1 Gx_acc2_r_reg_9_ ( .D(N127), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[9])
         );
  DFFRX1 Gx1_r_reg_8_ ( .D(Gx1_w[8]), .CK(clk), .RN(n1611), .Q(Gx1_r[8]) );
  DFFRX1 Gy1_r_reg_8_ ( .D(Gy1_w[8]), .CK(clk), .RN(n1440), .Q(Gy1_r[8]) );
  DFFRX1 p2_r_reg_5_ ( .D(p2[5]), .CK(clk), .RN(n1511), .Q(p2_r[5]) );
  DFFRX1 p6_r_reg_5_ ( .D(p6[5]), .CK(clk), .RN(n850), .Q(p6_r[5]) );
  DFFRX1 p8_r_reg_5_ ( .D(p8[5]), .CK(clk), .RN(n1490), .Q(p8_r[5]) );
  DFFRX1 Gy_imm_r_reg_8_ ( .D(Gy_imm[8]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[8]), .QN(n420) );
  DFFRX1 Gx_imm_r_reg_8_ ( .D(Gx_imm[8]), .CK(clk), .RN(n142), .Q(Gx_imm_r[8]), 
        .QN(n430) );
  DFFRX1 Gx_acc1_1_r_reg_15_ ( .D(Gx_acc1_r[15]), .CK(clk), .RN(n1570), .Q(
        Gx_acc1_1_r[15]) );
  DFFRX1 Gx_acc2_1_r_reg_15_ ( .D(N158), .CK(clk), .RN(n1590), .Q(
        Gx_acc2_1_r[15]) );
  DFFRX1 Gx_acc1_1_r_reg_17_ ( .D(Gx_acc1_r[17]), .CK(clk), .RN(n1570), .Q(
        Gx_acc1_1_r[17]), .QN(n2300) );
  DFFRX1 Gx_acc2_r_reg_8_ ( .D(N126), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[8])
         );
  DFFRX1 Gy_imm_r_reg_7_ ( .D(Gy_imm[7]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[7]), .QN(n390) );
  DFFRX1 Gx_imm_r_reg_7_ ( .D(Gx_imm[7]), .CK(clk), .RN(n142), .Q(Gx_imm_r[7]), 
        .QN(n400) );
  DFFRX1 Gx1_reg_7_ ( .D(N12), .CK(clk), .RN(n1470), .Q(Gx1[7]) );
  DFFRX1 p2_r_reg_4_ ( .D(p2[4]), .CK(clk), .RN(n1511), .Q(p2_r[4]) );
  DFFRX1 p4_r_reg_4_ ( .D(p4[4]), .CK(clk), .RN(n1500), .Q(p4_r[4]) );
  DFFRX1 p8_r_reg_4_ ( .D(p8[4]), .CK(clk), .RN(n1490), .Q(p8_r[4]) );
  DFFRX1 Gx1_reg_4_ ( .D(N9), .CK(clk), .RN(n1470), .Q(Gx1[4]) );
  DFFRX1 Gy2_reg_4_ ( .D(N39), .CK(clk), .RN(n850), .Q(Gy2[4]) );
  DFFQX1 Gx_acc3_r_reg_8_ ( .D(n78), .CK(clk), .Q(Gx_acc3_r[8]) );
  DFFRX1 Gx1_reg_6_ ( .D(N11), .CK(clk), .RN(n1470), .Q(Gx1[6]) );
  DFFRX1 Gy2_reg_6_ ( .D(N41), .CK(clk), .RN(n850), .Q(Gy2[6]) );
  DFFRX1 Gx_mult1_r_reg_16_ ( .D(N175), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[16]) );
  DFFRX1 Gx1_reg_5_ ( .D(N10), .CK(clk), .RN(n1470), .Q(Gx1[5]) );
  DFFRX1 Gy2_reg_5_ ( .D(N40), .CK(clk), .RN(n1660), .Q(Gy2[5]) );
  DFFQX1 Gx_acc3_r_reg_5_ ( .D(n750), .CK(clk), .Q(Gx_acc3_r[5]) );
  DFFRX1 Gx_mult2_r_reg_15_ ( .D(Gx_acc2_1_r[15]), .CK(clk), .RN(n1560), .Q(
        Gx_mult2_r[15]) );
  DFFRX1 p7_r_reg_5_ ( .D(p7[5]), .CK(clk), .RN(n1490), .Q(p7_r[5]) );
  DFFRX1 p3_r_reg_5_ ( .D(p3[5]), .CK(clk), .RN(n1500), .Q(p3_r[5]) );
  DFFRX1 Gy2_r_reg_7_ ( .D(Gy2_w[7]), .CK(clk), .RN(n1600), .Q(Gy2_r[7]) );
  DFFRX1 Gx2_r_reg_7_ ( .D(Gx2_w[7]), .CK(clk), .RN(n1611), .Q(Gx2_r[7]) );
  DFFQX1 Gx_acc3_r_reg_4_ ( .D(n740), .CK(clk), .Q(Gx_acc3_r[4]) );
  DFFRX1 Gy2_r_reg_6_ ( .D(Gy2_w[6]), .CK(clk), .RN(n1620), .Q(Gy2_r[6]) );
  DFFRX1 Gx2_r_reg_6_ ( .D(Gx2_w[6]), .CK(clk), .RN(n1620), .Q(Gx2_r[6]) );
  DFFRX1 Gx1_r_reg_7_ ( .D(Gx1_w[7]), .CK(clk), .RN(n1440), .Q(Gx1_r[7]) );
  DFFRX1 Gy1_r_reg_7_ ( .D(Gy1_w[7]), .CK(clk), .RN(n1440), .Q(Gy1_r[7]) );
  DFFRX1 Gy_abs_reg_7_ ( .D(N73), .CK(clk), .RN(n1600), .Q(Gy_abs[7]) );
  DFFRX1 Gx1_r_reg_4_ ( .D(Gx1_w[4]), .CK(clk), .RN(n1440), .Q(Gx1_r[4]) );
  DFFRX1 Gy1_r_reg_4_ ( .D(Gy1_w[4]), .CK(clk), .RN(n1630), .Q(Gy1_r[4]) );
  DFFRX1 Gy2_r_reg_3_ ( .D(Gy2_w[3]), .CK(clk), .RN(n1630), .Q(Gy2_r[3]) );
  DFFRX1 Gx2_r_reg_3_ ( .D(Gx2_w[3]), .CK(clk), .RN(n1430), .Q(Gx2_r[3]) );
  DFFRX1 Gx1_r_reg_6_ ( .D(Gx1_w[6]), .CK(clk), .RN(n1440), .Q(Gx1_r[6]) );
  DFFRX1 Gy1_r_reg_6_ ( .D(Gy1_w[6]), .CK(clk), .RN(n1440), .Q(Gy1_r[6]) );
  DFFRX1 Gx_acc2_r_reg_4_ ( .D(N122), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[4])
         );
  DFFRX1 Gx1_r_reg_5_ ( .D(Gx1_w[5]), .CK(clk), .RN(n1440), .Q(Gx1_r[5]) );
  DFFRX1 Gy1_r_reg_5_ ( .D(Gy1_w[5]), .CK(clk), .RN(n1640), .Q(Gy1_r[5]) );
  DFFRX1 Gx1_r_reg_2_ ( .D(Gx1_w[2]), .CK(clk), .RN(n1440), .Q(Gx1_r[2]) );
  DFFRX1 Gy1_r_reg_2_ ( .D(Gy1_w[2]), .CK(clk), .RN(n1600), .Q(Gy1_r[2]) );
  DFFRX1 Gy1_reg_2_ ( .D(N27), .CK(clk), .RN(n1460), .Q(Gy1[2]) );
  DFFRX1 Gx2_reg_2_ ( .D(N17), .CK(clk), .RN(n1660), .Q(Gx2[2]) );
  DFFRX1 Gy2_r_reg_2_ ( .D(Gy2_w[2]), .CK(clk), .RN(n1640), .Q(Gy2_r[2]) );
  DFFRX1 Gx2_r_reg_2_ ( .D(Gx2_w[2]), .CK(clk), .RN(n1430), .Q(Gx2_r[2]) );
  DFFRX1 Gx1_r_reg_0_ ( .D(Gx1_w[0]), .CK(clk), .RN(n1440), .Q(Gx1_r[0]) );
  DFFRX1 Gy1_r_reg_0_ ( .D(Gy1_w[0]), .CK(clk), .RN(n1600), .Q(Gy1_r[0]) );
  DFFRX1 Gx1_r_reg_1_ ( .D(Gx1_w[1]), .CK(clk), .RN(n1440), .Q(Gx1_r[1]) );
  DFFRX1 Gy1_r_reg_1_ ( .D(Gy1_w[1]), .CK(clk), .RN(n1550), .Q(Gy1_r[1]) );
  DFFRX1 Gx_acc2_r_reg_6_ ( .D(N124), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[6])
         );
  DFFRX1 Gx1_reg_1_ ( .D(N6), .CK(clk), .RN(n1470), .Q(Gx1[1]) );
  DFFRX1 Gy1_reg_1_ ( .D(N26), .CK(clk), .RN(n1460), .Q(Gy1[1]) );
  DFFRX1 Gx2_reg_1_ ( .D(N16), .CK(clk), .RN(n850), .Q(Gx2[1]) );
  DFFRX1 Gy2_reg_1_ ( .D(N36), .CK(clk), .RN(n1450), .Q(Gy2[1]) );
  DFFRX1 Gx1_r_reg_3_ ( .D(Gx1_w[3]), .CK(clk), .RN(n1440), .Q(Gx1_r[3]) );
  DFFRX1 Gy1_r_reg_3_ ( .D(Gy1_w[3]), .CK(clk), .RN(n1530), .Q(Gy1_r[3]) );
  DFFRX1 Gy1_reg_3_ ( .D(N28), .CK(clk), .RN(n1460), .Q(Gy1[3]) );
  DFFRX1 Gx_acc2_r_reg_1_ ( .D(N119), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[1])
         );
  DFFRX1 Gx_mult1_r_reg_13_ ( .D(N172), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[13]) );
  DFFRX1 p2_r_reg_3_ ( .D(p2[3]), .CK(clk), .RN(n1511), .Q(p2_r[3]) );
  DFFRX1 p6_r_reg_3_ ( .D(p6[3]), .CK(clk), .RN(n1530), .Q(p6_r[3]) );
  DFFRX1 Gx1_reg_0_ ( .D(N5), .CK(clk), .RN(n1470), .Q(Gx1[0]) );
  DFFRX1 Gy1_reg_0_ ( .D(N25), .CK(clk), .RN(n1460), .Q(Gy1[0]) );
  DFFRX1 Gx2_reg_0_ ( .D(N15), .CK(clk), .RN(n1660), .Q(Gx2[0]) );
  DFFRX1 Gy2_reg_0_ ( .D(N35), .CK(clk), .RN(n1450), .Q(Gy2[0]) );
  DFFRX1 Gy2_r_reg_5_ ( .D(Gy2_w[5]), .CK(clk), .RN(n1611), .Q(Gy2_r[5]) );
  DFFRX1 Gx2_r_reg_5_ ( .D(Gx2_w[5]), .CK(clk), .RN(n1611), .Q(Gx2_r[5]) );
  DFFRX1 Gx_acc2_r_reg_5_ ( .D(N123), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[5])
         );
  DFFRX1 Gy_abs_reg_0_ ( .D(N66), .CK(clk), .RN(n1611), .Q(Gy_abs[0]) );
  DFFRX1 Gy2_r_reg_0_ ( .D(Gy2_w[0]), .CK(clk), .RN(n1611), .Q(Gy2_r[0]) );
  DFFRX1 Gx2_r_reg_0_ ( .D(Gx2_w[0]), .CK(clk), .RN(n1430), .Q(Gx2_r[0]) );
  DFFRX1 Gy2_r_reg_4_ ( .D(Gy2_w[4]), .CK(clk), .RN(n1600), .Q(Gy2_r[4]) );
  DFFRX1 Gx2_r_reg_4_ ( .D(Gx2_w[4]), .CK(clk), .RN(n1620), .Q(Gx2_r[4]) );
  DFFRX1 Gy2_r_reg_1_ ( .D(Gy2_w[1]), .CK(clk), .RN(n1620), .Q(Gy2_r[1]) );
  DFFRX1 Gx2_r_reg_1_ ( .D(Gx2_w[1]), .CK(clk), .RN(n1430), .Q(Gx2_r[1]) );
  DFFRX1 Gx_mult1_r_reg_14_ ( .D(N173), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[14]), .QN(n2200) );
  DFFRX1 p3_r_reg_4_ ( .D(p3[4]), .CK(clk), .RN(n1500), .Q(p3_r[4]) );
  DFFRX1 p7_r_reg_4_ ( .D(p7[4]), .CK(clk), .RN(n1490), .Q(p7_r[4]) );
  DFFRX1 Gy_imm_r_reg_5_ ( .D(Gy_imm[5]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[5]), .QN(n3200) );
  DFFRX1 Gx_imm_r_reg_5_ ( .D(Gx_imm[5]), .CK(clk), .RN(n142), .Q(Gx_imm_r[5]), 
        .QN(n3300) );
  DFFRX1 p6_r_reg_2_ ( .D(p6[2]), .CK(clk), .RN(n1550), .Q(p6_r[2]) );
  DFFRX1 Gx_acc1_1_r_reg_12_ ( .D(Gx_acc1_r[12]), .CK(clk), .RN(n1570), .Q(
        Gx_acc1_1_r[12]) );
  DFFRX1 Gy_abs_delay_reg_2__8_ ( .D(Gy_abs_delay[18]), .CK(clk), .RN(n1611), 
        .Q(Gy_abs_delay[25]), .QN(n1190) );
  DFFRX1 Gx_mult2_r_reg_0_ ( .D(N159), .CK(clk), .RN(n1550), .QN(n1060) );
  DFFRX1 Gx_mult2_r_reg_2_ ( .D(N161), .CK(clk), .RN(n1600), .QN(n1070) );
  DFFRX1 Gx_mult2_r_reg_1_ ( .D(N160), .CK(clk), .RN(n1550), .QN(n1080) );
  DFFRX1 p4_r_reg_2_ ( .D(p4[2]), .CK(clk), .RN(n850), .Q(p4_r[2]) );
  DFFRX1 p8_r_reg_2_ ( .D(p8[2]), .CK(clk), .RN(n1480), .Q(p8_r[2]) );
  DFFRX1 Gx_mult2_r_reg_7_ ( .D(N166), .CK(clk), .RN(n1560), .Q(Gx_mult2_r[7])
         );
  DFFRX1 p2_r_reg_1_ ( .D(p2[1]), .CK(clk), .RN(n1511), .Q(p2_r[1]) );
  DFFRX1 p6_r_reg_1_ ( .D(p6[1]), .CK(clk), .RN(n1530), .Q(p6_r[1]) );
  DFFRX1 Gy_imm_r_reg_3_ ( .D(Gy_imm[3]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[3]), .QN(n2900) );
  DFFRX1 Gx_imm_r_reg_3_ ( .D(Gx_imm[3]), .CK(clk), .RN(n142), .Q(Gx_imm_r[3]), 
        .QN(n3100) );
  DFFRX1 Gx_mult1_r_reg_1_ ( .D(N160), .CK(clk), .RN(n1540), .QN(n1170) );
  DFFRX1 Gx_mult1_r_reg_0_ ( .D(N159), .CK(clk), .RN(n1540), .QN(n1181) );
  DFFRX1 Gx_mult1_r_reg_6_ ( .D(N165), .CK(clk), .RN(n1540), .QN(n1150) );
  DFFRX1 p4_r_reg_1_ ( .D(p4[1]), .CK(clk), .RN(n850), .Q(p4_r[1]) );
  DFFRX1 p8_r_reg_1_ ( .D(p8[1]), .CK(clk), .RN(n1480), .Q(p8_r[1]) );
  DFFRX1 Gx_mult1_r_reg_5_ ( .D(N164), .CK(clk), .RN(n1540), .QN(n1160) );
  DFFRX1 Gy_imm_r_reg_2_ ( .D(Gy_imm[2]), .CK(clk), .RN(n142), .Q(Gy_imm_r[2]), 
        .QN(n2500) );
  DFFRX1 Gx_imm_r_reg_2_ ( .D(Gx_imm[2]), .CK(clk), .RN(n142), .Q(Gx_imm_r[2]), 
        .QN(n2600) );
  DFFRX1 Gx_mult1_r_reg_3_ ( .D(N162), .CK(clk), .RN(n1540), .QN(n1120) );
  DFFRX1 Gx_mult1_r_reg_7_ ( .D(N166), .CK(clk), .RN(n1540), .QN(n2000) );
  DFFRX1 Gx_mult1_r_reg_2_ ( .D(N161), .CK(clk), .RN(n1540), .QN(n1130) );
  DFFRX1 Gx_mult2_r_reg_4_ ( .D(N163), .CK(clk), .RN(n1550), .QN(n930) );
  DFFRX1 p8_r_reg_0_ ( .D(p8[0]), .CK(clk), .RN(n1480), .Q(p8_r[0]) );
  DFFRX1 Gx_mult1_r_reg_4_ ( .D(N163), .CK(clk), .RN(n1540), .QN(n1140) );
  DFFRX1 Gx_mult2_r_reg_3_ ( .D(N162), .CK(clk), .RN(n1550), .QN(n940) );
  DFFRX1 Gx_mult1_r_reg_9_ ( .D(N168), .CK(clk), .RN(n1540), .Q(Gx_mult1_r[9])
         );
  DFFRX1 Gx_mult2_r_reg_6_ ( .D(N165), .CK(clk), .RN(n1560), .QN(n950) );
  DFFRX1 Gx_mult2_r_reg_5_ ( .D(N164), .CK(clk), .RN(n1560), .QN(n960) );
  DFFRX1 p9_r_reg_7_ ( .D(p9[7]), .CK(clk), .RN(n1520), .Q(p9_r[7]) );
  DFFRX1 p9_r_reg_6_ ( .D(p9[6]), .CK(clk), .RN(n141), .Q(p9_r[6]) );
  DFFRX1 p9_r_reg_5_ ( .D(p9[5]), .CK(clk), .RN(n1520), .Q(p9_r[5]) );
  DFFRX1 p1_r_reg_7_ ( .D(p1[7]), .CK(clk), .RN(n1520), .Q(p1_r[7]) );
  DFFRX1 Gx_acc1_r_reg_10_ ( .D(Gx_abs[2]), .CK(clk), .RN(n1600), .Q(
        Gx_acc1_r[10]) );
  DFFRX1 Gx_acc1_r_reg_9_ ( .D(n135), .CK(clk), .RN(n1600), .Q(Gx_acc1_r[9])
         );
  DFFRX1 Gx_acc2_1_r_reg_3_ ( .D(N146), .CK(clk), .RN(n1580), .Q(N162) );
  DFFRX1 Gx_acc2_1_r_reg_2_ ( .D(N145), .CK(clk), .RN(n1570), .Q(N161) );
  DFFRX1 Gx_acc2_1_r_reg_1_ ( .D(N144), .CK(clk), .RN(n1570), .Q(N160) );
  DFFRX1 Gx_acc2_1_r_reg_0_ ( .D(N143), .CK(clk), .RN(n1570), .Q(N159) );
  DFFRX1 p1_r_reg_3_ ( .D(p1[3]), .CK(clk), .RN(n1520), .Q(p1_r[3]) );
  DFFRX1 G_abs_reg_10_ ( .D(N117), .CK(clk), .RN(n1620), .Q(G_abs[10]) );
  DFFRX1 G_abs_reg_8_ ( .D(N115), .CK(clk), .RN(n1620), .Q(G_abs[8]) );
  DFFRX1 G_abs_reg_7_ ( .D(N114), .CK(clk), .RN(n1630), .Q(G_abs[7]) );
  DFFRX1 G_abs_reg_6_ ( .D(N113), .CK(clk), .RN(n1630), .Q(G_abs[6]) );
  DFFRX1 G_abs_reg_5_ ( .D(N112), .CK(clk), .RN(n1630), .Q(G_abs[5]) );
  DFFRX1 G_abs_reg_4_ ( .D(N111), .CK(clk), .RN(n1630), .Q(G_abs[4]) );
  DFFRX1 G_abs_reg_3_ ( .D(N110), .CK(clk), .RN(n1640), .Q(G_abs[3]) );
  DFFRX1 G_abs_reg_2_ ( .D(N109), .CK(clk), .RN(n1640), .Q(G_abs[2]) );
  DFFRX1 G_abs_reg_1_ ( .D(N108), .CK(clk), .RN(n1640), .Q(G_abs[1]) );
  DFFRX1 Gx_acc2_1_r_reg_7_ ( .D(N150), .CK(clk), .RN(n1580), .Q(N166) );
  DFFRX1 Gx_acc2_1_r_reg_6_ ( .D(N149), .CK(clk), .RN(n1580), .Q(N165) );
  DFFRX1 Gx_acc2_1_r_reg_5_ ( .D(N148), .CK(clk), .RN(n1580), .Q(N164) );
  DFFRX1 Gy_abs_delay_reg_0__9_ ( .D(Gy_abs[9]), .CK(clk), .RN(n1611), .Q(
        Gy_abs_delay[9]) );
  DFFRX1 Gy_abs_delay_reg_0__8_ ( .D(Gy_abs[8]), .CK(clk), .RN(n1611), .Q(
        Gy_abs_delay[8]) );
  DFFRX1 Gy_abs_delay_reg_0__7_ ( .D(Gy_abs[7]), .CK(clk), .RN(n1611), .Q(
        Gy_abs_delay[7]) );
  DFFRX1 Gy_abs_delay_reg_0__5_ ( .D(Gy_abs[5]), .CK(clk), .RN(n1660), .Q(
        Gy_abs_delay[5]) );
  DFFRX1 Gy_abs_delay_reg_0__0_ ( .D(Gy_abs[0]), .CK(clk), .RN(n850), .Q(
        Gy_abs_delay[0]) );
  DFFRX1 Gy_abs_delay_reg_2__1_ ( .D(Gy_abs_delay[11]), .CK(clk), .RN(n1660), 
        .Q(Gy_abs_delay[20]), .QN(n1100) );
  DFFRX1 Gy_abs_delay_reg_2__2_ ( .D(Gy_abs_delay[12]), .CK(clk), .RN(n850), 
        .Q(Gy_abs_delay[21]), .QN(n1110) );
  DFFRXL p6_r_reg_4_ ( .D(p6[4]), .CK(clk), .RN(n1611), .Q(p6_r[4]) );
  DFFRXL p1_r_reg_5_ ( .D(p1[5]), .CK(clk), .RN(n1520), .Q(p1_r[5]) );
  DFFRXL p1_r_reg_4_ ( .D(p1[4]), .CK(clk), .RN(n1520), .Q(p1_r[4]) );
  DFFRXL Gx_acc1_r_reg_17_ ( .D(Gx_abs[9]), .CK(clk), .RN(n850), .Q(
        Gx_acc1_r[17]) );
  DFFRXL Gx_acc1_r_reg_16_ ( .D(n1401), .CK(clk), .RN(n850), .Q(Gx_acc1_r[16])
         );
  DFFRXL Gx_acc1_r_reg_15_ ( .D(n139), .CK(clk), .RN(n850), .Q(Gx_acc1_r[15])
         );
  DFFRXL Gx_acc1_r_reg_14_ ( .D(n138), .CK(clk), .RN(n850), .Q(Gx_acc1_r[14])
         );
  DFFRXL Gx_acc1_r_reg_13_ ( .D(n137), .CK(clk), .RN(n850), .Q(Gx_acc1_r[13])
         );
  DFFRXL Gx_acc1_r_reg_12_ ( .D(n136), .CK(clk), .RN(n850), .Q(Gx_acc1_r[12])
         );
  DFFRXL p8_r_reg_3_ ( .D(p8[3]), .CK(clk), .RN(n1490), .Q(p8_r[3]) );
  DFFRXL G_abs_delay_reg_0__0_ ( .D(G_abs[0]), .CK(clk), .RN(n850), .Q(
        G_abs_delay[0]) );
  DFFRXL G_abs_delay_reg_1__0_ ( .D(G_abs_delay[0]), .CK(clk), .RN(n850), .Q(
        G_abs_delay[11]) );
  DFFRX1 Gx_acc2_1_r_reg_4_ ( .D(N147), .CK(clk), .RN(n1580), .Q(N163) );
  DFFRX1 G_abs_reg_0_ ( .D(N107), .CK(clk), .RN(n1640), .Q(G_abs[0]) );
  DFFRX2 p3_r_reg_1_ ( .D(p3[1]), .CK(clk), .RN(n1500), .Q(p3_r[1]) );
  DFFRX1 p6_r_reg_6_ ( .D(p6[6]), .CK(clk), .RN(n850), .Q(p6_r[6]) );
  DFFRX1 Gx1_r_reg_9_ ( .D(Gx1_w[9]), .CK(clk), .RN(n1630), .Q(Gx1_r[9]) );
  DFFRX1 Gy1_r_reg_9_ ( .D(Gy1_w[9]), .CK(clk), .RN(n1440), .Q(Gy1_r[9]) );
  DFFRX1 Gy2_r_reg_9_ ( .D(Gy2_w[9]), .CK(clk), .RN(n1640), .Q(Gy2_r[9]) );
  DFFRX1 Gx2_r_reg_9_ ( .D(Gx2_w[9]), .CK(clk), .RN(n1630), .Q(Gx2_r[9]) );
  DFFRX1 Gx_abs_reg_8_ ( .D(N105), .CK(clk), .RN(n141), .Q(Gx_abs[8]), .QN(
        n1280) );
  DFFRX1 p2_r_reg_2_ ( .D(p2[2]), .CK(clk), .RN(n1511), .Q(p2_r[2]) );
  DFFRX1 p7_r_reg_1_ ( .D(p7[1]), .CK(clk), .RN(n1490), .Q(p7_r[1]), .QN(n1211) );
  DFFRXL Gx_delay_reg_3_ ( .D(Gx_delay[2]), .CK(clk), .RN(n850), .QN(n690) );
  DFFRXL Gy_delay_reg_3_ ( .D(Gy_delay[2]), .CK(clk), .RN(n1620), .Q(
        Gy_delay[3]) );
  DFFRHQX1 Gx_imm_r_reg_0_ ( .D(Gx_imm[0]), .CK(clk), .RN(n141), .Q(n900) );
  DFFRHQX1 Gy_imm_r_reg_0_ ( .D(Gy_imm[0]), .CK(clk), .RN(n142), .Q(n880) );
  DFFRX2 p3_r_reg_2_ ( .D(p3[2]), .CK(clk), .RN(n1500), .Q(p3_r[2]) );
  DFFRX2 Gy1_reg_8_ ( .D(N33), .CK(clk), .RN(n1470), .Q(Gy1[8]) );
  DFFRX2 p2_r_reg_7_ ( .D(p2[7]), .CK(clk), .RN(n1511), .Q(p2_r[7]) );
  DFFRX2 p3_r_reg_6_ ( .D(p3[6]), .CK(clk), .RN(n1500), .Q(p3_r[6]) );
  DFFRX2 Gx1_reg_8_ ( .D(N13), .CK(clk), .RN(n1470), .Q(Gx1[8]) );
  DFFRX2 p4_r_reg_5_ ( .D(p4[5]), .CK(clk), .RN(n1500), .Q(p4_r[5]) );
  DFFRX2 p7_r_reg_3_ ( .D(p7[3]), .CK(clk), .RN(n1490), .Q(p7_r[3]) );
  DFFRX2 p2_r_reg_0_ ( .D(p2[0]), .CK(clk), .RN(n1511), .Q(p2_r[0]) );
  DFFRX2 p2_r_reg_6_ ( .D(p2[6]), .CK(clk), .RN(n1511), .Q(p2_r[6]) );
  DFFRX2 p4_r_reg_3_ ( .D(p4[3]), .CK(clk), .RN(n1500), .Q(p4_r[3]) );
  DFFRX2 p9_d_r_reg_2_ ( .D(p9_r[2]), .CK(clk), .RN(n1480), .Q(p9_d_r[2]) );
  DFFRX2 p9_r_reg_2_ ( .D(p9[2]), .CK(clk), .RN(n1520), .Q(p9_r[2]) );
  DFFRX2 p1_d_r_reg_2_ ( .D(p1_r[2]), .CK(clk), .RN(n1450), .Q(p1_d_r[2]) );
  DFFRX2 p1_r_reg_2_ ( .D(p1[2]), .CK(clk), .RN(n1511), .Q(p1_r[2]) );
  DFFRX2 Gx2_reg_5_ ( .D(N20), .CK(clk), .RN(n1460), .Q(Gx2[5]) );
  DFFRX2 p9_d_r_reg_5_ ( .D(p9_r[5]), .CK(clk), .RN(n1480), .Q(p9_d_r[5]) );
  DFFRX2 Gy1_reg_5_ ( .D(N30), .CK(clk), .RN(n1460), .Q(Gy1[5]) );
  DFFRX2 p1_d_r_reg_5_ ( .D(p1_r[5]), .CK(clk), .RN(n1450), .Q(p1_d_r[5]) );
  DFFRX2 p9_d_r_reg_0_ ( .D(p9_r[0]), .CK(clk), .RN(n1480), .Q(p9_d_r[0]) );
  DFFRX2 p9_r_reg_0_ ( .D(p9[0]), .CK(clk), .RN(n1520), .Q(p9_r[0]) );
  DFFRX2 p1_d_r_reg_0_ ( .D(p1_r[0]), .CK(clk), .RN(n1450), .Q(p1_d_r[0]) );
  DFFRX2 p1_r_reg_0_ ( .D(p1[0]), .CK(clk), .RN(n1511), .Q(p1_r[0]) );
  DFFRX4 p9_d_r_reg_3_ ( .D(p9_r[3]), .CK(clk), .RN(n1480), .Q(p9_d_r[3]) );
  DFFRX4 p1_d_r_reg_3_ ( .D(p1_r[3]), .CK(clk), .RN(n1450), .Q(p1_d_r[3]) );
  DFFRXL p1_r_reg_6_ ( .D(p1[6]), .CK(clk), .RN(n1520), .Q(p1_r[6]) );
  DFFRX2 Gx_abs_reg_7_ ( .D(N104), .CK(clk), .RN(n141), .Q(Gx_abs[7]), .QN(
        n870) );
  DFFRX2 Gx_abs_reg_9_ ( .D(N106), .CK(clk), .RN(n141), .Q(Gx_abs[9]), .QN(
        n134) );
  DFFRX2 Gx_acc2_1_r_reg_13_ ( .D(N156), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[13]) );
  DFFRX2 Gx_mult2_r_reg_13_ ( .D(Gx_acc2_1_r[13]), .CK(clk), .RN(n1560), .Q(
        Gx_mult2_r[13]), .QN(n370) );
  DFFRX2 p9_d_r_reg_1_ ( .D(p9_r[1]), .CK(clk), .RN(n1480), .Q(p9_d_r[1]) );
  DFFRX2 p9_r_reg_1_ ( .D(p9[1]), .CK(clk), .RN(n1520), .Q(p9_r[1]) );
  DFFRX2 p1_d_r_reg_1_ ( .D(p1_r[1]), .CK(clk), .RN(n1450), .Q(p1_d_r[1]) );
  DFFRX2 p1_r_reg_1_ ( .D(p1[1]), .CK(clk), .RN(n1511), .Q(p1_r[1]) );
  DFFRX2 Gx2_reg_6_ ( .D(N21), .CK(clk), .RN(n1460), .Q(Gx2[6]) );
  DFFRX2 p9_d_r_reg_6_ ( .D(p9_r[6]), .CK(clk), .RN(n1480), .Q(p9_d_r[6]) );
  DFFRX2 Gy1_reg_6_ ( .D(N31), .CK(clk), .RN(n1460), .Q(Gy1[6]) );
  DFFRX2 p1_d_r_reg_6_ ( .D(p1_r[6]), .CK(clk), .RN(n1450), .Q(p1_d_r[6]) );
  DFFRX2 Gy_abs_reg_2_ ( .D(N68), .CK(clk), .RN(n1600), .Q(Gy_abs[2]) );
  DFFRX2 Gx_acc2_1_r_reg_9_ ( .D(N152), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[9]), .QN(n970) );
  DFFRX2 Gx_acc1_1_r_reg_9_ ( .D(Gx_acc1_r[9]), .CK(clk), .RN(n1570), .Q(
        Gx_acc1_1_r[9]), .QN(n680) );
  DFFRX2 p9_d_r_reg_4_ ( .D(p9_r[4]), .CK(clk), .RN(n1480), .Q(p9_d_r[4]) );
  DFFRX2 p9_r_reg_4_ ( .D(p9[4]), .CK(clk), .RN(n1520), .Q(p9_r[4]) );
  DFFRX2 Gx_acc2_r_reg_2_ ( .D(N120), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[2])
         );
  DFFRX2 Gx_imm_r_reg_4_ ( .D(Gx_imm[4]), .CK(clk), .RN(n142), .Q(Gx_imm_r[4]), 
        .QN(n3600) );
  DFFRX2 Gy_imm_r_reg_4_ ( .D(Gy_imm[4]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[4]), .QN(n3400) );
  DFFRX2 Gx_acc2_1_r_reg_11_ ( .D(N154), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[11]), .QN(n670) );
  DFFRX2 Gx_acc1_1_r_reg_11_ ( .D(Gx_acc1_r[11]), .CK(clk), .RN(n1570), .Q(
        Gx_acc1_1_r[11]), .QN(n660) );
  DFFRX2 Gx_acc2_r_reg_3_ ( .D(N121), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[3])
         );
  DFFRX2 Gx1_reg_2_ ( .D(N7), .CK(clk), .RN(n1470), .Q(Gx1[2]) );
  DFFRX2 Gx_imm_r_reg_6_ ( .D(Gx_imm[6]), .CK(clk), .RN(n142), .Q(Gx_imm_r[6]), 
        .QN(n410) );
  DFFRX2 Gy_imm_r_reg_6_ ( .D(Gy_imm[6]), .CK(clk), .RN(n1430), .Q(Gy_imm_r[6]), .QN(n380) );
  DFFRHQX1 p1_d_r_reg_4_ ( .D(p1_r[4]), .CK(clk), .RN(n1450), .Q(n640) );
  DFFRX2 Gy_abs_reg_5_ ( .D(N71), .CK(clk), .RN(n1600), .Q(Gy_abs[5]) );
  DFFRHQX1 Gy_abs_delay_reg_2__0_ ( .D(Gy_abs_delay[10]), .CK(clk), .RN(n1540), 
        .Q(n620) );
  DFFRX2 Gy_abs_reg_8_ ( .D(N74), .CK(clk), .RN(n1600), .Q(Gy_abs[8]) );
  DFFRX2 Gx_acc2_1_r_reg_14_ ( .D(N157), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[14]), .QN(n2400) );
  DFFRX2 Gx_mult2_r_reg_14_ ( .D(Gx_acc2_1_r[14]), .CK(clk), .RN(n1560), .Q(
        Gx_mult2_r[14]) );
  DFFRX2 Gy2_reg_7_ ( .D(N42), .CK(clk), .RN(n1540), .Q(Gy2[7]) );
  DFFRX2 p9_d_r_reg_7_ ( .D(p9_r[7]), .CK(clk), .RN(n1480), .Q(p9_d_r[7]) );
  DFFRX2 Gy1_reg_7_ ( .D(N32), .CK(clk), .RN(n1470), .Q(Gy1[7]) );
  DFFRX2 p1_d_r_reg_7_ ( .D(p1_r[7]), .CK(clk), .RN(n1450), .Q(p1_d_r[7]) );
  DFFRX2 Gx_mult1_r_reg_10_ ( .D(N169), .CK(clk), .RN(n1540), .Q(
        Gx_mult1_r[10]), .QN(n611) );
  DFFRX2 Gy_abs_reg_6_ ( .D(N72), .CK(clk), .RN(n1600), .Q(Gy_abs[6]) );
  DFFRX2 Gx_abs_reg_1_ ( .D(N98), .CK(clk), .RN(n141), .Q(N131), .QN(n1270) );
  DFFRHQX1 Gy_abs_delay_reg_2__5_ ( .D(Gy_abs_delay[15]), .CK(clk), .RN(n1620), 
        .Q(n590) );
  DFFQX4 Gx_acc3_r_reg_11_ ( .D(n81), .CK(clk), .Q(Gx_acc3_r[11]) );
  DFFRX2 Gx_acc2_r_reg_7_ ( .D(N125), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[7])
         );
  DFFRX2 Gx_mult1_r_reg_18_ ( .D(N177), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[18]), .QN(n3500) );
  DFFRX2 Gx_acc2_r_reg_11_ ( .D(N129), .CK(clk), .RN(n1600), .Q(Gx_acc2_r[11])
         );
  DFFRX2 Gx_acc2_1_r_reg_10_ ( .D(N153), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[10]) );
  DFFRX2 Gx_mult2_r_reg_10_ ( .D(Gx_acc2_1_r[10]), .CK(clk), .RN(n1560), .Q(
        Gx_mult2_r[10]) );
  DFFRX2 Gy_abs_reg_3_ ( .D(N69), .CK(clk), .RN(n1600), .Q(Gy_abs[3]) );
  DFFRX2 Gy2_reg_8_ ( .D(N43), .CK(clk), .RN(n1620), .Q(Gy2[8]) );
  DFFRX2 Gy1_reg_4_ ( .D(N29), .CK(clk), .RN(n1460), .Q(Gy1[4]) );
  DFFRX2 Gy_abs_reg_1_ ( .D(N67), .CK(clk), .RN(n1611), .Q(Gy_abs[1]) );
  DFFRX2 Gx_acc2_1_r_reg_8_ ( .D(N151), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[8]) );
  DFFRX2 Gy2_reg_9_ ( .D(N44), .CK(clk), .RN(n1630), .Q(Gy2[9]) );
  DFFRX2 Gx_mult1_r_reg_11_ ( .D(N170), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[11]) );
  DFFQX4 Gx_acc3_r_reg_9_ ( .D(n79), .CK(clk), .Q(Gx_acc3_r[9]) );
  DFFRHQX1 Gx_acc1_1_r_reg_13_ ( .D(Gx_acc1_r[13]), .CK(clk), .RN(n1570), .Q(
        n560) );
  DFFRHQX1 Gx_mult2_r_reg_11_ ( .D(Gx_acc2_1_r[11]), .CK(clk), .RN(n1560), .Q(
        n55) );
  DFFQX4 Gx_acc3_r_reg_10_ ( .D(n80), .CK(clk), .Q(Gx_acc3_r[10]) );
  DFFRX2 Gx_acc1_1_r_reg_16_ ( .D(Gx_acc1_r[16]), .CK(clk), .RN(n1570), .Q(
        Gx_acc1_1_r[16]), .QN(n53) );
  DFFRX2 Gy2_reg_3_ ( .D(N38), .CK(clk), .RN(n1450), .Q(Gy2[3]) );
  DFFRHQX1 Gy_abs_delay_reg_2__3_ ( .D(Gy_abs_delay[13]), .CK(clk), .RN(n1660), 
        .Q(n51) );
  DFFRX2 Gy2_reg_2_ ( .D(N37), .CK(clk), .RN(n1450), .Q(Gy2[2]) );
  DFFRX2 Gy_abs_delay_reg_2__6_ ( .D(Gy_abs_delay[16]), .CK(clk), .RN(n1540), 
        .Q(Gy_abs_delay[23]), .QN(n3000) );
  DFFRX2 Gy_abs_delay_reg_1__6_ ( .D(Gy_abs_delay[6]), .CK(clk), .RN(n1540), 
        .Q(Gy_abs_delay[16]) );
  DFFRX2 G_abs_reg_9_ ( .D(N116), .CK(clk), .RN(n1620), .Q(G_abs[9]) );
  DFFRX2 p3_r_reg_7_ ( .D(p3[7]), .CK(clk), .RN(n1511), .Q(p3_r[7]) );
  DFFRX2 Gx2_reg_4_ ( .D(N19), .CK(clk), .RN(n1640), .Q(Gx2[4]) );
  DFFRX2 Gx2_reg_7_ ( .D(N22), .CK(clk), .RN(n1460), .Q(Gx2[7]) );
  DFFRX2 Gx_mult1_r_reg_15_ ( .D(N174), .CK(clk), .RN(n1550), .QN(n47) );
  DFFQX1 Gx_acc3_r_reg_6_ ( .D(n76), .CK(clk), .Q(Gx_acc3_r[6]) );
  DFFRX1 Gx_acc2_r_reg_0_ ( .D(n48), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[0]) );
  DFFRX1 Gx_acc1_r_reg_8_ ( .D(n48), .CK(clk), .RN(n1600), .Q(Gx_acc1_r[8]) );
  DFFRX1 Gy_abs_delay_reg_0__4_ ( .D(Gy_abs[4]), .CK(clk), .RN(n1660), .Q(
        Gy_abs_delay[4]) );
  DFFRX1 Gy_delay_reg_0_ ( .D(Gy_imm_r[10]), .CK(clk), .RN(n1620), .Q(
        Gy_delay[0]) );
  DFFRX1 Gx_delay_reg_0_ ( .D(Gx_imm_r[10]), .CK(clk), .RN(n850), .Q(
        Gx_delay[0]) );
  DFFRX1 G_abs_delay_reg_0__9_ ( .D(G_abs[9]), .CK(clk), .RN(n1620), .Q(
        G_abs_delay[9]) );
  DFFRX1 Gx_mult2_r_reg_9_ ( .D(Gx_acc2_1_r[9]), .CK(clk), .RN(n1560), .Q(
        Gx_mult2_r[9]) );
  DFFRX1 sobel_result_r_reg_10_ ( .D(G_abs_delay[21]), .CK(clk), .RN(n1540), 
        .Q(sobel_result[10]) );
  DFFRX1 sobel_result_r_reg_9_ ( .D(G_abs_delay[20]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[9]) );
  DFFRX1 sobel_result_r_reg_8_ ( .D(G_abs_delay[19]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[8]) );
  DFFRX1 sobel_result_r_reg_7_ ( .D(G_abs_delay[18]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[7]) );
  DFFRX1 sobel_result_r_reg_6_ ( .D(G_abs_delay[17]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[6]) );
  DFFRX1 sobel_result_r_reg_5_ ( .D(G_abs_delay[16]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[5]) );
  DFFRX1 sobel_result_r_reg_4_ ( .D(G_abs_delay[15]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[4]) );
  DFFRX1 sobel_result_r_reg_3_ ( .D(G_abs_delay[14]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[3]) );
  DFFRX1 sobel_result_r_reg_2_ ( .D(G_abs_delay[13]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[2]) );
  DFFRX1 sobel_result_r_reg_1_ ( .D(G_abs_delay[12]), .CK(clk), .RN(n1530), 
        .Q(sobel_result[1]) );
  DFFRX1 Gy_delay_reg_2_ ( .D(Gy_delay[1]), .CK(clk), .RN(n1620), .Q(
        Gy_delay[2]) );
  DFFRX1 Gy_delay_reg_1_ ( .D(Gy_delay[0]), .CK(clk), .RN(n1620), .Q(
        Gy_delay[1]) );
  DFFRX1 Gy_abs_delay_reg_2__9_ ( .D(Gy_abs_delay[19]), .CK(clk), .RN(n1611), 
        .Q(Gy_abs_delay[26]), .QN(n336) );
  DFFRX1 Gy_abs_delay_reg_2__7_ ( .D(Gy_abs_delay[17]), .CK(clk), .RN(n1611), 
        .Q(Gy_abs_delay[24]), .QN(n346) );
  DFFRX1 Gy_abs_delay_reg_1__9_ ( .D(Gy_abs_delay[9]), .CK(clk), .RN(n1611), 
        .Q(Gy_abs_delay[19]) );
  DFFRX1 Gy_abs_delay_reg_1__8_ ( .D(Gy_abs_delay[8]), .CK(clk), .RN(n1611), 
        .Q(Gy_abs_delay[18]) );
  DFFRX1 Gy_abs_delay_reg_1__7_ ( .D(Gy_abs_delay[7]), .CK(clk), .RN(n1611), 
        .Q(Gy_abs_delay[17]) );
  DFFRX1 Gy_abs_delay_reg_1__5_ ( .D(Gy_abs_delay[5]), .CK(clk), .RN(n1630), 
        .Q(Gy_abs_delay[15]) );
  DFFRX1 Gy_abs_delay_reg_1__4_ ( .D(Gy_abs_delay[4]), .CK(clk), .RN(n1660), 
        .Q(Gy_abs_delay[14]) );
  DFFRX1 Gy_abs_delay_reg_1__3_ ( .D(Gy_abs_delay[3]), .CK(clk), .RN(n1640), 
        .Q(Gy_abs_delay[13]) );
  DFFRX1 Gy_abs_delay_reg_1__2_ ( .D(Gy_abs_delay[2]), .CK(clk), .RN(n1660), 
        .Q(Gy_abs_delay[12]) );
  DFFRX1 Gy_abs_delay_reg_1__1_ ( .D(Gy_abs_delay[1]), .CK(clk), .RN(n850), 
        .Q(Gy_abs_delay[11]) );
  DFFRX1 Gy_abs_delay_reg_1__0_ ( .D(Gy_abs_delay[0]), .CK(clk), .RN(n1660), 
        .Q(Gy_abs_delay[10]) );
  DFFRX1 Gx_delay_reg_2_ ( .D(Gx_delay[1]), .CK(clk), .RN(n850), .Q(
        Gx_delay[2]) );
  DFFRX1 Gx_delay_reg_1_ ( .D(Gx_delay[0]), .CK(clk), .RN(n1660), .Q(
        Gx_delay[1]) );
  DFFRX1 G_abs_delay_reg_1__10_ ( .D(G_abs_delay[10]), .CK(clk), .RN(n1620), 
        .Q(G_abs_delay[21]) );
  DFFRX1 G_abs_delay_reg_1__9_ ( .D(G_abs_delay[9]), .CK(clk), .RN(n1620), .Q(
        G_abs_delay[20]) );
  DFFRX1 G_abs_delay_reg_1__8_ ( .D(G_abs_delay[8]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[19]) );
  DFFRX1 G_abs_delay_reg_1__7_ ( .D(G_abs_delay[7]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[18]) );
  DFFRX1 G_abs_delay_reg_1__6_ ( .D(G_abs_delay[6]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[17]) );
  DFFRX1 G_abs_delay_reg_1__5_ ( .D(G_abs_delay[5]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[16]) );
  DFFRX1 G_abs_delay_reg_1__4_ ( .D(G_abs_delay[4]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[15]) );
  DFFRX1 G_abs_delay_reg_1__3_ ( .D(G_abs_delay[3]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[14]) );
  DFFRX1 G_abs_delay_reg_1__2_ ( .D(G_abs_delay[2]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[13]) );
  DFFRX1 G_abs_delay_reg_1__1_ ( .D(G_abs_delay[1]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[12]) );
  DFFRX1 G_abs_delay_reg_0__10_ ( .D(G_abs[10]), .CK(clk), .RN(n1620), .Q(
        G_abs_delay[10]) );
  DFFRX1 G_abs_delay_reg_0__8_ ( .D(G_abs[8]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[8]) );
  DFFRX1 G_abs_delay_reg_0__7_ ( .D(G_abs[7]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[7]) );
  DFFRX1 G_abs_delay_reg_0__6_ ( .D(G_abs[6]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[6]) );
  DFFRX1 G_abs_delay_reg_0__5_ ( .D(G_abs[5]), .CK(clk), .RN(n1630), .Q(
        G_abs_delay[5]) );
  DFFRX1 G_abs_delay_reg_0__4_ ( .D(G_abs[4]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[4]) );
  DFFRX1 G_abs_delay_reg_0__3_ ( .D(G_abs[3]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[3]) );
  DFFRX1 G_abs_delay_reg_0__2_ ( .D(G_abs[2]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[2]) );
  DFFRX1 G_abs_delay_reg_0__1_ ( .D(G_abs[1]), .CK(clk), .RN(n1640), .Q(
        G_abs_delay[1]) );
  DFFRX1 Gy_abs_delay_reg_0__3_ ( .D(Gy_abs[3]), .CK(clk), .RN(n1600), .Q(
        Gy_abs_delay[3]) );
  DFFRX1 Gy_abs_delay_reg_0__1_ ( .D(Gy_abs[1]), .CK(clk), .RN(n850), .Q(
        Gy_abs_delay[1]) );
  DFFRX1 Gy_abs_delay_reg_0__2_ ( .D(Gy_abs[2]), .CK(clk), .RN(n1550), .Q(
        Gy_abs_delay[2]) );
  DFFRX1 Gy_abs_delay_reg_0__6_ ( .D(Gy_abs[6]), .CK(clk), .RN(n1611), .Q(
        Gy_abs_delay[6]) );
  DFFRX2 Gx_mult1_r_reg_8_ ( .D(N167), .CK(clk), .RN(n1540), .QN(n600) );
  DFFRX2 Gx_imm_r_reg_1_ ( .D(Gx_imm[1]), .CK(clk), .RN(n141), .Q(Gx_imm_r[1]), 
        .QN(n2800) );
  DFFRX2 Gy_imm_r_reg_1_ ( .D(Gy_imm[1]), .CK(clk), .RN(n142), .Q(Gy_imm_r[1]), 
        .QN(n2700) );
  DFFRX2 Gx_abs_reg_6_ ( .D(N103), .CK(clk), .RN(n141), .Q(Gx_abs[6]), .QN(
        n2100) );
  DFFRX2 Gx_acc2_r_reg_10_ ( .D(N128), .CK(clk), .RN(n1590), .Q(Gx_acc2_r[10])
         );
  DFFRX2 Gx_abs_reg_5_ ( .D(N102), .CK(clk), .RN(n141), .Q(Gx_abs[5]), .QN(n86) );
  DFFRX2 p7_r_reg_2_ ( .D(p7[2]), .CK(clk), .RN(n1490), .Q(p7_r[2]) );
  DFFRX2 Gy_abs_reg_4_ ( .D(N70), .CK(clk), .RN(n1600), .Q(Gy_abs[4]) );
  DFFRX2 p3_r_reg_3_ ( .D(p3[3]), .CK(clk), .RN(n1500), .Q(p3_r[3]) );
  DFFRX2 Gx2_reg_3_ ( .D(N18), .CK(clk), .RN(n1530), .Q(Gx2[3]) );
  DFFRX2 Gx1_reg_3_ ( .D(N8), .CK(clk), .RN(n1470), .Q(Gx1[3]) );
  DFFRHQX1 Gx_acc1_1_r_reg_14_ ( .D(Gx_acc1_r[14]), .CK(clk), .RN(n1570), .Q(
        n851) );
  DFFQX4 Gx_acc3_r_reg_7_ ( .D(n77), .CK(clk), .Q(Gx_acc3_r[7]) );
  DFFRX2 Gx_mult1_r_reg_17_ ( .D(N176), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[17]) );
  DFFRX2 angle_r_reg_1_ ( .D(angle_wait_r[1]), .CK(clk), .RN(n1530), .Q(
        angle[1]) );
  DFFRHQX4 Gx_abs_reg_0_ ( .D(N97), .CK(clk), .RN(n1550), .Q(n48) );
  DFFRX4 p4_r_reg_0_ ( .D(p4[0]), .CK(clk), .RN(n850), .Q(p4_r[0]) );
  DFFRX2 Gy_abs_delay_reg_2__4_ ( .D(Gy_abs_delay[14]), .CK(clk), .RN(n1530), 
        .Q(Gy_abs_delay[22]), .QN(n1040) );
  DFFRHQX1 Gx_acc1_1_r_reg_10_ ( .D(Gx_acc1_r[10]), .CK(clk), .RN(n1570), .Q(
        n3) );
  DFFRX2 p6_r_reg_0_ ( .D(p6[0]), .CK(clk), .RN(n850), .Q(p6_r[0]) );
  DFFRX2 Gx2_reg_8_ ( .D(N23), .CK(clk), .RN(n1460), .Q(Gx2[8]) );
  DFFRX2 p8_r_reg_7_ ( .D(p8[7]), .CK(clk), .RN(n1490), .Q(p8_r[7]) );
  DFFRX2 Gx_acc2_1_r_reg_12_ ( .D(N155), .CK(clk), .RN(n1580), .Q(
        Gx_acc2_1_r[12]) );
  DFFRX2 Gx_mult2_r_reg_12_ ( .D(Gx_acc2_1_r[12]), .CK(clk), .RN(n1560), .Q(
        Gx_mult2_r[12]) );
  DFFRX2 Gx_mult1_r_reg_12_ ( .D(N171), .CK(clk), .RN(n1550), .Q(
        Gx_mult1_r[12]) );
  DFFRHQX1 Gx_acc1_1_r_reg_8_ ( .D(Gx_acc1_r[8]), .CK(clk), .RN(n1560), .Q(n2)
         );
  DFFRHQX1 Gx_mult2_r_reg_8_ ( .D(Gx_acc2_1_r[8]), .CK(clk), .RN(n1560), .Q(n1) );
  INVX4 U3 ( .A(n273), .Y(n277) );
  AOI2BB1X2 U4 ( .A0N(Gx_mult2_r[13]), .A1N(n920), .B0(Gy_abs_delay[23]), .Y(
        n344) );
  NAND4BX2 U5 ( .AN(n1720), .B(n233), .C(n980), .D(n222), .Y(n225) );
  INVX6 U6 ( .A(n233), .Y(n2301) );
  XOR3X1 U7 ( .A(n851), .B(n285), .C(n2400), .Y(N173) );
  OA21X1 U8 ( .A0(n86), .A1(n2100), .B0(n191), .Y(n4) );
  NAND2X2 U9 ( .A(n4), .B(n1781), .Y(n187) );
  NAND3X2 U10 ( .A(n1290), .B(n1301), .C(n1901), .Y(n1781) );
  CLKINVX8 U12 ( .A(n3501), .Y(n354) );
  BUFX8 U13 ( .A(Gx_abs[4]), .Y(n136) );
  NAND2BX2 U25 ( .AN(n600), .B(n304), .Y(n306) );
  INVX3 U26 ( .A(Gy_abs_delay[20]), .Y(n304) );
  INVX3 U27 ( .A(Gy_abs_delay[22]), .Y(n337) );
  BUFX20 U28 ( .A(Gx_abs[6]), .Y(n138) );
  INVX20 U29 ( .A(rst), .Y(n1730) );
  NAND2X1 U30 ( .A(Gx_acc1_1_r[12]), .B(Gx_acc2_1_r[12]), .Y(n278) );
  CLKAND2X8 U31 ( .A(n351), .B(n354), .Y(angle_wait_r[0]) );
  AOI211X4 U32 ( .A0(Gx_mult1_r[10]), .A1(n52), .B0(n316), .C0(n315), .Y(n324)
         );
  INVX3 U33 ( .A(n269), .Y(n264) );
  OR2X4 U34 ( .A(n49), .B(n1310), .Y(n256) );
  BUFX16 U35 ( .A(Gx_abs[5]), .Y(n137) );
  INVX6 U36 ( .A(n237), .Y(n204) );
  AOI32X2 U37 ( .A0(n620), .A1(n306), .A2(n2000), .B0(n580), .B1(n600), .Y(
        n313) );
  AOI2BB1X4 U38 ( .A0N(n241), .A1N(n990), .B0(n2401), .Y(n242) );
  INVX3 U39 ( .A(n244), .Y(n241) );
  AO21X4 U40 ( .A0(n354), .A1(n353), .B0(n352), .Y(angle_wait_r[1]) );
  NAND2X6 U41 ( .A(n248), .B(n246), .Y(n236) );
  OR2X2 U42 ( .A(n1240), .B(n1310), .Y(n248) );
  INVX4 U43 ( .A(n900), .Y(n911) );
  OR2X8 U44 ( .A(Gx_acc2_1_r[13]), .B(n560), .Y(n2801) );
  NAND2X4 U45 ( .A(n2400), .B(n267), .Y(n265) );
  INVX4 U46 ( .A(n197), .Y(n202) );
  OR2X2 U47 ( .A(n1270), .B(n49), .Y(n197) );
  INVX8 U48 ( .A(n288), .Y(n287) );
  AND2X4 U49 ( .A(n209), .B(n228), .Y(n980) );
  NAND2X2 U50 ( .A(n222), .B(n2100), .Y(n228) );
  INVX3 U51 ( .A(n1211), .Y(n1220) );
  NAND2BX4 U52 ( .AN(n46), .B(n246), .Y(n254) );
  NAND2X4 U53 ( .A(Gx_abs[3]), .B(n135), .Y(n246) );
  NAND2X4 U54 ( .A(n238), .B(n237), .Y(n244) );
  AND2X1 U55 ( .A(n2100), .B(n1240), .Y(n990) );
  INVX1 U56 ( .A(n620), .Y(n630) );
  OR2X2 U57 ( .A(n1040), .B(n55), .Y(n338) );
  NAND2X4 U58 ( .A(Gx_mult1_r[11]), .B(n337), .Y(n317) );
  AND4X1 U59 ( .A(n930), .B(n940), .C(n950), .D(n960), .Y(n1050) );
  NAND2X1 U60 ( .A(n870), .B(n134), .Y(n209) );
  OR2X1 U61 ( .A(n660), .B(n670), .Y(n275) );
  AND2X2 U62 ( .A(n3), .B(Gx_acc2_1_r[10]), .Y(n1090) );
  NAND3BX1 U63 ( .AN(n990), .B(n205), .C(n235), .Y(n206) );
  INVX1 U64 ( .A(n205), .Y(n208) );
  INVX3 U65 ( .A(n1401), .Y(n222) );
  NAND2X1 U66 ( .A(Gx_mult1_r[13]), .B(n3000), .Y(n326) );
  BUFX4 U67 ( .A(Gx_abs[7]), .Y(n139) );
  INVX3 U68 ( .A(n135), .Y(n203) );
  NAND2X1 U69 ( .A(n870), .B(n86), .Y(n205) );
  NAND2X1 U70 ( .A(n1260), .B(n86), .Y(n235) );
  INVX1 U71 ( .A(n322), .Y(n316) );
  OAI22X1 U72 ( .A0(n370), .A1(n358), .B0(Gy_abs_delay[23]), .B1(n358), .Y(
        n359) );
  AND3X2 U73 ( .A(n1660), .B(n213), .C(n1020), .Y(n54) );
  INVX3 U74 ( .A(n212), .Y(n213) );
  NAND2X2 U75 ( .A(Gx_acc2_1_r[8]), .B(n2), .Y(n302) );
  CLKINVX1 U76 ( .A(n274), .Y(n276) );
  NAND2X1 U77 ( .A(n560), .B(Gx_acc2_1_r[13]), .Y(n281) );
  INVX3 U78 ( .A(n303), .Y(n284) );
  CLKINVX1 U79 ( .A(n196), .Y(n194) );
  CLKINVX1 U80 ( .A(n254), .Y(n251) );
  AO21X2 U81 ( .A0(n286), .A1(n288), .B0(n1200), .Y(n293) );
  AOI21X1 U82 ( .A0(n1401), .A1(n139), .B0(n1030), .Y(n1011) );
  BUFX12 U83 ( .A(n1710), .Y(n1690) );
  CLKMX2X2 U84 ( .A(Gx_acc3_r[6]), .B(n245), .S0(n1660), .Y(n76) );
  XOR3X1 U85 ( .A(Gx_acc1_1_r[15]), .B(Gx_acc2_1_r[15]), .C(n288), .Y(N174) );
  AOI2BB1X2 U86 ( .A0N(n2201), .A1N(n219), .B0(n650), .Y(n227) );
  AOI211X1 U87 ( .A0(n292), .A1(n2300), .B0(n291), .C0(n2901), .Y(N176) );
  OAI33X1 U88 ( .A0(n288), .A1(Gx_acc1_1_r[17]), .A2(n1200), .B0(n287), .B1(
        n292), .B2(n289), .Y(n291) );
  XOR3X1 U89 ( .A(n137), .B(n242), .C(n870), .Y(n243) );
  CLKMX2X2 U90 ( .A(N96), .B(Gx_imm_r[9]), .S0(n84), .Y(N106) );
  XNOR2X1 U91 ( .A(n293), .B(n53), .Y(N175) );
  CLKMX2X2 U92 ( .A(Gx_acc3_r[8]), .B(n234), .S0(n1660), .Y(n78) );
  XOR3X1 U93 ( .A(n139), .B(n222), .C(n186), .Y(N126) );
  CLKMX2X2 U94 ( .A(N65), .B(Gy_imm_r[9]), .S0(n83), .Y(N75) );
  CLKMX2X2 U95 ( .A(Gx_acc3_r[3]), .B(n257), .S0(n850), .Y(n730) );
  INVX8 U96 ( .A(n1730), .Y(n1660) );
  NAND2XL U97 ( .A(n138), .B(n136), .Y(n239) );
  AND2X2 U98 ( .A(n1401), .B(n138), .Y(n1000) );
  CLKINVX20 U99 ( .A(n1650), .Y(n500) );
  INVX12 U100 ( .A(n500), .Y(n711) );
  CLKINVX20 U101 ( .A(n500), .Y(n850) );
  INVX20 U102 ( .A(n1690), .Y(n1650) );
  CLKINVX3 U103 ( .A(n1690), .Y(n1630) );
  CLKINVX3 U104 ( .A(n1720), .Y(n1611) );
  CLKINVX3 U105 ( .A(n1720), .Y(n1600) );
  BUFX2 U106 ( .A(n1730), .Y(n1710) );
  CLKINVX3 U107 ( .A(n1670), .Y(n1540) );
  CLKBUFX2 U108 ( .A(n1730), .Y(n1720) );
  CLKINVX3 U109 ( .A(n1670), .Y(n1530) );
  CLKINVX3 U110 ( .A(n1690), .Y(n1620) );
  CLKINVX3 U111 ( .A(n1690), .Y(n1640) );
  OAI221X1 U112 ( .A0(n1801), .A1(n181), .B0(n1011), .B1(n1801), .C0(n179), 
        .Y(N128) );
  NAND2X4 U113 ( .A(n1011), .B(n181), .Y(n182) );
  NAND2X1 U114 ( .A(Gx_abs[9]), .B(n1401), .Y(n2101) );
  NAND2X1 U115 ( .A(n198), .B(n197), .Y(n201) );
  AOI21X4 U116 ( .A0(n203), .A1(n1260), .B0(n256), .Y(n46) );
  OR2X1 U117 ( .A(n47), .B(Gy_abs_delay[25]), .Y(n3301) );
  AOI21X1 U118 ( .A0(n212), .A1(n223), .B0(n2101), .Y(n211) );
  INVX3 U119 ( .A(n54), .Y(n214) );
  OR2X8 U120 ( .A(n1770), .B(n1760), .Y(n1301) );
  INVX8 U121 ( .A(n48), .Y(n49) );
  AO21X2 U122 ( .A0(n327), .A1(n3000), .B0(Gx_mult1_r[13]), .Y(n328) );
  INVX12 U123 ( .A(n711), .Y(n650) );
  AND2X4 U124 ( .A(n650), .B(n221), .Y(n226) );
  OR2X2 U125 ( .A(n133), .B(n1720), .Y(n224) );
  AOI21X2 U126 ( .A0(n1240), .A1(n1260), .B0(n1230), .Y(n1740) );
  NOR2X6 U127 ( .A(Gx_abs[2]), .B(Gx_abs[3]), .Y(n1230) );
  INVX3 U128 ( .A(n880), .Y(n890) );
  ACHCINX2 U129 ( .CIN(Gy_abs_delay[26]), .A(Gx_mult1_r[16]), .B(n331), .CO(
        n501) );
  NOR2BX4 U130 ( .AN(n650), .B(Gx_acc3_r[11]), .Y(n216) );
  CLKINVX1 U131 ( .A(n51), .Y(n52) );
  INVX1 U132 ( .A(n187), .Y(n185) );
  NAND2BX1 U133 ( .AN(Gx_mult1_r[11]), .B(Gy_abs_delay[22]), .Y(n3201) );
  OAI211X2 U134 ( .A0(n217), .A1(n216), .B0(n215), .C0(n214), .Y(n81) );
  OAI211X2 U135 ( .A0(n227), .A1(n226), .B0(n225), .C0(n224), .Y(n80) );
  XNOR3X2 U136 ( .A(n134), .B(n870), .C(n231), .Y(n232) );
  OAI221X2 U137 ( .A0(n314), .A1(n313), .B0(Gx_mult1_r[9]), .B1(n312), .C0(
        n311), .Y(n325) );
  AOI32X4 U138 ( .A0(Gy_abs_delay[24]), .A1(n3301), .A2(n2200), .B0(
        Gy_abs_delay[25]), .B1(n47), .Y(n331) );
  AOI32X4 U139 ( .A0(Gx_mult2_r[7]), .A1(n630), .A2(n259), .B0(n1), .B1(n304), 
        .Y(n262) );
  OR2X8 U140 ( .A(n1100), .B(n1), .Y(n259) );
  AOI31XL U141 ( .A0(n1011), .A1(n181), .A2(n2101), .B0(n134), .Y(N129) );
  OAI211X4 U142 ( .A0(n139), .A1(n1401), .B0(n183), .C0(n187), .Y(n181) );
  AOI31X2 U143 ( .A0(n274), .A1(n272), .A2(n273), .B0(n263), .Y(n271) );
  NAND3BX4 U144 ( .AN(n1090), .B(n296), .C(n295), .Y(n273) );
  OAI33X2 U145 ( .A0(n335), .A1(n334), .A2(n333), .B0(n332), .B1(
        Gx_mult1_r[18]), .B2(Gx_mult1_r[17]), .Y(n570) );
  OAI33X1 U146 ( .A0(n335), .A1(n334), .A2(n333), .B0(n501), .B1(
        Gx_mult1_r[18]), .B2(Gx_mult1_r[17]), .Y(n352) );
  NAND2BX2 U147 ( .AN(Gx_abs[2]), .B(n1240), .Y(n247) );
  NAND2X2 U148 ( .A(n137), .B(Gx_abs[3]), .Y(n237) );
  OR2X2 U149 ( .A(Gx_acc2_1_r[10]), .B(n3), .Y(n272) );
  INVX1 U150 ( .A(n1100), .Y(n580) );
  AOI21X2 U151 ( .A0(n343), .A1(n342), .B0(n341), .Y(n920) );
  INVX1 U152 ( .A(n3401), .Y(n341) );
  OAI32X2 U153 ( .A0(n349), .A1(n361), .A2(n348), .B0(Gy_abs_delay[26]), .B1(
        n347), .Y(n3501) );
  NAND2X1 U154 ( .A(n136), .B(Gx_abs[3]), .Y(n189) );
  AOI2BB1X4 U155 ( .A0N(n284), .A1N(n283), .B0(n282), .Y(n285) );
  AND2X1 U156 ( .A(n294), .B(n293), .Y(N177) );
  INVX4 U157 ( .A(n570), .Y(n351) );
  OAI2BB1X2 U158 ( .A0N(n262), .A1N(n261), .B0(n2601), .Y(n355) );
  AOI2BB1X2 U159 ( .A0N(n194), .A1N(n193), .B0(n192), .Y(n195) );
  OAI31X2 U160 ( .A0(n202), .A1(n1750), .A2(n1250), .B0(n1740), .Y(n188) );
  INVX3 U161 ( .A(n3001), .Y(n297) );
  INVX4 U162 ( .A(n590), .Y(n339) );
  NAND2X2 U163 ( .A(n322), .B(n321), .Y(n327) );
  BUFX16 U164 ( .A(N131), .Y(n135) );
  INVX3 U165 ( .A(n189), .Y(n1760) );
  NAND3X2 U166 ( .A(n611), .B(n317), .C(n51), .Y(n319) );
  BUFX6 U167 ( .A(Gx_abs[8]), .Y(n1401) );
  AOI32X2 U168 ( .A0(Gx_mult2_r[10]), .A1(n52), .A2(n338), .B0(n55), .B1(n337), 
        .Y(n343) );
  NAND2X4 U169 ( .A(n980), .B(n233), .Y(n212) );
  OAI211X2 U170 ( .A0(n46), .A1(n236), .B0(n235), .C0(n247), .Y(n238) );
  NAND4BBX2 U171 ( .AN(n218), .BN(n134), .C(n1660), .D(n212), .Y(n215) );
  OAI211X2 U172 ( .A0(n620), .A1(n2000), .B0(n306), .C0(n305), .Y(n309) );
  XOR3X4 U173 ( .A(n134), .B(n1280), .C(n182), .Y(N127) );
  NAND4X4 U174 ( .A(n1011), .B(n181), .C(Gx_abs[9]), .D(n2101), .Y(n179) );
  OR2X1 U175 ( .A(n680), .B(n970), .Y(n296) );
  AOI221X2 U176 ( .A0(n920), .A1(Gx_mult2_r[13]), .B0(n3601), .B1(n359), .C0(
        n344), .Y(n348) );
  XOR3XL U177 ( .A(n560), .B(Gx_acc2_1_r[13]), .C(n303), .Y(N172) );
  NAND3X2 U178 ( .A(n3201), .B(n319), .C(n318), .Y(n321) );
  AOI32X2 U179 ( .A0(n326), .A1(n325), .A2(n324), .B0(Gy_abs_delay[23]), .B1(
        n323), .Y(n329) );
  OAI2BB1X4 U180 ( .A0N(n301), .A1N(n279), .B0(n278), .Y(n303) );
  AO22X4 U181 ( .A0(n1000), .A1(n209), .B0(Gx_abs[9]), .B1(n139), .Y(n218) );
  AOI2BB1X4 U182 ( .A0N(n2301), .A1N(n229), .B0(n1000), .Y(n231) );
  XOR3X2 U183 ( .A(n137), .B(n195), .C(n2100), .Y(N124) );
  CLKMX2X3 U184 ( .A(Gx_acc3_r[9]), .B(n232), .S0(n1660), .Y(n79) );
  OAI221X4 U185 ( .A0(n271), .A1(n2701), .B0(n269), .B1(n278), .C0(n268), .Y(
        n288) );
  OAI211X4 U186 ( .A0(Gx_mult2_r[10]), .A1(n52), .B0(n338), .C0(n3401), .Y(
        n358) );
  OAI21X2 U187 ( .A0(n357), .A1(n356), .B0(n355), .Y(n3601) );
  OR4X4 U188 ( .A(n309), .B(n3101), .C(n308), .D(n307), .Y(n311) );
  AOI2BB1X2 U189 ( .A0N(n185), .A1N(n184), .B0(n1030), .Y(n186) );
  CLKBUFX2 U190 ( .A(n1710), .Y(n1700) );
  AOI221X2 U191 ( .A0(n1020), .A1(n218), .B0(Gx_abs[9]), .B1(n222), .C0(n1700), 
        .Y(n217) );
  NAND2XL U192 ( .A(n345), .B(n336), .Y(n349) );
  AOI2BB1X1 U193 ( .A0N(n298), .A1N(n297), .B0(n1090), .Y(n299) );
  OAI211XL U194 ( .A0(Gx_mult2_r[7]), .A1(n630), .B0(n259), .C0(n2601), .Y(
        n356) );
  CLKMX2X2 U195 ( .A(N64), .B(Gy_imm_r[8]), .S0(n83), .Y(N74) );
  XOR3X1 U196 ( .A(Gx_acc1_1_r[11]), .B(n299), .C(n670), .Y(N170) );
  CLKMX2X2 U197 ( .A(N62), .B(Gy_imm_r[6]), .S0(n83), .Y(N72) );
  CLKMX2X2 U198 ( .A(N93), .B(Gx_imm_r[6]), .S0(n84), .Y(N103) );
  CLKBUFX2 U199 ( .A(n1700), .Y(n1680) );
  CLKBUFX2 U200 ( .A(n1720), .Y(n1670) );
  OAI32X2 U201 ( .A0(n236), .A1(n46), .A2(n204), .B0(n204), .B1(n247), .Y(n207) );
  AOI2BB1XL U202 ( .A0N(n980), .A1N(n222), .B0(n218), .Y(n219) );
  INVXL U203 ( .A(n265), .Y(n266) );
  NAND2XL U204 ( .A(n870), .B(n2100), .Y(n183) );
  OAI31X2 U205 ( .A0(n298), .A1(n277), .A2(n276), .B0(n275), .Y(n301) );
  INVX1 U206 ( .A(n272), .Y(n298) );
  INVXL U207 ( .A(n183), .Y(n184) );
  AND2XL U208 ( .A(n1401), .B(n218), .Y(n2201) );
  AND2XL U209 ( .A(n1401), .B(n134), .Y(n1020) );
  XOR3XL U210 ( .A(n137), .B(n136), .C(n196), .Y(N123) );
  NAND2XL U211 ( .A(n296), .B(n295), .Y(n3001) );
  XOR3XL U212 ( .A(n136), .B(n2001), .C(n1260), .Y(N122) );
  AOI2BB1XL U213 ( .A0N(n199), .A1N(n1230), .B0(n1250), .Y(n2001) );
  XOR3XL U214 ( .A(Gx_abs[2]), .B(n135), .C(n202), .Y(N120) );
  XNOR3XL U215 ( .A(Gx_abs[3]), .B(n135), .C(n256), .Y(n257) );
  MX2XL U216 ( .A(Gx_acc3_r[4]), .B(n255), .S0(n1660), .Y(n740) );
  XOR3XL U217 ( .A(n136), .B(Gx_abs[2]), .C(n254), .Y(n255) );
  XOR3XL U218 ( .A(n136), .B(n138), .C(n244), .Y(n245) );
  MX2XL U219 ( .A(Gx_acc3_r[2]), .B(n258), .S0(n1660), .Y(n720) );
  XOR2XL U220 ( .A(n48), .B(Gx_abs[2]), .Y(n258) );
  INVXL U221 ( .A(n2801), .Y(n283) );
  MX2X1 U222 ( .A(N63), .B(Gy_imm_r[7]), .S0(n83), .Y(N73) );
  MX2X1 U223 ( .A(N94), .B(Gx_imm_r[7]), .S0(n84), .Y(N104) );
  NAND3BXL U224 ( .AN(Gx_mult1_r[17]), .B(n3301), .C(n3500), .Y(n335) );
  XOR3XL U225 ( .A(Gx_acc1_1_r[12]), .B(Gx_acc2_1_r[12]), .C(n301), .Y(N171)
         );
  INVXL U226 ( .A(n317), .Y(n315) );
  MX2X1 U227 ( .A(N61), .B(Gy_imm_r[5]), .S0(n83), .Y(N71) );
  CLKINVX1 U228 ( .A(n851), .Y(n267) );
  MX2X1 U229 ( .A(N92), .B(Gx_imm_r[5]), .S0(n84), .Y(N102) );
  MX2XL U230 ( .A(N59), .B(Gy_imm_r[3]), .S0(n83), .Y(N69) );
  MX2XL U231 ( .A(N90), .B(Gx_imm_r[3]), .S0(n84), .Y(N100) );
  AOI32XL U232 ( .A0(Gx_mult2_r[14]), .A1(n346), .A2(n345), .B0(Gx_mult2_r[15]), .B1(n1190), .Y(n347) );
  MX2XL U233 ( .A(N58), .B(Gy_imm_r[2]), .S0(n83), .Y(N68) );
  XOR3XL U234 ( .A(n3), .B(Gx_acc2_1_r[10]), .C(n3001), .Y(N169) );
  MX2XL U235 ( .A(N89), .B(Gx_imm_r[2]), .S0(n84), .Y(N99) );
  XOR3XL U236 ( .A(Gx_acc1_1_r[9]), .B(n970), .C(n302), .Y(N168) );
  INVXL U237 ( .A(Gx_acc3_r[10]), .Y(n221) );
  XOR2XL U238 ( .A(n48), .B(n135), .Y(N119) );
  XOR2XL U239 ( .A(Gx_acc2_1_r[8]), .B(n2), .Y(N167) );
  INVX3 U240 ( .A(n1680), .Y(n1560) );
  INVX3 U241 ( .A(n1680), .Y(n1570) );
  INVX3 U242 ( .A(n1680), .Y(n1580) );
  INVX3 U243 ( .A(n1680), .Y(n1590) );
  INVX3 U244 ( .A(n1680), .Y(n142) );
  INVX3 U245 ( .A(n1680), .Y(n1430) );
  INVX3 U246 ( .A(n1680), .Y(n1440) );
  INVX3 U247 ( .A(n1680), .Y(n1450) );
  INVX3 U248 ( .A(n1670), .Y(n1460) );
  INVX3 U249 ( .A(n1680), .Y(n1470) );
  INVX3 U250 ( .A(n1680), .Y(n1480) );
  INVX3 U251 ( .A(n1670), .Y(n1511) );
  INVX3 U252 ( .A(n1670), .Y(n141) );
  INVX3 U253 ( .A(n1670), .Y(n1550) );
  INVX3 U254 ( .A(n1670), .Y(n1500) );
  INVX3 U255 ( .A(n1670), .Y(n1520) );
  INVX3 U256 ( .A(n1670), .Y(n1490) );
  NAND2X1 U257 ( .A(n189), .B(n132), .Y(n196) );
  NAND2X1 U258 ( .A(n1240), .B(n86), .Y(n1901) );
  CLKINVX1 U259 ( .A(n247), .Y(n2501) );
  OR2X1 U260 ( .A(n137), .B(n138), .Y(n1290) );
  INVX3 U261 ( .A(n188), .Y(n1770) );
  INVX3 U262 ( .A(n198), .Y(n1750) );
  NAND2X1 U263 ( .A(n1401), .B(n134), .Y(n1801) );
  OA22X1 U264 ( .A0(n2400), .A1(n267), .B0(n266), .B1(n281), .Y(n268) );
  NAND2X1 U265 ( .A(n264), .B(n279), .Y(n2701) );
  CLKINVX1 U266 ( .A(n191), .Y(n192) );
  CLKINVX1 U267 ( .A(n1901), .Y(n193) );
  CLKINVX1 U268 ( .A(n327), .Y(n323) );
  NAND2X1 U269 ( .A(n2801), .B(n265), .Y(n269) );
  CLKINVX1 U270 ( .A(n201), .Y(n199) );
  CLKINVX1 U271 ( .A(n275), .Y(n263) );
  NAND2X1 U272 ( .A(n137), .B(n136), .Y(n191) );
  AND2X2 U273 ( .A(n139), .B(n138), .Y(n1030) );
  CLKINVX1 U274 ( .A(n289), .Y(n294) );
  CLKINVX1 U275 ( .A(n286), .Y(n292) );
  CLKINVX1 U276 ( .A(n228), .Y(n229) );
  CLKMX2X2 U277 ( .A(Gx_acc3_r[0]), .B(n48), .S0(n850), .Y(n700) );
  CLKMX2X2 U278 ( .A(Gx_acc3_r[1]), .B(n135), .S0(n850), .Y(n710) );
  CLKMX2X2 U279 ( .A(Gx_acc3_r[12]), .B(n211), .S0(n850), .Y(n82) );
  CLKMX2X2 U280 ( .A(Gx_acc3_r[5]), .B(n253), .S0(n1660), .Y(n750) );
  XOR3X1 U281 ( .A(n137), .B(n252), .C(n1260), .Y(n253) );
  AOI2BB1X1 U282 ( .A0N(n251), .A1N(n2501), .B0(n249), .Y(n252) );
  CLKINVX1 U283 ( .A(n248), .Y(n249) );
  CLKMX2X2 U284 ( .A(Gx_acc3_r[7]), .B(n243), .S0(n1660), .Y(n77) );
  CLKINVX1 U285 ( .A(n239), .Y(n2401) );
  OR2X2 U286 ( .A(n339), .B(Gx_mult2_r[12]), .Y(n3401) );
  XNOR2X1 U287 ( .A(Gy_delay[3]), .B(n690), .Y(n353) );
  AND4X1 U288 ( .A(n1050), .B(n1060), .C(n1070), .D(n1080), .Y(n357) );
  CLKINVX1 U289 ( .A(n281), .Y(n282) );
  AND2X2 U290 ( .A(Gx_mult1_r[16]), .B(n336), .Y(n334) );
  CLKINVX1 U291 ( .A(n305), .Y(n314) );
  INVX3 U292 ( .A(Gy_abs_delay[21]), .Y(n312) );
  AO22X1 U293 ( .A0(n1200), .A1(n294), .B0(n53), .B1(n2300), .Y(n2901) );
  NAND2X1 U294 ( .A(Gx_mult2_r[9]), .B(n312), .Y(n261) );
  OR2X2 U295 ( .A(n1110), .B(Gx_mult2_r[9]), .Y(n2601) );
  NAND3X1 U296 ( .A(n1120), .B(n1130), .C(n1140), .Y(n307) );
  NAND2X1 U297 ( .A(Gx_mult2_r[12]), .B(n339), .Y(n342) );
  NAND2X1 U298 ( .A(n1150), .B(n1160), .Y(n308) );
  NAND2BX1 U299 ( .AN(Gx_mult1_r[12]), .B(n590), .Y(n318) );
  NAND2X1 U300 ( .A(n1170), .B(n1181), .Y(n3101) );
  NAND2X1 U301 ( .A(Gx_mult1_r[12]), .B(n339), .Y(n322) );
  CLKMX2X2 U302 ( .A(N95), .B(Gx_imm_r[8]), .S0(n84), .Y(N105) );
  NAND2X1 U303 ( .A(n670), .B(n660), .Y(n274) );
  OR2X1 U304 ( .A(Gx_acc2_1_r[12]), .B(Gx_acc1_1_r[12]), .Y(n279) );
  OR2X1 U305 ( .A(n1190), .B(Gx_mult2_r[15]), .Y(n345) );
  CLKMX2X2 U306 ( .A(N60), .B(Gy_imm_r[4]), .S0(n83), .Y(N70) );
  CLKMX2X2 U307 ( .A(N91), .B(Gx_imm_r[4]), .S0(n84), .Y(N101) );
  NAND2X1 U308 ( .A(Gx_acc1_1_r[17]), .B(Gx_acc1_1_r[16]), .Y(n289) );
  OR2X1 U309 ( .A(Gx_acc2_1_r[15]), .B(Gx_acc1_1_r[15]), .Y(n286) );
  AND2X2 U310 ( .A(Gx_acc1_1_r[15]), .B(Gx_acc2_1_r[15]), .Y(n1200) );
  MX2XL U311 ( .A(N57), .B(Gy_imm_r[1]), .S0(n83), .Y(N67) );
  MX2XL U312 ( .A(N88), .B(Gx_imm_r[1]), .S0(n84), .Y(N98) );
  MX2XL U313 ( .A(N56), .B(n880), .S0(n83), .Y(N66) );
  MX2XL U314 ( .A(N87), .B(n900), .S0(n84), .Y(N97) );
  NOR2X1 U315 ( .A(n1260), .B(n1310), .Y(n1250) );
  OR2X2 U316 ( .A(n1270), .B(n1310), .Y(n198) );
  XOR3XL U317 ( .A(Gx_abs[3]), .B(Gx_abs[2]), .C(n201), .Y(N121) );
  XOR3XL U318 ( .A(n138), .B(n1401), .C(n233), .Y(n234) );
  INVXL U319 ( .A(n1770), .Y(n132) );
  OAI222X4 U320 ( .A0(n86), .A1(n870), .B0(n208), .B1(n239), .C0(n207), .C1(
        n206), .Y(n233) );
  NAND3XL U321 ( .A(n2301), .B(n223), .C(n1401), .Y(n133) );
  CLKINVX1 U322 ( .A(n218), .Y(n223) );
  XOR3XL U323 ( .A(n187), .B(n139), .C(n138), .Y(N125) );
  AO21X4 U324 ( .A0(n970), .A1(n680), .B0(n302), .Y(n295) );
  NAND2X2 U325 ( .A(Gx_mult1_r[9]), .B(n312), .Y(n305) );
  AO22X4 U326 ( .A0(n329), .A1(n328), .B0(Gx_mult1_r[14]), .B1(n346), .Y(n333)
         );
  ACHCINX2 U327 ( .CIN(Gy_abs_delay[26]), .A(Gx_mult1_r[16]), .B(n331), .CO(
        n332) );
  NOR2BX1 U328 ( .AN(Gy_abs_delay[24]), .B(Gx_mult2_r[14]), .Y(n361) );
endmodule


module sobel_gradient_DW01_add_18 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n61, n62, n101, n102, n103, n104, n105;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  NOR2X2 U77 ( .A(B[2]), .B(A[2]), .Y(n48) );
  OR2X4 U78 ( .A(n34), .B(n40), .Y(n103) );
  NOR2X2 U79 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NOR2X1 U80 ( .A(n39), .B(n34), .Y(n28) );
  CLKINVX1 U81 ( .A(n29), .Y(n31) );
  AOI21X4 U82 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  OAI21X2 U83 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  XOR2X1 U84 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  OAI21X2 U85 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  OAI21X1 U86 ( .A0(n50), .A1(n48), .B0(n49), .Y(n47) );
  CLKBUFX3 U87 ( .A(n23), .Y(n101) );
  OAI21X1 U88 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  NAND2X1 U89 ( .A(B[4]), .B(A[4]), .Y(n40) );
  NAND2X2 U90 ( .A(n28), .B(n16), .Y(n14) );
  AO21XL U91 ( .A0(n41), .A1(n28), .B0(n29), .Y(n104) );
  OR2XL U92 ( .A(B[3]), .B(A[3]), .Y(n102) );
  NAND2X8 U93 ( .A(n103), .B(n35), .Y(n29) );
  NAND2X1 U94 ( .A(B[5]), .B(A[5]), .Y(n35) );
  AOI21X2 U95 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  OAI21XL U96 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  INVX3 U97 ( .A(n42), .Y(n41) );
  INVXL U98 ( .A(n51), .Y(n50) );
  XNOR2X1 U99 ( .A(n104), .B(n2), .Y(SUM[6]) );
  XNOR2XL U100 ( .A(n41), .B(n4), .Y(SUM[4]) );
  NAND2XL U101 ( .A(n59), .B(n40), .Y(n4) );
  NOR2BXL U102 ( .AN(n28), .B(n101), .Y(n21) );
  XOR2XL U103 ( .A(n50), .B(n6), .Y(SUM[2]) );
  NAND2XL U104 ( .A(n61), .B(n49), .Y(n6) );
  INVXL U105 ( .A(n39), .Y(n59) );
  INVXL U106 ( .A(n40), .Y(n38) );
  XOR2XL U107 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2XL U108 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U109 ( .A(n52), .Y(n62) );
  NOR2X1 U110 ( .A(B[3]), .B(A[3]), .Y(n45) );
  NAND2XL U111 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NOR2X1 U112 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2X1 U113 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2XL U114 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NAND2BXL U115 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U116 ( .A(B[0]), .B(A[0]), .Y(n54) );
  NOR2X1 U117 ( .A(n48), .B(n45), .Y(n43) );
  XOR2X1 U118 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U119 ( .A(n58), .B(n35), .Y(n3) );
  AOI21X1 U120 ( .A0(n41), .A1(n59), .B0(n38), .Y(n36) );
  CLKINVX1 U121 ( .A(n34), .Y(n58) );
  NAND2X1 U122 ( .A(n57), .B(n26), .Y(n2) );
  CLKINVX1 U123 ( .A(n101), .Y(n57) );
  XOR2X1 U124 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U125 ( .A(n56), .B(n19), .Y(n1) );
  AOI21X1 U126 ( .A0(n41), .A1(n21), .B0(n22), .Y(n20) );
  CLKINVX1 U127 ( .A(n18), .Y(n56) );
  NOR2X1 U128 ( .A(n23), .B(n18), .Y(n16) );
  OAI21XL U129 ( .A0(n31), .A1(n101), .B0(n26), .Y(n22) );
  XNOR2X1 U130 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U131 ( .A(n102), .B(n46), .Y(n5) );
  CLKINVX1 U132 ( .A(n48), .Y(n61) );
  NAND2X1 U133 ( .A(B[0]), .B(A[0]), .Y(n55) );
  NOR2X1 U134 ( .A(B[1]), .B(A[1]), .Y(n52) );
  NAND2X1 U135 ( .A(B[1]), .B(A[1]), .Y(n53) );
  NAND2X1 U136 ( .A(B[2]), .B(A[2]), .Y(n49) );
  XOR2X1 U137 ( .A(n105), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U138 ( .A(n13), .B(A[8]), .Y(n105) );
  NAND2X1 U139 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NOR2X1 U140 ( .A(B[4]), .B(A[4]), .Y(n39) );
  CLKINVX1 U141 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_17 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n38, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n61, n62, n101, n102, n103, n104, n105, n106, n107;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  NOR2BX4 U77 ( .AN(n101), .B(n34), .Y(n28) );
  CLKINVX1 U78 ( .A(n29), .Y(n31) );
  INVX4 U79 ( .A(n42), .Y(n41) );
  OR2X1 U80 ( .A(B[4]), .B(A[4]), .Y(n101) );
  OR2X1 U81 ( .A(B[7]), .B(A[7]), .Y(n102) );
  OAI21X4 U82 ( .A0(n34), .A1(n40), .B0(n35), .Y(n29) );
  NAND2X1 U83 ( .A(B[5]), .B(A[5]), .Y(n35) );
  OAI21X2 U84 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  AOI21X4 U85 ( .A0(n43), .A1(n51), .B0(n44), .Y(n42) );
  OAI21X2 U86 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  AOI21X2 U87 ( .A0(n21), .A1(n41), .B0(n22), .Y(n20) );
  OAI21X1 U88 ( .A0(n50), .A1(n48), .B0(n49), .Y(n47) );
  OAI21X2 U89 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  OR2XL U90 ( .A(B[6]), .B(A[6]), .Y(n103) );
  OR2XL U91 ( .A(B[3]), .B(A[3]), .Y(n104) );
  OR2XL U92 ( .A(B[5]), .B(A[5]), .Y(n105) );
  AO21X4 U93 ( .A0(n41), .A1(n28), .B0(n29), .Y(n106) );
  AOI21X2 U94 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  OAI21XL U95 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  INVXL U96 ( .A(n51), .Y(n50) );
  XNOR2X1 U97 ( .A(n106), .B(n2), .Y(SUM[6]) );
  XNOR2XL U98 ( .A(n41), .B(n4), .Y(SUM[4]) );
  NAND2XL U99 ( .A(n101), .B(n40), .Y(n4) );
  NOR2BXL U100 ( .AN(n28), .B(n23), .Y(n21) );
  XOR2XL U101 ( .A(n50), .B(n6), .Y(SUM[2]) );
  NAND2XL U102 ( .A(n61), .B(n49), .Y(n6) );
  INVXL U103 ( .A(n40), .Y(n38) );
  XOR2XL U104 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2XL U105 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U106 ( .A(n52), .Y(n62) );
  NOR2X1 U107 ( .A(B[3]), .B(A[3]), .Y(n45) );
  NOR2X1 U108 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2XL U109 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NOR2X1 U110 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2X1 U111 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NOR2X1 U112 ( .A(B[2]), .B(A[2]), .Y(n48) );
  NAND2XL U113 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NAND2BXL U114 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U115 ( .A(B[0]), .B(A[0]), .Y(n54) );
  NOR2X1 U116 ( .A(n48), .B(n45), .Y(n43) );
  XOR2X1 U117 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U118 ( .A(n105), .B(n35), .Y(n3) );
  AOI21X1 U119 ( .A0(n41), .A1(n101), .B0(n38), .Y(n36) );
  NAND2X1 U120 ( .A(n103), .B(n26), .Y(n2) );
  XOR2X1 U121 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U122 ( .A(n102), .B(n19), .Y(n1) );
  NAND2X1 U123 ( .A(n28), .B(n16), .Y(n14) );
  NOR2X1 U124 ( .A(n23), .B(n18), .Y(n16) );
  OAI21XL U125 ( .A0(n31), .A1(n23), .B0(n26), .Y(n22) );
  XNOR2X1 U126 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U127 ( .A(n104), .B(n46), .Y(n5) );
  CLKINVX1 U128 ( .A(n48), .Y(n61) );
  NAND2X1 U129 ( .A(B[0]), .B(A[0]), .Y(n55) );
  NOR2X1 U130 ( .A(B[1]), .B(A[1]), .Y(n52) );
  NAND2X1 U131 ( .A(B[1]), .B(A[1]), .Y(n53) );
  NAND2X1 U132 ( .A(B[2]), .B(A[2]), .Y(n49) );
  XOR2X1 U133 ( .A(n107), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U134 ( .A(n13), .B(A[8]), .Y(n107) );
  NAND2X1 U135 ( .A(B[4]), .B(A[4]), .Y(n40) );
  XOR2X1 U136 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  NAND2X1 U137 ( .A(B[6]), .B(A[6]), .Y(n26) );
  CLKINVX1 U138 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_16 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n38, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n60, n61, n62, n101, n102, n103, n104, n105, n106;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  NOR2X1 U77 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NOR2X1 U78 ( .A(B[1]), .B(A[1]), .Y(n52) );
  CLKINVX1 U79 ( .A(n29), .Y(n31) );
  AO21X2 U80 ( .A0(n41), .A1(n28), .B0(n29), .Y(n105) );
  NAND2X1 U81 ( .A(B[5]), .B(A[5]), .Y(n35) );
  OR2X1 U82 ( .A(B[4]), .B(A[4]), .Y(n101) );
  NAND2X1 U83 ( .A(B[4]), .B(A[4]), .Y(n40) );
  CLKAND2X3 U84 ( .A(n61), .B(n60), .Y(n43) );
  INVX2 U85 ( .A(n48), .Y(n61) );
  INVX2 U86 ( .A(n45), .Y(n60) );
  OAI21X2 U87 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  NAND2X1 U88 ( .A(B[0]), .B(A[0]), .Y(n55) );
  OAI21X1 U89 ( .A0(n31), .A1(n23), .B0(n26), .Y(n22) );
  NOR2X2 U90 ( .A(B[6]), .B(A[6]), .Y(n23) );
  OAI21X1 U91 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  AOI21X4 U92 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  OAI21X1 U93 ( .A0(n50), .A1(n48), .B0(n49), .Y(n47) );
  OAI21X1 U94 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  OR2XL U95 ( .A(B[7]), .B(A[7]), .Y(n102) );
  NOR2BX4 U96 ( .AN(n101), .B(n34), .Y(n28) );
  OR2XL U97 ( .A(B[6]), .B(A[6]), .Y(n103) );
  OR2XL U98 ( .A(B[5]), .B(A[5]), .Y(n104) );
  AOI21X2 U99 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  OAI21X2 U100 ( .A0(n34), .A1(n40), .B0(n35), .Y(n29) );
  INVX3 U101 ( .A(n42), .Y(n41) );
  INVXL U102 ( .A(n51), .Y(n50) );
  OAI21X1 U103 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  XNOR2X1 U104 ( .A(n105), .B(n2), .Y(SUM[6]) );
  XNOR2XL U105 ( .A(n41), .B(n4), .Y(SUM[4]) );
  NAND2XL U106 ( .A(n101), .B(n40), .Y(n4) );
  NOR2BXL U107 ( .AN(n28), .B(n23), .Y(n21) );
  XOR2XL U108 ( .A(n50), .B(n6), .Y(SUM[2]) );
  NAND2XL U109 ( .A(n61), .B(n49), .Y(n6) );
  INVXL U110 ( .A(n40), .Y(n38) );
  XOR2XL U111 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2XL U112 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U113 ( .A(n52), .Y(n62) );
  NOR2X1 U114 ( .A(B[3]), .B(A[3]), .Y(n45) );
  NAND2XL U115 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NOR2X1 U116 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NOR2X1 U117 ( .A(B[2]), .B(A[2]), .Y(n48) );
  NAND2XL U118 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NAND2BXL U119 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U120 ( .A(B[0]), .B(A[0]), .Y(n54) );
  XOR2X1 U121 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U122 ( .A(n104), .B(n35), .Y(n3) );
  AOI21X1 U123 ( .A0(n41), .A1(n101), .B0(n38), .Y(n36) );
  NAND2X1 U124 ( .A(n103), .B(n26), .Y(n2) );
  XOR2X1 U125 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U126 ( .A(n102), .B(n19), .Y(n1) );
  AOI21X1 U127 ( .A0(n41), .A1(n21), .B0(n22), .Y(n20) );
  NAND2X1 U128 ( .A(n28), .B(n16), .Y(n14) );
  NOR2X1 U129 ( .A(n23), .B(n18), .Y(n16) );
  XNOR2X1 U130 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U131 ( .A(n60), .B(n46), .Y(n5) );
  NAND2X1 U132 ( .A(B[1]), .B(A[1]), .Y(n53) );
  NAND2X1 U133 ( .A(B[2]), .B(A[2]), .Y(n49) );
  XOR2X1 U134 ( .A(n106), .B(A[9]), .Y(SUM[9]) );
  AND2X2 U135 ( .A(n13), .B(A[8]), .Y(n106) );
  XOR2X1 U136 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  NAND2X1 U137 ( .A(B[6]), .B(A[6]), .Y(n26) );
  CLKINVX1 U138 ( .A(n8), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_15 ( A, SUM, \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  input [9:0] A;
  output [9:0] SUM;
  input \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n26, n28, n29, n31, n34, n35, n36, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n57, n58, n59, n60, n61, n62, n101, n102, n103, n104;
  wire   [7:0] B;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  INVX3 U77 ( .A(n29), .Y(n31) );
  NOR2X2 U78 ( .A(B[2]), .B(A[2]), .Y(n48) );
  NAND2X2 U79 ( .A(n102), .B(n35), .Y(n29) );
  AND2X2 U80 ( .A(n13), .B(A[8]), .Y(n104) );
  AO21X2 U81 ( .A0(n41), .A1(n28), .B0(n29), .Y(n103) );
  NOR2X2 U82 ( .A(B[6]), .B(A[6]), .Y(n23) );
  INVX1 U83 ( .A(n51), .Y(n50) );
  NAND2X1 U84 ( .A(B[4]), .B(A[4]), .Y(n40) );
  AOI21X4 U85 ( .A0(n51), .A1(n43), .B0(n44), .Y(n42) );
  OAI21X1 U86 ( .A0(n45), .A1(n49), .B0(n46), .Y(n44) );
  OAI21X4 U87 ( .A0(n42), .A1(n14), .B0(n15), .Y(n13) );
  OAI21X1 U88 ( .A0(n50), .A1(n48), .B0(n49), .Y(n47) );
  OR2XL U89 ( .A(B[7]), .B(A[7]), .Y(n101) );
  OR2X4 U90 ( .A(n34), .B(n40), .Y(n102) );
  NOR2X2 U91 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2X1 U92 ( .A(B[5]), .B(A[5]), .Y(n35) );
  AOI21X2 U93 ( .A0(n29), .A1(n16), .B0(n17), .Y(n15) );
  OAI21XL U94 ( .A0(n18), .A1(n26), .B0(n19), .Y(n17) );
  NOR2X1 U95 ( .A(n39), .B(n34), .Y(n28) );
  INVX3 U96 ( .A(n42), .Y(n41) );
  XNOR2X1 U97 ( .A(n103), .B(n2), .Y(SUM[6]) );
  XNOR2XL U98 ( .A(n41), .B(n4), .Y(SUM[4]) );
  NAND2XL U99 ( .A(n59), .B(n40), .Y(n4) );
  NOR2BXL U100 ( .AN(n28), .B(n23), .Y(n21) );
  XOR2XL U101 ( .A(n50), .B(n6), .Y(SUM[2]) );
  NAND2XL U102 ( .A(n61), .B(n49), .Y(n6) );
  INVXL U103 ( .A(n39), .Y(n59) );
  INVXL U104 ( .A(n40), .Y(n38) );
  XOR2XL U105 ( .A(n7), .B(n55), .Y(SUM[1]) );
  NAND2XL U106 ( .A(n62), .B(n53), .Y(n7) );
  INVXL U107 ( .A(n52), .Y(n62) );
  NOR2X1 U108 ( .A(B[3]), .B(A[3]), .Y(n45) );
  NAND2XL U109 ( .A(B[3]), .B(A[3]), .Y(n46) );
  NOR2X1 U110 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2XL U111 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NAND2BXL U112 ( .AN(n54), .B(n55), .Y(n8) );
  NOR2XL U113 ( .A(B[0]), .B(A[0]), .Y(n54) );
  OAI21X1 U114 ( .A0(n52), .A1(n55), .B0(n53), .Y(n51) );
  NOR2X1 U115 ( .A(n48), .B(n45), .Y(n43) );
  XOR2X1 U116 ( .A(n36), .B(n3), .Y(SUM[5]) );
  NAND2X1 U117 ( .A(n58), .B(n35), .Y(n3) );
  AOI21X1 U118 ( .A0(n41), .A1(n59), .B0(n38), .Y(n36) );
  CLKINVX1 U119 ( .A(n34), .Y(n58) );
  NAND2X1 U120 ( .A(n57), .B(n26), .Y(n2) );
  CLKINVX1 U121 ( .A(n23), .Y(n57) );
  XOR2X1 U122 ( .A(n20), .B(n1), .Y(SUM[7]) );
  NAND2X1 U123 ( .A(n101), .B(n19), .Y(n1) );
  AOI21X1 U124 ( .A0(n41), .A1(n21), .B0(n22), .Y(n20) );
  NAND2X1 U125 ( .A(n28), .B(n16), .Y(n14) );
  NOR2X1 U126 ( .A(n23), .B(n18), .Y(n16) );
  OAI21XL U127 ( .A0(n31), .A1(n23), .B0(n26), .Y(n22) );
  XNOR2X1 U128 ( .A(n47), .B(n5), .Y(SUM[3]) );
  NAND2X1 U129 ( .A(n60), .B(n46), .Y(n5) );
  CLKINVX1 U130 ( .A(n45), .Y(n60) );
  CLKINVX1 U131 ( .A(n48), .Y(n61) );
  NAND2X1 U132 ( .A(B[0]), .B(A[0]), .Y(n55) );
  NOR2X1 U133 ( .A(B[1]), .B(A[1]), .Y(n52) );
  NAND2X1 U134 ( .A(B[1]), .B(A[1]), .Y(n53) );
  NAND2X1 U135 ( .A(B[2]), .B(A[2]), .Y(n49) );
  XOR2X1 U136 ( .A(n104), .B(A[9]), .Y(SUM[9]) );
  XOR2X1 U137 ( .A(n13), .B(A[8]), .Y(SUM[8]) );
  NAND2X1 U138 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NOR2X1 U139 ( .A(B[4]), .B(A[4]), .Y(n39) );
  CLKINVX1 U140 ( .A(n8), .Y(SUM[0]) );
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
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;
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

  INVX3 U95 ( .A(n58), .Y(n57) );
  NAND2X1 U96 ( .A(n73), .B(A[7]), .Y(n26) );
  OAI21X2 U97 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NOR2X2 U98 ( .A(n55), .B(n52), .Y(n50) );
  NOR2X2 U99 ( .A(n77), .B(A[3]), .Y(n52) );
  INVX3 U100 ( .A(B[5]), .Y(n75) );
  NAND2X4 U101 ( .A(n74), .B(A[6]), .Y(n33) );
  NOR2X2 U102 ( .A(n73), .B(A[7]), .Y(n25) );
  CLKINVX1 U103 ( .A(B[6]), .Y(n74) );
  CLKINVX1 U104 ( .A(B[2]), .Y(n78) );
  OAI21XL U105 ( .A0(n25), .A1(n33), .B0(n26), .Y(n24) );
  NOR2X1 U106 ( .A(n78), .B(A[2]), .Y(n55) );
  AOI21X1 U107 ( .A0(n48), .A1(n67), .B0(n45), .Y(n43) );
  AOI21X2 U108 ( .A0(n36), .A1(n23), .B0(n24), .Y(n22) );
  OAI21X1 U109 ( .A0(n38), .A1(n30), .B0(n33), .Y(n29) );
  INVX2 U110 ( .A(n36), .Y(n38) );
  NOR2X2 U111 ( .A(n46), .B(n41), .Y(n35) );
  AOI21X4 U112 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  NOR2X2 U113 ( .A(n74), .B(A[6]), .Y(n30) );
  NOR2X2 U114 ( .A(n30), .B(n25), .Y(n23) );
  OAI21X2 U115 ( .A0(n59), .A1(n61), .B0(n60), .Y(n58) );
  INVX4 U116 ( .A(n49), .Y(n48) );
  NOR2X2 U117 ( .A(n75), .B(A[5]), .Y(n41) );
  OAI21X2 U118 ( .A0(n41), .A1(n47), .B0(n42), .Y(n36) );
  AOI21X4 U119 ( .A0(n20), .A1(n63), .B0(n17), .Y(n15) );
  XNOR2X1 U120 ( .A(n20), .B(n2), .Y(DIFF[8]) );
  OAI21X2 U121 ( .A0(n49), .A1(n21), .B0(n22), .Y(n20) );
  INVXL U122 ( .A(n30), .Y(n65) );
  INVXL U123 ( .A(n52), .Y(n68) );
  NOR2X1 U124 ( .A(n76), .B(A[4]), .Y(n46) );
  NAND2XL U125 ( .A(n65), .B(n33), .Y(n4) );
  AOI21XL U126 ( .A0(n20), .A1(n11), .B0(n12), .Y(DIFF[10]) );
  XNOR2XL U127 ( .A(n48), .B(n6), .Y(DIFF[4]) );
  NAND2XL U128 ( .A(n67), .B(n47), .Y(n6) );
  NAND2XL U129 ( .A(n68), .B(n53), .Y(n7) );
  NOR2BXL U130 ( .AN(n35), .B(n30), .Y(n28) );
  XOR2XL U131 ( .A(n57), .B(n8), .Y(DIFF[2]) );
  NAND2XL U132 ( .A(n69), .B(n56), .Y(n8) );
  INVXL U133 ( .A(n47), .Y(n45) );
  XOR2XL U134 ( .A(n9), .B(n61), .Y(DIFF[1]) );
  NAND2XL U135 ( .A(n70), .B(n60), .Y(n9) );
  INVXL U136 ( .A(n59), .Y(n70) );
  NAND2XL U137 ( .A(n75), .B(A[5]), .Y(n42) );
  NOR2X1 U138 ( .A(n71), .B(A[9]), .Y(n13) );
  XNOR2XL U139 ( .A(n80), .B(A[0]), .Y(DIFF[0]) );
  NAND2X1 U140 ( .A(n35), .B(n23), .Y(n21) );
  XOR2X1 U141 ( .A(n15), .B(n1), .Y(DIFF[9]) );
  NAND2X1 U142 ( .A(n62), .B(n14), .Y(n1) );
  CLKINVX1 U143 ( .A(n13), .Y(n62) );
  XOR2X1 U144 ( .A(n43), .B(n5), .Y(DIFF[5]) );
  NAND2X1 U145 ( .A(n66), .B(n42), .Y(n5) );
  CLKINVX1 U146 ( .A(n41), .Y(n66) );
  XOR2X1 U147 ( .A(n34), .B(n4), .Y(DIFF[6]) );
  AOI21X1 U148 ( .A0(n48), .A1(n35), .B0(n36), .Y(n34) );
  XOR2X1 U149 ( .A(n27), .B(n3), .Y(DIFF[7]) );
  NAND2X1 U150 ( .A(n64), .B(n26), .Y(n3) );
  AOI21X1 U151 ( .A0(n48), .A1(n28), .B0(n29), .Y(n27) );
  CLKINVX1 U152 ( .A(n25), .Y(n64) );
  NAND2X1 U153 ( .A(n63), .B(n19), .Y(n2) );
  OAI21XL U154 ( .A0(n13), .A1(n19), .B0(n14), .Y(n12) );
  NOR2X1 U155 ( .A(n18), .B(n13), .Y(n11) );
  XNOR2X1 U156 ( .A(n54), .B(n7), .Y(DIFF[3]) );
  OAI21XL U157 ( .A0(n57), .A1(n55), .B0(n56), .Y(n54) );
  CLKINVX1 U158 ( .A(n55), .Y(n69) );
  CLKINVX1 U159 ( .A(n46), .Y(n67) );
  CLKINVX1 U160 ( .A(n18), .Y(n63) );
  CLKINVX1 U161 ( .A(n19), .Y(n17) );
  CLKINVX1 U162 ( .A(B[1]), .Y(n79) );
  NOR2X1 U163 ( .A(n79), .B(A[1]), .Y(n59) );
  NAND2X1 U164 ( .A(n76), .B(A[4]), .Y(n47) );
  CLKINVX1 U165 ( .A(B[4]), .Y(n76) );
  NOR2X1 U166 ( .A(n80), .B(A[0]), .Y(n61) );
  CLKINVX1 U167 ( .A(B[0]), .Y(n80) );
  NAND2X1 U168 ( .A(n79), .B(A[1]), .Y(n60) );
  NAND2X1 U169 ( .A(n78), .B(A[2]), .Y(n56) );
  CLKINVX1 U170 ( .A(B[3]), .Y(n77) );
  NAND2X1 U171 ( .A(n77), .B(A[3]), .Y(n53) );
  CLKINVX1 U172 ( .A(B[7]), .Y(n73) );
  NOR2X1 U173 ( .A(n72), .B(A[8]), .Y(n18) );
  CLKINVX1 U174 ( .A(B[8]), .Y(n72) );
  NAND2X1 U175 ( .A(n72), .B(A[8]), .Y(n19) );
  CLKINVX1 U176 ( .A(B[9]), .Y(n71) );
  NAND2X1 U177 ( .A(n71), .B(A[9]), .Y(n14) );
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
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;
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

  OAI21X2 U95 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NOR2X2 U96 ( .A(n77), .B(A[3]), .Y(n52) );
  INVX3 U97 ( .A(B[5]), .Y(n75) );
  NOR2X1 U98 ( .A(n55), .B(n52), .Y(n50) );
  CLKINVX1 U99 ( .A(B[6]), .Y(n74) );
  NAND2X1 U100 ( .A(n78), .B(A[2]), .Y(n56) );
  AOI21X1 U101 ( .A0(n48), .A1(n67), .B0(n45), .Y(n43) );
  AOI21X2 U102 ( .A0(n20), .A1(n63), .B0(n17), .Y(n15) );
  OAI21X1 U103 ( .A0(n25), .A1(n33), .B0(n26), .Y(n24) );
  AOI21X4 U104 ( .A0(n36), .A1(n23), .B0(n24), .Y(n22) );
  OAI21X1 U105 ( .A0(n38), .A1(n30), .B0(n33), .Y(n29) );
  INVX2 U106 ( .A(n36), .Y(n38) );
  NOR2X2 U107 ( .A(n46), .B(n41), .Y(n35) );
  AOI21X4 U108 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  NOR2X2 U109 ( .A(n74), .B(A[6]), .Y(n30) );
  NOR2X2 U110 ( .A(n30), .B(n25), .Y(n23) );
  NOR2X2 U111 ( .A(n73), .B(A[7]), .Y(n25) );
  OAI2BB1XL U112 ( .A0N(n58), .A1N(n69), .B0(n56), .Y(n54) );
  OAI21X2 U113 ( .A0(n59), .A1(n61), .B0(n60), .Y(n58) );
  NOR2X1 U114 ( .A(n78), .B(A[2]), .Y(n55) );
  INVX4 U115 ( .A(n49), .Y(n48) );
  NOR2X2 U116 ( .A(n75), .B(A[5]), .Y(n41) );
  OAI21X2 U117 ( .A0(n41), .A1(n47), .B0(n42), .Y(n36) );
  XNOR2X1 U118 ( .A(n20), .B(n2), .Y(DIFF[8]) );
  OAI21X2 U119 ( .A0(n49), .A1(n21), .B0(n22), .Y(n20) );
  INVXL U120 ( .A(n30), .Y(n65) );
  INVXL U121 ( .A(n52), .Y(n68) );
  NOR2X1 U122 ( .A(n76), .B(A[4]), .Y(n46) );
  INVXL U123 ( .A(n58), .Y(n57) );
  NAND2XL U124 ( .A(n65), .B(n33), .Y(n4) );
  AOI21XL U125 ( .A0(n20), .A1(n11), .B0(n12), .Y(DIFF[10]) );
  XNOR2XL U126 ( .A(n48), .B(n6), .Y(DIFF[4]) );
  NAND2XL U127 ( .A(n67), .B(n47), .Y(n6) );
  NAND2XL U128 ( .A(n68), .B(n53), .Y(n7) );
  NOR2BXL U129 ( .AN(n35), .B(n30), .Y(n28) );
  XOR2XL U130 ( .A(n57), .B(n8), .Y(DIFF[2]) );
  NAND2XL U131 ( .A(n69), .B(n56), .Y(n8) );
  INVXL U132 ( .A(n47), .Y(n45) );
  XOR2XL U133 ( .A(n9), .B(n61), .Y(DIFF[1]) );
  NAND2XL U134 ( .A(n70), .B(n60), .Y(n9) );
  INVXL U135 ( .A(n59), .Y(n70) );
  NAND2XL U136 ( .A(n75), .B(A[5]), .Y(n42) );
  NAND2XL U137 ( .A(n73), .B(A[7]), .Y(n26) );
  NOR2X1 U138 ( .A(n71), .B(A[9]), .Y(n13) );
  XNOR2XL U139 ( .A(n80), .B(A[0]), .Y(DIFF[0]) );
  NAND2X1 U140 ( .A(n35), .B(n23), .Y(n21) );
  XOR2X1 U141 ( .A(n15), .B(n1), .Y(DIFF[9]) );
  NAND2X1 U142 ( .A(n62), .B(n14), .Y(n1) );
  CLKINVX1 U143 ( .A(n13), .Y(n62) );
  XOR2X1 U144 ( .A(n43), .B(n5), .Y(DIFF[5]) );
  NAND2X1 U145 ( .A(n66), .B(n42), .Y(n5) );
  CLKINVX1 U146 ( .A(n41), .Y(n66) );
  XOR2X1 U147 ( .A(n34), .B(n4), .Y(DIFF[6]) );
  AOI21X1 U148 ( .A0(n48), .A1(n35), .B0(n36), .Y(n34) );
  XOR2X1 U149 ( .A(n27), .B(n3), .Y(DIFF[7]) );
  NAND2X1 U150 ( .A(n64), .B(n26), .Y(n3) );
  AOI21X1 U151 ( .A0(n48), .A1(n28), .B0(n29), .Y(n27) );
  CLKINVX1 U152 ( .A(n25), .Y(n64) );
  NAND2X1 U153 ( .A(n63), .B(n19), .Y(n2) );
  OAI21XL U154 ( .A0(n13), .A1(n19), .B0(n14), .Y(n12) );
  NOR2X1 U155 ( .A(n18), .B(n13), .Y(n11) );
  XNOR2X1 U156 ( .A(n54), .B(n7), .Y(DIFF[3]) );
  CLKINVX1 U157 ( .A(n55), .Y(n69) );
  CLKINVX1 U158 ( .A(n46), .Y(n67) );
  CLKINVX1 U159 ( .A(n18), .Y(n63) );
  CLKINVX1 U160 ( .A(n19), .Y(n17) );
  CLKINVX1 U161 ( .A(B[1]), .Y(n79) );
  NOR2X1 U162 ( .A(n79), .B(A[1]), .Y(n59) );
  NAND2X1 U163 ( .A(n76), .B(A[4]), .Y(n47) );
  CLKINVX1 U164 ( .A(B[4]), .Y(n76) );
  NOR2X1 U165 ( .A(n80), .B(A[0]), .Y(n61) );
  CLKINVX1 U166 ( .A(B[0]), .Y(n80) );
  NAND2X1 U167 ( .A(n79), .B(A[1]), .Y(n60) );
  CLKINVX1 U168 ( .A(B[2]), .Y(n78) );
  CLKINVX1 U169 ( .A(B[3]), .Y(n77) );
  NAND2X1 U170 ( .A(n77), .B(A[3]), .Y(n53) );
  CLKINVX1 U171 ( .A(B[7]), .Y(n73) );
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n35,
         n36, n37, n39, n42, n43, n44, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n66, n67, n68,
         n70, n71, n72, n114, n115, n116, n117, n118, n119;
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

  OAI21X2 U88 ( .A0(n60), .A1(n63), .B0(n61), .Y(n59) );
  NAND2X2 U89 ( .A(A[0]), .B(B[0]), .Y(n63) );
  CLKBUFX3 U90 ( .A(n56), .Y(n114) );
  CLKBUFX3 U91 ( .A(n54), .Y(n115) );
  BUFX4 U92 ( .A(n36), .Y(n116) );
  NOR2X2 U93 ( .A(n53), .B(n114), .Y(n51) );
  NOR2X2 U94 ( .A(A[3]), .B(B[3]), .Y(n53) );
  AOI21X2 U95 ( .A0(n59), .A1(n51), .B0(n52), .Y(n50) );
  NAND2X1 U96 ( .A(A[2]), .B(B[2]), .Y(n57) );
  CLKINVX1 U97 ( .A(n59), .Y(n58) );
  INVX3 U98 ( .A(n50), .Y(n49) );
  OAI21X2 U99 ( .A0(n42), .A1(n48), .B0(n43), .Y(n37) );
  NAND2X2 U100 ( .A(A[4]), .B(B[4]), .Y(n48) );
  OAI21X2 U101 ( .A0(n26), .A1(n34), .B0(n27), .Y(n25) );
  NAND2X1 U102 ( .A(A[7]), .B(B[7]), .Y(n27) );
  NAND2X1 U103 ( .A(A[1]), .B(B[1]), .Y(n61) );
  NOR2X2 U104 ( .A(n31), .B(n26), .Y(n24) );
  NOR2X2 U105 ( .A(A[7]), .B(B[7]), .Y(n26) );
  NAND2X1 U106 ( .A(A[6]), .B(B[6]), .Y(n34) );
  NOR2X2 U107 ( .A(A[6]), .B(B[6]), .Y(n31) );
  OR2XL U108 ( .A(A[8]), .B(B[8]), .Y(n117) );
  NAND2X1 U109 ( .A(A[5]), .B(B[5]), .Y(n43) );
  OAI21X2 U110 ( .A0(n50), .A1(n22), .B0(n23), .Y(n21) );
  AOI21X2 U111 ( .A0(n37), .A1(n24), .B0(n25), .Y(n23) );
  NOR2X2 U112 ( .A(A[5]), .B(B[5]), .Y(n42) );
  NOR2X1 U113 ( .A(A[1]), .B(B[1]), .Y(n60) );
  OR2XL U114 ( .A(A[4]), .B(B[4]), .Y(n118) );
  NAND2XL U115 ( .A(n71), .B(n57), .Y(n8) );
  OAI21X1 U116 ( .A0(n53), .A1(n57), .B0(n115), .Y(n52) );
  XNOR2XL U117 ( .A(n49), .B(n6), .Y(SUM[4]) );
  XNOR2XL U118 ( .A(n21), .B(n2), .Y(SUM[8]) );
  INVX1 U119 ( .A(n20), .Y(n18) );
  INVXL U120 ( .A(n60), .Y(n72) );
  XNOR2X1 U121 ( .A(n119), .B(n1), .Y(SUM[9]) );
  AO21X2 U122 ( .A0(n21), .A1(n117), .B0(n18), .Y(n119) );
  AO21XL U123 ( .A0(n21), .A1(n12), .B0(n13), .Y(SUM[10]) );
  INVXL U124 ( .A(n37), .Y(n39) );
  INVXL U125 ( .A(n53), .Y(n70) );
  NOR2BXL U126 ( .AN(n116), .B(n31), .Y(n29) );
  XOR2XL U127 ( .A(n58), .B(n8), .Y(SUM[2]) );
  INVXL U128 ( .A(n114), .Y(n71) );
  XOR2XL U129 ( .A(n9), .B(n63), .Y(SUM[1]) );
  NOR2XL U130 ( .A(A[4]), .B(B[4]), .Y(n47) );
  NOR2XL U131 ( .A(A[8]), .B(B[8]), .Y(n19) );
  NAND2XL U132 ( .A(A[8]), .B(B[8]), .Y(n20) );
  NAND2XL U133 ( .A(A[9]), .B(B[9]), .Y(n15) );
  NOR2X1 U134 ( .A(A[9]), .B(B[9]), .Y(n14) );
  NAND2BXL U135 ( .AN(n62), .B(n63), .Y(n10) );
  NOR2XL U136 ( .A(A[0]), .B(B[0]), .Y(n62) );
  NAND2X1 U137 ( .A(n116), .B(n24), .Y(n22) );
  NAND2X1 U138 ( .A(n64), .B(n15), .Y(n1) );
  CLKINVX1 U139 ( .A(n14), .Y(n64) );
  XOR2X1 U140 ( .A(n44), .B(n5), .Y(SUM[5]) );
  NAND2X1 U141 ( .A(n68), .B(n43), .Y(n5) );
  AOI21X1 U142 ( .A0(n49), .A1(n118), .B0(n46), .Y(n44) );
  CLKINVX1 U143 ( .A(n42), .Y(n68) );
  XOR2X1 U144 ( .A(n35), .B(n4), .Y(SUM[6]) );
  NAND2X1 U145 ( .A(n67), .B(n34), .Y(n4) );
  AOI21X1 U146 ( .A0(n49), .A1(n116), .B0(n37), .Y(n35) );
  CLKINVX1 U147 ( .A(n31), .Y(n67) );
  XOR2X1 U148 ( .A(n28), .B(n3), .Y(SUM[7]) );
  NAND2X1 U149 ( .A(n66), .B(n27), .Y(n3) );
  AOI21X1 U150 ( .A0(n49), .A1(n29), .B0(n30), .Y(n28) );
  CLKINVX1 U151 ( .A(n26), .Y(n66) );
  NAND2X1 U152 ( .A(n117), .B(n20), .Y(n2) );
  NAND2X1 U153 ( .A(n118), .B(n48), .Y(n6) );
  NOR2X1 U154 ( .A(n19), .B(n14), .Y(n12) );
  OAI21XL U155 ( .A0(n14), .A1(n20), .B0(n15), .Y(n13) );
  XNOR2X1 U156 ( .A(n55), .B(n7), .Y(SUM[3]) );
  OAI21XL U157 ( .A0(n58), .A1(n114), .B0(n57), .Y(n55) );
  NOR2X1 U158 ( .A(n47), .B(n42), .Y(n36) );
  OAI21XL U159 ( .A0(n39), .A1(n31), .B0(n34), .Y(n30) );
  CLKINVX1 U160 ( .A(n48), .Y(n46) );
  NAND2X1 U161 ( .A(n72), .B(n61), .Y(n9) );
  NOR2X1 U162 ( .A(A[2]), .B(B[2]), .Y(n56) );
  CLKINVX1 U163 ( .A(n10), .Y(SUM[0]) );
  NAND2X1 U164 ( .A(n70), .B(n115), .Y(n7) );
  NAND2XL U165 ( .A(A[3]), .B(B[3]), .Y(n54) );
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n40, n42, n43, n45, n48, n49, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n71, n72, n73,
         n74, n75, n76, n77, n130, n131, n132, n133;
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

  NOR2X2 U94 ( .A(n53), .B(n48), .Y(n42) );
  XNOR2X2 U95 ( .A(n132), .B(A[13]), .Y(SUM[13]) );
  NOR2X2 U96 ( .A(A[11]), .B(B[11]), .Y(n32) );
  INVX3 U97 ( .A(n43), .Y(n45) );
  NOR2X1 U98 ( .A(A[6]), .B(B[6]), .Y(n62) );
  NOR2X2 U99 ( .A(A[9]), .B(B[9]), .Y(n48) );
  NOR2X1 U100 ( .A(n62), .B(n59), .Y(n57) );
  OAI21X1 U101 ( .A0(n59), .A1(n63), .B0(n60), .Y(n58) );
  INVX1 U102 ( .A(n54), .Y(n52) );
  NOR2X1 U103 ( .A(A[7]), .B(B[7]), .Y(n59) );
  NAND2X1 U104 ( .A(A[7]), .B(B[7]), .Y(n60) );
  OAI2BB1X1 U105 ( .A0N(n65), .A1N(n76), .B0(n63), .Y(n61) );
  OAI21X2 U106 ( .A0(n66), .A1(n69), .B0(n67), .Y(n65) );
  NAND2X1 U107 ( .A(A[9]), .B(B[9]), .Y(n49) );
  OAI21X4 U108 ( .A0(n56), .A1(n28), .B0(n29), .Y(n27) );
  AOI21X2 U109 ( .A0(n43), .A1(n30), .B0(n31), .Y(n29) );
  AOI21X4 U110 ( .A0(n65), .A1(n57), .B0(n58), .Y(n56) );
  OAI2BB1X4 U111 ( .A0N(n73), .A1N(n52), .B0(n49), .Y(n43) );
  INVX1 U112 ( .A(n48), .Y(n73) );
  NOR2X2 U113 ( .A(A[10]), .B(B[10]), .Y(n37) );
  NAND2X1 U114 ( .A(A[5]), .B(B[5]), .Y(n67) );
  XNOR2X1 U115 ( .A(n11), .B(A[15]), .Y(SUM[15]) );
  INVX3 U116 ( .A(n56), .Y(n55) );
  INVXL U117 ( .A(n65), .Y(n64) );
  XNOR2X1 U118 ( .A(n130), .B(n3), .Y(SUM[10]) );
  AO21XL U119 ( .A0(n55), .A1(n42), .B0(n43), .Y(n130) );
  XNOR2X1 U120 ( .A(n131), .B(n4), .Y(SUM[9]) );
  AO21XL U121 ( .A0(n55), .A1(n74), .B0(n52), .Y(n131) );
  XNOR2XL U122 ( .A(n55), .B(n5), .Y(SUM[8]) );
  NAND2XL U123 ( .A(n74), .B(n54), .Y(n5) );
  NOR2BXL U124 ( .AN(n42), .B(n37), .Y(n35) );
  XOR2XL U125 ( .A(n64), .B(n7), .Y(SUM[6]) );
  NAND2XL U126 ( .A(n76), .B(n63), .Y(n7) );
  INVXL U127 ( .A(n53), .Y(n74) );
  XOR2XL U128 ( .A(n8), .B(n69), .Y(SUM[5]) );
  INVXL U129 ( .A(n66), .Y(n77) );
  AOI21X1 U130 ( .A0(n27), .A1(n133), .B0(n24), .Y(n132) );
  NAND2XL U131 ( .A(A[11]), .B(B[11]), .Y(n33) );
  NAND2BXL U132 ( .AN(n68), .B(n69), .Y(n9) );
  NOR2XL U133 ( .A(A[4]), .B(B[4]), .Y(n68) );
  NAND2X1 U134 ( .A(n42), .B(n30), .Y(n28) );
  NOR2X1 U135 ( .A(n37), .B(n32), .Y(n30) );
  XOR2X1 U136 ( .A(n15), .B(n14), .Y(SUM[14]) );
  AOI21X1 U137 ( .A0(n27), .A1(n16), .B0(n17), .Y(n15) );
  CLKINVX1 U138 ( .A(n19), .Y(n17) );
  CLKINVX1 U139 ( .A(n18), .Y(n16) );
  NAND2X1 U140 ( .A(n73), .B(n49), .Y(n4) );
  NAND2X1 U141 ( .A(n72), .B(n40), .Y(n3) );
  CLKINVX1 U142 ( .A(n37), .Y(n72) );
  XOR2X1 U143 ( .A(n34), .B(n2), .Y(SUM[11]) );
  NAND2X1 U144 ( .A(n71), .B(n33), .Y(n2) );
  AOI21X1 U145 ( .A0(n55), .A1(n35), .B0(n36), .Y(n34) );
  CLKINVX1 U146 ( .A(n32), .Y(n71) );
  OAI21XL U147 ( .A0(n32), .A1(n40), .B0(n33), .Y(n31) );
  XNOR2X1 U148 ( .A(n27), .B(n1), .Y(SUM[12]) );
  NAND2X1 U149 ( .A(n133), .B(n26), .Y(n1) );
  OAI21XL U150 ( .A0(n45), .A1(n37), .B0(n40), .Y(n36) );
  NOR2X1 U151 ( .A(n18), .B(n14), .Y(n12) );
  CLKINVX1 U152 ( .A(n26), .Y(n24) );
  XNOR2X1 U153 ( .A(n61), .B(n6), .Y(SUM[7]) );
  NAND2X1 U154 ( .A(n75), .B(n60), .Y(n6) );
  CLKINVX1 U155 ( .A(n59), .Y(n75) );
  CLKINVX1 U156 ( .A(n62), .Y(n76) );
  NAND2X1 U157 ( .A(n77), .B(n67), .Y(n8) );
  AOI21X1 U158 ( .A0(n27), .A1(n12), .B0(n13), .Y(n11) );
  NOR2X1 U159 ( .A(n19), .B(n14), .Y(n13) );
  NAND2X1 U160 ( .A(A[4]), .B(B[4]), .Y(n69) );
  NOR2X1 U161 ( .A(A[5]), .B(B[5]), .Y(n66) );
  NAND2X1 U162 ( .A(A[8]), .B(B[8]), .Y(n54) );
  NAND2X1 U163 ( .A(A[6]), .B(B[6]), .Y(n63) );
  NAND2X1 U164 ( .A(A[10]), .B(B[10]), .Y(n40) );
  NOR2X1 U165 ( .A(A[8]), .B(B[8]), .Y(n53) );
  OR2X1 U166 ( .A(A[12]), .B(B[12]), .Y(n133) );
  NAND2X1 U167 ( .A(n133), .B(A[13]), .Y(n18) );
  NAND2X1 U168 ( .A(n24), .B(A[13]), .Y(n19) );
  NAND2X1 U169 ( .A(A[12]), .B(B[12]), .Y(n26) );
  CLKINVX1 U170 ( .A(A[14]), .Y(n14) );
  CLKINVX1 U171 ( .A(n9), .Y(SUM[4]) );
  CLKBUFX3 U172 ( .A(B[3]), .Y(SUM[3]) );
  CLKBUFX3 U173 ( .A(B[2]), .Y(SUM[2]) );
  CLKBUFX3 U174 ( .A(B[1]), .Y(SUM[1]) );
  CLKBUFX3 U175 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_inc_0_DW01_inc_7 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX2 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX4 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX4 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX4 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX4 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX4 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX4 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  XOR2X2 U1 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_inc_1_DW01_inc_8 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHX2 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX4 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  CMPR22X2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX4 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX4 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX4 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX4 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X4 U1 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_12_DW01_add_15 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
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

  ADDFHX4 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX4 U1_2 ( .A(A[2]), .B(n1), .CI(n9), .CO(carry[3]), .S(SUM[2]) );
  NAND2X2 U1 ( .A(B[8]), .B(n6), .Y(n7) );
  INVX4 U2 ( .A(carry[8]), .Y(n6) );
  BUFX8 U3 ( .A(B[2]), .Y(n1) );
  CLKAND2X2 U4 ( .A(B[8]), .B(carry[8]), .Y(SUM[9]) );
  NAND2X2 U5 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2X1 U6 ( .A(n5), .B(carry[8]), .Y(n8) );
  CLKAND2X12 U7 ( .A(B[1]), .B(A[1]), .Y(n9) );
  NAND3X4 U8 ( .A(n2), .B(n3), .C(n4), .Y(carry[5]) );
  NAND2X2 U9 ( .A(A[4]), .B(carry[4]), .Y(n2) );
  XOR3XL U10 ( .A(carry[4]), .B(B[4]), .C(A[4]), .Y(SUM[4]) );
  NAND2X2 U11 ( .A(B[4]), .B(carry[4]), .Y(n3) );
  NAND2X1 U12 ( .A(B[4]), .B(A[4]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n5) );
  XOR2XL U14 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U15 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_11_DW01_add_14 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n1, n2, n3, n4, n5, n6;
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

  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  XOR2X2 U1 ( .A(B[8]), .B(carry[8]), .Y(SUM[8]) );
  NAND3X2 U2 ( .A(n4), .B(n5), .C(n6), .Y(carry[8]) );
  NAND2X2 U3 ( .A(A[7]), .B(carry[7]), .Y(n5) );
  CLKAND2X8 U4 ( .A(B[1]), .B(A[1]), .Y(n1) );
  NAND2X4 U5 ( .A(B[7]), .B(n2), .Y(n4) );
  CLKAND2X3 U6 ( .A(B[8]), .B(carry[8]), .Y(SUM[9]) );
  ADDFHX4 U7 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n2) );
  XOR2X1 U8 ( .A(n2), .B(n3), .Y(SUM[7]) );
  NAND2X1 U9 ( .A(A[7]), .B(B[7]), .Y(n6) );
  XOR2XL U10 ( .A(B[7]), .B(A[7]), .Y(n3) );
  XOR2XL U11 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U12 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module sobel_gradient_DW01_add_10_DW01_add_13 ( SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1]  );
  output [9:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
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

  ADDFHX4 U1_2 ( .A(B[2]), .B(A[2]), .CI(n4), .CO(carry[3]), .S(SUM[2]) );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  NAND2X6 U1 ( .A(A[3]), .B(carry[3]), .Y(n10) );
  CLKAND2X12 U2 ( .A(A[1]), .B(B[1]), .Y(n4) );
  ADDFHX4 U3 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(n1) );
  NAND2X6 U4 ( .A(carry[7]), .B(B[7]), .Y(n15) );
  NAND2X1 U5 ( .A(B[3]), .B(A[3]), .Y(n12) );
  NAND2X4 U6 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2X4 U7 ( .A(n6), .B(B[8]), .Y(n7) );
  AND2X4 U8 ( .A(carry[8]), .B(B[8]), .Y(SUM[9]) );
  AND2X8 U9 ( .A(n15), .B(n16), .Y(n2) );
  AND2X8 U10 ( .A(n10), .B(n12), .Y(n3) );
  CLKINVX8 U11 ( .A(carry[8]), .Y(n6) );
  NAND2X2 U12 ( .A(carry[8]), .B(n5), .Y(n8) );
  NAND2X8 U13 ( .A(n2), .B(n14), .Y(carry[8]) );
  NAND2X2 U14 ( .A(A[7]), .B(n1), .Y(n14) );
  NAND2X6 U15 ( .A(n3), .B(n11), .Y(carry[4]) );
  NAND2X2 U16 ( .A(B[3]), .B(carry[3]), .Y(n11) );
  CLKINVX1 U17 ( .A(B[8]), .Y(n5) );
  XOR2XL U18 ( .A(n1), .B(n13), .Y(SUM[7]) );
  NAND2X1 U19 ( .A(B[7]), .B(A[7]), .Y(n16) );
  XOR2XL U20 ( .A(A[3]), .B(B[3]), .Y(n9) );
  XOR2XL U21 ( .A(carry[3]), .B(n9), .Y(SUM[3]) );
  XOR2XL U22 ( .A(A[7]), .B(B[7]), .Y(n13) );
  XOR2XL U23 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U24 ( .A(A[0]), .Y(SUM[0]) );
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

  ADDFHX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFHX4 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X2 U1 ( .A(B[8]), .B(carry[8]), .Y(SUM[9]) );
  XOR2X2 U2 ( .A(B[8]), .B(carry[8]), .Y(SUM[8]) );
  CLKAND2X8 U3 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2XL U4 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U5 ( .A(A[0]), .Y(SUM[0]) );
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
         a17_r, a47_r, a25_r, a28_r, a58_r, a36_r, a39_r, a69_r, net24829,
         net24830, net24831, net24832, net24834, net24835, net24836, net24837,
         net24838, net24839, net24840, net24841, net24842, net24843, net24844,
         net24845, net24846, net24847, net24848, net24849, net24850, net35213,
         net35246, net35249, net35257, net35260, net35273, net35287, net43964,
         net45746, net45745, net45807, net45806, net46082, net46570, net46569,
         net46636, net46635, net46665, net35230, net35228, net43734, net35308,
         net35299, net35296, net35295, net35289, net35288, net35231, net46187,
         net42161, net35293, net35292, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
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
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749;
  wire   [7:0] a1;
  wire   [7:0] a4;
  wire   [7:0] a7;
  wire   [7:0] a2;
  wire   [7:0] a5;
  wire   [7:0] a8;
  wire   [7:0] a3;
  wire   [7:0] a6;
  wire   [7:0] a9;
  wire   [5:1] a4_r;
  wire   [7:1] a5_r;
  wire   [7:0] a6_r;
  wire   [7:0] b5;
  wire   [7:0] b1_r;
  wire   [7:0] b5_r;
  wire   [7:0] b9_r;
  wire   [7:0] c2;

  DFFRXL p8_r_reg_3_ ( .D(p8[3]), .CK(clk), .RN(n263), .QN(n673) );
  DFFRXL p9_r_reg_3_ ( .D(p9[3]), .CK(clk), .RN(n262), .QN(n665) );
  DFFRX2 a58_r_reg ( .D(a58_w), .CK(clk), .RN(n261), .Q(a58_r), .QN(n29) );
  DFFRX2 a5_r_reg_1_ ( .D(a5[1]), .CK(clk), .RN(n257), .Q(a5_r[1]), .QN(
        net24836) );
  DFFRX2 a5_r_reg_3_ ( .D(a5[3]), .CK(clk), .RN(n257), .Q(a5_r[3]), .QN(
        net24835) );
  DFFRX2 b1_r_reg_6_ ( .D(n748), .CK(clk), .RN(n254), .Q(b1_r[6]), .QN(n638)
         );
  DFFRXL p7_r_reg_1_ ( .D(p7[1]), .CK(clk), .RN(n263), .QN(n679) );
  DFFRX1 p9_r_reg_0_ ( .D(p9[0]), .CK(clk), .RN(n262), .QN(n662) );
  DFFRX2 b1_r_reg_1_ ( .D(n743), .CK(clk), .RN(n254), .Q(b1_r[1]), .QN(n641)
         );
  DFFRX2 b1_r_reg_3_ ( .D(n745), .CK(clk), .RN(n254), .Q(b1_r[3]), .QN(n642)
         );
  DFFRX2 b1_r_reg_7_ ( .D(n749), .CK(clk), .RN(n254), .Q(b1_r[7]), .QN(n639)
         );
  DFFRX2 b1_r_reg_2_ ( .D(n744), .CK(clk), .RN(n254), .Q(b1_r[2]), .QN(n643)
         );
  DFFRX1 a1_r_reg_0_ ( .D(a1[0]), .CK(clk), .RN(n260), .QN(n597) );
  DFFRX1 a7_r_reg_0_ ( .D(a7[0]), .CK(clk), .RN(n256), .QN(n618) );
  DFFRX1 c2_r_reg_3_ ( .D(c2[3]), .CK(clk), .RN(n253), .Q(median[3]) );
  DFFRX1 c2_r_reg_2_ ( .D(c2[2]), .CK(clk), .RN(n253), .Q(median[2]) );
  DFFRX1 c2_r_reg_1_ ( .D(c2[1]), .CK(clk), .RN(n253), .Q(median[1]) );
  DFFRX1 c2_r_reg_0_ ( .D(c2[0]), .CK(clk), .RN(n253), .Q(median[0]) );
  DFFRX1 p1_r_reg_7_ ( .D(p1[7]), .CK(clk), .RN(n252), .QN(n733) );
  DFFRX1 p1_r_reg_5_ ( .D(p1[5]), .CK(clk), .RN(n252), .QN(n731) );
  DFFRX1 p1_r_reg_4_ ( .D(n236), .CK(clk), .RN(n266), .QN(n730) );
  DFFRX1 p1_r_reg_2_ ( .D(p1[2]), .CK(clk), .RN(n267), .QN(n728) );
  DFFRX1 p1_r_reg_1_ ( .D(p1[1]), .CK(clk), .RN(n267), .QN(n727) );
  DFFRX1 p1_r_reg_0_ ( .D(p1[0]), .CK(clk), .RN(n267), .QN(n726) );
  DFFRX1 p2_r_reg_7_ ( .D(p2[7]), .CK(clk), .RN(n267), .QN(n725) );
  DFFRX1 p2_r_reg_5_ ( .D(p2[5]), .CK(clk), .RN(n267), .QN(n723) );
  DFFRX1 p2_r_reg_4_ ( .D(p2[4]), .CK(clk), .RN(n267), .QN(n722) );
  DFFRX1 p2_r_reg_3_ ( .D(n235), .CK(clk), .RN(n267), .QN(n721) );
  DFFRX1 p2_r_reg_2_ ( .D(p2[2]), .CK(clk), .RN(n267), .QN(n720) );
  DFFRX1 p2_r_reg_0_ ( .D(p2[0]), .CK(clk), .RN(n267), .QN(n718) );
  DFFRX1 p3_r_reg_5_ ( .D(p3[5]), .CK(clk), .RN(n266), .QN(n715) );
  DFFRX1 p3_r_reg_4_ ( .D(p3[4]), .CK(clk), .RN(n266), .QN(n714) );
  DFFRX1 p3_r_reg_2_ ( .D(p3[2]), .CK(clk), .RN(n266), .QN(n712) );
  DFFRX1 p3_r_reg_1_ ( .D(p3[1]), .CK(clk), .RN(n266), .QN(n711) );
  DFFRX1 p3_r_reg_0_ ( .D(p3[0]), .CK(clk), .RN(n266), .QN(n710) );
  DFFRX1 p4_r_reg_7_ ( .D(p4[7]), .CK(clk), .RN(n266), .QN(n709) );
  DFFRX1 p4_r_reg_6_ ( .D(p4[6]), .CK(clk), .RN(n266), .QN(n708) );
  DFFRX1 p4_r_reg_4_ ( .D(p4[4]), .CK(clk), .RN(n266), .QN(n706) );
  DFFRX1 p4_r_reg_3_ ( .D(p4[3]), .CK(clk), .RN(n265), .QN(n705) );
  DFFRX1 p4_r_reg_2_ ( .D(p4[2]), .CK(clk), .RN(n265), .QN(n704) );
  DFFRX1 p4_r_reg_1_ ( .D(p4[1]), .CK(clk), .RN(n265), .QN(n703) );
  DFFRX1 p4_r_reg_0_ ( .D(p4[0]), .CK(clk), .RN(n265), .QN(n702) );
  DFFRX1 p5_r_reg_7_ ( .D(n232), .CK(clk), .RN(n265), .QN(n701) );
  DFFRX1 p5_r_reg_4_ ( .D(p5[4]), .CK(clk), .RN(n265), .QN(n698) );
  DFFRX1 p5_r_reg_2_ ( .D(p5[2]), .CK(clk), .RN(n265), .QN(n696) );
  DFFRX1 p6_r_reg_7_ ( .D(p6[7]), .CK(clk), .RN(n264), .QN(n693) );
  DFFRX1 p6_r_reg_5_ ( .D(p6[5]), .CK(clk), .RN(n264), .QN(n691) );
  DFFRX1 p6_r_reg_3_ ( .D(p6[3]), .CK(clk), .RN(n264), .QN(n689) );
  DFFRX1 p6_r_reg_2_ ( .D(p6[2]), .CK(clk), .RN(n264), .QN(n688) );
  DFFRX1 p6_r_reg_1_ ( .D(p6[1]), .CK(clk), .RN(n264), .QN(n687) );
  DFFRX1 p7_r_reg_7_ ( .D(p7[7]), .CK(clk), .RN(n264), .QN(n685) );
  DFFRX1 p7_r_reg_5_ ( .D(p7[5]), .CK(clk), .RN(n264), .QN(n683) );
  DFFRX1 p7_r_reg_4_ ( .D(p7[4]), .CK(clk), .RN(n264), .QN(n682) );
  DFFRX1 p7_r_reg_2_ ( .D(p7[2]), .CK(clk), .RN(n263), .QN(n680) );
  DFFRX1 p7_r_reg_0_ ( .D(p7[0]), .CK(clk), .RN(n263), .QN(n678) );
  DFFRX1 p8_r_reg_6_ ( .D(p8[6]), .CK(clk), .RN(n263), .QN(n676) );
  DFFRX1 p8_r_reg_5_ ( .D(p8[5]), .CK(clk), .RN(n263), .QN(n675) );
  DFFRX1 p8_r_reg_4_ ( .D(p8[4]), .CK(clk), .RN(n263), .QN(n674) );
  DFFRX1 p8_r_reg_2_ ( .D(p8[2]), .CK(clk), .RN(n263), .QN(n672) );
  DFFRX1 p9_r_reg_7_ ( .D(p9[7]), .CK(clk), .RN(n262), .QN(n669) );
  DFFRX1 p9_r_reg_6_ ( .D(p9[6]), .CK(clk), .RN(n262), .QN(n668) );
  DFFRX1 p9_r_reg_5_ ( .D(p9[5]), .CK(clk), .RN(n262), .QN(n667) );
  DFFRX1 p9_r_reg_4_ ( .D(p9[4]), .CK(clk), .RN(n262), .QN(n666) );
  DFFRX1 p9_r_reg_2_ ( .D(p9[2]), .CK(clk), .RN(n262), .QN(n664) );
  DFFRX1 p2_r_reg_1_ ( .D(n243), .CK(clk), .RN(n267), .QN(n719) );
  DFFRX1 p3_r_reg_3_ ( .D(p3[3]), .CK(clk), .RN(n266), .QN(n713) );
  DFFRX1 p5_r_reg_3_ ( .D(n248), .CK(clk), .RN(n265), .QN(n697) );
  DFFRX1 p6_r_reg_4_ ( .D(p6[4]), .CK(clk), .RN(n264), .QN(n690) );
  DFFRX1 p7_r_reg_6_ ( .D(p7[6]), .CK(clk), .RN(n264), .QN(n684) );
  DFFRX1 a1_r_reg_7_ ( .D(a1[7]), .CK(clk), .RN(n260), .Q(n40), .QN(n596) );
  DFFRX1 a7_r_reg_7_ ( .D(a7[7]), .CK(clk), .RN(n256), .QN(n617) );
  DFFRX1 a8_r_reg_7_ ( .D(a8[7]), .CK(clk), .RN(n256), .Q(n33), .QN(n628) );
  DFFRX1 a2_r_reg_7_ ( .D(a2[7]), .CK(clk), .RN(n260), .Q(n20), .QN(n607) );
  DFFRX1 a9_r_reg_0_ ( .D(a9[0]), .CK(clk), .RN(n261), .QN(n629) );
  DFFRX1 a5_r_reg_6_ ( .D(a5[6]), .CK(clk), .RN(n258), .Q(a5_r[6]), .QN(
        net24844) );
  DFFRX1 a9_r_reg_7_ ( .D(a9[7]), .CK(clk), .RN(n261), .QN(n623) );
  DFFRX1 a9_r_reg_1_ ( .D(a9[1]), .CK(clk), .RN(n261), .QN(n626) );
  DFFRX1 a2_r_reg_4_ ( .D(a2[4]), .CK(clk), .RN(n260), .Q(n55), .QN(n616) );
  DFFRX1 a1_r_reg_4_ ( .D(a1[4]), .CK(clk), .RN(n260), .Q(n4), .QN(n602) );
  DFFRX1 a3_r_reg_3_ ( .D(a3[3]), .CK(clk), .RN(n259), .Q(n12), .QN(n605) );
  DFFRX1 a3_r_reg_0_ ( .D(a3[0]), .CK(clk), .RN(n259), .Q(n30), .QN(n608) );
  DFFRX2 a14_r_reg ( .D(a14_w), .CK(clk), .RN(n262), .Q(a14_r), .QN(n23) );
  DFFRX1 a8_r_reg_1_ ( .D(a8[1]), .CK(clk), .RN(n255), .Q(n22), .QN(n630) );
  DFFRX1 p7_r_reg_3_ ( .D(n147), .CK(clk), .RN(n263), .QN(n681) );
  DFFRX1 p6_r_reg_6_ ( .D(n240), .CK(clk), .RN(n264), .QN(n692) );
  DFFRX2 b1_r_reg_4_ ( .D(n746), .CK(clk), .RN(n254), .Q(b1_r[4]), .QN(n645)
         );
  DFFRX2 b5_r_reg_5_ ( .D(b5[5]), .CK(clk), .RN(n254), .Q(b5_r[5]), .QN(n659)
         );
  DFFRX2 a36_r_reg ( .D(a36_w), .CK(clk), .RN(n261), .Q(a36_r), .QN(n9) );
  DFFRXL p9_r_reg_1_ ( .D(p9[1]), .CK(clk), .RN(n262), .QN(n663) );
  DFFRXL p6_r_reg_0_ ( .D(p6[0]), .CK(clk), .RN(n264), .QN(n686) );
  DFFRX1 a7_r_reg_5_ ( .D(a7[5]), .CK(clk), .RN(n256), .Q(n17), .QN(n621) );
  DFFRX1 a1_r_reg_2_ ( .D(a1[2]), .CK(clk), .RN(n260), .Q(n61), .QN(n600) );
  DFFRX1 a2_r_reg_5_ ( .D(a2[5]), .CK(clk), .RN(n260), .Q(n56), .QN(n614) );
  DFFRX1 a8_r_reg_5_ ( .D(a8[5]), .CK(clk), .RN(n256), .Q(n5), .QN(n635) );
  DFFRX2 a17_r_reg ( .D(a17_w), .CK(clk), .RN(n262), .Q(a17_r) );
  DFFRX4 a5_r_reg_4_ ( .D(a5[4]), .CK(clk), .RN(n258), .Q(a5_r[4]), .QN(
        net24829) );
  DFFRX2 b9_r_reg_5_ ( .D(n739), .CK(clk), .RN(n255), .Q(b9_r[5]), .QN(n647)
         );
  DFFRX2 p3_r_reg_6_ ( .D(p3[6]), .CK(clk), .RN(n266), .QN(n716) );
  DFFRX2 a9_r_reg_5_ ( .D(a9[5]), .CK(clk), .RN(n261), .Q(n144), .QN(n624) );
  DFFRX4 a9_r_reg_2_ ( .D(a9[2]), .CK(clk), .RN(n261), .QN(n632) );
  DFFRX4 a69_r_reg ( .D(a69_w), .CK(clk), .RN(n266), .Q(a69_r), .QN(n36) );
  DFFRX2 p4_r_reg_5_ ( .D(p4[5]), .CK(clk), .RN(n266), .QN(n707) );
  DFFRX2 a47_r_reg ( .D(a47_w), .CK(clk), .RN(n262), .Q(a47_r), .QN(n6) );
  DFFRX2 a28_r_reg ( .D(a28_w), .CK(clk), .RN(n261), .Q(a28_r) );
  DFFRX2 a39_r_reg ( .D(a39_w), .CK(clk), .RN(n261), .Q(a39_r) );
  DFFRX4 a2_r_reg_3_ ( .D(a2[3]), .CK(clk), .RN(n259), .Q(n27), .QN(n611) );
  DFFRX4 a7_r_reg_2_ ( .D(a7[2]), .CK(clk), .RN(n256), .QN(n620) );
  DFFRX2 a3_r_reg_4_ ( .D(a3[4]), .CK(clk), .RN(n259), .Q(n32), .QN(n615) );
  DFFRX2 a9_r_reg_3_ ( .D(a9[3]), .CK(clk), .RN(n261), .Q(n21), .QN(n625) );
  DFFRX2 b5_r_reg_7_ ( .D(b5[7]), .CK(clk), .RN(n254), .Q(b5_r[7]), .QN(n651)
         );
  DFFRX2 b5_r_reg_6_ ( .D(b5[6]), .CK(clk), .RN(n254), .Q(b5_r[6]), .QN(n650)
         );
  DFFRX2 a9_r_reg_4_ ( .D(a9[4]), .CK(clk), .RN(n261), .Q(n18), .QN(n636) );
  DFFRX2 b5_r_reg_4_ ( .D(b5[4]), .CK(clk), .RN(n254), .Q(b5_r[4]), .QN(n661)
         );
  DFFRX2 a8_r_reg_3_ ( .D(a8[3]), .CK(clk), .RN(n255), .QN(n631) );
  DFFRX2 b9_r_reg_3_ ( .D(n737), .CK(clk), .RN(n255), .Q(b9_r[3]), .QN(n648)
         );
  DFFRX2 p2_r_reg_6_ ( .D(p2[6]), .CK(clk), .RN(n267), .QN(n724) );
  DFFRX2 a1_r_reg_6_ ( .D(a1[6]), .CK(clk), .RN(n260), .Q(n39), .QN(n595) );
  DFFRX2 a6_r_reg_5_ ( .D(a6[5]), .CK(clk), .RN(n257), .Q(a6_r[5]), .QN(
        net24842) );
  DFFRX2 a3_r_reg_7_ ( .D(a3[7]), .CK(clk), .RN(n259), .Q(n156), .QN(n603) );
  DFFRX2 b5_r_reg_2_ ( .D(b5[2]), .CK(clk), .RN(n253), .Q(n13), .QN(n657) );
  DFFRX2 c2_r_reg_5_ ( .D(c2[5]), .CK(clk), .RN(n253), .Q(median[5]) );
  DFFRX2 a6_r_reg_0_ ( .D(a6[0]), .CK(clk), .RN(n257), .Q(a6_r[0]), .QN(
        net24838) );
  DFFRX2 a6_r_reg_1_ ( .D(a6[1]), .CK(clk), .RN(n257), .Q(a6_r[1]), .QN(
        net24840) );
  DFFRX2 c2_r_reg_6_ ( .D(c2[6]), .CK(clk), .RN(n253), .Q(median[6]) );
  DFFRX2 b9_r_reg_6_ ( .D(n740), .CK(clk), .RN(n255), .Q(b9_r[6]), .QN(n658)
         );
  DFFRX2 c2_r_reg_7_ ( .D(c2[7]), .CK(clk), .RN(n253), .Q(median[7]) );
  DFFRX2 b9_r_reg_7_ ( .D(n741), .CK(clk), .RN(n255), .Q(b9_r[7]), .QN(n646)
         );
  DFFRHQX1 a3_r_reg_2_ ( .D(a3[2]), .CK(clk), .RN(n259), .Q(n108) );
  DFFRHQX1 a7_r_reg_3_ ( .D(a7[3]), .CK(clk), .RN(n256), .Q(n106) );
  DFFRX2 a4_r_reg_3_ ( .D(a4[3]), .CK(clk), .RN(n258), .Q(a4_r[3]), .QN(
        net24848) );
  DFFRX2 b9_r_reg_4_ ( .D(n738), .CK(clk), .RN(n255), .Q(b9_r[4]), .QN(n660)
         );
  DFFRHQX1 a7_r_reg_6_ ( .D(a7[6]), .CK(clk), .RN(n256), .Q(n102) );
  DFFRX2 a6_r_reg_7_ ( .D(a6[7]), .CK(clk), .RN(n257), .Q(a6_r[7]), .QN(
        net24843) );
  DFFRX2 p1_r_reg_6_ ( .D(p1[6]), .CK(clk), .RN(n252), .QN(n732) );
  DFFRX2 b5_r_reg_1_ ( .D(b5[1]), .CK(clk), .RN(n253), .Q(b5_r[1]), .QN(n654)
         );
  DFFRX2 a2_r_reg_1_ ( .D(a2[1]), .CK(clk), .RN(n259), .Q(n25), .QN(n610) );
  DFFRX2 a6_r_reg_4_ ( .D(a6[4]), .CK(clk), .RN(n257), .Q(a6_r[4]), .QN(
        net24830) );
  DFFRX2 a4_r_reg_1_ ( .D(a4[1]), .CK(clk), .RN(n258), .Q(a4_r[1]), .QN(
        net24849) );
  DFFRX2 b5_r_reg_3_ ( .D(b5[3]), .CK(clk), .RN(n253), .Q(b5_r[3]), .QN(n655)
         );
  DFFRHQX1 a4_r_reg_6_ ( .D(a4[6]), .CK(clk), .RN(n258), .Q(net46569) );
  DFFRX2 a25_r_reg ( .D(a25_w), .CK(clk), .RN(n262), .Q(a25_r), .QN(n11) );
  DFFRX2 a4_r_reg_2_ ( .D(a4[2]), .CK(clk), .RN(n258), .Q(a4_r[2]), .QN(
        net24847) );
  DFFRX2 a1_r_reg_3_ ( .D(a1[3]), .CK(clk), .RN(n260), .Q(n26), .QN(n599) );
  DFFRX2 a1_r_reg_5_ ( .D(a1[5]), .CK(clk), .RN(n260), .Q(n99), .QN(n601) );
  DFFRX2 a2_r_reg_0_ ( .D(a2[0]), .CK(clk), .RN(n259), .Q(n10), .QN(n609) );
  DFFRX2 a3_r_reg_5_ ( .D(a3[5]), .CK(clk), .RN(n259), .Q(n28), .QN(n604) );
  DFFRHQX1 a4_r_reg_7_ ( .D(a4[7]), .CK(clk), .RN(n258), .Q(net46635) );
  DFFRX2 a5_r_reg_5_ ( .D(a5[5]), .CK(clk), .RN(n258), .Q(a5_r[5]), .QN(
        net24831) );
  DFFRX2 a4_r_reg_5_ ( .D(a4[5]), .CK(clk), .RN(n258), .Q(a4_r[5]), .QN(
        net24846) );
  DFFRX2 b1_r_reg_0_ ( .D(n742), .CK(clk), .RN(n254), .Q(b1_r[0]), .QN(n640)
         );
  DFFRX2 b5_r_reg_0_ ( .D(b5[0]), .CK(clk), .RN(n253), .Q(b5_r[0]), .QN(n653)
         );
  DFFRX2 a6_r_reg_6_ ( .D(a6[6]), .CK(clk), .RN(n257), .Q(a6_r[6]), .QN(
        net24832) );
  DFFRX1 a3_r_reg_6_ ( .D(a3[6]), .CK(clk), .RN(n259), .Q(n8), .QN(n613) );
  DFFRHQX1 a8_r_reg_0_ ( .D(a8[0]), .CK(clk), .RN(n255), .Q(n92) );
  DFFRHQX1 a2_r_reg_6_ ( .D(a2[6]), .CK(clk), .RN(n260), .Q(n88) );
  DFFRX2 a6_r_reg_2_ ( .D(a6[2]), .CK(clk), .RN(n257), .Q(a6_r[2]), .QN(
        net24834) );
  DFFRX2 p1_r_reg_3_ ( .D(p1[3]), .CK(clk), .RN(n267), .QN(n729) );
  DFFRX2 a8_r_reg_4_ ( .D(a8[4]), .CK(clk), .RN(n256), .Q(n34), .QN(n637) );
  DFFRX4 b1_r_reg_5_ ( .D(n747), .CK(clk), .RN(n254), .Q(b1_r[5]), .QN(n644)
         );
  DFFRX2 a7_r_reg_4_ ( .D(a7[4]), .CK(clk), .RN(n256), .Q(n35), .QN(n622) );
  DFFRX2 p5_r_reg_0_ ( .D(n52), .CK(clk), .RN(n265), .QN(n694) );
  DFFRX2 b9_r_reg_0_ ( .D(n734), .CK(clk), .RN(n255), .Q(b9_r[0]), .QN(n652)
         );
  DFFRX2 p8_r_reg_0_ ( .D(p8[0]), .CK(clk), .RN(n263), .QN(n670) );
  DFFRX2 p5_r_reg_5_ ( .D(n59), .CK(clk), .RN(n265), .QN(n699) );
  DFFRX2 a3_r_reg_1_ ( .D(a3[1]), .CK(clk), .RN(n259), .Q(n94), .QN(n606) );
  DFFRX2 a5_r_reg_7_ ( .D(a5[7]), .CK(clk), .RN(n258), .Q(a5_r[7]), .QN(
        net24839) );
  DFFRX2 p5_r_reg_6_ ( .D(p5[6]), .CK(clk), .RN(n265), .QN(n700) );
  DFFRHQX1 a5_r_reg_2_ ( .D(a5[2]), .CK(clk), .RN(n257), .Q(n53) );
  DFFRX2 a5_r_reg_0_ ( .D(a5[0]), .CK(clk), .RN(n257), .Q(n47), .QN(net24837)
         );
  DFFRX2 a4_r_reg_0_ ( .D(a4[0]), .CK(clk), .RN(n258), .Q(n46), .QN(net24850)
         );
  DFFRX2 p8_r_reg_1_ ( .D(p8[1]), .CK(clk), .RN(n263), .QN(n671) );
  DFFRX2 p3_r_reg_7_ ( .D(p3[7]), .CK(clk), .RN(n266), .QN(n717) );
  DFFRX2 p5_r_reg_1_ ( .D(n43), .CK(clk), .RN(n265), .QN(n695) );
  DFFRX2 a4_r_reg_4_ ( .D(a4[4]), .CK(clk), .RN(n258), .Q(a4_r[4]), .QN(
        net24845) );
  DFFRX2 a6_r_reg_3_ ( .D(a6[3]), .CK(clk), .RN(n257), .Q(a6_r[3]), .QN(
        net24841) );
  DFFRX2 c2_r_reg_4_ ( .D(c2[4]), .CK(clk), .RN(n253), .Q(median[4]) );
  DFFRX2 a9_r_reg_6_ ( .D(a9[6]), .CK(clk), .RN(n261), .Q(n38), .QN(n634) );
  DFFRX2 a7_r_reg_1_ ( .D(a7[1]), .CK(clk), .RN(n256), .Q(n37), .QN(n619) );
  DFFRX2 b9_r_reg_2_ ( .D(n736), .CK(clk), .RN(n255), .Q(b9_r[2]), .QN(n656)
         );
  DFFRX2 a8_r_reg_2_ ( .D(a8[2]), .CK(clk), .RN(n255), .Q(n19), .QN(n633) );
  DFFRX2 a8_r_reg_6_ ( .D(a8[6]), .CK(clk), .RN(n256), .QN(n627) );
  DFFRX2 a1_r_reg_1_ ( .D(a1[1]), .CK(clk), .RN(n260), .QN(n598) );
  DFFRX2 p8_r_reg_7_ ( .D(p8[7]), .CK(clk), .RN(n263), .QN(n677) );
  DFFRX2 b9_r_reg_1_ ( .D(n735), .CK(clk), .RN(n255), .Q(b9_r[1]), .QN(n649)
         );
  DFFRX2 a2_r_reg_2_ ( .D(a2[2]), .CK(clk), .RN(n259), .QN(n612) );
  CLKAND2X3 U3 ( .A(net24835), .B(net35287), .Y(net42161) );
  OR2X8 U4 ( .A(a4_r[1]), .B(net24836), .Y(n65) );
  CLKINVX6 U5 ( .A(p2[1]), .Y(n348) );
  INVX6 U6 ( .A(p8[3]), .Y(n335) );
  AND2X8 U7 ( .A(n98), .B(n566), .Y(n152) );
  NAND2X1 U8 ( .A(b9_r[5]), .B(n51), .Y(n114) );
  CLKAND2X4 U9 ( .A(b9_r[6]), .B(n50), .Y(n111) );
  OA21X4 U10 ( .A0(n633), .A1(n440), .B0(n430), .Y(n429) );
  NAND2X4 U11 ( .A(n625), .B(n427), .Y(n430) );
  NAND3X8 U12 ( .A(n153), .B(n154), .C(n155), .Y(n451) );
  NAND3X2 U13 ( .A(n508), .B(n136), .C(n135), .Y(n740) );
  INVX4 U14 ( .A(n395), .Y(n402) );
  INVX8 U15 ( .A(p1[0]), .Y(n396) );
  NAND3X4 U16 ( .A(n115), .B(n116), .C(n172), .Y(n343) );
  INVX1 U17 ( .A(p1[6]), .Y(n408) );
  BUFX20 U18 ( .A(n567), .Y(n98) );
  BUFX4 U19 ( .A(n612), .Y(n134) );
  NOR2X4 U20 ( .A(n577), .B(n134), .Y(n578) );
  INVX3 U21 ( .A(n616), .Y(n469) );
  BUFX8 U22 ( .A(p5[3]), .Y(n248) );
  OAI211X2 U23 ( .A0(p7[4]), .A1(n405), .B0(n390), .C0(n166), .Y(n392) );
  OAI22X4 U24 ( .A0(n657), .A1(n566), .B0(n643), .B1(n98), .Y(n570) );
  OR2X2 U25 ( .A(n474), .B(n473), .Y(n1) );
  OR2X2 U26 ( .A(n596), .B(n20), .Y(n2) );
  OR2X8 U27 ( .A(n472), .B(n471), .Y(n3) );
  NAND3X6 U28 ( .A(n1), .B(n2), .C(n3), .Y(n476) );
  OA22XL U29 ( .A0(n601), .A1(n467), .B0(n595), .B1(n88), .Y(n473) );
  OAI221X4 U30 ( .A0(n616), .A1(n4), .B0(n132), .B1(n99), .C0(n470), .Y(n471)
         );
  CLKAND2X12 U31 ( .A(n287), .B(p3[3]), .Y(n49) );
  OR2X8 U32 ( .A(n332), .B(n331), .Y(n90) );
  INVX3 U33 ( .A(n109), .Y(n48) );
  OAI221X1 U34 ( .A0(n129), .A1(n249), .B0(n128), .B1(n513), .C0(n512), .Y(
        n735) );
  NAND2X4 U35 ( .A(n36), .B(n9), .Y(n200) );
  NAND2X6 U36 ( .A(net46187), .B(n67), .Y(n66) );
  AOI211X2 U37 ( .A0(n590), .A1(n12), .B0(n591), .C0(n592), .Y(n586) );
  INVX8 U38 ( .A(p8[7]), .Y(n346) );
  INVX8 U39 ( .A(n567), .Y(n575) );
  AND2X8 U40 ( .A(n98), .B(n566), .Y(n50) );
  INVX4 U41 ( .A(n522), .Y(n515) );
  AND2X4 U42 ( .A(n374), .B(n366), .Y(n167) );
  INVX1 U43 ( .A(p3[6]), .Y(n312) );
  AND2X8 U44 ( .A(n293), .B(n292), .Y(n176) );
  CLKINVX12 U45 ( .A(p1[1]), .Y(n241) );
  NAND2X2 U46 ( .A(n114), .B(n16), .Y(c2[5]) );
  AND2X4 U47 ( .A(n235), .B(n335), .Y(n157) );
  BUFX12 U48 ( .A(p2[3]), .Y(n235) );
  INVX8 U49 ( .A(p4[7]), .Y(n412) );
  BUFX2 U50 ( .A(n226), .Y(n229) );
  INVX6 U51 ( .A(p8[2]), .Y(n336) );
  AOI2BB1X4 U52 ( .A0N(n338), .A1N(n157), .B0(n337), .Y(n345) );
  AND2X4 U53 ( .A(p6[3]), .B(n287), .Y(n165) );
  INVX8 U54 ( .A(n126), .Y(n545) );
  INVX3 U55 ( .A(net35295), .Y(net35308) );
  NAND2X2 U56 ( .A(net24831), .B(net35273), .Y(net35295) );
  CLKAND2X12 U57 ( .A(n235), .B(n351), .Y(n158) );
  NOR2X8 U58 ( .A(n45), .B(n283), .Y(n44) );
  NOR2X4 U59 ( .A(p9[6]), .B(n177), .Y(n45) );
  BUFX2 U60 ( .A(n214), .Y(n217) );
  NAND2BX4 U61 ( .AN(n222), .B(n7), .Y(n223) );
  NAND2X4 U62 ( .A(n222), .B(n7), .Y(n224) );
  NAND2X4 U63 ( .A(n196), .B(n204), .Y(n199) );
  CLKAND2X12 U64 ( .A(n239), .B(n238), .Y(n151) );
  CLKXOR2X8 U65 ( .A(n565), .B(n544), .Y(n567) );
  OAI32X2 U66 ( .A0(n450), .A1(n449), .A2(n448), .B0(n447), .B1(n446), .Y(n453) );
  AOI221X2 U67 ( .A0(n191), .A1(n21), .B0(n443), .B1(n442), .C0(n441), .Y(n449) );
  NAND2X4 U68 ( .A(n120), .B(n121), .Y(n381) );
  NAND2X2 U69 ( .A(p6[7]), .B(n297), .Y(n274) );
  CLKAND2X12 U70 ( .A(n360), .B(n359), .Y(n174) );
  NAND2BX4 U71 ( .AN(n210), .B(n31), .Y(n211) );
  NAND2X4 U72 ( .A(n210), .B(n31), .Y(n212) );
  OAI32X2 U73 ( .A0(n4), .A1(n615), .A2(n585), .B0(n604), .B1(n99), .Y(n589)
         );
  NOR2X2 U74 ( .A(n28), .B(n601), .Y(n585) );
  AOI2BB1X1 U75 ( .A0N(n617), .A1N(n33), .B0(n192), .Y(n437) );
  NAND2BX4 U76 ( .AN(n515), .B(n521), .Y(n96) );
  NAND2X2 U77 ( .A(n650), .B(b1_r[6]), .Y(n521) );
  NAND2X4 U78 ( .A(n383), .B(n382), .Y(n239) );
  AO22X4 U79 ( .A0(p7[5]), .A1(n403), .B0(p7[4]), .B1(n372), .Y(n366) );
  INVX4 U80 ( .A(p4[4]), .Y(n372) );
  INVX3 U81 ( .A(p5[5]), .Y(n355) );
  NAND2BX2 U82 ( .AN(b9_r[7]), .B(b1_r[7]), .Y(n538) );
  AND2X4 U83 ( .A(n248), .B(n335), .Y(n159) );
  CLKINVX1 U84 ( .A(p2[7]), .Y(n42) );
  INVX1 U85 ( .A(n175), .Y(n150) );
  CLKINVX1 U86 ( .A(p5[6]), .Y(n356) );
  BUFX6 U87 ( .A(n649), .Y(n126) );
  INVX3 U88 ( .A(net24848), .Y(net35287) );
  INVX3 U89 ( .A(n632), .Y(n440) );
  INVX3 U90 ( .A(n654), .Y(n517) );
  NOR2X1 U91 ( .A(b1_r[1]), .B(n126), .Y(n532) );
  NOR2X2 U92 ( .A(n577), .B(n109), .Y(n590) );
  OAI21X1 U93 ( .A0(n598), .A1(n94), .B0(n30), .Y(n594) );
  AND2X2 U94 ( .A(n124), .B(n576), .Y(n456) );
  NAND2BX2 U95 ( .AN(a6_r[5]), .B(net35249), .Y(n76) );
  OAI32X1 U96 ( .A0(net42161), .A1(n54), .A2(a4_r[2]), .B0(net24835), .B1(
        a4_r[3]), .Y(net35292) );
  INVX3 U97 ( .A(net24830), .Y(net35246) );
  NAND2X1 U98 ( .A(net24843), .B(net46635), .Y(n486) );
  AND2X2 U99 ( .A(n620), .B(n440), .Y(n191) );
  OA22X1 U100 ( .A0(n107), .A1(n21), .B0(n620), .B1(n440), .Y(n443) );
  NAND2X1 U101 ( .A(n133), .B(n17), .Y(n421) );
  AND3XL U102 ( .A(n620), .B(n427), .C(n19), .Y(n416) );
  AOI32X1 U103 ( .A0(n622), .A1(n34), .A2(n421), .B0(n621), .B1(n5), .Y(n422)
         );
  OAI211X1 U104 ( .A0(n654), .A1(n545), .B0(n653), .C0(b9_r[0]), .Y(n547) );
  INVX3 U105 ( .A(n554), .Y(n557) );
  INVX3 U106 ( .A(n600), .Y(n577) );
  INVX6 U107 ( .A(p2[5]), .Y(n358) );
  INVX6 U108 ( .A(p4[3]), .Y(n399) );
  INVX3 U109 ( .A(p5[4]), .Y(n323) );
  NAND2X1 U110 ( .A(p9[1]), .B(n299), .Y(n285) );
  NAND2X1 U111 ( .A(p9[1]), .B(n271), .Y(n272) );
  OR2XL U112 ( .A(n617), .B(n509), .Y(n247) );
  OR2X2 U113 ( .A(n454), .B(n453), .Y(n245) );
  CLKAND2X3 U114 ( .A(n325), .B(n324), .Y(n326) );
  CLKINVX1 U115 ( .A(p5[7]), .Y(n365) );
  NAND3X4 U116 ( .A(n148), .B(n149), .C(n391), .Y(a17_w) );
  OR2X6 U117 ( .A(n393), .B(n392), .Y(n149) );
  OAI211X1 U118 ( .A0(p6[4]), .A1(n308), .B0(n311), .C0(n171), .Y(n314) );
  INVX3 U119 ( .A(net24840), .Y(net35257) );
  AND2X2 U120 ( .A(net24841), .B(a5_r[3]), .Y(n85) );
  OAI211X1 U121 ( .A0(net24836), .A1(net35257), .B0(net24837), .C0(a6_r[0]), 
        .Y(n80) );
  AND2X2 U122 ( .A(net24845), .B(a5_r[4]), .Y(net45807) );
  NAND2X1 U123 ( .A(n636), .B(n34), .Y(n138) );
  AND2X2 U124 ( .A(n657), .B(b1_r[2]), .Y(n118) );
  AND2X4 U125 ( .A(n519), .B(n518), .Y(n117) );
  NAND2X1 U126 ( .A(n641), .B(b5_r[1]), .Y(n518) );
  CLKINVX1 U127 ( .A(n96), .Y(n523) );
  NAND2BX2 U128 ( .AN(b5_r[5]), .B(b1_r[5]), .Y(n522) );
  OAI221X1 U129 ( .A0(n532), .A1(n531), .B0(n643), .B1(b9_r[2]), .C0(n530), 
        .Y(n535) );
  CLKAND2X8 U130 ( .A(n539), .B(n97), .Y(n188) );
  NAND2X1 U131 ( .A(n8), .B(n589), .Y(n123) );
  NAND2X1 U132 ( .A(n598), .B(n94), .Y(n593) );
  NAND2X1 U133 ( .A(n595), .B(n88), .Y(n470) );
  CLKAND2X8 U134 ( .A(n112), .B(n15), .Y(n464) );
  NAND2X1 U135 ( .A(n611), .B(n12), .Y(n460) );
  NAND2X1 U136 ( .A(n43), .B(n348), .Y(n349) );
  INVX4 U137 ( .A(n248), .Y(n351) );
  CLKAND2X8 U138 ( .A(n342), .B(n341), .Y(n161) );
  INVX6 U139 ( .A(p8[6]), .Y(n340) );
  INVX4 U140 ( .A(p9[3]), .Y(n287) );
  NAND2X2 U141 ( .A(p6[5]), .B(n290), .Y(n277) );
  INVX6 U142 ( .A(p7[6]), .Y(n388) );
  INVX3 U143 ( .A(p3[1]), .Y(n299) );
  CLKINVX1 U144 ( .A(n74), .Y(n77) );
  AND2X2 U145 ( .A(net35295), .B(net35296), .Y(n67) );
  CLKINVX1 U146 ( .A(n486), .Y(n482) );
  AOI32X1 U147 ( .A0(net24847), .A1(a6_r[2]), .A2(n478), .B0(net24848), .B1(
        a6_r[3]), .Y(n484) );
  AND2X2 U148 ( .A(n486), .B(n485), .Y(n489) );
  INVX6 U149 ( .A(p4[2]), .Y(n400) );
  INVX3 U150 ( .A(p1[5]), .Y(n406) );
  INVX3 U151 ( .A(p4[6]), .Y(n404) );
  AND2X2 U152 ( .A(n636), .B(n35), .Y(n448) );
  OAI32X1 U153 ( .A0(n426), .A1(n425), .A2(n424), .B0(n423), .B1(n422), .Y(
        n438) );
  CLKINVX1 U154 ( .A(n558), .Y(n552) );
  OAI32X1 U155 ( .A0(n656), .A1(n190), .A2(n13), .B0(n127), .B1(n548), .Y(n549) );
  CLKAND2X3 U156 ( .A(n127), .B(n548), .Y(n190) );
  INVX1 U157 ( .A(n555), .Y(n556) );
  INVX3 U158 ( .A(n660), .Y(n553) );
  NAND2X1 U159 ( .A(n6), .B(n23), .Y(n225) );
  NAND2X1 U160 ( .A(n29), .B(n11), .Y(n213) );
  CLKINVX1 U161 ( .A(n623), .Y(n509) );
  OA21X2 U162 ( .A0(n36), .A1(n9), .B0(n200), .Y(n197) );
  INVX3 U163 ( .A(n106), .Y(n107) );
  BUFX8 U164 ( .A(net43964), .Y(n58) );
  CLKINVX1 U165 ( .A(net46636), .Y(net46665) );
  CLKINVX1 U166 ( .A(n49), .Y(n284) );
  OR2X4 U167 ( .A(n161), .B(n361), .Y(n116) );
  INVX6 U168 ( .A(p2[4]), .Y(n357) );
  OR2X4 U169 ( .A(p7[6]), .B(n167), .Y(n121) );
  OR2X4 U170 ( .A(n167), .B(n404), .Y(n120) );
  OR2X2 U171 ( .A(n177), .B(n307), .Y(n141) );
  INVX6 U172 ( .A(p9[7]), .Y(n297) );
  INVX3 U173 ( .A(p6[6]), .Y(n307) );
  NAND2X2 U174 ( .A(p1[5]), .B(n403), .Y(n407) );
  BUFX4 U175 ( .A(n626), .Y(n128) );
  INVX4 U176 ( .A(p1[4]), .Y(n405) );
  NAND3X1 U177 ( .A(n511), .B(n143), .C(n142), .Y(n736) );
  OR2X4 U178 ( .A(n632), .B(n513), .Y(n143) );
  OAI222XL U179 ( .A0(n203), .A1(n692), .B0(n202), .B1(n668), .C0(n205), .C1(
        n716), .Y(a3[6]) );
  OAI222XL U180 ( .A0(n203), .A1(n691), .B0(n202), .B1(n667), .C0(n205), .C1(
        n715), .Y(a3[5]) );
  OAI222XL U181 ( .A0(n216), .A1(n694), .B0(n215), .B1(n670), .C0(n217), .C1(
        n718), .Y(a2[0]) );
  NAND2X1 U182 ( .A(n110), .B(n24), .Y(c2[7]) );
  NAND3BX2 U183 ( .AN(n103), .B(n249), .C(n513), .Y(n508) );
  OAI222XL U184 ( .A0(n203), .A1(n693), .B0(n202), .B1(n669), .C0(n205), .C1(
        n717), .Y(a3[7]) );
  OAI222XL U185 ( .A0(n228), .A1(n708), .B0(n227), .B1(n684), .C0(n229), .C1(
        n732), .Y(a1[6]) );
  OAI222XL U186 ( .A0(n216), .A1(n696), .B0(n215), .B1(n672), .C0(n217), .C1(
        n720), .Y(a2[2]) );
  OAI222XL U187 ( .A0(n216), .A1(n699), .B0(n215), .B1(n675), .C0(n217), .C1(
        n723), .Y(a2[5]) );
  NAND2X1 U188 ( .A(n122), .B(n14), .Y(b5[5]) );
  NAND2X1 U189 ( .A(a6_r[5]), .B(net43964), .Y(n122) );
  OAI222XL U190 ( .A0(n203), .A1(n686), .B0(n202), .B1(n662), .C0(n205), .C1(
        n710), .Y(a3[0]) );
  OAI222XL U191 ( .A0(n216), .A1(n698), .B0(n215), .B1(n674), .C0(n217), .C1(
        n722), .Y(a2[4]) );
  OAI222XL U192 ( .A0(n228), .A1(n709), .B0(n227), .B1(n685), .C0(n229), .C1(
        n733), .Y(a1[7]) );
  OAI222XL U193 ( .A0(n228), .A1(n702), .B0(n227), .B1(n678), .C0(n229), .C1(
        n726), .Y(a1[0]) );
  OR2X4 U194 ( .A(n134), .B(n504), .Y(n105) );
  INVX3 U195 ( .A(net24846), .Y(net35273) );
  NOR2BX4 U196 ( .AN(n487), .B(n183), .Y(n182) );
  INVX1 U197 ( .A(net46569), .Y(net46570) );
  AOI2BB1X4 U198 ( .A0N(n84), .A1N(net35308), .B0(a5_r[6]), .Y(n82) );
  AOI2BB1X1 U199 ( .A0N(net35308), .A1N(n84), .B0(net46570), .Y(net35288) );
  INVX20 U200 ( .A(n251), .Y(n566) );
  CLKBUFX2 U201 ( .A(n252), .Y(n268) );
  CLKBUFX3 U202 ( .A(rst), .Y(n252) );
  CLKBUFX3 U203 ( .A(n602), .Y(n125) );
  CLKBUFX3 U204 ( .A(n635), .Y(n133) );
  OA21X4 U205 ( .A0(n6), .A1(n23), .B0(n225), .Y(n7) );
  BUFX4 U206 ( .A(n609), .Y(n124) );
  INVX3 U207 ( .A(n606), .Y(n576) );
  BUFX4 U208 ( .A(n648), .Y(n127) );
  BUFX4 U209 ( .A(n605), .Y(n131) );
  AOI22X1 U210 ( .A0(a4_r[5]), .A1(net35213), .B0(a5_r[5]), .B1(net46082), .Y(
        n14) );
  AOI21X2 U211 ( .A0(n615), .A1(n469), .B0(n181), .Y(n15) );
  AOI22X1 U212 ( .A0(b1_r[5]), .A1(n575), .B0(b5_r[5]), .B1(n251), .Y(n16) );
  BUFX6 U213 ( .A(n630), .Y(n129) );
  AOI22X1 U214 ( .A0(b1_r[7]), .A1(n575), .B0(b5_r[7]), .B1(n251), .Y(n24) );
  OA21X4 U215 ( .A0(n29), .A1(n11), .B0(n213), .Y(n31) );
  NAND2X2 U216 ( .A(n624), .B(n5), .Y(n433) );
  INVX4 U217 ( .A(p7[3]), .Y(n384) );
  OA21X2 U218 ( .A0(a39_r), .A1(n9), .B0(n200), .Y(n193) );
  OA21X2 U219 ( .A0(a39_r), .A1(n9), .B0(n200), .Y(n206) );
  AO21X2 U220 ( .A0(b9_r[4]), .A1(n51), .B0(n572), .Y(c2[4]) );
  INVX6 U221 ( .A(net46082), .Y(net35230) );
  OA21XL U222 ( .A0(net24845), .A1(a5_r[4]), .B0(net35299), .Y(net35293) );
  INVX2 U223 ( .A(p5[0]), .Y(n318) );
  AOI21X4 U224 ( .A0(n284), .A1(n234), .B0(n289), .Y(n296) );
  CLKINVX6 U225 ( .A(n475), .Y(n466) );
  NAND2X6 U226 ( .A(p1[3]), .B(n399), .Y(n395) );
  AND2X8 U227 ( .A(p1[3]), .B(n384), .Y(n175) );
  OA21X4 U228 ( .A0(n185), .A1(n515), .B0(n650), .Y(n516) );
  CLKBUFX2 U229 ( .A(n287), .Y(n41) );
  OA22X4 U230 ( .A0(n42), .A1(p5[7]), .B0(n361), .B1(p5[6]), .Y(n170) );
  CLKINVX2 U231 ( .A(p2[6]), .Y(n361) );
  BUFX6 U232 ( .A(p5[1]), .Y(n43) );
  CLKINVX12 U233 ( .A(n187), .Y(n513) );
  NAND2X1 U234 ( .A(n445), .B(n444), .Y(n450) );
  CLKINVX3 U235 ( .A(p6[1]), .Y(n271) );
  NAND2X1 U236 ( .A(p8[1]), .B(n348), .Y(n333) );
  OAI222XL U237 ( .A0(n216), .A1(n695), .B0(n215), .B1(n671), .C0(n217), .C1(
        n719), .Y(a2[1]) );
  NOR2X8 U238 ( .A(net35213), .B(net46082), .Y(net43964) );
  INVX16 U239 ( .A(net35228), .Y(net35213) );
  INVX3 U240 ( .A(n43), .Y(n319) );
  CLKAND2X8 U241 ( .A(n390), .B(n389), .Y(n231) );
  OAI211X2 U242 ( .A0(p4[4]), .A1(n405), .B0(n407), .C0(n173), .Y(n410) );
  NAND3X4 U243 ( .A(n330), .B(n90), .C(n91), .Y(a58_w) );
  OA21X2 U244 ( .A0(p9[4]), .A1(n275), .B0(n274), .Y(n279) );
  NAND2X8 U245 ( .A(n141), .B(n44), .Y(n139) );
  AO22X4 U246 ( .A0(n46), .A1(net35213), .B0(n47), .B1(net46082), .Y(n498) );
  INVX3 U247 ( .A(p6[5]), .Y(n306) );
  AOI221X2 U248 ( .A0(n321), .A1(n320), .B0(p5[2]), .B1(n336), .C0(n159), .Y(
        n329) );
  OAI221X2 U249 ( .A0(n250), .A1(n131), .B0(n611), .B1(n504), .C0(n494), .Y(
        n745) );
  OAI221X2 U250 ( .A0(n250), .A1(n608), .B0(n124), .B1(n504), .C0(n497), .Y(
        n742) );
  OAI221X2 U251 ( .A0(n250), .A1(n615), .B0(n616), .B1(n504), .C0(n500), .Y(
        n746) );
  NAND2X1 U252 ( .A(net24844), .B(net46569), .Y(net35296) );
  AO22X4 U253 ( .A0(net46569), .A1(net35213), .B0(a5_r[6]), .B1(net46082), .Y(
        n501) );
  AO22X4 U254 ( .A0(a4_r[4]), .A1(net35213), .B0(a5_r[4]), .B1(net46082), .Y(
        n499) );
  AO22X4 U255 ( .A0(a4_r[3]), .A1(net35213), .B0(a5_r[3]), .B1(net46082), .Y(
        n493) );
  OAI2BB1X1 U256 ( .A0N(a6_r[7]), .A1N(net43964), .B0(n95), .Y(b5[7]) );
  INVX3 U257 ( .A(n108), .Y(n109) );
  AND2X4 U258 ( .A(n434), .B(n433), .Y(n189) );
  NAND2X2 U259 ( .A(p1[2]), .B(n385), .Y(n238) );
  INVX3 U260 ( .A(p7[2]), .Y(n385) );
  CLKINVX1 U261 ( .A(p4[0]), .Y(n367) );
  AOI2BB1X2 U262 ( .A0N(n83), .A1N(n75), .B0(net24844), .Y(n72) );
  NOR2X2 U263 ( .A(net45745), .B(net45746), .Y(n83) );
  OAI211X2 U264 ( .A0(p9[4]), .A1(n308), .B0(n293), .C0(n164), .Y(n295) );
  AND2X2 U265 ( .A(n277), .B(n276), .Y(n278) );
  AOI22X4 U266 ( .A0(p3[2]), .A1(n288), .B0(n286), .B1(n285), .Y(n234) );
  AND2X8 U267 ( .A(n269), .B(n277), .Y(n177) );
  CLKAND2X8 U268 ( .A(n98), .B(n566), .Y(n51) );
  OAI211X1 U269 ( .A0(net24849), .A1(a5_r[1]), .B0(net24850), .C0(n47), .Y(n64) );
  AOI22X4 U270 ( .A0(p1[7]), .A1(n394), .B0(p1[6]), .B1(n388), .Y(n166) );
  OAI221X1 U271 ( .A0(n134), .A1(n48), .B0(n457), .B1(n456), .C0(n458), .Y(
        n462) );
  OAI2BB2X2 U272 ( .B0(n54), .B1(net35230), .A0N(a4_r[2]), .A1N(net35213), .Y(
        n87) );
  AOI22X2 U273 ( .A0(p1[2]), .A1(n400), .B0(n398), .B1(n397), .Y(n242) );
  OAI32X1 U274 ( .A0(n159), .A1(p5[2]), .A2(n336), .B0(n248), .B1(n335), .Y(
        n328) );
  NOR3X2 U275 ( .A(n117), .B(n118), .C(n184), .Y(n526) );
  NAND2X1 U276 ( .A(net24842), .B(net35273), .Y(n487) );
  INVXL U277 ( .A(n318), .Y(n52) );
  INVX3 U278 ( .A(n53), .Y(n54) );
  NAND3X4 U279 ( .A(n139), .B(n140), .C(n282), .Y(a69_w) );
  BUFX8 U280 ( .A(n631), .Y(n130) );
  INVX8 U281 ( .A(n130), .Y(n427) );
  OA22X2 U282 ( .A0(n107), .A1(n427), .B0(n620), .B1(n19), .Y(n418) );
  AO21XL U283 ( .A0(n620), .A1(n19), .B0(n427), .Y(n419) );
  OAI221X2 U284 ( .A0(n637), .A1(n249), .B0(n636), .B1(n513), .C0(n506), .Y(
        n738) );
  OAI222XL U285 ( .A0(n216), .A1(n697), .B0(n215), .B1(n673), .C0(n217), .C1(
        n721), .Y(a2[3]) );
  OR2X4 U286 ( .A(n250), .B(n109), .Y(n104) );
  NAND3BX2 U287 ( .AN(n62), .B(n250), .C(n504), .Y(n492) );
  INVX8 U288 ( .A(p4[1]), .Y(n368) );
  OA22X2 U289 ( .A0(n55), .A1(n615), .B0(n56), .B1(n604), .Y(n186) );
  NAND2BX2 U290 ( .AN(n250), .B(n94), .Y(n100) );
  OAI211X2 U291 ( .A0(p5[4]), .A1(n357), .B0(n360), .C0(n170), .Y(n363) );
  INVX6 U292 ( .A(p9[5]), .Y(n290) );
  NAND2X2 U293 ( .A(b9_r[7]), .B(n50), .Y(n110) );
  OAI221X2 U294 ( .A0(net24839), .A1(net46665), .B0(net35288), .B1(net35289), 
        .C0(n66), .Y(n57) );
  OAI221X2 U295 ( .A0(net24839), .A1(net46665), .B0(net35288), .B1(net35289), 
        .C0(n66), .Y(net35231) );
  NAND3BX4 U296 ( .AN(n107), .B(n249), .C(n513), .Y(n510) );
  AOI222X2 U297 ( .A0(n581), .A1(n582), .B0(n134), .B1(n577), .C0(n611), .C1(
        n26), .Y(n580) );
  OA21X1 U298 ( .A0(p7[4]), .A1(n372), .B0(n371), .Y(n376) );
  OAI221X2 U299 ( .A0(p7[6]), .A1(n231), .B0(n231), .B1(n408), .C0(n166), .Y(
        n391) );
  AND2X4 U300 ( .A(n374), .B(n373), .Y(n375) );
  NAND2X2 U301 ( .A(p4[5]), .B(n387), .Y(n374) );
  NAND2X2 U302 ( .A(p6[6]), .B(n291), .Y(n276) );
  AOI2BB1X2 U303 ( .A0N(n125), .A1N(n469), .B0(n468), .Y(n472) );
  NAND3X2 U304 ( .A(n99), .B(n250), .C(n504), .Y(n503) );
  OAI221X2 U305 ( .A0(n250), .A1(n603), .B0(n607), .B1(n504), .C0(n477), .Y(
        n749) );
  OAI221X2 U306 ( .A0(n250), .A1(n613), .B0(n89), .B1(n504), .C0(n502), .Y(
        n748) );
  OAI32X2 U307 ( .A0(p1[2]), .A1(n402), .A2(n400), .B0(p1[3]), .B1(n399), .Y(
        n401) );
  AOI21X2 U308 ( .A0(n395), .A1(n242), .B0(n401), .Y(n411) );
  INVXL U309 ( .A(n405), .Y(n236) );
  AOI2BB1X4 U310 ( .A0N(n124), .A1N(n576), .B0(n25), .Y(n457) );
  OAI2BB2X4 U311 ( .B0(n464), .B1(n463), .A0N(n88), .A1N(n613), .Y(n179) );
  OAI211X2 U312 ( .A0(p8[4]), .A1(n357), .B0(n342), .C0(n172), .Y(n344) );
  OAI211X2 U313 ( .A0(p9[1]), .A1(n271), .B0(p9[0]), .C0(n270), .Y(n273) );
  CLKINVX3 U314 ( .A(n384), .Y(n147) );
  OAI32X2 U315 ( .A0(n162), .A1(p4[2]), .A2(n385), .B0(p4[3]), .B1(n384), .Y(
        n377) );
  BUFX6 U316 ( .A(p5[5]), .Y(n59) );
  AOI2BB1X4 U317 ( .A0N(n354), .A1N(n158), .B0(n353), .Y(n364) );
  AO22X4 U318 ( .A0(b1_r[0]), .A1(n575), .B0(b5_r[0]), .B1(n251), .Y(n568) );
  AO22X4 U319 ( .A0(b1_r[3]), .A1(n575), .B0(b5_r[3]), .B1(n251), .Y(n571) );
  AO22X4 U320 ( .A0(n60), .A1(n575), .B0(b5_r[4]), .B1(n251), .Y(n572) );
  AO22X4 U321 ( .A0(b1_r[1]), .A1(n575), .B0(b5_r[1]), .B1(n251), .Y(n569) );
  AOI2BB1X2 U322 ( .A0N(n83), .A1N(n75), .B0(a6_r[6]), .Y(n73) );
  INVX4 U323 ( .A(n76), .Y(n75) );
  NAND2X4 U324 ( .A(n59), .B(n339), .Y(n325) );
  OAI221X2 U325 ( .A0(p5[6]), .A1(n174), .B0(n174), .B1(n361), .C0(n170), .Y(
        n362) );
  OAI211X2 U326 ( .A0(p8[1]), .A1(n348), .B0(p8[0]), .C0(n347), .Y(n334) );
  OAI221X2 U327 ( .A0(p4[6]), .A1(n168), .B0(n168), .B1(n408), .C0(n173), .Y(
        n409) );
  AOI22X4 U328 ( .A0(p1[7]), .A1(n412), .B0(p1[6]), .B1(n404), .Y(n173) );
  OAI221X2 U329 ( .A0(p3[7]), .A1(n316), .B0(n315), .B1(n314), .C0(n313), .Y(
        a36_w) );
  AOI2BB1X4 U330 ( .A0N(n305), .A1N(n244), .B0(n304), .Y(n315) );
  NOR2BX4 U331 ( .AN(n407), .B(n169), .Y(n168) );
  OR2X4 U332 ( .A(p8[6]), .B(n161), .Y(n115) );
  OR2X4 U333 ( .A(n633), .B(n249), .Y(n142) );
  OAI211X2 U334 ( .A0(n43), .A1(n348), .B0(p5[0]), .C0(n347), .Y(n350) );
  AOI32X1 U335 ( .A0(n622), .A1(n18), .A2(n445), .B0(n621), .B1(n144), .Y(n446) );
  NAND3BX2 U336 ( .AN(n622), .B(n249), .C(n513), .Y(n506) );
  AND2X2 U337 ( .A(n637), .B(n35), .Y(n424) );
  OR2X4 U338 ( .A(n634), .B(n513), .Y(n136) );
  NAND3BX2 U339 ( .AN(n620), .B(n249), .C(n513), .Y(n511) );
  NAND3BX4 U340 ( .AN(n618), .B(n249), .C(n513), .Y(n455) );
  OAI221X2 U341 ( .A0(n133), .A1(n249), .B0(n624), .B1(n513), .C0(n507), .Y(
        n739) );
  NAND3BX2 U342 ( .AN(n621), .B(n249), .C(n513), .Y(n507) );
  NAND3BX2 U343 ( .AN(n459), .B(n134), .C(n48), .Y(n461) );
  NAND3BX2 U344 ( .AN(n597), .B(n250), .C(n504), .Y(n497) );
  NOR2BX4 U345 ( .AN(p4[3]), .B(n147), .Y(n162) );
  OAI221X2 U346 ( .A0(n604), .A1(n250), .B0(n504), .B1(n132), .C0(n503), .Y(
        n747) );
  OA21X1 U347 ( .A0(p8[4]), .A1(n323), .B0(n322), .Y(n327) );
  NAND3BX2 U348 ( .AN(n599), .B(n250), .C(n504), .Y(n494) );
  CLKINVX1 U349 ( .A(n645), .Y(n60) );
  NAND3BX2 U350 ( .AN(n125), .B(n250), .C(n504), .Y(n500) );
  CLKINVX1 U351 ( .A(n61), .Y(n62) );
  OAI222XL U352 ( .A0(n228), .A1(n704), .B0(n227), .B1(n680), .C0(n229), .C1(
        n728), .Y(a1[2]) );
  AOI221X2 U353 ( .A0(n107), .A1(n419), .B0(n418), .B1(n417), .C0(n416), .Y(
        n425) );
  OAI211X2 U354 ( .A0(p8[1]), .A1(n319), .B0(p8[0]), .C0(n318), .Y(n321) );
  AOI221X2 U355 ( .A0(n370), .A1(n369), .B0(p4[2]), .B1(n385), .C0(n162), .Y(
        n378) );
  OAI221X4 U356 ( .A0(n651), .A1(b1_r[7]), .B0(n528), .B1(n529), .C0(n527), 
        .Y(n565) );
  OR2X4 U357 ( .A(n627), .B(n249), .Y(n135) );
  AOI22X1 U358 ( .A0(net46665), .A1(net35213), .B0(a5_r[7]), .B1(net46082), 
        .Y(n95) );
  OAI211X2 U359 ( .A0(n641), .A1(n517), .B0(n640), .C0(b5_r[0]), .Y(n519) );
  NAND2X1 U360 ( .A(n274), .B(n276), .Y(n283) );
  AO21X4 U361 ( .A0(a6_r[3]), .A1(n58), .B0(n493), .Y(b5[3]) );
  AND2X4 U362 ( .A(net24846), .B(net35249), .Y(net45806) );
  BUFX16 U363 ( .A(n514), .Y(n249) );
  AO21X4 U364 ( .A0(a6_r[2]), .A1(n58), .B0(n87), .Y(b5[2]) );
  AOI221X1 U365 ( .A0(n64), .A1(n65), .B0(n54), .B1(a4_r[2]), .C0(net42161), 
        .Y(n63) );
  OA21X4 U366 ( .A0(net35292), .A1(n63), .B0(net35293), .Y(net46187) );
  NAND2X2 U367 ( .A(net24839), .B(net46635), .Y(net35299) );
  BUFX20 U368 ( .A(net43734), .Y(net46082) );
  XOR2X4 U369 ( .A(net35231), .B(n68), .Y(net43734) );
  AOI2BB1X4 U370 ( .A0N(n69), .A1N(n70), .B0(n71), .Y(n68) );
  AOI2BB1X4 U371 ( .A0N(n85), .A1N(n78), .B0(n79), .Y(n69) );
  OAI2BB2X2 U372 ( .B0(a6_r[2]), .B1(n54), .A0N(n80), .A1N(n81), .Y(n78) );
  NAND2XL U373 ( .A(net24836), .B(net35257), .Y(n81) );
  OAI32X2 U374 ( .A0(net24834), .A1(n85), .A2(n53), .B0(net24841), .B1(a5_r[3]), .Y(n79) );
  NAND2X1 U375 ( .A(n86), .B(n77), .Y(n70) );
  OA21XL U376 ( .A0(net24829), .A1(net35246), .B0(n76), .Y(n86) );
  AO22X4 U377 ( .A0(net24832), .A1(a5_r[6]), .B0(net24843), .B1(a5_r[7]), .Y(
        n74) );
  OAI32X2 U378 ( .A0(n72), .A1(n73), .A2(n74), .B0(net24843), .B1(a5_r[7]), 
        .Y(n71) );
  NOR2X4 U379 ( .A(net45806), .B(net45807), .Y(n84) );
  NAND3BX4 U380 ( .AN(n82), .B(net35299), .C(net35296), .Y(net35289) );
  CLKXOR2X8 U381 ( .A(n57), .B(net35260), .Y(net35228) );
  AND3X8 U382 ( .A(n245), .B(n246), .C(n247), .Y(n187) );
  AND3X8 U383 ( .A(n137), .B(n138), .C(n433), .Y(n436) );
  NAND2X6 U384 ( .A(n432), .B(n431), .Y(n137) );
  BUFX4 U385 ( .A(p5[7]), .Y(n232) );
  OAI22X4 U386 ( .A0(n163), .A1(n356), .B0(p8[6]), .B1(n163), .Y(n332) );
  CLKAND2X12 U387 ( .A(n325), .B(n317), .Y(n163) );
  OAI211X2 U388 ( .A0(n368), .A1(p7[1]), .B0(p7[0]), .C0(n367), .Y(n370) );
  CLKINVX1 U389 ( .A(n88), .Y(n89) );
  OR2XL U390 ( .A(n232), .B(n346), .Y(n91) );
  NOR2X4 U391 ( .A(n186), .B(n181), .Y(n233) );
  NAND3BX2 U392 ( .AN(n598), .B(n250), .C(n504), .Y(n495) );
  INVX3 U393 ( .A(n92), .Y(n93) );
  AO21X4 U394 ( .A0(a6_r[6]), .A1(n58), .B0(n501), .Y(b5[6]) );
  AO21X4 U395 ( .A0(b9_r[1]), .A1(n152), .B0(n569), .Y(c2[1]) );
  AO21X4 U396 ( .A0(b9_r[0]), .A1(n152), .B0(n568), .Y(c2[0]) );
  AO22X2 U397 ( .A0(n659), .A1(b9_r[5]), .B0(n661), .B1(n553), .Y(n554) );
  AOI2BB1X2 U398 ( .A0N(n557), .A1N(n556), .B0(b9_r[6]), .Y(n559) );
  NAND2X4 U399 ( .A(p2[5]), .B(n339), .Y(n342) );
  OAI221X2 U400 ( .A0(n130), .A1(n249), .B0(n625), .B1(n513), .C0(n510), .Y(
        n737) );
  AO21X4 U401 ( .A0(a6_r[0]), .A1(n58), .B0(n498), .Y(b5[0]) );
  OAI221X2 U402 ( .A0(p2[7]), .A1(n365), .B0(n364), .B1(n363), .C0(n362), .Y(
        a25_w) );
  AOI2BB2X2 U403 ( .B0(net24845), .B1(net35246), .A0N(a4_r[5]), .A1N(net24842), 
        .Y(n183) );
  INVX1 U404 ( .A(net46635), .Y(net46636) );
  AO22X4 U405 ( .A0(n644), .A1(b9_r[5]), .B0(n645), .B1(n553), .Y(n97) );
  CLKAND2X12 U406 ( .A(n146), .B(n145), .Y(n185) );
  NOR2X6 U407 ( .A(a5_r[5]), .B(net24842), .Y(net45745) );
  OAI221X1 U408 ( .A0(n93), .A1(n249), .B0(n629), .B1(n513), .C0(n455), .Y(
        n734) );
  OAI32X2 U409 ( .A0(n584), .A1(n585), .A2(n586), .B0(n587), .B1(n588), .Y(
        n583) );
  OAI221X2 U410 ( .A0(n480), .A1(n479), .B0(net24847), .B1(a6_r[2]), .C0(n478), 
        .Y(n483) );
  NOR2X2 U411 ( .A(n113), .B(n46), .Y(n479) );
  NOR2BX4 U412 ( .AN(n237), .B(n466), .Y(n178) );
  OA21X1 U413 ( .A0(n645), .A1(b5_r[4]), .B0(n520), .Y(n524) );
  OA21X4 U414 ( .A0(n27), .A1(n578), .B0(n599), .Y(n579) );
  NAND2BX4 U415 ( .AN(b1_r[5]), .B(n551), .Y(n145) );
  NOR2X2 U416 ( .A(b5_r[3]), .B(n642), .Y(n184) );
  BUFX20 U417 ( .A(n574), .Y(n251) );
  NAND2X4 U418 ( .A(n232), .B(n346), .Y(n324) );
  AOI2BB1X2 U419 ( .A0N(n190), .A1N(n550), .B0(n549), .Y(n563) );
  NAND2BX4 U420 ( .AN(b1_r[4]), .B(b5_r[4]), .Y(n146) );
  OR2X4 U421 ( .A(n504), .B(n610), .Y(n101) );
  NAND2BX4 U422 ( .AN(b9_r[6]), .B(b1_r[6]), .Y(n537) );
  AOI22X4 U423 ( .A0(p2[7]), .A1(n346), .B0(p2[6]), .B1(n340), .Y(n172) );
  OA22X4 U424 ( .A0(n638), .A1(n188), .B0(n188), .B1(b9_r[6]), .Y(n540) );
  OAI221X2 U425 ( .A0(p3[7]), .A1(n297), .B0(n296), .B1(n295), .C0(n294), .Y(
        a39_w) );
  OAI221X2 U426 ( .A0(p9[6]), .A1(n176), .B0(n176), .B1(n312), .C0(n164), .Y(
        n294) );
  NAND3X2 U427 ( .A(n100), .B(n101), .C(n495), .Y(n743) );
  AO22X4 U428 ( .A0(n619), .A1(n22), .B0(n415), .B1(n414), .Y(n417) );
  NAND3BX4 U429 ( .AN(n619), .B(n249), .C(n513), .Y(n512) );
  AO21X2 U430 ( .A0(a6_r[1]), .A1(net43964), .B0(n496), .Y(b5[1]) );
  AOI211X2 U431 ( .A0(n126), .A1(b1_r[1]), .B0(n652), .C0(b1_r[0]), .Y(n531)
         );
  AND2X1 U432 ( .A(net24829), .B(net35246), .Y(net45746) );
  INVX1 U433 ( .A(n537), .Y(n533) );
  AND2X1 U434 ( .A(n538), .B(n537), .Y(n541) );
  CLKINVX1 U435 ( .A(n102), .Y(n103) );
  NAND3X2 U436 ( .A(n492), .B(n105), .C(n104), .Y(n744) );
  OR2X8 U437 ( .A(n452), .B(n192), .Y(n246) );
  INVX8 U438 ( .A(n451), .Y(n452) );
  OA22X4 U439 ( .A0(n89), .A1(n233), .B0(n8), .B1(n233), .Y(n463) );
  OR2X8 U440 ( .A(n111), .B(n573), .Y(c2[6]) );
  AO22X4 U441 ( .A0(b1_r[6]), .A1(n575), .B0(b5_r[6]), .B1(n251), .Y(n573) );
  NAND3X2 U442 ( .A(n462), .B(n461), .C(n460), .Y(n112) );
  AO21X4 U443 ( .A0(net24840), .A1(a4_r[1]), .B0(net24838), .Y(n113) );
  OAI221X2 U444 ( .A0(p2[7]), .A1(n346), .B0(n345), .B1(n344), .C0(n343), .Y(
        a28_w) );
  OA21X4 U445 ( .A0(n603), .A1(n40), .B0(n466), .Y(n119) );
  NAND2X6 U446 ( .A(n119), .B(n465), .Y(n505) );
  OAI2BB1X4 U447 ( .A0N(n603), .A1N(n40), .B0(n583), .Y(n465) );
  BUFX20 U448 ( .A(n505), .Y(n250) );
  OAI221X2 U449 ( .A0(n381), .A1(n380), .B0(p4[7]), .B1(n394), .C0(n379), .Y(
        a47_w) );
  AND2X2 U450 ( .A(n123), .B(n39), .Y(n587) );
  OAI221X2 U451 ( .A0(n240), .A1(n160), .B0(n160), .B1(n312), .C0(n171), .Y(
        n313) );
  AO21X4 U452 ( .A0(b9_r[3]), .A1(n50), .B0(n571), .Y(c2[3]) );
  AO21X4 U453 ( .A0(b9_r[2]), .A1(n152), .B0(n570), .Y(c2[2]) );
  AO22X2 U454 ( .A0(n656), .A1(n13), .B0(n547), .B1(n546), .Y(n550) );
  AOI211X2 U455 ( .A0(n578), .A1(n27), .B0(n580), .C0(n579), .Y(n468) );
  NAND2BX4 U456 ( .AN(n196), .B(n204), .Y(n198) );
  NAND3BX4 U457 ( .AN(n516), .B(n520), .C(n521), .Y(n528) );
  OAI211X2 U458 ( .A0(n526), .A1(n525), .B0(n524), .C0(n523), .Y(n527) );
  AO21X4 U459 ( .A0(a6_r[4]), .A1(n58), .B0(n499), .Y(b5[4]) );
  OAI2BB2X4 U460 ( .B0(n179), .B1(n180), .A0N(n607), .A1N(n156), .Y(n475) );
  AO22X4 U461 ( .A0(net35213), .A1(a4_r[1]), .B0(a5_r[1]), .B1(net46082), .Y(
        n496) );
  OAI32X2 U462 ( .A0(p2[2]), .A1(n158), .A2(n352), .B0(n235), .B1(n351), .Y(
        n353) );
  AO22X4 U463 ( .A0(p2[2]), .A1(n352), .B0(n350), .B1(n349), .Y(n354) );
  OAI221X2 U464 ( .A0(p1[7]), .A1(n412), .B0(n411), .B1(n410), .C0(n409), .Y(
        a14_w) );
  AOI222X4 U465 ( .A0(n593), .A1(n594), .B0(n109), .B1(n577), .C0(n131), .C1(
        n26), .Y(n592) );
  NAND2X2 U466 ( .A(n651), .B(b1_r[7]), .Y(n520) );
  OAI211X2 U467 ( .A0(n378), .A1(n377), .B0(n376), .C0(n375), .Y(n379) );
  BUFX6 U468 ( .A(n614), .Y(n132) );
  AOI211X2 U469 ( .A0(n484), .A1(n483), .B0(n482), .C0(n481), .Y(n491) );
  AOI2BB1X4 U470 ( .A0N(n563), .A1N(n562), .B0(n561), .Y(n564) );
  OAI211X1 U471 ( .A0(n661), .A1(n553), .B0(n555), .C0(n552), .Y(n562) );
  AOI2BB1X1 U472 ( .A0N(n185), .A1N(n515), .B0(n638), .Y(n529) );
  OAI21X2 U473 ( .A0(n598), .A1(n25), .B0(n10), .Y(n582) );
  NAND2X2 U474 ( .A(n598), .B(n25), .Y(n581) );
  NAND2X2 U475 ( .A(a39_r), .B(a36_r), .Y(n195) );
  NAND2X2 U476 ( .A(a28_r), .B(a25_r), .Y(n209) );
  NAND2X2 U477 ( .A(a17_r), .B(a14_r), .Y(n221) );
  NAND2X2 U478 ( .A(a58_r), .B(n11), .Y(n208) );
  NAND2X2 U479 ( .A(a69_r), .B(n9), .Y(n194) );
  NAND2X2 U480 ( .A(a47_r), .B(n23), .Y(n220) );
  NAND2X2 U481 ( .A(a25_r), .B(n29), .Y(n216) );
  OAI222XL U482 ( .A0(n203), .A1(n689), .B0(n202), .B1(n665), .C0(n205), .C1(
        n713), .Y(a3[3]) );
  OAI222XL U483 ( .A0(n203), .A1(n687), .B0(n202), .B1(n663), .C0(n205), .C1(
        n711), .Y(a3[1]) );
  OAI222XL U484 ( .A0(n203), .A1(n690), .B0(n202), .B1(n666), .C0(n205), .C1(
        n714), .Y(a3[4]) );
  OAI222XL U485 ( .A0(n203), .A1(n688), .B0(n202), .B1(n664), .C0(n205), .C1(
        n712), .Y(a3[2]) );
  NAND2X2 U486 ( .A(a36_r), .B(n36), .Y(n203) );
  OAI222XL U487 ( .A0(n228), .A1(n703), .B0(n227), .B1(n679), .C0(n229), .C1(
        n727), .Y(a1[1]) );
  OAI222XL U488 ( .A0(n228), .A1(n707), .B0(n227), .B1(n683), .C0(n229), .C1(
        n731), .Y(a1[5]) );
  OAI222XL U489 ( .A0(n228), .A1(n706), .B0(n227), .B1(n682), .C0(n229), .C1(
        n730), .Y(a1[4]) );
  OAI222XL U490 ( .A0(n228), .A1(n705), .B0(n227), .B1(n681), .C0(n229), .C1(
        n729), .Y(a1[3]) );
  NAND2X2 U491 ( .A(a14_r), .B(n6), .Y(n228) );
  NAND2X2 U492 ( .A(a28_r), .B(a58_r), .Y(n215) );
  NAND2X2 U493 ( .A(a39_r), .B(a69_r), .Y(n202) );
  NAND2X2 U494 ( .A(a17_r), .B(a47_r), .Y(n227) );
  AOI32X4 U495 ( .A0(n633), .A1(n440), .A2(n430), .B0(n429), .B1(n428), .Y(
        n432) );
  NAND2X1 U496 ( .A(n130), .B(n21), .Y(n431) );
  OR2X8 U497 ( .A(n436), .B(n435), .Y(n153) );
  AOI22X2 U498 ( .A0(p4[5]), .A1(n406), .B0(p4[4]), .B1(n405), .Y(n169) );
  INVX8 U499 ( .A(p4[5]), .Y(n403) );
  INVX4 U500 ( .A(net24831), .Y(net35249) );
  OR2X1 U501 ( .A(p6[7]), .B(n297), .Y(n140) );
  OAI211X2 U502 ( .A0(n280), .A1(n281), .B0(n279), .C0(n278), .Y(n282) );
  AOI22X4 U503 ( .A0(p3[7]), .A1(n297), .B0(p3[6]), .B1(n291), .Y(n164) );
  AOI22X4 U504 ( .A0(p3[7]), .A1(n316), .B0(p3[6]), .B1(n307), .Y(n171) );
  OR2X1 U505 ( .A(p1[7]), .B(n394), .Y(n148) );
  AOI21X4 U506 ( .A0(n150), .A1(n151), .B0(n386), .Y(n393) );
  INVX6 U507 ( .A(p7[7]), .Y(n394) );
  OAI211X2 U508 ( .A0(n439), .A1(n438), .B0(n451), .C0(n437), .Y(n514) );
  AOI2BB1X1 U509 ( .A0N(n191), .A1N(n21), .B0(n106), .Y(n441) );
  INVX3 U510 ( .A(p2[0]), .Y(n347) );
  AO22X2 U511 ( .A0(n658), .A1(b5_r[6]), .B0(n646), .B1(b5_r[7]), .Y(n558) );
  INVX3 U512 ( .A(n659), .Y(n551) );
  INVX1 U513 ( .A(n485), .Y(n481) );
  NAND2X2 U514 ( .A(p4[7]), .B(n394), .Y(n371) );
  CLKINVX4 U515 ( .A(p3[0]), .Y(n298) );
  OR2XL U516 ( .A(n627), .B(n38), .Y(n154) );
  OR2XL U517 ( .A(n628), .B(n509), .Y(n155) );
  INVX12 U518 ( .A(n178), .Y(n504) );
  AND2X2 U519 ( .A(n604), .B(n467), .Y(n181) );
  NAND2X1 U520 ( .A(n634), .B(n102), .Y(n444) );
  NAND2X2 U521 ( .A(p5[6]), .B(n340), .Y(n322) );
  INVX3 U522 ( .A(p6[4]), .Y(n275) );
  AND2X4 U523 ( .A(n311), .B(n310), .Y(n160) );
  INVX4 U524 ( .A(p3[4]), .Y(n308) );
  OAI211X2 U525 ( .A0(p7[1]), .A1(n241), .B0(p7[0]), .C0(n396), .Y(n383) );
  INVX3 U526 ( .A(p9[6]), .Y(n291) );
  INVX1 U527 ( .A(p6[3]), .Y(n302) );
  INVX1 U528 ( .A(n458), .Y(n459) );
  INVX6 U529 ( .A(p9[2]), .Y(n288) );
  INVXL U530 ( .A(n470), .Y(n474) );
  NAND2XL U531 ( .A(n654), .B(n545), .Y(n546) );
  AND2XL U532 ( .A(net24849), .B(net35257), .Y(n480) );
  NAND2X2 U533 ( .A(net24841), .B(net35287), .Y(n478) );
  INVXL U534 ( .A(n627), .Y(n413) );
  NAND3BXL U535 ( .AN(n509), .B(n617), .C(n628), .Y(n741) );
  CLKBUFX3 U536 ( .A(n252), .Y(n253) );
  CLKBUFX3 U537 ( .A(n268), .Y(n255) );
  CLKBUFX3 U538 ( .A(n268), .Y(n256) );
  CLKBUFX3 U539 ( .A(n268), .Y(n258) );
  CLKBUFX3 U540 ( .A(n252), .Y(n259) );
  CLKBUFX3 U541 ( .A(n252), .Y(n260) );
  CLKBUFX3 U542 ( .A(n252), .Y(n261) );
  CLKBUFX3 U543 ( .A(n252), .Y(n257) );
  CLKBUFX3 U544 ( .A(n268), .Y(n262) );
  CLKBUFX3 U545 ( .A(n268), .Y(n264) );
  CLKBUFX3 U546 ( .A(n252), .Y(n254) );
  CLKBUFX3 U547 ( .A(n252), .Y(n263) );
  CLKBUFX3 U548 ( .A(n268), .Y(n265) );
  CLKBUFX3 U549 ( .A(rst), .Y(n266) );
  CLKBUFX3 U550 ( .A(n268), .Y(n267) );
  NAND2X1 U551 ( .A(n324), .B(n322), .Y(n331) );
  NAND2X1 U552 ( .A(n371), .B(n373), .Y(n380) );
  INVX3 U553 ( .A(p5[2]), .Y(n352) );
  NAND2X1 U554 ( .A(p4[1]), .B(n241), .Y(n397) );
  INVX3 U555 ( .A(p3[5]), .Y(n309) );
  INVX3 U556 ( .A(p6[7]), .Y(n316) );
  INVX3 U557 ( .A(p6[2]), .Y(n303) );
  INVX3 U558 ( .A(p7[5]), .Y(n387) );
  CLKBUFX3 U559 ( .A(n197), .Y(n204) );
  NAND2X1 U560 ( .A(p4[6]), .B(n388), .Y(n373) );
  AND2X2 U561 ( .A(n603), .B(n20), .Y(n180) );
  INVX3 U562 ( .A(n132), .Y(n467) );
  OAI32X1 U563 ( .A0(n184), .A1(n657), .A2(b1_r[2]), .B0(n655), .B1(b1_r[3]), 
        .Y(n525) );
  NOR2X1 U564 ( .A(n8), .B(n589), .Y(n588) );
  AO22X1 U565 ( .A0(n617), .A1(n33), .B0(n103), .B1(n413), .Y(n439) );
  CLKINVX1 U566 ( .A(n420), .Y(n423) );
  NAND2X1 U567 ( .A(n421), .B(n420), .Y(n426) );
  CLKINVX1 U568 ( .A(n538), .Y(n534) );
  CLKINVX1 U569 ( .A(n444), .Y(n447) );
  INVX1 U570 ( .A(n655), .Y(n548) );
  OA21XL U571 ( .A0(net24845), .A1(net35246), .B0(n487), .Y(n490) );
  OA21XL U572 ( .A0(n645), .A1(n553), .B0(n539), .Y(n542) );
  NAND2X1 U573 ( .A(n129), .B(n37), .Y(n415) );
  INVX1 U574 ( .A(n93), .Y(n414) );
  AND2X2 U575 ( .A(n628), .B(n509), .Y(n192) );
  NAND2X1 U576 ( .A(net24832), .B(net46569), .Y(n485) );
  NAND2X1 U577 ( .A(n627), .B(n102), .Y(n420) );
  OAI222XL U578 ( .A0(n710), .A1(n195), .B0(n686), .B1(n194), .C0(n662), .C1(
        n193), .Y(a9[0]) );
  OAI222XL U579 ( .A0(n711), .A1(n195), .B0(n687), .B1(n194), .C0(n663), .C1(
        n193), .Y(a9[1]) );
  OAI222XL U580 ( .A0(n712), .A1(n195), .B0(n688), .B1(n194), .C0(n664), .C1(
        n193), .Y(a9[2]) );
  OAI222XL U581 ( .A0(n713), .A1(n195), .B0(n689), .B1(n194), .C0(n665), .C1(
        n193), .Y(a9[3]) );
  OAI222XL U582 ( .A0(n714), .A1(n195), .B0(n690), .B1(n194), .C0(n666), .C1(
        n206), .Y(a9[4]) );
  OAI222XL U583 ( .A0(n715), .A1(n195), .B0(n691), .B1(n194), .C0(n667), .C1(
        n206), .Y(a9[5]) );
  OAI222XL U584 ( .A0(n716), .A1(n195), .B0(n692), .B1(n194), .C0(n668), .C1(
        n206), .Y(a9[6]) );
  OAI222XL U585 ( .A0(n717), .A1(n195), .B0(n693), .B1(n194), .C0(n669), .C1(
        n206), .Y(a9[7]) );
  XNOR2X1 U586 ( .A(a39_r), .B(n9), .Y(n196) );
  OAI222XL U587 ( .A0(n710), .A1(n199), .B0(n662), .B1(n198), .C0(n686), .C1(
        n204), .Y(a6[0]) );
  OAI222XL U588 ( .A0(n711), .A1(n199), .B0(n663), .B1(n198), .C0(n687), .C1(
        n204), .Y(a6[1]) );
  OAI222XL U589 ( .A0(n712), .A1(n199), .B0(n664), .B1(n198), .C0(n688), .C1(
        n204), .Y(a6[2]) );
  OAI222XL U590 ( .A0(n713), .A1(n199), .B0(n665), .B1(n198), .C0(n689), .C1(
        n204), .Y(a6[3]) );
  OAI222XL U591 ( .A0(n714), .A1(n199), .B0(n666), .B1(n198), .C0(n690), .C1(
        n204), .Y(a6[4]) );
  OAI222XL U592 ( .A0(n715), .A1(n199), .B0(n667), .B1(n198), .C0(n691), .C1(
        n204), .Y(a6[5]) );
  OAI222XL U593 ( .A0(n716), .A1(n199), .B0(n668), .B1(n198), .C0(n692), .C1(
        n204), .Y(a6[6]) );
  OAI222XL U594 ( .A0(n717), .A1(n199), .B0(n669), .B1(n198), .C0(n693), .C1(
        n204), .Y(a6[7]) );
  OA21XL U595 ( .A0(a39_r), .A1(n36), .B0(n200), .Y(n201) );
  CLKBUFX3 U596 ( .A(n201), .Y(n205) );
  OAI222XL U597 ( .A0(n718), .A1(n209), .B0(n694), .B1(n208), .C0(n670), .C1(
        n207), .Y(a8[0]) );
  OAI222XL U598 ( .A0(n719), .A1(n209), .B0(n695), .B1(n208), .C0(n671), .C1(
        n207), .Y(a8[1]) );
  OAI222XL U599 ( .A0(n720), .A1(n209), .B0(n696), .B1(n208), .C0(n672), .C1(
        n207), .Y(a8[2]) );
  OAI222XL U600 ( .A0(n721), .A1(n209), .B0(n697), .B1(n208), .C0(n673), .C1(
        n207), .Y(a8[3]) );
  OAI222XL U601 ( .A0(n722), .A1(n209), .B0(n698), .B1(n208), .C0(n674), .C1(
        n218), .Y(a8[4]) );
  OAI222XL U602 ( .A0(n723), .A1(n209), .B0(n699), .B1(n208), .C0(n675), .C1(
        n218), .Y(a8[5]) );
  OAI222XL U603 ( .A0(n724), .A1(n209), .B0(n700), .B1(n208), .C0(n676), .C1(
        n218), .Y(a8[6]) );
  OAI222XL U604 ( .A0(n725), .A1(n209), .B0(n701), .B1(n208), .C0(n677), .C1(
        n218), .Y(a8[7]) );
  XNOR2X1 U605 ( .A(a28_r), .B(n11), .Y(n210) );
  OAI222XL U606 ( .A0(n718), .A1(n212), .B0(n670), .B1(n211), .C0(n694), .C1(
        n31), .Y(a5[0]) );
  OAI222XL U607 ( .A0(n719), .A1(n212), .B0(n671), .B1(n211), .C0(n695), .C1(
        n31), .Y(a5[1]) );
  OAI222XL U608 ( .A0(n720), .A1(n212), .B0(n672), .B1(n211), .C0(n696), .C1(
        n31), .Y(a5[2]) );
  OAI222XL U609 ( .A0(n721), .A1(n212), .B0(n673), .B1(n211), .C0(n697), .C1(
        n31), .Y(a5[3]) );
  OAI222XL U610 ( .A0(n722), .A1(n212), .B0(n674), .B1(n211), .C0(n698), .C1(
        n31), .Y(a5[4]) );
  OAI222XL U611 ( .A0(n723), .A1(n212), .B0(n675), .B1(n211), .C0(n699), .C1(
        n31), .Y(a5[5]) );
  OAI222XL U612 ( .A0(n724), .A1(n212), .B0(n676), .B1(n211), .C0(n700), .C1(
        n31), .Y(a5[6]) );
  OAI222XL U613 ( .A0(n725), .A1(n212), .B0(n677), .B1(n211), .C0(n701), .C1(
        n31), .Y(a5[7]) );
  OA21XL U614 ( .A0(a28_r), .A1(n29), .B0(n213), .Y(n214) );
  OAI222XL U615 ( .A0(n216), .A1(n700), .B0(n215), .B1(n676), .C0(n217), .C1(
        n724), .Y(a2[6]) );
  OAI222XL U616 ( .A0(n216), .A1(n701), .B0(n215), .B1(n677), .C0(n217), .C1(
        n725), .Y(a2[7]) );
  OA21X1 U617 ( .A0(a28_r), .A1(n11), .B0(n213), .Y(n207) );
  OA21X1 U618 ( .A0(a28_r), .A1(n11), .B0(n213), .Y(n218) );
  OAI222XL U619 ( .A0(n726), .A1(n221), .B0(n702), .B1(n220), .C0(n678), .C1(
        n219), .Y(a7[0]) );
  OAI222XL U620 ( .A0(n727), .A1(n221), .B0(n703), .B1(n220), .C0(n679), .C1(
        n219), .Y(a7[1]) );
  OAI222XL U621 ( .A0(n728), .A1(n221), .B0(n704), .B1(n220), .C0(n680), .C1(
        n219), .Y(a7[2]) );
  OAI222XL U622 ( .A0(n729), .A1(n221), .B0(n705), .B1(n220), .C0(n681), .C1(
        n219), .Y(a7[3]) );
  OAI222XL U623 ( .A0(n730), .A1(n221), .B0(n706), .B1(n220), .C0(n682), .C1(
        n230), .Y(a7[4]) );
  OAI222XL U624 ( .A0(n731), .A1(n221), .B0(n707), .B1(n220), .C0(n683), .C1(
        n230), .Y(a7[5]) );
  OAI222XL U625 ( .A0(n732), .A1(n221), .B0(n708), .B1(n220), .C0(n684), .C1(
        n230), .Y(a7[6]) );
  OAI222XL U626 ( .A0(n733), .A1(n221), .B0(n709), .B1(n220), .C0(n685), .C1(
        n230), .Y(a7[7]) );
  XNOR2X1 U627 ( .A(a17_r), .B(n23), .Y(n222) );
  OAI222XL U628 ( .A0(n726), .A1(n224), .B0(n678), .B1(n223), .C0(n702), .C1(
        n7), .Y(a4[0]) );
  OAI222XL U629 ( .A0(n727), .A1(n224), .B0(n679), .B1(n223), .C0(n703), .C1(
        n7), .Y(a4[1]) );
  OAI222XL U630 ( .A0(n728), .A1(n224), .B0(n680), .B1(n223), .C0(n704), .C1(
        n7), .Y(a4[2]) );
  OAI222XL U631 ( .A0(n729), .A1(n224), .B0(n681), .B1(n223), .C0(n705), .C1(
        n7), .Y(a4[3]) );
  OAI222XL U632 ( .A0(n730), .A1(n224), .B0(n682), .B1(n223), .C0(n706), .C1(
        n7), .Y(a4[4]) );
  OAI222XL U633 ( .A0(n731), .A1(n224), .B0(n683), .B1(n223), .C0(n707), .C1(
        n7), .Y(a4[5]) );
  OAI222XL U634 ( .A0(n732), .A1(n224), .B0(n684), .B1(n223), .C0(n708), .C1(
        n7), .Y(a4[6]) );
  OAI222XL U635 ( .A0(n733), .A1(n224), .B0(n685), .B1(n223), .C0(n709), .C1(
        n7), .Y(a4[7]) );
  OA21XL U636 ( .A0(a17_r), .A1(n6), .B0(n225), .Y(n226) );
  OA21X1 U637 ( .A0(a17_r), .A1(n23), .B0(n225), .Y(n219) );
  OA21X1 U638 ( .A0(a17_r), .A1(n23), .B0(n225), .Y(n230) );
  AOI32X1 U639 ( .A0(n643), .A1(b9_r[2]), .A2(n530), .B0(n642), .B1(b9_r[3]), 
        .Y(n536) );
  NAND2X1 U640 ( .A(n647), .B(b1_r[5]), .Y(n539) );
  OA21X4 U641 ( .A0(n607), .A1(n40), .B0(n476), .Y(n237) );
  NAND2X1 U642 ( .A(p7[1]), .B(n241), .Y(n382) );
  CLKINVX1 U643 ( .A(p6[0]), .Y(n270) );
  CLKINVX1 U644 ( .A(n307), .Y(n240) );
  NAND2X1 U645 ( .A(p8[1]), .B(n319), .Y(n320) );
  INVX3 U646 ( .A(p8[5]), .Y(n339) );
  NAND2X1 U647 ( .A(p7[1]), .B(n368), .Y(n369) );
  INVXL U648 ( .A(n348), .Y(n243) );
  NOR2BX4 U649 ( .AN(p3[3]), .B(p6[3]), .Y(n244) );
  AO22X1 U650 ( .A0(n617), .A1(n509), .B0(n103), .B1(n38), .Y(n454) );
  NAND2X1 U651 ( .A(n624), .B(n17), .Y(n445) );
  XOR2X4 U652 ( .A(n565), .B(n564), .Y(n574) );
  AO22X4 U653 ( .A0(p9[4]), .A1(n275), .B0(p9[5]), .B1(n306), .Y(n269) );
  AOI221X2 U654 ( .A0(n273), .A1(n272), .B0(p6[2]), .B1(n288), .C0(n165), .Y(
        n281) );
  OAI32X2 U655 ( .A0(n165), .A1(p6[2]), .A2(n288), .B0(p6[3]), .B1(n41), .Y(
        n280) );
  OAI211X2 U656 ( .A0(p9[1]), .A1(n299), .B0(p9[0]), .C0(n298), .Y(n286) );
  OAI32X2 U657 ( .A0(n49), .A1(p3[2]), .A2(n288), .B0(p3[3]), .B1(n287), .Y(
        n289) );
  NAND2X2 U658 ( .A(p3[5]), .B(n290), .Y(n293) );
  AO22X4 U659 ( .A0(p9[5]), .A1(n309), .B0(p9[4]), .B1(n308), .Y(n292) );
  OAI211X2 U660 ( .A0(p6[1]), .A1(n299), .B0(p6[0]), .C0(n298), .Y(n301) );
  NAND2X2 U661 ( .A(p6[1]), .B(n299), .Y(n300) );
  AO22X4 U662 ( .A0(p3[2]), .A1(n303), .B0(n301), .B1(n300), .Y(n305) );
  OAI32X2 U663 ( .A0(n244), .A1(p3[2]), .A2(n303), .B0(p3[3]), .B1(n302), .Y(
        n304) );
  NAND2X2 U664 ( .A(p3[5]), .B(n306), .Y(n311) );
  AO22X4 U665 ( .A0(p6[5]), .A1(n309), .B0(p6[4]), .B1(n308), .Y(n310) );
  AO22X4 U666 ( .A0(p8[5]), .A1(n355), .B0(p8[4]), .B1(n323), .Y(n317) );
  OAI211X2 U667 ( .A0(n328), .A1(n329), .B0(n327), .C0(n326), .Y(n330) );
  AO22X4 U668 ( .A0(p2[2]), .A1(n336), .B0(n334), .B1(n333), .Y(n338) );
  OAI32X2 U669 ( .A0(n157), .A1(p2[2]), .A2(n336), .B0(n235), .B1(n335), .Y(
        n337) );
  AO22X4 U670 ( .A0(p8[4]), .A1(n357), .B0(p8[5]), .B1(n358), .Y(n341) );
  NAND2X2 U671 ( .A(p2[5]), .B(n355), .Y(n360) );
  AO22X4 U672 ( .A0(n59), .A1(n358), .B0(p5[4]), .B1(n357), .Y(n359) );
  OAI32X2 U673 ( .A0(n175), .A1(p1[2]), .A2(n385), .B0(p1[3]), .B1(n384), .Y(
        n386) );
  NAND2X2 U674 ( .A(p1[5]), .B(n387), .Y(n390) );
  AO22X4 U675 ( .A0(p7[4]), .A1(n405), .B0(p7[5]), .B1(n406), .Y(n389) );
  OAI211X2 U676 ( .A0(p4[1]), .A1(n241), .B0(p4[0]), .C0(n396), .Y(n398) );
  ACHCINX2 U677 ( .CIN(n128), .A(n93), .B(n129), .CO(n428) );
  AO22X4 U678 ( .A0(n637), .A1(n18), .B0(n133), .B1(n144), .Y(n434) );
  OA22X4 U679 ( .A0(n627), .A1(n189), .B0(n189), .B1(n38), .Y(n435) );
  ACHCONX2 U680 ( .A(n629), .B(n128), .CI(n37), .CON(n442) );
  NAND2X2 U681 ( .A(n131), .B(n27), .Y(n458) );
  NAND3BX2 U682 ( .AN(n596), .B(n250), .C(n504), .Y(n477) );
  OA22X4 U683 ( .A0(net46570), .A1(n182), .B0(n182), .B1(a6_r[6]), .Y(n488) );
  AOI222X2 U684 ( .A0(n490), .A1(n491), .B0(n489), .B1(n488), .C0(net46636), 
        .C1(a6_r[7]), .Y(net35260) );
  NAND3BX2 U685 ( .AN(n595), .B(n250), .C(n504), .Y(n502) );
  NAND2X2 U686 ( .A(n127), .B(b1_r[3]), .Y(n530) );
  AOI211X2 U687 ( .A0(n536), .A1(n535), .B0(n534), .C0(n533), .Y(n543) );
  AOI222X2 U688 ( .A0(n543), .A1(n542), .B0(n541), .B1(n540), .C0(n639), .C1(
        b9_r[7]), .Y(n544) );
  NAND2X2 U689 ( .A(n647), .B(n551), .Y(n555) );
  AOI2BB1X2 U690 ( .A0N(n557), .A1N(n556), .B0(n650), .Y(n560) );
  OAI32X2 U691 ( .A0(n560), .A1(n559), .A2(n558), .B0(n646), .B1(b5_r[7]), .Y(
        n561) );
  AOI2BB1X1 U692 ( .A0N(n12), .A1N(n590), .B0(n26), .Y(n591) );
  OAI22XL U693 ( .A0(n595), .A1(n8), .B0(n125), .B1(n32), .Y(n584) );
endmodule


module conv ( i_clk, i_rst_n, i_data, i_isFirst, i_input_done, o_out_valid, 
        o_out_data );
  input [31:0] i_data;
  output [13:0] o_out_data;
  input i_clk, i_rst_n, i_isFirst, i_input_done;
  output o_out_valid;
  wire   N56, N57, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77,
         N78, N79, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N197, N198, N199, N200, N201, N202, N203, N204, N205, N206,
         N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217,
         N218, N219, N220, N221, N222, N223, N224, N225, N226, N227, N228,
         N229, N230, N231, N232, N233, N234, N235, N236, N237, N238, N239,
         N240, N241, N242, N243, N244, N245, N246, N247, N248, N249, N250,
         N251, N252, N253, N254, N255, N256, N257, N258, N259, N260, N261,
         N262, N263, N264, N265, N266, N267, N268, N269, N270, N271, N272,
         N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283,
         N284, N285, N286, N287, n25, n27, n28, n29, n83, n86, n90, N30, N290,
         N288, N2710, N26, N2510, N24, N23, N22, N40, N39, N38, N37, N36, N35,
         N34, N33, N32, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n2210, n2310, n2410, n2610, n300, n310, n320,
         n330, n340, n350, n360, n370, n380, n390, n400, n410, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n560, n570,
         n58, n59, n60, n61, n62, n63, n64, n65, n660, n670, n680, n690, n700,
         n710, n720, n730, n740, n750, n760, n770, n780, n790, n80, n81, n82,
         n84, n85, n87, n88, n89, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n1240, n1250, n1260, n1270, n1280, n1290, n1300, n1310,
         n1320, n1330, n1340, n1350, n1360, n1370, n1380, n1390, n1400, n1410,
         n1420, n1430, n1440, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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
  wire   [1:0] cs;
  wire   [1:0] ns;
  wire   [1:0] cnt;
  wire   [16:3] conv_r;

  DFFRX4 cnt_reg_0_ ( .D(N56), .CK(i_clk), .RN(n64), .Q(cnt[0]), .QN(n28) );
  conv_DW01_add_8 add_79 ( .A({conv_4_r[16:15], n46, conv_4_r[13:12], n58, 
        conv_4_r[10:9], n53, conv_4_r[7:6], n51, conv_4_r[4:0]}), .SUM(
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
  conv_DW01_add_10 add_77 ( .A({conv_2_r[16:12], n570, conv_2_r[10:0]}), .SUM(
        conv_2_w), .\B[10] (data_bcd_2_r[10]), .\B[9] (data_bcd_2_r[9]), 
        .\B[8] (data_bcd_2_r[8]), .\B[7] (data_bcd_2_r[7]), .\B[6] (
        data_bcd_2_r[6]), .\B[5] (data_bcd_2_r[5]), .\B[4] (data_bcd_2_r[4]), 
        .\B[3] (data_bcd_2_r[3]), .\B[2] (data_bcd_2_r[2]), .\B[1] (
        data_bcd_2_r[1]), .\B[0] (data_bcd_2_r[0]) );
  conv_DW01_add_11 add_76 ( .A({conv_1_r[16:13], n44, n560, conv_1_r[10:6], 
        n50, conv_1_r[4:0]}), .SUM(conv_1_w), .\B[10] (data_abc_1_r[10]), 
        .\B[9] (data_abc_1_r[9]), .\B[8] (data_abc_1_r[8]), .\B[7] (
        data_abc_1_r[7]), .\B[6] (data_abc_1_r[6]), .\B[5] (data_abc_1_r[5]), 
        .\B[4] (data_abc_1_r[4]), .\B[3] (data_abc_1_r[3]), .\B[2] (
        data_abc_1_r[2]), .\B[1] (data_abc_1_r[1]), .\B[0] (data_abc_1_r[0])
         );
  conv_DW01_inc_1 add_135_round ( .\A[13] (conv_r[16]), .\A[12] (conv_r[15]), 
        .\A[11] (conv_r[14]), .\A[10] (conv_r[13]), .\A[9] (conv_r[12]), 
        .\A[8] (conv_r[11]), .\A[7] (conv_r[10]), .\A[6] (conv_r[9]), .\A[5] (
        conv_r[8]), .\A[4] (conv_r[7]), .\A[3] (conv_r[6]), .\A[2] (conv_r[5]), 
        .\A[1] (conv_r[4]), .\A[0] (conv_r[3]), .\SUM[14] (N79), .\SUM[13] (
        N78), .\SUM[12] (N77), .\SUM[11] (N76), .\SUM[10] (N75), .\SUM[9] (N74), .\SUM[8] (N73), .\SUM[7] (N72), .\SUM[6] (N71), .\SUM[5] (N70), .\SUM[4] (
        N69), .\SUM[3] (N68), .\SUM[2] (N67), .\SUM[1] (N66) );
  conv_DW01_add_12 add_1_root_add_0_root_add_73_2 ( .\A[7] (i_data[7]), 
        .\A[6] (i_data[6]), .\A[5] (i_data[5]), .\A[4] (i_data[4]), .\A[3] (
        i_data[3]), .\A[2] (i_data[2]), .\A[1] (i_data[1]), .\A[0] (i_data[0]), 
        .\B[7] (i_data[23]), .\B[6] (i_data[22]), .\B[5] (i_data[21]), 
        .\B[4] (i_data[20]), .\B[3] (i_data[19]), .\B[2] (i_data[18]), 
        .\B[1] (i_data[17]), .\B[0] (i_data[16]), .\SUM[8] (N30), .\SUM[7] (
        N290), .\SUM[6] (N288), .\SUM[5] (N2710), .\SUM[4] (N26), .\SUM[3] (
        N2510), .\SUM[2] (N24), .\SUM[1] (N23), .\SUM[0] (N22) );
  conv_DW01_add_14 add_1_root_add_0_root_add_74_2 ( .\A[7] (i_data[31]), 
        .\A[6] (i_data[30]), .\A[5] (i_data[29]), .\A[4] (i_data[28]), 
        .\A[3] (i_data[27]), .\A[2] (i_data[26]), .\A[1] (i_data[25]), 
        .\A[0] (i_data[24]), .\B[7] (i_data[15]), .\B[6] (i_data[14]), 
        .\B[5] (i_data[13]), .\B[4] (i_data[12]), .\B[3] (i_data[11]), 
        .\B[2] (i_data[10]), .\B[1] (i_data[9]), .\B[0] (i_data[8]), 
        .\SUM[8] (N40), .\SUM[7] (N39), .\SUM[6] (N38), .\SUM[5] (N37), 
        .\SUM[4] (N36), .\SUM[3] (N35), .\SUM[2] (N34), .\SUM[1] (N33), 
        .\SUM[0] (N32) );
  conv_DW01_add_21 add_0_root_add_0_root_add_74_2 ( .SUM(data_bcd_w), .\A[8] (
        i_data[23]), .\A[7] (i_data[22]), .\A[6] (i_data[21]), .\A[5] (
        i_data[20]), .\A[4] (i_data[19]), .\A[3] (i_data[18]), .\A[2] (
        i_data[17]), .\A[1] (i_data[16]), .\B[8] (N40), .\B[7] (N39), .\B[6] (
        N38), .\B[5] (N37), .\B[4] (N36), .\B[3] (N35), .\B[2] (N34), .\B[1] (
        N33), .\B[0] (N32) );
  conv_DW01_add_23 add_0_root_add_0_root_add_73_2 ( .SUM(data_abc_w), .\A[8] (
        i_data[15]), .\A[7] (i_data[14]), .\A[6] (i_data[13]), .\A[5] (
        i_data[12]), .\A[4] (i_data[11]), .\A[3] (i_data[10]), .\A[2] (n43), 
        .\A[1] (i_data[8]), .\B[8] (N30), .\B[7] (N290), .\B[6] (N288), 
        .\B[5] (N2710), .\B[4] (N26), .\B[3] (N2510), .\B[2] (N24), .\B[1] (
        N23), .\B[0] (N22) );
  DFFRX1 o_out_data_ready_r_reg_11_ ( .D(N77), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[11]) );
  DFFRX1 o_out_data_ready_r_reg_13_ ( .D(N79), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[13]) );
  DFFRX1 data_bcd_r_reg_0_ ( .D(data_bcd_w[0]), .CK(i_clk), .RN(n63), .Q(n360)
         );
  DFFRX1 data_abc_r_reg_0_ ( .D(data_abc_w[0]), .CK(i_clk), .RN(n65), .Q(n42)
         );
  DFFRX1 o_out_valid_ready_r_reg ( .D(N287), .CK(i_clk), .RN(n63), .Q(
        o_out_valid) );
  DFFRX1 o_out_data_ready_r_reg_0_ ( .D(N66), .CK(i_clk), .RN(n710), .Q(
        o_out_data[0]) );
  DFFRX1 o_out_data_ready_r_reg_1_ ( .D(N67), .CK(i_clk), .RN(n710), .Q(
        o_out_data[1]) );
  DFFRX1 o_out_data_ready_r_reg_3_ ( .D(N69), .CK(i_clk), .RN(n720), .Q(
        o_out_data[3]) );
  DFFRX1 o_out_data_ready_r_reg_4_ ( .D(N70), .CK(i_clk), .RN(n720), .Q(
        o_out_data[4]) );
  DFFRX1 o_out_data_ready_r_reg_5_ ( .D(N71), .CK(i_clk), .RN(n720), .Q(
        o_out_data[5]) );
  DFFRX1 o_out_data_ready_r_reg_6_ ( .D(N72), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[6]) );
  DFFRX1 o_out_data_ready_r_reg_7_ ( .D(N73), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[7]) );
  DFFRX1 data_bcd_r_reg_9_ ( .D(data_bcd_w[9]), .CK(i_clk), .RN(n65), .Q(n390)
         );
  DFFRX1 data_abc_r_reg_9_ ( .D(data_abc_w[9]), .CK(i_clk), .RN(n63), .Q(n2210) );
  DFFRX1 data_bcd_r_reg_5_ ( .D(data_bcd_w[5]), .CK(i_clk), .RN(n63), .Q(n350)
         );
  DFFRX1 data_bcd_r_reg_4_ ( .D(data_bcd_w[4]), .CK(i_clk), .RN(n63), .Q(n18)
         );
  DFFRX1 data_bcd_r_reg_2_ ( .D(data_bcd_w[2]), .CK(i_clk), .RN(n63), .Q(n19)
         );
  DFFRX1 data_bcd_r_reg_1_ ( .D(data_bcd_w[1]), .CK(i_clk), .RN(n63), .Q(n10)
         );
  DFFRX1 data_abc_r_reg_4_ ( .D(data_abc_w[4]), .CK(i_clk), .RN(n64), .Q(n340)
         );
  DFFRX1 data_abc_r_reg_3_ ( .D(data_abc_w[3]), .CK(i_clk), .RN(n64), .Q(n17)
         );
  DFFRX1 data_abc_r_reg_2_ ( .D(data_abc_w[2]), .CK(i_clk), .RN(n64), .Q(n370)
         );
  DFFRX1 data_abc_r_reg_1_ ( .D(data_abc_w[1]), .CK(i_clk), .RN(n65), .Q(n2310) );
  DFFRX1 data_bcd_r_reg_6_ ( .D(data_bcd_w[6]), .CK(i_clk), .RN(n63), .Q(n95)
         );
  DFFRX1 conv_4_r_reg_16_ ( .D(N286), .CK(i_clk), .RN(n700), .Q(conv_4_r[16])
         );
  DFFRX1 conv_1_r_reg_16_ ( .D(N235), .CK(i_clk), .RN(n700), .Q(conv_1_r[16])
         );
  DFFRX1 conv_2_r_reg_16_ ( .D(N252), .CK(i_clk), .RN(n710), .Q(conv_2_r[16])
         );
  DFFRX1 conv_3_r_reg_16_ ( .D(N269), .CK(i_clk), .RN(n720), .Q(conv_3_r[16])
         );
  DFFRX1 conv_4_r_reg_15_ ( .D(N285), .CK(i_clk), .RN(n700), .Q(conv_4_r[15]), 
        .QN(n330) );
  DFFRX1 conv_1_r_reg_14_ ( .D(N233), .CK(i_clk), .RN(n670), .Q(conv_1_r[14])
         );
  DFFRX1 conv_1_r_reg_15_ ( .D(N234), .CK(i_clk), .RN(n63), .Q(conv_1_r[15]), 
        .QN(n16) );
  DFFRX1 conv_2_r_reg_15_ ( .D(N251), .CK(i_clk), .RN(n710), .Q(conv_2_r[15]), 
        .QN(n2410) );
  DFFRX1 conv_3_r_reg_15_ ( .D(N268), .CK(i_clk), .RN(n710), .Q(conv_3_r[15]), 
        .QN(n13) );
  DFFRX1 data_bcd_2_r_reg_7_ ( .D(N142), .CK(i_clk), .RN(n65), .Q(
        data_bcd_2_r[7]) );
  DFFRX1 data_abc_1_r_reg_7_ ( .D(N131), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[7]) );
  DFFRX1 data_bcd_4_r_reg_7_ ( .D(N215), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[7]) );
  DFFRX1 data_abc_3_r_reg_7_ ( .D(N204), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[7]) );
  DFFRX1 data_bcd_2_r_reg_4_ ( .D(N139), .CK(i_clk), .RN(i_rst_n), .Q(
        data_bcd_2_r[4]) );
  DFFRX1 data_abc_1_r_reg_4_ ( .D(N128), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[4]) );
  DFFRX1 data_bcd_4_r_reg_4_ ( .D(N212), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[4]) );
  DFFRX1 data_abc_3_r_reg_4_ ( .D(N201), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[4]) );
  DFFRX1 conv_4_r_reg_7_ ( .D(N277), .CK(i_clk), .RN(n690), .Q(conv_4_r[7]) );
  DFFRX1 conv_1_r_reg_1_ ( .D(N220), .CK(i_clk), .RN(n710), .Q(conv_1_r[1]) );
  DFFRX1 conv_4_r_reg_1_ ( .D(N271), .CK(i_clk), .RN(n65), .Q(conv_4_r[1]) );
  DFFRX1 conv_2_r_reg_1_ ( .D(N237), .CK(i_clk), .RN(n720), .Q(conv_2_r[1]) );
  DFFRX1 data_bcd_2_r_reg_6_ ( .D(N141), .CK(i_clk), .RN(n65), .Q(
        data_bcd_2_r[6]) );
  DFFRX1 data_bcd_2_r_reg_1_ ( .D(N136), .CK(i_clk), .RN(i_rst_n), .Q(
        data_bcd_2_r[1]) );
  DFFRX1 data_abc_1_r_reg_1_ ( .D(N125), .CK(i_clk), .RN(n660), .Q(
        data_abc_1_r[1]) );
  DFFRX1 data_bcd_4_r_reg_1_ ( .D(N209), .CK(i_clk), .RN(n65), .Q(
        data_bcd_4_r[1]) );
  DFFRX1 data_bcd_2_r_reg_3_ ( .D(N138), .CK(i_clk), .RN(i_rst_n), .Q(
        data_bcd_2_r[3]) );
  DFFRX1 data_abc_1_r_reg_3_ ( .D(N127), .CK(i_clk), .RN(n660), .Q(
        data_abc_1_r[3]) );
  DFFRX1 data_abc_3_r_reg_3_ ( .D(N200), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[3]) );
  DFFRX1 conv_1_r_reg_0_ ( .D(N219), .CK(i_clk), .RN(n680), .Q(conv_1_r[0]) );
  DFFRX1 conv_4_r_reg_0_ ( .D(N270), .CK(i_clk), .RN(n690), .Q(conv_4_r[0]) );
  DFFRX1 conv_3_r_reg_0_ ( .D(N253), .CK(i_clk), .RN(n680), .Q(conv_3_r[0]) );
  DFFRX1 conv_4_r_reg_12_ ( .D(N282), .CK(i_clk), .RN(n700), .Q(conv_4_r[12])
         );
  DFFRX1 conv_2_r_reg_12_ ( .D(N248), .CK(i_clk), .RN(n710), .Q(conv_2_r[12])
         );
  DFFRX1 data_abc_3_r_reg_5_ ( .D(N202), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[5]) );
  DFFRX1 data_abc_1_r_reg_0_ ( .D(N124), .CK(i_clk), .RN(n660), .Q(
        data_abc_1_r[0]) );
  DFFRX1 data_bcd_4_r_reg_0_ ( .D(N208), .CK(i_clk), .RN(n65), .Q(
        data_bcd_4_r[0]) );
  DFFRX1 data_abc_3_r_reg_0_ ( .D(N197), .CK(i_clk), .RN(n710), .Q(
        data_abc_3_r[0]) );
  DFFRX1 data_bcd_2_r_reg_10_ ( .D(N145), .CK(i_clk), .RN(n65), .Q(
        data_bcd_2_r[10]) );
  DFFRX1 data_abc_1_r_reg_10_ ( .D(N134), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[10]) );
  DFFRX1 data_bcd_2_r_reg_8_ ( .D(N143), .CK(i_clk), .RN(n65), .Q(
        data_bcd_2_r[8]) );
  DFFRX1 cs_reg_1_ ( .D(ns[1]), .CK(i_clk), .RN(i_rst_n), .Q(cs[1]), .QN(n25)
         );
  DFFRX1 conv_1_r_reg_11_ ( .D(N230), .CK(i_clk), .RN(n670), .Q(conv_1_r[11])
         );
  DFFRX1 conv_4_r_reg_11_ ( .D(N281), .CK(i_clk), .RN(n700), .Q(conv_4_r[11])
         );
  DFFRX1 conv_2_r_reg_11_ ( .D(N247), .CK(i_clk), .RN(n710), .Q(conv_2_r[11])
         );
  DFFRX2 data_abc_r_reg_8_ ( .D(data_abc_w[8]), .CK(i_clk), .RN(n63), .Q(n410)
         );
  DFFRX2 conv_3_r_reg_11_ ( .D(N264), .CK(i_clk), .RN(n690), .Q(conv_3_r[11])
         );
  DFFRX2 data_abc_3_r_reg_1_ ( .D(N198), .CK(i_clk), .RN(n720), .Q(
        data_abc_3_r[1]) );
  DFFRX2 data_bcd_r_reg_8_ ( .D(data_bcd_w[8]), .CK(i_clk), .RN(n720), .Q(n93)
         );
  DFFRX2 cnt_reg_1_ ( .D(N57), .CK(i_clk), .RN(n660), .Q(cnt[1]), .QN(n27) );
  DFFRX2 conv_3_r_reg_5_ ( .D(N258), .CK(i_clk), .RN(n690), .Q(conv_3_r[5]), 
        .QN(n310) );
  DFFRX2 data_abc_3_r_reg_10_ ( .D(N207), .CK(i_clk), .RN(n65), .Q(
        data_abc_3_r[10]) );
  DFFRX2 conv_3_r_reg_10_ ( .D(N263), .CK(i_clk), .RN(n690), .Q(conv_3_r[10])
         );
  DFFRX2 data_abc_r_reg_6_ ( .D(data_abc_w[6]), .CK(i_clk), .RN(n63), .Q(n400)
         );
  DFFRX2 conv_1_r_reg_10_ ( .D(N229), .CK(i_clk), .RN(n670), .Q(conv_1_r[10])
         );
  DFFRX2 data_abc_3_r_reg_6_ ( .D(N203), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[6]) );
  DFFRX2 conv_3_r_reg_6_ ( .D(N259), .CK(i_clk), .RN(n690), .Q(conv_3_r[6]) );
  DFFRX2 data_abc_3_r_reg_8_ ( .D(N205), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[8]) );
  DFFRX2 conv_3_r_reg_8_ ( .D(N261), .CK(i_clk), .RN(n690), .Q(conv_3_r[8]) );
  DFFRHQX1 conv_4_r_reg_8_ ( .D(N278), .CK(i_clk), .RN(n690), .Q(n53) );
  DFFRX2 conv_4_r_reg_6_ ( .D(N276), .CK(i_clk), .RN(n690), .Q(conv_4_r[6]) );
  DFFRX2 data_bcd_4_r_reg_6_ ( .D(N214), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[6]) );
  DFFRX2 conv_1_r_reg_6_ ( .D(N225), .CK(i_clk), .RN(n680), .Q(conv_1_r[6]) );
  DFFRX2 data_abc_1_r_reg_6_ ( .D(N130), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[6]) );
  DFFRX2 conv_2_r_reg_8_ ( .D(N244), .CK(i_clk), .RN(n700), .Q(conv_2_r[8]) );
  DFFRHQX1 conv_4_r_reg_5_ ( .D(N275), .CK(i_clk), .RN(n690), .Q(n51) );
  DFFRX2 data_bcd_r_reg_7_ ( .D(data_bcd_w[7]), .CK(i_clk), .RN(n63), .Q(n94)
         );
  DFFRX2 data_abc_r_reg_7_ ( .D(data_abc_w[7]), .CK(i_clk), .RN(n63), .Q(n21)
         );
  DFFRHQX1 conv_1_r_reg_5_ ( .D(N224), .CK(i_clk), .RN(n680), .Q(n50) );
  DFFRX2 conv_3_r_reg_9_ ( .D(N262), .CK(i_clk), .RN(n690), .Q(conv_3_r[9]), 
        .QN(n12) );
  DFFRX2 data_abc_3_r_reg_9_ ( .D(N206), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[9]) );
  DFFRX2 conv_4_r_reg_10_ ( .D(N280), .CK(i_clk), .RN(n700), .Q(conv_4_r[10])
         );
  DFFRX2 conv_3_r_reg_13_ ( .D(N266), .CK(i_clk), .RN(n710), .Q(conv_3_r[13]), 
        .QN(n11) );
  DFFRX2 conv_3_r_reg_14_ ( .D(N267), .CK(i_clk), .RN(n710), .Q(conv_3_r[14])
         );
  DFFRX2 conv_2_r_reg_13_ ( .D(N249), .CK(i_clk), .RN(n710), .Q(conv_2_r[13]), 
        .QN(n2610) );
  DFFRX2 conv_2_r_reg_14_ ( .D(N250), .CK(i_clk), .RN(n710), .Q(conv_2_r[14])
         );
  DFFRX2 conv_1_r_reg_9_ ( .D(N228), .CK(i_clk), .RN(n680), .Q(conv_1_r[9]), 
        .QN(n320) );
  DFFRX2 conv_1_r_reg_8_ ( .D(N227), .CK(i_clk), .RN(n680), .Q(conv_1_r[8]) );
  DFFRX2 data_abc_1_r_reg_8_ ( .D(N132), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[8]) );
  DFFRX2 o_out_data_ready_r_reg_10_ ( .D(N76), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[10]) );
  DFFRX2 conv_2_r_reg_4_ ( .D(N240), .CK(i_clk), .RN(n720), .Q(conv_2_r[4]) );
  DFFRX2 conv_2_r_reg_10_ ( .D(N246), .CK(i_clk), .RN(n700), .Q(conv_2_r[10])
         );
  DFFRX2 conv_4_r_reg_9_ ( .D(N279), .CK(i_clk), .RN(n700), .Q(conv_4_r[9]), 
        .QN(n15) );
  DFFRX2 conv_3_r_reg_1_ ( .D(N254), .CK(i_clk), .RN(n680), .Q(conv_3_r[1]) );
  DFFRX2 data_bcd_4_r_reg_8_ ( .D(N216), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[8]) );
  DFFRX2 conv_3_r_reg_4_ ( .D(N257), .CK(i_clk), .RN(n690), .Q(conv_3_r[4]) );
  DFFRX2 data_abc_1_r_reg_5_ ( .D(N129), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[5]) );
  DFFRX2 data_bcd_4_r_reg_5_ ( .D(N213), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[5]) );
  DFFRX2 conv_3_r_reg_3_ ( .D(N256), .CK(i_clk), .RN(n680), .Q(conv_3_r[3]) );
  DFFRX2 data_bcd_4_r_reg_10_ ( .D(N218), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[10]) );
  DFFRX2 data_bcd_4_r_reg_9_ ( .D(N217), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[9]) );
  DFFRX2 conv_2_r_reg_5_ ( .D(N241), .CK(i_clk), .RN(n720), .Q(conv_2_r[5]), 
        .QN(n14) );
  DFFRX2 data_abc_r_reg_5_ ( .D(data_abc_w[5]), .CK(i_clk), .RN(n64), .Q(n20)
         );
  DFFRX2 conv_1_r_reg_4_ ( .D(N223), .CK(i_clk), .RN(n680), .Q(conv_1_r[4]) );
  DFFRX2 conv_4_r_reg_4_ ( .D(N274), .CK(i_clk), .RN(n660), .Q(conv_4_r[4]) );
  DFFRX2 conv_2_r_reg_9_ ( .D(N245), .CK(i_clk), .RN(n700), .Q(conv_2_r[9]), 
        .QN(n300) );
  DFFRX2 conv_3_r_reg_7_ ( .D(N260), .CK(i_clk), .RN(n690), .Q(conv_3_r[7]) );
  DFFRX2 conv_2_r_reg_0_ ( .D(N236), .CK(i_clk), .RN(n720), .Q(conv_2_r[0]) );
  DFFRX2 data_bcd_2_r_reg_0_ ( .D(N135), .CK(i_clk), .RN(n64), .Q(
        data_bcd_2_r[0]) );
  DFFRX2 data_bcd_r_reg_3_ ( .D(data_bcd_w[3]), .CK(i_clk), .RN(n63), .Q(n380)
         );
  DFFRX2 conv_2_r_reg_6_ ( .D(N242), .CK(i_clk), .RN(n720), .Q(conv_2_r[6]) );
  DFFRX2 conv_2_r_reg_3_ ( .D(N239), .CK(i_clk), .RN(n720), .Q(conv_2_r[3]) );
  DFFRX2 conv_2_r_reg_7_ ( .D(N243), .CK(i_clk), .RN(n700), .Q(conv_2_r[7]) );
  DFFRX2 conv_1_r_reg_3_ ( .D(N222), .CK(i_clk), .RN(n680), .Q(conv_1_r[3]) );
  DFFRX2 conv_4_r_reg_2_ ( .D(N272), .CK(i_clk), .RN(n64), .Q(conv_4_r[2]) );
  DFFRX2 data_bcd_4_r_reg_2_ ( .D(N210), .CK(i_clk), .RN(n65), .Q(
        data_bcd_4_r[2]) );
  DFFRX2 conv_4_r_reg_3_ ( .D(N273), .CK(i_clk), .RN(n660), .Q(conv_4_r[3]) );
  DFFRX2 data_bcd_2_r_reg_9_ ( .D(N144), .CK(i_clk), .RN(n65), .Q(
        data_bcd_2_r[9]) );
  DFFRX2 conv_1_r_reg_2_ ( .D(N221), .CK(i_clk), .RN(n680), .Q(conv_1_r[2]) );
  DFFRX2 data_abc_1_r_reg_2_ ( .D(N126), .CK(i_clk), .RN(n660), .Q(
        data_abc_1_r[2]) );
  DFFRX2 conv_2_r_reg_2_ ( .D(N238), .CK(i_clk), .RN(n720), .Q(conv_2_r[2]) );
  DFFRX2 data_bcd_2_r_reg_2_ ( .D(N137), .CK(i_clk), .RN(n670), .Q(
        data_bcd_2_r[2]) );
  DFFRX2 conv_1_r_reg_13_ ( .D(N232), .CK(i_clk), .RN(n670), .Q(conv_1_r[13])
         );
  DFFRX2 conv_4_r_reg_13_ ( .D(N283), .CK(i_clk), .RN(n700), .Q(conv_4_r[13])
         );
  DFFRHQX1 conv_4_r_reg_14_ ( .D(N284), .CK(i_clk), .RN(n700), .Q(n46) );
  DFFRX2 cs_reg_0_ ( .D(ns[0]), .CK(i_clk), .RN(n700), .Q(cs[0]), .QN(n52) );
  DFFRX2 o_out_data_ready_r_reg_2_ ( .D(N68), .CK(i_clk), .RN(n720), .Q(
        o_out_data[2]) );
  DFFRHQX1 conv_1_r_reg_12_ ( .D(N231), .CK(i_clk), .RN(n670), .Q(n44) );
  DFFRX2 data_abc_1_r_reg_9_ ( .D(N133), .CK(i_clk), .RN(n64), .Q(
        data_abc_1_r[9]) );
  DFFRX1 i_input_done_r_reg ( .D(i_input_done), .CK(i_clk), .RN(i_rst_n), .Q(
        n790), .QN(n29) );
  DFFRX2 conv_3_r_reg_2_ ( .D(N255), .CK(i_clk), .RN(n680), .Q(conv_3_r[2]) );
  DFFRX2 data_abc_3_r_reg_2_ ( .D(N199), .CK(i_clk), .RN(n660), .Q(
        data_abc_3_r[2]) );
  DFFRX1 o_out_data_ready_r_reg_8_ ( .D(N74), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[8]) );
  DFFRX2 conv_3_r_reg_12_ ( .D(N265), .CK(i_clk), .RN(n710), .Q(conv_3_r[12])
         );
  DFFRX2 conv_1_r_reg_7_ ( .D(N226), .CK(i_clk), .RN(n680), .Q(conv_1_r[7]) );
  DFFRX2 data_bcd_4_r_reg_3_ ( .D(N211), .CK(i_clk), .RN(n670), .Q(
        data_bcd_4_r[3]) );
  DFFRX2 data_bcd_2_r_reg_5_ ( .D(N140), .CK(i_clk), .RN(n65), .Q(
        data_bcd_2_r[5]) );
  DFFRX2 o_out_data_ready_r_reg_12_ ( .D(N78), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[12]) );
  DFFRX2 o_out_data_ready_r_reg_9_ ( .D(N75), .CK(i_clk), .RN(i_rst_n), .Q(
        o_out_data[9]) );
  OAI221X4 U3 ( .A0(n1370), .A1(n330), .B0(n1380), .B1(n16), .C0(n100), .Y(
        conv_r[15]) );
  AND2X4 U4 ( .A(conv_1_w[11]), .B(n740), .Y(N230) );
  NAND2BX1 U5 ( .AN(n59), .B(conv_2_r[14]), .Y(n102) );
  BUFX4 U6 ( .A(conv_4_r[11]), .Y(n58) );
  NAND2BX1 U7 ( .AN(n59), .B(conv_2_r[10]), .Y(n114) );
  NAND2BX1 U8 ( .AN(n1380), .B(n44), .Y(n107) );
  NAND2BX1 U14 ( .AN(n59), .B(n570), .Y(n110) );
  BUFX4 U15 ( .A(n87), .Y(n6) );
  CLKBUFX2 U16 ( .A(i_data[9]), .Y(n43) );
  NAND2BX1 U17 ( .AN(n60), .B(conv_3_r[12]), .Y(n105) );
  CLKINVX8 U18 ( .A(n47), .Y(conv_r[13]) );
  OAI221X4 U19 ( .A0(n1370), .A1(n1320), .B0(n1380), .B1(n1310), .C0(n1300), 
        .Y(conv_r[5]) );
  BUFX4 U20 ( .A(conv_2_r[11]), .Y(n570) );
  NAND2BXL U21 ( .AN(n60), .B(conv_3_r[11]), .Y(n109) );
  NAND2BXL U22 ( .AN(n1380), .B(n560), .Y(n111) );
  NAND2BXL U23 ( .AN(n1370), .B(n58), .Y(n112) );
  NAND2BXL U24 ( .AN(n1370), .B(conv_4_r[12]), .Y(n108) );
  BUFX4 U25 ( .A(conv_1_r[11]), .Y(n560) );
  INVX1 U26 ( .A(n1380), .Y(n87) );
  INVXL U27 ( .A(n1370), .Y(n48) );
  OAI22X2 U28 ( .A0(n59), .A1(n2610), .B0(n60), .B1(n11), .Y(n49) );
  INVX3 U29 ( .A(n27), .Y(n89) );
  NAND2BX1 U30 ( .AN(n1380), .B(conv_1_r[6]), .Y(n1280) );
  NAND2BX1 U31 ( .AN(n1370), .B(conv_4_r[6]), .Y(n1290) );
  NAND2BX1 U32 ( .AN(n1380), .B(conv_1_r[10]), .Y(n115) );
  NAND2BX1 U33 ( .AN(n1370), .B(conv_4_r[10]), .Y(n116) );
  NAND4X2 U34 ( .A(n121), .B(n120), .C(n119), .D(n118), .Y(conv_r[8]) );
  NAND2BX1 U35 ( .AN(n59), .B(conv_2_r[8]), .Y(n119) );
  INVX3 U36 ( .A(cnt[0]), .Y(n84) );
  AOI2BB2X1 U37 ( .B0(i_isFirst), .B1(n780), .A0N(n86), .A1N(n790), .Y(n82) );
  AND2X2 U38 ( .A(conv_4_w[14]), .B(n730), .Y(N284) );
  AND2X2 U39 ( .A(conv_2_w[14]), .B(n750), .Y(N250) );
  AND2X2 U40 ( .A(conv_3_w[14]), .B(n760), .Y(N267) );
  NAND2X1 U41 ( .A(n54), .B(n55), .Y(N198) );
  NAND2X1 U42 ( .A(n8), .B(n42), .Y(n54) );
  NAND2X1 U43 ( .A(n7), .B(n2310), .Y(n55) );
  AND2X2 U44 ( .A(conv_3_w[11]), .B(n760), .Y(N264) );
  AND2X2 U45 ( .A(conv_2_w[11]), .B(n750), .Y(N247) );
  AND2X2 U46 ( .A(conv_1_w[14]), .B(n740), .Y(N233) );
  AND2X2 U47 ( .A(conv_3_w[16]), .B(n730), .Y(N269) );
  AND2X2 U48 ( .A(conv_4_w[16]), .B(n740), .Y(N286) );
  AND2X4 U49 ( .A(n90), .B(n28), .Y(n7) );
  AND2X4 U50 ( .A(n90), .B(n91), .Y(n8) );
  CLKAND2X3 U51 ( .A(cnt[0]), .B(n25), .Y(n9) );
  AND2X2 U52 ( .A(conv_2_w[16]), .B(n750), .Y(N252) );
  AND2X4 U53 ( .A(n92), .B(n25), .Y(n45) );
  AND2X4 U54 ( .A(n27), .B(cnt[0]), .Y(n62) );
  NAND4X2 U55 ( .A(n1360), .B(n1350), .C(n1340), .D(n1330), .Y(conv_r[4]) );
  OR2X2 U56 ( .A(ns[1]), .B(ns[0]), .Y(n85) );
  AOI221X4 U57 ( .A0(n48), .A1(conv_4_r[13]), .B0(n62), .B1(conv_1_r[13]), 
        .C0(n49), .Y(n47) );
  CLKINVX12 U58 ( .A(n62), .Y(n1380) );
  OAI221X1 U59 ( .A0(n25), .A1(n6), .B0(n29), .B1(n86), .C0(n83), .Y(ns[1]) );
  NAND2BX2 U60 ( .AN(n52), .B(n25), .Y(n86) );
  NAND2BX1 U61 ( .AN(n59), .B(conv_2_r[12]), .Y(n106) );
  NAND4X2 U62 ( .A(n104), .B(n103), .C(n102), .D(n101), .Y(conv_r[14]) );
  NAND2X2 U63 ( .A(cs[1]), .B(n52), .Y(n83) );
  NAND2X1 U64 ( .A(n83), .B(n86), .Y(n90) );
  NAND4X2 U65 ( .A(n1440), .B(n1430), .C(n1420), .D(n1410), .Y(conv_r[3]) );
  OA22X2 U66 ( .A0(n59), .A1(n14), .B0(n60), .B1(n310), .Y(n1300) );
  NAND4X2 U67 ( .A(n112), .B(n111), .C(n110), .D(n109), .Y(conv_r[11]) );
  NAND4X2 U68 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(conv_r[10]) );
  NAND4X2 U69 ( .A(n1250), .B(n1240), .C(n123), .D(n122), .Y(conv_r[7]) );
  NAND2X6 U70 ( .A(n89), .B(n88), .Y(n1400) );
  BUFX20 U71 ( .A(n1400), .Y(n60) );
  NAND4X2 U72 ( .A(n108), .B(n107), .C(n106), .D(n105), .Y(conv_r[12]) );
  NAND4X2 U73 ( .A(n1290), .B(n1280), .C(n1270), .D(n1260), .Y(conv_r[6]) );
  NAND2BX2 U74 ( .AN(n1370), .B(conv_4_r[4]), .Y(n1360) );
  NAND2BXL U75 ( .AN(n1370), .B(conv_4_r[3]), .Y(n1440) );
  OR2X8 U76 ( .A(cnt[1]), .B(cnt[0]), .Y(n1370) );
  BUFX20 U77 ( .A(n1390), .Y(n59) );
  NAND2BX2 U78 ( .AN(n1380), .B(conv_1_r[4]), .Y(n1350) );
  NOR2BX4 U79 ( .AN(n52), .B(cs[1]), .Y(n61) );
  CLKMX2X2 U80 ( .A(n80), .B(n83), .S0(n6), .Y(n81) );
  NAND2BX1 U81 ( .AN(n59), .B(conv_2_r[4]), .Y(n1340) );
  INVXL U82 ( .A(n59), .Y(n92) );
  CLKINVX2 U83 ( .A(n770), .Y(n760) );
  CLKINVX3 U84 ( .A(n780), .Y(n740) );
  CLKINVX3 U85 ( .A(n770), .Y(n750) );
  CLKINVX3 U86 ( .A(n780), .Y(n730) );
  AND2XL U87 ( .A(n85), .B(n84), .Y(N56) );
  AND2XL U88 ( .A(ns[1]), .B(ns[0]), .Y(N287) );
  AND2XL U89 ( .A(n8), .B(n2210), .Y(N207) );
  AND2XL U90 ( .A(n8), .B(n390), .Y(N218) );
  AND2XL U91 ( .A(n7), .B(n42), .Y(N197) );
  AND2XL U92 ( .A(n7), .B(n360), .Y(N208) );
  AND2XL U93 ( .A(n45), .B(n2210), .Y(N134) );
  AND2XL U94 ( .A(n45), .B(n390), .Y(N145) );
  NAND2BXL U95 ( .AN(n60), .B(conv_3_r[6]), .Y(n1260) );
  NAND2BXL U96 ( .AN(n59), .B(conv_2_r[6]), .Y(n1270) );
  NAND2BXL U97 ( .AN(n60), .B(conv_3_r[10]), .Y(n113) );
  INVXL U98 ( .A(n51), .Y(n1320) );
  INVXL U99 ( .A(n50), .Y(n1310) );
  NAND2BXL U100 ( .AN(n1380), .B(conv_1_r[14]), .Y(n103) );
  NAND2BXL U101 ( .AN(n60), .B(conv_3_r[14]), .Y(n101) );
  NAND2BXL U102 ( .AN(n1370), .B(n46), .Y(n104) );
  NAND2BXL U103 ( .AN(n1380), .B(conv_1_r[16]), .Y(n98) );
  NAND2BXL U104 ( .AN(n60), .B(conv_3_r[16]), .Y(n96) );
  NAND2BXL U105 ( .AN(n1370), .B(conv_4_r[16]), .Y(n99) );
  NAND2BXL U106 ( .AN(n59), .B(conv_2_r[16]), .Y(n97) );
  OA22XL U107 ( .A0(n59), .A1(n2410), .B0(n60), .B1(n13), .Y(n100) );
  CLKBUFX3 U108 ( .A(i_rst_n), .Y(n710) );
  CLKBUFX3 U109 ( .A(i_rst_n), .Y(n700) );
  CLKBUFX3 U110 ( .A(i_rst_n), .Y(n690) );
  CLKBUFX3 U111 ( .A(i_rst_n), .Y(n680) );
  CLKBUFX3 U112 ( .A(i_rst_n), .Y(n670) );
  CLKBUFX3 U113 ( .A(i_rst_n), .Y(n660) );
  CLKBUFX3 U114 ( .A(i_rst_n), .Y(n65) );
  CLKBUFX3 U115 ( .A(i_rst_n), .Y(n64) );
  CLKBUFX3 U116 ( .A(i_rst_n), .Y(n63) );
  CLKBUFX3 U117 ( .A(i_rst_n), .Y(n720) );
  OA21XL U118 ( .A0(n6), .A1(n92), .B0(n85), .Y(N57) );
  NAND2X4 U119 ( .A(n84), .B(n89), .Y(n1390) );
  AND2X2 U120 ( .A(conv_2_w[13]), .B(n750), .Y(N249) );
  AND2X2 U121 ( .A(conv_3_w[13]), .B(n760), .Y(N266) );
  AND2X2 U122 ( .A(conv_4_w[13]), .B(n730), .Y(N283) );
  AND2X2 U123 ( .A(conv_1_w[13]), .B(n740), .Y(N232) );
  AND2X2 U124 ( .A(conv_2_w[15]), .B(n750), .Y(N251) );
  AND2X2 U125 ( .A(conv_3_w[15]), .B(n750), .Y(N268) );
  AND2X2 U126 ( .A(conv_4_w[15]), .B(n730), .Y(N285) );
  AND2X2 U127 ( .A(conv_1_w[15]), .B(n740), .Y(N234) );
  AND2X2 U128 ( .A(conv_2_w[9]), .B(n740), .Y(N245) );
  AND2X2 U129 ( .A(conv_3_w[9]), .B(n760), .Y(N262) );
  AND2X2 U130 ( .A(conv_4_w[9]), .B(n730), .Y(N279) );
  AND2X2 U131 ( .A(conv_1_w[9]), .B(n740), .Y(N228) );
  AND2X2 U132 ( .A(conv_2_w[10]), .B(n750), .Y(N246) );
  AND2X2 U133 ( .A(conv_3_w[10]), .B(n760), .Y(N263) );
  AND2X2 U134 ( .A(conv_4_w[10]), .B(n730), .Y(N280) );
  AND2X2 U135 ( .A(conv_1_w[10]), .B(n740), .Y(N229) );
  AND2X2 U136 ( .A(conv_2_w[5]), .B(n730), .Y(N241) );
  AND2X2 U137 ( .A(conv_3_w[5]), .B(n760), .Y(N258) );
  AND2X2 U138 ( .A(conv_4_w[5]), .B(n730), .Y(N275) );
  AND2X2 U139 ( .A(conv_1_w[5]), .B(n750), .Y(N224) );
  AND2X2 U140 ( .A(conv_2_w[6]), .B(n740), .Y(N242) );
  AND2X2 U141 ( .A(conv_3_w[6]), .B(n760), .Y(N259) );
  AND2X2 U142 ( .A(conv_4_w[6]), .B(n730), .Y(N276) );
  AND2X2 U143 ( .A(conv_1_w[6]), .B(n750), .Y(N225) );
  AND2X2 U144 ( .A(conv_2_w[7]), .B(n750), .Y(N243) );
  AND2X2 U145 ( .A(conv_3_w[7]), .B(n760), .Y(N260) );
  AND2X2 U146 ( .A(conv_4_w[7]), .B(n730), .Y(N277) );
  AND2X2 U147 ( .A(conv_1_w[7]), .B(n740), .Y(N226) );
  AO22X1 U148 ( .A0(n45), .A1(n42), .B0(n9), .B1(n2310), .Y(N125) );
  AO22X1 U149 ( .A0(n45), .A1(n2310), .B0(n9), .B1(n370), .Y(N126) );
  AO22X1 U150 ( .A0(n45), .A1(n370), .B0(n9), .B1(n17), .Y(N127) );
  AO22X1 U151 ( .A0(n45), .A1(n17), .B0(n9), .B1(n340), .Y(N128) );
  AO22X1 U152 ( .A0(n45), .A1(n340), .B0(n9), .B1(n20), .Y(N129) );
  AO22X1 U153 ( .A0(n45), .A1(n20), .B0(n9), .B1(n400), .Y(N130) );
  AO22X1 U154 ( .A0(n45), .A1(n400), .B0(n9), .B1(n21), .Y(N131) );
  AO22X1 U155 ( .A0(n45), .A1(n21), .B0(n9), .B1(n410), .Y(N132) );
  AO22X1 U156 ( .A0(n45), .A1(n410), .B0(n9), .B1(n2210), .Y(N133) );
  AO22X1 U157 ( .A0(n45), .A1(n360), .B0(n9), .B1(n10), .Y(N136) );
  AO22X1 U158 ( .A0(n45), .A1(n10), .B0(n9), .B1(n19), .Y(N137) );
  AO22X1 U159 ( .A0(n45), .A1(n19), .B0(n9), .B1(n380), .Y(N138) );
  AO22X1 U160 ( .A0(n45), .A1(n380), .B0(n9), .B1(n18), .Y(N139) );
  AO22X1 U161 ( .A0(n45), .A1(n18), .B0(n9), .B1(n350), .Y(N140) );
  AND2X2 U162 ( .A(conv_2_w[8]), .B(n730), .Y(N244) );
  AND2X2 U163 ( .A(conv_3_w[8]), .B(n760), .Y(N261) );
  AND2X2 U164 ( .A(conv_4_w[8]), .B(n730), .Y(N278) );
  AND2X2 U165 ( .A(conv_1_w[8]), .B(n740), .Y(N227) );
  AO22X1 U166 ( .A0(n8), .A1(n2310), .B0(n7), .B1(n370), .Y(N199) );
  AO22X1 U167 ( .A0(n8), .A1(n370), .B0(n7), .B1(n17), .Y(N200) );
  AO22X1 U168 ( .A0(n8), .A1(n17), .B0(n7), .B1(n340), .Y(N201) );
  AO22X1 U169 ( .A0(n8), .A1(n340), .B0(n7), .B1(n20), .Y(N202) );
  AO22X1 U170 ( .A0(n8), .A1(n20), .B0(n7), .B1(n400), .Y(N203) );
  AO22X1 U171 ( .A0(n8), .A1(n400), .B0(n7), .B1(n21), .Y(N204) );
  AO22X1 U172 ( .A0(n8), .A1(n21), .B0(n7), .B1(n410), .Y(N205) );
  AO22X1 U173 ( .A0(n8), .A1(n410), .B0(n7), .B1(n2210), .Y(N206) );
  AO22X1 U174 ( .A0(n8), .A1(n360), .B0(n7), .B1(n10), .Y(N209) );
  AO22X1 U175 ( .A0(n8), .A1(n10), .B0(n7), .B1(n19), .Y(N210) );
  AO22X1 U176 ( .A0(n8), .A1(n19), .B0(n7), .B1(n380), .Y(N211) );
  AO22X1 U177 ( .A0(n8), .A1(n380), .B0(n7), .B1(n18), .Y(N212) );
  AO22X1 U178 ( .A0(n8), .A1(n18), .B0(n7), .B1(n350), .Y(N213) );
  AND2X2 U179 ( .A(conv_2_w[4]), .B(n740), .Y(N240) );
  AND2X2 U180 ( .A(conv_3_w[4]), .B(n760), .Y(N257) );
  AND2X2 U181 ( .A(conv_4_w[4]), .B(n730), .Y(N274) );
  AND2X2 U182 ( .A(conv_1_w[4]), .B(n750), .Y(N223) );
  CLKINVX1 U183 ( .A(n60), .Y(n91) );
  AND2X2 U184 ( .A(conv_2_w[3]), .B(n750), .Y(N239) );
  AND2X2 U185 ( .A(conv_3_w[3]), .B(n760), .Y(N256) );
  AND2X2 U186 ( .A(conv_4_w[3]), .B(n730), .Y(N273) );
  AND2X2 U187 ( .A(conv_1_w[3]), .B(n750), .Y(N222) );
  AND2X2 U188 ( .A(conv_3_w[2]), .B(n760), .Y(N255) );
  CLKBUFX3 U189 ( .A(n61), .Y(n780) );
  CLKBUFX3 U190 ( .A(n61), .Y(n770) );
  AND2X2 U191 ( .A(conv_2_w[2]), .B(n730), .Y(N238) );
  AND2X2 U192 ( .A(conv_2_w[1]), .B(n730), .Y(N237) );
  AND2X2 U193 ( .A(conv_4_w[2]), .B(n740), .Y(N272) );
  AND2X2 U194 ( .A(conv_4_w[1]), .B(n740), .Y(N271) );
  AND2X2 U195 ( .A(conv_1_w[2]), .B(n750), .Y(N221) );
  AND2X2 U196 ( .A(conv_1_w[1]), .B(n750), .Y(N220) );
  AND2X2 U197 ( .A(conv_2_w[0]), .B(n740), .Y(N236) );
  AND2X2 U198 ( .A(conv_4_w[0]), .B(n740), .Y(N270) );
  AND2X2 U199 ( .A(conv_1_w[0]), .B(n750), .Y(N219) );
  AND2X2 U200 ( .A(conv_3_w[1]), .B(n740), .Y(N254) );
  AND2X2 U201 ( .A(conv_3_w[0]), .B(n750), .Y(N253) );
  AND2X2 U202 ( .A(n9), .B(n42), .Y(N124) );
  AND2X2 U203 ( .A(n9), .B(n360), .Y(N135) );
  OA22X2 U204 ( .A0(n59), .A1(n300), .B0(n60), .B1(n12), .Y(n117) );
  CLKINVX1 U205 ( .A(n28), .Y(n88) );
  NAND2BX1 U206 ( .AN(n60), .B(conv_3_r[4]), .Y(n1330) );
  NAND2BX1 U207 ( .AN(n1380), .B(conv_1_r[3]), .Y(n1430) );
  NAND2BX1 U208 ( .AN(n60), .B(conv_3_r[3]), .Y(n1410) );
  NAND2BX1 U209 ( .AN(n59), .B(conv_2_r[3]), .Y(n1420) );
  NAND2BX1 U210 ( .AN(n1380), .B(conv_1_r[7]), .Y(n1240) );
  NAND2BX1 U211 ( .AN(n60), .B(conv_3_r[7]), .Y(n122) );
  NAND2BX1 U212 ( .AN(n1370), .B(conv_4_r[7]), .Y(n1250) );
  NAND2BX1 U213 ( .AN(n59), .B(conv_2_r[7]), .Y(n123) );
  NAND2BX1 U214 ( .AN(n1380), .B(conv_1_r[8]), .Y(n120) );
  NAND2BX1 U215 ( .AN(n60), .B(conv_3_r[8]), .Y(n118) );
  NAND2BX1 U216 ( .AN(n1370), .B(n53), .Y(n121) );
  NAND2X1 U217 ( .A(n82), .B(n81), .Y(ns[0]) );
  NAND2XL U218 ( .A(cs[1]), .B(cs[0]), .Y(n80) );
  NAND4X1 U219 ( .A(n99), .B(n98), .C(n97), .D(n96), .Y(conv_r[16]) );
  AO22X1 U220 ( .A0(n45), .A1(n350), .B0(n9), .B1(n95), .Y(N141) );
  AO22X1 U221 ( .A0(n45), .A1(n95), .B0(n9), .B1(n94), .Y(N142) );
  AO22X1 U222 ( .A0(n45), .A1(n94), .B0(n9), .B1(n93), .Y(N143) );
  AO22X1 U223 ( .A0(n45), .A1(n93), .B0(n9), .B1(n390), .Y(N144) );
  AO22X1 U224 ( .A0(n8), .A1(n350), .B0(n7), .B1(n95), .Y(N214) );
  AO22X1 U225 ( .A0(n8), .A1(n95), .B0(n7), .B1(n94), .Y(N215) );
  AO22X1 U226 ( .A0(n8), .A1(n94), .B0(n7), .B1(n93), .Y(N216) );
  AO22X1 U227 ( .A0(n8), .A1(n93), .B0(n7), .B1(n390), .Y(N217) );
  AND2X4 U228 ( .A(conv_4_w[12]), .B(n730), .Y(N282) );
  AND2X4 U229 ( .A(conv_4_w[11]), .B(n730), .Y(N281) );
  AND2X4 U230 ( .A(conv_1_w[12]), .B(n740), .Y(N231) );
  AND2X4 U231 ( .A(conv_1_w[16]), .B(n750), .Y(N235) );
  AND2X4 U232 ( .A(conv_2_w[12]), .B(n750), .Y(N248) );
  AND2X4 U233 ( .A(conv_3_w[12]), .B(n760), .Y(N265) );
  OAI221X2 U234 ( .A0(n1370), .A1(n15), .B0(n1380), .B1(n320), .C0(n117), .Y(
        conv_r[9]) );
endmodule


module conv_DW01_add_23 ( SUM, \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [9:0] SUM;
  input \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n11, n12, n14, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n40, n42, n43, n45, n47, n48, n49, n50, n51,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99;
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

  NAND2XL U66 ( .A(n49), .B(n30), .Y(n5) );
  XOR2X1 U67 ( .A(n38), .B(n7), .Y(SUM[3]) );
  INVX1 U68 ( .A(n32), .Y(n50) );
  BUFX4 U69 ( .A(n37), .Y(n90) );
  CLKINVX1 U70 ( .A(n42), .Y(n40) );
  NAND2X2 U71 ( .A(B[2]), .B(A[2]), .Y(n42) );
  NOR2X4 U72 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NAND2X1 U73 ( .A(B[5]), .B(A[5]), .Y(n30) );
  NAND2X2 U74 ( .A(B[6]), .B(A[6]), .Y(n26) );
  OR2X6 U75 ( .A(B[8]), .B(A[8]), .Y(n99) );
  INVX3 U76 ( .A(n21), .Y(n19) );
  XNOR2X1 U77 ( .A(n31), .B(n5), .Y(SUM[5]) );
  OR2X2 U78 ( .A(n94), .B(n95), .Y(n31) );
  NAND2X1 U79 ( .A(n48), .B(n26), .Y(n4) );
  CLKINVX1 U80 ( .A(n36), .Y(n51) );
  XOR2X1 U81 ( .A(n34), .B(n6), .Y(SUM[4]) );
  NAND2X1 U82 ( .A(n20), .B(n99), .Y(n11) );
  OR2XL U83 ( .A(B[1]), .B(A[1]), .Y(n91) );
  AND2X6 U84 ( .A(n27), .B(n35), .Y(n92) );
  NOR2X8 U85 ( .A(n92), .B(n28), .Y(n1) );
  NOR2X2 U86 ( .A(n34), .B(n32), .Y(n94) );
  INVX3 U87 ( .A(n35), .Y(n34) );
  NAND2X1 U88 ( .A(n51), .B(n90), .Y(n7) );
  OAI21X2 U89 ( .A0(n11), .A1(n1), .B0(n12), .Y(SUM[9]) );
  OR2X8 U90 ( .A(n29), .B(n33), .Y(n97) );
  NAND2XL U91 ( .A(n50), .B(n33), .Y(n6) );
  NAND2X4 U92 ( .A(n93), .B(A[4]), .Y(n33) );
  NAND2X2 U93 ( .A(n47), .B(n23), .Y(n3) );
  NAND2X2 U94 ( .A(B[7]), .B(A[7]), .Y(n23) );
  NAND2X1 U95 ( .A(B[3]), .B(A[3]), .Y(n37) );
  NOR2X2 U96 ( .A(B[3]), .B(A[3]), .Y(n36) );
  NOR2X6 U97 ( .A(n22), .B(n25), .Y(n20) );
  AOI21X4 U98 ( .A0(n21), .A1(n99), .B0(n14), .Y(n12) );
  AOI21X4 U99 ( .A0(n98), .A1(n43), .B0(n40), .Y(n38) );
  NOR2X8 U100 ( .A(n93), .B(A[4]), .Y(n32) );
  BUFX12 U101 ( .A(B[4]), .Y(n93) );
  OR2X2 U102 ( .A(B[2]), .B(A[2]), .Y(n98) );
  OR2X6 U103 ( .A(n1), .B(n25), .Y(n96) );
  OAI21X2 U104 ( .A0(n1), .A1(n18), .B0(n19), .Y(n17) );
  NAND2X4 U105 ( .A(n99), .B(n16), .Y(n2) );
  NAND2X4 U106 ( .A(B[8]), .B(A[8]), .Y(n16) );
  OAI21X4 U107 ( .A0(n22), .A1(n26), .B0(n23), .Y(n21) );
  XOR2X1 U108 ( .A(n4), .B(n1), .Y(SUM[6]) );
  XNOR2X4 U109 ( .A(n24), .B(n3), .Y(SUM[7]) );
  NAND2X4 U110 ( .A(n96), .B(n26), .Y(n24) );
  INVX3 U111 ( .A(n20), .Y(n18) );
  OAI21X4 U112 ( .A0(n38), .A1(n36), .B0(n90), .Y(n35) );
  XNOR2X2 U113 ( .A(n17), .B(n2), .Y(SUM[8]) );
  NAND2X4 U114 ( .A(n97), .B(n30), .Y(n28) );
  INVXL U115 ( .A(n33), .Y(n95) );
  INVXL U116 ( .A(n25), .Y(n48) );
  AND2XL U117 ( .A(n91), .B(n45), .Y(SUM[1]) );
  NOR2X2 U118 ( .A(n29), .B(n32), .Y(n27) );
  NOR2X4 U119 ( .A(B[7]), .B(A[7]), .Y(n22) );
  CLKBUFX3 U120 ( .A(B[0]), .Y(SUM[0]) );
  CLKINVX1 U121 ( .A(n16), .Y(n14) );
  XNOR2XL U122 ( .A(n8), .B(n43), .Y(SUM[2]) );
  INVX3 U123 ( .A(n45), .Y(n43) );
  NAND2X2 U124 ( .A(B[1]), .B(A[1]), .Y(n45) );
  NOR2X4 U125 ( .A(B[6]), .B(A[6]), .Y(n25) );
  CLKINVX1 U126 ( .A(n29), .Y(n49) );
  NAND2XL U127 ( .A(n98), .B(n42), .Y(n8) );
  CLKINVX1 U128 ( .A(n22), .Y(n47) );
endmodule


module conv_DW01_add_21 ( SUM, \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [9:0] SUM;
  input \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n14, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n36,
         n37, n38, n40, n42, n43, n45, n47, n48, n50, n51, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108;
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

  NAND2X6 U66 ( .A(n106), .B(n23), .Y(n21) );
  NOR2X2 U67 ( .A(n29), .B(n33), .Y(n104) );
  NAND2X4 U68 ( .A(B[4]), .B(A[4]), .Y(n33) );
  INVX4 U69 ( .A(n45), .Y(n43) );
  NOR2X4 U70 ( .A(n34), .B(n32), .Y(n101) );
  XNOR2X4 U71 ( .A(n31), .B(n5), .Y(SUM[5]) );
  OR2X1 U72 ( .A(n29), .B(n91), .Y(n5) );
  OR2X2 U73 ( .A(n101), .B(n102), .Y(n31) );
  NAND2X8 U74 ( .A(n105), .B(n19), .Y(n17) );
  AND2X8 U75 ( .A(n35), .B(n27), .Y(n97) );
  BUFX6 U76 ( .A(B[1]), .Y(n90) );
  OR2XL U77 ( .A(n90), .B(A[1]), .Y(n92) );
  NAND2X4 U78 ( .A(n90), .B(A[1]), .Y(n45) );
  NOR2X4 U79 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NOR2X4 U80 ( .A(B[6]), .B(A[6]), .Y(n25) );
  NAND2X4 U81 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NOR2X2 U82 ( .A(n29), .B(n32), .Y(n27) );
  NOR2X4 U83 ( .A(B[3]), .B(A[3]), .Y(n36) );
  NAND2X2 U84 ( .A(B[3]), .B(A[3]), .Y(n37) );
  NAND2X1 U85 ( .A(n108), .B(n16), .Y(n2) );
  CLKINVX6 U86 ( .A(n17), .Y(n93) );
  XNOR2X2 U87 ( .A(n24), .B(n3), .Y(SUM[7]) );
  XOR2X1 U88 ( .A(n34), .B(n6), .Y(SUM[4]) );
  AND2X2 U89 ( .A(n20), .B(n108), .Y(n99) );
  CLKINVX1 U90 ( .A(n1), .Y(n98) );
  AND2X4 U91 ( .A(A[5]), .B(B[5]), .Y(n91) );
  INVX3 U92 ( .A(n20), .Y(n18) );
  NAND2X1 U93 ( .A(n48), .B(n26), .Y(n4) );
  NAND2X4 U94 ( .A(n2), .B(n17), .Y(n95) );
  INVXL U95 ( .A(n32), .Y(n50) );
  NAND2X4 U96 ( .A(B[2]), .B(A[2]), .Y(n42) );
  OR2X8 U97 ( .A(B[2]), .B(A[2]), .Y(n107) );
  NOR2X8 U98 ( .A(B[5]), .B(A[5]), .Y(n29) );
  CLKINVX2 U99 ( .A(n21), .Y(n19) );
  INVX3 U100 ( .A(n35), .Y(n34) );
  OR2X8 U101 ( .A(n1), .B(n18), .Y(n105) );
  NAND2X2 U102 ( .A(B[7]), .B(A[7]), .Y(n23) );
  OR2X8 U103 ( .A(B[8]), .B(A[8]), .Y(n108) );
  NAND2X6 U104 ( .A(B[8]), .B(A[8]), .Y(n16) );
  OR2X8 U105 ( .A(n104), .B(n91), .Y(n28) );
  NOR2X8 U106 ( .A(n103), .B(n40), .Y(n38) );
  CLKAND2X12 U107 ( .A(n107), .B(n43), .Y(n103) );
  NOR2X8 U108 ( .A(B[7]), .B(A[7]), .Y(n22) );
  OR2X4 U109 ( .A(n22), .B(n26), .Y(n106) );
  NAND2X4 U110 ( .A(n93), .B(n94), .Y(n96) );
  NAND2X4 U111 ( .A(n95), .B(n96), .Y(SUM[8]) );
  INVX3 U112 ( .A(n2), .Y(n94) );
  NOR2X8 U113 ( .A(n97), .B(n28), .Y(n1) );
  OAI21X2 U114 ( .A0(n1), .A1(n25), .B0(n26), .Y(n24) );
  AO21X4 U115 ( .A0(n98), .A1(n99), .B0(n100), .Y(SUM[9]) );
  AO21X2 U116 ( .A0(n21), .A1(n108), .B0(n14), .Y(n100) );
  XOR2XL U117 ( .A(n38), .B(n7), .Y(SUM[3]) );
  CLKINVX1 U118 ( .A(n25), .Y(n48) );
  NOR2X2 U119 ( .A(n22), .B(n25), .Y(n20) );
  CLKINVX3 U120 ( .A(n42), .Y(n40) );
  INVXL U121 ( .A(n36), .Y(n51) );
  INVXL U122 ( .A(n33), .Y(n102) );
  NAND2XL U123 ( .A(n47), .B(n23), .Y(n3) );
  OAI21X4 U124 ( .A0(n38), .A1(n36), .B0(n37), .Y(n35) );
  AND2XL U125 ( .A(n92), .B(n45), .Y(SUM[1]) );
  XOR2X1 U126 ( .A(n1), .B(n4), .Y(SUM[6]) );
  CLKBUFX3 U127 ( .A(B[0]), .Y(SUM[0]) );
  CLKINVX1 U128 ( .A(n16), .Y(n14) );
  NAND2X1 U129 ( .A(n50), .B(n33), .Y(n6) );
  NAND2X1 U130 ( .A(n51), .B(n37), .Y(n7) );
  CLKINVX1 U131 ( .A(n22), .Y(n47) );
  XNOR2X1 U132 ( .A(n8), .B(n43), .Y(SUM[2]) );
  NAND2XL U133 ( .A(n107), .B(n42), .Y(n8) );
endmodule


module conv_DW01_add_14 ( \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , 
        \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , 
        \B[0] , \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , 
        \SUM[2] , \SUM[1] , \SUM[0]  );
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  output \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] , \SUM[0] ;
  wire   n2, n3, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n35, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105;
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

  INVX3 U68 ( .A(n43), .Y(n42) );
  NAND2X4 U69 ( .A(A[1]), .B(B[1]), .Y(n45) );
  OAI21X1 U70 ( .A0(n15), .A1(n23), .B0(n16), .Y(n14) );
  CLKINVX8 U71 ( .A(n103), .Y(n93) );
  INVX12 U72 ( .A(n93), .Y(n94) );
  NOR2X8 U73 ( .A(A[1]), .B(B[1]), .Y(n44) );
  NOR2X2 U74 ( .A(n22), .B(n15), .Y(n13) );
  NOR2X4 U75 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XOR2X4 U76 ( .A(n8), .B(n47), .Y(SUM[1]) );
  NAND2X6 U77 ( .A(n99), .B(n100), .Y(SUM[3]) );
  NAND2X4 U78 ( .A(n97), .B(n98), .Y(n100) );
  OAI21X2 U79 ( .A0(n94), .A1(n25), .B0(n26), .Y(n24) );
  NAND2X2 U80 ( .A(n54), .B(n45), .Y(n8) );
  OAI21X4 U81 ( .A0(n42), .A1(n40), .B0(n41), .Y(n39) );
  XOR2X4 U82 ( .A(n94), .B(n5), .Y(SUM[4]) );
  NAND2X2 U83 ( .A(n39), .B(n6), .Y(n99) );
  INVX4 U84 ( .A(n6), .Y(n98) );
  NAND2X2 U85 ( .A(n52), .B(n38), .Y(n6) );
  XNOR2X4 U86 ( .A(n24), .B(n3), .Y(SUM[6]) );
  INVX2 U87 ( .A(n39), .Y(n97) );
  OR2XL U88 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NOR2X4 U89 ( .A(A[5]), .B(B[5]), .Y(n29) );
  NAND2X2 U90 ( .A(A[4]), .B(B[4]), .Y(n33) );
  NOR2X4 U91 ( .A(A[6]), .B(B[6]), .Y(n22) );
  CLKINVX1 U92 ( .A(n27), .Y(n25) );
  NAND2X4 U93 ( .A(A[2]), .B(B[2]), .Y(n41) );
  AND2X2 U94 ( .A(n50), .B(n30), .Y(n105) );
  CLKINVX1 U95 ( .A(n44), .Y(n54) );
  NAND2X4 U96 ( .A(A[0]), .B(B[0]), .Y(n47) );
  NOR2X2 U97 ( .A(A[4]), .B(B[4]), .Y(n32) );
  NAND2X1 U98 ( .A(n102), .B(n33), .Y(n5) );
  OR2X1 U99 ( .A(n94), .B(n11), .Y(n96) );
  NOR2X8 U100 ( .A(A[2]), .B(B[2]), .Y(n40) );
  OAI21X2 U101 ( .A0(n94), .A1(n32), .B0(n33), .Y(n31) );
  OA21X4 U102 ( .A0(n94), .A1(n18), .B0(n19), .Y(n101) );
  AOI21X1 U103 ( .A0(n28), .A1(n13), .B0(n14), .Y(n12) );
  NAND2X2 U104 ( .A(n27), .B(n13), .Y(n11) );
  XOR2X4 U105 ( .A(n42), .B(n7), .Y(SUM[2]) );
  NAND2X2 U106 ( .A(n96), .B(n12), .Y(SUM[8]) );
  NAND2X1 U107 ( .A(n49), .B(n23), .Y(n3) );
  AND2X4 U108 ( .A(n28), .B(n20), .Y(n95) );
  NOR2X4 U109 ( .A(n95), .B(n21), .Y(n19) );
  INVX1 U110 ( .A(n22), .Y(n20) );
  INVXL U111 ( .A(n23), .Y(n21) );
  NAND2X2 U112 ( .A(n53), .B(n41), .Y(n7) );
  NAND2X2 U113 ( .A(n27), .B(n20), .Y(n18) );
  NAND2X2 U114 ( .A(A[5]), .B(B[5]), .Y(n30) );
  XOR2X4 U115 ( .A(n31), .B(n105), .Y(SUM[5]) );
  NAND2X2 U116 ( .A(A[6]), .B(B[6]), .Y(n23) );
  XOR2X4 U117 ( .A(n101), .B(n2), .Y(SUM[7]) );
  NOR2X8 U118 ( .A(A[3]), .B(B[3]), .Y(n37) );
  NAND2X4 U119 ( .A(A[3]), .B(B[3]), .Y(n38) );
  NAND2X1 U120 ( .A(A[7]), .B(B[7]), .Y(n16) );
  CLKINVX1 U121 ( .A(n40), .Y(n53) );
  INVXL U122 ( .A(n37), .Y(n52) );
  NOR2X4 U123 ( .A(n40), .B(n37), .Y(n35) );
  INVXL U124 ( .A(n29), .Y(n50) );
  OAI21X4 U125 ( .A0(n44), .A1(n47), .B0(n45), .Y(n43) );
  OAI21X4 U126 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  INVXL U127 ( .A(n22), .Y(n49) );
  AOI21X4 U128 ( .A0(n43), .A1(n35), .B0(n104), .Y(n103) );
  OAI21X4 U129 ( .A0(n37), .A1(n41), .B0(n38), .Y(n104) );
  NAND2BXL U130 ( .AN(n46), .B(n47), .Y(n9) );
  NOR2XL U131 ( .A(A[0]), .B(B[0]), .Y(n46) );
  CLKINVX1 U132 ( .A(n28), .Y(n26) );
  NAND2X1 U133 ( .A(n48), .B(n16), .Y(n2) );
  CLKINVX1 U134 ( .A(n15), .Y(n48) );
  CLKINVX1 U135 ( .A(n9), .Y(SUM[0]) );
  NOR2X4 U136 ( .A(n32), .B(n29), .Y(n27) );
endmodule


module conv_DW01_add_12 ( \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , 
        \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , 
        \B[0] , \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , 
        \SUM[2] , \SUM[1] , \SUM[0]  );
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  output \SUM[8] , \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ,
         \SUM[1] , \SUM[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n50, n51, n52, n53, n54, n93, n94, n95, n96;
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

  OR2X4 U68 ( .A(n94), .B(n95), .Y(n39) );
  NAND2X4 U69 ( .A(A[1]), .B(B[1]), .Y(n45) );
  INVX1 U70 ( .A(n37), .Y(n52) );
  OR2X6 U71 ( .A(n37), .B(n41), .Y(n96) );
  XOR2X4 U72 ( .A(n8), .B(n47), .Y(SUM[1]) );
  BUFX4 U73 ( .A(n10), .Y(SUM[8]) );
  OAI21X2 U74 ( .A0(n1), .A1(n32), .B0(n33), .Y(n31) );
  NAND2X4 U75 ( .A(A[4]), .B(B[4]), .Y(n33) );
  XOR2X4 U76 ( .A(n42), .B(n7), .Y(SUM[2]) );
  XNOR2X4 U77 ( .A(n31), .B(n4), .Y(SUM[5]) );
  NOR2X2 U78 ( .A(A[7]), .B(B[7]), .Y(n15) );
  CLKINVX1 U79 ( .A(n23), .Y(n21) );
  NAND2X2 U80 ( .A(A[5]), .B(B[5]), .Y(n30) );
  NOR2X4 U81 ( .A(A[3]), .B(B[3]), .Y(n37) );
  CLKINVX1 U82 ( .A(n15), .Y(n48) );
  NOR2X4 U83 ( .A(A[1]), .B(B[1]), .Y(n44) );
  INVX3 U84 ( .A(n40), .Y(n53) );
  AOI21X1 U85 ( .A0(n28), .A1(n20), .B0(n21), .Y(n19) );
  NAND2X1 U86 ( .A(n20), .B(n23), .Y(n3) );
  INVX3 U87 ( .A(n22), .Y(n20) );
  NOR2X4 U88 ( .A(A[6]), .B(B[6]), .Y(n22) );
  OAI21X1 U89 ( .A0(n15), .A1(n23), .B0(n16), .Y(n14) );
  AOI21X1 U90 ( .A0(n28), .A1(n13), .B0(n14), .Y(n12) );
  NAND2X1 U91 ( .A(A[7]), .B(B[7]), .Y(n16) );
  OA21X2 U92 ( .A0(n1), .A1(n18), .B0(n19), .Y(n93) );
  OAI21X2 U93 ( .A0(n1), .A1(n25), .B0(n26), .Y(n24) );
  INVX1 U94 ( .A(n27), .Y(n25) );
  INVX1 U95 ( .A(n28), .Y(n26) );
  NAND2X2 U96 ( .A(n53), .B(n41), .Y(n7) );
  NOR2X2 U97 ( .A(n40), .B(n37), .Y(n35) );
  NOR2X8 U98 ( .A(A[2]), .B(B[2]), .Y(n40) );
  NAND2X6 U99 ( .A(n96), .B(n38), .Y(n36) );
  NAND2X2 U100 ( .A(A[3]), .B(B[3]), .Y(n38) );
  BUFX16 U101 ( .A(n34), .Y(n1) );
  NOR2X8 U102 ( .A(A[4]), .B(B[4]), .Y(n32) );
  OAI21X4 U103 ( .A0(n29), .A1(n33), .B0(n30), .Y(n28) );
  NAND2X6 U104 ( .A(A[2]), .B(B[2]), .Y(n41) );
  XOR2X2 U105 ( .A(n1), .B(n5), .Y(SUM[4]) );
  NOR2X4 U106 ( .A(n42), .B(n40), .Y(n94) );
  CLKINVX8 U107 ( .A(n43), .Y(n42) );
  XNOR2X4 U108 ( .A(n39), .B(n6), .Y(SUM[3]) );
  NOR2X2 U109 ( .A(n22), .B(n15), .Y(n13) );
  AOI21X4 U110 ( .A0(n43), .A1(n35), .B0(n36), .Y(n34) );
  XNOR2X4 U111 ( .A(n24), .B(n3), .Y(SUM[6]) );
  NAND2X2 U112 ( .A(A[6]), .B(B[6]), .Y(n23) );
  NAND2X2 U113 ( .A(n52), .B(n38), .Y(n6) );
  XOR2X4 U114 ( .A(n93), .B(n2), .Y(SUM[7]) );
  INVXL U115 ( .A(n41), .Y(n95) );
  INVXL U116 ( .A(n29), .Y(n50) );
  OAI21XL U117 ( .A0(n1), .A1(n11), .B0(n12), .Y(n10) );
  NOR2X4 U118 ( .A(A[5]), .B(B[5]), .Y(n29) );
  NAND2BXL U119 ( .AN(n46), .B(n47), .Y(n9) );
  NAND2XL U120 ( .A(n27), .B(n13), .Y(n11) );
  OAI21X4 U121 ( .A0(n44), .A1(n47), .B0(n45), .Y(n43) );
  INVXL U122 ( .A(n32), .Y(n51) );
  NAND2X4 U123 ( .A(A[0]), .B(B[0]), .Y(n47) );
  NOR2XL U124 ( .A(A[0]), .B(B[0]), .Y(n46) );
  NAND2X1 U125 ( .A(n27), .B(n20), .Y(n18) );
  NAND2X1 U126 ( .A(n48), .B(n16), .Y(n2) );
  NAND2X1 U127 ( .A(n50), .B(n30), .Y(n4) );
  NAND2X2 U128 ( .A(n54), .B(n45), .Y(n8) );
  CLKINVX1 U129 ( .A(n44), .Y(n54) );
  CLKINVX1 U130 ( .A(n9), .Y(SUM[0]) );
  NAND2X1 U131 ( .A(n51), .B(n33), .Y(n5) );
  NOR2X4 U132 ( .A(n32), .B(n29), .Y(n27) );
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
         n37, n38, n42, n43, n50, n51, n52, n59, n60, n99, n100, n101, n102,
         n103, n104, n105, n106;
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

  XNOR2X4 U82 ( .A(n104), .B(A[6]), .Y(SUM[6]) );
  XOR2X2 U83 ( .A(n18), .B(A[11]), .Y(SUM[11]) );
  XNOR2X2 U84 ( .A(n102), .B(A[10]), .Y(SUM[10]) );
  XNOR2X2 U85 ( .A(n105), .B(A[5]), .Y(SUM[5]) );
  OR2X2 U86 ( .A(n1), .B(n31), .Y(n103) );
  NAND2X8 U87 ( .A(n33), .B(n52), .Y(n1) );
  XNOR2X4 U88 ( .A(n103), .B(A[9]), .Y(SUM[9]) );
  BUFX12 U89 ( .A(A[2]), .Y(n99) );
  NOR2X6 U90 ( .A(n101), .B(n60), .Y(n52) );
  INVX3 U91 ( .A(n52), .Y(n51) );
  XOR2X1 U92 ( .A(n51), .B(n50), .Y(SUM[4]) );
  XOR2X1 U93 ( .A(n8), .B(A[13]), .Y(SUM[13]) );
  XOR2X1 U94 ( .A(n12), .B(A[12]), .Y(SUM[12]) );
  CLKINVX1 U95 ( .A(n14), .Y(n13) );
  AND2X2 U96 ( .A(A[12]), .B(A[13]), .Y(n100) );
  CLKINVX1 U97 ( .A(n23), .Y(n24) );
  NOR2X4 U98 ( .A(n23), .B(n15), .Y(n14) );
  NAND2X4 U99 ( .A(A[8]), .B(A[9]), .Y(n23) );
  INVX1 U100 ( .A(A[8]), .Y(n31) );
  NOR2X4 U101 ( .A(n42), .B(n34), .Y(n33) );
  NOR2X2 U102 ( .A(n1), .B(n13), .Y(n12) );
  NOR2X1 U103 ( .A(n3), .B(n1), .Y(SUM[14]) );
  NOR2X2 U104 ( .A(n9), .B(n1), .Y(n8) );
  AND2X2 U105 ( .A(n59), .B(n99), .Y(n106) );
  CLKINVX1 U106 ( .A(n60), .Y(n59) );
  XOR2X1 U107 ( .A(n106), .B(A[3]), .Y(SUM[3]) );
  NOR2X2 U108 ( .A(n38), .B(n51), .Y(n37) );
  OR2X2 U109 ( .A(n51), .B(n50), .Y(n105) );
  OR2X2 U110 ( .A(n51), .B(n42), .Y(n104) );
  OR2X2 U111 ( .A(n1), .B(n23), .Y(n102) );
  NAND2X4 U112 ( .A(A[1]), .B(A[0]), .Y(n60) );
  NAND2X4 U113 ( .A(n99), .B(A[3]), .Y(n101) );
  NAND2X2 U114 ( .A(A[4]), .B(A[5]), .Y(n42) );
  XOR2X1 U115 ( .A(n37), .B(A[7]), .Y(SUM[7]) );
  NAND2XL U116 ( .A(n14), .B(n100), .Y(n3) );
  XOR2XL U117 ( .A(n59), .B(n99), .Y(SUM[2]) );
  INVXL U118 ( .A(A[4]), .Y(n50) );
  XOR2XL U119 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XOR2X1 U120 ( .A(n1), .B(n31), .Y(SUM[8]) );
  CLKINVX1 U121 ( .A(n42), .Y(n43) );
  NAND2X2 U122 ( .A(A[6]), .B(A[7]), .Y(n34) );
  NOR2X1 U123 ( .A(n1), .B(n19), .Y(n18) );
  NAND2X1 U124 ( .A(n24), .B(A[10]), .Y(n19) );
  NAND2X1 U125 ( .A(n14), .B(A[12]), .Y(n9) );
  NAND2X1 U126 ( .A(n43), .B(A[6]), .Y(n38) );
  NAND2X2 U127 ( .A(A[10]), .B(A[11]), .Y(n15) );
endmodule


module conv_DW01_add_11 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n36, n37, n38, n39, n40, n41,
         n45, n46, n47, n48, n54, n55, n56, n57, n58, n63, n64, n65, n66, n69,
         n70, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n91, n92, n94, n97, n98, n99, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n120, n122, n123, n124, n125, n126, n127, n128, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202;
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

  NOR2X4 U150 ( .A(n86), .B(n81), .Y(n79) );
  NOR2X4 U151 ( .A(A[4]), .B(n188), .Y(n102) );
  BUFX4 U152 ( .A(B[4]), .Y(n188) );
  AOI21X4 U153 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  NAND2X4 U154 ( .A(n39), .B(n63), .Y(n3) );
  NOR2X4 U155 ( .A(n41), .B(n56), .Y(n39) );
  NAND2X1 U156 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NOR2X4 U157 ( .A(A[7]), .B(B[7]), .Y(n81) );
  NOR2X4 U158 ( .A(n102), .B(n97), .Y(n91) );
  NOR2X4 U159 ( .A(A[5]), .B(B[5]), .Y(n97) );
  AO21XL U160 ( .A0(n202), .A1(n63), .B0(n64), .Y(n194) );
  INVX3 U161 ( .A(n63), .Y(n65) );
  NOR2X4 U162 ( .A(n74), .B(n69), .Y(n63) );
  OAI21X2 U163 ( .A0(n81), .A1(n191), .B0(n82), .Y(n80) );
  BUFX4 U164 ( .A(B[10]), .Y(n190) );
  NOR2X1 U165 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NOR2X4 U166 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NOR2X1 U167 ( .A(n41), .B(n57), .Y(n40) );
  INVX3 U168 ( .A(n189), .Y(n191) );
  NAND2X2 U169 ( .A(A[10]), .B(n190), .Y(n57) );
  CLKINVX1 U170 ( .A(n56), .Y(n58) );
  INVX2 U171 ( .A(n105), .Y(n104) );
  NAND2X2 U172 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NOR2X2 U173 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NAND2X1 U174 ( .A(n58), .B(A[11]), .Y(n47) );
  CLKBUFX3 U175 ( .A(n111), .Y(n192) );
  NAND2X1 U176 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NAND2X1 U177 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NAND2X2 U178 ( .A(A[0]), .B(B[0]), .Y(n118) );
  NAND2X1 U179 ( .A(A[1]), .B(B[1]), .Y(n116) );
  OAI21XL U180 ( .A0(n94), .A1(n86), .B0(n191), .Y(n85) );
  CLKINVX1 U181 ( .A(n3), .Y(n37) );
  NAND2X1 U182 ( .A(n125), .B(n103), .Y(n10) );
  XNOR2X1 U183 ( .A(n194), .B(n4), .Y(SUM[10]) );
  XNOR2X1 U184 ( .A(n197), .B(A[11]), .Y(SUM[11]) );
  XOR2X2 U185 ( .A(n199), .B(A[16]), .Y(SUM[16]) );
  NOR2X1 U186 ( .A(n3), .B(n198), .Y(n17) );
  AND2X2 U187 ( .A(A[6]), .B(B[6]), .Y(n189) );
  NOR2X2 U188 ( .A(A[9]), .B(B[9]), .Y(n69) );
  NAND2X1 U189 ( .A(A[9]), .B(B[9]), .Y(n70) );
  BUFX20 U190 ( .A(n1), .Y(n202) );
  XOR2X2 U191 ( .A(n200), .B(A[14]), .Y(SUM[14]) );
  AOI21X2 U192 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  AO21X2 U193 ( .A0(n202), .A1(n45), .B0(n46), .Y(n201) );
  OAI21X1 U194 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  INVXL U195 ( .A(n97), .Y(n124) );
  INVXL U196 ( .A(n81), .Y(n122) );
  NAND2XL U197 ( .A(n123), .B(n191), .Y(n8) );
  NAND2X2 U198 ( .A(A[8]), .B(B[8]), .Y(n75) );
  NAND2XL U199 ( .A(n58), .B(n57), .Y(n4) );
  NOR2X4 U200 ( .A(A[10]), .B(n190), .Y(n56) );
  INVX1 U201 ( .A(n74), .Y(n72) );
  OAI21X4 U202 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NOR2X2 U203 ( .A(A[1]), .B(B[1]), .Y(n115) );
  OAI21X4 U204 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NAND2X2 U205 ( .A(A[4]), .B(n188), .Y(n103) );
  OAI21X4 U206 ( .A0(n105), .A1(n77), .B0(n78), .Y(n1) );
  AOI21X4 U207 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  NAND2BX1 U208 ( .AN(n57), .B(A[11]), .Y(n48) );
  OAI21X4 U209 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NOR2X2 U210 ( .A(n108), .B(n192), .Y(n106) );
  OAI21X2 U211 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  BUFX6 U212 ( .A(n2), .Y(n193) );
  AO21X1 U213 ( .A0(n104), .A1(n91), .B0(n92), .Y(n196) );
  INVXL U214 ( .A(n114), .Y(n113) );
  XNOR2X1 U215 ( .A(n195), .B(n5), .Y(SUM[9]) );
  AO21X1 U216 ( .A0(n202), .A1(n72), .B0(n73), .Y(n195) );
  XNOR2XL U217 ( .A(n202), .B(n6), .Y(SUM[8]) );
  NAND2XL U218 ( .A(n72), .B(n75), .Y(n6) );
  INVXL U219 ( .A(n92), .Y(n94) );
  NAND2XL U220 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U221 ( .A(n196), .B(n8), .Y(SUM[6]) );
  NAND2XL U222 ( .A(n124), .B(n98), .Y(n9) );
  NAND2XL U223 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U224 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NOR2XL U225 ( .A(n65), .B(n56), .Y(n54) );
  XOR2XL U226 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U227 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U228 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U229 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U230 ( .A(n115), .Y(n128) );
  NAND2BXL U231 ( .AN(n117), .B(n118), .Y(n14) );
  NOR2BXL U232 ( .AN(n91), .B(n86), .Y(n84) );
  INVXL U233 ( .A(n102), .Y(n125) );
  INVXL U234 ( .A(n75), .Y(n73) );
  INVXL U235 ( .A(n103), .Y(n101) );
  INVXL U236 ( .A(n86), .Y(n123) );
  AOI21X1 U237 ( .A0(n202), .A1(n54), .B0(n55), .Y(n197) );
  NOR2X1 U238 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2X1 U239 ( .A(A[13]), .B(A[14]), .Y(n25) );
  INVXL U240 ( .A(A[13]), .Y(n35) );
  NOR2XL U241 ( .A(A[0]), .B(B[0]), .Y(n117) );
  CLKINVX1 U242 ( .A(n193), .Y(n38) );
  NOR2X1 U243 ( .A(n193), .B(n198), .Y(n18) );
  NAND2X1 U244 ( .A(n91), .B(n79), .Y(n77) );
  CLKINVX1 U245 ( .A(n64), .Y(n66) );
  XOR2X1 U246 ( .A(n36), .B(n35), .Y(SUM[13]) );
  AOI21X1 U247 ( .A0(n202), .A1(n37), .B0(n38), .Y(n36) );
  NOR2X1 U248 ( .A(n193), .B(n25), .Y(n24) );
  NOR2X1 U249 ( .A(n193), .B(n35), .Y(n32) );
  XOR2X1 U250 ( .A(n22), .B(n21), .Y(SUM[15]) );
  AOI21X1 U251 ( .A0(n202), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X1 U252 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U253 ( .A(n120), .B(n70), .Y(n5) );
  XOR2X1 U254 ( .A(n99), .B(n9), .Y(SUM[5]) );
  AOI21X1 U255 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  XOR2X1 U256 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X1 U257 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U258 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U259 ( .A(n3), .B(n35), .Y(n31) );
  OAI21XL U260 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  OR2X1 U261 ( .A(n25), .B(n21), .Y(n198) );
  XNOR2X1 U262 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21XL U263 ( .A0(n113), .A1(n192), .B0(n112), .Y(n110) );
  CLKINVX1 U264 ( .A(n192), .Y(n127) );
  CLKINVX1 U265 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U266 ( .A(n69), .Y(n120) );
  CLKINVX1 U267 ( .A(n108), .Y(n126) );
  AO21X1 U268 ( .A0(n202), .A1(n17), .B0(n18), .Y(n199) );
  AO21X1 U269 ( .A0(n202), .A1(n31), .B0(n32), .Y(n200) );
  XOR2X1 U270 ( .A(n201), .B(A[12]), .Y(SUM[12]) );
  NAND2X1 U271 ( .A(A[5]), .B(B[5]), .Y(n98) );
  CLKINVX1 U272 ( .A(A[15]), .Y(n21) );
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197;
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

  NAND2X2 U150 ( .A(A[1]), .B(B[1]), .Y(n116) );
  NOR2X4 U151 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NOR2X2 U152 ( .A(A[4]), .B(B[4]), .Y(n102) );
  NOR2X2 U153 ( .A(n41), .B(n56), .Y(n39) );
  NOR2X2 U154 ( .A(A[5]), .B(B[5]), .Y(n97) );
  NOR2X4 U155 ( .A(n102), .B(n97), .Y(n91) );
  NAND2X1 U156 ( .A(A[5]), .B(B[5]), .Y(n98) );
  INVX3 U157 ( .A(n64), .Y(n66) );
  NOR2X1 U158 ( .A(n41), .B(n57), .Y(n40) );
  NOR2X2 U159 ( .A(A[7]), .B(B[7]), .Y(n81) );
  NOR2X2 U160 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NOR2X2 U161 ( .A(A[9]), .B(B[9]), .Y(n69) );
  OAI21X2 U162 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  CLKINVX1 U163 ( .A(n92), .Y(n94) );
  NAND2X1 U164 ( .A(A[3]), .B(B[3]), .Y(n109) );
  CLKINVX1 U165 ( .A(n114), .Y(n113) );
  NAND2X1 U166 ( .A(A[9]), .B(B[9]), .Y(n70) );
  NAND2X1 U167 ( .A(n58), .B(A[11]), .Y(n47) );
  NAND2X1 U168 ( .A(A[0]), .B(B[0]), .Y(n118) );
  NAND2X1 U169 ( .A(A[13]), .B(A[14]), .Y(n25) );
  AO21X1 U170 ( .A0(n104), .A1(n91), .B0(n92), .Y(n191) );
  AOI21X1 U171 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  XOR2X2 U172 ( .A(n194), .B(A[16]), .Y(SUM[16]) );
  OAI21X2 U173 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  NOR2X4 U174 ( .A(n86), .B(n81), .Y(n79) );
  NOR2BX1 U175 ( .AN(n91), .B(n86), .Y(n84) );
  CLKINVX1 U176 ( .A(n63), .Y(n65) );
  NAND2X2 U177 ( .A(n39), .B(n63), .Y(n3) );
  NOR2X2 U178 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NAND2X2 U179 ( .A(A[6]), .B(B[6]), .Y(n89) );
  NAND2X2 U180 ( .A(A[11]), .B(A[12]), .Y(n41) );
  INVX2 U181 ( .A(n105), .Y(n104) );
  NOR2X4 U182 ( .A(A[10]), .B(B[10]), .Y(n56) );
  BUFX20 U183 ( .A(n1), .Y(n197) );
  NOR2X2 U184 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NOR2X1 U185 ( .A(n65), .B(n56), .Y(n54) );
  AO21X4 U186 ( .A0(n197), .A1(n45), .B0(n46), .Y(n196) );
  OAI21X1 U187 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U188 ( .A(n72), .B(n75), .Y(n6) );
  NAND2X2 U189 ( .A(A[8]), .B(B[8]), .Y(n75) );
  OAI21X4 U190 ( .A0(n105), .A1(n77), .B0(n78), .Y(n1) );
  AOI21X4 U191 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NOR2X2 U192 ( .A(A[2]), .B(B[2]), .Y(n111) );
  CLKINVX1 U193 ( .A(n102), .Y(n125) );
  AOI21X2 U194 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  NAND2XL U195 ( .A(n58), .B(n57), .Y(n4) );
  NAND2X2 U196 ( .A(A[10]), .B(B[10]), .Y(n57) );
  INVX1 U197 ( .A(n56), .Y(n58) );
  INVX1 U198 ( .A(n81), .Y(n122) );
  AOI21X4 U199 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  OAI21X4 U200 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  OAI21X4 U201 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NAND2X2 U202 ( .A(n91), .B(n79), .Y(n77) );
  NOR2X2 U203 ( .A(n74), .B(n69), .Y(n63) );
  OAI21X4 U204 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NAND2X2 U205 ( .A(A[4]), .B(B[4]), .Y(n103) );
  INVXL U206 ( .A(n108), .Y(n126) );
  NOR2X2 U207 ( .A(n108), .B(n111), .Y(n106) );
  BUFX6 U208 ( .A(n2), .Y(n188) );
  NAND2XL U209 ( .A(n124), .B(n98), .Y(n9) );
  CLKINVX1 U210 ( .A(A[15]), .Y(n21) );
  INVX1 U211 ( .A(n3), .Y(n37) );
  AO21XL U212 ( .A0(n197), .A1(n63), .B0(n64), .Y(n189) );
  XNOR2X1 U213 ( .A(n189), .B(n4), .Y(SUM[10]) );
  XNOR2X1 U214 ( .A(n190), .B(n5), .Y(SUM[9]) );
  AO21X1 U215 ( .A0(n197), .A1(n72), .B0(n73), .Y(n190) );
  XNOR2XL U216 ( .A(n197), .B(n6), .Y(SUM[8]) );
  NAND2XL U217 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U218 ( .A(n191), .B(n8), .Y(SUM[6]) );
  NAND2XL U219 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U220 ( .A(n104), .B(n10), .Y(SUM[4]) );
  NAND2XL U221 ( .A(n125), .B(n103), .Y(n10) );
  XOR2XL U222 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U223 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U224 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U225 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U226 ( .A(n115), .Y(n128) );
  NAND2BXL U227 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U228 ( .A(n75), .Y(n73) );
  INVXL U229 ( .A(n103), .Y(n101) );
  INVXL U230 ( .A(n86), .Y(n123) );
  XNOR2X1 U231 ( .A(n192), .B(A[11]), .Y(SUM[11]) );
  AOI21X1 U232 ( .A0(n197), .A1(n54), .B0(n55), .Y(n192) );
  NAND2BXL U233 ( .AN(n57), .B(A[11]), .Y(n48) );
  INVXL U234 ( .A(A[13]), .Y(n35) );
  NOR2XL U235 ( .A(A[0]), .B(B[0]), .Y(n117) );
  CLKINVX1 U236 ( .A(n188), .Y(n38) );
  NOR2X1 U237 ( .A(n188), .B(n193), .Y(n18) );
  NOR2X1 U238 ( .A(n3), .B(n193), .Y(n17) );
  XOR2X1 U239 ( .A(n36), .B(n35), .Y(SUM[13]) );
  AOI21X1 U240 ( .A0(n197), .A1(n37), .B0(n38), .Y(n36) );
  NOR2X1 U241 ( .A(n188), .B(n25), .Y(n24) );
  NOR2X1 U242 ( .A(n188), .B(n35), .Y(n32) );
  XOR2X1 U243 ( .A(n22), .B(n21), .Y(SUM[15]) );
  AOI21X1 U244 ( .A0(n197), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X1 U245 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U246 ( .A(n120), .B(n70), .Y(n5) );
  XOR2X1 U247 ( .A(n99), .B(n9), .Y(SUM[5]) );
  NAND2X1 U248 ( .A(n123), .B(n89), .Y(n8) );
  XOR2X1 U249 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X1 U250 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U251 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U252 ( .A(n3), .B(n35), .Y(n31) );
  OAI21XL U253 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  OAI21XL U254 ( .A0(n94), .A1(n86), .B0(n89), .Y(n85) );
  OR2X1 U255 ( .A(n25), .B(n21), .Y(n193) );
  XNOR2X1 U256 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21XL U257 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  CLKINVX1 U258 ( .A(n74), .Y(n72) );
  CLKINVX1 U259 ( .A(n111), .Y(n127) );
  CLKINVX1 U260 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U261 ( .A(n69), .Y(n120) );
  CLKINVX1 U262 ( .A(n97), .Y(n124) );
  AO21X1 U263 ( .A0(n197), .A1(n17), .B0(n18), .Y(n194) );
  XOR2X1 U264 ( .A(n195), .B(A[14]), .Y(SUM[14]) );
  AO21X1 U265 ( .A0(n197), .A1(n31), .B0(n32), .Y(n195) );
  XOR2X1 U266 ( .A(n196), .B(A[12]), .Y(SUM[12]) );
  NAND2X1 U267 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NAND2X1 U268 ( .A(A[7]), .B(B[7]), .Y(n82) );
endmodule


module conv_DW01_add_9 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
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
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199;
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

  AOI21X2 U150 ( .A0(n199), .A1(n23), .B0(n24), .Y(n22) );
  NAND2XL U151 ( .A(n123), .B(n89), .Y(n8) );
  XNOR2X2 U152 ( .A(n191), .B(n4), .Y(SUM[10]) );
  BUFX4 U153 ( .A(B[5]), .Y(n188) );
  XOR2X1 U154 ( .A(n198), .B(A[12]), .Y(SUM[12]) );
  OAI21X1 U155 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U156 ( .A(n58), .B(A[11]), .Y(n47) );
  OAI21X2 U157 ( .A0(n81), .A1(n89), .B0(n82), .Y(n80) );
  NOR2X6 U158 ( .A(n189), .B(n81), .Y(n79) );
  NOR2X4 U159 ( .A(A[7]), .B(B[7]), .Y(n81) );
  BUFX6 U160 ( .A(n86), .Y(n189) );
  NAND2X1 U161 ( .A(A[13]), .B(A[14]), .Y(n25) );
  NOR2X1 U162 ( .A(n41), .B(n57), .Y(n40) );
  OAI21X2 U163 ( .A0(n105), .A1(n77), .B0(n78), .Y(n1) );
  NOR2X2 U164 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NOR2X1 U165 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NOR2X4 U166 ( .A(A[9]), .B(B[9]), .Y(n69) );
  NAND2X2 U167 ( .A(A[11]), .B(A[12]), .Y(n41) );
  NOR2X2 U168 ( .A(n41), .B(n56), .Y(n39) );
  NAND2X1 U169 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NAND2X1 U170 ( .A(A[3]), .B(B[3]), .Y(n109) );
  NAND2X2 U171 ( .A(A[8]), .B(B[8]), .Y(n75) );
  NAND2X1 U172 ( .A(A[6]), .B(B[6]), .Y(n89) );
  CLKINVX1 U173 ( .A(n114), .Y(n113) );
  NOR2X2 U174 ( .A(A[2]), .B(B[2]), .Y(n111) );
  NAND2BX1 U175 ( .AN(n57), .B(A[11]), .Y(n48) );
  XOR2X2 U176 ( .A(n196), .B(A[16]), .Y(SUM[16]) );
  XNOR2X1 U177 ( .A(n104), .B(n10), .Y(SUM[4]) );
  BUFX16 U178 ( .A(n1), .Y(n199) );
  OAI21X2 U179 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  OAI21X2 U180 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NAND2X2 U181 ( .A(A[9]), .B(B[9]), .Y(n70) );
  OAI21XL U182 ( .A0(n94), .A1(n189), .B0(n89), .Y(n85) );
  CLKINVX1 U183 ( .A(n56), .Y(n58) );
  NOR2X4 U184 ( .A(A[10]), .B(B[10]), .Y(n56) );
  NOR2X2 U185 ( .A(A[1]), .B(B[1]), .Y(n115) );
  NAND2XL U186 ( .A(n120), .B(n70), .Y(n5) );
  AOI21X2 U187 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  NAND2X2 U188 ( .A(A[0]), .B(B[0]), .Y(n118) );
  NOR2BXL U189 ( .AN(n91), .B(n189), .Y(n84) );
  AO21X2 U190 ( .A0(n199), .A1(n45), .B0(n46), .Y(n198) );
  NAND2X4 U191 ( .A(n39), .B(n63), .Y(n3) );
  NAND2X2 U192 ( .A(A[10]), .B(B[10]), .Y(n57) );
  NOR2X4 U193 ( .A(A[5]), .B(n188), .Y(n97) );
  NAND2X2 U194 ( .A(A[5]), .B(n188), .Y(n98) );
  NOR2X4 U195 ( .A(n102), .B(n97), .Y(n91) );
  CLKINVX1 U196 ( .A(n102), .Y(n125) );
  NOR2X2 U197 ( .A(A[4]), .B(B[4]), .Y(n102) );
  XNOR2X2 U198 ( .A(n194), .B(A[11]), .Y(SUM[11]) );
  AOI21X4 U199 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  OAI21X4 U200 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  AO21X2 U201 ( .A0(n104), .A1(n91), .B0(n92), .Y(n193) );
  NOR2X2 U202 ( .A(n74), .B(n69), .Y(n63) );
  OAI21X4 U203 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NAND2X2 U204 ( .A(A[4]), .B(B[4]), .Y(n103) );
  INVXL U205 ( .A(n108), .Y(n126) );
  NOR2X2 U206 ( .A(n108), .B(n111), .Y(n106) );
  BUFX6 U207 ( .A(n2), .Y(n190) );
  NAND2XL U208 ( .A(n124), .B(n98), .Y(n9) );
  INVX1 U209 ( .A(n3), .Y(n37) );
  AO21XL U210 ( .A0(n199), .A1(n63), .B0(n64), .Y(n191) );
  NOR2X1 U211 ( .A(A[8]), .B(B[8]), .Y(n74) );
  INVXL U212 ( .A(A[15]), .Y(n21) );
  INVX1 U213 ( .A(n105), .Y(n104) );
  XNOR2X1 U214 ( .A(n192), .B(n5), .Y(SUM[9]) );
  AO21X1 U215 ( .A0(n199), .A1(n72), .B0(n73), .Y(n192) );
  XNOR2XL U216 ( .A(n199), .B(n6), .Y(SUM[8]) );
  NAND2XL U217 ( .A(n72), .B(n75), .Y(n6) );
  INVXL U218 ( .A(n92), .Y(n94) );
  NAND2XL U219 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U220 ( .A(n193), .B(n8), .Y(SUM[6]) );
  AOI21X1 U221 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  NAND2XL U222 ( .A(n126), .B(n109), .Y(n11) );
  NAND2XL U223 ( .A(n125), .B(n103), .Y(n10) );
  NOR2XL U224 ( .A(n65), .B(n56), .Y(n54) );
  XOR2XL U225 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U226 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U227 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U228 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U229 ( .A(n115), .Y(n128) );
  NAND2BXL U230 ( .AN(n117), .B(n118), .Y(n14) );
  INVXL U231 ( .A(n75), .Y(n73) );
  INVXL U232 ( .A(n103), .Y(n101) );
  INVXL U233 ( .A(n189), .Y(n123) );
  AOI21X1 U234 ( .A0(n199), .A1(n54), .B0(n55), .Y(n194) );
  INVXL U235 ( .A(A[13]), .Y(n35) );
  NOR2XL U236 ( .A(A[0]), .B(B[0]), .Y(n117) );
  CLKINVX1 U237 ( .A(n190), .Y(n38) );
  NOR2X1 U238 ( .A(n190), .B(n195), .Y(n18) );
  NAND2X1 U239 ( .A(n91), .B(n79), .Y(n77) );
  NOR2X1 U240 ( .A(n3), .B(n195), .Y(n17) );
  CLKINVX1 U241 ( .A(n64), .Y(n66) );
  CLKINVX1 U242 ( .A(n63), .Y(n65) );
  XOR2X1 U243 ( .A(n36), .B(n35), .Y(SUM[13]) );
  AOI21X1 U244 ( .A0(n199), .A1(n37), .B0(n38), .Y(n36) );
  NOR2X1 U245 ( .A(n190), .B(n25), .Y(n24) );
  NOR2X1 U246 ( .A(n190), .B(n35), .Y(n32) );
  XOR2X1 U247 ( .A(n22), .B(n21), .Y(SUM[15]) );
  NOR2X1 U248 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U249 ( .A(n58), .B(n57), .Y(n4) );
  XOR2X1 U250 ( .A(n99), .B(n9), .Y(SUM[5]) );
  AOI21X1 U251 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  XOR2X1 U252 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X1 U253 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U254 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U255 ( .A(n3), .B(n35), .Y(n31) );
  OAI21XL U256 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  OR2X1 U257 ( .A(n25), .B(n21), .Y(n195) );
  XNOR2X1 U258 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21XL U259 ( .A0(n113), .A1(n111), .B0(n112), .Y(n110) );
  CLKINVX1 U260 ( .A(n74), .Y(n72) );
  CLKINVX1 U261 ( .A(n111), .Y(n127) );
  CLKINVX1 U262 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U263 ( .A(n81), .Y(n122) );
  CLKINVX1 U264 ( .A(n69), .Y(n120) );
  CLKINVX1 U265 ( .A(n97), .Y(n124) );
  AO21X1 U266 ( .A0(n199), .A1(n17), .B0(n18), .Y(n196) );
  XOR2X1 U267 ( .A(n197), .B(A[14]), .Y(SUM[14]) );
  AO21X1 U268 ( .A0(n199), .A1(n31), .B0(n32), .Y(n197) );
  NAND2X1 U269 ( .A(A[1]), .B(B[1]), .Y(n116) );
  NAND2X1 U270 ( .A(A[2]), .B(B[2]), .Y(n112) );
endmodule


module conv_DW01_add_8 ( A, SUM, \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , 
        \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] SUM;
  input \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] ,
         \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n18,
         n21, n22, n23, n24, n25, n31, n32, n35, n36, n37, n38, n39, n40, n41,
         n45, n46, n47, n48, n54, n55, n56, n57, n58, n63, n64, n65, n66, n69,
         n70, n72, n73, n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n91, n92, n94, n97, n98, n99, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n120, n122, n123, n124, n125, n126, n127, n128, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201;
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

  OAI21X4 U150 ( .A0(n69), .A1(n75), .B0(n70), .Y(n64) );
  NOR2X6 U151 ( .A(A[7]), .B(B[7]), .Y(n81) );
  BUFX12 U152 ( .A(n1), .Y(n201) );
  NOR2X2 U153 ( .A(A[2]), .B(B[2]), .Y(n111) );
  XOR2X2 U154 ( .A(n22), .B(n21), .Y(SUM[15]) );
  INVX1 U155 ( .A(n108), .Y(n126) );
  NOR2X8 U156 ( .A(n86), .B(n81), .Y(n79) );
  NOR2X4 U157 ( .A(A[6]), .B(B[6]), .Y(n86) );
  NAND2X2 U158 ( .A(A[1]), .B(B[1]), .Y(n116) );
  XNOR2X2 U159 ( .A(n196), .B(A[11]), .Y(SUM[11]) );
  NOR2X2 U160 ( .A(A[8]), .B(B[8]), .Y(n74) );
  NOR2X4 U161 ( .A(n102), .B(n97), .Y(n91) );
  NOR2X4 U162 ( .A(A[5]), .B(B[5]), .Y(n97) );
  BUFX8 U163 ( .A(B[4]), .Y(n188) );
  OAI21X2 U164 ( .A0(n81), .A1(n190), .B0(n82), .Y(n80) );
  CLKINVX6 U165 ( .A(n189), .Y(n190) );
  NOR2X2 U166 ( .A(A[9]), .B(B[9]), .Y(n69) );
  NAND2X1 U167 ( .A(A[9]), .B(B[9]), .Y(n70) );
  INVX3 U168 ( .A(n105), .Y(n104) );
  OAI21X2 U169 ( .A0(n105), .A1(n77), .B0(n78), .Y(n1) );
  NOR2X2 U170 ( .A(A[3]), .B(B[3]), .Y(n108) );
  NAND2X1 U171 ( .A(A[3]), .B(B[3]), .Y(n109) );
  CLKBUFX3 U172 ( .A(n111), .Y(n191) );
  NAND2X1 U173 ( .A(A[2]), .B(B[2]), .Y(n112) );
  NAND2X1 U174 ( .A(n58), .B(A[11]), .Y(n47) );
  NAND2X2 U175 ( .A(A[0]), .B(B[0]), .Y(n118) );
  OAI21XL U176 ( .A0(n94), .A1(n86), .B0(n190), .Y(n85) );
  NAND2X1 U177 ( .A(n125), .B(n103), .Y(n10) );
  XNOR2X1 U178 ( .A(n193), .B(n4), .Y(SUM[10]) );
  AND2X2 U179 ( .A(A[6]), .B(B[6]), .Y(n189) );
  NOR2X1 U180 ( .A(n65), .B(n56), .Y(n54) );
  XOR2X2 U181 ( .A(n198), .B(A[16]), .Y(SUM[16]) );
  NOR2X2 U182 ( .A(n74), .B(n69), .Y(n63) );
  NAND2X2 U183 ( .A(A[7]), .B(B[7]), .Y(n82) );
  NOR2X2 U184 ( .A(n41), .B(n57), .Y(n40) );
  NOR2X4 U185 ( .A(n41), .B(n56), .Y(n39) );
  NAND2X2 U186 ( .A(A[11]), .B(A[12]), .Y(n41) );
  XOR2X2 U187 ( .A(n199), .B(A[14]), .Y(SUM[14]) );
  NOR2X4 U188 ( .A(A[10]), .B(B[10]), .Y(n56) );
  NAND2X2 U189 ( .A(A[8]), .B(B[8]), .Y(n75) );
  AOI21X2 U190 ( .A0(n92), .A1(n79), .B0(n80), .Y(n78) );
  OAI21X1 U191 ( .A0(n66), .A1(n56), .B0(n57), .Y(n55) );
  AO21X2 U192 ( .A0(n201), .A1(n45), .B0(n46), .Y(n200) );
  OAI21X1 U193 ( .A0(n66), .A1(n47), .B0(n48), .Y(n46) );
  AO21X1 U194 ( .A0(n201), .A1(n63), .B0(n64), .Y(n193) );
  INVXL U195 ( .A(n97), .Y(n124) );
  INVXL U196 ( .A(n81), .Y(n122) );
  NOR2X2 U197 ( .A(A[4]), .B(n188), .Y(n102) );
  NAND2XL U198 ( .A(n123), .B(n190), .Y(n8) );
  AOI21X2 U199 ( .A0(n39), .A1(n64), .B0(n40), .Y(n2) );
  NAND2X2 U200 ( .A(A[10]), .B(B[10]), .Y(n57) );
  NAND2X2 U201 ( .A(n39), .B(n63), .Y(n3) );
  OAI21X4 U202 ( .A0(n115), .A1(n118), .B0(n116), .Y(n114) );
  NOR2X2 U203 ( .A(A[1]), .B(B[1]), .Y(n115) );
  OAI21X4 U204 ( .A0(n97), .A1(n103), .B0(n98), .Y(n92) );
  NAND2X2 U205 ( .A(A[4]), .B(n188), .Y(n103) );
  AOI21X4 U206 ( .A0(n114), .A1(n106), .B0(n107), .Y(n105) );
  INVX1 U207 ( .A(n56), .Y(n58) );
  NOR2X2 U208 ( .A(n108), .B(n191), .Y(n106) );
  OAI21X2 U209 ( .A0(n108), .A1(n112), .B0(n109), .Y(n107) );
  BUFX6 U210 ( .A(n2), .Y(n192) );
  INVX1 U211 ( .A(n3), .Y(n37) );
  AO21X1 U212 ( .A0(n104), .A1(n91), .B0(n92), .Y(n195) );
  INVXL U213 ( .A(n114), .Y(n113) );
  XNOR2X1 U214 ( .A(n194), .B(n5), .Y(SUM[9]) );
  AO21X1 U215 ( .A0(n201), .A1(n72), .B0(n73), .Y(n194) );
  XNOR2XL U216 ( .A(n201), .B(n6), .Y(SUM[8]) );
  NAND2XL U217 ( .A(n72), .B(n75), .Y(n6) );
  INVXL U218 ( .A(n92), .Y(n94) );
  NAND2XL U219 ( .A(n122), .B(n82), .Y(n7) );
  XNOR2X1 U220 ( .A(n195), .B(n8), .Y(SUM[6]) );
  NAND2XL U221 ( .A(n124), .B(n98), .Y(n9) );
  NAND2XL U222 ( .A(n126), .B(n109), .Y(n11) );
  XNOR2XL U223 ( .A(n104), .B(n10), .Y(SUM[4]) );
  XOR2XL U224 ( .A(n113), .B(n12), .Y(SUM[2]) );
  NAND2XL U225 ( .A(n127), .B(n112), .Y(n12) );
  XOR2XL U226 ( .A(n13), .B(n118), .Y(SUM[1]) );
  NAND2XL U227 ( .A(n128), .B(n116), .Y(n13) );
  INVXL U228 ( .A(n115), .Y(n128) );
  NAND2BXL U229 ( .AN(n117), .B(n118), .Y(n14) );
  NOR2BXL U230 ( .AN(n91), .B(n86), .Y(n84) );
  INVXL U231 ( .A(n102), .Y(n125) );
  INVXL U232 ( .A(n75), .Y(n73) );
  INVXL U233 ( .A(n103), .Y(n101) );
  INVXL U234 ( .A(n86), .Y(n123) );
  AOI21X1 U235 ( .A0(n201), .A1(n54), .B0(n55), .Y(n196) );
  NAND2BXL U236 ( .AN(n57), .B(A[11]), .Y(n48) );
  NAND2X1 U237 ( .A(A[13]), .B(A[14]), .Y(n25) );
  INVXL U238 ( .A(A[13]), .Y(n35) );
  NOR2XL U239 ( .A(A[0]), .B(B[0]), .Y(n117) );
  CLKINVX1 U240 ( .A(n192), .Y(n38) );
  NOR2X1 U241 ( .A(n192), .B(n197), .Y(n18) );
  NAND2X1 U242 ( .A(n91), .B(n79), .Y(n77) );
  NOR2X1 U243 ( .A(n3), .B(n197), .Y(n17) );
  CLKINVX1 U244 ( .A(n64), .Y(n66) );
  CLKINVX1 U245 ( .A(n63), .Y(n65) );
  XOR2X1 U246 ( .A(n36), .B(n35), .Y(SUM[13]) );
  AOI21X1 U247 ( .A0(n201), .A1(n37), .B0(n38), .Y(n36) );
  NOR2X1 U248 ( .A(n192), .B(n25), .Y(n24) );
  NOR2X1 U249 ( .A(n192), .B(n35), .Y(n32) );
  AOI21X1 U250 ( .A0(n201), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X1 U251 ( .A(n3), .B(n25), .Y(n23) );
  NAND2X1 U252 ( .A(n120), .B(n70), .Y(n5) );
  NAND2X1 U253 ( .A(n58), .B(n57), .Y(n4) );
  XOR2X1 U254 ( .A(n99), .B(n9), .Y(SUM[5]) );
  AOI21X1 U255 ( .A0(n104), .A1(n125), .B0(n101), .Y(n99) );
  XOR2X1 U256 ( .A(n83), .B(n7), .Y(SUM[7]) );
  AOI21X1 U257 ( .A0(n104), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U258 ( .A(n65), .B(n47), .Y(n45) );
  NOR2X1 U259 ( .A(n3), .B(n35), .Y(n31) );
  OR2X1 U260 ( .A(n25), .B(n21), .Y(n197) );
  XNOR2X1 U261 ( .A(n110), .B(n11), .Y(SUM[3]) );
  OAI21XL U262 ( .A0(n113), .A1(n191), .B0(n112), .Y(n110) );
  CLKINVX1 U263 ( .A(n74), .Y(n72) );
  CLKINVX1 U264 ( .A(n191), .Y(n127) );
  CLKINVX1 U265 ( .A(n14), .Y(SUM[0]) );
  CLKINVX1 U266 ( .A(n69), .Y(n120) );
  AO21X1 U267 ( .A0(n201), .A1(n17), .B0(n18), .Y(n198) );
  AO21X1 U268 ( .A0(n201), .A1(n31), .B0(n32), .Y(n199) );
  XOR2X1 U269 ( .A(n200), .B(A[12]), .Y(SUM[12]) );
  NAND2X1 U270 ( .A(A[5]), .B(B[5]), .Y(n98) );
  CLKINVX1 U271 ( .A(A[15]), .Y(n21) );
endmodule

