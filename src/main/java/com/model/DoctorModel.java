package com.model;

public class DoctorModel {
	
	private String fname;
	private String lname;
	private String email;
	private String mobile;
	private String address;
	private String password;
	private int spec;
	
	
	public DoctorModel(String fname, String lname, String email, String mobile, String address, String password,
			int spec) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.password = password;
		this.spec = spec;
	}
	
	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getAddress() {
		return address;
	}

	public String getPassword() {
		return password;
	}

	public int getSpec() {
		return spec;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setSpec(int spec) {
		this.spec = spec;
	}

	

}
