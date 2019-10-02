<%-- 
    Document   : booking
    Created on : Mar 1, 2016, 5:16:11 PM
    Author     : gabby_000
--%>
<%@include file='header.jsp' %>
<%@include file='footer.jsp' %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HotelHost | Book Your Trip</title>
    </head>
    <body> <div id="content">
            <h1>Book your stay</h1>
       <form id="bookingform" action="bookingprocess.jsp">
<table id="bookingtable" align="center">
  <tr>
    <td>Location</td>
    <td><select name="location">
    <option value="hotel1">1</option>
    <option value="hotel2">2</option>
    <option value="hotel3">3</option>
    <option value="hotel4">4</option>
    <option value="hotel5">5</option>
    <option value="hotel6">6</option>
    <option value="hotel7">7</option>
    <option value="hotel8">8</option>
    <option value="hotel9">9</option>
    <option value="hotel10">10</option>
    <option value="hotel11">11</option>
    <option value="hotel12">12</option>
    <option value="hotel13">13</option>
    <option value="hotel14">14</option>
    <option value="hotel15">15</option>
    <option value="hotel16">16</option>
    <option value="hotel17">17</option>
    <option value="hotel18">18</option>
    <option value="hotel19">19</option>
    <option value="hotel20">20</option>
  </select><td>		
  </tr>
  <tr>
    <td>Number of Nights</td>
    <td><select name="night">
<option value="night1">1</option>
    <option value="night2">2</option>
    <option value="night3">3</option>
    <option value="night4">4</option>
    <option value="night5">5</option>
    <option value="night6">6</option>
    <option value="night7">7</option>
    <option value="night8">8</option>
    <option value="night9">9</option>
    <option value="night10">10</option></td>		
    
  </tr>
  <tr>
    <td>Check in date</td>
    <td><input type="date" name="checkin"></td>		

  </tr>

</table>
<input type="Submit" value="Add To Cart" align="center">
</form>
            </div>
    </body>
</html>
