<html>
    <head>
        <title>reg</title>  
    </head>
    <body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    int learner_ID = 0;
    String first_Name = request.getParameter("first_Name");
    String last_Name = request.getParameter("last_Name");
    String D_O_B = request.getParameter("D_O_B");
    String gender = request.getParameter("gender");
    String cell_No = request.getParameter("cell_No");   
    String address = request.getParameter("address");
    String parent_Name = request.getParameter("parent_Name");
    String parent_Contact = request.getParameter("parent_Contact");
    String highest_Grade_Passed = request.getParameter("highest_Grade_Passed");
    String username = request.getParameter("username");
    String password= request.getParameter("password");
    
 
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into learner values ("+learner_ID+",'" + first_Name + "','" + last_Name + "','" + D_O_B + "','" + gender + "','"
     + cell_No + "','" + address + "','" + parent_Name + "','" + parent_Contact + "','" + highest_Grade_Passed + "','" + username + "'" + ",'" + password+"')");
    out.println("registerd");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Login1.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>
        
</body>
</html>