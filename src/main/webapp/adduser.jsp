<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet"
	href="assets/plugins/datatables/datatables.min.css">
<link rel="stylesheet" href="assets/css/feathericon.min.css">
<link rel="stylesheet" href="assets/plugins/morris/morris.css">
<link rel="stylesheet" href="assets/css/style.css">
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

								<li><a href="#"> All customers </a></li>
								<li><a href="edit-customer.html"> Edit Customer </a></li>
								<li><a href="customerinsert.jsp"> Add Customer </a></li>


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
							<div class="mt-5">
								<h4 class="card-title float-left mt-2"
									style="font-family: 'Your-Bold-Font', sans-serif; font-size: 24px; font-weight: bold; color: #0073e6;">Bookings</h4>

								<a href="customerinsert.jsp"
									class="btn btn-primary float-right veiwbutton"> <i
									class="fas fa-plus"></i> Add Bookings
								</a>

							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body booking_card">
								<div class="table-responsive">
									<table
										class="datatable table table-stripped table table-hover table-center mb-0">
										<thead>
											<tr style="background-color: #0073e6; color: white;">
												<th style="padding: 10px;">Booking ID</th>
												<th style="padding: 10px;">Name</th>
												<th style="padding: 10px;">Room Type</th>
												<th style="padding: 10px;">Total Numbers</th>
												<th style="padding: 10px;">Date</th>
												<th style="padding: 10px;">Time</th>
												<th style="padding: 10px;">Arrival Date</th>
												<th style="padding: 10px;">Departure Date</th>
												<th style="padding: 10px;">Email ID</th>
												<th style="padding: 10px;">Ph.Number</th>
												<th style="padding: 10px;">Status</th>
												<th style="padding: 10px;">Action</th>
											</tr>
										<tbody>
											<c:forEach items="${userDetails}" var="booking">

												<c:set var="id" value="${booking.booking_id}" />
												<c:set var="name" value="${booking.name}" />
												<c:set var="room_type" value="${booking.room_type}" />
												<c:set var="room_type" value="${booking.total_numbers}" />
												<c:set var="date" value="${booking.date}" />
												<c:set var="time" value="${booking.time}" />
												<c:set var="arrival_date" value="${booking.arrival_date}" />
												<c:set var="departure_date"
													value="${booking.departure_date}" />
												<c:set var="phone_number" value="${booking.phone_number}" />
												<c:set var="status" value="${booking.status}" />

												<tr>
													<td>${booking.booking_id}</td>
													<td>
														<h2 class="table-avatar">

															<a href="profile.html">${booking.name}<span>#0001</span></a>
														</h2>
													</td>
													<td>${booking.room_type}</td>
													<td>${booking.total_numbers}</td>
													<td>${booking.date}</td>
													<td>${booking.time}</td>
													<td>${booking.arrival_date}</td>
													<td>${booking.departure_date}</td>
													<td>${booking.email_id}</td>
													<td>${booking.phone_number}</td>
													<td>
														<div class="actions">
															<a href="#" class="btn btn-sm bg-success-light mr-2">${booking.status}</a>
														</div>
													</td>
													<td class="text-right">
														<div class="dropdown dropdown-action">



															<form action="edit" method="post"
																style="display: inline;">
																<input type="hidden" name="booking_id"
																	value="${booking.booking_id}">
																<button type="submit" name="edit"
																	class="btn btn-success btn-sm">Edit</button>
															</form>

															<form action="del" method="post" style="display: inline;">
																<input type="hidden" name="booking_id"
																	value="${booking.booking_id}">
																<button type="submit" name="delete"
																	class="btn btn-danger btn-sm">Delete</button>
															</form>






														</div> 
		

													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="delete_asset" class="modal fade delete-modal" role="dialog">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body text-center">
							<img src="assets/img/sent.png" alt="" width="50" height="46">
							<h3 class="delete_class">Are you sure want to delete this
								Asset?</h3>
							<div class="m-t-20">
								<a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
								<form action="edit" method="post">
									<input type="hidden" name="delete"
										value="${booking.booking_id}">
									<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<script data-cfasync="false"
			src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
		<script src="assets/js/jquery-3.5.1.min.js"></script>
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatables/datatables.min.js"></script>
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/raphael/raphael.min.js"></script>
		<script src="assets/js/script.js"></script>
</body>

</html>