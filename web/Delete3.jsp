<%@ page import="java.sql.*" %>
<html>
<head>
<title>Delete Enquiry</title>
</head>
<body text="blue" vlink="blue" background="Img1.GIF">
<table width="760" align="center" height="100" border="4" bordercolor="teal">
<tr><td align="center" background="Img15.GIF">
<img src="Img6.GIF"width="50" height="55" align="left">
<p align="center"><font size="7" face="Lucida Calligraphy" color="brown"><b><u><i>Delete Enquiry</i></u></b></font></p>
</td></tr>
</table>
      <Form METHOD="post" ACTION="Delete4.jsp">
      <a href="Request.html"><font size="2"><b><i>Home</i></b></font></a>        
      <br><br><table align="center" border="2" width="2600" bordercolor="magenta">
            <tr align="center">
            <td><b>DELETE?</b></td><td colspan="3"><b>NAME</b></td><td colspan="9"><b>ADDRESS</b></td><td colspan="2"><b>PHONE NO.</b></td><td colspan="2"><b>FAX NO.</b></td><td colspan="5"><b>EMAIL ID</b></td><td colspan="10"><b>PROBLEM</b></td><td colspan="10"><b>INVESTIGATION</b></td><td colspan="2"><b>CATEGORY</b></td><td><b>DATE1</b></td><td><b>MONTH1</b></td><td><b>YEAR1</b></td><td><b>DATE2</b></td><td><b>MONTH2</b></td><td><b>YEAR2</b></td><td colspan="6"><b>ENQUIRY</b></td><td colspan="3" ><b>IP ADDRESS</b></td><td colspan="2"><b>ACCESS DATE</b></td><td colspan="2"><b>ACCESS TIME</b></td></tr>    
            <%
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection myConn=DriverManager.getConnection("jdbc:odbc:Hospital");
            Statement stmt=myConn.createStatement();            
            ResultSet myResultSet=stmt.executeQuery("Select * from Enquiry order by Access_Date Desc"); 
            
            if(myResultSet!=null)
                {
                 while(myResultSet.next())
                    {
                       String name=myResultSet.getString("Name");
                       String address=myResultSet.getString("Address");
                       String phone_no=myResultSet.getString("Phone_No");
                       String fax_no=myResultSet.getString("Fax_No");
                       String email_id=myResultSet.getString("Email_ID");
                       String problem=myResultSet.getString("Problem");
                       String investigation=myResultSet.getString("Investigation");
                       String category=myResultSet.getString("Category");
                       String date1=myResultSet.getString("Date1");
                       String month1=myResultSet.getString("Month1");
                       String year1=myResultSet.getString("Year1");
                       String date2=myResultSet.getString("Date2");
                       String month2=myResultSet.getString("Month2");
                       String year2=myResultSet.getString("Year2");
                       String enquiry=myResultSet.getString("Enquiry");
                       String ip_address=myResultSet.getString("IP_Address");
                       String access_date=myResultSet.getString("Access_Date");
                       String access_time=myResultSet.getString("Access_Time");
                       %> 
                       <tr align="center">
                           <td><input type="Radio" name="name" value="<%= name %>" onClick="submit()"></td>
                           <td colspan="3"><%= name %></td>
                           <td colspan="9"><%= address %></td>
                           <td colspan="2"><%= phone_no %></td>
                           <td colspan="2"><%= fax_no %></td>
                           <td colspan="5"><%= email_id %></td>
                           <td colspan="10"><%= problem %></td>
                           <td colspan="10"><%= investigation %></td>
                           <td colspan="2"><%= category %></td>
                           <td><%= date1 %></td>
                           <td><%= month1 %></td>
                           <td><%= year1 %></td>
                           <td><%= date2 %></td>
                           <td><%= month2 %></td>
                           <td><%= year2 %></td>
                           <td colspan="6"><%= enquiry %></td>
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
</Form> 
</body>
</html>