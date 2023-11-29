package com.SatyamEnterprises.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.SatyamEnterprises.model.ContactModel;
import com.SatyamEnterprises.model.RegisterModel;


public class ContactDao {
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
	
	
	
	
	public static int SaveContact(ContactModel c)
	{
		int i = 0;
		Connection con = getConnection();
	
		try 
		{
			PreparedStatement ps = con.prepareStatement("insert into contact(Name,Email,Mobile,Message) Values(?,?,?,?)");
			ps.setString(1,c.getName());
			ps.setString(2,c.getEmail());
			ps.setString(3,c.getMobile());
			ps.setString(4,c.getMessage());
			
			i = ps.executeUpdate();
			
			
		}catch(Exception e) {
			System.out.println("Submit Error :" +e.getLocalizedMessage());
			
		}
		return i;
	}
	

}