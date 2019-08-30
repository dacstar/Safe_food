package com.ssafy.edu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.edu.dao.MemberDaoImpl;
import com.ssafy.edu.dto.MemberDto;

@Service
public class MemberService implements IMemberService {
	
	@Autowired
	private MemberDaoImpl memberdao;
	
	@Override
	@Transactional
	public void signUp(MemberDto memberdto) throws Exception {
		memberdao.signUp(memberdto);
	}

	@Override
	@Transactional(readOnly=true)
	public MemberDto logIn(MemberDto memberdto) throws Exception {
		return memberdao.logIn(memberdto);
	}
	
	@Override
	@Transactional
	public void modifyMember(MemberDto inputMem) {
		// TODO Auto-generated method stub
		memberdao.modifyMember(inputMem);
		memberdao.modifyAllergy(inputMem);

	}

	@Override
	@Transactional
	public MemberDto getName(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return memberdao.getName(m_id);
	}
	
	@Override
	   public int getID(MemberDto member) {
	      // TODO Auto-generated method stub
	      return memberdao.getID(member);
	   }
}