\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1000 x_0_0 + 40 x_0_1 + 33 x_0_2 + 41 x_0_3 + 39 x_0_4 + 39 x_1_0
   + 1000 x_1_1 + 12 x_1_2 + 33 x_1_3 + 32 x_1_4 + 31 x_2_0 + 18 x_2_1
   + 1000 x_2_2 + 28 x_2_3 + 29 x_2_4 + 41 x_3_0 + 30 x_3_1 + 30 x_3_2
   + 1000 x_3_3 + 4 x_3_4 + 38 x_4_0 + 29 x_4_1 + 29 x_4_2 + 3 x_4_3
   + 1000 x_4_4 + 0 u_[Lgurobi.GRBVar;@728938a9
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 + x_0_4 = 1
 c1: x_1_0 + x_1_2 + x_1_3 + x_1_4 = 1
 c1: x_2_0 + x_2_1 + x_2_3 + x_2_4 = 1
 c1: x_3_0 + x_3_1 + x_3_2 + x_3_4 = 1
 c1: x_4_0 + x_4_1 + x_4_2 + x_4_3 = 1
 c1: x_1_0 + x_2_0 + x_3_0 + x_4_0 = 1
 c1: x_0_1 + x_2_1 + x_3_1 + x_4_1 = 1
 c1: x_0_2 + x_1_2 + x_3_2 + x_4_2 = 1
 c1: x_0_3 + x_1_3 + x_2_3 + x_4_3 = 1
 c1: x_0_4 + x_1_4 + x_2_4 + x_3_4 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_1_2
   + u_[Lgurobi.GRBVar;@728938a9 - u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_1_3
   + u_[Lgurobi.GRBVar;@728938a9 - u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_1_4
   + u_[Lgurobi.GRBVar;@728938a9 - u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_2_1
   - u_[Lgurobi.GRBVar;@728938a9 + u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_2_3
   + u_[Lgurobi.GRBVar;@728938a9 - u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_2_4
   + u_[Lgurobi.GRBVar;@728938a9 - u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_3_1
   - u_[Lgurobi.GRBVar;@728938a9 + u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_3_2
   - u_[Lgurobi.GRBVar;@728938a9 + u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_3_4
   + u_[Lgurobi.GRBVar;@728938a9 - u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_4_1
   - u_[Lgurobi.GRBVar;@728938a9 + u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_4_2
   - u_[Lgurobi.GRBVar;@728938a9 + u_[Lgurobi.GRBVar;@728938a9 <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_4_3
   - u_[Lgurobi.GRBVar;@728938a9 + u_[Lgurobi.GRBVar;@728938a9 <= 4
Bounds
 u_[Lgurobi.GRBVar;@728938a9 <= 6
 u_[Lgurobi.GRBVar;@728938a9 <= 6
 u_[Lgurobi.GRBVar;@728938a9 <= 6
 u_[Lgurobi.GRBVar;@728938a9 <= 6
 u_[Lgurobi.GRBVar;@728938a9 <= 6
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_1_0 x_1_1 x_1_2 x_1_3 x_1_4 x_2_0 x_2_1
 x_2_2 x_2_3 x_2_4 x_3_0 x_3_1 x_3_2 x_3_3 x_3_4 x_4_0 x_4_1 x_4_2 x_4_3
 x_4_4
Generals
 u_[Lgurobi.GRBVar;@728938a9 u_[Lgurobi.GRBVar;@728938a9
 u_[Lgurobi.GRBVar;@728938a9 u_[Lgurobi.GRBVar;@728938a9
 u_[Lgurobi.GRBVar;@728938a9
End
