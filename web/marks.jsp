<html>
    <head>
        <title>Add marks</title>  
    </head>
    <body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    int mark_ID = 0;
    String mark_Perc = request.getParameter("mark_Perc");
    String subject_ID = request.getParameter("subject_ID");
     
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into marks values ("+mark_ID+",'" + mark_Perc+"','"+ subject_ID + "')");
    //int u = st.executeUpdate("insert into subject values ("+subject_ID+",'" + subject_Name+"')");
    //out.println("registerd");
    if (i > 0) {
        //session.setAttribute("userid", subjectID);
        response.sendRedirect("EnterMarks.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("EnterMarks.jsp");
   }
%>
        
</body>
</html>