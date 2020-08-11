<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="LeftMenu.jsp"></jsp:include>

<body>
	 <div class="content-wrapper">
	    

	    <!-- Main content -->
	  
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>Job Search</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/validUser"><i
						class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Job Details List</li>
			</ol>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
					<!-- <h3 class="box-title">Add Area</h3> -->
					<div class="col-sm-1" align="left" style="padding-left: 0px;">
						<a href="${pageContext.request.contextPath}/validUser">
							<button onclick="areaList()" >
								<i class="fa fa-fw fa-hand-o-left" title="Back"></i>
							</button>
						</a>
					</div>
					<div class="col-sm-10 form-group col-sm-6" id="message" style="margin-bottom: 0px;">
						<label style="color: green; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>${message}</b></label>
						<label style="color: red; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>${errorMessage}</b></label>
					</div>
				<form
					action="${pageContext.request.contextPath}/getJobDetails"
					id="getJobAllList" name="getJobAllList"
					method="post">
					
					 <table id="jobDetailsTable"
						class="table1 table-bordered table-striped" style="width: 100%;" border="1"
						>
						<thead>
							<tr>
								<th width="50px" style="text-align: center;">Sr No</th>
								<th>Company Name</th>
								<th>Job Title</th>
								<th>Salary</th>
								<th>Employment Type</th>
								<th>Experience</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${jobDetailsList}" var="job" varStatus="i">
								<tr>
									<td width="50px" style="text-align: center"><c:out
											value="${i.index + 1}"></c:out></td>
									<td><a href="${pageContext.request.contextPath}/getCompanyDetails?company_id=${job.getCompanyMaster().getCompany_id()}">${job.getCompanyMaster().getCompany_name()}
									</a></td>
									<td>${job.getJob_name()}</td>
									<td>${job.getMinimum_salary()}-${job.getMaximum_salary()}</td>
									<td>${job.getEmployment_type()}</td>
									<td>${job.getExperience()}</td>
									<td><a
										href="${pageContext.request.contextPath}/addRecruitmentApplication?company_id=${job.getCompanyMaster().getCompany_id()}&job_details_id=${job.getJob_details_id()}">
										<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" style="width: 80px;">Apply</button>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</div>
			
	    
    <!-- /.content -->


	<script type="text/javascript">
		$(document).ready(function() {
			if (document.getElementById('message').innerHTML != '')
				myVar = setInterval("hideMessage()", 10000);
		});

		function applyJob() {
			document.recruitmentApplicationform.action = "${pageContext.request.contextPath}/addRecruitmentApplication?company_id="
					+ company_id + "&job_deatils_id=" + job_deatils_id;
			document.recruitmentApplicationform.submit();
		}

		function getJobTitle(company) {
			//alert(company);
			$.get(
					'${pageContext.request.contextPath}/getJobTitleByCompanyId?company_id='
							+ company, null, function(resp) {
						$('#job_details_id').empty()
						$('#job_details_id').append(resp.trim());
					});
		}
		</script>
	
</body>
</html>