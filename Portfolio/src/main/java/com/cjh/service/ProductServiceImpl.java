package com.cjh.service;

import com.cjh.dao.MemberDAO;
import com.cjh.dao.ProductDAO;
import com.cjh.vo.BasketVO;
import com.cjh.vo.ProductVO;
import com.cjh.vo.PurchaseVO;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO dao;
	
	@Override
	public ProductVO selectProduct(int product_id) throws Exception {
		return dao.selectProduct(product_id);
	}
	
	@Override
	public void updateBasket(BasketVO vo) throws Exception{
		dao.updateBasket(vo);
	}
	@Override
	public void insertBasket(BasketVO vo) throws Exception{
		dao.insertBasket(vo);
	}
	// ��ٱ��Ͽ� ��� �� �������� ���� ���̵��������
	@Override
	public List<BasketVO> selectBasket(String id) throws Exception{
		return dao.selectBasket(id);
	}
	
	@Override
	public void basketDelete(int basketId) throws Exception {
		dao.basketDelete(basketId);		
	}

	@Override
	public void basketGropDelete(Map<String, Object> paramMap) throws Exception {
		dao.basketGropDelete(paramMap);	
	}

	
	// ���ų����� �Է�
	@Override
	public void insertPurchase(PurchaseVO vo) throws Exception{
		dao.insertPurchase(vo);
	}
	// ���ų��� �������� ���̵� �������� 
	@Override
	public List<PurchaseVO> selectPurchase(String id) throws Exception{
		return dao.selectPurchase(id);
    }



}
