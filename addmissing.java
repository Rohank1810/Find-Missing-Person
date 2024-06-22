package com.database;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addmissing
 */
@MultipartConfig(maxFileSize = 1024*1024*10,//10MB
fileSizeThreshold=1024*1024*2,	//2MB
maxRequestSize=1024*1024*50) //50MB
public class addmissing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addmissing() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 String email1=Usergetset.getemail();
		Connection cn=Dbconnection.connect();
		//getting from form
		 String adhar=request.getParameter("Aadhar");
		 String gender=request.getParameter("gender");
		 String height=request.getParameter("height");
		 String name=request.getParameter("name");
		 String age=request.getParameter("age");
		 String city=request.getParameter("city");
		 String color=request.getParameter("color");
		 String address=request.getParameter("add");
		 String lastseen=request.getParameter("lastseen");
		 String mark=request.getParameter("idmark");
		 
		 
		 //image
		 Part file=request.getPart("photo");
			String filename=getSubmittedFileName(file);
			System.out.println(filename);
			String foldername=name;
			System.out.println(foldername);
			String dpath="E:/Project Setup/JAVA R3 eclipse/Find_Missing_Person/WebContent/missingperson/";
			String fpath=dpath+foldername;
			System.out.println(fpath);
			
			 File f1 = new File(fpath);  
			 boolean bool = f1.mkdir();  
		      if(bool)
		      {  
		         System.out.println("Folder is created successfully");  
		      }
		      else
		      {  
		         System.out.println("Error Found!");  
		      }  
			
			String path=fpath+"/"+filename;
			try
			{
				FileOutputStream fos=new FileOutputStream(path);
				InputStream is =file.getInputStream();
				byte[] data=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

		try {
			
			PreparedStatement stmt=cn.prepareStatement("insert into missingdata values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
		    stmt.setInt(1, 0);
		    stmt.setString(2,adhar );
		    stmt.setString(3,gender );
		    stmt.setString(4,name );
		    stmt.setString(5,age );
		    stmt.setString(6,height);
		    stmt.setString(7,city );
		    stmt.setString(8,color );
		    stmt.setString(9,address );
		    stmt.setString(10,lastseen );
		    stmt.setString(11,mark );
		    stmt.setString(12,filename );
		    stmt.setString(13,email1 );
		    
		    
		    int i=stmt.executeUpdate();
		    if(i>0)
		    {
		    	response.sendRedirect("pdashboard.jsp");
		    }
		    else
		    {
		    	response.sendRedirect("index.jsp");
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
private String getSubmittedFileName(Part file) {
        
        for(String cd:file.getHeader("content-disposition").split(";"))
        {
        	if(cd.trim().startsWith("filename"))
        	{
        		String filename=cd.substring(cd.indexOf('=')+1).trim().replace("\"", "");
        				return filename.substring(filename.lastIndexOf('/')+1).substring(filename.lastIndexOf('\\')+1);
        	}
        }
        	return null;
        }
}


