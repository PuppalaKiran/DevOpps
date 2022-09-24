/**
 * 
 */
console.log("attached");

function validateform(){  
var username = document.myform.name.value;  
var password = document.myform.password.value;  
  
if (name==null || name==""){  
  alert("UserName can't be blank");  
  return false;  
}else if(password.length<10){  
  alert("Password must be at least 10 characters long.");  
  return false;  
  }  
}  