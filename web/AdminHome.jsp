<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
<head>

<title>Thuto Pele High School</title>
<link rel = "stylesheet" href = "css/learner.css"/>
<link rel = "stylesheet" href = "css/staffmembers.css"/>
<link rel = "stylesheet" href = "css/home.css"/>
<link rel="stylesheet" type="text/css" href="page.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div id ="header">
<img class = "logo" src = "images/logo.png"/>
<div id ="navbar">
<ul>
<li><a href="AdminReg.jsp">Register student</a></li>
<li><a href="StudentInformation.jsp">View student information</a></li>
<li><a href ="AddSubject.jsp">Add student subject</a></li>
<li><a href ="SubjectInformation.jsp">View subjects</a></li>
<li><a href="ChangePasswordAdmin.jsp">Change password</a></li>
<li><a href=  "logout.jsp">Log out</a></li>
</ul>
  </div>
       
    </div>

<style>
<%
    String username = request.getParameter("username");
    session.putValue("username", username);
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from administrator");
%>    
</style>
<div class ="main1">
<p>2017 CALENDAR<img  src = "images/public.gif" width="700" height="500" align="middle"/>2017 CALENDAR</p> 
</div>
<div id ="footer">
 &copy; 2016 thutopele.com All Rights Reserved.
</div>
</body>
</html>
