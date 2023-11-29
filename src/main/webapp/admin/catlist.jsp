<%@page import="com.SatyamEnterprises.model.CategoryModel"%>
<%@page import="com.SatyamEnterprises.dao.CategoryDao"%>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <jsp:include page="header.jsp"></jsp:include><br><br><br>
    
    <section class="cat" style="font-size:20px;">
    <center>
    <h1>Category List's</h1>
    
    <%
   List<CategoryModel> list = CategoryDao.Getcatlist();
    %>
    
    
    
        <table border="2" id="table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <%
                 int i =0;
            	for(CategoryModel c : list)
            	{ i++;
            %>
                    <tr>
                        <td><%=i %></td>
                        <td><%=c.getName() %></td>
                        
                        <td>
                        <a href="CatEdit.jsp?id=<%=c.getCategoryID()%>" class="btn btn-success">Edit</a>
                        <a href="CatDelete.jsp?id=<%=c.getCategoryID()%>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                    <%
                    }
                    %>
            </tbody>
        </table><br><br>
         			<div class="col-md-6" style="display:flex; justify-content:center">
		            <a href="Categori.jsp"><button type="button" class="btn btn-success" style="text-decoration:none;font-size:20px;">Back To Main Page</button></a>
		            </div>
    </section>
    </center>
    
        


    <jsp:include page="footer.jsp"></jsp:include>