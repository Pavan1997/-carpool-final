package com.carpool.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.Vehicle;
import com.carpool.MODEL.VehicleType;

public class AddVehicle {
Connection con=null;
	
	DatabaseConfig dbconnect = null;
	
	public void addVehicle(Vehicle v) throws SQLException
	{
		dbconnect = new DatabaseConfig();
		con = dbconnect.createConnection();
		
		String insertQuery= "insert into vehicles(vehicleNumber, vehicleType, vehicleid, noofSeatings, pricePerKm) values(?,?,?,?,?)";
		PreparedStatement psmt= con.prepareStatement(insertQuery);
		
		psmt.setString(1, v.getVehicleNumber());
		
		psmt.setString(3, v.getVehicleId());
		psmt.setString(4, v.getNoOfSeating());
		psmt.setString(5, v.getPricePerKm());
		VehicleType vt = v.getVehicleType();
		String VehicleType = vt.toString();
		psmt.setString(2, VehicleType); 
		psmt.executeUpdate();
		psmt.close();
		con.close();
		 
	}

}
