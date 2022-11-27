import java.io.*;
import java.util.ArrayList;
import java.util.Random;

public class App {


    public static void main(String[] args) throws Exception {
         for(int i=0;i<40;i++){
        testSolver();
         }

        //CLUSTER:
        //heuristic1.capacitatedClusterTSP(data);

 /*
//Unlimited CLustering
        ArrayList<Data> dataList = new ArrayList<Data>();
        dataList = heuristic1.createClusterData(heuristic1.unlimitedClustering(4), data);
        //SOLVE EXACT FOR EACH CLUSTER:
        ArrayList<ArrayList<ArrayList<Point>>> sList = new ArrayList<ArrayList<ArrayList<Point>>>();
        double[] tspDist = new double[4];

        for (int i = 0; i < dataList.size(); i++) {
            if (dataList.get(i).locations.length > 1) {
                //System.out.println("Cluster "+i);
                ArrayList<ArrayList<Point>> tempList = new ArrayList<ArrayList<Point>>();
                sList.add(tempList);
                ExactSolution exactsolution = new ExactSolution(dataList.get(i));
          //           tempList = exactsolution.solveExact();
       //         sList.add(tempList);
                tspDist[i] = exactsolution.solveTSP();
            }
        }
//Unlimited CLustering - END
    */


//???
        //Maps maps = new Maps(data);
        //float[][][] m = maps.getMatrix();


//Write Outputs and etc.
        String filePathLimited = "./outputs/OutputLimited.csv";
        String filePathUnlimited = "./outputs/OutputUnlimited.csv";
        String filePathTimeMatrix = "./outputs/TimeMatrix.csv";
        String filePathDistanceMatrix = "./outputs/DistanceMatrix.csv";
        String filePathRoutes = "./outputs/Routes.csv";
        String filePathSolution = "./outputs/Solution.csv";
        String filePathClusterAnalysis = "./outputs/Cluster_analysis.csv";

        //  write.writeClusterAnalysis(dataList, tspDist, filePathClusterAnalysis);

        //write.writeSolutionData(sList, filePathSolution);
        //write.writePointData(heuristic1.limitedClustering(4,12), filePathLimited);
        //write.writePointData(heuristic1.unlimitedClustering(), filePathUnlimited);
        //write.writeMatrix(m[0], filePathTimeMatrix);
        //write.writeMatrix(m[1], filePathDistanceMatrix);
        //writeRoutes(maps.getTimeMatrix(), filePathTimeMatrix);
    }


    private static void testSolver(){
       // Data data = readData();
        Data data = createRandomData();
        System.out.println(data.n);
        System.out.println(data.distance[0][1]);

        Heuristic heuristic1 = new Heuristic(data);

        //EXACT SOL. from 401
        double start_timeExact = System.currentTimeMillis();
        ExactSolution exactsolution2 = new ExactSolution(data);
       // exactsolution2.solveExact();
        double end_timeExact = System.currentTimeMillis();
        // long timeExact = (end_timeExact - start_timeExact)/1000;
        double timeExact = (end_timeExact - start_timeExact)/1000;
        double optimalFromExact = exactsolution2.objectiveValueOfVRP;
        int routeNumberExact = exactsolution2.numberOfVehiclesUsed;


        System.out.println("----------------------------------------");
        System.out.println("=============CLARKE & WRIGHT !!!=============");

        //CLARKE & WRIGHT
        double start_timeCW = System.currentTimeMillis();
        ClarkeAndWright2 cW = new ClarkeAndWright2(data);
        cW.solveClarkeAndWright();
        double end_timeCW = System.currentTimeMillis();
        double timeCW = (end_timeCW - start_timeCW)/1000;
        double optimalFromCW = cW.netObjective;
        int routeNumberCW = cW.cList.size();
        double z = 0;


        //CLARK & WRIGHT --> TSP
        double start_timeTSP = System.currentTimeMillis();
        ArrayList<Data> dataListForCW = new ArrayList<Data>();
        dataListForCW = heuristic1.createTSPData(cW.cList,data);

        for(int i=0;i<dataListForCW.size();i++){
            ExactSolution exactsolutionCW = new ExactSolution(dataListForCW.get(i));
            z = z+ exactsolutionCW.solveTSP()[2];
        }
        System.out.println();
        System.out.println("Objective is " + z);
        double end_timeTSP = System.currentTimeMillis();
        double timeTSP = (end_timeTSP - start_timeTSP)/1000;
        double optimalFromCW_TSP = z;

        // String filePathRandomDataAnalysis = "./outputs/Random_Data_Analysis.csv";
        String filePathRandomDataAnalysis = "./outputs/Random_Data_Analysis_WH_is_out.csv";
        WriteOperations write = new WriteOperations();
        write.writeRandomCW_TSP_Solutions(data, filePathRandomDataAnalysis,
                optimalFromExact, optimalFromCW,optimalFromCW_TSP, routeNumberExact, routeNumberCW,
                timeExact,timeCW,timeTSP);
    }


