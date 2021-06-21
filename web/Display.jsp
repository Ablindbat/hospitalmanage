<%@ page import="java.sql.*" %>
<html>
<head>
<title>All Feedbacks</title>
</head>
<body text="blue" vlink="blue" background="Img1.GIF">
<table width="760" align="center" height="100" border="4" bordercolor="teal">
<tr><td align="center" background="Img15.GIF">
<img src="Img6.GIF"width="50" height="55" align="left">
<p align="center"><font size="7" face="Lucida Calligraphy" color="brown"><b><u><i>All Feedbacks</i></u></b></font></p>
</td></tr>
</table>
<br><a href="Request.html"><font size="2"><b><i>Home</i></b></font></a>                
      <br><br><table align="center" border="2" width="1500" bordercolor="magenta">
            <tr align="center">
            <td colspan="3"><b>NAME</b></td><td colspan="9"><b>ADDRESS</b></td><td colspan="2"><b>PHONE NO.</b></td><td colspan="2"><b>FAX NO.</b></td><td colspan="5"><b>EMAIL ID</b></td><td colspan="10"><b>COMMENTS</b></td><td colspan="3" ><b>IP ADDRESS</b></td><td colspan="2"><b>ACCESS DATE</b></td><td colspan="2"><b>ACCESS TIME</b></td>
            </tr>    
            <%
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection myConn=DriverManager.getConnection("jdbc:odbc:Hospital");
            
            Statement stmt=myConn.createStatement();            
            ResultSet myResultSet=stmt.executeQuery("Select * from Feedback order by Access_Date Desc"); 
            
            if(myResultSet!=null)
                {
                 while(myResultSet.next())
                    {
                       String name=myResultSet.getString("Name");
                       String address=myResultSet.getString("Address");
                       String phone_no=myResultSet.getString("Phone_No");
                       String fax_no=myResultSet.getString("Fax_No");
                       String email_id=myResultSet.getString("Email_ID");
                       String comments=myResultSet.getString("Comments");
                       String ip_address=myResultSet.getString("IP_Address");
                       String access_date=myResultSet.getString("Access_Date");
                       String access_time=myResultSet.getString("Access_Time");
            %> 
                       <tr align="center">
                           <td colspan="3"><%= name %></td>
                           <td colspan="9"><%= address %></td>
                           <td colspan="2"><%= phone_no %></td>
                           <td colspan="2"><%= fax_no %></td>
                           <td colspan="5"><%= email_id %></td>
                           <td colspan="10"><%= comments %></td>
                           <td colspan="3"><%= ip_address %></td>
                           <td colspan="2"><%= access_date %></td>
                           <td colspan="2"><%= access_time %></td>
                       </tr>
                      <%              
                    }
                  }
             stmt.close();
             myConn.close();
        %>
        </table>   
</body>
</html>