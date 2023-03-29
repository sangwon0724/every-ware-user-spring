package com.solution.groupware.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solution.groupware.service.CommonService;

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
	private final String GRP_CODE_WORKFLOW = "PROJECT_WORKFLOW";
	
	@Autowired
	CommonService commonService;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpServletRequest request, Model model) {
		
		return "dashboard.project";
	}
	
	@GetMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		
		return "/project/list";
	}
	
	@GetMapping("/write/project")
	public String writeProject(HttpServletRequest request, Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("grpCode", GRP_CODE_WORKFLOW);
		
		try {
			model.addAttribute("workflow", commonService.selectCodeList(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/write_project";
	}
	
	@GetMapping("/work")
	public String work(HttpServletRequest request, Model model) {
		
		return "/project/work";
	}
	
	@GetMapping({"/write/work", "/write/work/{project}"})
	public String writeWork(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project) {
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("projectIdx", project);
		
		try {
			model.addAttribute("workflow", commonService.selectCodeList(param));
			model.addAttribute("currentProject", project);
			
			//model.addAttribute("detail", boardService.selectBoardDetail(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/write_work";
	}
	
	//회계
	@GetMapping("/accounting")
	public String accounting(HttpServletRequest request, Model model) {
		
		return "accounting.project";
	}
}
