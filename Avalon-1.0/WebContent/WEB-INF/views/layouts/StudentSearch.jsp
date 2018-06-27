

<script>
$(function(){
	$("#search-keywords").keyup(function(event){
		if (event.keyCode == 13) {
			SearchStudents()
		}
	});
});
function SearchStudents(){
	
	checkForSession(function(d){
		if(d){
			$("#search-result").hide();
			if($.trim($("#search-keywords").val())==""){
				$("#search-result").fadeIn("slow");
				return false;
			}
			$.ajax({
				type:"POST",
				url:ctxPath+"/Master/Ajax/SearchStudnet",
				data:{keyword : $("#search-keywords").val()},
				success:function(res){
					$("#search-result").fadeIn("slow");
					$("#search-result").html(res);
				},error:function(){
					alert(arguments[2]);
				}
			});
		}
	});
}

function checkForEnter(e){
	if(e.charCode==13){
		SearchStudents();
	}
}

</script>

<div class='av-row av-row-31'>
	<div class='col-xs-36' style='margin-top: 8px'>
		<div class="input-group">
			<input type="text" onkeypress='checkForEnter(event)'
				class="form-control" id='search-keywords'
				placeholder="Enter SutdentId, Name, Mobile No or emailId.."
				aria-describedby="basic-addon1"> <span
				onclick='SearchStudents();' class="input-group-addon"
				id="basic-addon1"><i class='glyphicon glyphicon-search'></i></span>
		</div>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control' onchange='loadCourseOpt(this,"#stdcourseOpt")'>
			<option value="0">Select Domain</option> ${domainOptions}
		</select>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control' id='stdcourseOpt'>
			<option>Select Course</option>
		</select>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control'>
			<option>Select Batch</option>
		</select>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control'>
			<option>Student Type</option>
		</select>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control'>
			<option>Fee Status</option>
		</select>
	</div>
	<div class='col-xs-18' style='margin-top: 8px'>
		<select class='form-control'>
			<option>Active Status</option>
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
