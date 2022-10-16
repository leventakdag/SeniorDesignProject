public class Point {
    private double x;
    private double y;
    private int id;
    private Point centeroid;
 
    // New points default to zero zero if no coordinates
    // are provided.
 
 
    public Point(double x, double y, int id) {
	
        setX(x);
        setY(y);
        setID(id);// TODO Auto-generated constructor stub
	}
    public Point(double x, double y) {

        setX(x);
        setY(y);
    }

    public Point() {

    }

    private void setID(int id) {
		// TODO Auto-generated method stub
    	this.id = id;
	}

	public double getX() {
        return x;
    }
 
	public int getID() {
        return id;
    }
	
    public void setX(double x) {
        if (x >= 0) {
            this.x = x;
        }
    }
 
    public double getY() {
        return y;
    }
 
    public void setY(double y) {
        if (y >= 0) {
            this.y = y;
        }
    }
    public void setCenteroid(Point centeroid){
        this.centeroid = centeroid;
    }
    public Point getCenteroid(){
        return this.centeroid;
    }
 
 
    public String toString() {
        return "(" + this.x + "," + this.y + ")";
    }
}
