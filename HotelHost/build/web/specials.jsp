<%-- 
    Document   : specials
    Created on : Feb 13, 2016, 10:40:48 AM
    Author     : Chris
--%>
<%@page import="java.util.Date"%>
<%@include file='header.jsp' %>  
<%@include file='footer.jsp' %>
<html> 
<html lang="en">
    <head>
      

        <title>HotelHost | Specials</title>

        
    </head>
    
    
    <body>
        <!--content -->
        <div id='content'>
            <!--img and form for hotel search will go here-->
            <h2 style="height: auto;">Today's special is:
            <% 
            switch (new Date().getDay()) {
                case 0:
                %> 15% off your total stay <%
                break;
                    
                case 1:
                %> 10% off your total purchase when you book two or more nights <%
                break;
                    
                case 2:
                %> 5% off your total purchase <%
                break;
                    
                case 3:
                %> 10% off your total purchase <%
                break;
                    
                case 4:
                %> 10% off your total purchase when you book two or more nights <%
                break;
                    
                case 5:
                %> 10% off your total purchase when you book four or more nights <%
                break;
                    
                case 6:
                %> 5% off your total purchase when you book three or more nights <%
                break;
        }%> </h2>
            
            <h2 class="content">It's time to go on vacation!</h2>
                <br>
            <p id="content">
                We offer different specials for each day of the week to make to
                fit your schedule and your budget. Specials apply to the day you
                plan to check in.<br><br>
                
                <table id="specials_table" align="center">
 <tr>
    <th>Sunday</th>
    <td>15% off total stay</td>		
  </tr> 
<tr>
    <th>Monday</th>
    <td>10% off two or more nights</td>		
  </tr>
  <tr>
    <th>Tuesday</th>
    <td>5% off total stay</td>		
  </tr>
  <tr>
    <th>Wednesday</th>
    <td>10% off total stay</td>		
  </tr>
  <tr>
    <th>Thursday</th>
    <td>10% off two or more nights</td>		
  </tr>
<tr>
    <th>Friday</th>
    <td>10% off four or more nights</td>		
  </tr>
<tr>
    <th>Saturday</th>
    <td>5% off three or more nights</td>		
  </tr>
</table>
               
               
            </p>
        </div>
        <!-- end of content -->
        <div>
            <!-- footer -->
            
            &nbsp;<br><br><br>
        </div>
    </body>
</html>