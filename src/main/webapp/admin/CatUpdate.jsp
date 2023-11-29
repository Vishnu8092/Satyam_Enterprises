<%@page import="com.SatyamEnterprises.dao.CategoryDao"%>
<%@page import="com.SatyamEnterprises.model.CategoryModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
    String name = request.getParameter("Name");
    int sid = Integer.parseInt(request.getParameter("txtId"));
    
    CategoryModel cm = new CategoryModel();
    cm.setName(name);
    cm.setCategoryID(sid);
    
    int i=CategoryDao.updateCategory(cm);
    if(i>0)
    	response.sendRedirect("catlist.jsp");
    else
    	out.println("Can not be Submit");
    
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