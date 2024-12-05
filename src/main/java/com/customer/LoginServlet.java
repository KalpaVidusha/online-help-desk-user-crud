package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cusUsername = request.getParameter("uid");
        String cusPassword = request.getParameter("pass");
        boolean isTrue;

        isTrue = CustomerDbUtil.validate(cusUsername, cusPassword);

        if (isTrue) {
          
            List<Customer> cusDetail = CustomerDbUtil.getCustomer(cusUsername);
          
            HttpSession session = request.getSession();
            session.setAttribute("cusDetail", cusDetail);

           
            response.sendRedirect("useraccount.jsp");
        } else {
            
            request.setAttribute("errorMessage", "Your username or password is incorrect");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
