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
	
		</h1>
	</section>

    <!-- Main content -->
    <section class="content">
		<div class="box-body">
		
 <form class="form-horizontal" name="approve_rejectForm" modelAttribute="form" method="post">
 
 <input type="hidden" id="recruitment_application_process_id" name="recruitment_application_process_id" value="${recruitment_application_process_id}">
<table id="getCandidateDetails" class="table table-bordered table-striped" style="width:100%;" border="1">
 <div class="row">
        <div class="col-md-12">
          <div class="box box-solid">
            <div class="box-header with-border">
              <P><b><font color="#195387" size="5"> ${CandidateDetails.full_name}'S PROFILE </font></b></P>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-primary">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                        Basic Details
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne" class="panel-collapse collapse in">
                    <div class="box-body">
                 Full-Name : ${CandidateDetails.full_name} <br/>
                    Date of Birth : ${CandidateBasicDetails.date_of_birth} <br/>
                    Address:${CandidateBasicDetails.address},
                     ${CandidateBasicDetails.talukaMaster.taluka},
                     ${CandidateBasicDetails.cityMaster.city},
                      ${CandidateBasicDetails.stateMaster.state},
                     ${CandidateBasicDetails.countryMaster.country}, ${CandidateBasicDetails.pincode}              
                     
                     </div>
                  </div>
                </div>
                <div class="panel box box-danger">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                        Educational and Skill Details
                      </a>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="box-body">
                    <c:forEach items="${CandidateEducationDetails}" var="eductionDetails">
                    <b><u>Latest Qualification -</u></b><br/>
					 University/Institute:${eductionDetails.university_inititute}<br/>
					Qualification:${eductionDetails.eduction}<br/>
					CGPA/Percentage:${eductionDetails.percantage}<br/>
					Year of pass-out:${eductionDetails.passing_year}<br/>
                    </c:forEach>
					 
					    <br/>
					   <br/> 
					 <b><u>Skills and Its Description -</u></b> 
					 <c:forEach items="${CandidateSkillDetails}" var="skillDetails">
                     <br/>
                     ${skillDetails.skill}: ${skillDetails.description} 
                    
                    </c:forEach>      
                     </div>
                  </div>
                </div>
                <div class="panel box box-success">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                        Contact Details
                      </a>
                    </h4>
                  </div>
                  <div id="collapseThree" class="panel-collapse collapse">
                    <div class="box-body">
                     Email-Id: ${CandidateDetails.email_id}<br/>
                     Mobile-No.: ${CandidateBasicDetails.mobile_no}<br/>
                     LinkedIn Url: ${CandidateBasicDetails.linkedln_profile_url}<br/>
                     
                     
                      </div>
                  </div>
                </div>
                 <div class="panel box box-success">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">
                        Downloads
                      </a>
                    </h4>
                  </div>
                  <div id="collapsefour" class="panel-collapse collapse">
                    <div class="box-body">
                       <div class="form-group">
								<label class="col-sm-2 control-label">Download Resume/CV :</label>
								<div class="col-sm-1">
									<button type="button" class="btn btn-primary" onclick="downloadResume();" >
										<i class="fa fa-fw fa-download" title="Download Resume File"></i>
									</button>
								</div>		
							</div>			
                       
                    </div>
                  </div>
                </div>
                <div class="form-group">
							<label class="col-sm-2 control-label">Remarks:</label>
							<div class="col-sm-8">
								<textarea name="comment" id="comment" maxlength="500" class="form-control" ></textarea>
							</div>
								
						</div>
        
                </div>
                </div>
                
            <!-- /.box-body -->
          </div>
          </div>
          </div>
         
        
		 
		</table>
		</form>
		<button type="button" id="recruit" class="btn btn-block btn-success" onclick="recruit()" style="width: 80px;" >Recruit</button>
		<button type="button" id="reject" class="btn btn-block btn-danger" onclick="reject()" style="width: 80px;">Reject</button>
    	</div>
	</section>
    
</div>
<script>
/* function downloadResume(){
	var candidate_id = $('#candidate_id').val();
	document.location = "${pageContext.request.contextPath}/downloadResume?candidate_id="+candidate_id;
} */
		function recruit(){
			var isValid = true;
			var comment = $('#comment').val();
			if(comment.length == 0){
				alert("Remarks are mandatory");
				isValid=false;
			}
			var status = "A";
			var recruitment_application_process_id = $("#recruitment_application_process_id").val();
			if (isValid) {
				document.approve_rejectForm.action = "${pageContext.request.contextPath}/savePendingModalDetails?status="+status+"&recruitment_application_process_id="+recruitment_application_process_id;
				document.approve_rejectForm.submit();
			}
		}
function reject(){
	var isValid = true;
	var comment = $('#comment').val();
	if(comment.length == 0){
		alert("Remarks are mandatory");
		isValid=false;
	}
	var status = "R";
	var recruitment_application_process_id = $("#recruitment_application_process_id").val();
	if (isValid) {
		document.approve_rejectForm.action = "${pageContext.request.contextPath}/savePendingModalDetails?status="+status+"&recruitment_application_process_id="+recruitment_application_process_id;
		document.approve_rejectForm.submit();
	}
}
	</script>
</body>
</html>