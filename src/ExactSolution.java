import gurobi.*;

import java.nio.channels.Pipe;
import java.util.ArrayList;

public class ExactSolution {
    private Data data;
    public ArrayList<ArrayList<Point>> routeOfTrucks= new ArrayList<ArrayList<Point>>();

    ExactSolution(Data data) {
        this.data = data;
    }

    public ArrayList<ArrayList<Point>> solveExact() {
        try {
            GRBEnv env = new GRBEnv("VRP.log");
            GRBModel model = new GRBModel(env);
            int N = data.sapLocations.length;
            int K = data.vehiclePlates.length;
            int[][] routeMatrix;

            //---------
            //DVs
            GRBVar[][][] x = new GRBVar[N][N][K];
            GRBVar[] y = new GRBVar[K];
            GRBVar[][] z = new GRBVar[N][K];
            GRBVar[] u = new GRBVar[N];

            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    for (int k = 0; k < K; k++) {
                        x[i][j][k] = model.addVar(0, 1, 0, GRB.BINARY, "x_" + i + "_" + j + "_" + k);
                    }
                }
            }
            for (int j = 0; j < N; j++) {
                for (int k = 0; k < K; k++) {
                    z[j][k] = model.addVar(0, 1, 0, GRB.BINARY, "L_" + j + "_" + k);
                }
            }
            for (int k = 0; k < K; k++) {
                y[k] = model.addVar(0, 1, 0, GRB.BINARY, "y_" + k);
            }
            for (int i = 0; i < N; i++) {
                u[i] = model.addVar(0, N + 1, 0, GRB.INTEGER, "u_" + u);
            }


