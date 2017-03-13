<%-- 
    Document   : SubjectInformation
    Created on : 06 Mar 2017, 4:24:46 PM
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
<li><a href="AdminHome.jsp">Admin Home</a></li>
<li><a href="ChangePasswordAdmin.jsp">Change password</a></li>
<li><a href="AdminReg.jsp">Register student</a></li>
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
            SELECT * from subject;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>SUBJECT INFORMATION</caption>
                <tr>
                    <th>Subject ID</th>
                    <th>Subject Name</th>
                    
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.subject_ID}"/></td>
                        <td><c:out value="${row.subject_Name}"/></td>
                        
                        <td><a href="updatesubjects.jsp?subject_ID=<c:out value="${row.subject_ID}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletesubdb.jsp?subject_ID=<c:out value="${row.subject_ID}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="AdminHome.jsp">Go Home</a>
    </center>

</div>
<div id ="footer">
 &copy; 2016 thutopele.com All Rights Reserved.
</div>
</body>
</html>

