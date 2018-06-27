package com.ms.avalon.master.service;

import javax.servlet.http.HttpSession;

public interface EmpService {
	
	public boolean secureLogin(String employeeId, String password, HttpSession session);

	
}
