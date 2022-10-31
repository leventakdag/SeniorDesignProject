import java.util.ArrayList;

public class Heuristic {
    //private Data data;
    private Clustering clustering;

    public Heuristic(Data data) {
     //   this.data = data;
        clustering = new Clustering(data);
    }

    public ArrayList<ArrayList<Point>> limitedClustering(int clusterCount, int maxClusterNodes){

        return clustering.limitedKMeans(clusterCount, maxClusterNodes);

    }
    public ArrayList<ArrayList<Point>> unlimitedClustering(int clusterCount){
        return clustering.unlimitedKMeans(clusterCount);
    }
    public void capacitatedClusterTSP(Data data){
        System.out.println("!!! CAPACITATED CLUSTERING is CALLED !!!");

        ArrayList<Data> dataList = new ArrayList<Data>();
        dataList = createClusterData(clustering.capacitatedKMeans(4), data);
        //SOLVE EXACT FOR EACH CLUSTER:
        ArrayList<ArrayList<ArrayList<Point>>> sList = new ArrayList<ArrayList<ArrayList<Point>>>();
        double[][] tspSolution = new double[5][2];
        //tspSolution[i][0] gives distance of cluster i
        //tspSolution[i][1] gives duration of cluster i

        for (int i = 0; i < dataList.size(); i++) {
            if (dataList.get(i).locations.length > 1) {
                ExactSolution exactsolution = new ExactSolution(dataList.get(i));
                tspSolution[i][0] = exactsolution.solveTSP()[0];
                tspSolution[i][1] = exactsolution.solveTSP()[1];
            }
        }



        for (int i = 0; i < dataList.size(); i++) {
            System.out.println("Cluster "+i);
            System.out.println("Number of Customers: "+(dataList.get(i).locations.length-1));
            double totalW=0;
            double totalV=0;
            for(int j=0;j<dataList.get(i).locations.length;j++){
                totalW += dataList.get(i).weight[j];
                totalV += dataList.get(i).volume[j];
            }
            System.out.println("Total Weight of Orders: " + totalW);
            System.out.println("Total Volume of Orders: " + totalV);
            System.out.println("Objective Distance: " + tspSolution[i][0]);
            System.out.println("Objective Duration: " + tspSolution[i][1]);
            System.out.println();
        }

    }

    public ArrayList<Data> createClusterData(ArrayList<ArrayList<Point>> Clist, Data data){
        ArrayList<Data> dataList = new ArrayList<Data>();

        //insert data of each cluster into DataList !!!
        for(int i=0;i<Clist.size();i++){

                Data dataTemp = new Data();

                dataTemp.n = Clist.get(i).size()-1;
                dataTemp.Cmax = data.Cmax;
                dataTemp.c = data.c;
                dataTemp.fixedCost = data.fixedCost;
                dataTemp.T = data.T;
                dataTemp.k = data.k;
                dataTemp.locations = new Point[Clist.get(i).size()];
                dataTemp.distance = new double[dataTemp.n+1][dataTemp.n+1];
                dataTemp.duration = new double[dataTemp.n+1][dataTemp.n+1];
                dataTemp.tu = new double[dataTemp.n+1];
                dataTemp.weight = new double[dataTemp.n+1];
                dataTemp.volume = new double[dataTemp.n+1];
                dataTemp.vehiclePlates = new String[dataTemp.k];
                dataTemp.sapLocations = new String[dataTemp.n+1];
                dataTemp.weightCapacity = data.weightCapacity;
                dataTemp.volumeCapacity = data.volumeCapacity;


            //        dataTemp.locations[0] = data.locations[0];
                //System.out.println("Locations: "+ i );
                for(int j = 0;j<Clist.get(i).size();j++){
                    dataTemp.locations[j] = Clist.get(i).get(j);
              //      System.out.print("ALOOOOOO");
                //    System.out.print(dataTemp.locations[j].getID() + ", ");


                        dataTemp.weight[j] = data.weight[Clist.get(i).get(j).getID()];
                        dataTemp.volume[j] = data.volume[Clist.get(i).get(j).getID()];
                        dataTemp.tu[j] = data.tu[Clist.get(i).get(j).getID()];

                }

                for(int j = 0;j<Clist.get(i).size();j++){
                    for(int k = 0;k<Clist.get(i).size();k++){

                        dataTemp.duration[j][k] = data.duration[Clist.get(i).get(j).getID()][Clist.get(i).get(k).getID()];
                        dataTemp.distance[j][k] = data.duration[Clist.get(i).get(j).getID()][Clist.get(i).get(k).getID()];
                        //System.out.print(dataTemp.duration[j][k]);
                    }
                }
                for(int k = 0;k<data.vehiclePlates.length;k++){

                    dataTemp.vehiclePlates[k] = data.vehiclePlates[k];
                }

                dataList.add(dataTemp);
                //System.out.println();

        }
        return dataList;
    }

}
