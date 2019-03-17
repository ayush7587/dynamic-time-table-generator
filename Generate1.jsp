<%-- 
    Document   : Generate1
    Created on : Mar 7, 2019, 4:19:23 PM
    Author     : Chintu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/Generate.css" rel="stylesheet"/>
        <link href="Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <title>Time Table Generation</title>
        <style>
            body
            {
                height:100%;
                background-image:url("Resources/01.jpg");
                background-repeat:no-repeat;
            }
            input
            {
               background-image:url("Resources/01.jpg"); 
               width:100%;
               height:100%;
               color:white;
            }
            select
            {
               background-image:url("Resources/01.jpg");   
               width:100%;
               height:100%;
               color:white;
            }
            #lunch
            {
                width:30%;
                display:inline;
                height:50%;
            }
        </style>
    </head>
    <body>
        <%
            String subject_list[]=(String[])request.getAttribute("subject_list");
            String teacher_list[]=(String[])request.getAttribute("teacher_list");
            int s=subject_list.length;
            int t=teacher_list.length;     
        %>
        <form method="" action="TimeTableGenerationServlet">
            <center> <div class="form-group">
                <label style="color:white;" for="lunch">Lunch Time Lecture    </label>
                <input  class="form-control" type="number" name="lunch" id="lunch" placeholder="0"> 
                </div></center>
            <table style="height:200px;" width="60%" align="center" class="table-bordered text-justify">
             <tr> 
                <th style="text-align:center; color:white;">Subject Name</th>
                <th style="text-align:center; color:white;">Teacher Name</th> 
                <th style="text-align:center; color:white;">No. of Lectures </th>
                <th style="text-align:center; color:white;"> Is Laboratory</th>   
             </tr>
             <input type="hidden" name="selected_class" value=" <%= (String)request.getAttribute("section_id")%>" >
             <input type="hidden" name="selected_section" value=" <%= (Integer)request.getAttribute("class_no")%>" >
<%
            session.setAttribute("sub_list",subject_list);
            for(int i=0;i<s;i++)
            {
                out.println("<tr>");
                out.println("<td  style=\"color:white;\"><center><b>"+subject_list[i]+"</b></center></td>"); 
                String []s1=teacher_list[i].split(",");
                out.println("<td><select name=\"t"+(i+1)+"\">");
                out.println("<option value=\"select\"><center>select</center></option>");
                for(int z=0;z<s1.length;z++)
                {
                    out.println("<option value=\""+s1[z]+"\">"+s1[z]+"</option>"); 
                }
                out.println("</select></td>");
                out.println("<td><input type=\"number\" name=\"no"+(i+1)+"\" id=\"no"+(i+1)+"\" ></td>");
                out.println("<td><input style=\"height:50%;\" type=\"checkbox\" name=\"lab\" id=\"lab\"  value=\""+(i+1)+"\" ></td>");
                out.println("</tr>");
           }
%>       
         </table>
            <br />
            <center><button class="btn btn-lg btn-primary" type="submit">Generate Time Table</button></center>  
        </form>
    </body>
</html>
