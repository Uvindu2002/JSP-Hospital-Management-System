package com.DAO;

import com.model.EmployeeModel;

public interface EmployeeDao {
	
	public EmployeeModel login(String type,String userId, String password);
	
	

}
