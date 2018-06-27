package com.ms.avalon.master.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="documentmaster")
public class DocumentMasterPojo 
{
	@Id
	@GeneratedValue
	
	@Column(name="DocId")
	private int docId;
	
	@Column(name="DocName")
	private String docName;
	
	@Column(name="Url")
	private String url;
	
	
	public int getDocId() {
		return docId;
	}

	public void setDocId(int docId) {
		this.docId = docId;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
