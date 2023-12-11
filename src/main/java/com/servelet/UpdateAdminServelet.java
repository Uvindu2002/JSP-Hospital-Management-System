package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AdminDao;


@WebServlet("/UpdateAdminServelet")
public class UpdateAdminServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateAdminServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		
		boolean isTrue;
		
		isTrue = AdminDao.updateAdmin(userId, name, email, mobile, address, password);
		
		if (isTrue == true) {
			response.sendRedirect("admin/admin.jsp");
		} else {
			response.sendRedirect("admin/updateAdmin.jsp");
		}
		
	}

}
