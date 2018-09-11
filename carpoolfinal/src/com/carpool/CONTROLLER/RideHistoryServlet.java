package com.carpool.CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carpool.DAO.RideHistory;
import com.carpool.MODEL.AddrideModel;

/**
 * Servlet implementation class RideHistoryServlet
 */
@WebServlet("/RideHistoryServlet")
public class RideHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fromLoc = request.getParameter("from");
		String toLoc = request.getParameter("to");
		String date = request.getParameter("date");
		String seats = request.getParameter("seats");
		
		AddrideModel ad = new AddrideModel();
		ad.setDate(date);
		ad.setFromLoc(fromLoc);
		ad.setSeats(seats);
		ad.setToLoc(toLoc);
		
		RideHistory rd = new RideHistory();
		String output = rd.ridehistory(ad);
		
		request.setAttribute("From",rd.fromLoc);
		request.setAttribute("To",rd.toLoc);
		request.setAttribute("date",rd.date1);
		request.setAttribute("seats",rd.seats1);
		
		request.getRequestDispatcher("rides.jsp").forward(request,response);
	}

}
