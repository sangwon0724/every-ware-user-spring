package com.solution.groupware.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.solution.groupware.service.ContactService;
import com.solution.groupware.vo.UserVO;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ContactController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/contact")
public class ContactController {
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping(value="/receive", method=RequestMethod.GET)
	public String receive(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("userIdx", userIdx);
		
		model.addAttribute("list", contactService.selectReceiveList(param));
		
		return "receive.contact";
	}
	
	@RequestMapping(value="/send", method=RequestMethod.GET)
	public String send(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("userIdx", userIdx);
		
		model.addAttribute("list", contactService.selectSendList(param));
		
		return "send.contact";
	}
	
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public String all(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("userIdx", userIdx);
		
		model.addAttribute("list", contactService.selectAllList(param));
		
		return "all.contact";
	}
	
	@RequestMapping(value="/trash", method=RequestMethod.GET)
	public String trash(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("userIdx", userIdx);
		
		model.addAttribute("list", contactService.selectTrashList(param));
		
		return "trash.contact";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("userIdx", userIdx);
		
		return "write.contact";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("userIdx", userIdx); //작성자 회원 고유번호
		param.put("title", request.getParameter("title")); //제목
		param.put("content", request.getParameter("content")); //내용
		param.put("receiveUserIdx", request.getParameter("receiveUserIdx")); //수신자 회원 고유번호
		param.put("receiveType", "CALL"); //수신 유형
		
		contactService.insertPost(param); //읽음 처리
		
		return "redirect:/contact/send";
	}
	
	@RequestMapping(value="/{category}/detail/{idx}", method=RequestMethod.GET)
	public String detail(HttpServletRequest request, Model model, @PathVariable String category, @PathVariable Integer idx) throws Exception {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("idx", idx);
		
		contactService.updateReadStatus(param); //읽음 처리
		
		model.addAttribute("category", category);
		model.addAttribute("detail", contactService.selectContactDetail(param));
		
		return "detail.contact";
	}
}
