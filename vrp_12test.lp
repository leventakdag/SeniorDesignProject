\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1000 x_0_0 + 30 x_0_1 + 30 x_1_0 + 1000 x_1_1
   + 0 u_[Lgurobi.GRBVar;@67424e82 + 0 u_[Lgurobi.GRBVar;@67424e82
Subject To
 c1: x_0_1 = 1
 c1: x_1_0 = 1
 c1: x_1_0 = 1
 c1: x_0_1 = 1
Bounds
 u_[Lgurobi.GRBVar;@67424e82 <= 3
 u_[Lgurobi.GRBVar;@67424e82 <= 3
Binaries
 x_0_0 x_0_1 x_1_0 x_1_1
Generals
 u_[Lgurobi.GRBVar;@67424e82 u_[Lgurobi.GRBVar;@67424e82
End
