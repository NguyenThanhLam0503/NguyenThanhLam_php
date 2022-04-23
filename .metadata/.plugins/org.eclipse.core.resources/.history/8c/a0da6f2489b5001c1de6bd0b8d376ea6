package Exercise12_2;


import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;



public class Exercise12_2_BorderLayout extends JFrame{
	public Exercise12_2_BorderLayout() {
		setLayout(new BorderLayout(1,6));
			JPanel p1 = new JPanel();
			
			add(new JButton("Button 01"), BorderLayout.SOUTH);
			add(new JButton("Button 02"), BorderLayout.SOUTH);
			add(new JButton("Button 03"), BorderLayout.SOUTH);
			add(new JButton("Button 04"), BorderLayout.CENTER);
			add(new JButton("Button 05"), BorderLayout.CENTER);
			add(new JButton("Button 06"), BorderLayout.CENTER);
		
		}
		public static void main(String[] args) {
			// TODO Auto-generated method stub
			Exercise12_2_BorderLayout frame = new Exercise12_2_BorderLayout();
			frame.setTitle("Exercise 12-02");
			frame.setSize(600, 600);
			frame.setLocationRelativeTo(null); // Center the frame
			frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			frame.setVisible(true);
		}
}
