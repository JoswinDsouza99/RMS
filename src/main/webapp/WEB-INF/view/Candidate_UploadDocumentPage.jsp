<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="LeftMenu.jsp"></jsp:include>
<jsp:include page="DefaultJSCall.jsp"></jsp:include>

<body>

	 <div class="content-wrapper">
	     <section class="content-header">
	      <h1>
	        Upload Document
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="${pageContext.request.contextPath}/goToDashboard"><i class="fa fa-dashboard"></i>Home</a></li>
	        <li class="active">Upload Document</li>
	      </ol>
	    </section>
 <!-- Main content -->
  <form:form class="form-horizontal" name="saveCandidateUploadDocumentform" modelAttribute="form" method="post">
					<form:hidden  id="candidate_upload_document_id" path="candidate_upload_document_id"/>
					<form:hidden  id="candidate_id" path="candidate_id"/>
    <section class="content">
      <div class="row">
        <div class="col-md-7">
          <div class="box">
         
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered">
                <tr>
                 <label for="myfile">Select a file:</label>
<input type="file" id="myfile" name="myfile">
                   </tr>
               
              </table>
              
<br/><br/>

              <div class="col-sm-6" align="left" style="padding-left: 5px;">
							<button type="button" id="saveAreaButton" class="btn btn-block btn-primary" onclick="validLanguageDetail()" style="width: 80px;">UPDATE</button>
								
							</div>
						</div>
						</div>
						</div>
						
						</section>
						
          </form:form>
          <!-- /.box -->
	<script>
		function validLanguageDetails() {
		
			
				document.saveCandidateUploadDocumentform.action = "${pageContext.request.contextPath}/saveCandidateUploadDocument";
				document.saveCandidateUploadDocumentform.submit();
			
		}
		
	</script>
</body>
</html>