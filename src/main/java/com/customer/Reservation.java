package com.customer;

public class Reservation {
	
	
	private String id;
	private String name;
	private String email;
	private String hotelname;
	private String noOfRooms;
	private String arrival_date;
	private String amount;
	private String crdno;
	private String crdholder;
	

	public Reservation(String id, String name, String email, String hotelname, String noofrooms, String arrival_date,
			String amount, String crdno, String crdholder) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.hotelname = hotelname;
		this.noOfRooms = noofrooms;
		this.arrival_date = arrival_date;
		this.amount = amount;
		this.crdno = crdno;
		this.crdholder = crdholder;
	}
	
	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getHotelname() {
		return hotelname;
	}
	
	public String getNoOfRooms() {
		return noOfRooms;
	}

	public String getArrival_date() {
		return arrival_date;
	}

	public String getAmount() {
		return amount;
	}

	public String getCrdno() {
		return crdno;
	}
	
	public String getCrdholder() {
		return crdholder;
	}

	

}
