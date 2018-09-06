package com.carpool.CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carpool.DAO.Addride;
import com.carpool.MODEL.AddrideModel;


@WebServlet("/AddrideServlet")
public class AddrideServlet extends HttpServlet {

       AddrideModel ad;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		String FromLoc = req.getParameter("from");
		String ToLoc = req.getParameter("to");
		String Date= req.getParameter("date");
		String seats = req.getParameter("seats");
		
		ad = new AddrideModel();
		ad.setFromLoc(FromLoc);
		ad.setToLoc(ToLoc);
		ad.setDate(Date);
		ad.setSeats(seats);
		Addride adride = new Addride();
		
		try
		{
			adride.addRide(ad);
			res.sendRedirect("index.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
