package com.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;                                             
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HotelInsert")
public class HotelInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("hname");
		String location = request.getParameter("hlocation");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String web = request.getParameter("website");
		
		boolean isTrue;
		
		isTrue = HotelDBUtil.InsertHotel(name, location, email, phone, web);
		
		// Get the inserted data from the database
		List<Hotel> hotels = HotelDBUtil.getHotelDetails();
		
		//Store the data as a request attribute
		request.setAttribute("hotels", hotels);
	
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("HotelDetails.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
	
		
}
