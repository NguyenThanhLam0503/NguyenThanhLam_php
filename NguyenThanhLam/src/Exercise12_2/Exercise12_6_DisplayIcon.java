package Exercise12_2;


import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.Border;
import javax.swing.border.LineBorder;


public class Exercise12_6_DisplayIcon extends JFrame {

	private ImageIcon usIcon = new ImageIcon("D:/Ảnh/ảnh vui/BORF_Emote.png");
	private ImageIcon myIcon = new ImageIcon("D:/Ảnh/ảnh vui/Cheeky_Poro_Emote.png");
	private ImageIcon frIcon = new ImageIcon("D:/Ảnh/ảnh vui/Hype_Kitty_Emote.png");
	private ImageIcon ukIcon = new ImageIcon("D:/Ảnh/ảnh vui/Me-ow_Emote.png");
	public Exercise12_6_DisplayIcon() {
		setLayout(new GridLayout(1, 4, 5, 5));
		Border lineBorderBlack = new LineBorder(Color.BLACK, 10);
		Border lineBorderRed = new LineBorder(Color.RED, 10);
		Border lineBorderGreen = new LineBorder(Color.GREEN, 10);
		Border lineBorderYellow = new LineBorder(Color.YELLOW, 10);
		JLabel lbusIcon = new JLabel(usIcon);
		lbusIcon.setBorder(lineBorderBlack);
		JLabel lbmyIcon = new JLabel(myIcon);
		lbmyIcon.setBorder(lineBorderRed);
		JLabel lbfrIcon = new JLabel(frIcon);
		lbfrIcon.setBorder(lineBorderGreen);
		JLabel lbukIcon = new JLabel(ukIcon);
		lbukIcon.setBorder(lineBorderYellow);
		add(lbusIcon);
		add(lbmyIcon);
		add(lbfrIcon);
		add(lbukIcon);
	
	}

	/** Main method */
	public static void main(String[] args) {
		Exercise12_6_DisplayIcon frame = new Exercise12_6_DisplayIcon();
		frame.setTitle("TestImageIcon");
		frame.setSize(200, 200);
		frame.setLocationRelativeTo(null); // Center the frame
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	}

}
