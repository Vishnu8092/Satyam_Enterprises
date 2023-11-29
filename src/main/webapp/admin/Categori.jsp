<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include><br><br><br><br><br>

<section id="Cate">
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
			
				<div class="container" style="box-shadow: 0 0 6px 0; padding:30px 40px;border-radius: 10px">
				<form action="CategorySubmit.jsp" method="post"><br>
				<h4 style="margin-left:120px;color:#233d9c;font-size:30px;"><b>Add Categories</b></h4>
				
		            <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br> 
		            <label for="" class="lal"><b>Category Name<sup style="color:red">*</sup></b></label>            
		              <input type="text" required class="form-control" placeholder="Category Name" name="Name">
		            </div>
		            <br>
		            <br>
		            
		            <div class="row">
                     <div class="col-md-6" style="display:flex; justify-content:center">
		            <button type="Submit" class="btn success" style="font-size:20px;color:#fff;">Save</button>
		            </div>
		            
		             <div class="col-md-6" style="display:flex; justify-content:center">
		            <a href="catlist.jsp"><button type="button" class="btn btn-success" style="text-decoration:none;font-size:20px;"> Show List</button></a>
		            </div>
		            </div>
		            
                  </form>		
				</div>
			</div>		
			<div class="col-md-3"></div>
		</div>
	</div>
</section>



<jsp:include page="footer.jsp"></jsp:include>