\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1000 x_0_0 + 42 x_0_1 + 38 x_0_2 + 40 x_1_0 + 1000 x_1_1 + x_1_2
   + 36 x_2_0 + 4 x_2_1 + 1000 x_2_2 + 0 u_[Lgurobi.GRBVar;@21b8d17c
Subject To
 c1: x_0_1 + x_0_2 = 1
 c1: x_1_0 + x_1_2 = 1
 c1: x_2_0 + x_2_1 = 1
 c1: x_1_0 + x_2_0 = 1
 c1: x_0_1 + x_2_1 = 1
 c1: x_0_2 + x_1_2 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 3 x_1_2
   + u_[Lgurobi.GRBVar;@21b8d17c - u_[Lgurobi.GRBVar;@21b8d17c <= 2
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 3 x_2_1
   - u_[Lgurobi.GRBVar;@21b8d17c + u_[Lgurobi.GRBVar;@21b8d17c <= 2
Bounds
 u_[Lgurobi.GRBVar;@21b8d17c <= 4
 u_[Lgurobi.GRBVar;@21b8d17c <= 4
 u_[Lgurobi.GRBVar;@21b8d17c <= 4
Binaries
 x_0_0 x_0_1 x_0_2 x_1_0 x_1_1 x_1_2 x_2_0 x_2_1 x_2_2
Generals
 u_[Lgurobi.GRBVar;@21b8d17c u_[Lgurobi.GRBVar;@21b8d17c
 u_[Lgurobi.GRBVar;@21b8d17c
End
