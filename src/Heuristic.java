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
    public ArrayList<ArrayList<Point>> unlimitedClustering(){

        return clustering.unlimitedKMeans();
    }

    public ArrayList<Data> createClusterData(ArrayList<ArrayList<Point>> Clist, Data data){
        ArrayList<Data> dataList = new ArrayList<Data>();

        //insert data of each cluster into DataList !!!
        for(int i=0;i<Clist.size();i++){
            dataList.get(i).n = Clist.get(i).size();
            dataList.get(i).locations[0] = data.locations[0];
            for(int j = 1;j<Clist.get(i).size();j++){
                dataList.get(i).locations[i] = Clist.get(i).get(j);
            }
            //...
            //...

        }

        return dataList;
    }

}
