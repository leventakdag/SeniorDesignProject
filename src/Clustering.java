import java.util.ArrayList;

public class Clustering {

	private Data data;

	public Clustering(Data Data) {
		// TODO Auto-generated constructor stub
		this.data = Data;
	}

	public ArrayList<ArrayList<Point>> limitedKMeans() {


    	//Point[] points = data.locations;
    	
    	Point[] points = new Point[1000];
    	
    	for(int i = 0; i < points.length; i++) {
    		points[i] = new Point(Math.round((100000 * Math.random())), Math.round((100000 * Math.random())), i);
    	}

// find max-min values of X and Y values of locations
//in order to randomize cluster centers!!!

        ArrayList<Point> clusterCenters = new ArrayList<Point>();
        
        for(int i = 0; i < data.clusterCount; i++) {
        	//clusterCenters.add(new Point(40.4+(Math.random()/5), 49.5+(Math.random())/2, (-i)));
        	clusterCenters.add(new Point((100000 * Math.random()), (100000 * Math.random()), (-i)));
        }
                
        ArrayList<ArrayList<Point> > cList = new ArrayList<ArrayList<Point> >();
        ArrayList<ArrayList<Point> > formerCList = new ArrayList<ArrayList<Point> >();
        
        for(int i = 0; i < clusterCenters.size(); i++) {
        	cList.add(new ArrayList<Point>());
        }
       
        for(int i = 0; i < clusterCenters.size(); i++) {
        	formerCList.add(new ArrayList<Point>());
        }
        
        boolean isEqual = false;

        while(!isEqual) {

        	  for(int i = 1; i < points.length; i++) {
                  double minL = 1000000;
                  int clusterToAssign = 1000;
                  for(int j = 0; j < clusterCenters.size(); j++) {
                      double s = Math.sqrt((points[i].getY() - clusterCenters.get(j).getY()) * (points[i].getY() - clusterCenters.get(j).getY()) + (points[i].getX() - clusterCenters.get(j).getX()) * (points[i].getX() - clusterCenters.get(j).getX()));
                      if(s < minL) {
                          clusterToAssign = j;
                          minL = s;
                      }
                  }
                  System.out.println(points[i]);
                  System.out.println("Customer "+ i + " is assigned to " + clusterToAssign);
                  cList.get(clusterToAssign).add(points[i]);
                  
              }

              for(int i = 0; i < clusterCenters.size(); i++) {
              	clusterCenters.set(i, centroid(cList.get(i)));
                  System.out.println("Cluster "+ i + " will be located at " + clusterCenters.get(i) + " in the next iteration");
              }
              
              int numbersNotFit = 0;
              
    		  for(int i = 0; i < cList.size(); i++) {
            	  for(int j = 0; j < cList.get(i).size(); j++) {
            		  
            			  if(formerCList.get(i).contains(cList.get(i).get(j)) == false) {
                			  numbersNotFit++;
                		  }
            	  }
              }
			  
			  if(numbersNotFit == 0) {
            	  isEqual = true;
              }
			  else{
            	  for(int i = 0;i < formerCList.size(); i++) {
                	  formerCList.get(i).clear();
                  }
            	  for(int i = 0; i < cList.size(); i++) {
                	  for(int j = 0; j< cList.get(i).size(); j++) {
                		  formerCList.get(i).add(cList.get(i).get(j));
                		  }
                	  }
            	  for(int i = 0;i < cList.size(); i++) {
                	  cList.get(i).clear();
                  }
			  }
        }
        //limit # of nodes in a cluster

		for(int i=0;i<cList.size();i++){
			if(cList.get(i).size()>data.maxClusterNodes){
				int gap = cList.get(i).size() - data.maxClusterNodes;
				//double centerX = clusterCenters.get(i).getX();
				//double centerY = clusterCenters.get(i).getY();

				while(gap>0){
					int pointToRelease = 3131;
					int selectedCluster = 6969;
					double minDist = 1000000;

					for (int j=0;j<cList.get(i).size();j++){
						double pointX = cList.get(i).get(j).getX();
						double pointY = cList.get(i).get(j).getY();

						//nearest cluster center for point j
						double newDist = 1000000;
						int clusterToAdd = 3131;
						for (int k=0;k<cList.size();k++) {
							if(k!=i){
								if(cList.get(k).size()<data.maxClusterNodes){
									double newCenterX = clusterCenters.get(k).getX();
									double newCenterY = clusterCenters.get(k).getY();
									double s = Math.sqrt((newCenterX - pointX) * (newCenterX - pointX) + (newCenterY - pointY) * (newCenterY - pointY));
									if(newDist > s){
										newDist = s;
										clusterToAdd = k;
									}
								}
							}
						}

						if(newDist < minDist){
							pointToRelease = j;
							minDist =newDist;
							selectedCluster = clusterToAdd;
						}

					}


					cList.get(selectedCluster).add(cList.get(i).get(pointToRelease));
					cList.get(i).remove(pointToRelease);
					gap--;
				}
			}
		}

        return cList;
    }

