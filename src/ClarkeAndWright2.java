import java.util.ArrayList;

public class ClarkeAndWright2 {
    public double netObjective;
    public ArrayList<ArrayList<Point>> cList = new ArrayList<>();
    private Data data;
    public ClarkeAndWright2(Data Data) {
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

        double z = 0;
        int n = 0;
        ArrayList<Vehicle> vehicleList = new ArrayList<Vehicle>();
        ArrayList<Saving> savingsList = savingsList();
        //ArrayList<Integer> assignedPoints = new ArrayList<Integer>();
        boolean stop = false;
        while(!stop && n < savingsList.size()) {

            int pI = savingsList.get(n).getI();
            int pJ = savingsList.get(n).getJ();

            //System.out.println("Trying to assign " + pI + " and " + pJ);

            //isItAlreadyAssigned[p][0] will return the vehicle number if point is assigned to that vehicle
            //isItAlreadyAssigned[p][1] will return 0 if that point is inclusive, 1 if it is first, 2 if it is last
            int vI = isItAlreadyAssigned(vehicleList, pI, pJ)[0][0];
            int oI = isItAlreadyAssigned(vehicleList, pI, pJ)[0][1];
            int vJ = isItAlreadyAssigned(vehicleList, pI, pJ)[1][0];
            int oJ = isItAlreadyAssigned(vehicleList, pI, pJ)[1][1];

            //if both points are not assigned, create a new vehicle and assign that points
            if(vI < 0 && vJ < 0){
                ArrayList<Point> tempList = new ArrayList<Point>();
                tempList.add(data.locations[pI]);
                tempList.add(data.locations[pJ]);
                double tempTime = 0;
                tempTime = data.duration[0][pI] + data.duration[pI][savingsList.get(n).getJ()] + data.duration[pJ][0] + data.tu[pI] + data.tu[pJ];
                double tempDistance = 0;
                tempDistance = data.distance[0][pI] + data.distance[pI][pJ] + data.distance[pJ][0];
                Vehicle v = new Vehicle((data.weight[pJ])+(data.weight[pI]),(data.volume[pJ]) + (data.volume[pI]), tempTime, tempDistance, tempList);
                vehicleList.add(v);
                //System.out.println("Creating a new vehicle!");
            }

            //if only one point is assigned to a vehicle and it is not interior, add other point to the vehicle
            if(oI == 1 && vJ == -1){
                if(vehicleList.get(vI).getTotalTime() - data.duration[0][pI] + data.duration[0][pJ] + data.duration[pJ][pI] + data.tu[pJ] < data.T && vehicleList.get(vI).getWeightLoaded() + data.weight[pJ] < data.weightCapacity[vI] && vehicleList.get(vI).getVolumeLoaded() + data.volume[pJ] < data.volumeCapacity[vI]){
                    vehicleList.get(vI).getRoute().add(0,data.locations[pJ]);
                    vehicleList.get(vI).setWL(vehicleList.get(vI).getWeightLoaded() + data.weight[pJ]);
                    vehicleList.get(vI).setVL(vehicleList.get(vI).getVolumeLoaded() + data.volume[pJ]);
                    vehicleList.get(vI).setTT(vehicleList.get(vI).getTotalTime() - data.duration[0][pI] + data.duration[0][pJ] + data.duration[pJ][pI] + data.tu[pJ]);
                    vehicleList.get(vI).setTD(vehicleList.get(vI).getTotalDistance() - data.distance[0][pI] + data.distance[0][pJ] + data.distance[pJ][pI]);
                    //System.out.println("case 1");
                }
            }
            if(oI == 2 && vJ == -1){
                if(vehicleList.get(vI).getTotalTime() - data.duration[pI][0] + data.duration[pI][pJ] + data.duration[pJ][0]  + data.tu[pJ] < data.T && vehicleList.get(vI).getWeightLoaded() + data.weight[pJ] < data.weightCapacity[vI] && vehicleList.get(vI).getVolumeLoaded() + data.volume[pJ] < data.volumeCapacity[vI]) {
                    vehicleList.get(vI).getRoute().add(data.locations[pJ]);
                    vehicleList.get(vI).setWL(vehicleList.get(vI).getWeightLoaded() + data.weight[pJ]);
                    vehicleList.get(vI).setVL(vehicleList.get(vI).getVolumeLoaded() + data.volume[pJ]);
                    vehicleList.get(vI).setTT(vehicleList.get(vI).getTotalTime() - data.duration[pI][0] + data.duration[pI][pJ] + data.duration[pJ][0] + data.tu[pJ]);
                    vehicleList.get(vI).setTD(vehicleList.get(vI).getTotalDistance() - data.distance[pI][0] + data.distance[pI][pJ] + data.distance[pJ][0]);
                    //System.out.println("case 2");
                }
            }
            if(oJ == 1 && vI == -1){
                if(vehicleList.get(vJ).getTotalTime() - data.duration[0][pJ] + data.duration[0][pI] + data.duration[pI][pJ] + data.tu[pI] < data.T && vehicleList.get(vJ).getWeightLoaded() + data.weight[pI] < data.weightCapacity[vJ] && vehicleList.get(vJ).getVolumeLoaded() + data.volume[pI] < data.volumeCapacity[vJ]) {
                    vehicleList.get(vJ).getRoute().add(0, data.locations[pI]);
                    vehicleList.get(vJ).setWL(vehicleList.get(vJ).getWeightLoaded() + data.weight[pI]);
                    vehicleList.get(vJ).setVL(vehicleList.get(vJ).getVolumeLoaded() + data.volume[pI]);
                    vehicleList.get(vJ).setTT(vehicleList.get(vJ).getTotalTime() - data.duration[0][pJ] + data.duration[0][pI] + data.duration[pI][pJ] + data.tu[pI]);
                    vehicleList.get(vJ).setTD(vehicleList.get(vJ).getTotalDistance() - data.distance[0][pJ] + data.distance[0][pI] + data.distance[pI][pJ]);
                    //System.out.println("case 3");
                }
            }
            if(oJ == 2 && vI == -1){
                if(vehicleList.get(vJ).getTotalTime() - data.duration[pJ][0] + data.duration[pJ][pI] + data.duration[pI][0] + data.tu[pI] < data.T && vehicleList.get(vJ).getWeightLoaded() + data.weight[pI] < data.weightCapacity[vJ] && vehicleList.get(vJ).getVolumeLoaded() + data.volume[pI] < data.volumeCapacity[vJ]) {
                    vehicleList.get(vJ).getRoute().add(data.locations[pI]);
                    vehicleList.get(vJ).setWL(vehicleList.get(vJ).getWeightLoaded() + data.weight[pI]);
                    vehicleList.get(vJ).setVL(vehicleList.get(vJ).getVolumeLoaded() + data.volume[pI]);
                    vehicleList.get(vJ).setTT(vehicleList.get(vJ).getTotalTime() - data.duration[pJ][0] + data.duration[pJ][pI] + data.duration[pI][0] + data.tu[pI]);
                    vehicleList.get(vJ).setTD(vehicleList.get(vJ).getTotalDistance() - data.distance[pJ][0] + data.distance[pJ][pI] + data.distance[pI][0]);
                    //System.out.println("case 4");
                }
            }

            //if both points are assigned to different vehicles and they are not interior, merge vehicles
            if(vI != vJ){
                if(oI == 1 && oJ == 1){
                    if(vehicleList.get(vI).getTotalTime() + vehicleList.get(vJ).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] -data.duration[0][pJ]< data.T && vehicleList.get(vI).getWeightLoaded() + vehicleList.get(vJ).getWeightLoaded() <= data.weightCapacity[vI] && vehicleList.get(vI).getVolumeLoaded() + vehicleList.get(vJ).getVolumeLoaded() <= data.volumeCapacity[vI]){
                        for(int i = 0; i < vehicleList.get(vJ).getRoute().size(); i++){
                            vehicleList.get(vI).getRoute().add(0,vehicleList.get(vJ).getRoute().get(i));
                        }
                        vehicleList.get(vI).setWL(vehicleList.get(vI).getWeightLoaded() + vehicleList.get(vJ).getWeightLoaded());
                        vehicleList.get(vI).setVL(vehicleList.get(vI).getVolumeLoaded() + vehicleList.get(vJ).getVolumeLoaded());
                        vehicleList.get(vI).setTT(vehicleList.get(vI).getTotalTime() + vehicleList.get(vJ).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ]);
                        vehicleList.get(vI).setTD(vehicleList.get(vI).getTotalDistance() + vehicleList.get(vJ).getTotalDistance() + data.distance[pI][pJ] - data.distance[0][pI] - data.distance[0][pJ]);
                        vehicleList.remove(vJ);
                        //System.out.println("case 5");
                    }
                }
                if(oI == 2 && oJ == 1){
                    if(vehicleList.get(vI).getTotalTime() + vehicleList.get(vJ).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ] < data.T && vehicleList.get(vI).getWeightLoaded() + vehicleList.get(vJ).getWeightLoaded() <= data.weightCapacity[vI] && vehicleList.get(vI).getVolumeLoaded() + vehicleList.get(vJ).getVolumeLoaded() <= data.volumeCapacity[vI]) {
                        for (int i = 0; i < vehicleList.get(vJ).getRoute().size(); i++) {
                            vehicleList.get(vI).getRoute().add(vehicleList.get(vJ).getRoute().get(i));
                        }
                        vehicleList.get(vI).setWL(vehicleList.get(vI).getWeightLoaded() + vehicleList.get(vJ).getWeightLoaded());
                        vehicleList.get(vI).setVL(vehicleList.get(vI).getVolumeLoaded() + vehicleList.get(vJ).getVolumeLoaded());
                        vehicleList.get(vI).setTT(vehicleList.get(vI).getTotalTime() + vehicleList.get(vJ).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ]);
                        vehicleList.get(vI).setTD(vehicleList.get(vI).getTotalDistance() + vehicleList.get(vJ).getTotalDistance() + data.distance[pI][pJ] - data.distance[0][pI] - data.distance[0][pJ]);
                        vehicleList.remove(vJ);
                        //System.out.println("case 6");
                    }
                }
                if(oI == 1 && oJ == 2){
                    if(vehicleList.get(vJ).getTotalTime() + vehicleList.get(vI).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ] < data.T && vehicleList.get(vJ).getWeightLoaded()+vehicleList.get(vI).getWeightLoaded() <= data.weightCapacity[vJ] && vehicleList.get(vJ).getVolumeLoaded() + vehicleList.get(vI).getVolumeLoaded() <= data.volumeCapacity[vJ]) {
                        for (int i = 0; i < vehicleList.get(vI).getRoute().size(); i++) {
                            vehicleList.get(vJ).getRoute().add(vehicleList.get(vI).getRoute().get(i));
                        }
                        vehicleList.get(vJ).setWL(vehicleList.get(vJ).getWeightLoaded() + vehicleList.get(vI).getWeightLoaded());
                        vehicleList.get(vJ).setVL(vehicleList.get(vJ).getVolumeLoaded() + vehicleList.get(vI).getVolumeLoaded());
                        vehicleList.get(vJ).setTT(vehicleList.get(vJ).getTotalTime() + vehicleList.get(vI).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ]);
                        vehicleList.get(vJ).setTD(vehicleList.get(vJ).getTotalDistance() + vehicleList.get(vI).getTotalDistance() + data.distance[pI][pJ] - data.distance[0][pI] - data.distance[0][pJ]);
                        vehicleList.remove(vI);
                        //System.out.println("case 7");
                    }
                }
                if(oI == 2 && oJ == 2){
                    if(vehicleList.get(vJ).getTotalTime() + vehicleList.get(vI).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ] < data.T && vehicleList.get(vJ).getWeightLoaded() + vehicleList.get(vI).getWeightLoaded() <= data.weightCapacity[vJ] && vehicleList.get(vJ).getVolumeLoaded() + vehicleList.get(vI).getVolumeLoaded() <= data.volumeCapacity[vJ]) {
                        for (int i = 0; i < vehicleList.get(vI).getRoute().size(); i++) {
                            vehicleList.get(vJ).getRoute().add(vehicleList.get(vJ).getRoute().size()-1,vehicleList.get(vI).getRoute().get(i));
                        }
                        vehicleList.get(vJ).setWL(vehicleList.get(vJ).getWeightLoaded() + vehicleList.get(vI).getWeightLoaded());
                        vehicleList.get(vJ).setVL(vehicleList.get(vJ).getVolumeLoaded() + vehicleList.get(vI).getVolumeLoaded());
                        vehicleList.get(vJ).setTT(vehicleList.get(vJ).getTotalTime() + vehicleList.get(vI).getTotalTime() + data.duration[pI][pJ] - data.duration[0][pI] - data.duration[0][pJ]);
                        vehicleList.get(vJ).setTD(vehicleList.get(vJ).getTotalDistance() + vehicleList.get(vI).getTotalDistance() + data.distance[pI][pJ] - data.distance[0][pI] - data.distance[0][pJ]);
                        vehicleList.remove(vI);
                        //System.out.println("case 8");
                    }
                }
            }
            /*for(int i = 0; i < vehicleList.size(); i++){
                System.out.println("Vehicle " + i);
                System.out.println("Total time: " + vehicleList.get(i).getTotalTime());
                for(int j = 0; j < vehicleList.get(i).getRoute().size(); j++){
                    System.out.print(vehicleList.get(i).getRoute().get(j).getID() + ", ");
                }
                System.out.println();
            }*/
            n++;
        }
        //printing the list
        for(int i = 0; i < vehicleList.size(); i++){
            z += data.c * vehicleList.get(i).getTotalDistance();
            z += data.fixedCost;

            System.out.println("Vehicle " + i);
            System.out.println("Vehicle weight: " + vehicleList.get(i).getWeightLoaded());
            System.out.println("Vehicle volume: " + vehicleList.get(i).getVolumeLoaded());
            System.out.println("Vehicle time: " + vehicleList.get(i).getTotalTime());
            System.out.println("Vehicle distance: " + vehicleList.get(i).getTotalDistance());
            System.out.println("Route: ");
            for(int j = 0; j < vehicleList.get(i).getRoute().size(); j++){
                System.out.print(vehicleList.get(i).getRoute().get(j).getID() + ", ");
            }
            System.out.println();
        }
        System.out.println();
        System.out.println("Total cost is: " + z);

        netObjective = z;

        //filling cList
        for(int i = 0; i < vehicleList.size(); i++) {
            cList.add(new ArrayList<Point>());
            for(int j = 0; j < vehicleList.get(i).getRoute().size();j++){
                cList.get(i).add(vehicleList.get(i).getRoute().get(j));
            }
        }

        for(int i=0;i<cList.size();i++){
            cList.get(i).add(0,data.locations[0]);
        }
    }
    private int[][] isItAlreadyAssigned(ArrayList<Vehicle> vehicleList, int x, int y) {
        int assignedVehicles[][] = {{-1,0},{-1,0}};
        for(int i = 0; i < vehicleList.size(); i++){
            for(int j = 0; j < vehicleList.get(i).getRoute().size(); j++){
                if(vehicleList.get(i).getRoute().get(j).getID()== x){
                    assignedVehicles[0][0] = i;
                    if(j==0){
                        assignedVehicles[0][1] = 1;
                    }
                    if(j==vehicleList.get(i).getRoute().size()-1){
                        assignedVehicles[0][1] = 2;
                    }
                }
                if(vehicleList.get(i).getRoute().get(j).getID()== y){
                    assignedVehicles[1][0] = i;
                    if(j==0){
                        assignedVehicles[1][1] = 1;
                    }
                    if(j==vehicleList.get(i).getRoute().size()-1){
                        assignedVehicles[1][1] = 2;
                    }
                }
            }
        }

        return assignedVehicles;
    }
}
