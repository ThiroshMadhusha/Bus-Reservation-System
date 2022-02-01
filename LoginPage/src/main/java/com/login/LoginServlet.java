package com.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.Customer;
import com.login.CustomerDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = CustomerDBUtil.validate(userName, password);
		
		if(isTrue==true) {
			 List<Customer> cusDetails = CustomerDBUtil.validate(userName,  password);				 
				 
			 request.setAttribute("cusDetails", cusDetails);
	 }
		}
		else {
			
			ServletRequest request;
			RequestDispatcher dis = request.getRequestDispatcher("/customeraccount.jsp");
			 dis.forward(request, response);
			
		}
		
	}

}
