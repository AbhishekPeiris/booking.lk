package com.customer;

import java.util.ArrayList;
import java.util.List;

public class Payment {
	
	private  String cardNo;
	private  String cardHolder;
	private  String expirationMonth;
	private  String expirationYear;
	private  String cvv;
	
	public Payment(String cardNo, String cardHolder, String expirationMonth, String expirationYear, String cvv) {
		
		this.cardNo = cardNo;
		this.cardHolder = cardHolder;
		this.expirationMonth = expirationMonth;
		this.expirationYear = expirationYear;
		this.cvv = cvv;
	}
	
	public String getCardNo() {
		return cardNo;
	}
	
	public String getCardHolder() {
		return cardHolder;
	}
	
	public String getExpirationMonth() {
		return expirationMonth;
	}
	
	public String getExpirationYear() {
		return expirationYear;
	}
	
	public String getCvv() {
		return cvv;
	}
	
	public static List<Customer> getCustomerDetails(){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
				
		return cus;
	}

}
