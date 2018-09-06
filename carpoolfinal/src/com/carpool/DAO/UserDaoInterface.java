package com.carpool.DAO;

import java.sql.SQLException;

import com.carpool.MODEL.UserModel;

public interface UserDaoInterface 
{
	public void addUser(UserModel user) throws SQLException;
	public UserModel getEmailID(String email) throws SQLException;
	public boolean updateUser(UserModel um) throws SQLException;
	

}
