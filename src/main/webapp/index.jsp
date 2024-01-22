<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">


<link rel="stylesheet" href="css/index.css">


<title>Booking.lk | Official site | Online hotel reservation site</title>

</head>
<body>
	
	
	<%@ include file="header.jsp" %>
	
		
	<img src="images/HomePic.jpg" class="HomePic">
	<div class="HomePicDiscription"><p class="Discription"><b>Book Your Perfect Stay</b></p>
	<form action="hotel.jsp"><input type="search" class="ss" placeholder="Search hotel">&nbsp;<a href="hotel.jsp" class="srchHotel" style="position: relative;
										left: 720px;
										bottom: 45px;"><img src="images/search.png" width="60" class="sim"></a></form></div>
										
										<style>
											
											.ss{
											position: relative;
										left: 720px;
										bottom: 78px;
										width:200px;
										height:42px;
										background-color: #fff;
	border: none;
	color: black;
	font-size: 20px;
	padding: 10px 25px;
	text-decoration: none;
	cursor: pointer;
	border-radius: 20px;
	}
	.ss:hover{
		border:solid 3px #0071ff;
	}
	.sim{
	position: relative;
	right: 20px;
	bottom: 10px;
	}
	.sim:hover{
	
	}
										
											}
										</style>
										
										
										

	<div class="T1">
		<b><p class="topic1">Trending Destinations</p></b>
		<p class="topic1_1">&nbsp;Travellers searching for Sri Lanka also booked these</p>
	</div><br><br><br><br><br>
	
	<table  class="desTable1">
		<tr>
			<th><a href="hotel.jsp"><img src="images/colombo.jpg" width="550" style="margin-right:10px;"></a></th>
			<th><a href="hotel.jsp"><img src="images/kandy.jpg" width="550"></a></th>
		</tr>
	</table>
	<br><br><br><br><br><br><br>
	<table  class="desTable2">
		<tr>
			<th><a href="hotel.jsp"><img src="images/galle.jpg" width="550" style="margin-right:10px;"></a></th>
			<th><a href="hotel.jsp"><img src="images/negambo.jpg" width="550"></a></th>
			
		</tr>
	</table><br>
	
	<div class="T2">
		<b><p class="topic2">Looking for the perfect stay?</p></b>
		<p class="topic2_1">Travellers with similar searches booked these properties</p>
	</div><br><br>
	<table class="hotelsTable1">
		<tr>
			<th>
				<a href="galadariRooms.jsp"><img src="images/galadari.jpg" width="350" style="margin-right:25px;"></a><br><br>
				<div class="hotelnames">
					<p class="hotelname">The Galadari Hotel</p>
					<p class="loc">Colombo, Sri Lanka</p>
					<p><span class="s">starting from</span> LKR 19,013</p>
				</div>
			</th>
			<th>
				<a href="hiltonRooms.jsp"><img src="images/hilton.jpg" width="350" style="margin-right:25px;"></a><br><br>
				<div class="hotelnames">
					<p class="hotelname">Hilton Hotel</p>
					<p class="loc">Colombo, Sri Lanka</p>
					<p><span class="s">starting from</span> LKR 17,688</p>
				</div>
			</th>
			<th>
				<a href="shangriLaRooms.jsp"><img src="images/sra-la.jpg" width="350" ></a><br><br>
				<div class="hotelnames">
					<p class="hotelname">Shangri La Hotel</p>
					<p class="loc">Colombo, Sri Lanka</p>
					<p><span class="s">starting from</span> LKR 34,914</p>
				</div>
			</th>
		</tr>
	</table>
	
	
			
	

	
	
 <%@ include file="footer.jsp" %> 


	
	
</body>
</html>
