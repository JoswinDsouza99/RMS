<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<c:if test="${candidateList != null}">
	<table id="candidateReportTable"
		class="table-checkbox table table-bordered table-striped" style="width: 100%;">
		<thead>
			<tr>
				<th width="50px" style="text-align: center;">SrNO</th>
				<th>Candidate Name</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Active/Inactive</th>
				<th>Mobile No</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${candidateList}" var="candidate" varStatus="i">
				<tr>
					<td width="50px" style="text-align: center"><c:out
							value="${i.index + 1}"></c:out></td>
					<td>${candidate.getCandidateMaster().getFull_name()}</td>
					<td>${candidate.getCandidateMaster().getEmail_id()}</td>
					<td>${candidate.getGender()}</td>
					<td>${candidate.getDate_of_birth()}</td>
					<td>${candidate.getCandidateMaster().getActive_inactive()}</td>
					<td>${candidate.getMobile_no()}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>

<c:if test="${companyList != null}">
	<table id="companyReportTable"
		class="table-checkbox table table-bordered table-striped" style="width: 100%;">
		<thead>
			<tr>
				<th width="50px" style="text-align: center;">SrNO</th>
				<th>Company Name</th>
				<th>Registration Date</th>
				<th>Email</th>
				<th>Active/Inactive</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${companyList}" var="company" varStatus="i">
				<tr>
					<td width="50px" style="text-align: center"><c:out
							value="${i.index + 1}"></c:out></td>
					<td>${company.getCompanyMaster().getCompany_name()}</td>
					<td>${company.getCompanyMaster().getRegistration_date()}</td>
					<td>${company.getCompanyMaster().getEmail_id()}</td>
					<td>${company.getCompanyMaster().getActive_inactive()}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
<c:if test="${jobTitleList != null}">
<option value="0">-----Select-----</option>
	<c:forEach items="${jobTitleList}" var="job">
		<option value="${job.job_details_id}">${job.job_name}
		</option>
	</c:forEach>
</c:if>
<c:if test="${recruitmentApplicationProcessesList != null}">
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
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${recruitmentApplicationProcessesList}" var="job" varStatus="i">
								<tr>
									<td width="50px" style="text-align: center"><c:out
											value="${i.index + 1}"></c:out></td>
									<td><a
										href="${pageContext.request.contextPath}/getCompanyDetails?company_id=${job.getCompanyMaster().getCompany_id()}">${job.getCompanyMaster().getCompany_name()}
									</a></td>
									<td>${job.getJobDetails().getJob_name()}</td>
									<td>${job.getJobDetails().getMinimum_salary()}-${job.getJobDetails().getMaximum_salary()}</td>
									<td>${job.getJobDetails().getEmployment_type()}</td>
									<td>${job.getJobDetails().getExperience()}</td>
									<td>${job.getStatus()}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
</c:if>
<c:if test="${recruitmentApplicationProcessModelsList != null}">
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
							<c:forEach items="${recruitmentApplicationProcessModelsList}" var="job" varStatus="i">
								<tr>
									<td width="50px" style="text-align: center"><c:out
											value="${i.index + 1}"></c:out></td>
									<td><a
										href="${pageContext.request.contextPath}/getCompanyDetails?company_id=${job.company_id}">${job.company_name}
									</a></td>
									<td>${job.job_name}</td>
									<td>${job.minimum_salary}-${job.maximum_salary}</td>
									<td>${job.employment_type}</td>
									<td>${job.experience}</td>
									<td><a
										href="${pageContext.request.contextPath}/addRecruitmentApplication?company_id=${job.company_id}&job_details_id=${job.job_details_id}"><button
												type="button" id="saveAreaButton"
												class="btn btn-block btn-primary" style="width: 80px;">Apply</button>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
</c:if>