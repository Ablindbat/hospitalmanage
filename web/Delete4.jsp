<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Enquiry Deleted</title>
    </head>
    <body background="Img1.GIF">
        <br><a href="Request.html"><font size="2"><b><i>Home</i></b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Delete3.jsp"><font size="2"><b><i>Back</i></b></font></a>        
        <%
           String name1=request.getParameter("name");
        %>
        <p align="center"><font color="red" size="5"><b><br><br><br><br>Enquiry of : <font color="blue"><%= name1%></font> has been Successfully Deleted!</b></font></p>
        <%                      
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              Connection myConn=DriverManager.getConnection("jdbc:odbc:Hospital");
              Statement stmt=myConn.createStatement();
              int result=stmt.executeUpdate("Delete from Enquiry where Name='"+name1+"'");
          
              stmt.close();
              myConn.close();
        %>
    </body> 
</html>