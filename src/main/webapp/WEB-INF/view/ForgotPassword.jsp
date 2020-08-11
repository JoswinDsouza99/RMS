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
		<div class="login-box" style="float: right; margin-right:500px; margin-top:170px; height: auto;">
			<!-- <div class="login-logo">
				<a href="../../index2.html"><b>Admin</b>LTE</a>
				<img alt="" src="images/LOGO.png">
			</div> -->
			<!-- /.login-logo -->
			<div class="register-logo" style="font-size: 15px;">
				<a href="../../index2.html"><b>Recruitment Management System</b></a>
			</div>
			<div class="login-box-body">
				<p class="login-box-msg"><b>Forgot Password</b></p>
				
				<form:form name="loginForm" id="loginForm" modelAttribute="form" method="post">
					<c:if test="${message != null}">
						<div class="center">
							<h5 style="color: red;"><b>${message}</b></h5>
						</div>
					</c:if>
					<div class="form-group" style="padding-left: 70px;">
    					<form:input class="form-control" placeholder="Email id" path="email_id" id="email_id" style="opacity:1;"/>
    					
					</div>
					
									
						<!-- /.col -->
						<div class="col-xs-10">
							<button type="submit" class="btn btn-primary btn-block btn-flat" style="padding-left: 9px;" onclick="validLogin();">Send Recovery Mail</button>
						</div>
						<!-- /.col -->
					</div>
				</form:form>
				<div>
				<a href="#"><br><br><b>Not a Member yet?</b></a><br>
				<a href="${pageContext.request.contextPath}/goToRegistration"><b>Register Now</b></a><br>
				</div>
			</div>
			<!-- /.login-box-body -->
			
		</div>
		<!-- /.login-box -->

		<!-- jQuery 3 -->
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- iCheck -->
		<script src="plugins/iCheck/icheck.min.js"></script>
<!-- <script>
			$(function () {
				$('input').iCheck({
					checkboxClass: 'icheckbox_square-blue',
					radioClass: 'iradio_square-blue',
					increaseArea: '20%' /* optional */
				});
			});
			function validLogin() {
				var isValid = true;
				var email_id = $('#email_id').val();
				var password = $('#password').val(); 
				if(email_id.length == 0){
					alert("Email Id is mandatory");
					isValid=false;
				}
				if(password.length == 0){
					alert("Password is mandatory");
					isValid=false;
				}
				if(isValid){
					document.loginForm.action="${pageContext.request.contextPath}/validUser";
					document.loginForm.submit();
				}
			} 
		</script> -->
	</body>
</html>