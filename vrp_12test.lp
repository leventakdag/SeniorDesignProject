\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  100000 x_0_0 + 9.408840624417293 x_0_1 + 23.56845909050168 x_0_2
   + 36.62862101543863 x_0_3 + 26.24711338933324 x_0_4
   + 25.04756626514673 x_0_5 + 39.8535648272868 x_0_6
   + 25.07079123989597 x_0_7 + 9.408840624417293 x_1_0 + 100000 x_1_1
   + 15.97027467202189 x_1_2 + 27.2658276066575 x_1_3
   + 21.35852449245145 x_1_4 + 25.77918010374731 x_1_5
   + 39.07609104623269 x_1_6 + 27.06348184790293 x_1_7
   + 23.56845909050168 x_2_0 + 15.97027467202189 x_2_1 + 100000 x_2_2
   + 17.82527292998617 x_2_3 + 31.46768395844885 x_2_4
   + 40.42287989933669 x_2_5 + 51.95141916452009 x_2_6
   + 42.2528635326585 x_2_7 + 36.62862101543863 x_3_0
   + 27.2658276066575 x_3_1 + 17.82527292998617 x_3_2 + 100000 x_3_3
   + 30.14946280390282 x_3_4 + 43.87916456049645 x_3_5
   + 50.91574499538822 x_3_6 + 46.75749386956792 x_3_7
   + 26.24711338933324 x_4_0 + 21.35852449245145 x_4_1
   + 31.46768395844885 x_4_2 + 30.14946280390282 x_4_3 + 100000 x_4_4
   + 15.1774471232862 x_4_5 + 21.17133746052797 x_4_6
   + 18.60663319653808 x_4_7 + 25.04756626514673 x_5_0
   + 25.77918010374731 x_5_1 + 40.42287989933669 x_5_2
   + 43.87916456049645 x_5_3 + 15.1774471232862 x_5_4 + 100000 x_5_5
   + 15.08892691636881 x_5_6 + 3.548203875759329 x_5_7
   + 39.8535648272868 x_6_0 + 39.07609104623269 x_6_1
   + 51.95141916452009 x_6_2 + 50.91574499538822 x_6_3
   + 21.17133746052797 x_6_4 + 15.08892691636881 x_6_5 + 100000 x_6_6
   + 16.51950792185172 x_6_7 + 25.07079123989597 x_7_0
   + 27.06348184790293 x_7_1 + 42.2528635326585 x_7_2
   + 46.75749386956792 x_7_3 + 18.60663319653808 x_7_4
   + 3.548203875759329 x_7_5 + 16.51950792185172 x_7_6 + 100000 x_7_7
   + 0 u_[Lgurobi.GRBVar;@46f7f36a
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 + x_0_4 + x_0_5 + x_0_6 + x_0_7 = 1
 c1: x_1_0 + x_1_2 + x_1_3 + x_1_4 + x_1_5 + x_1_6 + x_1_7 = 1
 c1: x_2_0 + x_2_1 + x_2_3 + x_2_4 + x_2_5 + x_2_6 + x_2_7 = 1
 c1: x_3_0 + x_3_1 + x_3_2 + x_3_4 + x_3_5 + x_3_6 + x_3_7 = 1
 c1: x_4_0 + x_4_1 + x_4_2 + x_4_3 + x_4_5 + x_4_6 + x_4_7 = 1
 c1: x_5_0 + x_5_1 + x_5_2 + x_5_3 + x_5_4 + x_5_6 + x_5_7 = 1
 c1: x_6_0 + x_6_1 + x_6_2 + x_6_3 + x_6_4 + x_6_5 + x_6_7 = 1
 c1: x_7_0 + x_7_1 + x_7_2 + x_7_3 + x_7_4 + x_7_5 + x_7_6 = 1
 c1: x_1_0 + x_2_0 + x_3_0 + x_4_0 + x_5_0 + x_6_0 + x_7_0 = 1
 c1: x_0_1 + x_2_1 + x_3_1 + x_4_1 + x_5_1 + x_6_1 + x_7_1 = 1
 c1: x_0_2 + x_1_2 + x_3_2 + x_4_2 + x_5_2 + x_6_2 + x_7_2 = 1
 c1: x_0_3 + x_1_3 + x_2_3 + x_4_3 + x_5_3 + x_6_3 + x_7_3 = 1
 c1: x_0_4 + x_1_4 + x_2_4 + x_3_4 + x_5_4 + x_6_4 + x_7_4 = 1
 c1: x_0_5 + x_1_5 + x_2_5 + x_3_5 + x_4_5 + x_6_5 + x_7_5 = 1
 c1: x_0_6 + x_1_6 + x_2_6 + x_3_6 + x_4_6 + x_5_6 + x_7_6 = 1
 c1: x_0_7 + x_1_7 + x_2_7 + x_3_7 + x_4_7 + x_5_7 + x_6_7 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_1_2
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_1_3
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_1_4
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_1_5
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_1_6
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_1_7
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_2_1
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_2_3
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_2_4
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_2_5
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_2_6
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_2_7
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_3_1
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_3_2
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_3_4
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_3_5
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_3_6
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_3_7
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_4_1
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_4_2
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_4_3
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_4_5
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_4_6
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_4_7
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_5_1
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_5_2
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_5_3
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_5_4
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_5_6
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_5_7
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_6_1
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_6_2
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_6_3
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_6_4
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_6_5
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_6_7
   + u_[Lgurobi.GRBVar;@46f7f36a - u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_7_1
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_7_2
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_7_3
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_7_4
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_7_5
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 8 x_7_6
   - u_[Lgurobi.GRBVar;@46f7f36a + u_[Lgurobi.GRBVar;@46f7f36a <= 7
Bounds
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
 u_[Lgurobi.GRBVar;@46f7f36a <= 9
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_0_6 x_0_7 x_1_0 x_1_1 x_1_2 x_1_3
 x_1_4 x_1_5 x_1_6 x_1_7 x_2_0 x_2_1 x_2_2 x_2_3 x_2_4 x_2_5 x_2_6 x_2_7
 x_3_0 x_3_1 x_3_2 x_3_3 x_3_4 x_3_5 x_3_6 x_3_7 x_4_0 x_4_1 x_4_2 x_4_3
 x_4_4 x_4_5 x_4_6 x_4_7 x_5_0 x_5_1 x_5_2 x_5_3 x_5_4 x_5_5 x_5_6 x_5_7
 x_6_0 x_6_1 x_6_2 x_6_3 x_6_4 x_6_5 x_6_6 x_6_7 x_7_0 x_7_1 x_7_2 x_7_3
 x_7_4 x_7_5 x_7_6 x_7_7
Generals
 u_[Lgurobi.GRBVar;@46f7f36a u_[Lgurobi.GRBVar;@46f7f36a
 u_[Lgurobi.GRBVar;@46f7f36a u_[Lgurobi.GRBVar;@46f7f36a
 u_[Lgurobi.GRBVar;@46f7f36a u_[Lgurobi.GRBVar;@46f7f36a
 u_[Lgurobi.GRBVar;@46f7f36a u_[Lgurobi.GRBVar;@46f7f36a
End
