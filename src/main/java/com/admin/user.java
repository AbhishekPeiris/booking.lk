package com.admin;

public class user {
	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private String userName;
	private String password;
	private String phone;
	private String address;
	private String city;
	
	
	public user(int id, String firstname, String lastname, String email, String userName, String password, String phone,
			String address, String city) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.city = city;
		
		
	}
	public int getId() {
		return id;
	}
	public String getFirstname() {
		return firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public String getEmail() {
		return email;
	}
	public String getUserNAme() {
		return userName;
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
	public String getCity() {
		return city;
	}
	
	
}
