<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> </head> 
    <body> 
        <% 	//String location=request.getParameter("location"); 
			//int night=request.getParameter("night"); 
			int count = 0;
			//String checkin=request.getParameter("checkin");
		   
		   
			String ConnString = "jdbc:sqlserver://rubble:1433;databaseName=2016SISM4154WGroup5;user=2016SISM4154WGroup5;password=567;";
			// open a connection
			Connection con = null; 
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  // load the driver
			con = DriverManager.getConnection(ConnString);
          
			// get the parameters from the html form
			String location = request.getParameter("location");
			//String night = request.getParameter("night");
			if(location != null)
			{
				PreparedStatement prep = con.prepareStatement("select * from Hotel where Hotel_Name=?");
				prep.setString(1, location);
				//prep.setString(2, night);
				boolean status = false;
				// execute the query
				ResultSet rs = prep.executeQuery();
				status = rs.next();
				count++;
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
			
	    
		   
   if(status == true) 
   { 
    session.setAttribute("location",location); response.sendRedirect("hotels.jsp"); 
   } 
   else response.sendRedirect("main.jsp"); 
			}%> 
	
    </body> 
</html>
