package com.ms.avalon.master.pojos.employeepojos;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="branchmaster")
public class BranchMasterPojo implements Serializable{

	private static final long serialVersionUID = -8923122274871577662L;
	
	@Id
	@GeneratedValue
	@Column(name="branchId")
	private Integer branchId;
	
	@Column(name="branchName")
	private String branchName;
	
	@Column(name="mobileNumber")
	private String mobileNumber;
	
	@Column(name="lanlineNumber")
	private String lanlineNumber;
	
	@Column(name="city")
	private String city;
	
	@Column(name="address")
	private String address;
	
	@Column(name="otd")
	private Integer otd;

	public Integer getOtd() {
		return otd;
	}

	public void setOtd(Integer otd) {
		this.otd = otd;
	}

	public Integer getBranchId() {
		return branchId;
	}

	public void setBranchId(Integer branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getLanlineNumber() {
		return lanlineNumber;
	}

	public void setLanlineNumber(String lanlineNumber) {
		this.lanlineNumber = lanlineNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
