package com.solution.groupware.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.solution.groupware.setting.ConstValues;
import com.solution.groupware.vo.UserVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	//컨트롤러보다 먼저 수행되는 메서드
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
        
        if ( userVO == null ){
            // 로그인이 안되어 있는 상태임으로 로그인 폼으로 다시 돌려보냄 (redirect)
        	response.sendRedirect("/user/login");
            return false; //더이상 컨트롤러 요청으로 가지 않도록false로 반환함
        }
        
		return true;
    }
 
    // 컨트롤러가 수행되고 화면이 보여지기 직전에 수행되는 메서드
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }
}