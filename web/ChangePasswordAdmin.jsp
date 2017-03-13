<html>
<head>
<title>Change password|Login</title>
<style>
            body{background-image:url("images/img16.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 5000px;
            }
            table{
                margin-top:100px;
                color:black;
            }
            input{
                height: 20px;
                
            }
            #reg{
                color:ghostwhite;
                
            }
            .reg{
                color:chartreuse; 
            }
            
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<h2 align="center"><font color="white" font-size:120px>Change your password here</h2>
<body>
<script language="javascript">
function fncSubmit()
{

	if(document.ChangePasswordForm.OldPassword.value == "")
	{
		alert('Please input old password');
		document.ChangePasswordForm.OldPassword.focus();
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value == "")
	{
		alert('Please input new Password');
		document.ChangePasswordForm.newpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.conpassword.value == "")
	{
		alert('Please input Confirm Password');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
	{
		alert('Confirm Password Not Match');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

		document.ChangePasswordForm.submit();
}
</script>
<form name="ChangePasswordForm" method="post" action="changePWDAdmin.jsp" OnSubmit="return fncSubmit();">
 
  <table border="1" width="40%" align="center" >
    
      <tr>
          <td><font color="white">Old Password</td>
       <TD><input name="OldPassword" type="password" id="OLDpwd" size="20"></td>
      </tr>
      <tr>
          <td><font color="white">New Password</td>
        <td><input name="newpassword" type="password" id="newpassword">
        </td>
      </tr>
      <tr>
          <td><font color="white">Confirm Password</td>
        <td><input name="conpassword" type="password" id="conpassword">
        </td>
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Save"></td>
      </tr>
   
  </table>
  </form>
</body>
</html>