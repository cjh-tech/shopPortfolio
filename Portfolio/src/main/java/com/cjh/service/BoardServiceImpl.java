package com.cjh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjh.dao.BoardDAO;
import com.cjh.vo.BoardVO;
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO dao;
	
	@Override
	public void insertBoard(BoardVO vo) throws Exception {
		dao.insertBoard(vo);
	}
	@Override
	public void deleteBoard(int idx) throws Exception {
		dao.deleteBoard(idx);
	}
	@Override
	public int totalCount() throws Exception{
		return dao.totalCount();
	}
	@Override
	public void updatehitCount(int idx,int count) throws Exception{
		dao.updatehitCount(idx, count);
	}
	@Override
	public List<BoardVO> selectAll(int pageStart, int pageNum)  throws Exception{
		return dao.selectAll(pageStart, pageNum);	
	}
	@Override
	public List<BoardVO> selectId(String id) throws Exception {
		return dao.selectId(id);
	}
	@Override
	public List<BoardVO> selectSubject(String subject) throws Exception {
		return dao.selectSubject(subject);
	}
	@Override
	public List<BoardVO> selectIdx(int idx) throws Exception{
		return dao.selectIdx(idx);
	}
	@Override
	public void update(BoardVO vo)  throws Exception{
		dao.update(vo);
	}
	
}
