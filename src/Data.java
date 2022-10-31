import java.util.ArrayList;
import java.util.HashMap;

public class Data {

    public int n;//number of customers
    public int k; //Number
    public double c = 2.0; //Cost per km of Vehicles
    //public double T=540; //Real time Limit for each vehicle
    public double T=480;
    public double fixedCost = 30; //Real value is unknown
    public int Cmax = 24;
    //public int Cmax = 24 //Real value is 24
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
