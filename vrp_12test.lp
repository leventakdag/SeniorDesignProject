\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0 L_0_0 + 0 L_0_1 + 0 L_0_2 + 0 L_0_3 + 0 L_0_4 + 0 L_0_5 + 0 L_0_6
   + 0 L_0_7 + 0 L_0_8 + 30 y_0 + 30 y_1 + 30 y_2 + 30 y_3 + 30 y_4
   + 30 y_5 + 30 y_6 + 30 y_7 + 30 y_8 + 0 u_[Lgurobi.GRBVar;@7cd84586
Subject To
 All_Orders_must_be_loaded!: L_1_0 + L_1_1 + L_1_2 + L_1_3 + L_1_4 + L_1_5
   + L_1_6 + L_1_7 + L_1_8 = 1
 All_Orders_must_be_loaded!: L_2_0 + L_2_1 + L_2_2 + L_2_3 + L_2_4 + L_2_5
   + L_2_6 + L_2_7 + L_2_8 = 1
 All_Orders_must_be_loaded!: L_3_0 + L_3_1 + L_3_2 + L_3_3 + L_3_4 + L_3_5
   + L_3_6 + L_3_7 + L_3_8 = 1
 All_Orders_must_be_loaded!: L_4_0 + L_4_1 + L_4_2 + L_4_3 + L_4_4 + L_4_5
   + L_4_6 + L_4_7 + L_4_8 = 1
 All_Orders_must_be_loaded!: L_5_0 + L_5_1 + L_5_2 + L_5_3 + L_5_4 + L_5_5
   + L_5_6 + L_5_7 + L_5_8 = 1
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_0 + x_1_1_0 + x_2_1_0 + x_3_1_0 + x_4_1_0 + x_5_1_0 - L_1_0 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_1 + x_1_1_1 + x_2_1_1 + x_3_1_1 + x_4_1_1 + x_5_1_1 - L_1_1 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_2 + x_1_1_2 + x_2_1_2 + x_3_1_2 + x_4_1_2 + x_5_1_2 - L_1_2 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_3 + x_1_1_3 + x_2_1_3 + x_3_1_3 + x_4_1_3 + x_5_1_3 - L_1_3 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_4 + x_1_1_4 + x_2_1_4 + x_3_1_4 + x_4_1_4 + x_5_1_4 - L_1_4 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_5 + x_1_1_5 + x_2_1_5 + x_3_1_5 + x_4_1_5 + x_5_1_5 - L_1_5 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_6 + x_1_1_6 + x_2_1_6 + x_3_1_6 + x_4_1_6 + x_5_1_6 - L_1_6 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_7 + x_1_1_7 + x_2_1_7 + x_3_1_7 + x_4_1_7 + x_5_1_7 - L_1_7 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_1_8 + x_1_1_8 + x_2_1_8 + x_3_1_8 + x_4_1_8 + x_5_1_8 - L_1_8 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_0 + x_1_2_0 + x_2_2_0 + x_3_2_0 + x_4_2_0 + x_5_2_0 - L_2_0 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_1 + x_1_2_1 + x_2_2_1 + x_3_2_1 + x_4_2_1 + x_5_2_1 - L_2_1 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_2 + x_1_2_2 + x_2_2_2 + x_3_2_2 + x_4_2_2 + x_5_2_2 - L_2_2 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_3 + x_1_2_3 + x_2_2_3 + x_3_2_3 + x_4_2_3 + x_5_2_3 - L_2_3 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_4 + x_1_2_4 + x_2_2_4 + x_3_2_4 + x_4_2_4 + x_5_2_4 - L_2_4 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_5 + x_1_2_5 + x_2_2_5 + x_3_2_5 + x_4_2_5 + x_5_2_5 - L_2_5 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_6 + x_1_2_6 + x_2_2_6 + x_3_2_6 + x_4_2_6 + x_5_2_6 - L_2_6 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_7 + x_1_2_7 + x_2_2_7 + x_3_2_7 + x_4_2_7 + x_5_2_7 - L_2_7 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_2_8 + x_1_2_8 + x_2_2_8 + x_3_2_8 + x_4_2_8 + x_5_2_8 - L_2_8 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_0 + x_1_3_0 + x_2_3_0 + x_3_3_0 + x_4_3_0 + x_5_3_0 - L_3_0 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_1 + x_1_3_1 + x_2_3_1 + x_3_3_1 + x_4_3_1 + x_5_3_1 - L_3_1 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_2 + x_1_3_2 + x_2_3_2 + x_3_3_2 + x_4_3_2 + x_5_3_2 - L_3_2 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_3 + x_1_3_3 + x_2_3_3 + x_3_3_3 + x_4_3_3 + x_5_3_3 - L_3_3 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_4 + x_1_3_4 + x_2_3_4 + x_3_3_4 + x_4_3_4 + x_5_3_4 - L_3_4 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_5 + x_1_3_5 + x_2_3_5 + x_3_3_5 + x_4_3_5 + x_5_3_5 - L_3_5 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_6 + x_1_3_6 + x_2_3_6 + x_3_3_6 + x_4_3_6 + x_5_3_6 - L_3_6 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_7 + x_1_3_7 + x_2_3_7 + x_3_3_7 + x_4_3_7 + x_5_3_7 - L_3_7 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_3_8 + x_1_3_8 + x_2_3_8 + x_3_3_8 + x_4_3_8 + x_5_3_8 - L_3_8 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_0 + x_1_4_0 + x_2_4_0 + x_3_4_0 + x_4_4_0 + x_5_4_0 - L_4_0 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_1 + x_1_4_1 + x_2_4_1 + x_3_4_1 + x_4_4_1 + x_5_4_1 - L_4_1 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_2 + x_1_4_2 + x_2_4_2 + x_3_4_2 + x_4_4_2 + x_5_4_2 - L_4_2 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_3 + x_1_4_3 + x_2_4_3 + x_3_4_3 + x_4_4_3 + x_5_4_3 - L_4_3 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_4 + x_1_4_4 + x_2_4_4 + x_3_4_4 + x_4_4_4 + x_5_4_4 - L_4_4 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_5 + x_1_4_5 + x_2_4_5 + x_3_4_5 + x_4_4_5 + x_5_4_5 - L_4_5 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_6 + x_1_4_6 + x_2_4_6 + x_3_4_6 + x_4_4_6 + x_5_4_6 - L_4_6 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_7 + x_1_4_7 + x_2_4_7 + x_3_4_7 + x_4_4_7 + x_5_4_7 - L_4_7 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_4_8 + x_1_4_8 + x_2_4_8 + x_3_4_8 + x_4_4_8 + x_5_4_8 - L_4_8 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_0 + x_1_5_0 + x_2_5_0 + x_3_5_0 + x_4_5_0 + x_5_5_0 - L_5_0 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_1 + x_1_5_1 + x_2_5_1 + x_3_5_1 + x_4_5_1 + x_5_5_1 - L_5_1 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_2 + x_1_5_2 + x_2_5_2 + x_3_5_2 + x_4_5_2 + x_5_5_2 - L_5_2 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_3 + x_1_5_3 + x_2_5_3 + x_3_5_3 + x_4_5_3 + x_5_5_3 - L_5_3 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_4 + x_1_5_4 + x_2_5_4 + x_3_5_4 + x_4_5_4 + x_5_5_4 - L_5_4 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_5 + x_1_5_5 + x_2_5_5 + x_3_5_5 + x_4_5_5 + x_5_5_5 - L_5_5 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_6 + x_1_5_6 + x_2_5_6 + x_3_5_6 + x_4_5_6 + x_5_5_6 - L_5_6 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_7 + x_1_5_7 + x_2_5_7 + x_3_5_7 + x_4_5_7 + x_5_5_7 - L_5_7 = 0
 If_orders_of_j_loaded_on_vehicle_k,_then_k__must_visit_location_j.:
   x_0_5_8 + x_1_5_8 + x_2_5_8 + x_3_5_8 + x_4_5_8 + x_5_5_8 - L_5_8 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_0
   - x_0_2_0 - x_0_3_0 - x_0_4_0 - x_0_5_0 + x_1_0_0 + x_2_0_0 + x_3_0_0
   + x_4_0_0 + x_5_0_0 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_1
   - x_0_2_1 - x_0_3_1 - x_0_4_1 - x_0_5_1 + x_1_0_1 + x_2_0_1 + x_3_0_1
   + x_4_0_1 + x_5_0_1 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_2
   - x_0_2_2 - x_0_3_2 - x_0_4_2 - x_0_5_2 + x_1_0_2 + x_2_0_2 + x_3_0_2
   + x_4_0_2 + x_5_0_2 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_3
   - x_0_2_3 - x_0_3_3 - x_0_4_3 - x_0_5_3 + x_1_0_3 + x_2_0_3 + x_3_0_3
   + x_4_0_3 + x_5_0_3 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_4
   - x_0_2_4 - x_0_3_4 - x_0_4_4 - x_0_5_4 + x_1_0_4 + x_2_0_4 + x_3_0_4
   + x_4_0_4 + x_5_0_4 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_5
   - x_0_2_5 - x_0_3_5 - x_0_4_5 - x_0_5_5 + x_1_0_5 + x_2_0_5 + x_3_0_5
   + x_4_0_5 + x_5_0_5 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_6
   - x_0_2_6 - x_0_3_6 - x_0_4_6 - x_0_5_6 + x_1_0_6 + x_2_0_6 + x_3_0_6
   + x_4_0_6 + x_5_0_6 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_7
   - x_0_2_7 - x_0_3_7 - x_0_4_7 - x_0_5_7 + x_1_0_7 + x_2_0_7 + x_3_0_7
   + x_4_0_7 + x_5_0_7 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: - x_0_1_8
   - x_0_2_8 - x_0_3_8 - x_0_4_8 - x_0_5_8 + x_1_0_8 + x_2_0_8 + x_3_0_8
   + x_4_0_8 + x_5_0_8 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_0 - x_1_0_0
   - x_1_2_0 - x_1_3_0 - x_1_4_0 - x_1_5_0 + x_2_1_0 + x_3_1_0 + x_4_1_0
   + x_5_1_0 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_1 - x_1_0_1
   - x_1_2_1 - x_1_3_1 - x_1_4_1 - x_1_5_1 + x_2_1_1 + x_3_1_1 + x_4_1_1
   + x_5_1_1 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_2 - x_1_0_2
   - x_1_2_2 - x_1_3_2 - x_1_4_2 - x_1_5_2 + x_2_1_2 + x_3_1_2 + x_4_1_2
   + x_5_1_2 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_3 - x_1_0_3
   - x_1_2_3 - x_1_3_3 - x_1_4_3 - x_1_5_3 + x_2_1_3 + x_3_1_3 + x_4_1_3
   + x_5_1_3 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_4 - x_1_0_4
   - x_1_2_4 - x_1_3_4 - x_1_4_4 - x_1_5_4 + x_2_1_4 + x_3_1_4 + x_4_1_4
   + x_5_1_4 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_5 - x_1_0_5
   - x_1_2_5 - x_1_3_5 - x_1_4_5 - x_1_5_5 + x_2_1_5 + x_3_1_5 + x_4_1_5
   + x_5_1_5 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_6 - x_1_0_6
   - x_1_2_6 - x_1_3_6 - x_1_4_6 - x_1_5_6 + x_2_1_6 + x_3_1_6 + x_4_1_6
   + x_5_1_6 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_7 - x_1_0_7
   - x_1_2_7 - x_1_3_7 - x_1_4_7 - x_1_5_7 + x_2_1_7 + x_3_1_7 + x_4_1_7
   + x_5_1_7 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_1_8 - x_1_0_8
   - x_1_2_8 - x_1_3_8 - x_1_4_8 - x_1_5_8 + x_2_1_8 + x_3_1_8 + x_4_1_8
   + x_5_1_8 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_0 + x_1_2_0
   - x_2_0_0 - x_2_1_0 - x_2_3_0 - x_2_4_0 - x_2_5_0 + x_3_2_0 + x_4_2_0
   + x_5_2_0 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_1 + x_1_2_1
   - x_2_0_1 - x_2_1_1 - x_2_3_1 - x_2_4_1 - x_2_5_1 + x_3_2_1 + x_4_2_1
   + x_5_2_1 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_2 + x_1_2_2
   - x_2_0_2 - x_2_1_2 - x_2_3_2 - x_2_4_2 - x_2_5_2 + x_3_2_2 + x_4_2_2
   + x_5_2_2 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_3 + x_1_2_3
   - x_2_0_3 - x_2_1_3 - x_2_3_3 - x_2_4_3 - x_2_5_3 + x_3_2_3 + x_4_2_3
   + x_5_2_3 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_4 + x_1_2_4
   - x_2_0_4 - x_2_1_4 - x_2_3_4 - x_2_4_4 - x_2_5_4 + x_3_2_4 + x_4_2_4
   + x_5_2_4 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_5 + x_1_2_5
   - x_2_0_5 - x_2_1_5 - x_2_3_5 - x_2_4_5 - x_2_5_5 + x_3_2_5 + x_4_2_5
   + x_5_2_5 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_6 + x_1_2_6
   - x_2_0_6 - x_2_1_6 - x_2_3_6 - x_2_4_6 - x_2_5_6 + x_3_2_6 + x_4_2_6
   + x_5_2_6 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_7 + x_1_2_7
   - x_2_0_7 - x_2_1_7 - x_2_3_7 - x_2_4_7 - x_2_5_7 + x_3_2_7 + x_4_2_7
   + x_5_2_7 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_2_8 + x_1_2_8
   - x_2_0_8 - x_2_1_8 - x_2_3_8 - x_2_4_8 - x_2_5_8 + x_3_2_8 + x_4_2_8
   + x_5_2_8 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_0 + x_1_3_0
   + x_2_3_0 - x_3_0_0 - x_3_1_0 - x_3_2_0 - x_3_4_0 - x_3_5_0 + x_4_3_0
   + x_5_3_0 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_1 + x_1_3_1
   + x_2_3_1 - x_3_0_1 - x_3_1_1 - x_3_2_1 - x_3_4_1 - x_3_5_1 + x_4_3_1
   + x_5_3_1 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_2 + x_1_3_2
   + x_2_3_2 - x_3_0_2 - x_3_1_2 - x_3_2_2 - x_3_4_2 - x_3_5_2 + x_4_3_2
   + x_5_3_2 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_3 + x_1_3_3
   + x_2_3_3 - x_3_0_3 - x_3_1_3 - x_3_2_3 - x_3_4_3 - x_3_5_3 + x_4_3_3
   + x_5_3_3 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_4 + x_1_3_4
   + x_2_3_4 - x_3_0_4 - x_3_1_4 - x_3_2_4 - x_3_4_4 - x_3_5_4 + x_4_3_4
   + x_5_3_4 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_5 + x_1_3_5
   + x_2_3_5 - x_3_0_5 - x_3_1_5 - x_3_2_5 - x_3_4_5 - x_3_5_5 + x_4_3_5
   + x_5_3_5 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_6 + x_1_3_6
   + x_2_3_6 - x_3_0_6 - x_3_1_6 - x_3_2_6 - x_3_4_6 - x_3_5_6 + x_4_3_6
   + x_5_3_6 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_7 + x_1_3_7
   + x_2_3_7 - x_3_0_7 - x_3_1_7 - x_3_2_7 - x_3_4_7 - x_3_5_7 + x_4_3_7
   + x_5_3_7 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_3_8 + x_1_3_8
   + x_2_3_8 - x_3_0_8 - x_3_1_8 - x_3_2_8 - x_3_4_8 - x_3_5_8 + x_4_3_8
   + x_5_3_8 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_0 + x_1_4_0
   + x_2_4_0 + x_3_4_0 - x_4_0_0 - x_4_1_0 - x_4_2_0 - x_4_3_0 - x_4_5_0
   + x_5_4_0 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_1 + x_1_4_1
   + x_2_4_1 + x_3_4_1 - x_4_0_1 - x_4_1_1 - x_4_2_1 - x_4_3_1 - x_4_5_1
   + x_5_4_1 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_2 + x_1_4_2
   + x_2_4_2 + x_3_4_2 - x_4_0_2 - x_4_1_2 - x_4_2_2 - x_4_3_2 - x_4_5_2
   + x_5_4_2 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_3 + x_1_4_3
   + x_2_4_3 + x_3_4_3 - x_4_0_3 - x_4_1_3 - x_4_2_3 - x_4_3_3 - x_4_5_3
   + x_5_4_3 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_4 + x_1_4_4
   + x_2_4_4 + x_3_4_4 - x_4_0_4 - x_4_1_4 - x_4_2_4 - x_4_3_4 - x_4_5_4
   + x_5_4_4 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_5 + x_1_4_5
   + x_2_4_5 + x_3_4_5 - x_4_0_5 - x_4_1_5 - x_4_2_5 - x_4_3_5 - x_4_5_5
   + x_5_4_5 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_6 + x_1_4_6
   + x_2_4_6 + x_3_4_6 - x_4_0_6 - x_4_1_6 - x_4_2_6 - x_4_3_6 - x_4_5_6
   + x_5_4_6 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_7 + x_1_4_7
   + x_2_4_7 + x_3_4_7 - x_4_0_7 - x_4_1_7 - x_4_2_7 - x_4_3_7 - x_4_5_7
   + x_5_4_7 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_4_8 + x_1_4_8
   + x_2_4_8 + x_3_4_8 - x_4_0_8 - x_4_1_8 - x_4_2_8 - x_4_3_8 - x_4_5_8
   + x_5_4_8 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_0 + x_1_5_0
   + x_2_5_0 + x_3_5_0 + x_4_5_0 - x_5_0_0 - x_5_1_0 - x_5_2_0 - x_5_3_0
   - x_5_4_0 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_1 + x_1_5_1
   + x_2_5_1 + x_3_5_1 + x_4_5_1 - x_5_0_1 - x_5_1_1 - x_5_2_1 - x_5_3_1
   - x_5_4_1 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_2 + x_1_5_2
   + x_2_5_2 + x_3_5_2 + x_4_5_2 - x_5_0_2 - x_5_1_2 - x_5_2_2 - x_5_3_2
   - x_5_4_2 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_3 + x_1_5_3
   + x_2_5_3 + x_3_5_3 + x_4_5_3 - x_5_0_3 - x_5_1_3 - x_5_2_3 - x_5_3_3
   - x_5_4_3 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_4 + x_1_5_4
   + x_2_5_4 + x_3_5_4 + x_4_5_4 - x_5_0_4 - x_5_1_4 - x_5_2_4 - x_5_3_4
   - x_5_4_4 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_5 + x_1_5_5
   + x_2_5_5 + x_3_5_5 + x_4_5_5 - x_5_0_5 - x_5_1_5 - x_5_2_5 - x_5_3_5
   - x_5_4_5 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_6 + x_1_5_6
   + x_2_5_6 + x_3_5_6 + x_4_5_6 - x_5_0_6 - x_5_1_6 - x_5_2_6 - x_5_3_6
   - x_5_4_6 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_7 + x_1_5_7
   + x_2_5_7 + x_3_5_7 + x_4_5_7 - x_5_0_7 - x_5_1_7 - x_5_2_7 - x_5_3_7
   - x_5_4_7 = 0
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: x_0_5_8 + x_1_5_8
   + x_2_5_8 + x_3_5_8 + x_4_5_8 - x_5_0_8 - x_5_1_8 - x_5_2_8 - x_5_3_8
   - x_5_4_8 = 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_0 + L_2_0 + L_3_0 + L_4_0
   + L_5_0 - 24 y_0 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_1 + L_2_1 + L_3_1 + L_4_1
   + L_5_1 - 24 y_1 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_2 + L_2_2 + L_3_2 + L_4_2
   + L_5_2 - 24 y_2 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_3 + L_2_3 + L_3_3 + L_4_3
   + L_5_3 - 24 y_3 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_4 + L_2_4 + L_3_4 + L_4_4
   + L_5_4 - 24 y_4 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_5 + L_2_5 + L_3_5 + L_4_5
   + L_5_5 - 24 y_5 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_6 + L_2_6 + L_3_6 + L_4_6
   + L_5_6 - 24 y_6 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_7 + L_2_7 + L_3_7 + L_4_7
   + L_5_7 - 24 y_7 <= 0
 If_truck_k_is_loaded_then_it_must_be_used!: L_1_8 + L_2_8 + L_3_8 + L_4_8
   + L_5_8 - 24 y_8 <= 0
 Max_number_of_departures_from_0: x_0_1_0 + x_0_2_0 + x_0_3_0 + x_0_4_0
   + x_0_5_0 - y_0 = 0
 Max_number_of_departures_from_0: x_0_1_1 + x_0_2_1 + x_0_3_1 + x_0_4_1
   + x_0_5_1 - y_1 = 0
 Max_number_of_departures_from_0: x_0_1_2 + x_0_2_2 + x_0_3_2 + x_0_4_2
   + x_0_5_2 - y_2 = 0
 Max_number_of_departures_from_0: x_0_1_3 + x_0_2_3 + x_0_3_3 + x_0_4_3
   + x_0_5_3 - y_3 = 0
 Max_number_of_departures_from_0: x_0_1_4 + x_0_2_4 + x_0_3_4 + x_0_4_4
   + x_0_5_4 - y_4 = 0
 Max_number_of_departures_from_0: x_0_1_5 + x_0_2_5 + x_0_3_5 + x_0_4_5
   + x_0_5_5 - y_5 = 0
 Max_number_of_departures_from_0: x_0_1_6 + x_0_2_6 + x_0_3_6 + x_0_4_6
   + x_0_5_6 - y_6 = 0
 Max_number_of_departures_from_0: x_0_1_7 + x_0_2_7 + x_0_3_7 + x_0_4_7
   + x_0_5_7 - y_7 = 0
 Max_number_of_departures_from_0: x_0_1_8 + x_0_2_8 + x_0_3_8 + x_0_4_8
   + x_0_5_8 - y_8 = 0
 Time_constraint: 1000 x_0_0_0 + 40 x_0_1_0 + 40 x_0_2_0 + 39 x_0_3_0
   + 45 x_0_4_0 + 39 x_1_0_0 + 1000 x_1_1_0 + x_1_2_0 + 7 x_1_3_0
   + 19 x_1_4_0 + 38 x_2_0_0 + x_2_1_0 + 1000 x_2_2_0 + 7 x_2_3_0
   + 20 x_2_4_0 + 39 x_3_0_0 + 6 x_3_1_0 + 6 x_3_2_0 + 1000 x_3_3_0
   + 26 x_3_4_0 + 44 x_4_0_0 + 21 x_4_1_0 + 20 x_4_2_0 + 26 x_4_3_0
   + 1000 x_4_4_0 + 14.685 L_1_0 + 2.175 L_2_0 + 16.065 L_3_0 + 1.17 L_4_0
   <= 540
 Time_constraint: 1000 x_0_0_1 + 40 x_0_1_1 + 40 x_0_2_1 + 39 x_0_3_1
   + 45 x_0_4_1 + 39 x_1_0_1 + 1000 x_1_1_1 + x_1_2_1 + 7 x_1_3_1
   + 19 x_1_4_1 + 38 x_2_0_1 + x_2_1_1 + 1000 x_2_2_1 + 7 x_2_3_1
   + 20 x_2_4_1 + 39 x_3_0_1 + 6 x_3_1_1 + 6 x_3_2_1 + 1000 x_3_3_1
   + 26 x_3_4_1 + 44 x_4_0_1 + 21 x_4_1_1 + 20 x_4_2_1 + 26 x_4_3_1
   + 1000 x_4_4_1 + 14.685 L_1_1 + 2.175 L_2_1 + 16.065 L_3_1 + 1.17 L_4_1
   <= 540
 Time_constraint: 1000 x_0_0_2 + 40 x_0_1_2 + 40 x_0_2_2 + 39 x_0_3_2
   + 45 x_0_4_2 + 39 x_1_0_2 + 1000 x_1_1_2 + x_1_2_2 + 7 x_1_3_2
   + 19 x_1_4_2 + 38 x_2_0_2 + x_2_1_2 + 1000 x_2_2_2 + 7 x_2_3_2
   + 20 x_2_4_2 + 39 x_3_0_2 + 6 x_3_1_2 + 6 x_3_2_2 + 1000 x_3_3_2
   + 26 x_3_4_2 + 44 x_4_0_2 + 21 x_4_1_2 + 20 x_4_2_2 + 26 x_4_3_2
   + 1000 x_4_4_2 + 14.685 L_1_2 + 2.175 L_2_2 + 16.065 L_3_2 + 1.17 L_4_2
   <= 540
 Time_constraint: 1000 x_0_0_3 + 40 x_0_1_3 + 40 x_0_2_3 + 39 x_0_3_3
   + 45 x_0_4_3 + 39 x_1_0_3 + 1000 x_1_1_3 + x_1_2_3 + 7 x_1_3_3
   + 19 x_1_4_3 + 38 x_2_0_3 + x_2_1_3 + 1000 x_2_2_3 + 7 x_2_3_3
   + 20 x_2_4_3 + 39 x_3_0_3 + 6 x_3_1_3 + 6 x_3_2_3 + 1000 x_3_3_3
   + 26 x_3_4_3 + 44 x_4_0_3 + 21 x_4_1_3 + 20 x_4_2_3 + 26 x_4_3_3
   + 1000 x_4_4_3 + 14.685 L_1_3 + 2.175 L_2_3 + 16.065 L_3_3 + 1.17 L_4_3
   <= 540
 Time_constraint: 1000 x_0_0_4 + 40 x_0_1_4 + 40 x_0_2_4 + 39 x_0_3_4
   + 45 x_0_4_4 + 39 x_1_0_4 + 1000 x_1_1_4 + x_1_2_4 + 7 x_1_3_4
   + 19 x_1_4_4 + 38 x_2_0_4 + x_2_1_4 + 1000 x_2_2_4 + 7 x_2_3_4
   + 20 x_2_4_4 + 39 x_3_0_4 + 6 x_3_1_4 + 6 x_3_2_4 + 1000 x_3_3_4
   + 26 x_3_4_4 + 44 x_4_0_4 + 21 x_4_1_4 + 20 x_4_2_4 + 26 x_4_3_4
   + 1000 x_4_4_4 + 14.685 L_1_4 + 2.175 L_2_4 + 16.065 L_3_4 + 1.17 L_4_4
   <= 540
 Time_constraint: 1000 x_0_0_5 + 40 x_0_1_5 + 40 x_0_2_5 + 39 x_0_3_5
   + 45 x_0_4_5 + 39 x_1_0_5 + 1000 x_1_1_5 + x_1_2_5 + 7 x_1_3_5
   + 19 x_1_4_5 + 38 x_2_0_5 + x_2_1_5 + 1000 x_2_2_5 + 7 x_2_3_5
   + 20 x_2_4_5 + 39 x_3_0_5 + 6 x_3_1_5 + 6 x_3_2_5 + 1000 x_3_3_5
   + 26 x_3_4_5 + 44 x_4_0_5 + 21 x_4_1_5 + 20 x_4_2_5 + 26 x_4_3_5
   + 1000 x_4_4_5 + 14.685 L_1_5 + 2.175 L_2_5 + 16.065 L_3_5 + 1.17 L_4_5
   <= 540
 Time_constraint: 1000 x_0_0_6 + 40 x_0_1_6 + 40 x_0_2_6 + 39 x_0_3_6
   + 45 x_0_4_6 + 39 x_1_0_6 + 1000 x_1_1_6 + x_1_2_6 + 7 x_1_3_6
   + 19 x_1_4_6 + 38 x_2_0_6 + x_2_1_6 + 1000 x_2_2_6 + 7 x_2_3_6
   + 20 x_2_4_6 + 39 x_3_0_6 + 6 x_3_1_6 + 6 x_3_2_6 + 1000 x_3_3_6
   + 26 x_3_4_6 + 44 x_4_0_6 + 21 x_4_1_6 + 20 x_4_2_6 + 26 x_4_3_6
   + 1000 x_4_4_6 + 14.685 L_1_6 + 2.175 L_2_6 + 16.065 L_3_6 + 1.17 L_4_6
   <= 540
 Time_constraint: 1000 x_0_0_7 + 40 x_0_1_7 + 40 x_0_2_7 + 39 x_0_3_7
   + 45 x_0_4_7 + 39 x_1_0_7 + 1000 x_1_1_7 + x_1_2_7 + 7 x_1_3_7
   + 19 x_1_4_7 + 38 x_2_0_7 + x_2_1_7 + 1000 x_2_2_7 + 7 x_2_3_7
   + 20 x_2_4_7 + 39 x_3_0_7 + 6 x_3_1_7 + 6 x_3_2_7 + 1000 x_3_3_7
   + 26 x_3_4_7 + 44 x_4_0_7 + 21 x_4_1_7 + 20 x_4_2_7 + 26 x_4_3_7
   + 1000 x_4_4_7 + 14.685 L_1_7 + 2.175 L_2_7 + 16.065 L_3_7 + 1.17 L_4_7
   <= 540
 Time_constraint: 1000 x_0_0_8 + 40 x_0_1_8 + 40 x_0_2_8 + 39 x_0_3_8
   + 45 x_0_4_8 + 39 x_1_0_8 + 1000 x_1_1_8 + x_1_2_8 + 7 x_1_3_8
   + 19 x_1_4_8 + 38 x_2_0_8 + x_2_1_8 + 1000 x_2_2_8 + 7 x_2_3_8
   + 20 x_2_4_8 + 39 x_3_0_8 + 6 x_3_1_8 + 6 x_3_2_8 + 1000 x_3_3_8
   + 26 x_3_4_8 + 44 x_4_0_8 + 21 x_4_1_8 + 20 x_4_2_8 + 26 x_4_3_8
   + 1000 x_4_4_8 + 14.685 L_1_8 + 2.175 L_2_8 + 16.065 L_3_8 + 1.17 L_4_8
   <= 540
 Weight_Capacity: 456.006 L_1_0 + 40.905 L_2_0 + 348.1266667 L_3_0
   + 57.984 L_4_0 <= 4500
 Weight_Capacity: 456.006 L_1_1 + 40.905 L_2_1 + 348.1266667 L_3_1
   + 57.984 L_4_1 <= 4500
 Weight_Capacity: 456.006 L_1_2 + 40.905 L_2_2 + 348.1266667 L_3_2
   + 57.984 L_4_2 <= 4500
 Weight_Capacity: 456.006 L_1_3 + 40.905 L_2_3 + 348.1266667 L_3_3
   + 57.984 L_4_3 <= 4500
 Weight_Capacity: 456.006 L_1_4 + 40.905 L_2_4 + 348.1266667 L_3_4
   + 57.984 L_4_4 <= 4500
 Weight_Capacity: 456.006 L_1_5 + 40.905 L_2_5 + 348.1266667 L_3_5
   + 57.984 L_4_5 <= 4500
 Weight_Capacity: 456.006 L_1_6 + 40.905 L_2_6 + 348.1266667 L_3_6
   + 57.984 L_4_6 <= 4500
 Weight_Capacity: 456.006 L_1_7 + 40.905 L_2_7 + 348.1266667 L_3_7
   + 57.984 L_4_7 <= 4500
 Weight_Capacity: 456.006 L_1_8 + 40.905 L_2_8 + 348.1266667 L_3_8
   + 57.984 L_4_8 <= 4500
 Volume_Capacity: 0.979 L_1_0 + 0.145 L_2_0 + 1.071 L_3_0 + 0.078 L_4_0
   <= 9
 Volume_Capacity: 0.979 L_1_1 + 0.145 L_2_1 + 1.071 L_3_1 + 0.078 L_4_1
   <= 9
 Volume_Capacity: 0.979 L_1_2 + 0.145 L_2_2 + 1.071 L_3_2 + 0.078 L_4_2
   <= 9
 Volume_Capacity: 0.979 L_1_3 + 0.145 L_2_3 + 1.071 L_3_3 + 0.078 L_4_3
   <= 9
 Volume_Capacity: 0.979 L_1_4 + 0.145 L_2_4 + 1.071 L_3_4 + 0.078 L_4_4
   <= 9
 Volume_Capacity: 0.979 L_1_5 + 0.145 L_2_5 + 1.071 L_3_5 + 0.078 L_4_5
   <= 9
 Volume_Capacity: 0.979 L_1_6 + 0.145 L_2_6 + 1.071 L_3_6 + 0.078 L_4_6
   <= 9
 Volume_Capacity: 0.979 L_1_7 + 0.145 L_2_7 + 1.071 L_3_7 + 0.078 L_4_7
   <= 9
 Volume_Capacity: 0.979 L_1_8 + 0.145 L_2_8 + 1.071 L_3_8 + 0.078 L_4_8
   <= 9
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_2_0
   + 6 x_1_2_1 + 6 x_1_2_2 + 6 x_1_2_3 + 6 x_1_2_4 + 6 x_1_2_5 + 6 x_1_2_6
   + 6 x_1_2_7 + 6 x_1_2_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_3_0
   + 6 x_1_3_1 + 6 x_1_3_2 + 6 x_1_3_3 + 6 x_1_3_4 + 6 x_1_3_5 + 6 x_1_3_6
   + 6 x_1_3_7 + 6 x_1_3_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_4_0
   + 6 x_1_4_1 + 6 x_1_4_2 + 6 x_1_4_3 + 6 x_1_4_4 + 6 x_1_4_5 + 6 x_1_4_6
   + 6 x_1_4_7 + 6 x_1_4_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_1_5_0
   + 6 x_1_5_1 + 6 x_1_5_2 + 6 x_1_5_3 + 6 x_1_5_4 + 6 x_1_5_5 + 6 x_1_5_6
   + 6 x_1_5_7 + 6 x_1_5_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_1_0
   + 6 x_2_1_1 + 6 x_2_1_2 + 6 x_2_1_3 + 6 x_2_1_4 + 6 x_2_1_5 + 6 x_2_1_6
   + 6 x_2_1_7 + 6 x_2_1_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_3_0
   + 6 x_2_3_1 + 6 x_2_3_2 + 6 x_2_3_3 + 6 x_2_3_4 + 6 x_2_3_5 + 6 x_2_3_6
   + 6 x_2_3_7 + 6 x_2_3_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_4_0
   + 6 x_2_4_1 + 6 x_2_4_2 + 6 x_2_4_3 + 6 x_2_4_4 + 6 x_2_4_5 + 6 x_2_4_6
   + 6 x_2_4_7 + 6 x_2_4_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_2_5_0
   + 6 x_2_5_1 + 6 x_2_5_2 + 6 x_2_5_3 + 6 x_2_5_4 + 6 x_2_5_5 + 6 x_2_5_6
   + 6 x_2_5_7 + 6 x_2_5_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_1_0
   + 6 x_3_1_1 + 6 x_3_1_2 + 6 x_3_1_3 + 6 x_3_1_4 + 6 x_3_1_5 + 6 x_3_1_6
   + 6 x_3_1_7 + 6 x_3_1_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_2_0
   + 6 x_3_2_1 + 6 x_3_2_2 + 6 x_3_2_3 + 6 x_3_2_4 + 6 x_3_2_5 + 6 x_3_2_6
   + 6 x_3_2_7 + 6 x_3_2_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_4_0
   + 6 x_3_4_1 + 6 x_3_4_2 + 6 x_3_4_3 + 6 x_3_4_4 + 6 x_3_4_5 + 6 x_3_4_6
   + 6 x_3_4_7 + 6 x_3_4_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_3_5_0
   + 6 x_3_5_1 + 6 x_3_5_2 + 6 x_3_5_3 + 6 x_3_5_4 + 6 x_3_5_5 + 6 x_3_5_6
   + 6 x_3_5_7 + 6 x_3_5_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_1_0
   + 6 x_4_1_1 + 6 x_4_1_2 + 6 x_4_1_3 + 6 x_4_1_4 + 6 x_4_1_5 + 6 x_4_1_6
   + 6 x_4_1_7 + 6 x_4_1_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_2_0
   + 6 x_4_2_1 + 6 x_4_2_2 + 6 x_4_2_3 + 6 x_4_2_4 + 6 x_4_2_5 + 6 x_4_2_6
   + 6 x_4_2_7 + 6 x_4_2_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_3_0
   + 6 x_4_3_1 + 6 x_4_3_2 + 6 x_4_3_3 + 6 x_4_3_4 + 6 x_4_3_5 + 6 x_4_3_6
   + 6 x_4_3_7 + 6 x_4_3_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_4_5_0
   + 6 x_4_5_1 + 6 x_4_5_2 + 6 x_4_5_3 + 6 x_4_5_4 + 6 x_4_5_5 + 6 x_4_5_6
   + 6 x_4_5_7 + 6 x_4_5_8 + u_[Lgurobi.GRBVar;@7cd84586
   - u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_1_0
   + 6 x_5_1_1 + 6 x_5_1_2 + 6 x_5_1_3 + 6 x_5_1_4 + 6 x_5_1_5 + 6 x_5_1_6
   + 6 x_5_1_7 + 6 x_5_1_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_2_0
   + 6 x_5_2_1 + 6 x_5_2_2 + 6 x_5_2_3 + 6 x_5_2_4 + 6 x_5_2_5 + 6 x_5_2_6
   + 6 x_5_2_7 + 6 x_5_2_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_3_0
   + 6 x_5_3_1 + 6 x_5_3_2 + 6 x_5_3_3 + 6 x_5_3_4 + 6 x_5_3_5 + 6 x_5_3_6
   + 6 x_5_3_7 + 6 x_5_3_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
 If_vehicle_k_comes_to_j_then_it_must_departure_from_j.: 6 x_5_4_0
   + 6 x_5_4_1 + 6 x_5_4_2 + 6 x_5_4_3 + 6 x_5_4_4 + 6 x_5_4_5 + 6 x_5_4_6
   + 6 x_5_4_7 + 6 x_5_4_8 - u_[Lgurobi.GRBVar;@7cd84586
   + u_[Lgurobi.GRBVar;@7cd84586 <= 5
Bounds
 u_[Lgurobi.GRBVar;@7cd84586 <= 7
 u_[Lgurobi.GRBVar;@7cd84586 <= 7
 u_[Lgurobi.GRBVar;@7cd84586 <= 7
 u_[Lgurobi.GRBVar;@7cd84586 <= 7
 u_[Lgurobi.GRBVar;@7cd84586 <= 7
 u_[Lgurobi.GRBVar;@7cd84586 <= 7
Binaries
 x_0_0_0 x_0_0_1 x_0_0_2 x_0_0_3 x_0_0_4 x_0_0_5 x_0_0_6 x_0_0_7 x_0_0_8
 x_0_1_0 x_0_1_1 x_0_1_2 x_0_1_3 x_0_1_4 x_0_1_5 x_0_1_6 x_0_1_7 x_0_1_8
 x_0_2_0 x_0_2_1 x_0_2_2 x_0_2_3 x_0_2_4 x_0_2_5 x_0_2_6 x_0_2_7 x_0_2_8
 x_0_3_0 x_0_3_1 x_0_3_2 x_0_3_3 x_0_3_4 x_0_3_5 x_0_3_6 x_0_3_7 x_0_3_8
 x_0_4_0 x_0_4_1 x_0_4_2 x_0_4_3 x_0_4_4 x_0_4_5 x_0_4_6 x_0_4_7 x_0_4_8
 x_0_5_0 x_0_5_1 x_0_5_2 x_0_5_3 x_0_5_4 x_0_5_5 x_0_5_6 x_0_5_7 x_0_5_8
 x_1_0_0 x_1_0_1 x_1_0_2 x_1_0_3 x_1_0_4 x_1_0_5 x_1_0_6 x_1_0_7 x_1_0_8
 x_1_1_0 x_1_1_1 x_1_1_2 x_1_1_3 x_1_1_4 x_1_1_5 x_1_1_6 x_1_1_7 x_1_1_8
 x_1_2_0 x_1_2_1 x_1_2_2 x_1_2_3 x_1_2_4 x_1_2_5 x_1_2_6 x_1_2_7 x_1_2_8
 x_1_3_0 x_1_3_1 x_1_3_2 x_1_3_3 x_1_3_4 x_1_3_5 x_1_3_6 x_1_3_7 x_1_3_8
 x_1_4_0 x_1_4_1 x_1_4_2 x_1_4_3 x_1_4_4 x_1_4_5 x_1_4_6 x_1_4_7 x_1_4_8
 x_1_5_0 x_1_5_1 x_1_5_2 x_1_5_3 x_1_5_4 x_1_5_5 x_1_5_6 x_1_5_7 x_1_5_8
 x_2_0_0 x_2_0_1 x_2_0_2 x_2_0_3 x_2_0_4 x_2_0_5 x_2_0_6 x_2_0_7 x_2_0_8
 x_2_1_0 x_2_1_1 x_2_1_2 x_2_1_3 x_2_1_4 x_2_1_5 x_2_1_6 x_2_1_7 x_2_1_8
 x_2_2_0 x_2_2_1 x_2_2_2 x_2_2_3 x_2_2_4 x_2_2_5 x_2_2_6 x_2_2_7 x_2_2_8
 x_2_3_0 x_2_3_1 x_2_3_2 x_2_3_3 x_2_3_4 x_2_3_5 x_2_3_6 x_2_3_7 x_2_3_8
 x_2_4_0 x_2_4_1 x_2_4_2 x_2_4_3 x_2_4_4 x_2_4_5 x_2_4_6 x_2_4_7 x_2_4_8
 x_2_5_0 x_2_5_1 x_2_5_2 x_2_5_3 x_2_5_4 x_2_5_5 x_2_5_6 x_2_5_7 x_2_5_8
 x_3_0_0 x_3_0_1 x_3_0_2 x_3_0_3 x_3_0_4 x_3_0_5 x_3_0_6 x_3_0_7 x_3_0_8
 x_3_1_0 x_3_1_1 x_3_1_2 x_3_1_3 x_3_1_4 x_3_1_5 x_3_1_6 x_3_1_7 x_3_1_8
 x_3_2_0 x_3_2_1 x_3_2_2 x_3_2_3 x_3_2_4 x_3_2_5 x_3_2_6 x_3_2_7 x_3_2_8
 x_3_3_0 x_3_3_1 x_3_3_2 x_3_3_3 x_3_3_4 x_3_3_5 x_3_3_6 x_3_3_7 x_3_3_8
 x_3_4_0 x_3_4_1 x_3_4_2 x_3_4_3 x_3_4_4 x_3_4_5 x_3_4_6 x_3_4_7 x_3_4_8
 x_3_5_0 x_3_5_1 x_3_5_2 x_3_5_3 x_3_5_4 x_3_5_5 x_3_5_6 x_3_5_7 x_3_5_8
 x_4_0_0 x_4_0_1 x_4_0_2 x_4_0_3 x_4_0_4 x_4_0_5 x_4_0_6 x_4_0_7 x_4_0_8
 x_4_1_0 x_4_1_1 x_4_1_2 x_4_1_3 x_4_1_4 x_4_1_5 x_4_1_6 x_4_1_7 x_4_1_8
 x_4_2_0 x_4_2_1 x_4_2_2 x_4_2_3 x_4_2_4 x_4_2_5 x_4_2_6 x_4_2_7 x_4_2_8
 x_4_3_0 x_4_3_1 x_4_3_2 x_4_3_3 x_4_3_4 x_4_3_5 x_4_3_6 x_4_3_7 x_4_3_8
 x_4_4_0 x_4_4_1 x_4_4_2 x_4_4_3 x_4_4_4 x_4_4_5 x_4_4_6 x_4_4_7 x_4_4_8
 x_4_5_0 x_4_5_1 x_4_5_2 x_4_5_3 x_4_5_4 x_4_5_5 x_4_5_6 x_4_5_7 x_4_5_8
 x_5_0_0 x_5_0_1 x_5_0_2 x_5_0_3 x_5_0_4 x_5_0_5 x_5_0_6 x_5_0_7 x_5_0_8
 x_5_1_0 x_5_1_1 x_5_1_2 x_5_1_3 x_5_1_4 x_5_1_5 x_5_1_6 x_5_1_7 x_5_1_8
 x_5_2_0 x_5_2_1 x_5_2_2 x_5_2_3 x_5_2_4 x_5_2_5 x_5_2_6 x_5_2_7 x_5_2_8
 x_5_3_0 x_5_3_1 x_5_3_2 x_5_3_3 x_5_3_4 x_5_3_5 x_5_3_6 x_5_3_7 x_5_3_8
 x_5_4_0 x_5_4_1 x_5_4_2 x_5_4_3 x_5_4_4 x_5_4_5 x_5_4_6 x_5_4_7 x_5_4_8
 x_5_5_0 x_5_5_1 x_5_5_2 x_5_5_3 x_5_5_4 x_5_5_5 x_5_5_6 x_5_5_7 x_5_5_8
 L_0_0 L_0_1 L_0_2 L_0_3 L_0_4 L_0_5 L_0_6 L_0_7 L_0_8 L_1_0 L_1_1 L_1_2
 L_1_3 L_1_4 L_1_5 L_1_6 L_1_7 L_1_8 L_2_0 L_2_1 L_2_2 L_2_3 L_2_4 L_2_5
 L_2_6 L_2_7 L_2_8 L_3_0 L_3_1 L_3_2 L_3_3 L_3_4 L_3_5 L_3_6 L_3_7 L_3_8
 L_4_0 L_4_1 L_4_2 L_4_3 L_4_4 L_4_5 L_4_6 L_4_7 L_4_8 L_5_0 L_5_1 L_5_2
 L_5_3 L_5_4 L_5_5 L_5_6 L_5_7 L_5_8 y_0 y_1 y_2 y_3 y_4 y_5 y_6 y_7 y_8
Generals
 u_[Lgurobi.GRBVar;@7cd84586 u_[Lgurobi.GRBVar;@7cd84586
 u_[Lgurobi.GRBVar;@7cd84586 u_[Lgurobi.GRBVar;@7cd84586
 u_[Lgurobi.GRBVar;@7cd84586 u_[Lgurobi.GRBVar;@7cd84586
End
