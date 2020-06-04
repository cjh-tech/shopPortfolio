package com.cjh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.cjh.vo.BasketVO;
import com.cjh.vo.ProductVO;
import com.cjh.vo.PurchaseVO;

@Service
public class ProductDAOImpl implements ProductDAO {
	@Autowired
    SqlSession sqlSession;
	
	@Override
	public ProductVO selectProduct(int product_id) throws Exception{
		String namespace = "com.cjh.mapper.productMapper.select";
		return sqlSession.selectOne(namespace,product_id);
	}
	
	@Override
	public void insertBasket(BasketVO vo) throws Exception{
		String namespace = "com.cjh.mapper.productMapper.insertBasket";
		sqlSession.insert(namespace, vo);
	}
	
	@Override
	public void updateBasket(BasketVO vo) throws Exception{
		String namespace = "com.cjh.mapper.productMapper.updateBasket";
		sqlSession.update(namespace, vo);
	}
	
	@Override
	public List<BasketVO> selectBasket(String id) throws Exception{
		String namespace = "com.cjh.mapper.productMapper.selectBasket";
		return sqlSession.selectList(namespace, id);
	}
	
	@Override
	public void basketDelete(int basketId) throws Exception {
		String namespace = "com.cjh.mapper.productMapper.basketDelete";
		sqlSession.delete(namespace, basketId);
	}
	
	@Override
	public void basketGropDelete(Map<String, Object> paramMap) throws Exception {
		String namespace = "com.cjh.mapper.productMapper.basketGropDelete";
		sqlSession.delete(namespace, paramMap);		
	}
	
	@Override
	public void insertPurchase(PurchaseVO vo) throws Exception{
		String namespace = "com.cjh.mapper.productMapper.insertPurchase";
		sqlSession.insert(namespace, vo);
	}
	
	@Override
	public List<PurchaseVO> selectPurchase(String id) throws Exception{
		String namespace = "com.cjh.mapper.productMapper.selectPurchase";
		return sqlSession.selectList(namespace, id);
	}




	
	
}
