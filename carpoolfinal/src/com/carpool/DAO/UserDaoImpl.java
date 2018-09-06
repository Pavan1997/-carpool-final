package com.carpool.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.carpool.DBCONFIG.DatabaseConfig;
import com.carpool.MODEL.UserModel;
import com.carpool.MODEL.UserType;

public class UserDaoImpl implements UserDaoInterface
{
	Connection con=null;
	
	DatabaseConfig dbconnect = null;

	@Override
	public void addUser(UserModel user) throws SQLException {
		
		
		dbconnect = new DatabaseConfig();
		con = dbconnect.createConnection();
		String insertQuery = "insert into  registrable (firstname,lastname,emailid, password , gender, mobileno, usertype ) values (?,?,?,?,?,?,?)";
		PreparedStatement psmt= con.prepareStatement(insertQuery);
		psmt.setString(1, user.getFirstname());
		psmt.setString(2, user.getLastname());
		psmt.setString(3, user.getEmailId());
		psmt.setString(4, user.getPassword());
		psmt.setString(5, user.getGender());
		psmt.setLong(6, user.getMobileno());
		UserType usert = user.getUserType();
		String usertype=usert.toString();
		psmt.setString(7, usertype);
				
		psmt.executeUpdate();
		psmt.close();
		con.close();

	}

	@Override
	public UserModel getEmailID(String email) throws SQLException 
	{
		dbconnect = new DatabaseConfig();
		con = dbconnect.createConnection();
		String Queryr = "select * from REGISTERTABLE where emailid='"+email+"'";
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery(Queryr);
		
		if(rs.next())
		{
			String fn = rs.getString("FIRSTNAME");
			String ln = rs.getString("LASTNAME");
			String mail= rs.getString("EMAILID");
			//String pass = rs.getString("PASSWORD");
			String gender  = rs.getString("gender");
			long  cellno = rs.getLong("mobileno");
			
			UserModel um = new UserModel();
			um.setFirstname(fn);
			um.setLastName(ln);
			um.setEmailID(mail);
			//um.setPassword(pass);
			um.setGender(gender);
			um.setMobileno(cellno);       
			
			return um;
		}
		rs.close();
		smt.close();
		con.close();
		
		return null;
	}

	@Override
	public boolean updateUser(UserModel um) 
	{
		dbconnect = new DatabaseConfig();
		con = dbconnect.createConnection();
		try{
		String email = um.getEmailId();
		String updateQuery = "update REGISTERTABLE set firstname=?, lastname=?, gender=?,mobileno=? where emailid=?";
		PreparedStatement psmt = con.prepareStatement(updateQuery);
		psmt.setString(1, um.getFirstname());
		psmt.setString(2, um.getLastname());
		psmt.setString(3, um.getGender());
		psmt.setLong(4, um.getMobileno());
		psmt.setString(5, email);
		boolean rowUpdated=psmt.executeUpdate() >0;
		System.out.println(rowUpdated);
		psmt.close();
		con.close();
		return rowUpdated;
	}catch(Exception e)
		{
		return false;
		}
		
		
	}

}
