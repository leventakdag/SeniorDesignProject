import java.util.ArrayList;

public class Heuristic {
   // private Data data;
    private Clustering clustering;

    public Heuristic(Data data) {
       // this.data = data;
        clustering = new Clustering(data);
    }

    public ArrayList<ArrayList<Point>> limitedClustering(int clusterCount, int maxClusterNodes){

        return clustering.limitedKMeans(clusterCount, maxClusterNodes);

    }
    public ArrayList<ArrayList<Point>> unlimitedClustering(int clusterCount){

        return clustering.unlimitedKMeans(clusterCount);
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
                dataTemp.duration = new int[dataTemp.n+1][dataTemp.n+1];
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
                    System.out.print("ALOOOOOO");
                    System.out.print(dataTemp.locations[j].getID() + ", ");


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
