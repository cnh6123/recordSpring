package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Transcript;

@Repository
public class TranscriptDAO {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public int getRowCount() {
		String sqlStatement = "select count(*) from transcript";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}
	
	public List<Transcript> getTranscript(int year, int semester) {

		String sqlStatement = "select * from transcript where trans_year=? and semester=?";
		return jdbcTemplate.query(sqlStatement, new Object[] { year,semester }, new RowMapper<Transcript>() {

			@Override
			public Transcript mapRow(ResultSet rs, int rowNum) throws SQLException {
				Transcript transcript = new Transcript();
				transcript.setYear(rs.getInt("trans_year"));
				transcript.setSemester(rs.getInt("semester"));
				transcript.setCord(rs.getString("trans_cord"));
				transcript.setName(rs.getString("trans_name"));
				transcript.setType(rs.getString("trans_type"));
				transcript.setScore(rs.getInt("trans_score"));
				
				return transcript;
			}

		});
	}
	
	public List<Transcript> getTranscripts() {
		String sqlStatement = "select * from transcript";
		return jdbcTemplate.query(sqlStatement, new RowMapper<Transcript>() {

			@Override
			public Transcript mapRow(ResultSet rs, int rowNum) throws SQLException {
				Transcript transcript = new Transcript();
				transcript.setYear(rs.getInt("trans_year"));
				transcript.setSemester(rs.getInt("semester"));
				transcript.setCord(rs.getString("trans_cord"));
				transcript.setName(rs.getString("trans_name"));
				transcript.setType(rs.getString("trans_type"));
				transcript.setScore(rs.getInt("trans_score"));
				
				return transcript;
			}

		});
	}
	
	public List<Transcript> getTranscriptsYearSemester() {
		String sqlStatement = "select trans_year, semester,sum(trans_score) from transcript group by trans_year,semester";
		return jdbcTemplate.query(sqlStatement, new RowMapper<Transcript>() {

			@Override
			public Transcript mapRow(ResultSet rs, int rowNum) throws SQLException {
				Transcript transcript = new Transcript();
				transcript.setYear(rs.getInt("trans_year"));
				transcript.setSemester(rs.getInt("semester"));
				transcript.setScoreSum(rs.getInt("sum(trans_score)"));
				
				return transcript;
			}

		});
	}
	
	
	public boolean insert(Transcript transcript) {
		int year = transcript.getYear();
		int semester = transcript.getSemester();
		String cord = transcript.getCord();
		String name = transcript.getName();
		String type = transcript.getType();
		int score = transcript.getScore();
		
		String sqlStatement = "insert into transcript(trans_year,semester,trans_cord,trans_name,trans_type,trans_score) value(?,?,?,?,?,?)";
		return (jdbcTemplate.update(sqlStatement, new Object[] { year, semester, cord, name, type, score }) == 1);
	}
}
