package com.carpool.CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carpool.DAO.UserDaoImpl;
import com.carpool.DAO.UserDaoInterface;
import com.carpool.MODEL.UserModel;

@SuppressWarnings("serial")
@WebServlet("/updateuser")
public class UserUpdateController extends HttpServlet 
{
	
	String fn,ln,gender, cellno;
	
	UserModel um;
	UserDaoInterface userdao;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		PrintWriter pw = res.getWriter();
		
		updateUserData(req, res);
		
			
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException , IOException
	{
		doPost(req,res);
		
	}
	
	String mail;
	public void updateUserData(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException
	{
		
		fn = req.getParameter("firstname");
		ln = req.getParameter("lastname");
		gender = req.getParameter("gender");
		cellno = req.getParameter("mobileno");
		long  cellno1 = Long.parseLong(cellno);
		mail = req.getParameter("mail");
		mail = req.getParameter("");
		um = new UserModel();
		um.setFirstname(fn);
		um.setLastName(ln);
		um.setGender(gender);
		um.setMobileno(cellno1);
		um.setEmailID(mail);
		userdao = new UserDaoImpl();
		try {
			userdao.updateUser(um);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		res.sendRedirect("UserProfile.jsp");
		
	}
	
	
	
}
