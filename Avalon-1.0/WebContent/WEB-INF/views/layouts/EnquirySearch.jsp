

<script>
	
	
</script>

<div class='av-row av-row-31'>
	<div class='col-xs-36' style='margin-top: 8px'>
		<div class="input-group">
			<input type="text" onkeypress='enqForEnter(event)'
				class="form-control" id='enq-search-keywords'
				placeholder="Enter SutdentId, Name, Technology etc"
				aria-describedby="basic-addon1"> <span
				onclick='SearchEnquiry()' class="input-group-addon"
				id="basic-addon1"><i class='glyphicon glyphicon-search'></i></span>
		</div>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control' onchange="loadCourseOpt(this,'#enq-courseOpt')">
			<option>Select Domain</option> ${domainOptions}
		</select>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control' id="enq-courseOpt">
			<option>Select Course</option>
		</select>
	</div>

	<div class='col-xs-18' style='margin-top: 8px'>
		<button class='btn btn-primary'>
			<i class='glyphicon glyphicon-search'></i> Search
		</button>
	</div>

</div>
<div class='av-row av-row-69' id='search-result'>
	<jsp:include page="../student/StudentSearchResults.jsp"></jsp:include>
</div>
