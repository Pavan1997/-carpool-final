package com.carpool.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.carpool.CONTROLLER.LoginServlet;
import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.AddrideModel;
import com.carpool.MODEL.LoginModel;
import com.carpool.MODEL.UserModel;

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
		//psmt.setString(5,lm.getEmailid());		 
		 
		
		
		psmt.executeUpdate();
		psmt.close();
		con.close();
	}

}