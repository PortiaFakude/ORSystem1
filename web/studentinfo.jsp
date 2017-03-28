<%-- 
    Document   : StudentInformation
    Created on : 03 Mar 2017, 1:14:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 

<!DOCTYPE html>
<html>
<head>

<title>Thuto Pele High School</title>
<link rel = "stylesheet" href = "css/learner.css"/>
<link rel = "stylesheet" href = "css/staffmembers.css"/>
<link rel = "stylesheet" href = "css/home.css"/>
<link rel="stylesheet" type="text/css" href="page.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
</script>
        
</head>
<body>

<div id ="header">
<img class = "logo" src = "images/logo.png"/>
<div id ="navbar">
<ul>
<li><a href="LearnerHome.jsp">Learner Home</a></li>
<li><a href=  "logout.jsp">Log out</a></li>
     
    </div>
  </div>


<style>
   
</style>


<div class ="main1">
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/thutopelehighschoollearner"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from learner;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>STUDENT INFORMATION</caption>
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Student Surname</th>
                    <th>Student Date of Birth</th>
                    <th>Student Gender</th>
                    <th>Student Contact Details</th>
                    <th>Student Physical Address</th>
                    <th>Student Parent Name & Surname</th>
                    <th>Student Parent Contact Details</th>
                    <th>Student Highest Grade Passed</th>
                    <th>Student Username</th>
                    <th>Student Password</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.learner_ID}"/></td>
                        <td><c:out value="${row.first_Name}"/></td>
                        <td><c:out value="${row.last_Name}"/></td>
                        <td><c:out value="${row.D_O_B}"/></td>
                        <td><c:out value="${row.gender}"/></td>
                        <td><c:out value="${row.cell_No}"/></td>
                        <td><c:out value="${row.address}"/></td>
                        <td><c:out value="${row.parent_Name}"/></td>
                        <td><c:out value="${row.parent_Contact}"/></td>
                        <td><c:out value="${row.highest_Grade_Passed}"/></td>
                        <td><c:out value="${row.username}"/></td>
                        <td><c:out value="${row.password}"/></td>
                        <td><a href="studentupdate.jsp?learner_ID=<c:out value="${row.learner_ID}"/>">Update</a></td>
                        
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="LearnerHome.jsp">Go Home</a>
    </center>

</div>
<div id ="footer">
 &copy; 2016 thutopele.com All Rights Reserved.
</div>
</body>
</html>
