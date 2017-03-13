<%-- 
    Document   : LearnerLogin
    Created on : 30 Jun 2016, 12:37:40 PM
    Author     : Portia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot password|Login</title>
        <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="css/login.css" rel="stylesheet" />
        <link href="css/footer.css" rel="stylesheet" />
        <link href="css/learner.css" rel="stylesheet" />
        <link href="css/site.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" />
        
      
    </head>
    <body>
      
        <div class="container container_body" style="margin-bottom: 20px; width: 100%;">
<script language="javascript">
function fncSubmit()
{

	if(document.ForgotPassword.OldUsername.value == "")
	{
		alert('Please input old username');
		document.ForgotPassword.OldUsername.focus();
		return false;
	}	

	if(document.ForgotPassword.newusername.value == "")
	{
		alert('Please input new username');
		document.ForgotPassword.newusername.focus();		
		return false;
	}	

	if(document.ForgotPassword.conusername.value == "")
	{
		alert('Please input Confirm Username');
		document.ForgotPassword.conusername.focus();		
		return false;
	}	

	if(document.ForgotPassword.username.value != document.ForgotPassword.username.value)
	{
		alert('Confirm Username Not Match');
		document.ForgotPassword.conusername.focus();		
		return false;
	}	

		document.ForgotPassword.submit();
}
</script>
<form name="ForgotPassword" method="post" action="ForgotPA.jsp" OnSubmit="return fncSubmit();">
 

<body>
<br>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          
                          <h3 class="text-center">Forgot password?</h3>
                          <p style="color:red";>Enter the username below.</p>
                            <div class="panel-body"> 
                                
<form action="ForgotP.jsp" method="post"><input name="__RequestVerificationToken" type="hidden" value="" /><div class="validation-summary-valid" data-valmsg-summary="true"><ul><li style="display:none"></li>
</ul></div>                                 <fieldset>
                                    
                                     <legend></legend>
                                    <div class="form-group">
                                    <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"> </i></span>
                                            <input type="text" placeholder="Username" name="username" id="username" class="form-control"/>
                                         
                                            </div>
                                            </div>
                                            <div class="form-group">
                                                <input <a href=""class="btn btn-lg btn-primary btn-block" value="Recover Account" type="submit">
                                            
                                            </div>
                                 </fieldset>
</form>                            </div>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </body>
</html>
  </div>
    </div>

    <footer class="footer" style="text-align: center">
        <p>&copy; 2016 - Thuto Pele High School</p>
    </footer>

</body>
</html>



