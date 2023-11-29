package com.SatyamEnterprises.model;

public class LoginModel {
private String Uname,CPass;
int adminId;

public String getUname() {
	return Uname;
}

public int getAdminId() {
	return adminId;
}

public void setAdminId(int adminId) {
	this.adminId = adminId;
}

public void setUname(String uname) {
	Uname = uname;
}

public String getCPass() {
	return CPass;
}

public void setCPass(String cPass) {
	CPass = cPass;
}



}
