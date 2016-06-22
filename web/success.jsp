<!--%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%-->
<html>
    <head>
        <title>
            home
        </title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <style>
            body{background-image:URL('cti logo.jpg');
            background-repeat: no-repeat;
            background-position: center;
            background-size: 100%;
            }
        </style>
    </head>
    <body>
        <div id="top">
            <div id="logo">  <h1>CTI online Register</h1>   </div> 
        </div>
        <div id="nav">
                <ul id="ulnav">
                    <li id="linav"><a href="">HOME</a></li>
                    <li id="linav"><a href="">CONTACT</a></li>
                    <li id="linav"><a href="">ABOUT US</a></li>
                    <li id="linav"><a href="">COURSE</a></li>
                    <li id="linav"><a href="">FEEDBACK</a></li>
                    
                    
                </ul>
            </div>

<center>
    
</center><br/>

<!--%} else {
%-->
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<!--%
    }
%-->
</body>
</html>