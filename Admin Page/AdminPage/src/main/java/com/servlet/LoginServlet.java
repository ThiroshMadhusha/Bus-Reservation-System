package com.servlet;

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
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
				
			List<Admin> admDetails = AdminDBUtil.validate(username, password);
			request.setAttribute("admDetails", admDetails);
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		//Redirect another page
		RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
		dis.forward(request, response);
		
		
	
	}

}
