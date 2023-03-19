package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ScheduleController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/schedule")
public class ScheduleController {
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public String all(HttpServletRequest request) {
		
		return "all.schedule";
	}
	
	@RequestMapping(value="/team", method=RequestMethod.GET)
	public String team(HttpServletRequest request) {
		
		return "team.schedule";
	}
	
	@RequestMapping(value="/personal", method=RequestMethod.GET)
	public String personal(HttpServletRequest request) {
		
		return "personal.schedule";
	}
}
