<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>
<%
String phone=request.getParameter("phone"); 
 
String pass=request.getParameter("pass"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/centum","root","ROOMKEY");
Statement st= con.createStatement(); 
st.executeUpdate("update register set pass='"+pass+"' where phone='"+phone+"'");
response.sendRedirect("index.html");
%>
