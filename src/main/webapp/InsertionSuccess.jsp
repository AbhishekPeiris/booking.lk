<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="Register.RegisteredUser,Register.DBconnect"%>
<%@ page
	import="java.util.List, java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertion success</title>

<!-- CSS part of this code -->

<style>

.profile {
	background-color: #f7f7f7;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
	width: 300px;
	margin: 0 auto;
}

.profile p {
	margin: 10px 0;
	font-size: 16px;
}

.profile p:first-child {
	font-weight: bold;
}



body {
    background-color: #5f9ea0;
    font-family: Arial, sans-serif;
}

h1 {
    text-align: center;
    color: #0071ff;
    margin-top: 30px;
    font-size: 36px;
}

#details-container {
    width: 600px;
	height: 390px;
	margin: 0 auto;
	text-align: center;
	margin-top: 100px;
	background-color: #ffffff;
	padding: 22px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	position: relative;
	bottom: 80px;
    
}

label {
	display: block;
	margin-bottom: 10px;
}

input {
	width: 80%;
	height:35px;
	padding: 5px;
	border: 1px solid #5f9ea0;
	border-radius: 5px;
	margin-bottom: 2px;
}
#details-container p {
    font-size: 24px; 
    font-weight: bold;

}

a.button-link {
    text-align: center;
    display: block;
    margin-top: 10px;
}

button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    cursor: pointer;
    padding: 10px 250px;
    border-radius: 5px;
    position:relative;
    bottom:70px;
}
#confirmButton{
  margin-left:460px;
  margin-top:20px;
  padding: 10px 240px;
  position:relative;
  bottom:75px;
  
}
</style>

</head>
<body>


<%@ include file="header.jsp"%>

	<link rel="stylesheet" href="header.css">

<!-- Display user entered details after adding database  -->

<h1>Registered User Details</h1>

<!-- I use this code to display last entered user details because when registering no need to display other user details  -->
<%
Connection connection = DBconnect.getConnection();
RegisteredUser dao = new RegisteredUser(connection);
List<RegisteredUser> list = dao.readdetails();

RegisteredUser lastUser = null; 

if (!list.isEmpty()) {
    lastUser = list.get(list.size() - 1);
    int id = lastUser.getId();
    String name = lastUser.getName();
    String address = lastUser.getAddress();
    String email = lastUser.getEmail();
    String phone = lastUser.getPhone();
%>



<form id="details-container">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" value="<%= id %>"><br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%= name %>"><br>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="<%= address %>"><br>

    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="<%= email %>"><br>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="<%= phone %>"><br>

    
</form>





<!-- in this part values direct to update page by clicking update button -->

<%
String userUpdate = response.encodeURL("UpdateRegisterUser.jsp");
String id1 = "id";
String name1 = "name";
String address1 = "address";
String email1 = "email";
String phone1 = "phone";
%>

<a href="<%= userUpdate %>?id1=<%= id %>&name1=<%= name %>&address1=<%= address %>&email1=<%= email %>&phone1=<%= phone %>" class="button-link">
    <button>Update my data</button>
</a>

<!-- in this part values direct to delete page by clicking update button -->

<%
String RegiDelete = response.encodeURL("DeleteRegisteredUser.jsp");
%>

<a href="<%= RegiDelete %>?id1=<%= id %>&name1=<%= name %>&address1=<%= address %>&email1=<%= email %>&phone1=<%= phone %>" class="button-link">
    <button style="background-color: #0071ff;">Delete my data</button>
</a>

<%String confirm=response.encodeRedirectURL("TermsandCondition.jsp"); %>

<a href ="<%=confirm%>">
<button id="confirmButton" >Confirm Registration</button>
</a>
<%
} else {
%>
<p>No records found.</p>
<%
}
%>

</body>
</html>
