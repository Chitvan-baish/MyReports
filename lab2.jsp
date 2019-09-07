<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String city=request.getParameter("city");

String test=request.getParameter("test_name"); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myreport","root","ROOMKEY");
Statement st= con.createStatement(); 
ResultSet rs = st.executeQuery("select * from lab where city='"+city+"' and test_name='"+test+"'"); 



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
        background-color:#B9B9B9;
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
                <a class="nav-link" href="adminlogin.html">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="about2.html">About</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#contact">Contact Us</a>
            </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Data
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="labdata.jsp">Lab Data</a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="registerdata.jsp">Register Data</a>
                </div>
            </li>
            
        </ul>
         <div class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" style="color:white" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Welcome Admin
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
        <form action="lab2.jsp" method="post" >
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



<div class="col-lg-12">
			<div class="container">
 <form action="adminlogin.html">         
  <table class="table table-hover">
    <thead>
      <tr>
        <th>LabName</th>
        <th>price</th>
        <th>Phone number</th>
        <th>Timings</th>
        <th>Booking</th>
      </tr>
    </thead>
    <tbody>
    <%while(rs.next()){%>
    <tr>
    <td><%out.print(rs.getString(3));%></td>
    <td><%out.print(rs.getString(5));%></td>
    <td><%out.print(rs.getString(6));%></td>
    <td><%out.print(rs.getString(7));%></td>
    <td><input type="submit" value="Book" onclick="alert('lab Name: <%out.print(rs.getString(3));%> Price: <%out.print(rs.getString(5));%> Timings:<%out.print(rs.getString(7));%>  booked');"></td>
   </tr>
  	<%} %>
    </tbody>
  </table>
  </form>	
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
  <div class="footer-copyright text-center py-3">© 2019 Copyright:MyReports.com
   
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

</body>
</html>
