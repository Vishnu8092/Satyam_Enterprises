<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:include page="Header.jsp"></jsp:include>
<%


String FName=(String)session.getAttribute("FirstName"); 
String LName=(String)session.getAttribute("LastName");
String email=(String)session.getAttribute("Email");
String mobile=(String)session.getAttribute("Mobile");
String state=(String)session.getAttribute("State");
String city=(String)session.getAttribute("City");
String address=(String)session.getAttribute("Address");


 
String fname = FName;
String lname=LName;
String mail=email;
String phone=mobile;
String State=state;
String City=city;
String Address=address;




if(FName!=null){
	
	session.setAttribute("fname",FName);
	session.setAttribute("lname",LName);
	session.setAttribute("mail",email);
	session.setAttribute("phone",mobile);
	session.setAttribute("State",state);
	session.setAttribute("City",city);
	session.setAttribute("Address",address);



	fname=(String)session.getAttribute("fname"); 
	lname=(String)session.getAttribute("lname");
	mail=(String)session.getAttribute("mail");
	phone=(String)session.getAttribute("phone");
	State=(String)session.getAttribute("State");
	City=(String)session.getAttribute("City");
	Address=(String)session.getAttribute("Address");
	
} 


%>
    
    
<section id="form">
    <div class="container">
        <div class="row">
            
            <div class="col-md-8">

                <div class="container" style="background-color:#e9e9e4 ;box-shadow: 0 0 6px 0; padding:30px 40px;border-radius: 10px">
                    <form>
                        <h4 style="color:#233d9c;">Profile Details</h4>

                        <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br>
                            <label for="" class="lal"><b> Name : <%= fname%> <%= lname%></b></label>

                        </div>

                        <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br>
                            <label for="" class="lal"><b>Email : <%= mail%></b></label>

                        </div>

                        <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br>
                            <label for="" class="lal"><b>Mobile No : <%= phone%></b></label>

                        </div>

                        <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br>
                            <label for="" class="lal"><b>Address : <%= Address%></b></label>

                        </div>

                        <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br>
                            <label for="" class="lal"><b>State : <%= State%></b></label>

                        </div>

                        <div class="col-md-12" style="color:#233d9c;font-size:25px;"><br>
                            <label for="" class="lal"><b>City : <%= City%></b></label>

                        </div>
                        
                        
                      

                    </form>
                </div>
            </div>
           
        </div>
    </div>
</section>



<jsp:include page="Footer.jsp"></jsp:include> 