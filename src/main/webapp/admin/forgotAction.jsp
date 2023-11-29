<%@page import="com.SatyamEnterprises.dao.LoginDao"%>
<%@page import="com.SatyamEnterprises.model.LoginModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
    
    String uname = request.getParameter("Uname");
    LoginModel lm = new LoginModel();
    lm.setUname(uname);
    LoginModel l =LoginDao.getUserDetails(lm);
    if(l!=null){
    	int id = l.getAdminId();
    	String admin = l.getUname();
    	session.setAttribute("id", id);
    	session.setAttribute("username",admin);
    	response.sendRedirect("forgot1.jsp");
    }else{
    	response.sendRedirect("Forgot.jsp");
    }
    
    
   
    
    
    
    %>