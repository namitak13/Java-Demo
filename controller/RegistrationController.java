package com.cybage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cybage.model.User;
import com.cybage.service.RegistrationService;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

    RegistrationService registrationService = null;
	RequestDispatcher requestDispatcher =null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
		registrationService = new RegistrationService();
		registrationService.registerUser(user);
		requestDispatcher= request.getRequestDispatcher("/Login.jsp");
		requestDispatcher.forward(request, response);
	}

}
