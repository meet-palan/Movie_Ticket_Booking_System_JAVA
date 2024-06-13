/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
public class QR {
    public static void main(String[] args) 
        {
            Connection connection=null;
		try {
                    
                Class.forName("com.mysql.jdbc.Driver");              
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root", "");
            String query = "select * from details order by cust_id desc limit 1";
            Statement stmt = null;
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
            	QR.generate_qr(rs.getString("cust_id"),rs.getString("details"));
            }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO: handle exception
		}
	}
	public static void generate_qr(String image_name,String qrCodeData) {
        try {
            String filePath = "D:\\"+image_name+".png";
            String charset = "UTF-8"; // or "ISO-8859-1"
            Map < EncodeHintType, ErrorCorrectionLevel > hintMap = new HashMap < EncodeHintType, ErrorCorrectionLevel > ();
            hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
            BitMatrix matrix = new MultiFormatWriter().encode(
                new String(qrCodeData.getBytes(charset), charset),
                BarcodeFormat.QR_CODE, 200, 200, hintMap);
            MatrixToImageWriter.writeToFile(matrix, filePath.substring(filePath
                .lastIndexOf('.') + 1), new File(filePath));
            System.out.println("QR Code image created successfully!");
            
            JFrame frame = new JFrame();
        ImageIcon icon = new ImageIcon("D:\\"+image_name+".png");
        JLabel label = new JLabel(icon);
        frame.add(label);
        frame.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true); 
        } catch (WriterException | IOException e) {
            System.out.println(e);
        }
    }
    
}
