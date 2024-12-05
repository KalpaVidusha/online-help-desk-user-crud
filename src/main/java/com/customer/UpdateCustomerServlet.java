package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		String Fname = request.getParameter("Fname");
		String Lname = request.getParameter("Lname");
		String Email = request.getParameter("Email");
		String Phone = request.getParameter("Phone");
		String Username = request.getParameter("Username");
		String Password = request.getParameter("Password");
		
		boolean isTrue;
		
		isTrue =CustomerDbUtil.updatecustomer(id, Fname, Lname, Email, Phone, Username, Password);
		
		if(isTrue == true) {  
			
			List<Customer> cusDetail = CustomerDbUtil.getCustomerDetail(id);
			request.setAttribute("cusDetail", cusDetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetail = CustomerDbUtil.getCustomerDetail(id);
			request.setAttribute("cusDetail", cusDetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
