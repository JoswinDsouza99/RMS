<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="LeftMenu.jsp"></jsp:include>
<head>
<meta charset="ISO-8859-1">
<title>Job Details</title>
</head>
<body>
	 <div class="content-wrapper">
	     <section class="content-header">
	      <h1>
	        Job Details
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/goToDashboard"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Job Details</li>
	      </ol>
	    </section>
	    
	    <!-- Main content -->
	    <section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
					<div class="col-sm-1" align="left" style="padding-left: 0px;">
						<a href="${pageContext.request.contextPath}/getCompanyJobDetails">
							<button onclick="areaList()" >
								<i class="fa fa-fw fa-hand-o-left" title="Back"></i>
							</button>
						</a>
					</div>
					<div class="col-sm-10 form-group col-sm-6" id="message" style="margin-bottom: 0px;">
						<label style="color: green; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>${message}</b></label>
						<label style="color: red; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>${errorMessage}</b></label>
					</div>
	            </div>
	            <form:form class="form-horizontal" name="saveJobDetailsForm" modelAttribute="form" method="post">
					<form:hidden  id="job_details_id" path="job_details_id"/>
					<form:hidden  id="company_id" path="company_id"/>
					<div class="box-body">
						<div class="form-group">
							<label class="col-sm-2 control-label">Job Name</label>
							<div class="col-sm-3">
								<form:input path="job_name" id="job_name" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Job Description</label>
							<div class="col-sm-3">
								<form:textarea path="job_description" id="job_description" maxlength="500" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Time Duration</label>
							<div class="col-sm-3">
								<form:input path="time_duration" id="time_duration" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Employment Type</label>
							<div class="col-sm-3">
								<form:input path="employment_type" id="employment_type" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Location</label>
							<div class="col-sm-3">
								<form:input path="location" id="location" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Required Candidates</label>
							<div class="col-sm-3">
								<form:input path="required_candidates" id="required_candidates" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Joining Date</label>
							<div class="col-sm-3">
								<form:input path="joining_date" id="joining_date" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Minimum Salary</label>
							<div class="col-sm-3">
								<form:input path="minimum_salary" id="minimum_salary" class="form-control"/>
							</div>
						</div>
												<div class="form-group">
							<label class="col-sm-2 control-label">Maximum Salary</label>
							<div class="col-sm-3">
								<form:input path="maximum_salary" id="maximum_salary" class="form-control"/>
							</div>
						</div>
												<div class="form-group">
							<label class="col-sm-2 control-label">Experience</label>
							<div class="col-sm-3">
								<form:input path="experience" id="experience" class="form-control"/>
							</div>
						</div>
					</div>
					<div class="box-footer" style="text-align: center;">
						<div class="col-sm-6">
							<div class="col-sm-6" align="right" style="padding-right: 5px;">
								<c:if test="${job_details_id == null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validDetails()" style="width: 80px;">ADD</button>
								</c:if>
								<c:if test="${job_details_id != null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validDetails()" style="width: 80px;">UPDATE</button>
								</c:if>
							</div>
							<div class="col-sm-6" align="left" style="padding-left: 5px;">
								<button type="button" class="btn btn-primary" style="width: 80px;" onclick="clearAllData()">CLEAR ALL</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</section>
	<!-- /.content -->
</div>
		<script>
		function validDetails() {
			var isValid = true;
			if (isValid) {
				document.saveJobDetailsForm.action = "${pageContext.request.contextPath}/saveJobDetails";
				document.saveJobDetailsForm.submit();
			}
		}
		
          function clearAllData() {
        	  document.saveJobDetailsForm.action = "${pageContext.request.contextPath}/addJobDetails";
				document.saveJobDetailsForm.submit();
                      
                  }

	</script>
</body>
</html>