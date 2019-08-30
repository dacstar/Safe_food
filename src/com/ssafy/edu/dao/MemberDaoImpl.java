package com.ssafy.edu.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.edu.dto.MemberDto;

@Repository
public class MemberDaoImpl implements IMemberDao {
	String ns = "com.ssafy.edu.";

	@Autowired
	private SqlSession sqlSession;
	
	public void signUp(MemberDto memberdto) throws Exception {
		sqlSession.insert(ns + "signUp", memberdto);
	}
	
	public MemberDto logIn(MemberDto memberdto) throws Exception {
		return sqlSession.selectOne(ns + "logIn", memberdto);
	}
	
	@Override
	public MemberDto getName(String m_id) {
		return (MemberDto) sqlSession.selectList(ns + "getName", m_id).get(0);
	}

	@Override
	public void modifyMember(MemberDto inputMem) {
		// TODO Auto-generated method stub
		sqlSession.update(ns + "updateMember", inputMem);

	}

	@Override
	public void modifyAllergy(MemberDto inputMem) {
		sqlSession.update(ns + "updateAllergy", inputMem);
	}
	
	@Override
	   public int getID(MemberDto member) {
	      return sqlSession.selectOne(ns+"getID",member);
	   }
}