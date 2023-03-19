package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

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
	@RequestMapping(value="/info", method=RequestMethod.GET)
	public String info(HttpServletRequest request) {
		
		return "info.mypage";
	}
	
	@RequestMapping(value="/attendance", method=RequestMethod.GET)
	public String attendance(HttpServletRequest request) {
		
		return "attendance.mypage";
	}
	
	@RequestMapping(value="/annual", method=RequestMethod.GET)
	public String annual(HttpServletRequest request) {
		
		return "annual.mypage";
	}

	@RequestMapping(value="/salary", method=RequestMethod.GET)
	public String salary(HttpServletRequest request) {
		
		return "salary.mypage";
	}
	
	@RequestMapping(value="/certificate", method=RequestMethod.GET)
	public String certificate(HttpServletRequest request) {
		
		return "certificate.mypage";
	}
	
	@RequestMapping(value="/setting", method=RequestMethod.GET)
	public String setting(HttpServletRequest request) {
		
		return "setting.mypage";
	}
}
