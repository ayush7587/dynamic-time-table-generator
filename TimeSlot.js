/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var no_of_lecture,id;
var start=[];
var end=[];
function get()
{
    var i;
    var slots=" ";
    no_of_lecture=$("#name").val();
    for(i=0;i<no_of_lecture;i++)
    {
        slots=slots+" <h5> Lecture "+(i+1)+" <input type=\"text\" id=\"start"+(i+1)+"\" >   TO      <input type=\" text\" id=\"end"+(i+1)+"\" onblur=\"forward()\"   >";
    }
    alert(" slots"+slots);
    $("#slots").html(slots);
 
}

function validate()
{
   id=$("#id").val();
    for(var i=0;i<no_of_lecture;i++)
    {
        
        start[i]=$("#start"+(i+1)).val();
        end[i]=$("#end"+(i+1)).val();
        alert(start[i]+"  end equals to "+end[i]);
          
        if(start[i]===""||end[i]==="")
        {
            $("#validate").html("<h3> <b> Please Fill All The Slots  <b> <h3>");
            return false;
            
        }
        
    }
    return true;
}

function connect()
{
    
    alert("in the connect function  ");
    if(!validate())
        return ;
    else
    {
        alert(" Fill all the details ");
        data={start:start,end:end,id:id};
        var req=$.post("TimeSlotServlet",data,processData);
    }
    
}
function processData(responseText)
{
    alert(" Response Text  "+responseText);
    if(responseText)
    {
        alert("pi");
        window.location="School.html";
    }
    else
    {
       alert("pan"); 
    }
}