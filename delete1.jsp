<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.database.Dbconnection" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete police station</title>
</head>
<body>
   <%
   Connection cn=Dbconnection.connect();
    String e=request.getParameter("pemail");
    PreparedStatement pstmt=cn.prepareStatement("delete from policestation where pemail=? ");
    pstmt.setString(1,e);
    int i=pstmt.executeUpdate();
    if(i>0)
    {
    	response.sendRedirect("viewpolice.jsp");
    }
    else
    {
    	response.sendRedirect("deletepolice.jsp");
    }
   %>
</body>
</html>