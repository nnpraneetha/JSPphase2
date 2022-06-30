package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet1() {
        super();
    }
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletConfig config=getServletConfig();
		PrintWriter out=response.getWriter();
		out.print("<h1>Accessing Content Parameters in Servlet1</h1>");
		out.println("sql= "+config.getInitParameter("sql"));
		out.println("<br/>Message= "+config.getInitParameter("message"));
		
		out.print("<h1>Accessing Content Parameters in Servlet1</h1>");
		ServletContext application=getServletContext();
		out.println("driver= "+application.getInitParameter("driver"));
		out.println("<br/>url= "+application.getInitParameter("url"));
		
	}

}
