package Register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		 String id = request.getParameter("id");
	        boolean isTrue = false;

	        
	            isTrue = RegisteredUserDButil.DeleteRegisteredUser(id);
	        

	        if (isTrue) {
	        	
	        	RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
				 dis.forward(request,response);
	            
	        } else {
	        	 RequestDispatcher dis=request.getRequestDispatcher("InsertionUnsuccess.jsp");
				  dis.forward(request,response);
	        }
		

	}

}
