<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="../CSS/ABC.jpg" type="image/gif" sizes="16x16">
<link href="../CSS/loginui.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../CSS/bootstrap.min.css">
<script src="../JS/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="../JS/bootstrap.min.js" type="text/javascript"></script>  
<script src="../JS/Myjs.js" type="text/javascript"></script>	
</head>
<body>
<div class="container">
<div class="card">
 
</div>
<div class="card col-md-8 mx-auto mt-4 shadow border-0 p-0">
   <h2 class="card-header abc-header p-0">ABC BANK</h2>
  <div class="card-body col-md-8 mx-auto	">

<form action="login" method="post" onsubmit="return validateform()">

  <div class="form-group row">
    <label for="userName" class="col-sm-4 col-form-label">UserName:</label>
    <input type="text" class="form-control col-sm-6" id="userName">
  </div>
  <br/>
  <div class="form-group row">
    <label for="password" class="col-sm-4 col-form-label">Password:</label>
    <input type="password" class="form-control col-sm-6" id="password" Maxlength="10">
    
  </div>
  <br/>
  <br/>	
  <div class="col-md-6 mx-auto">
  <button type="submit" class="btn cutom-btnlogin btn-block">Login.</button>
  </div>
</form>
  </div> 
</div>
</div>
</body>
</html>
	