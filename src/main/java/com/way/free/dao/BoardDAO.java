package com.way.free.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.way.free.model.board;

public interface BoardDAO {
		//01.게시글 작성
		public void insertBoard(board board) throws Exception;
		//02.게시글 상세보기
		public board readBoard(int num) throws Exception;
		//03.게시글 수정
		public void updateBoard(board board) throws Exception;
		//03-1.게시글 수정시 패스워드 확인
		public void passproc(int num) throws Exception;
		//04.게시글 삭제
		public void deleteBoard(int num) throws Exception;
		//05.게시글 전체 목록
		public List<board> listAll() throws Exception;
		//06.게시글 조회
		public void increaseViewnum(int num) throws Exception;
		//07.mygallog 게시판리스트 출력
		public List<board> myboard(String nick) throws Exception;
	
}	
