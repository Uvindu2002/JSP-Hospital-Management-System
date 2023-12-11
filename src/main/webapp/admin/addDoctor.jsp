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
		                  <h4 class="card-title">Add Doctor</h4>
		                  
		                  <form class="forms-sample" method="post" action="/HospitalManagement/AddDoctorServelet">
		                    <div class="form-group">
		                      <label for="exampleInputName1">First Name</label>
		                      <input type="text" class="form-control" name="fname" id="fname" placeholder="Name">
		                    </div>
		                     <div class="form-group">
		                      <label for="exampleInputName1">Last Name</label>
		                      <input type="text" class="form-control" name="lname" id="lname" placeholder="Name">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputEmail3">Email address</label>
		                      <input type="email" class="form-control" name="email" id="email" placeholder="Email">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputPassword4">Mobile</label>
		                      <input type="text" class="form-control" name="mobile" id="mobile" placeholder="mobile">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputPassword4">Password</label>
		                      <input type="password" class="form-control" name="password" id="password" placeholder="Password">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputPassword4">Address</label>
		                      <input type="text" class="form-control" name="address" id="address" placeholder="address">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleSelectGender">Specilization</label>
		                        <select class="form-control" name="spec">
		                          <%
								       
								       Connection con = DBConnect.getConnection();
								   	
								   	   String sql = "select * from specilization";
								       
								       Statement stmt = con.createStatement();
								       
								       ResultSet rs1 = stmt.executeQuery(sql);
								       
								       while(rs1.next()) {
								       	%>
								       	
								       	<option value="<%=rs1.getInt("specilizationId")%>"><%=rs1.getString("speciliztionType")%></option>
								       	
								       	<%
								       }
								       
								       %>
		                        </select>
		                     </div>
		                     
		                     <div class="form-group">
		                      <label for="exampleInputPassword4">Channeling cost</label>
		                      <input type="text" class="form-control" name="cost" placeholder="Channeling cost">
		                    </div>		                
		                    <button type="submit" name="submit" class="btn btn-primary me-2">Add</button>
		                    
		                  </form>
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

<script>
    function validateForm() {
        // Reset any previous error messages
        document.getElementById('fnameError').textContent = '';
        document.getElementById('lnameError').textContent = '';
        document.getElementById('emailError').textContent = '';
        document.getElementById('mobileError').textContent = '';

        const fname = document.getElementById('fname').value;
        const lname = document.getElementById('lname').value;
        const email = document.getElementById('email').value;
        const mobile = document.getElementById('mobile').value;

        // First Name validation (maximum 50 characters)
        if (fname.length > 50) {
            document.getElementById('fnameError').textContent = 'First Name should not exceed 50 characters';
            return false;
        }

        // Last Name validation (maximum 50 characters)
        if (lname.length > 50) {
            document.getElementById('lnameError').textContent = 'Last Name should not exceed 50 characters';
            return false;
        }

        // Email validation (valid email address)
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!email.match(emailPattern)) {
            document.getElementById('emailError').textContent = 'Invalid email address';
            return false;
        }

        // Mobile validation (10 characters and starts with 0)
        if (mobile.length !== 10 || mobile.charAt(0) !== '0' || isNaN(mobile)) {
            document.getElementById('mobileError').textContent = 'Mobile should be 10 digits starting with 0';
            return false;
        }

        return true;
    }
</script>

</html>
