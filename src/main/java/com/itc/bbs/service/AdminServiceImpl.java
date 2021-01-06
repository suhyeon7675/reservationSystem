package com.itc.bbs.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.CategoryVO;
import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;
import com.itc.bbs.domain.RegisterVO;
import com.itc.bbs.domain.ReservationVO;
import com.itc.bbs.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO dao;
	
	@Override
	public List<RegisterVO> getMemberList() throws Exception {
		return dao.getMemberList();
	}

	@Override
	public void deleteUser(String userId) throws Exception {
		dao.deleteUser(userId);
	}

	@Override
	public List<ReservationVO> getReservationList() throws Exception {
		return dao.getReservationList();
	}

	@Override
	public void deleteProduct(int productNo) throws Exception {
		dao.deleteProduct(productNo);
		
	}

	@Override
	public ProductVO getProductContent(int productNo) throws Exception {
		return dao.getProductContent(productNo);
	}

	@Override
	public List<CategoryVO> getCategoryList() throws Exception {
		return dao.getCategoryList();
	}

	@Override
	public void addProduct(ProductVO vo, PerformVO pfvo) throws Exception {
		dao.addProduct(vo, pfvo);
	}

	@Override
	public void updateProductPost(ProductVO vo) throws Exception {
		dao.updateProductPost(vo);
	}
}