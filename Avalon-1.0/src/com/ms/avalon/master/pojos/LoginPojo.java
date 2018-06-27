package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="emploginmaster")
public class LoginPojo
{
	@Id
	@GeneratedValue
	
	@Column(name="EmpLoginId")
	private int empLoginId;


	public int getEmpLoginId() {
		return empLoginId;
	}

	public void setEmpLoginId(int empLoginId) {
		this.empLoginId = empLoginId;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	@Column(name="Pin")
	private String pin;

	@Column(name="EmpCode")
	private String empCode;



}

