package com.carpool.CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;

import com.carpool.DAO.Addride;
import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.AddrideModel;
import com.carpool.MODEL.LoginModel;
import com.mysql.cj.Session;


@WebServlet("/AddrideServlet")
public class AddrideServlet extends HttpServlet {

       AddrideModel ad;
      
       Connection con=null;
       DatabaseConfig dbconnect = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		 
		

		String FromLoc = request.getParameter("from");
		String ToLoc = request.getParameter("to");
		String Date= request.getParameter("date");
		String seats = request.getParameter("seats");
		HttpSession session = request.getSession(false);
		String eemail = (String)session.getAttribute("EmailID");
		ad = new AddrideModel();
		ad.setFromLoc(FromLoc);
		ad.setToLoc(ToLoc);
		ad.setDate(Date);
		ad.setSeats(seats);
		ad.setEmail(eemail);
		System.out.println(eemail);
		Addride adride = new Addride();
		
		try
		{
			adride.addRide(ad);
			//dbconnect = new DatabaseConfig();
			//con = dbconnect.createConnection();
			
			
			
			//String insertQuery= "update rides set email= '"+eemail+"' where FromLoc='"+FromLoc+"'";
			//PreparedStatement psmt= con.prepareStatement(insertQuery);
			
			
			//psmt.executeUpdate();
			//psmt.close();
			//con.close();
			response.sendRedirect("rides.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
