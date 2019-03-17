/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function()
{
    $("#pname").keypress(function()
    {
        cleartext();    
    });
    $("#cityname").keypress(function()
    {
        cleartext();   
    });
    $("#iname").keypress(function()
    {
         cleartext();
    });    
});
function cleartext()
{
    $("#check").text("");    
}
var iname,itype,cityname,pname;
function validate()
{
    iname=$("#iname").val();
    pname=$("#pname").val();
    cityname=$("#cityname").val();
    itype=$("#itype").val();
    if(iname=="")
    {
        $("#check").html("<b>Please enter the name of institute");
        return false;
    }
    else if(cityname=="")
    {
        $("#check").html("<b>Please enter the city");
        return false;
    }
    else if(pname=="")
    {
        $("#check").html("<b>Please enter the name of  principle ");
        return false ;
    }
    else 
        return true;    
}
function connect()
{
    
    if(!validate())
        return;
    if(itype=="School")
        window.location="Registration1.jsp?iname="+iname+"&itype="+itype+"&cityname="+cityname+"&pname="+pname;
    else if(itype=="College")
    {
        window.location="Registration2.jsp?iname="+iname+"&itype="+itype+"&cityname="+cityname+"&pname="+pname;
    }
}
