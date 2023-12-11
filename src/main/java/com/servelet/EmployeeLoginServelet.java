package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.EmployeeDaoImpl;
import com.connection.DBConnect;
import com.model.EmployeeModel;

@WebServlet("/EmployeeLoginServelet")
public class EmployeeLoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EmployeeLoginServelet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EmployeeDaoImpl dao = new EmployeeDaoImpl(DBConnect.getConnection());
		HttpSession session = request.getSession();
		
		String userId = request.getParameter("userName");
        String password = request.getParameter("password");
        
        String userType = extractUserType(userId);
        
        EmployeeModel em = dao.login(userType, userId, password);
        
        
        if (em != null ) { 	
        	
        	
        	if ("admin".equals(userType)) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("admin/index.jsp");
        	}else if ("doctor".equals(userType)) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("doctor/index.jsp");
        	}else if ("nurse".equals(userType)) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("nurse/index.jsp");
        	}else if ("recep".equals(userType)) {
        	    session.setAttribute("employeeObj", em);
        	    response.sendRedirect("reception/index.jsp");
        	}
        	
        	        	
        }else {
        	
        	session.setAttribute("failMessage", "Email or password incorrect");
        	response.sendRedirect("login.jsp");        	
        	
        }
        
        
		
	}
	
	private String extractUserType(String userId) {
        
        int underscoreIndex = userId.indexOf("_");
        if (underscoreIndex != -1) {
            return userId.substring(0, underscoreIndex);
        }
        return ""; 
    }

}