            //---------
            //OBJECTIVE [0]
            GRBLinExpr exprObj1 = new GRBLinExpr();
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    for (int k = 0; k < K; k++) {
                        // exprObj1.addTerm(data.c * data.distance[i][j], x[i][j][k]);
                        exprObj1.addTerm(data.distance[i][j], x[i][j][k]);
                    }
                }
            }
           /* GRBLinExpr exprObj2 = new GRBLinExpr();
            for (int k = 0; k < K; k++) {
                exprObj2.addTerm(data.fixedCost, y[k]);
            }
            exprObj1.add(exprObj2);*/
            model.setObjective(exprObj1, GRB.MINIMIZE);


            //---------
            //S.T.

            //Constraint [1]
            GRBLinExpr[] exprL = new GRBLinExpr[N];
            for (int j = 1; j < N; j++) {
                exprL[j] = new GRBLinExpr();
                for (int k = 0; k < K; k++) {
                    exprL[j].addTerm(1, z[j][k]);
                }
            }
            for (int j = 1; j < N; j++) {
                model.addConstr(exprL[j], GRB.EQUAL, 1, "All Orders must be loaded!");
            }

            //Constraint [2]
            GRBLinExpr[][] exprLminus = new GRBLinExpr[N][K];
            for (int j = 1; j < N; j++) {
                for (int k = 0; k < K; k++) {
                    exprLminus[j][k] = new GRBLinExpr();
                    exprLminus[j][k].addTerm(-1, z[j][k]);
                }
            }
            GRBLinExpr[][] expr2 = new GRBLinExpr[N][K];
            for (int k = 0; k < K; k++) {
                for (int j = 1; j < N; j++) {
                    expr2[j][k] = new GRBLinExpr();
                    for (int i = 0; i < N; i++) {
                        expr2[j][k].addTerm(1, x[i][j][k]);
                    }
                }
            }

            for (int j = 1; j < N; j++) {
                for (int k = 0; k < K; k++) {
                    expr2[j][k].add(exprLminus[j][k]);
                    model.addConstr(expr2[j][k], GRB.EQUAL, 0, "If orders of j loaded on vehicle k, then k  must visit location j.");
                }
            }


            //Constraint [3]
            GRBLinExpr[][] expr3_1 = new GRBLinExpr[N][K];
            for (int k = 0; k < K; k++) {
                for (int j = 0; j < N; j++) {
                    expr3_1[j][k] = new GRBLinExpr();
                    for (int i = 0; i < N; i++) {
                        expr3_1[j][k].addTerm(1, x[i][j][k]);
                    }
                }
            }
            GRBLinExpr[][] expr3_2 = new GRBLinExpr[N][K];
            for (int k = 0; k < K; k++) {
                for (int j = 0; j < N; j++) {
                    expr3_2[j][k] = new GRBLinExpr();
                    for (int i = 0; i < N; i++) {
                        expr3_2[j][k].addTerm(-1, x[j][i][k]);
                    }
                }
            }
            for (int j = 0; j < N; j++) {
                for (int k = 0; k < K; k++) {
                    expr3_1[j][k].add(expr3_2[j][k]);
                    model.addConstr(expr3_1[j][k], GRB.EQUAL, 0, "If vehicle k comes to j then it must departure from j.");
                }
            }


            //Constraint [4]
            GRBLinExpr[] expr4_1 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr4_1[k] = new GRBLinExpr();
                for (int j = 1; j < N; j++) {
                    expr4_1[k].addTerm(1, z[j][k]);
                }
            }
            GRBLinExpr[] expr4_2 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr4_2[k] = new GRBLinExpr();
                expr4_2[k].addTerm(-(data.Cmax), y[k]);
            }

            for (int k = 0; k < K; k++) {
                expr4_1[k].add(expr4_2[k]);
                model.addConstr(expr4_1[k], GRB.LESS_EQUAL, 0, "If truck k is loaded then it must be used!");
            }


            //Constraint [5] Alternative 1
            GRBLinExpr expr5_1[] = new GRBLinExpr[K];

            for (int k = 0; k < K; k++) {
                expr5_1[k] = new GRBLinExpr();
                for (int j = 1; j < N; j++) {
                    expr5_1[k].addTerm(1, x[0][j][k]);
                }
            }
            for (int k = 0; k < K; k++) {
                model.addConstr(expr5_1[k], GRB.EQUAL, y[k], "Max number of departures from 0");
            }


            //Constraint [6]
            /*GRBLinExpr[] expr6 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr6[k] = new GRBLinExpr();
                for (int j = 1; j < N; j++) {
                    expr6[k].addTerm(1, z[j][k]);
                }
            }
            for (int k = 0; k < K; k++) {
                model.addConstr(expr6[k], GRB.LESS_EQUAL, data.Cmax, "Max number of customer");
            }*/


            //Constraint [7]
            GRBLinExpr[] expr7_1 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr7_1[k] = new GRBLinExpr();
                for (int i = 0; i < N; i++) {
                    for (int j = 0; j < N; j++) {
                        expr7_1[k].addTerm(data.duration[i][j], x[i][j][k]);
                    }
                }
            }
            GRBLinExpr[] expr7_2 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr7_2[k] = new GRBLinExpr();
                for (int j = 1; j < N; j++) {
                    expr7_2[k].addTerm(data.tu[j], z[j][k]);
                }
            }
            for (int k = 0; k < K; k++) {
                expr7_1[k].add(expr7_2[k]);
                model.addConstr(expr7_1[k], GRB.LESS_EQUAL, data.T, "Time constraint");
            }


            //Constraint [8]
            GRBLinExpr[] expr8 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr8[k] = new GRBLinExpr();
                for (int j = 1; j < N; j++) {
                    expr8[k].addTerm(data.weight[j], z[j][k]);
                }
            }
            for (int k = 0; k < K; k++) {
                model.addConstr(expr8[k], GRB.LESS_EQUAL, data.weightCapacity[k], "Weight Capacity");
            }


            //Constraint [9]
            GRBLinExpr[] expr9 = new GRBLinExpr[K];
            for (int k = 0; k < K; k++) {
                expr9[k] = new GRBLinExpr();
                for (int j = 1; j < N; j++) {
                    expr9[k].addTerm(data.volume[j], z[j][k]);
                }
            }
            for (int k = 0; k < K; k++) {
                model.addConstr(expr9[k], GRB.LESS_EQUAL, data.volumeCapacity[k], "Volume Capacity");
            }


            //Constraint [10]  --SUBTOUR ELIMINATON for (i j)  !!!
            GRBLinExpr[][] expr10_1 = new GRBLinExpr[N][N];
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    if (i != j) {
                        expr10_1[i][j] = new GRBLinExpr();
                        expr10_1[i][j].addTerm(1, u[i]);

                    }
                }
            }
            GRBLinExpr[][] expr10_2 = new GRBLinExpr[N][N];
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    if (i != j) {
                        expr10_2[i][j] = new GRBLinExpr();
                        expr10_2[i][j].addTerm(-1, u[j]);
                    }
                }
            }
            GRBLinExpr[][] expr10_3 = new GRBLinExpr[N][N];
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    expr10_3[i][j] = new GRBLinExpr();
                    for (int k = 0; k < K; k++) {
                        if (i != j) {
                            expr10_3[i][j].addTerm(N, x[i][j][k]);
                        }
                    }
                }
            }
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    if (i != j) {
                        expr10_2[i][j].add(expr10_3[i][j]);
                        expr10_1[i][j].add(expr10_2[i][j]);
                        model.addConstr(expr10_1[i][j], GRB.LESS_EQUAL, N - 1, "If vehicle k comes to j then it must departure from j.");
                    }
                }
            }

            model.write("vrp_12test.lp");
            model.optimize();

            //Writing solution matrix of Xij for each vehicle k
            System.out.println();

            for (int k = 0; k < K; k++) {
                //if(y[k].get(GRB.DoubleAttr.X)==1.0){
                    ArrayList<Point> arr = new ArrayList<Point>();
                    routeOfTrucks.add(arr);
                    routeMatrix = new int[N][N];
                   // System.out.println("Xij Matrix of vehicle " + (k+1) + ": ");
                    for (int i = 0; i < N; i++) {
                        for (int j = 0; j < N; j++) {
                            int value = (int) Math.round(x[i][j][k].get(GRB.DoubleAttr.X));
                           // System.out.print(value);
                            routeMatrix[i][j] = value;

                           /* if (j != (N - 1)) {
                                System.out.print(",");
                            }*/
                        }
                        System.out.println();
                    }
                    getRoute(routeMatrix,0,k+1);
                   // System.out.println("------------------");
                //}
            }
            //Write route of each truck
            for (int k = 0; k < K; k++){
                System.out.print("Route of vehicle " + (k+1) + "(with correct order): ");
                for(int i=0;i<routeOfTrucks.get(k).size();i++){
                    System.out.print( routeOfTrucks.get(k).get(i).getID());
                    if (i != (routeOfTrucks.get(k).size() - 1)) {
                        System.out.print(",");
                    }
                }
                System.out.println();
            }
            System.out.println();

            //Writing Yk
            System.out.println("Is vehicle k is used? (Yk)");
            for (int k = 0; k < K; k++) {
                System.out.print("Y" + (k + 1) + ": ");
                int value = (int) Math.round(y[k].get(GRB.DoubleAttr.X));
                System.out.println(value);
            }
            System.out.println(N);

            //Writing order load of each truck k - Ljk
            for (int k = 0; k < K; k++) {
                if(y[k].get(GRB.DoubleAttr.X)==1.0){
                    System.out.print("Truck " + (k + 1) + " will go (not route!): ");
                    for (int j = 0; j < N; j++) {
                        if (z[j][k].get(GRB.DoubleAttr.X) == 1.0) {
                            //System.out.print(j + "(" + data.indicesOfLocations.get(j) + ")" + "-");
                            System.out.print(data.locations[j].getID()+" ");
                        }
                    }
                    System.out.println();
                }
            }
            System.out.println();

            //Writing vehicles info - distance - duration - weight - volume
            double[] distanceOf = new double[K];
            double[] durationOf = new double[K];
            double[] loadedWeightOf = new double[K];
            double[] loadedVolumeOf = new double[K];
            double objectiveValue = 0;

            for (int k = 0; k < K; k++) {
                if(y[k].get(GRB.DoubleAttr.X)==1.0){
                    for (int i = 0; i < N; i++) {
                        for (int j = 0; j < N; j++) {
                            distanceOf[k] = distanceOf[k] + data.distance[i][j] * (x[i][j][k].get(GRB.DoubleAttr.X));
                            durationOf[k] = durationOf[k] + (data.duration[i][j] * (x[i][j][k].get(GRB.DoubleAttr.X)));
                            objectiveValue = objectiveValue + data.distance[i][j] * x[i][j][k].get(GRB.DoubleAttr.X);
                        }
                        durationOf[k] = durationOf[k] + (data.tu[i] * (z[i][k].get(GRB.DoubleAttr.X)));
                        loadedWeightOf[k] = loadedWeightOf[k] + data.weight[i] * z[i][k].get(GRB.DoubleAttr.X);
                        loadedVolumeOf[k] = loadedVolumeOf[k] + data.volume[i] * z[i][k].get(GRB.DoubleAttr.X);
                    }
                }
            }

            for (int k = 0; k < K; k++) {
                if(y[k].get(GRB.DoubleAttr.X)==1.0){
                    System.out.println("Distance of truck " + (k + 1) + " = " + distanceOf[k]);
                    System.out.println("Duration of truck " + (k + 1) + " = " + durationOf[k]);
                    System.out.println("---");
                }
            }

        System.out.println("---------------");
        for (int k = 0; k < K; k++) {
            if(y[k].get(GRB.DoubleAttr.X)==1.0){
                System.out.println("Used weight capacity of truck " + (k + 1) + " = " + loadedWeightOf[k]);
                System.out.println("Used volume capacity of truck " + (k + 1) + " = " + loadedVolumeOf[k]);
                System.out.println("---");
            }
        }

        //writing Data used
        System.out.println("Distance cost = " + data.c);
        System.out.println("fixed cost of using one vehicle = " + data.fixedCost);
        System.out.println("Time limit of each vehicle = " + data.T);
        System.out.println("Max number of customer a vehicle can visit = " + data.Cmax);


        //Writing optimal solution
        System.out.println();
        System.out.println("Optimal: ");
        System.out.println("Z = " + objectiveValue);


        model.dispose();
        env.dispose();

    }

        catch(GRBException e) {
            System.out.println("Error code: " + e.getErrorCode() + ". " +
                    e.getMessage());
        }
        return routeOfTrucks;
    }

    public void getRoute(int[][] routeMatrix, int v,int k){
        routeOfTrucks.get(k-1).add(data.locations[v]);
        //"k-1" OR "k" ?????? !!!!!!
        //System.out.println(k);
        for(int j=0;j<routeMatrix[v].length;j++){
            if(routeMatrix[v][j]==1 && j!=0){

                getRoute(routeMatrix,j,k);
            }
        }
    }

    public double[] solveTSP(){
        double[] objectiveValue = new double[2];
        try {

            GRBEnv env = new GRBEnv("VRP.log");
            GRBModel model = new GRBModel(env);
            int N = data.sapLocations.length;
            int[][] routeMatrix;

            //---------
            //DVs
            GRBVar[][] x = new GRBVar[N][N];
            GRBVar[] u = new GRBVar[N];

            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                        x[i][j] = model.addVar(0, 1, 0, GRB.BINARY, "x_" + i + "_" + j );
                }
            }

            for (int i = 0; i < N; i++) {
                u[i] = model.addVar(0, N + 1, 0, GRB.INTEGER, "u_" + u);
            }


            //---------
            //OBJECTIVE [0]
            GRBLinExpr exprObj1 = new GRBLinExpr();
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                        // exprObj1.addTerm(data.c * data.distance[i][j], x[i][j][k]);
                        exprObj1.addTerm(data.distance[i][j], x[i][j]);
                }
            }
            model.setObjective(exprObj1, GRB.MINIMIZE);


            //---------
            //S.T.

