package com.way.free.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.way.free.dao.BoardDAO;
import com.way.free.model.board;

@Repository   //현재 클래스를 dao bean으로 등록
public class BoardDAOImpl implements BoardDAO{
	@Inject
	SqlSession SqlSession;
	
	//01.게시글 작성
	@Override
	public void insertBoard(board board) throws Exception {
		SqlSession.insert("insert",board);
	}
	//02.게시글 상세보기
	@Override
	public board readBoard(int num) throws Exception {
		return SqlSession.selectOne("view",num);
	}
	//03. 게시글수정
	@Override
	public void updateBoard(board board) throws Exception {
		SqlSession.update("updateArticle",board);
	}
	//04.게시글 삭제
	@Override
	public void deleteBoard(int num) throws Exception {
		SqlSession.delete("deleteArticle",num);
	}
	//05.게시글 전체 목록
	@Override
	public List<board> listAll() throws Exception {
		return SqlSession.selectList("listAll");
	}
	//06.게시글 조회수 증가
	@Override
	public void increaseViewnum(int num) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
