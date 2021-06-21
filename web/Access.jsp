<jsp:useBean id="help" scope="session" class="process.User" />
<jsp:setProperty name="help" property="*" />
<%@ page language="Java" errorPage="Error.html"%>
<html>
    <head></head>
    <body background="Img1.GIF">
        <%
          String Password=request.getParameter("pass");
          String user=help.authenticate(Password);
          if(user.equals("Expired"))
          {
            %>
              <a href="Access.html"><font size="2"><b><i>Back</i></b></font></a>
              <p align="Center"><font size="6" color="red"><b><u><br><br><br>ACCESS RIGHT HAS BEEN EXPIRED!</u></b></font></p>
            <%
          }   
          if(user.equals("Valid"))
          {
            %>
              <%@ include file="Request.html" %>
            <%
          }   
          if(user.equals("no"))
          {
            %>
              <a href="Access.html"><font size="2"><b><i>Back</i></b></font></a>
              <p align="Center"><font size="6" color="red"><b><u><br><br><br>INVALID PASSWORD! TRY AGAIN!</u></b></font></p>
            <%      
          }
        %>
    </body>
</html>
