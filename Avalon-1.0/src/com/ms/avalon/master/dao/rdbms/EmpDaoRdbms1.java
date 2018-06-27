package com.ms.avalon.master.dao.rdbms;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import com.ms.avalon.master.dao.EmpDao1;
import com.ms.avalon.master.employeebeans.NewEnqBean;
import com.ms.avalon.master.pojos.CoursePojo;
import com.ms.avalon.master.pojos.DocumentMasterPojo;
import com.ms.avalon.master.pojos.DomainPojo;
import com.ms.avalon.master.pojos.EmpPojo;
import com.ms.avalon.master.pojos.EnquiryMasterPojo;
import com.ms.avalon.master.pojos.LoginPojo;
import com.ms.avalon.master.pojos.NewEnquiryPojo;
import com.ms.avalon.master.pojos.RefferMasterPojo;
import com.ms.avalon.master.pojos.StudentMasterPojo;
import com.ms.avalon.master.pojos.WebMasterPojo;


public class EmpDaoRdbms1 extends DBConnectionDao implements EmpDao1
{

	@Override
	public boolean Emplogin2(String empCode, String empPin) 
	{
		DetachedCriteria cre1=DetachedCriteria.forClass(LoginPojo.class);
		cre1.add(Restrictions.eq("empCode", empCode));
		cre1.add(Restrictions.eq("pin", empPin));
		List<LoginPojo> li1= hibernateTemplate.findByCriteria(cre1);
		System.out.println("size = "+li1.size());
		if(li1.size()==0)
		{
			return false;
		}
		else
		{
			return true;
		}
		
		
	}

	@Override
	public List<EmpPojo> getEmplyoeedata() 
	{
		DetachedCriteria cre=DetachedCriteria.forClass(EmpPojo.class);
		List<EmpPojo> li= hibernateTemplate.findByCriteria(cre);
		return li;
	}

	
	@Override
	public EmpPojo getEmployeeData(Integer Id) {
		
		return hibernateTemplate.get(EmpPojo.class,Id);
	}

	@Override
	public List<EmpPojo> searchWord(String srchkey) 
	{
	DetachedCriteria cre=DetachedCriteria.forClass(EmpPojo.class);
	Disjunction d=Restrictions.disjunction();
	
	if(	StringUtils.isNumeric(srchkey))
	{
		if(srchkey.length()>5) 
		{
		d.add(Restrictions.like("mobileNo", srchkey, MatchMode.START));
		d.add(Restrictions.like("altNo", srchkey, MatchMode.START));
		}
	
	else 
	{
		int src=Integer.parseInt(srchkey);
		d.add(Restrictions.like("empId", src));
		d.add(Restrictions.like("deptId", src));
		d.add(Restrictions.like("managerId", src));
		d.add(Restrictions.like("locationId", src));
	}
	}
	else 
	{
		d.add(Restrictions.like("empCode", srchkey, MatchMode.START));
		d.add(Restrictions.like("fName", srchkey, MatchMode.START));
		d.add(Restrictions.like("lName", srchkey, MatchMode.START));
		d.add(Restrictions.like("emailId", srchkey, MatchMode.ANYWHERE));
		d.add(Restrictions.like("designation", srchkey, MatchMode.START));
		d.add(Restrictions.like("perAddress", srchkey, MatchMode.ANYWHERE));
		d.add(Restrictions.like("perCity", srchkey, MatchMode.START));
	}
		cre.add(d);
		return hibernateTemplate.findByCriteria(cre);
	}

	@Override
	public boolean setdetailDao(EmpPojo emppojo) 
	{
		hibernateTemplate.save(emppojo);
		return true;
	}

	@Override
	public EmpPojo updateEmpDetail1(Integer id) 
	{
		
		return hibernateTemplate.get(EmpPojo.class,id);
	}

	@Override
	public boolean updatedetail2(EmpPojo emppojo1) {
		
		hibernateTemplate.update(emppojo1);
		
		return true;
	}

	@Override
	public List<DomainPojo> getDomainData()
	{
		
		DetachedCriteria cre=DetachedCriteria.forClass(DomainPojo.class);
		List<DomainPojo> li1= hibernateTemplate.findByCriteria(cre);
		return li1;
	}

	@Override
	public List<CoursePojo> getCourseData(Integer coid) {
		
		
		DetachedCriteria cre=DetachedCriteria.forClass(CoursePojo.class);
		cre.add(Restrictions.eq("domainId", coid));
		List<CoursePojo> li= hibernateTemplate.findByCriteria(cre);
		return li;
	}

