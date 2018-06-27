package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empmaster")
public class EmpPojo 
{
	@Id
	@GeneratedValue
	
	@Column(name="EmpId")
	private int empId;

	@Column(name="EmpCode")
	private String empCode;
	
	@Column(name="EmpPinCode")
	private String empPinCode;
	
	@Column(name="DeptId")
	private int deptId;
	
	@Column(name="ManagerId")
	private int managerId;
	
	@Column(name="FName")
	private String fName;
	
	@Column(name="LName")
	private String lName;
	
	
	@Column(name="LocationId")
	private int locationId;
	
	@Column(name="DOB")
	private String dOB;
	

	@Column(name="DOJ")
	private String dOj;
	
	@Column(name="MobileNo")
	private String mobileNo;
	
	@Column(name="AltNo")
	private int altNo;
	
	@Column(name="EmrgNo ")
	private int emrgNo;
	
	@Column(name="EmailId")
	private String emailId;
	
	@Column(name="AltEmailId")
	private String altEmailId;
	
	@Column(name="Status")
	private String status;
	
	@Column(name="Designation")
	private String designation;
	
	@Column(name="Gender")
	private String gender;
	
	@Column(name="PanNo")
	private String panNo;
	
	
	@Column(name="PassportNo")
	private String passportNo;
	
	@Column(name="PerAddress")
	private String perAddress;
	
	@Column(name="PerCity")
	private String perCity;
	
	@Column(name="PerPin")
	private int perPin;
	
	@Column(name="PerCountry")
	private String perCountry;
	
	@Column(name="CurrAddress")
	private String currAddress;
	
	@Column(name="CurrCity")
	private String CurrCity;
	
	@Column(name="CurrState")
	private String currState;
	
	@Column(name="CurrCountry")
	private String currCountry;
	
	@Column(name="CurrPin")
	private int CurrPin;
	
	@Column(name="ProfilePic")
	private String profilePic;
	
	@Column(name="Singnature")
	private String Singnature;
	
	@Column(name="CreatedBy")
	private String createdBy;
	
	
	@Column(name="UpdatedBy")
	private String updatedBy;
	
	@Column(name="CreatedDate")
	private String createdDate;
	
	@Column(name="UpdatedDate")
	private String updatedDate;
	
	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public String getEmpPinCode() {
		return empPinCode;
	}

	public void setEmpPinCode(String empPinCode) {
		this.empPinCode = empPinCode;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public int getManagerId() {
		return managerId;
	}

	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}

	public String getdOB() {
		return dOB;
	}

	public void setdOB(String dOB) {
		this.dOB = dOB;
	}

	public String getdOj() {
		return dOj;
	}

	public void setdOj(String dOj) {
		this.dOj = dOj;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public int getAltNo() {
		return altNo;
	}

	public void setAltNo(int altNo) {
		this.altNo = altNo;
	}

	public int getEmrgNo() {
		return emrgNo;
	}

	public void setEmrgNo(int emrgNo) {
		this.emrgNo = emrgNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getAltEmailId() {
		return altEmailId;
	}

	public void setAltEmailId(String altEmailId) {
		this.altEmailId = altEmailId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public String getPerAddress() {
		return perAddress;
	}

	public void setPerAddress(String perAddress) {
		this.perAddress = perAddress;
	}

	public String getPerCity() {
		return perCity;
	}

	public void setPerCity(String perCity) {
		this.perCity = perCity;
	}

	public int getPerPin() {
		return perPin;
	}

	public void setPerPin(int perPin) {
		this.perPin = perPin;
	}

	public String getPerCountry() {
		return perCountry;
	}

	public void setPerCountry(String perCountry) {
		this.perCountry = perCountry;
	}

	public String getCurrAddress() {
		return currAddress;
	}

	public void setCurrAddress(String currAddress) {
		this.currAddress = currAddress;
	}

	public String getCurrCity() {
		return CurrCity;
	}

	public void setCurrCity(String currCity) {
		CurrCity = currCity;
	}

	public String getCurrState() {
		return currState;
	}

	public void setCurrState(String currState) {
		this.currState = currState;
	}

	public String getCurrCountry() {
		return currCountry;
	}

	public void setCurrCountry(String currCountry) {
		this.currCountry = currCountry;
	}

	public int getCurrPin() {
		return CurrPin;
	}

	public void setCurrPin(int currPin) {
		CurrPin = currPin;
	}

	public String getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}

	public String getSingnature() {
		return Singnature;
	}

	public void setSingnature(String singnature) {
		Singnature = singnature;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
}
