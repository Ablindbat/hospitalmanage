<%@ page session="true" %>
<%@ page import="java.sql.*" errorPage="Error.html" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" %>

<html>
<head><title>Feedback</title></head>
<body background="Img1.GIF">
<a href="Home.html"><font size="2"><b><i>Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Feedback.html">Back</i></b></font></a>
<%
   String Name=request.getParameter("name");
   String Address=request.getParameter("address");
   String Phone=request.getParameter("phone");
   String Fax=request.getParameter("fax");
   String Mail=request.getParameter("mail");
   String Comments=request.getParameter("comments");
   String IPAddress=request.getRemoteHost();

   if(Fax.length()==0)
   Fax="Nil";    
   if(Mail.length()==0)
   Mail="Nil";           
           
   GregorianCalendar now=new GregorianCalendar();
           
   DateFormat fmtt=new SimpleDateFormat("dd/MM/yyyy");
   String Date=fmtt.format(now.getTime());
            
   DateFormat fmt=new SimpleDateFormat("hh:mm:ss aa");
   String Time=fmt.format(now.getTime());
                 
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","redhat6");
   Statement stmt=con.createStatement();
   PreparedStatement ps;
   ps=con.prepareStatement("insert into hospitalfeedback values(?,?,?,?,?,?,?)");
      ps.setString(1,Name);
      ps.setString(2,Address);
      ps.setString(3,Phone);
      ps.setString(4,Fax);
      ps.setString(5,Mail);
      ps.setString(6,Comments);
      ps.setString(7,IPAddress);
      int insertResult = ps.executeUpdate();
      
%>
   <p align="Center"><font size="6" color="red"><b><u><i><br><br><br>Your Feedback has been sent Successfully</i></u></b></font></p>
<%
   ps.close();
   con.close();
%> 
</body>
</html>