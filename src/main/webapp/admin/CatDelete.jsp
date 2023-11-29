<%@page import="com.SatyamEnterprises.dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    int sId = Integer.parseInt(request.getParameter("id"));
    int status = CategoryDao.deletecategoryById(sId);
    
    if(status >0)
    response.sendRedirect("catlist.jsp");
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