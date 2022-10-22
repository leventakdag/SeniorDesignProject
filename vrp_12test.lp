\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1000 x_0_0 + 46 x_0_1 + 44 x_0_2 + 45 x_0_3 + 42 x_0_4 + 54 x_0_5
   + 40 x_0_6 + 44 x_0_7 + 41 x_0_8 + 45 x_1_0 + 1000 x_1_1 + 4 x_1_2
   + 3 x_1_3 + 6 x_1_4 + 13 x_1_5 + 11 x_1_6 + 3 x_1_7 + 6 x_1_8 + 43 x_2_0
   + 4 x_2_1 + 1000 x_2_2 + 5 x_2_3 + 3 x_2_4 + 16 x_2_5 + 8 x_2_6
   + 2 x_2_7 + 5 x_2_8 + 44 x_3_0 + 3 x_3_1 + 5 x_3_2 + 1000 x_3_3
   + 7 x_3_4 + 13 x_3_5 + 12 x_3_6 + 5 x_3_7 + 5 x_3_8 + 40 x_4_0 + 7 x_4_1
   + 4 x_4_2 + 7 x_4_3 + 1000 x_4_4 + 19 x_4_5 + 5 x_4_6 + 4 x_4_7
   + 6 x_4_8 + 55 x_5_0 + 14 x_5_1 + 18 x_5_2 + 14 x_5_3 + 20 x_5_4
   + 1000 x_5_5 + 22 x_5_6 + 17 x_5_7 + 16 x_5_8 + 38 x_6_0 + 10 x_6_1
   + 8 x_6_2 + 10 x_6_3 + 7 x_6_4 + 21 x_6_5 + 1000 x_6_6 + 8 x_6_7
   + 8 x_6_8 + 43 x_7_0 + 3 x_7_1 + 2 x_7_2 + 4 x_7_3 + 4 x_7_4 + 16 x_7_5
   + 8 x_7_6 + 1000 x_7_7 + 5 x_7_8 + 41 x_8_0 + 5 x_8_1 + 4 x_8_2
   + 4 x_8_3 + 6 x_8_4 + 15 x_8_5 + 8 x_8_6 + 3 x_8_7 + 1000 x_8_8
   + 0 u_[Lgurobi.GRBVar;@1a86f2f1
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 + x_0_4 + x_0_5 + x_0_6 + x_0_7 + x_0_8 = 1
 c1: x_1_0 + x_1_2 + x_1_3 + x_1_4 + x_1_5 + x_1_6 + x_1_7 + x_1_8 = 1
 c1: x_2_0 + x_2_1 + x_2_3 + x_2_4 + x_2_5 + x_2_6 + x_2_7 + x_2_8 = 1
 c1: x_3_0 + x_3_1 + x_3_2 + x_3_4 + x_3_5 + x_3_6 + x_3_7 + x_3_8 = 1
 c1: x_4_0 + x_4_1 + x_4_2 + x_4_3 + x_4_5 + x_4_6 + x_4_7 + x_4_8 = 1
 c1: x_5_0 + x_5_1 + x_5_2 + x_5_3 + x_5_4 + x_5_6 + x_5_7 + x_5_8 = 1
 c1: x_6_0 + x_6_1 + x_6_2 + x_6_3 + x_6_4 + x_6_5 + x_6_7 + x_6_8 = 1
 c1: x_7_0 + x_7_1 + x_7_2 + x_7_3 + x_7_4 + x_7_5 + x_7_6 + x_7_8 = 1
 c1: x_8_0 + x_8_1 + x_8_2 + x_8_3 + x_8_4 + x_8_5 + x_8_6 + x_8_7 = 1
 c1: x_1_0 + x_2_0 + x_3_0 + x_4_0 + x_5_0 + x_6_0 + x_7_0 + x_8_0 = 1
 c1: x_0_1 + x_2_1 + x_3_1 + x_4_1 + x_5_1 + x_6_1 + x_7_1 + x_8_1 = 1
 c1: x_0_2 + x_1_2 + x_3_2 + x_4_2 + x_5_2 + x_6_2 + x_7_2 + x_8_2 = 1
 c1: x_0_3 + x_1_3 + x_2_3 + x_4_3 + x_5_3 + x_6_3 + x_7_3 + x_8_3 = 1
 c1: x_0_4 + x_1_4 + x_2_4 + x_3_4 + x_5_4 + x_6_4 + x_7_4 + x_8_4 = 1
 c1: x_0_5 + x_1_5 + x_2_5 + x_3_5 + x_4_5 + x_6_5 + x_7_5 + x_8_5 = 1
 c1: x_0_6 + x_1_6 + x_2_6 + x_3_6 + x_4_6 + x_5_6 + x_7_6 + x_8_6 = 1
 c1: x_0_7 + x_1_7 + x_2_7 + x_3_7 + x_4_7 + x_5_7 + x_6_7 + x_8_7 = 1
 c1: x_0_8 + x_1_8 + x_2_8 + x_3_8 + x_4_8 + x_5_8 + x_6_8 + x_7_8 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_2
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_3
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_4
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_5
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_6
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_7
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_1_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_3
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_4
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_5
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_6
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_7
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_2_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_2
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_4
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_5
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_6
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_7
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_3_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_2
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_3
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_5
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_6
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_7
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_4_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_2
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_3
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_4
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_6
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_7
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_5_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_2
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_3
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_4
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_5
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_7
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_6_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_2
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_3
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_4
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_5
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_6
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_7_8
   + u_[Lgurobi.GRBVar;@1a86f2f1 - u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_1
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_2
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_3
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_4
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_5
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_6
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 9 x_8_7
   - u_[Lgurobi.GRBVar;@1a86f2f1 + u_[Lgurobi.GRBVar;@1a86f2f1 <= 8
Bounds
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
 u_[Lgurobi.GRBVar;@1a86f2f1 <= 10
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_0_6 x_0_7 x_0_8 x_1_0 x_1_1 x_1_2
 x_1_3 x_1_4 x_1_5 x_1_6 x_1_7 x_1_8 x_2_0 x_2_1 x_2_2 x_2_3 x_2_4 x_2_5
 x_2_6 x_2_7 x_2_8 x_3_0 x_3_1 x_3_2 x_3_3 x_3_4 x_3_5 x_3_6 x_3_7 x_3_8
 x_4_0 x_4_1 x_4_2 x_4_3 x_4_4 x_4_5 x_4_6 x_4_7 x_4_8 x_5_0 x_5_1 x_5_2
 x_5_3 x_5_4 x_5_5 x_5_6 x_5_7 x_5_8 x_6_0 x_6_1 x_6_2 x_6_3 x_6_4 x_6_5
 x_6_6 x_6_7 x_6_8 x_7_0 x_7_1 x_7_2 x_7_3 x_7_4 x_7_5 x_7_6 x_7_7 x_7_8
 x_8_0 x_8_1 x_8_2 x_8_3 x_8_4 x_8_5 x_8_6 x_8_7 x_8_8
Generals
 u_[Lgurobi.GRBVar;@1a86f2f1 u_[Lgurobi.GRBVar;@1a86f2f1
 u_[Lgurobi.GRBVar;@1a86f2f1 u_[Lgurobi.GRBVar;@1a86f2f1
 u_[Lgurobi.GRBVar;@1a86f2f1 u_[Lgurobi.GRBVar;@1a86f2f1
 u_[Lgurobi.GRBVar;@1a86f2f1 u_[Lgurobi.GRBVar;@1a86f2f1
 u_[Lgurobi.GRBVar;@1a86f2f1
End
