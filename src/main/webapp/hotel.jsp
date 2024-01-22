<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/hotel.css">

<title>Booking.lk | Hotel in Sri Lanka</title>


	<style>
		.checked {
  			color: orange;
		}
		.hotelName{
			position:relative;
			bottom:15px;
		}
		.HotelDetails{
			margin-left:10px;
			margin-right:10px;
			text-align: justify;
		}
		.location{
			position:relative;
			bottom:15px;
			font-size:14px;
		}
		.review{
			position:relative;
			bottom:20px;
			right:40px;
		}
		.reviewScore{
			margin-right:20px;
			text-align: right;
		}
		.score{
			color:#ffff;
			background-color:#0c883d;
			border-radius: 5px;
			width: 30px;
			height: 30px;
			text-align: center;
			position:relative;
			bottom:40px;
			left:200px;	
		}
		.price{
			font-size:20px;
			position:relative;
			top:15px;
			
		}
		input[type=submit].aval{
			background-color: #0071ff;
			border: none;
			color: #fefefe;
			font-size: 20px;
			padding: 10px 25px;
			text-decoration: none;
			cursor: pointer;
			border-radius: 20px;
			position:relative;
			top:15px;
			left:5px;
			font-weight: 600;
			transition: 0.2s;
		}
		input[type=submit].aval:hover{
			transition: 0.2s;
			background-color:#fff;
			color:#0071ff;
			border :solid 1px #0071ff;
			font-weight: 600;
		}
		tr:nth-child(even) {
  			background-color: #D6EEEE;
		}
		tr:nth-child(odd) {
  			background-color: #ffff;
		}
		tr.no:nth-child(odd){
			background-color:#e3e9f7;
		}
		
		
	</style>
	
	
