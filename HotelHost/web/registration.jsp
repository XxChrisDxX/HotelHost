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

      <form method="post" action="register.jsp">
        <p><input type="text" name="firstname" value="" placeholder="First Name"></p>
        <p><input type="text" name="lastname" value="" placeholder="Last Name"></p>
        <p><input type="text" name="email" value="" placeholder="Email"></p>
        <p><input type="text" name="username" value="" placeholder="Username"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>

        <p class="submit"><input type="submit" name="commit" value="Submit"></p>
        <p>Already have an account? <br> <a href="main.jsp">Home Page</a></p>
      </form>
    </div>   
            
        </div>   
     
        <div id="content">
            
            <p>sample content goes here</p>
        </div>


       
    </body>
</html>
       