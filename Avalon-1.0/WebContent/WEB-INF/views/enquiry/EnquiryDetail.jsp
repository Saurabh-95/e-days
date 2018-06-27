<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class='av-row'>
	<div class='col-xs-26 av-row' style="padding: 0px">

		<div class='av-row-40'>

			<div class='enq-form' style="padding: 10px 10px 10px 10px">

				<div class='row' style="margin-bottom: 10px">
					<div class='col-xs-12'>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-36'>
								<input placeholder="Enter Candidate Name" value="Imran Khan"
									type='text' class="form-control " />
							</div>
						</div>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-36'>
								<input placeholder="Mobile Number" value="9808125037"
									type='text' class="form-control " />
							</div>
						</div>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-36'>
								<input value="er.imrancs@gmail.com" placeholder="EmailId"
									type='text' class="form-control " />
							</div>
						</div>


						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-18'>
								<select class="form-control ">
									<option>Select Domain</option>
									<option selected>IT</option>
									<option>BankPO</option>
								</select>
							</div>
							<div class='col-xs-18'>
								<select class="form-control ">
									<option>Select Course</option>
									<option selected>Java</option>
									<option>etc</option>
								</select>
							</div>
						</div>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control ">
									<option>Qualification</option>
									<option selected>B.tech</option>
								</select>
							</div>
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control ">
									<option>Year</option>
									<option selected>1st year</option>
									<option>passout</option>
								</select>
							</div>
							<div class='col-xs-18' style="margin-bottom: 10px">
								<select class="form-control " disabled>
									<option>Passout Year</option>
									<option>1st year</option>
									<option>passout</option>
								</select>
							</div>
							<div class='col-xs-18' style="margin-bottom: 10px">
								<button class='btn btn-primary btn-block'>Update Info</button>
							</div>
						</div>

					</div>


					<div class='col-xs-24'>

						<div class='row' style="margin-bottom: 10px">
							<div class='col-xs-12'>
								Enquire On : <b>12-jan-2016</b>
							</div>
							<div class='col-xs-12'>
								Last Call : <b>3-jan-2016</b>
							</div>
							<div class='col-xs-12'>
								Next Call : <b>15-jan-2016</b>
							</div>

						</div>



						<div class='row' style='margin-bottom: 10px'>
							<div class='col-xs-36'>
								<input value="Spring,Hibernate, JPA, Mysql, Html, CSS"
									placeholder="Student Demanded details" type='text'
									class='form-control ' />
							</div>

						</div>



						<textarea style='margin-bottom: 10px; height: 62px'
							class='form-control ' placeholder="Write Your Comment" cols="">this is my comment...</textarea>


						<div class='row' style="margin: 0px; margin-bottom: 10px">
							<div class='col-xs-5' style="padding: 0px">
								<label style="margin-bottom: 0px;">Next Call</label>
							</div>

							<div class='col-xs-12' style="padding-left: 0px">
								<div class="input-group">
									<input type="date" class="form-control "
										placeholder="Next Call Date" /> <span
										class="input-group-addon" id="basic-addon1"
										style="width: 25px"><i class="fa fa-calendar"></i></span>
								</div>

							</div>
							<div class='col-xs-9'
								style="padding-right: 0px; padding-left: 15px">
								<div class="input-group">
									<input type="time" class="form-control " placeholder="Time" />
									<span class="input-group-addon" id="basic-addon1"
										style="width: 25px"><i class="fa fa-clock-o"></i></span>
								</div>

							</div>

							<div class='col-xs-10'
								style="padding-right: 0px; padding-left: 10px;">
								<select class="form-control">
									<option>Status</option>
									<option>HP</option>
									<option>LP</option>
									<option>AVG</option>
									<option>DONE</option>
									<option>NOT DONE</option>
								</select>
							</div>
						</div>
						<div class='row' style="margin: 0px">
							<div class='col-xs-18 ' style="padding: 0px">
								<input type="checkbox" /> Visitor
							</div>
							<div class='col-xs-18 text-right' style="padding: 0px">
								<button class='btn btn-success btn-block btn-lg'>
									<i class="fa fa-phone"></i> Call Log
								</button>
							</div>
						</div>

						<!-- <hr>
        			
        			<div class='col-xs-12' style="padding-left: 0px">
        				Last Call : <b>12-Jan-2016</b>
        			</div>
        			<div class='col-xs-15'>
        				Next Call On : <b class='text-primary'>Khusbu</b>
        			</div>
        			<div class='col-xs-6'>
        				Prt : <b>HP</b>
        			</div> -->




					</div>

				</div>


			</div>


		</div>

		<div class='av-row-12'>
			<div class='av-row latest-call-rec'
				style="background-color: #FCFCFC; padding: 5px 0px 5px 0px; overflow: auto; box-shadow: 0px 0px 5px grey">
				<div class='col-xs-21 av-row' style="padding-left: 10px">

					<span>this is my comment...he will be come on this
						monday.this is my comment... he will be come on this monday.this
						is my comment...he will be come on this monday. </span>
				</div>
				<div class='col-xs-12 av-row'>
					<b>Call Date : <span class='text-info'>12-jan-2016</span></b> <br>
					<b>Caller Name : <span class='text-primary'>Khusbu
							Singh</span></b>

				</div>
				<div class='col-xs-3 av-row text-center'>
					<span
						style='font-size: 30px; font-family: arial; text-shadow: 1px 1px 3px grey'>HP</span>
				</div>
			</div>

		</div>

		<!-- <div class='av-row-4'>
			<label>Latest Call / History</label>
		</div> -->

		<div class='av-row-48'
			style="border-top: 1px solid #e1e1e1; background-color: white">

			<div class='av-row'>

				<table
					style="background-color: #FCFCFC; font-size: 11px; margin-bottom: 0px"
					class='table table-striped table-hover'>
					<tr style="background-color: #ECECEC">
						<th class='text-center' style="width: 20px">SN</th>
						<th>Call History</th>
						<th style="width: 90px">Caller</th>
						<th style="width: 120px">Call Date</th>
						<th style="width: 50px" class="text-center">Status</th>
					</tr>
					<c:forEach varStatus="v" begin="1" end="10">

						<tr>
							<td class='text-center'>${v.index }</td>
							<td style='padding-left: 10px'>sd fsdf sdf sdf df sdf sdf
								sdf sd fsd fsdf sd</td>
							<td><b class='text-primary'>Khusbu singh</b></td>
							<td>12-jan-2016 11:30AM</td>
							<td>
								<div class="text-center">
									<b>HP</b>
								</div>
							</td>
						</tr>


					</c:forEach>


				</table>


			</div>
			<!-- <label style="margin-top: 10px; margin-left: 5px">Full Call History</label> -->



		</div>



	</div>
	<div class='col-xs-10 av-row' style="background-color: #d1d1d1">
		right panel</div>
</div>