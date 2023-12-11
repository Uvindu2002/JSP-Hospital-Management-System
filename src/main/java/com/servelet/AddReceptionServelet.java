package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ReceptionDao;


@WebServlet("/AddReceptionServelet")
public class AddReceptionServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddReceptionServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		
		boolean isTrue;
		isTrue = ReceptionDao.addReception(name, email, mobile, address, password);
		
		if (isTrue == true) {
			response.sendRedirect("admin/receptions.jsp");
		} else {
			response.sendRedirect("admin/addReception.jsp");
		}
	}

}
