package com.ms.avalon.master.employeebeans;

public class EmployeeBean {
	
	private String employeeId;
	private String employeeName;
	private String employeeType;
	private String loginAt;
	private Integer branchId;
	private String branchName;
	private Integer otd;
	
	public Integer getBranchId() {
		return branchId;
	}
	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
	}
	public Integer getOtd() {
		return otd;
	}
	public void setOtd(Integer otd) {
		this.otd = otd;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getLoginAt() {
		return loginAt;
	}
	public void setLoginAt(String loginAt) {
		this.loginAt = loginAt;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeType() {
		return employeeType;
	}
	public void setEmployeeType(String employeeType) {
		this.employeeType = employeeType;
	}
	
	
}
