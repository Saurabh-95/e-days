package com.ms.avalon.master.service;

import java.util.List;

import com.ms.avalon.master.employeebeans.EmpRegistration;
import com.ms.avalon.master.employeebeans.NewEnqBean;
import com.ms.avalon.master.pojos.CoursePojo;
import com.ms.avalon.master.pojos.DomainPojo;
import com.ms.avalon.master.pojos.EmpPojo;
import com.ms.avalon.master.pojos.NewEnquiryPojo;


public interface EmpService1 
{

	boolean emplogin1(String empCode, String empPin);

	List<EmpPojo> getEmployees();

	EmpPojo getEmployeesDetail(Integer Id);

	List<EmpPojo> searchbyKeyWord(String srchkey);

	boolean  regiEmp(EmpRegistration empReg);

	EmpPojo updateEmpDetail(Integer id);

	boolean update(EmpRegistration edup);

	List<DomainPojo> getDomain();

	List<CoursePojo> getCourseDetail(Integer coid);

	List<Integer> getManagers();

	List<String> getEmployeeByDate(String startdate, String enddate);

	List<String> getEnquiryDetail1(String tabname, String searchkey);

	boolean uploadenquiry(List<NewEnquiryPojo> enqList);

	boolean fileImageUpload(String[] name, String[] url);

	List<DomainPojo> getNewDomain();

	



	

	

	 

	

	

	

	

}
