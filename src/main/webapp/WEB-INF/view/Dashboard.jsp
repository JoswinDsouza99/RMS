<!DOCTYPE html>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>RMS | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet" href="bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>RMS</b></span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->

						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs">${sessionScope.name}</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image">
									<p>${sessionScope.name}</p></li>
								<!-- Menu Body -->

								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="${pageContext.request.contextPath}/login"
											class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>

		<!-- Left side column. contains the logo and sidebar -->
		<jsp:include page="LeftMenu.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Welcome</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>
			

			<!-- Main content -->
			<section class="content">
				<div class="box-body">
				 <c:if test="${sessionScope.candidate_id != null}">
					<div class="row">
					
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-green">
								<div class="inner">
								
									 <h3>${sessionScope.acceptedJobCount}</h3> 
									<p>Accepted Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-ok-circle"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-success"> Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-yellow">
								<div class="inner">
									 <h3>${sessionScope.pendingJobCount}</h3> 
									<p>Pending Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-time"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-warning"> Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-red">
								<div class="inner">
								 <h3>${sessionScope.rejectedJobCount}</h3> 
									<p>Rejected Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-remove-circle"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-danger">Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						</div>
					<div class="modal fade" id="modal-success">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Accepted Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Company Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Accepted Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.acceptedJobApplicationList}" var="accepted">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${accepted.getCompanyMaster().getCompany_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${accepted.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${accepted.getApprove_reject_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<!-- <button type="button" class="btn btn-outline">Save
										changes</button> -->
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<div class="modal fade" id="modal-danger">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Rejected Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Company Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Rejected Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.rejectedJobApplicationList}" var="rejected">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${rejected.getCompanyMaster().getCompany_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${rejected.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${rejected.getApprove_reject_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-outline">Save
										changes</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<div class="modal fade" id="modal-warning">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Pending Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Company Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Application Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.pendingJobApplicationList}" var="pending">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${pending.getCompanyMaster().getCompany_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${pending.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${pending.getApplication_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-outline">Save
										changes</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!-- /.content -->
			<div class="box" style="width:500px">
            <div class="box-header with-border">
              <h3 class="box-title">Skill Proficiency Levels</h3> 
			 <div class="progress-group" style="width:400px">
			 <br/>
                    <span class="progress-text">Add Products to Cart</span>
                    <c:forEach items="${skillProficiencyLevel}" var="skillProficiency" varStatus="i">
                    <span class="progress-number"><b>${skillProficiency.getSkillProficiency()}</b>/10</span>
                    </c:forEach>
                    <div class="progress sm">
                      <div class="progress-bar progress-bar-aqua" style="width:80%"></div>
                    
                    </div>
                  </div>
                  </div>
                  </div>
			</c:if>
			
                  
                  
                  
		<!-- ___________________________________________________________________________________________________________________________ -->
				 <c:if test="${sessionScope.company_id != null}">
					<div class="row">
					
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-green">
								<div class="inner">
								
									 <h3>${sessionScope.recruitedJobCount}</h3> 
									<p>Recruited Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-ok-circle"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-success"> Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-yellow">
								<div class="inner">
									 <h3>${sessionScope.pendingJobCount}</h3> 
									<p>Pending Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-time"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-warning"> Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-red">
								<div class="inner">
								 <h3>${sessionScope.rejectedJobCount}</h3> 
									<p>Rejected Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-remove-circle"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-danger">Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-xs-6">
							<div class="small-box bg-blue">
								<div class="inner">
								 <h3>${sessionScope.totalJobCount}</h3> 
									<p>All Job <br> Applications</p>
								</div>
								<div class="icon">
									<i class="glyphicon glyphicon-remove-circle"></i>
								</div>
								<a href="" class="small-box-footer" data-toggle="modal"
									data-target="#modal-total">Click here for more info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						</div>
					<div class="modal fade" id="modal-success">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Recruited Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Candidate Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Accepted Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.recruitedJobApplicationList}" var="recruited">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${recruited.getCandidateMaster().getFull_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${recruited.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${recruited.getApprove_reject_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<!-- <button type="button" class="btn btn-outline">Save
										changes</button> -->
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<div class="modal fade" id="modal-danger">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Rejected Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Candidate Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Rejected Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.rejectedJobApplicationList}" var="rejected">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${rejected.getCandidateMaster().getFull_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${rejected.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${rejected.getApprove_reject_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-outline">Save
										changes</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<div class="modal fade" id="modal-warning">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Pending Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Candidate Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Application Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.pendingJobApplicationList}" var="pending">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${pending.getCandidateMaster().getFull_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${pending.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${pending.getApplication_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-outline">Save
										changes</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!-- /.content -->
					<div class="modal fade" id="modal-total">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title"><b><u>Total Job Applications</u></b></h4>
								</div>
								<div class="modal-body">
									<table style=" margin-left: auto;margin-right: auto; border: 1px solid black;" >
										<thead>
											<tr cellspacing="10" cellpadding="10">
												<th style="text-align:center;padding-right: 50px;padding-left: 50px;"><u>Candidate Name</u></th> 
												<th style="text-align:center; padding-right: 50px;padding-left: 50px;"><u>Job Name</u></th> 
												<th style="text-align:center;  padding-right: 50px;padding-left: 50px;"><u>Accepted Date</u></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${sessionScope.totalJobApplicationList}" var="total">
												<tr>
													<td style="text-align:center;padding-top: 5px;">${total.getCandidateMaster().getFull_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${total.getJobDetails().getJob_name()}</td>
													<td style="text-align:center;padding-top: 5px;">${total.getApplication_date()}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
									<!-- <button type="button" class="btn btn-outline">Save
										changes</button> -->
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
									 
 					</c:if>
				</div>
		</section>

		</div>

		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2019-2020 <a
				href="https://adminlte.io">VCERP Consulting pvt lmt.</a>.
			</strong> All rights reserved.
		</footer>
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script src="bower_components/raphael/raphael.min.js"></script>
	<script src="bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script
		src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="bower_components/moment/min/moment.min.js"></script>
	<script
		src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script
		src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
</body>
</html>
