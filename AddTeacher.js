
var list="<br> ";
$(document).ready(function()
{
    addSubject();
   /* $("#subject").keydown(function()
    {
        clear();
    });*/
});
function addSubject()
{
    var sub=$("#subject").val();
    for(var i=0;i<sub;i++)
    {
       list=list+"<div><span style=\"font-size:12px;\"><b>Fill Subject name "+(i+1)+"</b><span> :<input style=\"width:290px; height:30px\" type=\"text\" name=\"subjectname"+(i+1)+"\"></div><br>";
    }
    $("#listsubject").html(list);
}
function clear()
{ alert("helo");
    var keyid=event.keycode;
    if(keyid===8)
    {
        $("#listsubject").empty();
       
    }
    
}
