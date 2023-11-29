package com.SatyamEnterprises.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.SatyamEnterprises.model.ProductModel;


public class ProductDao {
	
/*Connection*/
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
		
/*Save data*/
		
		public static int SaveProduct(ProductModel p)
		{
		     int i = 0;
			Connection con = getConnection();

			try 
			{
				PreparedStatement ps = con.prepareStatement("insert into product(CatName,ProdName,MRP,CostPrice,SellingPrice,Image) Values(?,?,?,?,?,?)");
				ps.setString(1,p.getCatName());
				ps.setString(2,p.getProdName());
				ps.setString(3,p.getMRP());
				ps.setString(4,p.getCostPrice());
				ps.setString(5,p.getSellingPrice());
				 ps.setString(6,p.getImage());
				
				i = ps.executeUpdate();
				
				
			}catch(Exception e) {
				System.out.println("Submit Error :" +e.getLocalizedMessage());
				
			}
			return i;
		}
		
/*Listing*/
		
		public static List<ProductModel> Getprodlist()
		{
			List<ProductModel> slist = new ArrayList<>();
		try {
			Connection con= getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product");
			java.sql.ResultSet rs =	ps.executeQuery();
		while(rs.next())
		{
			ProductModel pm = new ProductModel();
			pm.setCatName(rs.getString("CatName"));
			pm.setProdName(rs.getString("ProdName"));
			pm.setMRP(rs.getString("MRP"));
			pm.setCostPrice(rs.getString("CostPrice"));
			pm.setSellingPrice(rs.getString("SellingPrice"));
			pm.setProductID(rs.getInt("productID"));
		   pm.setImage(rs.getString("Image")); 
			
			slist.add(pm);
		}
		}catch(Exception e)
		{
			System.out.println(e.getLocalizedMessage());
		}
			return slist;
		}
		
		
/*Product edit*/
		public static ProductModel GetproductById (int id)
		{
		ProductModel pm = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from product where productID=?");
			ps.setInt(1, id);
			java.sql.ResultSet rs = ps.executeQuery();
			
			if (rs.next())
			{
				pm = new ProductModel();
				pm.setCatName(rs.getString("CatName"));
				pm.setProdName(rs.getString("ProdName"));
				pm.setMRP(rs.getString("MRP"));
				pm.setCostPrice(rs.getString("CostPrice"));
				pm.setSellingPrice(rs.getString("SellingPrice"));
				pm.setImage(rs.getString("Image"));
				
				pm.setProductID(rs.getInt("productID"));
			}
		}
			catch (Exception ex){
				System.out.println(ex.getLocalizedMessage());
			}
			return pm;
		}
		
/*Product Update*/
		
		public static int updateProduct(ProductModel r)
		{
			int i=0;
			Connection con = getConnection();
			try {
				PreparedStatement ps = con.prepareStatement("update product set CatName=?,ProdName=?,MRP=?,CostPrice=?,SellingPrice=?,Image=? where productID=? ");
				ps.setString(1, r.getCatName());
				ps.setString(2, r.getProdName());
				ps.setString(3, r.getMRP());
				ps.setString(4, r.getCostPrice());
				ps.setString(5, r.getSellingPrice());
				ps.setString(6, r.getImage());
				ps.setInt(7, r.getProductID());
				
				i= ps.executeUpdate();
			}
			catch (Exception e) {
				System.out.println("Submit Error" + e.getLocalizedMessage());
				
			}
			return i ;
		}

/*Product Delete*/
		public static int deleteproductById(int id)
		{
		int status =0;
		try {
			
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from product where productID=?");
			ps.setInt(1,id);
			status = ps.executeUpdate();
			
		}
		catch(Exception ex) {
			System.out.println(ex.getLocalizedMessage());
			
		}
		return status;
		}
		
		
				
}
