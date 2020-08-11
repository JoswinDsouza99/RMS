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
	        Company Basic Details
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/goToDashboard"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Company Basic Details</li>
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
	            <form:form class="form-horizontal" name="saveCompanyBasicDetailsForm" modelAttribute="form" method="post">
					<form:hidden  id="company_basic_detail_id" path="company_basic_detail_id"/>
					<form:hidden  id="company_id" path="company_id"/>
					<div class="box-body">
						<div class="form-group">
							<label class="col-sm-2 control-label">Company Name</label>
							<div class="col-sm-3">
								<form:input path="company_name" id="company_name" readonly="true" class="form-control"/>
							</div>
							<label class="col-sm-2 control-label">Email Id</label>
							<div class="col-sm-3">
								<form:input path="email_id" id="email_id" readonly="true" class="form-control"/>
							</div>
							
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Company Registration Number</label>
							<div class="col-sm-3">
								<form:input path="company_reg_no" id="company_reg_no" readonly="true" class="form-control" />
							</div>
							<label class="col-sm-2 control-label">Company Website</label>
							<div class="col-sm-3">
								<form:input path="company_website" id="company_website" maxlength="100" class="form-control" />
							</div>							
					
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Company Description</label>
							<div class="col-sm-8">
								<form:textarea path="company_description" id="company_description" maxlength="500" class="form-control" />
							</div>
								
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">Address</label>
							<div class="col-sm-8">
								<form:textarea path="address" id="address" maxlength="500" class="form-control" />
							</div>
							</div>
								
						<div class="form-group">
							<label class="col-sm-2 control-label">Country</label>
							<div class="col-sm-3">
								<form:select path="country_id" id="country_id" class="form-control" style="width: 100%;">
									<form:option value="0">-----Select-----</form:option>
									<form:options items="${countryList}" itemValue="country_id" itemLabel="country"></form:options>
								</form:select>
							</div>
							<label class="col-sm-2 control-label">State</label>
							<div class="col-sm-3">
								<form:select path="state_id" id="state_id" class="form-control" style="width: 100%;">
									<form:option value="0">-----Select-----</form:option>
									<form:options items="${stateList}" itemValue="state_id" itemLabel="state"></form:options>
								</form:select>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">District</label>
							<div class="col-sm-3">
								<form:select path="district_id" id="district_id" class="form-control" style="width: 100%;" >
									<form:option value="0">-----Select-----</form:option>
									<form:options items="${districtList}" itemValue="district_id" itemLabel="district"></form:options>
								</form:select>
							</div>
							<label class="col-sm-2 control-label">Taluka</label>
							<div class="col-sm-3">
								<form:select path="taluka_id" id="taluka_id" class="form-control" style="width: 100%;">
									<form:option value="0">-----Select-----</form:option>
									<form:options items="${talukaList}" itemValue="taluka_id" itemLabel="taluka"></form:options>
								</form:select>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">City</label>
							<div class="col-sm-3">
								<form:select path="city_id" id="city_id" class="form-control" style="width: 100%;">
									<form:option value="0">-----Select-----</form:option>
									<form:options items="${cityList}" itemValue="city_id" itemLabel="city"></form:options>
								</form:select>
							</div>
							<label class="col-sm-2 control-label">Pincode</label>
							<div class="col-sm-3">
								<form:input path="pincode" id="pincode" maxlength="6" class="form-control" />
							</div>
						</div>
						
						<div class="form-group" >
							<label class="col-sm-2 control-label">Mobile No</label>
							<div class="col-sm-3">
								<form:input path="mobile_no" id="mobile_no" maxlength="15" class="form-control" />
							</div>
							<label class="col-sm-2 control-label">Telephone No</label>
							<div class="col-sm-3">
								<form:input path="telephone_no" id="telephone_no" maxlength="15" class="form-control" />
							</div>
						</div>
						
						<div class="form-group" >
							<label class="col-sm-2 control-label">Linkedln Profile URL</label>
							<div class="col-sm-3">
								<form:input path="linkedin_profile_url" id="linkedln_profile_url" maxlength="100" class="form-control" />
							</div>
							<label class="col-sm-2 control-label">Facebook Profile URL</label>
							<div class="col-sm-3">
								<form:input path="facebook_profile_url" id="facebook_profile_url" maxlength="100" class="form-control" />
							</div>
						</div>
						
						<div class="form-group" >
							<label class="col-sm-2 control-label">Twitter Profile URL</label>
							<div class="col-sm-3">
								<form:input path="twitter_profile_url" id="twitter_profile_url" maxlength="100" class="form-control" />
							</div>
							
						</div>
					</div>
					
					<div class="box-footer" style="text-align: center;">
						<div class="col-sm-6">
							<div class="col-sm-6" align="right" style="padding-right: 5px;">
								<c:if test="${company_basic_detail_id == null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validDetails()" style="width: 80px;">UPDATE</button>
								</c:if>
								<c:if test="${company_basic_detail_id != null}">
									<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validDetails()" style="width: 80px;">UPDATE</button>
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
		function validDetails() {
			var isValid = true;
			var company_website = $('#company_website').val();
			var company_description = $('#company_description').val(); 
			var address = $('#address').val();
			var country = $('#country_id').val(); 
			var state = $('#state_id').val();
			var district = $('#district_id').val();
			var taluka = $('#taluka_id').val();
			var city = $('#city_id').val();
			var pincode = $('#pincode').val();
			var mobile = $('#mobile_no').val();
			var telephone = $('#telephone_no').val();
			var linkedin = $('#linkedln_profile_url').val();
			var facebook = $('#facebook_profile_url').val();
			var twitter = $('#twitter_profile_url').val();
			
			if(company_website.length == 0){
				alert("Company Website is mandatory");
				isValid=false;	
			}
				
			if(company_description.length == 0){
				alert("Company Description is mandatory");
				isValid=false;								 
			}
			if(address.length == 0){
				alert("Address is mandatory");
				isValid=false;								 
			}
			if(country.length == 0){
				alert("Country is mandatory");
				isValid=false;								 
			}
			if(state.length == 0){
				alert("State is mandatory");
				isValid=false;								 
			}
			if(district.length == 0){
				alert("District is mandatory");
				isValid=false;								 
			}
			if(taluka.length == 0){
				alert("Taluka is mandatory");
				isValid=false;								 
			}
			if(city.length == 0){
				alert("City is mandatory");
				isValid=false;								 
			}
			if(pincode.length == 0){
				alert("Pincode is mandatory");
				isValid=false;								 
			}
			if(mobile.length == 0){
				alert("Mobile No. is mandatory");
				isValid=false;								 
			}
			if(telephone.length == 0){
				alert("Telephone No. is mandatory");
				isValid=false;								 
			}
			if(linkedin.length == 0){
				alert("LinkedIn URL is mandatory");
				isValid=false;								 
			}
			if(facebook.length == 0){
				alert("Facebook URL is mandatory");
				isValid=false;								 
			}
			if(twitter.length == 0){
				alert("Twitter URL is mandatory");
				isValid=false;								 
			}

		
			if (isValid) {
				document.saveCompanyBasicDetailsForm.action = "${pageContext.request.contextPath}/saveCompanyBasicDetails";
				document.saveCompanyBasicDetailsForm.submit();
			}
		}
	</script>
</body>
</html>