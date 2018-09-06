package com.carpool.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.LoginModel;

public class AuthenticateUser {
	
	public String authenticateUser(LoginModel wamp)
	{
		String emailid = wamp.getEmailid();
		String password = wamp.getPassword();
		
		DatabaseConfig db = new DatabaseConfig();
		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		
		String email="";
		String pass="";
		
		try
		{
			con = db.createConnection();
			smt = con.createStatement();
			rs = smt.executeQuery("select emailid , password  from registrable where emailid ='"+emailid+"' and password ='"+password+"'");
			
			while(rs.next())
			{
				email= rs.getString("emailid");
				pass= rs.getString("password");
				
				if((emailid.equals(email)) && (password.equals(pass)))
				{
					return "Success";
					
				}
					
			}
				
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		
		return "Invalid user Credintials";
	}

}
