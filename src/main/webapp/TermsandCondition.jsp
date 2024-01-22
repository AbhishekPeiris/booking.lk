<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Terms and Conditions</title>

<style>
body {
	background-color: #5f9ea0;
	font-family: 'Helvetica Neue', sans-serif;
	margin: 0;
	padding: 0;
	color: black;
}

h1 {
	text-align: center;
	font-size: 36px;
	margin-top: 20px;
	color: #0071ff;
}

p {
	text-align: left;
	margin: 20px;
	
}
#subtopic{

color:#5f9ea0;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	padding: 20px;
	width: 80%;
	max-width: 600px;
	margin: 0 auto;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	
}

.agreement {
	text-align: center;
	margin: 20px;
}

#agreed {
	margin: 10px;
}

button {
	background-color: #5f9ea0;
	color: #fff;
	border: none;
	cursor: pointer;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #007BFF;
}
</style>

<script>
	function showPopup() {
		var agreed = document.getElementById("agreed").checked;
		if (agreed) {
			alert("Registration complete");
		} else {
			alert("Please agree to the terms and conditions");
		}
	}
</script>
</head>
<body>

<link rel="stylesheet" href="header.css">

	<h1>Terms and Conditions</h1>

	<div class="container">
		<p id="subtopic">Please read and accept the terms and conditions below:</p>

		<p>Hotel Reservation System - Terms and Conditions Welcome to our
			Hotel Reservation System. By using our services, you agree to comply
			with the following terms and conditions: Reservation: When making a
			reservation, you must provide accurate information and ensure you
			meet the age requirements for booking. You are responsible for
			payment according to the reservation details. Payment: We accept
			various payment methods. Additional fees, taxes, and charges may
			apply during your stay.</p>

		<p>Cancellations: Cancellation policies vary and are detailed
			during the reservation process. Failure to adhere to the policy may
			result in fees. Check-In/Check-Out: Standard check-in time is at
			[time], and check-out time is at [time]. Early check-in or late
			check-out may be available for an extra charge. Privacy: We respect
			your privacy and handle personal data securely. Your information is
			used solely for reservation-related purposes and is not shared with
			third parties.</p>

		<p>Guest Conduct: All guests are expected to follow hotel rules
			and regulations. Disruptive or inappropriate behavior may lead to
			eviction without a refund. Liability: Except as required by law, the
			hotel is not responsible for loss, damage, or injury during your
			stay. Changes: We reserve the right to update these terms and
			conditions, and any changes will be posted on our website. By using
			our Hotel Reservation System, you acknowledge and agree to these
			terms and conditions. Enjoy your stay with us!</p>

		<div class="agreement">
			<input type="checkbox" id="agreed"> I agree to the terms and
			conditions <br> <br>
			
			<a href="index.jsp">
			<button onclick="showPopup()">Agree</button>
		</div> </a>
	</div>
</body>
</html>
