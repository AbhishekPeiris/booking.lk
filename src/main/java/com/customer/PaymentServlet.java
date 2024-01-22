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


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String amount = request.getParameter("amount");
		String noofrooms = request.getParameter("noofrooms");
		String hotel = request.getParameter("hotel");
		String arrival_date = request.getParameter("arrival_date");
		
		String cardNo = request.getParameter("cnum");
		String cardHolder = request.getParameter("cholder");
		String expirationMonth = request.getParameter("month");
		String expirationYear = request.getParameter("year");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertPaymentDetails(cardNo, cardHolder, expirationMonth, expirationYear, cvv);
		
		if(isTrue == true) {
			
			List<Payment> payDetails = CustomerDBUtil.getPaymentDetails(cardNo);
			request.getSession().setAttribute("payDetails", payDetails);
			
			request.setAttribute("amount", amount); 
			request.setAttribute("noofrooms", noofrooms);
			request.setAttribute("hotelName", hotel);
			request.setAttribute("arrival_date", arrival_date);

			
			request.setAttribute("cardNo", cardNo);
		    request.setAttribute("cardHolder", cardHolder);
		    
		    out.println("<script type='text/javascript'>");
			out.println("alert('Your Payment is sufficent');");
			out.println("</script>");

		    RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
		    dis.forward(request, response);
			
			
		}
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your credit card details not valid');");
			out.println("location='payment.jsp'");
			out.println("</script>");
			
		}
			
		
	}

}
