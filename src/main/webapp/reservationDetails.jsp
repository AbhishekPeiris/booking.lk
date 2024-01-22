<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">

<title>Reservation Details</title>





<style type="text/css">
	
	span.colmn{
		color:#0c883d;
	}
	span.colan{
		color:#d52942;
	}
	table.bottons{
		position:relative;
		top:20px;
	}
	.bot1{
		color: #fff;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		background: #0c883d;
	}
	.bot1:hover{
		background: #f6f4ff;
		transition: 0.2s;
		color:black;
	}
	.bot2{
		color: #fff;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		background: #d52942;
		
	}
	.bot2:hover{
		background: #f6f4ff;
		transition: 0.2s;
		color:black;
	}
	.bot3{
		color: #fff;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		width:150px;
		background: #febb02;
	}
	.bot3:hover{
		background: #f6f4ff;
		transition: 0.2s;
		color:black;
	}
</style>


</head>
<body>


<%@ include file="header.jsp" %>

<br><br>

	<h2 style="margin-left:453px;">Reservation Details</h2><br><br>
	
	<form action="ReservationServlet" method="post">
	
			<input type="hidden" name="cusname" value="<%= customerName %>">
			<input type="hidden" name="cusemail" value="<%= customerEmail %>">
			<input type="hidden" name="hotname" value="<%= request.getAttribute("hotelName") %>">
			<input type="hidden" name="noofrooms" value="<%= request.getAttribute("noofrooms") %>">
			<input type="hidden" name="arrival_date" value="<%= request.getAttribute("arrival_date") %>">
			<input type="hidden" name="price" value="<%= request.getAttribute("amount") %>">
			<input type="hidden" name="crdnum" value="${cardNo}">
			<input type="hidden" name="crdhold" value="${cardHolder}">
	
			<center><table>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Name</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="colan">:</span>&nbsp;</td>
				<td width="500" style="background-color:#fff;"><span style="margin-left:20px;"><%= customerName %></span></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Email</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span><%= customerEmail %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Hotel name</span> &nbsp;<span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span><%= request.getAttribute("hotelName") %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">No. of Rooms</span> <span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span><%= request.getAttribute("noofrooms") %></td>
			</tr>
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Arrival date</span> <span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span><%= request.getAttribute("arrival_date") %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Amount</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span>LKR&nbsp;&nbsp;<%= request.getAttribute("amount") %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Card No.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;">${cardNo}</span></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Card holder</span> &nbsp;<span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;">${cardHolder}</span></td>
			</tr>
			
			
			<table  class="bottons">
			
				<tr>
					 
					<td width="205"><center><input type="submit" name="pay" value="Submit" class="bot3"></center></td>
					
				</tr>
						
		
			</table>
			
		</table></center>
		
		
		
		
	</form>
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<%@ include file="footer.jsp" %>

</body>
</html>