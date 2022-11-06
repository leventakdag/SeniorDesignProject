import java.util.ArrayList;

public class Vehicle {
    private double weightLoaded;
    private double volumeLoaded;
    private double totalTime;
    private double totalDistance;
    private ArrayList<Point> route;
    public Vehicle(double weightLoaded, double volumeLoaded, double totalTime, double totalDistance, ArrayList<Point> route) {
        setWL(weightLoaded);
        setVL(volumeLoaded);
        setTT(totalTime);
        setTD(totalDistance);
        setRoute(route);
    }
    public void setWL(double wl) {
        this.weightLoaded = wl;
    }
    public void setVL(double vl) {
        this.volumeLoaded = vl;
    }
    public void setTT(double tt) {
        this.totalTime = tt;
    }
    public void setTD(double td) {
        this.totalDistance = td;
    }
    public void setRoute(ArrayList<Point> r) {this.route = r;}
    public double getWeightLoaded() {
        return weightLoaded;
    }
    public double getVolumeLoaded() {
        return volumeLoaded;
    }
    public double getTotalTime() {
        return totalTime;
    }
    public double getTotalDistance() {
        return totalDistance;
    }
    public ArrayList<Point> getRoute() {
        return route;
    }
}
