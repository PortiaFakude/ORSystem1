<%@ page import="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

</head>
<body>


<%
    String learner_ID = request.getParameter("username");
    session.putValue("learner_ID", learner_ID);
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from learner where username='" + learner_ID + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("learner_ID", learner_ID);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("LearnerHome.jsp");
        //out.println("Invalid password <a href='Login1.jsp'>try again</a>");
    } else {
        out.println("Invalid password or username <a href='Login1.jsp'>try again</a>");
        //response.sendRedirect("LearnerHome.html");     
    }
%>
</body>
</html>
