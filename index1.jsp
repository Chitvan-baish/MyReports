<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user="Welcome User";
String phone1=request.getParameter("phone");
session.setAttribute("phone",phone1); 
String password1=request.getParameter("password"); 




Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/centum","root","ROOMKEY");
Statement st= con.createStatement(); 
ResultSet rs = st.executeQuery("select * from register where phone='"+phone1+"'");


%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>MyReports</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        .fakeimg {
            height: 100px;
            background: #aaa;
        }
        #p2{
            padding: 40px;
            margin-left:30%;
            margin-right: 20%;
        }
        .row{
            margin-left: 40px;
            margin-right: 10px;
        }
        .search-sec {
            padding: 20px;
            margin-left: 11%;

        }
        .card-deck{
            margin: 30px;
            margin-left: 24%;
            margin-right: 20%;
        }
       .darkcyan{
	background:#5F9EA0
       }
        .aqua{
	background:white	
       }
         .gainsboro{	background:#DCDCDC}
         .silver{background:#C0C0C0}
         .palegreen{background:#6C7F84}
         .burlywood{background:#6C7F84}	
        .bablu{
        background-image:url("5.png");
        }
        p{color:white}
       .jumbotron{background-image:url("2.jpg");}
       
    </style>
</head>
<body class="img" >

<div class="jumbotron text-center  " style="margin-bottom:0">
    <h1><strong>MYREPORTS</strong></h1>
    <p></p>
</div>

<nav class="navbar navbar-expand-lg navbar-light sticky-top burlywood">
    <a class="navbar-brand" href="#">MyReports</a>
    <button class="navbar-toggler" type="button" size="60px" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="about1.html">About</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#contact">Contact Us</a>
            </li>
            
        </ul>
         <div class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" style="color:white" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Welcome User
                </a>
                 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="index.html">Logout</a>
                </div>
                </div>
       
    </div>
</nav>

<div class="bablu">
<p id="p2" class="p2">
    <a class="btn btn-secondary " data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Laboratory</a>
    <button class="btn btn-secondary" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Medical Test</button>
    <button class="btn btn-secondary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Laboratory and Medical Test</button>
</p>
<div class="row">
    <div class="col">
        <div class="collapse multi-collapse" id="multiCollapseExample1">
            <div class="card card-body aqua">
                A laboratory is a facility that provides controlled conditions in which scientific or technological research, experiments, and measurement may be performed. Laboratory services are provided in a variety of settings: physicians offices, clinics, hospitals, and regional and national referral centers.
            </div>
        </div>
    </div>
    <div class="col">
        <div class="collapse multi-collapse" id="multiCollapseExample2">
            <div class="card card-body aqua">
                A medical test is a medical procedure performed to detect, diagnose, or monitor diseases, disease processes, susceptibility, or to determine a course of treatment. Medical tests relate to clinical chemistry and molecular diagnostics, and are typically performed in a medical laboratory.
            </div>
        </div>
    </div>
</div>

<section class="search-sec" >
    <div class="container">
        <form action="lab1.jsp" method="post" >
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">

                        <div class="col-lg-3 col-md-3 col-sm-12 p-0 ">
                            <select class="form-control search-slt silver" id="exampleFormControlSelect1" name="city">
                                <option value="null">Select City</option>
                              
                                <option  value="ghaziabad" >Ghaziabad</option>
                                <option  value="Dwarka">Dwarka</option>
                                <option  value="noida">Noida</option>
                                <option  value="Gurugram">Gurugram</option>
                                  <option  value="Delhi">Delhi</option>
                            </select>
                        </div>

                        <div class="col-lg-6 col-md-6 col-sm-12 p-0 ">
                            <input type="text" class="form-control mr-sm-2 gainsboro" placeholder="Enter Test Name"  name="test_name">
                        </div>
                        <!--<div class="col-lg-3 col-md-3 col-sm-12 p-0">-->
                            <!--<input type="text" class="form-control search-slt" placeholder="Enter Drop City">-->
                        <!--</div>-->

                        <div class="col-lg-3 col-md-3 col-sm-12 p-0 ">
                         <input type = "submit" class="btn btn-secondary" value="submit">
                        </div>

                    </div>
                </div>
            </div>
        </form>

    </div>
</section>

<div class="card-deck">
<div class="card border-success mb-3 palegreen" style="max-width: 18rem;">
    <div class="card-header bg-transparent border-success">Hypothyroidism</div>
    <div class="card-body text-success">
        
        <p class="card-text  ">In India, the disease occurring in 1 out of  2640 neonates, when compared with the worldwide average value of  1 in 3800 subjects.</p>
    </div>
</div>

<div class="card border-success mb-3 palegreen" style="max-width: 18rem;">
    <div class="card-header bg-transparent border-success">Non-Communicable Diseases</div>
    <div class="card-body text-success">
        
        <p class="card-text " >Non-Communicable diseases such as cardiovascular disease, diabetes, chronic obstructive pulmonary disease, cancers, mental health disorders and injuries</p>
    </div>
</div>

<div class="card border-success mb-3 palegreen" style="max-width: 18rem;">
    <div class="card-header bg-transparent border-success">Communicable diseases</div>
    <div class="card-body text-success">
        
        <p class="card-text ">Diseases such as dengue fever, hepatitis, tuberculosis, malaria and pneumonia continue to plague India due to increased resistance to drugs</p>
    </div>
</div>
</div>
<div class="card-deck">
<div class="card border-success mb-3 palegreen" style="max-width: 18rem;">
    <div class="card-header bg-transparent border-success">The Twelfth Plan</div>
    <div class="card-body text-success">
       
        <p class="card-text " >The government of India has a Twelfth Plan to expand the National Rural Health Mission to the entire country, known as the National Health Mission.</p>
    </div>
</div>

<div class="card border-success mb-3 palegreen" style="max-width: 18rem;">
    <div class="card-header bg-transparent border-success">Programmes for Non-communicable Diseases</div>
    <div class="card-body text-success">
        
        <p class="card-text ">National Programme for Prevention and Control of Cancer, Diabetes, Cardiovascular Diseases & Stroke (NPCDCS).</p>
    </div>
</div>
    <div class="card border-success mb-3 palegreen" style="max-width: 18rem;">
        <div class="card-header bg-transparent border-success">Programmes for Communicable Diseases</div>
        <div class="card-body text-success">
                      <p class="card-text ">National Viral Hepatitis Control Program (NVHCP).<br>
Integrated Disease Surveillance Programme(IDSP).</p>
        </div>
    </div>
</div>
</div>






<!-- Footer -->
<footer   class="aqua" >

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-5 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase"></h5>
        <h5>Follow Us On</h5>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<!-- Add font awesome icons -->
<a href="#" class="fa fa-facebook mr-md-5 mr-3 fa-2x"></a>
<a href="#" class="fa fa-twitter mr-md-5 mr-3 fa-2x"></a>
       

      </div>
  
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase" id="contact">Reach us at</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!"></a>
          </li>
          <li>
            <a href="#!">011-32621715</a>
          </li>
          <li>
            <a href="#!"></a>
          </li>
        </ul>


      </div>
<div class="col-md-3 mb-md-0 mb-3">
<h6 class="text-uppercase">For any queries mail us at </h3>

        
          
            <a href="#!">labs@myreport.com</a>
         </div>

      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">� 2019 Copyright:MyReports.com
   
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</body>
</html>
