<html>
    <head>
        <title>Add subjects</title>  
    </head>
    <body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    int subject_ID = 0;
    String subject_Name = request.getParameter("subject_Name");
    
     
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into subject values ("+subject_ID+",'" + subject_Name+"')");
    //out.println("registerd");
    if (i > 0) {
        //session.setAttribute("userid", subjectID);
        response.sendRedirect("AddSubject.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("AddSubject.jsp");
   }
%>
        
</body>
</html>