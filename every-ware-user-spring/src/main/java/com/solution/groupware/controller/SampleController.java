package com.solution.groupware.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ContactController.java 
 * @author      : 	이상원 
 * @date        : 	2023.04.02
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.04.02    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/sample")
public class SampleController {
	
	/**
	 * 예약
	*/
	@GetMapping("/reserve")
	public String reserve(HttpServletRequest request, Model model) throws Exception {
		
		return "reserve.sample";
	}
	
	/**
	 * 증명서 발급
	*/
	@GetMapping("/certificate")
	public String certificate(HttpServletRequest request, Model model) throws Exception {
		
		return "certificate.sample";
	}
}
