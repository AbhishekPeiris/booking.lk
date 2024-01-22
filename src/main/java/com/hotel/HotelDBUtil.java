package com.hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


public class HotelDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Insert hotel details to the database
	public static boolean InsertHotel(String name, String location, String email, String phone, String website) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into hoteldb.hotel_details values (0, '"+name+"', '"+location+"', '"+email+"', '"+phone+"', '"+website+"' )";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Get all hotel details from the database
	public static List<Hotel>  getHotelDetails(){
		
		ArrayList<Hotel> hotel = new ArrayList();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from hoteldb.hotel_details";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String location = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String website = rs.getString(6);
				
				Hotel h = new Hotel(id, name, location, email, phone, website);
				hotel.add(h);
			}
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return hotel;

	}
	// Update hotel details of the database
	public static boolean UpdateHotel(String id, String name, String location, String email, String phone, String web) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update hoteldb.hotel_details set hotel_name='"+name+"', hotel_location='"+location+"', hotel_email='"+email+"', hotel_phone='"+phone+"', hotel_website='"+web+"' " + " where hotel_id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			
			else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	// Remove hotel details from the database
	public static boolean RemoveHotel(String id) {
		
		int convId = Integer.parseInt(id);
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from hoteldb.hotel_details where hotel_id = '"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess =true;
			}
			else
			{
				isSuccess = false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
		
	}
	
	
	
	
}


