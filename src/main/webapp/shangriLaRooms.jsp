<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
   
<!DOCTYPE html>
<html>
<head>

<%

	String hotelName = request.getParameter("hotel");
 

%>


<meta charset="ISO-8859-1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">

<link rel="stylesheet" href="css/rooms.css">

<title>Shangri-La Hotel | Colombo</title>

<style>
	div.table1{
		margin-left: 258px;
	}
	tr.table1{
		background-color:#ffff;
	}
	p.ph1{
		text-align:justify;
		font-size:12px;
		margin:15px;
		position:relative;
		bottom:40px;
	}
	table.sleep{
		border-collapse: collapse;
		border-color: #6fc3ff;
	}
	input[type=submit].reserve{
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
			margin-left:10px;
			font-weight: 600;
		
		} 
		input[type=submit].reserve:hover{
			transition: 0.2s;
			background-color:#fff;
			color:#0071ff;
			border :solid 1px #0071ff;
			font-weight: 600;
		} 
</style>

</head>
<body>
	
		<%@ include file="header.jsp" %>
		
		
		<br><br>
		<div class="table1">
		<h2>Shangri-La Hotel</h2>
		<p><img src="images/locationIcon.png" width="20">&nbsp;1 Galle Face, Colombo 02 , 00200 Colombo, Sri Lanka</p>
		<table>
			<tr class="table1">
				<td><img alt="" src="images/shangiPic.jpg" width=500></td>
				<td width="500"><p class="ph1">Shangri-La Colombo presents a new level of luxury in the city. Located in the heart of the business and entertainment district, the hotel offers the various collection of guestrooms with stunning views of the Indian Ocean, Beira Lake or cities. The property has 3 innovative restaurants and 2 bars, and it is Colombo largest and stylish event spaces.<br><br>

Set to be the city dining destination, Shangri-La  restaurants and bars include Capital Bar & Grill, presenting tasty steaks and seafood grills with a wide selection of whisky. Shangri-La Colombo’s signature Chinese restaurant Shang Palace celebrates cuisine steeped in rich tradition and Central, the hotel's vibrant all-day dining restaurant and café which is the elegant addition to Colombo dining scene. Sapphyr Lounge is a place to meet with friends and family over simple indulgences. There is a Pool Bar overlooking the Indian Ocean and it is perfect for light refreshments. The hotel also offers direct access to the most extensive international shopping mall in Sri Lanka, Shangri-La Colombo own One Galle Face Mall.<br><br>

Chi, The Spa is a place of personal peace and enchantment offering holistic therapies for the body, mind and soul. The Health Club features state-of-the-art fitness equipment and personal trainers to ensure you stay true to your fitness regime when away from home.

Daily buffet breakfast and dinner are served at Central Restaurant.<br><br>

Co-nnect, Shangri-La Colombo, Colombo stylish, new co-working space offers a versatile environment to meet, work and create. These exclusive spaces include private offices, meeting rooms, work pods and individual work stations, and is an inspired alternative to working in a traditional office setting.</p>

