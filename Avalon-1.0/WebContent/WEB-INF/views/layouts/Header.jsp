
<style>
.top-menu {
	overflow: hidden;
}

.top-menu .menu-item {
	height: 100%;
}

.top-menu .menu-item:hover {
	/* background-color: #a6692b; */
	cursor: pointer;
}

.top-menu .drop-down {
	display: none;
	position: absolute;
	top: 20px;
	z-index: 10000;
	background-color: white;
	box-shadow: 0px 0px 3px rgb(241, 241, 241);
	border: 1px solid #d1d1d1;
}

.top-menu .drop-down ul {
	padding: 0px;
	margin: 0px;
	list-style-type: none;
	min-width: 180px;
}

.top-menu .drop-down ul li {
	
}

.top-menu .drop-down ul li a {
	padding: 5px 15px 5px 15px;
	display: block;
	color: #222;
	text-decoration: none;
}

.top-menu .drop-down ul li a:hover {
	background-color: #a6692b;
	color: white;
	cursor: pointer;
}

#toolbar {
	font-size: 16px;
	padding: 0px 5px 0px 0px;
	color: #000;
	border-left: 1px solid #111;
	margin-left: -1px;
}

#toolbar span {
	text-align: center;
	width: 35px;
	padding: 2px;
	display: inline-block;
	height: 100%;
}

#toolbar span:hover {
	background-color: #ddd;
	color: #a6692b;
	cursor: pointer;
}
</style>
<script>
	$(function(){
		$(".top-menu .menu-item span").click(function(){
			$(this).next().fadeIn("fast");
		});
		$(".top-menu .menu-item").mouseleave(function(){
			$(this).children().last().hide();
		});	
		$(".top-menu .menu-item .drop-down ul li").click(function(){
			$(".top-menu .menu-item .drop-down").hide();
		});
	});
	
</script>
<div class='av-row av-row-4 bg-dark' style='overflow: hidden'>
	<div
		style="position: fixed; top: 0px; min-width: 1250px; z-index: 1000; width: 100%">
		<%-- <div class='col-xs-10'>
                    <div class='row'>
                    	<div class='col-xs-4'>
                    		<div style='padding:5px;'><i title="Setting" style="cursor: pointer" class='fa fa-cogs'></i></div>
                    	</div>
                    	<div class='col-xs-32'>
                    		<label style="padding:3px; text-transform: uppercase;">AVALON MASTER -  <i>${admin.branchName}</i></label>
                    	</div>
                    </div>
                    
                </div> --%>
		<div class='col-xs-25'>

			<div class='top-menu av-row'>
				<div class="menu-item">
					<span>Student Manage <i class='caret'></i></span>
					<div class='drop-down'>
						<ul>
							<li><a href='javascript:void(0)'
								onclick='loadPage("StudentRegistration")'> <i
									class="glyphicon glyphicon-grain"></i> Student Registration
							</a></li>
							<li><a href='#'> <i
									class="glyphicon glyphicon-menu-hamburger"></i> Student Records
							</a></li>
							<li><a href='#'> <i class="fa fa-columns"></i> Student
									Panel
							</a></li>
							<li><a href='#'> <i class="fa fa-dashcube"></i> Dashbord
							</a></li>
						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>Batch Manager <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='#'>Batch Create</a></li>
							<li><a href='#'>Batch Transfer</a></li>
							<li><a href='#'>Assign Batch</a></li>
							<li><a href='#'>Search Batch</a></li>
							<li><a href='#'>Dashbord</a></li>

						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>LMS <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='#'>Schedule Lecture</a></li>
							<li><a href='#'>Submit Delivery Lecture</a></li>
							<li><a href='#'>Delivery Reprots</a></li>
							<li><a href='#'>Dashbord</a></li>
						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>Fee Manager <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='#'>Fee Records</a></li>
							<li><a href='#'>Fee Submission</a></li>
							<li><a href='#'>Fee Calculator</a></li>
							<li><a href='#'>Business Report</a></li>
							<li><a href='#'>Dashbord</a></li>
						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>Placement <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='#'>Placement List</a></li>
							<li><a href='#'>Find Talent</a></li>
							<li><a href='#'>Current Session Drive</a></li>
							<li><a href='#'>Dashbord</a></li>
						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>Employee <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='#'>Registration</a></li>
							<li><a href='#'>Leaves</a></li>
							<li><a href='#'>Dashbord</a></li>
						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>CareerShiner <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='#'>Manage Syallabus</a></li>
							<li><a href='#'>Package Create</a></li>
							<li><a href='#'>Holiday</a></li>
							<li><a href='#'>We shine skills</a></li>
						</ul>
					</div>

				</div>
				<div class="menu-item">
					<span>Enquery <i class='caret'></i></span>

					<div class='drop-down'>
						<ul>
							<li><a href='javascript:void(0)'
								onclick='loadPage("Enquiry/loadEnquiryForm","New Enquery")'>New
									Enquery</a></li>
							<li><a href='javascript:void(0)'
								onclick='loadPage("Enquiry/loadEnquiryDetails","Enq Details")'>Enquiry
									Details</a></li>
							<li><a href='#'>Dashbord</a></li>

						</ul>
					</div>

				</div>


			</div>

		</div>
		<div class='col-xs-11'>
			<div class="text-right" style="padding: 3px">
				<i class="fa fa-bell"
					style="padding: 5px 10px 8px 10px; margin-top: -3px; margin-right: 10px; background-color: #444; display: inline-block;"></i>
				Hi ${admin.employeeName } <a href='${ctxPath }/Logout'
					style='color: white'>(Logout)</a>
			</div>

		</div>
	</div>
