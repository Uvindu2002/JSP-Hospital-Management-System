<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		try {
			String id = request.getParameter("id");
			String table = request.getParameter("table");
			
			if (id != null && table != null) {
		    
		    Connection con = null;
		    Statement stmt = null;
		    con = DBConnect.getConnection();
		    stmt = (Statement) con.createStatement();
		    String query;
		    int rowsAffected;
		    
		    if ("admin".equals(table)) {
		    	query = "delete from admin where adminId = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("admin.jsp");
		    }else if ("doctor".equals(table)) {
		    	query = "delete from doctor where doctorId = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("doctors.jsp");
		    }else if ("nurse".equals(table)) {
		    	query = "delete from nurse where nurseId = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("nurses.jsp");
		    }else if ("patient".equals(table)) {
		    	query = "delete from patient where patientId = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("patients.jsp");
		    }else if ("phamacist".equals(table)) {
		    	query = "delete from phamacist where phamacistId = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("phamacists.jsp");
		    }else if ("receptionist".equals(table)) {
		    	query = "delete from receptionist where receptionistId = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("receptions.jsp");
		    }
		    
		    
		    
		   
		    
		    con.close();
		    
			}
		    
		    
		    
		} catch (Exception e) {
		    e.printStackTrace();
		}
	   
	    
		%>

</body>
</html>