package com.carpool.CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carpool.DAO.AddVehicle;
import com.carpool.MODEL.Vehicle;
import com.carpool.MODEL.VehicleType;

/**
 * Servlet implementation class VehicleServlet
 */
@WebServlet("/VehicleServlet")
public class VehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  VehicleType vt;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String Vehicleid = request.getParameter("VehicleId");
		String Vehicletype = request.getParameter("VehicleType");
		String Vehiclenumber = request.getParameter("VehicleNumber");
		String Numberofseats=request.getParameter("NumberOfSeats");
		String priceperkm= request.getParameter("PricePerKm");
		System.out.println(Vehicleid);
		Vehicle v = new Vehicle();
		vt=VehicleType.valueOf(Vehicletype);
		v.setNoOfSeating(Numberofseats);
		v.setPricePerKm(priceperkm);
		v.setVehicleId(Vehicleid);
		v.setVehicleType(vt);
		v.setVehicleNumber(Vehiclenumber);
		AddVehicle adv = new AddVehicle();
	
	try
	{
		adv.addVehicle(v);
		response.sendRedirect("add-vehicle.jsp");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
}
