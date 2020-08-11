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
			Job Details List
		</h1>
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/goToHomePage"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Job Detail List</li>
		</ol>
	</section>

    <!-- Main content -->	
    <section class="content">
		<div class="box-body">
			<form action="${pageContext.request.contextPath}/addJobDetails" id="Addjob" name="Addjob" method="post" >
			
				<div class="form-group col-sm-12" style="padding-right: 0px;">
					<div class="form-group col-sm-12" id="message">
						<h4><label style="color: green;"><b>${sessionScope.message}</b></label></h4>
					</div>
				</div>
			
				<div class="form-group col-sm-12" align="right" style="padding-right: 0px; padding-left: 0px;">
							<div class="col-sm-12" style=" float: left;">
									<button type="submit" class="btn btn-primary"  style="width: 35px; height: 35px; padding-left: 6px; color: white; font-size: 18px;">
										<i class="fa fa-fw fa-plus" title="Add Job"></i>
									</button>
							</div>
					</div>
					
				<table id="jobDetailsListTable" class="table table-bordered table-striped" style="width:100%;" border="1">
					<thead>
	                	<tr>
							<th width="50px" style="text-align: center;"><center>SrNo</center></th>
							<th><center>Company Name</center></th>
							<th><center>Job Title</center></th>
							<th><center>Salary</center></th>
							<th><center>Employment Type</center></th>
							<th><center>Total Experience</center></th>
							<th colspan="2"><center>Action</center></th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${companyJobDetailsList}" var="job" varStatus="i">
							<tr>
								<td width="50px" style="text-align: center"><c:out value="${i.index + 1}"></c:out></td>
								<td>${job.getCompanyMaster().getCompany_name()}</td>
								<td>${job.getJob_name()}</td>
								<td>${job.getMinimum_salary()}-${job.getMaximum_salary()}</td>
								<td>${job.getEmployment_type()}</td>
								<td>${job.getExperience()}</td> 
								<td><a href="${pageContext.request.contextPath}/editJobDetails?job_details_id=${job.getJob_details_id()}">
								<button class="fa  fa-pencil" type="button" id="editJobDetails" ></button></a></td>
								 <td><a href="${pageContext.request.contextPath}/deleteJobDetails?job_details_id=${job.getJob_details_id()}">
								 <button class="fa  fa-trash-o" type="button" id="deleteJobDetails"></button></a></td>
							
							</tr>
	    				</c:forEach>
	    			</tbody>
	    		</table>
	    		</form>
    	
    	</div>
	</section>
    
</div>


<script type="text/javascript">
	$(document).ready(function(){
		if (document.getElementById('message').innerHTML != '')
	    	myVar = setInterval("hideMessage()", 10000);
	});
	
	
</script>
</body>
</html>