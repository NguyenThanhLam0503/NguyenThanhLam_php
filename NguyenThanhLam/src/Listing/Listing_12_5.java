package Listing;
 import javax.swing.JButton;
 import javax.swing.JFrame;
 import java.awt.BorderLayout;
public class Listing_12_5 extends JFrame
{
		 public Listing_12_5() 
		 {
		 // Set BorderLayout with horizontal gap 5 and vertical gap 10
		 setLayout( new BorderLayout(5,10));
		
		 // Add buttons to the frame
		 add(new JButton("East"), BorderLayout.EAST);
		 add(new JButton("South"), BorderLayout.SOUTH);
		 add(new JButton("West"), BorderLayout.WEST);
		 add(new JButton("North"), BorderLayout.NORTH);
		 add(new JButton("Center"), BorderLayout.CENTER);
		 }
		
		 /** Main method */
		 public static void main(String[] args)
		 {
			 Listing_12_5 frame = new Listing_12_5();
		 frame.setTitle("ShowBorderLayout");
		 frame.setSize(300, 200);
		 frame.setLocationRelativeTo(null); // Center the frame
		 frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		 frame.setVisible(true);
		 }
	}

