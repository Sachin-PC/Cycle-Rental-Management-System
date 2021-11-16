<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<link rel="stylesheet" href="/w3css/3/w3.css">
<title>tecno-tab | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="home" class="navbar-brand">Tecno-Tab</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">Login</a></li>
					<li><a href="/Registration">New Registration</a></li>
					<li><a href="#">All Users</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<section>
			  <img class="mySlides" src="/images/cycle1.jpg" style="width:100%">
			</section>

		</c:when>
		
		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="Registration">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">student Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="studentId"
								value="${user.studentId }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Student name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${user.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">emailAddress</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="emailAddress"
								value="${user.emailAddress }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mobileNumber"
								value="${user.mobileNumber }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">hostel</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="hostel"
								value="${user.hostel }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		
		
		
	</c:choose>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>