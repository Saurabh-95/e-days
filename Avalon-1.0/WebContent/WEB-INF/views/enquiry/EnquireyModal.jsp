<script>
$(function(){
	$(".star").click(function(){
		$(".star").removeClass("fa-star");
		$(".star").addClass("fa-star-o");
		$(".star").css({"color":"black"});
		$(this).removeClass("fa-star-o");
		$(this).addClass("fa-star");
		$(this).css({"color":"gold"});
		$(this).prevAll().removeClass("fa-star-o");
		$(this).prevAll().addClass("fa-star");
		$(this).prevAll().css({"color":"gold"});
		var starValue = $(this).attr("value");
		alert("you give "+starValue+" star...");
	});
});
</script>
<style>
.star{
	cursor: pointer;
}
</style>

<div class="modal" id="enquieryModal" tabindex="-1" role="dialog"
	aria-labelledby="avAlertLabel">
	<div class="modal-dialog modal-lg" role="document"
		style="margin-top: 80px">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #877E75">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<label style='font-size: 16px; color: white'>Enquery Form</label>
			</div>
			<div class="modal-body" style="background-color: #FCFCFC">

				<!-- <div class='row' style="margin-bottom: 10px">
        		<div class='col-xs-12'>
        			<input placeholder="Enter Candidate Name" type='text' class="form-control input-lg" />
        		</div>
        		<div class='col-xs-12'>
        			<input placeholder="Mobile Number" type='text' class="form-control input-lg" />
        		</div>
        		<div class='col-xs-12'>
        			<input placeholder="EmailId" type='text' class="form-control input-lg" />
        		</div>
        	</div>
        	 -->
				<div class='row' style="margin-bottom: 10px">
					<div class='col-xs-12'>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-36'>
								<input placeholder="Enter Candidate Name" type='text'
									class="form-control input-lg" />
							</div>
						</div>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-36'>
								<input placeholder="Mobile Number" type='text'
									class="form-control input-lg" />
							</div>
						</div>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-36'>
								<input placeholder="EmailId" type='text'
									class="form-control input-lg" />
							</div>
						</div>


						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-18'>
								<select class="form-control input-lg">
									<option>Select Domain</option>
									<option>IT</option>
									<option>BankPO</option>
								</select>
							</div>
							<div class='col-xs-18'>
								<select class="form-control input-lg">
									<option>Select Course</option>
									<option>Java</option>
									<option>etc</option>
								</select>
							</div>
						</div>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control input-lg">
									<option>Qualification</option>

								</select>
							</div>
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control input-lg">
									<option>Year</option>
									<option>1st year</option>
									<option>passout</option>
								</select>
							</div>
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control input-lg">
									<option>Source</option>
									<option>1st year</option>
									<option>passout</option>
								</select>
							</div>
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control input-lg" disabled>
									<option>Passout Year</option>
									<option>1st year</option>
									<option>passout</option>
								</select>
							</div>
						</div>

					</div>


					<div class='col-xs-24'>
						<input style='margin-bottom: 10px'
							placeholder="Student Demanded details" type='text'
							class='form-control input-lg' />

						<textarea rows="5" style='margin-bottom: 10px'
							class='form-control input-lg' placeholder="Write Your Comment"
							cols=""></textarea>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-6' style="padding: 0px">
								<label style="margin-bottom: 0px; font-size: 9px"
									class="text-info">Enter for Next Call <br> Date
									and Time
								</label>
							</div>

							<div class='col-xs-12' style="padding-left: 0px">
								<div class="input-group">
									<input type="date" class="form-control input-lg"
										placeholder="Next Call Date" /> <span
										class="input-group-addon" id="basic-addon1"
										style="width: 25px"><i class="fa fa-calendar"></i></span>
								</div>

							</div>
							<div class='col-xs-8' style="padding-right: 0px">
								<div class="input-group">
									<input type="time" class="form-control input-lg"
										placeholder="Time" /> <span class="input-group-addon"
										id="basic-addon1" style="width: 25px"><i
										class="fa fa-clock-o"></i></span>
								</div>

							</div>

							<div class='col-xs-10' style='padding: 0px;'>
								<i class='fa fa-star-o fa-2x star' value="1"></i> 
								<i class='fa fa-star-o fa-2x star' value="2"></i>
								<i class='fa fa-star-o fa-2x star' value="3"></i> 
								<i class='fa fa-star-o fa-2x star' value="4"></i>
								<i class='fa fa-star-o fa-2x star' value="5"></i>
							</div>
						</div>
						<div class='row' style="margin-bottom: 10px">

							<div class='col-xs-18'>
								<input type="checkbox"> Visiter
							</div>
							<div class='col-xs-18'>
								<div class='text-right'>
									<button class='btn btn-primary'>Submit Enquiry</button>
									<button class='btn btn-default'>Reset Form</button>
								</div>
							</div>


						</div>

					</div>

				</div>

			</div>
			<!-- <div class='modal-footer' style="background-color: #FCFCFC">
      	<button class='btn btn-primary btn-lg' onclick='avAlert("hello");' >Submit Enquiry</button>
      	<button class='btn btn-default btn-lg' data-dismiss="modal">Cancel</button>
      	
      </div> -->

		</div>
	</div>
</div>