    private static Data readData() {
        int n=8;
        int k=8;
        int wc=4500;
        int vc=9;

        Data data = new Data();
        data.locations = new Point[n+1];
        data.n = n;
        data.k = k;
        data.distance = new double[n+1][n+1];
        data.duration = new double[n+1][n+1];
        data.tu = new double[n+1];
        data.weightCapacity = new double[k];
        data.volumeCapacity = new double[k];
        data.weight = new double[n+1];
        data.volume = new double[n+1];
        data.sapLocations = new String[n+1];
        data.vehiclePlates = new String[k];

        FileReader fileReader1;
        FileReader fileReader2;
        FileReader fileReader3;
        FileReader fileReader4;
        FileReader fileReader5;

        try {
            fileReader1 = new FileReader("./outputs/DistanceMatrix.csv");
            fileReader2 = new FileReader("./outputs/TimeMatrix.csv");
            fileReader3 = new FileReader("./data/orders_40_customer_manipulated.csv");
            fileReader4 = new FileReader("./data/vehicles_40_customer.csv");
            fileReader5 = new FileReader("./data/locations.csv");

            BufferedReader bufferedReader1=new BufferedReader(fileReader1);
            BufferedReader bufferedReader2=new BufferedReader(fileReader2);
            BufferedReader bufferedReader3=new BufferedReader(fileReader3);
            BufferedReader bufferedReader4=new BufferedReader(fileReader4);
            BufferedReader bufferedReader5=new BufferedReader(fileReader5);

            for(int i=0;i<(data.n+1);i++){
                String Locations = bufferedReader5.readLine();
                String[] LocationCells = Locations.split(",");
                data.locations[i]= new Point(Double.parseDouble(LocationCells[2]), Double.parseDouble(LocationCells[3]), (Integer.parseInt(LocationCells[1]))-1);
            }

            //READING DISTANCE DATA //
            //Real distance
            for(int i=0;i<data.distance.length;i++){
                String DistanceLine=bufferedReader1.readLine();
                String[] DistanceCells=DistanceLine.split(",");
                for(int j=0;j<data.distance.length;j++){
                    data.distance[i][j] = Double.parseDouble(DistanceCells[j]);
                }
            }

       /*     //Euclidean distance
             for(int i=0;i<n+1;i++){
            for(int j=0;j<n+1;j++){
                if(i==j){
                    data.distance[i][j] = 100000;
                }else{
                    double distX = 72.2 * (data.locations[i].getX() - data.locations[j].getX());
                    double distY = 111 * (data.locations[i].getY() - data.locations[j].getY());
                    data.distance[i][j] =  Math.sqrt(distX*distX + distY*distY);
                }
            }
        }*/

            //READING ORDERS DATA //orders,locations...
            data.sapLocations[0]="SP_1000";
            data.indicesOfLocations.put(0,"SP_1000");

            for(int i=1;i<data.sapLocations.length;i++){
                String OrderLine = bufferedReader3.readLine();
                String[] OrderCells = OrderLine.split(",");
                data.sapLocations[i]=OrderCells[0];
                data.indicesOfLocations.put(i,OrderCells[0]);
                data.weight[i]=Double.parseDouble(OrderCells[1]);
                data.volume[i]=Double.parseDouble(OrderCells[2]);
            }

            /* for(int i=0;i<data.sapLocations.length;i++){
                System.out.print(data.sapLocations[i]+" - ");
                System.out.print(data.indicesOfVehicles.get(i)+" - ");
                System.out.print(data.weight[i]+" - ");
                System.out.print(data.volume[i]+" - ");
                System.out.println();
            }*/

            //READING TIME DATA //
            //Real time
            for(int i=0;i<data.duration.length;i++){
                String DurationLine=bufferedReader2.readLine();
                String[] DurationCells=DurationLine.split(",");
                for(int j=0;j<data.duration.length;j++){
                    data.duration[i][j] = Double.parseDouble(DurationCells[j]);
                }
            }
/*
            //Euclidean time
            for(int i = 0; i<data.duration.length;i++){
                for(int j=0;j<data.duration.length;j++){
                    data.duration[i][j] = 1.5 * data.distance[i][j];
                }
            }*/

            for(int j=1;j<data.sapLocations.length;j++){
                data.tu[j]=data.volume[j]*15;
            }

            //READING VEHICLES DATA
            for(int i=0;i<data.vehiclePlates.length;i++){
                String VehicleLine = bufferedReader4.readLine();
                String[] VehicleCells = VehicleLine.split(",");
                data.vehiclePlates[i]=VehicleCells[0];
                data.indicesOfVehicles.put(i,VehicleCells[0]);
                //data.weightCapacity[i]=Double.parseDouble(VehicleCells[1]);
                //data.volumeCapacity[i]=Double.parseDouble(VehicleCells[2]);
                data.weightCapacity[i]=wc;
                data.volumeCapacity[i]=vc;
            }

        } catch (FileNotFoundException e) {
            System.out.println(e);
        } catch (IOException e) {
            System.out.println(e);
        }
        return data;
    }


