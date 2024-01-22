package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyReservationServlet")
public class MyReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cusname = request.getParameter("customerName");
		
		List<Reservation> myReservation = CustomerDBUtil.getReservationDetails(cusname);
		request.getSession().setAttribute("myReservation", myReservation);
		
		RequestDispatcher dis = request.getRequestDispatcher("myReservations.jsp");
		dis.forward(request, response);
	}

}
