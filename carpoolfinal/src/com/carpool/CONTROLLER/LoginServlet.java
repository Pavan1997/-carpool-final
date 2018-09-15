package com.carpool.CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carpool.MODEL.AddrideModel;
import com.carpool.MODEL.LoginModel;
import com.carpool.DAO.AuthenticateUser;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("Email");
		String password = request.getParameter("password");
		//request.setAttribute("eemail",email);
		RequestDispatcher rd = request.getRequestDispatcher("AddrideServlet");
		
		LoginModel lm = new LoginModel();
		 lm.setEmailid(email);
		 lm.setPassword(password);
		 AuthenticateUser auser = new AuthenticateUser();
		 String userValidate = auser.authenticateUser(lm);
		
		 
		 System.err.println(userValidate);
		 
		 if(userValidate.equalsIgnoreCase("success"))
		 {
			 HttpSession httpSession=request.getSession();
			 
			 httpSession.setAttribute("EmailID", email);

			 response.sendRedirect("home.jsp");
			 return;
			 
		 }
		 else
		 {
			 request.setAttribute("ErrorMsg","Please enter valid details");
			 request.getRequestDispatcher("/index.jsp").include(request, response);
		 }
		 System.out.println(email);
		 rd.forward(request,response);
	}
	
	 
	}