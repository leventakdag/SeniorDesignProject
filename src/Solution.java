import java.util.ArrayList;

public class Solution {
    private double objectiveValue;
    ArrayList<Point> routeOfTrucks;

    public Solution( ){

    }
    public Solution(double objectiveValue ){
        //Constructer of Capacitated CLuster TSP
        this.objectiveValue = objectiveValue;
        routeOfTrucks = new ArrayList<>();
    }





    //Set & Get methods:
    public void setObjectiveValue(double objectiveValue){
        this.objectiveValue=objectiveValue;
    }
    public double getObjectiveValue(){
        return this.objectiveValue;
    }
}
