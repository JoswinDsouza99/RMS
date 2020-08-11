<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="LeftMenu.jsp" />

<body>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
		<h1>
			Candidate Report 
		</h1>
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/goToHomePage"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Candidate Report</li>
		</ol>
	</section>

    <!-- Main content -->
    <section class="content">
		<div class="box-body">
			<form action="" id="Addjob" name="Addjob" method="post">
				<div class="form-group col-sm-12" style="padding-right: 0px;">
					<div class="form-group col-sm-12" id="message">
						<h4><label style="color: green;"><b>${sessionScope.message}</b></label></h4>
					</div>
				</div>
				<div class="form-group">
							<label class="col-sm-2 control-label">Month</label>
							<div class="col-sm-3">
								<select name="month" id="month" class="form-control" style="width: 100%;">
									<option value="0">-----Select-----</option>
									<option value="1">Jan</option>
									<option value="2">Feb</option>
									<option value="3">Mar</option>
									<option value="4">Apr</option>
									<option value="5">May</option>
									<option value="6">Jun</option>
									<option value="7">Jul</option>
									<option value="8">Aug</option>
									<option value="9">Sept</option>
									<option value="10">Oct</option>
									<option value="11">Nov</option>
									<option value="12">Dec</option>
								</select>
							</div>
				</div>
				<div class="form-group">
							<label class="col-sm-2 control-label">Year</label>
				<div class="col-sm-4">
									 <div class="input-group date">
										<div class="input-group-addon">
											<i class="fa fa-calendar"></i>
										</div>
										<input name="year" type="text"	class="form-control defaultYearPicker" id="year" placeholder="yyyy" autocomplete="off" value="${year}"  />
									</div> 
								</div>
								</div>
								
								
								
    		</form>
    		<div class="box-footer" style="text-align: center;">
						<div class="col-sm-12">
							<div class="col-sm-6" align="right" style="padding-right: 5px;">
								
									<button type="button" id="searchButton" class="btn btn-block btn-primary" onclick="getCandidateReport()" style="width: 80px;">Search</button>
								
							</div>
							
						</div>
					</div>
					<div id="candidateReportDiv"></div>
    	</div>
    	
	</section>
    
</div>

<jsp:include page="DefaultJSCall.jsp" />
<script type="text/javascript">
	$(document).ready(function(){
		if (document.getElementById('message').innerHTML != '')
	    	myVar = setInterval("hideMessage()", 10000);
	});
	
	function getCandidateReport() {
		var month = $("#month").val();
		var year = $("#year").val();
		alert(month+" - "+year);
		$.get('${pageContext.request.contextPath}/getCandidateDetailsReport?month='+month+'&year='+year,null, function(resp) {
			alert(resp.trim());
		// alert(resp);
		if(resp.trim() != 'expired') {
			
	 		$("#candidateReportDiv").empty();
			$('#candidateReportDiv').html(resp.trim());
			$("#test").hide();
			 $('#candidateReportTable').DataTable({
				  "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
				 "iDisplayLength": 10,  
				// "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
				// "iDisplayLength": "All", 
				 "scrollX": true,
				 "ordering": false,
				 paging: false,
			        dom: 'Bfrtip',
			        buttons: [
			        	{
			                extend: 'copy',
			                title: 'Attendance Register'
		            	}, 
			        	{
			                extend: 'csv',
			                title: 'Attendance Register'
		            	}, 
			        	{
			                extend: 'excel',
			                title: 'Attendance Register'
		            	}, 
		            	 {
			                extend: 'pdf',
			                title: 'Stockist List'
		            	}, 
		            	{
			                extend: 'print',
			                title: 'Attendance Register'
		            	}
					]
				});
				$("#test").hide();
		}
	 	else
	 		window.location('${pageContext.request.contextPath}/login');
		});
		
	}
	/* function getAttendanceReport(){
		 $("#test").show();
		 var month = $("#month").val();
		 var year = $("#year").val();
		$.get('${pageContext.request.contextPath}/getAttendanceReport?employee_id='+employee_id.value+'&company_id='+company_id.value+
				'&month='+month+'&year='+year,null, function(resp) {
			console.log(resp.trim());
		// alert(resp);
		if(resp.trim() != 'expired') {
	 		$("#attendanceReportDiv").empty();
			$('#attendanceReportDiv').html(resp.trim());
			$("#test").hide();
			 $('#attendanceReportTable').DataTable({
				 /*  "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
				 "iDisplayLength": 10,  
				// "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
				// "iDisplayLength": "All", 
				 "scrollX": true,
				 "ordering": false,
				 paging: false,
			        dom: 'Bfrtip',
			        buttons: [
			        	{
			                extend: 'copy',
			                title: 'Attendance Register'
		            	}, 
			        	{
			                extend: 'csv',
			                title: 'Attendance Register'
		            	}, 
			        	{
			                extend: 'excel',
			                title: 'Attendance Register'
		            	}, 
		            	/* {
			                extend: 'pdf',
			                title: 'Stockist List'
		            	}, 
		            	{
			                extend: 'print',
			                title: 'Attendance Register'
		            	}
					]
				});
				$("#test").hide();
		}
	 	else
	 		window.location('${pageContext.request.contextPath}/login');
		});
	}  */
	
</script>

</body>
</html>