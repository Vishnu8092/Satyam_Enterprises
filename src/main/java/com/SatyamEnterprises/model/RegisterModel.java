package com.SatyamEnterprises.model;

public class RegisterModel {
	private String Fname,Lname,Email,Mobile,State,City,Address,CreatePassword,ConfirmPassword;
	private int RegisterId;
	public String getFname() {
		return Fname;
	}

	public int getRegisterId() {
		return RegisterId;
	}

	public void setRegisterId(int registerId) {
		RegisterId = registerId;
	}

	public void setFname(String fname) {
		Fname = fname;
	}

	public String getLname() {
		return Lname;
	}

	public void setLname(String lname) {
		Lname = lname;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getMobile() {
		return Mobile;
	}

	public void setMobile(String mobile) {
		Mobile = mobile;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getCreatePassword() {
		return CreatePassword;
	}

	public void setCreatePassword(String createPassword) {
		CreatePassword = createPassword;
	}

	public String getConfirmPassword() {
		return ConfirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		ConfirmPassword = confirmPassword;
	}
	

}
