package com.carpool.DBCONFIG;


import java.sql.Connection;
import java.sql.DriverManager;




public class DatabaseConfig implements DBConnection
{

	public Connection createConnection() 
	{
		Connection con=null;
		try
		{
			con = DriverManager.getConnection("jdbc:mysql://localhost/carpooldb","root","");
		}
		catch(Exception e)
		{
		}
		return con;
	}
}