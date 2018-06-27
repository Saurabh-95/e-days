<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="<%=request.getContextPath() %>/js/batch.js" type="text/javascript"></script>

<div class='av-row av-row-31'>
	<div class='col-xs-36' style='margin-top:8px'>
		<div class="input-group">
		  <input type="text" onkeypress='batchSearchForEnter(event)' class="form-control" id='batch-search-keywords' placeholder="Enter batch Id, Name, Technology etc" aria-describedby="basic-addon1">
		  <span onclick='SearchBatchs()' class="input-group-addon" id="basic-addon1"><i class='glyphicon glyphicon-search'></i></span>
		</div>
	</div>
	<div class='col-xs-18' style='margin-top:8px'>
		<select class='form-control batchOption' id='batch-domain' onchange='loadCourseOpt(this,"#batch-course")'>
			<option value="0">Select Domain</option> ${domainOptions}
		</select>
	</div>
	<div class='col-xs-18' style='margin-top:8px'>
		<select class='form-control batchOption' id="batch-course">
			<option value="0">Select Course</option>
		</select>
	</div>
	<div class='col-xs-18' style='margin-top:8px'>
		<select class='form-control' id="batch-schStatus">
			<option value="0">Schedule Status</option>
			<option value="1">Complete</option>
			<option value="2">Partial</option>
		</select>
	</div>
	<div class='col-xs-18' style='margin-top:8px'>
		<input type="date" class="form-control" placeholder="batch start Date" id="batch-startDate"/>
	</div>
	
	
	<div class='col-xs-18' style='margin-top:8px'>
		<button class='btn btn-primary' onclick="courseBatch()" ><i class='glyphicon glyphicon-search'></i> Search</button>
	</div>
	
</div>
<div class='av-row av-row-69' id='batch-result'>
	<jsp:include page="../master/BatchSearchResult.jsp"></jsp:include>
</div>
