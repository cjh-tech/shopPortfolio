package com.cjh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjh.vo.MemberVO;
@Service
public class MemberDAOImpl implements MemberDAO {
	@Autowired
    SqlSession sqlSession;
	
	@Override
	public void insertMember(MemberVO vo) throws Exception {
		String namespace="com.cjh.mapper.memberMapper.insert";
		sqlSession.insert(namespace, vo);
	}
	
	@Override
	public void insertMember2(Map<String, Object> params) throws Exception {
		String namespace="com.cjh.mapper.memberMapper.insert";
		MemberVO vo=new MemberVO();
		vo.setAddress(params.get("address").toString());
		vo.setBirth(params.get("birth").toString());
		vo.setEmail(params.get("email").toString());
		vo.setGender(params.get("gender").toString());
		vo.setId(params.get("id").toString());
		vo.setName(params.get("username").toString());
		vo.setPhone(params.get("phone").toString());
		vo.setPassword(params.get("password").toString());
		sqlSession.insert(namespace, vo);
	}
	
	@Override
	public void deleteMember(String id) throws Exception{
		String namespace="com.cjh.mapper.memberMapper.delete";
		sqlSession.delete(namespace,id);
	}
	@Override
	public MemberVO selectMember(String id) throws Exception{
		String namespace="com.cjh.mapper.memberMapper.select";
		return  sqlSession.selectOne(namespace,id);
	}
	@Override
	public void updateMember(MemberVO vo) throws Exception{
		String namespace="com.cjh.mapper.memberMapper.update";
		sqlSession.update(namespace,vo);
	}
	@Override
	public MemberVO findId(String email) throws Exception{
		String namespace="com.cjh.mapper.memberMapper.findid";
		return sqlSession.selectOne(namespace,email);
	}
	@Override
	public MemberVO findPw(MemberVO vo) throws Exception{
		String namespace="com.cjh.mapper.memberMapper.findpw";
		return sqlSession.selectOne(namespace, vo);
	}
}
