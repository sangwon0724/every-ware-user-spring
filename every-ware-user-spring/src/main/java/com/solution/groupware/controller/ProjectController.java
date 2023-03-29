package com.solution.groupware.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solution.groupware.service.CommonService;
import com.solution.groupware.service.ProjectService;
import com.solution.groupware.setting.ConstValues;
import com.solution.groupware.vo.ProjectVO;

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
	@Autowired
	CommonService commonService;
	
	@Autowired
	ProjectService projectService;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpServletRequest request, Model model) {
		
		return "dashboard.project";
	}
	
	@GetMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		try {
			model.addAttribute("list", projectService.selectProjectList(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/list";
	}
	
	@GetMapping("/{project}")
	public String projectDetail(HttpServletRequest request, Model model, @PathVariable Integer project) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		try {
			model.addAttribute("list", projectService.selectProjectList(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/detail_project";
	}
	
	@GetMapping("/write/project")
	public String writeProject(HttpServletRequest request, Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("grpCode", ConstValues.GRP_CODE.PROJECT_WORKFLOW.getValue());
		
		try {
			model.addAttribute("dept", commonService.selectDeptList(param));
			model.addAttribute("user", new ArrayList<String>());
			model.addAttribute("client", new ArrayList<String>());
			model.addAttribute("workflow", commonService.selectCodeList(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/write_project";
	}
	
	@PostMapping("/save/project")
	public String saveProject(HttpServletRequest request, Model model, ProjectVO param) {
		try {
			projectService.insertProject(param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/project/list";
	}
	
	@GetMapping({"/work", "/work/{project}"})
	public String work(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		try {
			model.addAttribute("project", projectService.selectProjectList(param));
			model.addAttribute("currentProject", project);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/work";
	}
	
	@GetMapping({"/write/work", "/write/work/{project}"})
	public String writeWork(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project) {
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("projectIdx", project);
		
		try {
			model.addAttribute("project", projectService.selectProjectList(param));
			model.addAttribute("workflow", commonService.selectCodeList(param));
			model.addAttribute("currentProject", project);
			
			//model.addAttribute("detail", boardService.selectProjectDetail(param));
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
