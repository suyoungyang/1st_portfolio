package com.way.free.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.way.free.BoardService;
import com.way.free.model.board;
import com.way.free.model.user;
import com.way.free.user.UserDao;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	// 의존관계 주입 =>BoardServiceImpl생성
	// IoC 의존관계 역전
	@Inject
	BoardService boardService;
	private UserDao userDao;

	// 01.게시글 목록
	// gallery 모든 사용자의 board 조회요청
	@RequestMapping(value = "listboard.do",method=RequestMethod.GET)
	public ModelAndView listBoard(HttpServletRequest request) throws Exception {
		List<board> list = boardService.listAll();
		
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		
		//세션연결
		HttpSession session=request.getSession();
		user user=(user)session.getAttribute("user");
		mav.addObject("user", user);
		
		mav.setViewName("main/gallery");// 뷰를 gallery.jsp로 설정
		mav.addObject("list", list);// 데이터 저장
		return mav;// gallery.jsp로 list가 전달된다.
	}

	// 02. 게시글 작성화면
	@RequestMapping(value = "newboard.do", method = RequestMethod.GET)
	public ModelAndView loginboard(HttpServletRequest request) {
		//ModelAndview - 모델과 뷰
		ModelAndView mav=new ModelAndView();
		//세션연결
		HttpSession session=request.getSession();
		user user=(user)session.getAttribute("user");
		mav.addObject("user", user);
		
		if(user!=null) {
			mav.setViewName("main/NewIn");
			return mav; // NewIn.jsp로 이동
		}else {
			mav.setViewName("main/NewNotIn");
			return mav;// NewNotIn.jsp로 이동
		}
		
	}

	// 02_02.게시글 작성처리
	@RequestMapping(value = "insertboard.do", method = RequestMethod.POST)
	public String insertboard(@ModelAttribute board board) throws Exception {
		boardService.insertBoard(board);
		return "redirect:listboard.do";
	}

	// 03.게시글 상세내용 조회, 게시글 조회수 증가 처리
	// @RequestParam : get/post 방식으로 전달된 변수 1개
	// HttpSession 세션객체
	@RequestMapping(value = "viewboard.do", method = RequestMethod.GET)
	public ModelAndView viewboard(@RequestParam int num, HttpSession session,HttpServletRequest request) throws Exception {
		List<board> list = boardService.listAll();
		// 조회수 증가처리
		boardService.increaseViewnum(num, session);
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//세션연결
		HttpSession hisession=request.getSession();
		user user=(user)hisession.getAttribute("user");
		mav.addObject("user", user);
		// 뷰의 이름
		mav.setViewName("main/viewboard");
		mav.addObject("board", boardService.readBoard(num));
		mav.addObject("list", list);// 데이터 저장
		return mav;
	}

	// 04.게시글 수정
	// 폼에서 입력한 내용들을 @ModelAttribute board board로 전달됨
	@RequestMapping(value = "updateboard.do", method = RequestMethod.GET)
	public String updateboard(@ModelAttribute board board) throws Exception {
		boardService.updateBoard(board);
		return "redirect:listboard.do";
	}
	//04-1.게시글 수정전 비밀번호 뷰페이지
	@RequestMapping(value="checkpass.do",method=RequestMethod.GET)
		public ModelAndView checkpass()throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("gallery/checkpass");
		return mav;
	}
	// 04-1.게시글 수정시 비밀번호 확인
	@RequestMapping(value="passproc.do",method=RequestMethod.GET)
	public String passproc(@RequestParam int num) throws Exception{
		boardService.passproc(num);
		return "redirect:updateboard.do";
	}
	

	// 05.게시글 삭제
	@RequestMapping(value = "deleteboard.do", method = RequestMethod.GET)
	public String deleteboard(@RequestParam int num) throws Exception {
		boardService.deleteBoard(num);
		return "redirect:listboard.do";
	}

	// 06.gallog
	@RequestMapping(value="myboard.do",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView myboard(@RequestParam(value = "nick", required = false, defaultValue = "null") String nick,HttpServletRequest request) throws Exception{
		//ModelAndview - 모델과 뷰
		ModelAndView mav=new ModelAndView();
		
		
		if("null".contentEquals(nick)) {
			System.out.println("nick>>>"+nick);
			mav.setViewName("login/plzlogin");
			return mav;
		}else {
			//세션연결
			HttpSession session=request.getSession();
			user user=(user)session.getAttribute("user");
			mav.addObject("user", user);
			
			List<board> list=boardService.myboard(nick);
			mav.setViewName("main/MyGallog");//뷰를 MyGallog.jsp로 설정
		    mav.addObject("myboard", list);
		    return mav;//MyGallog.jsp로 list가 전달됨.
		}
		
	}
	
	//07.gallery 상세페이지
	@RequestMapping(value="readboard.do",method=RequestMethod.GET)
	public ModelAndView readboard(@RequestParam int num,HttpServletRequest request) throws Exception{
		ModelAndView mav=new ModelAndView();
		//세션연결
		HttpSession session=request.getSession();
		user user=(user)session.getAttribute("user");
		mav.addObject("user", user);
		
		board board=boardService.readBoard(num);
	
		mav.setViewName("main/viewboard");
		mav.addObject("view", board);
		return mav;
	}
	

}
