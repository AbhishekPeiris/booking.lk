package com.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HotelUpdate")
public class HotelUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String website = request.getParameter("web");
		
		boolean isTrue;
		
		isTrue = HotelDBUtil.UpdateHotel(id, name, location, email, phone, website);
		
		if(isTrue == true)
		{   
			List<Hotel> hotels = HotelDBUtil.getHotelDetails();
			request.setAttribute("hotels", hotels);
			
			RequestDispatcher dis = request.getRequestDispatcher("HotelDetails.jsp");
			dis.forward(request, response);
		}
		
		else
		{
			RequestDispatcher dis2 =  request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		  
	}
	
	    

}
