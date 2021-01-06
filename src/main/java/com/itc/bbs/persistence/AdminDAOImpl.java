package com.itc.bbs.persistence;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.CategoryVO;
import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;
import com.itc.bbs.domain.RegisterVO;
import com.itc.bbs.domain.ReservationVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSession sql;
	private static String namespace = "bbs.mappers.AdminMapper";
	
	@Override
	public List<RegisterVO> getMemberList() throws Exception {
		return sql.selectList(namespace+".getMemberList");
	}

	@Override
	public void deleteUser(String userId) throws Exception {
		sql.delete(namespace+".deleteUser", userId);
	}

	@Override
	public List<ReservationVO> getReservationList() throws Exception {
		return sql.selectList(namespace+".getReservationList");
	}

	@Override
	public void deleteProduct(int productNo) throws Exception {
		sql.delete(namespace+".deleteProduct", productNo);
	}

	@Override
	public ProductVO getProductContent(int productNo) throws Exception {
		return sql.selectOne(namespace+".getProductContent", productNo);
	}

	@Override
	public List<CategoryVO> getCategoryList() throws Exception {
		return sql.selectList(namespace+".getCategoryList");
	}

	@Override
	public void addProduct(ProductVO vo, PerformVO pfvo) throws Exception {
		sql.insert(namespace+".addProduct", vo);
		int productNo = sql.selectOne(namespace+".getProductNo", vo);
		pfvo.setProductNo(productNo);
		vo.setProductNo(productNo);
		sql.insert(namespace+".addPlace", vo);
		sql.insert(namespace+".addPerformance", pfvo);
		sql.insert(namespace+".addProductImage", vo);
	}

	@Override
	public void updateProductPost(ProductVO vo) throws Exception {
		sql.update(namespace+".updateProductPost", vo);
		sql.update(namespace+".updatePlace", vo);
		sql.update(namespace+".updateProductImage", vo);
	}
}