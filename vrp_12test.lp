\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  100000 x_0_0 + 39.89051378079514 x_0_1 + 21.88237210109096 x_0_2
   + 34.21372955616449 x_0_3 + 27.48210941000888 x_0_4
   + 26.30324052107846 x_0_5 + 13.95823682695928 x_0_6
   + 39.89051378079514 x_1_0 + 100000 x_1_1 + 27.97126365686515 x_1_2
   + 41.71979270769791 x_1_3 + 57.52666195652878 x_1_4
   + 65.66750719964925 x_1_5 + 46.63173398784094 x_1_6
   + 21.88237210109096 x_2_0 + 27.97126365686515 x_2_1 + 100000 x_2_2
   + 17.27859850517696 x_2_3 + 48.51102960692136 x_2_4
   + 42.34944590040279 x_2_5 + 21.07736964210266 x_2_6
   + 34.21372955616449 x_3_0 + 41.71979270769791 x_3_1
   + 17.27859850517696 x_3_2 + 100000 x_3_3 + 61.65728084889136 x_3_4
   + 45.69370535186987 x_3_5 + 25.68930521572597 x_3_6
   + 27.48210941000888 x_4_0 + 57.52666195652878 x_4_1
   + 48.51102960692136 x_4_2 + 61.65728084889136 x_4_3 + 100000 x_4_4
   + 34.12510087081213 x_4_5 + 38.45221744576951 x_4_6
   + 26.30324052107846 x_5_0 + 65.66750719964925 x_5_1
   + 42.34944590040279 x_5_2 + 45.69370535186987 x_5_3
   + 34.12510087081213 x_5_4 + 100000 x_5_5 + 21.52971025252596 x_5_6
   + 13.95823682695928 x_6_0 + 46.63173398784094 x_6_1
   + 21.07736964210266 x_6_2 + 25.68930521572597 x_6_3
   + 38.45221744576951 x_6_4 + 21.52971025252596 x_6_5 + 100000 x_6_6
   + 0 u_[Lgurobi.GRBVar;@506c589e
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
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_3
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_4
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_5
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_1_6
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_1
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_3
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_4
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_5
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_2_6
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_1
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_2
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_4
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_5
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_3_6
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_1
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_2
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_3
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_5
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_4_6
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_1
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_2
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_3
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_4
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_5_6
   + u_[Lgurobi.GRBVar;@506c589e - u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_1
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_2
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_3
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_4
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 7 x_6_5
   - u_[Lgurobi.GRBVar;@506c589e + u_[Lgurobi.GRBVar;@506c589e <= 6
Bounds
 u_[Lgurobi.GRBVar;@506c589e <= 8
 u_[Lgurobi.GRBVar;@506c589e <= 8
 u_[Lgurobi.GRBVar;@506c589e <= 8
 u_[Lgurobi.GRBVar;@506c589e <= 8
 u_[Lgurobi.GRBVar;@506c589e <= 8
 u_[Lgurobi.GRBVar;@506c589e <= 8
 u_[Lgurobi.GRBVar;@506c589e <= 8
Binaries
 x_0_0 x_0_1 x_0_2 x_0_3 x_0_4 x_0_5 x_0_6 x_1_0 x_1_1 x_1_2 x_1_3 x_1_4
 x_1_5 x_1_6 x_2_0 x_2_1 x_2_2 x_2_3 x_2_4 x_2_5 x_2_6 x_3_0 x_3_1 x_3_2
 x_3_3 x_3_4 x_3_5 x_3_6 x_4_0 x_4_1 x_4_2 x_4_3 x_4_4 x_4_5 x_4_6 x_5_0
 x_5_1 x_5_2 x_5_3 x_5_4 x_5_5 x_5_6 x_6_0 x_6_1 x_6_2 x_6_3 x_6_4 x_6_5
 x_6_6
Generals
 u_[Lgurobi.GRBVar;@506c589e u_[Lgurobi.GRBVar;@506c589e
 u_[Lgurobi.GRBVar;@506c589e u_[Lgurobi.GRBVar;@506c589e
 u_[Lgurobi.GRBVar;@506c589e u_[Lgurobi.GRBVar;@506c589e
 u_[Lgurobi.GRBVar;@506c589e
End
