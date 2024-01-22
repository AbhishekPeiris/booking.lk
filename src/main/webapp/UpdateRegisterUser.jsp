<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style>
    body {
        background-color: #5f9ea0;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 15vh;
        margin: 0;
      
        
        
    }

    form {
        background-color: #fff;
        border-radius: 10px;
        padding: 100px;
        width: 600px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        position:relative;
        height:640px;
        top:300px;
    }

    form input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #5f9ea0;
        border-radius: 5px;
        
    }

    form input[type="text"]:hover {
        border: 1px solid #007BFF;
    }

    form input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        cursor: pointer;
        padding: 10px 40px;
        border-radius: 5px;
        margin-top: 10px;
        transition: background-color 0.3s;
        width:400px;
    }

    form input[type="submit"]:hover {
        background-color: #0056b3;
    }

    form h1 {
        text-align: center;
        color: #007BFF;
        font-size: 24px;
    }

    form label {
        font-weight: bold;
    }
</style>
</head>
<body>


	<link rel="stylesheet" href="header.css">

<%
String id1 = request.getParameter("id1");
String name1 = request.getParameter("name1");
String address1 = request.getParameter("address1");
String email1 = request.getParameter("email1");
String phone1 = request.getParameter("phone1");
%>

<form action="UpdateServlet" method="post">
    <h1>Update User Details</h1>
    <label for="id">ID</label>
    <input type="text" name="id" value="<%= id1 %>" readonly><br>
    <label for="name">Name</label>
    <input type="text" name="name" value="<%= name1 %>"><br>
    <label for="address">Address</label>
    <input type="text" name="address" value="<%= address1 %>"><br>
    <label for="email">Email</label>
    <input type="text" name="email" value="<%= email1 %>"><br>
    <label for="contact_number">Contact Number</label>
    <input type="text" name="contact_number" value="<%= phone1 %>"><br>
    <input type="submit" name="submit" value="Update">
</form>
</body>
</html>
