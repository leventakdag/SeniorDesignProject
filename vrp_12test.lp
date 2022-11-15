\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  100000 x_0_0 + 25.05644122839453 x_0_1 + 33.29385745262441 x_0_2
   + 24.99323413681212 x_0_3 + 30.66689542790766 x_0_4
   + 25.05644122839453 x_1_0 + 100000 x_1_1 + 10.65000887396604 x_1_2
   + 9.112504050244368 x_1_3 + 21.83239805325798 x_1_4
   + 33.29385745262441 x_2_0 + 10.65000887396604 x_2_1 + 100000 x_2_2
   + 9.130229957262976 x_2_3 + 17.44763513006165 x_2_4
   + 24.99323413681212 x_3_0 + 9.112504050244368 x_3_1
   + 9.130229957262976 x_3_2 + 100000 x_3_3 + 12.73204114154437 x_3_4
   + 30.66689542790766 x_4_0 + 21.83239805325798 x_4_1
   + 17.44763513006165 x_4_2 + 12.73204114154437 x_4_3 + 100000 x_4_4
   + 0 u_[Lgurobi.GRBVar;@2b71fc7e
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
   + u_[Lgurobi.GRBVar;@2b71fc7e - u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_1_3
   + u_[Lgurobi.GRBVar;@2b71fc7e - u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_1_4
   + u_[Lgurobi.GRBVar;@2b71fc7e - u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_2_1
   - u_[Lgurobi.GRBVar;@2b71fc7e + u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_2_3
   + u_[Lgurobi.GRBVar;@2b71fc7e - u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_2_4
   + u_[Lgurobi.GRBVar;@2b71fc7e - u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_3_1
   - u_[Lgurobi.GRBVar;@2b71fc7e + u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_3_2
   - u_[Lgurobi.GRBVar;@2b71fc7e + u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_3_4
   + u_[Lgurobi.GRBVar;@2b71fc7e - u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_4_1
   - u_[Lgurobi.GRBVar;@2b71fc7e + u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_4_2
   - u_[Lgurobi.GRBVar;@2b71fc7e + u_[Lgurobi.GRBVar;@2b71fc7e <= 4
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 5 x_4_3
   - u_[Lgurobi.GRBVar;@2b71fc7e + u_[Lgurobi.GRBVar;@2b71fc7e <= 4
Bounds
 u_[Lgurobi.GRBVar;@2b71fc7e <= 6
 u_[Lgurobi.GRBVar;@2b71fc7e <= 6
 u_[Lgurobi.GRBVar;@2b71fc7e <= 6
 u_[Lgurobi.GRBVar;@2b71fc7e <= 6
 u_[Lgurobi.GRBVar;@2b71fc7e <= 6
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_1_0 x_1_1 x_1_2 x_1_3 x_1_4 x_2_0 x_2_1
 x_2_2 x_2_3 x_2_4 x_3_0 x_3_1 x_3_2 x_3_3 x_3_4 x_4_0 x_4_1 x_4_2 x_4_3
 x_4_4
Generals
 u_[Lgurobi.GRBVar;@2b71fc7e u_[Lgurobi.GRBVar;@2b71fc7e
 u_[Lgurobi.GRBVar;@2b71fc7e u_[Lgurobi.GRBVar;@2b71fc7e
 u_[Lgurobi.GRBVar;@2b71fc7e
End
