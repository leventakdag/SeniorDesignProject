import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;

public class WriteOperations {

    public static void writeTimeMatrix(float[][] timeMatrix, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < timeMatrix.length; i++) {
                for(int j = 0; j < timeMatrix[i].length; j++) {
                    pw.print(timeMatrix[i][j]);
                    pw.print(",");
                }
                pw.println();
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }

    public static void writePointData(ArrayList<ArrayList<Point>> cList, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < cList.size(); i++) {
                for(int j = 0; j < cList.get(i).size(); j++) {
                    pw.print(i);
                    pw.print(",");
                    pw.print(cList.get(i).get(j).getX());
                    pw.print(",");
                    pw.print(cList.get(i).get(j).getY());
                    pw.print(",");
                    pw.print((int)cList.get(i).get(j).getID());
                    pw.println();
                }
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }

    public static void writeSolutionData(ArrayList<ArrayList<ArrayList<Point>>> sList, String filePath) {
        try {
            FileWriter fw = new FileWriter(filePath,true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);

            for(int i = 0; i < sList.size(); i++) {
                for(int j = 0; j < sList.get(i).size(); j++) {
                    for(int k = 0; k<sList.get(i).get(j).size();k++){
                        pw.print(i);
                        pw.print(",");
                        pw.print(j);
                        pw.print(",");
                        pw.print(sList.get(i).get(j).get(k).getX());
                        pw.print(",");
                        pw.print(sList.get(i).get(j).get(k).getY());
                        pw.print(",");
                        pw.print((int)sList.get(i).get(j).get(k).getID());
                        pw.println();
                    }
                }
            }

            pw.flush();
            pw.close();

        } catch (Exception E) {

        }
    }
}
