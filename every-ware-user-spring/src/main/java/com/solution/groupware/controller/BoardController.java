package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	BoardController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/board")
public class BoardController {
	@RequestMapping(value="/{category}", method=RequestMethod.GET)
	public String list(HttpServletRequest request, @PathVariable int category) {
		
		return "/board/list";
	}
	
	@RequestMapping(value="/{category}/{no}", method=RequestMethod.GET)
	public String detail(HttpServletRequest request, @PathVariable int category, @PathVariable int no) {
		
		return "/board/detail";
	}
}
