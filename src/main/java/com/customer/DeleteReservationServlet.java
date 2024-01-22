package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String cid = request.getParameter("cusid");
		String cname = request.getParameter("cusname");
		
		boolean isTrue = false;
			
		isTrue = CustomerDBUtil.deleteReservationDetails(cid);
		
		if( isTrue == true) {
		
			List<Reservation> resDetails = CustomerDBUtil.getReservationDetails(cname);
			request.getSession().setAttribute("reservationList", resDetails);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your reservation is deleted');");
			out.println("</script>");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			
			List<Reservation> resDetails = CustomerDBUtil.getReservationDetails(cname);
			request.getSession().setAttribute("reservationList", resDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
