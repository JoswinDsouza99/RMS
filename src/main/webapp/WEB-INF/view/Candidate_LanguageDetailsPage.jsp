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
	        Candidate's Language Details
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/validUser"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Candidate's Language Details</li>
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
	            </div>
	            <form:form class="form-horizontal" name="saveCandidateLanguageDetailsForm" modelAttribute="form" method="post">
					<form:hidden  id="candidate_language_detail_id " path="candidate_language_detail_id"/>
					<form:hidden  id="candidate_id" path="candidate_id"/>
					<div class="box-body">
						<table id="candidateLanguageDetailsTable" class="table table-bordered table-striped">
							<thead>
			                	<tr>
									<th>Language</th>
									<th>Read</th>
									<th>Write</th>
									<th>Speak</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${form.candidateLanguageDetailsModelList != null}">
									<c:forEach items="${form.candidateLanguageDetailsModelList}" var="language" varStatus="i">
										<tr>
											<td>English</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelsList[${i.index}].english_read" id="english_read_${i.index}"   />
											</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelsList[${i.index}].english_write" id="english_write_${i.index}"   />
											</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelsList[${i.index}].english_speak" id="english_speak_${i.index}"   />
											</td>
											<td style="text-align: center;">
												<div class='col-sm-6'>
													<c:if test="${i.index > 0}">
														<a onclick="deleteCandidateSkill(this,${i.index})"
															href="#"> <i class="fa fa-fw fa-trash-o"
															title="Delete Details"></i>
														</a>
													</c:if>
													<c:if test="${i.index == 0}">
														<a href="#" onclick="addCandidateSkillDetailRow();">
															<i class="fa fa-fw fa-plus-square-o" title="Add Details"></i>
														</a>
													</c:if>
												</div>
											</td>
									</tr>
									<tr>
											<td>Hindi</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelList[${i.index}].hindi_read" id="hindi_read_${i.index}"  />
											</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelList[${i.index}].hindi_write" id="hindi_write_${i.index}"   />
											</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelList[${i.index}].hindi_speak" id="hindi_speak_${i.index}"  />
											</td>
											<td style="text-align: center;">
												<div class='col-sm-6'>
													<c:if test="${i.index > 0}">
														<a onclick="deleteCandidateSkill(this,${i.index})"
															href="#"> <i class="fa fa-fw fa-trash-o"
															title="Delete Details"></i>
														</a>
													</c:if>
													<c:if test="${i.index == 0}">
														<a href="#" onclick="addCandidateSkillDetailRow();">
															<i class="fa fa-fw fa-plus-square-o" title="Add Details"></i>
														</a>
													</c:if>
												</div>
											</td>
									</tr>
									<tr>
											<td>Gujarati</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelsList[${i.index}].gujarati_read" id="gujarati_read_${i.index}"   />
											</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelsList[${i.index}].gujarati_write" id="gujarati_write_${i.index}"   />
											</td>
											<td style="width:20%;">
												<form:checkbox path="candidateLanguageDetailsModelsList[${i.index}].gujarati_speak" id="gujarati_speak_${i.index}"   />
											</td>
											<%-- <td style="text-align: center;">
												<div class='col-sm-6'>
													<c:if test="${i.index > 0}">
														<a onclick="deleteCandidateSkill(this,${i.index})"
															href="#"> <i class="fa fa-fw fa-trash-o"
															title="Delete Details"></i>
														</a>
													</c:if>
													<c:if test="${i.index == 0}">
														<a href="#" onclick="addCandidateSkillDetailRow();">
															<i class="fa fa-fw fa-plus-square-o" title="Add Details"></i>
														</a>
													</c:if>
												</div>
											</td> --%>
									</tr>
									</c:forEach>
								</c:if>
								<c:if test="${form.candidateLanguageDetailsModelList == null || form.candidateLanguageDetailsModelList.size() == 0}">
								<tr>
								<td style="width:20%;">
								English
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].english_read" id="english_read_0"  />
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].english_write" id="english_write_0"  />
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].english_speak" id="english_speak_0"  />
									</td>
									<!-- <td style="text-align: center;">
										<div class='col-sm-6'>
											<a href="#" onclick="addCandidateLanguageDetailRow();">
												<i class="fa fa-fw fa-plus-square-o" title="Add Details"></i>
											</a>
										</div>
									</td> -->
								</tr>
								<tr>
								<td style="width:20%;">
								Hindi
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].hindi_read" id="hindi_read_0"  />
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].hindi_write" id="hindi_write_0"  />
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].hindi_speak" id="hindi_speak_0"  />
									</td>
									<!-- <td style="text-align: center;">
										<div class='col-sm-6'>
											<a href="#" onclick="addCandidateLanguageDetailRow();">
												<i class="fa fa-fw fa-plus-square-o" title="Add Details"></i>
											</a>
										</div>
									</td> -->
								</tr>
								<tr>
								<td style="width:20%;">
								Gujarati
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].gujarati_read" id="gujarati_read_0"  />
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].gujarati_write" id="gujarati_write_0"  />
									</td>
									<td style="width:20%;">
										<form:checkbox path="candidateLanguageDetailsModelList[0].gujarati_speak" id="gujarati_speak_0"  />
									</td>
									<!-- <td style="text-align: center;">
										<div class='col-sm-6'>
											<a href="#" onclick="addCandidateLanguageDetailRow();">
												<i class="fa fa-fw fa-plus-square-o" title="Add Details"></i>
											</a>
										</div>
									</td> -->
								</tr>
							</c:if>
			    			</tbody>
		    			</table>
					</div>
					<div class="box-footer" style="text-align: center;">
						<div class="col-sm-6">
							<div class="col-sm-6" align="right" style="padding-right: 5px;">
								<c:if test="${sessionScope.candidate_id == null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validLanguageDetails()" style="width: 80px;">ADD</button>
								</c:if>
								<c:if test="${sessionScope.candidate_id != null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validLanguageDetails()" style="width: 80px;">UPDATE</button>
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
		function validLanguageDetails() {
			var isValid = true;
			
				if (isValid) {
					document.saveCandidateLanguageDetailsForm.action = "${pageContext.request.contextPath}/saveCandidateLanguageDetails";
					document.saveCandidateLanguageDetailsForm.submit();
				}
		}
		
	/* 	function addCandidateLanguageDetailRow() {
			var cnt = $('#candidateLanguageDetailsTable tbody tr').length;
		 	alert(cnt);
			if(checkValideRow(cnt-1)){ 
				var str= " <tr>	"
						+" 	<td style='width:20%;'> "
						+" 			<input type='checkbox' name='candidateLanguageDetailsModelList["+cnt+"].english_read' id='english_read_"+cnt+"' class='form-control' />    "
						+" 	</td>   "
						+" 	<td style='width:20%;'> "
						+" 			<input type='checkbox' name='candidateLanguageDetailsModelList["+cnt+"].english_write' id='english_write_"+cnt+"' class='form-control' />    "
						+" 	</td>   "
						+"<td style='width:20%;'> "
						+" 			<input type='checkbox' name='candidateLanguageDetailsModelList["+cnt+"].english_speak' id='english_speak_"+cnt+"' class='form-control' />    "
						+" 	</td>   "
						+" 	<td style='text-align: center;'> "
						+"		<div class='col-sm-6'>"
						+" 			<a onclick='deleteCandidateLanguage(this,"+cnt+")' href='#'> "
						+" 				<i class='fa fa-fw fa-trash-o' title='Delete Details'></i>  "
						+" 			</a>    "
						+"      </div>"
						+" 	</td>  "
						+" </tr>   ";
						$('#candidateLanguageDetailsTable tbody').append(str);
			 } 
		}
		  */
		function deleteCandidateLanguage(tr,indexCnt) {
			  $(tr).closest('tr').remove();
			  $('#deleted_'+indexCnt).val(true);
		}
		
		function checkValideRow(cnt){
			alert(cnt);
			if(!$("#english_read_"+cnt).checked == 0){
				var English_read = $('#english_read_'+cnt).val();
					if (English_read.checked==0) {
						alert("English language is mandatory!");
						$('#english_read_'+cnt).focus();
						return false;
					}	
								}	
					return true; 
					
				}
			
		
			
	</script>
</body>
</html>