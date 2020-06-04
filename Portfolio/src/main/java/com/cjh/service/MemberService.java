package com.cjh.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;


import com.cjh.vo.MemberVO;


public interface MemberService {
	
	public void insertMember(MemberVO vo) throws Exception;
	public void insertMember2(Map<String,Object> params) throws Exception;
	public void deleteMember(String id) throws Exception;
	public MemberVO SelectMember(String id) throws Exception;
	public void updateMember(MemberVO vo) throws Exception;
	public MemberVO findId(String email) throws Exception;
	public MemberVO findPw(MemberVO vo) throws Exception;
}
