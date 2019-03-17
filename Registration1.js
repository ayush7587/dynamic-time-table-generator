/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var ename,password,cpassword;
function validate()
{
    //alert(" In validate");
    ename=$("#ename").val();
    password=$("#password").val();
    cpassword=$("#cpassword").val();
    cityname=$("#cityname").val();
    iname=$("#iname").val();
    pname=$("#pname").val();
    itype=$("#itype").val();
    nclass=$("#nclass").val();
     result = password.localeCompare(cpassword);
    //alert(""+iname+" "+itype+" "+cityname+" "+" "+itype+" "+ename);
   //alert(" Above result");
    //alert(" "+result)
    if(ename==="")
    {
      //  alert("In if");
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
        
    }
    else
    {
      return true;       
    }
    
    
}
function connect()
{
    //alert(" In connect");
    if(!validate())
    {
        return ;
        
    }
    else
    {
        data={ename:ename,password:password,cpassword:cpassword,iname:iname,pname:pname,cityname:cityname,itype:itype,nclass:nclass};
        var res=$.post("Registration",data,processdata);
        
        
    }
    
}
function processdata(responseText)
{
    //alert("response ======="+responseText);
    window.location="HomePage.html";
}