</head>
<body>


	<%@ include file="header.jsp" %>
	
	
	
	<center><table width="1100px" height="300px" class="hotelGifTable">
		<tr class="no">
			<td width="400px"><div>
								<h1 class="ph1">Harmony of Elegance: A Luxurious Retreat Awaits at Our Enchanting City Haven</h1>
								<p class="ph1" style="color:#0c883d">Indulge in the epitome of luxury at our exquisite hotel, where opulence meets unparalleled hospitality.
								 Nestled in the heart of the city, our elegant establishment offers a seamless blend of modern comfort and timeless charm. Immerse yourself in lavish accommodations,
								 adorned with tasteful decor and equipped with state-of-the-art amenities.
								 Our attentive staff is dedicated to ensuring your every need is met, promising a truly enchanting stay. 
								 From gourmet dining experiences to rejuvenating spa treatments, every moment is crafted to perfection. Book with us for a transcendent escape,
								  where each detail is a brushstroke in the masterpiece of your unforgettable journey.</p>
							</div></td>
			<td><center><img src="images/HotelGif.gif" width="100%" class="hotelGif"></center></td>
		</tr>
	</table></center><br>
	<center><hr></center>
	<br>
	<h1 class="Topic1">Where to stay in Sri Lanka?</h1><br>
	
	<h2 class="Topic2">Top hotels in Colombo</h2><br>
	
	<table class="colomboTable">
		<tr>
			<td><img src="images/galadariHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600">
				<div class="HotelDetails">
					<h1 class="hotelName">Galadari Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Fort, Colombo | 350 m from center</p>
					<p style="color:#0c883d">Overlooking the Laccadive Sea, this upscale hotel is a 15-minute walk from Galle Face Green park, 
					3 km from Gangaramaya Buddhist Temple and 11 km from the National Zoological Gardens of Sri Lanka.</p><br>
					<p style="color:#d52942">Check-in time: 12:00<br>Check-out time: 12:00</p>
				</div>
			</td>
			<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.0</div>
					<b><p class="price">LKR 19,013</p></b><br>
					<input type="submit" name="Galadari" value="See availability >" class="aval" onclick="redirectToRoom('Galadari');">
				</div>
			</td>
		</tr>
		
		<tr>
			<td><img src="images/hiltonHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Hilton Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										</h1>
					<p class="location">Galle face, Colombo | 300 m from center</p>
					<p style="color:#0c883d">Access first-class business facilities in convenient locations when you choose Hilton. 
					Experience amenities designed to make your stay comfortable.
					 Stay with Hilton. Earn Hilton Honors Points. Flexible Booking. Quick & Easy Booking</p><br>
					<p style="color:#d52942">Check-in time: 12:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">7.8</div>
					<b><p class="price">LKR 17,688</p></b><br>
					<input type="submit" name="Hilton" value="See availability >" class="aval" onclick="redirectToRoom('Hilton');">
				</div>
			</td>
		</tr>
	
		<tr>
			<td><img src="images/shangi-LaHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Shangri-La Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Galle face, Colombo | 250 m from center</p>
					<p style="color:#0c883d">Set on the Galle Face Promenade overlooking the Indian Ocean, this upmarket hotel is surrounded by high-end
					 shopping and dining. 
					It's a 6-minute walk from Galle Face Green urban park and 2 km from Beira Lake.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.7</div>
					<b><p class="price">LKR 34,914</p></b><br>
					<input type="submit" name="Shangri-La" value="See availability >" class="aval" onclick="redirectToRoom('Shangri-La');">
				</div>
			</td>
		</tr>
	</table><br><br>
	
	
	
	<h2 class="Topic2">Top hotels in Kandy</h2><br>
	
	<table  class="colomboTable">
		<tr>
			<td><img src="images/cinnamonCitadelHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Cinnamon Citadel Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Kandy</p>
					<p style="color:#0c883d">Overlooking the Mahaweli River, this upscale hotel is 4 km from the Sacred Temple
					 of the Tooth Relic in the city center.
					 It's 8 km from the Peradeniya Royal Botanic Gardens.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.1</div>
					<b><p class="price">LKR 20,438</p></b><br>
					<input type="submit" name="Cinnamon Citadel" value="See availability >" class="aval" onclick="redirectToRoom('Cinnamon Citadel');">
				</div>
			</td>
		</tr>
		
	
		<tr>
			<td><img src="images/earlsRegencyHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Earls Regency Hotel&nbsp;<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Kandy</p>
					<p style="color:#0c883d">Surrounded by verdant forests, this polished hotel is 5 km from both the Temple of the Tooth and the Royal Palace of Kandy.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">7.8</div>
					<b><p class="price">LKR 18,105</p></b><br>
					<input type="submit" name="Earls Regency" value="See availability >" class="aval" onclick="redirectToRoom('Earls Regency');">
				</div>
			</td>
		</tr>
		
	
		<tr>
			<td><img src="images/grandSerendibHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Grand Serendib Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Kandy</p>
					<p style="color:#0c883d">Grand Serendib, we pride ourselves on offering a luxurious and comfortable experience for our guests.
					 We understand that choosing a hotel for your stay is an important decision
