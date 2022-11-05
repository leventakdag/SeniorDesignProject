import java.util.ArrayList;

public class ClarkeAndWright {
    public ArrayList<ArrayList<Point>> cList = new ArrayList<>();
    private Data data;
    public ClarkeAndWright(Data Data) {
        this.data = Data;
    }
    public ArrayList<Saving> savingsList(){
        ArrayList<Saving> orderedList = new ArrayList<Saving>();
        double[][] savingsMatrix = new double[data.n+1][data.n+1];
        for(int i = 0; i < data.n+1; i++){
            for(int j = 0; j< data.n+1; j++){
                savingsMatrix[i][j] = (data.distance[0][i] + data.distance[0][j] - data.distance[i][j]);
            }
        }

        for(int k = 0; k < (data.n*(data.n-1))/2; k++){
            Saving tempSaving = new Saving(0,0,0);
            for(int i = 1; i < data.n+1; i++){
                for(int j = 1; j < data.n+1; j++) {
                    if(i!=j){
                        if(savingsMatrix[i][j] > tempSaving.getDistance()){
                            tempSaving = new Saving(i,j,savingsMatrix[i][j]);
                        }
                    }
                }
            }
            orderedList.add(tempSaving);
            savingsMatrix[tempSaving.getI()][tempSaving.getJ()] = 0;
            savingsMatrix[tempSaving.getJ()][tempSaving.getI()] = 0;
            //System.out.println(k+ "I:" + orderedList.get(k).getI() + " J:" + orderedList.get(k).getJ()+" Distance:" + orderedList.get(k).getDistance());
        }
        return orderedList;
    }
    public void solveClarkeAndWright(){

        double minZ = 100000;
        int n = 0;
        boolean nStop = false;
        ArrayList<Vehicle> finalVehicleList = new ArrayList<Vehicle>();

        while(!nStop){
            n++;
            ArrayList<Saving> savingsList = savingsList();
            ArrayList<Vehicle> tempVehicleList = new ArrayList<Vehicle>();
            ArrayList<Integer> assignedPoints = new ArrayList<Integer>();
            int k = 0;
            boolean stop = false;
            double obj = 0;
            int vehiclesCount = 0;
            System.out.println("Trying for max " + n +" vehicles");
            while(!stop && k<savingsList.size()){

                obj = 0;
                //System.out.println("---Step " + k + "---");
                //System.out.println("Trying to assign Link "+savingsList.get(k).getI()+","+savingsList.get(k).getJ());
                int count = 0;

                if(tempVehicleList.size() != 0){
                    for(int i = 0; i < tempVehicleList.size(); i++){
                        if(savingsList.get(k).getI() == tempVehicleList.get(i).getRoute().get(0).getID()){
                            if(!isItAlreadyAssigned(tempVehicleList, savingsList.get(k).getJ())){
                                if((tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getJ()]))<=data.volumeCapacity[i]&&(tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getJ()]))<=data.weightCapacity[i]&&(tempVehicleList.get(i).getTotalTime() - (data.duration[0][savingsList.get(k).getI()]) + (data.duration[0][savingsList.get(k).getJ()]) + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]) + data.tu[savingsList.get(k).getJ()])<=data.T){
                                    tempVehicleList.get(i).getRoute().add(0,data.locations[savingsList.get(k).getJ()]);
                                    tempVehicleList.get(i).setVL(tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getJ()]));
                                    tempVehicleList.get(i).setWL(tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getJ()]));
                                    tempVehicleList.get(i).setTT(tempVehicleList.get(i).getTotalTime() - (data.duration[0][savingsList.get(k).getI()]) + (data.duration[0][savingsList.get(k).getJ()]) + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()])+ data.tu[savingsList.get(k).getJ()]);
                                    tempVehicleList.get(i).setTD(tempVehicleList.get(i).getTotalDistance() - (data.distance[0][savingsList.get(k).getI()]) + (data.distance[0][savingsList.get(k).getJ()]) + (data.distance[savingsList.get(k).getJ()][savingsList.get(k).getI()]));
                                    count++;
                                    assignedPoints.add(savingsList.get(k).getJ());
                                    break;
                                }
                                else{
                                    //System.out.println("Could not assign due to limits");
                                }
                            }
                        }
                        if(savingsList.get(k).getI() == tempVehicleList.get(i).getRoute().get(tempVehicleList.get(i).getRoute().size()-1).getID()){
                            if(!isItAlreadyAssigned(tempVehicleList, savingsList.get(k).getJ())){
                                if((tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getJ()]))<=data.volumeCapacity[i] && (tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getJ()]))<=data.weightCapacity[i]&&(tempVehicleList.get(i).getTotalTime() - (data.duration[savingsList.get(k).getI()][0]) + (data.duration[savingsList.get(k).getI()][savingsList.get(k).getJ()]) + (data.duration[savingsList.get(k).getJ()][0]) + data.tu[savingsList.get(k).getJ()])<=data.T){
                                    tempVehicleList.get(i).getRoute().add(data.locations[savingsList.get(k).getJ()]);
                                    tempVehicleList.get(i).setVL(tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getJ()]));
                                    tempVehicleList.get(i).setWL(tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getJ()]));
                                    tempVehicleList.get(i).setTT(tempVehicleList.get(i).getTotalTime() - (data.duration[savingsList.get(k).getI()][0]) + (data.duration[savingsList.get(k).getI()][savingsList.get(k).getJ()]) + (data.duration[savingsList.get(k).getJ()][0])+ data.tu[savingsList.get(k).getJ()]);
                                    tempVehicleList.get(i).setTD(tempVehicleList.get(i).getTotalDistance() - (data.distance[savingsList.get(k).getI()][0]) + (data.distance[savingsList.get(k).getI()][savingsList.get(k).getJ()]) + (data.distance[savingsList.get(k).getJ()][0]));
                                    count++;
                                    assignedPoints.add(savingsList.get(k).getJ());
                                    break;
                                }
                                else{
                                    //System.out.println("Could not assign due to limits");
                                }
                            }
                        }
                        if(savingsList.get(k).getJ() == tempVehicleList.get(i).getRoute().get(0).getID()){
                            if(!isItAlreadyAssigned(tempVehicleList, savingsList.get(k).getI())) {
                                if((tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getI()]))<=data.volumeCapacity[i]&&(tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getI()]))<=data.weightCapacity[i]&&(tempVehicleList.get(i).getTotalTime() - (data.duration[0][savingsList.get(k).getJ()]) + (data.duration[0][savingsList.get(k).getI()]) + (data.duration[savingsList.get(k).getI()][savingsList.get(k).getJ()]) + data.tu[savingsList.get(k).getI()])<=data.T){
                                    tempVehicleList.get(i).getRoute().add(0, data.locations[savingsList.get(k).getI()]);
                                    tempVehicleList.get(i).setVL(tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getI()]));
                                    tempVehicleList.get(i).setWL(tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getI()]));
                                    tempVehicleList.get(i).setTT(tempVehicleList.get(i).getTotalTime() - (data.duration[0][savingsList.get(k).getJ()]) + (data.duration[0][savingsList.get(k).getI()]) + (data.duration[savingsList.get(k).getI()][savingsList.get(k).getJ()])+ data.tu[savingsList.get(k).getI()]);
                                    tempVehicleList.get(i).setTD(tempVehicleList.get(i).getTotalDistance() - (data.distance[0][savingsList.get(k).getJ()]) + (data.distance[0][savingsList.get(k).getI()]) + (data.distance[savingsList.get(k).getI()][savingsList.get(k).getJ()]));
                                    count++;
                                    assignedPoints.add(savingsList.get(k).getI());
                                    break;
                                }
                                else{
                                    //System.out.println("Could not assign due to limits");
                                }
                            }
                        }
                        if(savingsList.get(k).getJ() == tempVehicleList.get(i).getRoute().get(tempVehicleList.get(i).getRoute().size()-1).getID()){
                            if(!isItAlreadyAssigned(tempVehicleList, savingsList.get(k).getI())) {
                                if((tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getI()]))<=data.volumeCapacity[i] && (tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getI()]))<=data.weightCapacity[i]&& (tempVehicleList.get(i).getTotalTime() - (data.duration[savingsList.get(k).getJ()][0]) + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]) + (data.duration[savingsList.get(k).getI()][0]) + data.tu[savingsList.get(k).getI()])<=data.T){
                                    tempVehicleList.get(i).getRoute().add(data.locations[savingsList.get(k).getI()]);
                                    tempVehicleList.get(i).setVL(tempVehicleList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getI()]));
                                    tempVehicleList.get(i).setWL(tempVehicleList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getI()]));
                                    tempVehicleList.get(i).setTT(tempVehicleList.get(i).getTotalTime() - (data.duration[savingsList.get(k).getJ()][0]) + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]) + (data.duration[savingsList.get(k).getI()][0])+ data.tu[savingsList.get(k).getI()]);
                                    tempVehicleList.get(i).setTD(tempVehicleList.get(i).getTotalDistance() - (data.distance[savingsList.get(k).getJ()][0]) + (data.distance[savingsList.get(k).getJ()][savingsList.get(k).getI()]) + (data.distance[savingsList.get(k).getI()][0]));
                                    count++;
                                    assignedPoints.add(savingsList.get(k).getI());
                                    break;
                                }
                                else{
                                    //System.out.println("Could not assign due to limits");
                                }
                            }
                        }

                        for(int j = 0; j < tempVehicleList.get(i).getRoute().size(); j++){
                            if(savingsList.get(k).getI()==tempVehicleList.get(i).getRoute().get(j).getID()||savingsList.get(k).getJ()==tempVehicleList.get(i).getRoute().get(j).getID()){
                                count++;
                                break;
                            }
                        }
                    }
                }

                if(count == 0 && vehiclesCount<n){
                    vehiclesCount++;
                    //System.out.println("Creating a new route");
                    ArrayList<Point> tempList = new ArrayList<Point>();
                    tempList.add(data.locations[savingsList.get(k).getI()]);
                    tempList.add(data.locations[savingsList.get(k).getJ()]);
                    double tempTime = 0;
                    tempTime = data.duration[0][savingsList.get(k).getI()] + data.duration[savingsList.get(k).getI()][savingsList.get(k).getJ()]+data.duration[savingsList.get(k).getJ()][0]+ data.tu[savingsList.get(k).getJ()]+ data.tu[savingsList.get(k).getI()];
                    double tempDistance = 0;
                    tempDistance = data.distance[0][savingsList.get(k).getI()] + data.distance[savingsList.get(k).getI()][savingsList.get(k).getJ()]+data.distance[savingsList.get(k).getJ()][0];
                    Vehicle v = new Vehicle((data.weight[savingsList.get(k).getJ()])+(data.weight[savingsList.get(k).getI()]),(data.volume[savingsList.get(k).getJ()])+(data.volume[savingsList.get(k).getI()]),tempTime,tempDistance,tempList);
                    tempVehicleList.add(v);
                    assignedPoints.add(savingsList.get(k).getI());
                    assignedPoints.add(savingsList.get(k).getJ());
                }

                if(assignedPoints.size() == data.n){
                    System.out.println("Feasible :)");
                    for(int i = 0; i < tempVehicleList.size(); i++){
                        obj += tempVehicleList.get(i).getTotalDistance();
                        System.out.print("Vehicle: " + i + ", Total time: " + tempVehicleList.get(i).getTotalTime() + ", Total distance: " + tempVehicleList.get(i).getTotalDistance()+ ", Total weight: " + tempVehicleList.get(i).getWeightLoaded() + ", Total volume: " + tempVehicleList.get(i).getVolumeLoaded());
                        System.out.print(", Route: ");
                        for(int j = 0; j < tempVehicleList.get(i).getRoute().size(); j++){
                            System.out.print(tempVehicleList.get(i).getRoute().get(j).getID() + ",");
                        }
                        System.out.println();
                    }
                    obj += tempVehicleList.size() * data.fixedCost;
                    System.out.println("Assigned points count: "+assignedPoints.size());
                    System.out.println("Vehicle count: "+tempVehicleList.size());
                    System.out.println("Z: " + obj);
                    if(obj<minZ) {
                        minZ = obj;
                        finalVehicleList = tempVehicleList;
                    }
                    if(n >= data.k){
                        nStop = true;
                    }
                    stop = true;
                }
                k++;
            }

        }
        System.out.println("Objective func. is: " + minZ);

        for(int i = 0; i < finalVehicleList.size(); i++) {
            cList.add(new ArrayList<Point>());
            ArrayList<Point> tempRoute = new ArrayList<Point>();
            for(int j = 0; j < finalVehicleList.get(i).getRoute().size();j++){
                cList.get(i).add(finalVehicleList.get(i).getRoute().get(j));
            }
        }

        for(int i=0;i<cList.size();i++){
            cList.get(i).add(0,data.locations[0]);
        }
    }
    private boolean isItAlreadyAssigned(ArrayList<Vehicle> finalList, int p) {
        int count = 0;
        for(int i = 0; i < finalList.size(); i++){
            for(int j = 0; j < finalList.get(i).getRoute().size(); j++){
                if(finalList.get(i).getRoute().get(j).getID()== p){
                    count++;
                }
            }
        }
        if(count == 0){
            return false;
        }
        else {
            return true;
        }
    }
}
