package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ContactController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/contact")
public class ContactController {
	@RequestMapping(value="/receive", method=RequestMethod.GET)
	public String receive(HttpServletRequest request) {
		
		return "receive.contact";
	}
	
	@RequestMapping(value="/send", method=RequestMethod.GET)
	public String send(HttpServletRequest request) {
		
		return "send.contact";
	}
	
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public String all(HttpServletRequest request) {
		
		return "all.contact";
	}
	
	@RequestMapping(value="/trash", method=RequestMethod.GET)
	public String trash(HttpServletRequest request) {
		
		return "trash.contact";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(HttpServletRequest request) {
		
		return "write.contact";
	}
}
