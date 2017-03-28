<%-- 
    Document   : learnerinfo
    Created on : Mar 23, 2017, 2:59:47 PM
    Author     : reverside
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href = "css/home.css"/>
        <title>Learner Details</title>
    </head>
    <body>
        <h1>LEARNER DETAILS</h1>
          
           <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>

            <%
            //String ID = request.getParameter("mark_ID");
            String DriverName = "com.mysql.jdbc.Driver";
            String ConnectionUrl = "jdbc:mysql://localhost:3306/";
            String DbName = "thutopelehighschoollearner";
            String UserId = "root";
            String password2 = "";

            try {
            Class.forName(DriverName);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }

            Connection connection2 = null;
            Statement statement2 = null;
            ResultSet resultSet2 = null;
            %>
           
            
            <tr>

            </tr>
            
           
            
            <%
            try{ 
            connection2 = DriverManager.getConnection(ConnectionUrl+DbName, UserId, password2);
            statement2=connection2.createStatement();
            String sql ="SELECT m.first_Name , m.last_Name , m.highest_Grade_Passed , m.D_O_B ,m.cell_No FROM learner AS m";
            
 
            resultSet2 = statement2.executeQuery(sql);
            while(resultSet2.next()){
            %>
            

            

            
            <b>LEARNER NAME                : <%=resultSet2.getString("first_Name") %></b>
            <br><b>LEARNER SURNAME         : <%=resultSet2.getString("last_Name") %></b>
            <br><b>LEARNER DATE OF BIRTH   : <%=resultSet2.getString("D_O_B") %></b>
             <br><b>LEARNER CONTACT DETAILS   : <%=resultSet2.getString("cell_No") %></b>
            <br><b>LEARNER GRADE           : <%=resultSet2.getString("highest_Grade_Passed") %></b>
            
            
            <% 
            }

            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
     
           
            <table align="center" cellpadding="15" cellspacing="40" border="15">
            <tr>

            </tr>
            
         
                
                <td><b>SUBJECT NAME</b></td>
                <td><b>MARK PERCENTAGE</b></td>
                
                
     
           <%
            try{ 
            connection2 = DriverManager.getConnection(ConnectionUrl+DbName, UserId, password2);
            statement2=connection2.createStatement();
            String sql ="SELECT m.mark_ID , m.mark_Perc,s.subject_Name FROM marks AS m  INNER JOIN subject  AS s ON  m.subject_ID = s.subject_ID ORDER BY m.mark_ID";
            
 
            resultSet2 = statement2.executeQuery(sql);
            while(resultSet2.next()){
            %>
            

            

            <tr>
       
            
            <td><%=resultSet2.getString("subject_Name") %></td>
            <td><%=resultSet2.getString("mark_Perc") %></td>
            

            </tr>

             
            <% 
            }

            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>
            
        <a href="LearnerHome.jsp">Go Home</a>
    </body>
</html>




