package com.itc.bbs.persistence;

import java.util.List;

import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;

public interface ProductDAO {
	public List<ProductVO> getProductList(int proCategory) throws Exception;
	
	public ProductVO getProductDetail(int productNo) throws Exception;
	
	public List<PerformVO> getPerformList(int productNo) throws Exception;
}