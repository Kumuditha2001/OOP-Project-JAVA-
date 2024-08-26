package com.faq;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatecustomerservlet")
public class updatecustomerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		//String FAQ_Number = request.getParameter("FAQ_Number");
		String name = request.getParameter("name");
		String Contact = request.getParameter("Contact");
		String Question = request.getParameter("Question");
		
		boolean isTrue;
		
		isTrue = FaqSubmitDButill.updatefaq(  name, Contact, Question);
		
		request.setAttribute("name", name);
		request.setAttribute("contact", Contact);
		request.setAttribute("question", Question);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("conformfaq.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
