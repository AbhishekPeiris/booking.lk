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


@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("cusname");
		String email = request.getParameter("cusemail");
		String hotelname = request.getParameter("hotelname");
		String noofrooms = request.getParameter("noofrooms");
		String arrivaldate = request.getParameter("arrivaldate");
		String amount = request.getParameter("amount");
		String cardno = request.getParameter("crdno");
		String cardholder = request.getParameter("crdholder");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updateReservationDetails(id, name, email, hotelname, noofrooms, arrivaldate, amount, cardno, cardholder);
		
		
		if(isTrue == true) {
			
			List<Reservation> resDetails = CustomerDBUtil.getReservationDetails(name);
			request.setAttribute("resDetails", resDetails);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your reservation is updated');");
			out.println("</script>");
			
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Reservation> resDetails = CustomerDBUtil.getReservationDetails(name);
			request.setAttribute("resDetails", resDetails);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your reservation is not updated');");
			out.println("</script>");
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
			
		}
	}

}
