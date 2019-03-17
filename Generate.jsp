<%-- 
    Document   : Generate
    Created on : Mar 7, 2019, 2:02:46 AM
    Author     : Chintu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="script/jquery.js"></script>
        <script src="script/Generate.js"></script>
        <link href="Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <style>
            body
            {
                background-image:url("Resources/01.jpg");
                background-repeat: no-repeat;
            }
            p
            {
               margin-top:30px;
               text-align:center; 
               font-size:48px;
               color:white;   
            }
            .card-container.card
            {
                max-width: 500px;
                padding: 40px 40px;
                opacity:0.8;
            }
            .card
            {
                background-color: #F7F7F7;
                padding: 20px 25px 30px;
                margin: 0 auto 25px;
                margin-top: 80px;
                border-radius: 2px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.7);
}
        </style>
    </head>
    <body>
        <%@page import="Dto.UserLoginDto"%>
        <p>Generate Time Table</p>
        <div class="container">
            <div class="card card-container">        
                    <label for="select_class">select class</label>
                    <input type="hidden" value="<%= UserLoginDto.getSid() %>" id="id" >
                    <select class="form-control" name="select_class" id="noc" onchange="getSection()" >
                    <option>Select Class</option>
                    <% 
                        String c[]={"I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"};
                        for(int i=0;i<(Integer)request.getAttribute("noc");i++)
                        {
                            out.println("<option value=\""+(i+1)+"\" >"+c[i]+"</option>");
                        } 
                        out.println("<p>"+UserLoginDto.getSid()+"<p>");
                        request.setAttribute("noclass",(Integer)request.getAttribute("noc"));
                    %>
                    </select>
                    <div id="nsection" ></div>
            </div>
        </div>
        <div id="subject_Teacher"></div>
        
    </body>
</html>
