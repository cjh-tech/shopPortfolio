package com.cjh.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.cjh.vo.BoardVO;
import com.cjh.vo.MemberVO;

@Service 
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertBoard(BoardVO vo) throws Exception {
		String namespace = "com.cjh.mapper.boardMapper.insert";
		sqlSession.insert(namespace,vo);
	}
	@Override
	public void deleteBoard(int idx) throws Exception {
		String namespace = "com.cjh.mapper.boardMapper.delete";
		sqlSession.delete(namespace, idx);
	}
	@Override
	public int totalCount() throws Exception{
		String namespace = "com.cjh.mapper.boardMapper.total";
	    return sqlSession.selectOne(namespace);
	}
	@Override
	public void updatehitCount(int idx,int count) throws Exception{
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("idx",idx );
		map.put("count", count);
		String namespace = "com.cjh.mapper.boardMapper.hitCount";
		sqlSession.selectList(namespace,map);
	}
	@Override
	public List<BoardVO> selectAll(int pageStart, int perPagenum) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("pageStart",pageStart );
		map.put("perPageNum", perPagenum);
		String namespace = "com.cjh.mapper.boardMapper.selectAll";
		return sqlSession.selectList(namespace ,map);
	}
	@Override
	public List<BoardVO> selectId(String id ) throws Exception {
		String namespace = "com.cjh.mapper.boardMapper.selectId";
		return  sqlSession.selectList(namespace, id);
	}
	@Override
	public List<BoardVO> selectSubject(String subject) throws Exception {
		String namespace = "com.cjh.mapper.boardMapper.selectSubject";
		return sqlSession.selectList(namespace,subject);
    }
	@Override
	public List<BoardVO> selectIdx(int idx) throws Exception{
		String namespace = "com.cjh.mapper.boardMapper.selectIdx";
		return sqlSession.selectList(namespace,idx);
	}
	@Override
	public void update(BoardVO vo) throws Exception {
		String namespace="com.cjh.mapper.boardMapper.update";
	    sqlSession.selectOne(namespace,vo);
	}
}
