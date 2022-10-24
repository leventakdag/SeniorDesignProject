import java.util.ArrayList;

public class Vehicle {
    private double weightLoaded;
    private double volumeLoaded;
    private int totalTime;
    private ArrayList<Point> route;
    public Vehicle(double weightLoaded, double volumeLoaded, int totalTime, ArrayList<Point> route) {

        setWL(weightLoaded);
        setVL(volumeLoaded);
        setTT(totalTime);
        setRoute(route);// TODO Auto-generated constructor stub
    }

    public void setWL(double wl) {
        // TODO Auto-generated method stub
        this.weightLoaded = wl;
    }

    public void setVL(double vl) {
        // TODO Auto-generated method stub
        this.volumeLoaded = vl;
    }
    public void setTT(int tt) {
        // TODO Auto-generated method stub
        this.totalTime = tt;
    }

    public void setRoute(ArrayList<Point> r) {
        // TODO Auto-generated method stub
        this.route = r;
    }

    public double getWeightLoaded() {
        return weightLoaded;
    }
    public double getVolumeLoaded() {
        return volumeLoaded;
    }
    public int getTotalTime() {
        return totalTime;
    }
    public ArrayList<Point> getRoute() {
        return route;
    }


}
