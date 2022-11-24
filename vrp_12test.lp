\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  100000 x_0_0 + 7.769455250725166 x_0_1 + 40.57547197617775 x_0_2
   + 40.94902988992833 x_0_3 + 51.65387856513576 x_0_4
   + 36.43339302962259 x_0_5 + 7.769455250725166 x_1_0 + 100000 x_1_1
   + 33.63517062848756 x_1_2 + 35.55015302743433 x_1_3
   + 48.52821195258677 x_1_4 + 43.28104407709567 x_1_5
   + 40.57547197617775 x_2_0 + 33.63517062848756 x_2_1 + 100000 x_2_2
   + 12.61959278498674 x_2_3 + 31.89972237439142 x_2_4
   + 68.30779185795815 x_2_5 + 40.94902988992833 x_3_0
   + 35.55015302743433 x_3_1 + 12.61959278498674 x_3_2 + 100000 x_3_3
   + 19.44943095350667 x_3_4 + 62.30698566794685 x_3_5
   + 51.65387856513576 x_4_0 + 48.52821195258677 x_4_1
   + 31.89972237439142 x_4_2 + 19.44943095350667 x_4_3 + 100000 x_4_4
   + 61.51247710640637 x_4_5 + 36.43339302962259 x_5_0
   + 43.28104407709567 x_5_1 + 68.30779185795815 x_5_2
   + 62.30698566794685 x_5_3 + 61.51247710640637 x_5_4 + 100000 x_5_5
   + 0 u_[Lgurobi.GRBVar;@30dae81
Subject To
 c1: x_0_1 + x_0_2 + x_0_3 + x_0_4 + x_0_5 = 1
 c1: x_1_0 + x_1_2 + x_1_3 + x_1_4 + x_1_5 = 1
 c1: x_2_0 + x_2_1 + x_2_3 + x_2_4 + x_2_5 = 1
 c1: x_3_0 + x_3_1 + x_3_2 + x_3_4 + x_3_5 = 1
 c1: x_4_0 + x_4_1 + x_4_2 + x_4_3 + x_4_5 = 1
 c1: x_5_0 + x_5_1 + x_5_2 + x_5_3 + x_5_4 = 1
 c1: x_1_0 + x_2_0 + x_3_0 + x_4_0 + x_5_0 = 1
 c1: x_0_1 + x_2_1 + x_3_1 + x_4_1 + x_5_1 = 1
 c1: x_0_2 + x_1_2 + x_3_2 + x_4_2 + x_5_2 = 1
 c1: x_0_3 + x_1_3 + x_2_3 + x_4_3 + x_5_3 = 1
 c1: x_0_4 + x_1_4 + x_2_4 + x_3_4 + x_5_4 = 1
 c1: x_0_5 + x_1_5 + x_2_5 + x_3_5 + x_4_5 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_2
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_3
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_4
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_5
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_1
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_3
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_4
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_5
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_1
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_2
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_4
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_5
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_1
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_2
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_3
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_5
   + u_[Lgurobi.GRBVar;@30dae81 - u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_1
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_2
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_3
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_4
   - u_[Lgurobi.GRBVar;@30dae81 + u_[Lgurobi.GRBVar;@30dae81 <= 5
Bounds
 u_[Lgurobi.GRBVar;@30dae81 <= 7
 u_[Lgurobi.GRBVar;@30dae81 <= 7
 u_[Lgurobi.GRBVar;@30dae81 <= 7
 u_[Lgurobi.GRBVar;@30dae81 <= 7
 u_[Lgurobi.GRBVar;@30dae81 <= 7
 u_[Lgurobi.GRBVar;@30dae81 <= 7
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_1_0 x_1_1 x_1_2 x_1_3 x_1_4 x_1_5
 x_2_0 x_2_1 x_2_2 x_2_3 x_2_4 x_2_5 x_3_0 x_3_1 x_3_2 x_3_3 x_3_4 x_3_5
 x_4_0 x_4_1 x_4_2 x_4_3 x_4_4 x_4_5 x_5_0 x_5_1 x_5_2 x_5_3 x_5_4 x_5_5
Generals
 u_[Lgurobi.GRBVar;@30dae81 u_[Lgurobi.GRBVar;@30dae81
 u_[Lgurobi.GRBVar;@30dae81 u_[Lgurobi.GRBVar;@30dae81
 u_[Lgurobi.GRBVar;@30dae81 u_[Lgurobi.GRBVar;@30dae81
End
