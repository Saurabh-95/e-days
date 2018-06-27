<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/batch.js"></script>

<div class='av-row av-row-7 bg-strip'>
	<div class='col-xs-36 av-row' style='padding-top:3px;'>
		<div class='av-row' style='margin-left:-4px; margin-right:-4px; overflow: hidden;'>
			<div class='col-xs-2'>
				<input type="checkbox" />
			</div>
			<div class='col-xs-20 av-row' style="overflow: hidden;">
				<c:choose>
					<c:when test="${batchss eq null || batchss.size() eq 0 }">
						<label style='margin:2px 0px 0px 0px;'>Rec Found : 0</label>
					</c:when>
					<c:otherwise>
						<label style='margin:2px 0px 0px 0px'>Rec Found : ${batchss.size() }</label>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>

<div class='av-row av-row-93' style="background-color: #E1E1E1">
	<div class='col-xs-36'>
		<c:choose>
			<c:when test="${batchss.size() eq 0}">
				<label style='margin:2px 0px 0px 0px'>No Record Found</label>
			</c:when>
			<c:otherwise>
				<c:forEach var="batch" items="${batchss}">
					<div class='search-item' onclick='loadBatch(${batch.batchId})'>
						<div class='col-xs-2'>
							<input type="checkbox" />
						</div>
						<div class='col-xs-2 text-center'>
							<i class='fa fa-star'></i>
						</div>
						<div class='col-xs-23 batchName'>
							${batch.batchName}
						</div>
						<div class='col-xs-7'>
						
						</div>
					</div>
			
				</c:forEach>
			</c:otherwise>
		</c:choose>		
	</div>
</div>