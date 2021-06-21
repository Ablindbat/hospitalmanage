<html>
<head></head>
<body>
<%
            String Info=request.getParameter("info");
            
            if(Info.equals("display"))
            {
                %>
                  <%@ include file="Display1.jsp" %>
                <%  
            }    
            
            if(Info.equals("today"))
            {
                %>
                  <%@ include file="Today1.jsp" %>
                <%  
            }    
            
            if(Info.equals("particular"))
            {
                %>
                  <%@ include file="Particular1.html" %>
                <%  
            }    
            
            if(Info.equals("user"))
            {
                %>
                  <%@ include file="User1.html" %>
                <%  
            }    
            
            if(Info.equals("delete"))
            {
                %>
                  <%@ include file="Delete3.jsp" %>
                <%  
            }    
%>
</body>
</html>
    