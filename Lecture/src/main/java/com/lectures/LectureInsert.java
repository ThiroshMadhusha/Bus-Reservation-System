package com.lectures;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LectureInsert")
public class LectureInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String module = request.getParameter("module");
		String topic = request.getParameter("topic");
		String lecture = request.getParameter("lecture");
		String lectureid = request.getParameter("lid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue =LectureDBUtil.insertlecture(module, topic, lecture, lectureid, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
