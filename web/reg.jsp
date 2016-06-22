<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    
    <style>
        body{background-image:url("images/img16.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 120%;
            }
            table{
                margin-top:50px;
                color:black;
            }
            input{
                height: 20px;
                
            }
            #log{
                color:ghostwhite;
                
            }
            .log{
                color:chartreuse; 
            }
            
    </style>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><font color="white">Please enter your information here</th>
                    </tr>
                </thead>
                    <tr>
                        <td><font color="white">LearnerID</td>
                        <td><input type="text" name="learnerID" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">First name</td>
                        <td><input type="text" name="firstName" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Last name</td>
                        <td><input type="text" name="lastName" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Username</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Password</td>
                        <td><input type="text" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Confirm password</td>
                        <td><input type="text" name="cmfrmpass" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Address</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Gender</td>
                        <td><input type="text" name="gender" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Highest grade passed</td>
                        <td><input type="text" name="highestGradePassed" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><font color="white">Parent Contact</td>
                        <td><input type="text" name="parentContact" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Parent Name</td>
                        <td><input type="text" name="parentName" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color="white">Cellphone number</td>
                        <td><input type="number" name="cellNo" value="" /></td>
                    </tr>
                    
                        <tr>
                        <td><font color="white">Date of birth</td>
                        <td><input type="text" name="DOB" value="" /></td>
                    </tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>