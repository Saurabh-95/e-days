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
<script type="text/javascript">

function submit11() 
{
	var form=$("#regForm").serialize();
	alert("form");
	
	
	$.ajax
	({
		url:"regEmployee",
		type:"post",
		data:form,
		success:function(res)
		{
			if(res=="success")
				alert("its done");
				
		},
		error:function(res)
		{
			
		}
	});

}




</script>
<style>
.reg
{
border:1px solid black;
font-size:14px;
padding:10px;
margin-left:25%;

}
.In
{
width:70% ;
height:30px;
float:right;


}

</style>
</head>

<body>
<form  id="regForm"action="">
<div class="container " style=" padding:10px;">
<div class="col-xs-20 reg" > <b>Employee'S First Name:- </b><input class="In"  name="fname" type="text" placeholder="first name" ></div>
<div class="col-xs-20 reg"> <b>Employee'S Last Name:- </b><input class="In" name="lname" type="text" placeholder=" last name"></div>
<div class="col-xs-20 reg"> <b>Mobile Number:- </b><input class="In" name="mobileno" type="text" placeholder=" mobilde no"></div>
<div class="col-xs-20 reg"> <b>Date Of Birth:- </b><input class="In" name="dob" type="text" placeholder="Date Of Birth"></div>
<div class="col-xs-20 reg"> <b>Date of Joining:- </b><input class="In" name="doj" type="text" placeholder="Date of Joining"></div>
<div class="col-xs-20 reg"> <b>E-Mail Id:- </b><input  class="In" name="email" type="text" placeholder="E-Mail Id"></div>
<div class="col-xs-20 reg"> <b>Designation:- </b><input class="In" name="designation" type="text" placeholder="Designation"></div>
<div class="col-xs-36 text-center" style="margin-top:10px"><button id="submit" onclick="submit11()">Submit</button></div>
</div>
</form>
 
</body>
</html>