<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home.</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<div class="container">
		<div class="text-right mt-4">
			<button class="btn btn-primary">Create New Customer</button>
		</div>
		<div class="text-center mt-4">
		<form class="">
			<div class="form-group row col-md-6 mx-auto">
    <label for="staticEmail" class="col-sm-4 col-form-label h5">Customer ID:</label>
    <div class="col-sm-8">
	      	<input class="form-control" type="search" placeholder="Search" aria-label="Search">
    </div>
    <div class="col-md-4 offset-md-4 mt-4	">
        	<button class="btn btn-primary btn-block">Submit</button>
  </div>
  </div>
    	</form>
    </div>
    <div class"col-md-10 mx-auto">
    <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
    </div>
	</div>
</body>
</html>