package com.myspring.pro27.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.pro27.member.dao.MemberDAO;
import com.myspring.pro27.member.vo.MemberVO;

@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List listMembers() throws DataAccessException{
		List membersList = null;
		membersList = memberDAO.selectAllMemberList();
		return membersList;
	}

	@Override
	public int addMember(MemberVO member) throws DataAccessException {
		return memberDAO.insertMember(member);
	}

	@Override
	public int removeMember(String id) throws DataAccessException {
		return memberDAO.deleteMember(id);
	}

	/*@Override
	public int modMember(MemberVO memberVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}
*/
	@Override
	public int updateMember(MemberVO memberVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return memberDAO.updateMember(memberVO);
	}
	@Override
	public MemberVO findMember(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return memberDAO.selectMemberById(id);
	}
	
	@Override
	public MemberVO login(MemberVO memberVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return memberDAO.loginById(memberVO);
	}

	



}
