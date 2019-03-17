/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var ncourse=new Array();
var ename,password,cpassword,cityname,iname,pname,itype;
 
$(document).ready(function(){
    $("#ename").keypress(function(){
       clearText(); 
    });
    $("#password").keypress(function(){
       clearText(); 
    });
    $("#cpassword").keypress(function(){
       clearText(); 
    });
    $("#course").keypress(function(){
       clearText(); 
    });
    
    $(documment).keypress(function(){
       clearText(); 
    });
    
    });
function clearText()
{
    $("#result").text("");
        
    
}

function get()
{
    course=$("#course").val();
    var i;
    var list="";
      for(i=1;i<=course;i++)
    {
         list+= "<div> Course "+i+" :- </div> <br>";
            list+="<div> <input type=\"text\"  id=\"course"+i+"\" ></div>";
    }
    $("#courselist").html(list);
   
}  



function validate()
{
ename=$("#ename").val();
    password=$("#password").val();
    cpassword=$("#cpassword").val();
    cityname=$("#cityname").val();
    iname=$("#iname").val();
    pname=$("#pname").val();
    itype=$("#itype").val();    
    result = password.localeCompare(cpassword);
    var i;
    flag=true;
    for(i=0;i<course;i++)
    {
        ncourse[i]=$("#course"+(i+1)).val();
        if(ncourse[i]==="")
        flag=false;
        //alert("123"+ncourse[i])
    //alert("#course"+(i+1));
    }
    //alert(flag);
    
    if(course=="")
    {
        $("#result").text("Please enter the no of course");
        return false;
    }
     else if(ename==="")
    {
        //alert("In if");
        $("#result").text("Please enter the email id");
        return false;
    }
    else if(password==="")
    {
        $("#result").text("Please enter the password");
        return false;
    }
    else if(cpassword=="")
    {
        $("#result").text("Please enter the conform password");
        return false;
    }
    else if(result!=0)
    {
        $("#result").text("Conform password does not match");
        return false;
    }
    else if(!flag)
    {
        $("#result").text("Please fill all the course ");
        return false;
        
    }
    else
    {
      return true;       
    }
    


}

function connect()
{
    if(!validate())
        return ;
    else
    {
        data={iname:iname,cityname:cityname,pname:pname,itype:itype,ename:ename,password:password,course:course,ncourse:ncourse};
        //alert("Above post "+iname+"ni"+pname+"zxcvbnm");
        var res=$.post("RegistrationCollege",data,processdata);
        
        
    }
}
function processdata(responseText)
{
    alert(" response ="+responseText);
    responseText.trim();
    if(responseText=="true")
    {
        alert(" in if");
        window.location="HomePage.html";
        
    }
    else
    {
        alert("in else");
        window.location="Registration.html";
    }
}


