package com.lectures;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateLectureServlet")
public class UpdateLectureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		String module = request.getParameter("module");
		String topic = request.getParameter("topic");
		String lecture = request.getParameter("lecture");
		String lectureid = request.getParameter("lname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = LectureDBUtil.updatelecture(id, module, topic, lecture, lectureid, password);
		
		if(isTrue == true) {
			
			List<Lecture> cusDetails = LectureDBUtil.getLectureDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Lecture> cusDetails = LectureDBUtil.getLectureDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
