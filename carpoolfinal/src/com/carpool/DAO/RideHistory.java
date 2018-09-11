package com.carpool.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.AddrideModel;

public class RideHistory 
{
	public String fromLoc="";
	public String toLoc="";
	public String date1="";
	public String seats1="";
	public String ridehistory(AddrideModel ad)
	{
		String FromLoc = ad.getFromLoc();
		String ToLoc = ad.getToLoc();
		String date = ad.getDate();
		String seats = ad.getSeats();
		
		DatabaseConfig db = new DatabaseConfig();
		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		
		try
		{
			con =db.createConnection();
			smt = con.createStatement();
			rs=smt.executeQuery("select * from rides where FromLoc='"+FromLoc+"' or ToLoc ='"+ToLoc+"'or date='"+date+"' or numseats='"+seats+"'");
			while(rs.next())
			{
				fromLoc=rs.getString("FromLoc");
				toLoc=rs.getString("ToLoc");
				date1=rs.getString("date");
				seats1=rs.getString("numseats");
		
						
					return "success";
					
					
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "No Data Found";
	}
		
}
