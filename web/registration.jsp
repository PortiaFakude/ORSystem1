<html>
    <head>
        <title>reg</title>  
    </head>
    <body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String learnerID = request.getParameter("learnerID");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String cellNo = request.getParameter("cellNo");   
    String DOB = request.getParameter("DOB");
    String address = request.getParameter("address");
    String gender = request.getParameter("gender");
    String highestGradePassed = request.getParameter("highestGradePassed");
    String parentContact = request.getParameter("parentContact");
    String parentName = request.getParameter("parentName");
    String username = request.getParameter("username");
    String password= request.getParameter("password");
    
   /*int student_id=34;
   String fname="name";
   String lname="St";
   String user="erer";
   String password ="234wed";
   String confirmpass ="234wed";
   String address="p.o.ox";
   String gender="male";
   String city="city";
   String email="we@ewr.com";
   String DOB ="12-01-12";
   String cell ="08967";
   int course=2;
*/
   
   
   
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into learner values ('" + learnerID + "','" + firstName + "','" + lastName + "','" + cellNo + "','" + DOB + "','"
     + address + "','" + gender + "','" + highestGradePassed + "','" + parentContact + "','" + parentName + "','" + username + "'" + ",'" + password+"')");
    out.println("registerd");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>
</body>
</html>