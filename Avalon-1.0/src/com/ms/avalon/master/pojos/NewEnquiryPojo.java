package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="freshenquiry")
public class NewEnquiryPojo 
{
	@Id
	@GeneratedValue
	
	@Column(name="FenqId")
	private int fenqId;
	
	@Column(name="FenqName")
	private String fenqName;
	
	@Column(name="College")
	private String college;
	
	@Column(name="MobileNo")
	private String MobileNo;
	
	@Column(name="PassoutYear")
	private String passoutYear;
	
	public int getFenqId() {
		return fenqId;
	}

	public void setFenqId(int fenqId) {
		this.fenqId = fenqId;
	}

	public String getFenqName() {
		return fenqName;
	}

	public void setFenqName(String fenqName) {
		this.fenqName = fenqName;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getPassoutYear() {
		return passoutYear;
	}

	public void setPassoutYear(String passoutYear) {
		this.passoutYear = passoutYear;
	}

}
