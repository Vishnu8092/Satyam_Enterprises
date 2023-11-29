<%@page import="com.SatyamEnterprises.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
   
    int sId = Integer.parseInt(request.getParameter("id"));
    int status = ProductDao.deleteproductById(sId);
    
    if(status >0)
    response.sendRedirect("ProductList.jsp");
    else
    	out.println("Delete failed");
    
    
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