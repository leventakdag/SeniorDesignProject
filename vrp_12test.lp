\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1e+06 x_0_0 + 19.4 x_0_1 + 20.9 x_0_2 + 23.3 x_0_3 + 21.5 x_0_4
   + 19.9 x_0_5 + 16.6 x_0_6 + 19.4 x_1_0 + 1e+06 x_1_1 + 6.3 x_1_2
   + 9.1 x_1_3 + 7 x_1_4 + 5.4 x_1_5 + 7 x_1_6 + 20.9 x_2_0 + 6.3 x_2_1
   + 1e+06 x_2_2 + 1.4 x_2_3 + 0.7 x_2_4 + 2.8 x_2_5 + 4.5 x_2_6
   + 23.3 x_3_0 + 9.1 x_3_1 + 1.4 x_3_2 + 1e+06 x_3_3 + 1.9 x_3_4 + 4 x_3_5
   + 6.8 x_3_6 + 21.5 x_4_0 + 7 x_4_1 + 0.7 x_4_2 + 1.9 x_4_3 + 1e+06 x_4_4
   + 2.9 x_4_5 + 5.2 x_4_6 + 19.9 x_5_0 + 5.4 x_5_1 + 2.8 x_5_2 + 4 x_5_3
   + 2.9 x_5_4 + 1e+06 x_5_5 + 3.6 x_5_6 + 16.6 x_6_0 + 7 x_6_1 + 4.5 x_6_2
   + 6.8 x_6_3 + 5.2 x_6_4 + 3.6 x_6_5 + 1e+06 x_6_6
   + 0 u_[Lgurobi.GRBVar;@65b3120a
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 + x_0_4 + x_0_5 + x_0_6 = 1
 c1: x_1_0 + x_1_2 + x_1_3 + x_1_4 + x_1_5 + x_1_6 = 1
 c1: x_2_0 + x_2_1 + x_2_3 + x_2_4 + x_2_5 + x_2_6 = 1
 c1: x_3_0 + x_3_1 + x_3_2 + x_3_4 + x_3_5 + x_3_6 = 1
 c1: x_4_0 + x_4_1 + x_4_2 + x_4_3 + x_4_5 + x_4_6 = 1
 c1: x_5_0 + x_5_1 + x_5_2 + x_5_3 + x_5_4 + x_5_6 = 1
 c1: x_6_0 + x_6_1 + x_6_2 + x_6_3 + x_6_4 + x_6_5 = 1
 c1: x_1_0 + x_2_0 + x_3_0 + x_4_0 + x_5_0 + x_6_0 = 1
 c1: x_0_1 + x_2_1 + x_3_1 + x_4_1 + x_5_1 + x_6_1 = 1
 c1: x_0_2 + x_1_2 + x_3_2 + x_4_2 + x_5_2 + x_6_2 = 1
 c1: x_0_3 + x_1_3 + x_2_3 + x_4_3 + x_5_3 + x_6_3 = 1
 c1: x_0_4 + x_1_4 + x_2_4 + x_3_4 + x_5_4 + x_6_4 = 1
 c1: x_0_5 + x_1_5 + x_2_5 + x_3_5 + x_4_5 + x_6_5 = 1
 c1: x_0_6 + x_1_6 + x_2_6 + x_3_6 + x_4_6 + x_5_6 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_2
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_3
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_4
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_5
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_6
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_1
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_3
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_4
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_5
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_6
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_1
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_2
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_4
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_5
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_6
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_1
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_2
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_3
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_5
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_6
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_1
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_2
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_3
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_4
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_6
   + u_[Lgurobi.GRBVar;@65b3120a - u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_1
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_2
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_3
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_4
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_5
   - u_[Lgurobi.GRBVar;@65b3120a + u_[Lgurobi.GRBVar;@65b3120a <= 6
Bounds
 u_[Lgurobi.GRBVar;@65b3120a <= 8
 u_[Lgurobi.GRBVar;@65b3120a <= 8
 u_[Lgurobi.GRBVar;@65b3120a <= 8
 u_[Lgurobi.GRBVar;@65b3120a <= 8
 u_[Lgurobi.GRBVar;@65b3120a <= 8
 u_[Lgurobi.GRBVar;@65b3120a <= 8
 u_[Lgurobi.GRBVar;@65b3120a <= 8
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_0_6 x_1_0 x_1_1 x_1_2 x_1_3 x_1_4
 x_1_5 x_1_6 x_2_0 x_2_1 x_2_2 x_2_3 x_2_4 x_2_5 x_2_6 x_3_0 x_3_1 x_3_2
 x_3_3 x_3_4 x_3_5 x_3_6 x_4_0 x_4_1 x_4_2 x_4_3 x_4_4 x_4_5 x_4_6 x_5_0
 x_5_1 x_5_2 x_5_3 x_5_4 x_5_5 x_5_6 x_6_0 x_6_1 x_6_2 x_6_3 x_6_4 x_6_5
 x_6_6
Generals
 u_[Lgurobi.GRBVar;@65b3120a u_[Lgurobi.GRBVar;@65b3120a
 u_[Lgurobi.GRBVar;@65b3120a u_[Lgurobi.GRBVar;@65b3120a
 u_[Lgurobi.GRBVar;@65b3120a u_[Lgurobi.GRBVar;@65b3120a
 u_[Lgurobi.GRBVar;@65b3120a
End
