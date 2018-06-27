package com.ms.avalon.master.dao;

import java.util.List;

import com.ms.avalon.master.employeebeans.NewEnqBean;
import com.ms.avalon.master.pojos.CoursePojo;
import com.ms.avalon.master.pojos.DocumentMasterPojo;
import com.ms.avalon.master.pojos.DomainPojo;
import com.ms.avalon.master.pojos.EmpPojo;
import com.ms.avalon.master.pojos.NewEnquiryPojo;

public interface EmpDao1 {

	boolean Emplogin2(String empCode ,String empPin);

	List<EmpPojo> getEmplyoeedata();

	EmpPojo getEmployeeData(Integer Id);

	List<EmpPojo> searchWord(String srchkey);

	boolean setdetailDao(EmpPojo emppojo);

	EmpPojo updateEmpDetail1(Integer id);

	boolean updatedetail2(EmpPojo emppojo1);

	List<DomainPojo> getDomainData();

	List<CoursePojo> getCourseData(Integer coid);

	List<Integer> getManagersData();

	List<String> dataByDate(String startdate, String enddate);

	List<String> getEnquiryData(String tabname, String searchkey);

	boolean uploadenquirydata(List<NewEnquiryPojo> enqList);

	boolean uploadImage(List<DocumentMasterPojo> li);

	List<DomainPojo> getDomainNewData();

	

	




}
