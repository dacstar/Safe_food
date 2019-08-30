package com.ssafy.edu.service;

import com.ssafy.edu.dto.MemberDto;

public interface IMemberService {
	
	public void signUp(MemberDto memberdto) throws Exception;
	public MemberDto logIn(MemberDto memberdto) throws Exception;
	public int getID(MemberDto member);

	
	MemberDto getName(String m_id)throws Exception;
	
	void modifyMember(MemberDto inputMem)throws Exception;

}