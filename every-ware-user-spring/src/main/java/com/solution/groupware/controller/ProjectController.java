package com.solution.groupware.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ProjectController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/project")
public class ProjectController {
	@GetMapping("/dashboard")
	public String dashboard(HttpServletRequest request) {
		
		return "dashboard.project";
	}
	
	@GetMapping("/list")
	public String list(HttpServletRequest request) {
		
		return "/project/list";
	}
	
	@GetMapping("/write/project")
	public String writeProject(HttpServletRequest request) {
		
		return "/project/write_project";
	}
	
	@GetMapping("/work")
	public String work(HttpServletRequest request) {
		
		return "/project/work";
	}
	
	@GetMapping({"/write/work", "/write/work/{project}"})
	public String writeWork(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project) throws Exception {
		System.out.println("테스트");
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("projectIdx", project);
		
		//model.addAttribute("category", boardService.selectBoardCategory());
		model.addAttribute("currentProject", project);
		
		//model.addAttribute("detail", boardService.selectBoardDetail(param));
		
		return "/project/write_work";
	}
	
	//회계
	@GetMapping("/accounting")
	public String accounting(HttpServletRequest request) {
		
		return "accounting.project";
	}
}
