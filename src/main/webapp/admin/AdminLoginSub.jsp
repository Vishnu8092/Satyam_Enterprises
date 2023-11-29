<%@page import="com.SatyamEnterprises.dao.LoginDao"%>
<%@page import="com.SatyamEnterprises.model.LoginModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
    
    String uname = request.getParameter("Uname");
    String pwd = request.getParameter("Pwd");
    
    LoginModel lm = new LoginModel();
    lm.setUname(uname);
    lm.setCPass(pwd );
    
    int i = LoginDao.LoginAdmin(lm);
    if(i > 0)
    {
    	response.sendRedirect("dashboard.jsp");
    }
    else
    {
    	response.sendRedirect("Invlid.jsp");
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