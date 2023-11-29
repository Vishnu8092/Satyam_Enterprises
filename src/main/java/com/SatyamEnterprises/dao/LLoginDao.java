package com.SatyamEnterprises.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import com.SatyamEnterprises.model.LLoginModel;
//import com.SatyamEnterprises.model.LoginModel;
import com.SatyamEnterprises.model.RegisterModel;




/*Connection*/

public class LLoginDao {
	public static Connection getConnection() 
	{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/satyamenterprises?characterEncoding=latin1","root","root");
		}catch (Exception e)
		{
		System.out.println("Connection:"+e.getLocalizedMessage());
		}
		return conn;
	}
	
/*Save data*/
	
	public static int Login(RegisterModel r) 
	{
		int i = 0;
		Connection con = getConnection();
		
		try 
		{
			java.sql.PreparedStatement ps = con.prepareStatement("insert into Register (FirstName,LastName,Email,Mobile,State,City,Address,CreatePassword,ConfirmPassword) Values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, r.getFname());
			ps.setString(2, r.getLname());
			ps.setString(3, r.getEmail());
			ps.setString(4, r.getMobile());
			ps.setString(5, r.getState());
			ps.setString(6, r.getCity());
			ps.setString(7, r.getAddress());
			ps.setString(8, r.getCreatePassword());
			ps.setString(9, r.getConfirmPassword());
			
		
			
			i= ps.executeUpdate();
		}catch(Exception e) 
		{
			System.out.println(e.getLocalizedMessage());
		}
		return i;
	}
	

	
	
/*User Name check*/
	
	public static RegisterModel getUserDetails(RegisterModel r) {
		RegisterModel rm = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps  =  con.prepareStatement("select * from Register where Email = ? and ConfirmPassword = ?");
			ps.setString(1, r.getEmail());
			ps.setString(2, r.getConfirmPassword());
			java.sql.ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				 rm = new RegisterModel();
				rm.setEmail(rs.getString("Email"));
				rm.setConfirmPassword(rs.getString("ConfirmPassword"));
				rm.setRegisterId(rs.getInt("RegisterId"));
				rm.setFname(rs.getString("FirstName"));
				rm.setLname(rs.getString("LastName"));
				rm.setMobile(rs.getString("Mobile"));
				rm.setState(rs.getString("State"));
				rm.setCity(rs.getString("City"));
				rm.setAddress(rs.getString("Address"));
				rm.setCreatePassword(rs.getString("CreatePassword"));
			}
		}
		catch (Exception e) {
		   System.out.println(e);
		}
		return rm;
		
	}
	
/*Password check*/
	
	public static RegisterModel getUserPass(RegisterModel r) {
		RegisterModel rm = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from Register where ConfirmPassword=?");
			ps.setString(1,r.getEmail());
			ps.setString(2,r.getConfirmPassword());
			ResultSet rs = ps.executeQuery(); 
			if(rs.next()) {
				rm = new RegisterModel();
				rm.setEmail(rs.getString("Email"));
				rm.setConfirmPassword(rs.getString("ConfirmPassword"));
			}
		}
			catch(Exception e) {
				System.out.println(e);
				
			}
		return rm;
		
	}
	
	/*Password Update*/
	public static int updatePassword(RegisterModel r)
	{
		int i=0;
		Connection con = getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("update Register set ConfirmPassword=? where RegisterId=? ");
			ps.setString(1, r.getConfirmPassword());
			ps.setInt(2, r.getRegisterId());
			
			i= ps.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("Submit Error" + e.getLocalizedMessage());
			
		}
		return i ;
	}
	
	
	
	
	
	
}
	

