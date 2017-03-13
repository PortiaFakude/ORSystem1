
<!DOCTYPE html>
<html>
<head>

<title>Thuto Pele High School</title>
<link rel = "stylesheet" href = "css/addsubjects.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    
<div id ="header">
<img class = "logo" src = "images/logo.png"/>
<div id ="navbar">
<ul>
<li><a href="TeacherHome.jsp">Teacher Home</a></li>

  </div>
       
    </div>
       
    

<style>
    
</style>
<div class ="main2">
    <form method="post" action="marks.jsp" onsubmit="return checkForm(this);">
    <fieldset>
        <div class="form-group">
            <h1>ADD MARK</h1>
            
            <input type="number" name="mark_Perc" id="mark_Perc" required="required"/>
         <input <a href=""class="btn btn-lg btn-primary btn-block"  value="Save" type="submit" onsubmit="">
       
        </div>
    </fieldset>
    </form>  
    <p><h1>Mark for the following subjects</h1> <br>
 
 	
 Items and activities which are part of the School Programme and which are covered by the school fees (unless otherwise stated):<br>
 Academic Pursuits which are part of the school programme:<br>

 <div>
<img class = "imagesidebar" src ="images/mark.jpg"/> 
<img class = "imagesidebar" src="images/mark1.png"/>
<img class = "imagesidebar" src="images/mark2.jpg"/>
<img class = "imagesidebar" src="images/mark3.jpg"/>
<img class = "imagesidebar" src="images/mark4.jpg"/>
<img class = "imagesidebar" src="images/mark5.jpg"/>
</div>

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

 <h1>Grade 8 & 9 </h1><br>

 Involve the following subjects:<br>


English<br>
Afrikaans<br>
Natural Science (NS)<br>
Mathematics<br>
Life Orientation (LO)<br>
Technology (Tech)<br>
Social Sciences (SS)<br>
Economic and Management Sciences (EMS<br>)
Creative Arts<br>

<h1>Grade 10 - 12</h1><br>

 Seven subjects have to be taken by the learners, 4 of which are compulsory and 3 of which are selected by the learner.  No specific groupings of subjects are required. The subjects to be taken are as follows:<br>

 

A compulsory learning component:<br>

English<br>
Afrikaans<br>
Mathematics or Mathematical Literacy<br>
Life Orientation<br>

Any three of the following, from the three learning fields (Groups)<br>


Art and Culture<br>
Visual Arts<br>

Business, Commerce, Management Sciences<br>
Accounting<br>
Business Studies<br>
Economics (Grade 10 - 2016)<br>

Human and Social Sciences<br>
History<br>
Geography<br>

Services<br>
Consumer Studies<br>

Physical, Mathematical, Computer and Life Sciences<br>
Computer Applications Technology (CAT)<br>
Information Technology (IT)<br>
Physical Sciences<br>
Life Sciences<br>

 Engineering and Technology<br>
Engineering Graphics and Design<br>
    </p>
 </div>
<div id ="footer">
 &copy; 2016 thutopele.com All Rights Reserved.
</div>

</body>
</html>

