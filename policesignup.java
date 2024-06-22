package com.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class policesignup
 */
public class policesignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public policesignup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  Connection cn=Dbconnection.connect();
		  int id=0;
		  //for reference
		 
		  //id primary taking other value through from
		    
		    String pusername=request.getParameter("pusername");
		    String pname=request.getParameter("pname");
		    String password=request.getParameter("password");
		    String mobile=request.getParameter("mobilenumber");
		    String pemail=request.getParameter("email");
		    String plocation=request.getParameter("location");
		    
		    
		   
		    
		    try {
				PreparedStatement st=cn.prepareStatement("insert into policestation values (?,?,?,?,?,?,?)");
				st.setInt(1, id);
				st.setString(2, pusername);
				st.setString(3, pname);
				st.setString(4, password);
				st.setString(5, mobile);
				st.setString(6, pemail);
				st.setString(7, plocation);
				int i=st.executeUpdate();
				if(i>0)
				{
					response.sendRedirect("policelogin.jsp");
				}
				else
				{
					response.sendRedirect("policesignup.jsp");
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
