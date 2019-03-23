

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

    <body vlink="black" bgcolor="orange" >

  
    <%
    String o1=null;
    Connection cn;
        Statement st;
        ResultSet rs;
        float f1;
        PreparedStatement ps ;
    %>
       
    <%    
        
        
        Driver dr=new oracle.jdbc.driver.OracleDriver();
        DriverManager.registerDriver(dr); 
        cn=DriverManager.getConnection("jdbc:oracle:thin:@http://192.168.1.2:8080/home/pi/Documnets/database");
        		st=cn.createStatement();
                        rs=st.executeQuery("select * from STUDENT_REG;");
%>

<%---------------------------------------------%>

    </body>
</html>
