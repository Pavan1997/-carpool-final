package com.carpool.CONTROLLER;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carpool.DAO.UserDaoImpl;
import com.carpool.DAO.UserDaoInterface;
import com.carpool.MODEL.UserModel;

@SuppressWarnings("serial")
@WebServlet("/profilepage")
public class UserDisplayController extends HttpServlet
{
	
	UserDaoInterface userdao;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		//String action = req.getContextPath();
		
		try {
			showDisplayForm(req, res);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public void showDisplayForm(HttpServletRequest req, HttpServletResponse res) throws SQLException , ServletException , IOException 
	{
		
		   userdao=new UserDaoImpl();
		
			if(req.getSession().getAttribute("EmailID")!=null)
			{
			UserModel displayuser = userdao.getEmailID(req.getSession().getAttribute("EmailID").toString());
			RequestDispatcher rd = req.getRequestDispatcher("UserProfile.jsp");
			req.setAttribute("displayuser", displayuser);
			rd.forward(req, res);
			}
			else
			{
				req.getRequestDispatcher("Login.jsp").forward(req, res);
			}
		
		
		
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException , IOException
	{
		doGet(req, res);
	}

}
