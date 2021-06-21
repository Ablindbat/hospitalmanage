<%@ page language="Java" errorPage="Error.html"%>
<html>
    <head></head>
    <body>
         <%
            String Info=request.getParameter("info");
            
            if(Info.equals("enquiry"))
            {
                %>
                  <%@ include file="Enquiry_Data.html" %>
                <%  
            }    
            
            if(Info.equals("feedback"))
            {
                %>
                  <%@ include file="Feedback_Data.html" %>
                <%  
            }    
          %>
     </body>
</html>