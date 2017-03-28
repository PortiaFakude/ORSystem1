<%-- 
    Document   : LearnerHome1
    Created on : 20 Mar 2017, 11:33:27 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
<head>

<title>Thuto Pele High School</title>
<link rel = "stylesheet" href = "css/learner.css"/>
<link rel = "stylesheet" href = "css/staffmembers.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div id ="header">
<img class = "logo" src = "images/logo.png"/>
<div id ="navbar">
<ul>
<li><a href = "index.html">Home</a></li>
<li><a href = "AboutUs.html">About Us</a></li>
<li><a href = "ContactUs.html">Contact Us</a></li>
<li><a href = "studentinfo.jsp">Update your details</a></li>

<li><a href=  "logout.jsp">(Log out)</a></li>
</ul>   
</div>
</div>

   
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40"><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252"><title>TTPH</title><!-- InstanceBegin template="/Templates/home_template.dwt" codeOutsideHTMLIsLocked="false" --><!-- InstanceBeginEditable name="doctitle" --><!-- InstanceEndEditable -->

<meta content="Microsoft FrontPage 12.0" name="GENERATOR">

<style>
<!--
h1
	{margin-bottom:.0001pt;
	text-align:center;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Arial Narrow";
	font-weight:normal; margin-left:0cm; margin-right:0cm; margin-top:0cm}
h4
	{margin-bottom:.0001pt;
	text-align:center;
	page-break-after:avoid;
	font-size:10.0pt;
	font-family:"Arial Narrow";
	margin-left:0cm; margin-right:0cm; margin-top:0cm}

.roundcorner { background:transparent url('http://mail.yimg.com/us.yimg.com/i/us/pim/th/el/blue/rcstrip_01.png') no-repeat scroll -100px 0px; }
.roundcorner { background:transparent url('http://mail.yimg.com/us.yimg.com/i/us/pim/th/el/blue/rcstrip_01.png') no-repeat scroll -100px 0px; }
 table.MsoNormalTable
	{mso-style-parent:"";
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
.auto-style12 {
	color: #FFFFFF;
}
.auto-style13 {
	color: #FFCC66;
}
.auto-style14 {
	background-color: #13233C;
}
.auto-style16 {
	font-family: Garamond;
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style17 {
	font-family: Garamond;
	font-size: small;
	color: #FFFFFF;
}
.auto-style18 {
	font-family: Garamond;
	font-size: small;
}
.auto-style4 {
	font-family: "Century Gothic";
}
.auto-style19 {
	text-align: center;
}
.modal-header, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }

-->
<%
    String fname = request.getParameter("first_Name");
    session.putValue("first_Name", fname);
    String lname = request.getParameter("last_Name");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thutopelehighschoollearner",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from learner");
%>    
</style>
</head>
<body vlink="#000066" alink="#000000" link="#000066" style="background-color:#13233C">
<center>
  <table cellspacing="0" cellpadding="0" width="722" border="0">
    <tbody> 
    <tr> 
      <td width="722">
      
      
    </tr>
    <tr>
      <td width="722" align="center" height="18" class="auto-style14">
		<font face="Century Gothic" size="2"><strong style="font-weight: 400">
     
    
    </tr>
    <tr> 
      <td width="722">
        <!-- ImageReady Slices (Untitled-2) -->
        <table cellspacing="0" cellpadding="0" width="720" border="0">
          <tbody> 
          <tr> 
            <td valign="top" align="middle" bgcolor="#ffffff"> 
              <table cellpadding="5" width="715" border="0">
                <tbody> 
                <tr> 
                  <td width="717">

                    <!-- InstanceBeginEditable name="main body" -->
                    <table width="1000" border="0" height="328">
                      <tbody> 
                    
                      <tr valign="left"> 
                        <td width="300" bgcolor="#ededed" height="196"> 
                          <p style="margin-top: 0; margin-bottom: 0" align="left">
                          &nbsp;</p>
							<p style="margin-top: 0; margin-bottom: 0" align="left">

<div id ="navbar1">
    <button type="button" class="btn btn-default btn-lg" id="myBtn1">Subjects</button>                     
    <button type="button" class="btn btn-default btn-lg" id="myBtn">School teachers</button>
    <button type="button" class="btn btn-default btn-lg" id="myBtn2">Marks</button>

    
    <ul>
        <li><a href ="ChangePassword.jsp">Change password</a></li>
    </ul>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <marquee behaviour = "scroll" direction = "left" <h6><span class="glyphicon glyphicon-lock"></span>STAFF MEMBERS/TEACHERS</h6></marquee>
          <img class = "imagesidebar" src = "images/principal.jpg" width="500" height="200"/> 
          <img class = "imagesidebar" src = "images/t1.PNG"  width="500" height="200"/> 
          <img class = "imagesidebar" src = "images/scienceteacher.PNG"  width="500" height="200"/> 
          <img class = "imagesidebar" src = "images/naturalscience.PNG"  width="500" height="200"/> 
          <img class = "imagesidebar" src = "images/lifeorientation.PNG"  width="500" height="200"/> 
          <img class = "imagesidebar" src = "images/geography.PNG"  width="500" height="200"/> 
          <img class = "imagesidebar" src = "images/englishteacher.PNG"  width="500" height="200"/> 
         
          
          
        </div>
        
       
      </div>
      
    </div>
 </div>
