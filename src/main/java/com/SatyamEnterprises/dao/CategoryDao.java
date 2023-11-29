package com.SatyamEnterprises.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.SatyamEnterprises.model.CategoryModel;
import com.mysql.jdbc.ResultSet;



public class CategoryDao {
	public static Connection getConnection() 
	{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/satyamenterprises?characterEncoding=latin1","root","root");
		}
		catch (Exception e)
		{
		System.out.println("Connection:"+e.getLocalizedMessage());
		}
		return conn;
	}




public static int SaveCategory(CategoryModel c)
{
     int i = 0;
	Connection con = getConnection();

	try 
	{
		PreparedStatement ps = con.prepareStatement("insert into category(Name) Values(?)");
		ps.setString(1,c.getName());
		
		
		i = ps.executeUpdate();
		
		
	}catch(Exception e) {
		System.out.println("Submit Error :" +e.getLocalizedMessage());
		
	}
	return i;
}


/*Listing*/

public static List<CategoryModel> Getcatlist()
{
	List<CategoryModel> slist = new ArrayList<>();
try {
	Connection con= getConnection();
	PreparedStatement ps = con.prepareStatement("select * from category");
	java.sql.ResultSet rs =	ps.executeQuery();
while(rs.next())
{
	CategoryModel cm = new CategoryModel();
	cm.setName(rs.getString("Name"));
	cm.setCategoryID(rs.getInt("categoryID"));
	
	slist.add(cm);
}
}catch(Exception e)
{
	System.out.println(e.getLocalizedMessage());
}
	return slist;
}



/*Category edit*/
public static CategoryModel GetcategoryById (int id)
{
CategoryModel cm = null;
try {
	Connection con = getConnection();
	PreparedStatement ps = con.prepareStatement("select * from category where CategoryID=?");
	ps.setInt(1, id);
	java.sql.ResultSet rs = ps.executeQuery();
	
	if (rs.next())
	{
		cm = new CategoryModel();
		cm.setName(rs.getString("Name"));
		cm.setCategoryID(rs.getInt("CategoryID"));
		
	}
	}
	catch (Exception ex){
		System.out.println(ex.getLocalizedMessage());
	}
	return cm;
}


/* Category Delete*/
public static int deletecategoryById(int id)
{
int status =0;
try {
	
	Connection con = getConnection();
	PreparedStatement ps = con.prepareStatement("delete from category where CategoryID=?");
	ps.setInt(1,id);
	status = ps.executeUpdate();
	
}
catch(Exception ex) {
	System.out.println(ex.getLocalizedMessage());
	
}
return status;
}


/*Category Update*/
public static int updateCategory(CategoryModel r)
{
	int i=0;
	Connection con = getConnection();
	try {
		PreparedStatement ps = con.prepareStatement("update Category set Name=? where CategoryID=? ");
		ps.setString(1, r.getName());
		ps.setInt(2, r.getCategoryID());
		
		i= ps.executeUpdate();
	}
	catch (Exception e) {
		System.out.println("Submit Error" + e.getLocalizedMessage());
		
	}
	return i ;
}



}