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
</head>



<script type="text/javascript">
function login()
{
	var name=$("#empName").val();
	var id=$("#empId").val();
	
	
	$.ajax
	({
		url:"emplogin",
		type:"post",
		data:{empCode:name,empPin:id},
		success:function(res)
		{
			if(res=="fail")
				{
				$("#p1").fadeIn();
				$("#p1").html("<b> Invalid Data </b>");
				$("#p1").delay(5000).fadeOut();
				}
			else if(res=="success")
				{
				window.open("Layouts","_self");
				}
			
		},
		error:function()
		{
			
		}
	});
}

$(document).ready(function(){
    $("#empId,#empName").hover(function(){
        $(this).css("background-color", "skyblue");
        }, function(){
        $(this).css("background-color", "white");
    });
});
	
function register()
{
	window.open("Register","_self");
	
}

</script>
<body id='body' style="background-image:url('<%=request.getContextPath()%>/images/login.jpg') ">
	<input type="hidden" value="<%=request.getContextPath()%>" id='ctxPath'>
	
	<center></center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><div class="text-center"><b style=" font-size:40px;color:#800000;margin-left:120px ;text-align:">WELCOME 'E-DAYS'</b></div>
	<br><div class="text-center"><b style=" font-size:20px;color:#800000;margin-left:120px ;text-align:">Make Your Work Easy</b></div>
	<br>
	<br>
	<br>
	
	<div class='container'>
		<div class='row'>
			<div class='col-xs-25'></div>
			<div class='col-xs-11' style='padding:10px;margin-top:150px'>
				
					<div style="color:#006bb3; font-size:14px;padding-left:15px"><p id="p1"></p> </div>
					<div class='col-xs-36 glyphicon glyphicon-user'><input type="text" id="empName" placeholder="Emp_Name" style="width:90%;height:25px"></div>
					<div class='col-xs-36 glyphicon glyphicon-lock'><input type="text" id="empId" placeholder="Emp_Id" style="width:90%;height:25px;margin-top:10px"></div>
					<div class='col-xs-36 text-center '>
					<button onclick="login()" style="margin-top:10px;color:#006bb3"><b>Login</b></button>
					<button onclick="register()" style="margin-top:10px;color:#006bb3"><b>Register</b></button>
					<a> <b>forget Password...??</b></a></div>
					
				
			</div>
			<div class='col-xs-1'></div>
		</div>
	</div>




</body>
</html>