package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="studentmaster")
public class StudentMasterPojo 
{
	@Id
	@GeneratedValue
	
	@Column(name="StdId")
	private int stdId;
	
	@Column(name="StdName")
	private String stdName;
	
	
	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
}
