package com.webapp.servlets;

//Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

//Extend HttpServlet class
public class PostMethodExample extends HttpServlet {

	// Method to handle GET method request.
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// Set response content type
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String title = "Using GET Method to Read Form Data";
		String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
		out.println(docType +
             "<html>\n" +
             "<head><title>" + title + "</title></head>\n" +
             "<body bgcolor=\"#f0f0f0\">\n" +
             "<h1 align=\"center\">" + title + "</h1>\n" +
             "<ul>\n" +
             "  <li><b>First Name</b>: "
             + request.getParameter("first_name") + "\n" +
             "  <li><b>Last Name</b>: "
             + request.getParameter("last_name") + "\n" +
             "</ul>\n" +
             "</body></html>"
             +"dsfsaf");
		
	}

	// Method to handle POST method request.
	/**
	 * Just prints etc and calls GET
	 */
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		out.println("PostCalled");
		
		doGet(request, response);
	}
	
}