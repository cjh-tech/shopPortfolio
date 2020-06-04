package com.cjh.dao;
import java.util.List;

import org.springframework.stereotype.Service;

import com.cjh.vo.BoardVO;
import com.cjh.vo.MemberVO;

public interface BoardDAO {
	public void insertBoard(BoardVO vo) throws Exception;
	public void deleteBoard(int idx) throws Exception;
	public int totalCount() throws Exception;
	public void updatehitCount(int idx, int count) throws Exception;
	public List<BoardVO> selectAll(int pageStart , int perPageNum) throws Exception;
	public List<BoardVO> selectId(String id) throws Exception;
	public List<BoardVO> selectSubject(String subject) throws Exception;
	public List<BoardVO> selectIdx(int idx) throws Exception;
	public void update(BoardVO vo) throws Exception;
}
