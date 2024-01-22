<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking.lk | Update your reservation</title>

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">

<style>
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');

input{

	width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border:  none;
  border-radius: 5px;
  box-sizing: border-box;
	
}
div.fm{
	margin-left:35%;
}
p{
	font-size:12px;
}
.bot5{
		color: #fff;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		background: #0c883d;
		font-size:12px;
		width:150px;
	}
	.bot5:hover{
		background: #f6f4ff;
		transition: 0.2s;
		color:black;
		}
			th{
			text-align:center;
		}
		td{
			text-align:center;
		}
		*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	list-style: none;
	text-decoration: none;
	font-family: 'Nunito', sans-serif;
}
body{
	background:#e3e9f7;
	
}
</style>

<%

String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String hotelname = request.getParameter("hotelname");
String noofrooms = request.getParameter("noofrooms");
String arrivaldate = request.getParameter("arrivaldate");
String amount = request.getParameter("amount");
String crdno = request.getParameter("cardno");
String crdholder = request.getParameter("cardholder");



%>
</head>
<body>


	
<br><br>


	<form action="UpdateReservationServlet" method="post">
	<div style="position:relative;right:350px;"><a href="index.jsp"><div style="position:relative;left:79%;top:30px;"><p style="font-size:16px;">Go to Home Page</p><img src="images/prePage.png" width="30" style="position:relative;left:140px;bottom:26px;"></div></a></div>
	
	<div class="fm">
	
	<h2>Update your reservation</h2><br><br>
	
		<input type="hidden" name="id" value="<%= id %>">
	
		<p>Customer name : </p><input type="text" name="cusname" value="<%= name %>" placeholder="<%= name %>" readonly style="color:#d52942;"><br><br>
		<p>Customer email : </p><input type="email" name="cusemail" style="width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border:  none;
  border-radius: 5px;
  box-sizing: border-box;height:40px;" value="<%= email %>" placeholder="<%= email %>"><br><br>
		<p>Hotel name : </p><input type="text" name="hotelname" value="<%= hotelname %>" placeholder="<%= hotelname %>" readonly style="color:#d52942;"><br><br>
		<p>No of Rooms : </p><input type="number" name="noofrooms" value="<%= noofrooms %>" placeholder="<%= noofrooms %>" readonly style="color:#d52942;"><br><br>
		<p>Arrival Time : </p><input type="date" name="arrivaldate" value="<%= arrivaldate %>" placeholder="<%= arrivaldate %>"><br><br>
		<p>Amount : </p><input type="text" name="amount" value=" <%= amount %>" placeholder="<%= amount %>" readonly style="color:#d52942;"><br><br>
		<p>Card No : </p><input type="number" name="crdno" value="<%= crdno %>" placeholder="<%= crdno %>" readonly style="color:#d52942;"><br><br>
		<p>Card holder : </p><input type="text" name="crdholder" value="<%= crdholder %>" placeholder="<%= crdholder %>"><br><br>
		
		
	</div>
	<center><input type="submit" value="Submit" class="bot5"></center>
	</form>
	<br><br><br><br><br><br><br><br><br><br><br>
		
	
	

</body>
</html>