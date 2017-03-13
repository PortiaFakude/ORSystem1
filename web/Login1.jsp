<%-- 
    Document   : Login1
    Created on : 13 Jun 2016, 11:28:37 AM
    Author     : Portia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
<form method="post" action="login.jsp">
<title>Login Page</title>
<link href="css/login.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/footer.css" rel="stylesheet" />
<link href="css/learner.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="page.css" />
<style>

body{background-image:url("images/img16.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 5000px;
            }
</style>            

</head>
</form>
<body>
    
 <div class="page">
				<table style="width: 100%; border: none; background: #000066; color: #ffffff; font-weight: bold;">
					<tr>
						<td style="width: 3%;">T</td>
						<td style="width: 3%;">H</td>
						<td style="width: 3%;">U</td>
						<td style="width: 3%;">T</td>
						<td style="width: 3%;">O</td>
						<td style="width: 3%;"></td>
						<td style="width: 3%;">P</td>
						<td style="width: 3%;">E</td>
						<td style="width: 3%;">L</td>
						<td style="width: 3%;">E</td>
						<td style="width: 3%;"></td>
						<td style="width: 3%;">H</td>
						<td style="width: 3%;">I</td>
						<td style="width: 3%;">G</td>
						<td style="width: 3%;">H</td>
						<td style="width: 3%;"></td>
						<td style="width: 3%;">S</td>
                                                <td style="width: 3%;">C</td>
                                                <td style="width: 3%;">H</td>
                                                <td style="width: 3%;">O</td>
                                                <td style="width: 3%;">O</td>
                                                <td style="width: 3%;">L</td>
					</tr>
				</table>

				<div class="header">
					<a class="logo" href="#"></a>
				</div>
   
<div class="container" style="background-color: white"  >
<form action="/Account/Login" class="form-signin" method="post"><input name="__RequestVerificationToken" type="hidden" value="" /> 
<h2 class="form-signin-heading">Please select the login option</h2>
<a href="LearnerLogin.jsp" class="btn btn-lg btn-primary btn-block" >Learner Login</a>
<a href="AdminLogin.jsp" class="btn btn-primary btn-lg btn-block ">Administrative Login</a>
<a href="TeacherLogin.jsp" class="btn btn-primary btn-lg btn-block ">Teacher Login</a>

</form> </div>

</body>
</html>

