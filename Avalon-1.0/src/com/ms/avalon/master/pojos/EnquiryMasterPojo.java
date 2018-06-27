package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="enquirymaster")
public class EnquiryMasterPojo 
{
	@Id
	@GeneratedValue
	
	@Column(name="EnquiryId")
	private int enquiryId;
	
	@Column(name="EnquiryName")
	private String enquiryName;
	
	public int getEnquiryId() {
		return enquiryId;
	}

	public void setEnquiryId(int enquiryId) {
		this.enquiryId = enquiryId;
	}

	public String getEnquiryName() {
		return enquiryName;
	}

	public void setEnquiryName(String enquiryName) {
		this.enquiryName = enquiryName;
	}

	
}
