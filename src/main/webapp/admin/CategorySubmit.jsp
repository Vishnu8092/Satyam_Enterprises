<%@page import="com.SatyamEnterprises.dao.CategoryDao"%>
<%@page import="com.SatyamEnterprises.model.CategoryModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    String name = request.getParameter("Name");
    
    
    CategoryModel c = new CategoryModel();
    c.setName(name);
   
    
    int i = CategoryDao.SaveCategory(c);
    if(i > 0)
    {
    	response.sendRedirect("Cat.jsp");
    }
    else{
    	out.println("Submit Error!!");
    }
     
    %>
    
    
    
    
    
    
    

