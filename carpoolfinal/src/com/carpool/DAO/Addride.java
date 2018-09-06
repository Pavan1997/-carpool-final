package com.carpool.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.AddrideModel;

public class Addride {
	
Connection con=null;
	
	DatabaseConfig dbconnect = null;
	
	public void addRide(AddrideModel ad) throws SQLException
	{
		dbconnect = new DatabaseConfig();
		con = dbconnect.createConnection();
		String insertQuery= "insert into rides(FromLoc, ToLoc, date, numseats) values(?,?,?,?)";
		PreparedStatement psmt= con.prepareStatement(insertQuery);
		psmt.setString(1, ad.getFromLoc());
		psmt.setString(2, ad.getToLoc());
		psmt.setString(3, ad.getDate());
		psmt.setString(4, ad.getSeats());
		
		psmt.executeUpdate();
		psmt.close();
		con.close();
	}

}