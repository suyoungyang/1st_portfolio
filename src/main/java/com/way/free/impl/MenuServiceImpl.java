package com.way.free.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.way.free.MenuService;
import com.way.free.dao.BoardDAO;
import com.way.free.dao.MenuDAO;
import com.way.free.model.board;
import com.way.free.model.menu;

@Repository
public class MenuServiceImpl implements MenuService{
	@Inject
	MenuDAO menuDAO;
	
	//05.게시글 전체 목록
		@Override
		public List<menu> menulistAll() throws Exception {
			return menuDAO.menulistAll();
		}

}
