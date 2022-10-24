import java.util.ArrayList;

public class ClarkeAndWright {
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
        ArrayList<Saving> savingsList = savingsList();
        ArrayList<Vehicle> finalList = new ArrayList<Vehicle>();
        ArrayList<Integer> assignedPoints = new ArrayList<Integer>();
        int k = 0;
        boolean stop = false;

        while(!stop){
            //System.out.println("Step " + k);
            //System.out.println("Trying to assign Link "+savingsList.get(k).getI()+","+savingsList.get(k).getJ());
            int count = 0;
            if(finalList.size() != 0){
                for(int i = 0; i < finalList.size(); i++){
                    if(savingsList.get(k).getI() == finalList.get(i).getRoute().get(0).getID()){
                        if(!isItAlreadyAssigned(finalList, savingsList.get(k).getJ())){
                            finalList.get(i).getRoute().add(0,data.locations[savingsList.get(k).getJ()]);
                            finalList.get(i).setVL(finalList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getJ()]));
                            finalList.get(i).setWL(finalList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getJ()]));
                            //finalList.get(i).setTT(finalList.get(i).getTotalTime() + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]));
                            count++;
                            assignedPoints.add(savingsList.get(k).getJ());
                            break;
                        }
                    }
                    if(savingsList.get(k).getI() == finalList.get(i).getRoute().get(finalList.get(i).getRoute().size()-1).getID()){
                        if(!isItAlreadyAssigned(finalList, savingsList.get(k).getJ())){
                            finalList.get(i).getRoute().add(data.locations[savingsList.get(k).getJ()]);
                            finalList.get(i).setVL(finalList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getJ()]));
                            finalList.get(i).setWL(finalList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getJ()]));
                            //finalList.get(i).setTT(finalList.get(i).getTotalTime() + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]));
                            count++;
                            assignedPoints.add(savingsList.get(k).getJ());
                            break;
                        }
                    }
                    if(savingsList.get(k).getJ() == finalList.get(i).getRoute().get(0).getID()){
                        if(!isItAlreadyAssigned(finalList, savingsList.get(k).getI())) {
                            finalList.get(i).getRoute().add(0, data.locations[savingsList.get(k).getI()]);
                            finalList.get(i).setVL(finalList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getI()]));
                            finalList.get(i).setWL(finalList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getI()]));
                            //finalList.get(i).setTT(finalList.get(i).getTotalTime() + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]));
                            count++;
                            assignedPoints.add(savingsList.get(k).getI());
                            break;
                        }
                    }
                    if(savingsList.get(k).getJ() == finalList.get(i).getRoute().get(finalList.get(i).getRoute().size()-1).getID()){
                        if(!isItAlreadyAssigned(finalList, savingsList.get(k).getI())) {
                            finalList.get(i).getRoute().add(data.locations[savingsList.get(k).getI()]);
                            finalList.get(i).setVL(finalList.get(i).getVolumeLoaded() + (data.volume[savingsList.get(k).getI()]));
                            finalList.get(i).setWL(finalList.get(i).getWeightLoaded() + (data.weight[savingsList.get(k).getI()]));
                            //finalList.get(i).setTT(finalList.get(i).getTotalTime() + (data.duration[savingsList.get(k).getJ()][savingsList.get(k).getI()]));
                            count++;
                            assignedPoints.add(savingsList.get(k).getI());
                            break;
                        }
                    }

                    for(int j = 0; j < finalList.get(i).getRoute().size(); j++){
                        if(savingsList.get(k).getI()==finalList.get(i).getRoute().get(j).getID()||savingsList.get(k).getJ()==finalList.get(i).getRoute().get(j).getID()){
                            count++;
                            break;
                        }
                    }
                }
            }

            if(count == 0){
                //System.out.println("Creating a new route");
                ArrayList<Point> tempList = new ArrayList<Point>();
                tempList.add(data.locations[savingsList.get(k).getI()]);
                tempList.add(data.locations[savingsList.get(k).getJ()]);
                Vehicle v = new Vehicle((data.weight[savingsList.get(k).getJ()])+(data.weight[savingsList.get(k).getI()]),(data.volume[savingsList.get(k).getJ()])+(data.volume[savingsList.get(k).getI()]),0,tempList);
                finalList.add(v);
                assignedPoints.add(savingsList.get(k).getI());
                assignedPoints.add(savingsList.get(k).getJ());
            }
            if(assignedPoints.size() == data.n){
                stop = true;
            }
            k++;
        }

        for(int i = 0; i < finalList.size(); i++){
            System.out.print("Vehicle: " + i + ", Total time: " + finalList.get(i).getTotalTime() + ", Total weight: " + finalList.get(i).getWeightLoaded() + ", Total volume: " + finalList.get(i).getVolumeLoaded());
            System.out.print(", Route: ");
            for(int j = 0; j < finalList.get(i).getRoute().size(); j++){
                System.out.print(finalList.get(i).getRoute().get(j).getID() + ",");
            }
            System.out.println();
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
