package com.model;

public class PatientModel {
	
	private String name;
	private String nic;
	private int age;
	private String address; 
	private String mobile;
	private String joined_date;
	private int status;
	private int blood_type;
	
	
	public PatientModel(String name, String nic, int age, String address, String mobile, String joined_date, int status,
			int blood_type) {
		super();
		this.name = name;
		this.nic = nic;
		this.age = age;
		this.address = address;
		this.mobile = mobile;
		this.joined_date = joined_date;
		this.status = status;
		this.blood_type = blood_type;
	}


	public String getName() {
		return name;
	}


	public String getNic() {
		return nic;
	}


	public int getAge() {
		return age;
	}


	public String getAddress() {
		return address;
	}


	public String getMobile() {
		return mobile;
	}


	public String getJoined_date() {
		return joined_date;
	}


	public int getStatus() {
		return status;
	}


	public int getBlood_type() {
		return blood_type;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setNic(String nic) {
		this.nic = nic;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public void setJoined_date(String joined_date) {
		this.joined_date = joined_date;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public void setBlood_type(int blood_type) {
		this.blood_type = blood_type;
	}
	
	

}
