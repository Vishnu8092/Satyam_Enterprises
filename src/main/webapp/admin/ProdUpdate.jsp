<%@page import="com.SatyamEnterprises.dao.ProductDao"%>
<%@page import="com.SatyamEnterprises.model.ProductModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
    String CatName = request.getParameter("Catname");
    String ProdName = request.getParameter("Prodname");
    String MRP = request.getParameter("mrp");
    String CostPrice = request.getParameter("cost");
    String SellingPrice = request.getParameter("selling");
    String Image = request.getParameter("Image");
    
    
   int sid = Integer.parseInt(request.getParameter("txtId"));
 
  ProductModel pm = new ProductModel();
    pm.setCatName(CatName);
    pm.setProdName(ProdName);
    pm.setMRP(MRP);
    pm.setCostPrice(CostPrice);
    pm.setSellingPrice(SellingPrice);
    pm.setImage(Image);
    
    pm.setProductID(sid);
    
    int i=ProductDao.updateProduct(pm);
    if(i>0)
    	response.sendRedirect("ProductList.jsp");
    else
    	out.println("Can not be Submit"); 
    
    %>
    
    
    
