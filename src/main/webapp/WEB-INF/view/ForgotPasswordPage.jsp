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
	<div class="register-box" style="float: right; margin-right:500px; margin-top:20px; height: auto;">
		<div class="register-logo" style="font-size: 15px;">
			<a href="../../index2.html"><h3><b> Recruitment Management System</b></h3></a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg"><font size="5"><b><u>Forgot Password</u>?</b></font></p>

			<form:form  class="form-horizontal" name="forgotPasswordForm" modelAttribute="form" method="post">
				 
				<div class="form-group" style="padding-left: 70px;">
    				<form:radiobutton id="comapny_id" path="registration_type" value="C" checked="checked"/>&nbsp;&nbsp;<b>Company</b>
    				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				<form:radiobutton id="candidate_id" path="registration_type" value="CD" />&nbsp;&nbsp;<b>Candidate</b>
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
					<div class="col-xs-12" >
					<center>
						<button type="submit" class="btn btn-primary btn-block btn-flat" onclick="changemypassword()">Change My Password</button>
					</center>
					</div>
					<!-- /.col -->
				</div>
			</form:form>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><a href="${pageContext.request.contextPath}/login" class="text-center">Already have a
				membership? Click here</a></u>
			<div class="social-auth-links text-center">
		 <p>- OR -</p>
       <a class="btn btn-block btn-social btn-google">
                <i class="fa fa-google-plus"></i> Sign in with Google
              </a><div>
			
			</div>
		</div>
		
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->
</div>
			

		<!-- jQuery 3 -->
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- iCheck -->
		<script src="plugins/iCheck/icheck.min.js"></script>
<script>

function changemypassword()
{
	var isValid=true;
	var email_id = $('#email_id').val();
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var password = $('#password').val();
	var retype_password = $('#retype_password').val(); 
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
		document.forgotPasswordForm.action="${pageContext.request.contextPath}/gotologin";
		document.forgotPasswordForm.submit();
	}
	
	
	}

</script>

	</body>
	
</html>