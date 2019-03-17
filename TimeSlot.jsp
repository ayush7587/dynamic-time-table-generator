<%-- 
    Document   : TimeSlot
    Created on : 17 Feb, 2019, 1:33:34 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
       
        <link href="Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
       <link rel="stylesheet" href="styles/TimeSlot.css" type="text/css">
      
       <script src="script/jquery.js"></script>
      <script src="script//TimeSlot.js"></script>
        <title>Time Slot</title>
    </head>
    <body>
         <div class="container">
            <div class="card card-container">
                <form method="" action="TimeSlot.jsp" >
		    <p class="sty">Add Time Slot</p>
		    <br>
                    <div class="form-group sty1">
    			<label for="name">No of time slots</label>
                            <input type="number" class="form-control" id="name" name="name" onblur="get()" placeholder="" >
                            
                    </div>
                     <div id="slots">
   
                     </div>
                    <div id="validate" >
                        
                    </div>

                      <input class="btn btn-md btn-info" type="button" value="  Submit  " onclick="connect()">
  
  
                </form>
                
                 
                
            </div>
        </div>
    </body>
</html>
