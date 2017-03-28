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
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE learner SET first_Name=?, last_Name=? ,  D_O_B=? , gender=?, cell_No=? , address=? , parent_Name=? , parent_Contact=? , highest_Grade_Passed=? ,username=?, password=?
            WHERE learner_ID='${param.learner_ID}'
            <sql:param value="${param.first_Name}" />
            <sql:param value="${param.last_Name}" />
            <sql:param value="${param.D_O_B}" />
            <sql:param value="${param.gender}" />
            <sql:param value="${param.cell_No}" />
            <sql:param value="${param.address}" />
            <sql:param value="${param.parent_Name}" />
            <sql:param value="${param.parent_Contact}" />
            <sql:param value="${param.highest_Grade_Passed}" />
            <sql:param value="${param.username}" />
            <sql:param value="${param.password}" />

        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="LearnerHome.jsp">Go Home</a>          
        </c:if>
    </body>
</html>
