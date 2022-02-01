package com.reports;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateReportServlet")
public class UpdateReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("repid");
		String regno = request.getParameter("rno");
		String type = request.getParameter("type");
		String route = request.getParameter("route");
		String tripid = request.getParameter("tripid");
		String bookingid = request.getParameter("bookingid");
		String price = request.getParameter("price");
		String seatno = request.getParameter("seatno");
		String facilities = request.getParameter("facilities");
		String company = request.getParameter("company");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = ReportDBUtil.updatereport(id, regno, type, route, tripid, bookingid, price, seatno, facilities, company, password);
		
		if(isTrue == true) {
			
			List<Report> repDetails = ReportDBUtil.getReportDetails(id);
			request.setAttribute("repDetails", repDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Report> cusDetails = ReportDBUtil.getReportDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