.</p><br>
					<p style="color:#d52942">Check-in time: 12:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.3</div>
					<b><p class="price">LKR 20,100</p></b><br>
					<input type="submit" name="Grand Serendib" value="See availability >" class="aval" onclick="redirectToRoom('Grand Serendib');">
				</div>
			</td>
		</tr>
	</table><br><br>
	
	
	
	<h2 class="Topic2">Top hotels in Negambo</h2><br> 
	
	<table  class="colomboTable">
		<tr>
			<td><img src="images/getwingBlueHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Getwing Blue Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Negambo</p>
					<p style="color:#0c883d">Set along Negombo Beach on the Indian Ocean, this refined hotel is 5 km from colourful Angurukaramulla Temple and 4 km from St.
					Mary's Church, Negombo.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.0</div>
					<b><p class="price">LKR 19,203</p></b><br>
					<input type="submit" name="Getwing Blue" value="See availability >" class="aval" onclick="redirectToRoom('Getwing Blue');">
				</div>
			</td>
		</tr>
		
	
		<tr>
			<td><img src="images/heritanceHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Heritance Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Negambo</p>
					<p style="color:#0c883d">Overlooking the Laccadive Sea, this upscale beachfront resort is 3 km from Angurukaramulla Temple and 11
					 km from Negombo Lagoon.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">7.9</div>
					<b><p class="price">LKR 18,710</p></b><br>
					<input type="submit" name="Heritance" value="See availability >" class="aval" onclick="redirectToRoom('Heritance');">
				</div>
			</td>
		</tr>
		
	
		<tr>
			<td><img src="images/regentaLagoonHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Regenta Lagoon Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Negambo</p>
					<p style="color:#0c883d">Set on leafy grounds, this laid-back hotel is 12 minutes' walk from Anjuna Beach
					, 3 km from Chapora Fort and 46 km from Goa International Airport.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">7.4</div>
					<b><p class="price">LKR 10,111</p></b><br>
					<input type="submit" name="Regenta Lagoon" value="See availability >" class="aval" onclick="redirectToRoom('Regenta Lagoon');">
				</div>
			</td>
		</tr>
	</table><br><br>
	

	
	<h2 class="Topic2">Top hotels in Galle</h2><br>
	
	<table  class="colomboTable">
		<tr>
			<td><img src="images/leGrandHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Le Grand Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Galle</p>
					<p style="color:#0c883d">Set on a cliff-top overlooking the Laccadive Sea, this high-end hotel is a 7-minute walk from
					 Galle Dutch Fort, 21 km from guided tours of Handunugoda Tea Factory and 153 km from Bandaranaike International Airport.</p><br>
					 <p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.1</div>
					<b><p class="price">LKR 21,278</p></b><br>
					<input type="submit" name="Le Grand" value="See availability >" class="aval" onclick="redirectToRoom('Le Grand');">
				</div>
			</td>
		</tr>
		
	
		<tr>
			<td><img src="images/radissonResortHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Radisson Resort Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Galle</p>
					<p style="color:#0c883d">Facing the Laccadive Sea, this modern, polished hotel is a 10-minute walk from Wellawatte railway station and 4 km from
					 Colombo National Museum.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">7.9</div>
					<b><p class="price">LKR 18,013</p></b><br>
					<input type="submit" name="Radisson Resort" value="See availability >" class="aval" onclick="redirectToRoom('Radisson Resort');">
				</div>
			</td>
		</tr>
		

		<tr>
			<td><img src="images/jetwinLighthouseHotel.jpg" width="200" style="margin: 10px"></td>
			<td width="600"><div class="HotelDetails">
					<h1 class="hotelName">Jetwin Lighthouse Hotel  <span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span></h1>
					<p class="location">Galle</p>
					<p style="color:#0c883d">
Set outside the city, along the rocky shores of the Indian Ocean, this upmarket hotel is 3 km from the National Maritime Museum, and 6 km 
from Galle Harbour.</p><br>
					<p style="color:#d52942">Check-in time: 14:00<br>Check-out time: 12:00</p>
				</div></td>
				<td width="250">
				<div class="reviewScore">
					<p class="review">Review score </p><div class="score">8.2</div>
					<b><p class="price">LKR 21,248</p></b><br>
					<input type="submit" name="Jetwin Lighthouse" value="See availability >" class="aval" onclick="redirectToRoom('Jetwin Lighthouse');">
				</div>
			</td>
		</tr>
	</table>
	
	
	<br><br><br><br><br><br><br><br><br><br>
	
	
	
	<%@ include file="footer.jsp" %>
	
	
	<script>
	
		function redirectToRoom(hotelName){
			
			if(hotelName == 'Galadari'){
				
				 window.location.href = 'galadariRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Hilton'){
				
				window.location.href = 'hiltonRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Shangri-La'){
							
				window.location.href = 'shangriLaRooms.jsp?hotel=' + hotelName;		
			}
			else if(hotelName == 'Cinnamon Citadel'){
				
				window.location.href = 'cinnamonCitadelRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Earls Regency'){
				
				window.location.href = 'earlsRegencyRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Grand Serendib'){
				
				window.location.href = 'grandSerendibRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Getwing Blue'){
				
				window.location.href = 'getwingBlueRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Heritance'){
				
				window.location.href = 'heritanceRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Regenta Lagoon'){
				
				window.location.href = 'regentaLagoonRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Le Grand'){
				
				window.location.href = 'leGrandRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Radisson Resort'){
				
				window.location.href = 'radissonResortRooms.jsp?hotel=' + hotelName;
			}
			else if(hotelName == 'Jetwin Lighthouse'){
				
				window.location.href = 'jetwinLighthouseRooms.jsp?hotel=' + hotelName;
			}
			else{
				
				System.out.println("Hotel name not passed");
			}
				
		}
	
	
	</script>
	
	
	
</body>
</html>