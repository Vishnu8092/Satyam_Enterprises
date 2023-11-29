<%@page import="com.SatyamEnterprises.dao.ProductDao"%>
<%@page import="com.SatyamEnterprises.model.ProductModel"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	 <jsp:include page="header.jsp"></jsp:include><br><br><br>
	 
    <section class="cat" style="font-size:20px;">
    <center>
    <h1>Product List's</h1>
    
    <%
   List<ProductModel> list = ProductDao.Getprodlist();
    %>
    
    
    
        <table border="2" id="table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>CatName</th>
                    <th>ProdName</th>
                    <th>MRP</th>
                    <th>CostPrice</th>
                    <th>SellingPrice</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <%
                 int i =0;
            	for(ProductModel p : list)
            	{ i++;
            %>
                    <tr>
                        <td><%=i %></td>
                        <td><%=p.getCatName() %></td>
                        <td><%=p.getProdName() %></td>
                        <td><%=p.getMRP() %></td>
                        <td><%=p.getCostPrice() %></td>
                        <td><%=p.getSellingPrice() %></td>
                        <td><img alt="" src="../img/ <%=p.getImage() %>" > </td>
                         
                        <td>
                        <a href="ProdEdit.jsp?id=<%= p.getProductID()%>" class="btn btn-success">Edit</a>
                        <a href="ProdDelete.jsp?id=<%= p.getProductID()%>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                    <%
                    }
                    %>
            </tbody>
        </table><br><br>
         			<div class="col-md-6" style="display:flex; justify-content:center">
		            <a href="Product.jsp"><button type="button" class="btn btn-success" style="text-decoration:none;font-size:20px;">Back To Main Page</button></a>
		            </div>
    </section>
    </center>
    <jsp:include page="footer.jsp"></jsp:include>