<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Hotel Details</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #cce6ff; /* Light Blue Background */
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #007bff;
        font-size: 36px; /* Larger Font Size */
    }

    form {
        max-width: 600px; /* Increased Form Size */
        margin: 0 auto;
        padding: 30px; /* Increased Padding */
        background: #fff;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    form label {
        display: block;
        margin-bottom: 10px;
        color: #333;
        font-weight: bold;
    }

    form input[type="text"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px; /* Larger Font Size */
    }

    form input[type="submit"] {
        width: calc(100% - 20px);
        background: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 15px; /* Increased Padding */
        cursor: pointer;
        transition: background 0.3s ease;
        font-size: 18px; /* Larger Font Size */
    }

    form input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>

<h1>Update Hotel Details</h1>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String location = request.getParameter("location");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String web = request.getParameter("web");
%>

<form action="HotelUpdate" method="post">
    <label for="id">Hotel ID</label>
    <input type="text" name="id" id="id" value="<%= id %>" readonly> <br>
    <label for="name">Hotel Name</label>
    <input type="text" name="name" id="name" value="<%= name%>"> <br>
    <label for="location">Location</label>
    <input type="text" name="location" id="location" value="<%= location %>"> <br>
    <label for="email">Email</label>
    <input type="text" name="email" id="email" value="<%=email %>"> <br>
    <label for="phone">Contact Number</label>
    <input type="text" name="phone" id="phone" value="<%= phone%>"> <br>
    <label for="web">Hotel Web Site</label>
    <input type="text" name="web" id="web" value="<%= web%>"> <br>

    <input type="submit" name="submit" value="Update Hotel">
</form>

</body>
</html>
