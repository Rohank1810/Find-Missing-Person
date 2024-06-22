package com.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminlogin
 */
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection cn=Dbconnection.connect();
		
		//getting values from admin form
		
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		if(user.equals("admin@gmail.com") && pass.equals("1234"))
		{
			response.sendRedirect("admin.jsp");
		}
		else
		{
			response.sendRedirect("logfail.html");
		}
		/*if(username.equals("Rohan")&&email.equals("Rohan@gmail.com")&& password.equals("123"))
		{
		response.sendRedirect("dashboard.html");
	}
	else
	{
		response.sendRedirect("index.html");
	}*/
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
