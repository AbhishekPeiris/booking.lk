<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="com.customer.Customer"%> 
<%@ page import="java.util.List" %>



<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/header.css">



<% 
    boolean isLoggedIn = (request.getSession(false) != null && request.getSession().getAttribute("isLoggedIn") != null);
	boolean isReservation = (request.getSession(false) != null && request.getSession().getAttribute("isReservation") != null);
	boolean isDeletedReservation = (request.getSession(false) != null && request.getSession().getAttribute("isDeletedReservation") != null);
	
	List<Customer> cusDetails = (List<Customer>) request.getSession().getAttribute("cusDetails");
	String customerName = (cusDetails != null && !cusDetails.isEmpty()) ? cusDetails.get(0).getName() : "";
	String customerEmail = (cusDetails != null && !cusDetails.isEmpty()) ? cusDetails.get(0).getEmail() : "";
	
%>

<style>
	
	.res{
		
		color: #212526;
		font-size:16px;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		background: #fff;
	}
	.res:hover{
		background: #f6f4ff;
		
	
	}
	.logout{
		color: #212526;
		font-size:16px;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		background: #fff;
			
	}
	.logout:hover{
	
		background: #f6f4ff;
	}
</style>

</head>
<body>

	<header>
		<div class="logo">
			<img src="images/Logo.png" class="logo">
		</div>
		<input type="checkbox" id="nav_check" hidden>
		<nav>
			<ul>
				<li>
					<a href="index.jsp" class="active">Home</a>
				</li>
				<li>
					<a href="#">Packages</a>
				</li>
	
					<% if(isLoggedIn){ %>
  					
  					
						<form action="MyReservationServlet" method="post"> 
						
							<input type="hidden" name="customerName" value="<%= customerName %>">
							
							<li>
								<input type="submit" name="myreservation" value="My Reservations" class="res">
							</li>
						</form>
						<li>
							<a href="#" style="color:#0071ff">Welcome, <%= customerName %>
							&nbsp;&nbsp;<img alt="profile" src="images/profilepic.png" width="20"></a>
						</li>
						
						<form action="LogoutServlet" method="post" class="logout-form">
							<input type="submit" value="Logout" name="logout"  class="logout">
																							
																							
						</form>
						
						
       
					<% } else { %>
					
						 <li>
	                        <a href="RegisteredUserInsert.jsp">Register</a>
	                    </li>
                    
                    <li>
                        <a href="cuslogin.jsp">Login</a>
                    </li>
   
					<% } %>
			</ul>
		</nav>
		<label for="nav_check" class="hamburger">
			<div></div>
			<div></div>
			<div></div>
		</label>	
	</header>
	
</body>
</html>