import java.io.*;
import java.util.ArrayList;

public class App {
	
	public static void main(String[] args) throws Exception {

        Data data = readData();
        //ExactSolution exactsolution = new ExactSolution(data);
        Heuristic heuristic1 = new Heuristic(data);
        Maps maps = new Maps(data);

        //exactsolution.solveExact();

        String filePathLimited = "./outputs/OutputLimited.csv";
        String filePathUnlimited = "./outputs/OutputUnlimited.csv";
        String filePathTimeMatrix =  "./outputs/TimeMatrix.csv";
        String filePathRoutes =  "./outputs/Routes.csv";

        //writePointData(heuristic1.limitedClustering(), filePathLimited);
        //writePointData(heuristic1.unlimitedClustering(), filePathUnlimited);
        writeTimeMatrix(maps.getTimeMatrix(), filePathTimeMatrix);
        //writeRoutes(maps.getTimeMatrix(), filePathTimeMatrix);
    }
    private static void writeTimeMatrix(float[][] timeMatrix, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < timeMatrix.length; i++) {
                for(int j = 0; j < timeMatrix[i].length; j++) {
                    pw.print(timeMatrix[i][j]);
                    pw.print(",");
                }
                pw.println();
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }

    private static void writePointData(ArrayList<ArrayList<Point>> cList, String filePath) {
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

    private static Data readData() {
        Data data = new Data();
        FileReader fileReader1;
        FileReader fileReader2;
        FileReader fileReader3;
        FileReader fileReader4;
        FileReader fileReader5;

        try {

            fileReader1 = new FileReader("./data/distances_40_customer.csv");
            fileReader2 = new FileReader("./data/times_40_customer.csv");
            fileReader3 = new FileReader("./data/orders_40_customer_manipulated.csv");
            fileReader4 = new FileReader("./data/vehicles_40_customer.csv");
            fileReader5 = new FileReader("./data/locations.csv");

            BufferedReader bufferedReader1=new BufferedReader(fileReader1);
            BufferedReader bufferedReader2=new BufferedReader(fileReader2);
            BufferedReader bufferedReader3=new BufferedReader(fileReader3);
            BufferedReader bufferedReader4=new BufferedReader(fileReader4);
            BufferedReader bufferedReader5=new BufferedReader(fileReader5);


            //READING DISTANCE DATA //
            for(int i=0;i<data.distance.length;i++){
                String DistanceLine=bufferedReader1.readLine();
                String[] DistanceCells=DistanceLine.split(",");
                for(int j=0;j<data.distance.length;j++){
                    data.distance[i][j] = Double.parseDouble(DistanceCells[j]);
                }
            } /*for(int i=0;i<data.distance.length;i++){
                for(int j=0;j<data.distance.length;j++){
                    System.out.print(data.distance[i][j]+",");
                }
                System.out.println();
            }*/


            //READING ORDERS DATA //orders,locations...
            data.sapLocations[0]="SP_1000";
            data.indicesOfLocations.put(0,"SP_1000");

            for(int i=0;i<(data.n+1);i++){

                String Locations = bufferedReader5.readLine();
                String[] LocationCells = Locations.split(",");
                
                data.locations[i]= new Point(Double.parseDouble(LocationCells[2]), Double.parseDouble(LocationCells[3]), Integer.parseInt(LocationCells[1]));
                //System.out.println(data.locations[i]);
            }
            
            

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
            for(int i=0;i<data.duration.length;i++){
                String DurationLine=bufferedReader2.readLine();
                String[] DurationCells=DurationLine.split(",");
                for(int j=0;j<data.duration.length;j++){
                    data.duration[i][j] = Integer.parseInt(DurationCells[j]);
                }
            }
            for(int j=1;j<data.sapLocations.length;j++){
                data.tu[j]=data.volume[j]*15;
            }
          /*  for(int i=0;i<data.duration.length;i++){
                for(int j=0;j<data.duration.length;j++){
                    System.out.print(data.duration[i][j]+",");
                }
                System.out.println();
            }*/


            //READING VEHICLES DATA
            for(int i=0;i<data.vehiclePlates.length;i++){

                String VehicleLine = bufferedReader4.readLine();
                String[] VehicleCells = VehicleLine.split(",");
                data.vehiclePlates[i]=VehicleCells[0];
                data.indicesOfVehicles.put(i,VehicleCells[0]);
                data.weightCapacity[i]=Double.parseDouble(VehicleCells[1]);
                data.volumeCapacity[i]=Double.parseDouble(VehicleCells[2]);
            }
            /*for(int i=0;i<data.sapLocations.length;i++){
                System.out.print(data.vehiclePlates[i]+" - ");
                System.out.print(data.indicesOfVehicles.get(i)+" - ");
                System.out.print(data.weightCapacity[i]+" - ");
                System.out.print(data.volumeCapacity[i]+" - ");
                System.out.println();
            }*/
        } catch (FileNotFoundException e) {
            System.out.println(e);
        } catch (IOException e) {
            System.out.println(e);
        }
        return data;
    }



}
