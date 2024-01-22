package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("booking_id");
		String name = request.getParameter("name");
		String rType = request.getParameter("room_type");
		String number = request.getParameter("total_members") ;
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String adate = request.getParameter("arrival_date");
		String ddate = request.getParameter("departure_date");
		String Email = request.getParameter("email_id");
		String phone = request.getParameter("phone_number");
		String stat = request.getParameter("status");
		
	
		
		boolean isTrue;
		
		isTrue = adminDbUtill.updateBooking( id,name, rType,number, date, time, adate, ddate, Email, phone,stat);
		
		if(isTrue == true) {
			
			
			 String jsCode = "<script type='text/javascript'>\n" +
                     "alert('Update Successfully');\n" +
                     "location.href = 'eidtBooking.jsp';\n" +
                     "</script>";

     response.setContentType("text/html");
     PrintWriter out = response.getWriter();

     // Write the JavaScript to the response
     out.println(jsCode);

		}
		else {
			
			
			 String jsCode = "<script type='text/javascript'>\n" +
                    "alert('Update Unsuccessful');\n" +
                    "location.href = 'eidtBooking.jsp';\n" +
                    "</script>";

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    // Write the JavaScript to the response
    out.println(jsCode);
		}
	}

}
