<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
   



<footer class="fcolor" style="padding-top:5%; background-color:#222;">
        <div  class="footer container" style="text-decoration: none;">
          <div class="row">
        <div class="col-md-4 col-12">
         <div class="mango">
          <div class="hlo" style="margin-top:-40px;" >
            <a href="index.jsp"><img class="logo" src="img/logo.png" alt="" style="width: 300px; height: 150px;"></a>
            </div>
          <img alt="Developer" src="img/vishnu.jpg" style="margin-left:110px;width:100px;height:100px;border-radius: 50px;">
          <br><br>
          <h4>Developer :<a href="#" style="text-decoration:none;"> Vishnu kumar </a></h4>
          <h4>Contact :<a href="#" style="text-decoration:none;"> 8092409512 </a></h4>
        </div>
      </div>
      
      <div class="col-md-5 col-12 " style="margin-top:-50px;" ><br><br>
        
        	<center><h3> Contact </h3></center>
          <hr>
  			<p style="font-size:23px;"><b>Address : </b><a href="#" style="text-decoration:none;font-size:19px">Beside Mahi Restaurant Shop No.-3 Argora Bypass Road Ranchi.</a></p>	       
            <p style="font-size:23px;"><b>Call Now : </b><a href="tel:8092409512"  style="text-decoration:none;font-size:19px">+91 8092409512</a></p>
            <p style="font-size:23px;"><b>Mail Id : </b><a href="mailto:vishnukumar6023@gmail.com"   style="text-decoration:none;font-size:19px">vishnukumar6023@gmail.com</a></p>
           	<p style="font-size:23px;"><b>Open / Close : </b><a href="#"  style="text-decoration:none;font-size:19px">09:00-20:00 (Mon - Sat) (SUNDAY CLOSE)</a></p>
          
       </div>

      <div class="col-md-3 col-12" style="margin-top:-50px;" ><br><br>
        
         <center><h3> Quick Link </h3></center>
          <hr>
          <p style="font-size:23px;"><a href="index.jsp" style="text-decoration:none;"> Home </a></p>
          <p style="font-size:23px;"><a href="About.jsp" style="text-decoration:none;"> About Us </a></p>
          <p style="font-size:23px;"><a href="Cart1.jsp" style="text-decoration:none;">View Cart</a></p>
          <p style="font-size:23px;"><a href="Contact.jsp" style="text-decoration:none;"> Contact Us </a></p>
          <p style="font-size:23px;"><a href="Login.jsp" style="text-decoration:none;"> Login </a></p>
          <p style="font-size:23px;"><a href="Register.jsp" style="text-decoration:none;"> Sign Up </a></p>
         
         <div class="row">
        <div class="col-md-3 col-3">
          <p><a href="#"><i class="fa-brands fa-facebook" style="font-size: 25px;"></i></a></p>
        </div>
        <div class="col-md-3 col-3">
          <p><a href="#"><i class="fa-brands fa-twitter" style="font-size: 25px;"></i></a></p>
        </div>
        <div class="col-md-3 col-3">
          <p><a href="#"><i class="fa-brands fa-linkedin" style="font-size: 25px;"></i></a></p>
        </div>
        <div class="col-md-3 col-3">
          <p><a href="#"><i class="fa-brands fa-instagram" style="font-size: 25px;"></i></a></p>
        </div>
        </div>
        
      </div>
      
      
      </div>
      </div>
        <hr>
        <div class="col-md-12 col-12">
        <p style="text-align: center;">Copyright © 2023 A Piece Of Cake and Bakery. Designed and Developed by Brightcode</p>
      </div>
      </footer>




	<script src="https://kit.fontawesome.com/92d70a2fd8.js" crossorigin="anonymous"></script>
	<script
  src="https://code.jquery.com/jquery-3.7.0.js"
  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
  crossorigin="anonymous"></script>
   <!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="script.js"></script>
    
     <!--google dropdown-->

    <script>
        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
        
        <!--cart Money Add -->
        
        $(document).ready(function() { 
        	$('body').on("keyup",".inpt",function(){
        		
        	var amount = $(".amt").val();
        	var qty = $(this).val();
        	var total = parseFloat(amount)*parseFloat(qty);
        	$("#dv").html(total);	
        	});	
        });
        
    </script>
</body>

</html>