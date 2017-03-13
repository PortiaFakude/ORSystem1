<html>
    <head>
        <title>reg</title>  
    </head>
    <body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    int teacher_ID = 0; 
    String teacher_Name = request.getParameter("teacher_Name");
    String gender = request.getParameter("gender");
    String D_O_B = request.getParameter("D_O_B");
    String address = request.getParameter("address");
    String cell_No = request.getParameter("cell_No"); 
    String email = request.getParameter("email");
    String username = request.getParameter("username");
    String password= request.getParameter("password");
    
 
    
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into tblteacher values ("+teacher_ID+",'" + teacher_Name + "','" + gender + "','" + D_O_B + "','" + address + "','"
     + cell_No + "','" + email + "','" + username + "'" + ",'" + password+"')");
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