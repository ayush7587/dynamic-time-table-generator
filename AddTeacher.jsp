<%-- 
    Document   : AddTeacher
    Created on : 17 Feb, 2019, 3:27:59 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/Registration.css" type="text/css">
        <link rel="stylesheet" href="Resources/bootstrap/css/bootstrap.min.css">
        <script src="script/jquery.js"></script>
        <script src="script/AddTeacher.js"></script>
        
        <title>Add Teacher</title>
    </head>
    <body>
        <div class="container">
            <div class="card card-container">
                <form method="" action="AddTeacherServlet">
		    <h1>Add Teacher</h1>
		    <br>
                    <div class="form-group">
    			<label for="name">Name</label>
    			<input type="Text" class="form-control" id="name" name="name" placeholder="Name">
                    </div>
                    <div class="form-group">
    			<label for="Email">Email</label>
    			<input type="email" class="form-control" id="Email" name="email" placeholder="Email">
                    </div>
                    <div class="form-group">
    			<label for="password">Password</label>
    			<input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="subject">number of subject</label>
                        <input type="text" class="form-control" id="subject" name="nos"  onblur="addSubject()" onkeydown="clear()" placeholder="Name of subject">
                        
                        <div id="listsubject"></div>
                    </div>
                    <div class="form-group">
                        <label for="pnumber">Mobile Number</label>
                        <input type="number" class="form-control" id="pnumber" name="pnumber" placeholder="mobile number">
                    </div>
                    <br />
                    <div class="form-group">
                        <input class="btn btn-lg btn-primary btn-block btn-signin" type="submit" value="Add Teacher">
                    </div>
                    
                </form>
            </div>
        </div>
    </body>
</html>
