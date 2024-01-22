package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/editBookingServelet")

public class editBookingServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String bookingId = request.getParameter("booking_id");
    

            List<Booking> userEditDetails = adminDbUtill.getEditDetails(bookingId);
            request.getSession().setAttribute("userEditDetails", userEditDetails);
        
      
        // Assuming that adminDbUtill.getEditDetails() returns a List of Booking objects
        // Set the data into the request scope for the JSP
        
        
        

        RequestDispatcher dispatcher = request.getRequestDispatcher("eidtBooking.jsp"); // Corrected the JSP filename
        dispatcher.forward(request, response);
    }
}