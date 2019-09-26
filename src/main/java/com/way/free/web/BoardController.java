package com.way.free.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.way.free.model.board;
import com.way.free.model.user;
import com.way.free.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	// 의존관계 주입 =>BoardServiceImpl생성
	// IoC 의존관계 역전
	@Inject
	BoardService boardService;

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
		
		if(user!=null) {
			mav.setViewName("main/gallery2");// 뷰를 gallery.jsp로 설정
			mav.addObject("list", list);// 데이터 저장
			return mav;// gallery.jsp로 list가 전달된다.
		}else {
			mav.setViewName("main/gallery");// 뷰를 gallery.jsp로 설정
			mav.addObject("list", list);// 데이터 저장
			return mav;// gallery.jsp로 list가 전달된다.
		}
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

	// 02_01.게시글 작성처리
	@RequestMapping(value = "insertboard.do", method = RequestMethod.POST)
	public ModelAndView insertboard(@ModelAttribute board board,HttpServletRequest request) throws Exception {
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		boardService.insertBoard(board);
		
		//세션연결
		HttpSession hisession=request.getSession();
		user user=(user)hisession.getAttribute("user");
		mav.addObject("user", user);
		
		mav.setViewName("redirect:listboard.do");
		
		return mav;
	}

	// 03.게시글 상세내용 조회, 게시글 조회수 증가 처리
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
		
		if(user!=null) {
			// 뷰의 이름
			mav.setViewName("main/viewboard2");
			mav.addObject("board", boardService.readBoard(num));
			mav.addObject("list", list);// 데이터 저장
			return mav;
		}else {
			// 뷰의 이름
			mav.setViewName("main/viewboard");
			mav.addObject("board", boardService.readBoard(num));
			mav.addObject("list", list);// 데이터 저장
			return mav;
		}
	}

	// 04.게시글 수정및 삭제 페이지 이동
	@RequestMapping(value = "changeboard.do", method = RequestMethod.GET)
	public ModelAndView changeboard(@RequestParam int num,@RequestParam String title,HttpServletRequest request) throws Exception {
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		board board=boardService.readBoard(num);
		//세션연결
		HttpSession session=request.getSession();
		user user=(user)session.getAttribute("user");
		mav.addObject("user", user);
		if("삭제".equals(title)) {
			if(user!=null) {
				if(board.getNick().equals(user.getNick())) {
					mav.addObject("title", "삭제");
					mav.setViewName("main/Indeleteview");
					mav.addObject("board", board);
					return mav;
				}else {
					mav.setViewName("login/nouser");
					return mav;
				}
			}else {
				mav.setViewName("gallery/checkpass");
				mav.addObject("title", "삭제");
				mav.addObject("board", boardService.readBoard(num));
				return mav;
			}
			
		}else {
			if(user!=null) {
				if(board.getNick().equals(user.getNick())) {
					mav.setViewName("main/Inupdateview");
					mav.addObject("title", "수정");
					mav.addObject("board", board);
					return mav;
				}else {
					mav.setViewName("login/nouser");
					return mav;
				}
			}else {
				mav.setViewName("gallery/checkpass");
				mav.addObject("title", "수정");
				mav.addObject("board", boardService.readBoard(num));
				return mav;
			}
		}
		
		
	}
	//04-1.게시글 수정및 삭제 전 비밀번호 확인 페이지
		@RequestMapping(value="updateboard.do",method=RequestMethod.GET)
		public ModelAndView updateboard(@RequestParam String title,@RequestParam int num,String password )throws Exception{
			//ModelAndview - 모델과 뷰
			ModelAndView mav=new ModelAndView();
			board board=boardService.readBoard(num);
			
			if(board.getPassword().equals(password)) {
				if("수정".equals(title)) {
					mav.setViewName("main/updateview");
					mav.addObject("board", boardService.readBoard(num));
					mav.addObject("title", title);
					return mav;
				}else {
					mav.setViewName("main/deleteview");
					mav.addObject("title", title);
					mav.addObject("board", boardService.readBoard(num));
					return mav;
				}
			}else {
				mav.setViewName("login/nopass");
				return mav;
			}
			
		}
	//05.게시글 수정 프로세스
	@RequestMapping(value="update.do",method=RequestMethod.POST)
	public ModelAndView update(@ModelAttribute board board)throws Exception{
		//ModelAndview - 모델과 뷰
		ModelAndView mav=new ModelAndView();
		boardService.updateBoard(board);
		mav.setViewName("redirect:listboard.do");
		return mav;
	}
	
	// 05.게시글 삭제 프로세스
	@RequestMapping(value = "delete.do", method = RequestMethod.POST)
	public ModelAndView deleteboard(@RequestParam int num) throws Exception {
		//ModelAndview - 모델과 뷰
		ModelAndView mav=new ModelAndView();
		boardService.deleteBoard(num);
		mav.setViewName("redirect:listboard.do");
		return mav;
	}

	// 06.gallog 페이지 출력
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
	
}
