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

<div class=" col-xs-36 text-center" style="color:#b3005c;font-size:25px;">Details About ${getId.fName} ${getId.lName}</div>
<div class=" col-xs-36 aa"> Employee Id:-${getId.empId}</div>
<div class=" col-xs-36 aa"> First Name:-${getId.fName}</div>
<div class=" col-xs-36 aa"> Last Name:-${getId.lName}</div>
<div class=" col-xs-36 aa"> Employee code:-${getId.empCode}</div>
<div class=" col-xs-36 aa"> Employee Pin Code:-${getId.empPinCode}</div>
<div class=" col-xs-36 aa"> Department Id:-${getId.deptId}</div>





</div>


</body>
</html>