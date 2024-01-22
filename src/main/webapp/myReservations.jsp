<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">
<title>Booking.lk | Your reservation</title>
</head>
<body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');
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
.bot4{
		color: #fff;
		display: block;
		margin: 0 2px;
		font-weight: 600;
		padding: 8px 18px;
		transition: 0.2s;
		border-radius: 30px;
		border:none;
		background: #d52942;
		font-size:12px;
		position:relative;
		top:11px;
		left:155px;
		width:138px;
	}
	.bot4:hover{
		background: #f6f4ff;
		transition: 0.2s;
		color:black;
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
		position:relative;
		bottom:20px;
		lrft:5px;
		width:138px;
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
		
		.goto{
			color:0071ff;
		}
		

</style>


		 <a href="index.jsp"><div style="position:relative;left:79%;top:30px;"><p class="goto">Go to Home Page</p><img src="images/prePage.png" width="30" style="position:relative;left:133px;bottom:26px;"></div></a>
		 <h1 style="margin-left:150px;">Your Reservations</h1><br>
		
		<center>
            <table style="font-size:12px;border-collapse: collapse;border-color: #6fc3ff;" border="1">
            
            <tr style="color:#fff;background-color:#0071ff">
                    <th width="50" height="30">No.</th><th width="120" height="30">Name</th><th width="150">Email</th><th width="120">Hotel name</th><th width="90">No of rooms</th><th>Arrival date</th><th width="100">Amount(LKR)</th><th width="130">Card No</th><th width="150">Card Holder</th>
                    <th width="300"></th>
                </tr>
            
            <c:forEach var="res" items="${myReservation}">
            
            
            
                    <tr style="background-color:#ebf3ff">
                        <td>${res.id}</td><td>${res.name}</td><td>${res.email}</td><td>${res.hotelname}</td><td>${res.noOfRooms}</td><td>${res.arrival_date}</td><td>${res.amount}</td><td>${res.crdno}</td><td>${res.crdholder}</td>
                        <th>
                        
                 
									<form action="DeleteReservationServlet" method="post">
									
										<input type="hidden" name="cusid" value="${res.id}">
										<input type="hidden" name="cusname" value="${res.name}">	
														
                           				<input type="submit" name="delete" value="Delete Reservation" class="bot4"></a>
                           			
                           			
                           			</form>	
                           
                           				<c:url value="updateReservation.jsp" var="resupdate">
										    <c:param name="id" value="${res.id}"/>
										    <c:param name="name" value="${res.name}"/>
										    <c:param name="email" value="${res.email}"/> 
										    <c:param name="hotelname" value="${res.hotelname}"/>
										    <c:param name="noofrooms" value="${res.noOfRooms}"/>
										    <c:param name="arrivaldate" value="${res.arrival_date}"/>
										    <c:param name="amount" value="${res.amount}"/>
										    <c:param name="cardno" value="${res.crdno}"/>
										    <c:param name="cardholder" value="${res.crdholder}"/>
										</c:url>

                           			
                           		
                                 		<a href="${resupdate}"><input type="submit" name="update" value="Update Reservation" class="bot5"></a>
                                 		
                                 		
	
	
                                 
                                 
                        </th>
                    </tr>
                
	
				
				
				</c:forEach>
            </table>
        </center>
        
        

		
		
</body>
</html>