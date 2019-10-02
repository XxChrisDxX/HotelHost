<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> </head> 
    <body> 
        <% 	//String username=request.getParameter("Username"); 
			//String password=request.getParameter("Password"); 
		   
		   
			String ConnString = "jdbc:sqlserver://rubble:1433;databaseName=2016SISM4154WGroup5;user=2016SISM4154WGroup5;password=567;";
			// open a connection
			Connection con = null; 
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  // load the driver
			con = DriverManager.getConnection(ConnString);
          
			// get the parameters from the html form
                        String firstname = request.getParameter("firstname");
                        String lastname = request.getParameter("lastname");
                        String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if(firstname != null && lastname != null && email != null && username != null && password != null)
			{
				PreparedStatement prep = con.prepareStatement("insert into Guest values(?,?,?,?,?)");
				prep.setString(1, lastname);
                                prep.setString(2, firstname);
                                prep.setString(3, username);
                                prep.setString(4, email);
				prep.setString(5, password);
				int status = 0;
				// execute the query
				status = prep.executeUpdate();
				
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
			
	    
		   
   if(status != '0') 
   { 
    session.setAttribute("username",username); response.sendRedirect("registrationsuccess.jsp"); 
   } 
   else response.sendRedirect("registerationfailed.jsp"); 
			}%> 
	
    </body> 
</html>
