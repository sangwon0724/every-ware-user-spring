package com.solution.groupware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solution.groupware.service.BoardService;

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
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/write/{category}", method=RequestMethod.GET)
	public String write(HttpServletRequest request, Model model, @PathVariable int category) throws Exception {
		
		model.addAttribute("currentCategory", category);
		
		return "/board/write";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.GET)
	public String save(HttpServletRequest request, Model model) throws Exception {
		String category = request.getParameter("categoryIdx");
		
		//저장

		return "redirect:/board/" + category;
	}
	
	@RequestMapping(value="/{category}", method=RequestMethod.GET)
	public String list(HttpServletRequest request, Model model, @PathVariable int category) throws Exception {
		
		model.addAttribute("category", boardService.selectBoardCategory());
		model.addAttribute("currentCategory", category);
		
		//게시글 목록 조회
		
		return "/board/list";
	}
	
	@RequestMapping(value="/{category}/{no}", method=RequestMethod.GET)
	public String detail(HttpServletRequest request, Model model, @PathVariable int category, @PathVariable int no) throws Exception {

		
		model.addAttribute("category", boardService.selectBoardCategory());
		model.addAttribute("currentCategory", category);
		
		//게시글 상세 조회
		
		return "/board/detail";
	}
}
