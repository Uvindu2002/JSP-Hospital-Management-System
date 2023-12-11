package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PatientDao;


@WebServlet("/UpdatePatientServelet")
public class UpdatePatientServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdatePatientServelet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		
		boolean isTrue;
		
		isTrue = PatientDao.updatePatient(name, nic, mobile, email);
		
		if (isTrue == true) {
			response.sendRedirect("admin/patients.jsp");
		} else {
			response.sendRedirect("admin/updatePatient.jsp");
		}
	}

}
