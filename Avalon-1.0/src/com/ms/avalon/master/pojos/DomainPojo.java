package com.ms.avalon.master.pojos;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name="domainmaster")

public class DomainPojo 
{
	@Id
	@GeneratedValue
	
	@Column(name="DomainId")
	private int domainId;
	
	@Column(name="DomainName")
	private String domainName;
	
	@OneToMany(fetch=FetchType.EAGER,targetEntity=CoursePojo.class)
	@Fetch(FetchMode.SUBSELECT)
	@Cascade(CascadeType.ALL)
	List<CoursePojo> course;
	
	public int getDomainId() {
		return domainId;
	}

	public void setDomainId(int domainId) {
		this.domainId = domainId;
	}

	public String getDomainName() {
		return domainName;
	}

	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}
}
