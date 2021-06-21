<html>
<head></head>
<body>
<%
            String Info=request.getParameter("info");
            
            if(Info.equals("display"))
            {
                %>
                  <%@ include file="Display.jsp" %>
                <%  
            }    
            
            if(Info.equals("today"))
            {
                %>
                  <%@ include file="Today's.jsp" %>
                <%  
            }    
            
            if(Info.equals("particular"))
            {
                %>
                  <%@ include file="Particular.html" %>
                <%  
            }    
            
            if(Info.equals("user"))
            {
                %>
                  <%@ include file="User.html" %>
                <%  
            }    
            
            if(Info.equals("delete"))
            {
                %>
                  <%@ include file="Delete1.jsp" %>
                <%  
            }    
%>
</body>
</html>
    