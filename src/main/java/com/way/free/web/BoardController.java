package com.way.free.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.way.free.BoardService;
import com.way.free.model.board;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	// 의존관계 주입 =>BoardServiceImpl생성
	// IoC 의존관계 역전
	@Inject
	BoardService boardService;

	// 01.게시글 목록
	// gallery 모든 사용자의 board 조회요청
	@RequestMapping(value = "/board/listboard.do",method=RequestMethod.GET)
	public ModelAndView listBoard() throws Exception {
		List<board> list = boardService.listAll();
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/gallery");// 뷰를 gallery.jsp로 설정
		mav.addObject("list", list);// 데이터 저장
		return mav;// gallery.jsp로 list가 전달된다.
	}

	// 02_01.게시글 작성화면
	// 로그인 없이 게시판 작성 return 값을 string으로 만들어주고, Model을 따로 장착시키는 방법
	@RequestMapping(value = "/board/newboard.do", method = RequestMethod.GET)
	public String logoutboard() throws Exception {
		return "main/NewNotIn";// NewNotIn.jsp로 이동
	}

	// 02_01.로그인 후 게시판 작성
	@RequestMapping(value = "/board/newboardIn.do", method = RequestMethod.GET)
	public String loginboard() throws Exception {
		return "main/NewIn"; // NewIn.jsp로 이동
	}

	// 02_02.게시글 작성처리
	@RequestMapping(value = "/board/insertboard.do", method = RequestMethod.GET)
	public String insertboard(@ModelAttribute board board) throws Exception {
		boardService.insertBoard(board);
		return "redirect:/board/listboard.do";
	}

	// 03.게시글 상세내용 조회, 게시글 조회수 증가 처리
	// @RequestParam : get/post 방식으로 전달된 변수 1개
	// HttpSession 세션객체
	@RequestMapping(value = "/board/viewboard.do", method = RequestMethod.GET)
	public ModelAndView viewboard(@RequestParam int num, HttpSession session) throws Exception {
		// 조회수 증가처리
		boardService.increaseViewnum(num, session);
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("main/viewboard");
		mav.addObject("num", boardService.readBoard(num));
		return mav;
	}

	// 04.게시글 수정
	// 폼에서 입력한 내용들을 @ModelAttribute board board로 전달됨
	@RequestMapping(value = "/board/updateboard.do", method = RequestMethod.GET)
	public String updateboard(@ModelAttribute board board) throws Exception {
		boardService.updateBoard(board);
		return "redirect:/board/listboard.do";
	}

	// 05.게시글 삭제
	@RequestMapping(value = "/board/deleteboard.do", method = RequestMethod.GET)
	public String deleteboard(@RequestParam int num) throws Exception {
		boardService.deleteBoard(num);
		return "redirect:listboard.do";
	}

	// gallery 모든 사용자의 board 조회요청

}
