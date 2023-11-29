<%@page import="com.SatyamEnterprises.dao.LoginDao"%>
<%@page import="com.SatyamEnterprises.model.LoginModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    String password = request.getParameter("Pass");
    String cpassword = request.getParameter("CPass");
     LoginModel lm = new LoginModel();
     int id = (int)session.getAttribute("id");
     if(password.equals(cpassword)){
    	 LoginModel ls = new LoginModel();
    	 ls.setAdminId(id);
    	 ls.setCPass(cpassword);
    	int i =  LoginDao.updatePassword(ls);
    	out.print(i);
    	if(i>0){
    		response.sendRedirect("updatepass.jsp");
    	}
       
     }else{
    	 response.sendRedirect("Forgot.jsp");
     }
     
    %>
    
   
  
    
    
    
      
    
