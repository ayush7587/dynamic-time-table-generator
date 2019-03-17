<%-- 
    Document   : RemoveTeacher
    Created on : 17 Feb, 2019, 4:08:25 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/Registration.css" type="text/css">
        <link rel="stylesheet" href="Resources/bootstrap/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="card card-container">
                <form method="post" action="RemoveTeacherServlet">
		    <h1>Remove Teacher</h1>
		    <br>
                    <div class="form-group">
    			<label for="name">Name</label>
    			<input type="Text" class="form-control" id="name" name="name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label for="pnumber">Mobile Number</label>
                        <input type="number" class="form-control" id="pnumber" name="pnumber" placeholder="mobile number">
                    </div>
                    <br />
                    <div class="form-group">
                        <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Remove Teacher</button>
                    </div>
                    
    </body>
</html>
