package Exercise12_2;


import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;



public class Exercise12_4_GridLayout extends JFrame {

	public Exercise12_4_GridLayout() {
		setLayout(new GridLayout(4, 4, 5, 5));
		Panells pi = new Panells();
		add(pi);
		add(new JButton("Button 7"));
		add(new JButton("Button 8"));
		add(new JButton("Button 9"));
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Exercise12_4_GridLayout frame = new Exercise12_4_GridLayout();
		frame.setTitle("ShowGridLayout");
		frame.setSize(900, 300);
		frame.setLocationRelativeTo(null); // Center the frame
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	}
}

class Panells extends JPanel {
	public Panells() {
		JPanel p1 = new JPanel();
		p1.add(new JButton("Button 1"));
		p1.add(new JButton("Button 2"));
		p1.add(new JButton("Button 3"));

		JPanel p2 = new JPanel();
		p2.add(new JButton("Button 4"));
		p2.add(new JButton("Button 5"));
		p2.add(new JButton("Button 6"));
		add(p1);
		add(p2);
	}
}
