<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Hotel Dashboard Template</title>
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
<link rel="stylesheet" href="assets/css/feathericon.min.css">
<link rel="stylesheet" href="assets/plugins/morris/morris.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/adduser.css">
<link rel="stylesheet" href="assets/css/adding.css">
</head>

<body>
	<div class="main-wrapper">
		<%@ include file="Adminheader.jsp"%>
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li><a href="indexAdmin.jsp"><i
								class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
						<li class="list-divider"></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-suitcase"></i> <span> Booking </span> <span
								class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="adduser.jsp"> All Booking </a></li>
								<li><a href="edit-booking.html"> Edit Booking </a></li>
								<li><a href="customerinsert.jsp"> Add Booking </a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-user"></i>
								<span> Customers </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-customer.html"> All customers </a></li>
								<li><a href="edit-customer.html"> Edit Customer </a></li>
								<li><a class="" href="add-customer.html"> Add Customer
								</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-key"></i>
								<span> Rooms </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-rooms.html">All Rooms </a></li>
								<li><a href="edit-room.html"> Edit Rooms </a></li>
								<li><a href="add-room.html"> Add Rooms </a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-user"></i>
								<span> Staff </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-staff.html">All Staff </a></li>
								<li><a href="edit-staff.html"> Edit Staff </a></li>
								<li><a href="add-staff.html"> Add Staff </a></li>
							</ul></li>
						
							
						<li class="submenu"><a href="#"><i class="fas fa-user"></i>
								<span> Employees </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="employees.html">Employees List </a></li>
								<li><a href="leaves.html">Leaves </a></li>
								<li><a href="holidays.html">Holidays </a></li>
								<li><a href="attendance.html">Attendance </a></li>
							</ul></li>
						
						
						
						<li><a href="settings.html"><i class="fas fa-cog"></i> <span>Settings</span></a>
						</li>
						
					</ul>
				</div>
			</div>
		</div>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title mt-5">Add Booking</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<form action="insert" method="post" class="well form-horizontal"
							id="contact_form">

							<div class="row formtype">
								<div class="col-md-4">
									<div class="form-group">
										<label for="name" style="font-weight: bold;">Name</label> <input
											class="form-control" type="text" id="name" name="name"
											placeholder="Enter your name" required>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="room_type" style="font-weight: bold;">Room
											Type</label> <select class="form-control" name="room_type"
											id="room_type" required>
											<option value="" disabled selected>Select</option>
											<option>Single</option>
											<option>Double</option>
											<option>Quad</option>
											<option>King</option>
											<option>Suite</option>
											<option>Villa</option>
										</select>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="total_members" style="font-weight: bold;">Total
											Members</label> <select class="form-control" name="total_numbers"
											id="total_members" required>
											<option value="" disabled selected>Select</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="date" style="font-weight: bold;">Date</label>
										<div class="cal-icon">
											<input type="text" class="form-control datetimepicker"
												id="date" name="date" placeholder="Select a date" required>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="time" style="font-weight: bold;">Time</label>
										<div class="time-icon">
											<input type="text" class="form-control" id="datetimepicker3"
												name="time" placeholder="Select a time" required>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="arrival_date" style="font-weight: bold;">Arrival
											Date</label>
										<div class="cal-icon">
											<input type="text" class="form-control datetimepicker"
												id="arrival_date" name="arrival_date"
												placeholder="Select arrival date" required>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="departure_date" style="font-weight: bold;">Departure
											Date</label>
										<div class="cal-icon">
											<input type="text" class="form-control datetimepicker"
												id="departure_date" name="departure_date"
												placeholder="Select departure date" required>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="email_id" style="font-weight: bold;">Email
											ID</label> <input type="email" class="form-control" id="email_id"
											name="email_id" placeholder="Enter your email" required>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="phone_number" style="font-weight: bold;">Phone
											Number</label> <input type="tel" class="form-control"
											id="phone_number" name="phone_number"
											placeholder="Enter your phone number" required>
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<label for="status" style="font-weight: bold;">Status</label>
										<input type="text" class="form-control" id="status"
											name="status" placeholder="Enter status" required>
									</div>
								</div>
							</div>

							<div class="col-md-12 text-center">
								<button name="submit" type="submit"
									class="btn btn-primary buttonedit1" style="font-weight: bold;">Create
									Booking</button>
							</div>
						</form>
					</div>
				</div>


				<script src="assets/js/jquery-3.5.1.min.js"></script>
				<script src="assets/js/popper.min.js"></script>
				<script src="assets/js/bootstrap.min.js"></script>
				<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
				<script src="assets/plugins/raphael/raphael.min.js"></script>
				<script src="assets/js/moment.min.js"></script>
				<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
				<script src="assets/js/script.js"></script>
				<script>
					$(function() {
						$('#datetimepicker3').datetimepicker({
							format : 'LT'
						});
					});
				</script>
</body>

</html>