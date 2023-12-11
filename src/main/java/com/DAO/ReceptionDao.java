package com.DAO;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Random;

import com.connection.DBConnect;

public class ReceptionDao {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean addReception(String name, String email, String mobile, String address, String password) {
		
		boolean isSuccess = false;
		
		Random random = new Random();
		int randomNumber = random.nextInt(90000) + 10000; // Ensures a 5-digit number

		String uniqueID = "recep_" + randomNumber;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO receptionist VALUES ('"+uniqueID+"','"+name+"','"+email+"','"+mobile+"','"+address+"', '"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	public static boolean updateReception(String userId, String name, String email, String mobile, String address, String password) {
		
        boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE receptionist SET name='"+name+"', email='"+email+"' ,mobile='"+mobile+"', address='"+address+"', password='"+password+"' WHERE receptionistId = '"+userId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			 
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}

}
