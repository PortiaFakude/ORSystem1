<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            body{background-image:url("images/img16.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 1500px;
            }
            table{
                margin-top:200px;
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
    </head>
    <body background='images/img16.jpg'>
        <form method="post" action="login2.jsp">
            <center>
            <table border="8" width="40%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2"><h2>LOGIN HERE</h2></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>































































































