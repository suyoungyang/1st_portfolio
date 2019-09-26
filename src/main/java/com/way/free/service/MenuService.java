package com.way.free.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.way.free.model.menu;

@Service
public interface MenuService {
	//01.게시글 전체 목록
		public List<menu> menulistAll() throws Exception;

}
