package com.example.board;

import com.example.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	private final String BOARD_INSERT = "insert into RESTAURANT " +
			"(name, type, location, dayoff, representative, grade, evaluation, picture) values (?,?,?,?,?,?,?,?)";
	private final String BOARD_UPDATE = "update RESTAURANT set name=?, type=?, location=?, dayoff=?, representative=?, grade=?, evaluation=?, moDate=?, picture=? where seq=?";
	private final String BOARD_DELETE = "delete from RESTAURANT where seq=?";
	private final String BOARD_GET = "select * from RESTAURANT where seq=?";
	private final String BOARD_LIST = "select * from RESTAURANT order by seq desc";

	public int insertBoard(BoardVO vo) {
		return jdbcTemplate.update(BOARD_INSERT, new Object[]{vo.getName(), vo.getType(),
		vo.getLocation(), vo.getDayoff(), vo.getRepresentative(), vo.getGrade(), vo.getEvaluation(), vo.getPicture()});
	}

	public int deleteBoard(int seq){
		return jdbcTemplate.update(BOARD_DELETE, new Object[]{seq});
	}

	public int updateBoard(BoardVO vo){
		return jdbcTemplate.update(BOARD_UPDATE, new Object[]{vo.getName(), vo.getType(),
				vo.getLocation(), vo.getDayoff(), vo.getRepresentative(), vo.getGrade(), vo.getEvaluation(), vo.getMoDate(), vo.getPicture(), vo.getSeq()});
	}

	public BoardVO getBoard(int seq){
		return jdbcTemplate.queryForObject(BOARD_GET, new Object[] {seq},
				new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
	}

	public List<BoardVO> getBoardList(){
		return jdbcTemplate.query(BOARD_LIST, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				BoardVO vo = new BoardVO();
				vo.setSeq(rs.getInt("seq"));
				vo.setName(rs.getString("name"));
				vo.setType(rs.getString("type"));
				vo.setLocation(rs.getString("location"));
				vo.setDayoff(rs.getString("dayoff"));
				vo.setRepresentative(rs.getString("representative"));
				vo.setGrade(rs.getInt("grade"));
				vo.setEvaluation(rs.getString("evaluation"));
				vo.setMoDate(rs.getDate("moDate"));
				vo.setPicture(rs.getString("picture"));

				return vo;
			}
		});
	}


//	public int insertBoard(BoardVO vo){
//		String sql = "insert into RESTAURANT " +
//				"(name, type, location, dayoff, representative, grade, evaluation, picture) values ("
//				+ "'" + vo.getName() + "',"
//				+ "'" + vo.getType() + "',"
//				+ "'" + vo.getLocation() + "',"
//				+ "'" + vo.getDayoff() + "',"
//				+ "'" + vo.getRepresentative() + "',"
//				+ "'" + vo.getGrade() + "',"
//				+ "'" + vo.getEvaluation() + "',"
//				+ "'" + vo.getPicture() + "')";
//		return jdbcTemplate.update(sql);
//	}
//
//	public int deleteBoard(int seq){
//		String sql = "delete from RESTAURANT where seq" + seq;
//		return jdbcTemplate.update(sql);
//	}
//
//	public int updateBoard(BoardVO vo){
//		String sql = "update RESTAURANT set title=" +vo.getName() + "',"
//				+ " type='" + vo.getType() + "',"
//				+ " location='" + vo.getLocation() + "',"
//				+ " dayoff='" + vo.getDayoff() + "',"
//				+ " representative='" + vo.getRepresentative() + "',"
//				+ " grade='" + vo.getGrade() + "',"
//				+ " evaluation='" + vo.getEvaluation() + "',"
//				+ " moDate='" + vo.getMoDate() + "',"
//				+ " picture='" + vo.getPicture() + "' where seq=" + vo.getSeq();
//
//		return jdbcTemplate.update(sql);
//	}



}