    //RANDOM DATA
    private static Data createRandomData(){
        int n=40;
        int k=8;
        int wc=4500;
        int vc=9;

        Data data = new Data();
        data.locations = new Point[n+1];
        data.n = n;
        data.k = k;
        data.distance = new double[n+1][n+1];
        data.duration = new double[n+1][n+1];
        data.tu = new double[n+1];
        data.weightCapacity = new double[k];
        data.volumeCapacity = new double[k];
        data.weight = new double[n+1];
        data.volume = new double[n+1];
        data.sapLocations = new String[n+1];
        data.vehiclePlates = new String[k];

        data.c = 1;

        //Creating LOCATIONS
        /*double x_WH = 40.25+(Math.random()/2);
        double y_WH = 49.25+(Math.random()/2);*/
        double x_WH = 39.90 + (Math.random()/10);
        double y_WH = 49.25 + (Math.random()/2);
        data.locations[0] = new Point(x_WH,y_WH,0);
        String filePathLimited = "./outputs/OutputRandomCoordinates.csv";
        WriteOperations writeOperations = new WriteOperations();
        writeOperations.writeRandomCoordinates(filePathLimited,0,x_WH,y_WH);
        for(int i=1;i<n+1;i++){
            double x = 40 + Math.random();
            double y = 49 + Math.random();
            data.locations[i]= new Point(x,y,i);
            writeOperations.writeRandomCoordinates(filePathLimited,i,x,y);
        }

        //DISTANCE
        for(int i=0;i<n+1;i++){
            for(int j=0;j<n+1;j++){
                if(i==j){
                    data.distance[i][j] = 100000;
                }else{
                    double distX = 72.2 * (data.locations[i].getX() - data.locations[j].getX());
                    double distY = 111 * (data.locations[i].getY() - data.locations[j].getY());
                    data.distance[i][j] =  Math.sqrt(distX*distX + distY*distY);
                }
            }
        }

        //Create random ORDERs
        for(int i=1;i<n+1;i++){
            data.weight[i] = 270 + 600 * Math.random();
            data.volume[i] = 0.798 + 0.59 * Math.random();
            data.tu[i] = data.volume[i]*15;
        }

        for(int i = 0; i<data.duration.length;i++){
            for(int j=0;j<data.duration.length;j++){
                data.duration[i][j] = 2 * data.distance[i][j];
            }
        }

        for(int i=0;i<data.k;i++) {
            data.weightCapacity[i] = wc;
            data.volumeCapacity[i] = vc;
        }


        return data;
    }

}
