<%@include file='header.jsp' %>
<%@include file='footer.jsp' %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<!--hotel <% //out.println(i);%>-->
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
	<% 	
				//String username=request.getParameter("Username"); 
				//String password=request.getParameter("Password"); 
			   
			   
				String ConnString = "jdbc:sqlserver://rubble:1433;databaseName=2016SISM4154WGroup5;user=2016SISM4154WGroup5;password=567;";
				// open a connection
				Connection con = null; 
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  // load the driver
				con = DriverManager.getConnection(ConnString);
			  
					PreparedStatement prep = con.prepareStatement("select * from Hotel");
					boolean status = false;
					// execute the query
					ResultSet rs = prep.executeQuery();
					status = rs.next();
					//String HotelName = rs.getString("Hotel_Name"));
					//out.println(HotelName);
					
					/*int EID = rs.getInt("EmployeeID");
					int JID = rs.getInt("JobPositionID");
					if (EID < 0)
					{
						prep.close();    // close the prepared statement
						con.close(); // close the connection
						response.sendRedirect("forgotpwd.html");
					}
					else
					{
						if (EID > 0 && JID == 2) 
						{
							session.setAttribute ("UID", rs.getString("EmployeeID"));
							prep.close();    // close the prepared statement
							con.close(); // close the connection
							response.sendRedirect("actwelcome.jsp");
						}
						else
						{
							session.setAttribute ("UID", rs.getString("EmployeeID"));
							prep.close();    // close the prepared statement
							con.close(); // close the connection
							response.sendRedirect("otherwelcome.jsp");
						}
					}*/
				
			
			   
	   /*if(status == true) 
	   { 
		session.setAttribute("username",username); response.sendRedirect("loggedin.jsp"); 
	   } 
	   else response.sendRedirect("loginfailed.jsp"); */
	%>
		<div id="content">
			<h1>Book your stay</h1>
			<form id="bookingform" action="bookingprocess.jsp">
				<table id="bookingtable" align="center">
					<tr>
						<td>Location</td>
						<td><select name="location">
							<% while(rs.next()){ 
								int i=0;
							%>
							<option value="<%= rs.getString("Hotel_Name") %>"><%= rs.getString("Hotel_Name") %></option>
							<% i++; } %>
							</select>
						<td>		
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
							<option value="night10">10</option>
						</td>		
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
       