package com.carpool.CONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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
		
	}

}