//CONST 1
            GRBLinExpr[] expr1 = new GRBLinExpr[N];
                for (int i = 0; i < N; i++) {
                    expr1[i] = new GRBLinExpr();
                    for (int j = 0; j < N; j++) {
                        if(i!=j){
                            expr1[i].addTerm(1, x[i][j]);
                        }
                    }
                }
            for (int i = 0; i < N; i++) {
                model.addConstr(expr1[i], GRB.EQUAL, 1, "c1");
            }
//CONST2
            GRBLinExpr[] expr2 = new GRBLinExpr[N];
            for (int i = 0; i < N; i++) {
                expr2[i] = new GRBLinExpr();
                for (int j = 0; j < N; j++) {
                    if(i!=j){
                        expr2[i].addTerm(1, x[j][i]);
                    }
                }
            }
            for (int i = 0; i < N; i++) {
                model.addConstr(expr2[i], GRB.EQUAL, 1, "c1");
            }

            //Constraint [10]  --SUBTOUR ELIMINATON for (i j)  !!!
            GRBLinExpr[][] expr10_1 = new GRBLinExpr[N][N];
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    if (i != j) {
                        expr10_1[i][j] = new GRBLinExpr();
                        expr10_1[i][j].addTerm(1, u[i]);

                    }
                }
            }
            GRBLinExpr[][] expr10_2 = new GRBLinExpr[N][N];
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    if (i != j) {
                        expr10_2[i][j] = new GRBLinExpr();
                        expr10_2[i][j].addTerm(-1, u[j]);
                    }
                }
            }
            GRBLinExpr[][] expr10_3 = new GRBLinExpr[N][N];
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    expr10_3[i][j] = new GRBLinExpr();
                        if (i != j) {
                            expr10_3[i][j].addTerm(N, x[i][j]);
                    }
                }
            }
            for (int i = 1; i < N; i++) {
                for (int j = 1; j < N; j++) {
                    if (i != j) {
                        expr10_2[i][j].add(expr10_3[i][j]);
                        expr10_1[i][j].add(expr10_2[i][j]);
                        model.addConstr(expr10_1[i][j], GRB.LESS_EQUAL, N - 1, "If vehicle k comes to j then it must departure from j.");
                    }
                }
            }

            model.write("vrp_12test.lp");
            model.optimize();

            //Writing solution matrix of Xij for each vehicle k
            System.out.println();



                ArrayList<Point> arr = new ArrayList<Point>();
                routeOfTrucks.add(arr);
                routeMatrix = new int[N][N];
                // System.out.println("Xij Matrix of vehicle " + (k+1) + ": ");
                for (int i = 0; i < N; i++) {
                    for (int j = 0; j < N; j++) {
                        int value = (int) Math.round(x[i][j].get(GRB.DoubleAttr.X));
                        // System.out.print(value);
                        routeMatrix[i][j] = value;

                           /* if (j != (N - 1)) {
                                System.out.print(",");
                            }*/
                    }
                    System.out.println();
                }
                getRoute(routeMatrix,0,1);
                // System.out.println("------------------");
                //}

            //Write route of each truck

                System.out.print("Route of vehicle (with correct order): ");
                for(int i=0;i<routeOfTrucks.get(0).size();i++){
                    System.out.print( routeOfTrucks.get(0).get(i).getID());
                    if (i != (routeOfTrucks.get(0).size() - 1)) {
                        System.out.print(",");
                    }
                }
                System.out.println();

                    for (int i = 0; i < N; i++) {
                        for (int j = 0; j < N; j++) {
                            //Distance objective:
                             objectiveValue[0] += data.distance[i][j] * x[i][j].get(GRB.DoubleAttr.X);
                            //Duration objective:
                            objectiveValue[1] = objectiveValue[1] + data.duration[i][j] * x[i][j].get(GRB.DoubleAttr.X) + data.tu[j]* x[i][j].get(GRB.DoubleAttr.X);
                        }
                    }

            model.dispose();
            env.dispose();

        }

        catch(GRBException e) {
            System.out.println("Error code: " + e.getErrorCode() + ". " +
                    e.getMessage());
        }
        return objectiveValue;
    }


}
