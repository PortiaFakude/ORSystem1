<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	String OldPassword = request.getParameter("OldPassword");
	String Newpass = request.getParameter("newpassword");
	String conpass = request.getParameter("conpassword");
	
	
    Connection con = null;
    Statement st = null;
	String pass = "";
	int id = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/thutopelehighschoollearner";
		con = DriverManager.getConnection(url, "root", "");
		st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT username, password FROM learner where password= '"+ OldPassword + "'");
		if (rs.next()) {			
			pass = rs.getString("password");
		}		
		if(Newpass.equals(conpass))
		{
		if (pass.equals(OldPassword)) {
			st = con.createStatement();
			int i = st.executeUpdate("UPDATE learner SET password='"+ Newpass + "'WHERE password='" + OldPassword + "'");
			//out.println("Password changed successfully");
                        response.sendRedirect("LearnerLogin.jsp");
			st.close();
			con.close();
		} else {
			out.println("Old Password doesn't match");
                        response.sendRedirect("ChangePassword.jsp");
                        
		}
		}/*else{
			out.println("new password and confirm new password is not matching");
		}*/
	} catch (Exception e) {
		out.println(e);
	}
%>

