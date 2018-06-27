package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reffermaster")
public class RefferMasterPojo {
	
	@Id
	@GeneratedValue
	
	@Column(name="ReffId")
	private int reffId;
	
	@Column(name="ReffName")
	private String reffName;
	
	public int getReffId() {
		return reffId;
	}

	public void setReffId(int reffId) {
		this.reffId = reffId;
	}

	public String getReffName() {
		return reffName;
	}

	public void setReffName(String reffName) {
		this.reffName = reffName;
	}

}
