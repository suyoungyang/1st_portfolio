package com.way.free;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.way.free.model.board;


@Service
public interface BoardService {
	//01.게시글 작성
	public void insertBoard(board board) throws Exception;
	//02.게시글 상세보기
	public board readBoard(int num) throws Exception;
	//03.게시글 수정
	public void updateBoard(int num) throws Exception;
	//04.게시글 삭제
	public void deleteBoard(int num) throws Exception;
	//05.게시글 전체 목록
	public List<board> listAll() throws Exception;
	//06.게시글 조회
	public void increaseViewnum(int num,HttpSession session) throws Exception;
	//07.mygallog 게시판리스트 출력
	public List<board> myboard(String nick)throws Exception;
	//04-1.게시판 수정시 패스워드확인
	public void passproc(int num) throws Exception;
	
}
