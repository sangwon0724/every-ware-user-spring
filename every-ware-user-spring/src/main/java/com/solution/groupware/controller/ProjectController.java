package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ProjectController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/project")
public class ProjectController {
	@RequestMapping(value="/dashboard", method=RequestMethod.GET)
	public String dashboard(HttpServletRequest request) {
		
		return "dashboard.project";
	}
	
	@RequestMapping(value="/work", method=RequestMethod.GET)
	public String work(HttpServletRequest request) {
		
		return "work.project";
	}
	
	@RequestMapping(value="/accounting", method=RequestMethod.GET)
	public String accounting(HttpServletRequest request) {
		
		return "accounting.project";
	}
}
