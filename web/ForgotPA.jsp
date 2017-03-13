<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	String OldUsername = request.getParameter("OldUsername");
	String newuser = request.getParameter("newusername");
	String conpass = request.getParameter("conusername");
        String username = request.getParameter("username");

	
    Connection con = null;
    Statement st = null;
	String pass = "";
	int id = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/thutopelehighschoollearner";
		con = DriverManager.getConnection(url, "root", "");
		st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT password FROM administrator WHERE username='"+ username + "'");
		if (rs.next()) {			
			pass = rs.getString("password");
                        out.println("Password retrieved, your password is : "+ pass);
                        out.println("<a Password retrieved, your password is : + pass  href='AdminLogin.jsp'>Log In</a>");
                        //<a href="AdminHome.jsp">Go Home</a>
		}
                else
                {
                    out.println("user not found");
                }
               /*
		if(newuser.equals(conpass))
		{
		if (pass.equals(OldUsername)) {
			st = con.createStatement();
			int i = st.executeUpdate("SELECT username FROM  learner WHERE username='" + OldUsername + "'");
			out.println("Username retrieved successfully");
			st.close();
			con.close();
		} else {
			out.println("Old username doesn't match");
		}
                
		}*//*else{
			out.println("new password and confirm new password is not matching");
		}*/
	} catch (Exception e) {
		out.println(e);
	}
%>