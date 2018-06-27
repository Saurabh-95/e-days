package com.ms.avalon.master.controllers;


import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.ms.avalon.master.employeebeans.EmpRegistration;
import com.ms.avalon.master.pojos.CoursePojo;
import com.ms.avalon.master.pojos.DomainPojo;
import com.ms.avalon.master.pojos.EmpPojo;
import com.ms.avalon.master.pojos.NewEnquiryPojo;
import com.ms.avalon.master.service.EmpService1;
@Controller
public class EmpController 
{
	@Autowired
	EmpService1 es1;
@RequestMapping(value="/emplogin")
public @ResponseBody String login(String empCode, String empPin)
{
   
	System.out.println("EmployeeCode:"+empCode+ " EmpPin:"+empPin);
	
	
	boolean b=es1.emplogin1(empCode,empPin);
	
	if(b)
		return "success";
	else
		return "fail";	
}
@RequestMapping(value="/Layouts")
public String openLayout(Model map)
{
	List<EmpPojo> li =es1.getEmployees();
	map.addAttribute("emp", li);
	for(EmpPojo ep:li)
	{
		System.out.println(ep.getfName());
	}
	
	List<DomainPojo> li1 =es1.getDomain();
	map.addAttribute("dom", li1);
	for(DomainPojo dp:li1)
	{
		System.out.println(dp.getDomainName());
	}
	
	List<Integer> managerlist =es1.getManagers();
	map.addAttribute("manglist", managerlist);
	for(Integer intlist:managerlist)
	{
		System.out.println(intlist.intValue());
	}
	
	List<DomainPojo> li2=es1.getNewDomain();
	return "Layouts";
	
	
	
}
 @RequestMapping(value="/getDetail")
 public String getEmployeeDetail(Integer Id, Model map1)
 {
	 System.out.println("hello");
	 EmpPojo ep= es1.getEmployeesDetail(Id);
	System.out.println(ep.getEmailId());
	 map1.addAttribute("getId",ep);
	  return "EmpDetail";
 }
 
 @RequestMapping(value="/search")
 public String searchKeyword(String srchkey, Model map2)
 {
	 List<EmpPojo> li=es1.searchbyKeyWord(srchkey);
	 for(EmpPojo ep:li)
		{
		 System.out.println(ep.getfName());
		}
	 map2.addAttribute("search", li);
	 if(li.size()==0)
	 return "error";
	 else
	 return "SearchEmp"; 
 }
 
 @RequestMapping(value="/regEmployee")
 public  String employeeregistration(EmpRegistration empReg)
 {
	 
 System.out.println("controller");
 es1.regiEmp(empReg);
 return "success";
 }
 @RequestMapping(value="/Register")
 public String reg()
 {
	 return "Registration";
 }
 @RequestMapping(value="/UpdateDetail")
 public String UpdateEmployee(Integer id, Model map3)
 { 
	 System.out.println("empcontroller:-"+id);
	 EmpPojo ep=es1.updateEmpDetail(id);
	 System.out.println(ep.getfName());
	 map3.addAttribute("getdetl",ep);
	 return "EmpRegUpdate";
 }
 
 @RequestMapping(value="/EmpUpdateDetail")
 public  @ResponseBody String UpdateEmp(EmpRegistration edup)
 {
	 boolean b1=es1.update(edup);
	 if(b1)
	 {
		 return "success";
	 }
	 else
	 {
		 return "failed";
	 }
 }
 
 @RequestMapping(value="/getCourse")
 public @ResponseBody String getCourse(Integer coid)
 {
	 System.out.println(coid);
	 
	List<CoursePojo> l1= es1.getCourseDetail(coid);
	 StringBuilder sb=new StringBuilder();
	for(CoursePojo cp:l1)
	{
		sb.append("<option>"+cp.getCourseName()+"</option>");
		
		//System.out.println(cp.getCourseName());
	}
		return sb.toString();
 
 	}
 
 
 @RequestMapping(value="/searchBydate")
 public @ResponseBody String searchEmpBydate(String startdate,String enddate)
 {
	 System.out.println(startdate);
	 
	List<String> li= es1.getEmployeeByDate(startdate,enddate);
	for(String ep:li)
	{
		System.out.println(ep);
	}
	 StringBuilder sb=new StringBuilder();
	
	for(String str:li)
	{
		sb.append("<span>"+str+"</span><br>");
		
		
	}
	 return sb.toString();
 }
 
 @RequestMapping(value="/getEnquiry")
 public @ResponseBody String getEnquiryDetail(String tabname,String searchkey)
 {
	 List<String> li=es1.getEnquiryDetail1(tabname,searchkey);
	 
	 StringBuilder sb=new StringBuilder();
		
		for(String ep:li)
		{
			sb.append("<div><h3>" +ep+ "</h3></div>");
			
		}
		 return sb.toString();
 }
 
 	@RequestMapping(value="/UploadFile")
 	public @ResponseBody String uploadfile(@RequestParam MultipartFile file)throws Exception
 	{
 		System.out.println("this is  controller");
 		int i=1;
 		List<NewEnquiryPojo> enqList=new ArrayList<>();
 		XSSFWorkbook workbook=new XSSFWorkbook(file.getInputStream());
 		XSSFSheet worksheet=workbook.getSheetAt(0);
 		NewEnquiryPojo enquirypojo;
 		while(i<=worksheet.getLastRowNum())
 		{
 			enquirypojo =new NewEnquiryPojo();
 			XSSFRow row=worksheet.getRow(i++);
 			enquirypojo.setFenqName(row.getCell(0).getStringCellValue());
 			enquirypojo.setMobileNo(row.getCell(1).getStringCellValue());
 			enquirypojo.setCollege(row.getCell(2).getStringCellValue());
 			enquirypojo.setPassoutYear(row.getCell(3).getStringCellValue());
 		
 			enqList.add(enquirypojo);
 		}
 		workbook.close();
 		es1.uploadenquiry(enqList);
 		
     return "ok";
 	}

 
 	@RequestMapping(value="/FileImageUpload")
 	public @ResponseBody String fileImageUpload(@RequestParam(value="myArray[]") String[] Url,@RequestParam(value="myArray1[]") String[] Name)
 	{
 		
 		
 	boolean b=	es1.fileImageUpload(Name,Url);	
 		
 		 if(b)
 		 {
 		return "success";	

 		}
 		 else {
 			 
 		 return "error";
 		 }

 	}
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 	
 		
 	
 	
}