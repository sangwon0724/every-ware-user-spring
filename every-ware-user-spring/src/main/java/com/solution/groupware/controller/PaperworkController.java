package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
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
	@GetMapping("/form")
	public String form(HttpServletRequest request) {
		
		return "form.paperwork";
	}
	
	@GetMapping("/write")
	public String write(HttpServletRequest request) {
		
		return "write.paperwork";
	}
	
	@GetMapping("/send")
	public String send(HttpServletRequest request) {
		
		return "send.paperwork";
	}
	
	@GetMapping("/referrer")
	public String referrer(HttpServletRequest request) {
		
		return "referrer.paperwork";
	}
	
	@GetMapping("/all")
	public String all(HttpServletRequest request) {
		
		return "all.paperwork";
	}
}
