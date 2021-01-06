package com.itc.bbs.service;

import java.util.HashMap;
import java.util.List;

import com.itc.bbs.domain.CategoryVO;
import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;
import com.itc.bbs.domain.RegisterVO;
import com.itc.bbs.domain.ReservationVO;

public interface AdminService {
	public List<RegisterVO> getMemberList() throws Exception;
	
	public void deleteUser(String userId) throws Exception;
	
	public List<ReservationVO> getReservationList() throws Exception;
	
	public void deleteProduct(int productNo) throws Exception;
	
	public ProductVO getProductContent(int productNo) throws Exception;
	
	public List<CategoryVO> getCategoryList() throws Exception;
	
	public void addProduct(ProductVO vo, PerformVO pfvo) throws Exception;
	
	public void updateProductPost(ProductVO vo) throws Exception;
	
}