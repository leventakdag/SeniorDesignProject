\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1000 x_0_0 + 33 x_0_1 + 39 x_0_2 + 43 x_0_3 + 42 x_0_4 + 40 x_0_5
   + 41 x_0_6 + 38 x_0_7 + 42 x_0_8 + 43 x_0_9 + 31 x_1_0 + 1000 x_1_1
   + 9 x_1_2 + 13 x_1_3 + 21 x_1_4 + 16 x_1_5 + 11 x_1_6 + 17 x_1_7
   + 12 x_1_8 + 13 x_1_9 + 40 x_2_0 + 11 x_2_1 + 1000 x_2_2 + 8 x_2_3
   + 14 x_2_4 + 8 x_2_5 + 4 x_2_6 + 10 x_2_7 + 9 x_2_8 + 10 x_2_9
   + 40 x_3_0 + 12 x_3_1 + 7 x_3_2 + 1000 x_3_3 + 16 x_3_4 + 11 x_3_5
   + 2 x_3_6 + 12 x_3_7 + 10 x_3_8 + 10 x_3_9 + 40 x_4_0 + 22 x_4_1
   + 18 x_4_2 + 18 x_4_3 + 1000 x_4_4 + 8 x_4_5 + 15 x_4_6 + x_4_7
   + 20 x_4_8 + 20 x_4_9 + 39 x_5_0 + 15 x_5_1 + 11 x_5_2 + 11 x_5_3
   + 9 x_5_4 + 1000 x_5_5 + 8 x_5_6 + 5 x_5_7 + 13 x_5_8 + 13 x_5_9
   + 40 x_6_0 + 12 x_6_1 + 7 x_6_2 + 3 x_6_3 + 15 x_6_4 + 9 x_6_5
   + 1000 x_6_6 + 11 x_6_7 + 9 x_6_8 + 10 x_6_9 + 36 x_7_0 + 18 x_7_1
   + 14 x_7_2 + 14 x_7_3 + 4 x_7_4 + 4 x_7_5 + 11 x_7_6 + 1000 x_7_7
   + 16 x_7_8 + 16 x_7_9 + 43 x_8_0 + 15 x_8_1 + 10 x_8_2 + 15 x_8_3
   + 23 x_8_4 + 17 x_8_5 + 13 x_8_6 + 19 x_8_7 + 1000 x_8_8 + 7 x_8_9
   + 42 x_9_0 + 14 x_9_1 + 9 x_9_2 + 14 x_9_3 + 22 x_9_4 + 16 x_9_5
   + 12 x_9_6 + 18 x_9_7 + 7 x_9_8 + 1000 x_9_9
   + 0 u_[Lgurobi.GRBVar;@2e0fa5d3
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 + x_0_4 + x_0_5 + x_0_6 + x_0_7 + x_0_8 + x_0_9
   = 1
 c1: x_1_0 + x_1_2 + x_1_3 + x_1_4 + x_1_5 + x_1_6 + x_1_7 + x_1_8 + x_1_9
   = 1
 c1: x_2_0 + x_2_1 + x_2_3 + x_2_4 + x_2_5 + x_2_6 + x_2_7 + x_2_8 + x_2_9
   = 1
 c1: x_3_0 + x_3_1 + x_3_2 + x_3_4 + x_3_5 + x_3_6 + x_3_7 + x_3_8 + x_3_9
   = 1
 c1: x_4_0 + x_4_1 + x_4_2 + x_4_3 + x_4_5 + x_4_6 + x_4_7 + x_4_8 + x_4_9
   = 1
 c1: x_5_0 + x_5_1 + x_5_2 + x_5_3 + x_5_4 + x_5_6 + x_5_7 + x_5_8 + x_5_9
   = 1
 c1: x_6_0 + x_6_1 + x_6_2 + x_6_3 + x_6_4 + x_6_5 + x_6_7 + x_6_8 + x_6_9
   = 1
 c1: x_7_0 + x_7_1 + x_7_2 + x_7_3 + x_7_4 + x_7_5 + x_7_6 + x_7_8 + x_7_9
   = 1
 c1: x_8_0 + x_8_1 + x_8_2 + x_8_3 + x_8_4 + x_8_5 + x_8_6 + x_8_7 + x_8_9
   = 1
 c1: x_9_0 + x_9_1 + x_9_2 + x_9_3 + x_9_4 + x_9_5 + x_9_6 + x_9_7 + x_9_8
   = 1
 c1: x_1_0 + x_2_0 + x_3_0 + x_4_0 + x_5_0 + x_6_0 + x_7_0 + x_8_0 + x_9_0
   = 1
 c1: x_0_1 + x_2_1 + x_3_1 + x_4_1 + x_5_1 + x_6_1 + x_7_1 + x_8_1 + x_9_1
   = 1
 c1: x_0_2 + x_1_2 + x_3_2 + x_4_2 + x_5_2 + x_6_2 + x_7_2 + x_8_2 + x_9_2
   = 1
 c1: x_0_3 + x_1_3 + x_2_3 + x_4_3 + x_5_3 + x_6_3 + x_7_3 + x_8_3 + x_9_3
   = 1
 c1: x_0_4 + x_1_4 + x_2_4 + x_3_4 + x_5_4 + x_6_4 + x_7_4 + x_8_4 + x_9_4
   = 1
 c1: x_0_5 + x_1_5 + x_2_5 + x_3_5 + x_4_5 + x_6_5 + x_7_5 + x_8_5 + x_9_5
   = 1
 c1: x_0_6 + x_1_6 + x_2_6 + x_3_6 + x_4_6 + x_5_6 + x_7_6 + x_8_6 + x_9_6
   = 1
 c1: x_0_7 + x_1_7 + x_2_7 + x_3_7 + x_4_7 + x_5_7 + x_6_7 + x_8_7 + x_9_7
   = 1
 c1: x_0_8 + x_1_8 + x_2_8 + x_3_8 + x_4_8 + x_5_8 + x_6_8 + x_7_8 + x_9_8
   = 1
 c1: x_0_9 + x_1_9 + x_2_9 + x_3_9 + x_4_9 + x_5_9 + x_6_9 + x_7_9 + x_8_9
   = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_2
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_3
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_4
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_5
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_6
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_7
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_1_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_3
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_4
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_5
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_6
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_7
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_2_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_4
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_5
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_6
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_7
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_3_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_3
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_5
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_6
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_7
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_4_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_3
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_4
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_6
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_7
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_5_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_3
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_4
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_5
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_7
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_6_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_3
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_4
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_5
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_6
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_8
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_7_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_3
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_4
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_5
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_6
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_7
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_8_9
   + u_[Lgurobi.GRBVar;@2e0fa5d3 - u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_1
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_2
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_3
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_4
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_5
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_6
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_7
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 10 x_9_8
   - u_[Lgurobi.GRBVar;@2e0fa5d3 + u_[Lgurobi.GRBVar;@2e0fa5d3 <= 9
Bounds
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
 u_[Lgurobi.GRBVar;@2e0fa5d3 <= 11
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_0_6 x_0_7 x_0_8 x_0_9 x_1_0 x_1_1
 x_1_2 x_1_3 x_1_4 x_1_5 x_1_6 x_1_7 x_1_8 x_1_9 x_2_0 x_2_1 x_2_2 x_2_3
 x_2_4 x_2_5 x_2_6 x_2_7 x_2_8 x_2_9 x_3_0 x_3_1 x_3_2 x_3_3 x_3_4 x_3_5
 x_3_6 x_3_7 x_3_8 x_3_9 x_4_0 x_4_1 x_4_2 x_4_3 x_4_4 x_4_5 x_4_6 x_4_7
 x_4_8 x_4_9 x_5_0 x_5_1 x_5_2 x_5_3 x_5_4 x_5_5 x_5_6 x_5_7 x_5_8 x_5_9
 x_6_0 x_6_1 x_6_2 x_6_3 x_6_4 x_6_5 x_6_6 x_6_7 x_6_8 x_6_9 x_7_0 x_7_1
 x_7_2 x_7_3 x_7_4 x_7_5 x_7_6 x_7_7 x_7_8 x_7_9 x_8_0 x_8_1 x_8_2 x_8_3
 x_8_4 x_8_5 x_8_6 x_8_7 x_8_8 x_8_9 x_9_0 x_9_1 x_9_2 x_9_3 x_9_4 x_9_5
 x_9_6 x_9_7 x_9_8 x_9_9
Generals
 u_[Lgurobi.GRBVar;@2e0fa5d3 u_[Lgurobi.GRBVar;@2e0fa5d3
 u_[Lgurobi.GRBVar;@2e0fa5d3 u_[Lgurobi.GRBVar;@2e0fa5d3
 u_[Lgurobi.GRBVar;@2e0fa5d3 u_[Lgurobi.GRBVar;@2e0fa5d3
 u_[Lgurobi.GRBVar;@2e0fa5d3 u_[Lgurobi.GRBVar;@2e0fa5d3
 u_[Lgurobi.GRBVar;@2e0fa5d3 u_[Lgurobi.GRBVar;@2e0fa5d3
End
