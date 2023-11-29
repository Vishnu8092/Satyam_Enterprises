<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<head>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sassy+Frass&display=swap" rel="stylesheet">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Bootstrap CSS -->
    
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
    integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    
    
    
    <link rel="stylesheet" href="styles.css">
    <title>Satyam Enterprises</title>
</head>

<body>


 <section class="head">
 <div class="feex">
<nav class="navbar navbar-expand-lg navbar-light sticky-top">
   <a href="index.jsp"><img src="img/logo.png" alt="" style="width: 220px; height: 170px;"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon" style="background-color:#333;"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp" style="color:white;">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="Products.jsp" id="#P" style="color:#fff;">Products</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="About.jsp" style="color:#fff;">About</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="Contact.jsp" style="color:#fff;">Contact</a>
      </li>
    </ul>
    
    
    <div class="navig">
    <div class="container">
    <div class="row">
    <div class="col-md-5">
    <div class="row">
    <div class="col-md-6">
    <a href="Cart1.jsp" style="font-size:25px;color:#fff;text-decoration: none;"><i class="fa-solid fa-cart-arrow-down" style="font-size:25px;"></i><br>Cart</a>
    </div>
    <div class="col-md-6">
    <a href="UserProfile.jsp" style="font-size:25px;color:#fff;text-decoration: none;"><i class="fa-solid fa-user" style="font-size:25px;margin-left:20px;"></i><br>Profile</a>
    </div>
     </div>		           
    </div>
    
    <div class="col-md-7">
    
   

  
    
    
    <div class="nav-item nav-link ">
        <a class=" btn nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false" style="background-color:white; margin-top:5%; color:black; font-size:100%;">
          Sign In
        </a>
        <div class="dropdown-menu" >
            <a class="dropdown-item" href="Login.jsp" style="font-size:25px;">Login</a>
    		<a class="dropdown-item" href="Register.jsp" style="font-size:25px;">Register</a>
    		<a class="dropdown-item" href="Logout.jsp" style="font-size:25px;">Logout</a>
        </div>
      </div>
      
    </div>
    </div>
    </div>
    </div>

    
   
    
   
   
  </div>
</nav>
</div>

</section><br><br><br><br><br><br><br><br>
 
 <!--   <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav> 
 -->
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>




   <!--  <section id="header">
        <div>

            <ul id="navbar">
                <a href="index.jsp"><img src="img/logo.png" alt="" style="width: 200px; height: 150px;"></a>
                <li><a href="index.jsp" class="active">Home</a></li>
                <li><a href="Products.jsp" id="#P">Products</a></li>
                <li><a href="About.jsp">About</a></li>
                <li><a href="Contact.jsp">Contact</a></li>
            </ul>
        </div>
        <div>
            <ul id="icons">
                <li><a href="Cart.jsp"><i class="fa-solid fa-cart-arrow-down" style="font-size:40px;"></i><br>Cart</a></li>
                <li><a href="UserProfile.jsp"><i class="fa-solid fa-user" style="font-size:40px;"></i><br>Profile</a></li> 
            </ul>
        </div>
        
        <div class="col-md-4">
       <div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
    SignUp/SignIn
  </a>

  <div class="dropdown-menu">
    <a href="Login.jsp" style="color:#222;"><i class="fa-solid fa-address-card"></i>Login</a>
    <a href="Register.jsp"><i class="fa-solid fa-user-plus"></i>Register</a>
    <a href="Logout.jsp"><i class="fa-solid fa-cart-arrow-down"></i>Logout</a>
  </div>
</div>
  </div>     
        
        <div id="mobile">
            <i id="bar" class="fas fa-outdent"></i>
        </div>
    </section> -->
    
  