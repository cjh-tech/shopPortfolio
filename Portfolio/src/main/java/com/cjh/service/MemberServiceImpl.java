package com.cjh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.cjh.dao.MemberDAO;
import com.cjh.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO dao;
	
	@Override
	public void insertMember(MemberVO vo) throws Exception {
		dao.insertMember(vo);
	}
	
	@Override
	public void insertMember2(Map<String, Object> params) throws Exception {
		dao.insertMember2(params);
	}
	
	
	@Override
	public void deleteMember(String id) throws Exception {
		dao.deleteMember(id);
	}
	@Override
	public MemberVO SelectMember(String id) throws Exception {
	    return dao.selectMember(id);
	}
	@Override
	public void updateMember(MemberVO vo) throws Exception{
		dao.updateMember(vo);
	}
	@Override
	public MemberVO findId(String email) throws Exception{
		return dao.findId(email);
	}
	@Override
	public MemberVO findPw(MemberVO vo) throws Exception{
		return dao.findPw(vo);
	}

	
}
