\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0 x_0_0 + 77.43707856059616 x_0_1 + 56.22561138840481 x_0_2
   + 77.43707856059616 x_1_0 + 0 x_1_1 + 27.83455406504643 x_1_2
   + 56.22561138840481 x_2_0 + 27.83455406504643 x_2_1 + 0 x_2_2
   + 0 u_[Lgurobi.GRBVar;@66a29884
Subject To
 c1: x_0_1 + x_0_2 = 1
 c1: x_1_0 + x_1_2 = 1
 c1: x_2_0 + x_2_1 = 1
 c1: x_1_0 + x_2_0 = 1
 c1: x_0_1 + x_2_1 = 1
 c1: x_0_2 + x_1_2 = 1
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 3 x_1_2
   + u_[Lgurobi.GRBVar;@66a29884 - u_[Lgurobi.GRBVar;@66a29884 <= 2
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 3 x_2_1
   - u_[Lgurobi.GRBVar;@66a29884 + u_[Lgurobi.GRBVar;@66a29884 <= 2
Bounds
 u_[Lgurobi.GRBVar;@66a29884 <= 4
 u_[Lgurobi.GRBVar;@66a29884 <= 4
 u_[Lgurobi.GRBVar;@66a29884 <= 4
Binaries
 x_0_0 x_0_1 x_0_2 x_1_0 x_1_1 x_1_2 x_2_0 x_2_1 x_2_2
Generals
 u_[Lgurobi.GRBVar;@66a29884 u_[Lgurobi.GRBVar;@66a29884
 u_[Lgurobi.GRBVar;@66a29884
End
