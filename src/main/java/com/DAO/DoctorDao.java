package com.DAO;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Random;

import com.connection.DBConnect;

public class DoctorDao {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean addDoctor(String fname, String lname, String email, String mobile, String address, String password, int spec, String cost) {
		
		boolean isSuccess = false;
		
		Random random = new Random();
		int randomNumber = random.nextInt(90000) + 10000; // Ensures a 5-digit number

		String uniqueID = "doctor_" + randomNumber;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO doctor VALUES ('"+uniqueID+"','"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+address+"', '"+password+"', '"+spec+"', 1, '"+cost+"')";
			
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
	
	public static boolean updateDoctor(String userId, String fname, String lname, String email, String mobile, String address, String password, String cost) {
		
        boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE doctor SET fname='"+fname+"', lname='"+lname+"', email='"+email+"' ,mobile='"+mobile+"', address='"+address+"', password='"+password+"', channelingPayment='"+cost+"' WHERE doctorId = '"+userId+"'";
			
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
