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

@WebServlet("/CusLoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.validate(username, password);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(username);
			request.getSession().setAttribute("cusDetails", cusDetails);
				
			String userType = cusDetails.get(0).getType();
			 
			HttpSession session = request.getSession();
            session.setAttribute("isLoggedIn", true);
            
            String destinationPage = "index.jsp";
            
            if ("adm".equals(userType)) {
                destinationPage = "indexAdmin.jsp";
            } else if ("mng".equals(userType)) {
                destinationPage = "managerIndex.jsp";
            }
           
            RequestDispatcher dis = request.getRequestDispatcher(destinationPage);
            dis.forward(request, response);
			
		}
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='cuslogin.jsp'");
			out.println("</script>");
			
		}
	}

}
