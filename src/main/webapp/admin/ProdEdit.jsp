<%@page import="com.SatyamEnterprises.dao.ProductDao"%>
<%@page import="com.SatyamEnterprises.model.ProductModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include><br><br><br><br><br>

<%
int sId = Integer.parseInt(request.getParameter("id"));

ProductModel pm = ProductDao.GetproductById(sId);

%>

<section id="form">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			
				<div class="container" style="background-color:#e9e9e4 ;box-shadow: 0 0 6px 0; padding:30px 40px;border-radius: 10px">

				
              <form action="ProdUpdate.jsp" method="post"><br>
				<h4 style="margin-left:150px;color:#233d9c;font-size:30px;"><b>Edit Product</b></h4><hr>
				
				<input type="hidden" name="txtId" value="<%= pm.getProductID()%>"/>
				
		           <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Category Name</b></label>            
		              <input type="text" class="form-control" name="Catname" value="<%=pm.getCatName()%>">
		            </div> 
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Product Name</b></label>            
		              <input type="text" class="form-control" name="Prodname" value="<%=pm.getProdName()%>">
		            </div>
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>MRP</b></label>            
		              <input type="text" class="form-control" name="mrp" value="<%=pm.getMRP()%>">
		            </div>
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Cost Price</b></label>            
		              <input type="text" class="form-control" name="cost" value="<%=pm.getCostPrice()%>">
		            </div>
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Selling Price</b></label>            
		              <input type="text" class="form-control" name="selling" value="<%=pm.getSellingPrice()%>">
		            </div>
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Image</b></label>            
		              <input type="file" class="form-control" name="Image" value="<%=pm.getImage()%>">
		            </div>
		            
		            <br>
		            <br>
		            <div class="row">
                     <div class="col-md-12" style="display:flex; justify-content:center">
		            <button type="Submit" class="btn btn-success" style="font-size:20px;color:#fff;">Update</button>
		            </div>
		            </div>
                  </form>
                  
                  </div>
			</div>		
			<div class="col-md-4"></div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>