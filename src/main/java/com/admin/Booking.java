package com.admin;

public class Booking {
	
	
	private String booking_id;
	private String name;
	private String room_type;
	private String total_numbers;
	private String date;
	private String time;
	private String arrival_date;
	private String departure_date;
	private String email_id;
	private String phone_number;
	private String status;
	public Booking(String booking_id, String name, String room_type, String total_numbers, String date, String time,
			String arrival_date, String departure_date, String email_id, String phone_number, String status) {
		super();
		this.booking_id = booking_id;
		this.name = name;
		this.room_type = room_type;
		this.total_numbers = total_numbers;
		this.date = date;
		this.time = time;
		this.arrival_date = arrival_date;
		this.departure_date = departure_date;
		this.email_id = email_id;
		this.phone_number = phone_number;
		this.status = status;
		
		
	}
	public String getBooking_id() {
		return booking_id;
	}
	public String getName() {
		return name;
	}
	public String getRoom_type() {
		return room_type;
	}
	public String getTotal_numbers() {
		return total_numbers;
	}
	public String getDate() {
		return date;
	}
	
	public String getTime() {
		return time;
	}
	public String getArrival_date() {
		return arrival_date;
	}
	public String getDeparture_date() {
		return departure_date;
	}
	public String getEmail_id() {
		return email_id;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public String getStatus() {
		return status;
	}
	
	



	

}
