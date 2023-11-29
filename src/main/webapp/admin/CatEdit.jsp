<%@page import="com.SatyamEnterprises.dao.CategoryDao"%>
<%@page import="com.SatyamEnterprises.model.CategoryModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include><br><br><br><br><br>
<%
int sId = Integer.parseInt(request.getParameter("id"));
CategoryModel cm = CategoryDao.GetcategoryById(sId);
%>

<section id="form">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			
				<div class="container" style="background-color:#e9e9e4 ;box-shadow: 0 0 6px 0; padding:30px 40px;border-radius: 10px">

				<center>
              <form action="CatUpdate.jsp" method="post"><br>
				<h4 style="margin-left:120px;color:#233d9c;font-size:30px;"><b>Edit Categories</b></h4>
				
				<input type="hidden" name="txtId" value="<%= cm.getCategoryID()%>"/>
				
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Category Name<sup style="color:red">*</sup></b></label>            
		              <input type="text" required class="form-control" placeholder="Category Name" name="Name" value="<%=cm.getName()%>">
		            </div>
		            
		            <br>
		            <br>
		            <div class="row">
                     <div class="col-md-6" style="display:flex; justify-content:center">
		            <button type="Submit" class="btn btn-success" style="font-size:20px;color:#fff;">Update</button>
		            </div>
		             
		            </div>
                  </form>
                  </center>
                  </div>
			</div>		
			<div class="col-md-2"></div>
		</div>
	</div>
</section>
                  
                  	
<jsp:include page="footer.jsp"></jsp:include>