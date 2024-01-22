package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class adminDbUtill {
	private static boolean isSuccess;
	private static Connection con =null;
	private static PreparedStatement ps=null;
	private static ResultSet rs =null;
	
		
		
	/*
	 * public static boolean validate(String userName , String password){
	 * 
	 * 
	 * try {
	 * 
	 * con =DBconnect.getConnetion(); ps = con.
	 * prepareStatement("select * from hoteldb.user where userName = ? and password = ? "
	 * );
	 * 
	 * ps.setString(1, userName); ps.setString(2,password); rs= ps.executeQuery();
	 * 
	 * 
	 * 
	 * if(rs.next()) {
	 * 
	 * isSuccess = true;
	 * 
	 * } else {
	 * 
	 * isSuccess = false;
	 * 
	 * } } catch(Exception e) {
	 * 
	 * e.printStackTrace(); } return isSuccess; }
	 * 
	 * 
	 * 
	 * 
	 * public static List<admin> getAdminDetails(String username) { ArrayList<admin>
	 * myad = new ArrayList<>();
	 * 
	 * try { con = DBconnect.getConnetion(); ps = con.
	 * prepareStatement("SELECT id, name, email, phone, userName, password FROM hoteldb.user WHERE userName = ?"
	 * ); ps.setString(1, username);
	 * 
	 * rs = ps.executeQuery();
	 * 
	 * while (rs.next()) { int id = rs.getInt(1); String name = rs.getString(2);
	 * String email = rs.getString(3); String phone = rs.getString(4); String
	 * userName = rs.getString(5); String password = rs.getString(6);
	 * 
	 * admin c = new admin(id, name, email, phone, userName, password); myad.add(c);
	 * 
	 * } } catch (Exception e) { e.printStackTrace(); } finally { // Close resources
	 * properly in a finally block to avoid resource leaks try { if (rs != null)
	 * rs.close(); if (ps != null) ps.close(); if (con != null) con.close(); } catch
	 * (SQLException e) { e.printStackTrace(); } }
	 * 
	 * return myad; }
	 */
		
		public static List<Booking> getUserDetails() {
		    ArrayList<Booking> myuser = new ArrayList<>();
		    int totalBookings = 0; // Initialize totalBookings

		    try {
		        con = DBconnect.getConnetion(); // Corrected method name
		        String query = "SELECT * FROM hoteldb.hotel_bookings";
		        ps = con.prepareStatement(query);

		        rs = ps.executeQuery();

		        while (rs.next()) {
		            String booking_id = rs.getString("booking_id");
		            String name = rs.getString("name");
		            String room_type = rs.getString("room_type");
		            String total_numbers = rs.getString("total_numbers");
		            String date = rs.getString("date");
		            String time = rs.getString("time");
		            String arrival_date = rs.getString("arrival_date");
		            String departure_date = rs.getString("departure_date");
		            String email_id = rs.getString("email_id");
		            String phone_number = rs.getString("phone_number");
		            String status = rs.getString("status");

		            Booking bk = new Booking(booking_id, name, room_type, total_numbers, date, time, arrival_date, departure_date, email_id, phone_number, status);
		            myuser.add(bk);
		        }

		      
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        // Close resources properly in a finally block to avoid resource leaks
		        try {
		            if (rs != null) rs.close();
		            if (ps != null) ps.close();
		            if (con != null) con.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }

		    // Print the totalBookings
		    

		    return myuser;
		}


		public static List<Booking> getEditDetails(String booking_id) {
		    ArrayList<Booking> editdt = new ArrayList<>();

		    try {
		        con = DBconnect.getConnetion(); // Corrected method name
		        String query = "SELECT * FROM hoteldb.hotel_bookings WHERE booking_id=?";
		        ps = con.prepareStatement(query);
		        ps.setString(1, booking_id);

		        rs = ps.executeQuery();

		        while (rs.next()) {
		            String booking_id1 = rs.getString("booking_id");
		            String name = rs.getString("name");
		            String room_type = rs.getString("room_type");
		            String total_numbers = rs.getString("total_numbers");
		            String date = rs.getString("date");
		            String time = rs.getString("time");
		            String arrival_date = rs.getString("arrival_date");
		            String departure_date = rs.getString("departure_date");
		            String email_id = rs.getString("email_id");
		            String phone_number = rs.getString("phone_number");
		            String status = rs.getString("status");

		           
		            Booking bk = new Booking(booking_id1, name, room_type, total_numbers, date, time, arrival_date, departure_date, email_id, phone_number, status);
		            editdt.add(bk);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (ps != null) ps.close();
		            if (con != null) con.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }

		    return editdt;
		}

		
		



		public static boolean insertBooking( String name, String room_type, String total_numbers, String date, String time, String arrival_date, String departure_date, String email_id, String phone_number, String status) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = DBconnect.getConnetion();
	            
	            String sql = "INSERT INTO hoteldb.hotel_bookings ( name, room_type, total_numbers, date, time, arrival_date, departure_date, email_id, phone_number, status) " +
	                    "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement ps = con.prepareStatement(sql);
	            
	            ps.setString(1, name);
	            ps.setString(2, room_type);
	            ps.setString(3, total_numbers);
	            ps.setString(4, date);
	            ps.setString(5, time);
	            ps.setString(6, arrival_date);
	            ps.setString(7, departure_date);
	            ps.setString(8, email_id);
	            ps.setString(9, phone_number);
	            ps.setString(10, status);

	    		
	            int rowsAffected = ps.executeUpdate();

	            if (rowsAffected > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }

	            con.close(); // Close the connection when done.
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return isSuccess;
	    }





		public static boolean updateBooking(String id, String name, String roomType, String number, String date, String time, String arrivalDate, String departureDate, String emailId, String phoneNumber,String stat) {
		    boolean isSuccess = false;
		    Connection con = null; // Define a Connection object.

		    try {
		        con = DBconnect.getConnetion();

		        String sql = "UPDATE hoteldb.hotel_bookings SET name = ?, room_type = ?, total_numbers = ?, date = ?, time = ?, arrival_date = ?, departure_date = ?, email_id = ?, phone_number = ?,status = ? WHERE booking_id = ?";

		        PreparedStatement ps = con.prepareStatement(sql);

		        ps.setString(1, name);
		        ps.setString(2, roomType);
		        ps.setString(3, number);
		        ps.setString(4, date);
		        ps.setString(5, time);
		        ps.setString(6, arrivalDate);
		        ps.setString(7, departureDate);
		        ps.setString(8, emailId);
		        ps.setString(9, phoneNumber);
		        ps.setString(10, stat);
		        ps.setString(11, id);

		        int rowsAffected = ps.executeUpdate();

		        isSuccess = rowsAffected > 0;
		    } catch (SQLException e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (con != null) {
		                con.close();
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }

		    return isSuccess;
		}



		public static boolean deleteBooking(String bookingId) {
		    	
		    	
		    	
		    	try {
		    		
		    		 con = DBconnect.getConnetion();
		    		
		    		String sql = "delete from hoteldb.hotel_bookings where booking_id='"+bookingId+"'";
		    		PreparedStatement ps = con.prepareStatement(sql);
		    		
		    		 int rowsAffected = ps.executeUpdate();

				        isSuccess = rowsAffected > 0;
				    } catch (SQLException e) {
				        e.printStackTrace();
				    } finally {
				        try {
				            if (con != null) {
				                con.close();
				            }
				        } catch (SQLException e) {
				            e.printStackTrace();
				        }
				    }

				    return isSuccess;
				}




		public static int getTotalBookings() {
			// TODO Auto-generated method stub
			return 0;
		}




		}




		






