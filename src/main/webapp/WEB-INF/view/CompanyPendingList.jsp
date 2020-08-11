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
			<h1>Job Pending Details List</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/goToHomePage"><i
						class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Job Detail List</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="box-body">
				<form action="${pageContext.request.contextPath}/getPendingJobList" id="Pendingjob" name="Pendingjob" method="post">
					<div class="form-group col-sm-12" style="padding-right: 0px;">
						<div class="form-group col-sm-12" id="message">
							<h4>
								<label style="color: green;"><b>${sessionScope.message}</b></label>
							</h4>
						</div>
					</div>
					</div>
						<table id="jobDetailsListTable"
						class="table table-bordered table-striped" style="width: 100%;"
						border="1">
						<thead>
							<tr>
								<th width="50px" style="text-align: center;"><center>SrNo</center></th>
								<th><center>Candidate Name</center></th>
								<th><center>Job Title</center></th>
								<th><center>Employment Type</center></th>
								<th><center>Location</center></th>
								<th><center>Total Experience</center></th>
								<%--  <th colspan="2"><center>Action</center></th>  --%>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pendingJobList}" var="job" varStatus="i">
								<tr>
									<td width="50px" style="text-align: center"><c:out
											value="${i.index + 1}"></c:out></td>
									<td><%-- ${job.getCandidateMaster().getFull_name()} --%>
									<a href="${pageContext.request.contextPath}/getCandidateDetails?candidate_id=${job.getCandidateMaster().candidate_id}&recruitment_application_process_id=${job.getRecruitment_application_process_id()}">${job.getCandidateMaster().full_name}</a></td>
									<td>${job.getJobDetails().getJob_name()}</td>
									<td>${job.getJobDetails().getEmployment_type()}</td>
									<td>${job.getJobDetails().getLocation()}</td>
									<td>${job.getJobDetails().getExperience()}</td>
									<!-- <td><button class="fa  fa-pencil"  data-toggle="modal" data-target="#modal-default"></button></td>  -->
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</div>
		</section>

	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			if (document.getElementById('message').innerHTML != '')
				myVar = setInterval("hideMessage()", 10000);
		});

		/* function ApproveAction() {
			var isValid = true;
			if (isValid) {

				document.Pendingjob.action = "${pageContext.request.contextPath}/savePendingModalDetails";
				document.Pendingjob.submit();
			}} */
		
	</script>

</body>
</html>