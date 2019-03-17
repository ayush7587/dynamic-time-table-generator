var list=" ";
$(document).ready(function()
{
    addSubject();
});
function addSubject()
{
    list="<br>";
    var sub=$("#no_of_subject").val();
    for(var i=0;i<sub;i++)
    {
       list=list+"<div><span style=\"font-size:12px;\"><b>Fill Subject name "+(i+1)+"</b><span> :<input style=\"width:290px; height:30px\" type=\"text\" name=\"subjectname"+(i+1)+"\"></div><br>";
    }
  
    $("#listsubject").html(list);
}
function clearText()
{
    $("#listSubject").text("");
}

function addOption()
{
    var sub=$("#select_class").val();
    for(var i=0;i<sub;i++)
    {
       list=list+"<div><span style=\"font-size:12px;\"><b>Fill Subject name "+(i+1)+"</b><span> :<input style=\"width:290px; height:30px\" type=\"text\" name=\"subjectname"+(i+1)+"\"></div><br>";
    }
  
    $("#listsubject").html(list);
}
