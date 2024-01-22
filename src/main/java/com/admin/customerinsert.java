package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String totalNumbersParam = request.getParameter("total_numbers");

		String name = request.getParameter("name");
		String room_type = request.getParameter("room_type");
		String total_numbers = request.getParameter("total_numbers"); // Default value is 0
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String arrival_date = request.getParameter("arrival_date");
		String departure_date = request.getParameter("departure_date");
		String email_id = request.getParameter("email_id");
		String phone_number = request.getParameter("phone_number");
		String status = request.getParameter("status");

		boolean isTrue;

		isTrue = adminDbUtill.insertBooking(name, room_type, total_numbers, date, time, arrival_date, departure_date,
				email_id, phone_number, status);

		if (isTrue == true) {

			String jsCode = "<script type='text/javascript'>\n" + "alert('Insert Successfully');\n"
					+ "location.href = 'adduser.jsp';\n" + "</script>";

			response.setContentType("text/html");
			PrintWriter out1 = response.getWriter();

			// Write the JavaScript to the response
			out1.println(jsCode);
		} else {

			String jsCode = "<script type='text/javascript'>\n" + "alert('Insert Unsuccessfully');\n"
					+ "location.href = 'adduser.jsp';\n" + "</script>";

			response.setContentType("text/html");
			PrintWriter out1 = response.getWriter();

			// Write the JavaScript to the response
			out1.println(jsCode);
		}

	}

}
