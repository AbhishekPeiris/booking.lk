package com.admin;


public class admin {
	private int id;
	private String Name;
	private String Email;
	private String phone;
	private String userName;
	private String password;
	
	
	public admin(int id, String name, String email, String phone, String userName, String password) {

		this.id = id;
		Name = name;
		Email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return Name;
	}


	public String getEmail() {
		return Email;
	}


	public String getPhone() {
		return phone;
	}


	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}


	
	
}
