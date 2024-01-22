package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	 //create database connection

    private static String url = "jdbc:mysql://localhost:3306/hoteldb";
    private static String user = "root";
    private static String passwd = "abhi2001";

    private static Connection con;
    
    public static Connection getConnetion() {
    	
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		
    		 con = DriverManager.getConnection(url, user, passwd);

		} catch (Exception e) {
			e.printStackTrace();

    		 
		
		}
    	
    	return con;
    }

}
