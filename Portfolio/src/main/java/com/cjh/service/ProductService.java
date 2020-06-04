package com.cjh.service;

import java.util.List;
import java.util.Map;

import com.cjh.vo.BasketVO;
import com.cjh.vo.ProductVO;
import com.cjh.vo.PurchaseVO;

public interface ProductService {
	public ProductVO selectProduct (int product_id) throws Exception;

	// ��ٱ��Ͽ� ���
	public void insertBasket(BasketVO vo) throws Exception;
	
	public void updateBasket(BasketVO vo) throws Exception;
	
	// ��ٱ��Ͽ� ��� �� �������� ���� ���̵��������
	public List<BasketVO> selectBasket(String id) throws Exception;
	
	public void basketDelete(int basketId) throws Exception;
	
	public void basketGropDelete(Map<String, Object> paramMap) throws Exception;

	
	// ���ų����� �Է� // ������ �ϼ��� �Ǿ���� 
	public void insertPurchase(PurchaseVO vo) throws Exception;
	
	// ���ų��� �������� ���̵� �������� 
	public List<PurchaseVO> selectPurchase(String id) throws Exception;



	
}
