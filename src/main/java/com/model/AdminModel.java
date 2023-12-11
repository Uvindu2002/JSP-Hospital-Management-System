package com.model;

public class AdminModel {
	
	private String name;
	private String email;
	private String type;
	private String password;	
	private String phone;
	private String address;
	
	
	public AdminModel(String name, String email, String type, String password, String phone, String address) {
		super();
		this.name = name;
		this.email = email;
		this.type = type;
		this.password = password;
		this.phone = phone;
		this.address = address;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getType() {
		return type;
	}


	public String getPassword() {
		return password;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddress() {
		return address;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setType(String type) {
		this.type = type;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
