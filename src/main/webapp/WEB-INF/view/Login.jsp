<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<body class="hold-transition login-page" style="background-image: url('images/hand_with.jpg') !important; background-repeat: no-repeat; background-size:cover;  " >
		<div class="login-box" style="float: right; margin-right:950px; margin-top:130px; height: auto;">
			<!-- <div class="login-logo">
				<a href="../../index2.html"><b>Admin</b>LTE</a>
				<img alt="" src="images/LOGO.png">
			</div> -->
			<!-- /.login-logo -->
			<div class="register-logo" style="font-size: 15px;">
				<a href="../../index2.html"><b><span style="color: #b1d7e0;">Recruitment Management System</span></b></a>
			</div>
			<div class="login-box-body">
				<p class="login-box-msg"><b><u>Sign in</u></b></p>
				
				<form:form name="loginForm" id="loginForm" modelAttribute="form" method="post">
					<c:if test="${message != null}">
						<div class="center">
							<h5 style="color: red;"><b>${message}</b></h5>
						</div>
					</c:if>
					<c:if test="${sessionScope.admin_id != 0}">
						<div class="form-group" style="padding-left: 70px;">
	    					<form:radiobutton id="comapny_id" path="registration_type" value="C" checked="checked"/>&nbsp;&nbsp;<b>Company</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    					<form:radiobutton id="candidate_id" path="registration_type" value="CD" />&nbsp;&nbsp;<b>Candidate</b>
						</div>
					</c:if>
					<div class="form-group has-feedback">
						<form:input class="form-control" placeholder="Email id" path="email_id" id="email_id" style="opacity:1;"/>
						<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<form:password class="form-control" placeholder="Password" path="password" id="password" /> 
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-8">
							<div class="checkbox icheck">
								<label>
									<input type="checkbox"> Remember Me
								</label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-xs-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat" style="padding-left: 9px; color: #b1d7e0;" onclick="validLogin();"><span style="color: #fff;">SIGN IN</span></button>
						</div>
						<!-- /.col -->
					</div>
				</form:form>
				<div>
				<c:if test="${sessionScope.admin_id != 0}">
					<a href="${pageContext.request.contextPath}/forgotpassword"><b>Forgot my password</b></a><br>
					<a href="${pageContext.request.contextPath}/goToRegistration"><b>Register a new membership</b></a><br>
				</c:if>
				</div>
	  <div class="social-auth-links text-center">
      <p>- OR -</p>
       <a class="btn btn-block btn-social btn-google">
                <i class="fa fa-google-plus"></i> Sign in with Google
              </a><div>
			
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
		<script>
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
					new PNotify({ title: '', text: 'test', type: 'info'});
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
		</script>
	</body>
</html>