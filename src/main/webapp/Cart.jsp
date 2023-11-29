<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String amount =  request.getParameter("amount");
String brand_name = request.getParameter("brandname");
String prod_name = request.getParameter("prod");
String img = request.getParameter("img");

String price=amount;
String brand=brand_name;
String product=prod_name;
String image=img;


if(amount!=null){
	
	session.setAttribute("price",amount);
	session.setAttribute("brand",brand_name);
	session.setAttribute("product",prod_name);
	session.setAttribute("image",img);



	 price=(String)session.getAttribute("price"); 
	 brand=(String)session.getAttribute("brand");
	 product=(String)session.getAttribute("product");
	image=(String)session.getAttribute("image");
	
}
 
response.sendRedirect("Cart1.jsp");

%>



