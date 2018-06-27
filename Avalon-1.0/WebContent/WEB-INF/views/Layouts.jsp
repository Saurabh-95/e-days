
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
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/json2.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
 function getDetail() 
 {
	var empid=$("#epId").val();
	//alert("hello");
	$.ajax
	({
		url:"getDetail",
		type:"post",
		data:{Id:empid},
		success:function(res)
		{
			$("#emplist").html(res);
		},
		error:function(res)
		{
			
		}
	});

 }

 function search() 
 {
	var sr=$("#Text").val();
	alert("ok");
	
	$.ajax
	({
		url:"search",
		type:"post",
		data:{srchkey:sr},
		success:function(res)
		{	
			$("#emplist").html(res);
		},
		error:function(res)
		{
			alert("Sorry!!! ... . Data Not Found");
		}
		
	});
}

 function OpenUpdate(v)
 {
 	alert(v);
 	
 	$.ajax
 	({
 		url:"UpdateDetail",
 		type:"post",
 		data:{id:v},
 		success:function(res)
 		{
 			$("#emplist").html(res);
 		},
 		error:function(res)
 		{
 			
 		}
 	});
 	
 }	
 	function getCourse()
 	{
 		var did=$("#doid").val();
 		alert("domain");
 		$.ajax
 		({
 			url:"getCourse",
 			type:"post",
 			data:{coid:did},
 			success:function(res)
 			{ 
 				$("#course").html(res);
 			
 			},
 			error:function(res)
 			{
 				
 			}
 		});
 		
 		
 	}
 	
 
 	
 function searchbydate()
 	{
 		alert("search by date");
 		var sd=$("#date1").val();
 		var ed=$("#date2").val();
 		alert("search by date");
 				
 		$.ajax
 		({
 			url:"searchBydate",
 			type:"post",
 			data:{startdate:sd,enddate:ed},
 			success:function(res)
 			{
 				$("#emplist").html(res);
 				
 			},
 			error:function()
 			{
 				
 			}
 		});
 	}
 	
 	function GetTodayDate()
 	{
 		
 		var d = new Date();

 		var month = d.getMonth()+1;
 		var day = d.getDate();

 		var currentDate = d.getFullYear() + '-' +
 		    (month<10 ? '0' : '') + month + '-' +
 		    (day<10 ? '0' : '') + day;
 		 return currentDate;
 	}
 	
 	function searchbycurrentdate()
 	{
 		var sd=GetTodayDate();
 		var ed=GetTodayDate();
 		alert("search by currentDate");
 		
 		
 		$.ajax
 		({
 			url:"searchBydate",
 			type:"post",
 			data:{startdate:sd,enddate:ed},
 			success:function(res)
 			{
 				$("#emplist").html(res);
 				
 			},
 			error:function()
 			{
 				
 			}
 		});
 	}
 	
 	
 	function getEnquiry()
 	{
 		alert("Enquiry table");
 		var Enqtable=$("#enqlist").val();
 		return Enqtable;
 	}
 	
 	function searchenquiry()
 	{
 		alert("search table");
 		var selecttab=getEnquiry();
 		var keyname=$("#Text1").val();
 		
 		$.ajax
 		({
 			url:"getEnquiry",
 			type:"post",
 			data:{tabname:selecttab,searchkey:keyname},
 			success:function(res)
 			{
 				$("#emplist").html(res);
 				
 			},
 			error:function()
 			{
 				
 			}
 		});
 		
 	}
 	
 	
 	var file=[];
 	
 	$(document).on(
 		"change",
 		"#uploadFiles",
 		function(event)
 		{
 		
 		file=event.target.files;
 		//alert(file[0]);	
 		}
 		
 		);
 	$(document).on(
 			"click",
 			"#uploadbtn",
 		
 			function()
 			{
 				alert("fun");
 				var form=new FormData();
 				form.append("file",file[0]);
 				
 				
 				$.ajax
 		 		({
 		 			url:"UploadFile",
 		 			type:"post",
 		 			data:form,
 		 			enctype:'multipart/form-data',
 		 			processData:false,
 		 			contentType:false,
 		 			
 		 			success:function(res)
 		 			{
 		 				alert(res);
 		 				//$("#emplist").html(res);
 		 				
 		 			},
 		 			error:function()
 		 			{
 		 				
 		 			}
 		 		});
 				
 			});
 	
 	
 //fileupload part
 function add()
{
     
        $(".inc").append('<div class="controls ">\
                <input  type="text" class="width1" name="text" placeholder="Document Name"style="float:left;margin-left:5px" >\
                <input  type="file"  class="width1" name="url" placeholder="Upload" style="float:left;margin-left:5px">\
                <a class="remove_this"><span class="glyphicon glyphicon-minus"></span></a>\
                <br>\
                <br>\
            </div>');
    
}

    jQuery(document).on('click', '.remove_this', function() 
    		{
        jQuery(this).parent().remove();
        if(photourl.length >=0)
        photourl.pop();
        if(photoname.length>=0)
            photoname.pop();
        return false;
        });
  
   
