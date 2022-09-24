<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<body>
		<div class="container">
			<div class="row mt-3">
			  <div class="col-3 border-right border-dark" style="border-width: 4px!important;">
			    <div class="custom-navpils nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			      <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Customer Profile</a>
			      <a class="nav-link text-dark" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false"><u>KYC Information</u></a>
			    </div>
			    <div class="cust-info text-center">
			    	<h6>Customer ID</h6>
			    	<p class="text-primary">111154612</p>
			    	<h6>KYC Status</h6>
			    	<p class="text-primary">Yellow</p>
			    </div>
			  </div>
			  <div class="col-9">
			    <div class="tab-content" id="v-pills-tabContent">
			      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
			      		<form>
						  <div class="form-group row">
						    <label for="staticEmail" class="col-sm-2 col-form-label">First Name</label>
						    <div class="col-sm-4">
						      <input type="text" class="form-control" id="staticEmail" value="	">
						    </div>*						   
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">Middle Name</label>
						    <div class="col-sm-4">
						      <input type="password" class="form-control" id="inputPassword">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">Last Name</label>
						    <div class="col-sm-4">
						      <input type="password" class="form-control" id="inputPassword">
						    </div>*
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">Gender</label>
						    <div class="col-sm-4 row ml-1">
						      	<div class="form-check col-sm-6">
						          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
						          <label class="form-check-label" for="gridRadios1">
						            Male
						          </label>
						        </div>
						        <div class="form-check col-sm-6">
						          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
						          <label class="form-check-label" for="gridRadios2">
						            Female
						          </label>
						        </div>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">Date of Birth</label>
						    <div class="col-sm-4">
						      <input type="password" class="form-control" id="inputPassword">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label class="col-sm-2 col-form-label" for="exampleFormControlTextarea1">Address</label>
						    <div class="col-sm-6">
						    	<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="3"></textarea>
						    </div>*
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">City</label>
						    <div class="col-sm-4">
						      <input type="password" class="form-control" id="inputPassword">
						    </div>*
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">State</label>
						    <div class="col-sm-4">
						      <input type="password" class="form-control" id="inputPassword">
						    </div>*
						  </div>
						  	<div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Country</label>
							    <div class="col-sm-4">
									<select id="inputState" class="form-control">
								        <option selected>Choose...</option>
								        <option>...</option>
							      	</select>							    
						      	</div>
						  </div>
						  <div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Postal Code.</label>
							    <div class="col-sm-4">
							      <input type="password" class="form-control" id="inputPassword">
							    </div>*
						  </div>
						  <div class="col-md-6">
						  	<button type="submit" class="btn btn-primary">Save</button>
						  </div>  
						</form>
			      </div>
			      <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
			      	<form>
						  <div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Country</label>
							    <div class="col-sm-4">
									<select id="inputState" class="form-control">
								        <option selected>Choose...</option>
								        <option>...</option>
							      	</select>							    
						      	</div>
						  </div>
						  <div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Identification Type</label>
							    <div class="col-sm-4">
									<select id="inputState" class="form-control">
								        <option selected>Choose...</option>
								        <option>...</option>
							      	</select>							    
						      	</div>**
						  </div>
						  <div class="form-group row">
						    <label for="inputPassword" class="col-sm-2 col-form-label">Identification Number</label>
						    <div class="col-sm-4">
						      <input type="password" class="form-control" id="inputPassword">
						    </div>**
						  </div>
						  	<div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Occupation Type</label>
							    <div class="col-sm-4">
									<select id="inputState" class="form-control">
								        <option selected>Part Time</option>
								        <option selected>Full Time</option>
							      	</select>							    
						      	</div>**
						  </div>
						  <div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Designation</label>
							    <div class="col-sm-4">
							      <input type="password" class="form-control" id="inputPassword">
							    </div>**
						  </div>  
						  <div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Salary</label>
							    <div class="col-sm-4">
							      <input type="password" class="form-control" id="inputPassword">
							    </div>**
						  </div>
						  <div class="col-md-6">
						  	<button type="submit" class="btn btn-primary">Save</button>
						  </div>
						</form>
			      </div>
			    </div>
			  </div>
			</div>
		</div>	
</body>
</html>