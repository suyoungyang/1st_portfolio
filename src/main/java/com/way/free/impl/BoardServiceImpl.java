package com.way.free.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import com.way.free.BoardService;
import com.way.free.dao.BoardDAO;
import com.way.free.model.board;

@Repository
public class BoardServiceImpl implements BoardService{
	
	@Inject
	BoardDAO boardDAO;

	//01. 게시글쓰기
	@Override
	public void insertBoard(board board) throws Exception {
		int canum=board.getCanum();
		String type=board.getType();
		String title=board.getTitle();
		String nick=board.getNick();
		String password=board.getPassword();
		String content=board.getContent();
		int inqu=board.getInqu();
		int reco=board.getReco();
		String appro=board.getAppro();
		int concept=board.getConcept();
		int nonreco=board.getNonreco();
		int hitnum=board.getHitnum();
		int repnum=board.getRepnum();
		//*공백문자 처리
		title=title.replace("  ", "&nbsp;&nbsp;");
		content=content.replace("  ", "&nbsp;&nbsp;");
		//*줄바꿈 문자처리
		content=content.replace("\n", "<br>");
		board.setCanum(canum);
		board.setType(type);
		board.setTitle(title);
		board.setNick(nick);
		board.setPassword(password);
		board.setContent(content);
		board.setInqu(inqu);
		board.setReco(reco);
		board.setAppro(appro);
		board.setConcept(concept);
		board.setNonreco(nonreco);
		board.setHitnum(hitnum);
		board.setRepnum(repnum);
		boardDAO.insertBoard(board);
	}

	//02.게시글 상세보기
	@Override
	public board readBoard(int num) throws Exception {
		return boardDAO.readBoard(num);
	}

	//03.게시글 수정
	@Override
	public void updateBoard(int num) throws Exception {
		boardDAO.updateBoard(num);
		
	}
	//03-1.게시글 수정시 패스워드 확인
	@Override
	public void passproc(int num) throws Exception{
		boardDAO.passproc(num);
	}

	//04.게시글 삭제
	@Override
	public void deleteBoard(int num) throws Exception {
		boardDAO.deleteBoard(num);
		
	}
	
	//03-1.게시글 수정시 패스워드 확인

	//05.게시글 전체 목록
	@Override
	public List<board> listAll() throws Exception {
		return boardDAO.listAll();
	}

	//06.게시글 조회수 증가
	@Override
	public void increaseViewnum(int num, HttpSession session) throws Exception {
		long update_time=0;
		//세션에 저장된 조회시간 검색
		//최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행 X
		if(session.getAttribute("update_time_"+num)!=null) {
			//세션에서 읽어오기
			update_time=(Long)session.getAttribute("update_time_"+num);
		}
		//시스템의 현재 시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		//일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		//시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if(current_time - update_time > 5*1000) {
			boardDAO.increaseViewnum(num);
			//세션에 시간을 저장 : "update_time_"+num는 다른 변수와 중복되지 않게 명명한다.
			session.setAttribute("update_time_"+num, current_time);
		}
		
	}
	//07.mygallog 게시판리스트 출력
	@Override
	public List<board> myboard(String nick) throws Exception {
		return boardDAO.myboard(nick);
	}
	
	
	
	
	
}
