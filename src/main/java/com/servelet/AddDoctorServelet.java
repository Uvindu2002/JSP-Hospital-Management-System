package com.servelet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DoctorDao;




@WebServlet("/AddDoctorServelet")
public class AddDoctorServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddDoctorServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		int spec = Integer.parseInt(request.getParameter("spec"));
		String cost = request.getParameter("cost");
		
		boolean isTrue;
		isTrue = DoctorDao.addDoctor(fname, lname, email, mobile, address, password, spec,cost);
		
		if (isTrue == true) {
			response.sendRedirect("admin/doctors.jsp");
		} else {
			response.sendRedirect("admin/addDoctor.jsp");
		}
		
		

        
	}

}
