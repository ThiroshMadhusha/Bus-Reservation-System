package com.reports;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String regno = request.getParameter("reg");
		String password = request.getParameter("pass");
		
		try {
			List<Reports> repDetails = AdminDBUtil.validate(regno, password);
			request.setAttribute("repDetails", repDetails);	
		}				
		catch(Exception e) {
			e.printStackTrace();
		}
		//Redirect Another Page
		RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
		dis.forward(request, response);
	}

}

