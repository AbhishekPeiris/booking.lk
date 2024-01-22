package Register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//get details from database and assign them to variables 
				String id= request.getParameter("id");
				String name= request.getParameter("name");
				String address= request.getParameter("address");
				String email= request.getParameter("email");
				String phone= request.getParameter("contact_number");

				
				
				boolean isTrue;
				// check whether updated data insert to database 
				isTrue=RegisteredUserDButil.UpdateRegisteredUser(id, name, address, email, phone);
				
				  if(isTrue==true) {
					  
					  RequestDispatcher dis=request.getRequestDispatcher("InsertionSuccess.jsp");
					  dis.forward(request,response);
				  }
				  else {
					  RequestDispatcher dis=request.getRequestDispatcher("InsertionUnsuccess.jsp");
					  dis.forward(request,response);
					  
				  }
		
		
		
	}

}
