package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	PaperworkController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/paperwork")
public class PaperworkController {
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String form(HttpServletRequest request) {
		
		return "form.paperwork";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(HttpServletRequest request) {
		
		return "write.paperwork";
	}
	
	@RequestMapping(value="/send", method=RequestMethod.GET)
	public String send(HttpServletRequest request) {
		
		return "send.paperwork";
	}
	
	@RequestMapping(value="/referrer", method=RequestMethod.GET)
	public String referrer(HttpServletRequest request) {
		
		return "referrer.paperwork";
	}
	
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public String all(HttpServletRequest request) {
		
		return "all.paperwork";
	}
}
