/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var noc,id;
function getSection()
{
    //alert("in get");
    noc=$("#noc").val();
    id=$("#id").val();
    //alert(noc+"  "+id);
    var flag=true;
    data={noc:noc,id:id,flag:flag};
    var res=$.post("Generation1",data,processSection);
    
    
}
function processSection(responseText)
{
    
    //alert("Response Text "+responseText);
    $("#nsection").html(responseText);
}


function  getSubject()
{
    //alert("in get");
    nos=$("#noc").val();
    id=$("#id").val();
    var section_id=$("#nos").val();
    
    //alert(nos+"  "+id+" "+section_id);
    data={nos:nos,id:id,section_id:section_id};
    var res=$.post("Generation1",data,processSubject);
    
    
}
function processSubject(responseText)
{
    //alert(" int pro subject ");
    //alert("Response Text"+responseText);
    $("#subject_Teacher").html(responseText);
}