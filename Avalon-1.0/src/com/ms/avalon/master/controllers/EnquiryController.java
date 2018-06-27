package com.ms.avalon.master.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/Master")
public class EnquiryController {
	private static final String VIEW="enquiry/"; 
	
	
	@RequestMapping(value="/Ajax/Enquiry/loadEnquiryForm",method=RequestMethod.POST)
	public String loadEnquiryForm(){
		return VIEW+"EnquiryForm";
	}
	
	@RequestMapping(value="/Ajax/Enquiry/loadEnquiryDetails",method=RequestMethod.POST)
	public String loadEnquiryDetails(){
		return VIEW+"EnquiryDetail";
	}
	
}
