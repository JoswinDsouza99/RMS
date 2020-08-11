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
	     <section class="content-header">
	      <h1>
	        Candidate Educational Details
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/goToDashboard"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Candidate Educational Details</li>
	      </ol>
	    </section>

	    <!-- Main content -->
	    <section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
			<!-- 	 <h3 class="box-title">Add Area</h3>  -->
					<div class="col-sm-1" align="left" style="padding-left: 0px;">
						<a href="${pageContext.request.contextPath}/getAreaList">
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
	            <form:form class="form-horizontal" name="saveCandidateEductionDetailsForm" modelAttribute="form" method="post">
					<form:hidden  id="candidate_eduction_detail_id" path="candidate_eduction_detail_id"/>
					<form:hidden  id="candidate_id" path="candidate_id"/>
					<div class="box-body">
						<table id="candidateEductionDetailsTable" class="table table-bordered table-striped">
							<thead>
			                	<tr>
									<th>School/College Name</th>
									<th>Board/University</th>
									<th>Qualification</th> 
									<th>Year of passing</th>
									<th>Percentage</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${form.candidateEductionDetailsModelList != null}">
									<c:forEach items="${form.candidateEductionDetailsModelList}" var="eduction" varStatus="i">
										<tr>
											<td style="width:20%;">
												<form:input path="candidateEductionDetailsModelList[${i.index}].collage_name" id="collage_name_${i.index}"  class="form-control" />
											</td>
											<td style="width:20%;">
												<form:input path="candidateEductionDetailsModelList[${i.index}].university_inititute" id="university_inititute_${i.index}"  class="form-control" />
											</td>
											<td style="width:20%;">
												<form:input path="candidateEductionDetailsModelList[${i.index}].eduction" id="eduction_${i.index}"  class="form-control" />
											</td>
											<td style="width:20%;">
												<form:input path="candidateEductionDetailsModelList[${i.index}].passing_year" id="passing_year_${i.index}"  class="form-control" />
											</td>
											<td style="width:20%;">
												<form:input path="candidateEductionDetailsModelList[${i.index}].percantage" id="percantage_${i.index}"  class="form-control" />
											</td>
											<td style="text-align: center;">
												<div class='col-sm-6'>
													<c:if test="${i.index > 0}">
														<a onclick="deleteCandidateEduction(this,${i.index})"
															href="#"> <i class="fa fa-fw fa-trash-o"
															title="Delete Deatils"></i>
														</a>
													</c:if>
													<c:if test="${i.index == 0}">
														<a href="#" onclick="addCandidateEductionDetailRow();">
															<i class="fa fa-fw fa-plus-square-o" title="Add Deatils"></i>
														</a>
													</c:if>
												</div>
											</td>
									</tr>
									</c:forEach>
								</c:if>
								<c:if test="${form.candidateEductionDetailsModelList == null || form.candidateEductionDetailsModelList.size() == 0}">
								<tr>
									<td style="width:20%;">
										<form:input path="candidateEductionDetailsModelList[0].collage_name" id="collage_name_0" class="form-control" />
									</td>
									<td style="width:20%;">
										<form:input path="candidateEductionDetailsModelList[0].university_inititute" id="university_inititute_0" class="form-control" />
									</td>
									<td style="width:20%;">
										<form:input path="candidateEductionDetailsModelList[0].eduction" id="eduction_0" class="form-control" />
									</td>
									<td style="width:20%;">
										<form:input path="candidateEductionDetailsModelList[0].passing_year" id="passing_year_0" class="form-control" />
									</td>
									<td  style="width:20%;">
										<form:input path="candidateEductionDetailsModelList[0].percantage" id="percantage_0" class="form-control" />
									</td>
									<td style="text-align: center;">
										<div class='col-sm-6'>
											<a href="#" onclick="addCandidateEductionDetailRow();">
												<i class="fa fa-fw fa-plus-square-o" title="Add Deatils"></i>
											</a>
										</div>
									</td>
								</tr>
							</c:if>
			    			</tbody>
		    			</table>
					</div>
					<div class="box-footer" style="text-align: center;">
						<div class="col-sm-6">
							<div class="col-sm-6" align="right" style="padding-right: 5px;">
								<c:if test="${sessionScope.candidate_id == null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validEductionDetails()" style="width: 80px;">ADD</button>
								</c:if>
								<c:if test="${sessionScope.candidate_id != null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validEductionDetails()" style="width: 80px;">ADD</button>
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
		function validEductionDetails() {
			var isValid = true;
			
				if (isValid) {
					document.saveCandidateEductionDetailsForm.action = "${pageContext.request.contextPath}/saveCandidateEductionDetails";
					document.saveCandidateEductionDetailsForm.submit();
				}
		}
		
		function addCandidateEductionDetailRow() {
			var cnt = $('#candidateEductionDetailsTable tbody tr').length;
		 	alert(cnt);
			if(checkValideRow(cnt-1)){ 
				var str= " <tr>	"
						+" 	<td style='width:20%;'> "
						+" 			<input type='text' name='candidateEductionDetailsModelList["+cnt+"].collage_name' id='collage_name_"+cnt+"' class='form-control' />    "
						+" 	</td>   "
						+" 	<td style='width:20%;'>   "
						+" 			<input type='text' name='candidateEductionDetailsModelList["+cnt+"].university_inititute' id='university_inititute_"+cnt+"' class='form-control' /> "
						+" 	</td>  "
						+" 	<td style='width:20%;'>   "
						+" 			<input type='text' name='candidateEductionDetailsModelList["+cnt+"].eduction' id='eduction_"+cnt+"' class='form-control' /> "
						+" 	</td>  "
						+" 	<td style='width:20%;'>  "
						+" 			<input type='text' name='candidateEductionDetailsModelList["+cnt+"].passing_year' id='passing_year_"+cnt+"'  class='form-control' /> "
						+"	</td>   "
						+"  <td style='width:20%;'>  "
						+" 			<input type='text' name='candidateEductionDetailsModelList["+cnt+"].percantage' id='percantage_"+cnt+"' class='form-control' /> "
						+" 	</td> "
						+" 	<td style='text-align: center;'> "
						+"		<div class='col-sm-6'>"
						+" 			<a onclick='deleteCandidateEduction(this,"+cnt+")' href='#'> "
						+" 				<i class='fa fa-fw fa-trash-o' title='Delete Deatils'></i>  "
						+" 			</a>    "
						+"      </div>"
						+" 	</td>  "
						+" </tr>   ";
						$('#candidateEductionDetailsTable tbody').append(str);
			 } 
		}
		 
		function deleteCandidateEduction(tr,indexCnt) {
			  $(tr).closest('tr').remove();
			  $('#deleted_'+indexCnt).val(true);
		}
		
		function checkValideRow(cnt){
			if(!$("#collage_name_"+cnt).length == 0){
				var collage_name = $('#collage_name_'+cnt).val();
				var eduction =$('#eduction_'+cnt).val();
				var passing_year =$('#passing_year_'+cnt).val();
				var percantage = $('#percantage_'+cnt).val();
					if (collage_name == null || collage_name.length == 0) {
						alert("Collage Name is mandatory");
						$('#collage_name_'+cnt).focus();
						return false;
					}	
					if (eduction == null || eduction.length == 0) {
						alert("Eduction is mandatory");
						$('#eduction_'+cnt).focus();
						return false;
					}	
					if (passing_year == null || passing_year.length == 0) {
						alert("Passing Year is mandatory");
						$('#passing_year_'+cnt).focus();
						return false;
					}
					if (percantage == null || percantage.length == 0) {
						alert("Percantage is mandatory");
						$('#percantage_'+cnt).focus();
						return false;
					}
					return true; 
					
				}
			}
		
			
	</script>
</body>
</html>