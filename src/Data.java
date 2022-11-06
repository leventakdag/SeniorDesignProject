import java.util.ArrayList;
import java.util.HashMap;

public class Data {
    public int n;//number of customers
    public int k; //Number
    public double c = 1.0; //Cost per km of Vehicles
    public double T=700;
    public double fixedCost = 30; //Real value is unknown
    public int Cmax = 24;
    public Point[] locations;
    public double[][] distance; //dij
    public double[][] duration; //tij
    public double[] tu;
    public double[] weightCapacity; //Wk
    public double[] volumeCapacity; //Vk
    public double[] weight; //wj
    public double[] volume; //vj
    public String[] sapLocations;
    public String[] vehiclePlates;
    HashMap<Integer, String> indicesOfLocations = new HashMap<Integer, String>(); //It refers our indices to SAP indices -> (0,SP_1000)
    HashMap<Integer, String> indicesOfVehicles = new HashMap<Integer, String>(); //It refers our indices to SAP indices -> (0,plate)
}
