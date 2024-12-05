package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String id = request.getParameter("cusid");
        boolean isTrue;
        
        isTrue = CustomerDbUtil.deleteCustomer(id);
        
        if(isTrue) {
            // Invalidate session
            request.getSession().invalidate();

            RequestDispatcher dispatcher = request.getRequestDispatcher("customerinsert.jsp");
            dispatcher.forward(request, response);
        } else {
            List<Customer> cusDetail = CustomerDbUtil.getCustomerDetail(id);
            request.setAttribute("cusDetail", cusDetail);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
            dispatcher.forward(request, response);
        }
    }
}
