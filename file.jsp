<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String fullname=request.getParameter("fullname");
String age=request.getParameter("age");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String password=request.getParameter("pass");
String repassword=request.getParameter("repass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/centum", "root", "ROOMKEY");
Statement st=conn.createStatement();

if (password == "") 
	response.sendRedirect("rereg.html");
      
// If confirm password not entered 
 if (repassword == "") 
	 response.sendRedirect("rereg.html");

 if(fullname == ""){
	response.sendRedirect("rereg.html");
}
 
if(email==""){
	response.sendRedirect("rereg.html");}
	

if(age==""){
	response.sendRedirect("rereg.html");
}

if(phone==""){
	response.sendRedirect("rereg.html");
}

// If Not same return False.    
 /*if (password != repassword) { 
	 response.sendRedirect("reg.html");
} 
*/
st.executeUpdate("insert into register values('"+fullname+"','"+age+"','"+email+"','"+phone+"','"+password+"','"+repassword+"')");
response.sendRedirect("index.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>