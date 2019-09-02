package com.way.free.web;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.way.free.MenuService;
import com.way.free.model.menu;

@Controller
@RequestMapping("/board/*")
public class MenuController {
	@Inject
	MenuService menuService;
	
	@RequestMapping(value = "menulist.do",method=RequestMethod.GET)
	public ModelAndView menulist() throws Exception {
		List<menu> list = menuService.menulistAll();
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/mainmenu");// 뷰를 mainmenu.jsp로 설정
		mav.addObject("menulist", list);// 데이터 저장
		return mav;// mainmenu.jsp로 list가 전달된다.
	}
}
