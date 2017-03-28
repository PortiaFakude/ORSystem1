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
            SELECT * from marks where mark_ID =?;
            <sql:param value="${param.mark_ID}" />
        </sql:query>
      
        <form action="updatemarksdb.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Marks</caption>
                <tr>
                    <th>Mark Percentage</th>
                    
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.mark_ID}" name="mark_ID"/>
                            <input type="text" value="${row.mark_Perc}" name="mark_Perc"/></td>
                        
                       
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="TeacherHome.jsp">Go Home</a>
        </form>
    </body>
</html>

