package com.way.free.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.way.free.model.board;

public class BoardMapper implements RowMapper<board>{

	@Override
	public board mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		board board=new board();
		board.setCanum(rs.getInt("canum"));
		board.setType(rs.getString("type"));
		board.setTitle(rs.getString("title"));
		board.setNick(rs.getString("nick"));
		board.setPassword(rs.getString("password"));
		board.setContent(rs.getString("content"));
		board.setInqu(rs.getInt("inqu"));
		board.setReco(rs.getInt("reco"));
		board.setAppro(rs.getString("appro"));
		board.setConcept(rs.getInt("concept"));
		board.setNonreco(rs.getInt("nonreco"));
		board.setHitnum(rs.getInt("hitnum"));
		board.setRepnum(rs.getInt("repnum"));
		return board;
	}

	

}
