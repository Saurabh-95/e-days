<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.getServletContext().setAttribute("ctxPath", request.getContextPath());%>

<c:if test="${admin eq null }">
	<jsp:forward page="/Login"></jsp:forward>
</c:if>



<!DOCTYPE html>
<html>
<head>
<title><decorator:title default="SiteMesh Integration" /></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="SHORTCUT ICON"
	href="<%=request.getContextPath() %>/images/avalon.png">
<script src="${ctxPath }/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/FormValidation.js"></script>
<link href="${ctxPath }/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="${ctxPath }/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<script src="${ctxPath }/js/layout.js" type="text/javascript"></script>
<script type="text/javascript"
	src="${ctxPath }/js/student-registration.js"></script>



<decorator:head />
</head>
<body>

	<section style='display: none'>

		

		<div class='av-row av-row-89'>
			<div class='container-fluid'>
				<div style="background-color:b">Student Enquiry Form 
<div style="height: 200px; border: 1px solid black;">
  <div style="border: 1px solid black;">Personal details</div>
  
  <div style="height: 150px; border:1px solid black";>
         <div style="float:left; width:50%">
               <div style=" height: 150px; border:1px solid black"> 
               
                <input type="text" style="width:100%; margin-top:2px">
                <input type="text" style="width:100%; margin-top:2px">
                
                <input type="text" style="width:48%; margin-top:2px">
                <select style="width:48%; margin-top:2px">
                     <option>@gmail.com</option>
                     <option>@outlook.com</option>
                     <option>@live.com</option>
                     <option>@yahoo.com</option>
                </select>

                <select style="width:48%; margin-top:2px">
                     <option>Select Domain</option>
                     <option>Select Domain</option>
                     <option>Select Domain</option>
                     <option>Select Domain</option>
                </select>
                <select style="width:48%; margin-top:2px">
                     <option>Select Course</option>
                     <option>Select Course</option>
                     <option>Select Course</option>
                     <option>Select Course</option>
                </select>
               <input type="text" style="width:100%; margin-top:2px">
               </div>
         </div>
         
         <div style="float:left; width:50%;">   
               <div style=" height: 150px; border:1px solid black">
               Calling Details 
               <input type="Text" style="width:100%; margin-top:2px">
                <textarea rows="5" cols="37" style="margin-top:2px"></textarea>
               <input type = "text" style="width:100%; margin-top:5px"> 
              </div>
         </div>
		 <div style="float:right; margin-top:2px; margin-left:2px">
              <div> <input type = "button"  value = "SUBMIT"> 
	          <input type = "button"  value = "RESET"></div>
		</div>	  
  </div>
   
</div>
</div>
				</div>
			</div>
		</div>
		
	</section>

	<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>


<div class="modal" id="avAlert" tabindex="-1" style="z-index: 6000"
	role="dialog" aria-labelledby="avAlertLabel">
	<div class="modal-dialog modal-sm" role="document"
		style="margin-top: 100px;">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #d1d1d1">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<label style='font-size: 16px; color: #111' id='avAlertTitle'>Alert
					Box</label>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" style="width: 50px"
					data-dismiss="modal">OK</button>
			</div>
		</div>
	</div>
</div>


<div class="modal" id="stdRegSuccessModal" tabindex="-1"
	style="z-index: 6000" role="dialog" aria-labelledby="avAlertLabel">
	<div class="modal-dialog" role="document" style="margin-top: 100px;">
		<div class="modal-content">
			<div class="modal-header bg-success text-success">
				<label style='font-size: 16px; color: #111' id='avAlertTitle'>Registration
					Successfully</label>
			</div>
			<div class="modal-body">

				<label>Student Registration Successfully</label> <label>Student
					Id : <span id='stdRegIdForModal'></span>
				</label>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default"
					onclick='loadStudentPrintPrevPage($("#stdRegSuccessModal #stdRegIdForModal").html()); loadPage("StudentRegistration","Student Reg");'
					data-dismiss="modal">
					<i class='fa fa-print'></i> Print
				</button>
				<button type="button" class="btn btn-default"
					onclick='loadPage("StudentRegistration","Student Reg");'
					data-dismiss="modal">Cancel</button>
			</div>
		</div>
	</div>
</div>

<div class="modal" id="avLogin" tabindex="-1" style="z-index: 6000"
	role="dialog" aria-labelledby="avAlertLabel">
	<div class="modal-dialog" role="document" style="margin-top: 100px;">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #d1d1d1">
				<label style='font-size: 16px; color: #111' id='avAlertTitle'>Login
					Again <label style="font-size: 10px" class="text-danger">(Your
						Session is Timeout)</label>
				</label>
			</div>
			<div class="modal-body">
				<label style='font-size: 18px' class="text-primary">Avalon
					Master</label>
				<form id='loginForm' action="Login" method="post"
					onsubmit="return validate()">
					<span class='text-danger' id='employeeIdError'></span> <input
						name='employeeId' maxlength="12" id='employeeId' type="text"
						placeholder='Enter Employee Id' class="form-control input-lg"
						style="margin-bottom: 10px" /> <span class='text-danger'
						id='passwordError'></span> <input name='password' maxlength="100"
						id='password' type="password" placeholder='Enter Password'
						class="form-control input-lg" style="margin-bottom: 10px" />
					<button class='btn btn-primary btn-lg'>
						<i class='glyphicon glyphicon-lock'></i> Secure Login
					</button>
					<button class='btn btn-link btn-lg'>Forget Password..??</button>
				</form>

			</div>
		</div>
	</div>
</div>

<jsp:include page='../enquiry/EnquireyModal.jsp'></jsp:include>

<input type="hidden" id="reqContextPath"
	value="<%=request.getContextPath()%>">
<script>
            
               $("section").height(window.innerHeight);
               $("section").width(window.innerWidth);
               $("section").css("min-height","600px");
               $("section").css("min-width","1250px");
               $("section").fadeIn('fast',function(){
            	   $("#body").fadeIn("slow");   
               });
               var ctxPath = $("#reqContextPath").val();
               
               $( window ).resize(function() {
            	   $("section").height(window.innerHeight);
                   $("section").width(window.innerWidth);
                   $("section").css("min-height","600px");
                   $("section").css("min-width","1250px");
            	 });
               
        </script>






