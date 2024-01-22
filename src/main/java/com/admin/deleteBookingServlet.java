package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String bookingId = request.getParameter("booking_id");
        

		boolean isTrue;
		
		isTrue = adminDbUtill.deleteBooking(bookingId );
		
		if(isTrue == true) {
			
			
			
			 String jsCode = "<script type='text/javascript'>\n" +
                    "alert('Delete Successfully');\n" +
                    "location.href = 'adduser.jsp';\n" +
                    "</script>";

    response.setContentType("text/html");
    PrintWriter out1 = response.getWriter();

    // Write the JavaScript to the response
    out1.println(jsCode);
		}
		else {
			
			
			 String jsCode = "<script type='text/javascript'>\n" +
                    "alert('Delete Unsccessfully');\n" +
                    "location.href = 'adduser.jsp';\n" +
                    "</script>";

    response.setContentType("text/html");
    PrintWriter out1 = response.getWriter();

    // Write the JavaScript to the response
    out1.println(jsCode);
		}
		
	}

}
