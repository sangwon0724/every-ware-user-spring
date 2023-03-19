package com.solution.groupware.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	UserController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/user")
public class UserController {
	//login - get
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLogin(HttpServletRequest request) {
		System.out.println("getLogin");
		
		//로그인 전의 페이지 주소를 세션에 저장
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		
		return "login.user";
	}
	
	//login-post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(@RequestParam HashMap<String, Object> map, HttpServletRequest request) throws Exception {
		System.out.println("postLogin");
				
		HttpSession session = request.getSession();
		
		//임시 - 데이터 검증 과정 필요
		if(map != null) {
			session.setAttribute("user", "temp");
		}

		//로그인 전의 페이지 주소로 이동
		return "redirect:"+(String) session.getAttribute("redirectURI");
	}
	
	//logout
	@RequestMapping(value = "/logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpServletRequest request, HttpSession session) throws Exception {
		System.out.println("logout");

		//로그인 전의 페이지 주소를 String 변수에 저장
		String referer = request.getHeader("Referer");

		//세션 무효화
		session.invalidate();
	   
		//로그아웃 하기 전의 페이지 주소로 이동
		return "redirect:"+referer;
	}
}