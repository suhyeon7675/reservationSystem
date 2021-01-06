package com.itc.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;
import com.itc.bbs.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO dao;

	@Override
	public List<ProductVO> getProductList(int proCategory) throws Exception {
		return dao.getProductList(proCategory);
	}

	@Override
	public ProductVO getProductDetail(int productNo) throws Exception {
		return dao.getProductDetail(productNo);
	}

	@Override
	public List<PerformVO> getPerformList(int productNo) throws Exception {
		return dao.getPerformList(productNo);
	}
}