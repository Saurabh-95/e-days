<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.getServletContext().setAttribute("ctxPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='<%=request.getContextPath() %>/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/FormValidation.js"></script>
<title>Insert title here</title>

</head>

<style type="text/css">
.aa
{
	font-size:15px;
	margin-top:10px;
}
</style>

</head>
<body>
<div style="padding:10px">
<c:forEach var="e" items="${search}">
<div class=" col-xs-36 text-center" style="color:#b3005c;font-size:25px;" onclick="OpenUpdate(${e.empId})"> Detail of ${e.fName} ${e.lName}</div>
<div class=" col-xs-36 aa"> Employee Id:-${e.empId}</div>
<div class=" col-xs-36 aa"> First Name:-${e.fName}</div>
<div class=" col-xs-36 aa"> Last Name:-${e.lName}</div>
<div class=" col-xs-36 aa"> Employee code:-${e.empCode}</div>
<div class=" col-xs-36 aa"> Employee Pin Code:-${e.empPinCode}</div>
<div class=" col-xs-36 aa"> Department Id:-${e.deptId}</div>

</c:forEach>





</div>

</body>
</html>