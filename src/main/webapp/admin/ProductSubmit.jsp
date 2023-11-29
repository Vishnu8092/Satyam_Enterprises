<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.SatyamEnterprises.dao.ProductDao"%>
<%@page import="com.SatyamEnterprises.model.ProductModel"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
     
     MultipartRequest s = new MultipartRequest(request,"c:/img");
     String CatName = request.getParameter("Catname");
     String ProdName = request.getParameter("Prodname");
     String MRP = request.getParameter("mrp");
     String CostPrice = request.getParameter("cost");
     String SellingPrice = request.getParameter("selling");
     String Image = request.getParameter("image"); 
  
    
    ProductModel p = new ProductModel();
    p.setCatName(CatName);
    p.setProdName(ProdName);
    p.setMRP(MRP);
    p.setCostPrice(CostPrice);
    p.setSellingPrice(SellingPrice);
    p.setImage(Image);
    
    int i = ProductDao.SaveProduct(p);
    if(i > 0)
    {
    	response.sendRedirect("Prod.jsp");
    }
    else{
    	out.println("Submit Error!!");
    }  
     
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>