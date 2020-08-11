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
			List of all Candidates
		</h1>
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/goToHomePage"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">List of all Candidates</li>
		</ol>
	</section>

    <!-- Main content -->
    <section class="content">
		<div class="box-body">
			<form action="${pageContext.request.contextPath}/addCandidateDetails" id="AddCan" name="AddCan" method="post">
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
				<table id="candidateDetailsTable" class="table table-bordered table-striped" style="width:100%;" border="1">
					<thead>
	                	<tr>
							<th width="50px" style="text-align: center;">SrNO</th>
							<th>Candidate Name<th>
							<th>Email Id</th>
							<th>Mobile Number</th>
							<th>City</th>
							<th>Pincode</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${candidateDetails}" var="can" varStatus="i">
							<tr>
								<td width="50px" style="text-align: center"><c:out value="${i.index + 1}"></c:out></td>
								<td>${can.getCandidateMaster().getFull_name()}</td>
								<td>${can.getCandidateMaster().getEmail_id()}</td>
								<td>${can.getMobile_no()}</td>
								<td>${can.getCityMaster().getCity_id()}</td>
								<td>${can.getPincode()}</td>
							</tr>
	    				</c:forEach>
	    			</tbody>
	    		</table>
    		</form>
    	</div>
	</section>
    
</div>

<jsp:include page="DefaultJSCall.jsp" />
<script type="text/javascript">
	$(document).ready(function(){
		if (document.getElementById('message').innerHTML != '')
	    	myVar = setInterval("hideMessage()", 10000);
	});
	
	
</script>

</body>
</html>