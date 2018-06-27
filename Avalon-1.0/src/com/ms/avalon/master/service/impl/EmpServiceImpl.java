package com.ms.avalon.master.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.ms.avalon.master.dao.EmpDao;
import com.ms.avalon.master.employeebeans.EmployeeBean;
import com.ms.avalon.master.pojos.employeepojos.EmployeeMasterPojo;
import com.ms.avalon.master.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService{
	
	@Autowired
	private EmpDao empDao;

	@Override
	public boolean secureLogin(String employeeId, String password, HttpSession session) {
		EmployeeMasterPojo empPojo = empDao.getEmployee(employeeId);
		if(empPojo!=null){
			if(empPojo.getPassword().equals(password)){
				EmployeeBean empBean = new EmployeeBean();
				empBean.setEmployeeId(empPojo.getEmployeeId());
				empBean.setEmployeeName(empPojo.getEmployeeName());
				empBean.setEmployeeType(empPojo.getEmployeeType());
				empBean.setOtd(empPojo.getBranch().getOtd());
				empBean.setBranchId(empPojo.getBranchId());
				session.setAttribute("admin", empBean);
				session.setMaxInactiveInterval(60*60*24*10);
				return true;
			}	
		}
		return false;
	}

}