function   upload1()
{
	 var name=[];
		var url=[];
	
	$(".controls").each(function() {
		
	   name.push ($(this).children("input[name='text']").val());
	    url.push("images/"+$(this).children("input[name='url']").val().replace(/^.*\\/,""));
	    alert(name);
	    alert(url);
	});	
	
	$.ajax({
		
        url: "FileImageUpload",
        type: "POST",
        data:{myArray:url,myArray1:name},
        success: function (res) 
        {
            alert("File/Image are  uploaded successfully");
        },
        
    	error:function(res)
		{
	  alert("File/Image not upload");
		}
        
        
    });
	
}     
 </script>
 
</head>
<body>
<div class="container">
<div style="padding:10px" >
<h1>List of Employees</h1>
<div>
<select id="epId" onchange="getDetail()" style="float:left">
<option>First name</option>
<c:forEach var="e" items="${emp}">

<option value="${e.empId }"> ${e.fName} </option>

</c:forEach>
</select>
</div >
<div><input type="text" id="Text" placeholder="search Items" style="margin-left:25px"><button id="btn" onclick="search()">Search</button></div>

<div>

<select id="doid" onchange="getCourse()" style="float:left;margin-top:10px">
<option> Select Domain Name</option>
<c:forEach var="e" items="${dom}">
<option value="${e.domainId }"> ${e.domainName} </option>
</c:forEach> 
</select >

<select  id="course" style="margin-top:10px">
<option> select course</option>
</select>



<select  style="float:left;margin-top:10px">
<option> Select managers Id's</option>
<c:forEach var="e" items="${manglist}">
<option> ${e} </option>
</c:forEach>
</select >
<div style="float:right"><h1> List of Registered Employees by date</h1><div>
<b>Start Date: </b><input type="date" id="date1" style="margin-top:10px">
<b>End Date: </b><input type="date" id="date2" style="margin-top:10px">
<input type="button" id="btn" onclick="searchbydate()" value="SearchByDate">
<input type="button" id="btncurrent" onclick="searchbycurrentdate()" value="SearchByCurrentDate">
</div>
</div>



</div >
<div><h1>Search Enquiries</h1>

<select  id="enqlist" style="margin-top:10px">
<option value="all"> All Enquiries</option>
<option value="web"> Web </option>
<option value="student"> Student</option>
<option value="reffer"> Reffered</option>
<option value="enquiry"> Enquiry</option>
</select>

<input type="text" id="Text1" placeholder="search Enquiries" style="margin-top:5px"><button id="enqbutton" onclick="searchenquiry()">Enquiries</button>

</div>


<div  class="col-xs-36" id="emplist" style=" border:2px solid black;height:600px;margin:20px; overflow:scroll"></div>



</div>
<div class="col-xs-10 text-center" style="height:100px;border:2px solid black;margin-left:25px"><h3 >upload Excel files</h3>
<input id="uploadFiles" type="file" name="file">
<button id="uploadbtn" onclick="">Upload</button>

</div>

<div class="col-xs-18" style="border:2px solid black;height:300px;font-size:15px;padding:0px">
<h2><b><i>Upload File</i></b></h2>

    <div class="control-group">
        <div class="inc">
            <div class="controls">
                
                <input type="text"  name="text" placeholder="Document Name" class="width1"  style="float:left;margin-left:5px"> 
                <input type="file" class="width1" name="url"  style="margin-left:5px;float:left">
                <button  class="btn btn-info glyphicon glyphicon-plus"  onclick="add()"></button>
                <br>
                <br>
            </div>
        </div>
        <input type="button" class="btn btn-info" name="submit" value="submit" onclick="upload1()" style="margin-left:250px;"> 
    </div>

</div>








</div>
</body>
</html>