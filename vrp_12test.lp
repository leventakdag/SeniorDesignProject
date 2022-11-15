\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0 x_0_0 + 14.43433695860959 x_0_1 + 25.88948066799215 x_0_2
   + 14.43433695860959 x_1_0 + 0 x_1_1 + 11.66063954270344 x_1_2
   + 25.88948066799215 x_2_0 + 11.66063954270344 x_2_1 + 0 x_2_2
   + 0 u_[Lgurobi.GRBVar;@7aec35a
Subject To
 c1: x_0_1 + x_0_2 = 1
 c1: x_1_0 + x_1_2 = 1
 c1: x_2_0 + x_2_1 = 1
 c1: x_1_0 + x_2_0 = 1
 c1: x_0_1 + x_2_1 = 1
 c1: x_0_2 + x_1_2 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 3 x_1_2
   + u_[Lgurobi.GRBVar;@7aec35a - u_[Lgurobi.GRBVar;@7aec35a <= 2
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 3 x_2_1
   - u_[Lgurobi.GRBVar;@7aec35a + u_[Lgurobi.GRBVar;@7aec35a <= 2
Bounds
 u_[Lgurobi.GRBVar;@7aec35a <= 4
 u_[Lgurobi.GRBVar;@7aec35a <= 4
 u_[Lgurobi.GRBVar;@7aec35a <= 4
Binaries
 x_0_0 x_0_1 x_0_2 x_1_0 x_1_1 x_1_2 x_2_0 x_2_1 x_2_2
Generals
 u_[Lgurobi.GRBVar;@7aec35a u_[Lgurobi.GRBVar;@7aec35a
 u_[Lgurobi.GRBVar;@7aec35a
End
