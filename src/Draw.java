import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Ellipse2D;
import java.util.ArrayList;
import java.util.Random;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

public class Draw extends JPanel {
	
	private ArrayList<ArrayList<Point>> printList;

	public Draw(ArrayList<ArrayList<Point>> cList) {
		// TODO Auto-generated constructor stub
	  this.printList = cList;
	}

	public void paint(Graphics gg) {
		
		for(int i = 0; i < printList.size(); i++) {
			
			Graphics2D g = (Graphics2D) gg;
			
			Random rand = new Random();
		    
		    float cR = rand.nextFloat();
		    float cG = rand.nextFloat();
		    float cB = rand.nextFloat();
		    Color randomColor = new Color(cR, cG, cB);
			g.setColor(randomColor);
			
			
			for(int j = 0;j < printList.get(i).size(); j++) {
				
			    /* Enable anti-aliasing and pure stroke */
			    g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
			    g.setRenderingHint(RenderingHints.KEY_STROKE_CONTROL, RenderingHints.VALUE_STROKE_PURE);

			    /* Construct a shape and draw it */
			    Ellipse2D.Double shape = new Ellipse2D.Double(printList.get(i).get(j).getX() ,  printList.get(i).get(j).getY(), 10, 10);
			    g.draw(shape);
			}
		}
		
	}
	

	public void drawPoints() {
		JFrame frame = new JFrame();
		
		
		frame.getContentPane().add(new Draw(printList));
		
		
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(1000, 1000);
		frame.setVisible(true);
		
		
		
  }
}