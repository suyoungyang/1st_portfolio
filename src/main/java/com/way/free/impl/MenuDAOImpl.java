package com.way.free.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.way.free.dao.MenuDAO;
import com.way.free.model.menu;
@Repository
public class MenuDAOImpl implements MenuDAO{
	@Inject
	SqlSession SqlSession;

	@Override
	public List<menu> menulistAll() throws Exception {
		return SqlSession.selectList("menulistAll");
	}
}
