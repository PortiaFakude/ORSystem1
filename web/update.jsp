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
            SELECT * from learner where learner_ID =?;
            <sql:param value="${param.learner_ID}" />
        </sql:query>
      
        <form action="updatedb.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Learner Information</caption>
                <tr>
                    <th>Learner Name</th>
                    <th>Learner Surname</th>
                    <th>Learner Date of Birth</th>
                    <th>Learner Gender</th>
                    <th>Learner Cell phone Number</th>
                    <th>Learner Physical Address</th>
                    <th>Learner Parent Name</th>
                    <th>Learner Parent Contact</th>
                    <th>Learner Highest Grade Passed</th>
                    <th>Learner Username</th>
                    <th>Learner Password</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.learner_ID}" name="learner_ID"/>
                            <input type="text" value="${row.first_Name}" name="first_Name"/></td>
                        <td><input type="text" value="${row.last_Name}" name="last_Name"/></td>
                        <td><input type="text" value="${row.D_O_B}" name="D_O_B"/></td>
                        <td><input type="text" value="${row.gender}" name="gender"/></td>
                        <td><input type="text" value="${row.cell_No}" name="cell_No"/></td>
                        <td><input type="text" value="${row.address}" name="address"/></td>
                        <td><input type="text" value="${row.parent_Name}" name="parent_Name"/></td>
                        <td><input type="text" value="${row.parent_Contact}" name="parent_Contact"/></td>
                        <td><input type="text" value="${row.highest_Grade_Passed}" name="highest_Grade_Passed"/></td>
                        <td><input type="text" value="${row.username}" name="username"/></td>
                        <td><input type="text" value="${row.password}" name="password"/></td>
                       
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="AdminHome.jsp">Go Home</a>
        </form>
    </body>
</html>

