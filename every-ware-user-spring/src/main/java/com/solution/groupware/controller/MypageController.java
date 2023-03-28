package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	MypageController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/mypage")
public class MypageController {
	@GetMapping("/info")
	public String info(HttpServletRequest request) {
		
		return "info.mypage";
	}
	
	@GetMapping("/attendance")
	public String attendance(HttpServletRequest request) {
		
		return "attendance.mypage";
	}
	
	@GetMapping("/annual")
	public String annual(HttpServletRequest request) {
		
		return "annual.mypage";
	}

	@GetMapping("/salary")
	public String salary(HttpServletRequest request) {
		
		return "salary.mypage";
	}
	
	@GetMapping("/certificate")
	public String certificate(HttpServletRequest request) {
		
		return "certificate.mypage";
	}
	
	@GetMapping("/setting")
	public String setting(HttpServletRequest request) {
		
		return "setting.mypage";
	}
}
