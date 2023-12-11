<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnect"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Admin</title>
  
<%@include file="component/allComponent.jsp" %>
  
  
  
</head>
<body>
	
    
    <%= session.getAttribute("employeeObj") %>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo me-5" href="index.jsp"><h3>Ceylon Medicare</h3></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        
        <ul class="navbar-nav navbar-nav-right">
            
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
              <i class="ti-user icon-md text-muted mb-0 mb-md-3 mb-xl-0"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="EmployeeLogoutServelet">
                <i class="ti-power-off text-primary"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <%@include file="navBars/sidenavbar.jsp" %>
      
      
     
      
      
        <!-- content-wrapper ends -->
        <div class="main-panel">
	        <div class="content-wrapper">
	          <div class="row">
		        <div class="col-10 grid-margin stretch-card">
		              <div class="card">
		                <div class="card-body">
		                  <h4 class="card-title">Basic form elements</h4>
		                  <p class="card-description">
		                    Basic form elements
		                  </p>
		                  <%
					            String mob = request.getParameter("id");
					            Connection con = DBConnect.getConnection();
					            String s = "SELECT * FROM doctor WHERE doctorId = '"+mob+"' ";
					            PreparedStatement pstmt = con.prepareStatement(s);
					            ResultSet  rs = pstmt.executeQuery();
					            while (rs.next()) {
					        %> 
		                  <form class="forms-sample" method="post" action="/HospitalManagement/UpdateDoctorServelet">
		                  	<div class="form-group">
		                      <label for="exampleInputName1">ID Number</label>
		                      <input type="text" class="form-control" value="<%= rs.getString(1)%>" name="userId" placeholder="userId" readonly>
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputName1">First Name</label>
		                      <input type="text" class="form-control" value="<%= rs.getString(2)%>" name="fname" placeholder="Name">
		                    </div>
		                     <div class="form-group">
		                      <label for="exampleInputName1">Last Name</label>
		                      <input type="text" class="form-control" value="<%= rs.getString(3)%>" name="lname" placeholder="Name">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputEmail3">Email address</label>
		                      <input type="email" class="form-control" value="<%= rs.getString(4)%>" name="email" placeholder="Email">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputPassword4">Mobile</label>
		                      <input type="text" class="form-control" value="<%= rs.getString(5)%>" name="mobile" placeholder="mobile">
		                    </div>
		                    
		                    <div class="form-group">
		                      <label for="exampleInputPassword4">Password</label>
		                      <input type="text" class="form-control" value="<%= rs.getString(7)%>"   name="password" placeholder="Password">
		                    </div>
		                    
		                    <div class="form-group">
		                      <label for="exampleInputPassword4">Address</label>
		                      <input type="text" class="form-control" value="<%= rs.getString(6)%>" name="address" placeholder="address">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleSelectGender">Specilization</label>
		                        <select class="form-control"  name="spec">
		                        		
		                        		<%
								            String spec = rs.getString(8);
								            
								            String sp = "SELECT speciliztionType FROM specilization WHERE specilizationId = '"+spec+"' ";
								            PreparedStatement spstmt = con.prepareStatement(sp);
								            ResultSet  sprs = spstmt.executeQuery();
								            if (sprs.next()) {
								        %>                        		
		                          
								       	<option value="<%= rs.getString(8)%>"><%= sprs.getString("speciliztionType")%></option>
								       	
								       	<%
								            }
								       	%>
								       	
								       
		                        </select>
		                     </div>
		                     <div class="form-group">
		                      <label for="exampleInputPassword4">Channeling cost</label>
		                      <input type="text" class="form-control" name="cost" value="<%= rs.getString(10)%>" placeholder="Channeling cost">
		                    </div>		                
		                    <button type="submit" name="submit" class="btn btn-primary me-2">Update</button>
		                    
		                  </form>
						    <%
				                }
				       		%>
		                </div>
		              </div>
		            </div>
		            </div>
		            </div>
		            
		           
        <!-- partial:partials/_footer.html -->
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  



</body>

</html>

