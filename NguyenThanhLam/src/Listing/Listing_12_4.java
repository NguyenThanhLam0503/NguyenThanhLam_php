package Listing;

import java.awt.GridLayout;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class Listing_12_4 extends JFrame{
		 public Listing_12_4() {
		 // Set GridLayout, 3 rows, 2 columns, and gaps 5 between
		 // components horizontally and vertically
		 setLayout(new GridLayout(3, 2, 5, 5));
		
		 // Add labels and text fields to the frame
		 add(new JLabel("First Name"));
		 add(new JTextField(8));
		 add(new JLabel("MI"));
		 add(new JTextField(1));
		 add(new JLabel("Last Name"));
		 add(new JTextField(8));
		 }
		
		 /** Main method */
		 public static void main(String[] args) {
			 Listing_12_4 frame = new Listing_12_4();
		 frame.setTitle("ShowGridLayout");
		 frame.setSize(200, 130);
		 frame.setLocationRelativeTo(null); // Center the frame
		 frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		 frame.setVisible(true);
		 }
 }