	public ArrayList<ArrayList<Point>> unlimitedKMeans() {

		Point[] points = data.locations;

// find max-min values of X and Y values of locations
//in order to randomize cluster centers!!!

		ArrayList<Point> clusterCenters = new ArrayList<Point>();

		for(int i = 0; i < data.clusterCount; i++) {
			clusterCenters.add(new Point(40.4+(Math.random()/5), 49.5+(Math.random())/2, (-i)));
		}

		ArrayList<ArrayList<Point> > cList = new ArrayList<ArrayList<Point> >();
		ArrayList<ArrayList<Point> > formerCList = new ArrayList<ArrayList<Point> >();

		for(int i = 0; i < clusterCenters.size(); i++) {
			cList.add(new ArrayList<Point>());
		}

		for(int i = 0; i < clusterCenters.size(); i++) {
			formerCList.add(new ArrayList<Point>());
		}

		boolean isEqual = false;

		while(!isEqual) {

			for(int i = 1; i < points.length; i++) {
				double minL = 10000;
				int clusterToAssign = 1000;
				for(int j = 0; j < clusterCenters.size(); j++) {
					double s = Math.sqrt((points[i].getY() - clusterCenters.get(j).getY()) * (points[i].getY() - clusterCenters.get(j).getY()) + (points[i].getX() - clusterCenters.get(j).getX()) * (points[i].getX() - clusterCenters.get(j).getX()));
					if(s < minL) {
						clusterToAssign = j;
						minL = s;
					}
				}
				System.out.println(points[i]);
				System.out.println("Customer "+ i + " is assigned to " + clusterToAssign);
				cList.get(clusterToAssign).add(points[i]);

			}

			for(int i = 0; i < clusterCenters.size(); i++) {
				clusterCenters.set(i, centroid(cList.get(i)));
				System.out.println("Cluster "+ i + " will be located at " + clusterCenters.get(i) + " in the next iteration");
			}

			int numbersNotFit = 0;

			for(int i = 0; i < cList.size(); i++) {
				for(int j = 0; j < cList.get(i).size(); j++) {

					if(formerCList.get(i).contains(cList.get(i).get(j)) == false) {
						numbersNotFit++;
					}
				}
			}

			if(numbersNotFit == 0) {
				isEqual = true;
			}
			else{
				for(int i = 0;i < formerCList.size(); i++) {
					formerCList.get(i).clear();
				}
				for(int i = 0; i < cList.size(); i++) {
					for(int j = 0; j< cList.get(i).size(); j++) {
						formerCList.get(i).add(cList.get(i).get(j));
					}
				}
				for(int i = 0;i < cList.size(); i++) {
					cList.get(i).clear();
				}
			}
		}
		//DO NOT limit # of nodes in a cluster

		return cList;
	}

	private Point centroid(ArrayList<Point> arrayList) {
		 double centroidX = 0, centroidY = 0;

	        for(Point p : arrayList) {
	            centroidX += p.getX();
	            centroidY += p.getY();
	        }
	        
	        Point point = new Point(centroidX / arrayList.size(), centroidY / arrayList.size(), 0);
	        
	    return point;
	}


   
}
