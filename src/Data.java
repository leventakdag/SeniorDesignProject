import java.util.ArrayList;
import java.util.HashMap;

public class Data {

    public int n = 40;//number of customers
    public int k = 9; //Number
    public int clusterCount = 100;
    public int maxClusterNodes = 12;

    public double c = 2.0; //Cost per km of Vehicles
    //public double T=540; //Real time Limit for each vehicle
    public double T=540;
    public double fixedCost = 30; //Real value is unknown
    public int Cmax = 24;
    //public int Cmax = 24 //Real value is 24
    
    public Point[] locations = new Point[n+1];
    
    public double[][] distance = new double[n+1][n+1]; //dij
    public int[][] duration = new int[n+1][n+1]; //tij
    public double[] tu = new double[n+1];
    public double[] weightCapacity = new double[k]; //Wk
    public double[] volumeCapacity = new double[k]; //Vk
    public double[] weight = new double[n+1]; //wj
    public double[] volume = new double[n+1]; //vj
    public String[] sapLocations = new String[n+1];
    public String[] vehiclePlates = new String[k];

    HashMap<Integer, String> indicesOfLocations = new HashMap<Integer, String>(); //It refers our indices to SAP indices -> (0,SP_1000)
    HashMap<Integer, String> indicesOfVehicles = new HashMap<Integer, String>(); //It refers our indices to SAP indices -> (0,plate)

}
