<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Missing Person</title>
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
                <a style="color: black; text-transform: uppercase;" class="navbar-brand" href="policelogin.jsp">Find Missing Person</a>
            </div>
            <!-- /.navbar-header -->
           
            <div class="navbar-default sidebar" role="navigation">
              <div class="sidebar-nav navbar-collapse">
                  <ul class="nav" id="side-menu">
                      <li>
                          <a href="pdashboard.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>Police Dashboard</a>
                      </li>
                      <li>
                          <a href="#"><i class="fa fa-laptop nav_icon"></i>Add Missing Person<span class="fa arrow"></span></a>
                          <ul class="nav nav-second-level">
                              <li>
                                  <a href="addmissing.jsp">Add</a>
                              </li>
                          </ul>
                          <!-- /.nav-second-level -->
                      </li>
                      <li>
                          <a href="#"><i class="fa fa-indent nav_icon"></i>View Missing Person<span class="fa arrow"></span></a>
                          <ul class="nav nav-second-level">
                              <li>
                                  <a href="viewmissingpolice.jsp">View</a>
                              </li>
                          </ul>
                          <!-- /.nav-second-level -->
                      </li>
                      <li>
                          <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>View Finder Logs<span class="fa arrow"></span></a>
                          <ul class="nav nav-second-level">
                              <li>
                                  <a href="viewfinderpolice.jsp">View</a>
                              </li>
                          </ul>
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
  	    <h3></h3>
  	    <div class="well1 white">
          <h2 style=" color: black; text-transform: Uppercase;">Add Missing Person Complaints</h2>
        <form action="addmissing" method="post" enctype="multipart/form-data" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()">
          <fieldset>
          <div class="form-group">
              <label style=" color: rgb(97, 11, 11)"  class="control-label">Aadhar Number</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name ="Aadhar" placeholder="Aadhar Number" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">Gender</label>
              <input type="text" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" name ="gender" placeholder="Gender" ng-model="model.email" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)"  class="control-label">Name</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name ="name" placeholder="Name" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">Age</label>
              <input type="text" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" name ="age" placeholder="Age" ng-model="model.email" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">Height</label>
              <input type="text" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" name ="height" placeholder="Height (in feet)" ng-model="model.email" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">City</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" name ="city" placeholder="City" ng-model="model.password" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">Body Color</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" name ="color" placeholder="Body Color (fair,light,dark)" ng-model="model.password" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">Detail Address</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" name ="add" placeholder="Detail Address (Street ,floor)" ng-model="model.password" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11);" class="control-label">Last seen details</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name ="lastseen" placeholder="LLastseen (location)" required="">
            </div>
            <div class="form-group">
              <label style=" color: rgb(97, 11, 11)" class="control-label">Identification mark (if any)</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" name ="idmark" placeholder="Idetification Mark" ng-model="model.password" required="">
            </div>
            <div class="form-group">
            <label for="inputEmail3" class="col-sm-3 form-control-label">Upload Photo:</label>
	        <input type="file" name="photo" placeholder="Select file" accept=".gif, .jpg, .png">
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