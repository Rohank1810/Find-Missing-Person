package com.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class policelogin
 */
public class policelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public policelogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection cn=Dbconnection.connect();
		
		//getting input from login form of police
		
		String email=request.getParameter("user");
		String password=request.getParameter("pass");
		Usergetset.setemail(email);
		
		
		try {
			PreparedStatement st=cn.prepareStatement("select * from policestation where pemail=? and password=?");
			st.setString(1, email);
			st.setString(2, password);
			
			
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
			response.sendRedirect("pdashboard.jsp");
			}
			else
			{
				response.sendRedirect("logfail.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
