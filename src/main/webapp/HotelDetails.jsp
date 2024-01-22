<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4; /* Light gray background color */
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: black; /* Black font color */
        background-color: #add8e6; /* Light blue background color */
        padding: 10px; /* Add padding for better visibility */
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        border: 2px solid black; /* Strong border for table */
    }

    th, td {
        border: 1px solid #ccc;
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #f2f2f2;
        text-align: center;
        font-family: "Helvetica Neue", sans-serif; /* Change font family */
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    input[type="button"] {
        background-color: #007bff; /* Light blue button color */
        color: white;
        border: none;
        border-radius: 3px;
        padding: 8px 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    input[type="button"]:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<body>

    <h2>Hotel Details</h2>
    <table>
        <thead>
            <tr>
                <th>Hotel ID</th>
                <th>Hotel Name</th>
                <th>Hotel Location</th>
                <th>Hotel Contact Number</th>
                <th>Hotel Email</th>
                <th>Hotel WebSite</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var = "hotels" items = "${hotels}">
                <c:set var = "id" value = "${hotels.hid}"/>
                <c:set var = "name" value = "${hotels.hname}"/>
                <c:set var = "location" value = "${hotels.hlocation}"/>
                <c:set var = "phone" value = "${hotels.hphone}"/>
                <c:set var = "email" value = "${hotels.hemail}"/>
                <c:set var = "web" value = "${hotels.hweb}"/>

                <tr>
                    <td>${hotels.hid}</td>
                    <td>${hotels.hname}</td>
                    <td>${hotels.hlocation}</td>
                    <td>${hotels.hphone}</td>
                    <td>${hotels.hemail}</td>
                    <td>${hotels.hweb}</td>
                    <td>
                        <c:url value = "HotelUpdate.jsp" var = "hotupdate">
                            <c:param name = "id" value = "${id}"/>
                            <c:param name = "name" value = "${name}"/>
                            <c:param name = "location" value = "${location}"/>
                            <c:param name = "phone" value = "${phone}"/>
                            <c:param name = "email" value = "${email}"/>
                            <c:param name = "web" value = "${web}"/>
                        </c:url>
                        <a href = "${hotupdate}">
                            <input type = "button" name = "update" value = "Update" style = "margin-right:10px">
                        </a>

                        <c:url value = "HotelDelete.jsp" var = "hotdelete">
                            <c:param name = "id" value = "${id}"/>
                            <c:param name = "name" value = "${name}"/>
                            <c:param name = "location" value = "${location}"/>
                            <c:param name = "phone" value = "${phone}"/>
                            <c:param name = "email" value = "${email}"/>
                            <c:param name = "web" value = "${web}"/>
                        </c:url>
                        <a href = "${hotdelete}">
                            <input type = "button" name = "delete" value = "Remove">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
