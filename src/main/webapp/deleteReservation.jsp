<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@ page import="java.net.URLDecoder" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete your reservation</title>
<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">

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
		width:180px;
		background: #d52942;
	}
	.bot3:hover{
		background: #f6f4ff;
		transition: 0.2s;
		color:black;
	}
</style>

</head>
<body>

<%
    // Retrieve values from URL parameters
    String hotel = request.getParameter("hotel");
    String rooms = request.getParameter("rooms");
    String price = request.getParameter("price");
    String crdno = request.getParameter("crdno");
    String crdholder = request.getParameter("crdholder");

    // If necessary, decode URL-encoded values if they are not null
    if (hotel != null) hotel = URLDecoder.decode(hotel, "UTF-8");
    if (rooms != null) rooms = URLDecoder.decode(rooms, "UTF-8");
    if (price != null) price = URLDecoder.decode(price, "UTF-8");
    if (crdno != null) crdno = URLDecoder.decode(crdno, "UTF-8");
    if (crdholder != null) crdholder = URLDecoder.decode(crdholder, "UTF-8");
%>


</head>
<body>


<%@ include file="header.jsp" %>

<br><br>

	<h2 style="margin-left:453px;">Cancel your reservation</h2><br><br>
	
	<form action="delete" method="post">
	
			<input type="hidden" name="cusname" value="<%= customerName %>">
			<input type="hidden" name="cusemail" value="<%= customerEmail %>">
			<input type="hidden" name="hotname" value=" <%= hotel %>">
			<input type="hidden" name="noofseat" value="<%= rooms %>">
			<input type="hidden" name="price" value="<%= price %>">
			<input type="hidden" name="crdnum" value="<%= crdno %>">
			<input type="hidden" name="crdhold" value="<%= crdholder %>">
	
	
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
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span><%= hotel %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">No. of Rooms</span> <span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span><%= rooms %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Amount</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"></span>LKR&nbsp;&nbsp;<%= price %></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Card No.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"><%= crdno %></span></td>
			</tr>
			
			<tr>
				<td width="120" height="50" style="background-color:#ebf3ff;">&nbsp;&nbsp;<span class="colmn">Card holder</span> &nbsp;<span class="colan">:</span> &nbsp;</td>
				<td style="background-color:#fff;"><span style="margin-left:20px;"><%= crdholder %></span></td>
			</tr>
			
			
			<table  class="bottons">
			
				<tr>
					 
					<td width="205"><center><input type="submit" name="delete" value="Delete your reservation" class="bot3"></center></td>
					
				</tr>
						
		
			</table>
			
		</table></center>
		
		
		
		
	</form>
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<%@ include file="footer.jsp" %>


</body>
</html>