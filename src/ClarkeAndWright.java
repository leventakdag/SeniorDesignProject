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
        }
        return orderedList;
    }

    public void solveClarkeAndWright(){
        ArrayList<Saving> savingsList = savingsList();
        ArrayList<ArrayList<Point>> finalList = new ArrayList<ArrayList<Point>>();
        ArrayList<Integer> assignedPoints = new ArrayList<Integer>();

        for(int k = 0; k < savingsList.size(); k++){
            int check = 0;
            int count = 0;
            int routeToAssign = 10000;
            if(finalList.size() != 0){
                for(int i = 0; i < finalList.size(); i++){
                    for(int j = 0; j < finalList.get(i).size(); j++){
                        if(savingsList.get(k).getI() == finalList.get(i).get(j).getID()){
                            check = 1;
                            routeToAssign = i;
                            count++;
                        }
                        if(savingsList.get(k).getJ() == finalList.get(i).get(j).getID()){
                            check = 2;
                            routeToAssign = i;
                            count++;
                        }
                    }
                }
            }

            if(check == 1){
                boolean isItAssigned = false;
                for(int i = 0; i < assignedPoints.size(); i++){
                    if(assignedPoints.get(i) == savingsList.get(k).getJ()){
                        isItAssigned = true;
                    }
                }
                if(!isItAssigned){
                    finalList.get(routeToAssign).add(data.locations[savingsList.get(k).getJ()]);
                }
            }

            if(check == 2){
                boolean isItAssigned = false;
                for(int i = 0; i < assignedPoints.size(); i++){
                    if(assignedPoints.get(i) == savingsList.get(k).getI()){
                        isItAssigned = true;
                    }
                }
                if(!isItAssigned){
                    finalList.get(routeToAssign).add(data.locations[savingsList.get(k).getI()]);
                }
            }

            if(count == 0){
                ArrayList<Point> tempList = new ArrayList<Point>();
                tempList.add(data.locations[savingsList.get(k).getI()]);
                tempList.add(data.locations[savingsList.get(k).getJ()]);
                finalList.add(tempList);
            }

            assignedPoints.add(savingsList.get(k).getI());
            assignedPoints.add(savingsList.get(k).getJ());
        }

        for(int i = 0; i < finalList.size(); i++){
            System.out.print("Route " + i + ": ");
            for(int j = 0; j < finalList.get(i).size(); j++){
                System.out.print(finalList.get(i).get(j).getID() + ",");
            }
            System.out.println();
        }
    }
}
