package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HotelBookingsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        //String booking_id = request.getParameter("booking_id");

        
        //System.out.println(booking_id);

        // Validate the user's credentials here
      

          
            List<Booking> userDetails = adminDbUtill.getUserDetails();
            request.getSession().setAttribute("userDetails", userDetails);
            
            
      
  
            RequestDispatcher dispatcher = request.getRequestDispatcher("adduser.jsp");
            dispatcher.forward(request, response);
            
          
            
            
        } 
        
    
}
