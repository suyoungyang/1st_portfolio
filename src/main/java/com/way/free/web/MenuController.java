package com.way.free.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.way.free.model.menu;
import com.way.free.model.user;
import com.way.free.service.MenuService;

@Controller
@RequestMapping("/board/*")
public class MenuController {
	@Inject
	MenuService menuService;
	
	@RequestMapping(value = "menulist.do",method=RequestMethod.GET)
	public ModelAndView menulist(HttpServletRequest request) throws Exception {
		List<menu> list = menuService.menulistAll();
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		
		//세션연결
		HttpSession session=request.getSession();
		user user=(user)session.getAttribute("user");
		mav.addObject("user", user);
		
		if(user!=null) {
			mav.setViewName("menu/mainmenu2");// 뷰를 gallery.jsp로 설정
			mav.addObject("list", list);// 데이터 저장
			return mav;// gallery.jsp로 list가 전달된다.
		}else {
			mav.setViewName("menu/mainmenu");// 뷰를 gallery.jsp로 설정
			mav.addObject("list", list);// 데이터 저장
			return mav;// gallery.jsp로 list가 전달된다.
		}
	}
	
}
