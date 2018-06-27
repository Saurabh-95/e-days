package com.ms.avalon.master.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ms.avalon.master.service.EmpService;

@Controller
public class HomeController {
	
	@Autowired
	private EmpService empService;
	
	
	
	@RequestMapping(value="/Master")
	public String getMasterDashboard(){
	
		return "Dashbord";
	}
	
	@RequestMapping(value="/Login")
	public String login(){
		//System.out.println("1");
		return "Login";
	}
	
	@RequestMapping(value="/Ajax/Login",method=RequestMethod.POST)
	public @ResponseBody String secureLogin(String employeeId, String password,Model map, HttpSession session){
		if(empService.secureLogin(employeeId, password, session)){
			//System.out.println("2");
			return "ok";
		}else{
			return "Incorrect LoginId or Password";
		}
	}
	
	@RequestMapping(value="/Logout")
	public String logout(HttpSession session,HttpServletRequest req){
		session.invalidate();
		return "redirect:/";
	}
	
	}
