
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>RMS | Dashboard</title>
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
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${sessionScope.name}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      
      <c:if test="${sessionScope.candidate_id != null}">
       <li class="active">
        <a href="${pageContext.request.contextPath}/validUser"><i class="fa  fa-suitcase"></i>Dashboard</a>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </li> 
       
         <li class="active treeview">
          <a href="#">
            <i class="fa fa-tasks"></i> <span>Candidate Details</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="${pageContext.request.contextPath}/getCandidatePersonalDetails?candidate_id=${sessionScope.candidate_id}"><i class="fa fa-pencil"></i>Candidate Personal Details</a></li>
          	<li><a href="${pageContext.request.contextPath}/getCandidateEductionDetails?candidate_id=${sessionScope.candidate_id}"><i class="fa fa-pencil"></i>Candidate Educational Details</a></li>
          	<li><a href="${pageContext.request.contextPath}/getCandidateSkillDetails?candidate_id=${sessionScope.candidate_id}"><i class="fa fa-pencil"></i>Candidate Skill Details</a></li>
          	<li><a href="${pageContext.request.contextPath}/getCandidateLanguageDetails?candidate_id=${sessionScope.candidate_id}"><i class="fa fa-pencil"></i>Candidate Language Details</a></li>
         <li><a href="${pageContext.request.contextPath}/candidateUploadDocument?candidate_id=${candidate_id}"><i class="fa fa-pencil"></i>Upload Document</a></li>
        </ul>
        </li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-tasks"></i> <span> Job Details</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="${pageContext.request.contextPath}/getJobSearch?candidate_id=${sessionScope.candidate_id}"><i class="fa  fa-suitcase"></i>Search Job </a></li>
           <li><a href="${pageContext.request.contextPath}/getJobApplication?candidate_id=${sessionScope.candidate_id}"><i class="fa  fa-suitcase"></i>Applications </a></li>
           </ul>
        </li>
        
     	</c:if>
        <c:if test="${sessionScope.company_id != null}">
         <li class="active">
        <a href="${pageContext.request.contextPath}/validUser"><i class="fa  fa-suitcase"></i>Dashboard</a>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </li> 
        <li class="active">
        <li class="active" ><a href="${pageContext.request.contextPath}/getCompanyBasicDetails?company_id=${sessionScope.company_id}"><i class="fa fa-pencil"></i>Company Basic Details</a></li>
                <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
        </li>
         <li class="active treeview">
        <li ><a href="${pageContext.request.contextPath}/getCompanyJobDetails?company_id=${sessionScope.company_id}"><i class="fa fa-book"></i>Job Details</a></li>
             <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
        </li>
         <li class="active treeview">
        <li ><a href="${pageContext.request.contextPath}/getPendingJobList?company_id=${sessionScope.company_id}"><i class="fa fa-book"></i>Job Applications</a></li>
             <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
        </li>
        
        
        <%-- <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Company Details <c:out value="${sessionScope.candidate_id}"></c:out></span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
           <ul class="">
            <li ><a href="${pageContext.request.contextPath}/getCompanyBasicDetails?company_id=${sessionScope.company_id}"><i class="fa fa-circle-o"></i>Company Basic Details</a></li>
            <li ><a href="${pageContext.request.contextPath}/getCompanyJobDetails?company_id=${sessionScope.company_id}"><i class="fa fa-circle-o"></i>Job Details</a></li>
          
           </ul>
        </li>  
         --%></c:if>
        <c:if test="${sessionScope.admin_id == '0'}">
          <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Admin</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
           <ul class="treeview-menu">
               <li><a href="${pageContext.request.contextPath}/fetchCandidateDetails?candidate_id=${sessionScope.candidate_id}"><i class="fa fa-circle-o"></i>Candidate Details </a></li>     
          <li><a href="${pageContext.request.contextPath}/fetchCandidateDetails?candidate_id=${sessionScope.candidate_id}"><i class="fa fa-circle-o"></i>Company Details </a></li>     
           <li class="active"><a href="${pageContext.request.contextPath}/getCompanyJobDetails?company_id=${sessionScope.company_id}"><i class="fa fa-book"></i>Job Details</a></li>     
          
          </ul>
        </li>
       
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Report</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="${pageContext.request.contextPath}/getCandidateReport"><i class="fa fa-circle-o"></i>Candidate Details Report</a></li>
            <li><a href="${pageContext.request.contextPath}/getCompanyReport"><i class="fa fa-circle-o"></i>Company Details Report</a></li>
          </ul>
        </li> 
       </c:if> 
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
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
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
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
