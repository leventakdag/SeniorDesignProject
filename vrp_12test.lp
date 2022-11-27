\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  100000 x_0_0 + 20.05516476558237 x_0_1 + 44.83462196961451 x_0_2
   + 46.48979118907101 x_0_3 + 53.17785888115245 x_0_4
   + 48.26440565812362 x_0_5 + 22.86679669887094 x_0_6
   + 20.05516476558237 x_1_0 + 100000 x_1_1 + 52.04099648760595 x_1_2
   + 53.51044599727287 x_1_3 + 65.15465160275019 x_1_4
   + 63.3678452377627 x_1_5 + 38.79099523547418 x_1_6
   + 44.83462196961451 x_2_0 + 52.04099648760595 x_2_1 + 100000 x_2_2
   + 1.664204346171196 x_2_3 + 18.10862704410199 x_2_4
   + 25.92716626148662 x_2_5 + 27.42970703507953 x_2_6
   + 46.48979118907101 x_3_0 + 53.51044599727287 x_3_1
   + 1.664204346171196 x_3_2 + 100000 x_3_3 + 17.85223023029456 x_3_4
   + 26.40173560740062 x_3_5 + 29.01416727124887 x_3_6
   + 53.17785888115245 x_4_0 + 65.15465160275019 x_4_1
   + 18.10862704410199 x_4_2 + 17.85223023029456 x_4_3 + 100000 x_4_4
   + 12.57944580298702 x_4_5 + 31.01087186406166 x_4_6
   + 48.26440565812362 x_5_0 + 63.3678452377627 x_5_1
   + 25.92716626148662 x_5_2 + 26.40173560740062 x_5_3
   + 12.57944580298702 x_5_4 + 100000 x_5_5 + 25.43400218577298 x_5_6
   + 22.86679669887094 x_6_0 + 38.79099523547418 x_6_1
   + 27.42970703507953 x_6_2 + 29.01416727124887 x_6_3
   + 31.01087186406166 x_6_4 + 25.43400218577298 x_6_5 + 100000 x_6_6
   + 0 u_[Lgurobi.GRBVar;@1f89ab83
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
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_3
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_4
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_5
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_6
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_1
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_3
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_4
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_5
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_6
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_1
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_2
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_4
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_5
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_6
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_1
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_2
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_3
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_5
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_6
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_1
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_2
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_3
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_4
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_6
   + u_[Lgurobi.GRBVar;@1f89ab83 - u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_1
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_2
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_3
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_4
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_5
   - u_[Lgurobi.GRBVar;@1f89ab83 + u_[Lgurobi.GRBVar;@1f89ab83 <= 6
Bounds
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
 u_[Lgurobi.GRBVar;@1f89ab83 <= 8
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_0_6 x_1_0 x_1_1 x_1_2 x_1_3 x_1_4
 x_1_5 x_1_6 x_2_0 x_2_1 x_2_2 x_2_3 x_2_4 x_2_5 x_2_6 x_3_0 x_3_1 x_3_2
 x_3_3 x_3_4 x_3_5 x_3_6 x_4_0 x_4_1 x_4_2 x_4_3 x_4_4 x_4_5 x_4_6 x_5_0
 x_5_1 x_5_2 x_5_3 x_5_4 x_5_5 x_5_6 x_6_0 x_6_1 x_6_2 x_6_3 x_6_4 x_6_5
 x_6_6
Generals
 u_[Lgurobi.GRBVar;@1f89ab83 u_[Lgurobi.GRBVar;@1f89ab83
 u_[Lgurobi.GRBVar;@1f89ab83 u_[Lgurobi.GRBVar;@1f89ab83
 u_[Lgurobi.GRBVar;@1f89ab83 u_[Lgurobi.GRBVar;@1f89ab83
 u_[Lgurobi.GRBVar;@1f89ab83
End
