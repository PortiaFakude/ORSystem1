<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PAGE</title>
    </head>
    <body>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/thutopelehighschoollearner"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from subject where subject_ID =?;
            <sql:param value="${param.subject_ID}" />
        </sql:query>
      
        <form action="updatesubjectdb.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Subject Information</caption>
                <tr>
                    <th>Subject Name</th>
                    
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.subject_ID}" name="subject_ID"/>
                            <input type="text" value="${row.subject_Name}" name="subject_Name"/></td>
                        
                       
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="AdminHome.jsp">Go Home</a>
        </form>
    </body>
</html>

