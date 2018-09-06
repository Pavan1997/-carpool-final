package com.carpool.CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carpool.DAO.UserDaoImpl;
import com.carpool.DAO.UserDaoInterface;
import com.carpool.MODEL.UserModel;
import com.carpool.MODEL.UserType;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet 
{
	
	UserModel um;
	UserType ut;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServerException , IOException
	{
		
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String gender= req.getParameter("gender");
		String email= req.getParameter("email");
		String password = req.getParameter("password");
		String phonenumber = req.getParameter("phonenumber");
		String userType=  	req.getParameter("UserType");
		um = new UserModel();
		um.setFirstname(firstname);
		um.setLastName(lastname);
		um.setGender(gender);
		um.setEmailID(email);
		um.setPassword(password);
		long mobileno = Long.parseLong(phonenumber);
				
		um.setMobileno(mobileno);
		ut = UserType.valueOf(userType);
		um.setUserType(ut);
		UserDaoInterface daoInterface=new UserDaoImpl();
		
		try {
			daoInterface.addUser(um);
			res.sendRedirect("Login.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

}
