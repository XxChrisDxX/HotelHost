<%@include file='header.jsp' %>
<%@include file='footer.jsp' %>

<html lang="en">
    <head>
<title>Hotel Host</title>
</head>
    <body>
        
        <div id='sidebar'>
            <h3>Login</h3>
         <div class="login">

      <form method="post" action="LoginCheck.jsp">
        <p><input type="text" name="username" value="" placeholder="Username"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>

        <p class="submit"><input type="submit" name="commit" value="Submit"></p>
        <p>Don't have an account? <br> <a href="registration.jsp">Register</a></p>
      </form>
    </div>   
            
        </div>   
     
        <div id="content">
            <h1>Home of the best hotel deals around!</h1>
            <p>Welcome to HotelHost.com! We are a growing company dedicated
            to providing our users with hotel daily hotel deals and easing the
            stress of vacation planning. We are currently partnered with twenty
            locations in eleven states. We look forward to your trip!</p>
            <%@include file='map.jsp' %>
            
            <p>Ready to book? Click <a href="booking.jsp">here</a> to book your trip</p>
        </div>


       
    </body>
</html>
       