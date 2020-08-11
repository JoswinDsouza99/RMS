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

<table id="getCompanyDetails" class="table table-bordered table-striped" style="width:100%;" border="1">
 <div class="row">
        <div class="col-md-12">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title"><b><font color="#195387" size="10"> ${CompanyBasicDetails.companyMaster.company_name}</font></b></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-primary">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                        About Us
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne" class="panel-collapse collapse in">
                    <div class="box-body">
                      ${CompanyBasicDetails.company_description}
                    </div>
                  </div>
                </div>
                <div class="panel box box-danger">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                        Branch Details
                      </a>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="box-body">
                     Address:
                     ${CompanyBasicDetails.address}, ${CompanyBasicDetails.talukaMaster.taluka},
                     ${CompanyBasicDetails.cityMaster.city},
                     ${CompanyBasicDetails.stateMaster.state},
                     ${CompanyBasicDetails.countryMaster.country}, ${CompanyBasicDetails.pincode} 
                    </div>
                  </div>
                </div>
                <div class="panel box box-success">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                        Contact Us
                      </a>
                    </h4>
                  </div>
                  <div id="collapseThree" class="panel-collapse collapse">
                    <div class="box-body">
                       <div class="col-md-3 col-sm-4"><i class="fa fa-fw fa-phone"></i><b> Telephone Number:</b> ${CompanyBasicDetails.telephone_no}</div>
                       <div class="col-md-3 col-sm-4"><i class="fa fa-internet-explorer"></i><b> Our Website:</b> ${CompanyBasicDetails.company_website}</div>
                       <div class="col-md-3 col-sm-4"><i class="fa fa-fw fa-envelope-o"></i><b> Mail-Id:</b> ${CompanyBasicDetails.companyMaster.email_id}</div>
                   	   <div class="col-md-4 col-sm-2"><i class="fa fa-fw fa-facebook"></i><b> Facebook:</b> ${CompanyBasicDetails.facebook_profile_url}</div>
                     <div class="col-md-3 col-sm-5"><i class="fa fa-fw fa-linkedin-square"></i> <b>LinkedIn:</b> ${CompanyBasicDetails.linkedin_profile_url}</div>
                    <div class="col-md-3 col-sm-5"><i class="fa fa-fw  fa-twitter"></i><b> Twitter:</b> ${CompanyBasicDetails.twitter_profile_url}</div>
                    </div>
                  </div>
                </div>
                </div>
                </div>
                
            <!-- /.box-body -->
          </div>
          </div>
          </div>
          
</table>

          <div class="box box-primary">
            <div class="box-header">
              <h3 class="box-title"><b>Job Details</b></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
            <tr>
									<th width="10px" style="text-align: center;">Sr No</th>
									<th>Company Name</th>
									<th>Job Title</th>
									<th>Salary</th>
									<th>Employment Type</th>
									<th>Experience</th>
									<th>Job Description</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${jobDetailsList}" var="job" varStatus="i">
									<tr>
										<td width="50px" style="text-align: center"><c:out value="${i.index + 1}"></c:out></td>
										<td>${job.getCompanyMaster().getCompany_name()}</td>
										<td>${job.getJob_name()}</td>
										<td>${job.getMinimum_salary()}-${job.getMaximum_salary()}</td>
										<td>${job.getEmployment_type()}</td>
										<td>${job.getExperience()}</td>
										<td>${job.getJob_description()}</td>
										<td><a href="#"><button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validSkillDetails()" style="width: 80px;">Apply</button>
										</a></td>
									</tr>
			    				</c:forEach>
			    			</tbody>
                
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
    	</div>
	</section>
    
</div>
</body>
</html>