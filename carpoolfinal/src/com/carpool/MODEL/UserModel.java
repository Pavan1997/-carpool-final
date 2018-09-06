package com.carpool.MODEL;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserModel implements Serializable 
{

	private String firstname;
	private String lastname;
	private String emailId;
	private String password;
	private String gender;
	private long mobileno;
	
	
	/*public String getUserType() {
		return userType;
	}*/
	private UserType userType;
	/*public void setUserType(String userType) {
		this.userType = userType;
	}*/
	public String getFirstname() {
		return firstname;
	}
	public UserType getUserType() {
		return userType;
	}
	public void setUserType(UserType userType) {
		this.userType = userType;
	}
	public void setFirstname(String firstName) {
		firstname = firstName;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastName(String lastName) {
		lastname = lastName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailID(String emailID) {
		emailId = emailID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getMobileno() {
		return mobileno;
	}
	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}
	
	
	
}
