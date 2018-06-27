
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Avalon-Dashbord</title>
<style>
.tumb-icon {
	min-height: 140px;
	margin-top: 10px;
	background-color: #ECECEC;
	border-top: 1px solid #111;
	border-right: 1px solid #111;
	border-bottom: 1px solid #111;
	border-left: 1px solid #111;
	box-shadow: 0px 0px 5px rgb(241, 241, 241);
}

.tumb-icon>label {
	display: block;
	text-align: center;
	background-color: #111;
	/* color:#a6692b; */
	color: white;
	margin: 0px;
	padding: 3px;
}

.tumb-link {
	display: block;
	padding: 3px;
}

.tumb-link:hover {
	background-color: #d1d1d1;
	text-decoration: none;
	font-weight: bold;
}
</style>

<%-- <c:forEach var="cur" items="${courseList}">
	${cur.domainBean.domainName} : ${cur.courseName},    
</c:forEach> --%>


<div class='av-row tab-panel' id='1'>


	<div id='body' class='av-row'>

		<div class='col-xs-26 av-row' style="background-color: #fcfcfc">
			<div class='row' style='padding-left: 4px; padding-right: 4px'>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Student Manager</label> <a href='#'
							class="text-primary tumb-link">Student Registration</a> <a
							href='#' class="text-primary tumb-link">Student Record</a> <a
							href='#' class="text-primary tumb-link">Student Panel</a> <a
							href='#' class="text-primary tumb-link">Dashbord</a>
					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Batch Manager</label> <a href='#'
							class="text-primary tumb-link">Batch Create</a> <a href='#'
							class="text-primary tumb-link">Batch Transfer</a> <a href='#'
							class="text-primary tumb-link">Assign Batch</a> <a href='#'
							class="text-primary tumb-link">Search Batch</a> <a href='#'
							class="text-primary tumb-link">Dashbord</a>

					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Lacture Management</label> <a href='#'
							class="text-primary tumb-link">Schedule Lacture</a> <a href='#'
							class="text-primary tumb-link">Submit Delivery Lacture</a> <a
							href='#' class="text-primary tumb-link">Delivery Reports</a> <a
							href='#' class="text-primary tumb-link">Dashbord</a>
					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Placemnet Cell</label> <a href='#'
							class="text-primary tumb-link">Placement List</a> <a href='#'
							class="text-primary tumb-link">Find Talant</a> <a href='#'
							class="text-primary tumb-link">Current Session Drive</a> <a
							href='#' class="text-primary tumb-link">Dashbord</a>
					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Employee Dashbord</label> <a href='#'
							class="text-primary tumb-link">Registration</a> <a href='#'
							class="text-primary tumb-link">Leave's</a> <a href='#'
							class="text-primary tumb-link">Dashbord</a>
					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Carrer Shiner</label> <a href='#'
							class="text-primary tumb-link">Manage Syllabus</a> <a href='#'
							class="text-primary tumb-link">Package Create</a> <a href='#'
							class="text-primary tumb-link">Holiday</a> <a href='#'
							class="text-primary tumb-link">We shine Skills</a>
					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Reporting Panel</label> <a href='#'
							class="text-primary tumb-link">Student Registration</a> <a
							href='#' class="text-primary tumb-link">Student Record</a> <a
							href='#' class="text-primary tumb-link">Student Panel</a> <a
							href='#' class="text-primary tumb-link">Dashbord</a>
					</div>
				</div>
				<div class='col-xs-9'>
					<div class='tumb-icon'>
						<label>Fee/Account Manager</label> <a href='#'
							class="text-primary tumb-link">Fee Record</a> <a href='#'
							class="text-primary tumb-link">Fee Submisstion</a> <a href='#'
							class="text-primary tumb-link">Fee Calculator</a> <a href='#'
							class="text-primary tumb-link">Business Report</a> <a href='#'
							class="text-primary tumb-link">Dashbord</a>
					</div>
				</div>

				<div class='col-xs-36'>
					<hr>
					<label>Branch Info / Admin Info</label>

				</div>


			</div>


		</div>
		<div class='col-xs-10 av-row' style="background-color: #e1e1e1">
			Activity Area</div>

	</div>


</div>
