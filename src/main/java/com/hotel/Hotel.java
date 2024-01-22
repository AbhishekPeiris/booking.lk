package com.hotel;

public class Hotel {
	
	private int hid;
	private String hname;
	private String hlocation;
	private String hemail;
	private String hphone;
	private String hweb;
	
	public Hotel(int hid, String hname, String hlocation, String hemail, String hphone, String hweb) {
		
		this.hid = hid;
		this.hname = hname;
		this.hlocation = hlocation;
		this.hemail = hemail;
		this.hphone = hphone;
		this.hweb = hweb;
	}                           

	public int getHid() {
		return hid;
	}

	public String getHname() {
		return hname;
	}

	public String getHlocation() {
		return hlocation;
	}

	public String getHemail() {
		return hemail;
	}

	public String getHphone() {
		return hphone;
	}

	public String getHweb() {
		return hweb;
	}

}
