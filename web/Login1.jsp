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

</head>
</form>
<body>
<div class="container" style="background-color: white"  >
<form action="/Account/Login" class="form-signin" method="post"><input name="__RequestVerificationToken" type="hidden" value="ZH1vuLjQG1eGMGVkbCdZa8ic65ioKSXV-b9-AdDrIqn1xxJgyeZ3cbWq-6QOpmEonRmcJFd0olJ-dbqYdWbKXB9I-PP9dhB_fXEraf_2qeM1" /> <img src="images/logo.png" style="width: 200px" />
<h2 class="form-signin-heading">Please select the login option</h2>
<a href="indexed.jsp" class="btn btn-lg btn-primary btn-block" >Learner Login</a>
<a href="index.jsp" class="btn btn-primary btn-lg btn-block ">Administrative Login</a>

</form> </div>

</body>
</html>

