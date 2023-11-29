<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="Header.jsp"></jsp:include>
<%

String price=(String)session.getAttribute("price"); 
String brand=(String)session.getAttribute("brand");
String product=(String)session.getAttribute("product");
String image=(String)session.getAttribute("image");
%>


<section id="form">
    <div class="carts">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 col-12">
                   <center><h2>My Cart</h2></center> 
                    <br>

                </div>
            </div>
        </div>
    </div>

    <section>

        <div class="das"
            style="background-color:#f0f8ff;margin-right:250px;margin-left:250px;border-radius: 20px;box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-2"><br>
                    <center>
                        <img src="img/Basins/<%= image %>" alt="" style="width:200px;height:200px;"><br><br>
                        <label for="" style="font-size:25px;"><b>RS : </b>
                            <%= price %>
                        </label><br>
						</center>
                    </div>

                    <div class="col-md-8 col-10"><br><br>
                    <center>
                        <label for="" style="margin-right:215px;font-size:25px"><b>Brand Name : </b>
                        <%= brand %>
                        </label><br>
                        <label for="" style="margin-right:180px;font-size:25px"><b>Product Name : </b>
                         <%= product %>
                        </label><br>
                        <div class="row" style="margin-left:60px;">
                            <label for="" style="font-size:25px"><b>Quantity : </b></label>
                            <input type="number" value="1" class="form-control input inpt" name="" style="width:15%;">
                             <input type="hidden"  class="form-control amt" value=" <%= price %>" >
                        </div>
                        <br>
                        <h3 style="margin-right:250px;"> Total RS : <label for="" id="dv" style="font-size:25px"> <%= price %></label></h3><br><br>
						
						<a href="remove.jsp"><button class="btn btn-danger" ><b>Remove</b></button></a>	
						<!-- <input  style="color:red; font-size:20px;" type="submit" name="removeButton" value="Remove"> -->
						
                        <a href="profile.jsp"><button class="btn success" ><b>Next process</b></button></a><br><br>
                        </center>
                    </div>
                    
                </div>
            </div>
        </div>

    </section>


</section>




  
    
     
<jsp:include page="Footer.jsp"></jsp:include>