package com.way.free.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.way.free.model.menu;

public class MenuMapper implements RowMapper<menu>{

	@Override
	public menu mapRow(ResultSet rs, int rowNum) throws SQLException {
		menu menu=new menu();
		menu.setCanum(rs.getInt("canum"));
		menu.setMajorca(rs.getString("majorca"));
		menu.setMediumca(rs.getString("mediumca"));
		menu.setMinorca(rs.getString("minorca"));
		menu.setMan(rs.getString("man"));
		menu.setSubman(rs.getString("subman"));
		menu.setCadate(rs.getString("cadate"));
		return menu;
	}

	

}