package com.faq;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deletecustomerservlet
 */
@WebServlet("/Deletecustomerservlet")
public class Deletecustomerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		boolean isTrue;
		
		isTrue = FaqSubmitDButill.deletefaq(name);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("FAQ.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
				
   }

}
