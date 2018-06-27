<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.search-item {
	background-color: #ECECEC;
	border-bottom: 1px solid #d1d1d1;
	margin-left: -4px;
	margin-right: -4px;
	overflow: auto;
}

.search-item>div {
	padding: 2px;
}

.search-item>div>input[type='checkbox'] {
	margin: 3px 0px 0px 3px;
}

.search-item:hover {
	background-color: #e1e1e1;
	cursor: pointer;
}

.search-item .fa {
	padding-top: 3px;
}
</style>


<div class='av-row av-row-7 bg-strip'>
	<div class='col-xs-36 av-row' style='padding-top: 3px;'>
		<div class='av-row'
			style='margin-left: -4px; margin-right: -4px; overflow: hidden;'>

			<div class='col-xs-2'>
				<input type="checkbox" />
			</div>
			<div class='col-xs-20 av-row' style="overflow: hidden;">
				<c:choose>
					<c:when test="${students eq null || students.size() eq 0 }">
						<label style='margin: 2px 0px 0px 0px;'>Rec Found : 0</label>
					</c:when>
					<c:otherwise>
						<label style='margin: 2px 0px 0px 0px'>Rec Found :
							${students.size() }</label>
					</c:otherwise>
				</c:choose>

			</div>

		</div>

	</div>
</div>

<div class='av-row av-row-93' style="background-color: #E1E1E1">
	<div class='col-xs-36'>
		<c:choose>
			<c:when test="${students.size() eq 0}">
				<label style='margin:2px 0px 0px 0px'>No Record Found</label>
			</c:when>
			<c:otherwise>
			<c:forEach var="stu" items="${students}">
				<div class='search-item' onclick='loadStudent(${stu.studentRegNo})'>
					<div class='col-xs-2'>
						<input type="checkbox" />
					</div>
					<div class='col-xs-2 text-center'>
						<i class='fa fa-star'></i>
					</div>
					<div class='col-xs-23'>${stu.fname }</div>
					<div class='col-xs-7'>${stu.studentId }</div>
					<div class='col-xs-2 text-center'>
						<c:choose>
							<c:when test="${stu.regStatus eq 1 }">
								<i class="fa fa-check-circle" style='color: green'></i>
							</c:when>
							<c:otherwise>
								<i class="fa fa-times-circle" style='color: red'></i>
							</c:otherwise>
						</c:choose>
	
					</div>
				</div>
			</c:forEach>
			</c:otherwise>
		</c:choose>




	</div>
</div>