</td>
			</tr>
		</table>
		</div>
		<center><img src="images/fasility1.png" width="1000"></center><br>
		<h3 style="margin-left: 258px">Most popular facilities</h3><br>
		<center><img src="images/fasility2.png" width="1000"></center><br>
		
	<h3 style="margin-left: 258px">Availability</h3><br><br>
		
		<b><p style="margin-left: 258px;color:#0c883d">Arrival date :- </p></b><br>
		<input type="date" name=arrival_date id="arrival_date" required style="border:none;margin-left:260px;width:200px;height:30px;"><br><br>

		
		<center><table class="sleep" border="1" width="66%">
			<tr style="color:#ffff">
				<th width="300" height="50" style="background-color:#0071ff">Room type</th>
				<th width="100" style="background-color:rgb(0, 78, 172)">Sleeps</th>
				<th width="200" style="background-color:#0071ff">Today's price</th>
				<th width="300" style="background-color:rgb(0, 78, 172)">Your choices</th>
				<th width="100" style="background-color:#0071ff">Select rooms</th>
				<th width="300" style="background-color:#0071ff"></th>
			</tr>
			<tr>
				<td width="300" height="300">
					<b><p style="text-decoration: underline;color:rgb(0, 78, 172);margin-left:20px;position:relative;bottom:100px;">Single Room</p></b>
					<p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;">Bed type assigned at check-in</p>
					<b><p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;color:#d52942">Free WiFi</p></b>
				</td>
				<td width="100" ><img src="images/humanIcon.png"width="20" style="position:relative;bottom:100px;margin-left:20px;"></b></td>
				<td width="200" ><b><p  style="position:relative;bottom:100px;margin-left:20px;">LKR 34,914</p></td>
				<td width="300" >
					<img src="images/Breakfast-Icon.png"width="20" style="margin-left:20px;position:relative;bottom:10px;">&nbsp;<b><p  style="position:relative;bottom:35px;left:48px;font-size:13px;">Good</p></b><p style="font-size:13px;position:relative;left:85px;bottom:52px;">breakfast LKR 6,480</p>
					
					
					  <p style="font-size:12px;margin-left:20px;position:relative;bottom:40px;">Breakfast & dinner included<br>
					  <b><span style="color:#0c883d">Free cancellation</span></b><br>
					  Pay in advance<br>
					  <b><span style="color:#d52942">Dsiscount available</span></b><br>
					  No modifications<br>
					  Confirmed within 2 minutes<br>
					  Can't be combined with other offersS
					
				</td>
				<td width="100" >
					
					<select id="singleRoomSelect" onchange="updateTotal()" style="position:relative;bottom:95px;border:none;">
					    <option value="0">0</option>
					    <option value="1">1 (LKR 34,914)</option>
					    <option value="2">2 (LKR 69,828)</option>
					    <option value="3">3 (LKR 104,742)</option> 
					    <option value="4">4 (LKR 139,656)&nbsp;&nbsp;</option>
					     
					     
  					</select>
  				
					
				</td>
				<td width="300" style="background-color:#ebf3ff">
				
					
				<div>
				    <p style="position:relative;bottom:46px;left:20px;font-size:12px;">Single Rooms: <b><span id="totalSingleRooms" style="color:#0c883d">0</span></b></p>
				    <p style="position:relative;bottom:46px;left:20px;font-size:12px;">Double Rooms: <b><span id="totalDoubleRooms" style="color:#0c883d" >0</span></b></p>
				    <p style="position:relative;bottom:46px;left:20px;font-size:12px;">Total selected rooms: <b><span id="totalRooms" style="color:#d52942" >0</span></b></p>
				</div>
					
					<p style="position:relative;bottom:46px;left:20px;font-size:12px;">Total price:</p>
					<b><div style="margin-left:20px;position:relative;bottom:30px;font-size:18px;">LKR <span id="totalAmount" style="color:#d52942;">0</span></div></b>
					<input type="submit" name="reserve" value="Reserve" class="reserve" onclick="validateAndSubmit();"><br><br>

					<p style="margin-left:20px;font-size:12px;">You'll be taken to the next step</p>
				</td>
				
			</tr>
			<tr>
				<td width="300" height="300">
					<b><p style="text-decoration: underline;color:rgb(0, 78, 172);margin-left:20px;position:relative;bottom:100px;">Double Room</p></b>
					<p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;">Bed type assigned at check-in</p>
					<b><p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;color:#d52942">Free WiFi</p></b>
				</td>
				<td width="100" ><img src="images/humanIcon.png"width="20" style="position:relative;bottom:100px;margin-left:20px;"><img src="images/humanIcon.png"width="20" style="position:relative;bottom:100px;margin-left:5px;"></td>
				<td width="200" ><b><p  style="position:relative;bottom:100px;margin-left:20px;">LKR 70,328</p></td>
				<td width="300" >
					<img src="images/Breakfast-Icon.png"width="20" style="margin-left:20px;position:relative;bottom:10px;">&nbsp;<b><p  style="position:relative;bottom:35px;left:48px;font-size:13px;">Good</p></b> <p style="font-size:13px;position:relative;left:85px;bottom:52px;">breakfast LKR 12,400</p>
					
					
					  <p style="font-size:12px;margin-left:20px;position:relative;bottom:40px;">Breakfast & dinner included<br>
					  <b><span style="color:#0c883d">Free cancellation</span></b><br>
					  Pay in advance<br>
					  <b><span style="color:#d52942">Dsiscount available</span></b><br>
					  No modifications<br>
					  Confirmed within 2 minutes<br>
					  Can't be combined with other offersS
					
				</td>
				
				<td width="100" >
					 <select id="doubleRoomSelect" onchange="updateTotal()" style="position:relative;bottom:95px;border:none;">
					    <option value="0">0</option>
					    <option value="1">1 (LKR 70,328)</option>
					    <option value="2">2 (LKR 140,656)</option>
					    <option value="3">3 (LKR 210,984)</option>
					     
  					</select>
  				
				</td>
				<td width="300" style="background-color:#ebf3ff">
			</tr>
			
		</table></center>
			<br><br><br><br><br><br><br><br><br><br>
			
			
		<script>
			
				  function updateTotal() {
				    
				    var singleRoomSelect = document.getElementById('singleRoomSelect');
				    var singleRoomAmount = singleRoomSelect.value * 34914; 
				
				   
				    var doubleRoomSelect = document.getElementById('doubleRoomSelect');
				    var doubleRoomAmount = doubleRoomSelect.value * 70328; 
				
				   
				    var totalAmount = singleRoomAmount + doubleRoomAmount;
				    		  
				    document.getElementById('totalAmount').innerText = totalAmount;
				    
				    TotalSelectedRooms();
				    
				 
				
				  }
				  
			</script>
			
			<%
			    // Get the session
			    HttpSession session = request.getSession();
			
			    // Get the value of isLoggedIn attribute
			    boolean isLoggedInCheck = session.getAttribute("isLoggedIn") != null && (boolean) session.getAttribute("isLoggedIn");
			%>
			
			<script>
			
    				function validateAndSubmit() {
    					
				        var singleRoomSelect = document.getElementById('singleRoomSelect');
				        var doubleRoomSelect = document.getElementById('doubleRoomSelect');
				        var arrivalDateInput = document.getElementById('arrival_date');
				        
				        
				        var singleRoomAmount = singleRoomSelect.value * 34914;
				        var doubleRoomAmount = doubleRoomSelect.value * 70328;
				        var totalAmount = singleRoomAmount + doubleRoomAmount;
				        
				        var totalSelectedSingleRooms = parseInt(singleRoomSelect.value);
				        var totalSelectedDoubleRooms = parseInt(doubleRoomSelect.value);
				        var totalRooms = totalSelectedSingleRooms + totalSelectedDoubleRooms;
				        
				        var totAmount = totalAmount.toString(10);
				        var totRooms = totalRooms.toString(10);
						

				     	// Use the isLoggedIn value in your script
				        var isLoggedIn = <%= isLoggedInCheck %>;
				            
				      

				        if (isLoggedIn == true) {
				        	
				        	if (!arrivalDateInput.value) {
				        		
				                alert('Please select an arrival date before proceeding.');
				        	}
				        	else{
				        		
				        		if (singleRoomSelect.value == '0' && doubleRoomSelect.value == '0') {
					            	
					                alert('Please select at least one room before proceeding.');
					                
					            } else {
					            	
					            	window.location.href = 'payment.jsp?amount=' + totAmount + '&noofrooms=' + totRooms + '&hotel=' + '<%= hotelName %>' + '&arrival_date=' + document.getElementById('arrival_date').value;

					            }
				        		
				        		
				       	 	}
				        	
				            
				            
				        } else {
				        	
				            alert('You are not logged in. Please log in to proceed.');
				            window.location.href = 'cuslogin.jsp';
				        }
				    }
</script>
			
			<script>
			
			    function TotalSelectedRooms() {
			    	
			        var singleRoomSelect = document.getElementById('singleRoomSelect');
			        var doubleRoomSelect = document.getElementById('doubleRoomSelect');
			
			        var totalSelectedSingleRooms = parseInt(singleRoomSelect.value);
			        var totalSelectedDoubleRooms = parseInt(doubleRoomSelect.value);
			
			        document.getElementById('totalSingleRooms').innerText = totalSelectedSingleRooms;
			        document.getElementById('totalDoubleRooms').innerText = totalSelectedDoubleRooms;
			
			        var totalRooms = totalSelectedSingleRooms + totalSelectedDoubleRooms;
			        
			        document.getElementById('totalRooms').innerText = totalRooms;

    			}
			    
			</script>
			
			
			
		
			<%@ include file="footer.jsp" %>
			
			

</body>
</html>