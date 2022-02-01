package com.reports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReportInsert")
public class ReportInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String regno = request.getParameter("rid");
		String type = request.getParameter("type");
		String route = request.getParameter("route");
		String tripid = request.getParameter("tripid");
		String bookingid = request.getParameter("bookingid");
		String price = request.getParameter("price");
		String seatno = request.getParameter("seatno");
		String facilities = request.getParameter("facilities");
		String company = request.getParameter("company");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = ReportDBUtil.insertreport(regno,type,route,tripid,bookingid,price,seatno,facilities,company,password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
