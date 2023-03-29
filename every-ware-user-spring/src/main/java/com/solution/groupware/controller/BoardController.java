package com.solution.groupware.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solution.groupware.service.BoardService;
import com.solution.groupware.vo.BoardVO;
import com.solution.groupware.vo.UserVO;

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
	
	@GetMapping("/write/{category}")
	public String write(HttpServletRequest request, Model model, @PathVariable int category) throws Exception {

		model.addAttribute("category", boardService.selectBoardCategory());
		model.addAttribute("currentCategory", category);
		
		return "/board/write";
	}
	
	@PostMapping("/save")
	public String save(HttpServletRequest request, Model model, BoardVO data) throws Exception {
		String category = request.getParameter("categoryIdx");

		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("sessionInfo");
		int userIdx = userVO.getUserIdx();
		
		data.setUserIdx(userIdx);
		
		//저장
		boardService.insertPost(data);

		return "redirect:/board/" + category;
	}
	
	@GetMapping("/{category}")
	public String list(HttpServletRequest request, Model model, @PathVariable int category) throws Exception {
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("categoryIdx", category);
		
		model.addAttribute("category", boardService.selectBoardCategory());
		model.addAttribute("currentCategory", category);
		
		model.addAttribute("list", boardService.selectBoardList(param));
		
		return "/board/list";
	}
	
	@GetMapping("/{category}/{idx}")
	public String detail(HttpServletRequest request, Model model, @PathVariable int category, @PathVariable int idx) throws Exception {
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("idx", idx);

		boardService.addView(param); //조회수 증가
		
		model.addAttribute("category", boardService.selectBoardCategory());
		model.addAttribute("currentCategory", category);
		
		model.addAttribute("detail", boardService.selectBoardDetail(param));
		
		return "/board/detail";
	}
}
