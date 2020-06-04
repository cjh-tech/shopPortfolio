package com.cjh.dao;

import java.util.List;
import java.util.Map;

import com.cjh.vo.BasketVO;
import com.cjh.vo.ProductVO;
import com.cjh.vo.PurchaseVO;

public interface ProductDAO {
	
	public ProductVO selectProduct(int product_id) throws Exception;
		
	public void insertBasket(BasketVO vo) throws Exception;
	
	public void updateBasket(BasketVO vo) throws Exception;
		
	public List<BasketVO> selectBasket(String id) throws Exception;
	
	public void basketDelete(int basketId) throws Exception;
	
	public void basketGropDelete(Map<String, Object> paramMap) throws Exception;
	
	public void insertPurchase(PurchaseVO vo) throws Exception;
		
	public List<PurchaseVO> selectPurchase(String id) throws Exception;


	
	
}
