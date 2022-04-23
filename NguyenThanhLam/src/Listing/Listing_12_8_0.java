package Listing;

import java.awt.GridLayout;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class Listing_12_8_0 extends JFrame {

	private ImageIcon usIcon = new ImageIcon("D:/Ảnh/ảnh vui/BORF_Emote.png");
	private ImageIcon myIcon = new ImageIcon("D:/Ảnh/ảnh vui/Cheeky_Poro_Emote.png");
	private ImageIcon frIcon = new ImageIcon("D:/Ảnh/ảnh vui/Hype_Kitty_Emote.png");
	private ImageIcon ukIcon = new ImageIcon("D:/Ảnh/ảnh vui/Me-ow_Emote.png");

	public Listing_12_8_0() {
		setLayout(new GridLayout(1, 4, 5, 5));
		
		add(new JLabel(usIcon));
		add(new JLabel(myIcon));
		add(new JButton(frIcon));
		add(new JButton(ukIcon));
	}

	public static void main(String[] args) {
		Listing_12_8_0 frame = new Listing_12_8_0();
		 frame.setTitle("TestImageIcon");
		 frame.setSize(200, 200);
		frame.setLocationRelativeTo(null); // Center the frame
		 frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	}
}