</div> 

<!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <marquee behaviour = "scroll" direction = "left" <h5><span class="glyphicon glyphicon-lock"></span>REGISTERED SUBJECTS</h5></marquee>
          
           <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>

            <%
            String id = request.getParameter("subject_ID");
            String driverName = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "thutopelehighschoollearner";
            String userId = "root";
            String password = "";

            try {
            Class.forName(driverName);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            %>
           
            <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr>

            </tr>
            
            </tr>
                
                <td><b>subject ID</b></td>
                <td><b>subject Name</b></td>
               
     
            <%
            try{ 
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM subject";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
            %>
            

            

            <tr>
            <td><%=resultSet.getString("subject_ID") %></td>
            <td><%=resultSet.getString("subject_Name") %></td>

            </tr>


            <% 
            }

            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>

          
        </div>
        
       
      </div>
      
    </div>
  </div>
 
<!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>         
          <marquee behaviour = "scroll" direction = "left" <h5><span class="glyphicon glyphicon-lock"></span>MARKS</h5></marquee>
          
           <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.Connection"%>

            <%
            //String ID = request.getParameter("mark_ID");
            String DriverName = "com.mysql.jdbc.Driver";
            String ConnectionUrl = "jdbc:mysql://localhost:3306/";
            String DbName = "thutopelehighschoollearner";
            String UserId = "root";
            String password2 = "";

            try {
            Class.forName(DriverName);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }

            Connection connection2 = null;
            Statement statement2 = null;
            ResultSet resultSet2 = null;
            %>
           
            <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr>

            </tr>
            
            </tr>
                
                <td><b>mark ID</b></td>
                <td><b>mark percentage</b></td>
                <td><b>subject name</b></td>
                
     
           <%
            try{ 
            connection2 = DriverManager.getConnection(ConnectionUrl+DbName, UserId, password2);
            statement2=connection2.createStatement();
            String sql ="SELECT m.mark_ID , m.mark_Perc,s.subject_Name FROM marks AS m  INNER JOIN subject  AS s ON  m.subject_ID = s.subject_ID ORDER BY m.mark_ID";
            
 
            resultSet2 = statement2.executeQuery(sql);
            while(resultSet2.next()){
            %>
            

            

            <tr>
            <td><%=resultSet2.getString("mark_ID") %></td>
            <td><%=resultSet2.getString("mark_Perc") %></td>
            <td><%=resultSet2.getString("subject_Name") %></td>
            

            </tr>

             
            <% 
            }

            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>

          
        </div>
        
       
      </div>
      
    </div>
  </div>
                
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>

<script>
$(document).ready(function(){
    $("#myBtn1").click(function(){
        $("#myModal1").modal();
    });
});
</script>

<script>
$(document).ready(function(){
    $("#myBtn2").click(function(){
        $("#myModal2").modal();
    });
});
</script>

</style>
</head>
<body>


</div>
 </div>   
                          
                        <td width="4" bgcolor="#ffffff"> 
                          &nbsp;</td>
                        <td width="600" bgcolor="#ffffff" height="196"> 
							<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0" align="center">
							&nbsp;</p>
							<p class="MsoNormal" align="center" style="text-align: center; margin-top: 0; margin-bottom: 0">
							<font size="4">
							<span lang="EN-US" style="font-family: Garamond; text-decoration: underline">
							<b>
							EXAM TIME TABLE 20<span lang="en-za">16</span></b></span></font></p>
							<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
							<span lang="EN-US" style="font-size:9.0pt;font-family:Century Gothic;">
							&nbsp;</span></p>
							<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
							<div align="center">
								<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: medium none" bgcolor="#99CCFF">
									<tbody><tr>
										<td width="109" valign="top" style="width: 81.4pt; border: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#003366">
										<p class="MsoNormal" align="center" style="text-align: left; margin-top: 0; margin-bottom: 0">
										<b>
										<span lang="EN-US" style="font-family: Garamond; font-variant: small-caps">
										<font size="3" color="#FFFFFF">Day and 
										time</font></span></b></p></td>
										<td width="189" valign="top" style="width: 5.0cm; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#003366">
										<p class="MsoNormal" align="center" style="text-align: center; margin-top: 0; margin-bottom: 0">
										<b>
										<span lang="EN-US" style="font-family: Garamond; font-variant: small-caps">
										<font size="3" color="#FFFFFF">Event</font></span></b></p></td>
										<td width="142" valign="top" style="width: 106.3pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#003366">
										<p class="MsoNormal" align="center" style="text-align: center; margin-top: 0; margin-bottom: 0">
										<b>
										<span lang="EN-US" style="font-family: Garamond; font-variant: small-caps">
										<font size="3" color="#FFFFFF">Venue</font></span></b></p></td>
									</tr>
									<tr style="height: 18.0pt">
										<td width="109" valign="top" style="width: 81.4pt; height: 18.0pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<b>
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">Friday 
										<span lang="en-za">4</span>/3</font></span></b></p></td>
										<td width="189" valign="top" style="width: 5.0cm; height: 18.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">&nbsp;</font></span></p></td>
										<td width="142" valign="top" style="width: 106.3pt; height: 18.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">&nbsp;</font></span></p></td>
									</tr>
									<tr style="height: 12.0pt">
										<td width="109" valign="top" style="width: 81.4pt; height: 12.0pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">1<span lang="en-za">0</span>:<span lang="en-za">3</span>0
										</font></span></p></td>
										<td width="189" valign="top" style="width: 5.0cm; height: 12.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">Physical Science June Exam</font></span></p></td>
										<td width="142" valign="top" style="width: 106.3pt; height: 12.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF"> 
										TPHS Hall</font></span></p></td>
									</tr>
									<tr style="height: 13.5pt">
										<td width="109" valign="top" style="width: 81.4pt; height: 13.5pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">1<span lang="en-za">1</span>:<span lang="en-za">3</span>0</font></span></p></td>
										<td width="189" valign="top" style="width: 5.0cm; height: 13.5pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">History June Exam</font></span></p></td>
										<td width="142" valign="top" style="width: 106.3pt; height: 13.5pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" bgcolor="#336666">
										<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0">
										<span lang="EN-US" style="font-family: Garamond">
										<font size="3" color="#FFFFFF">TPHS Hall 
										 </font></span></p></td>
									</tr>
									
									
								</tbody></table>
							</div>
							
							<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0" align="center"><br/>
							<u><b><font face="Garamond" size="4">GRADE 9 ? 
							IMPORTANT NOTICE</font></b></u></p>
                                                       
							<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0" align="center">&nbsp;</p>
							<p style="margin-top: 0; margin-bottom: 0" align="justify">
							<span style="font-family: Garamond">We would like to 
							give very early warning to the parents of our Grade 
							9 learners that there is a compulsory Subject Choice 
							Meeting for parents and girls at the end of Term 3.<br>
							<br>
							It is vital that parents attend this meeting in 
							order to fully participate in this very important 
							decision that your daughter will need to make at 
							that time. While it may seem very early in the year 
							to be writing to you about this; it is really 
							important that your daughter begins to think about 
							her future subjects NOW. Not least of all because 
							many of our subjects are limited by Grade 9 marks in 
							their feeder subjects. So, for example, if your 
							daughter wishes to do Physical Sciences, she must 
							achieve at least 60% for Maths in Grade 9. Class 
							size, of course, is also a limiting factor. Last 
							year, for instance, there was much competition for 
							spaces in the Life Sciences classes. <br>
							<br>
							So... please start talking to your daughter as soon 
							as possible about her dreams and aspirations. If 
							there is a subject she is desperate to do, the best 
							thing she can do is to work as hard as she possibly 
							can NOW to get the best marks she possibly can in 
							the feeder subjects to ensure that she will not be 
							disappointed at the end of the year. <br>
							<br>
							Boys and girls are welcome to ask me specifics about feeder 
							subjects and which subjects are historically the 
							most difficult to get into.</span></p>
							<p style="margin-top: 0; margin-bottom: 0" align="justify">
							&nbsp;</p>
							<p style="margin-top: 0; margin-bottom: 0" align="right">
							<span style="font-family: Garamond; font-weight: 700">
							<font size="2">- Mrs Maruping(Principal)</font></span></p>
							<p style="margin-top: 0; margin-bottom: 0" align="justify">
							&nbsp;</p>
                          <hr color="#006699" width="80%" size="1">
  							<p style="margin-top: 0; margin-bottom: 0" align="justify">
							<font face="Garamond"><br>
&nbsp;</font></p>
</div>


</div>                         
</td>
                     
      </td>
    </tr>
    </tbody>
  </table>
<!-- InstanceEnd --></center></body></html>


<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("imagesidebar");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2500);    
}
</script>


</body>

</html>
