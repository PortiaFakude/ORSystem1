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
    String adminID = request.getParameter("username");
    session.putValue("adminID", adminID);
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from administrator where username='" + adminID + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("adminID", adminID);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
      response.sendRedirect("AdminHome.jsp");
         //out.println("Invalid password <a href='Login1.jsp'>try again</a>");
    }  else  {
      out.println("Invalid username or password <a href='Login1.jsp'>try again</a>");
               //response.sendRedirect("Home.html");
        //response.sendRedirect("AdminHome.jsp");
    }
%>
</body>
</html>

