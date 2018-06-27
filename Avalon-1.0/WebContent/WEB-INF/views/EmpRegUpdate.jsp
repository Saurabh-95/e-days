
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
<title>Employees Registration</title>

<style>
.reg
{
border:1px solid black;
font-size:14px;
padding:10px;
margin-left:25%;

}
.input1
{
width:70% ;
height:30px;
float:right;



}
</style>




<script type="text/javascript">
function Update1() 
{
	var form=$("#regForm1").serialize();
	alert("update form");
	
	
	$.ajax
	({
		url:"EmpUpdateDetail",
		type:"post",
		data:form,
		success:function(res)
		{
			if(res=="success")
				alert("its done");
			
			
		},
		error:function(res)
		{
			alert("its not done");
		}
	});

}

document.ready($(".input1").attr("disabled",true));

function btn()
	{
	alert("abc");
	$(".input1").attr("disabled",false);
		}

</script>

</head>

<body>
<form  id="regForm1">
<div class="container " style=" padding:10px;">
<input type="button" value="edit" onclick="btn()" />
<div class="col-xs-20 reg"  style="visibility:hidden"> <b>Employee Id:- </b><input  class="input1"  name="empid" type="text" value="${getdetl.empId}" ></div>
<div class="col-xs-20 reg"> <b>Employee'S First Name:- </b><input id="myInput" class="input1" name="fname" type="text" value="${getdetl.fName}"></div>
<div class="col-xs-20 reg"> <b>Employee'S Last Name:- </b><input class="input1" name="lname" type="text" value="${getdetl.lName}"></div>
<div class="col-xs-20 reg"> <b>Mobile Number:- </b><input class="input1" name="mobileno" type="text" value="${getdetl.mobileNo}"></div>
<div class="col-xs-20 reg"> <b>Date Of Birth:- </b><input class="input1" name="dob" type="text" value="${getdetl.dOB}"></div>
<div class="col-xs-20 reg"> <b>Date of Joining:- </b><input class="input1" name="doj" type="text" value="${getdetl.dOj}"></div>
<div class="col-xs-20 reg"> <b>E-Mail Id:- </b><input  class="input1" name="email" type="text" value="${getdetl.emailId}"></div>
<div class="col-xs-20 reg"> <b>Designation:- </b><input class="input1" name="designation" type="text" value="${getdetl.designation}"></div>
<div class="col-xs-36 text-center" style="margin-top:10px"><input type="button"  onclick="Update1()" value="update"></div>
</div>
</form>
 

 
</body>
</html>