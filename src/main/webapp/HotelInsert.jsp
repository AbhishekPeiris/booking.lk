<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Registration</title>

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

    <h1>Hotel Registration</h1>

    <form action="HotelInsert" method="post">
        <label for="hname">Hotel Name</label>
        <input type="text" name="hname" id="hname"> <br>
        <label for="hlocation">Location</label>
        <input type="text" name="hlocation" id="hlocation"> <br>
        <label for="email">Email</label>
        <input type="text" name="email" id="email"> <br>
        <label for="phone">Contact Number</label>
        <input type="text" name="phone" id="phone"> <br>
        <label for="website">Hotel Web Site</label>
        <input type="text" name="website" id="website"> <br>

        <input type="submit" name="submit" value="Register Hotel">
    </form>

</body>
</html>
