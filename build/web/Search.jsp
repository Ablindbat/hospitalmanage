<%@ page language="java" errorPage="Error.html" %>
<html>
<head></head>
<body background="Img1.GIF">
<%
   String Matter=request.getParameter("matter");
   
   if(Matter.equalsIgnoreCase("Home")|| Matter.equalsIgnoreCase("Home Page") || Matter.equalsIgnoreCase("Main") || Matter.equalsIgnoreCase("Main Page"))
   {
    %>
      <%@ include file="Home.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("About Hospital")|| Matter.equalsIgnoreCase("About") || Matter.equalsIgnoreCase("Hospital") || Matter.equalsIgnoreCase("Detail") || Matter.equalsIgnoreCase("Details") ||Matter.equalsIgnoreCase("Hospital Detail") || Matter.equalsIgnoreCase("Hospital Details"))
   {
    %>
      <%@ include file="Hospital.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Diagnostic Services")|| Matter.equalsIgnoreCase("Diagnostic Service") || Matter.equalsIgnoreCase("Diagnostic") || Matter.equalsIgnoreCase("Services") || Matter.equalsIgnoreCase("Service") ||Matter.equalsIgnoreCase("Diagnosis Services") || Matter.equalsIgnoreCase("Diagnosis"))
   {
    %>
      <%@ include file="Diagnostic.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Departments")|| Matter.equalsIgnoreCase("Department") || Matter.equalsIgnoreCase("All Departments") || Matter.equalsIgnoreCase("Hospital Departments"))
   {
    %>
      <%@ include file="Departments.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Cardiology")|| Matter.equalsIgnoreCase("Heart") || Matter.equalsIgnoreCase("Artery"))
   {
    %>
      <%@ include file="Cardiology.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Chest")|| Matter.equalsIgnoreCase("Lungs") || Matter.equalsIgnoreCase("Asthama") || Matter.equalsIgnoreCase("Allergy") || Matter.equalsIgnoreCase("Respiratory"))
   {
    %>
      <%@ include file="Chest.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Dental")|| Matter.equalsIgnoreCase("Tooth") || Matter.equalsIgnoreCase("Teeth") || Matter.equalsIgnoreCase("Oral"))
   {
    %>
      <%@ include file="Dental.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Emergency")|| Matter.equalsIgnoreCase("Emergencies"))
   {
    %>
      <%@ include file="Emergency.html" %>
    <%  
   } 
   else if(Matter.equalsIgnoreCase("ENT")|| Matter.equalsIgnoreCase("Ear") || Matter.equalsIgnoreCase("Ears") || Matter.equalsIgnoreCase("Nose") || Matter.equalsIgnoreCase("Throat") || Matter.equalsIgnoreCase("Vocal Cord"))
   {
    %>
      <%@ include file="Ent.html" %>
    <%  
   }  
   else if(Matter.equalsIgnoreCase("Eye")|| Matter.equalsIgnoreCase("Cataract") || Matter.equalsIgnoreCase("Glocoma"))
   {
    %>
      <%@ include file="Eye.html" %>
    <%  
   } 
   else if(Matter.equalsIgnoreCase("Gastroenterology")|| Matter.equalsIgnoreCase("Gas") || Matter.equalsIgnoreCase("Ulcer"))
   {
    %>
      <%@ include file="Gastroenterology.html" %>
    <%  
   }     
   else if(Matter.equalsIgnoreCase("General"))
   {
    %>
      <%@ include file="General.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Gynaecology"))
   {
    %>
      <%@ include file="Gynaecology.html" %>
    <%  
   }  
   else if(Matter.equalsIgnoreCase("Haematology"))
   {
    %>
      <%@ include file="Haematology.html" %>
    <%  
   } 
   else if(Matter.equalsIgnoreCase("Nephrology")|| Matter.equalsIgnoreCase("Kidney") || Matter.equalsIgnoreCase("Kidneys") || Matter.equalsIgnoreCase("Kidney Stone") || Matter.equalsIgnoreCase("Urinery"))
   {
    %>
      <%@ include file="Nephrology.html" %>
    <%  
   }         
   else if(Matter.equalsIgnoreCase("Neurology")|| Matter.equalsIgnoreCase("Migraine") || Matter.equalsIgnoreCase("Nerve") || Matter.equalsIgnoreCase("Brain") || Matter.equalsIgnoreCase("Brain Tumour"))
   {
    %>
      <%@ include file="Neurology.html" %>
    <%  
   }      
   else if(Matter.equalsIgnoreCase("Orthopaedics")|| Matter.equalsIgnoreCase("Knee") || Matter.equalsIgnoreCase("Bone") || Matter.equalsIgnoreCase("Bones") || Matter.equalsIgnoreCase("Osteoporosis") || Matter.equalsIgnoreCase("Osteoarthritis"))
   {
    %>
      <%@ include file="Orthopaedics.html" %>
    <%  
   }                     
   else if(Matter.equalsIgnoreCase("Paediatrics")|| Matter.equalsIgnoreCase("Paediatric") || Matter.equalsIgnoreCase("Baby"))
   {
    %>
      <%@ include file="Paediatrics.html" %>
    <%  
   }         
   else if(Matter.equalsIgnoreCase("Skin"))
   {
    %>
      <%@ include file="Skin.html" %>
    <%  
   }                                                   
   else if(Matter.equalsIgnoreCase("Facilities")|| Matter.equalsIgnoreCase("Facilitiy") || Matter.equalsIgnoreCase("Hospital Facilities") || Matter.equalsIgnoreCase("Hospital Facility") || Matter.equalsIgnoreCase("X-Ray") ||Matter.equalsIgnoreCase("CT Scan") || Matter.equalsIgnoreCase("MRI") || Matter.equalsIgnoreCase("Operation") || Matter.equalsIgnoreCase("Operations") || Matter.equalsIgnoreCase("Credit Card") || Matter.equalsIgnoreCase("Credit Cards") || Matter.equalsIgnoreCase("Credit Card Facility") || Matter.equalsIgnoreCase("Acceptance of Credit Card") || Matter.equalsIgnoreCase("Bank") || Matter.equalsIgnoreCase("Banking Facility") || Matter.equalsIgnoreCase("Banking Facilities") || Matter.equalsIgnoreCase("Canteen"))
   {
    %>
      <%@ include file="Facilities.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Doctors")|| Matter.equalsIgnoreCase("Doctor") || Matter.equalsIgnoreCase("All Doctors") || Matter.equalsIgnoreCase("Physician") || Matter.equalsIgnoreCase("Physicians") || Matter.equalsIgnoreCase("All Physicians") || Matter.equalsIgnoreCase("OPD")|| Matter.equalsIgnoreCase("Day") || Matter.equalsIgnoreCase("Time") || Matter.equalsIgnoreCase("Timming"))
   {
    %>
      <%@ include file="Doctors.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("ICU")|| Matter.equalsIgnoreCase("Intensive Care Unit") || Matter.equalsIgnoreCase("Intensive Care Units"))
   {
    %>
      <%@ include file="Icu.html" %>
    <%  
   }   
   else if(Matter.equalsIgnoreCase("ICCU")|| Matter.equalsIgnoreCase("Intensive Cardiac Care Unit") || Matter.equalsIgnoreCase("Intensive Cardiac Care Units"))
   {
    %>
      <%@ include file="Iccu.html" %>
    <%  
   }  
   else if(Matter.equalsIgnoreCase("Contact Us")|| Matter.equalsIgnoreCase("Contact") || Matter.equalsIgnoreCase("Contacts") || Matter.equalsIgnoreCase("Address") || Matter.equalsIgnoreCase("Location") || Matter.equalsIgnoreCase("Phone") || Matter.equalsIgnoreCase("Phone No") || Matter.equalsIgnoreCase("Phone Nos") || Matter.equalsIgnoreCase("Email") || Matter.equalsIgnoreCase("E-Mail") || Matter.equalsIgnoreCase("E-Mail ID") || Matter.equalsIgnoreCase("EMail ID") || Matter.equalsIgnoreCase("FAX") || Matter.equalsIgnoreCase("FAX No"))
   {
    %>
      <%@ include file="Contact.html" %>
    <%  
   }  
   else if(Matter.equalsIgnoreCase("Employment")|| Matter.equalsIgnoreCase("Employments") || Matter.equalsIgnoreCase("Job") || Matter.equalsIgnoreCase("Jobs"))
   {
    %>
      <%@ include file="Employment.html" %>
    <%  
   } 
   else if(Matter.equalsIgnoreCase("Blood Bank")|| Matter.equalsIgnoreCase("Blood") || Matter.equalsIgnoreCase("Blood Donation") || Matter.equalsIgnoreCase("Blood Plasma"))
   {
    %>
      <%@ include file="Bank.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Wards")|| Matter.equalsIgnoreCase("Ward") || Matter.equalsIgnoreCase("Non AC Male Ward") || Matter.equalsIgnoreCase("AC Male Ward") || Matter.equalsIgnoreCase("Non AC Female Ward") || Matter.equalsIgnoreCase("AC Female Ward") || Matter.equalsIgnoreCase("Non AC Ward") || Matter.equalsIgnoreCase("AC Ward") || Matter.equalsIgnoreCase("Non AC Wards") || Matter.equalsIgnoreCase("AC Wards"))
   {
    %>
      <%@ include file="Wards.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Cabins")|| Matter.equalsIgnoreCase("Cabin") || Matter.equalsIgnoreCase("Non AC Cabin") || Matter.equalsIgnoreCase("AC Cabin") || Matter.equalsIgnoreCase("Non AC Cabins") || Matter.equalsIgnoreCase("AC Cabins"))
   {
    %>
      <%@ include file="Cabins.html" %>
    <%  
   } 
   else if(Matter.equalsIgnoreCase("Enquiry")|| Matter.equalsIgnoreCase("Enquiries") || Matter.equalsIgnoreCase("Problem") || Matter.equalsIgnoreCase("Problems") || Matter.equalsIgnoreCase("Investigation") || Matter.equalsIgnoreCase("Category") || Matter.equalsIgnoreCase("Expected Arrival") || Matter.equalsIgnoreCase("Arrival"))
   {
    %>
      <%@ include file="Enquiry.html" %>
    <%  
   }
   else if(Matter.equalsIgnoreCase("Feedback")|| Matter.equalsIgnoreCase("Feedbacks") || Matter.equalsIgnoreCase("Comments") || Matter.equalsIgnoreCase("Comment"))
   {
    %>
      <%@ include file="Feedback.html" %>
    <%  
   } 
   else
   {
    %>
    <%@ include file="Not.html" %>
    <%  
   }     
%>
</body>
</html>