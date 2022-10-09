import java.util.ArrayList;

public class Heuristic {
   // private Data data;
    private Clustering clustering;

    public Heuristic(Data data) {
       // this.data = data;
        clustering = new Clustering(data);
    }

    public ArrayList<ArrayList<Point>> limitedClustering(){

        return clustering.limitedKMeans();

    }
    public ArrayList<ArrayList<Point>> unlimitedClustering(){

        return clustering.unlimitedKMeans();
    }

}
