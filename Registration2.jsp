<%-- 
    Document   : Registration2
    Created on : 25 Feb, 2019, 8:02:50 PM
    Author     : hp
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
	<link rel="stylesheet" href="Resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/Registration.css" type="text/css"/>
        <script src="Script//regstep2.js"></script>
	<title>Step-2</title>
</head>
<body>
<%
    String type=request.getParameter("type_of_institute");
    String name=request.getParameter("iname");
    String cname=request.getParameter("cityname");
    String pname=request.getParameter("pname");
    String a;
    if(type.equalsIgnoreCase("College"))
    {
	a="No Of Courses";
    }
    else
    {
	a="No Of Classes";
    }
    session.setAttribute("type",type);
    session.setAttribute("name",name);
    session.setAttribute("cname",cname);
    session.setAttribute("pname",pname);    
%>
    <div class="container">
        <div class="card card-container">
            <ul class="steps">
                <li class="is-active">Step 2</li>        
            </ul>
            <form  name="Reg2Form" method="post" action="RegistrationServlet" onsubmit="return validate()">
            <h1>Registration:</h1>
            <br>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="Text" class="form-control" id="email"  name="Ename" placeholder="Email Address">
                </div>
                <span id="mail"></span>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <span id="pwd"></span>
                <div class="form-group">
                    <label for="cpassword">Confirm Password</label>
                    <input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="Confirm Password">
                </div>
                <span id="cpwd"></span>
                <div class="form-group">
                    <label for="courses"><%= a%></label>
                    <input type="number" class="form-control" id="no_of_classes" name="no_of_classes" value="">
                    <br>
                </div>
                <div class="form-group">
                    <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Next</button>
                </div>
            </form>
            </div>
        </div>
    </div>

</body>
</html>