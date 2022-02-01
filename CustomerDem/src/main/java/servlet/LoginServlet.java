package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//jsp part idan servelet part dakwa kotasa
		//login jsp page eke idan ena username pw labagana system ekak hadanna
		
		//login jsp eke tiyena parameter e akarayenma diya yuthuya
		
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		//servlet part eke idan customerDB part eka dakwa kotasa
		//customerDb hi static use karapu nisa validate eka customerDb magin assign karamu
		
		 CustomerDB.validate(username, password);
		 
		 //ganna data jsp page ekata yawanna one nisa List methode eka use karamuu
		 //create custmer List
		 try {
				 List<Customer> cusDetails = CustomerDB.validate(username,  password);				 
				 //mema list eken ganna dewal anith jsp page eke penwiya haki akarayata sadanna		 
				 request.setAttribute("cusDetails", cusDetails);
		 }
		 catch(Exception e) {
				e.printStackTrace();
			}	
		 //next jsp page ekata rederect wenna sadamu
		 //servelt eke idan apita yanna one page eka deemata requestDispatcher yodannna
		 
		 RequestDispatcher dis = request.getRequestDispatcher("/customeraccount.jsp");
		 dis.forward(request, response);
		 
		 		
	}

}
