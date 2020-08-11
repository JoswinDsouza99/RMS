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
	        Upload Document
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/validUser"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Upload Document</li>
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
	            <form:form class="form-horizontal" name="saveCandidateUploadDocument" enctype="multipart/form-data"  modelAttribute="form" method="post">
				    <form:hidden  id="candidate_upload_document_id" path="candidate_upload_document_id" />
					<form:hidden  id="candidate_id" path="candidate_id"/>
					<div class="box-body">
						<div class="form-group">
							<label class="col-sm-2 control-label">Upload Resume / CV :</label>
							<div class="col-sm-3">
								<form:input type="file" accept=".pdf" path="resume_path" id="resume_path"/>
							</div>	
							<label style="color: red; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>*Please upload resume/cv in pdf file</b></label>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Upload Educational Qualifications :</label>
							<div class="col-sm-3">
								<form:input type="file" accept=".pdf" path="candidate_photo_path" id="candidate_photo_path"/>
							</div>	
							<label style="color: red; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>*Please upload your documents in a single PDF file</b></label>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Upload Photo :</label>
							<div class="col-sm-3">
								<form:input type="file" accept=".png,.jpeg" path="candidate_photo_path" id="candidate_photo_path"/>
							</div>	
							<label style="color: red; margin-bottom: 0px; margin-top: 0px; height: 15px;"><b>*Please upload photo in .png/.jpeg file</b></label>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Upload ID Proof :</label>
							<div class="col-sm-3">
								<form:input type="file" accept=".png,.jpeg" path="id_proof_path" id="id_proof_path"/> 
							</div>	
														
						<c:if test="${candidate_upload_document_id != 0}">
							<div class="form-group">
								<label class="col-sm-2 control-label">Download Resume/CV :</label>
								<div class="col-sm-1">
									<button type="button" class="btn btn-primary" onclick="downloadResume();" >
										<i class="fa fa-fw fa-download" title="Download Resume File"></i>
									</button>
								</div>		
							</div>												
						</c:if>								
					</div>
					<div class="box-footer" style="text-align: center;">
						<div class="col-sm-6">
							<div class="col-sm-6" align="right" style="padding-right: 5px;">
								<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validUploadDocument()" style="width: 80px;">ADD</button>
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
		function validUploadDocument() {
			var isValid = true;
			if (isValid) {
				document.saveCandidateUploadDocument.action = "${pageContext.request.contextPath}/saveCandidateUploadDocument";
				document.saveCandidateUploadDocument.submit();
			}
		}
		
		function downloadResume(){
			var candidate_id = $('#candidate_id').val();
			document.location = "${pageContext.request.contextPath}/downloadResume?candidate_id="+candidate_id;
		}
	</script>
</body>
</html>