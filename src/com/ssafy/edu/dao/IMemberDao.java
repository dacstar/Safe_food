package com.ssafy.edu.dao;

import com.ssafy.edu.dto.MemberDto;

public interface IMemberDao {

	public void signUp(MemberDto memberdto) throws Exception;
	public MemberDto logIn(MemberDto memberdto) throws Exception;
	MemberDto getName(String m_id) throws Exception;
	void modifyMember(MemberDto inputMem) throws Exception;
	void modifyAllergy(MemberDto inputMem) throws Exception;
	 public int getID(MemberDto member);
}