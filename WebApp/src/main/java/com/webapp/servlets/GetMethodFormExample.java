package com.webapp.servlets;

//Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

//Extend HttpServlet class
public class GetMethodFormExample extends HttpServlet {

	private String message;

	@Override
	public void init() throws ServletException {
		// Do required initialization
		message = "Hello World";
	}

	/**
	 * GET is auto-called when any url is accessed (w or w/o ? &key=val)
	 * POST is not, unless explicitly called by prog.
	 */
	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// Set response content type
		response.setContentType("text/html");

		// Actual logic goes here.
		PrintWriter out = response.getWriter();
		
		String title = "Using GET Method to Read Form Data";
		
	      String docType =
	      "<!doctype html public \"-//w3c//dtd html 4.0 " +
	      "transitional//en\">\n";
	    
	      out.println(docType +
	                "<html><body><form action=\"getex\" method=\"GET\">"
	                + "First Name: <input type=\"text\" name=\"first_name\"><br />"
	                + "Last Name: <input type=\"text\" name=\"last_name\" />"
	                + "<input type=\"submit\" value=\"Submit\" /></form></body></html>");
		
		
	      out.close();
	}

	@Override
	public void destroy() {
		// do nothing.
	}

}


