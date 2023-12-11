package com.DAO;

import java.sql.Connection;
import java.sql.Statement;

import com.connection.DBConnect;

public class PatientDao {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	
	
	public static boolean updatePatient(String name, String nic, String mobile, String email) {
		
		boolean isSuccess = false;
				
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE patient SET name='"+name+"', phone='"+mobile+"', email='"+email+"' WHERE nic = '"+nic+"'";
				
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
