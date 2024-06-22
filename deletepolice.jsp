<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.database.Dbconnection" %>
    <%@page import="com.database.Usergetset" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete police station</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<%Connection cn=Dbconnection.connect() ;
    
	PreparedStatement st=cn.prepareStatement("select * from policestation");
	ResultSet rs=st.executeQuery();
%>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" style="text-transform: uppercase;" href="admin.jsp"><b>Find Missing Person</b></a>
            </div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    
                            <ul class="nav" id="side-menu">
                                <li>
                                    <a href="admin.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
                                </li>
                                <li>
                                    <a href="addpolicestation"><i class="fa fa-laptop nav_icon"></i>Add Police Station<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="addpolicestation.jsp">Add</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-second-level -->
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-indent nav_icon"></i>View Police Station<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="viewpolice.jsp">View</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-second-level -->
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>Delete Police Station<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="deletepolice.jsp">Delete</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-second-level -->
                                </li>
                                <li>
                                    <a href="viewmissing.jsp"><i class="fa fa-flask nav_icon"></i>View missing Complaints</a>
                                </li>
                                 <li>
                                    <a href="#"><i class="fa fa-check-square-o nav_icon"></i>View Finder Logs<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="viewfinder.jsp">Finders</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-second-level -->
                                </li>
                                <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>Logout admin<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.jsp">Logout</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                                <li>
                                    
                                    <!-- /.nav-second-level -->
                                </li>
                            </ul>
                        </div>
                        <!-- /.sidebar-collapse -->
                    </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	<h3 style="color: black; text-transform: uppercase;"><b>Delete Police Station</b></h3>
	<div class="panel panel-success" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
				<div class="panel-heading">
					<h2>Police Station</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
				</div>
				<div class="panel-body no-padding" style="display: block;">
					<table class="table table-striped">
						<thead>
							<tr class="warning">
								<th>PID</th>
								<th> USERNAME</th>
								<th>NAME</th>
								<th>PASSWORD</th>
                                <th>MOBILE</th>
								<th>EMAIL</th>
								<th>LOCATION</th>
								<th>DELETE</th>
							</tr>
						</thead>
						<tbody>
							  <% while(rs.next()){%>
                                    <tr><td><%= rs.getInt(1) %></td>
                                     <td><%= rs.getString(2) %></td>
                                    <td><%= rs.getString(3) %></td>
                                    <td><%= rs.getString(4) %></td>
                                    <td><%= rs.getString(5) %></td>
                                    <td><%= rs.getString(6) %></td>
                                    <td><%= rs.getString(7) %></td>
                             <td><a href="delete1.jsp?pemail=<%=rs.getString(6)%>">DELETE</a>
                              </tr>
                 <tr><%} %></tr>	
						</tbody>
					</table>
				</div>
			</div>
	
  </div>
  </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>