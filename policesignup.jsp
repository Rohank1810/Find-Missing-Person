<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.Dbconnection" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Police Sign up</title>
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
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">Find Missing Person</a>
            </div>
            <!-- /.navbar-header -->
           
            <div class="navbar-default sidebar" role="navigation">
              <div class="sidebar-nav navbar-collapse">
                  <ul class="nav" id="side-menu">
                      <li>
                          <a href="#"><i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
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
                          
                          <!-- /.nav-second-level -->
                      </li>
                  </ul>
              </div>
              <!-- /.sidebar-collapse -->
          </div>
          <!-- /.navbar-static-side -->
      </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	    <div class="well1 white">
  	     <h2 style=" color: rgb(133, 12, 78); text-transform: uppercase;">Signup Here</h2>
        <form action="policesignup" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()">
          <fieldset>
            <div class="form-group">
              <label class="control-label">Username</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name ="pusername" placeholder="Police Username" required="">
            </div>
            <div class="form-group">
              <label class="control-label">Name</label>
              <input type="email" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" name ="pname" placeholder="Police Station Name" ng-model="model.email" required="">
            </div>
            <div class="form-group">
              <label class="control-label">Password</label>
              <input type="password" class="form-control1 ng-invalid ng-invalid-required ng-touched" name ="password" placeholder="password" ng-model="model.password" required="">
            </div>
            <div class="form-group">
              <label class="control-label">Mobile Number</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name ="mobilenumber" placeholder="Mobile Number" required="">
            </div>
            <div class="form-group">
              <label class="control-label">Email</label>
              <input type="email" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" name ="email" placeholder="Email" ng-model="model.email" required="">
            </div>
            <div class="form-group">
              <label class="control-label">Location</label>
              <input type="password" class="form-control1 ng-invalid ng-invalid-required ng-touched" name ="location" placeholder="Location" ng-model="model.password" required="">
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-default">Reset</button>
            </div>
          </fieldset>
        </form>
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