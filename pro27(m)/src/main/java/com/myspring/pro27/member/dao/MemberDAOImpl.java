package com.myspring.pro27.member.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.pro27.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	/*private JdbcTemplate jdbcTemplate;
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	} 
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}*/
	
	
	@Override
	public List selectAllMemberList() throws DataAccessException{
	List<MemberVO> membersList =null;
	membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
	return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException{
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}
	@Override
	public int deleteMember(String id) throws DataAccessException{
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}


	@Override
	public int updateMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.update("mapper.member.updateMember", memberVO);
		return result;
	}


	@Override
	public MemberVO selectMemberById(String id) throws DataAccessException {
		MemberVO result = (MemberVO) sqlSession.selectOne("mapper.member.selectMemberById", id);
		return result;
	}
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		MemberVO vo= sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}

	/*@Override
	public int modMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.mod("mapper.member.updateMember", memberVO);
		return result;
	}
*/





	
	/*
	@Override
	public List selectAllMembers() throws DataAccessException{
		String query = "select id,pwd,name,email,joinDate" 
	+ " from t_member "
	+ " order by joinDate desc";
		List membersList = new ArrayList();
		
		membersList = this.jdbcTemplate.query(query, new RowMapper() {
			public Object mapRow(ResultSet rs, int rowNum) throws 
			SQLException{
				MemberVO memberVO = new MemberVO();
				memberVO.setId(rs.getString("id"));
				memberVO.setPwd(rs.getString("pwd"));
				memberVO.setName(rs.getString("name"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setJoinDate(rs.getDate("joinDate"));
				return memberVO;
			}
		});
		return membersList;
	}
	@Override
	public int addMember(MemberVO memberVO)throws DataAccessException{
		
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		String name = memberVO.getName();
		String email = memberVO.getEmail();
		String query = "insert into t_member(id,pwd,name,email) values ("
				+ "'" + id + "',"
				+ "'" + pwd + "',"
				+ "'" + name + "',"
				+ "'" + email + "') ";
		System.out.println(query);
		int result = jdbcTemplate.update(query);
		System.out.println("1" + result);
		return result;
	}*/



	
	}






