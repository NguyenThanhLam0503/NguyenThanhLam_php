package Listing;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Listing_12_6 extends JFrame {
		 public Listing_12_6() {
		 // Create panel p1 for the buttons and set GridLayout
			 JPanel p1 = new JPanel();
		p1.setLayout(new GridLayout(4, 3));
		// Add buttons to the panel
		 for (int i = 1; i <= 9; i++) {
		 p1.add(new JButton("" + i));
		 }
		  p1.add(new JButton("" + 0));
		  p1.add(new JButton("Start"));
		  p1.add(new JButton("Stop"));
		// Create panel p2 to hold a text field and p1
		  
		  JPanel p2 = new JPanel(new BorderLayout());
		  p2.add(new JTextField("Time to be displayed here"),
		   BorderLayout.CENTER);
		  p2.add(p1, BorderLayout.CENTER);
		   // add contents into the frame
		   add(p2, BorderLayout.EAST);
		   add(new JButton("Food to be placed here"),
		   BorderLayout.CENTER);
		   }
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Listing_12_6 frame = new Listing_12_6();
			 frame.setTitle("The Front View of a Microwave Oven");
			 frame.setSize(400, 250);
			 frame.setLocationRelativeTo(null); // Center the frame
			 frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			 frame.setVisible(true);
			 }
			 
	}


