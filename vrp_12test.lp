\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1000 x_0_0 + 41 x_0_1 + 41 x_0_2 + 33 x_0_3 + 41 x_1_0 + 1000 x_1_1
   + 13 x_1_2 + 36 x_1_3 + 41 x_2_0 + 12 x_2_1 + 1000 x_2_2 + 30 x_2_3
   + 31 x_3_0 + 35 x_3_1 + 28 x_3_2 + 1000 x_3_3
   + 0 u_[Lgurobi.GRBVar;@7cd84586
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 = 1
 c1: x_1_0 + x_1_2 + x_1_3 = 1
 c1: x_2_0 + x_2_1 + x_2_3 = 1
 c1: x_3_0 + x_3_1 + x_3_2 = 1
 c1: x_1_0 + x_2_0 + x_3_0 = 1
 c1: x_0_1 + x_2_1 + x_3_1 = 1
 c1: x_0_2 + x_1_2 + x_3_2 = 1
 c1: x_0_3 + x_1_3 + x_2_3 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 4 x_1_2
   + u_[Lgurobi.GRBVar;@7cd84586 - u_[Lgurobi.GRBVar;@7cd84586 <= 3
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 4 x_1_3
   + u_[Lgurobi.GRBVar;@7cd84586 - u_[Lgurobi.GRBVar;@7cd84586 <= 3
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 4 x_2_1
   - u_[Lgurobi.GRBVar;@7cd84586 + u_[Lgurobi.GRBVar;@7cd84586 <= 3
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 4 x_2_3
   + u_[Lgurobi.GRBVar;@7cd84586 - u_[Lgurobi.GRBVar;@7cd84586 <= 3
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 4 x_3_1
   - u_[Lgurobi.GRBVar;@7cd84586 + u_[Lgurobi.GRBVar;@7cd84586 <= 3
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 4 x_3_2
   - u_[Lgurobi.GRBVar;@7cd84586 + u_[Lgurobi.GRBVar;@7cd84586 <= 3
Bounds
 u_[Lgurobi.GRBVar;@7cd84586 <= 5
 u_[Lgurobi.GRBVar;@7cd84586 <= 5
 u_[Lgurobi.GRBVar;@7cd84586 <= 5
 u_[Lgurobi.GRBVar;@7cd84586 <= 5
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_1_0 x_1_1 x_1_2 x_1_3 x_2_0 x_2_1 x_2_2 x_2_3
 x_3_0 x_3_1 x_3_2 x_3_3
Generals
 u_[Lgurobi.GRBVar;@7cd84586 u_[Lgurobi.GRBVar;@7cd84586
 u_[Lgurobi.GRBVar;@7cd84586 u_[Lgurobi.GRBVar;@7cd84586
End
