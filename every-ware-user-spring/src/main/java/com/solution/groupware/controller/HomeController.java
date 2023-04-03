package com.solution.groupware.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solution.groupware.service.ContactService;
import com.solution.groupware.setting.ConstValues;
import com.solution.groupware.vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ContactService contactService;
	
	@GetMapping("/")
	public String home(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
		if(userVO==null) return "redirect:/user/login";
		
		try {
			if(userVO!=null) {
				int userIdx = userVO.getIdx();
				
				HashMap<String, Object> param = new HashMap<String, Object>();
				param.put("userIdx", userIdx);
				
				model.addAttribute("receive_contact_list", contactService.selectReceiveList(param));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "home.main";
	}
	
}
