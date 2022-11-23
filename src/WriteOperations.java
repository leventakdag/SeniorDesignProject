import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;

public class WriteOperations {

    public static void writeRandomCoordinates(String filePathCoordinates, int i, double x, double y){
        try {
            FileWriter fw = new FileWriter(filePathCoordinates,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);
/*
                pw.print("Point id" + ",");
                pw.print("X" + ",");
                pw.print("Y" + ",");
                pw.println();
*/
            pw.print( i + ",");
            pw.print(x + ",");
            pw.print(y + ",");
            pw.println();

            pw.flush();
            pw.close();
        } catch (Exception E) {

        }
    }

    public static void writeRandomCW_TSP_Solutions(Data data, String filePathCW, double optimalFromExact, double optimalFromCW, double optimalFromCW_TSP,int routeNumberExact,int routeNumberCW, long timeExact,long timeCW, long timeTSP){
        try {
            FileWriter fw = new FileWriter(filePathCW,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);
/*
                pw.print("Number of Nodes" + ",");
                pw.print("Number of Routes in Exact" + ",");
                pw.print("Exact Sol." + ",");
                pw.print("Exact Runtime" + ",");
                pw.print("Number of Routes in C.W." + ",");
                pw.print("C.W. Sol." + ",");
                pw.print("C.W. Runtime" + ",");
                pw.print("C.W.+TSP Sol." + ",");
                pw.print("C.W.+TSP Runtime" + ",");
                pw.println();
*/

            pw.print( data.n + ",");
            pw.print(routeNumberExact + ",");
            pw.print(optimalFromExact + ",");
            pw.print(timeExact + ",");
            pw.print(routeNumberCW + ",");
            pw.print(optimalFromCW + ",");
            pw.print(timeCW + ",");
            pw.print(optimalFromCW_TSP + ",");
            pw.print((timeCW+timeTSP) + ",");

            pw.println();
            System.out.println("-------  -------");
            System.out.println("TEST OUTPUTS:");
            System.out.println("n: "+data.n);
            System.out.println("k_Exact: " + routeNumberExact);
            System.out.println("Z_exact: " + optimalFromExact);
            System.out.println("T_exact: " + timeExact);
            System.out.println("k_CW: " + routeNumberCW);
            System.out.println("Z_CW: " + optimalFromCW);
            System.out.println("T_CW: " + timeCW);
            System.out.println("Z_CW_TSP: " + optimalFromCW_TSP);
            System.out.println("T_CW_TSP: " + timeCW+timeTSP);

            pw.flush();
            pw.close();
        } catch (Exception E) {

        }
    }

    public static void writeMatrix(float[][] m, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < m.length; i++) {
                for(int j = 0; j < m[i].length; j++) {
                    pw.print(m[i][j]);
                    pw.print(",");
                }
                pw.println();
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }

    public static void writePointData(ArrayList<ArrayList<Point>> cList, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < cList.size(); i++) {
                for(int j = 0; j < cList.get(i).size(); j++) {
                    pw.print(i);
                    pw.print(",");
                    pw.print(cList.get(i).get(j).getX());
                    pw.print(",");
                    pw.print(cList.get(i).get(j).getY());
                    pw.print(",");
                    pw.print((int)cList.get(i).get(j).getID());
                    pw.println();
                }
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }

    public static void writeSolutionData(ArrayList<ArrayList<ArrayList<Point>>> sList, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < sList.size(); i++) {
                for(int j = 0; j < sList.get(i).size(); j++) {
                    for(int k = 0; k<sList.get(i).get(j).size();k++){
                        pw.print(i);
                        pw.print(",");
                        pw.print(j);
                        pw.print(",");
                        pw.print(sList.get(i).get(j).get(k).getX());
                        pw.print(",");
                        pw.print(sList.get(i).get(j).get(k).getY());
                        pw.print(",");
                        pw.print((int)sList.get(i).get(j).get(k).getID());
                        pw.println();
                    }
                }
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }
    public static void writeClusterAnalysis(ArrayList<Data> dataList, double[] tspDist, String filePathClusterAnalysis){
        //Write on console
        double[] averageDistOfPointsToPoints = new double[dataList.size()];
        double[] averageDistOfPointsToCenter = new double[dataList.size()];
        double[] distToWh = new double[dataList.size()];

        for(int i=0;i<tspDist.length;i++){
            System.out.println("Cluster " + i+": ");
            System.out.println("Number of customers: " + (dataList.get(i).locations.length-1));
            double totalDistBtwPoints = 0;
            double totalDistToCenter = 0;
            Point centeroid = new Point();

            if(dataList.get(i).locations.length > 1){
                centeroid = dataList.get(i).locations[1].getCenteroid();
            }

            for (int x=0;x<dataList.get(i).locations.length;x++){
                for (int y=0;y<dataList.get(i).locations.length;y++){
                    //   System.out.println(dataList.get(i).locations[x].getID() + " - " + dataList.get(i).locations[y].getID());
                    //  System.out.println(dataList.get(i).locations.length);
                    if(x!=y &&  x!=0 && y!=0){
                        totalDistBtwPoints = totalDistBtwPoints + dataList.get(i).distance[x][y];
                    }
                }
                double tempDist = (centeroid.getX()-dataList.get(i).locations[x].getX())*(centeroid.getX()-dataList.get(i).locations[x].getX()) + (centeroid.getY()-dataList.get(i).locations[x].getY())*(centeroid.getY()-dataList.get(i).locations[x].getY());
                totalDistToCenter += Math.sqrt(tempDist);
            }
            averageDistOfPointsToPoints[i] = totalDistBtwPoints / (2 * dataList.get(i).locations.length);
            averageDistOfPointsToCenter[i] = totalDistToCenter / dataList.get(i).locations.length;
            System.out.println("Mean between points: " + averageDistOfPointsToPoints[i]);
            System.out.println("Mean between points and centeroid: " + (100*averageDistOfPointsToCenter[i]));
            System.out.println(tspDist[i]);
            System.out.println();
            double xCenter = centeroid.getX();
            double yCenter = centeroid.getY();
            double xWH = dataList.get(i).locations[0].getX();
            double yWH = dataList.get(i).locations[0].getY();
            distToWh[i] =  Math.sqrt((xWH - xCenter) * (xWH - xCenter) + (yWH - yCenter) * (yWH - yCenter));
        }
            //Write on console-END

            //Write on file
            try {
                FileWriter fw = new FileWriter(filePathClusterAnalysis,true);
                BufferedWriter bw = new BufferedWriter(fw);
                PrintWriter pw = new PrintWriter(bw);
                /*
                pw.print("Cluster" + ",");
                pw.print("Best TSP value" + ",");
                pw.print("Number of Customers" + ",");
                pw.print("Mean distance between points" + ",");
                pw.print("Mean distance between points and centeroid"+",");
                pw.print("Dist between WH and Centeroid");
                pw.println();
*/
                for(int i = 0; i < dataList.size(); i++) {
                 pw.print( i + ",");
                 pw.print(tspDist[i] + ",");
                 pw.print((dataList.get(i).locations.length-1) + ",");
                 pw.print(averageDistOfPointsToPoints[i] + ",");
                 pw.print(100*averageDistOfPointsToCenter[i] + ",");
                 pw.print(100*distToWh[i]);
                 pw.println();
                }

                pw.flush();
                pw.close();
            } catch (Exception E) {

            }

    }
}
