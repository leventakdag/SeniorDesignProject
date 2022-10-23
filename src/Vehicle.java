import java.util.ArrayList;

public class Vehicle {
    private double weightLoaded;
    private double volumeLoaded;
    private ArrayList<Point> route;
    public Vehicle(double weightLoaded, double volumeLoaded, ArrayList<Point> route) {

        setWC(weightLoaded);
        setVC(volumeLoaded);
        setRoute(route);// TODO Auto-generated constructor stub
    }

    private void setWC(double wc) {
        // TODO Auto-generated method stub
        this.weightLoaded = wc;
    }

    private void setVC(double vc) {
        // TODO Auto-generated method stub
        this.volumeLoaded = vc;
    }

    private void setRoute(ArrayList<Point> r) {
        // TODO Auto-generated method stub
        this.route = r;
    }

    public double getWeightLoaded() {
        return weightLoaded;
    }
    public double getVolumeLoaded() {
        return volumeLoaded;
    }
    public ArrayList<Point> getRoute() {
        return route;
    }


}
