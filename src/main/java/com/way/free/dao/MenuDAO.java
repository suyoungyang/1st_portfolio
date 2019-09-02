package com.way.free.dao;

import java.util.List;

import com.way.free.model.menu;

public interface MenuDAO {
	//01.게시글 전체 목록
		public List<menu> menulistAll() throws Exception;
}
