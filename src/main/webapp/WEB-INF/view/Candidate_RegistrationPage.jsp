<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>RMS</title>
		<!-- Tell the browser to be responsive to screen width -->
  		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.7 -->
		<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
		<!-- iCheck -->
		<link rel="stylesheet" href="plugins/iCheck/square/blue.css">
		<link rel="stylesheet" href="dist/css/responsive.css">
		<link rel="stylesheet" href="dist/css/main.css">
		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	</head>
	
<body class="hold-transition login-page" >
	<div class="register-box" style="float: right; margin-right:500px; margin-top:100px; height: auto;">
		<div class="register-logo" style="font-size: 15px;">
			<a href="../../index2.html"><b>Recruitment Management System</b></a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>

			<form:form  class="form-horizontal" name="registrationForm" modelAttribute="form" method="post">
				<!-- <div class="form-group">
					<input type="radio" name="type" value="C" id="company_id" checked="checked" >Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="type" value="CD" id="candidate_id" >Candidate
				</div> -->
				<div class="form-group" style="padding-left: 70px;">
    				<form:radiobutton id="comapny_id" path="registration_type" value="C" checked="checked"/>Company &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				<form:radiobutton id="candidate_id" path="registration_type" value="CD" />Candidate
				</div>
				<div class="form-group has-feedback" id="candidate">
					<form:input class="form-control" placeholder="Full name" path="full_name" id="full_name"/>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback" id="company">
					<form:input class="form-control" placeholder="Company name" path="company_name" id="company_name"/>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<form:input type="text" class="form-control" placeholder="Email" path="email_id" id="email_id" />
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<form:password class="form-control" placeholder="Password" path="password" id="password" />
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
			    <div class="form-group has-feedback">
					<input type="password" class="form-control"
						placeholder="Retype password" name="retypepassword" id="retype_password"> <span
						class="glyphicon glyphicon-log-in form-control-feedback"></span>
				</div> 
				<div class="row">
					<!-- /.col -->
					<div class="col-xs-4" >
						<button type="submit" class="btn btn-primary btn-block btn-flat" onclick="validRegistration()">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form:form>

			<a href="${pageContext.request.contextPath}/login" class="text-center">I already have a
				membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->
			

		<!-- jQuery 3 -->
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- iCheck -->
		<script src="plugins/iCheck/icheck.min.js"></script>
		<script type="text/javascript">
			window.onload=function(){
				$('#candidate').hide();
				$('#company').show();
			}
			$("input[name='registration_type']").on("change", function () {
				
				if(this.value == "CD"){
		 			$('#candidate').show();
					$('#company').hide();
				}
				else{
					$('#candidate').hide();
					$('#company').show();
				}
			});
			function validRegistration() {
				var isValid=true;
				var full_name = $('#full_name').val();
				var comapny_name = $('#company_name').val();
				var email_id = $('#email_id').val();
				var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
				var password = $('#password').val();
				var retype_password = $('#retype_password').val(); 
				var registration_type = $('input[name=registration_type]:checked').val();
				alert(registration_type);
				if(registration_type == "CD"){
					if(full_name.length == 0){
						alert("Full Name is mandatory");
						isValid=false;
					}
				}
				else{
					if(comapny_name.length == 0){
						alert("Company Name is mandatory");
						isValid=false;
					}
				}
				
				if(email_id.length == 0){
					alert("Email Id is mandatory");
					isValid=false;
					if(email_id.value.match(mailformat))
					{
					
					return true;
					}
					else
					{
					alert("You have entered an invalid email address!");
					
					return false;
					}
				}
				if(password.length == 0){
					alert("Password is mandatory");
					isValid=false;
				}
				if(retype_password.length == 0){
					alert("Retype password is mandatory");
					isValid=false;
				}
				if(password.length != 0 && retype_password.length != 0){
					if(retype_password != password){
						alert("Password and Retype password not same.");
						isValid=false;
					}
				}
				if(isValid){
					document.registrationForm.action="${pageContext.request.contextPath}/goToDashboard";
					document.registrationForm.submit();
				}
			}			
		</script>
	</body>
</html>