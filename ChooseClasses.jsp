<%-- 
    Document   : ChooseClasses
    Created on : 27 Feb, 2019, 4:01:27 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="styles/ChooseClass.css" rel="stylesheet"/>
        <script src="script/jquery.js"></script>
        <script src="script//AddSubject.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose Class</title>
    </head>
    <body>
        
        <%
            String d=(String)request.getAttribute("NoOfClasses");
            int p=0;
            if(d!=null)
            {
                p=Integer.parseInt(d.trim());
            }
            out.println(d+" "+p);
        %>
        <div class="container">
            <div class="card card-container">
                <h1>Add Class Details</h1>
                <br />
                <form method=" " action="GetSectionServlet">
                    <div class="form-group">
                        <label for="select_class">Select Class</label>
                            <select class="form-control" name="Select_class" placeholder="class">    
                            <option>Select Class</option>
                            <%
                                String c[]={"I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"};
                                for(int i=0;i<p;i++)
                                {
                                    out.println("<option value="+(i+1)+">"+c[i]+"</option>");
                                }
                            
                            %>    
                               
                            </select>
                    </div>
                    
                    <div class="form-group">
                    <label for="no_of_section">No of Section</label>
                    <input id="no_of_section" name="no_of_section" class="form-control" type="number" placeholder="no of section"/>
                    </div>
                          
                    <div class="form-group">
                    <label for="no_of_subject">No of Subject</label>
                    <input type="number" id="no_of_subject" name="no_of_subject" class="form-control" onblur="addSubject()" placeholder="no of subject"/>
                    </div>
                    <div id="listsubject">
                    </div> 
                     <input class="btn btn-lg btn-primary btn-block btn-signin" type="submit" value="Add Subject">
                </form>
                
        
    </body>
</html>
