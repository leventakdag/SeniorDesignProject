import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.*;




import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import javax.swing.*;


public class Maps {
    private static final String API_KEY = "AIzaSyBZ_wraQALtbu8j7A7s1lFC5cPzb20oFQ0";
    float[][][] m;
    float[][] timeMatrix;
    float[][] distanceMatrix;
    private Data data;
    public Maps(Data data) {
        this.data = data;
    }
    public String getData(String source, String destination)throws Exception{

         var url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=" + source + "&destinations=" + destination + "&key=" + API_KEY;
         var request = HttpRequest.newBuilder().GET().uri(URI.create(url)).build();
         var client = HttpClient.newBuilder().build();
         var response = client.send(request, HttpResponse.BodyHandlers.ofString()).body();

         return response;
    }
    public void parse(String response,int i,int j){
        long time = -1L;
        long distance = -1L;
        //parsing json data and updating data
        {
            try {
                JSONParser jp = new JSONParser();
                JSONObject jo = (JSONObject) jp.parse(response);
                JSONArray ja = (JSONArray) jo.get("rows");
                jo = (JSONObject) ja.get(0);
                ja = (JSONArray) jo.get("elements");
                jo = (JSONObject) ja.get(0);
                JSONObject je = (JSONObject) jo.get("distance");
                JSONObject jf = (JSONObject) jo.get("duration");
                time = (long) jf.get("value");
                distance = (long) (je.get("value"));
                timeMatrix[i][j] = time/60;
                timeMatrix[j][i] = time/60;
                distanceMatrix[i][j] = distance/1000;
                distanceMatrix[j][i] = distance/1000;
            } catch (Exception e) {}
        }
    }
    public float[][][] getMatrix() throws Exception {
        int n = data.locations.length;
        m = new float[2][n][n];
        timeMatrix = new float[n][n];
        distanceMatrix = new float[n][n];
        for (int i =0 ; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i != j) {
                     String response = getData(String.valueOf(data.locations[i].getX())+"," + String.valueOf(data.locations[i].getY()), String.valueOf(data.locations[j].getX())+"," + String.valueOf(data.locations[j].getY()));
                      parse(response,i,j);
                } else {
                    timeMatrix[i][j] = 1000000;
                    distanceMatrix[i][j] = 1000000;
                }
            }
        }
        m[0] = timeMatrix;
        m[1] = distanceMatrix;
        return m;
    }
}


