<%@include file='header.jsp' %>
<%@include file='footer.jsp' %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<html lang="en">
    <head>
<title>Hotel Host</title>
</head>
    <body>
        
        <div id='sidebar'>
            <h3>Logged in as</h3>
         <div class="login">

             <p>${sessionScope.username}</p>
             <a href="main.jsp">Log out</a>
    </div>   
            
        </div>    
        <div id="content">
            <h1>Shopping Cart</h1>
            <p>${sessionScope.location}</p>
            </div>


       
    </body>
</html>
       