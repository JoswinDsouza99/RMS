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
	        Candidate Skill Details
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/goToDashboard"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Candidate Skill Details</li>
	      </ol>
	    </section>

	    <!-- Main content -->
	    <section class="content">
			<div class="box box-info">
				<div class="box-header with-border">
					<!-- <h3 class="box-title">Add Area</h3> -->
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
	            <form:form class="form-horizontal" name="saveCandidateSkillDetailsForm" modelAttribute="form" method="post">
					<form:hidden  id="candidate_skill_detail_id" path="candidate_skill_detail_id"/>
					<form:hidden  id="candidate_id" path="candidate_id"/>
					<div class="box-body">
						<table id="CandidateSkillDetailsTable" class="table table-bordered table-striped" style="width: 70%;" align="center">
							<thead>
			                	<tr>
									<th>Skill</th>
									<th>Description</th> 
									<th style="width: 20%;">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${form.candidateSkillDetailsModelsList != null}">
									<c:forEach items="${form.candidateSkillDetailsModelsList}" var="skill" varStatus="i">
										<tr>
											<td style="width:20%;">
												<form:input path="candidateSkillDetailsModelsList[${i.index}].skill" id="skill_${i.index}"  class="form-control" />
											</td>
											<td style="width:20%;">
												<form:textarea path="candidateSkillDetailsModelsList[${i.index}].description" id="description_${i.index}"  class="form-control" />
											</td>
											<td style="text-align: center;">
												<c:if test="${i.index > 0}">
													<a onclick="deleteCandidateSkill(this,${i.index})"
														href="#"> <i class="fa fa-fw fa-trash-o"
														title="Delete Deatils"></i>
													</a>
												</c:if>
												<c:if test="${i.index == 0}">
													<a href="#" onclick="addCandidateSkillDetailRow();">
														<i class="fa fa-fw fa-plus-square-o" title="Add Deatils"></i>
													</a>
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${form.candidateSkillDetailsModelsList == null || form.candidateSkillDetailsModelsList.size() == 0}">
								<tr>
									<td style="width:20%;">
										<form:input path="candidateSkillDetailsModelsList[0].skill" id="skill_0" class="form-control" />
									</td>
									<td style="width:20%;">
										<form:textarea path="candidateSkillDetailsModelsList[0].description" id="description_0" class="form-control" />
									</td>
									<td>
										<a href="#" onclick="addCandidateSkillDetailRow();">
											<i class="fa fa-fw fa-plus-square-o" title="Add Deatils"></i>
										</a>
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
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validSkillDetails()" style="width: 80px;">ADD</button>
								</c:if>
								<c:if test="${sessionScope.candidate_id != null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validSkillDetails()" style="width: 80px;">UPDATE</button>
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
		function validSkillDetails() {
			var isValid = true;
			
				if (isValid) {
					document.saveCandidateSkillDetailsForm.action = "${pageContext.request.contextPath}/saveCandidateSkillDetails";
					document.saveCandidateSkillDetailsForm.submit();
				}
		}
		
		function addCandidateSkillDetailRow() {
			var cnt = $('#CandidateSkillDetailsTable tbody tr').length;
		 	//alert(cnt);
			if(checkValideRow(cnt-1)){ 
				var str= " <tr>	"
						+" 	<td style='width:20%;'> "
						+" 			<input type='text' name='candidateSkillDetailsModelsList["+cnt+"].skill' id='skill_"+cnt+"' class='form-control' />    "
						+" 	</td>   "
						+" 	<td style='width:20%;'>   "
						+" 			<textarea name='candidateSkillDetailsModelsList["+cnt+"].description' id='description_"+cnt+"' class='form-control' /> "
						+" 	</td>  "
						+" 	<td style='text-align: center;'> "
						+" 			<a onclick='deleteCandidateSkill(this,"+cnt+")' href='#'> "
						+" 				<i class='fa fa-fw fa-trash-o' title='Delete Deatils'></i>  "
						+" 			</a>    "
						+" 	</td>  "
						+" </tr>   ";
						$('#CandidateSkillDetailsTable tbody').append(str);
			 } 
		}
		 
		function deleteCandidateSkill(tr,indexCnt) {
			  $(tr).closest('tr').remove();
			  $('#deleted_'+indexCnt).val(true);
		}
		
		function checkValideRow(cnt){
			if(!$("#skill_"+cnt).length == 0){
				var skill = $('#skill_'+cnt).val();
				var description =$('#description_'+cnt).val();
				var skill_rate =$('#skill_rate_'+cnt).val();
				var percantage = $('#percantage_'+cnt).val();
					if (skill == null || skill.length == 0) {
						alert("Skill is mandatory");
						$('#skill_'+cnt).focus();
						return false;
					}	
					if (description == null || description.length == 0) {
						alert("Description is mandatory");
						$('#description_'+cnt).focus();
						return false;
					}	
					return true; 
					
				}
			}
		
			
	</script>
</body>
</html>