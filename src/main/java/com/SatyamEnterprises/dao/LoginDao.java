package com.SatyamEnterprises.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.SatyamEnterprises.model.CategoryModel;
import com.SatyamEnterprises.model.LoginModel;

/*Connection*/

public class LoginDao {
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
	
	public static int LoginAdmin(LoginModel m) 
	{
		int status = 0;
		Connection con = getConnection();
		
		try 
		{
			java.sql.PreparedStatement ps = con.prepareStatement("select * from admin where username = ? and password = ?");
			ps.setString(1, m.getUname());
			ps.setString(2, m.getCPass());
			java.sql.ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				status = 1;
			}
			else 
			{
				status = 0;
			}
		}catch(Exception e) 
		{
			System.out.println(e.getLocalizedMessage());
		}
		return status;
	}
	
	/*User Name check*/
	
	public static LoginModel getUserDetails(LoginModel u) {
		LoginModel lm = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps  =  con.prepareStatement("select * from admin where username =?");
			ps.setString(1, u.getUname());
			java.sql.ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				 lm = new LoginModel();
				lm.setUname(rs.getString("username"));
				lm.setAdminId(rs.getInt("adminId"));
			}
		}catch (Exception e) {
		   System.out.println(e);
		}
		return lm;
		
	}
	
	
	/*Password check*/
	
	public static LoginModel getUserPass(LoginModel l) {
		LoginModel lm = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from admin where password =?");
			ps.setString(1,lm.getCPass());
			ResultSet rs = ps.executeQuery(); 
			if(rs.next()) {
				lm = new LoginModel();
				lm.setCPass(rs.getString("password"));
			}
		}
			catch(Exception e) {
				System.out.println(e);
				
			}
		return lm;
		
	}
	
	/*Password Update*/
	public static int updatePassword(LoginModel r)
	{
		int i=0;
		Connection con = getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("update admin set password=? where adminId=? ");
			ps.setString(1, r.getCPass());
			ps.setInt(2, r.getAdminId());
			
			i= ps.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("Submit Error" + e.getLocalizedMessage());
			
		}
		return i ;
	}
	
	
} 



