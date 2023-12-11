package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DoctorDao;


@WebServlet("/UpdateDoctorServelet")
public class UpdateDoctorServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateDoctorServelet() {
        super();
        	
    }

		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String cost = request.getParameter("cost");
		
		boolean isTrue;
		
		isTrue = DoctorDao.updateDoctor(userId, fname, lname, email, mobile, address, password, cost);
		
		if (isTrue == true) {
			response.sendRedirect("admin/doctors.jsp");
		} else {
			response.sendRedirect("admin/updateDoctor.jsp");
		}
	}

}
