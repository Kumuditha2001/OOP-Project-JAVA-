package com.faq;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FaqSubmitServlet")
public class FaqSubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catching the submitted data from jsp
		String name = request.getParameter("name");
		String Contact = request.getParameter("Contact");
		String Question = request.getParameter("Question");
		
		boolean submitresult;
		
		submitresult = FaqSubmitDButill.InsertQuestion(name, Contact, Question);
		
		request.setAttribute("name", name);
		request.setAttribute("contact", Contact);
		request.setAttribute("question", Question);
		
		if(submitresult == true) {
			RequestDispatcher dis = request.getRequestDispatcher("conformfaq.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
