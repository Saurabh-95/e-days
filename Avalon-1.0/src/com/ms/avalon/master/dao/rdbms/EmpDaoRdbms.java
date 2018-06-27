package com.ms.avalon.master.dao.rdbms;

import org.springframework.stereotype.Repository;

import com.ms.avalon.master.dao.EmpDao;
import com.ms.avalon.master.pojos.employeepojos.EmployeeMasterPojo;

@Repository
public class EmpDaoRdbms extends DBConnectionDao implements EmpDao{

	@Override
	public EmployeeMasterPojo getEmployee(String employeeId) {
		return hibernateTemplate.get(EmployeeMasterPojo.class, employeeId);
	}

}
