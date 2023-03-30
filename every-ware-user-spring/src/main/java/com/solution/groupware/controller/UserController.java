package com.solution.groupware.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.solution.groupware.vo.UserVO;

import com.solution.groupware.setting.ConstValues;

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
	@GetMapping("/login")
	public String getLogin(HttpServletRequest request) {
		//로그인 전의 페이지 주소를 세션에 저장
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		
		return "/user/login";
	}
	
	//login-post
	@PostMapping("/login")
	public String postLogin(@RequestParam HashMap<String, Object> map, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
		
		//임시 - 데이터 검증 과정 필요
		if(userVO == null) {
			userVO = new UserVO();
			userVO.setIdx(7);
			session.setAttribute("sessionInfo", userVO);
		}

		//로그인 전의 페이지 주소로 이동
		return "redirect:/";
	}
	
	//logout
	@RequestMapping(value = "/logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpServletRequest request, HttpSession session) throws Exception {
		//로그인 전의 페이지 주소를 String 변수에 저장
		//String referer = request.getHeader("Referer");

		//세션 무효화
		session.invalidate();
	   
		//로그아웃 하기 전의 페이지 주소로 이동
		return "redirect:/";
	}
}
