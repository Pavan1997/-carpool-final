package com.carpool.MODEL;

public class Vehicle {

	private String vehicleId;
	private VehicleType vehicleType;
	private String vehicleNumber;
	private String noOfSeating;
	private String pricePerKm;
	public String getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}
	public VehicleType getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}
	public String getVehicleNumber() {
		return vehicleNumber;
	}
	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}
	public String getNoOfSeating() {
		return noOfSeating;
	}
	public void setNoOfSeating(String noOfSeating) {
		this.noOfSeating = noOfSeating;
	}
	public String getPricePerKm() {
		return pricePerKm;
	}
	public void setPricePerKm(String pricePerKm) {
		this.pricePerKm = pricePerKm;
	}
}
	