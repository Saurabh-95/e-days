package com.ms.avalon.master.pojos.employeepojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.sun.corba.se.impl.encoding.CodeSetConversion.BTCConverter;

@Entity
@Table(name="employeemaster")
public class EmployeeMasterPojo {
	
	@Id
	@Column(name="employeeId")
	private String employeeId;
	
	@Column(name="employeeName")
	private String employeeName;
	
	@Column(name="password")
	private String password;
	
	@Column(name="employeeType")
	private String employeeType;

	@Column(name="branchId")
	private Integer branchId;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="branchId",insertable=false, updatable=false)
	private BranchMasterPojo branch;
	
	public BranchMasterPojo getBranch() {
		return branch;
	}

	public void setBranch(BranchMasterPojo branch) {
		this.branch = branch;
	}

	public Integer getBranchId() {
		return branchId;
	}

	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmployeeType() {
		return employeeType;
	}

	public void setEmployeeType(String employeeType) {
		this.employeeType = employeeType;
	}


	
	
	
}
