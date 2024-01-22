package com.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HotelDelete")
public class HotelDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = HotelDBUtil.RemoveHotel(id);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("HotelInsert.jsp");
			dis.forward(request, response);
		}
		
		else
		{
			List<Hotel> hotels = HotelDBUtil.getHotelDetails();
			request.setAttribute("hotels", hotels);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("HotelDetails.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
