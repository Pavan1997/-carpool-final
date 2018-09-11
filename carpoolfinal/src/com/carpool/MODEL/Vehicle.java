package com.carpool.MODEL;

public class Vehicle {

	private int vehicleId;
	private VehicleType vehicleType;
	private String vehicleNumber;
	private int noOfSeating;
	private float pricePerKm;

	public int getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}

	public VehicleType getvehicleType() {
		return vehicleType;
	}

	public void setvehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

	public int getNoOfSeating() {
		return noOfSeating;
	}

	public void setNoOfSeating(int noOfSeating) {
		this.noOfSeating = noOfSeating;
	}

	public float getPricePerKm() {
		return pricePerKm;
	}

	public void setPricePerKm(float pricePerKm) {
		this.pricePerKm = pricePerKm;
	}

}

