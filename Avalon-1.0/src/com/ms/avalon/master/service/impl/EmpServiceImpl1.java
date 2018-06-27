package com.ms.avalon.master.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.ms.avalon.master.dao.EmpDao1;
import com.ms.avalon.master.employeebeans.EmpRegistration;
import com.ms.avalon.master.employeebeans.NewEnqBean;
import com.ms.avalon.master.pojos.CoursePojo;
import com.ms.avalon.master.pojos.DocumentMasterPojo;
import com.ms.avalon.master.pojos.DomainPojo;
import com.ms.avalon.master.pojos.EmpPojo;
import com.ms.avalon.master.pojos.NewEnquiryPojo;
import com.ms.avalon.master.service.EmpService1;
import com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH;

import antlr.collections.List;

public class EmpServiceImpl1 implements EmpService1
{
	@Autowired
	EmpDao1 ed1;
	
	@Override
	public boolean emplogin1( String empCode ,String empPin)
	{
				
		return ed1.Emplogin2(empCode,empPin);
		
	}
	@Override
	public java.util.List<EmpPojo> getEmployees() 
	{
		return ed1.getEmplyoeedata();
	
	}
	
	@Override
	public EmpPojo getEmployeesDetail(Integer Id) {
		// TODO Auto-generated method stub
		return ed1.getEmployeeData(Id);
	}
	@Override
	public java.util.List<EmpPojo> searchbyKeyWord(String srchkey) 
	{
		
		return ed1.searchWord(srchkey); 
	}
	@Override
	public boolean regiEmp(EmpRegistration empReg) 
	{
		EmpPojo emppojo=new EmpPojo();
		emppojo.setfName(empReg.getFname());
		emppojo.setlName(empReg.getLname());
		emppojo.setMobileNo(empReg.getMobileno());
		emppojo.setdOB(empReg.getDob());
		emppojo.setdOj(empReg.getDoj());
		emppojo.setEmailId(empReg.getEmail());
		emppojo.setDesignation(empReg.getDesignation());
		return ed1.setdetailDao(emppojo);
	}
	@Override
	public EmpPojo updateEmpDetail(Integer id) 
	{	
		
		
		return ed1.updateEmpDetail1(id);
	}
	@Override
	public boolean update(EmpRegistration edup) 
	{
		EmpPojo emppojo1=new EmpPojo();
		emppojo1.setEmpId(edup.getEmpid());
		emppojo1.setfName(edup.getFname());
		emppojo1.setlName(edup.getLname());
		emppojo1.setMobileNo(edup.getMobileno());
		emppojo1.setdOB(edup.getDob());
		emppojo1.setdOj(edup.getDoj());
		emppojo1.setEmailId(edup.getEmail());
		emppojo1.setDesignation(edup.getDesignation());
		
		return ed1.updatedetail2(emppojo1);
	}
	@Override
	public java.util.List<DomainPojo> getDomain()
	{
		
		return ed1.getDomainData();
	}
	@Override
	public java.util.List<CoursePojo> getCourseDetail(Integer coid) {
		
		return ed1.getCourseData(coid);
	}
	@Override
	public java.util.List<Integer> getManagers() {
		
		return ed1.getManagersData();
	}
	@Override
	public java.util.List<String> getEmployeeByDate(String startdate, String enddate) {
		
		return ed1.dataByDate(startdate,enddate);
	}
	@Override
	public java.util.List<String> getEnquiryDetail1(String tabname, String searchkey) {
		
		return ed1.getEnquiryData(tabname,searchkey);
	}
	@Override
	public boolean uploadenquiry(java.util.List<NewEnquiryPojo> enqList) {
		
		return ed1.uploadenquirydata(enqList);
	}
		
	
	@Override
	public boolean fileImageUpload(String[] name, String[] url)
	{
		DocumentMasterPojo dmp;
		java.util.List<DocumentMasterPojo> li=new ArrayList<DocumentMasterPojo>();
		int i=0;
		while(i<url.length)
		{
			dmp=new DocumentMasterPojo();
	
			dmp.setDocName(name[i]);
			dmp.setUrl(url[i]);
		      li.add(dmp);
		       i++;
		}
		return ed1.uploadImage(li);
	}
	@Override
	public java.util.List<DomainPojo> getNewDomain() {
		
		return ed1.getDomainNewData();
	}
    




}
	
	
	
	
	