	@Override
	public List<Integer> getManagersData() {
		DetachedCriteria cre=DetachedCriteria.forClass(EmpPojo.class);
		ProjectionList pro=Projections.projectionList();
		pro.add(Projections.distinct(Projections.property("managerId")));
		cre.setProjection(pro);
		return hibernateTemplate.findByCriteria(cre);
	}

	@Override
	public List<String> dataByDate(String startdate, String enddate) {
		System.out.println("rdbms");
		System.out.println(startdate+" "+enddate );
		DetachedCriteria cre=DetachedCriteria.forClass(EmpPojo.class);
		cre.add(Restrictions.ge("createdDate", startdate));
		cre.add(Restrictions.le("createdDate", enddate));
		ProjectionList pro=Projections.projectionList();
		pro.add(Projections.distinct(Projections.property("fName")));
		cre.setProjection(pro);
		List<String> li= hibernateTemplate.findByCriteria(cre);
		return li;
	}

	@Override
	public List<String> getEnquiryData(String tabname, String searchkey) {
		System.out.println("rdbms1");
		System.out.println(tabname+" "+searchkey );
		DetachedCriteria cre1,cre2,cre3,cre4;
		ProjectionList pro1=Projections.projectionList();
		ProjectionList pro2=Projections.projectionList();
		ProjectionList pro3=Projections.projectionList();
		ProjectionList pro4=Projections.projectionList();
		Disjunction d1=Restrictions.disjunction();
		Disjunction d2=Restrictions.disjunction();
		Disjunction d3=Restrictions.disjunction();
		Disjunction d4=Restrictions.disjunction();
	
		List<String> li=new ArrayList<String>();
		
		switch(tabname)
		{
		
		case "all":
			
		case "web":
			 cre1=DetachedCriteria.forClass(WebMasterPojo.class);
			 d1.add(Restrictions.like("webName", searchkey, MatchMode.ANYWHERE));
			 pro1.add(Projections.distinct(Projections.property("webName")));
			 cre1.setProjection(pro1);
			 cre1.add(d1);
			 
			  li.addAll(hibernateTemplate.findByCriteria(cre1));
			
			if(tabname.equals("web"))
			break;
		
		case "student":
			 cre2=DetachedCriteria.forClass(StudentMasterPojo.class);
			 d2.add(Restrictions.like("stdName", searchkey, MatchMode.ANYWHERE));
			 pro2.add(Projections.distinct(Projections.property("stdName")));
			 cre2.setProjection(pro2);
			 cre2.add(d2);
			 li.addAll(hibernateTemplate.findByCriteria(cre2));
			
			if(tabname.equals("student"))
			break;
			
		case "reffer":
			 cre3=DetachedCriteria.forClass(RefferMasterPojo.class);
			 d3.add(Restrictions.like("reffName", searchkey, MatchMode.ANYWHERE));
			 pro3.add(Projections.distinct(Projections.property("reffName")));
			 cre3.setProjection(pro3);
			 cre3.add(d3);
			 li.addAll(hibernateTemplate.findByCriteria(cre3));
			if(tabname.equals("reffer"))
			break;
			
		case "enquiry":
			 cre4=DetachedCriteria.forClass(EnquiryMasterPojo.class);
			 d4.add(Restrictions.like("enquiryName", searchkey, MatchMode.ANYWHERE));
			 pro4.add(Projections.distinct(Projections.property("enquiryName")));
			 cre4.setProjection(pro4);
			 cre4.add(d4);
			 li.addAll(hibernateTemplate.findByCriteria(cre4));
			
			if(tabname.equals("enquiry"))
			break;
		
		}
			return li;
	}

	@Override
	public boolean uploadenquirydata(List<NewEnquiryPojo> enqList) {
		
		if(enqList!=null && enqList.size()>0)
			for (NewEnquiryPojo f : enqList) 
			{
				hibernateTemplate.save(f);
			}
		return true;
	}


	 @Override
		public boolean uploadImage(List<DocumentMasterPojo> li) 
		{
			if(li!=null&&li.size()>0)
				for(DocumentMasterPojo fs :li)
				{
				   hibernateTemplate.save(fs);
				}
			return true;
		}

	@Override
	public List<DomainPojo> getDomainNewData() 
	{
		// TODO Auto-generated method stub
		return null;
	}
	    
	    



}
