

<html>
    <head>
        <title>Royal Transportation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
       </head>  
 <%---------------------------------------------%>
      
<%@ page import="java.lang.Compiler.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

    <body bgcolor="ffe4f2" font style='font-family: verdana'>

<%---------------------------------------------%>
        
<style>
.mySlides {display:none;}
</style>

<%---------------------------------------------%>

<table>
    <tr><td>
<div class="slides" style="max-width:350px">
    <img class="mySlides" src="im1.png" style="width:100%" height="180px">
  <img class="mySlides" src="im4.png" style="width:100%" height="180px">
  <img class="mySlides" src="im3.png" style="width:100%" height="180px">
</div>
    </td><td> <img src="rts.png" width="175%" height="180px"/></td></tr>
     
</table>

<%---------------------------------------------%>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); 
}
</script>

<%---------------------------------------------%>

        <table align="left" border="0" width="100" >
            <tr>
                <td><a href="home.jsp" style="text-decoration: none">Home</a></td>
            </tr>
            <tr>
                <td><a href="log.jsp" style="text-decoration: none">Login</a></td>
            </tr>
            <tr>
                <td><a href="Registration.html" style="text-decoration: none">Registration</a></td>
            </tr>
            <tr>
                <td><a href="ContactUs.html" style="text-decoration: none">Contact Us</a></td>
            </tr>
        </table>
  
<%---------------------------------------------%>
<style>
.button {border-radius: 12px;height: 40px; width: 70px; background-color: f0e68c;}
</style>

  <table align="center" width="800">
<%    
        
        out.println("<form action='userhome.jsp'> ");
        out.println("<table><tr><td>"); 
                   //--From city--    
                   out.println("<br>&nbsp;&nbsp;&nbsp;&nbsp;Select Source");
                   out.println("<select name='frm'>");
                   
                   out.println(" <option value='patna'>patna</option>");
                   out.println(" <option value='ranchi'>ranchi</option>");
                   out.println(" <option value='Tata'>Tata</option>");
                   out.println(" <option value='dhanbad'>dhanbad</option>");
                   out.println(" <option value='kolkata'>kolkata</option>");
                 
                   out.println("</select>");
                   
                  out.println("</td>");  
                  out.println("<td>");          
                  //~~~~~To City~~~~~~
	           out.println("<br><font face='verdana'>&nbsp;&nbsp;Select Destination</font>");
                   out.println("<select name='top'>");
                   out.println(" <option value='patna'>patna</option>");
                   out.println(" <option value='ranchi'>ranchi</option>");
                   out.println(" <option value='Tata'>Tata</option>");
                   out.println(" <option value='kolkata'>kolkata</option>");
                   out.println(" <option value='dhanbad'>dhanbad</option>");
                        
                   out.println("</select>");
                   
                    out.println("</td><td>");

                  //~~~~~DAY~~~~~~
	           out.println("<br>&nbsp;&nbsp;Select Day");
                   out.println("<select name='day'>");
                  
                           
                   out.println(" <option value=Monday>Monday</option>");
                   out.println(" <option value=Tuesday>Tuesday</option>");
                   out.println(" <option value=Wednesday>Wednesday</option>");
                   out.println(" <option value=Thursday>Thursday</option>");
                   out.println(" <option value=Friday>Friday</option>");
                   out.println(" <option value=Saturday>Saturday</option>");
                   out.println(" <option value=Sunday>Sunday</option>");
                       
                   out.println("</select></td><td>");
                  
                   out.println("<br>&nbsp;&nbsp;Enter date <input type='text' name='doj' value='dd-mm-yy'></input>&nbsp;&nbsp;");
                   out.println("<button class='button button'><font face='verdana'>Submit </font></button>");
                   out.println("</td></tr></table>");
                   out.println("</form>");
                   
                    
    
 %>
        </table>  
        
        <fieldset>
            <legend>Schedule: </legend>
            <%
               Driver dr=new oracle.jdbc.driver.OracleDriver();
               DriverManager.registerDriver(dr); 
               Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1505408");
               Statement statement = con.createStatement();
               ResultSet rs = statement.executeQuery(" select from_place,to_place,day from bus_master");
               out.println("<table><th>Source</th><th>Destination</th><th>Day</th>");    
                while(rs.next())
                {
                String v1=rs.getString(1);
                String v2=rs.getString(2);
                String v3=rs.getString(3);
                
                out.println("<tr><td>"+v1+"  &nbsp;&nbsp; </td><td>"+v2+"  </td><td>"+v3+"    </td></tr>");
                }
                out.println("</table>");    
            %>
        
        </fieldset>
                  


<%---------------------------------------------%>

    </body>
</html>
