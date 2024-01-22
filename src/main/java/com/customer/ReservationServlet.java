package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cusName = request.getParameter("cusname");
		String cusEmail = request.getParameter("cusemail");
		String hotelName = request.getParameter("hotname");
		String noofrooms = request.getParameter("noofrooms");
		String arrival_date= request.getParameter("arrival_date");
		String price = request.getParameter("price");
		String crdNo = request.getParameter("crdnum");
		String crdHolder = request.getParameter("crdhold");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertReservationDetails(cusName, cusEmail, hotelName, noofrooms, arrival_date,price, crdNo, crdHolder);
		
		if(isTrue == true) {
			
			
			
			HttpSession session = request.getSession();
            session.setAttribute("isReservation", true);
       		    
		    out.println("<script type='text/javascript'>");
			out.println("alert('Your reservation is successful');");
			out.println("</script>");
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
					
		}
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Something wrong, please try again');");
			out.println("location='index.jsp'");
			out.println("</script>");
			
		}
		
		
		
	}

}