</div>

<div class='av-row-4 av-row'
	style="border-bottom: 1px solid #111; background-color: #d1d1d1">

	<div class='col-xs-10 av-row' style="padding: 0px; overflow: hidden;">


		<div class='row' style="margin: 0px">
			<div class='col-xs-4'
				style="border-right: 1px solid #111; padding: 0px; margin: 0px">
				<div style='padding: 2px 0px 0px 10px; font-size: 18px;'>
					<i title="Setting" style="cursor: pointer" class='fa fa-home'></i>
				</div>
			</div>
			<div class='col-xs-32'>
				<%-- <label style="padding:3px; text-transform: uppercase;">AVALON MASTER -  <i>${admin.branchName}</i></label> --%>
				<div id='toolbar' style="border-left: none;">
					<span title='New Student Registration'
						onclick='loadPage("StudentRegistration","Student Reg")'><i
						class="fa fa-plus-square"></i></span> <span
						onclick='loadStudentPrintPrevPage(2)'><i
						class="fa fa-bell"></i></span> <span><i class="fa fa-bolt"></i></span> <span>
						<i class="fa fa-user"></i>
					</span> <span> <i class="fa fa-trash"></i></span> <span
						data-toggle="modal" data-target="#enquieryModal"> <i
						title='Enquery' class="fa fa-users"></i></span>
				</div>
			</div>
		</div>


	</div>
	<div class='col-xs-26 av-row' id='toolbar'
		style="padding: 0px; overflow: hidden;">


		<span onclick='loadPage("Enquiry/loadEnquiryDetails","Enq Details")'><i
			class="fa fa-bell"></i></span> <span
			onclick='avAlert("this is my message","Student Registration alert")'><i
			class="fa fa-bolt"></i></span> <span onclick='temp()'> <i
			class="fa fa-user"></i></span> <span> <i class="fa fa-trash"></i></span> <span>
			<i class="fa fa-bug"></i>
		</span> <span> <i class="fa fa-book"></i></span> <span><i
			class="fa fa-cog"></i></span> <span> <i class="fa fa-male"></i></span> <span>
			<i class="fa fa-flag"></i>
		</span> <span><i class="fa fa-flask"></i></span> <span><i
			class="fa fa-glass"></i></span> <span><i class="fa fa-home"></i></span> <span><i
			class="fa fa-history"></i></span> <span><i class="fa fa-inbox"></i></span> <span><i
			class="fa fa-laptop"></i></span> <span><i class="fa fa-phone"></i></span> <span><i
			class="fa fa-print"></i></span> <span><i class="fa fa-question"></i></span>
		<span><i class="fa fa-slider"></i></span>


	</div>


</div>