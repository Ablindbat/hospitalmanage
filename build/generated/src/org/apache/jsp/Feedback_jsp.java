package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.*;

public final class Feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"Error.html", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head><title>Feedback</title></head>\r\n");
      out.write("<body background=\"Img1.GIF\">\r\n");
      out.write("<a href=\"Home.html\"><font size=\"2\"><b><i>Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"Feedback.html\">Back</i></b></font></a>\r\n");

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
           
   /*GregorianCalendar now=new GregorianCalendar();
           
   DateFormat fmtt=new SimpleDateFormat("dd/MM/yyyy");
   String Date=fmtt.format(now.getTime());
            
   DateFormat fmt=new SimpleDateFormat("hh:mm:ss aa");
   String Time=fmt.format(now.getTime());*/
                 
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
      

      out.write("\r\n");
      out.write("   <p align=\"Center\"><font size=\"6\" color=\"red\"><b><u><i><br><br><br>Your Feedback has been sent Successfully</i></u></b></font></p>\r\n");

   ps.close();
   con.close();

      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
